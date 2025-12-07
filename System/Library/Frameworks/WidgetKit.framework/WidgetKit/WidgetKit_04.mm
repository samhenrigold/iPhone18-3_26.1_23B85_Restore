double ControlToggle.init<A, B, C, D, E, F, G>(kind:intentUpdatableProperty:title:subtitle:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t x7_0@<X7>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *a3;
  v21 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v22 = v21 + *MEMORY[0x1E695A680];
  v23 = *(v22 + 16);
  v43 = *(v22 + 40);
  v24 = sub_192224D10();
  v50 = v25;
  v51 = v24;
  sub_192080BD0(a3, a15, v56);

  v47 = sub_192224BA0();
  v26 = swift_allocObject();
  v27 = *(v20 + *MEMORY[0x1E69E77B0]);
  v26[2] = v27;
  v26[3] = v23;
  v42 = v21;
  v28 = *(v21 + *MEMORY[0x1E695A680] + 8);
  v26[4] = v28;
  v26[5] = v21;
  v26[6] = a12;
  v26[7] = a13;
  v26[8] = a14;
  v26[9] = a15;
  v26[10] = v43;
  v26[11] = a16;
  v26[12] = a17;
  v26[13] = a18;
  v26[14] = a4;
  v26[15] = a5;
  v29 = swift_allocObject();
  v30 = v29;
  v29[2] = v27;
  v29[3] = v23;
  v29[4] = v28;
  v29[5] = v42;
  v29[6] = a12;
  v29[7] = a13;
  v29[8] = a14;
  v29[9] = a15;
  v29[10] = v43;
  v29[11] = a16;
  v29[12] = a17;
  if (a10)
  {
    v31 = a11;
  }

  else
  {
    v31 = 0;
  }

  v29[13] = a18;
  v29[14] = a6;
  v29[15] = a7;
  v32 = sub_192080D60();
  v55 = 0;
  sub_192080DB4(a1, a2, &type metadata for EmptyConfiguration, v51, v50, 0, 0, &v55, v57, v56, 1, v47, sub_192108424, v26, sub_192108574, v30, x7_0, a9, a10, v31, &type metadata for EmptyConfiguration, a12, a13, a14, &type metadata for KeyPathToggleBox, a16, a17, a18, v32);

  v33 = v65;
  v34 = v66;
  v35 = v63;
  *(a8 + 128) = v64;
  *(a8 + 144) = v33;
  v36 = v67;
  *(a8 + 160) = v34;
  *(a8 + 176) = v36;
  v37 = v61;
  v38 = v62;
  *(a8 + 64) = v60;
  *(a8 + 80) = v37;
  *(a8 + 96) = v38;
  *(a8 + 112) = v35;
  v39 = v57[1];
  *a8 = v57[0];
  *(a8 + 16) = v39;
  result = *&v58;
  v41 = v59;
  *(a8 + 32) = v58;
  *(a8 + 48) = v41;
  *(a8 + 192) = 1;
  return result;
}

uint64_t sub_192080B94()
{

  return swift_deallocObject();
}

uint64_t sub_192080BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  v10 = (v6 + *MEMORY[0x1E69E77B0]);
  v9[2] = *v10;
  v11 = v10[1];
  v12 = (v11 + *MEMORY[0x1E695A680]);
  v9[3] = v12[2];
  v9[4] = v12[1];
  v9[5] = v11;
  v9[6] = a2;
  v9[7] = v12[5];
  *a3 = &unk_192232FD8;
  a3[1] = v7;
  a3[2] = sub_19210BB8C;
  a3[3] = v8;
  a3[4] = &unk_192232FE8;
  a3[5] = v9;
}

uint64_t sub_192080D14()
{

  return swift_deallocObject();
}

unint64_t sub_192080D60()
{
  result = qword_1ED749198;
  if (!qword_1ED749198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749198);
  }

  return result;
}

uint64_t sub_192080DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v176 = a27;
  v177 = a5;
  v179 = a26;
  v180 = a28;
  v174 = a4;
  v175 = a24;
  v181 = a23;
  v182 = a29;
  v178 = a22;
  v184 = a21;
  v157 = a20;
  v156 = a19;
  v155 = a18;
  v154 = a17;
  v153 = a16;
  v150 = a15;
  v147 = a14;
  v146 = a13;
  v159 = a12;
  v167 = *(a25 - 8);
  v36 = v167[8];
  v160 = a11;
  v183 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v158 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v166 = &v141 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v165 = &v141 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v164 = &v141 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v163 = &v141 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v145 = &v141 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v143 = &v141 - v48;
  v49 = sub_192224FB0();
  MEMORY[0x1EEE9AC00](v49 - 8);
  v50 = *a8;
  *(a9 + 192) = 0;
  v161 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v168 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a3;
  v51 = v177;
  *(a9 + 176) = v174;
  *(a9 + 184) = v51;
  swift_getAssociatedConformanceWitness();

  if (!a7)
  {
    sub_192224BC0();
    a6 = sub_192227980();
    a7 = v52;
  }

  v148 = a9;
  *(a9 + 152) = a6;
  *(a9 + 160) = a7;
  *(a9 + 168) = v50;
  v53 = v184;
  v152 = sub_192224BB0();
  v151 = v54;
  v55 = swift_allocObject();
  v149 = v55;
  v56 = v53;
  v58 = v178;
  v57 = v179;
  v55[2] = v53;
  v55[3] = v58;
  v59 = v181;
  v60 = v175;
  v55[4] = v181;
  v55[5] = v60;
  v55[6] = a25;
  v55[7] = v57;
  v61 = v176;
  v55[8] = v176;
  v62 = v61;
  v64 = v182;
  v63 = v183;
  v55[9] = v180;
  v55[10] = v64;
  v65 = v167;
  v66 = v167[2];
  v172 = v167 + 2;
  v173 = v66;
  v67 = v143;
  v66(v143, v63, a25);
  v68 = (*(v65 + 80) + 88) & ~*(v65 + 80);
  v170 = *(v65 + 80);
  v162 = v68 + v36;
  v174 = v68;
  v169 = (v68 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v69[2] = v56;
  v69[3] = v58;
  v69[4] = v59;
  v69[5] = v60;
  v70 = v179;
  v71 = v180;
  v69[6] = a25;
  v69[7] = v70;
  v69[8] = v62;
  v69[9] = v71;
  v72 = v182;
  v69[10] = v182;
  v73 = v69;
  v144 = v69;
  v177 = v65[4];
  v171 = v65 + 4;
  v177(v69 + v68, v67, a25);
  v74 = (v73 + v169);
  v75 = v147;
  *v74 = v146;
  v74[1] = v75;
  v76 = v145;
  v173(v145, v183, a25);
  v77 = swift_allocObject();
  v78 = v178;
  v77[2] = v184;
  v77[3] = v78;
  v79 = v181;
  v80 = v174;
  v81 = v175;
  v77[4] = v181;
  v77[5] = v81;
  v77[6] = a25;
  v77[7] = v70;
  v77[8] = v62;
  v77[9] = v71;
  v77[10] = v72;
  v82 = v77;
  v147 = v77;
  v177(v77 + v80, v76, a25);
  v83 = (v82 + v169);
  v84 = v153;
  *v83 = v150;
  v83[1] = v84;
  v85 = v183;
  v86 = v173;
  v173(v163, v183, a25);
  v87 = swift_allocObject();
  v87[2] = v184;
  v87[3] = v78;
  v89 = v175;
  v88 = v176;
  v87[4] = v79;
  v87[5] = v89;
  v91 = v179;
  v90 = v180;
  v87[6] = a25;
  v87[7] = v91;
  v87[8] = v88;
  v87[9] = v90;
  v92 = v182;
  v87[10] = v182;
  v93 = v87;
  v153 = v87;
  v177(v87 + v174, v163, a25);
  v94 = v169;
  v95 = (v93 + v169);
  v96 = v155;
  *v95 = v154;
  v95[1] = v96;
  v86(v164, v85, a25);
  v97 = v94;
  v98 = swift_allocObject();
  v99 = v184;
  v100 = v178;
  v98[2] = v184;
  v98[3] = v100;
  v98[4] = v181;
  v98[5] = v89;
  v98[6] = a25;
  v98[7] = v91;
  v98[8] = v88;
  v101 = v180;
  v98[9] = v180;
  v98[10] = v92;
  v102 = v174;
  v103 = v98;
  v163 = v98;
  v177(v98 + v174, v164, a25);
  v104 = (v103 + v97);
  v105 = v157;
  *v104 = v156;
  v104[1] = v105;
  v106 = v183;
  v86(v165, v183, a25);
  v107 = swift_allocObject();
  v107[2] = v99;
  v109 = v178;
  v108 = v179;
  v110 = v181;
  v107[3] = v178;
  v107[4] = v110;
  v112 = v175;
  v111 = v176;
  v107[5] = v175;
  v107[6] = a25;
  v107[7] = v108;
  v107[8] = v111;
  v113 = v182;
  v107[9] = v101;
  v107[10] = v113;
  v114 = v107 + v102;
  v115 = v177;
  v177(v114, v165, a25);
  v173(v166, v106, a25);
  v116 = swift_allocObject();
  *(v116 + 2) = v184;
  *(v116 + 3) = v109;
  v117 = v182;
  *(v116 + 4) = v181;
  *(v116 + 5) = v112;
  *(v116 + 6) = a25;
  *(v116 + 7) = v108;
  v118 = v176;
  *(v116 + 8) = v176;
  *(v116 + 9) = v101;
  *(v116 + 10) = v117;
  v119 = v174;
  v115(&v116[v174], v166, a25);
  v120 = v158;
  v173(v158, v183, a25);
  v121 = swift_allocObject();
  v122 = v178;
  v121[2] = v184;
  v121[3] = v122;
  v121[4] = v181;
  v121[5] = v112;
  v142 = a25;
  v124 = v179;
  v123 = v180;
  v121[6] = a25;
  v121[7] = v124;
  v121[8] = v118;
  v121[9] = v123;
  v121[10] = v117;
  v177(v121 + v119, v120, a25);
  v125 = v160;
  v126 = v148;
  v127 = v159;
  *v148 = v160;
  v126[1] = v127;
  v126[16] = &type metadata for ControlToggleTemplateProvider;
  v126[17] = &off_1F06B3538;
  v128 = v126;
  v129 = swift_allocObject();
  v128[13] = v129;
  v130 = v161;
  v131 = v168;
  *(v129 + 16) = v161;
  *(v129 + 24) = v131;
  v132 = v151;
  *(v129 + 32) = v152;
  *(v129 + 40) = v132;
  *(v129 + 48) = 0;
  *(v129 + 49) = *v185;
  *(v129 + 52) = *&v185[3];
  v133 = v149;
  *(v129 + 56) = sub_1921A0808;
  *(v129 + 64) = v133;
  v134 = v144;
  *(v129 + 72) = &unk_19223E340;
  *(v129 + 80) = v134;
  v135 = v147;
  *(v129 + 88) = &unk_19223E350;
  *(v129 + 96) = v135;
  v136 = v153;
  *(v129 + 104) = &unk_19223E360;
  *(v129 + 112) = v136;
  v137 = v163;
  *(v129 + 120) = &unk_19223E370;
  *(v129 + 128) = v137;
  *(v129 + 136) = &unk_19223E380;
  *(v129 + 144) = v107;
  *(v129 + 152) = &unk_19223E390;
  *(v129 + 160) = v116;
  *(v129 + 168) = &unk_19223E3A0;
  *(v129 + 176) = v121;
  v138 = v167[1];

  v139 = v127;
  result = v138(v183, v142);
  *(v128 + 144) = 0;
  v128[7] = v130;
  v128[8] = v131;
  v128[9] = 0;
  v128[10] = 0;
  v128[11] = v125;
  v128[12] = v139;
  return result;
}

uint64_t sub_192081774()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192081810()
{
  v1 = *(*(v0 + 48) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1920818CC()
{
  result = qword_1ED749A98;
  if (!qword_1ED749A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749A98);
  }

  return result;
}

uint64_t sub_192081920@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1920819E0()
{
  v0 = sub_192224FB0();
  __swift_allocate_value_buffer(v0, qword_1ED749180);
  __swift_project_value_buffer(v0, qword_1ED749180);
  return sub_192224FA0();
}

uint64_t sub_192081A44(uint64_t a1)
{
  v2 = sub_1920818CC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_192081B08@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 152);
  v6 = *(v1 + 160);
  v8 = *(v1 + 168);
  v10 = *(v1 + 176);
  v9 = *(v1 + 184);
  v11 = *(v1 + 192);
  sub_192081C60(v1 + 56, v5);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v5, a1);
  v12 = type metadata accessor for WidgetDescriptor(0);
  v13 = v12[7];

  *(a1 + v13) = &unk_1F06A8450;
  *(a1 + v12[39]) = v8;
  v14 = (a1 + v12[5]);

  *v14 = v7;
  v14[1] = v6;
  v15 = (a1 + v12[6]);

  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v12[40]);

  *v16 = v10;
  v16[1] = v9;
  *(a1 + v12[36]) = v11;
  *(a1 + v12[29]) = v11;
  return result;
}

