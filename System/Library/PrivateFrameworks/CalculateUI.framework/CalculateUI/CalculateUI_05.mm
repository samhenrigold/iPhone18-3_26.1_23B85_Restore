void sub_1C1E487A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CenteredAxes(uint64_t a1)
{
  result = qword_1EBF1DAF0;
  if (!qword_1EBF1DAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1E48890(uint64_t a1)
{
  sub_1C1E48930();
  if (v1 <= 0x3F)
  {
    sub_1C1E526EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1E48930()
{
  if (!qword_1EBF1DB00)
  {
    v0 = sub_1C1E5459C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1DB00);
    }
  }
}

uint64_t sub_1C1E489A4@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v4 = type metadata accessor for CenteredAxes(0);
  v111 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v112 = v5;
  v113 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB28, &qword_1C1E5A668);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v143 = &v110 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB30, &qword_1C1E5A670);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v144 = &v110 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB38, &qword_1C1E5A678);
  v153 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v110 - v16;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB40, &qword_1C1E5A680);
  v152 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v110 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB48, &qword_1C1E5A688);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v140 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v139 = &v110 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v151 = &v110 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v110 - v24;
  v150 = sub_1C1E524FC();
  v135 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v27 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB50, &qword_1C1E5A690);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v147 = &v110 - v29;
  v149 = sub_1C1E525EC();
  KeyPath = *(v149 - 1);
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB58, &qword_1C1E5A698);
  v159 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v148 = &v110 - v31;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB60, &qword_1C1E5A6A0);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v110 - v32;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB68, &qword_1C1E5A6A8);
  v110 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v136 = &v110 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v110 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v155 = &v110 - v39;
  v40 = sub_1C1E526EC();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 104))(v44, *MEMORY[0x1E697DBA8], v40, v42);
  v45 = v1;
  v46 = sub_1C1E526DC();
  (*(v41 + 8))(v44, v40);
  if (v46)
  {
    v47 = sub_1C1E535DC();
  }

  else
  {
    v47 = sub_1C1E5361C();
  }

  v157 = v47;
  v122 = v15;
  v154 = v25;
  sub_1C1E52C6C();
  v161 = 0;
  sub_1C1E5242C();

  v48 = v146;
  sub_1C1E525CC();
  if (qword_1EBF1C128 != -1)
  {
    swift_once();
  }

  v130 = qword_1EBF20D18;
  v161 = qword_1EBF20D18;

  v49 = v148;
  v50 = v149;
  v51 = MEMORY[0x1E69815C0];
  v52 = MEMORY[0x1E695B2B8];
  v53 = MEMORY[0x1E6981568];
  sub_1C1E523DC();
  v54 = *(KeyPath + 8);
  KeyPath += 8;
  v129 = v54;
  v54(v48, v50);
  sub_1C1E5276C();
  v161 = v50;
  v162 = v51;
  v163 = v52;
  v164 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v132;
  v57 = v131;
  v58 = OpaqueTypeConformance2;
  v124 = OpaqueTypeConformance2;
  sub_1C1E5240C();
  sub_1C1E4C708(&v167);
  v59 = *(v159 + 8);
  v159 += 8;
  v128 = v59;
  v59(v49, v57);
  sub_1C1E524CC();
  v60 = sub_1C1E538BC();
  MEMORY[0x1EEE9AC00](v60);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
  v161 = v57;
  v162 = v58;
  v126 = swift_getOpaqueTypeConformance2();
  v125 = sub_1C1E4C764();
  v123 = v27;
  v61 = v134;
  sub_1C1E523BC();
  v62 = (v135 + 8);
  v135 = *(v135 + 8);
  (v135)(v27, v150);
  v160 = v45;
  v133 = *(v133 + 8);
  (v133)(v56, v61);
  sub_1C1E52C6C();
  v161 = 0;
  sub_1C1E5242C();

  v63 = v146;
  sub_1C1E525DC();
  v161 = v130;
  v64 = v148;
  v65 = v149;
  sub_1C1E523DC();

  v129(v63, v65);
  sub_1C1E5276C();
  sub_1C1E5240C();
  sub_1C1E4C708(&v168);
  v128(v64, v57);
  v66 = v123;
  sub_1C1E524BC();
  v67 = sub_1C1E538FC();
  v68 = &v110;
  MEMORY[0x1EEE9AC00](v67);
  sub_1C1E523BC();
  (v135)(v66, v150);
  (v133)(v56, v61);
  v69 = v160;
  v70 = v160[8];
  if (v70 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v2 = v70 * floor(*v160 / v70);
    v3 = v70 * ceil(v160[1] / v70);
    sub_1C1E4C3B0(v2, v3, v160[8]);
    v161 = v71;
    sub_1C1E52C6C();
    swift_getKeyPath();
    sub_1C1E5250C();

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB80, &qword_1C1E5A6D8);
    v159 = sub_1C1DC1124(&qword_1EBF1DB88, &qword_1EBF1DB80, &qword_1C1E5A6D8, MEMORY[0x1E69E6338]);
    v72 = v145;
    sub_1C1E525FC();
    sub_1C1E5276C();
    v56 = sub_1C1E4C7F0();
    v62 = v120;
    v64 = v122;
    sub_1C1E5240C();
    sub_1C1E4C708(&v169);
    v68 = v153 + 1;
    KeyPath = v153[1];
    (KeyPath)(v72, v64);
    if (qword_1EBF1C130 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  v73 = qword_1EBF20D20;
  v170 = qword_1EBF20D20;

  v161 = v64;
  v162 = v56;
  v74 = swift_getOpaqueTypeConformance2();
  v148 = v56;
  v75 = v121;
  v150 = v74;
  sub_1C1E523DC();
  v76 = v152 + 8;
  v149 = *(v152 + 8);
  result = (v149)(v62, v75);
  v78 = v69[9];
  if (v78 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v79 = v78 * ceil(v69[3] / v78);
    v80 = v78 * floor(v69[2] / v78);
    sub_1C1E4C3B0(v80, v79, v69[9]);
    v161 = v81;
    sub_1C1E52C6C();
    v152 = v76;
    v153 = v68;
    swift_getKeyPath();
    sub_1C1E5250C();

    v82 = v145;
    v147 = v63;
    sub_1C1E5260C();
    sub_1C1E5276C();
    sub_1C1E5240C();
    sub_1C1E4C708(&v170);
    (KeyPath)(v82, v64);
    v161 = v73;
    sub_1C1E523DC();

    (v149)(v62, v75);
    sub_1C1E4C3B0(v2, v3, v70);
    v161 = v83;
    KeyPath = swift_getKeyPath();
    v84 = v113;
    sub_1C1E4C8A0(v160, v113, type metadata accessor for CenteredAxes);
    v85 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v86 = swift_allocObject();
    sub_1C1E4D6B4(v84, v86 + v85, type metadata accessor for CenteredAxes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBA8, &qword_1C1E5A6E8);
    sub_1C1E4C920();
    sub_1C1E537DC();
    sub_1C1E4C3B0(v80, v79, v78);
    v161 = v87;
    swift_getKeyPath();
    sub_1C1E4C8A0(v160, v84, type metadata accessor for CenteredAxes);
    v88 = swift_allocObject();
    sub_1C1E4D6B4(v84, v88 + v85, type metadata accessor for CenteredAxes);
    sub_1C1E537DC();
    v89 = v110;
    v90 = *(v110 + 16);
    v91 = v136;
    v92 = v138;
    v90(v136, v155, v138);
    v161 = v91;
    v93 = v137;
    v90(v137, v156, v92);
    v162 = v93;
    v94 = v114;
    v95 = *(v114 + 16);
    v96 = v139;
    v97 = v115;
    v95(v139, v154, v115);
    v163 = v96;
    v98 = v140;
    v95(v140, v151, v97);
    v164 = v98;
    v99 = v118;
    v100 = *(v118 + 16);
    v101 = v143;
    v102 = v141;
    v103 = v119;
    v100(v143, v141, v119);
    v165 = v101;
    v104 = v116;
    v105 = v142;
    v100(v116, v142, v103);
    v166 = v104;
    sub_1C1E41618(&v161, v117);

    v106 = *(v99 + 8);
    v106(v105, v103);
    v106(v102, v103);
    v107 = *(v94 + 8);
    v107(v151, v97);
    v107(v154, v97);
    v108 = *(v89 + 8);
    v109 = v138;
    v108(v156, v138);
    v108(v155, v109);
    v106(v104, v103);
    v106(v143, v103);
    v107(v140, v97);
    v107(v139, v97);
    v108(v137, v109);
    return (v108)(v136, v109);
  }

  return result;
}

