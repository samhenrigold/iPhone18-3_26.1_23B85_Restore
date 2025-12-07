void sub_1B4B057E4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = *(v10 + 16);
  v22 = v10 + 16;
  v23 = a2;
  v21 = v15;
  (v15)(&v20 - v12, a2, AssociatedTypeWitness, v11);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v10 + 32))(v17 + v16, v13, AssociatedTypeWitness);
  v25 = v14;
  sub_1B4D184BC();

  swift_getWitnessTable();
  v25 = sub_1B4D189DC();
  swift_getWitnessTable();
  LOBYTE(v13) = sub_1B4D186AC();

  if (v13)
  {
    sub_1B4B05BD4(AssociatedTypeWitness, AssociatedTypeWitness);
    swift_allocObject();
    v18 = sub_1B4D1841C();
    v21(v19, v23, AssociatedTypeWitness);
    sub_1B49BA6A8(v18, AssociatedTypeWitness);
    v14 = sub_1B4D1842C();
  }

  else
  {
  }

  *v24 = v14;
}

BOOL sub_1B4B05A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 88);
  v6 = swift_checkMetadataState();
  v5(&v12, v6, AssociatedConformanceWitness);
  v7 = v12;
  v5(&v11, v6, AssociatedConformanceWitness);
  if (v7 != v11)
  {
    return 0;
  }

  v8 = *(AssociatedConformanceWitness + 96);
  v8(&v12, v6, AssociatedConformanceWitness);
  v9 = v12;
  v8(&v11, v6, AssociatedConformanceWitness);
  return v9 == v11;
}

uint64_t sub_1B4B05BD4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
  }

  else
  {

    return sub_1B4D18D6C();
  }
}

uint64_t sub_1B4B05C48@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1B4B05C9C()
{
  result = qword_1EB8AA370;
  if (!qword_1EB8AA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA370);
  }

  return result;
}

uint64_t sub_1B4B05CF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA378, &unk_1B4D2E760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B05D60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA378, &unk_1B4D2E760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B4B05E5C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1B4B05A90(a1, v6, v3, v4);
}