void *sub_192081CBC()
{
  v0 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WidgetDescriptor(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  sub_1920791AC();
  result = sub_192225D70();
  v10 = v26;
  v23 = *(v26 + 16);
  if (v23)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v22 = v0;
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v14 = *(v4 + 72);
      sub_192036754(v10 + v13 + v14 * v11, v8, type metadata accessor for WidgetDescriptor);
      sub_192036754(v8, v2, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
LABEL_11:
          sub_192036A20(v2, type metadata accessor for ViewSource);
          sub_192082064(v8, v24, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v12 + 16) + 1, 1);
            v12 = v25;
          }

          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1920820CC((v18 > 1), v19 + 1, 1);
            v12 = v25;
          }

          *(v12 + 16) = v19 + 1;
          result = sub_192082064(v24, v12 + v13 + v19 * v14, type metadata accessor for WidgetDescriptor);
          goto LABEL_5;
        }

        sub_192036A20(v2, type metadata accessor for ViewSource);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

        v16 = sub_1922253B0();
        (*(*(v16 - 8) + 8))(v2, v16);
      }

      result = sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v23 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v26 = MEMORY[0x1E69E7CD0];
  sub_1920822EC(v12, &v26);
  v21 = v20;

  return v21;
}

uint64_t sub_192082064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1920820CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEB80, &qword_19222AF60, type metadata accessor for WidgetDescriptor);
  *v3 = result;
  return result;
}

void *sub_192082110(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_1920822EC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WidgetDescriptor(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v22 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v19 = a2;
    v20 = a1;
    while (v11 < *(a1 + 16))
    {
      v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v14 = *(v6 + 72);
      sub_192036754(a1 + v13 + v14 * v11, v10, type metadata accessor for WidgetDescriptor);
      v15 = sub_192082568(v10);
      if (v2)
      {
        sub_192036A20(v10, type metadata accessor for WidgetDescriptor);

        goto LABEL_15;
      }

      if (v15)
      {
        sub_192082064(v10, v22, type metadata accessor for WidgetDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1920820CC(0, *(v12 + 16) + 1, 1);
          v12 = v23;
        }

        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1920820CC((v17 > 1), v18 + 1, 1);
          v12 = v23;
        }

        *(v12 + 16) = v18 + 1;
        sub_192082064(v22, v12 + v13 + v18 * v14, type metadata accessor for WidgetDescriptor);
        a1 = v20;
      }

      else
      {
        sub_192036A20(v10, type metadata accessor for WidgetDescriptor);
      }

      if (v21 == ++v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_192082568(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_192036754(a1, v4, type metadata accessor for ViewSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *(&v31 + 1) = &type metadata for LiveSceneWidgetViewSource;
      v32 = sub_1921AFF0C();
      goto LABEL_9;
    }

    *(&v31 + 1) = &type metadata for ControlViewSource;
    v32 = sub_1921AFF60();
    v6 = swift_allocObject();
    *&v30 = v6;
    v7 = v4[3];
    v6[3] = v4[2];
    v6[4] = v7;
    v6[5] = v4[4];
    *(v6 + 89) = *(v4 + 73);
    v8 = v4[1];
    v6[1] = *v4;
    v6[2] = v8;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *(&v31 + 1) = &type metadata for TimelineViewSource;
      v32 = sub_192082A7C();
LABEL_9:
      v11 = swift_allocObject();
      *&v30 = v11;
      v12 = v4[1];
      v11[1] = *v4;
      v11[2] = v12;
      v13 = v4[3];
      v11[3] = v4[2];
      v11[4] = v13;
      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

    v9 = sub_1922253B0();
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    (*(*(v9 - 8) + 8))(v4, v9);
    if (!*(&v31 + 1))
    {
      sub_192033970(&v30, &qword_1EADF1860, &unk_19223D680);
      v10 = 1;
      return v10 & 1;
    }
  }

LABEL_10:
  sub_19203832C(&v30, v33);
  v14 = v34;
  v15 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v16 = (*(v15 + 16))(v14, v15);
  v10 = sub_192082B80(&v30, v16, v17);

  if ((v10 & 1) == 0)
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v18 = sub_1922258B0();
    __swift_project_value_buffer(v18, qword_1ED74CCC8);
    sub_192033A64(v33, &v30);
    v19 = sub_192225890();
    v20 = sub_192227FB0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136446210;
      v23 = *(&v31 + 1);
      v24 = v32;
      __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      v25 = (*(v24 + 16))(v23, v24);
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1(&v30);
      v28 = sub_19202B8CC(v25, v27, &v36);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_192028000, v19, v20, "Found duplicate widgets of kind %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x193B0C7F0](v22, -1, -1);
      MEMORY[0x193B0C7F0](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v30);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v10 & 1;
}

uint64_t sub_192082968()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1920829C0()
{

  if (*(v0 + 104))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_192082A24()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_192082A7C()
{
  result = qword_1ED74A528;
  if (!qword_1ED74A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A528);
  }

  return result;
}

unint64_t sub_192082AD0(uint64_t a1)
{
  result = sub_192082AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_192082AF8()
{
  result = qword_1ED74A530;
  if (!qword_1ED74A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A530);
  }

  return result;
}

uint64_t sub_192082B50()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_192082B80(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_192228AD0();
  sub_1922279B0();
  v8 = sub_192228B30();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1922289A0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_192082CD0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_192082CD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_192083088(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1921C3A40();
      goto LABEL_16;
    }

    sub_192082E50(v8 + 1);
  }

  v10 = *v4;
  sub_192228AD0();
  sub_1922279B0();
  v11 = sub_192228B30();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1922289A0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_192228A30();
  __break(1u);
}

void sub_192082E50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_192228AD0();

      sub_1922279B0();
      v20 = sub_192228B30();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_192083088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_192228AD0();
      sub_1922279B0();
      v21 = sub_192228B30();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_1920832E8()
{
  v139 = v0;
  v1 = *(*(v0 + 616) + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget);
  *(v0 + 928) = v1;
  v2 = [v1 intentReference];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 intent];
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 936) = v4;
  if (*(v0 + 97) == 1)
  {
    if (qword_1ED7499C0 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED74C730;
  }

  else
  {
    if (qword_1ED749B38 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED74C770;
  }

  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  v8 = *(v0 + 880);
  v9 = *(v0 + 616);
  v10 = __swift_project_value_buffer(v8, v5);
  (*(v7 + 16))(v6, v10, v8);
  v11 = *&v9[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment];
  *(v0 + 944) = v11;
  KeyPath = swift_getKeyPath();
  v13 = sub_192066C3C(KeyPath);

  v132 = v4;
  if (!v13)
  {
    goto LABEL_59;
  }

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

  if (!sub_192228340())
  {
LABEL_58:

LABEL_59:

    v88 = *(v0 + 896);
    v89 = *(v0 + 888);
    v90 = *(v0 + 880);
    v91 = *MEMORY[0x1E69941E8];
    v92 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v93 = sub_192227960();
    v95 = v94;
    *(v0 + 408) = MEMORY[0x1E69E6158];
    *(v0 + 384) = 0xD000000000000019;
    *(v0 + 392) = 0x8000000192249050;
    sub_19203BEDC((v0 + 384), (v0 + 416));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136[0] = v92;
    sub_19213DB28((v0 + 416), v93, v95, isUniquelyReferenced_nonNull_native);

    v97 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v98 = sub_192227830();

    [v97 initWithDomain:v91 code:1002 userInfo:v98];

    swift_willThrow();
    (*(v89 + 8))(v88, v90);
    goto LABEL_60;
  }

LABEL_14:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x193B0B410](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v14 = *(v13 + 32);
  }

  v126 = v11;
  v128 = v14;
  *(v0 + 952) = v14;

  v15 = InternalWidgetFamily.init(_:)([v1 family], v136);
  if (!xmmword_1ED74CC80)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDD8](v15, v16, v17, v18, v19, v20);
  }

  v125 = v136[0];
  v21 = *(v0 + 864);
  v129 = *(v0 + 856);
  v22 = *(v0 + 848);
  v23 = qword_1ED74CC90;
  v24 = *xmmword_1ED74CC80;
  *(v0 + 600) = xmmword_1ED74CC80;
  v25 = *(v23 + 8);
  v26 = *(v25 + 8);

  v127 = v1;
  v26(v1, v24, v25);

  v27 = (*(v21 + 48))(v22, 1, v129);
  v28 = *(v0 + 848);
  if (v27 == 1)
  {

    sub_192033970(v28, &qword_1EADEEE20, &qword_19222B670);
LABEL_20:
    v9 = v132;
    v1 = v128;
    goto LABEL_31;
  }

  v29 = *(v0 + 872);
  v30 = *(v0 + 840);
  sub_192084510(*(v0 + 848), v29, type metadata accessor for WidgetDescriptor);
  sub_192084578(v29, v30, type metadata accessor for ViewSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v9 = v132;
    v1 = v128;
    v49 = *(v0 + 840);
    sub_1920B3484(*(v0 + 872), type metadata accessor for WidgetDescriptor);

    sub_1920B3484(v49, type metadata accessor for ViewSource);
LABEL_31:
    if (qword_1ED749278 == -1)
    {
LABEL_32:
      v50 = *(v0 + 896);
      v51 = *(v0 + 888);
      v52 = *(v0 + 880);
      v53 = qword_1ED74C6E8;
      swift_willThrow();
      v53;

      (*(v51 + 8))(v50, v52);
      goto LABEL_60;
    }

LABEL_65:
    swift_once();
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload)
  {
    v54 = *(v0 + 840);
    sub_1920B3484(*(v0 + 872), type metadata accessor for WidgetDescriptor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

    v55 = sub_1922253B0();
    (*(*(v55 - 8) + 8))(v54, v55);
    goto LABEL_20;
  }

  v130 = *(v0 + 872);
  v32 = *(v0 + 840);
  v33 = *(v0 + 832);
  v34 = v32[4];
  v36 = v32[5];
  v35 = v32[6];

  sub_19203831C(v34, v36);

  v35(v37);

  sub_19203832C((v0 + 144), v0 + 104);
  sub_192084578(v130, v33, type metadata accessor for ViewSource);
  v38 = swift_getEnumCaseMultiPayload();
  v39 = *(v0 + 832);
  if (v38 > 1)
  {
    sub_1920B3484(v39, type metadata accessor for ViewSource);
  }

  else if (v38)
  {
    v56 = *(v0 + 832);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

    v57 = sub_1922253B0();
    (*(*(v57 - 8) + 8))(v56, v57);
  }

  else
  {
    v40 = v39[3];
    v41 = v39[4];
    v42 = v39[5];

    sub_19203831C(v41, v42);

    if (v40)
    {

      if (!v132)
      {
        v43 = (v0 + 104);

        if (qword_1EADECF20 == -1)
        {
LABEL_29:
          v44 = *(v0 + 896);
          v45 = *(v0 + 888);
          v46 = *(v0 + 880);
          v47 = *(v0 + 872);
          v48 = qword_1EAE007A0;
          swift_willThrow();
          v48;

          sub_1920B3484(v47, type metadata accessor for WidgetDescriptor);
          (*(v45 + 8))(v44, v46);
          __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_60:

          v99 = *(v0 + 8);

          return v99();
        }

LABEL_88:
        swift_once();
        goto LABEL_29;
      }
    }
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 880), qword_1ED74CCC8);
  v133 = v0 + 104;
  sub_192033A64(v0 + 104, v0 + 184);
  v58 = sub_192225890();
  v59 = sub_192227F80();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v136[0] = v61;
    *v60 = 136446210;
    __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
    v62 = sub_192228910();
    v64 = v63;
    __swift_destroy_boxed_opaque_existential_1((v0 + 184));
    v65 = sub_19202B8CC(v62, v64, v136);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_192028000, v58, v59, "reload: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x193B0C7F0](v61, -1, -1);
    MEMORY[0x193B0C7F0](v60, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  }

  v137 = v126;
  v66 = v126;
  TimelineProviderContext.EnvironmentVariants.init(_:)(&v137, v136);
  v67 = v136[0];
  v68 = v136[1];
  v43 = v136[2];
  v69 = v136[3];
  v70 = [v127 personaIdentifier];
  if (v70)
  {
    v71 = v70;
    v131 = sub_192227960();
    v73 = v72;
  }

  else
  {
    v131 = 0;
    v73 = 0;
  }

  v74 = *(v0 + 808);
  v75 = *(v0 + 97);
  *v74 = v67;
  *(v74 + 8) = v68;
  *(v74 + 16) = v43;
  *(v74 + 24) = v69;
  LOBYTE(v137) = v125;

  v76 = v67;

  sub_19206E384(&v137, v138);
  *(v74 + 32) = v138[0];
  *(v74 + 33) = v125;
  *(v74 + 56) = v75;
  v77 = swift_getKeyPath();
  v78 = sub_192085490(v77, v76, v68, v43, v69);

  if (v78)
  {
    if (*(v78 + 2))
    {
      v79 = *(v78 + 4);
    }

    else
    {
      v79 = 2.0;
    }
  }

  else
  {
    v79 = 2.0;
  }

  v80 = swift_getKeyPath();
  v81 = sub_192085D6C(v80, v76, v68, v43, v69);

  v82 = 0;
  if (!v81)
  {
    goto LABEL_68;
  }

  if (v81 >> 62)
  {
    if (sub_192228340())
    {
      goto LABEL_53;
    }

    goto LABEL_67;
  }

  if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_67:

LABEL_68:
    v87 = 0;
    goto LABEL_69;
  }