void sub_1C1E4A1B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C1DC733C(a1, a2, a3);

  v5 = sub_1C1E5316C();
  v7 = v6;
  v9 = v8;
  sub_1C1E530CC();
  v10 = sub_1C1E5311C();
  v12 = v11;
  v14 = v13;

  sub_1C1DECF2C(v5, v7, v9 & 1);

  sub_1C1E5358C();
  v15 = sub_1C1E530FC();
  v17 = v16;
  v19 = v18;
  sub_1C1DECF2C(v10, v12, v14 & 1);

  sub_1C1E5366C();
  v20 = sub_1C1E5312C();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;

  sub_1C1DECF2C(v15, v17, v19 & 1);

  v26 = sub_1C1E5305C();
  sub_1C1E5264C();
  *a4 = v20;
  *(a4 + 8) = v22;
  *(a4 + 16) = v12 & 1;
  *(a4 + 24) = v25;
  *(a4 + 32) = v26;
  *(a4 + 40) = v27;
  *(a4 + 48) = v28;
  *(a4 + 56) = v29;
  *(a4 + 64) = v30;
  *(a4 + 72) = 0;
}

void sub_1C1E4A388(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C1DC733C(a1, a2, a3);

  v5 = sub_1C1E5316C();
  v7 = v6;
  v9 = v8;
  sub_1C1E530CC();
  v10 = sub_1C1E5311C();
  v12 = v11;
  v14 = v13;

  sub_1C1DECF2C(v5, v7, v9 & 1);

  sub_1C1E5358C();
  v15 = sub_1C1E530FC();
  v17 = v16;
  v19 = v18;
  sub_1C1DECF2C(v10, v12, v14 & 1);

  sub_1C1E5366C();
  v20 = sub_1C1E5312C();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;

  sub_1C1DECF2C(v15, v17, v19 & 1);

  v26 = sub_1C1E52FFC();
  sub_1C1E5264C();
  *a4 = v20;
  *(a4 + 8) = v22;
  *(a4 + 16) = v12 & 1;
  *(a4 + 24) = v25;
  *(a4 + 32) = v26;
  *(a4 + 40) = v27;
  *(a4 + 48) = v28;
  *(a4 + 56) = v29;
  *(a4 + 64) = v30;
  *(a4 + 72) = 0;
}