uint64_t sub_1B4B05EF8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v258 = a3;
  v259 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v230 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v235 = &v225 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v245 = &v225 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v251 = (&v225 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v252 = *(v12 - 8);
  v253 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v229 = &v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v231 = &v225 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v225 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v239 = &v225 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v244 = &v225 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v228 = &v225 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v227 = &v225 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v241 = &v225 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v247 = &v225 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v31 = *(v30 - 8);
  v249 = v30;
  v250 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v232 = &v225 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v237 = &v225 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v238 = &v225 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v240 = &v225 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v246 = &v225 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v225 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v225 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v225 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v225 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v233 = &v225 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v225 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v59 = *(v58 - 8);
  v254 = v58;
  v255 = v59;
  MEMORY[0x1EEE9AC00](v58);
  v242 = &v225 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v248 = &v225 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v225 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v225 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v236 = &v225 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v225 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v225 - v75;
  v77 = type metadata accessor for RingProgressType(0);
  v256 = *(v77 - 8);
  v257 = v77;
  MEMORY[0x1EEE9AC00](v77);
  v226 = &v225 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v243 = &v225 - v80;
  v81 = *a2;
  v82 = type metadata accessor for HKActivitySummaryRepresentable(0);
  if (v81 <= 1)
  {
    if (!v81)
    {
      v83 = v259;
      v84 = v259 + v82[18];
      if ((*(v84 + 8) & 1) == 0 && *v84 == 2)
      {
        v85 = v82;
        sub_1B4974FBC(v259 + v82[10], v57, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v86 = v254;
        v87 = v255;
        v88 = *(v255 + 48);
        if (v88(v57, 1, v254) == 1)
        {
          sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
        }

        else
        {
          v253 = *(v87 + 32);
          v253(v76, v57, v86);
          v57 = v233;
          sub_1B4974FBC(v83 + v85[9], v233, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          if (v88(v57, 1, v86) != 1)
          {
            v253(v73, v57, v86);
            v176 = sub_1B4A612D4();
            if ((v177 & 1) == 0)
            {
              v255 = v176;
              sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
              v185 = v236;
              sub_1B4D1744C();
              sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
              v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
              v187 = v186[12];
              v188 = v186[16];
              v189 = v186[20];
              v190 = v243;
              v191 = v253;
              v253(v243, v76, v86);
              v191(v190 + v187, v73, v86);
              v191(v190 + v188, v185, v86);
              *(v190 + v189) = v255;
              v192 = v257;
              swift_storeEnumTagMultiPayload();
              sub_1B4B10A80(v190, type metadata accessor for RingProgressType);
              v143 = v192;
              v141 = 1;
              v142 = v258;
              return (*(v256 + 56))(v142, v141, 1, v143);
            }

            sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
            v178 = *(v255 + 8);
            v178(v73, v86);
            v178(v76, v86);
            goto LABEL_40;
          }

          sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
          (*(v87 + 8))(v76, v86);
        }

        v95 = &qword_1EB8A6C90;
        v96 = &unk_1B4D1BBD0;
        goto LABEL_38;
      }

      v108 = v82;
      v57 = v247;
      sub_1B4974FBC(v259 + v82[8], v247, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v109 = v249;
      v110 = v250;
      v111 = *(v250 + 48);
      if (v111(v57, 1, v249) == 1)
      {
        sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
        v95 = &qword_1EB8A6CA8;
        v96 = &unk_1B4D1C2B0;
LABEL_38:
        v97 = v57;
        goto LABEL_39;
      }

      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v119 = v240;
      sub_1B4D1745C();
      v255 = *(v110 + 8);
      (v255)(v57, v109);
      v120 = v246;
      v121 = v119;
      v122 = *(v110 + 32);
      v122(v246, v121, v109);
      v123 = v83 + v108[7];
      v124 = v241;
      sub_1B4974FBC(v123, v241, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if (v111(v124, 1, v109) == 1)
      {
        sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
        (v255)(v120, v109);
        v95 = &qword_1EB8A6CA8;
        v96 = &unk_1B4D1C2B0;
        v97 = v124;
        goto LABEL_39;
      }

      v136 = v237;
      sub_1B4D1745C();
      v137 = v255;
      (v255)(v124, v109);
      v138 = v238;
      v122(v238, v136, v109);
      v139 = sub_1B4A612D4();
      if (v140)
      {
        sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
        v137(v138, v109);
        v137(v246, v109);
        goto LABEL_40;
      }

      v255 = v139;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v168 = v232;
      v169 = v246;
      sub_1B4D1744C();
      sub_1B4B10A80(v83, type metadata accessor for HKActivitySummaryRepresentable);
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v171 = v170[12];
      v172 = v170[16];
      v173 = v122;
      v174 = v170[20];
      v151 = v243;
      v173(v243, v169, v109);
      v173(v151 + v171, v138, v109);
      v173(v151 + v172, v168, v109);
      *(v151 + v174) = v255;
      v152 = v257;
      goto LABEL_47;
    }

    v98 = v259;
    v99 = v82;
    sub_1B4974FBC(v259 + v82[12], v52, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v101 = v254;
    v100 = v255;
    v102 = *(v255 + 48);
    if (v102(v52, 1, v254) == 1)
    {
      sub_1B4B10A80(v98, type metadata accessor for HKActivitySummaryRepresentable);
      v95 = &qword_1EB8A6C90;
      v96 = &unk_1B4D1BBD0;
      v97 = v52;
      goto LABEL_39;
    }

    v253 = *(v100 + 32);
    v253(v68, v52, v101);
    sub_1B4974FBC(v98 + v99[11], v49, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v102(v49, 1, v101) == 1)
    {
      sub_1B4B10A80(v98, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v100 + 8))(v68, v101);
      v95 = &qword_1EB8A6C90;
      v96 = &unk_1B4D1BBD0;
      v97 = v49;
      goto LABEL_39;
    }

    v253(v65, v49, v101);
    v129 = sub_1B4A61B14();
    if (v130)
    {
      sub_1B4B10A80(v98, type metadata accessor for HKActivitySummaryRepresentable);
      v131 = *(v255 + 8);
      v131(v65, v101);
      v131(v68, v101);
      goto LABEL_40;
    }

    v153 = v129;
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v154 = v236;
    sub_1B4D1744C();
    sub_1B4B10A80(v98, type metadata accessor for HKActivitySummaryRepresentable);
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v156 = v155[12];
    v157 = v155[16];
    v158 = v155[20];
    v159 = v243;
    v160 = v68;
    v161 = v253;
    v253(v243, v160, v101);
    v161(v159 + v156, v65, v101);
    v161(v159 + v157, v154, v101);
    v151 = v159;
    *(v159 + v158) = v153;
    v152 = v257;
LABEL_47:
    swift_storeEnumTagMultiPayload();
    goto LABEL_48;
  }

  if (v81 != 2)
  {
    v103 = v259;
    v104 = v82;
    sub_1B4974FBC(v259 + v82[12], v46, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v105 = v254;
    v106 = v255;
    v107 = *(v255 + 48);
    if (v107(v46, 1, v254) == 1)
    {
      sub_1B4B10A80(v103, type metadata accessor for HKActivitySummaryRepresentable);
      v95 = &qword_1EB8A6C90;
      v96 = &unk_1B4D1BBD0;
      v97 = v46;
      goto LABEL_39;
    }

    v116 = v248;
    v117 = v46;
    v118 = *(v106 + 32);
    v118(v248, v117, v105);
    v251 = v104;
    sub_1B4974FBC(v103 + v104[11], v43, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v107(v43, 1, v105) == 1)
    {
      sub_1B4B10A80(v103, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v106 + 8))(v116, v105);
      v95 = &qword_1EB8A6C90;
      v96 = &unk_1B4D1BBD0;
      v97 = v43;
      goto LABEL_39;
    }

    v132 = v242;
    v118(v242, v43, v105);
    v133 = sub_1B4A61B14();
    if (v134)
    {
      sub_1B4B10A80(v103, type metadata accessor for HKActivitySummaryRepresentable);
      v135 = *(v106 + 8);
      v135(v132, v105);
      v135(v248, v105);
      goto LABEL_40;
    }

    v245 = v106 + 32;
    v246 = v118;
    v247 = v133;
    v162 = v251;
    v163 = v235;
    sub_1B4974FBC(v103 + v251[14], v235, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v164 = v252;
    v165 = *(v252 + 48);
    v166 = v253;
    if (v165(v163, 1) == 1)
    {
      sub_1B4B10A80(v103, type metadata accessor for HKActivitySummaryRepresentable);
      v167 = *(v106 + 8);
      v167(v242, v105);
      v167(v248, v105);
      v95 = &qword_1EB8A6D18;
      v96 = &unk_1B4D1BCA0;
      v97 = v163;
      goto LABEL_39;
    }

    v179 = v231;
    v180 = v163;
    v181 = v166;
    v182 = *(v164 + 32);
    v182(v231, v180, v181);
    v183 = v103 + v162[13];
    v115 = v230;
    sub_1B4974FBC(v183, v230, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    if ((v165)(v115, 1, v181) != 1)
    {
      v193 = v229;
      v182(v229, v115, v181);
      v194 = sub_1B4A61EE8();
      if (v195)
      {
        sub_1B4B10A80(v103, type metadata accessor for HKActivitySummaryRepresentable);
        v196 = v193;
        v197 = *(v252 + 8);
        v197(v196, v181);
        v197(v179, v181);
        v198 = *(v255 + 8);
        v198(v242, v105);
        v198(v248, v105);
        goto LABEL_40;
      }

      v255 = v194;
      v199 = v227;
      sub_1B4974FBC(v103 + v251[8], v227, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v200 = v249;
      v252 = *(v250 + 48);
      if ((v252)(v199, 1, v249) == 1)
      {
        sub_1B4975024(v199, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        v201 = 1;
        v202 = v250;
        v203 = v228;
        v204 = v226;
      }

      else
      {
        v203 = v228;
        v204 = v226;
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        sub_1B4D1745C();
        v202 = v250;
        (*(v250 + 8))(v199, v200);
        v201 = 0;
      }

      v205 = *(v202 + 56);
      v205(v204, v201, 1, v200);
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v207 = v206[12];
      sub_1B4974FBC(v259 + v251[7], v203, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if ((v252)(v203, 1, v200) == 1)
      {
        sub_1B4975024(v203, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        v208 = 1;
        v209 = v249;
      }

      else
      {
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v209 = v249;
        sub_1B4D1745C();
        (*(v250 + 8))(v203, v209);
        v208 = 0;
      }

      v205(v204 + v207, v208, 1, v209);
      v210 = v204 + v206[16];
      v211 = v206[20];
      v212 = v206[24];
      v213 = v204 + v206[28];
      v214 = v206[36];
      v240 = v206[32];
      v241 = v214;
      v244 = v206[40];
      v215 = v206[48];
      v249 = v206[44];
      v250 = v215;
      v252 = v206[52];
      v216 = v259;
      *v210 = sub_1B4A612D4();
      *(v210 + 8) = v217 & 1;
      v218 = v251;
      sub_1B4974FBC(v216 + v251[10], v204 + v211, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4974FBC(v216 + v218[9], v204 + v212, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v219 = sub_1B4A612D4();
      v221 = v220;
      sub_1B4B10A80(v216, type metadata accessor for HKActivitySummaryRepresentable);
      *v213 = v219;
      *(v213 + 8) = v221 & 1;
      v222 = v254;
      v223 = v246;
      (v246)(&v240[v204], v248, v254);
      v223(v204 + v241, v242, v222);
      *&v244[v204] = v247;
      v224 = v253;
      v182((v204 + v249), v231, v253);
      v182((v204 + v250), v229, v224);
      *(v204 + v252) = v255;
      v152 = v257;
      swift_storeEnumTagMultiPayload();
      v151 = v243;
      sub_1B4995228(v204, v243);
LABEL_48:
      v175 = v258;
      sub_1B4995228(v151, v258);
      v142 = v175;
      v141 = 0;
      v143 = v152;
      return (*(v256 + 56))(v142, v141, 1, v143);
    }

    sub_1B4B10A80(v103, type metadata accessor for HKActivitySummaryRepresentable);
    (*(v164 + 8))(v179, v181);
    v184 = *(v255 + 8);
    v184(v242, v105);
    v184(v248, v105);
LABEL_18:
    v95 = &qword_1EB8A6D18;
    v96 = &unk_1B4D1BCA0;
    v97 = v115;
    goto LABEL_39;
  }

  v89 = v259;
  v90 = v82;
  v91 = v251;
  sub_1B4974FBC(v259 + v82[14], v251, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v92 = v252;
  v93 = v253;
  v94 = *(v252 + 48);
  if (v94(v91, 1, v253) == 1)
  {
    sub_1B4B10A80(v89, type metadata accessor for HKActivitySummaryRepresentable);
    v95 = &qword_1EB8A6D18;
    v96 = &unk_1B4D1BCA0;
    v97 = v91;
LABEL_39:
    sub_1B4975024(v97, v95, v96);
    goto LABEL_40;
  }

  v112 = *(v92 + 32);
  v113 = v244;
  v112(v244, v91, v93);
  v114 = v89 + v90[13];
  v115 = v245;
  sub_1B4974FBC(v114, v245, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  if (v94(v115, 1, v93) == 1)
  {
    sub_1B4B10A80(v89, type metadata accessor for HKActivitySummaryRepresentable);
    (*(v92 + 8))(v113, v93);
    goto LABEL_18;
  }

  v125 = v239;
  v112(v239, v115, v93);
  v126 = sub_1B4A61EE8();
  if ((v127 & 1) == 0)
  {
    v255 = v126;
    type metadata accessor for UnitCount();
    v145 = v234;
    sub_1B4D1744C();
    sub_1B4B10A80(v89, type metadata accessor for HKActivitySummaryRepresentable);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v147 = v146[12];
    v148 = v146[16];
    v149 = v146[20];
    v150 = v243;
    v112(v243, v113, v93);
    v112((v150 + v147), v125, v93);
    v112((v150 + v148), v145, v93);
    *(v150 + v149) = v255;
    v151 = v150;
    v152 = v257;
    goto LABEL_47;
  }

  sub_1B4B10A80(v89, type metadata accessor for HKActivitySummaryRepresentable);
  v128 = *(v92 + 8);
  v128(v125, v93);
  v128(v113, v93);
LABEL_40:
  v141 = 1;
  v143 = v257;
  v142 = v258;
  return (*(v256 + 56))(v142, v141, 1, v143);
}

uint64_t sub_1B4B0793C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B0F6D0(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v8 = 0x6E69722065766F6DLL;
    if (EnumCaseMultiPayload)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v15 = *(v35 + 48);
      v16 = *(v35 + 64);
      v17 = &qword_1EB8A6850;
      v18 = &unk_1B4D1BC10;
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v15 = *(v14 + 48);
      v16 = *(v14 + 64);
      v17 = &qword_1EB8A6868;
      v18 = &unk_1B4D1AB80;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    v37 = *(*(v36 - 8) + 8);
    v37(&v6[v16], v36);
    v37(&v6[v15], v36);
    v37(v6, v36);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v20 = *(v19 + 48);
    v21 = *(v19 + 64);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v23 = *(*(v22 - 8) + 8);
    v23(&v6[v21], v22);
    v23(&v6[v20], v22);
    v23(v6, v22);
    return 0x6573696372657865;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (a1)
    {
      v8 = 0x6E6972206C6C6F72;
    }

    else
    {
      v8 = 0x697220646E617473;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v10 = *(v9 + 48);
    v11 = *(v9 + 64);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v13 = *(*(v12 - 8) + 8);
    v13(&v6[v11], v12);
    v13(&v6[v10], v12);
    v13(v6, v12);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v40 = v24[12];
    v25 = v24[20];
    v26 = v24[24];
    v27 = v24[32];
    v28 = v24[36];
    v29 = v24[44];
    v30 = v24[48];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v32 = *(*(v31 - 8) + 8);
    v32(&v6[v30], v31);
    v32(&v6[v29], v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v34 = *(*(v33 - 8) + 8);
    v34(&v6[v28], v33);
    v34(&v6[v27], v33);
    sub_1B4975024(&v6[v26], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v6[v25], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v6[v40], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v6, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    return 0x7974697669746361;
  }

  return v8;
}

unint64_t sub_1B4B07DD8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F7250646E617473;
    v7 = 0x616F47646E617473;
    if (a1 != 10)
    {
      v7 = 0x726550646E617473;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    v9 = 0x6573696372657865;
    if (a1 != 7)
    {
      v9 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676F725065766F6DLL;
    v2 = 0xD000000000000012;
    v3 = 0x756E694D65766F6DLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C616F4765766F6DLL;
    if (a1 != 1)
    {
      v4 = 0x6372655065766F6DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4B07FB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B1035C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B07FD8(uint64_t a1)
{
  v2 = sub_1B4B0F734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B08014(uint64_t a1)
{
  v2 = sub_1B4B0F734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08050()
{
  v1 = *v0;
  v2 = 0x6F6C614365766F6DLL;
  v3 = 0x6573696372657865;
  v4 = 0x646E617473;
  if (v1 != 3)
  {
    v4 = 0x73676E69526C6C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x756E694D65766F6DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4B080F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B10758(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B08120(uint64_t a1)
{
  v2 = sub_1B4B0F67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0815C(uint64_t a1)
{
  v2 = sub_1B4B0F67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08198(uint64_t a1)
{
  v2 = sub_1B4B0F7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B081D4(uint64_t a1)
{
  v2 = sub_1B4B0F7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08210(uint64_t a1)
{
  v2 = sub_1B4B0F884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0824C(uint64_t a1)
{
  v2 = sub_1B4B0F884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08288(uint64_t a1)
{
  v2 = sub_1B4B0F830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B082C4(uint64_t a1)
{
  v2 = sub_1B4B0F830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08300(uint64_t a1)
{
  v2 = sub_1B4B0F788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0833C(uint64_t a1)
{
  v2 = sub_1B4B0F788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RingProgressType.encode(to:)(void *a1)
{
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA380, &qword_1B4D2E7B0);
  v174 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v175 = &v162 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v185 = &v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v186 = &v162 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v189 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v193 = &v162 - v10;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA388, &unk_1B4D2E7B8);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v162 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v195 = *(v12 - 8);
  v196 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v179 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v184 = &v162 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v188 = &v162 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v192 = &v162 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v162 - v21;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA390, &qword_1B4D2E7C8);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v162 - v22;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA398, &unk_1B4D2E7D0);
  v167 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v162 = &v162 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v198 = *(v24 - 8);
  v199 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v190 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v187 = &v162 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v182 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v162 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v177 = &v162 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v181 = &v162 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v197 = &v162 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v176 = &v162 - v39;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3A0, &unk_1B4D2E7E0);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v162 - v40;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v180 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v42 = &v162 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v162 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v162 - v47;
  v49 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v162 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3A8, &qword_1B4D2E7F0);
  v202 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v53 = &v162 - v52;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B0F67C();
  v203 = v53;
  sub_1B4D18EFC();
  sub_1B4B0F6D0(v200, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v196 = v42;
    v200 = v45;
    v69 = v180;
    v70 = v197;
    if (EnumCaseMultiPayload)
    {
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v117 = *(v116 + 48);
      v118 = *(v116 + 64);
      v120 = v198;
      v119 = v199;
      v121 = *(v198 + 32);
      v122 = v176;
      v121(v176, v51, v199);
      v121(v70, v51 + v117, v119);
      v121(v181, v51 + v118, v119);
      v205 = 1;
      sub_1B4B0F830();
      v123 = v162;
      v124 = v203;
      v125 = v204;
      sub_1B4D18C5C();
      v205 = 0;
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
      v126 = v122;
      v127 = v166;
      v128 = v123;
      v129 = v201;
      sub_1B4D18D0C();
      if (v129)
      {
        (*(v167 + 8))(v123, v127);
        v130 = *(v120 + 8);
        v130(v181, v119);
        v130(v197, v119);
        v130(v126, v119);
        return (*(v202 + 8))(v124, v125);
      }

      else
      {
        v205 = 1;
        v134 = v197;
        sub_1B4D18D0C();
        v205 = 2;
        v141 = v181;
        sub_1B4D18D0C();
        v142 = v167;
        v143 = v176;
        v205 = 3;
        sub_1B4D18CDC();
        v201 = 0;
        (*(v142 + 8))(v128, v127);
        v157 = *(v120 + 8);
        v157(v141, v119);
        v157(v134, v119);
        v157(v143, v119);
        return (*(v202 + 8))(v124, v204);
      }
    }

    else
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v72 = *(v71 + 48);
      v73 = *(v71 + 64);
      v74 = *(v69 + 32);
      v75 = v48;
      v76 = v183;
      v74(v48, v51, v183);
      v74(v200, v51 + v72, v76);
      v74(v196, v51 + v73, v76);
      v205 = 0;
      sub_1B4B0F884();
      v77 = v163;
      v79 = v203;
      v78 = v204;
      sub_1B4D18C5C();
      v205 = 0;
      sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
      v80 = v165;
      v81 = v201;
      sub_1B4D18D0C();
      if (v81)
      {
        (*(v164 + 8))(v77, v80);
        v82 = *(v69 + 8);
        v82(v196, v76);
        v82(v200, v76);
        v82(v75, v76);
      }

      else
      {
        v201 = v75;
        v205 = 1;
        v132 = v77;
        sub_1B4D18D0C();
        v133 = v164;
        v205 = 2;
        v140 = v196;
        sub_1B4D18D0C();
        v205 = 3;
        sub_1B4D18CDC();
        (*(v133 + 8))(v132, v80);
        v156 = *(v69 + 8);
        v156(v140, v76);
        v156(v200, v76);
        v156(v201, v76);
      }

      return (*(v202 + 8))(v79, v78);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v84 = *(v83 + 48);
    v85 = *(v83 + 64);
    v87 = v198;
    v86 = v199;
    v88 = *(v198 + 32);
    v89 = v177;
    v88(v177, v51, v199);
    v88(v191, v51 + v84, v86);
    v88(v182, v51 + v85, v86);
    v205 = 2;
    sub_1B4B0F7DC();
    v90 = v168;
    v91 = v203;
    v92 = v204;
    sub_1B4D18C5C();
    v205 = 0;
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    v93 = v170;
    v94 = v201;
    sub_1B4D18D0C();
    if (v94)
    {
      (*(v169 + 8))(v90, v93);
      v95 = *(v87 + 8);
      v95(v182, v86);
      v95(v191, v86);
      v95(v89, v86);
    }

    else
    {
      v205 = 1;
      sub_1B4D18D0C();
      v205 = 2;
      v135 = v182;
      sub_1B4D18D0C();
      v136 = v87;
      v144 = v135;
      v205 = 3;
      sub_1B4D18CDC();
      v92 = v204;
      (*(v169 + 8))(v90, v93);
      v145 = *(v136 + 8);
      v145(v144, v86);
      v145(v191, v86);
      v145(v177, v86);
    }

    return (*(v202 + 8))(v91, v92);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v56 = *(v55 + 48);
    v57 = *(v55 + 64);
    v59 = v195;
    v58 = v196;
    v60 = *(v195 + 32);
    v61 = v178;
    v60(v178, v51, v196);
    v60(v192, v51 + v56, v58);
    v60(v188, v51 + v57, v58);
    v205 = 3;
    sub_1B4B0F788();
    v62 = v171;
    v63 = v203;
    v64 = v204;
    sub_1B4D18C5C();
    v205 = 0;
    sub_1B49B0578(&qword_1EB8A6EE0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968078]);
    v65 = v173;
    v66 = v201;
    sub_1B4D18D0C();
    if (v66)
    {
      (*(v172 + 8))(v62, v65);
      v67 = *(v59 + 8);
      v67(v188, v58);
      v67(v192, v58);
      v67(v61, v58);
      return (*(v202 + 8))(v63, v64);
    }

    else
    {
      v205 = 1;
      sub_1B4D18D0C();
      v205 = 2;
      sub_1B4D18D0C();
      v137 = v59;
      v205 = 3;
      sub_1B4D18CDC();
      v146 = v62;
      v147 = v204;
      v148 = v178;
      (*(v172 + 8))(v146, v65);
      v149 = *(v137 + 8);
      v149(v188, v58);
      v149(v192, v58);
      v149(v148, v58);
      return (*(v202 + 8))(v63, v147);
    }
  }

  else
  {
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v97 = v96[12];
    v98 = (v51 + v96[16]);
    v192 = *v98;
    LODWORD(v191) = v98[8];
    v99 = v96[20];
    v100 = v96[24];
    v101 = (v51 + v96[28]);
    v182 = *v101;
    LODWORD(v188) = v101[8];
    v102 = v96[32];
    v103 = v96[36];
    v197 = v96[44];
    v200 = v96[48];
    sub_1B498B270(v51, v193, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B498B270(v51 + v97, v189, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B498B270(v51 + v99, v186, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B498B270(v51 + v100, v185, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v104 = v198;
    v105 = *(v198 + 32);
    v106 = (v51 + v102);
    v107 = v199;
    v105(v187, v106, v199);
    v105(v190, (v51 + v103), v107);
    v108 = v195;
    v109 = v196;
    v110 = *(v195 + 32);
    v110(v184, &v197[v51], v196);
    v111 = v179;
    v110(v179, &v200[v51], v109);
    v205 = 4;
    sub_1B4B0F734();
    v112 = v175;
    sub_1B4D18C5C();
    v205 = 0;
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
    v113 = v201;
    sub_1B4D18CAC();
    if (v113)
    {
      (*(v174 + 8))(v112, v194);
      v114 = *(v108 + 8);
      v114(v111, v109);
      v114(v184, v109);
      v115 = *(v104 + 8);
      v115(v190, v107);
      v115(v187, v107);
      sub_1B4975024(v185, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v186, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v189, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v193, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      return (*(v202 + 8))(v203, v204);
    }

    else
    {
      v205 = 1;
      v131 = v112;
      sub_1B4D18CAC();
      v205 = 2;
      sub_1B4D18C8C();
      v201 = 0;
      v138 = v199;
      v139 = v187;
      v205 = 3;
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
      v150 = v186;
      v151 = v201;
      sub_1B4D18CAC();
      if (v151)
      {
        (*(v174 + 8))(v131, v194);
        v152 = v196;
        v153 = v139;
        v154 = *(v195 + 8);
        v154(v179, v196);
        v154(v184, v152);
        v155 = *(v198 + 8);
        v155(v190, v138);
        v155(v153, v138);
        sub_1B4975024(v185, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v150, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }

      else
      {
        v205 = 4;
        sub_1B4D18CAC();
        v205 = 5;
        sub_1B4D18C8C();
        v205 = 6;
        sub_1B4D18D0C();
        v205 = 7;
        sub_1B4D18D0C();
        v205 = 8;
        sub_1B4D18CDC();
        v205 = 9;
        sub_1B49B0578(&qword_1EB8A6EE0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968078]);
        sub_1B4D18D0C();
        v205 = 10;
        sub_1B4D18D0C();
        v205 = 11;
        sub_1B4D18CDC();
        (*(v174 + 8))(v175, v194);
        v158 = v196;
        v159 = *(v195 + 8);
        v159(v179, v196);
        v159(v184, v158);
        v160 = v199;
        v161 = *(v198 + 8);
        v161(v190, v199);
        v161(v187, v160);
        sub_1B4975024(v185, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v186, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }

      sub_1B4975024(v189, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v193, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      return (*(v202 + 8))(v203, v204);
    }
  }
}

uint64_t RingProgressType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA400, &qword_1B4D2E818);
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v132 = &v115 - v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA408, &qword_1B4D2E820);
  v127 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v136 = (&v115 - v5);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA410, &qword_1B4D2E828);
  v126 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v115 - v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA418, &qword_1B4D2E830);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v134 = &v115 - v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA420, &qword_1B4D2E838);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v131 = &v115 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA428, &unk_1B4D2E840);
  v139 = *(v9 - 8);
  v140 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v115 - v10;
  v133 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v115 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v115 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v115 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v115 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v115 - v26;
  v28 = a1[3];
  v141 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1B4B0F67C();
  v29 = v142;
  sub_1B4D18EEC();
  if (v29)
  {
    goto LABEL_11;
  }

  v30 = v134;
  v117 = v21;
  v118 = v18;
  v120 = v24;
  v31 = v135;
  v119 = v15;
  v142 = 0;
  v32 = v136;
  v116 = v27;
  v33 = v137;
  v35 = v139;
  v34 = v140;
  v36 = sub_1B4D18C2C();
  v37 = (2 * *(v36 + 16)) | 1;
  v144 = v36;
  v145 = v36 + 32;
  v146 = 0;
  v147 = v37;
  v38 = sub_1B49C8ABC();
  if (v38 == 5 || v146 != v147 >> 1)
  {
    v45 = sub_1B4D189BC();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
    *v47 = v133;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v35 + 8))(v11, v34);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v115 = v11;
  v39 = v35;
  if (v38 <= 1u)
  {
    if (v38)
    {
      v143 = 1;
      sub_1B4B0F830();
      v57 = v140;
      v58 = v115;
      v59 = v142;
      sub_1B4D18B4C();
      if (!v59)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        v143 = 0;
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
        v60 = v124;
        sub_1B4D18C0C();
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
        v70 = *(v142 + 48);
        v143 = 1;
        sub_1B4D18C0C();
        v138 = v70;
        v143 = 2;
        sub_1B4D18C0C();
        v80 = v142;
        v143 = 3;
        sub_1B4D18BDC();
        v93 = *(v80 + 80);
        v95 = v94;
        (*(v123 + 8))(v30, v60);
        (*(v35 + 8))(v115, v140);
        swift_unknownObjectRelease();
        v96 = v117;
        *&v117[v93] = v95;
        swift_storeEnumTagMultiPayload();
        v88 = v96;
        v97 = v141;
        v98 = v137;
LABEL_28:
        v99 = v116;
        sub_1B4995228(v88, v116);
        sub_1B4995228(v99, v98);
        v48 = v97;
        return __swift_destroy_boxed_opaque_existential_1Tm(v48);
      }

      (*(v35 + 8))(v58, v57);
      goto LABEL_10;
    }

    v143 = 0;
    sub_1B4B0F884();
    v50 = v131;
    v41 = v140;
    v42 = v115;
    v51 = v142;
    sub_1B4D18B4C();
    if (!v51)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v143 = 0;
      sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
      v52 = v122;
      sub_1B4D18C0C();
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v69 = *(v142 + 48);
      v143 = 1;
      v138 = v69;
      sub_1B4D18C0C();
      v143 = 2;
      sub_1B4D18C0C();
      v79 = v142;
      v143 = 3;
      sub_1B4D18BDC();
      v90 = *(v79 + 80);
      v92 = v91;
      (*(v121 + 8))(v50, v52);
      (*(v35 + 8))(v115, v140);
      swift_unknownObjectRelease();
      v88 = v120;
      *&v120[v90] = v92;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v38 == 2)
  {
    v143 = 2;
    sub_1B4B0F7DC();
    v41 = v140;
    v42 = v115;
    v53 = v142;
    sub_1B4D18B4C();
    if (!v53)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v143 = 0;
      sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
      sub_1B4D18C0C();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v62 = v61[12];
      v143 = 1;
      sub_1B4D18C0C();
      v142 = v62;
      v71 = v61[16];
      v143 = 2;
      sub_1B4D18C0C();
      v136 = v71;
      v143 = 3;
      sub_1B4D18BDC();
      v81 = v61[20];
      v83 = v82;
      (*(v126 + 8))(v31, v138);
      (*(v35 + 8))(v115, v140);
      swift_unknownObjectRelease();
      v84 = v118;
      *&v118[v81] = v83;
      swift_storeEnumTagMultiPayload();
      v88 = v84;
LABEL_26:
      v97 = v141;
LABEL_27:
      v98 = v33;
      goto LABEL_28;
    }

LABEL_17:
    (*(v35 + 8))(v42, v41);
    goto LABEL_10;
  }

  if (v38 == 3)
  {
    v143 = 3;
    sub_1B4B0F788();
    v40 = v32;
    v41 = v140;
    v42 = v115;
    v43 = v142;
    sub_1B4D18B4C();
    if (!v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v143 = 0;
      sub_1B49B0578(&qword_1EB8A6F20, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968098]);
      v44 = v125;
      sub_1B4D18C0C();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v64 = v44;
      v142 = v63;
      v65 = *(v63 + 48);
      v143 = 1;
      v66 = v64;
      sub_1B4D18C0C();
      v138 = v65;
      v143 = 2;
      sub_1B4D18C0C();
      v73 = v142;
      v143 = 3;
      sub_1B4D18BDC();
      v85 = *(v73 + 80);
      v87 = v86;
      (*(v127 + 8))(v40, v66);
      (*(v39 + 8))(v115, v140);
      swift_unknownObjectRelease();
      v88 = v119;
      *&v119[v85] = v87;
LABEL_25:
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v143 = 4;
  sub_1B4B0F734();
  v54 = v140;
  v55 = v115;
  v56 = v142;
  sub_1B4D18B4C();
  if (v56)
  {
    (*(v139 + 8))(v55, v54);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v143 = 0;
  sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
  sub_1B4D18BAC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
  v68 = *(v67 + 48);
  v143 = 1;
  sub_1B4D18BAC();
  v136 = v67;
  v138 = v68;
  v143 = 2;
  v72 = sub_1B4D18B8C();
  v74 = v136;
  v75 = (v130 + v136[16]);
  v76 = v136[20];
  *v75 = v72;
  v75[8] = v77 & 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v143 = 3;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
  v135 = v76;
  sub_1B4D18BAC();
  v89 = v74[24];
  v143 = 4;
  v134 = v78;
  sub_1B4D18BAC();
  v143 = 5;
  v100 = sub_1B4D18B8C();
  v101 = (v130 + v136[28]);
  v102 = v136[32];
  *v101 = v100;
  v101[8] = v103 & 1;
  v143 = 6;
  sub_1B4D18C0C();
  v104 = v136[36];
  v143 = 7;
  v131 = v104;
  sub_1B4D18C0C();
  v143 = 8;
  sub_1B4D18BDC();
  v142 = 0;
  v105 = v136[44];
  *(v130 + v136[40]) = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v143 = 9;
  sub_1B49B0578(&qword_1EB8A6F20, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968098]);
  v127 = v105;
  v107 = v142;
  sub_1B4D18C0C();
  v142 = v107;
  if (!v107)
  {
    v143 = 10;
    sub_1B4D18C0C();
    v142 = 0;
    v143 = 11;
    sub_1B4D18BDC();
    v142 = 0;
    v112 = v111;
    v113 = v136[52];
    (*(v128 + 8))(v132, v129);
    (*(v35 + 8))(v115, v140);
    swift_unknownObjectRelease();
    v114 = v130;
    *(v130 + v113) = v112;
    swift_storeEnumTagMultiPayload();
    v88 = v114;
    v97 = v141;
    goto LABEL_27;
  }

  (*(v128 + 8))(v132, v129);
  (*(v35 + 8))(v115, v140);
  swift_unknownObjectRelease();
  v108 = v134;
  v109 = *(*(v134 - 1) + 8);
  v110 = v130;
  v109(&v131[v130], v134);
  v109((v110 + v102), v108);
  sub_1B4975024(v110 + v89, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(&v135[v110], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v110 + v138, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v110, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
LABEL_11:
  v48 = v141;
  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

BOOL _s19FitnessIntelligence16RingProgressTypeO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v380 = a1;
  v381 = a2;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  MEMORY[0x1EEE9AC00](v334);
  v331 = &v328 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v333 = &v328 - v4;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  MEMORY[0x1EEE9AC00](v344);
  v337 = &v328 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v347 = &v328 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v329 = &v328 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v332 = &v328 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v367 = &v328 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v369 = &v328 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v368 = &v328 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v370 = &v328 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v335 = &v328 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v338 = &v328 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v371 = &v328 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v372 = &v328 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v29 = *(v28 - 8);
  v376 = v28;
  v377 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v359 = &v328 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v360 = &v328 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v361 = &v328 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v362 = &v328 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v343 = &v328 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v353 = &v328 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v354 = &v328 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v355 = &v328 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v346 = &v328 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v378 = *(v47 - 8);
  v379 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v330 = &v328 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v365 = &v328 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v363 = &v328 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v366 = &v328 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v364 = &v328 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v340 = &v328 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v341 = &v328 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v351 = &v328 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v352 = &v328 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v342 = &v328 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v348 = &v328 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v339 = &v328 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v350 = &v328 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v349 = &v328 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v375 = &v328 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v373 = *(v77 - 8);
  v374 = v77;
  MEMORY[0x1EEE9AC00](v77);
  v336 = &v328 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v345 = &v328 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v328 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v328 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v328 - v88;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v328 - v91;
  v93 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v93);
  v358 = &v328 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v357 = &v328 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v356 = &v328 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v328 - v100;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v328 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA4F8, &qword_1B4D2EFD0);
  MEMORY[0x1EEE9AC00](v105 - 8);
  v107 = &v328 - v106;
  v109 = &v328 + *(v108 + 56) - v106;
  sub_1B4B0F6D0(v380, &v328 - v106);
  v110 = v109;
  sub_1B4B0F6D0(v381, v109);
  v382 = v107;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v377 = v83;
    v380 = v86;
    v381 = v89;
    v135 = v375;
    if (EnumCaseMultiPayload)
    {
      v195 = v101;
      sub_1B4B0F6D0(v382, v101);
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v197 = v196[12];
      v198 = v196[16];
      v199 = v196[20];
      v179 = *&v101[v199];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v224 = v379;
        v225 = v378[1];
        v225(&v101[v198], v379);
        v225(&v101[v197], v224);
        v225(v101, v224);
        goto LABEL_30;
      }

      v183 = *&v109[v199];
      v201 = v378;
      v200 = v379;
      v202 = v378[4];
      v203 = v135;
      v202(v135, v110, v379);
      v202(v349, &v195[v197], v200);
      v202(v350, &v195[v198], v200);
      v204 = v339;
      v202(v339, &v110[v197], v200);
      v205 = &v110[v198];
      v206 = v203;
      v207 = v348;
      v202(v348, v205, v200);
      sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
      v208 = sub_1B4D1816C();
      v209 = v201[1];
      v209(v195, v200);
      if (v208)
      {
        v210 = v349;
        v211 = sub_1B4D1816C();
        v212 = v382;
        if ((v211 & 1) == 0)
        {
          v209(v348, v200);
          v209(v204, v200);
          v209(v350, v200);
          v209(v210, v200);
          v209(v206, v200);
          v252 = v212;
          goto LABEL_62;
        }

        v213 = v350;
        v214 = v348;
        v215 = sub_1B4D1816C();
        v209(v214, v200);
        v209(v204, v200);
        v209(v213, v200);
        v209(v210, v200);
        v209(v206, v200);
        if (v215)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v209(v207, v200);
        v209(v204, v200);
        v209(v350, v200);
        v209(v349, v200);
        v209(v206, v200);
      }
    }

    else
    {
      v136 = v92;
      sub_1B4B0F6D0(v382, v104);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v138 = v137[12];
      v139 = v137[16];
      v140 = v137[20];
      v141 = *&v104[v140];
      if (swift_getEnumCaseMultiPayload())
      {
        v142 = v373[1];
        v143 = &v104[v139];
        v144 = v374;
        v142(v143, v374);
        v142(&v104[v138], v144);
        v142(v104, v144);
        goto LABEL_30;
      }

      v226 = *&v109[v140];
      v227 = v373;
      v228 = v373[4];
      v229 = v136;
      v230 = v136;
      v231 = v374;
      v228(v230, v110, v374);
      v228(v381, &v104[v138], v231);
      v228(v380, &v104[v139], v231);
      v232 = v377;
      v228(v377, &v110[v138], v231);
      v233 = &v110[v139];
      v234 = v345;
      v228(v345, v233, v231);
      v235 = v229;
      sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
      v236 = sub_1B4D1816C();
      v237 = v227[1];
      v237(v104, v231);
      if (v236)
      {
        v238 = sub_1B4D1816C();
        v239 = v382;
        if (v238)
        {
          v240 = v235;
          v241 = v380;
          v242 = v345;
          v243 = sub_1B4D1816C();
          v237(v242, v231);
          v237(v232, v231);
          v237(v241, v231);
          v237(v381, v231);
          v237(v240, v231);
          if (v243)
          {
            v165 = v141 == v226;
            v166 = v239;
            goto LABEL_36;
          }
        }

        else
        {
          v237(v345, v231);
          v237(v232, v231);
          v237(v380, v231);
          v237(v381, v231);
          v237(v235, v231);
        }

        v252 = v239;
        goto LABEL_62;
      }

      v237(v234, v231);
      v237(v232, v231);
      v237(v380, v231);
      v237(v381, v231);
      v237(v235, v231);
    }

LABEL_61:
    v252 = v382;
    goto LABEL_62;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v112 = v382;
    v113 = v109;
    if (EnumCaseMultiPayload == 3)
    {
      v114 = v357;
      sub_1B4B0F6D0(v382, v357);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v116 = v115[12];
      v117 = v115[16];
      v118 = v115[20];
      v119 = *(v114 + v118);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v120 = *&v109[v118];
        v122 = v376;
        v121 = v377;
        v123 = *(v377 + 4);
        v124 = v346;
        v123(v346, v113, v376);
        v123(v355, v114 + v116, v122);
        v123(v354, v114 + v117, v122);
        v123(v353, v113 + v116, v122);
        v125 = v113 + v117;
        v126 = v343;
        v123(v343, v125, v122);
        v127 = v124;
        sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
        v128 = sub_1B4D1816C();
        v129 = *(v121 + 1);
        v129(v114, v122);
        if (v128)
        {
          v130 = v355;
          v131 = v353;
          if (sub_1B4D1816C())
          {
            v132 = v126;
            v133 = v354;
            v134 = sub_1B4D1816C();
            v129(v132, v122);
            v129(v131, v122);
            v129(v133, v122);
            v129(v130, v122);
            v129(v346, v122);
            if ((v134 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_16;
          }

          v129(v126, v122);
          v129(v131, v122);
          v129(v354, v122);
          v246 = v130;
        }

        else
        {
          v129(v126, v122);
          v129(v353, v122);
          v129(v354, v122);
          v246 = v355;
        }

        v129(v246, v122);
        v129(v127, v122);
        goto LABEL_49;
      }

      v217 = *(v377 + 1);
      v218 = v114 + v117;
      v219 = v376;
      v217(v218, v376);
      v217(v114 + v116, v219);
      v217(v114, v219);
      goto LABEL_31;
    }

    v167 = v358;
    sub_1B4B0F6D0(v382, v358);
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v356 = v168[12];
    v169 = v168[16];
    v170 = *(v167 + v169);
    v171 = *(v167 + v169 + 8);
    v172 = v168[20];
    v381 = v168[24];
    v173 = v168[28];
    v174 = *(v167 + v173);
    LODWORD(v355) = *(v167 + v173 + 8);
    v380 = v168[32];
    v175 = v168[40];
    v176 = *(v167 + v175);
    v375 = v168[36];
    v177 = v168[44];
    v357 = v168[48];
    v178 = v168[52];
    v179 = *(v167 + v178);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      LODWORD(v352) = v171;
      v180 = *&v109[v169];
      LODWORD(v351) = v109[v169 + 8];
      v181 = *&v109[v173];
      LODWORD(v350) = v109[v173 + 8];
      v182 = *&v109[v175];
      v183 = *&v109[v178];
      sub_1B498B270(v167 + v356, v372, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v354 = v172;
      sub_1B498B270(&v172[v167], v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B498B270(&v381[v167], v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v184 = v379;
      v186 = (v378 + 4);
      v185 = v378[4];
      (v185)(v364, &v380[v167], v379);
      (v185)(v366, &v375[v167], v184);
      v187 = *(v377 + 4);
      v353 = v177;
      v188 = v376;
      v187(v362, &v177[v167], v376);
      v187(v361, (v167 + v357), v188);
      sub_1B498B270(v113 + v356, v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B498B270(&v354[v113], v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B498B270(&v381[v113], v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      (v185)(v363, &v380[v113], v184);
      v381 = v185;
      (v185)(v365, &v375[v113], v184);
      v187(v360, &v353[v113], v188);
      v187(v359, (v113 + v357), v188);
      v189 = v344;
      v190 = *(v344 + 48);
      v191 = v347;
      sub_1B498B270(v167, v347, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B498B270(v113, v191 + v190, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v193 = v373;
      v192 = v374;
      v194 = v373[6];
      if (v194(v191, 1, v374) == 1)
      {
        if (v194(v191 + v190, 1, v192) == 1)
        {
          v380 = v186;
          sub_1B4975024(v191, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          goto LABEL_51;
        }
      }

      else
      {
        v247 = v338;
        sub_1B4974FBC(v191, v338, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        if (v194(v191 + v190, 1, v192) != 1)
        {
          v380 = v186;
          v253 = v336;
          (v193[4])(v336, v191 + v190, v192);
          sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
          v254 = sub_1B4D1816C();
          v255 = v247;
          v256 = v193[1];
          v256(v253, v192);
          v256(v255, v192);
          sub_1B4975024(v347, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          if (v254)
          {
LABEL_51:
            v257 = *(v189 + 48);
            v258 = v337;
            sub_1B4974FBC(v372, v337, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            v259 = v258;
            sub_1B4974FBC(v371, v258 + v257, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            if (v194(v258, 1, v192) == 1)
            {
              if (v194(v258 + v257, 1, v192) == 1)
              {
                sub_1B4975024(v258, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                goto LABEL_67;
              }
            }

            else
            {
              v260 = v258;
              v261 = v335;
              sub_1B4974FBC(v260, v335, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
              if (v194(v259 + v257, 1, v192) != 1)
              {
                v267 = v336;
                (v193[4])(v336, v259 + v257, v192);
                sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
                v268 = v259;
                v269 = sub_1B4D1816C();
                v270 = v193[1];
                v270(v267, v192);
                v270(v261, v192);
                sub_1B4975024(v268, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                if (v269)
                {
LABEL_67:
                  if (v352)
                  {
                    if (v351)
                    {
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    v271 = v351;
                    if (v170 != v180)
                    {
                      v271 = 1;
                    }

                    if ((v271 & 1) == 0)
                    {
LABEL_73:
                      v272 = *(v334 + 48);
                      v273 = v333;
                      sub_1B4974FBC(v370, v333, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                      sub_1B4974FBC(v369, v273 + v272, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                      v274 = v378[6];
                      if (v274(v273, 1, v379) == 1)
                      {
                        if (v274(v273 + v272, 1, v379) == 1)
                        {
                          sub_1B4975024(v273, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_80:
                          v281 = *(v334 + 48);
                          v282 = v331;
                          sub_1B4974FBC(v368, v331, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                          v283 = v282;
                          sub_1B4974FBC(v367, v282 + v281, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                          if (v274(v282, 1, v379) == 1)
                          {
                            if (v274(v282 + v281, 1, v379) == 1)
                            {
                              sub_1B4975024(v282, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_89:
                              if (v355)
                              {
                                v296 = v364;
                                if (!v350)
                                {
LABEL_91:
                                  v297 = v376;
                                  v298 = *(v377 + 1);
                                  v298(v359, v376);
                                  v298(v360, v297);
                                  v299 = v379;
                                  v300 = v378[1];
                                  v300(v365, v379);
                                  v301 = v363;
LABEL_102:
                                  v300(v301, v299);
                                  sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                  v298(v361, v297);
                                  v298(v362, v297);
                                  v300(v366, v299);
                                  v300(v296, v299);
                                  sub_1B4975024(v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  sub_1B4975024(v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  v266 = v372;
                                  goto LABEL_60;
                                }
                              }

                              else
                              {
                                v302 = v350;
                                if (v174 != v181)
                                {
                                  v302 = 1;
                                }

                                v296 = v364;
                                if (v302)
                                {
                                  goto LABEL_91;
                                }
                              }

                              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
                              v303 = v363;
                              if ((sub_1B4D1816C() & 1) == 0)
                              {
                                v297 = v376;
                                v298 = *(v377 + 1);
                                v298(v359, v376);
                                v298(v360, v297);
                                v299 = v379;
                                v300 = v378[1];
                                v300(v365, v379);
                                v301 = v303;
                                goto LABEL_102;
                              }

                              v304 = v366;
                              v305 = v365;
                              if ((sub_1B4D1816C() & 1) == 0)
                              {
                                v315 = v305;
                                v316 = *(v377 + 1);
                                v317 = v304;
                                v318 = v376;
                                v316(v359, v376);
                                v316(v360, v318);
                                v319 = v379;
                                v320 = v378[1];
                                v320(v315, v379);
                                v320(v303, v319);
                                sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v316(v361, v318);
                                v316(v362, v318);
                                v320(v317, v319);
                                v320(v296, v319);
                                sub_1B4975024(v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                v266 = v372;
                                goto LABEL_60;
                              }

                              v306 = v382;
                              if (v176 != v182)
                              {
                                v321 = v376;
                                v322 = *(v377 + 1);
                                v322(v359, v376);
                                v322(v360, v321);
                                v323 = v379;
                                v324 = v378[1];
                                v324(v365, v379);
                                v324(v303, v323);
                                sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v322(v361, v321);
                                v322(v362, v321);
                                v324(v366, v323);
                                v324(v364, v323);
                                sub_1B4975024(v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v372, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v252 = v306;
                                goto LABEL_62;
                              }

                              sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
                              v307 = v362;
                              v308 = v360;
                              v309 = v376;
                              if ((sub_1B4D1816C() & 1) == 0)
                              {
                                v325 = *(v377 + 1);
                                v325(v359, v309);
                                v325(v308, v309);
                                v326 = v379;
                                v327 = v378[1];
                                v327(v365, v379);
                                v327(v363, v326);
                                sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v325(v361, v309);
                                v325(v307, v309);
                                v327(v366, v326);
                                v327(v364, v326);
                                sub_1B4975024(v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                v266 = v372;
                                goto LABEL_60;
                              }

                              v310 = v361;
                              v311 = v359;
                              LODWORD(v381) = sub_1B4D1816C();
                              v312 = *(v377 + 1);
                              v312(v311, v309);
                              v312(v308, v309);
                              v313 = v379;
                              v314 = v378[1];
                              v314(v365, v379);
                              v314(v363, v313);
                              sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                              v312(v310, v309);
                              v312(v307, v309);
                              v314(v366, v313);
                              v314(v364, v313);
                              sub_1B4975024(v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v372, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                              if ((v381 & 1) == 0)
                              {
                                goto LABEL_61;
                              }

LABEL_25:
                              v165 = v179 == v183;
                              v166 = v382;
                              goto LABEL_36;
                            }
                          }

                          else
                          {
                            v284 = v282;
                            v285 = v329;
                            sub_1B4974FBC(v284, v329, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            if (v274(v283 + v281, 1, v379) != 1)
                            {
                              v290 = v283 + v281;
                              v291 = v330;
                              v292 = v379;
                              (v381)(v330, v290, v379);
                              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
                              v293 = v283;
                              v294 = sub_1B4D1816C();
                              v295 = v378[1];
                              v295(v291, v292);
                              v295(v285, v292);
                              sub_1B4975024(v293, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              if (v294)
                              {
                                goto LABEL_89;
                              }

                              goto LABEL_87;
                            }

                            (v378[1])(v285, v379);
                          }

                          v276 = v283;
                          goto LABEL_86;
                        }
                      }

                      else
                      {
                        v275 = v332;
                        sub_1B4974FBC(v273, v332, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                        if (v274(v273 + v272, 1, v379) != 1)
                        {
                          v277 = v330;
                          v278 = v379;
                          (v381)(v330, v273 + v272, v379);
                          sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
                          v279 = sub_1B4D1816C();
                          v280 = v378[1];
                          v280(v277, v278);
                          v280(v275, v278);
                          sub_1B4975024(v273, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                          if ((v279 & 1) == 0)
                          {
LABEL_87:
                            v286 = v376;
                            v287 = *(v377 + 1);
                            v287(v359, v376);
                            v287(v360, v286);
                            v288 = v379;
                            v289 = v378[1];
                            v289(v365, v379);
                            v289(v363, v288);
                            sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                            v287(v361, v286);
                            v287(v362, v286);
                            v289(v366, v288);
                            v289(v364, v288);
                            sub_1B4975024(v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            sub_1B4975024(v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            v266 = v372;
                            goto LABEL_60;
                          }

                          goto LABEL_80;
                        }

                        (v378[1])(v275, v379);
                      }

                      v276 = v273;
LABEL_86:
                      sub_1B4975024(v276, &qword_1EB8A6F60, &qword_1B4D2C420);
                      goto LABEL_87;
                    }
                  }
                }

LABEL_58:
                v262 = v376;
                v263 = *(v377 + 1);
                v263(v359, v376);
                v263(v360, v262);
                v264 = v379;
                v265 = v378[1];
                v265(v365, v379);
                v265(v363, v264);
                sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                v263(v361, v262);
                v263(v362, v262);
                v265(v366, v264);
                v265(v364, v264);
                goto LABEL_59;
              }

              (v193[1])(v261, v192);
            }

            sub_1B4975024(v259, &qword_1EB8A6F68, &unk_1B4D1C550);
            goto LABEL_58;
          }

LABEL_42:
          v248 = v376;
          v249 = *(v377 + 1);
          v249(v359, v376);
          v249(v360, v248);
          v250 = v379;
          v251 = v378[1];
          v251(v365, v379);
          v251(v363, v250);
          sub_1B4975024(v367, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B4975024(v369, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B4975024(v371, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          v249(v361, v248);
          v249(v362, v248);
          v251(v366, v250);
          v251(v364, v250);
LABEL_59:
          sub_1B4975024(v368, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B4975024(v370, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v266 = v372;
LABEL_60:
          sub_1B4975024(v266, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          goto LABEL_61;
        }

        (v193[1])(v247, v192);
      }

      sub_1B4975024(v191, &qword_1EB8A6F68, &unk_1B4D1C550);
      goto LABEL_42;
    }

    v220 = v376;
    v221 = *(v377 + 1);
    v221(v167 + v357, v376);
    v221(&v177[v167], v220);
    v222 = v379;
    v223 = v378[1];
    v223(&v375[v167], v379);
    v223(&v380[v167], v222);
    sub_1B4975024(&v381[v167], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v172[v167], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(v167 + v356, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v167, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
LABEL_30:
    v112 = v382;
    goto LABEL_31;
  }

  v112 = v382;
  v145 = v356;
  sub_1B4B0F6D0(v382, v356);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
  v147 = v146[12];
  v148 = v146[16];
  v149 = v146[20];
  v119 = *(v145 + v149);
  v150 = swift_getEnumCaseMultiPayload();
  v152 = v378;
  v151 = v379;
  if (v150 == 2)
  {
    v120 = *&v109[v149];
    v153 = v378[4];
    v154 = v342;
    v153(v342, v110, v379);
    v153(v352, (v145 + v147), v151);
    v153(v351, (v145 + v148), v151);
    v155 = &v110[v147];
    v156 = v341;
    v153(v341, v155, v151);
    v157 = &v110[v148];
    v158 = v154;
    v159 = v340;
    v153(v340, v157, v151);
    sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
    LOBYTE(v153) = sub_1B4D1816C();
    v160 = v152[1];
    v160(v145, v151);
    if (v153)
    {
      v161 = v352;
      if (sub_1B4D1816C())
      {
        v162 = v159;
        v163 = v351;
        v164 = sub_1B4D1816C();
        v160(v162, v151);
        v160(v156, v151);
        v160(v163, v151);
        v160(v161, v151);
        v160(v158, v151);
        if (v164)
        {
LABEL_16:
          v165 = v119 == v120;
          v166 = v112;
LABEL_36:
          sub_1B4B10A80(v166, type metadata accessor for RingProgressType);
          return v165;
        }

LABEL_49:
        v252 = v112;
LABEL_62:
        sub_1B4B10A80(v252, type metadata accessor for RingProgressType);
        return 0;
      }

      v160(v159, v151);
      v160(v156, v151);
      v160(v351, v151);
      v245 = v161;
    }

    else
    {
      v160(v159, v151);
      v160(v156, v151);
      v160(v351, v151);
      v245 = v352;
    }

    v160(v245, v151);
    v160(v158, v151);
    goto LABEL_49;
  }

  v216 = v378[1];
  v216(v145 + v148, v379);
  v216(v145 + v147, v151);
  v216(v145, v151);
LABEL_31:
  sub_1B4975024(v112, &qword_1EB8AA4F8, &qword_1B4D2EFD0);
  return 0;
}

uint64_t type metadata accessor for RingProgressType(uint64_t a1)
{
  result = qword_1EB8AA430;
  if (!qword_1EB8AA430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4B0F67C()
{
  result = qword_1EB8AA3B0;
  if (!qword_1EB8AA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3B0);
  }

  return result;
}

uint64_t sub_1B4B0F6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingProgressType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B0F734()
{
  result = qword_1EB8AA3C0;
  if (!qword_1EB8AA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3C0);
  }

  return result;
}

unint64_t sub_1B4B0F788()
{
  result = qword_1EB8AA3D0;
  if (!qword_1EB8AA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3D0);
  }

  return result;
}

unint64_t sub_1B4B0F7DC()
{
  result = qword_1EB8AA3E0;
  if (!qword_1EB8AA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3E0);
  }

  return result;
}

unint64_t sub_1B4B0F830()
{
  result = qword_1EB8AA3E8;
  if (!qword_1EB8AA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3E8);
  }

  return result;
}

unint64_t sub_1B4B0F884()
{
  result = qword_1EB8AA3F8;
  if (!qword_1EB8AA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3F8);
  }

  return result;
}

void sub_1B4B0F8D8(uint64_t a1)
{
  sub_1B4B0F9BC(319, &qword_1EB8AA440);
  if (v1 <= 0x3F)
  {
    sub_1B4B0F9BC(319, &qword_1EB8AA448);
    if (v2 <= 0x3F)
    {
      sub_1B4B0F9BC(319, &qword_1EB8AA450);
      if (v3 <= 0x3F)
      {
        sub_1B4B0FAC8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4B0F9BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_1B4B0FAC8(uint64_t a1)
{
  if (!qword_1EB8AA458)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA460, &qword_1B4D2E8E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB8AA458);
    }
  }
}

unint64_t sub_1B4B0FD30()
{
  result = qword_1EB8AA468;
  if (!qword_1EB8AA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA468);
  }

  return result;
}

unint64_t sub_1B4B0FD88()
{
  result = qword_1EB8AA470;
  if (!qword_1EB8AA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA470);
  }

  return result;
}

unint64_t sub_1B4B0FDE0()
{
  result = qword_1EB8AA478;
  if (!qword_1EB8AA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA478);
  }

  return result;
}

unint64_t sub_1B4B0FE38()
{
  result = qword_1EB8AA480;
  if (!qword_1EB8AA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA480);
  }

  return result;
}

unint64_t sub_1B4B0FE90()
{
  result = qword_1EB8AA488;
  if (!qword_1EB8AA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA488);
  }

  return result;
}

unint64_t sub_1B4B0FEE8()
{
  result = qword_1EB8AA490;
  if (!qword_1EB8AA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA490);
  }

  return result;
}

unint64_t sub_1B4B0FF40()
{
  result = qword_1EB8AA498;
  if (!qword_1EB8AA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA498);
  }

  return result;
}

unint64_t sub_1B4B0FF98()
{
  result = qword_1EB8AA4A0;
  if (!qword_1EB8AA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4A0);
  }

  return result;
}

unint64_t sub_1B4B0FFF0()
{
  result = qword_1EB8AA4A8;
  if (!qword_1EB8AA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4A8);
  }

  return result;
}

unint64_t sub_1B4B10048()
{
  result = qword_1EB8AA4B0;
  if (!qword_1EB8AA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4B0);
  }

  return result;
}

unint64_t sub_1B4B100A0()
{
  result = qword_1EB8AA4B8;
  if (!qword_1EB8AA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4B8);
  }

  return result;
}

unint64_t sub_1B4B100F8()
{
  result = qword_1EB8AA4C0;
  if (!qword_1EB8AA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4C0);
  }

  return result;
}

unint64_t sub_1B4B10150()
{
  result = qword_1EB8AA4C8;
  if (!qword_1EB8AA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4C8);
  }

  return result;
}

unint64_t sub_1B4B101A8()
{
  result = qword_1EB8AA4D0;
  if (!qword_1EB8AA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4D0);
  }

  return result;
}

unint64_t sub_1B4B10200()
{
  result = qword_1EB8AA4D8;
  if (!qword_1EB8AA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4D8);
  }

  return result;
}

unint64_t sub_1B4B10258()
{
  result = qword_1EB8AA4E0;
  if (!qword_1EB8AA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4E0);
  }

  return result;
}

unint64_t sub_1B4B102B0()
{
  result = qword_1EB8AA4E8;
  if (!qword_1EB8AA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4E8);
  }

  return result;
}

unint64_t sub_1B4B10308()
{
  result = qword_1EB8AA4F0;
  if (!qword_1EB8AA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4F0);
  }

  return result;
}

uint64_t sub_1B4B1035C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F725065766F6DLL && a2 == 0xEC00000073736572;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6372655065766F6DLL && a2 == 0xEE00656761746E65 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4D618C0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756E694D65766F6DLL && a2 == 0xEE006C616F476574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D618E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F120 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xEC0000006C616F47 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4D61900 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F7250646E617473 && a2 == 0xED00007373657267 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x726550646E617473 && a2 == 0xEF656761746E6563)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1B4B10758(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C614365766F6DLL && a2 == 0xEC00000073656972;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756E694D65766F6DLL && a2 == 0xEB00000000736574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E617473 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73676E69526C6C61 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B4B1090C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646E69616D6572 && a2 == 0xE900000000000072 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B4B10A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TrainingLoadDay.init(_:)@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  if (*a1 >= 5)
  {
    sub_1B4B10B98();
    swift_allocError();
    swift_willThrow();
    return sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  else
  {
    result = sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    *a2 = v2;
  }

  return result;
}

unint64_t sub_1B4B10B98()
{
  result = qword_1EB8AA500;
  if (!qword_1EB8AA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA500);
  }

  return result;
}

uint64_t TrainingLoadDay.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return sub_1B4D17DAC();
}

char *sub_1B4B10CA0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v7 = sub_1B4B11934();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    v8 = sub_1B4D17D6C();
    sub_1B4B11630(v6, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  return v8;
}

void *sub_1B4B10DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_1B4B22B2C(a2, a3, &v6);
  if (!v3)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_1B4B10E18()
{
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return sub_1B4D17DAC();
}

uint64_t TrainingLoadContext.init(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4B11558(a1 + *(Context + 20), v6);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v10 = 0;
    sub_1B4D17BBC();
    if (v12(v6, 1, v7) != 1)
    {
      sub_1B4B115C8(v6);
    }
  }

  else
  {
    sub_1B4B11690(v6, v10);
  }

  v13 = *v10;
  if (*v10 >= 5)
  {
    sub_1B4B10B98();
    swift_allocError();
    swift_willThrow();
    sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    return sub_1B4B11630(v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  else
  {
    sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    result = sub_1B4B11630(v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    *a2 = v13;
  }

  return result;
}

uint64_t TrainingLoadContext.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4B11830(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B111BC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10[16] = a2;
  sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  sub_1B4D17DAC();
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  sub_1B4B115C8(a1 + v8);
  sub_1B4B11690(v7, a1 + v8);
  return (*(v5 + 56))(a1 + v8, 0, 1, v4);
}

char *sub_1B4B11320(uint64_t a1, double a2)
{
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v8 = sub_1B4B118E0();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4B11830(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);
    v9 = sub_1B4D17D6C();
    sub_1B4B11630(v7, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  return v9;
}

void *sub_1B4B11464@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_1B4B22DDC(a2, a3, &v6);
  if (!v3)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_1B4B11498(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4B11830(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B11558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B115C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4B11630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B11690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B11830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4B1188C()
{
  result = qword_1EB8AA530;
  if (!qword_1EB8AA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA530);
  }

  return result;
}

unint64_t sub_1B4B118E0()
{
  result = qword_1EB8AA538;
  if (!qword_1EB8AA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA538);
  }

  return result;
}

unint64_t sub_1B4B11934()
{
  result = qword_1EB8AA540;
  if (!qword_1EB8AA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA540);
  }

  return result;
}

unint64_t sub_1B4B119CC()
{
  result = qword_1EB8AA548;
  if (!qword_1EB8AA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA548);
  }

  return result;
}

unint64_t sub_1B4B11A24()
{
  result = qword_1EB8AA550;
  if (!qword_1EB8AA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA550);
  }

  return result;
}

uint64_t sub_1B4B11A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B11B24, 0, 0);
}

uint64_t sub_1B4B11B24()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4992680;
  v4 = v0[5];
  v5 = v0[2];

  return sub_1B4D0F75C(v5, v4);
}

void Date.cacheIndex.getter(uint64_t *a2@<X8>)
{
  v3 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4D1796C();
  __swift_project_value_buffer(v4, qword_1EDC3CE48);
  v5 = sub_1B4D178CC();
  v6 = _HKCacheIndexFromDate();

  *a2 = v6;
}

void Date.beginningOfWeek()()
{
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4D1796C();
  __swift_project_value_buffer(v0, qword_1EDC3CE48);
  v1 = sub_1B4D178CC();
  v2 = sub_1B4D1771C();
  v3 = [v1 hk:v2 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
}

uint64_t sub_1B4B11DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v27 - v3;
  v4 = sub_1B4D1796C();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4D1794C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4D1777C();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v27 - v14;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1EDC3CE48);
  v16 = sub_1B4D178CC();
  v17 = sub_1B4D1771C();
  v18 = [v16 hk:v17 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  (*(v7 + 104))(v9, *MEMORY[0x1E6969A48], v6);
  v19 = v31;
  v20 = v32;
  (*(v32 + 16))(v31, v15, v4);
  v21 = v34;
  sub_1B4D1790C();
  (*(v20 + 8))(v19, v4);
  (*(v7 + 8))(v9, v6);
  v22 = v29;
  v23 = v30;
  (*(v29 + 8))(v12, v30);
  if ((*(v22 + 48))(v21, 1, v23) == 1)
  {
    sub_1B4975024(v21, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v25 = *(v22 + 32);
    v26 = v27;
    v25(v27, v21, v23);
    return (v25)(v28, v26, v23);
  }
}

uint64_t Date.dateIntervalFromStartOfWeek(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v30 = a2;
  v32 = sub_1B4D1794C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = sub_1B4D178CC();
  v19 = sub_1B4D1771C();
  v20 = [v18 hk:v19 startOfFitnessWeekBeforeDate:?];

  v33 = v17;
  sub_1B4D1775C();

  v21 = v32;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A98], v32);
  sub_1B4D1790C();
  (*(v2 + 8))(v4, v21);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    return (*(v9 + 8))(v33, v8);
  }

  else
  {
    v23 = v27;
    (*(v9 + 32))(v27, v7, v8);
    v24 = *(v9 + 16);
    v25 = v33;
    v24(v28, v33, v8);
    v24(v29, v23, v8);
    sub_1B4D174CC();
    v26 = *(v9 + 8);
    v26(v23, v8);
    return (v26)(v25, v8);
  }
}

uint64_t Date.dateIntervalForPreviousWeek(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v40 = sub_1B4D1794C();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1B4D1777C();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = sub_1B4D178CC();
  v18 = sub_1B4D1771C();
  v19 = [v17 hk:v18 startOfFitnessWeekBeforeDate:?];

  v20 = v16;
  v21 = v6;
  v22 = v38;
  sub_1B4D1775C();

  v23 = v39;
  v24 = v40;
  (*(v39 + 104))(v2, *MEMORY[0x1E6969A98], v40);
  sub_1B4D1790C();
  (*(v23 + 8))(v2, v24);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    return (*(v22 + 8))(v20, v21);
  }

  else
  {
    v26 = v33;
    (*(v22 + 32))(v33, v5, v21);
    v27 = sub_1B4D178CC();
    v28 = sub_1B4D1771C();
    v29 = [v27 hk:v28 startOfFitnessWeekBeforeDate:?];

    v30 = v34;
    sub_1B4D1775C();

    v31 = *(v22 + 16);
    v31(v35, v30, v21);
    v31(v36, v26, v21);
    sub_1B4D174CC();
    v32 = *(v22 + 8);
    v32(v30, v21);
    v32(v26, v21);
    return (v32)(v20, v21);
  }
}

uint64_t DateError.hashValue.getter()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t Date.activitySummaryComponents(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v5 = sub_1B4D1794C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B4D1B2D0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E6969A50], v5);
  v11(v10 + v7, *MEMORY[0x1E6969A68], v5);
  v11(v10 + 2 * v7, *MEMORY[0x1E6969A78], v5);
  v11(v10 + 3 * v7, *MEMORY[0x1E6969A48], v5);
  sub_1B49B56B4(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  v12 = sub_1B4D1796C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, a1, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  return sub_1B4D175EC();
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v28 = sub_1B4D1789C();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B4D178BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D1786C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  __swift_project_value_buffer(v14, qword_1EDC3CE48);
  v15 = *MEMORY[0x1E69698D0];
  v16 = *(v8 + 104);
  v26 = v7;
  v16(v10, v15, v7);
  v17 = *MEMORY[0x1E69699C8];
  v18 = *(v4 + 104);
  v25 = v3;
  v18(v6, v17, v3);
  v19 = v27;
  v20 = v28;
  (*(v1 + 104))(v27, *MEMORY[0x1E6969998], v28);
  sub_1B4D178EC();
  (*(v1 + 8))(v19, v20);
  (*(v4 + 8))(v6, v25);
  (*(v8 + 8))(v10, v26);
  v21 = sub_1B4D1777C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) != 1)
  {
    return (*(v22 + 32))(v24, v13, v21);
  }

  sub_1B4975024(v13, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4B15124();
  swift_allocError();
  return swift_willThrow();
}

uint64_t Date.beginningOfDay()()
{
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4D1796C();
  __swift_project_value_buffer(v0, qword_1EDC3CE48);
  return sub_1B4D1782C();
}

uint64_t Date.byAdding(component:value:calendar:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B4D1790C();
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a3, v6, v7);
  }

  sub_1B4975024(v6, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4B15124();
  swift_allocError();
  return swift_willThrow();
}

uint64_t Date.beginningOfSemester()@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v43 - v2;
  v50 = sub_1B4D1777C();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v43 - v7;
  v8 = sub_1B4D175FC();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1B4D1796C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1EDC3CE48);
  v18 = *(v14 + 16);
  v43 = v17;
  v18(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v19 = sub_1B4D1794C();
  v20 = *(v19 - 8);
  v55 = v14;
  v21 = v20;
  v22 = *(v20 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1BE00;
  v25 = v24 + v23;
  v26 = *MEMORY[0x1E6969A68];
  v52 = v13;
  v27 = *(v21 + 104);
  v27(v25, v26, v19);
  v27(v25 + v22, *MEMORY[0x1E6969A78], v19);
  v27(v25 + 2 * v22, *MEMORY[0x1E6969A48], v19);
  sub_1B49B56B4(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  sub_1B4D175AC();
  if (v28)
  {
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    (*(v53 + 8))(v12, v54);
    v29 = v52;
    v30 = v55;
    return (*(v30 + 8))(v16, v29);
  }

  v29 = v52;
  (*(v55 + 56))(v46, 1, 1, v52);
  v31 = sub_1B4D179BC();
  (*(*(v31 - 8) + 56))(v47, 1, 1, v31);
  sub_1B4D1759C();
  v32 = v51;
  sub_1B4D175DC();
  v33 = v49;
  sub_1B4D178FC();
  v34 = v48;
  v35 = v50;
  v36 = (*(v48 + 48))(v33, 1, v50);
  v30 = v55;
  if (v36 == 1)
  {
    sub_1B4975024(v33, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    v37 = v54;
    v38 = *(v53 + 8);
    v38(v32, v54);
    v38(v12, v37);
    return (*(v30 + 8))(v16, v29);
  }

  v40 = v44;
  (*(v34 + 32))(v44, v33, v35);
  sub_1B4D1782C();
  (*(v34 + 8))(v40, v35);
  v41 = v54;
  v42 = *(v53 + 8);
  v42(v51, v54);
  v42(v12, v41);
  return (*(v30 + 8))(v16, v29);
}

uint64_t sub_1B4B13AD8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v22 = a2;
  v2 = sub_1B4D1794C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v21 = sub_1B4D1777C();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4D1796C();
  __swift_project_value_buffer(v15, qword_1EDC3CE48);
  (*(v3 + 104))(v5, *v23, v2);
  sub_1B4D1783C();
  (*(v3 + 8))(v5, v2);
  v16 = sub_1B4D174EC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7728, &qword_1B4D1E9D0);
    sub_1B4B15124();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_1B4D174DC();
    (*(v17 + 8))(v8, v16);
    v19 = v21;
    (*(v9 + 32))(v14, v11, v21);
    sub_1B4D1782C();
    return (*(v9 + 8))(v14, v19);
  }
}

uint64_t Date.endOfLastWeek(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v18 = a2;
  v20 = sub_1B4D1794C();
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D178CC();
  v13 = sub_1B4D1771C();
  v14 = [v12 hk:v13 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  v15 = v20;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A98], v20);
  sub_1B4D1790C();
  (*(v2 + 8))(v4, v15);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    return (*(v9 + 32))(v18, v7, v8);
  }
}

uint64_t sub_1B4B14178@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v26 = a2;
  v29 = a1;
  v6 = sub_1B4D1794C();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = sub_1B4D1777C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.endOfDay.getter(v14);
  if (v4)
  {

    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_5:
    sub_1B4975024(v14, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    return swift_willThrow();
  }

  v25 = a4;
  (*(v16 + 56))(v14, 0, 1, v15);
  v23 = *(v16 + 32);
  v24 = v16 + 32;
  v23(v18, v14, v15);
  v19 = v27;
  v20 = v28;
  (*(v27 + 104))(v8, *v26, v28);
  sub_1B4D1790C();
  (*(v19 + 8))(v8, v20);
  (*(v16 + 8))(v18, v15);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    v14 = v11;
    goto LABEL_5;
  }

  return (v23)(v25, v11, v15);
}

uint64_t Date.endOfMonth(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v36 = a2;
  v38 = sub_1B4D1794C();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1B4D1777C();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  result = Date.beginningOfMonth()(&v27 - v16);
  if (!v2)
  {
    v34 = v8;
    v31 = 0;
    v19 = *MEMORY[0x1E6969A78];
    v20 = v38;
    v33 = *(v3 + 104);
    v33(v5, v19, v38);
    sub_1B4D1790C();
    v21 = *(v3 + 8);
    v35 = v3 + 8;
    v32 = v21;
    v21(v5, v20);
    v22 = v37;
    v23 = *(v37 + 48);
    if (v23(v11, 1, v12) == 1 || (v28 = *(v22 + 32), v29 = v22 + 32, v28(v14, v11, v12), v24 = *MEMORY[0x1E6969A98], v30 = v12, v25 = v38, v33(v5, v24, v38), v11 = v34, v33 = v23, sub_1B4D1790C(), v32(v5, v25), v26 = *(v22 + 8), v12 = v30, v26(v14, v30), v33(v11, 1, v12) == 1))
    {
      sub_1B4975024(v11, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4B15124();
      swift_allocError();
      swift_willThrow();
      return (*(v22 + 8))(v17, v12);
    }

    else
    {
      v26(v17, v12);
      return v28(v36, v11, v12);
    }
  }

  return result;
}

uint64_t sub_1B4B14928@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a3;
  v19[1] = a1;
  v5 = sub_1B4D1794C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1B4D1777C();
  v20 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(v13);
  if (!v3)
  {
    v17 = v19[0];
    (*(v6 + 104))(v8, *MEMORY[0x1E6969A98], v5);
    sub_1B4D1790C();
    (*(v6 + 8))(v8, v5);
    v18 = v20;
    if ((*(v20 + 48))(v11, 1, v12) == 1)
    {
      sub_1B4975024(v11, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4B15124();
      swift_allocError();
      swift_willThrow();
      return (*(v18 + 8))(v15, v12);
    }

    else
    {
      (*(v18 + 8))(v15, v12);
      return (*(v18 + 32))(v17, v11, v12);
    }
  }

  return result;
}

BOOL Date.isAnniversary(of:calendar:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v54 = a1;
  v2 = sub_1B4D175FC();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v43 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v6 = sub_1B4D1794C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v50 = 3 * v8;
  v47 = v8;
  v45 = 2 * v8;
  v10 = swift_allocObject();
  v49 = xmmword_1B4D1BE00;
  *(v10 + 16) = xmmword_1B4D1BE00;
  v48 = *MEMORY[0x1E6969A68];
  v11 = *(v7 + 104);
  v11(v10 + v9);
  v46 = *MEMORY[0x1E6969A78];
  v11(v10 + v9 + v8);
  v44 = *MEMORY[0x1E6969A48];
  v11(v10 + v9 + 2 * v8);
  sub_1B49B56B4(v10);
  swift_setDeallocating();
  v12 = v57;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  v13 = swift_allocObject();
  *(v13 + 16) = v49;
  (v11)(v13 + v9, v48, v6);
  (v11)(v13 + v9 + v47, v46, v6);
  (v11)(v13 + v9 + v45, v44, v6);
  sub_1B49B56B4(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = v53;
  swift_deallocClassInstance();
  sub_1B4D1788C();

  v15 = sub_1B4D1759C();
  if (v16 & 1) != 0 || (v17 = v15, v18 = sub_1B4D175AC(), (v19) || (v20 = v18, v21 = sub_1B4D1757C(), (v22) || (v23 = v21, v24 = sub_1B4D1759C(), (v25) || (v26 = v24, v27 = sub_1B4D175AC(), (v28) || (v29 = v27, v30 = sub_1B4D1757C(), (v31))
  {
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    v32 = *(v55 + 8);
    v33 = v14;
    v34 = v56;
    v32(v33, v56);
    v32(v12, v34);
  }

  else
  {
    v37 = v30;
    v38 = v56;
    v39 = v14;
    v40 = *(v55 + 8);
    v40(v39, v56);
    v40(v57, v38);
    return v20 == v29 && v23 == v37 && v26 < v17;
  }

  return v35;
}

Swift::Bool __swiftcall Date.isDay(_:)(FitnessIntelligence::DayOfWeek a1)
{
  v2 = a1;
  v3 = sub_1B4D1777C();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  (*(v8 + 16))(v6, v1, v4);
  DayOfWeek.init(from:)(v6, &v13);
  v9 = v7 == 7 && v13 == 7;
  if (v13 != 7 && v7 != 7)
  {
    v9 = sub_1B49767B8(v13, v7);
  }

  return v9 & 1;
}

unint64_t sub_1B4B15124()
{
  result = qword_1EB8AA558;
  if (!qword_1EB8AA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA558);
  }

  return result;
}

unint64_t sub_1B4B1517C()
{
  result = qword_1EB8AA560;
  if (!qword_1EB8AA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA560);
  }

  return result;
}

unint64_t sub_1B4B151F4()
{
  result = qword_1EB8AA568;
  if (!qword_1EB8AA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA568);
  }

  return result;
}

unint64_t sub_1B4B1524C()
{
  result = qword_1EB8AA570;
  if (!qword_1EB8AA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA570);
  }

  return result;
}

uint64_t sub_1B4B152A0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  result = sub_1B4B155D4(v9);
  if (!v2)
  {
    v25 = a1;
    v26 = 0;
    v18 = *(v11 + 48);
    if (v18(v9, 1, v10) == 1)
    {
      sub_1B4975024(v9, &qword_1EB8A8370, &unk_1B4D21F00);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
      return sub_1B4B17648(v1 + *(v19 + 32), v25);
    }

    else
    {
      sub_1B498B270(v9, v16, &qword_1EB8A6928, &qword_1B4D20480);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
      sub_1B4B17648(v1 + *(v20 + 32), v6);
      if (v18(v6, 1, v10) == 1)
      {
        sub_1B4975024(v6, &qword_1EB8A8370, &unk_1B4D21F00);
        v21 = v25;
        sub_1B498B270(v16, v25, &qword_1EB8A6928, &qword_1B4D20480);
        return (*(v11 + 56))(v21, 0, 1, v10);
      }

      else
      {
        sub_1B498B270(v6, v13, &qword_1EB8A6928, &qword_1B4D20480);
        v22 = v25;
        v23 = v26;
        sub_1B4CE22CC(v13, v16, v25);
        sub_1B4975024(v13, &qword_1EB8A6928, &qword_1B4D20480);
        result = sub_1B4975024(v16, &qword_1EB8A6928, &qword_1B4D20480);
        if (!v23)
        {
          return (*(v11 + 56))(v22, 0, 1, v10);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4B155D4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v69 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v24 = *(v1 + 8);
  v26 = *(v3 + 56);
  v25 = v3 + 56;
  v64 = v2;
  v52 = v26;
  (v26)(&v48 - v22, 1, 1, v2, v21);
  v49 = v23;
  sub_1B4B17648(v23, v19);
  v27 = v24 + 64;
  v28 = 1 << *(v24 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v24 + 64);
  v56 = (v28 + 63) >> 6;
  v57 = v24;
  v66 = v69 + 1;
  v67 = v69 + 2;
  v53 = v25;
  v54 = (v25 - 8);
  result = swift_bridgeObjectRetain_n();
  v32 = 0;
  v65 = v12;
  v60 = v19;
  v50 = v5;
  v51 = v24 + 64;
  while (v30)
  {
    v34 = v70;
LABEL_12:
    v36 = *(v57 + 56) + v69[9] * (__clz(__rbit64(v30)) | (v32 << 6));
    v37 = v69[2];
    v62 = v37;
    v37(v12, v36, v8);
    v37(v68, v12, v8);
    v63 = type metadata accessor for UnitCount();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = [ObjCClassFromMetadata baseUnit];
    v39 = v64;
    v40 = v64[11];
    sub_1B4D1745C();

    sub_1B4D1742C();
    *(v34 + v39[7]) = 1;
    v41 = v62;
    v62(v34, v34 + v40, v8);
    v42 = [ObjCClassFromMetadata baseUnit];
    sub_1B4D1741C();
    v43 = v69[1];
    v43(v68, v8);
    v41(v34 + v39[9], v34 + v40, v8);
    v41(v34 + v39[8], v34 + v40, v8);
    v19 = v60;
    v44 = v55;
    sub_1B4B17648(v60, v55);
    if ((*v54)(v44, 1, v39) == 1)
    {
      v43(v65, v8);
      sub_1B4975024(v19, &qword_1EB8A8370, &unk_1B4D21F00);
      sub_1B4975024(v44, &qword_1EB8A8370, &unk_1B4D21F00);
      v33 = v59;
      sub_1B498B270(v70, v59, &qword_1EB8A6928, &qword_1B4D20480);
    }

    else
    {
      v45 = v44;
      v46 = v50;
      sub_1B498B270(v45, v50, &qword_1EB8A6928, &qword_1B4D20480);
      v47 = v58;
      sub_1B4CE22CC(v46, v70, v59);
      v58 = v47;
      if (v47)
      {

        sub_1B4975024(v46, &qword_1EB8A6928, &qword_1B4D20480);
        sub_1B4975024(v70, &qword_1EB8A6928, &qword_1B4D20480);
        v43(v65, v8);
        sub_1B4975024(v60, &qword_1EB8A8370, &unk_1B4D21F00);
        sub_1B4975024(v49, &qword_1EB8A8370, &unk_1B4D21F00);
      }

      sub_1B4975024(v46, &qword_1EB8A6928, &qword_1B4D20480);
      sub_1B4975024(v70, &qword_1EB8A6928, &qword_1B4D20480);
      v43(v65, v8);
      v19 = v60;
      sub_1B4975024(v60, &qword_1EB8A8370, &unk_1B4D21F00);
      v33 = v59;
    }

    v30 &= v30 - 1;
    v52(v33, 0, 1, v64);
    result = sub_1B498B270(v33, v19, &qword_1EB8A8370, &unk_1B4D21F00);
    v12 = v65;
    v27 = v51;
  }

  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v35 >= v56)
    {
      sub_1B4975024(v49, &qword_1EB8A8370, &unk_1B4D21F00);

      sub_1B498B270(v19, v48, &qword_1EB8A8370, &unk_1B4D21F00);
    }

    v30 = *(v27 + 8 * v35);
    ++v32;
    if (v30)
    {
      v34 = v70;
      v32 = v35;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4B15CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v64 = a2;
  v56 = sub_1B4D1777C();
  v62 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v59 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = v50 - v4;
  v61 = sub_1B4D175FC();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v50 - v18;
  v20 = v65;
  result = sub_1B4B152A0(v12);
  if (v20)
  {
    return result;
  }

  v22 = v64;
  v54 = v9;
  v55 = v7;
  v52 = v16;
  v53 = v19;
  v51 = v6;
  v65 = 0;
  v23 = v13;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A8370, &unk_1B4D21F00);
    return (*(v14 + 56))(v22, 1, 1, v13);
  }

  sub_1B498B270(v12, v53, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for UnitCount();
  v24 = [swift_getObjCClassFromMetadata() baseUnit];
  v25 = v54;
  sub_1B4D1741C();
  v26 = *(v63 + 16);
  v27 = v52;
  v28 = v55;
  v26(v52, v25, v55);
  v26((v27 + v13[8]), v25, v28);
  v26((v27 + v13[9]), v25, v28);
  v26((v27 + v13[10]), v25, v28);
  v26((v27 + v13[11]), v25, v28);
  *(v27 + v13[7]) = 1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v29 = sub_1B4D1796C();
  v50[1] = __swift_project_value_buffer(v29, qword_1EDC3CE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v30 = sub_1B4D1794C();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B4D1A800;
  (*(v31 + 104))(v33 + v32, *MEMORY[0x1E6969A10], v30);
  sub_1B49B56B4(v33);
  swift_setDeallocating();
  (*(v31 + 8))(v33 + v32, v30);
  swift_deallocClassInstance();
  v34 = v57;
  sub_1B4D174DC();
  v35 = v59;
  sub_1B4D174BC();
  v36 = v51;
  sub_1B4D1787C();

  v37 = *(v62 + 8);
  v38 = v56;
  v37(v35, v56);
  v37(v34, v38);
  v39 = sub_1B4D1754C();
  LOBYTE(v38) = v40;
  result = (*(v58 + 8))(v36, v61);
  v41 = 0;
  if (v38)
  {
    goto LABEL_11;
  }

  v42 = v65;
  v43 = v63;
  v44 = v54;
  v45 = v55;
  if (v39)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_11:
      v42 = v65;
      v43 = v63;
      v44 = v54;
      v45 = v55;
    }
  }

  v46 = v53;
  v47 = *&v53[v23[7]];
  if (__OFSUB__(v41, v47))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v41 - v47 < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v50[-2] = v27;
  sub_1B4983A34(v46, sub_1B4B1762C, 0, v48, v49);
  (*(v43 + 8))(v44, v45);
  sub_1B4975024(v46, &qword_1EB8A6928, &qword_1B4D20480);
  if (!v42)
  {
    (*(v14 + 56))(v64, 0, 1, v23);
  }

  return sub_1B4975024(v27, &qword_1EB8A6928, &qword_1B4D20480);
}

uint64_t sub_1B4B16430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000002DLL;
  }

  else
  {
    v3 = 0xD00000000000001ELL;
  }

  if (v2)
  {
    v4 = "elevation_milestone>.";
  }

  else
  {
    v4 = "lastFourWeeksWorkoutProperties";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000002DLL;
  }

  else
  {
    v6 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v7 = "lastFourWeeksWorkoutProperties";
  }

  else
  {
    v7 = "elevation_milestone>.";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4B164DC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1655C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4B165C8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B16644@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

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

void sub_1B4B166A4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v1)
  {
    v3 = "lastFourWeeksWorkoutProperties";
  }

  else
  {
    v3 = "elevation_milestone>.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1B4B166E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4B168D8(a1, a3);
}

unint64_t sub_1B4B167A8(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B167D8();
  result = sub_1B4B1682C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B167D8()
{
  result = qword_1EB8AA578;
  if (!qword_1EB8AA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA578);
  }

  return result;
}

unint64_t sub_1B4B1682C()
{
  result = qword_1EB8AA580;
  if (!qword_1EB8AA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA580);
  }

  return result;
}

unint64_t sub_1B4B16884()
{
  result = qword_1EB8AA588;
  if (!qword_1EB8AA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA588);
  }

  return result;
}

uint64_t sub_1B4B168D8(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79A8, &unk_1B4D1F310);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for DateRangeDescriptor(0);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  v2[32] = swift_task_alloc();
  v5 = sub_1B4D174EC();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B16B70, 0, 0);
}

void sub_1B4B16B70()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 136);
  v4 = type metadata accessor for WorkoutState(0);
  v5 = *(v4 + 36);
  v6 = sub_1B4D1777C();
  (*(*(v6 - 8) + 16))(v2, v3 + v5, v6);
  swift_storeEnumTagMultiPayload();
  DateRangeDescriptor.dateInterval()(v1);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  sub_1B49CA284(*(v0 + 248));
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v10 = *(v0 + 256);
    v11 = &qword_1EB8A7728;
    v12 = &qword_1B4D1E9D0;
LABEL_3:
    sub_1B4975024(v10, v11, v12);
    goto LABEL_9;
  }

  v13 = *(v0 + 128);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v0 + 112) = &type metadata for ConsistentWorkoutTrendFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA590, &unk_1B4D2F358);
  v69 = sub_1B4D181CC();
  v71 = v16;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ELL, 0x80000001B4D4B380);

  (*(v15 + 8))(v69, v71, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v14, v15);

  v17 = *(v0 + 80);
  if (!v17)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    goto LABEL_9;
  }

  v19 = v13[3];
  v18 = v13[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 128), v19);
  *(v0 + 120) = &type metadata for ConsistentWorkoutTrendFactGenerator.QueryIdentifier;
  v70 = sub_1B4D181CC();
  v72 = v20;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000002DLL, 0x80000001B4D4B3A0);

  (*(v18 + 8))(v70, v72, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v19, v18);

  v21 = *(v0 + 104);
  if (!v21)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    goto LABEL_9;
  }

  v22 = *(v0 + 200);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_1B4CE748C((v0 + 16), v17, v22);
  v24 = *(v0 + 208);
  v25 = *(v0 + 216);
  v26 = *(v0 + 200);

  v27 = *(v25 + 48);
  v28 = v27(v26, 1, v24);
  v29 = *(v0 + 280);
  v30 = *(v0 + 200);
  if (v28 == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    v11 = &qword_1EB8A79A8;
    v12 = &unk_1B4D1F310;
LABEL_15:
    v10 = v30;
    goto LABEL_3;
  }

  v64 = v27;
  v31 = *(v0 + 152);
  sub_1B498B270(v30, *(v0 + 232), &qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4B15CE0(v29, v31);
  v30 = *(v0 + 152);
  v32 = *(*(v0 + 168) + 48);
  if (v32(v30, 1, *(v0 + 160)) == 1)
  {
    v34 = *(v0 + 272);
    v33 = *(v0 + 280);
    v35 = *(v0 + 264);
    v36 = *(v0 + 232);

    sub_1B4975024(v36, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v34 + 8))(v33, v35);
LABEL_18:
    v11 = &qword_1EB8A8370;
    v12 = &unk_1B4D21F00;
    goto LABEL_15;
  }

  v37 = *(v0 + 192);
  sub_1B498B270(v30, *(v0 + 184), &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4CE748C((v0 + 16), v21, v37);
  v38 = *(v0 + 208);
  v39 = *(v0 + 192);

  v40 = v64(v39, 1, v38);
  v41 = *(v0 + 280);
  if (v40 == 1)
  {
    v42 = *(v0 + 264);
    v43 = *(v0 + 272);
    v44 = *(v0 + 232);
    v45 = *(v0 + 192);
    sub_1B4975024(*(v0 + 184), &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v44, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v43 + 8))(v41, v42);
    v11 = &qword_1EB8A79A8;
    v12 = &unk_1B4D1F310;
    v10 = v45;
    goto LABEL_3;
  }

  v46 = *(v0 + 144);
  sub_1B498B270(*(v0 + 192), *(v0 + 224), &qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4B15CE0(v41, v46);
  v30 = *(v0 + 144);
  if (v32(v30, 1, *(v0 + 160)) == 1)
  {
    v48 = *(v0 + 272);
    v47 = *(v0 + 280);
    v49 = *(v0 + 264);
    v50 = *(v0 + 232);
    v51 = *(v0 + 184);
    sub_1B4975024(*(v0 + 224), &qword_1EB8A79B0, &qword_1B4D20FC0);
    sub_1B4975024(v51, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v50, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v48 + 8))(v47, v49);
    goto LABEL_18;
  }

  sub_1B498B270(v30, *(v0 + 176), &qword_1EB8A6928, &qword_1B4D20480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B4D1742C();
  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v52 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v68 = v52;
  if (v52 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1B4D1742C();
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v53 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = *(v0 + 272);
  v65 = *(v0 + 264);
  v66 = *(v0 + 280);
  v57 = *(v0 + 224);
  v56 = *(v0 + 232);
  v59 = *(v0 + 176);
  v58 = *(v0 + 184);
  if (v68 > 2 || v54 >= 2)
  {
    v60 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA598, &unk_1B4D2F368);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1B4D1A800;
    v62 = *(v60 + *(v4 + 24));
    *(v61 + 32) = v62;
    *(v61 + 40) = v68;
    v67 = v61;
    *(v61 + 48) = v54;
    v63 = v62;
    sub_1B4975024(v59, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v57, &qword_1EB8A79B0, &qword_1B4D20FC0);
    sub_1B4975024(v58, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v56, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v55 + 8))(v66, v65);
    goto LABEL_10;
  }

  sub_1B4975024(*(v0 + 176), &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v57, &qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4975024(v58, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v56, &qword_1EB8A79B0, &qword_1B4D20FC0);
  (*(v55 + 8))(v66, v65);
LABEL_9:
  v67 = MEMORY[0x1E69E7CC0];
LABEL_10:

  v23 = *(v0 + 8);

  v23(v67);
}

uint64_t sub_1B4B17648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B176B8(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5A0, &qword_1B4D2F378);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5A8, &unk_1B4D2F380);
  v5 = *(v4 - 8);
  v28 = *(v5 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v32 = v7;
  *(v7 + 16) = xmmword_1B4D1AA70;
  v8 = v7 + v6;
  v9 = *(v4 + 48);
  v29 = v4;
  v10 = v7 + v6 + v9;
  *(v7 + v6) = 0;
  v30 = type metadata accessor for WorkoutState(0);
  v11 = *(v30 + 36);
  v12 = sub_1B4D1777C();
  v13 = *(*(v12 - 8) + 16);
  v13(v10, a1 + v11, v12);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for WorkoutPropertiesQuery(0);
  v15 = (v10 + v14[5]);
  v16 = MEMORY[0x1E69E7CC0];
  *v15 = MEMORY[0x1E69E7CC0];
  v15[1] = v16;
  v15[2] = v16;
  v15[3] = v16;
  v15[4] = v16;
  v15[5] = v16;
  *(v10 + v14[6]) = v16;
  *(v10 + v14[7]) = &unk_1F2CB97E0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v17 = v8 + v28 + *(v4 + 48);
  *(v8 + v28) = 1;
  v18 = v26;
  v19 = v26 + v11;
  v20 = v31;
  v13(v31, v19, v12);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B4D1A800;
  *(v21 + 32) = [*(v18 + *(v30 + 24)) effectiveTypeIdentifier];
  sub_1B4993450(v20, v17);
  v22 = (v17 + v14[5]);
  *v22 = v16;
  v22[1] = v16;
  v22[2] = v16;
  v22[3] = v21;
  v22[4] = v16;
  v22[5] = v16;
  *(v17 + v14[6]) = v16;
  *(v17 + v14[7]) = &unk_1F2CB9808;
  swift_storeEnumTagMultiPayload();
  v23 = sub_1B4C975B8(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1B4B17A04()
{
  result = qword_1EB8AA5B0;
  if (!qword_1EB8AA5B0)
  {
    type metadata accessor for RingStateFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA5B0);
  }

  return result;
}

unint64_t sub_1B4B17A60()
{
  result = qword_1EB8AA5B8;
  if (!qword_1EB8AA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA5B8);
  }

  return result;
}

uint64_t sub_1B4B17AB4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - v12;
  v60 = type metadata accessor for HKActivitySummaryRepresentable(0);
  MEMORY[0x1EEE9AC00](v60);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - v16;
  v18 = type metadata accessor for RingProgressType(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  LOBYTE(a1) = *a1;
  v61 = a2;
  sub_1B4B191F4(a2, v14, type metadata accessor for HKActivitySummaryRepresentable);
  v63 = a1;
  sub_1B4B05EF8(v14, &v63, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1B4975024(v17, &qword_1EB8AA5C0, &unk_1B4D39040);
    v27 = type metadata accessor for RingStateFact(0);
    return (*(*(v27 - 8) + 56))(v62, 1, 1, v27);
  }

  else
  {
    sub_1B4B1925C(v17, v26, type metadata accessor for RingProgressType);
    sub_1B4B191F4(v26, v23, type metadata accessor for RingProgressType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
        v31 = v56;
        v32 = v52;
        (*(v56 + 32))(v52, &v23[*(v30 + 64)], v9);
        v33 = [objc_opt_self() minutes];
        v34 = v53;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v36 = v35;
        v37 = *(v31 + 8);
        v37(v34, v9);
        v37(v32, v9);
        v38 = v36 <= 30.0 && v36 >= 10.0;
        v37(&v23[*(v30 + 48)], v9);
        v37(v23, v9);
      }

      else
      {
        sub_1B4B192C4(v23, type metadata accessor for RingProgressType);
        v38 = 0;
      }

      v42 = v62;
    }

    else
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v40 = v57;
      v39 = v58;
      v41 = v54;
      (*(v57 + 32))(v54, &v23[*(v56 + 64)], v58);
      v42 = v62;
      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v43 = v55;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v43, v39);
      v46(v41, v39);
      v38 = v45 <= 100.0 && v45 >= 20.0;
      v46(&v23[*(v56 + 48)], v39);
      v46(v23, v39);
    }

    v48 = v60;
    v47 = v61;
    v49 = v59;
    sub_1B4B1925C(v26, v59, type metadata accessor for RingProgressType);
    LOBYTE(v47) = *(v47 + *(v48 + 76));
    sub_1B4B1925C(v49, v42, type metadata accessor for RingProgressType);
    v50 = type metadata accessor for RingStateFact(0);
    *(v42 + *(v50 + 20)) = v47 & 1;
    *(v42 + *(v50 + 24)) = v38;
    return (*(*(v50 - 8) + 56))(v42, 0, 1, v50);
  }
}

unint64_t sub_1B4B181B4(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = MEMORY[0x1E69E7CC0];

    return sub_1B4C96394(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D0, &qword_1B4D2F400);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408) - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B4D1A800;
    v9 = *(type metadata accessor for WorkoutState(0) + 36);
    v10 = sub_1B4D1777C();
    (*(*(v10 - 8) + 16))(v8 + v7, a1 + v9, v10);
    type metadata accessor for FitnessContextQueryDescriptor(0);
    swift_storeEnumTagMultiPayload();
    v11 = sub_1B4C96394(v8);
    swift_setDeallocating();
    sub_1B4975024(v8 + v7, &qword_1EB8AA5D8, &qword_1B4D2F408);
    swift_deallocClassInstance();
    return v11;
  }
}

uint64_t sub_1B4B1833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4B1886C(a1, a3);
}

uint64_t sub_1B4B183FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B191F4(a2, v5, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v16 = *(v44 + 48);
      v17 = *(v44 + 64);
      v18 = &qword_1EB8A6850;
      v19 = &unk_1B4D1BC10;
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = &qword_1EB8A6868;
      v19 = &unk_1B4D1AB80;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    v46 = *(*(v45 - 8) + 8);
    v46(&v5[v17], v45);
    v46(&v5[v16], v45);
    v46(v5, v45);
    v47 = COERCE_DOUBLE(sub_1B4A612D4()) >= 1.0;
    if (v48)
    {
      return 2;
    }

    else
    {
      return v47;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = COERCE_DOUBLE(sub_1B4A61B14()) >= 1.0;
      if (v21)
      {
        v9 = 2;
      }

      else
      {
        v9 = v20;
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v11 = *(v22 + 48);
      v12 = *(v22 + 64);
      v13 = &qword_1EB8A6850;
      v14 = &unk_1B4D1BC10;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v7 = COERCE_DOUBLE(sub_1B4A61EE8()) >= 1.0;
      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = v7;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v11 = *(v10 + 48);
      v12 = *(v10 + 64);
      v13 = &qword_1EB8A6870;
      v14 = &unk_1B4D1C2C0;
LABEL_14:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      v24 = *(*(v23 - 8) + 8);
      v24(&v5[v12], v23);
      v24(&v5[v11], v23);
      v24(v5, v23);
      return v9;
    }

    v25 = sub_1B4A612D4();
    if (v26 & 1) != 0 || (v27 = *&v25, v28 = sub_1B4A61B14(), (v29) || (v30 = *&v28, v31 = COERCE_DOUBLE(sub_1B4A61EE8()), (v32))
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
      if (v27 >= 1.0 && v30 >= 1.0)
      {
        v9 = v31 >= 1.0;
      }
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v34 = v33[12];
    v50 = v33[20];
    v51 = v34;
    v35 = v33[24];
    v36 = v33[32];
    v37 = v33[36];
    v38 = v33[44];
    v39 = v33[48];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v41 = *(*(v40 - 8) + 8);
    v41(&v5[v39], v40);
    v41(&v5[v38], v40);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v43 = *(*(v42 - 8) + 8);
    v43(&v5[v37], v42);
    v43(&v5[v36], v42);
    sub_1B4975024(&v5[v35], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v5[v50], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v5[v51], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  return v9;
}

uint64_t sub_1B4B1886C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for RingStateFact(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for RingProgressType(0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B18AC8, 0, 0);
}

uint64_t sub_1B4B18AC8()
{
  v59 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[3];
  v4 = type metadata accessor for ActivitySummaryContext(0);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v0[2] = &type metadata for RingStateFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D8, &unk_1B4D1AAF0);
  v55 = sub_1B4D181CC();
  v57 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v55, v57, v4, v4, v5, v6);

  sub_1B4974FBC(v2, v1, &qword_1EB8AA5C8, &qword_1B4D39050);
  v8 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v9 = v0[20];
  v10 = v0[18];
  v11 = v0[13];
  v12 = v0[14];
  if (v8 == 1)
  {
    sub_1B4975024(v0[20], &qword_1EB8AA5C8, &qword_1B4D39050);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  else
  {
    sub_1B4974FBC(v0[20], v0[18], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4B192C4(v9, type metadata accessor for ActivitySummaryContext);
    v13 = *(v12 + 48);
    if (v13(v10, 1, v11) != 1)
    {
      v20 = v0[19];
      v21 = v0[13];
      v22 = v0[14];
      sub_1B4B1925C(v0[18], v20, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v22 + 56))(v20, 0, 1, v21);
      goto LABEL_7;
    }
  }

  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[4];
  v19 = type metadata accessor for WorkoutState(0);
  sub_1B4974FBC(v18 + *(v19 + 128), v15, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v13 = *(v17 + 48);
  if (v13(v14, 1, v16) != 1)
  {
    sub_1B4975024(v0[18], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_7:
  v23 = v0[17];
  v24 = v0[13];
  sub_1B4974FBC(v0[19], v23, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v25 = v13(v23, 1, v24);
  v26 = v0[17];
  if (v25 == 1)
  {
    sub_1B4975024(v26, &qword_1EB8A6C98, &unk_1B4D2F3F0);
LABEL_11:
    v29 = v0[21];
    sub_1B4975024(v0[19], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4975024(v29, &qword_1EB8AA5C8, &qword_1B4D39050);
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v27 = v0[16];
  sub_1B4B1925C(v26, v27, type metadata accessor for HKActivitySummaryRepresentable);
  v28 = v0[16];
  if (*(v27 + 25))
  {
    sub_1B4B192C4(v28, type metadata accessor for HKActivitySummaryRepresentable);
    goto LABEL_11;
  }

  v30 = v0[15];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[8];
  v56 = MEMORY[0x1E69E7CC0];
  sub_1B4B191F4(v28, v30, type metadata accessor for HKActivitySummaryRepresentable);
  v58[0] = 3;
  sub_1B4B05EF8(v30, v58, v33);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    sub_1B4975024(v0[8], &qword_1EB8AA5C0, &unk_1B4D39040);
  }

  else
  {
    v34 = v0[16];
    v35 = v0[12];
    sub_1B4B1925C(v0[8], v35, type metadata accessor for RingProgressType);
    v36 = sub_1B4B183FC(v34, v35);
    if (v36 == 2 || (v36 & 1) == 0)
    {
      sub_1B4B192C4(v0[12], type metadata accessor for RingProgressType);
    }

    else
    {
      v37 = v0[16];
      v38 = v0[13];
      v39 = v0[11];
      v40 = v0[7];
      v41 = v0[5];
      sub_1B4B191F4(v0[12], v39, type metadata accessor for RingProgressType);
      LOBYTE(v37) = *(v37 + *(v38 + 76));
      sub_1B4B1925C(v39, v40, type metadata accessor for RingProgressType);
      *(v40 + *(v41 + 20)) = v37 & 1;
      *(v40 + *(v41 + 24)) = 0;
      v42 = sub_1B4A1DA48(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1B4A1DA48((v43 > 1), v44 + 1, 1, v42);
      }

      v46 = v0[6];
      v45 = v0[7];
      sub_1B4B192C4(v0[12], type metadata accessor for RingProgressType);
      v42[2] = v44 + 1;
      sub_1B4B1925C(v45, v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44, type metadata accessor for RingStateFact);
      v56 = v42;
    }
  }

  v47 = v0[21];
  v48 = v0[19];
  v49 = v0[16];
  v50 = swift_task_alloc();
  *(v50 + 16) = v49;
  v51 = sub_1B4AE0B18(sub_1B4B191D8, v50, &unk_1F2CB8A58);

  sub_1B4997618(v51);
  sub_1B4975024(v48, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4975024(v47, &qword_1EB8AA5C8, &qword_1B4D39050);
  v54 = v56;
  sub_1B4B192C4(v49, type metadata accessor for HKActivitySummaryRepresentable);
LABEL_21:

  v52 = v0[1];

  return v52(v54);
}

uint64_t sub_1B4B191F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B1925C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B192C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B19334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int *ActivitySharingAnniversaryFact.init(friend:weekWorkoutCount:weekRingClosureCount:numberOfYearsActivitySharing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B4B193E4(a1, a5);
  result = type metadata accessor for ActivitySharingAnniversaryFact(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1B4B193E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriend(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ActivitySharingAnniversaryFact(uint64_t a1)
{
  result = qword_1EB8AA608;
  if (!qword_1EB8AA608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4B19498()
{
  v1 = 0x646E65697266;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4B1951C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B19EC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B19544(uint64_t a1)
{
  v2 = sub_1B4B19BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B19580(uint64_t a1)
{
  v2 = sub_1B4B19BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySharingAnniversaryFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5E0, &qword_1B4D2F470);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B19BAC();
  sub_1B4D18EFC();
  v8[15] = 0;
  type metadata accessor for ActivitySharingFriend(0);
  sub_1B4B19C00(&qword_1EB8AA5F0, &protocol conformance descriptor for ActivitySharingFriend);
  sub_1B4D18D0C();
  if (!v1)
  {
    type metadata accessor for ActivitySharingAnniversaryFact(0);
    v8[14] = 1;
    sub_1B4D18CEC();
    v8[13] = 2;
    sub_1B4D18CEC();
    v8[12] = 3;
    sub_1B4D18CEC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivitySharingAnniversaryFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ActivitySharingFriend(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5F8, &qword_1B4D2F478);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ActivitySharingAnniversaryFact(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B4B19BAC();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v14 = v20;
  v15 = v12;
  v26 = 0;
  sub_1B4B19C00(&qword_1EB8AA600, &protocol conformance descriptor for ActivitySharingFriend);
  v16 = v21;
  sub_1B4D18C0C();
  sub_1B4B193E4(v6, v15);
  v25 = 1;
  *(v15 + v10[5]) = sub_1B4D18BEC();
  v24 = 2;
  *(v15 + v10[6]) = sub_1B4D18BEC();
  v23 = 3;
  v18 = sub_1B4D18BEC();
  (*(v14 + 8))(v9, v16);
  *(v15 + v10[7]) = v18;
  sub_1B4B19C44(v15, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return sub_1B4B19CA8(v15, type metadata accessor for ActivitySharingAnniversaryFact);
}

BOOL _s19FitnessIntelligence30ActivitySharingAnniversaryFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static ActivitySharingFriend.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for ActivitySharingAnniversaryFact(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B4B19BAC()
{
  result = qword_1EB8AA5E8;
  if (!qword_1EB8AA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA5E8);
  }

  return result;
}

uint64_t sub_1B4B19C00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivitySharingFriend(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B19C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingAnniversaryFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B19CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B19D30(uint64_t a1)
{
  result = type metadata accessor for ActivitySharingFriend(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4B19DBC()
{
  result = qword_1EB8AA618;
  if (!qword_1EB8AA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA618);
  }

  return result;
}

unint64_t sub_1B4B19E14()
{
  result = qword_1EB8AA620;
  if (!qword_1EB8AA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA620);
  }

  return result;
}

unint64_t sub_1B4B19E6C()
{
  result = qword_1EB8AA628;
  if (!qword_1EB8AA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA628);
  }

  return result;
}

uint64_t sub_1B4B19EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65697266 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61920 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D61940 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B4D61960 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t static RingGoalMilestonePropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  sub_1B49A8448(a1, &v16);
  if (v17)
  {
    sub_1B49A24C4(&v16, v18);
    if ((v4 - 19) < 4u)
    {
      __swift_project_boxed_opaque_existential_1(v18, v19);
      LOBYTE(v16) = v4 - 19;
      v5.value = RingsRepresentable.hasClosedRing(for:)(&v16).value;
      if (v5.value != 2)
      {
        value = v5.value;
        v7 = v19;
        v8 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        if (((*(v8 + 24))(v7, v8) & 1) == 0 && value)
        {
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          (*(*(v9 + 8) + 8))(&v16, v10);
          v11 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C20, &qword_1B4D200C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1B4D1A800;
          *(inited + 32) = 1;
          *(inited + 40) = v11;
          v13 = sub_1B4C9864C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C18, &qword_1B4D2F640);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1B4D1A800;
          *(v14 + 32) = v11;
          *a3 = 1;
          a3[1] = v14;
          a3[2] = v13;
          return __swift_destroy_boxed_opaque_existential_1Tm(v18);
        }
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    result = sub_1B49A84B8(&v16);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

unint64_t sub_1B4B1A1E0(uint64_t a1)
{
  result = sub_1B4B1A208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B1A208()
{
  result = qword_1EDC37DF0[0];
  if (!qword_1EDC37DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37DF0);
  }

  return result;
}

unint64_t sub_1B4B1A260()
{
  result = qword_1EDC389B8;
  if (!qword_1EDC389B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC389B8);
  }

  return result;
}

uint64_t sub_1B4B1A328(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v7 = sub_1B4D175FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30[-v12];
  v14 = *a2;
  v32 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4D1796C();
  __swift_project_value_buffer(v15, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v13);
  if (!v3)
  {
    v32 = v14;
    CacheIndex.dateComponents(for:)(v10);
    v18 = sub_1B4D1759C();
    v20 = v19;
    v21 = sub_1B4D1759C();
    if (v20)
    {
      if ((v22 & 1) == 0)
      {
LABEL_14:
        v29 = *(v8 + 8);
        v29(v10, v7);
        v29(v13, v7);
        v16 = 0;
        return v16 & 1;
      }
    }

    else if ((v22 & 1) != 0 || v18 != v21)
    {
      goto LABEL_14;
    }

    v23 = a3(v21);
    v31 = v24;
    v25 = (a3)();
    v27 = v26;
    v28 = *(v8 + 8);
    v28(v10, v7);
    v28(v13, v7);
    v16 = (v23 == v25) & ~v27;
    if (v31)
    {
      v16 = v27;
    }
  }

  return v16 & 1;
}

uint64_t static Calendar.hkGregorian.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4D1796C();
  v3 = __swift_project_value_buffer(v2, qword_1EDC3CE48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B4B1A638()
{
  v0 = sub_1B4D1796C();
  __swift_allocate_value_buffer(v0, qword_1EDC3CE48);
  __swift_project_value_buffer(v0, qword_1EDC3CE48);
  v1 = [objc_opt_self() hk_gregorianCalendar];
  sub_1B4D178DC();

  return sub_1B4D1784C();
}

uint64_t Calendar.isSameYear(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B4D175FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  v12 = *a2;
  v24 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4D1796C();
  __swift_project_value_buffer(v13, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v11);
  if (!v2)
  {
    v24 = v12;
    CacheIndex.dateComponents(for:)(v8);
    v16 = sub_1B4D1759C();
    v23 = v17;
    v18 = sub_1B4D1759C();
    v20 = v19;
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v11, v5);
    v14 = (v16 == v18) & ~v20;
    if (v23)
    {
      v14 = v20;
    }
  }

  return v14 & 1;
}

uint64_t Calendar.isSameSemester(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B4D175FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *a2;
  v31 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4D1796C();
  __swift_project_value_buffer(v13, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v11);
  if (!v2)
  {
    v31 = v12;
    CacheIndex.dateComponents(for:)(v8);
    v16 = sub_1B4D175AC();
    if (v17 & 1) != 0 || (v18 = v16, v19 = sub_1B4D175AC(), (v20))
    {
      v21 = *(v6 + 8);
      v21(v8, v5);
      v21(v11, v5);
      v14 = 0;
      return v14 & 1;
    }

    v30 = v19;
    v29 = sub_1B4D1759C();
    v23 = v22;
    v28 = sub_1B4D1759C();
    v25 = v24;
    v26 = *(v6 + 8);
    v26(v8, v5);
    v26(v11, v5);
    if (v23)
    {
      if ((v25 & 1) == 0)
      {
        v14 = 0;
        return v14 & 1;
      }

LABEL_14:
      v14 = (v18 > 6) ^ (v30 < 7);
      return v14 & 1;
    }

    v14 = 0;
    if ((v25 & 1) == 0 && v29 == v28)
    {
      goto LABEL_14;
    }
  }

  return v14 & 1;
}

uint64_t Calendar.isSameDay(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B4D175FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33[-v10];
  v12 = *a2;
  v35 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4D1796C();
  __swift_project_value_buffer(v13, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v11);
  if (!v2)
  {
    v35 = v12;
    CacheIndex.dateComponents(for:)(v8);
    v16 = sub_1B4D1759C();
    v18 = v17;
    v19 = sub_1B4D1759C();
    if (v18)
    {
      if ((v20 & 1) == 0)
      {
LABEL_19:
        v32 = *(v6 + 8);
        v32(v8, v5);
        v32(v11, v5);
        v14 = 0;
        return v14 & 1;
      }
    }

    else if ((v20 & 1) != 0 || v16 != v19)
    {
      goto LABEL_19;
    }

    v21 = sub_1B4D175AC();
    v23 = v22;
    v24 = sub_1B4D175AC();
    if (v23)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((v25 & 1) != 0 || v21 != v24)
    {
      goto LABEL_19;
    }

    v26 = sub_1B4D1757C();
    v34 = v27;
    v28 = sub_1B4D1757C();
    v30 = v29;
    v31 = *(v6 + 8);
    v31(v8, v5);
    v31(v11, v5);
    v14 = (v26 == v28) & ~v30;
    if (v34)
    {
      v14 = v30;
    }
  }

  return v14 & 1;
}

double InferenceRequest.init(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v93 = a2;
  v3 = sub_1B4D177CC();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v96 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - v9;
  v95 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  *&v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v20 = v19[5];
  v100 = a1;
  v21 = (a1 + v20);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v21[1];
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25 = sub_1B4D18B1C();

  if (v25)
  {
    sub_1B4B1B5D0();
    swift_allocError();
    *v26 = v23;
    v26[1] = v24;
    swift_willThrow();

    sub_1B4B1B624(v100, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    return result;
  }

  v84 = v15;
  *&v85 = v12;
  v86 = v10;
  v28 = v19[7];
  v29 = v100;
  sub_1B4974FBC(v100 + v28, v18, &qword_1EB8A8778, &qword_1B4D22438);
  v30 = v95;
  *&v94 = *(v94 + 48);
  v31 = (v94)(v18, 1, v95);
  sub_1B4975024(v18, &qword_1EB8A8778, &qword_1B4D22438);
  if (v31 == 1)
  {
    LODWORD(v95) = 0;
    v94 = xmmword_1B4D1A640;
    v85 = 0u;
    v32 = v29;
    v33 = v96;
    v34 = v86;
  }

  else
  {
    v35 = v29 + v28;
    v36 = v84;
    sub_1B4974FBC(v35, v84, &qword_1EB8A8778, &qword_1B4D22438);
    v37 = (v94)(v36, 1, v30);
    v32 = v29;
    v33 = v96;
    if (v37 == 1)
    {
      v38 = v85;
      *v85 = 0;
      sub_1B4D17BBC();
      v39 = *(v30 + 24);
      v40 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
      (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
      v41 = (v94)(v36, 1, v30);
      v34 = v86;
      if (v41 != 1)
      {
        sub_1B4975024(v36, &qword_1EB8A8778, &qword_1B4D22438);
      }
    }

    else
    {
      v38 = v85;
      sub_1B4B1B684(v36, v85, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      v34 = v86;
    }

    v42 = v97;
    AudioSynthesisSettings.init(_:)(v38, v98);
    if (v42)
    {
      sub_1B4B1B624(v29, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
      return result;
    }

    v97 = 0;
    v85 = v98[1];
    v94 = v98[0];
    LODWORD(v95) = v99;
  }

  v43 = v19;
  v44 = v19[9];
  sub_1B4974FBC(v32 + v44, v34, &qword_1EB8A8780, &qword_1B4D22440);
  v45 = *(v33 + 48);
  v46 = v89;
  v47 = v45(v34, 1, v89);
  v48 = v34;
  v49 = v47;
  sub_1B4975024(v48, &qword_1EB8A8780, &qword_1B4D22440);
  if (v49 == 1)
  {
    v100 = 0;
    v96 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v51 = v91;
    v50 = v92;
    v52 = v90;
    v53 = v19;
  }

  else
  {
    v54 = v32 + v44;
    v55 = v87;
    sub_1B4974FBC(v54, v87, &qword_1EB8A8780, &qword_1B4D22440);
    v56 = v45(v55, 1, v46);
    v51 = v91;
    v50 = v92;
    if (v56 == 1)
    {
      v57 = v88;
      *v88 = 0;
      v57[1] = 0xE000000000000000;
      v57[2] = 0;
      v57[3] = 0xE000000000000000;
      sub_1B4D17BBC();
      v58 = (v57 + *(v46 + 28));
      *v58 = 0;
      v58[1] = 0;
      v59 = v45(v55, 1, v46) == 1;
      v52 = v90;
      v60 = v55;
      v53 = v43;
      if (!v59)
      {
        sub_1B4975024(v60, &qword_1EB8A8780, &qword_1B4D22440);
      }
    }

    else
    {
      v57 = v88;
      sub_1B4B1B684(v55, v88, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      v52 = v90;
      v53 = v43;
    }

    v61 = v57[1];
    v100 = *v57;
    v62 = (v57 + *(v46 + 28));
    v63 = *v62;
    v88 = v62[1];
    v89 = v63;
    v64 = v57[3];
    v87 = v57[2];

    v86 = v64;

    v96 = v61;

    sub_1B4B1B624(v57, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  v65 = (v32 + v53[10]);
  if (v65[1])
  {
    v66 = *v65;
    v67 = v65[1];
  }

  else
  {
    sub_1B4D177BC();
    v66 = sub_1B4D1779C();
    v67 = v68;
    (*(v51 + 8))(v52, v50);
  }

  v69 = *(v32 + v53[11]);
  v70 = v32;
  v71 = (v32 + v53[6]);
  if (v71[1])
  {
    v72 = *v71;
    v73 = v71[1];
  }

  else
  {
    v72 = 0;
    v73 = 0xE000000000000000;
  }

  v74 = (v70 + v53[8]);
  v75 = *v74;
  v76 = v74[1];
  v77 = v69 & 1;

  sub_1B4B1B624(v70, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v78 = v93;
  *v93 = v72;
  v78[1] = v73;
  v79 = v85;
  result = *&v94;
  *(v78 + 1) = v94;
  *(v78 + 2) = v79;
  *(v78 + 48) = v95;
  v78[7] = v75;
  v78[8] = v76;
  v80 = v96;
  v78[9] = v100;
  v78[10] = v80;
  v81 = v88;
  v78[11] = v89;
  v78[12] = v81;
  v82 = v86;
  v78[13] = v87;
  v78[14] = v82;
  v78[15] = v66;
  v78[16] = v67;
  *(v78 + 136) = v77;
  return result;
}

unint64_t sub_1B4B1B5D0()
{
  result = qword_1EB8AA630;
  if (!qword_1EB8AA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA630);
  }

  return result;
}

uint64_t sub_1B4B1B624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B1B684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t InferenceRequest.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4B1BFC0(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B1B7BC(uint64_t a1, uint64_t *a2)
{
  v41 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v33 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v10 = (a1 + v9[5]);

  *v10 = xmmword_1B4D2F6B0;
  v11 = *a2;
  v12 = a2[1];
  v13 = (a1 + v9[6]);

  *v13 = v11;
  v13[1] = v12;
  v15 = a2[3];
  if (v15 != 1)
  {
    v16 = *(a2 + 48);
    v38[0] = a2[2];
    v38[1] = v15;
    v39 = *(a2 + 2);
    v40 = v16;
    MEMORY[0x1EEE9AC00](v14);
    *(&v31 - 2) = v38;
    sub_1B4B1BFC0(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    result = sub_1B4D17DAC();
    if (v2)
    {
      return result;
    }

    v18 = v9[7];
    sub_1B4975024(a1 + v18, &qword_1EB8A8778, &qword_1B4D22438);
    sub_1B4B1B684(v8, a1 + v18, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    v14 = (*(v31 + 56))(a1 + v18, 0, 1, v6);
  }

  v19 = a2[8];
  if (v19)
  {
    v20 = a2[7];
    v21 = (a1 + v9[8]);

    *v21 = v20;
    v21[1] = v19;
  }

  v22 = a2[10];
  if (v22)
  {
    v24 = a2[13];
    v23 = a2[14];
    v34[0] = a2[9];
    v34[1] = v22;
    v35 = *(a2 + 11);
    v36 = v24;
    v37 = v23;
    MEMORY[0x1EEE9AC00](v14);
    *(&v31 - 2) = v34;
    sub_1B4B1BFC0(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    v25 = v32;
    v26 = v41;
    sub_1B4D17DAC();
    v27 = v9[9];
    sub_1B4975024(a1 + v27, &qword_1EB8A8780, &qword_1B4D22440);
    sub_1B4B1B684(v25, a1 + v27, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    (*(v33 + 56))(a1 + v27, 0, 1, v26);
  }

  v29 = a2[15];
  v28 = a2[16];
  v30 = (a1 + v9[10]);

  *v30 = v29;
  v30[1] = v28;
  *(a1 + v9[11]) = *(a2 + 136);
  return result;
}

__int128 *sub_1B4B1BC04(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  v14[6] = v1[6];
  v15[0] = v7;
  *(v15 + 9) = *(v1 + 121);
  v8 = v1[3];
  v14[2] = v1[2];
  v14[3] = v8;
  v9 = v1[5];
  v14[4] = v1[4];
  v14[5] = v9;
  v10 = v1[1];
  v14[0] = *v1;
  v14[1] = v10;
  v11 = sub_1B4B1BF50();
  v12 = v14;
  (*(v11 + 32))(a1, v11);
  if (!v2)
  {
    sub_1B4B1BFC0(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);
    v12 = sub_1B4D17D6C();
    sub_1B4B1B624(v6, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  return v12;
}

__n128 sub_1B4B1BD6C@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_1B4B23028(a2, a3, v9);
  if (!v3)
  {
    v6 = v10[0];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v6;
    *(a1 + 121) = *(v10 + 9);
    v7 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v7;
    v8 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v8;
    result = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1B4B1BE58()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4B1BFC0(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B1BF50()
{
  result = qword_1EB8AA638;
  if (!qword_1EB8AA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA638);
  }

  return result;
}

uint64_t sub_1B4B1BFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WorkoutPropertyDimensions.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5 = (a1 + v4[5]);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;

    v8._countAndFlagsBits = v7;
    v8._object = v6;
    MonthOfYear.init(rawValue:)(v8);
    v9 = v34;
  }

  else
  {
    v9 = 12;
  }

  v31 = v9;
  v10 = (a1 + v4[6]);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    DayOfWeek.init(rawValue:)(v13);
    v14 = v35;
  }

  else
  {
    v14 = 7;
  }

  v30 = v14;
  v15 = a1 + v4[7];
  if (*(v15 + 8))
  {
    v16 = 0;
    v17 = 1;
  }

  else
  {
    HourOfDay.init(rawValue:)(*v15, &v32);
    v16 = v32;
    v17 = v33;
  }

  v18 = (a1 + v4[8]);
  v19 = *(v18 + 8);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v18;
  }

  v21 = (a1 + v4[9]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;

    v24._countAndFlagsBits = v23;
    v24._object = v22;
    WorkoutLocationType.init(rawValue:)(v24);
    v25 = v36;
  }

  else
  {
    v25 = 5;
  }

  v26 = (a1 + v4[10]);
  v28 = *v26;
  v27 = v26[1];

  result = sub_1B4B1C1C4(a1);
  *a2 = v31;
  *(a2 + 1) = v30;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 33) = v25;
  *(a2 + 40) = v28;
  *(a2 + 48) = v27;
  return result;
}

uint64_t sub_1B4B1C1C4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutPropertyDimensions.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  sub_1B4B1C70C(qword_1EDC3B440, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B1C2CC(uint64_t result, uint64_t a2)
{
  v2 = 0xE700000000000000;
  v3 = 0x797261756E616ALL;
  v5 = result;
  switch(*a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7972617572626566;
      goto LABEL_14;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x686372616DLL;
      goto LABEL_14;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6C69727061;
      goto LABEL_14;
    case 4:
      v2 = 0xE300000000000000;
      v3 = 7954797;
      goto LABEL_14;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1701737834;
      goto LABEL_14;
    case 6:
      v2 = 0xE400000000000000;
      v3 = 2037151082;
      goto LABEL_14;
    case 7:
      v2 = 0xE600000000000000;
      v3 = 0x747375677561;
      goto LABEL_14;
    case 8:
      v2 = 0xE900000000000072;
      v3 = 0x65626D6574706573;
      goto LABEL_14;
    case 9:
      v3 = 0x7265626F74636FLL;
      goto LABEL_14;
    case 0xA:
      v2 = 0xE800000000000000;
      v6 = 1702260590;
      goto LABEL_6;
    case 0xB:
      v2 = 0xE800000000000000;
      v6 = 1701012836;
LABEL_6:
      v3 = v6 | 0x7265626D00000000;
      goto LABEL_14;
    case 0xC:
      goto LABEL_15;
    default:
LABEL_14:
      v7 = (result + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));

      *v7 = v3;
      v7[1] = v2;
LABEL_15:
      v8 = 0x7961646E6F6DLL;
      v9 = *(a2 + 1);
      if (v9 <= 3)
      {
        v10 = 0xE600000000000000;
        v11 = 0xE900000000000079;
        v12 = 0x616473656E646577;
        if (v9 != 2)
        {
          v12 = 0x7961647372756874;
          v11 = 0xE800000000000000;
        }

        if (*(a2 + 1))
        {
          v8 = 0x79616473657574;
          v10 = 0xE700000000000000;
        }

        if (*(a2 + 1) <= 1u)
        {
          v13 = v8;
        }

        else
        {
          v13 = v12;
        }

        if (*(a2 + 1) <= 1u)
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }

LABEL_35:
        v15 = (v5 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));

        *v15 = v13;
        v15[1] = v14;
        if ((*(a2 + 16) & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }

      if (*(a2 + 1) <= 5u)
      {
        if (v9 == 4)
        {
          v13 = 0x796164697266;
        }

        else
        {
          v13 = 0x7961647275746173;
        }

        if (v9 == 4)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE800000000000000;
        }

        goto LABEL_35;
      }

      if (v9 == 6)
      {
        v13 = 0x7961646E7573;
        v14 = 0xE600000000000000;
        goto LABEL_35;
      }

      if ((*(a2 + 16) & 1) == 0)
      {
LABEL_36:
        v16 = *(a2 + 8);
        result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
        v17 = v5 + *(result + 28);
        *v17 = v16;
        *(v17 + 8) = 0;
        if (*(a2 + 32))
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

LABEL_39:
      if (*(a2 + 32))
      {
        goto LABEL_42;
      }

LABEL_40:
      v18 = *(a2 + 24);
      if (v18 < 0)
      {
        __break(1u);
        return result;
      }

      result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
      v19 = v5 + *(result + 32);
      *v19 = v18;
      *(v19 + 8) = 0;
LABEL_42:
      v20 = *(a2 + 33);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          v21 = 0xE900000000000072;
          v22 = 0x657461576E65706FLL;
        }

        else
        {
          if (v20 != 4)
          {
            goto LABEL_53;
          }

          v21 = 0xEC0000006C6F6F50;
          v22 = 0x676E696D6D697773;
        }
      }

      else if (*(a2 + 33))
      {
        if (v20 == 1)
        {
          v21 = 0xE600000000000000;
          v22 = 0x726F6F646E69;
        }

        else
        {
          v21 = 0xE700000000000000;
          v22 = 0x726F6F6474756FLL;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        v22 = 0x6E776F6E6B6E75;
      }

      v23 = (v5 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));

      *v23 = v22;
      v23[1] = v21;
LABEL_53:
      v24 = *(a2 + 48);
      if (v24)
      {
        v25 = *(a2 + 40);
        v26 = (v5 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
        sub_1B498B0D4(a2, v27);

        *v26 = v25;
        v26[1] = v24;
      }

      return result;
  }
}

uint64_t sub_1B4B1C70C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B1C750()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  sub_1B4B1C70C(qword_1EDC3B440, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  return sub_1B4D17DAC();
}

uint64_t WorkoutAlertFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 12;
  if (v4 < 0xC)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutAlertFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000050;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000060;
    v7 = 0xD00000000000005DLL;
    v8 = 0xD00000000000005BLL;
    if (v2 != 10)
    {
      v7 = 0xD00000000000005BLL;
    }

    if (v2 != 9)
    {
      v6 = v7;
    }

    if (v2 != 7)
    {
      v8 = 0xD00000000000005ALL;
    }

    if (v2 != 6)
    {
      v1 = v8;
    }

    if (*v0 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000004FLL;
    if (v2 != 4)
    {
      v3 = 0xD000000000000052;
    }

    if (v2 == 3)
    {
      v3 = 0xD000000000000050;
    }

    v4 = 0xD000000000000038;
    if (v2 == 1)
    {
      v4 = 0xD000000000000039;
    }

    if (!*v0)
    {
      v4 = 0xD00000000000002ELL;
    }

    if (*v0 <= 2u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1B4B1C9E4()
{
  v0 = WorkoutAlertFact.TemplateString.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutAlertFact.TemplateString.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4B1CA80()
{
  sub_1B4D18E8C();
  WorkoutAlertFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1CAE8(uint64_t a1)
{
  WorkoutAlertFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4B1CB4C(uint64_t a1)
{
  sub_1B4D18E8C();
  WorkoutAlertFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4B1CBBC@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutAlertFact.TemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall WorkoutAlertFact.separator()()
{
  v0 = 10;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t WorkoutAlertFact.placeholders()()
{
  v1 = v0[1];
  v13[0] = *v0;
  v13[1] = v1;
  v13[2] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1B2D0;
  v3 = swift_allocObject();
  v4 = v0[1];
  v3[1] = *v0;
  v3[2] = v4;
  v3[3] = v0[2];
  *(v2 + 32) = 0x657474616D726F66;
  *(v2 + 40) = 0xEF65756C61765F64;
  *(v2 + 48) = sub_1B4B1CE94;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v5 = swift_allocObject();
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  v5[3] = v0[2];
  strcpy((v2 + 80), "aggregate_type");
  *(v2 + 95) = -18;
  *(v2 + 96) = sub_1B4B1CE9C;
  *(v2 + 104) = v5;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  v7 = swift_allocObject();
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v7[3] = v0[2];
  *(v2 + 128) = 0xD000000000000015;
  *(v2 + 136) = 0x80000001B4D61980;
  *(v2 + 144) = sub_1B4B1CF7C;
  *(v2 + 152) = v7;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  v9 = swift_allocObject();
  v10 = v0[1];
  v9[1] = *v0;
  v9[2] = v10;
  v9[3] = v0[2];
  *(v2 + 176) = 0xD000000000000015;
  *(v2 + 184) = 0x80000001B4D619A0;
  *(v2 + 192) = sub_1B4B1CFE8;
  *(v2 + 200) = v9;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  sub_1B4B1CFF0(v13, v12);
  sub_1B4B1CFF0(v13, v12);
  sub_1B4B1CFF0(v13, v12);
  sub_1B4B1CFF0(v13, v12);
  return v2;
}

uint64_t sub_1B4B1CE08(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 9);
  v5 = *(a3 + 2);
  if ((v4 & 1) == 0 && (a3[1] & 1) == 0)
  {
    return sub_1B4D18D5C();
  }

  if (*(a3 + 32))
  {
    return 0;
  }

  v7 = *a3;
  v8 = v3;
  v9 = v4;
  return sub_1B4D1543C(&v7, a3[5], v5);
}

uint64_t sub_1B4B1CE9C()
{
  if (*(v0 + 26) > 1u)
  {
    if (*(v0 + 26) == 2)
    {
      return 0x20676E696C6C6F72;
    }

    else
    {
      return 0;
    }
  }

  else if (*(v0 + 26))
  {
    return 0x746E6572727563;
  }

  else
  {
    return 0x65676172657661;
  }
}

uint64_t sub_1B4B1CF18(__n128 a1, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 32) != 1)
  {
    return 0;
  }

  v9 = v3;
  v10 = v4;
  v5 = *(a3 + 2);
  v7 = *a3;
  v8 = *(a3 + 4);
  return sub_1B4D1543C(&v7, a3[5], v5);
}

uint64_t sub_1B4B1CF84(__n128 a1, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 32) != 1)
  {
    return 0;
  }

  v9 = v3;
  v10 = v4;
  v5 = *(a3 + 3);
  v7 = *a3;
  v8 = *(a3 + 4);
  return sub_1B4D1543C(&v7, a3[5], v5);
}

void WorkoutAlertFact.selectTemplate(formatter:isValueRange:)(char a1@<W1>, char *a2@<X8>)
{
  if (*(v2 + 9) == 1)
  {
    v3 = *v2;
    if (*v2 <= 1)
    {
      if (v3 | *(v2 + 8))
      {
        if (a1)
        {
          v10 = 10;
        }

        else
        {
          v10 = 5;
        }
      }

      else
      {
        v11 = v2[5];
        v13 = a2;
        v14 = [v11 effectiveTypeIdentifier];
        a2 = v13;
        if (a1)
        {
          v10 = 8;
        }

        else
        {
          v10 = 4;
        }

        if (a1)
        {
          v15 = 7;
        }

        else
        {
          v15 = 3;
        }

        if (v14 == 13)
        {
          v10 = v15;
        }
      }
    }

    else
    {
      v4 = *(v2 + 8);
      v5 = v3 ^ 2 | v4;
      if (a1)
      {
        v6 = 11;
      }

      else
      {
        v6 = 6;
      }

      v7 = v3 ^ 3 | v4;
      if (a1)
      {
        v8 = 12;
      }

      else
      {
        v8 = 0;
      }

      if (a1)
      {
        v9 = 12;
      }

      else
      {
        v9 = 2;
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      if (!v5)
      {
        v10 = v6;
      }
    }
  }

  else if (a1)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  *a2 = v10;
}

unint64_t sub_1B4B1D218()
{
  result = qword_1EB8AA640;
  if (!qword_1EB8AA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA640);
  }

  return result;
}

unint64_t sub_1B4B1D270()
{
  result = qword_1EB8AA648;
  if (!qword_1EB8AA648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA650, &qword_1B4D2F838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA648);
  }

  return result;
}

unint64_t sub_1B4B1D2D8()
{
  result = qword_1EB8AA658;
  if (!qword_1EB8AA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA658);
  }

  return result;
}

unint64_t sub_1B4B1D330()
{
  result = qword_1EB8AA660;
  if (!qword_1EB8AA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA660);
  }

  return result;
}

unint64_t sub_1B4B1D384(uint64_t a1)
{
  result = sub_1B4B1D3AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B1D3AC()
{
  result = qword_1EB8AA668;
  if (!qword_1EB8AA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA668);
  }

  return result;
}

void FitnessPlusPropertiesQuery.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v52 - v4;
  v58 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  *&v57 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v52 - v17;
  v18 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v19 = *(v18 + 28);
  v62 = a1;
  sub_1B4974FBC(a1 + v19, v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    *v13 = 0;
    v13[8] = -1;
    sub_1B4D17BBC();
    if (v20(v9, 1, v10) != 1)
    {
      sub_1B4975024(v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4B20684(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  v21 = v59;
  v22 = v56;
  DateRangeDescriptor.init(_:)(v13);
  v23 = v58;
  v24 = v57;
  if (!v22)
  {
    v25 = v54;
    sub_1B4974FBC(v62 + *(v18 + 32), v54, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    v26 = *(v24 + 48);
    if (v26(v25, 1, v23) == 1)
    {
      v27 = MEMORY[0x1E69E7CC0];
      *v6 = MEMORY[0x1E69E7CC0];
      v6[1] = v27;
      v6[2] = v27;
      v6[3] = v27;
      v6[4] = v27;
      sub_1B4D17BBC();
      if (v26(v25, 1, v23) != 1)
      {
        sub_1B4975024(v25, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      }
    }

    else
    {
      sub_1B4B20684(v25, v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    }

    FitnessPlusPropertyDimensionsFilters.init(_:)(v6, v60);
    v28 = 0;
    v56 = v60[1];
    v57 = v60[0];
    v54 = v61;
    v29 = *v62;
    v30 = *(*v62 + 16);
    v31 = v29 + 40;
    v58 = MEMORY[0x1E69E7CC0];
    v52 = v29 + 40;
LABEL_11:
    v32 = v31 + 16 * v28;
    while (v30 != v28)
    {
      if (v28 >= *(v29 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      ++v28;
      v33 = v32 + 16;

      v34 = sub_1B4D18B1C();

      v32 = v33;
      if (v34 < 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1B4A1D1E4(0, *(v58 + 2) + 1, 1, v58);
        }

        v36 = *(v58 + 2);
        v35 = *(v58 + 3);
        if (v36 >= v35 >> 1)
        {
          v58 = sub_1B4A1D1E4((v35 > 1), v36 + 1, 1, v58);
        }

        v37 = v58;
        *(v58 + 2) = v36 + 1;
        v37[v36 + 32] = v34;
        v21 = v59;
        v31 = v52;
        goto LABEL_11;
      }
    }

    v38 = v62[1];
    sub_1B4B1FF0C(v21, v55, type metadata accessor for DateRangeDescriptor);
    v39 = 0;
    v40 = *(v38 + 16);
    v41 = v38 + 40;
    v42 = MEMORY[0x1E69E7CC0];
    v52 = v38 + 40;
LABEL_21:
    v43 = v41 + 16 * v39;
    while (v40 != v39)
    {
      if (v39 >= *(v38 + 16))
      {
        goto LABEL_33;
      }

      ++v39;
      v44 = v43 + 16;

      v45 = sub_1B4D18B1C();

      v43 = v44;
      if (v45 <= 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1B4A1D1D0(0, *(v42 + 2) + 1, 1, v42);
        }

        v47 = *(v42 + 2);
        v46 = *(v42 + 3);
        if (v47 >= v46 >> 1)
        {
          v42 = sub_1B4A1D1D0((v46 > 1), v47 + 1, 1, v42);
        }

        *(v42 + 2) = v47 + 1;
        v42[v47 + 32] = v45;
        v41 = v52;
        goto LABEL_21;
      }
    }

    v48 = v53;
    sub_1B4B20684(v55, v53, type metadata accessor for DateRangeDescriptor);
    sub_1B4B1FF74(v59, type metadata accessor for DateRangeDescriptor);
    v49 = type metadata accessor for FitnessPlusPropertiesQuery(0);
    v50 = v48 + v49[5];
    v51 = v56;
    *v50 = v57;
    *(v50 + 16) = v51;
    *(v50 + 32) = v54;
    *(v48 + v49[6]) = v58;
    *(v48 + v49[7]) = v42;
  }

  sub_1B4B1FF74(v62, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
}

uint64_t FitnessPlusPropertiesQuery.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4B206EC(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return sub_1B4D17DAC();
}

void static FitnessPlusPropertyDimensionsFilters.empty()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
}

void __swiftcall FitnessPlusPropertyDimensionsFilters.init(monthOfYear:dayOfWeek:hourOfDay:modalityKind:trainerIdentifiers:)(FitnessIntelligence::FitnessPlusPropertyDimensionsFilters *__return_ptr retstr, Swift::OpaquePointer monthOfYear, Swift::OpaquePointer dayOfWeek, Swift::OpaquePointer hourOfDay, Swift::OpaquePointer modalityKind, Swift::OpaquePointer trainerIdentifiers)
{
  retstr->monthOfYear = monthOfYear;
  retstr->dayOfWeek = dayOfWeek;
  retstr->hourOfDay = hourOfDay;
  retstr->modalityKind = modalityKind;
  retstr->trainerIdentifiers = trainerIdentifiers;
}

uint64_t FitnessPlusPropertyDimensionsFilters.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  sub_1B49C28E8(a1, *v2);
  sub_1B49C27B8(a1, v4);
  MEMORY[0x1B8C7D290](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = (v6 + 32);
    do
    {
      v10 = *v9++;
      MEMORY[0x1B8C7D2C0](v10);
      --v8;
    }

    while (v8);
  }

  sub_1B49C551C(a1, v5);

  return sub_1B49C5454(a1, v7);
}

uint64_t FitnessPlusPropertyDimensionsFilters.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v4);
  return sub_1B4D18EDC();
}

void sub_1B4B1DCBC(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
}

uint64_t sub_1B4B1DCD4()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v4);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1DD2C(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v5);
  return sub_1B4D18EDC();
}

void FitnessPlusPropertyDimensionsFilters.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v71 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v76 = a1;
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = *a1 + 40;
  v74 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v11 = v10 + 16 * v7;
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    ++v7;
    v12 = v11 + 16;

    v13 = sub_1B4D18B1C();

    v11 = v12;
    if (v13 < 0xC)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1B4A1CEE8(0, *(v74 + 2) + 1, 1, v74);
      }

      v15 = *(v74 + 2);
      v14 = *(v74 + 3);
      if (v15 >= v14 >> 1)
      {
        v74 = sub_1B4A1CEE8((v14 > 1), v15 + 1, 1, v74);
      }

      v16 = v74;
      *(v74 + 2) = v15 + 1;
      v16[v15 + 32] = v13;
      goto LABEL_2;
    }
  }

  v17 = 0;
  v18 = v76[1];
  v19 = *(v18 + 16);
  v73 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v20 = v18 + 40 + 16 * v17;
  while (v19 != v17)
  {
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_61;
    }

    ++v17;
    v21 = v20 + 16;

    v22 = sub_1B4D18B1C();

    v20 = v21;
    if (v22 < 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_1B4A1CED4(0, *(v73 + 2) + 1, 1, v73);
      }

      v24 = *(v73 + 2);
      v23 = *(v73 + 3);
      if (v24 >= v23 >> 1)
      {
        v73 = sub_1B4A1CED4((v23 > 1), v24 + 1, 1, v73);
      }

      v25 = v73;
      *(v73 + 2) = v24 + 1;
      v25[v24 + 32] = v22;
      goto LABEL_12;
    }
  }

  v26 = v76[2];
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = (v26 + 32);
    v30 = &qword_1EDC3BFD0[6];
    v31 = qword_1EDC3CED0;
    *&v4 = 134217984;
    v75 = v4;
    do
    {
      while (1)
      {
        v33 = *v29;
        v29 += 8;
        v32 = v33;
        if (v33 < 0x18)
        {
          break;
        }

        if (v30[473] != -1)
        {
          swift_once();
        }

        v34 = sub_1B4D17F6C();
        __swift_project_value_buffer(v34, v31);
        v35 = sub_1B4D17F5C();
        v36 = sub_1B4D1871C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v77 = v29;
          v38 = v28;
          v39 = v6;
          v40 = v31;
          v41 = v30;
          v42 = v37;
          *v37 = v75;
          *(v37 + 4) = v32;
          _os_log_impl(&dword_1B4953000, v35, v36, "Invalid hourOfDay: %lld", v37, 0xCu);
          v43 = v42;
          v30 = v41;
          v31 = v40;
          v6 = v39;
          v28 = v38;
          v29 = v77;
          MEMORY[0x1B8C7DDA0](v43, -1, -1);
        }

        if (!--v27)
        {
          goto LABEL_36;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1B4A1CF84(0, *(v28 + 2) + 1, 1, v28);
      }

      v45 = *(v28 + 2);
      v44 = *(v28 + 3);
      if (v45 >= v44 >> 1)
      {
        v28 = sub_1B4A1CF84((v44 > 1), v45 + 1, 1, v28);
      }

      *(v28 + 2) = v45 + 1;
      *&v28[8 * v45 + 32] = v32;
      --v27;
    }

    while (v27);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

LABEL_36:
  v46 = v76[3];
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = v46 + 40;
    v70 = v47 - 1;
    v77 = MEMORY[0x1E69E7CC0];
    *&v75 = v46 + 40;
LABEL_38:
    v50 = (v49 + 16 * v48);
    v51 = v48;
    while (v51 < *(v46 + 16))
    {
      v48 = v51 + 1;
      v52 = *(v50 - 1);
      v53 = *v50;

      v54._countAndFlagsBits = v52;
      v54._object = v53;
      FitnessPlusModalityKind.init(rawValue:)(v54);
      v55 = v78;
      if (v78 != 15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1B4A1D1BC(0, *(v77 + 2) + 1, 1, v77);
        }

        v57 = *(v77 + 2);
        v56 = *(v77 + 3);
        if (v57 >= v56 >> 1)
        {
          v77 = sub_1B4A1D1BC((v56 > 1), v57 + 1, 1, v77);
        }

        v58 = v77;
        *(v77 + 2) = v57 + 1;
        v58[v57 + 32] = v55;
        v49 = v75;
        if (v70 != v51)
        {
          goto LABEL_38;
        }

        goto LABEL_50;
      }

      v50 += 2;
      ++v51;
      if (v47 == v48)
      {
        goto LABEL_50;
      }
    }

LABEL_62:
    __break(1u);
    return;
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v59 = v76[4];
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v59 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v62 = *(v71 + 72);
    v63 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B4B1FF0C(v61, v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      v64 = *v6;

      sub_1B4B1FF74(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1B4A1D0B0(0, *(v63 + 2) + 1, 1, v63);
      }

      v66 = *(v63 + 2);
      v65 = *(v63 + 3);
      if (v66 >= v65 >> 1)
      {
        v63 = sub_1B4A1D0B0((v65 > 1), v66 + 1, 1, v63);
      }

      *(v63 + 2) = v66 + 1;
      *&v63[8 * v66 + 32] = v64;
      v61 += v62;
      --v60;
    }

    while (v60);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  sub_1B4B1FF74(v76, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  v67 = v72;
  v68 = v73;
  *v72 = v74;
  v67[1] = v68;
  v69 = v77;
  v67[2] = v28;
  v67[3] = v69;
  v67[4] = v63;
}

uint64_t FitnessPlusPropertyDimensionsFilters.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  sub_1B4B206EC(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B1E4C8(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a2;
  v7 = *(*a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v74 = a1;
  v75 = a2;
  if (v7)
  {
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v7, 0);
    v9 = (v6 + 32);
    v8 = v79;
    v10 = 0x797261756E616ALL;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if (v12 > 5)
      {
        if (v11 == 10)
        {
          v19 = 0x7265626D65766F6ELL;
        }

        else
        {
          v19 = 0x7265626D65636564;
        }

        v20 = 0xE800000000000000;
        if (v11 == 9)
        {
          v19 = 0x7265626F74636FLL;
          v20 = 0xE700000000000000;
        }

        v21 = 0xE900000000000072;
        v22 = 0x747375677561;
        if (v11 == 7)
        {
          v21 = 0xE600000000000000;
        }

        else
        {
          v22 = 0x65626D6574706573;
        }

        if (v11 == 6)
        {
          v22 = 2037151082;
          v21 = 0xE400000000000000;
        }

        if (v11 <= 8)
        {
          v17 = v22;
        }

        else
        {
          v17 = v19;
        }

        if (v11 <= 8)
        {
          v18 = v21;
        }

        else
        {
          v18 = v20;
        }
      }

      else
      {
        if (v11 == 4)
        {
          v13 = 7954797;
        }

        else
        {
          v13 = 1701737834;
        }

        if (v11 == 4)
        {
          v14 = 0xE300000000000000;
        }

        else
        {
          v14 = 0xE400000000000000;
        }

        if (v11 == 3)
        {
          v13 = 0x6C69727061;
          v14 = 0xE500000000000000;
        }

        if (v11 == 1)
        {
          v15 = 0x7972617572626566;
        }

        else
        {
          v15 = 0x686372616DLL;
        }

        if (v11 == 1)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (!v11)
        {
          v15 = v10;
          v16 = 0xE700000000000000;
        }

        if (v11 <= 2)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if (v11 <= 2)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      v79 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v10;
        sub_1B4BCF43C((v23 > 1), v24 + 1, 1);
        v10 = v26;
        v8 = v79;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v17;
      *(v25 + 40) = v18;
      --v7;
    }

    while (v7);
    a1 = v74;
    a2 = v75;
  }

  *a1 = v8;
  v27 = a2[1];
  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v28, 0);
    v30 = (v27 + 32);
    v29 = v79;
    do
    {
      v32 = *v30++;
      v31 = v32;
      v33 = 0x7961646E7573;
      if (v32 == 5)
      {
        v33 = 0x7961647275746173;
        v34 = 0xE800000000000000;
      }

      else
      {
        v34 = 0xE600000000000000;
      }

      if (v31 == 3)
      {
        v35 = 0x7961647372756874;
      }

      else
      {
        v35 = 0x796164697266;
      }

      if (v31 == 3)
      {
        v36 = 0xE800000000000000;
      }

      else
      {
        v36 = 0xE600000000000000;
      }

      if (v31 <= 4)
      {
        v33 = v35;
        v34 = v36;
      }

      v37 = 0xE900000000000079;
      if (v31 == 1)
      {
        v38 = 0x79616473657574;
      }

      else
      {
        v38 = 0x616473656E646577;
      }

      if (v31 == 1)
      {
        v37 = 0xE700000000000000;
      }

      if (!v31)
      {
        v38 = 0x7961646E6F6DLL;
        v37 = 0xE600000000000000;
      }

      if (v31 <= 2)
      {
        v39 = v38;
      }

      else
      {
        v39 = v33;
      }

      if (v31 <= 2)
      {
        v40 = v37;
      }

      else
      {
        v40 = v34;
      }

      v79 = v29;
      v42 = *(v29 + 16);
      v41 = *(v29 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1B4BCF43C((v41 > 1), v42 + 1, 1);
        v29 = v79;
      }

      *(v29 + 16) = v42 + 1;
      v43 = v29 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      --v28;
    }

    while (v28);
    a1 = v74;
    a2 = v75;
  }

  a1[1] = v29;
  v44 = a2[2];
  v45 = *(v44 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF5FC(0, v45, 0);
    v46 = v79;
    v47 = (v44 + 32);
    v48 = *(v79 + 16);
    do
    {
      v50 = *v47++;
      v49 = v50;
      v79 = v46;
      v51 = *(v46 + 24);
      if (v48 >= v51 >> 1)
      {
        sub_1B4BCF5FC((v51 > 1), v48 + 1, 1);
        v46 = v79;
      }

      *(v46 + 16) = v48 + 1;
      *(v46 + 8 * v48++ + 32) = v49;
      --v45;
    }

    while (v45);
  }

  a1[2] = v46;
  v52 = a2[3];
  v53 = *(v52 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v53, 0);
    v55 = (v52 + 32);
    v54 = v79;
    do
    {
      v56 = *v55++;
      v57 = 0xE800000000000000;
      v58 = 0x6E776F646C6F6F63;
      switch(v56)
      {
        case 1:
          v57 = 0xE400000000000000;
          v58 = 1701998435;
          break;
        case 2:
          v57 = 0xE700000000000000;
          v58 = 0x676E696C637963;
          break;
        case 3:
          v57 = 0xE500000000000000;
          v58 = 0x65636E6164;
          break;
        case 4:
          v57 = 0xE90000000000006ELL;
          v58 = 0x7552646564697567;
          break;
        case 5:
          v57 = 0xEA00000000006B6CLL;
          v58 = 0x6157646564697567;
          break;
        case 6:
          v57 = 0xE400000000000000;
          v58 = 1953065320;
          break;
        case 7:
          v58 = 0x69786F626B63696BLL;
          v57 = 0xEA0000000000676ELL;
          break;
        case 8:
          v57 = 0xEA00000000006E6FLL;
          v58 = 0x697461746964656DLL;
          break;
        case 9:
          v57 = 0xE700000000000000;
          v58 = 0x736574616C6970;
          break;
        case 10:
          v57 = 0xE600000000000000;
          v58 = 0x676E69776F72;
          break;
        case 11:
          v58 = 0x6874676E65727473;
          break;
        case 12:
          v58 = 0x6C696D6461657274;
          v57 = 0xE90000000000006CLL;
          break;
        case 13:
          v57 = 0xE400000000000000;
          v58 = 1634168697;
          break;
        case 14:
          v57 = 0xE500000000000000;
          v58 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v79 = v54;
      v60 = *(v54 + 16);
      v59 = *(v54 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1B4BCF43C((v59 > 1), v60 + 1, 1);
        v54 = v79;
      }

      *(v54 + 16) = v60 + 1;
      v61 = v54 + 16 * v60;
      *(v61 + 32) = v58;
      *(v61 + 40) = v57;
      --v53;
    }

    while (v53);
    a2 = v75;
  }

  a1[3] = v54;
  v62 = a2[4];
  v63 = *(v62 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  if (v63)
  {
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF5DC(0, v63, 0);
    v64 = v79;
    v65 = (v62 + 32);
    v66 = sub_1B4B206EC(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    v67 = v73;
    do
    {
      v68 = *v65;
      MEMORY[0x1EEE9AC00](v66);
      *(&v73 - 2) = v68;

      v69 = v78;
      sub_1B4D17DAC();
      v78 = v69;

      v79 = v64;
      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1B4BCF5DC((v70 > 1), v71 + 1, 1);
        v64 = v79;
      }

      *(v64 + 16) = v71 + 1;
      v66 = sub_1B4B20684(v67, v64 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v71, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      ++v65;
      --v63;
    }

    while (v63);
  }

  a1[4] = v64;
  return result;
}

uint64_t sub_1B4B1EEA8()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  sub_1B4B206EC(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

double FitnessPlusPropertiesQuery.filters.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FitnessPlusPropertiesQuery(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  return result;
}

double FitnessPlusPropertiesQuery.groupBy.getter()
{
  type metadata accessor for FitnessPlusPropertiesQuery(0);

  return result;
}

double FitnessPlusPropertiesQuery.propertyKinds.getter()
{
  type metadata accessor for FitnessPlusPropertiesQuery(0);

  return result;
}

__n128 FitnessPlusPropertiesQuery.init(range:filters:groupBy:propertyKinds:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *a2;
  v21 = *(a2 + 16);
  v9 = *(a2 + 32);
  sub_1B4B1FF0C(a1, a5, type metadata accessor for DateRangeDescriptor);
  v10.i64[0] = 0;
  v11 = v19.i64[0];
  v12 = vdupq_lane_s64(vceqq_s64(v19, v10).i64[0], 0);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
  v20 = vbslq_s8(v12, v14, v19);
  v22 = vbslq_s8(v12, v14, v21);
  sub_1B4B1FF74(a1, type metadata accessor for DateRangeDescriptor);
  if (v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13;
  }

  v16 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v17 = (a5 + v16[5]);
  result = v20;
  *v17 = v20;
  v17[1] = v22;
  v17[2].i64[0] = v15;
  *(a5 + v16[6]) = a3;
  *(a5 + v16[7]) = a4;
  return result;
}

uint64_t FitnessPlusPropertiesQuery.hash(into:)(uint64_t a1)
{
  DateRangeDescriptor.hash(into:)(a1);
  v3 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(a1);
  sub_1B49C585C(a1, *(v1 + *(v3 + 24)));
  v4 = *(v1 + *(v3 + 28));

  return sub_1B49C571C(a1, v4);
}

uint64_t FitnessPlusPropertiesQuery.hashValue.getter()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v3);
  v1 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v3);
  sub_1B49C585C(v3, *(v0 + *(v1 + 24)));
  sub_1B49C571C(v3, *(v0 + *(v1 + 28)));
  return sub_1B4D18EDC();
}

double sub_1B4B1F30C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;

  return result;
}

uint64_t sub_1B4B1F384(uint64_t a1)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v4);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v4);
  sub_1B49C585C(v4, *(v1 + *(a1 + 24)));
  sub_1B49C571C(v4, *(v1 + *(a1 + 28)));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1F418(uint64_t a1, uint64_t a2)
{
  DateRangeDescriptor.hash(into:)(a1);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(a1);
  sub_1B49C585C(a1, *(v2 + *(a2 + 24)));
  v5 = *(v2 + *(a2 + 28));

  return sub_1B49C571C(a1, v5);
}

uint64_t sub_1B4B1F4A4(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v5);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v5);
  sub_1B49C585C(v5, *(v2 + *(a2 + 24)));
  sub_1B49C571C(v5, *(v2 + *(a2 + 28)));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1F534(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4B206EC(&qword_1EDC39A88, type metadata accessor for FitnessPlusPropertiesQuery, &protocol conformance descriptor for FitnessPlusPropertiesQuery);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4B206EC(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    v1 = sub_1B4D17D6C();
    sub_1B4B1FF74(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  return v1;
}

uint64_t sub_1B4B1F6B8(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  sub_1B4B206EC(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v12 = a1;
  sub_1B4D17DAC();
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v14 = *(v13 + 28);
  sub_1B4975024(&v12[v14], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B20684(v11, &v12[v14], type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  (*(v9 + 56))(&v12[v14], 0, 1, v8);
  v15 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v16 = a2 + v15[5];
  v61 = *(v16 + 32);
  v17 = *(v16 + 16);
  v60[0] = *v16;
  v60[1] = v17;
  v58 = v60;
  sub_1B4B206EC(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v57 = 0;
    v19 = *(v13 + 32);
    sub_1B4975024(&v12[v19], &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    sub_1B4B20684(v7, &v12[v19], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    (*(v56 + 56))(&v12[v19], 0, 1, v5);
    v20 = *(a2 + v15[6]);
    v21 = *(v20 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    v55 = v12;
    if (v21)
    {
      v54 = v15;
      v56 = a2;
      v62 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF43C(0, v21, 0);
      v22 = v62;
      v23 = (v20 + 32);
      do
      {
        v25 = *v23++;
        v24 = v25;
        v26 = 0xE900000000000079;
        v27 = v25 == 3;
        if (v25 == 3)
        {
          v28 = 0x7974696C61646F6DLL;
        }

        else
        {
          v28 = 0xD000000000000012;
        }

        if (v27)
        {
          v29 = 0xEC000000646E694BLL;
        }

        else
        {
          v29 = 0x80000001B4D48DB0;
        }

        if (v24 == 2)
        {
          v28 = 0x6144664F72756F68;
        }

        else
        {
          v26 = v29;
        }

        if (v24)
        {
          v30 = 0x656557664F796164;
        }

        else
        {
          v30 = 0x59664F68746E6F6DLL;
        }

        if (v24)
        {
          v31 = 0xE90000000000006BLL;
        }

        else
        {
          v31 = 0xEB00000000726165;
        }

        if (v24 <= 1)
        {
          v32 = v30;
        }

        else
        {
          v32 = v28;
        }

        if (v24 <= 1)
        {
          v33 = v31;
        }

        else
        {
          v33 = v26;
        }

        v62 = v22;
        v35 = *(v22 + 16);
        v34 = *(v22 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1B4BCF43C((v34 > 1), v35 + 1, 1);
          v22 = v62;
        }

        *(v22 + 16) = v35 + 1;
        v36 = v22 + 16 * v35;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        --v21;
      }

      while (v21);
      v12 = v55;
      a2 = v56;
      v15 = v54;
    }

    *v12 = v22;
    v37 = *(a2 + v15[7]);
    v38 = *(v37 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v62 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF43C(0, v38, 0);
      v40 = (v37 + 32);
      v39 = v62;
      v41 = 0x80000001B4D48BA0;
      do
      {
        v43 = *v40++;
        v42 = v43;
        v44 = v43 == 4;
        if (v43 == 4)
        {
          v45 = 0x547942746E756F63;
        }

        else
        {
          v45 = 0x756F436C61746F74;
        }

        if (v44)
        {
          v46 = 0xEE0072656E696172;
        }

        else
        {
          v46 = 0xEA0000000000746ELL;
        }

        if (v42 == 3)
        {
          v45 = 0x6B726F5774736562;
          v46 = 0xEB0000000074756FLL;
        }

        v47 = 0xD00000000000001ALL;
        if (v42 == 1)
        {
          v48 = 0x80000001B4D48B80;
        }

        else
        {
          v48 = v41;
        }

        if (v42)
        {
          v47 = 0xD000000000000012;
        }

        else
        {
          v48 = 0x80000001B4D48B40;
        }

        if (v42 <= 2)
        {
          v49 = v47;
        }

        else
        {
          v49 = v45;
        }

        if (v42 <= 2)
        {
          v50 = v48;
        }

        else
        {
          v50 = v46;
        }

        v62 = v39;
        v52 = *(v39 + 16);
        v51 = *(v39 + 24);
        if (v52 >= v51 >> 1)
        {
          v56 = v41;
          sub_1B4BCF43C((v51 > 1), v52 + 1, 1);
          v41 = v56;
          v39 = v62;
        }

        *(v39 + 16) = v52 + 1;
        v53 = v39 + 16 * v52;
        *(v53 + 32) = v49;
        *(v53 + 40) = v50;
        --v38;
      }

      while (v38);
      v12 = v55;
    }

    *(v12 + 1) = v39;
  }

  return result;
}

uint64_t sub_1B4B1FD40()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4B206EC(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return sub_1B4D17DAC();
}

uint64_t type metadata accessor for FitnessPlusPropertiesQuery(uint64_t a1)
{
  result = qword_1EDC39A78;
  if (!qword_1EDC39A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s19FitnessIntelligence0A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_1B4A0A1C0(*a1, *a2) & 1) == 0 || (sub_1B4A0A568(v2, v6) & 1) == 0 || (sub_1B4A0A164(v4, v8) & 1) == 0 || (sub_1B4A0C9A8(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A0CDB8(v5, v9);
}

uint64_t sub_1B4B1FF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B1FF74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19FitnessIntelligence0A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v5 = (a1 + *(v4 + 20));
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  v22[0] = *v5;
  v22[1] = v6;
  v22[2] = v7;
  v22[3] = v8;
  v22[4] = v9;
  v19 = v4;
  v20 = a2;
  v10 = (a2 + *(v4 + 20));
  v11 = v10[1];
  v13 = v10[2];
  v12 = v10[3];
  v14 = v10[4];
  v21[0] = *v10;
  v21[1] = v11;
  v21[2] = v13;
  v21[3] = v12;
  v21[4] = v14;

  LOBYTE(v14) = _s19FitnessIntelligence0A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v22, v21);

  if ((v14 & 1) == 0 || (sub_1B4A0CEAC(*(a1 + *(v19 + 24)), *(v20 + *(v19 + 24))) & 1) == 0)
  {
    return 0;
  }

  v15 = *(v19 + 28);
  v16 = *(a1 + v15);
  v17 = *(v20 + v15);

  return sub_1B4A0D0D0(v16, v17);
}

unint64_t sub_1B4B201B4(uint64_t a1)
{
  result = sub_1B4B201DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B201DC()
{
  result = qword_1EB8AA670;
  if (!qword_1EB8AA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA670);
  }

  return result;
}

unint64_t sub_1B4B20234()
{
  result = qword_1EB8AA678;
  if (!qword_1EB8AA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA678);
  }

  return result;
}

unint64_t sub_1B4B20320()
{
  result = qword_1EB8AA680;
  if (!qword_1EB8AA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA680);
  }

  return result;
}

uint64_t sub_1B4B20374(void *a1)
{
  a1[1] = sub_1B4B206EC(&qword_1EDC39AA0, type metadata accessor for FitnessPlusPropertiesQuery, &protocol conformance descriptor for FitnessPlusPropertiesQuery);
  a1[2] = sub_1B4B206EC(&qword_1EDC39A88, type metadata accessor for FitnessPlusPropertiesQuery, &protocol conformance descriptor for FitnessPlusPropertiesQuery);
  result = sub_1B4B206EC(&qword_1EDC39A98, type metadata accessor for FitnessPlusPropertiesQuery, &protocol conformance descriptor for FitnessPlusPropertiesQuery);
  a1[3] = result;
  return result;
}

uint64_t sub_1B4B204F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B4B20540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B4B205C0(uint64_t a1)
{
  type metadata accessor for DateRangeDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_1B4A1F54C(319, &qword_1EDC37910, &type metadata for FitnessPlusPropertyDimensionsField);
    if (v2 <= 0x3F)
    {
      sub_1B4A1F54C(319, &qword_1EDC37918, &type metadata for FitnessPlusPropertyKind);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4B20684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B206EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FitnessIntelligence::WorkoutLocationType_optional __swiftcall WorkoutLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WorkoutLocationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F6F6474756FLL;
  v4 = 0x657461576E65706FLL;
  if (v1 != 3)
  {
    v4 = 0x676E696D6D697773;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F6F646E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

FitnessIntelligence::WorkoutLocationType __swiftcall WorkoutLocationType.init(locationType:swimmingLocationType:)(HKWorkoutSessionLocationType locationType, HKWorkoutSwimmingLocationType swimmingLocationType)
{
  if (locationType != HKWorkoutSessionLocationTypeUnknown)
  {
    if (locationType == HKWorkoutSessionLocationTypeOutdoor)
    {
      if (swimmingLocationType == HKWorkoutSwimmingLocationTypeUnknown)
      {
        *v2 = 2;
        return locationType;
      }
    }

    else if (locationType == HKWorkoutSessionLocationTypeIndoor && swimmingLocationType == HKWorkoutSwimmingLocationTypeUnknown)
    {
      *v2 = 1;
      return locationType;
    }

    *v2 = 0;
    return locationType;
  }

  v3 = 4 * (swimmingLocationType == HKWorkoutSwimmingLocationTypePool);
  if (swimmingLocationType == HKWorkoutSwimmingLocationTypeOpenWater)
  {
    v3 = 3;
  }

  *v2 = v3;
  return locationType;
}

unint64_t sub_1B4B208E0()
{
  result = qword_1EB8AA690;
  if (!qword_1EB8AA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA690);
  }

  return result;
}

uint64_t sub_1B4B20934()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B20A20(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4B20AF8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4B20BEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x726F6F6474756FLL;
  v7 = 0xE900000000000072;
  v8 = 0x657461576E65706FLL;
  if (v2 != 3)
  {
    v8 = 0x676E696D6D697773;
    v7 = 0xEC0000006C6F6F50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726F6F646E69;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1B4B20C98()
{
  result = qword_1EB8AA698;
  if (!qword_1EB8AA698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA6A0, &qword_1B4D2FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA698);
  }

  return result;
}

double static VoiceAssetSettings.readUserSelectedVoice()@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1B4D1817C();
    v6 = [v4 dataForKey_];

    if (v6)
    {
      v7 = sub_1B4D176BC();
      v9 = v8;

      sub_1B498FC0C(v7, v9);
      sub_1B4B28A48(v7, v9, &v21);

      sub_1B49DDD2C(v7, v9);
      result = *&v21;
      v19 = v22;
      v20 = v23;
      *a1 = v21;
      *(a1 + 16) = v19;
      *(a1 + 24) = v20;
      return result;
    }

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v14 = sub_1B4D17F6C();
    __swift_project_value_buffer(v14, qword_1EDC3CED0);
    v15 = sub_1B4D17F5C();
    v16 = sub_1B4D1873C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B4953000, v15, v16, "No selected voice found in defaults", v17, 2u);
      MEMORY[0x1B8C7DDA0](v17, -1, -1);
    }
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B4D17F6C();
    __swift_project_value_buffer(v10, qword_1EDC3CED0);
    v11 = sub_1B4D17F5C();
    v12 = sub_1B4D1871C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B4953000, v11, v12, "Voice asset settings defaults unavailable", v13, 2u);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B4B21148@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1B4D17B7C();
  v4 = sub_1B4D18B1C();

  if (v4 > 1)
  {
    sub_1B49BA334();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = sub_1B4D17B8C();
    return (*(*(v8 - 8) + 8))(a1, v8);
  }

  else
  {
    v5 = sub_1B4D17B8C();
    result = (*(*(v5 - 8) + 8))(a1, v5);
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1B4B21264@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
      InferenceResult.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B21494@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      AnnounceUtteranceResult.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B216C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v25 = a1;
    v26 = a2;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      v17 = *v10;
      v16 = v10[1];
      v18 = (v10 + *(v8 + 28));
      v20 = *v18;
      v19 = v18[1];
      v22 = v10[2];
      v21 = v10[3];

      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      *a3 = v17;
      a3[1] = v16;
      a3[2] = v20;
      a3[3] = v19;
      a3[4] = v22;
      a3[5] = v21;
    }
  }

  return result;
}