LABEL_53:
  if ((v81 & 0xC000000000000001) != 0)
  {
    v83 = MEMORY[0x193B0B410](0, v81);
  }

  else
  {
    if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_88;
    }

    v83 = *(v81 + 32);
  }

  v84 = v83;

  [v84 _rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale_];
  v82 = v85;
  v87 = v86;

LABEL_69:
  v101 = *(v0 + 808);
  *(v101 + 64) = v82;
  *(v101 + 72) = v87;
  v102 = swift_getKeyPath();
  v103 = sub_192099884(v102);

  if (v103)
  {
    if (v103[2])
    {
      v104 = *(*(v0 + 784) + 80);
      sub_19202CFFC(v103 + ((v104 + 32) & ~v104), *(v0 + 792), &qword_1EADEECD0, &qword_1922363D0);

      goto LABEL_74;
    }
  }

  v105 = *(v0 + 792);

  v106 = sub_192224EA0();
  (*(*(v106 - 8) + 56))(v105, 1, 1, v106);
LABEL_74:
  v107 = *(v0 + 816);
  v108 = *(v0 + 808);
  sub_19204E300(*(v0 + 792), v108 + *(*(v0 + 800) + 40), &qword_1EADEECD0, &qword_1922363D0);
  *(v108 + 40) = v131;
  *(v108 + 48) = v73;
  sub_192084510(v108, v107, type metadata accessor for TimelineProviderContext);
  sub_192033A64(v133, v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE30, &qword_19222B700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE38, &qword_19222B708);
  if (!swift_dynamicCast())
  {
    v118 = *(v0 + 896);
    v119 = *(v0 + 816);
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0;
    sub_192033970(v0 + 304, &qword_1EADEEE40, &qword_19222B710);
    v120 = swift_task_alloc();
    *(v0 + 976) = v120;
    *(v120 + 16) = v75;
    *(v120 + 24) = v133;
    *(v120 + 32) = v127;
    *(v120 + 40) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE48, &qword_19222B718);
    v121 = swift_allocObject();
    *(v0 + 984) = v121;
    *(v121 + 20) = 0;
    *(v121 + 16) = 0;
    v122 = swift_task_alloc();
    *(v0 + 992) = v122;
    v122[2] = v121;
    v122[3] = v118;
    v122[4] = sub_192086A08;
    v122[5] = v120;
    v123 = swift_task_alloc();
    *(v0 + 1000) = v123;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE50, &qword_19222B720);
    *v123 = v0;
    v123[1] = sub_1920B0148;
    v18 = sub_192086664;
    v15 = v0 + 608;
    v16 = 0xD000000000000029;
    v17 = 0x8000000192249070;
    v19 = v122;

    return MEMORY[0x1EEE6DDD8](v15, v16, v17, v18, v19, v20);
  }

  v109 = *(v0 + 97);
  sub_19203832C((v0 + 304), v0 + 224);
  v110 = *(v0 + 248);
  v111 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_1((v0 + 224), v110);
  if (v109 == 1)
  {
    v134 = (*(v111 + 16) + **(v111 + 16));
    v112 = swift_task_alloc();
    *(v0 + 960) = v112;
    *v112 = v0;
    v112[1] = sub_1920ADB90;
    v113 = *(v0 + 816);
    v114 = v127;
    v115 = v110;
    v116 = v111;
    v117 = v134;
  }

  else
  {
    v135 = (*(v111 + 24) + **(v111 + 24));
    v124 = swift_task_alloc();
    *(v0 + 968) = v124;
    *v124 = v0;
    v124[1] = sub_1920AEE6C;
    v113 = *(v0 + 816);
    v114 = v127;
    v115 = v110;
    v116 = v111;
    v117 = v135;
  }

  return v117(v114, v113, v115, v116);
}

uint64_t sub_192084510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_192084578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920845E0@<X0>(char **a1@<X8>)
{
  v2 = (*(*(v1[4] - 8) + 80) + 88) & ~*(*(v1[4] - 8) + 80);
  v3 = (v1 + ((*(*(v1[4] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_19208472C(v1[7], v1[8], v1[9], v1[10], v1 + v2, *v3, v3[1], a1, v1[3], v1[4]);
}

uint64_t sub_192084680@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_19208472C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>, uint64_t a9, uint64_t a10)
{
  v25 = a3;
  v26 = a6;
  v16 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a10;
  v27[1] = v19;
  v27[2] = v21;
  v27[3] = v20;
  v22 = type metadata accessor for IntentTimelineEntryProvider(0, v27);
  (*(v16 + 16))(v18, a5, a10);
  v23 = sub_192084960(a1, a2, v25, a4, v18, v26, a7);
  a8[3] = v22;
  a8[4] = swift_getWitnessTable();
  a8[5] = &off_1F06B7910;
  *a8 = v23;
}

uint64_t sub_1920848B4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_192084960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = *v14;
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  (*(*(*(v15 + 80) - 8) + 32))(&v14[*(v15 + 120)], a5);
  v16 = &v14[*(*v14 + 128)];
  *v16 = a6;
  *(v16 + 1) = a7;
  return v14;
}

uint64_t sub_192084A48(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void TimelineProviderContext.EnvironmentVariants.init(_:)(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = v3;
  v6 = sub_192067344(KeyPath);

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
    v9 = *(v6 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v9 == v7)
      {

        v18 = v8;
        v19 = v8;
        v17 = v8;
        sub_192084C98(v10, &v19, &v18, &v17, v13);

        v14 = v18;
        v15 = v19;
        v16 = v17;
        goto LABEL_11;
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      if (*(v6 + 8 * v7++ + 32))
      {

        MEMORY[0x193B0AB00](v12);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_192227BB0();
        }

        sub_192227C00();
        v10 = v19;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_11:
    *a2 = v5;
    a2[1] = v15;
    a2[2] = v14;
    a2[3] = v16;
  }
}

void *sub_192084C1C@<X0>(void *a1@<X8>)
{
  sub_192056FC0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void sub_192084C98(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __n128 a5)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_192228340())
  {
    v9 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x193B0B410](v9, a1, a5);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v14 = v10;
      sub_192084DB0(&v14, a2, a3, a4);

      if (!v5)
      {
        ++v9;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 8 * v9 + 32);

    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_192084DB0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v58 = a4;
  v53 = a3;
  v55 = sub_192225C60();
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v49 - v7;
  v51 = sub_1922252C0();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9C0, &qword_19222F1A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_1922252A0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v52 = sub_192227B60();
  LikeCurrentWithBundleLocalizations = _CFLocaleCreateLikeCurrentWithBundleLocalizations();
  if (LikeCurrentWithBundleLocalizations)
  {
    v23 = LikeCurrentWithBundleLocalizations;
    sub_192225210();

    v24 = *(v13 + 32);
    v24(v11, v18, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v24(v21, v11, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_192225240();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_192033970(v11, &qword_1EADEF9C0, &qword_19222F1A0);
    }
  }

  (*(v13 + 16))(v15, v21, v12);
  v25 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_192085418(0, v25[2] + 1, 1, v25);
    *a2 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_192085418((v27 > 1), v28 + 1, 1, v25);
    *a2 = v25;
  }

  v25[2] = v28 + 1;
  (*(v13 + 32))(v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v28, v15, v12);
  v29 = v50;
  sub_192225290();
  v30 = v53;
  v31 = *v53;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_192085440(0, v31[2] + 1, 1, v31);
    *v30 = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_192085440((v33 > 1), v34 + 1, 1, v31);
    *v30 = v31;
  }

  v31[2] = v34 + 1;
  (*(v49 + 32))(v31 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v34, v29, v51);
  sub_1922251E0();
  v35 = sub_1922251F0();

  v36 = v57;
  v37 = MEMORY[0x1E697E7D8];
  if (v35 != 2)
  {
    v37 = MEMORY[0x1E697E7D0];
  }

  v38 = v54;
  v39 = v55;
  (*(v57 + 104))(v54, *v37, v55);
  v40 = *(v36 + 32);
  v40(v56, v38, v39);
  v41 = v58;
  v42 = *v58;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *v41 = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_192085468(0, v42[2] + 1, 1, v42);
    *v58 = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v48 = sub_192085468((v44 > 1), v45 + 1, 1, v42);
    *v58 = v48;
  }

  (*(v13 + 8))(v21, v12);
  v46 = *v58;
  *(v46 + 16) = v45 + 1;
  return (v40)(v46 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v45, v56, v39);
}

char *sub_192085490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_192225A40();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922282D0();
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x193B0B270](a1, KeyPath);

  if (v14)
  {
    if (a3)
    {
      v15 = *(a3 + 16);
      goto LABEL_10;
    }

    return 0;
  }

  v16 = swift_getKeyPath();
  v17 = MEMORY[0x193B0B270](a1, v16);

  if (v17)
  {
    if (!a4)
    {
      return 0;
    }

    v15 = *(a4 + 16);
LABEL_10:
    v60[0] = MEMORY[0x1E69E7CC0];
    sub_192085D4C(0, v15, 0);
    v20 = v60[0];
    if (!v15)
    {
      return v20;
    }

LABEL_11:

    return 0;
  }

  v18 = swift_getKeyPath();
  v19 = MEMORY[0x193B0B270](a1, v18);

  if (v19)
  {
    if (!a5)
    {
      return 0;
    }

    v15 = *(a5 + 16);
    goto LABEL_10;
  }

  v22 = swift_getKeyPath();
  v23 = MEMORY[0x193B0B270](a1, v22);

  if (v23)
  {
    v10 = swift_getKeyPath();
    v24 = sub_19206FF50(v10);

    if (!v24)
    {
      return 0;
    }

    if (v24 >> 62)
    {
      goto LABEL_51;
    }

    v12 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_52:

      return MEMORY[0x1E69E7CC0];
    }

    while (1)
    {
      v60[0] = MEMORY[0x1E69E7CC0];
      v25 = v60;
      sub_192085D4C(0, v12 & ~(v12 >> 63), 0);
      if ((v12 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v20 = v60[0];
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x193B0B410](v26, v24);
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          [v27 scale];
          v30 = v29;

          v60[0] = v20;
          v32 = *(v20 + 16);
          v31 = *(v20 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_192085D4C((v31 > 1), v32 + 1, 1);
            v20 = v60[0];
          }

          ++v26;
          *(v20 + 16) = v32 + 1;
          *(v20 + 8 * v32 + 32) = v30;
        }

        while (v12 != v26);

        return v20;
      }

      __break(1u);
LABEL_54:
      v36 = v25;
      v37 = sub_192228340();
LABEL_31:
      v38 = MEMORY[0x1E69E7CC0];
      if (!v37)
      {
        break;
      }

      v52 = a2;
      v61 = MEMORY[0x1E69E7CC0];
      v39 = sub_19209AC60(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
        __break(1u);
LABEL_56:
        v60[0] = 0;
        v60[1] = 0xE000000000000000;
        v50 = v39;
        sub_192228400();
        MEMORY[0x193B0A990](0xD000000000000025, 0x800000019224F0C0);
        v59 = v50;
        type metadata accessor for CHSDisplayGamut(0);
        sub_1922285A0();
        result = sub_192228620();
        __break(1u);
        return result;
      }

      v40 = 0;
      v41 = v61;
      v42 = v36;
      v57 = v36 & 0xC000000000000001;
      v53 = *MEMORY[0x1E697DE20];
      v24 = v58 + 104;
      v55 = *MEMORY[0x1E697DE28];
      v54 = v58 + 32;
      v56 = v42;
      a2 = v37;
      while (1)
      {
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v57)
        {
          v44 = MEMORY[0x193B0B410](v40);
        }

        else
        {
          if (v40 >= *(v52 + 16))
          {
            goto LABEL_50;
          }

          v44 = *(v42 + 8 * v40 + 32);
        }

        v45 = v44;
        v39 = [v44 colorGamut];
        v46 = v55;
        if (v39)
        {
          v46 = v53;
          if (v39 != 1)
          {
            goto LABEL_56;
          }
        }

        (*v24)(v12, v46, v10);
        v61 = v41;
        v48 = *(v41 + 16);
        v47 = *(v41 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_19209AC60((v47 > 1), v48 + 1, 1);
          v41 = v61;
        }

        *(v41 + 16) = v48 + 1;
        (*(v58 + 32))(v41 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v48, v12, v10);
        ++v40;
        v42 = v56;
        if (v43 == a2)
        {

          v38 = MEMORY[0x1E69E7CC0];
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v12 = sub_192228340();
      if (!v12)
      {
        goto LABEL_52;
      }
    }

    v41 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v49 = *(v41 + 16);
    v60[0] = v38;
    sub_192085D4C(0, v49, 0);
    v20 = v60[0];

    if (!v49)
    {
      return v20;
    }

    goto LABEL_11;
  }

  v33 = swift_getKeyPath();
  v34 = MEMORY[0x193B0B270](a1, v33);

  if (v34)
  {
    v35 = swift_getKeyPath();
    v25 = sub_19206FF50(v35);

    if (v25)
    {
      a2 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v25 >> 62)
      {
        goto LABEL_54;
      }

      v36 = v25;
      v37 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_31;
    }

    return 0;
  }

  return sub_192066554(a1);
}