uint64_t sub_1C1E4A558@<X0>(double *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_1C1E5255C();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1E5257C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v39 - v11;
  v12 = sub_1C1E5258C();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C1E524FC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB50, &qword_1C1E5A690);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD0, &qword_1C1E5A700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1C1E5262C();
  v40 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBB8, &qword_1C1E5A6F0);
  v41 = *(v20 - 8);
  v42 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD8, &qword_1C1E5A708);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v39 - v26;
  v28 = *a1;
  if (*a1 == 0.0 || (v25.n128_u64[0] = *a2, *a2 > v28) || (v25.n128_u64[0] = a2[1], v28 > v25.n128_f64[0]) || (v25.n128_u64[0] = a2[2], v25.n128_f64[0] > 0.0) || (v25.n128_u64[0] = a2[3], v25.n128_f64[0] < 0.0))
  {
    v29 = *(v24 + 56);
    v30 = v53;

    return v29(v30, 1, 1, v23, v25);
  }

  else
  {
    v39 = v24;
    sub_1C1E52C6C();
    v54 = v28;
    sub_1C1E5242C();

    sub_1C1E52C6C();
    v54 = 0.0;
    sub_1C1E5242C();

    sub_1C1E5261C();
    sub_1C1E523FC();
    (*(v40 + 8))(v19, v17);
    sub_1C1E524AC();
    sub_1C1E5254C();
    sub_1C1E5256C();
    v32 = v46;
    v33 = *(v45 + 8);
    v33(v7, v46);
    sub_1C1E5254C();
    sub_1C1E5256C();
    v33(v7, v32);
    v34 = v48;
    v35 = sub_1C1E5253C();
    v46 = &v39;
    MEMORY[0x1EEE9AC00](v35);
    sub_1C1E538DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    v54 = *&v17;
    v55 = MEMORY[0x1E695B2E0];
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    v36 = v42;
    v37 = v52;
    sub_1C1E523AC();
    (*(v50 + 8))(v34, v51);
    (*(v47 + 8))(v37, v49);
    (*(v41 + 8))(v22, v36);
    v38 = v53;
    (*(v39 + 32))(v53, v27, v23);
    return (*(v39 + 56))(v38, 0, 1, v23);
  }
}

uint64_t sub_1C1E4AD20@<X0>(double *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_1C1E5255C();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1E5257C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v39 - v11;
  v12 = sub_1C1E5258C();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C1E524FC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD0, &qword_1C1E5A700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB50, &qword_1C1E5A690);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1C1E5262C();
  v40 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBB8, &qword_1C1E5A6F0);
  v41 = *(v20 - 8);
  v42 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD8, &qword_1C1E5A708);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v39 - v26;
  v28 = *a1;
  if (*a1 == 0.0 || (v25.n128_u64[0] = a2[2], v25.n128_f64[0] > v28) || (v25.n128_u64[0] = a2[3], v28 > v25.n128_f64[0]) || (v25.n128_u64[0] = *a2, *a2 > 0.0) || (v25.n128_u64[0] = a2[1], v25.n128_f64[0] < 0.0))
  {
    v29 = *(v24 + 56);
    v30 = v53;

    return v29(v30, 1, 1, v23, v25);
  }

  else
  {
    v39 = v24;
    sub_1C1E52C6C();
    v54 = 0.0;
    sub_1C1E5242C();

    sub_1C1E52C6C();
    v54 = v28;
    sub_1C1E5242C();

    sub_1C1E5261C();
    sub_1C1E523FC();
    (*(v40 + 8))(v19, v17);
    sub_1C1E524DC();
    sub_1C1E5254C();
    sub_1C1E5256C();
    v32 = v46;
    v33 = *(v45 + 8);
    v33(v7, v46);
    sub_1C1E5254C();
    sub_1C1E5256C();
    v33(v7, v32);
    v34 = v48;
    v35 = sub_1C1E5253C();
    v46 = &v39;
    MEMORY[0x1EEE9AC00](v35);
    sub_1C1E538DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    v54 = *&v17;
    v55 = MEMORY[0x1E695B2E0];
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    v36 = v42;
    v37 = v52;
    sub_1C1E523AC();
    (*(v50 + 8))(v34, v51);
    (*(v47 + 8))(v37, v49);
    (*(v41 + 8))(v22, v36);
    v38 = v53;
    (*(v39 + 32))(v53, v27, v23);
    return (*(v39 + 56))(v38, 0, 1, v23);
  }
}

void sub_1C1E4B4E8(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E5207C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBE0, &unk_1C1E5A710);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C1E5201C();
  sub_1C1E4CC8C(v6, v7, v8);
  sub_1C1E51EAC();
  sub_1C1DC1124(&qword_1EBF1DBF0, &qword_1EBF1DBE0, &unk_1C1E5A710, MEMORY[0x1E6968E80]);
  v9 = sub_1C1E5313C();
  v11 = v10;
  v13 = v12;
  sub_1C1E530CC();
  v14 = sub_1C1E5311C();
  v16 = v15;
  v18 = v17;

  sub_1C1DECF2C(v9, v11, v13 & 1);

  sub_1C1E5358C();
  v19 = sub_1C1E530FC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1C1DECF2C(v14, v16, v18 & 1);

  v27 = a1(v26);
  sub_1C1E5264C();
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v30;
  *(a2 + 64) = v31;
  *(a2 + 72) = 0;
}

void sub_1C1E4B77C()
{
  v0 = sub_1C1E5207C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C1E5203C();
  v5 = sub_1C1E5200C();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  qword_1EBF1D870 = v4;
}

uint64_t sub_1C1E4B888(uint64_t a1)
{
  sub_1C1DC0D28(0, &qword_1EBF1DB08, 0x1E6959550);
  sub_1C1DC0D28(0, &qword_1EBF1DB10, 0x1E69595F0);
  sub_1C1E24AC8();
  sub_1C1E24AC8();
  sub_1C1E24AC8();
  v3 = v2;
  sub_1C1E24AC8();
  sub_1C1E4C3B0(v3, v4, 1.0);
  sub_1C1E5498C();
  sub_1C1E24CD4();
  sub_1C1E24CD4();
  sub_1C1E24CD4();
  v6 = v5;
  sub_1C1E24CD4();
  sub_1C1E4C3B0(v6, v7, 1.0);
  sub_1C1E5498C();
  sub_1C1E4BB10(a1);
  return sub_1C1E5492C();
}

uint64_t sub_1C1E4B9FC(double a1)
{
  if (qword_1EBF1C168 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBF1D870;
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v4 = v2;
  v5 = [v3 initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_1C1E545FC();
  }

  else
  {
    sub_1C1E5489C();
    return 0;
  }

  return v7;
}

uint64_t sub_1C1E4BB10(uint64_t a1)
{
  v2 = type metadata accessor for Function(0);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v7 lock];
  swift_getKeyPath();
  v28 = a1;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v8 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v7 unlock];
  v9 = *(v8 + 16);
  if (v9)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C1E54BCC();
    v10 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v26 = v8;
    v27 = v11;
    while (1)
    {
      sub_1C1E4C8A0(v10, v6, type metadata accessor for Function);
      sub_1C1E24AC8();
      v13 = v12;
      sub_1C1E24AC8();
      v15 = v14;
      sub_1C1E24AC8();
      v17 = v16;
      result = sub_1C1E24AC8();
      v20 = (v17 - v19) / 100.0;
      if (v20 == 0.0)
      {
        break;
      }

      sub_1C1E4C3B0(v13, v15, v20);
      v22 = v21;
      MEMORY[0x1EEE9AC00](v21);
      *(&v26 - 2) = v6;
      sub_1C1E3A7DC(sub_1C1E4C674, (&v26 - 4), v22);

      v23 = objc_allocWithZone(MEMORY[0x1E6959570]);
      v24 = sub_1C1E545BC();
      sub_1C1DC0D28(0, &qword_1EBF1DB18, 0x1E6959568);
      v25 = sub_1C1E547DC();

      [v23 initWithName:v24 isContinuous:1 dataPoints:{v25, v26}];

      sub_1C1E4E154(v6, type metadata accessor for Function);
      sub_1C1E54BAC();
      sub_1C1E54BDC();
      sub_1C1E54BEC();
      sub_1C1E54BBC();
      v10 += v27;
      if (!--v9)
      {

        return v28;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C1E4BE70@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1C1DC0D28(0, &qword_1EBF1DB18, 0x1E6959568);
  (*(a2 + 64))(v5);
  result = sub_1C1E548EC();
  *a3 = result;
  return result;
}

uint64_t sub_1C1E4BF34(uint64_t a1)
{
  v2 = sub_1C1E526FC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x1C690E630](v5);
}

uint64_t sub_1C1E4BFFC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C690E6D0]();
  *a1 = result;
  return result;
}

void sub_1C1E4C054(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE58, &qword_1C1E579A8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  v7 = MEMORY[0x1E69E7CC0];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x1E69E7CC0] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for Function(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_1C1E4C8A0(v13, v15 + v16, type metadata accessor for Function);
      v17 = v6;
      sub_1C1DC18D0(v15, v6, &qword_1EBF1CE58, &qword_1C1E579A8);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBF8, &unk_1C1E5A720);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_1C1DC18D0(v17, v9, &qword_1EBF1CE58, &qword_1C1E579A8);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

void sub_1C1E4C3B0(double a1, double a2, double a3)
{
  v6 = sub_1C1E4C694(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB20, &qword_1C1E5A660);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * (v10 >> 3);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v8 + 3);

  if (v7 < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v12 = v8 + 4;
  v13 = v11 >> 1;
  v14 = 0;
  v15 = 0;
  if (v7)
  {
    v13 -= v7;
    i = a1;
    while (1)
    {
      v17 = i;
      v18 = i <= a2;
      if (a3 > 0.0)
      {
        v18 = i >= a2;
      }

      if (v18)
      {
        if (v14 & 1 | (i != a2))
        {
          goto LABEL_50;
        }

        v14 = 1;
      }

      else
      {
        v19 = __OFADD__(v15++, 1);
        if (v19)
        {
          goto LABEL_51;
        }

        i = a1 + v15 * a3;
      }

      *v12++ = v17;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }
  }

  for (i = a1; ; i = v21)
  {
LABEL_21:
    v20 = i <= a2;
    if (a3 > 0.0)
    {
      v20 = i >= a2;
    }

    if (!v20)
    {
      v19 = __OFADD__(v15++, 1);
      if (v19)
      {
        goto LABEL_48;
      }

      v21 = a1 + v15 * a3;
      if (v13)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if ((i != a2) | v14 & 1)
    {
      break;
    }

    v14 = 1;
    v21 = i;
    if (v13)
    {
      v21 = i;
      goto LABEL_41;
    }

LABEL_29:
    v22 = *(v8 + 3);
    if (((v22 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB20, &qword_1C1E5A660);
    v25 = swift_allocObject();
    v26 = _swift_stdlib_malloc_size(v25);
    v27 = v26 - 32;
    if (v26 < 32)
    {
      v27 = v26 - 25;
    }

    v28 = v27 >> 3;
    *(v25 + 2) = v24;
    *(v25 + 3) = 2 * (v27 >> 3);
    v29 = (v25 + 4);
    v30 = *(v8 + 3) >> 1;
    if (*(v8 + 2))
    {
      v31 = v8 + 4;
      if (v25 != v8 || v29 >= v31 + 8 * v30)
      {
        memmove(v25 + 4, v31, 8 * v30);
      }

      v8[2] = 0.0;
    }

    v12 = (v29 + 8 * v30);
    v13 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

    v8 = v25;
LABEL_41:
    v19 = __OFSUB__(v13--, 1);
    if (v19)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *v12++ = i;
  }

  v32 = *(v8 + 3);
  if (v32 < 2)
  {
    return;
  }

  v33 = v32 >> 1;
  v19 = __OFSUB__(v33, v13);
  v34 = v33 - v13;
  if (!v19)
  {
    *(v8 + 2) = v34;
    return;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_1C1E4C694(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1C1E4C764()
{
  result = qword_1EBF1DB78;
  if (!qword_1EBF1DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DB78);
  }

  return result;
}

unint64_t sub_1C1E4C7F0()
{
  result = qword_1EBF1DB90;
  if (!qword_1EBF1DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB38, &qword_1C1E5A678);
    sub_1C1DC1124(&qword_1EBF1DB98, &qword_1EBF1DBA0, &qword_1C1E5A6E0, MEMORY[0x1E695B200]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DB90);
  }

  return result;
}

uint64_t sub_1C1E4C8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C1E4C920()
{
  result = qword_1EBF1DBB0;
  if (!qword_1EBF1DBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DBA8, &qword_1C1E5A6E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DBB8, &qword_1C1E5A6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    sub_1C1E5262C();
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DBB0);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  v1 = (type metadata accessor for CenteredAxes(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_1C1E526EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1E4CB44(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CenteredAxes(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1C1E4CBD8()
{
  result = qword_1EBF1DBC8;
  if (!qword_1EBF1DBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB28, &qword_1C1E5A668);
    sub_1C1E4C920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DBC8);
  }

  return result;
}

unint64_t sub_1C1E4CC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1DBE8;
  if (!qword_1EBF1DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DBE8);
  }

  return result;
}

unint64_t sub_1C1E4CD28()
{
  result = qword_1EBF1DC10;
  if (!qword_1EBF1DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC08, &qword_1C1E5A740);
    type metadata accessor for CenteredAxes(255);
    sub_1C1E4D7A4(&qword_1EBF1DC18, type metadata accessor for CenteredAxes, &unk_1C1E5A5A4);
    swift_getOpaqueTypeConformance2();
    sub_1C1E4CE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC10);
  }

  return result;
}

unint64_t sub_1C1E4CE1C()
{
  result = qword_1EBF1DC20;
  if (!qword_1EBF1DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC28, &qword_1C1E5A748);
    sub_1C1E4CEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC20);
  }

  return result;
}

unint64_t sub_1C1E4CEA0()
{
  result = qword_1EBF1DC30;
  if (!qword_1EBF1DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC38, &qword_1C1E5A750);
    sub_1C1E4CF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC30);
  }

  return result;
}