char *sub_192085C48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB90, &unk_19222AF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_192085D4C(char *a1, int64_t a2, char a3)
{
  result = sub_192085C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_192085D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_192225A40();
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922282D0();
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x193B0B270](a1, KeyPath);

  if (v14)
  {
    if (a3)
    {

      return sub_1921AF080(a3);
    }

    return 0;
  }

  v16 = swift_getKeyPath();
  v17 = MEMORY[0x193B0B270](a1, v16);

  if (v17)
  {
    if (!a4)
    {
      return 0;
    }

    return sub_1921AF098(a4);
  }

  else
  {
    v18 = swift_getKeyPath();
    v19 = MEMORY[0x193B0B270](a1, v18);

    if (v19)
    {
      if (a5)
      {
        v63[0] = MEMORY[0x1E69E7CC0];
        v20 = *(a5 + 16);
        sub_192228520();
        result = v63[0];
        if (!v20)
        {
          return result;
        }

LABEL_14:
      }

      return 0;
    }

    v21 = swift_getKeyPath();
    v22 = MEMORY[0x193B0B270](a1, v21);

    if ((v22 & 1) == 0)
    {
      v34 = swift_getKeyPath();
      v35 = MEMORY[0x193B0B270](a1, v34);

      if ((v35 & 1) == 0)
      {
        return sub_192066C3C(a1);
      }

      v36 = swift_getKeyPath();
      v25 = sub_19206FF50(v36);

      if (v25)
      {
        a2 = v25 & 0xFFFFFFFFFFFFFF8;
        if (v25 >> 62)
        {
          goto LABEL_59;
        }

        v37 = v25;
        v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_32;
      }

      return 0;
    }

    v23 = swift_getKeyPath();
    v10 = sub_19206FF50(v23);

    if (!v10)
    {
      return 0;
    }

    if (v10 >> 62)
    {
      goto LABEL_55;
    }

    v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      while (1)
      {
        v63[0] = MEMORY[0x1E69E7CC0];
        v25 = v63;
        sub_192085D4C(0, v24 & ~(v24 >> 63), 0);
        if ((v24 & 0x8000000000000000) == 0)
        {
          v26 = 0;
          v27 = v63[0];
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x193B0B410](v26, v10);
            }

            else
            {
              v28 = *(v10 + 8 * v26 + 32);
            }

            v29 = v28;
            [v28 scale];
            v31 = v30;

            v63[0] = v27;
            v33 = *(v27 + 16);
            v32 = *(v27 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_192085D4C((v32 > 1), v33 + 1, 1);
              v27 = v63[0];
            }

            ++v26;
            *(v27 + 16) = v33 + 1;
            *(v27 + 8 * v33 + 32) = v31;
          }

          while (v24 != v26);

          goto LABEL_57;
        }

        __break(1u);
LABEL_59:
        v37 = v25;
        v38 = sub_192228340();
LABEL_32:
        v39 = MEMORY[0x1E69E7CC0];
        if (!v38)
        {
          break;
        }

        v55 = a2;
        v64 = MEMORY[0x1E69E7CC0];
        v40 = sub_19209AC60(0, v38 & ~(v38 >> 63), 0);
        if (v38 < 0)
        {
          __break(1u);
LABEL_61:
          v63[0] = 0;
          v63[1] = 0xE000000000000000;
          v53 = v40;
          sub_192228400();
          MEMORY[0x193B0A990](0xD000000000000025, 0x800000019224F0C0);
          v62 = v53;
          type metadata accessor for CHSDisplayGamut(0);
          sub_1922285A0();
          result = sub_192228620();
          __break(1u);
          return result;
        }

        v41 = 0;
        v42 = v64;
        v43 = v37;
        v60 = v37 & 0xC000000000000001;
        v56 = *MEMORY[0x1E697DE20];
        v44 = (v61 + 104);
        v58 = *MEMORY[0x1E697DE28];
        v57 = v61 + 32;
        v59 = v43;
        a2 = v38;
        while (1)
        {
          v45 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v60)
          {
            v46 = MEMORY[0x193B0B410](v41);
          }

          else
          {
            if (v41 >= *(v55 + 16))
            {
              goto LABEL_54;
            }

            v46 = *(v43 + 8 * v41 + 32);
          }

          v47 = v46;
          v40 = [v46 colorGamut];
          v48 = v58;
          if (v40)
          {
            v48 = v56;
            if (v40 != 1)
            {
              goto LABEL_61;
            }
          }

          (*v44)(v12, v48, v10);
          v64 = v42;
          v50 = *(v42 + 16);
          v49 = *(v42 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_19209AC60((v49 > 1), v50 + 1, 1);
            v42 = v64;
          }

          *(v42 + 16) = v50 + 1;
          (*(v61 + 32))(v42 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v50, v12, v10);
          ++v41;
          v43 = v59;
          if (v45 == a2)
          {

            v39 = MEMORY[0x1E69E7CC0];
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v24 = sub_192228340();
        if (!v24)
        {
          goto LABEL_56;
        }
      }

      v42 = MEMORY[0x1E69E7CC0];
LABEL_50:
      v63[0] = v39;
      v51 = *(v42 + 16);
      sub_192228520();
      if (v51)
      {

        goto LABEL_14;
      }

      return v63[0];
    }

    else
    {
LABEL_56:

      v27 = MEMORY[0x1E69E7CC0];
LABEL_57:
      v52 = sub_1921AF240(v27);

      return v52;
    }
  }
}