unint64_t sub_1C1E4CF24()
{
  result = qword_1EBF1DC40;
  if (!qword_1EBF1DC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC48, &qword_1C1E5A758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC50, &qword_1C1E5A760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC58, &qword_1C1E5A768);
    sub_1C1E4D0B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC68, &qword_1C1E5A770);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC40);
  }

  return result;
}

unint64_t sub_1C1E4D0B4()
{
  result = qword_1EBF1DC60;
  if (!qword_1EBF1DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC58, &qword_1C1E5A768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC60);
  }

  return result;
}

uint64_t sub_1C1E4D1CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for GraphView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

uint64_t sub_1C1E4D288(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

void sub_1C1E4D31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GraphView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = sub_1C1E3AC24(v5);
  sub_1C1E1F060(v6 & 1);
}

double sub_1C1E4D384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for GraphView(0, v6, v7, a4) - 8);
  return sub_1C1E47C58(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

void sub_1C1E4D584()
{
  v1 = **(v0 + 32);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  *(v1 + v2) = *(v1 + v2) + *(v1 + v2);
  sub_1C1E1A2C0();
}

void sub_1C1E4D5F0()
{
  v1 = **(v0 + 32);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  *(v1 + v2) = *(v1 + v2) * 0.5;
  sub_1C1E1A2C0();
}

unint64_t sub_1C1E4D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1DC98;
  if (!qword_1EBF1DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC98);
  }

  return result;
}

uint64_t sub_1C1E4D6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1E4D71C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for Function(0) - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1C1E45F9C(v6, v7, v8, v3, v4, a1);
}

uint64_t sub_1C1E4D7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1E4D8E4(double *a1, uint64_t (*a2)(uint64_t, double, double, double, double), uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for GraphView(0, v7, v8, a4) - 8);
  return sub_1C1E44E58(a1, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8, a2);
}

void *sub_1C1E4D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for GraphView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1C1E522DC() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1C1E42648(v4 + v8, v11, v5, v6);
}

uint64_t sub_1C1E4DA90(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for GraphView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t objectdestroyTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GraphView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v4 + v7;

  if (*(v4 + v7 + 8))
  {
  }

  v10 = v5[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1E526EC();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  sub_1C1DDEC6C(*(v9 + v5[11]), *(v9 + v5[11] + 8));
  sub_1C1DDEC6C(*(v9 + v5[12]), *(v9 + v5[12] + 8));

  v12 = v9 + v5[17];
  v13 = type metadata accessor for Function(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    if (*(v12 + 80))
    {
    }

    v14 = *(v13 + 48);
    v15 = sub_1C1E51F9C();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);

    v16 = *(v13 + 56);
    v17 = sub_1C1E51F5C();
    (*(*(v17 - 8) + 8))(v12 + v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_1C1E4E154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1E4E1B4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for GraphView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30) - 8);
  v12 = v3 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1C1E40C7C(a1, v12, v6, v7, a3);
}

unint64_t sub_1C1E4E2C8()
{
  result = qword_1EBF1DD68;
  if (!qword_1EBF1DD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DD70, &qword_1C1E5AA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB60, &qword_1C1E5A6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB58, &qword_1C1E5A698);
    sub_1C1E525EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB40, &qword_1C1E5A680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB38, &qword_1C1E5A678);
    sub_1C1E4C7F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1E4CBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DD68);
  }

  return result;
}

uint64_t sub_1C1E4E564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C1E54D7C();
  sub_1C1E5468C();
  v6 = sub_1C1E54DAC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C1E54D2C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1C1E4E66C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  result = [v5 setCountLimit_];
  *a3 = v5;
  return result;
}

uint64_t CalculateExpression.CalculatorButton.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E4E750()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AAD0;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E5405C();
  *(inited + 40) = sub_1C1E540AC();
  v1 = sub_1C1DC1588(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EBF1DD78 = v1;
  return result;
}

void sub_1C1E4E7FC(void *a1, double a2)
{
  v4 = sub_1C1E5210C();
  v3 = [a1 length];
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    [a1 addAttribute:*MEMORY[0x1E69DB660] value:v4 range:{v3 - 1, 1}];
  }
}

void sub_1C1E4E880(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, unint64_t), double a4, double a5, double a6, uint64_t a7, void *a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(inited + 40) = a8;
  v18 = *MEMORY[0x1E69DB610];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = a5 + a6 + a4;
  v19 = v16;
  v20 = a8;
  v21 = v18;
  v22 = sub_1C1DC7850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
  swift_arrayDestroy();
  a3(a1, a2, v22);
}

void sub_1C1E4E9D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, unint64_t), double a4, double a5, uint64_t a6, void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v15 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(inited + 40) = a7;
  v16 = *MEMORY[0x1E69DB610];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = a4 + a5;
  v17 = v14;
  v18 = a7;
  v19 = v16;
  v20 = sub_1C1DC7850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
  swift_arrayDestroy();
  a3(a1, a2, v20);
}

double CalculateExpression.caption(for:fontSize:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = sub_1C1DF7D84(&unk_1F4187150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD80, &qword_1C1E5AB20);
  swift_arrayDestroy();
  v7 = sub_1C1E53BFC();
  v8 = sub_1C1E53DAC();
  if (v6[2] && (v9 = sub_1C1E33D2C(v5), (v10 & 1) != 0))
  {
    v11 = (v6[7] + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = 0.8;
  if ((v8 & v7 & (v5 < 3u)) == 0)
  {
    v14 = 1.0;
  }

  memset(v16, 0, sizeof(v16));
  v17 = 1;
  sub_1C1DC50CC(v12, v13, 0.0, 1, v16, 0, v7 & 1, 0, a2, v14 * a3, 1u, 1u);

  return result;
}

uint64_t sub_1C1E4ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E51E6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v5 + 16);
  v47(v8, a1, v4, v6);
  v9 = sub_1C1E5315C();
  v55 = v10;
  v56 = v9;
  v12 = v11;
  v49 = v13;
  v57 = sub_1C1E5301C();
  v14 = _s13LabelFractionVMa(0);
  sub_1C1E5264C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v12 & 1;
  LOBYTE(v78) = v12 & 1;
  v54 = v12 & 1;
  LOBYTE(v93[0]) = 0;
  sub_1C1E538DC();
  sub_1C1E5281C();
  v48 = v65;
  v52 = v66;
  v53 = v64;
  v24 = v67;
  v50 = v69;
  v51 = v68;
  (v47)(v8, a1 + *(v14 + 20), v4);
  v25 = sub_1C1E5315C();
  v27 = v26;
  LOBYTE(v14) = v28;
  v30 = v29;
  LOBYTE(v5) = sub_1C1E5301C();
  sub_1C1E5264C();
  LOBYTE(v93[0]) = 0;
  *&v70 = v56;
  *(&v70 + 1) = v55;
  LOBYTE(v71) = v23;
  *(&v71 + 1) = *v63;
  DWORD1(v71) = *&v63[3];
  v31 = v49;
  *(&v71 + 1) = v49;
  LOBYTE(v72) = v57;
  DWORD1(v72) = *&v62[3];
  *(&v72 + 1) = *v62;
  *(&v72 + 1) = v16;
  *&v73[0] = v18;
  *(&v73[0] + 1) = v20;
  *&v73[1] = v22;
  BYTE8(v73[1]) = 0;
  *(v81 + 9) = *(v73 + 9);
  v80 = v72;
  v81[0] = v73[0];
  v78 = v70;
  v79 = v71;
  v59 = v48;
  v58 = v24;
  *&v74 = v25;
  *(&v74 + 1) = v27;
  LOBYTE(v75) = v14 & 1;
  DWORD1(v75) = *&v61[3];
  v32 = *v61;
  *(&v75 + 1) = *v61;
  *(&v75 + 1) = v30;
  LOBYTE(v76) = v5;
  DWORD1(v76) = *&v60[3];
  v33 = *v60;
  *(&v76 + 1) = *v60;
  *(&v76 + 1) = v34;
  *&v77[0] = v35;
  *(&v77[0] + 1) = v36;
  *&v77[1] = v37;
  BYTE8(v77[1]) = 0;
  v38 = v48;
  v39 = v70;
  v40 = v71;
  v41 = v81[1];
  *(a2 + 48) = v73[0];
  *(a2 + 64) = v41;
  v42 = v80;
  *(a2 + 16) = v40;
  *(a2 + 32) = v42;
  *a2 = v39;
  *(a2 + 80) = v53;
  *(a2 + 88) = v38;
  *(a2 + 96) = v52;
  *(a2 + 104) = v24;
  *(a2 + 112) = v51;
  *(a2 + 120) = v50;
  v43 = v74;
  v44 = v75;
  *(a2 + 185) = *(v77 + 9);
  v45 = v77[0];
  *(a2 + 160) = v76;
  *(a2 + 176) = v45;
  *(a2 + 128) = v43;
  *(a2 + 144) = v44;
  v82[0] = v25;
  v82[1] = v27;
  v83 = v14 & 1;
  *&v84[3] = *&v61[3];
  *v84 = v32;
  v85 = v30;
  v86 = v5;
  *&v87[3] = *&v60[3];
  *v87 = v33;
  v88 = v34;
  v89 = v35;
  v90 = v36;
  v91 = v37;
  v92 = 0;
  sub_1C1DC1424(&v70, v93, &qword_1EBF1DB70, &unk_1C1E5A6B0);
  sub_1C1DC1424(&v74, v93, &qword_1EBF1DB70, &unk_1C1E5A6B0);
  sub_1C1DC1870(v82, &qword_1EBF1DB70, &unk_1C1E5A6B0);
  v93[0] = v56;
  v93[1] = v55;
  v94 = v54;
  *v95 = *v63;
  *&v95[3] = *&v63[3];
  v96 = v31;
  v97 = v57;
  *v98 = *v62;
  *&v98[3] = *&v62[3];
  v99 = v16;
  v100 = v18;
  v101 = v20;
  v102 = v22;
  v103 = 0;
  return sub_1C1DC1870(v93, &qword_1EBF1DB70, &unk_1C1E5A6B0);
}