uint64_t type metadata accessor for WidgetViewCollection(uint64_t a1)
{
  result = qword_1ED74B728;
  if (!qword_1ED74B728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19208646C(uint64_t a1)
{
  type metadata accessor for BundleStub(319);
  if (v1 <= 0x3F)
  {
    sub_192086610(319, &qword_1ED74B858, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_192086610(319, &qword_1ED74B7E0, MEMORY[0x1E6968130]);
      if (v3 <= 0x3F)
      {
        sub_192225150();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_192086610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_192086670(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t (*)(), uint64_t), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v21 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = sub_1922258B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a3, v11, v14);
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  (*(v12 + 32))(v18 + v16, v15, v11);
  (*(v8 + 32))(v18 + v17, v10, v7);

  v23(sub_1920B34E4, v18);

  return result;
}

uint64_t sub_1920868AC()
{
  v1 = sub_1922258B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_192086A18(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1922277F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  *v15 = sub_192228080();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v16 = sub_192227810();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = a4[3];
    v19 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v18);
    if (a3)
    {
      return (*(v19 + 32))(a5, a6, a1, a2, v18, v19);
    }

    else
    {
      return (*(v19 + 40))(a5, a6, a1, a2, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_192086BF4(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = [a1 intentReference];
  if (v9)
  {
    v10 = v9;
    v17 = [v9 _typedIntent];

    if (v17)
    {
      swift_getAssociatedTypeWitness();
      v11 = swift_dynamicCastUnknownClass();
      if (v11)
      {
        sub_192086E5C(a1, v4 + *(*v4 + 120), a2, v11, a3, a4);

        return;
      }
    }
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1922258B0();
  __swift_project_value_buffer(v12, qword_1ED74CCC8);
  v13 = sub_192225890();
  v14 = sub_192227F90();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_19202B8CC(0xD00000000000001ELL, 0x800000019224E950, &v18);
    _os_log_impl(&dword_192028000, v13, v14, "No intent in %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x193B0C7F0](v16, -1, -1);
    MEMORY[0x193B0C7F0](v15, -1, -1);
  }

  a3(0);
}

double sub_192086E5C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v38 = a4;
  v39 = a1;
  v37 = *v6;
  v9 = type metadata accessor for TimelineProviderContext(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v37 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  (*(v12 + 16))(&v32 - v16, a2, v11, v15);
  sub_192055544(a3, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v34 + 80) + v19 + 8) & ~*(v34 + 80);
  v34 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v11;
  v23 = v36;
  *(v22 + 24) = *(v37 + 88);
  v24 = v35;
  *(v22 + 40) = *(v23 + 104);
  (*(v12 + 32))(v22 + v18, v17, v11);
  v25 = v38;
  *(v22 + v19) = v38;
  sub_1920E07FC(v33, v22 + v20, type metadata accessor for TimelineProviderContext);
  *(v22 + v34) = v24;
  v26 = (v22 + v21);
  v27 = v41;
  *v26 = v40;
  v26[1] = v27;
  v28 = v39;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v29 = v25;

  v30 = v28;
  sub_1920873B4(sub_192087A5C, v22);

  return result;
}

uint64_t sub_192087140()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  v8 = v5[12];
  v9 = sub_192224EA0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v6 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_192087350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineProviderContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1920873B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_192227790();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    v12 = sub_192227CC0();
    MEMORY[0x1EEE9AC00](v12);
    *&v15[-16] = a1;
    *&v15[-8] = a2;
    sub_1920876A0(sub_192087B7C, &v15[-32], "WidgetKit/Concurrency.swift", 27, 2u, 15);
  }

  else
  {
    sub_19218B088();
    v13 = sub_192228080();
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_3;
    v14 = _Block_copy(aBlock);

    sub_192227740();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_19218B0D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19218B12C();
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1920876A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_192227CB0();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_192087838();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000003FLL, 0x800000019224CC20);
    v11 = sub_192228BD0();
    MEMORY[0x193B0A990](v11);

    MEMORY[0x193B0A990](46, 0xE100000000000000);
    sub_192228620();
    __break(1u);
  }
}

double sub_192087860(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v24 = a5;
  v25 = a2;
  v26 = a1;
  v11 = *a4;
  v12 = type metadata accessor for TimelineProviderContext(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192055544(a3, v15, type metadata accessor for TimelineProviderContext);
  v16 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v11[10];
  v17[2] = v18;
  v17[3] = v11[11];
  v19 = v11[12];
  v17[4] = v19;
  v17[5] = v11[13];
  v17[6] = a4;
  v17[7] = v24;
  v17[8] = a6;
  v17[9] = a7;
  sub_1920E07FC(v15, v17 + v16, type metadata accessor for TimelineProviderContext);
  v20 = *(v19 + 56);

  v21 = a7;
  v20(v25, a3, sub_1921F57C0, v17, v18, v19);

  return result;
}

double sub_192087A5C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v4 = (v2 + *(v3 + 80) + 8) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v2);
  v8 = *(v0 + v5);
  v9 = *(v0 + v6);
  v10 = *(v0 + v6 + 8);
  v11 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_192087860(v0 + v1, v7, v0 + v4, v8, v9, v10, v11);
}

uint64_t type metadata accessor for TimelineProviderContext(uint64_t a1)
{
  result = qword_1ED749D40;
  if (!qword_1ED749D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_192087C34(uint64_t a1)
{
  result = sub_192227C40();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimelineReloadPolicy(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MetadataGraphicView.init(_:alwaysTemplate:allowsCustomColors:colors:resizable:tint:symbolRenderingMode:allowSymbolEffects:contentTransition:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MetadataGraphicView(0);
  v17 = v16[5];
  v18 = sub_192226B70();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a9[v17], a1, v18);
  a9[v16[6]] = a2;
  if (a3)
  {
    if (!a6)
    {
LABEL_7:
      (*(v19 + 8))(a1, v18);
      goto LABEL_8;
    }
  }

  else if (!a6)
  {
    if (!a4)
    {
      (*(v19 + 8))(a1, v18);
      v21 = 0;
      a4 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18A0, &qword_19223D9E8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_19222B480;
  *(v20 + 32) = a6;
  (*(v19 + 8))(a1, v18);

  a4 = v20;
LABEL_8:
  v21 = a3 & 1;
LABEL_9:
  v22 = &a9[v16[7]];
  *v22 = a4;
  v22[8] = v21;
  a9[v16[8]] = a5 & 1;
  sub_19204E300(a7, &a9[v16[9]], &qword_1EADF1890, &qword_19223D9D8);
  a9[v16[10]] = a8 & 1;
  return sub_19204E300(a10, &a9[v16[11]], &qword_1EADF1898, &qword_19223D9E0);
}

uint64_t type metadata accessor for MetadataGraphicView(uint64_t a1)
{
  result = qword_1EADED8A0;
  if (!qword_1EADED8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit19MetadataGraphicViewV9ColorMode33_ACECC3C870493B19C8AB49227EB3D114LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192087F60(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

void *sub_192087F8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_192087FF0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_192088068(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192088088()
{
  MEMORY[0x193B0C8D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1920880C4()
{
  v1 = (type metadata accessor for ActivityArchiver(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 8));
  v3 = v1[8];
  v4 = sub_192225830();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[9];
  v6 = sub_192225800();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_192088210()
{
  v1 = sub_1922258B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_192225800();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1920883BC()
{

  return swift_deallocObject();
}

uint64_t sub_19208840C()
{

  return swift_deallocObject();
}

uint64_t sub_192088444()
{

  return swift_deallocObject();
}

uint64_t sub_1920884A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1920884E8()
{
  v1 = sub_192225800();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1920885D4()
{

  return swift_deallocObject();
}

uint64_t sub_19208861C()
{

  return swift_deallocObject();
}

uint64_t sub_1920886B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JindoViewStates.Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1922266C0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1920887A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for JindoViewStates.Metadata(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1922266C0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1920888AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ActivityMetricsDefinition(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1920889DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ActivityMetricsDefinition(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void *sub_192088C00@<X0>(_BYTE *a1@<X8>)
{
  sub_1920C86F0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192088CDC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = WidgetEnvironment.subscript.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_192088D48()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192088D98(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_192088ED4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_192089010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1920890D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_192089188()
{

  return swift_deallocObject();
}

uint64_t sub_1920891D0()
{

  return swift_deallocObject();
}

uint64_t sub_192089208()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1920892E8()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[12];
  v8 = sub_192224EA0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_192089500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_192089594()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[12];
  v8 = sub_192224EA0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1920897AC()
{

  return swift_deallocObject();
}

uint64_t sub_1920897E8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = (type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(*v4 + 80) + 48) & ~*(*v4 + 80);
  v6 = (((((*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for TimelineProviderContext(0);
  v16 = (*(*(v7 - 8) + 80) + v6 + 8) & ~*(*(v7 - 8) + 80);
  v8 = v0 + v5;

  v9 = v4[11];
  v10 = sub_192225150();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = *(v7 + 40);
  v13 = sub_192224EA0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v16 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v16 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_192089AC4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v6 = (*(*v5 + 80) + v4 + 8) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = v5[12];
  v8 = sub_192224EA0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_192089CF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_192225150();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for BundleStub(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for TimelineReloadPolicy(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[11];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_192089E68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_192225150();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for BundleStub(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for TimelineReloadPolicy(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[11];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_192089FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_19208A0A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_19208A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricsRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19208A264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MetricsRequest(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_19208A378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlTemplateButton.Option(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_19208A4B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ControlTemplateButton.Option(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_19208A5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_19208A6AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_19208A75C@<X0>(_BYTE *a1@<X8>)
{
  sub_192057834();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208A7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_19208A850()
{
  sub_192225C70();
  sub_1920F548C();
  return swift_getWitnessTable();
}

void *sub_19208A8B4@<X0>(_BYTE *a1@<X8>)
{
  sub_1920F74DC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208A954()
{
  sub_192225C70();
  sub_1920F72A8();
  return swift_getWitnessTable();
}

uint64_t sub_19208A9C0()
{
  type metadata accessor for CommonActivityArchivingModifiers(255);
  sub_192225C70();
  sub_1920F8D94(&qword_1EADED408, type metadata accessor for CommonActivityArchivingModifiers, &unk_192231640);
  return swift_getWitnessTable();
}

uint64_t sub_19208AA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricsRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_19208AB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MetricsRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void *sub_19208ABE8@<X0>(_BYTE *a1@<X8>)
{
  sub_1920F8CDC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208ACB4()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_19208AD5C()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v4 = *&v5[0];
  v5[1] = v1;
  v2 = *(type metadata accessor for RelevanceEntryProvider(0, v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_19208AE5C()
{

  return swift_deallocObject();
}

uint64_t sub_19208AEB4()
{
  v1 = sub_192226CC0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19208AF3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED8, &qword_192231E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19208AFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19208B090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19208B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19208B210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19208B2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19208B334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_19208B3A4@<X0>(void *a1@<X8>)
{
  sub_19206DB90();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208B44C()
{

  return swift_deallocObject();
}

uint64_t sub_19208B488@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF01D0;
  return result;
}

uint64_t sub_19208B4D4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF01D0 = v1;
  return result;
}

uint64_t sub_19208B51C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_1922253B0();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19208B5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  result = sub_1922253B0();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19208B6A0()
{

  return swift_deallocObject();
}

uint64_t sub_19208B700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19208B76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19208B83C()
{

  return swift_deallocObject();
}

uint64_t sub_19208B884()
{

  return swift_deallocObject();
}

uint64_t sub_19208B918()
{

  return swift_deallocObject();
}

uint64_t sub_19208B958()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 56) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_19208B9F0()
{

  return swift_deallocObject();
}

uint64_t sub_19208BBB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226160();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19208BC10@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADED1A0;
  return result;
}

uint64_t sub_19208BC5C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADED1A0 = v1;
  return result;
}

uint64_t sub_19208BCC0()
{
  v1 = sub_192226310();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19208BDAC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0470, &unk_192234400);
  sub_19211C75C(&qword_1EADEDE78, MEMORY[0x1E697DDC8]);
  sub_192225B80();
  sub_192225C70();
  sub_19211C75C(&qword_1EADEDE70, MEMORY[0x1E697DDD0]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19208BEB4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[12];
  v8 = sub_192224EA0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_ypSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19208C0C8()
{

  return swift_deallocObject();
}

uint64_t sub_19208C100()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0500, &qword_192234990);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19208C1D8()
{

  return swift_deallocObject();
}

uint64_t sub_19208C228()
{

  return swift_deallocObject();
}

uint64_t sub_19208C268()
{

  return swift_deallocObject();
}

uint64_t sub_19208C2B0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_19208C300()
{

  return swift_deallocObject();
}

uint64_t sub_19208C340()
{

  return swift_deallocObject();
}

uint64_t sub_19208C3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_19208C470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_19208C580()
{

  sub_19212B414(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_19208C5E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06B8, &qword_192235228);
  sub_192225C70();
  swift_getTupleTypeMetadata3();
  sub_192227660();
  swift_getWitnessTable();
  sub_192227520();

  return swift_getWitnessTable();
}

uint64_t sub_19208C6C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06C8, &qword_192235230);
  sub_192031E74(&qword_1EADF06E0, &qword_1EADF06C8, &qword_192235230, MEMORY[0x1E697D658]);
  sub_1921322BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19208C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = sub_192226C60();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_19208C8B0()
{
  type metadata accessor for WidgetURLModifier(255);
  sub_192225C70();
  type metadata accessor for WidgetURLMetadataModifier(255);
  sub_192225C70();
  sub_19203F924(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier, &protocol conformance descriptor for WidgetURLModifier);
  swift_getWitnessTable();
  sub_19203F924(&unk_1ED749C30, type metadata accessor for WidgetURLMetadataModifier, &unk_1922356A0);
  return swift_getWitnessTable();
}

uint64_t sub_19208C9C0()
{
  type metadata accessor for WidgetURLModifier(255);
  sub_192225C70();
  sub_19203F924(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier, &protocol conformance descriptor for WidgetURLModifier);
  return swift_getWitnessTable();
}

uint64_t sub_19208CA68()
{
  sub_192225C70();
  sub_19213415C();
  return swift_getWitnessTable();
}

uint64_t sub_19208CAEC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_192225830();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_192225800();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_19208CC10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_192225830();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_192225800();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19208CD3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0908, &qword_192235BB0);
  sub_19213925C();
  sub_1921392E8();
  return swift_getOpaqueTypeConformance2();
}

void *sub_19208CDB4@<X0>(_BYTE *a1@<X8>)
{
  sub_1920405C0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void *sub_19208CE50@<X0>(uint64_t a1@<X8>)
{
  sub_192041274();
  result = sub_1922261E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_19208CEA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4[0] = *a1;
  v5 = v2;
  return EnvironmentValues._widgetRenderScheme.setter(v4, a2);
}

void *sub_19208CEE8@<X0>(void *a1@<X8>)
{
  sub_192101EC4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208CF3C()
{
  sub_192225C70();
  sub_1920B3430();
  return swift_getWitnessTable();
}

uint64_t sub_19208D230()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_19208D338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19208D3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_19208D464@<X0>(_BYTE *a1@<X8>)
{
  sub_192143E60();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208D564()
{

  return swift_deallocObject();
}

uint64_t sub_19208D604()
{

  return swift_deallocObject();
}

uint64_t sub_19208D63C()
{
  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_19208D68C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_19208D6D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_19208D718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_19208D790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19208D844(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_19208D900@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_19208D96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225360();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ActivityMetricsDefinition(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_19208DA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_192225360();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ActivityMetricsDefinition(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void *sub_19208DB88@<X0>(void *a1@<X8>)
{
  sub_19204149C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208DBE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F78, &qword_192238598);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F80, &qword_1922385A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[14];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[15];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[19]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_192225300();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[21];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_19208DE14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F78, &qword_192238598);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F80, &qword_1922385A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F88, &qword_1922385A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0F90, &unk_1922385B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[15];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[19]) = (a2 - 1);
  }

  else
  {
    v16 = sub_192225300();
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[21];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_19208E048(uint64_t *a1)
{
  type metadata accessor for _ClockHandRotationEffect(255);
  sub_192225C70();
  sub_1922266F0();
  sub_19203FFCC(&qword_1ED748730, type metadata accessor for _ClockHandRotationEffect, &protocol conformance descriptor for _ClockHandRotationEffect);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19208E12C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_19208E164()
{

  return swift_deallocObject();
}

uint64_t sub_19208E1E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1922261A0();
  *a1 = result & 1;
  return result;
}

void *sub_19208E260@<X0>(_BYTE *a1@<X8>)
{
  sub_19215EDB0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225360();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19208E3C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225360();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_19208E488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleStub(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_192225150();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_19208E5AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BundleStub(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_192225150();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_19208E6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlArchiveStorageMetadata(0);
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

uint64_t sub_19208E78C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ControlArchiveStorageMetadata(0);
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

uint64_t sub_19208E854()
{

  return swift_deallocObject();
}

uint64_t sub_19208E89C()
{

  return swift_deallocObject();
}

uint64_t sub_19208E8D4()
{

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_19208E98C()
{

  return swift_deallocObject();
}

uint64_t sub_19208E9C4()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_19208EA34()
{

  return swift_deallocObject();
}

uint64_t sub_19208EA6C()
{

  return swift_deallocObject();
}

uint64_t sub_19208EAD8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1240;
  return result;
}

uint64_t sub_19208EB24(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF1240 = v1;
  return result;
}

uint64_t sub_19208EBB8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1248;
  return result;
}

uint64_t sub_19208EC04(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF1248 = v1;
  return result;
}

void *sub_19208EC4C@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F23C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MetricsRequest(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_19208ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MetricsRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

double sub_19208EE0C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19208EE18()
{

  return swift_deallocObject();
}

void *sub_19208EE50@<X0>(_BYTE *a1@<X8>)
{
  sub_19216F7A4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void *sub_19208EEEC@<X0>(void *a1@<X8>)
{
  sub_1921704A4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208EFB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_19208F044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225150();
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

uint64_t sub_19208F100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
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

uint64_t sub_19208F1D8()
{

  return swift_deallocObject();
}

uint64_t sub_19208F218()
{

  return swift_deallocObject();
}

uint64_t sub_19208F260()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1458, &qword_19223B6E8);
  sub_192225C70();
  sub_192031E74(&qword_1EADF1460, &qword_1EADF1458, &qword_19223B6E8, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

void *sub_19208F310@<X0>(_BYTE *a1@<X8>)
{
  sub_19205337C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19208F3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14E8, &qword_19223BCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19208F424@<X0>(uint64_t a1@<X8>)
{
  result = sub_192226140();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_19208F4B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1528, &qword_19223BDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19208F518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1922260C0();
  *a1 = result;
  return result;
}

uint64_t sub_19208F5B4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_19208F670(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19208F720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityMetricsDefinition(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19208F850(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityMetricsDefinition(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19208F994()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_19208F9F4()
{
  v1 = *(v0 + 48);
  v2 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v10 = *(*v2 + 64);
  v3 = (*(*v2 + 80) + 152) & ~*(*v2 + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v2[12];
  v7 = sub_192224EA0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  (*(v4 + 8))(v0 + ((v3 + v10 + v5) & ~v5), v1);

  return swift_deallocObject();
}

uint64_t sub_19208FC1C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF17F0;
  return result;
}

uint64_t sub_19208FC68(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF17F0 = v1;
  return result;
}

uint64_t sub_19208FCB8(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1922266F0();
  sub_1922266F0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19208FE88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ActivityMetricsDefinition(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_19208FF34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityMetricsDefinition(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19208FFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1920900A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_192090164()
{
  sub_192226BC0();
  sub_192225C70();
  sub_1921936F0();
  return swift_getWitnessTable();
}

uint64_t sub_192090214(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_192226B70();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483645)
  {
    v15 = *(a1 + a3[7]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    v17 = v16 <= 0;
    if (v16 < 0)
    {
      v16 = -1;
    }

    if (v17)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1890, &qword_19223D9D8);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1898, &qword_19223D9E0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[11];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_192090404(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_192226B70();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483645)
  {
    *(a1 + a4[7]) = (a2 + 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1890, &qword_19223D9D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1898, &qword_19223D9E0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_192090614()
{

  return swift_deallocObject();
}

uint64_t sub_192090694()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_192090784()
{
  v1 = *(*(v0 + 40) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192090844()
{

  return swift_deallocObject();
}

uint64_t sub_19209088C()
{

  return swift_deallocObject();
}

uint64_t sub_1920908F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226B30();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_192090960(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226B30();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_192090A48@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F2E0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192090AE8()
{
  sub_192225C70();
  sub_192040D40();
  return swift_getWitnessTable();
}

uint64_t sub_192090CC4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1AD0;
  return result;
}

uint64_t sub_192090D10(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF1AD0 = v1;
  return result;
}

void *sub_192090D58@<X0>(_BYTE *a1@<X8>)
{
  sub_1920412C8();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192090ED4()
{
  sub_1920498A4();
  sub_19213AE5C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_192090F1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AE8, &qword_19223F940);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AE0, &qword_19223F938);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1AF8, &qword_19223F9A0);
  sub_1921B96F0(&qword_1ED749FE0, &qword_1EADF1AE0, &qword_19223F938, sub_1921B94FC);
  sub_1921B9640();
  swift_getOpaqueTypeConformance2();
  sub_19207AD50();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192091050@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1921BAA84;
  a2[1] = v5;
}

uint64_t sub_1920910C0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1921BAA84;
  a2[1] = v5;
}

uint64_t sub_192091130()
{

  return swift_deallocObject();
}

uint64_t sub_192091184(uint64_t *a1)
{
  sub_192225C70();
  sub_1922266F0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_192091240()
{

  return swift_deallocObject();
}

uint64_t sub_1920912BC()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_192039140(*(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_19209131C()
{

  return swift_deallocObject();
}

uint64_t sub_19209136C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1920914F4()
{
  sub_192225C70();
  sub_1921C9904();
  return swift_getWitnessTable();
}

uint64_t sub_192091578()
{

  return swift_deallocObject();
}

uint64_t sub_1920915B8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ED74B5B8;
  return result;
}

uint64_t sub_192091604(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ED74B5B8 = v1;
  return result;
}

uint64_t sub_19209164C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1920916D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_192227DA0();
}

uint64_t sub_192091754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

__n128 sub_1920917EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_192091800(uint64_t a1)
{
  sub_192226CF0();
  sub_192225C70();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_192091894()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADF1C90, &unk_192240D40);
  sub_192225C70();
  sub_1921D12FC();
  return swift_getWitnessTable();
}

uint64_t sub_19209190C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADF1C90, &unk_192240D40);
  sub_192225C70();
  sub_1921D12FC();
  return swift_getWitnessTable();
}

uint64_t sub_192091988()
{

  return swift_deallocObject();
}

uint64_t sub_1920919C0()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_192091A5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225F00();
  *a1 = result;
  return result;
}

uint64_t sub_192091B00()
{
  sub_192227580();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1E40, &qword_1922416D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1E48, &qword_1922416D8);
  sub_1921D69BC();
  sub_1921D6A14();
  sub_192031E74(&qword_1EADF1E70, &qword_1EADF1E48, &qword_1922416D8, MEMORY[0x1E697E160]);
  return swift_getOpaqueTypeConformance2();
}

void *sub_192091C04@<X0>(_BYTE *a1@<X8>)
{
  sub_1921DAC8C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192091CAC()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192091D04()
{

  if (*(v0 + 104))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_192091D68()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192091DC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD68, &qword_1922360C0);
  sub_192225C70();
  sub_1921E0C34();
  return swift_getWitnessTable();
}

uint64_t sub_192091E48(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1922253B0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_192091EF4(void *result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1922253B0();
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_192091F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192226BA0();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_192092068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192226BA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_192092124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192226BA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1920921F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192226BA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1920922B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2150, &unk_192243180);
  sub_1921E6DE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_192092314()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_19209236C()
{

  if (*(v0 + 104))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_1920923D0()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192092428()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1920924F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19209258C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_192092680()
{

  return swift_deallocObject();
}

uint64_t sub_1920926C0(_OWORD *a1)
{
  v1 = *(a1 + 24);
  v6[0] = *a1;
  v6[1] = v1;
  v2 = type metadata accessor for ControlWidgetToggleTemplateProvider(255, v6);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TemplateDescriptorPreference(255, v2, WitnessTable, v4);
  return swift_getWitnessTable();
}

uint64_t sub_1920927A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_192092834()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[12];
  v8 = sub_192224EA0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_192092A4C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = (type metadata accessor for Timeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(*v4 + 80) + 48) & ~*(*v4 + 80);
  v6 = (((((*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for TimelineProviderContext(0);
  v16 = (*(*(v7 - 8) + 80) + v6 + 8) & ~*(*(v7 - 8) + 80);
  v8 = v0 + v5;

  v9 = v4[11];
  v10 = sub_192225150();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = *(v7 + 40);
  v13 = sub_192224EA0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v16 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v16 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_192092D28()
{
  v1 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[12];
  v5 = sub_192224EA0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_192092EA8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v6 = (*(*v5 + 80) + v4 + 8) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = v5[12];
  v8 = sub_192224EA0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1920930F0()
{

  return swift_deallocObject();
}

uint64_t sub_192093130()
{

  return swift_deallocObject();
}

uint64_t sub_1920931C4()
{

  return swift_deallocObject();
}

uint64_t sub_1920931FC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1920932B8()
{

  return swift_deallocObject();
}

uint64_t sub_1920932F8()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_192093378(_OWORD *a1)
{
  v1 = *(a1 + 24);
  v6[0] = *a1;
  v6[1] = v1;
  v2 = type metadata accessor for ControlWidgetButtonTemplateProvider(255, v6);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TemplateDescriptorPreference(255, v2, WitnessTable, v4);
  return swift_getWitnessTable();
}

__n128 sub_192093444(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1920934A4()
{
  type metadata accessor for _ActivityBackgroundTintModifier(255);
  sub_192225C70();
  sub_1921F92C8();
  return swift_getWitnessTable();
}

uint64_t sub_192093510(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1920935D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19209368C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1922251B0();
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

uint64_t sub_192093748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1922251B0();
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

uint64_t sub_192093800(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ActivityMetricsDefinition(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_192093984(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ActivityMetricsDefinition(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_192093B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ControlTemplateToggle.Option(0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_192093C4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for ControlTemplateToggle.Option(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_192093D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_192093E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_192093EF4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TimelineReloadPolicy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_192093FA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimelineReloadPolicy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_192094044()
{
  type metadata accessor for _ActivitySystemActionForegroundColorModifier(255);
  sub_192225C70();
  sub_192204064();
  return swift_getWitnessTable();
}

uint64_t sub_1920940B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_192094184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_19209425C()
{

  return swift_deallocObject();
}

uint64_t sub_192094308@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2660;
  return result;
}

uint64_t sub_192094354(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2660 = v1;
  return result;
}

void *sub_192094448@<X0>(_BYTE *a1@<X8>)
{
  sub_19220AF00();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1920944E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF78, &qword_192231FD0);
  sub_192225C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF18, &qword_192231E70);
  sub_192225C70();
  sub_192225C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
  sub_192206600();
  sub_192226870();
  sub_192227360();
  sub_192225C70();
  swift_getTupleTypeMetadata2();
  sub_192227660();
  swift_getWitnessTable();
  sub_192227540();
  sub_192225C70();
  sub_192225C70();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_192209F10();
  return swift_getWitnessTable();
}

uint64_t sub_1920946BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF27D0, &qword_192245970);
  sub_192225C70();
  sub_192031E74(qword_1EADF27D8, &qword_1EADF27D0, &qword_192245970, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_192094768()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for AccessoryWidgetGroup(0, &v7) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v6 - 8) + 8))(v4 + v3[15]);
  sub_19209561C(*(v4 + v3[16]), *(v4 + v3[16] + 8));
  sub_192049898(*(v4 + v3[17]), *(v4 + v3[17] + 8));
  sub_192049898(*(v4 + v3[18]), *(v4 + v3[18] + 8));
  return swift_deallocObject();
}

uint64_t sub_1920948D4(void *a1)
{
  swift_getTupleTypeMetadata();
  sub_192227660();
  swift_getWitnessTable();
  sub_192227520();
  return swift_getWitnessTable();
}

uint64_t sub_192094988()
{

  return swift_deallocObject();
}

uint64_t sub_1920949D4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2970;
  return result;
}

uint64_t sub_192094A20(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2970 = v1;
  return result;
}

uint64_t sub_192094A68@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2971;
  return result;
}

uint64_t sub_192094AB4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2971 = v1;
  return result;
}

uint64_t sub_192094AFC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2972;
  return result;
}

uint64_t sub_192094B48(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2972 = v1;
  return result;
}

uint64_t sub_192094BA0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Timeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  v4 = sub_192227CA0();
  (*(*(v4 - 8) + 8))(v0 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);

  return swift_deallocObject();
}

uint64_t sub_192094C9C()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_192227CA0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_192094D54()
{

  return swift_deallocObject();
}

uint64_t sub_192094D94()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192094DEC()
{

  return swift_deallocObject();
}

uint64_t sub_192094E2C()
{

  return swift_deallocObject();
}

uint64_t sub_192094F30()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_192094FB8()
{

  return swift_deallocObject();
}

uint64_t sub_192094FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1922266C0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_192095154(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1922266C0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_192095320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_192095398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19209546C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_192095528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_19209561C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_192095628@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_192095660()
{
  v1 = *(v0 + 16);

  return v1;
}

id WidgetViewCollection.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t WidgetViewCollection.dateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_19202CFFC(v1 + v9, v8, &qword_1EADEE9F0, &qword_19222A7A0);
  v10 = sub_192224E00();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_192033970(v8, &qword_1EADEE9F0, &qword_19222A7A0);
  sub_192095E30(v1, a1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_192096378(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_192095B74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_192224E00();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = *a2;
  (*(v8 + 32))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v13 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v6, v12 + v13);
  return swift_endAccess();
}

uint64_t WidgetViewCollection.dateRange.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_192224E00();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v5, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_192095E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = sub_192225150();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v48 = a1;

  v22 = sub_19204E3C0(v21, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  if (*(v22 + 16))
  {
    v46 = v20;
    v47 = a2;
    v43 = v6;
    sub_192033A64(v22 + 32, v49);

    v23 = v50;
    v24 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v24 + 8))(v23, v24);
    v25 = v11[7];
    v25(v9, 0, 1, v10);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v26 = v11[6];
    if (v26(v9, 1, v10) != 1)
    {
      v41 = v26;
      v42 = v25;
      v27 = v46;
      v39 = v11[4];
      v40 = v11 + 4;
      v39(v46, v9, v10);

      v29 = sub_19204E3C0(v28, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

      v30 = *(v29 + 16);
      if (v30)
      {
        sub_192033A64(v29 + 40 * v30 - 8, v49);

        v31 = v50;
        v32 = v51;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        v9 = v43;
        (*(v32 + 8))(v31, v32);
        v42(v9, 0, 1, v10);
        __swift_destroy_boxed_opaque_existential_1(v49);
        if (v41(v9, 1, v10) != 1)
        {
          v34 = v44;
          v39(v44, v9, v10);
          v35 = v11[2];
          v36 = v46;
          v35(v15, v46, v10);
          v35(v45, v34, v10);
          sub_192224DD0();
          v37 = v11[1];
          v37(v34, v10);
          return (v37)(v36, v10);
        }

        (v11[1])(v46, v10);
      }

      else
      {

        (v11[1])(v27, v10);
        v9 = v43;
        v42(v43, 1, 1, v10);
      }
    }
  }

  else
  {

    (v11[7])(v9, 1, 1, v10);
  }

  sub_192033970(v9, &qword_1EADEED10, &unk_19222B0F0);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  return sub_192224DE0();
}

uint64_t sub_192096378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WidgetViewCollection.entries.getter()
{

  v1 = sub_19204E3C0(v0, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  return v1;
}

void (*WidgetViewCollection.dateRange.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_192224E00();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  WidgetViewCollection.dateRange.getter(v10);
  return sub_192096590;
}

void sub_192096590(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void WidgetViewCollection.metrics.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_192066C60(KeyPath, &unk_1EADEED00, &qword_19222D9C0, &qword_1ED74BD10, 0x1E69943F0);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  if (!sub_192228340())
  {
    goto LABEL_9;
  }

LABEL_4:

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_10:
    MEMORY[0x193B0B410](0, v2);
    goto LABEL_7;
  }

  if (*(v3 + 16))
  {
    v4 = *(v2 + 32);
LABEL_7:

    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t WidgetViewCollection.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  swift_beginAccess();
  v4 = sub_192225150();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void *sub_1920968C8(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v3 = sub_192228340();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_19209AD70(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x193B0B410](v6, a1);
        v17 = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_19209AD70((v8 > 1), v9 + 1, 1);
          v4 = v17;
        }

        ++v6;
        v15 = type metadata accessor for ElevatedMemoryRequestAssertion();
        v16 = &protocol witness table for ElevatedMemoryRequestAssertion;
        *&v14 = v7;
        *(v4 + 16) = v9 + 1;
        sub_19203832C(&v14, v4 + 40 * v9 + 32);
      }

      while (v3 != v6);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        v17 = v4;
        v12 = *(v4 + 16);
        v13 = *(v4 + 24);

        if (v12 >= v13 >> 1)
        {
          sub_19209AD70((v13 > 1), v12 + 1, 1);
          v4 = v17;
        }

        v15 = type metadata accessor for ElevatedMemoryRequestAssertion();
        v16 = &protocol witness table for ElevatedMemoryRequestAssertion;
        *&v14 = v11;
        *(v4 + 16) = v12 + 1;
        sub_19203832C(&v14, v4 + 40 * v12 + 32);
        ++v10;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t WidgetViewCollection.copyWithoutRenderData()@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = &protocol witness table for WidgetViewCollection;
  *a1 = v1;
}

uint64_t WidgetViewCollection.__allocating_init(widget:environment:entries:reloadPolicy:shouldSortAndDedupeEntries:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v112) = a5;
  v90 = a4;
  v97 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v86 - v22;
  v23 = type metadata accessor for ViewableTimelineEntry(0);
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v96 = &v86 - v28;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v111);
  v109 = (&v86 - v29);
  v30 = sub_192225150();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v6;
  v37 = swift_allocObject();
  v87 = *a2;
  v38 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v39 = sub_192224E00();
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  v89 = a1;
  BundleStub.init(_:)([a1 extensionIdentity], v36);
  sub_19203CFC0(v36, v37 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v40 = *(v31 + 32);
  v88 = v37;
  v40(v37 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v33, v30);
  if ((v112 & 1) == 0)
  {
LABEL_45:
    v81 = v88;
    *(v88 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v97;
    *(v81 + 16) = v87;
    *(v81 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v89;
    v82 = v90;
    sub_19204E6EC(v90, v81 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v83 = byte_1ED74B5B8;
    sub_192046EE8(v82, type metadata accessor for TimelineReloadPolicy);
    *(v81 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v83;
    *(v81 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v81;
  }

  v113 = v97;

  sub_19209B0C4(&v113);
  v105 = v17;

  v41 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v41;
  *(inited + 24) = 0;
  v44 = v100 + 56;
  v43 = *(v100 + 56);
  v92 = *(v100 + 80);
  v45 = (v92 + 32) & ~v92;
  v97 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0] + v45;
  v46 = v109;
  v108 = *(v111 + 32);
  v111 = v43;
  v43(v109 + v108, 1, 1, v23);
  *v46 = inited;
  v46[1] = sub_1920DA3A8;
  v46[2] = 0;
  v104 = v41;
  v91 = v45;
  v98 = v41 + v45;
  v112 = v44;
  v47 = (v44 - 8);
  v99 = inited;

  v95 = 0;
  v48 = 0;
  v49 = v103;
  v110 = v23;
  while (2)
  {
    (v111)(v20, 1, 1, v23);
    while (1)
    {
      v50 = *(v104 + 16);
      if (v48 == v50)
      {
        v51 = 1;
        v52 = v106;
        v53 = v107;
        v54 = v105;
      }

      else
      {
        v52 = v106;
        v53 = v107;
        v54 = v105;
        if (v48 >= v50)
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_19204E6EC(v98 + *(v100 + 72) * v48, v105, type metadata accessor for ViewableTimelineEntry);
        v51 = 0;
        *(v99 + 24) = ++v48;
      }

      v55 = v110;
      (v111)(v54, v51, 1, v110);
      sub_192033970(v20, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19204E300(v54, v20, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v20, v52, &qword_1EADEE9F8, &unk_19222A7D0);
      v56 = *v47;
      if ((*v47)(v52, 1, v55) == 1)
      {
        break;
      }

      sub_192033970(v52, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v20, v53, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v56(v53, 1, v55) == 1)
      {
        v61 = v53;
        goto LABEL_16;
      }

      v57 = v53;
      v58 = v102;
      sub_19203CFC0(v57, v102, type metadata accessor for ViewableTimelineEntry);
      sub_19202CFFC(v109 + v108, v49, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v56(v49, 1, v55) == 1)
      {
        sub_192046EE8(v58, type metadata accessor for ViewableTimelineEntry);
        v61 = v49;
        goto LABEL_16;
      }

      v59 = v101;
      sub_19203CFC0(v49, v101, type metadata accessor for ViewableTimelineEntry);
      v60 = sub_192225120();
      sub_192046EE8(v59, type metadata accessor for ViewableTimelineEntry);
      v49 = v103;
      sub_192046EE8(v58, type metadata accessor for ViewableTimelineEntry);
      if ((v60 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v61 = v52;
LABEL_16:
    sub_192033970(v61, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v20, v109 + v108);
    v52 = v93;
    sub_19204E300(v20, v93, &qword_1EADEE9F8, &unk_19222A7D0);
    v23 = v110;
    if (v56(v52, 1, v110) != 1)
    {
      sub_19203CFC0(v52, v96, type metadata accessor for ViewableTimelineEntry);
      v52 = v95;
      if (v95)
      {
        v62 = v97;
        v63 = v94;
        v52 = v95 - 1;
        if (!__OFSUB__(v95, 1))
        {
          goto LABEL_40;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v64 = v97[3];
      if (((v64 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v65 = v64 & 0xFFFFFFFFFFFFFFFELL;
      if (v65 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v65;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v52 = *(v100 + 72);
      v66 = v91;
      v62 = swift_allocObject();
      v67 = _swift_stdlib_malloc_size(v62);
      if (!v52)
      {
        goto LABEL_49;
      }

      v68 = v67 - v66;
      if (v67 - v66 == 0x8000000000000000 && v52 == -1)
      {
        goto LABEL_50;
      }

      v70 = v68 / v52;
      v62[2] = v49;
      v62[3] = 2 * (v68 / v52);
      v71 = v62 + v66;
      v72 = v97;
      v73 = v97[3] >> 1;
      v74 = v73 * v52;
      v49 = v103;
      if (!v97[2])
      {
LABEL_39:
        v63 = &v71[v74];
        v76 = (v70 & 0x7FFFFFFFFFFFFFFFLL) - v73;

        v77 = __OFSUB__(v76, 1);
        v52 = v76 - 1;
        if (!v77)
        {
LABEL_40:
          v95 = v52;
          sub_19203CFC0(v96, v63, type metadata accessor for ViewableTimelineEntry);
          v94 = v63 + *(v100 + 72);
          v97 = v62;
          continue;
        }

        goto LABEL_47;
      }

      if (v62 < v97 || v71 >= v97 + v66 + v74)
      {
        v75 = v97[3] >> 1;
        v94 = v70;
        v95 = v71;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v62 == v97)
        {
LABEL_38:
          v72[2] = 0;
          goto LABEL_39;
        }

        v75 = v97[3] >> 1;
        v94 = v70;
        v95 = v71;
        swift_arrayInitWithTakeBackToFront();
      }

      v73 = v75;
      v71 = v95;
      v70 = v94;
      v72 = v97;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v109, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v52, &qword_1EADEE9F8, &unk_19222A7D0);
  v78 = v97[3];
  if (v78 < 2)
  {
LABEL_44:
    swift_setDeallocating();

    goto LABEL_45;
  }

  v79 = v78 >> 1;
  v77 = __OFSUB__(v79, v95);
  v80 = v79 - v95;
  if (!v77)
  {
    v97[2] = v80;
    goto LABEL_44;
  }

LABEL_51:
  __break(1u);

  v85 = v88;
  sub_192046EE8(v88 + v52, type metadata accessor for BundleStub);
  sub_192033970(v85 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v49 + 8))(v85 + *(v48 + 3024), &unk_19222A7D0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void *WidgetViewCollection.init(widget:environment:entries:reloadPolicy:shouldSortAndDedupeEntries:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, int a5)
{
  LODWORD(v110) = a5;
  v87 = a4;
  v95 = a3;
  v106 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v84 - v21;
  v22 = type metadata accessor for ViewableTimelineEntry(0);
  v98 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v84 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v109);
  v107 = (&v84 - v28);
  v29 = sub_192225150();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *a2;
  v36 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v37 = sub_192224E00();
  (*(*(v37 - 8) + 56))(&v5[v36], 1, 1, v37);
  v86 = a1;
  BundleStub.init(_:)([a1 extensionIdentity], v35);
  sub_19203CFC0(v35, &v5[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle], type metadata accessor for BundleStub);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v38 = *(v30 + 32);
  v88 = v5;
  v38(&v5[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate], v32, v29);
  if ((v110 & 1) == 0)
  {
LABEL_45:
    v79 = v88;
    *(v88 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v95;
    v79[2] = v85;
    *(v79 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v86;
    v80 = v87;
    sub_19204E6EC(v87, v79 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v81 = byte_1ED74B5B8;
    sub_192046EE8(v80, type metadata accessor for TimelineReloadPolicy);
    *(v79 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v81;
    *(v79 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v79;
  }

  v111 = v95;

  sub_19209B0C4(&v111);
  v103 = v16;

  v39 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v39;
  *(inited + 24) = 0;
  v42 = v98 + 56;
  v41 = *(v98 + 56);
  v90 = *(v98 + 80);
  v43 = (v90 + 32) & ~v90;
  v95 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0] + v43;
  v44 = v107;
  v106 = *(v109 + 32);
  v109 = v41;
  v41(v107 + v106, 1, 1, v22);
  *v44 = inited;
  v44[1] = sub_1920DA3A8;
  v44[2] = 0;
  v102 = v39;
  v89 = v43;
  v96 = v39 + v43;
  v110 = v42;
  v45 = (v42 - 8);
  v97 = inited;

  v93 = 0;
  v46 = 0;
  v47 = v101;
  v108 = v22;
  while (2)
  {
    (v109)(v19, 1, 1, v22);
    while (1)
    {
      v48 = *(v102 + 16);
      if (v46 == v48)
      {
        v49 = 1;
        v50 = v104;
        v51 = v105;
        v52 = v103;
      }

      else
      {
        v50 = v104;
        v51 = v105;
        v52 = v103;
        if (v46 >= v48)
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_19204E6EC(v96 + *(v98 + 72) * v46, v103, type metadata accessor for ViewableTimelineEntry);
        v49 = 0;
        *(v97 + 24) = ++v46;
      }

      v53 = v108;
      (v109)(v52, v49, 1, v108);
      sub_192033970(v19, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19204E300(v52, v19, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v19, v50, &qword_1EADEE9F8, &unk_19222A7D0);
      v54 = *v45;
      if ((*v45)(v50, 1, v53) == 1)
      {
        break;
      }

      sub_192033970(v50, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v19, v51, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v54(v51, 1, v53) == 1)
      {
        v59 = v51;
        goto LABEL_16;
      }

      v55 = v51;
      v56 = v100;
      sub_19203CFC0(v55, v100, type metadata accessor for ViewableTimelineEntry);
      sub_19202CFFC(v107 + v106, v47, &qword_1EADEE9F8, &unk_19222A7D0);
      if (v54(v47, 1, v53) == 1)
      {
        sub_192046EE8(v56, type metadata accessor for ViewableTimelineEntry);
        v59 = v47;
        goto LABEL_16;
      }

      v57 = v99;
      sub_19203CFC0(v47, v99, type metadata accessor for ViewableTimelineEntry);
      v58 = sub_192225120();
      sub_192046EE8(v57, type metadata accessor for ViewableTimelineEntry);
      v47 = v101;
      sub_192046EE8(v56, type metadata accessor for ViewableTimelineEntry);
      if ((v58 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v59 = v50;
LABEL_16:
    sub_192033970(v59, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v19, v107 + v106);
    v50 = v91;
    sub_19204E300(v19, v91, &qword_1EADEE9F8, &unk_19222A7D0);
    v22 = v108;
    if (v54(v50, 1, v108) != 1)
    {
      sub_19203CFC0(v50, v94, type metadata accessor for ViewableTimelineEntry);
      v50 = v93;
      if (v93)
      {
        v60 = v95;
        v61 = v92;
        v50 = v93 - 1;
        if (!__OFSUB__(v93, 1))
        {
          goto LABEL_40;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v62 = v95[3];
      if (((v62 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v63 = v62 & 0xFFFFFFFFFFFFFFFELL;
      if (v63 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v63;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v50 = *(v98 + 72);
      v64 = v89;
      v60 = swift_allocObject();
      v65 = _swift_stdlib_malloc_size(v60);
      if (!v50)
      {
        goto LABEL_49;
      }

      v66 = v65 - v64;
      if (v65 - v64 == 0x8000000000000000 && v50 == -1)
      {
        goto LABEL_50;
      }

      v68 = v66 / v50;
      v60[2] = v47;
      v60[3] = 2 * (v66 / v50);
      v69 = v60 + v64;
      v70 = v95;
      v71 = v95[3] >> 1;
      v72 = v71 * v50;
      v47 = v101;
      if (!v95[2])
      {
LABEL_39:
        v61 = &v69[v72];
        v74 = (v68 & 0x7FFFFFFFFFFFFFFFLL) - v71;

        v75 = __OFSUB__(v74, 1);
        v50 = v74 - 1;
        if (!v75)
        {
LABEL_40:
          v93 = v50;
          sub_19203CFC0(v94, v61, type metadata accessor for ViewableTimelineEntry);
          v92 = v61 + *(v98 + 72);
          v95 = v60;
          continue;
        }

        goto LABEL_47;
      }

      if (v60 < v95 || v69 >= v95 + v64 + v72)
      {
        v73 = v95[3] >> 1;
        v92 = v68;
        v93 = v69;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v60 == v95)
        {
LABEL_38:
          v70[2] = 0;
          goto LABEL_39;
        }

        v73 = v95[3] >> 1;
        v92 = v68;
        v93 = v69;
        swift_arrayInitWithTakeBackToFront();
      }

      v71 = v73;
      v69 = v93;
      v68 = v92;
      v70 = v95;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v107, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v50, &qword_1EADEE9F8, &unk_19222A7D0);
  v76 = v95[3];
  if (v76 < 2)
  {
LABEL_44:
    swift_setDeallocating();

    goto LABEL_45;
  }

  v77 = v76 >> 1;
  v75 = __OFSUB__(v77, v93);
  v78 = v77 - v93;
  if (!v75)
  {
    v95[2] = v78;
    goto LABEL_44;
  }

LABEL_51:
  __break(1u);

  v83 = v88;
  sub_192046EE8(v88 + v50, type metadata accessor for BundleStub);
  sub_192033970(&v83[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange], &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v47 + 8))(&v83[*(v46 + 3024)], v45);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t WidgetViewCollection.viewableEntry(for:in:ignoringEnvironmentKeys:)@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(v4 + 16);
  v10 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  v11 = swift_beginAccess();
  if (*(*(v9 + v10) + 16) && (v11 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3), (v12 & 1) != 0))
  {
    v13 = type metadata accessor for ViewableTimelineEntry(0);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }

  else
  {
    v15 = *(v5 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
    MEMORY[0x1EEE9AC00](v11);

    sub_192098448(sub_19209B1DC, v15, a4);
  }
}

uint64_t sub_192098448@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v8 = type metadata accessor for ViewableTimelineEntry(0);
    v9 = *(v8 - 8);
    v10 = v9;
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v9 + 72) * i;
    result = a1(v11);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      sub_19204E6EC(v11, a3, type metadata accessor for ViewableTimelineEntry);
      return (*(v10 + 56))(a3, 0, 1, v8);
    }
  }

  v13 = type metadata accessor for ViewableTimelineEntry(0);
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t WidgetViewCollection.drop(before:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries;
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v17[2] = a1;

  sub_1920986F0(sub_19209CB70, v17, v3);
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_2;
  }

  v11 = v6;
  v12 = v5;
  v13 = v4;
  sub_1922289D0();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(v11 >> 1, v12))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 != (v11 >> 1) - v12)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v6 = v11;
    v5 = v12;
    v4 = v13;
LABEL_2:
    sub_19209A9CC(v8, v4, v5, v6);
    v10 = v9;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

LABEL_10:
  *(v1 + v2) = v10;
}

void sub_1920986F0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewableTimelineEntry(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(a3 + 16))
    {
      sub_19204E6EC(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v9, type metadata accessor for ViewableTimelineEntry);
      v12 = a1(v9);
      sub_192046EE8(v9, type metadata accessor for ViewableTimelineEntry);
      if (v3)
      {
        goto LABEL_11;
      }

      if ((v12 & 1) != 0 && v10 != ++v11)
      {
        continue;
      }

      if (*(a3 + 16) >= v10)
      {
        return;
      }

      __break(1u);
LABEL_11:

      return;
    }

    __break(1u);
  }
}

uint64_t WidgetViewCollection.deinit()
{
  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);

  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  v1 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WidgetViewCollection.__deallocating_deinit()
{
  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);

  sub_192046EE8(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  v1 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_192098AD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225900();
  *a1 = result;
  return result;
}

uint64_t sub_192098B28@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *(*v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v8 = *(v6 + 16);

  v9 = v8;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v5 = v9;
  sub_19209C05C(v5);
  v11 = v10;
  result = sub_192046EE8(v5, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  *a1 = v7;
  a1[1] = v11;
  return result;
}

uint64_t WidgetViewCollection.enumeratedViewableEntriesAndEnvironments()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v7 = *(v1 + 16);

  v8 = v7;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v5 = v8;
  sub_19209C05C(v5);
  v10 = v9;
  result = sub_192046EE8(v5, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  *a1 = v6;
  a1[1] = v10;
  return result;
}

id sub_192098D4C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_192098D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  swift_beginAccess();
  v5 = sub_192225150();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_192098E0C()
{

  v1 = sub_19204E3C0(v0, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  return v1;
}

uint64_t sub_192098F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t WidgetViewCollection.description.getter()
{
  v2 = sub_192228BD0();
  MEMORY[0x193B0A990](7876668, 0xE300000000000000);
  sub_19209C5BC();
  v0 = sub_192227A40();
  MEMORY[0x193B0A990](v0);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v2;
}

uint64_t WidgetViewCollection.debugDescription.getter()
{
  v1 = v0;
  v2 = *v0;
  v40 = sub_192225150();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = sub_19204E3C0(v6, type metadata accessor for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry, &protocol witness table for ViewableTimelineEntry, type metadata accessor for ViewableTimelineEntry);

  v8 = *(v7 + 16);
  if (v8)
  {
    v38[1] = v2;
    v39 = v0;
    v42 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v8, 0);
    v9 = v42;
    v38[0] = v7;
    v10 = v7 + 32;
    v11 = (v3 + 8);
    do
    {
      sub_192033A64(v10, v44);
      v12 = v45;
      v13 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      (*(v13 + 8))(v12, v13);
      if (qword_1EADEE900 != -1)
      {
        swift_once();
      }

      v14 = qword_1EADEFB68;
      v15 = sub_1922250F0();
      v16 = [v14 stringFromDate_];

      v17 = sub_192227960();
      v19 = v18;

      (*v11)(v5, v40);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v42 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_192071C64((v20 > 1), v21 + 1, 1);
        v9 = v42;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v10 += 40;
      --v8;
    }

    while (v8);

    v1 = v39;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v44[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v23 = sub_1922278A0();
  v25 = v24;

  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_192228400();
  v42 = sub_192228BD0();
  v43 = v26;
  MEMORY[0x193B0A990](7876668, 0xE300000000000000);
  v41 = v1;
  sub_19209C5BC();
  v27 = sub_192227A40();
  MEMORY[0x193B0A990](v27);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  MEMORY[0x193B0A990](v42, v43);

  MEMORY[0x193B0A990](0x64697720200A7B20, 0xED0000203A746567);
  v28 = [*(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) description];
  v29 = sub_192227960();
  v31 = v30;

  MEMORY[0x193B0A990](v29, v31);

  MEMORY[0x193B0A990](0xD000000000000010, 0x8000000192248890);
  v32 = v1[2];
  v42 = 0xD000000000000012;
  v43 = 0x80000001922488B0;
  v33 = [v32 debugDescription];
  v34 = sub_192227960();
  v36 = v35;

  MEMORY[0x193B0A990](v34, v36);

  MEMORY[0x193B0A990](v42, v43);

  MEMORY[0x193B0A990](0x6972746E6520200ALL, 0xED00005B203A7365);
  MEMORY[0x193B0A990](v23, v25);

  MEMORY[0x193B0A990](8194653, 0xE300000000000000);
  return v44[0];
}

void sub_1920995A4(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  *a1 = v3;
  a1[1] = 0;
}

void *sub_192099600()
{
  v1 = sub_19209BB80(*v0);

  return v1;
}

void sub_19209965C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = v8;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      while (v10 < *(v8 + 16))
      {
        v11 = *(type metadata accessor for ViewableTimelineEntry(0) - 8);
        v12 = *(v11 + 72);
        sub_19204E6EC(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * v10, a2, type metadata accessor for ViewableTimelineEntry);
        if (a3 - 1 == v10)
        {
          goto LABEL_11;
        }

        a2 += v12;
        if (v9 == ++v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

void *sub_1920997B4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_192228600();

    if (v4)
    {
      sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1920B75D0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void *sub_192099884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECC8, &unk_19222B0B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v26 - v8;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = sub_192046E20(a1, off_1ED74BF08);
    v10 = swift_endAccess();
    if (!v9)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v35 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD8, &qword_19222B0C0);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v9 + 16) + 80))(v10);
    v13 = sub_1920702EC(v11, v12);

    if (!v13)
    {

      return 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v9;
      if (!v15)
      {
        break;
      }

      goto LABEL_6;
    }

    v15 = sub_192228340();
    v33 = v9;
    if (!v15)
    {
      break;
    }

LABEL_6:
    v16 = 0;
    a1 = 0;
    v30 = (v27 + 56);
    v31 = v13 & 0xC000000000000001;
    v29 = (v27 + 48);
    v34 = MEMORY[0x1E69E7CC0];
    v28 = v15;
    while (v31)
    {
      v17 = MEMORY[0x193B0B410](v16, v13);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v19 = v13;
      (*(**(v33 + 16) + 120))(*(v17 + 24), v5, v5);
      (*v30)(v4, 0, 1, v5);

      if ((*v29)(v4, 1, v5) == 1)
      {
        sub_192033970(v4, &qword_1EADEECC8, &unk_19222B0B0);
      }

      else
      {
        v20 = v26;
        sub_19204E300(v4, v26, &qword_1EADEECD0, &qword_1922363D0);
        sub_19204E300(v20, v32, &qword_1EADEECD0, &qword_1922363D0);
        v21 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1920C2E7C(0, v21[2] + 1, 1, v21);
        }

        v23 = v21[2];
        v22 = v21[3];
        v34 = v21;
        if (v23 >= v22 >> 1)
        {
          v34 = sub_1920C2E7C((v22 > 1), v23 + 1, 1, v34);
        }

        v24 = v34;
        v34[2] = v23 + 1;
        sub_19204E300(v32, v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, &qword_1EADEECD0, &qword_1922363D0);
      }

      v13 = v19;
      ++v16;
      if (v18 == v28)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= *(v14 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v34;
}

char *sub_192099DDC(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x193B0B410](v10, v6);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v11 = *(v6 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            v12 = *(v11 + 24);
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEBC0, &qword_19222D980);
            (*(**(v2 + 16) + 120))(v20, v12, v13, v13);

            v14 = v20[0];
            if (LOBYTE(v20[0]) != 4)
            {
              break;
            }

            ++v10;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v9 = sub_1920C2FA4(0, *(v9 + 2) + 1, 1, v9);
          }

          v17 = *(v9 + 2);
          v16 = *(v9 + 3);
          v18 = v9;
          if (v17 >= v16 >> 1)
          {
            v18 = sub_1920C2FA4((v16 > 1), v17 + 1, 1, v9);
          }

          *(v18 + 2) = v17 + 1;
          v9 = v18;
          v18[v17 + 32] = v14;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v9;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBB8, &unk_19222AFA0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19209A310(uint64_t a1, uint64_t a2)
{
  sub_192228AD0();
  swift_getWitnessTable();
  sub_192225580();
  return sub_192228B30();
}

void *sub_19209A3A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_19209A3CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_19209A47C()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_19209A4C4()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_19209A510(uint64_t a1, id *a2)
{
  result = sub_192227940();
  *a2 = 0;
  return result;
}

uint64_t sub_19209A588(uint64_t a1, id *a2)
{
  v3 = sub_192227950();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19209A608@<X0>(uint64_t *a2@<X8>)
{
  sub_192227960();
  v3 = sub_192227930();

  *a2 = v3;
  return result;
}

uint64_t sub_19209A64C(void *a1, uint64_t *a2)
{
  v2 = sub_192227960();
  v4 = v3;
  if (v2 == sub_192227960() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1922289A0();
  }

  return v7 & 1;
}

uint64_t sub_19209A6D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_192225570();
}

uint64_t sub_19209A740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_19209C658(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_19209A78C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_192227930();

  *a2 = v3;
  return result;
}

uint64_t sub_19209A7D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192227960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19209A800(uint64_t a1)
{
  v2 = sub_192076370(&qword_1EADEED48, type metadata accessor for FileProtectionType, &unk_19222B340);
  v3 = sub_192076370(&unk_1EADEED50, type metadata accessor for FileProtectionType, &unk_19222B2E0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_19209A8BC()
{
  v0 = sub_192227960();
  v1 = MEMORY[0x193B0A9D0](v0);

  return v1;
}

uint64_t sub_19209A8F8(uint64_t a1)
{
  sub_192227960();
  sub_1922279B0();
}

uint64_t sub_19209A94C()
{
  sub_192227960();
  sub_192228AD0();
  sub_1922279B0();
  v0 = sub_192228B30();

  return v0;
}

void sub_19209A9CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v7 = *(type metadata accessor for ViewableTimelineEntry(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for ViewableTimelineEntry(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_19209AB6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_19209AC60(void *a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEB98, &unk_19222D8F0, MEMORY[0x1E697DE30]);
  *v3 = result;
  return result;
}

void *sub_19209ACA4(void *a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &unk_1EADEEA10, &unk_19222B7B0, type metadata accessor for ViewableTimelineEntry);
  *v3 = result;
  return result;
}

void *sub_19209ACE8(void *a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &unk_1EADEEBF0, &unk_19222AFE0, type metadata accessor for ControlTemplatePicker.Option);
  *v3 = result;
  return result;
}

void *sub_19209AD2C(void *a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEBB0, &qword_19222AF98, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
  *v3 = result;
  return result;
}

void *sub_19209AD70(void *a1, int64_t a2, char a3)
{
  result = sub_19204E564(a1, a2, a3, *v3, &qword_1EADEEBE0, &qword_19222AFD0, &qword_1EADEEBE8, &qword_19222AFD8);
  *v3 = result;
  return result;
}

char *sub_19209ADB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_19209AECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19209ADD0(char *a1, int64_t a2, char a3)
{
  result = sub_19207C164(a1, a2, a3, *v3, &qword_1EADEEBA8, &qword_19222AF90);
  *v3 = result;
  return result;
}

void *sub_19209AE00(void *a1, int64_t a2, char a3)
{
  result = sub_192068884(a1, a2, a3, *v3, &qword_1EADEEB08, &qword_19222AF48, &unk_1EADEEB10, &qword_19222AF50);
  *v3 = result;
  return result;
}

char *sub_19209AE40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_19209AFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19209AE60(void *a1, int64_t a2, char a3)
{
  result = sub_192082110(a1, a2, a3, *v3, &qword_1EADEEBA0, &unk_19222AF80, type metadata accessor for ControlTemplateType);
  *v3 = result;
  return result;
}

char *sub_19209AECC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4C0, &unk_19222AFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_19209AFC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB00, &qword_19222AF40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}