double sub_1C1E4F0C8@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C1E52C9C();
  v28 = 0;
  sub_1C1E4ECB0(v3, &v15);
  v39 = v25;
  v40[0] = v26[0];
  *(v40 + 9) = *(v26 + 9);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v29 = v15;
  v30 = v16;
  v41[9] = v24;
  v41[10] = v25;
  v42[0] = v26[0];
  *(v42 + 9) = *(v26 + 9);
  v41[6] = v21;
  v41[7] = v22;
  v41[8] = v23;
  v41[2] = v17;
  v41[3] = v18;
  v41[4] = v19;
  v41[5] = v20;
  v41[0] = v15;
  v41[1] = v16;
  sub_1C1DC1424(&v29, &v14, &qword_1EBF1DE00, &qword_1C1E5AD50);
  sub_1C1DC1870(v41, &qword_1EBF1DE00, &qword_1C1E5AD50);
  *(&v27[9] + 7) = v38;
  *(&v27[10] + 7) = v39;
  *(&v27[11] + 7) = v40[0];
  v27[12] = *(v40 + 9);
  *(&v27[5] + 7) = v34;
  *(&v27[6] + 7) = v35;
  *(&v27[7] + 7) = v36;
  *(&v27[8] + 7) = v37;
  *(&v27[1] + 7) = v30;
  *(&v27[2] + 7) = v31;
  *(&v27[3] + 7) = v32;
  *(&v27[4] + 7) = v33;
  *(v27 + 7) = v29;
  v6 = v27[8];
  *(a2 + 161) = v27[9];
  v7 = v27[11];
  *(a2 + 177) = v27[10];
  *(a2 + 193) = v7;
  *(a2 + 209) = v27[12];
  v8 = v27[4];
  *(a2 + 97) = v27[5];
  v9 = v27[7];
  *(a2 + 113) = v27[6];
  *(a2 + 129) = v9;
  *(a2 + 145) = v6;
  v10 = v27[0];
  *(a2 + 33) = v27[1];
  result = *&v27[2];
  v12 = v27[3];
  *(a2 + 49) = v27[2];
  *(a2 + 65) = v12;
  *(a2 + 81) = v8;
  v13 = v28;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 17) = v10;
  return result;
}

__n128 sub_1C1E4F350@<Q0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA78, &qword_1C1E57440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE08, &qword_1C1E5AD58);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v30 - v7);

  v31.n128_u64[0] = sub_1C1E536AC();
  v9 = sub_1C1E5307C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_1C1E530AC();
  sub_1C1DC1870(v4, &qword_1EBF1CA78, &qword_1C1E57440);
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = _s11LabelSymbolVMa(0);
  v14 = v13[6];
  v15 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE10, &unk_1C1E5ADC0) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C248, &unk_1C1E5A430) + 28);
  v17 = sub_1C1E5296C();
  (*(*(v17 - 8) + 16))(v15 + v16, v1 + v14, v17);
  *v15 = v12;
  *v8 = v31.n128_u64[0];
  v8[1] = KeyPath;
  v8[2] = v10;
  v18 = swift_getKeyPath();
  v19 = v13[7];
  v20 = (v8 + *(v6 + 44));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE18, &qword_1C1E5AE00) + 28);
  v22 = sub_1C1E5207C();
  (*(*(v22 - 8) + 16))(v20 + v21, v1 + v19, v22);
  *v20 = v18;
  v23 = v1 + v13[8];
  v24 = 0uLL;
  v25 = 0uLL;
  if ((*(v23 + 32) & 1) == 0)
  {
    v24 = *v23;
    v25 = *(v23 + 16);
  }

  v30 = v25;
  v31 = v24;
  v26 = sub_1C1E5300C();
  v27 = v32;
  sub_1C1E51684(v8, v32);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE20, &qword_1C1E5AE08) + 36);
  *v28 = v26;
  result = v31;
  *(v28 + 24) = v30;
  *(v28 + 8) = result;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1C1E4F658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t CalculateExpression.label(for:fontSize:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1C1E51E6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v10 = CalculateExpression.caption(for:fontSize:)(&v18, v9, a3);
  (*(v7 + 32))(a2, v9, v6, v10);
  (*(v7 + 56))(a2, 0, 1, v6);
  v11 = type metadata accessor for CalculateExpression.Label(0);
  v12 = *(v11 + 20);
  v13 = _s11LabelSymbolVMa(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *(v11 + 24);
  v15 = _s13LabelFractionVMa(0);
  return (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
}

uint64_t sub_1C1E4F8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC0, &qword_1C1E5AB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AB00;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E53FDC();
  *(inited + 40) = 1937075312;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = sub_1C1E542EC();
  *(inited + 64) = 0x73756E696DLL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = sub_1C1E542DC();
  *(inited + 88) = 0x796C7069746C756DLL;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = sub_1C1E541EC();
  *(inited + 112) = 0x656469766964;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = sub_1C1E541FC();
  *(inited + 136) = 0x6C61757165;
  *(inited + 144) = 0xE500000000000000;
  *(inited + 152) = sub_1C1E5420C();
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001C1E5CA40;
  *(inited + 176) = sub_1C1E5427C();
  *(inited + 184) = 0x746E6563726570;
  *(inited + 192) = 0xE700000000000000;
  v1 = sub_1C1DC4BBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC8, &qword_1C1E5AB68);
  result = swift_arrayDestroy();
  off_1EDE73980 = v1;
  return result;
}

uint64_t sub_1C1E4FA50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AB10;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E540EC();
  *(inited + 40) = sub_1C1E540FC();
  *(inited + 48) = sub_1C1E5410C();
  *(inited + 56) = sub_1C1E5411C();
  *(inited + 64) = sub_1C1E5412C();
  *(inited + 72) = sub_1C1E5413C();
  *(inited + 80) = sub_1C1E5414C();
  *(inited + 88) = sub_1C1E5415C();
  *(inited + 96) = sub_1C1E5416C();
  *(inited + 104) = sub_1C1E5417C();
  *(inited + 112) = sub_1C1E540EC();
  v1 = sub_1C1DC1588(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EDE738C8 = v1;
  return result;
}

uint64_t sub_1C1E4FB44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E52ADC();
  *a1 = result;
  return result;
}

void sub_1C1E4FBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1C1E54C2C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = (v22 + 32 * v21);
      if (v37)
      {
        sub_1C1DC7B3C(v24, v38);
      }

      else
      {
        sub_1C1DFF8A8(v24, v38);
        v25 = v23;
      }

      sub_1C1E545FC();
      sub_1C1E54D7C();
      sub_1C1E5468C();
      v26 = sub_1C1E54DAC();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      sub_1C1DC7B3C(v38, (*(v9 + 56) + 32 * v17));
      ++*(v9 + 16);
      v7 = v36;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
}

void sub_1C1E4FE78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Function(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1E51F9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D008, &qword_1C1E57E28);
  v44 = v4;
  v11 = sub_1C1E54C2C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1C1DCA204(v27 + v28 * v24, v48, type metadata accessor for Function);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1C1DCA26C(v29 + v28 * v24, v48, type metadata accessor for Function);
      }

      sub_1C1DC181C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1C1E5453C();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1C1DCA204(v48, *(v12 + 56) + v28 * v20, type metadata accessor for Function);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1C1E50318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C1E51F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D018, &unk_1C1E5AE50);
  v40 = v4;
  v10 = sub_1C1E54C2C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C1DC181C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = sub_1C1E5453C();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1C1E50708(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C1E54C1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        sub_1C1DFF8A8(*(v4 + 56) + 32 * v19, v22);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_1C1DC7B3C(v22, (*(v6 + 56) + 32 * v19));
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1C1E50878()
{
  v1 = v0;
  v2 = type metadata accessor for Function(0);
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1C1E51F9C();
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D008, &qword_1C1E57E28);
  v5 = *v0;
  v6 = sub_1C1E54C1C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_1C1DCA26C(v26 + v28, v37, type metadata accessor for Function);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        sub_1C1DCA204(v29, *(v18 + 56) + v28, type metadata accessor for Function);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1C1E50B9C()
{
  v1 = v0;
  v33 = sub_1C1E51F9C();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D018, &unk_1C1E5AE50);
  v3 = *v0;
  v4 = sub_1C1E54C1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_1C1E50E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = sub_1C1E5205C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E5207C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDD8, &qword_1C1E5AB80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    goto LABEL_25;
  }

  sub_1C1E53BBC();
  sub_1C1E5206C();
  (*(v10 + 8))(v12, v9);
  sub_1C1E5204C();
  (*(v6 + 8))(v8, v5);
  v16 = sub_1C1E51FEC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C1DC1870(v15, &qword_1EBF1DDD8, &qword_1C1E5AB80);
  }

  else
  {
    sub_1C1E51FCC();
    (*(v17 + 8))(v15, v16);
  }

  v18 = sub_1C1E545BC();

  if (qword_1EDE73AE0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE73AE8;
  v20 = [qword_1EDE73AE8 objectForKey_];
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  v37 = 0;
  sub_1C1E5451C();
  v22 = v37;
  if (!v37)
  {
    __break(1u);
LABEL_10:
    if (qword_1EDE737A0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDE75DC0;
    v24 = sub_1C1E545BC();
    v25 = [v23 localizedStringsForTable:v24 localization:v18];

    v22 = sub_1C1E5452C();
    v21 = sub_1C1E5450C();
    [v19 setObject:v21 forKey:v18];
  }

  if (!*(v22 + 16))
  {
    goto LABEL_24;
  }

  v26 = sub_1C1E33C1C(v36, a2);
  if ((v27 & 1) == 0)
  {
    goto LABEL_24;
  }

  v28 = (*(v22 + 56) + 16 * v26);
  v30 = *v28;
  v29 = v28[1];

  v31 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    goto LABEL_28;
  }

  if (v30 == 32 && v29 == 0xE100000000000000)
  {
LABEL_24:

LABEL_25:

    return v36;
  }

  v33 = sub_1C1E54D2C();

  if (v33)
  {
LABEL_28:

    goto LABEL_25;
  }

  return v30;
}

uint64_t sub_1C1E51318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
    v3 = sub_1C1E54B2C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1C1E54D7C();

      sub_1C1E5468C();
      result = sub_1C1E54DAC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1C1E54D2C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1C1E51484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1DDE8;
  if (!qword_1EBF1DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DDE8);
  }

  return result;
}

uint64_t _s16CalculatorButtonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16CalculatorButtonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C1E51618()
{
  if (!qword_1EBF1DDF8)
  {
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1DDF8);
    }
  }
}

uint64_t sub_1C1E51684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE08, &qword_1C1E5AD58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_34Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_46Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1C1E517A8()
{
  result = qword_1EBF1DE68;
  if (!qword_1EBF1DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DE20, &qword_1C1E5AE08);
    sub_1C1E51834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DE68);
  }

  return result;
}

unint64_t sub_1C1E51834()
{
  result = qword_1EDE73B70;
  if (!qword_1EDE73B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DE08, &qword_1C1E5AD58);
    sub_1C1DCA354();
    sub_1C1DC1124(&qword_1EDE73B38, &qword_1EBF1DE18, &qword_1C1E5AE00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B70);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EBF20D00 == -1)
  {
    if (qword_1EBF20D08)
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
    if (qword_1EBF20D08)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EBF20CF8 != -1)
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
      if (dword_1EBF20CEC > a3)
      {
        return 1;
      }

      if (dword_1EBF20CEC >= a3)
      {
        return dword_1EBF20CF0 >= a4;
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
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBF20D08;
  if (qword_1EBF20D08)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBF20D08 = MEMORY[0x1EEE9AC60];
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
                          v14 = MEMORY[0x1C6910B50](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EBF20CEC, &dword_1EBF20CF0);
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