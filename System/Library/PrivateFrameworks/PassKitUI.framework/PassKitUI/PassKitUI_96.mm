void *sub_1BDA282F0@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  result = sub_1BD20B2EC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1BDA28320(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  sub_1BE048C84();
  sub_1BD20B3A0(v3, v4, v5);
}

void sub_1BDA28368()
{
  v1 = v0;
  v43 = *(v0 + 8);
  v9 = sub_1BD20C578();
  v10 = v9[2];
  if (!v10)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v9, v2, v3, v4, v5, v6, v7, v8;
    v42 = v12;
    swift_getKeyPath();
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    v39 = swift_allocObject();
    v40 = *(v1 + 16);
    *(v39 + 16) = *v1;
    *(v39 + 32) = v40;
    *(v39 + 48) = *(v1 + 32);
    sub_1BD0DE19C(&v43, v41, &qword_1EBD48820, &qword_1BE0DC988);
    sub_1BD0D44B8(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30, &qword_1BE0DCA50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C008, &qword_1BE10EE08);
    sub_1BD0DE4F4(&qword_1EBD48948, &qword_1EBD3CA30, &qword_1BE0DCA50, MEMORY[0x1E69E6338]);
    sub_1BDA2A39C();
    sub_1BE0519C4();
    return;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v11 < v9[2])
  {
    v13 = v9[v11 + 4];
    v14 = v13[2];
    v15 = *(v12 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_22;
    }

    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= *(v12 + 3) >> 1)
    {
      if (v13[2])
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v25 = v15 + v14;
      }

      else
      {
        v25 = v15;
      }

      v12 = sub_1BD1D9DFC(isUniquelyReferenced_nonNull_native, v25, 1, v12, v21, v22, v23, v24);
      if (v13[2])
      {
LABEL_15:
        v26 = *(v12 + 2);
        if ((*(v12 + 3) >> 1) - v26 < v14)
        {
          goto LABEL_24;
        }

        memcpy(&v12[v26 + 32], v13 + 4, v14);
        v13, v27, v28, v29, v30, v31, v32, v33;
        if (v14)
        {
          v34 = *(v12 + 2);
          v35 = __OFADD__(v34, v14);
          v36 = v34 + v14;
          if (v35)
          {
            goto LABEL_25;
          }

          *(v12 + 2) = v36;
        }

        goto LABEL_4;
      }
    }

    v13, v18, v19, v20, v21, v22, v23, v24;
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (v10 == ++v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1BDA285E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v171 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C078, &qword_1BE10EE40);
  MEMORY[0x1EEE9AC00](v173);
  v5 = &v144 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C080, &qword_1BE10EE48);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v144 - v6;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C088, &qword_1BE10EE50);
  MEMORY[0x1EEE9AC00](v163);
  v165 = &v144 - v7;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C048, &qword_1BE10EE20);
  MEMORY[0x1EEE9AC00](v164);
  v145 = &v144 - v8;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C038, &qword_1BE10EE18);
  MEMORY[0x1EEE9AC00](v169);
  v162 = &v144 - v9;
  v160 = sub_1BE04FF04();
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v155 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C060, &unk_1BE10EE30);
  v153 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v152 = &v144 - v11;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C090, &qword_1BE10EE58);
  v157 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v154 = &v144 - v12;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C058, &qword_1BE10EE28);
  MEMORY[0x1EEE9AC00](v161);
  v151 = &v144 - v13;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C098, &qword_1BE10EE60);
  MEMORY[0x1EEE9AC00](v167);
  v15 = &v144 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C020, &qword_1BE10EE10);
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v144 - v17;
  *&v166 = v2[1];
  v18 = sub_1BD20D008(a1);
  v20 = v19;
  v21 = sub_1BD20D69C(a1);
  v22 = **(&unk_1E80108B0 + a1);
  v23 = sub_1BD20D60C(a1);
  if (v23)
  {
    v146 = v21;
    v147 = v20;
    v149 = v22;
    v150 = v16;
    v148 = v23;
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 != 6)
        {
          0xE700000000000000, v24, v25, v26, v27, v28, v29, v30;
          goto LABEL_26;
        }

        v32 = 0xEA00000000006564;
      }

      else if (a1 == 4)
      {
        v32 = 0x80000001BE1173C0;
      }

      else
      {
        v32 = 0xE500000000000000;
      }
    }

    else
    {
      v31 = 0xEB00000000797469;
      if (a1 != 2)
      {
        v31 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        v32 = 0xE700000000000000;
      }

      else
      {
        v32 = v31;
      }
    }

    v44 = sub_1BE053B84();
    v32, v45, v46, v47, v48, v49, v50, v51;
    if ((v44 & 1) == 0)
    {
      v53 = sub_1BD20B2EC(a1);
      v54 = v52;
      if (v146)
      {
        v55 = 0;
      }

      else
      {
        v56 = HIBYTE(v52) & 0xF;
        if ((v52 & 0x2000000000000000) == 0)
        {
          v56 = v53 & 0xFFFFFFFFFFFFLL;
        }

        v55 = v56 != 0;
      }

      v180 = v18;
      v181 = v147;
      type metadata accessor for PostalAddressEditingModel(0);
      sub_1BDA2ABB4(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel, &unk_1BE0C1D08);
      v57 = sub_1BE04E964();
      MEMORY[0x1EEE9AC00](v57);
      KeyPath = swift_getKeyPath();
      sub_1BE04E974();
      KeyPath, v59, v60, v61, v62, v63, v64, v65;
      v57, v66, v67, v68, v69, v70, v71, v72;
      v174 = v177;
      v175 = v178;
      v176 = v179;
      MEMORY[0x1EEE9AC00](v73);
      v74 = v148;
      *(&v144 - 4) = v148;
      LODWORD(v147) = v55;
      *(&v144 - 24) = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0A8, &qword_1BE10EEA8);
      v75 = sub_1BDA2A7D4();
      v76 = sub_1BD0DDEBC();
      v142 = v75;
      v143 = v76;
      v77 = v152;
      sub_1BE051804();
      v54, v78, v79, v80, v81, v82, v83, v84;
      v74, v85, v86, v87, v88, v89, v90, v91;
      v92 = v155;
      sub_1BE04FEF4();
      v93 = sub_1BD0DE4F4(&qword_1EBD5C068, &qword_1EBD5C060, &unk_1BE10EE30, MEMORY[0x1E697D690]);
      v94 = MEMORY[0x1E697C9F8];
      v95 = v154;
      v96 = v156;
      v97 = v160;
      sub_1BE050924();
      (*(v158 + 8))(v92, v97);
      (*(v153 + 8))(v77, v96);
      sub_1BE052434();
      v99 = v98;
      *&v177 = v96;
      *(&v177 + 1) = v97;
      v178 = v93;
      v179 = v94;
      swift_getOpaqueTypeConformance2();
      v100 = v151;
      v101 = v159;
      sub_1BE050DE4();
      v99, v102, v103, v104, v105, v106, v107, v108;
      (*(v157 + 8))(v95, v101);
      if (v147)
      {
        v109 = sub_1BE051264();
        v110 = swift_getKeyPath();
        v111 = v145;
        sub_1BD0DE19C(v100, v145, &qword_1EBD5C058, &qword_1BE10EE28);
        v112 = v165;
        v113 = (v111 + *(v164 + 36));
        *v113 = v110;
        v113[1] = v109;
        sub_1BD0DE19C(v111, v112, &qword_1EBD5C048, &qword_1BE10EE20);
        swift_storeEnumTagMultiPayload();
        sub_1BDA2A5C0();
        sub_1BDA2A678();
        v114 = v162;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v111, &qword_1EBD5C048, &qword_1BE10EE20);
      }

      else
      {
        sub_1BD0DE19C(v100, v165, &qword_1EBD5C058, &qword_1BE10EE28);
        swift_storeEnumTagMultiPayload();
        sub_1BDA2A5C0();
        sub_1BDA2A678();
        v114 = v162;
        sub_1BE04F9A4();
      }

      v115 = v149;
      v116 = v168;
      sub_1BD0DE19C(v114, v15, &qword_1EBD5C038, &qword_1BE10EE18);
      swift_storeEnumTagMultiPayload();
      sub_1BDA2A4E0();
      sub_1BDA2A534();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v114, &qword_1EBD5C038, &qword_1BE10EE18);
      sub_1BD0DE53C(v100, &qword_1EBD5C058, &qword_1BE10EE28);
      goto LABEL_27;
    }

LABEL_26:
    type metadata accessor for PostalAddressEditingModel(0);
    sub_1BDA2ABB4(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel, &unk_1BE0C1D08);
    v117 = sub_1BE04E964();
    MEMORY[0x1EEE9AC00](v117);
    LOBYTE(v142) = a1;
    v118 = swift_getKeyPath();
    sub_1BE04E974();
    v118, v119, v120, v121, v122, v123, v124, v125;
    v117, v126, v127, v128, v129, v130, v131, v132;
    v166 = v177;
    v133 = v178;
    v134 = v179;
    LOBYTE(v180) = 0;
    sub_1BE051694();
    v135 = v174;
    v136 = *(&v174 + 1);
    LOBYTE(v180) = 0;
    sub_1BE051694();
    LOBYTE(v117) = v174;
    v137 = *(&v174 + 1);
    v138 = swift_getKeyPath();
    LOBYTE(v174) = 0;
    v139 = v146 & 1;
    *v15 = v166;
    *(v15 + 2) = v133;
    *(v15 + 3) = v134;
    v15[32] = v135;
    *(v15 + 5) = v136;
    *(v15 + 6) = v18;
    v140 = v148;
    *(v15 + 7) = v147;
    *(v15 + 8) = v140;
    v15[72] = v139;
    v15[80] = v117;
    *(v15 + 11) = v137;
    *(v15 + 12) = v138;
    v15[104] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BDA2A4E0();
    sub_1BDA2A534();
    v116 = v168;
    sub_1BE04F9A4();
    v115 = v149;
LABEL_27:
    sub_1BD0DE19C(v116, v170, &qword_1EBD5C020, &qword_1BE10EE10);
    swift_storeEnumTagMultiPayload();
    sub_1BDA2A454();
    sub_1BD0DE4F4(&qword_1EBD5C070, &qword_1EBD5C078, &qword_1BE10EE40, MEMORY[0x1E69817F8]);
    sub_1BE04F9A4();

    v41 = v116;
    v42 = &qword_1EBD5C020;
    v43 = &qword_1BE10EE10;
    return sub_1BD0DE53C(v41, v42, v43);
  }

  *v5 = sub_1BE04F504();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0A0, &qword_1BE10EE68);
  sub_1BDA2984C(v2, a1, v18, v20, v21 & 1, v22, &v5[*(v33 + 44)]);
  v20, v34, v35, v36, v37, v38, v39, v40;
  sub_1BD0DE19C(v5, v170, &qword_1EBD5C078, &qword_1BE10EE40);
  swift_storeEnumTagMultiPayload();
  sub_1BDA2A454();
  sub_1BD0DE4F4(&qword_1EBD5C070, &qword_1EBD5C078, &qword_1BE10EE40, MEMORY[0x1E69817F8]);
  sub_1BE04F9A4();

  v41 = v5;
  v42 = &qword_1EBD5C078;
  v43 = &qword_1BE10EE40;
  return sub_1BD0DE53C(v41, v42, v43);
}

uint64_t sub_1BDA29488(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  sub_1BE048C84();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD489B8, &unk_1BE10EF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0C0, &qword_1BE10EEB0);
  sub_1BD0DE4F4(&qword_1EBD489C0, &qword_1EBD489B8, &unk_1BE10EF20, MEMORY[0x1E69E6338]);
  sub_1BDA2A884(&qword_1EBD5C0B8, &qword_1EBD5C0C0, &qword_1BE10EEB0, sub_1BDA2A938);
  sub_1BD4F2764();
  return sub_1BE0519D4();
}

uint64_t sub_1BDA295E8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v39 = a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B420, &qword_1BE0BC550);
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0D0, &qword_1BE10EEB8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  if (a2)
  {
    if (v15 == a3 && v14 == v37)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1BE053B84();
    }
  }

  else
  {
    v18 = 0;
  }

  v40 = v16;
  v41 = v17;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  *v10 = sub_1BE0506C4();
  *(v10 + 1) = v19;
  v10[16] = v20 & 1;
  *(v10 + 3) = v21;
  *(v10 + 4) = v15;
  *(v10 + 5) = v14;
  v10[48] = 1;
  sub_1BE048C84();
  if (v18)
  {
    v22 = sub_1BE051264();
  }

  else
  {
    v22 = sub_1BE051464();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  (*(v8 + 32))(v13, v10, v38);
  v25 = &v13[*(v11 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_1BE052434();
  v27 = v26;
  sub_1BDA2A938();
  sub_1BE050DE4();
  v27, v28, v29, v30, v31, v32, v33, v34;
  return sub_1BD0DE53C(v13, &qword_1EBD5C0D0, &qword_1BE10EEB8);
}

uint64_t sub_1BDA2984C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v141 = a4;
  v142 = a6;
  v123 = a5;
  v140 = a3;
  v8 = a2;
  v130 = a7;
  v10 = sub_1BE04FB64();
  v121 = *(v10 - 8);
  v122 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0D8, &qword_1BE10EF30);
  v13 = *(v12 - 8);
  v118 = v12;
  v119 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v117 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0E0, &qword_1BE10EF38);
  v124 = *(v16 - 8);
  *&v125 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v117 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0E8, &qword_1BE10EF40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v131 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v117 - v21;
  type metadata accessor for PostalAddressEditingModel(0);
  sub_1BDA2ABB4(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel, &unk_1BE0C1D08);
  v22 = sub_1BE04E964();
  v143 = v8;
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v22, v31, v32, v33, v34, v35, v36, v37;
  v39 = v152;
  v38 = v153;
  v40 = v155;
  v138 = v154;
  v41 = *a1;
  LOBYTE(v144) = 0;
  sub_1BE048964();
  v128 = v38;
  sub_1BE048964();
  v127 = v40;
  sub_1BE048C84();
  sub_1BE051694();
  v126 = v152;
  v137 = v153;
  LOBYTE(v144) = 0;
  sub_1BE051694();
  v132 = v152;
  v136 = v153;
  v139 = v41;
  LOBYTE(v152) = v41;
  v42 = sub_1BDA2AAAC(v8);
  v135 = swift_getKeyPath();
  if (v42)
  {
    v43 = sub_1BE052434();
    v133 = v44;
    v134 = v43;
    sub_1BE048C84();
    v45 = v142;
  }

  else
  {
    sub_1BE048C84();
    v53 = v142;
    v133 = 0;
    v134 = 0;
  }

  if (v8 > 3u)
  {
    if (v8 > 5u)
    {
      if (v8 == 6)
      {
        v54 = 0xEA00000000006564;
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v8 == 4)
    {
      v54 = 0x80000001BE1173C0;
    }

    else
    {
      v54 = 0xE500000000000000;
    }
  }

  else
  {
    if (v8 <= 1u)
    {
      if (!v8)
      {
        0xE700000000000000, v46, v47, v48, v49, v50, v51, v52;
        goto LABEL_20;
      }

LABEL_18:
      v54 = 0xE700000000000000;
      goto LABEL_19;
    }

    if (v8 == 2)
    {
      v54 = 0xEB00000000797469;
    }

    else
    {
      v54 = 0xE400000000000000;
    }
  }

LABEL_19:
  v55 = sub_1BE053B84();
  v54, v56, v57, v58, v59, v60, v61, v62;
  if ((v55 & 1) == 0)
  {
LABEL_22:
    v80 = 1;
    v78 = v129;
    v77 = v124;
    v79 = v125;
    goto LABEL_23;
  }

LABEL_20:
  v63 = a1[3];
  if (!v63)
  {
    goto LABEL_22;
  }

  v64 = a1[4];
  sub_1BD0D44B8(v63, v64);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C100, &qword_1BE10EF88);
  sub_1BDA2A884(&qword_1EBD5C108, &qword_1EBD5C100, &qword_1BE10EF88, sub_1BD0F14E8);
  v65 = v15;
  sub_1BE051704();
  v66 = v120;
  sub_1BE04FB54();
  sub_1BD0DE4F4(&qword_1EBD5C110, &qword_1EBD5C0D8, &qword_1BE10EF30, MEMORY[0x1E697D680]);
  sub_1BDA2ABB4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  v68 = v117;
  v67 = v118;
  v69 = v122;
  sub_1BE050894();
  sub_1BD0D4744(v63, v64, v70, v71, v72, v73, v74, v75);
  (*(v121 + 8))(v66, v69);
  (*(v119 + 8))(v65, v67);
  v77 = v124;
  v76 = v125;
  v78 = v129;
  (*(v124 + 32))(v129, v68, v125);
  v79 = v76;
  v80 = 0;
LABEL_23:
  (*(v77 + 56))(v78, v80, 1, v79);
  v81 = v123 & 1;
  LODWORD(v129) = v123 & 1;
  v82 = v131;
  sub_1BD0DE19C(v78, v131, &qword_1EBD5C0E8, &qword_1BE10EF40);
  v83 = v127;
  v84 = v128;
  *&v144 = v39;
  *(&v144 + 1) = v128;
  *&v145 = v138;
  *(&v145 + 1) = v127;
  LOBYTE(v146) = v139;
  *(&v146 + 1) = v176[0];
  DWORD1(v146) = *(v176 + 3);
  *(&v146 + 1) = v140;
  *&v147 = v141;
  BYTE8(v147) = v81;
  *(&v147 + 9) = *v175;
  HIDWORD(v147) = *&v175[3];
  *&v148[0] = v142;
  v125 = xmmword_1BE0CB9B0;
  *(v148 + 8) = xmmword_1BE0CB9B0;
  v85 = v126;
  BYTE8(v148[1]) = v126;
  *(&v148[1] + 9) = *v174;
  HIDWORD(v148[1]) = *&v174[3];
  *&v149 = v137;
  BYTE8(v149) = v132;
  *(&v149 + 9) = *v173;
  HIDWORD(v149) = *&v173[3];
  *&v150 = v136;
  *(&v150 + 1) = v135;
  *&v151 = v134;
  *(&v151 + 1) = v133;
  v86 = v144;
  v87 = v145;
  v88 = v147;
  v89 = v130;
  v130[2] = v146;
  v89[3] = v88;
  *v89 = v86;
  v89[1] = v87;
  v90 = v148[0];
  v91 = v148[1];
  v92 = v151;
  v89[7] = v150;
  v89[8] = v92;
  v93 = v149;
  v89[5] = v91;
  v89[6] = v93;
  v89[4] = v90;
  v94 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0F0, &qword_1BE10EF78) + 48);
  sub_1BD0DE19C(v82, v94, &qword_1EBD5C0E8, &qword_1BE10EF40);
  sub_1BD0DE19C(&v144, &v152, &qword_1EBD5C0F8, &qword_1BE10EF80);
  v83, v95, v96, v97, v98, v99, v100, v101;
  v84, v102, v103, v104, v105, v106, v107, v108;
  v39, v109, v110, v111, v112, v113, v114, v115;
  sub_1BD0DE53C(v78, &qword_1EBD5C0E8, &qword_1BE10EF40);
  sub_1BD0DE53C(v82, &qword_1EBD5C0E8, &qword_1BE10EF40);
  v152 = v39;
  v153 = v84;
  v154 = v138;
  v155 = v83;
  v156 = v139;
  *v157 = v176[0];
  *&v157[3] = *(v176 + 3);
  v158 = v140;
  v159 = v141;
  v160 = v129;
  *v161 = *v175;
  *&v161[3] = *&v175[3];
  v162 = v142;
  v163 = v125;
  v164 = v85;
  *v165 = *v174;
  *&v165[3] = *&v174[3];
  v166 = v137;
  v167 = v132;
  *v168 = *v173;
  *&v168[3] = *&v173[3];
  v169 = v136;
  v170 = v135;
  v171 = v134;
  v172 = v133;
  return sub_1BDA2AB4C(&v152);
}

void sub_1BDA2A150()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE051C54();
  v4 = sub_1BE051574();
  v5 = sub_1BE0503D4();
  KeyPath = swift_getKeyPath();
  v40[3] = v4;
  v40[4] = KeyPath;
  v40[5] = v5;
  (*(v1 + 104))(v3, *MEMORY[0x1E69B8068], v0);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v1 + 8))(v3, v0);
    v40[1] = v9;
    v40[2] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49180, &unk_1BE0B89B0);
    sub_1BD0F14E8();
    sub_1BD0DDEBC();
    sub_1BE050C34();
    v5, v12, v13, v14, v15, v16, v17, v18;
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
    v4, v26, v27, v28, v29, v30, v31, v32;
    v11, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BDA2A39C()
{
  result = qword_1EBD5C010;
  if (!qword_1EBD5C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C008, &qword_1BE10EE08);
    sub_1BDA2A454();
    sub_1BD0DE4F4(&qword_1EBD5C070, &qword_1EBD5C078, &qword_1BE10EE40, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C010);
  }

  return result;
}

unint64_t sub_1BDA2A454()
{
  result = qword_1EBD5C018;
  if (!qword_1EBD5C018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C020, &qword_1BE10EE10);
    sub_1BDA2A4E0();
    sub_1BDA2A534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C018);
  }

  return result;
}

unint64_t sub_1BDA2A4E0()
{
  result = qword_1EBD5C028;
  if (!qword_1EBD5C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C028);
  }

  return result;
}

unint64_t sub_1BDA2A534()
{
  result = qword_1EBD5C030;
  if (!qword_1EBD5C030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C038, &qword_1BE10EE18);
    sub_1BDA2A5C0();
    sub_1BDA2A678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C030);
  }

  return result;
}

unint64_t sub_1BDA2A5C0()
{
  result = qword_1EBD5C040;
  if (!qword_1EBD5C040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C048, &qword_1BE10EE20);
    sub_1BDA2A678();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C040);
  }

  return result;
}

unint64_t sub_1BDA2A678()
{
  result = qword_1EBD5C050;
  if (!qword_1EBD5C050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C058, &qword_1BE10EE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C060, &unk_1BE10EE30);
    sub_1BE04FF04();
    sub_1BD0DE4F4(&qword_1EBD5C068, &qword_1EBD5C060, &unk_1BE10EE30, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    sub_1BDA2ABB4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C050);
  }

  return result;
}

unint64_t sub_1BDA2A7D4()
{
  result = qword_1EBD5C0B0;
  if (!qword_1EBD5C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C0A8, &qword_1BE10EEA8);
    sub_1BDA2A884(&qword_1EBD5C0B8, &qword_1EBD5C0C0, &qword_1BE10EEB0, sub_1BDA2A938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C0B0);
  }

  return result;
}

uint64_t sub_1BDA2A884(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BDA2ABB4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BDA2A938()
{
  result = qword_1EBD5C0C8;
  if (!qword_1EBD5C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C0D0, &qword_1BE10EEB8);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C0C8);
  }

  return result;
}

uint64_t sub_1BDA2AA40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F0E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1BDA2AAAC(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0;
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        return v4;
      }

      v3 = MEMORY[0x1E69DE530];
    }

    else
    {
      if (a1 == 4)
      {
        return v4;
      }

      v3 = MEMORY[0x1E69DE408];
    }
  }

  else
  {
    v1 = MEMORY[0x1E69DE540];
    v2 = MEMORY[0x1E69DE550];
    if (a1 != 2)
    {
      v2 = MEMORY[0x1E69DE3F8];
    }

    if (a1)
    {
      v1 = MEMORY[0x1E69DE548];
    }

    if (a1 <= 1u)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
    }
  }

  v4 = *v3;
  v5 = *v3;
  return v4;
}

uint64_t sub_1BDA2AB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C0F8, &qword_1BE10EF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BDA2ABB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BDA2ABFC()
{
  result = qword_1EBD5C118;
  if (!qword_1EBD5C118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C120, &qword_1BE10EFC0);
    sub_1BDA2A39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C118);
  }

  return result;
}

uint64_t sub_1BDA2AC80@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BE049534();
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_1BDA2ACEC()
{
  v0 = sub_1BE04AF64();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v47 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69B8EA8]) init];
  MEMORY[0x1BFB36C50]();
  sub_1BE04AF74();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = sub_1BE052404();
  v12, v14, v15, v16, v17, v18, v19, v20;
  [v10 setIdentifier_];

  sub_1BE049BD4();
  sub_1BE0493C4();
  v21 = *(v3 + 8);
  v21(v5, v2);
  v22 = sub_1BE053344();
  [v10 setAmount_];

  sub_1BE049BD4();
  sub_1BE0493A4();
  v24 = v23;
  v21(v5, v2);
  v25 = sub_1BE052404();
  v24, v26, v27, v28, v29, v30, v31, v32;
  [v10 setCurrencyCode_];

  v33 = v47;
  sub_1BE049B84();
  v34 = sub_1BE04AE64();
  (*(v48 + 8))(v33, v49);
  [v10 setTransactionDate_];

  sub_1BE049BB4();
  v36 = v35;
  v37 = sub_1BE052404();
  v36, v38, v39, v40, v41, v42, v43, v44;
  [v10 setMerchantProvidedDescription_];

  [v10 setTransactionStatus_];
  [v10 setTransactionType_];
  return v10;
}

void sub_1BDA2B088()
{
  v0 = sub_1BE04B0F4();
  v70 = *(v0 - 8);
  v71 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v68 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1BE0493F4();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04AB24();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AB54();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE04AF64();
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8EC0]) init];
  sub_1BE049BB4();
  v14 = v13;
  v15 = sub_1BE052404();
  v14, v16, v17, v18, v19, v20, v21, v22;
  [v12 setPrimaryString_];

  v23 = sub_1BE052404();
  v24 = PKLocalizedBankConnectString(v23);

  if (v24)
  {
    v60 = sub_1BE052434();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BE0B69E0;
    sub_1BE049B84();
    sub_1BE04AB14();
    sub_1BE04AB04();
    v28 = sub_1BE04AF24();
    v30 = v29;
    (*(v64 + 8))(v5, v65);
    (*(v62 + 8))(v8, v63);
    (*(v9 + 8))(v11, v61);
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1BD110550();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    sub_1BE052454();
    v32 = v31;
    v26, v31, v33, v34, v35, v36, v37, v38;
    v39 = sub_1BE052404();
    v32, v40, v41, v42, v43, v44, v45, v46;
    [v12 setSecondaryString_];

    v47 = v66;
    sub_1BE049BD4();
    v48 = v68;
    sub_1BE04B054();
    sub_1BE0493E4();
    v50 = v49;
    (*(v70 + 8))(v48, v71);
    (*(v67 + 8))(v47, v69);
    v51 = sub_1BE052404();
    v50, v52, v53, v54, v55, v56, v57, v58;
    [v12 setValueString_];

    [v12 setShouldShowDisclosure_];
    if (sub_1BE049B74())
    {
      v59 = sub_1BE052404();
      [v12 setSecondaryBadgeSymbol_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BDA2B5C8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  return sub_1BDA2F174(v13 + v11, a1);
}

uint64_t sub_1BDA2B690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  return sub_1BDA2F174(v3 + v12, a2);
}

uint64_t sub_1BDA2B758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BDA2F174(a1, &v6 - v3);
  return sub_1BDA2B7EC(v4);
}

uint64_t sub_1BDA2B7EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  sub_1BDA2F174(v1 + v6, v5);
  v7 = sub_1BDA2F7BC(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD498C8, &unk_1BE0DF580);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BDA2F174(a1, v5);
    swift_beginAccess();
    sub_1BDA2FAAC(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498C8, &unk_1BE0DF580);
}

uint64_t sub_1BDA2B9DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  sub_1BDA2FB38(a2, a1 + v4);
  return swift_endAccess();
}

double sub_1BDA2BA48()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  sub_1BE048C84();
  return result;
}

void sub_1BDA2BAF4(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions;
  v11 = *(v8 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions);
  if (!v11)
  {
    if (!a1)
    {
      v21 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
    sub_1BE04B584();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v12 = sub_1BE048C84();
  v13 = sub_1BD400D50(v12, a1);
  v11, v14, v15, v16, v17, v18, v19, v20;
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v21 = *(v8 + v10);
LABEL_8:
  *(v8 + v10) = a1;

  v21, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_1BDA2BC64()
{
  v1[2] = v0;
  sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2BCFC, v3, v2);
}

uint64_t sub_1BDA2BCFC()
{
  if ([*(v0[2] + 24) isAppleCardPass])
  {
    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_1BDA2BE0C;

    return sub_1BDA2C344();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1BDA2BF74;

    return sub_1BDA2D0B8();
  }
}

uint64_t sub_1BDA2BE0C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1BDA2C218, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_1BDA2C0DC;

    return sub_1BDA2DCD4();
  }
}

uint64_t sub_1BDA2BF74()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1BDA2C27C, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[10] = v5;
    *v5 = v2;
    v5[1] = sub_1BDA2C0DC;

    return sub_1BDA2DCD4();
  }
}

uint64_t sub_1BDA2C0DC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1BDA2C2E0;
  }

  else
  {
    v5 = sub_1BD440A84;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BDA2C218(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BDA2C27C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BDA2C2E0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BDA2C344()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  v1[4] = swift_task_alloc();
  v2 = sub_1BE0495A4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE049B64();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_1BE049C24();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_1BE0498D4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  sub_1BE0528A4();
  v1[19] = sub_1BE052894();
  v7 = sub_1BE052844();
  v1[20] = v7;
  v1[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2C5C8, v7, v6);
}

uint64_t sub_1BDA2C5C8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[9];
  v5 = v0[5];
  (*(v2 + 104))(v1, *MEMORY[0x1E6967918], v3);
  v6 = sub_1BE0498C4();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *(v7 + 16) = v6;
  v0[2] = v5;
  sub_1BE04B444();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_1BE049B54();
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1BDA2C78C;
  v10 = v0[15];
  v11 = v0[12];

  return MEMORY[0x1EEDC14B8](v10, v11);
}

uint64_t sub_1BDA2C78C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_1BDA2CB7C;
  }

  else
  {
    v8 = sub_1BDA2C924;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BDA2C924(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 112);
  v9 = *(v8 + 120);
  v11 = *(v8 + 104);
  *(v8 + 152), a2, a3, a4, a5, a6, a7, a8;
  v12 = sub_1BE049C14();
  (*(v10 + 8))(v9, v11);
  if (*(v12 + 2) == 1)
  {
    v21 = *(v8 + 56);
    v20 = *(v8 + 64);
    v22 = *(v8 + 40);
    v23 = *(v8 + 48);
    v24 = *(v8 + 32);
    v25 = *(v23 + 16);
    v25(v21, &v12[(*(v23 + 80) + 32) & ~*(v23 + 80)], v22);
    v12, v26, v27, v28, v29, v30, v31, v32;
    (*(v23 + 32))(v20, v21, v22);
    v25(v24, v20, v22);
    (*(v23 + 56))(v24, 0, 1, v22);
    sub_1BDA2B7EC(v24);
    (*(v23 + 8))(v20, v22);
  }

  else
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BD026000, v33, v34, "Multiple Apple Cards", v35, 2u);
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }
  }

  v36 = *(v8 + 8);

  return v36();
}

uint64_t sub_1BDA2CB7C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 152), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BDA2CC50@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C240, &qword_1BE10F1B8);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C248, &qword_1BE10F1C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C250, &qword_1BE10F1C8);
  v14 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v40 - v15;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v7 + 8))(v9, v6);
  v25 = swift_getKeyPath();
  v26 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD5C258, &qword_1EBD5C248, &qword_1BE10F1C0, MEMORY[0x1E6968D58]);
  sub_1BE04A724();
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v11 + 8))(v13, v10);
  v47 = v43;
  v34 = v42;
  sub_1BE04A7B4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C260, &qword_1BE10F230);
  v36 = v44;
  v44[3] = v35;
  v36[4] = sub_1BDA2F5CC();
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_1BD0DE4F4(&qword_1EBD5C288, &qword_1EBD5C250, &qword_1BE10F1C8, v26);
  sub_1BD0DE4F4(qword_1EBD5C290, &qword_1EBD5C240, &qword_1BE10F1B8, MEMORY[0x1E6968D20]);
  v37 = v41;
  v38 = v45;
  sub_1BE04A714();
  (*(v46 + 8))(v34, v38);
  return (*(v14 + 8))(v16, v37);
}

uint64_t sub_1BDA2D0B8()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  v1[4] = swift_task_alloc();
  v2 = sub_1BE0495A4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE049B64();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_1BE049C24();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  sub_1BE0528A4();
  v1[16] = sub_1BE052894();
  v6 = sub_1BE052844();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2D2E0, v6, v5);
}

uint64_t sub_1BDA2D2E0()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = [*(v0[3] + 24) primaryAccountIdentifier];
  v4 = sub_1BE052434();
  v6 = v5;

  v7 = swift_task_alloc();
  v0[19] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v0[2] = v2;
  sub_1BE04B444();
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
  (*(*(v15 - 8) + 56))(v1, 0, 1, v15);
  sub_1BE049B54();
  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_1BDA2D488;
  v17 = v0[15];
  v18 = v0[12];

  return MEMORY[0x1EEDC14B8](v17, v18);
}

uint64_t sub_1BDA2D488()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_1BDA2D868;
  }

  else
  {
    v8 = sub_1BDA2D620;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BDA2D620(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 120);
  v10 = *(v8 + 104);
  v11 = *(v8 + 112);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  v12 = sub_1BE049C14();
  (*(v11 + 8))(v9, v10);
  if (*(v12 + 2) == 1)
  {
    v21 = *(v8 + 56);
    v20 = *(v8 + 64);
    v22 = *(v8 + 40);
    v23 = *(v8 + 48);
    v24 = *(v8 + 32);
    v25 = *(v23 + 16);
    v25(v21, &v12[(*(v23 + 80) + 32) & ~*(v23 + 80)], v22);
    v12, v26, v27, v28, v29, v30, v31, v32;
    (*(v23 + 32))(v20, v21, v22);
    v25(v24, v20, v22);
    (*(v23 + 56))(v24, 0, 1, v22);
    sub_1BDA2B7EC(v24);
    (*(v23 + 8))(v20, v22);
  }

  else
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    v33 = sub_1BE04D204();
    v34 = sub_1BE052C34();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BD026000, v33, v34, "Multiple Accounts for FPAN", v35, 2u);
      MEMORY[0x1BFB45F20](v35, -1, -1);
    }
  }

  v36 = *(v8 + 8);

  return v36();
}

uint64_t sub_1BDA2D868(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BDA2D930@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F0, &qword_1BE1091C0);
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A2F8, &qword_1BE1091C8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v10 + 8))(v12, v9);
  v31 = v27;
  v32 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE04A7B4();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A300, &unk_1BE1091D0);
  a4[4] = sub_1BD99398C();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_1BD0DE4F4(&qword_1EBD5A330, &qword_1EBD5A2F8, &qword_1BE1091C8, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD5A338, &qword_1EBD5A2F0, &qword_1BE1091C0, MEMORY[0x1E6968D20]);
  sub_1BD993B04(&qword_1EBD41EE8, MEMORY[0x1E69E6180], MEMORY[0x1E69E7C80]);
  v25 = v29;
  sub_1BE04A714();
  (*(v30 + 8))(v8, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BDA2DCD4()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C158, &qword_1BE10F040);
  v1[8] = swift_task_alloc();
  v2 = sub_1BE049D94();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  v1[12] = swift_task_alloc();
  v3 = sub_1BE0495A4();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  sub_1BE0528A4();
  v1[16] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[17] = v5;
  v1[18] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA2DE94, v5, v4);
}

uint64_t sub_1BDA2DE94()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  KeyPath = swift_getKeyPath();
  *(v0 + 40) = v4;
  sub_1BDA2FBA8(&qword_1EBD5A080, _s9ViewModelCMa_5, &unk_1BE10F020);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account;
  swift_beginAccess();
  sub_1BDA2F174(v4 + v13, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v21 = *(v0 + 96);
    *(v0 + 128), v14, v15, v16, v17, v18, v19, v20;
    sub_1BD0DE53C(v21, &qword_1EBD498C8, &unk_1BE0DF580);
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "Tried to load Predicted Transactions without account", v24, 2u);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 120);
    v28 = *(v0 + 64);
    (*(*(v0 + 112) + 32))(v27, *(v0 + 96), *(v0 + 104));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C160, &qword_1BE10F070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C168, &qword_1BE10F078);
    *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
    swift_getKeyPath();
    sub_1BDA2FBA8(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    sub_1BE04A4F4();
    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    *(v29 + 16) = v27;
    *(v0 + 48) = sub_1BE049BF4();
    sub_1BE04B444();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C170, &qword_1BE10F0B0);
    (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
    sub_1BE049D84();
    v31 = swift_task_alloc();
    *(v0 + 160) = v31;
    *v31 = v0;
    v31[1] = sub_1BDA2E2E4;
    v32 = *(v0 + 88);

    return MEMORY[0x1EEDC14F0](v32);
  }
}

uint64_t sub_1BDA2E2E4(uint64_t a1)
{
  v4 = *v2;
  v4[21] = v1;

  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = v4[17];
    v9 = v4[18];
    v10 = sub_1BDA2E540;
  }

  else
  {
    v4[22] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = v4[17];
    v9 = v4[18];
    v10 = sub_1BDA2E46C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1BDA2E46C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 176);
  v10 = *(v8 + 120);
  v11 = *(v8 + 104);
  v12 = *(v8 + 112);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  sub_1BDA2BAF4(v9, v13, v14, v15, v16, v17, v18, v19);
  (*(v12 + 8))(v10, v11);

  v20 = *(v8 + 8);

  return v20();
}

uint64_t sub_1BDA2E540(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 120);
  v10 = *(v8 + 104);
  v11 = *(v8 + 112);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  (*(v11 + 8))(v9, v10);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BDA2E60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a2;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C178, &qword_1BE10F0B8);
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C180, &qword_1BE10F0C0);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v62 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C188, &qword_1BE10F0C8);
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C190, &qword_1BE10F0D0);
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C198, &qword_1BE10F0D8);
  v80 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C1A0, &qword_1BE10F0E0);
  v66 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C1A8, &qword_1BE10F0E8);
  v23 = *(v22 - 8);
  v71 = v22;
  v72 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v62 - v24;
  v64 = *a1;
  sub_1BD0DE4F4(&qword_1EBD5C1B0, &qword_1EBD5C198, &qword_1BE10F0D8, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  v33 = *(v80 + 8);
  v80 += 8;
  v63 = v33;
  v33(v18, v16);
  sub_1BE0495A4();
  sub_1BE04A7B4();
  v34 = swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD5C1B8, &qword_1EBD5C188, &qword_1BE10F0C8, MEMORY[0x1E6968D20]);
  v35 = v65;
  sub_1BE04A724();
  v34, v36, v37, v38, v39, v40, v41, v42;
  (*(v67 + 8))(v11, v35);
  v43 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD5C1C0, &qword_1EBD5C1A0, &qword_1BE10F0E0, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD5C1C8, &qword_1EBD5C190, &qword_1BE10F0D0, v43);
  sub_1BDA2FBA8(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v44 = v68;
  sub_1BE04A714();
  (*(v69 + 8))(v15, v44);
  (*(v66 + 8))(v21, v19);
  sub_1BE04A7C4();
  v45 = swift_getKeyPath();
  v46 = v73;
  sub_1BE04A724();
  v45, v47, v48, v49, v50, v51, v52, v53;
  v63(v18, v16);
  sub_1BD0DE4F4(&qword_1EBD5C1D0, &qword_1EBD5C178, &qword_1BE10F0B8, v43);
  v55 = v74;
  v54 = v75;
  sub_1BE04A734();
  (*(v76 + 8))(v46, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C1D8, &qword_1BE10F180);
  v57 = v77;
  v77[3] = v56;
  v57[4] = sub_1BDA2F1EC();
  __swift_allocate_boxed_opaque_existential_1(v57);
  sub_1BD0DE4F4(&qword_1EBD5C230, &qword_1EBD5C1A8, &qword_1BE10F0E8, MEMORY[0x1E6968D08]);
  sub_1BD0DE4F4(&qword_1EBD5C238, &qword_1EBD5C180, &qword_1BE10F0C0, MEMORY[0x1E6968D68]);
  v58 = v62;
  v59 = v71;
  v60 = v78;
  sub_1BE04A784();
  (*(v79 + 8))(v55, v60);
  return (*(v72 + 8))(v58, v59);
}

uint64_t sub_1BDA2EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1BDA2EE84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  sub_1BD0DE53C(v8 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__account, &qword_1EBD498C8, &unk_1BE0DF580);
  v9 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel_logger;
  v10 = sub_1BE04D214();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  *(v8 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions), v11, v12, v13, v14, v15, v16, v17;
  v18 = OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel___observationRegistrar;
  v19 = sub_1BE04B5D4();
  (*(*(v19 - 8) + 8))(v8 + v18, v19);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_5(uint64_t a1)
{
  result = qword_1EBD5C148;
  if (!qword_1EBD5C148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA2EFF4(uint64_t a1)
{
  sub_1BDA2F11C(319);
  if (v1 <= 0x3F)
  {
    sub_1BE04D214();
    if (v2 <= 0x3F)
    {
      sub_1BE04B5D4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BDA2F11C(uint64_t a1)
{
  if (!qword_1EBD4D598)
  {
    sub_1BE0495A4();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D598);
    }
  }
}

uint64_t sub_1BDA2F174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BDA2F1EC()
{
  result = qword_1EBD5C1E0;
  if (!qword_1EBD5C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C1D8, &qword_1BE10F180);
    sub_1BDA2F278();
    sub_1BDA2F488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C1E0);
  }

  return result;
}

unint64_t sub_1BDA2F278()
{
  result = qword_1EBD5C1E8;
  if (!qword_1EBD5C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C1A8, &qword_1BE10F0E8);
    sub_1BDA2F524(&qword_1EBD5C1F0, &qword_1EBD5C1A0, &qword_1BE10F0E0);
    sub_1BDA2F31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C1E8);
  }

  return result;
}

unint64_t sub_1BDA2F31C()
{
  result = qword_1EBD5C200;
  if (!qword_1EBD5C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C190, &qword_1BE10F0D0);
    sub_1BDA2F3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C200);
  }

  return result;
}

unint64_t sub_1BDA2F3A0()
{
  result = qword_1EBD5C208;
  if (!qword_1EBD5C208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C188, &qword_1BE10F0C8);
    v1 = MEMORY[0x1E6967810];
    sub_1BDA2FBA8(&qword_1EBD5C210, MEMORY[0x1E6967810], MEMORY[0x1E6967828]);
    sub_1BDA2FBA8(&qword_1EBD5C218, v1, MEMORY[0x1E6967818]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C208);
  }

  return result;
}

unint64_t sub_1BDA2F488()
{
  result = qword_1EBD5C220;
  if (!qword_1EBD5C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C180, &qword_1BE10F0C0);
    sub_1BDA2F524(&qword_1EBD5C228, &qword_1EBD5C178, &qword_1BE10F0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C220);
  }

  return result;
}

uint64_t sub_1BDA2F524(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1BD0DE4F4(&qword_1EBD5C1F8, &qword_1EBD5C198, &qword_1BE10F0D8, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BDA2F5CC()
{
  result = qword_1EBD5C268;
  if (!qword_1EBD5C268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C260, &qword_1BE10F230);
    sub_1BDA2F658();
    sub_1BDA2F6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C268);
  }

  return result;
}

unint64_t sub_1BDA2F658()
{
  result = qword_1EBD5C270;
  if (!qword_1EBD5C270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C250, &qword_1BE10F1C8);
    sub_1BD9938F4(&qword_1EBD5C278, &qword_1EBD5C248, &qword_1BE10F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C270);
  }

  return result;
}

unint64_t sub_1BDA2F6F4()
{
  result = qword_1EBD5C280;
  if (!qword_1EBD5C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C240, &qword_1BE10F1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C280);
  }

  return result;
}

void sub_1BDA2F778()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI35FinanceKitPredictedTransactionsView9ViewModel__transactions) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BDA2F7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0495A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D840, &qword_1BE0E8F10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BDA2F174(a1, &v21 - v12);
  sub_1BDA2F174(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BDA2F174(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BDA2FBA8(&qword_1EBD4D848, MEMORY[0x1E6967810], MEMORY[0x1E6967820]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD498C8, &unk_1BE0DF580);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD4D840, &qword_1BE0E8F10);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD498C8, &unk_1BE0DF580);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BDA2FAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA2FB38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA2FBA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t get_enum_tag_for_layout_string_9PassKitUI21CachedAsyncImagePhaseO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1BDA2FC0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BDA2FC68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1BDA2FCC8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_1BDA2FD04(uint64_t a1)
{
  sub_1BDA2FE10();
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BDA2FE60(319);
      if (v3 <= 0x3F)
      {
        sub_1BDA2FEB8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BDA2FE10()
{
  if (!qword_1EBD5C318)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5C318);
    }
  }
}

void sub_1BDA2FE60(uint64_t a1)
{
  if (!qword_1EBD5C320)
  {
    sub_1BE04A134();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD5C320);
    }
  }
}

unint64_t sub_1BDA2FEB8()
{
  result = qword_1EBD5C328;
  if (!qword_1EBD5C328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD5C328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageLoadingStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageLoadingStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1BDA2FF58(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BDA2FF74(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1BDA2FFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v5 = sub_1BE0528D4();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = a1;
  v66 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  a1 -= 8;
  v56 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v60 = v9;
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v55 - v13;
  v14 = *(a1 + 24);
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C330, &qword_1BE10F390);
  v18 = sub_1BE04EBD4();
  v64 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v55 - v21;
  v22 = *(v2 + 2);
  v73 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338, &qword_1BE10F398);
  sub_1BE0516A4();
  v23 = v72;
  v57 = v17;
  v22(v72);
  sub_1BDA32618(v23, v24, v25, v26, v27, v28, v29, v30);
  sub_1BDA32638(v2 + *(a1 + 48), v12);
  v31 = sub_1BE04A134();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v12, 1, v31) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD45720, &qword_1BE0DBCF0);
    v33 = sub_1BE04AA64();
    v34 = v62;
    (*(*(v33 - 8) + 56))(v62, 1, 1, v33);
  }

  else
  {
    v34 = v62;
    sub_1BE04A124();
    (*(v32 + 8))(v12, v31);
  }

  v35 = v56;
  v36 = v63;
  v37 = v65;
  (*(v56 + 16))(v63, v3, v65);
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v40 = *(v37 + 24);
  *(v39 + 2) = v14;
  *(v39 + 3) = v40;
  (*(v35 + 32))(&v39[v38], v36, v37);
  sub_1BDA32790();
  v41 = v66;
  sub_1BE0528B4();
  v42 = v55;
  v43 = v57;
  sub_1BE050EC4();
  v39, v44, v45, v46, v47, v48, v49, v50;
  (*(v67 + 8))(v41, v68);
  sub_1BD0DE53C(v34, &unk_1EBD3CF70, &qword_1BE0BA000);
  (*(v61 + 8))(v43, v14);
  v51 = sub_1BDA32814();
  v70 = v40;
  v71 = v51;
  swift_getWitnessTable();
  v52 = v58;
  sub_1BD147308();
  v53 = *(v64 + 8);
  v53(v42, v18);
  sub_1BD147308();
  return (v53)(v52, v18);
}

uint64_t sub_1BDA305E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1BE0528A4();
  v3[3] = sub_1BE052894();
  v6 = swift_task_alloc();
  v3[4] = v6;
  v8 = type metadata accessor for CachedAsyncImage(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_1BD16DB04;

  return sub_1BDA306B0(v8);
}

uint64_t sub_1BDA306B0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  v2[22] = swift_task_alloc();
  v3 = sub_1BE04A134();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  sub_1BE0528A4();
  v2[26] = sub_1BE052894();
  v5 = sub_1BE052844();
  v2[27] = v5;
  v2[28] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA307DC, v5, v4);
}

uint64_t sub_1BDA307DC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_1BDA32638(*(v0 + 168) + *(*(v0 + 160) + 40), v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  if (v4 == 1)
  {
    *(v0 + 208), v5, v6, v7, v8, v9, v10, v11;
    sub_1BD0DE53C(v12, &qword_1EBD45720, &qword_1BE0DBCF0);
    v14 = *v13;
    *(v0 + 128) = 0x8000000000000008;
    *(v0 + 64) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338, &qword_1BE10F398);
    sub_1BE0516B4();
LABEL_5:

    v46 = *(v0 + 8);

    return v46();
  }

  v15 = *(v0 + 160);
  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  v16 = sub_1BDA312A8(v15);
  if (v16)
  {
    v24 = v16;
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    *(v0 + 208), v17, v18, v19, v20, v21, v22, v23;
    v30 = sub_1BE04E474();
    v31 = swift_task_alloc();
    v31[2] = *(v29 + 16);
    v31[3] = *(v29 + 24);
    v31[4] = v28;
    v31[5] = v24;
    sub_1BE04E7D4();
    v24, v32, v33, v34, v35, v36, v37, v38;
    v30, v39, v40, v41, v42, v43, v44, v45;

    (*(v27 + 8))(v25, v26);
    goto LABEL_5;
  }

  v49 = *(v0 + 160);
  v48 = *(v0 + 168);
  v50 = *v48;
  *(v0 + 232) = *v48;
  v51 = v48[1];
  *(v0 + 240) = v51;
  *(v0 + 80) = v50;
  *(v0 + 88) = v51;
  *(v0 + 136) = 0x8000000000000000;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338, &qword_1BE10F398);
  sub_1BE0516B4();
  v52 = v48 + *(v49 + 52);
  if (v52[24])
  {
    v53 = swift_task_alloc();
    *(v0 + 272) = v53;
    *v53 = v0;
    v53[1] = sub_1BDA30C9C;
    v54 = *(v0 + 200);
    v55 = *(v0 + 160);

    return sub_1BDA3154C(v54, v55);
  }

  else
  {
    v56 = *(v52 + 2);
    v58 = *v52;
    v57 = *(v52 + 1);
    v59 = swift_task_alloc();
    *(v0 + 256) = v59;
    *v59 = v0;
    v59[1] = sub_1BDA30B58;
    v60 = *(v0 + 200);
    v61 = *(v0 + 160);

    return sub_1BDA31ABC(v60, v56, v61, v58, v57);
  }
}

uint64_t sub_1BDA30B58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[33] = v1;

  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = sub_1BDA311D4;
  }

  else
  {
    v7 = sub_1BDA30F70;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BDA30C9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v4[35] = v1;

  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = sub_1BDA31100;
  }

  else
  {
    v7 = sub_1BDA30DE0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BDA30DE0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 48);
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    v11 = *(v8 + 192);
    v10 = *(v8 + 200);
    v12 = *(v8 + 184);
    v14 = *(v8 + 160);
    v13 = *(v8 + 168);
    sub_1BE048964();
    v15 = sub_1BE04E474();
    v16 = swift_task_alloc();
    v16[2] = *(v14 + 16);
    v16[3] = *(v14 + 24);
    v16[4] = v13;
    v16[5] = v9;
    sub_1BE04E7D4();

    v15, v17, v18, v19, v20, v21, v22, v23;

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    *(v8 + 112) = *(v8 + 232);
    v25 = *(v8 + 192);
    v24 = *(v8 + 200);
    v26 = *(v8 + 184);
    *(v8 + 152) = 0x8000000000000008;
    sub_1BE0516B4();
    (*(v25 + 8))(v24, v26);
  }

  v27 = *(v8 + 8);

  return v27();
}

uint64_t sub_1BDA30F70(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    v11 = *(v8 + 192);
    v10 = *(v8 + 200);
    v12 = *(v8 + 184);
    v14 = *(v8 + 160);
    v13 = *(v8 + 168);
    sub_1BE048964();
    v15 = sub_1BE04E474();
    v16 = swift_task_alloc();
    v16[2] = *(v14 + 16);
    v16[3] = *(v14 + 24);
    v16[4] = v13;
    v16[5] = v9;
    sub_1BE04E7D4();

    v15, v17, v18, v19, v20, v21, v22, v23;

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    *(v8 + 112) = *(v8 + 232);
    v25 = *(v8 + 192);
    v24 = *(v8 + 200);
    v26 = *(v8 + 184);
    *(v8 + 152) = 0x8000000000000008;
    sub_1BE0516B4();
    (*(v25 + 8))(v24, v26);
  }

  v27 = *(v8 + 8);

  return v27();
}

uint64_t sub_1BDA31100(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 280);
  v10 = *(v8 + 240);
  v11 = *(v8 + 232);
  v12 = *(v8 + 200);
  v13 = *(v8 + 184);
  v14 = *(v8 + 192);
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 96) = v11;
  *(v8 + 104) = v10;
  *(v8 + 144) = v9 | 0x4000000000000000;
  sub_1BE0516B4();
  (*(v14 + 8))(v12, v13);

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_1BDA311D4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 264);
  v10 = *(v8 + 240);
  v11 = *(v8 + 232);
  v12 = *(v8 + 200);
  v13 = *(v8 + 184);
  v14 = *(v8 + 192);
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 96) = v11;
  *(v8 + 104) = v10;
  *(v8 + 144) = v9 | 0x4000000000000000;
  sub_1BE0516B4();
  (*(v14 + 8))(v12, v13);

  v15 = *(v8 + 8);

  return v15();
}

id sub_1BDA312A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_1BE04A134();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BDA32638(v1 + *(a1 + 40), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD45720, &qword_1BE0DBCF0);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = *(v1 + *(a1 + 44));
  v11 = sub_1BE04A0F4();
  v12 = [v10 cachedResponseForRequest_];

  if (!v12)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v13 = [v12 data];
  v14 = sub_1BE04AAC4();
  v16 = v15;

  v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v14, v16);
  sub_1BD041A38(v14, v16);
  v18 = sub_1BE04AAB4();
  v19 = [v17 initWithData_];

  sub_1BD1245AC(v14, v16, v20, v21, v22, v23, v24, v25);
  if (v19)
  {
    v19 = sub_1BE051544();
  }

  sub_1BD1245AC(v14, v16, v26, v27, v28, v29, v30, v31);
  sub_1BD1245AC(v14, v16, v32, v33, v34, v35, v36, v37);

  (*(v7 + 8))(v9, v6);
  return v19;
}

uint64_t sub_1BDA3154C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1BE0528A4();
  v3[5] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA315E8, v5, v4);
}

uint64_t sub_1BDA315E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_opt_self() defaultSessionConfiguration];
  v0[8] = v3;
  v0[9] = *(v1 + *(v2 + 44));
  [v3 setURLCache_];
  v0[10] = [objc_opt_self() sessionWithConfiguration_];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1BDA316FC;
  v5 = v0[2];

  return MEMORY[0x1EEDC6260](v5, 0);
}

uint64_t sub_1BDA316FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = v3;

  v7 = v5[7];
  v8 = v5[6];
  if (v3)
  {
    v9 = sub_1BDA31A44;
  }

  else
  {
    v9 = sub_1BDA31844;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1BDA31844(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  v10 = *(v8 + 104);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1BD041A38(v9, v10);
  sub_1BD041A38(v9, v10);
  sub_1BD041A38(v9, v10);
  v12 = sub_1BE04AAB4();
  v13 = [v11 initWithData_];

  sub_1BD1245AC(v9, v10, v14, v15, v16, v17, v18, v19);
  if (v13)
  {
    v26 = *(v8 + 104);
    v27 = *(v8 + 112);
    v28 = *(v8 + 96);
    v29 = *(v8 + 72);
    v30 = sub_1BE051544();
    sub_1BD1245AC(v28, v26, v31, v32, v33, v34, v35, v36);
    sub_1BD1245AC(v28, v26, v37, v38, v39, v40, v41, v42);
    v43 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
    sub_1BD041A38(v28, v26);
    v44 = v27;
    v45 = sub_1BE04AAB4();
    v46 = [v43 initWithResponse:v44 data:v45];

    sub_1BD1245AC(v28, v26, v47, v48, v49, v50, v51, v52);
    v53 = sub_1BE04A0F4();
    [v29 storeCachedResponse:v46 forRequest:v53];
  }

  else
  {
    v54 = *(v8 + 96);
    v55 = *(v8 + 104);
    sub_1BD1245AC(v54, v55, v20, v21, v22, v23, v24, v25);
    sub_1BD1245AC(v54, v55, v56, v57, v58, v59, v60, v61);
    v30 = 0;
    v53 = *(v8 + 112);
  }

  v63 = *(v8 + 96);
  v62 = *(v8 + 104);
  v64 = *(v8 + 80);
  v65 = *(v8 + 64);

  sub_1BD1245AC(v63, v62, v66, v67, v68, v69, v70, v71);
  v72 = *(v8 + 8);

  return v72(v30);
}

uint64_t sub_1BDA31A44()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BDA31ABC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 56) = a3;
  *(v6 + 64) = v5;
  *(v6 + 48) = a2;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 24) = a1;
  *(v6 + 72) = sub_1BE0528A4();
  *(v6 + 80) = sub_1BE052894();
  v8 = sub_1BE052844();
  *(v6 + 88) = v8;
  *(v6 + 96) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BDA31B64, v8, v7);
}

uint64_t sub_1BDA31B64(uint64_t a1)
{
  v2 = v1[8];
  v4 = v1[6];
  v3 = v1[7];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  v8 = sub_1BE052894();
  v1[13] = v8;
  v9 = swift_task_alloc();
  v1[14] = v9;
  v9[2] = *(v3 + 16);
  v9[3] = *(v3 + 24);
  v9[4] = v7;
  v9[5] = v6;
  v9[6] = v5;
  v9[7] = v4;
  v9[8] = v2;
  v10 = swift_task_alloc();
  v1[15] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC68, &qword_1BE0C6D50);
  *v10 = v1;
  v10[1] = sub_1BDA31CB4;
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v1 + 2, v8, v12, 0xD00000000000002ALL, 0x80000001BE148590, sub_1BDA32898, v9, v11);
}

uint64_t sub_1BDA31CB4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v10 = *(v2 + 88);
    v11 = *(v2 + 96);
    v12 = sub_1BDA31E40;
  }

  else
  {
    *(v2 + 104), v3, v4, v5, v6, v7, v8, v9;

    v10 = *(v2 + 88);
    v11 = *(v2 + 96);
    v12 = sub_1BDA31DD8;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BDA31DD8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 8);

  return v10(v9);
}

uint64_t sub_1BDA31E40(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;

  v17 = *(v8 + 8);

  return v17();
}

double sub_1BDA31EB8(__int128 *a1, uint64_t a2)
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C338, &qword_1BE10F398);
  sub_1BE0516B4();
  return result;
}

void sub_1BDA31F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v46 = a5;
  v47 = a6;
  v45 = a4;
  v48 = a3;
  v41 = a1;
  v49 = type metadata accessor for CachedAsyncImage(0, a5, a6, a4);
  v11 = *(v49 - 8);
  v44 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v40 = &v37 - v12;
  v13 = sub_1BE04A134();
  v38 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350, &unk_1BE10F3D0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v43 = [objc_allocWithZone(MEMORY[0x1E69853A0]) init];
  v42 = sub_1BE04A0F4();
  (*(v17 + 16))(v20, v41, v16);
  (*(v14 + 16))(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v21 = v40;
  (*(v11 + 16))(v40, v45, v49);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = (v18 + *(v14 + 80) + v22) & ~*(v14 + 80);
  v24 = (v15 + *(v11 + 80) + v23) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v47;
  *(v25 + 2) = v46;
  *(v25 + 3) = v26;
  (*(v17 + 32))(&v25[v22], v20, v16);
  (*(v14 + 32))(&v25[v23], v39, v38);
  (*(v11 + 32))(&v25[v24], v21, v49);
  aBlock[4] = sub_1BDA328AC;
  v51 = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD21AC88;
  aBlock[3] = &block_descriptor_242;
  v27 = _Block_copy(aBlock);
  v51, v28, v29, v30, v31, v32, v33, v34;
  v36 = v42;
  v35 = v43;
  [v43 _loadAndDecodeImage_constrainedToSize_maximumBytesFromNetwork_completionHandler_];
  _Block_release(v27);
}

void sub_1BDA322E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v55 - v14;
  if (a2)
  {
    v59 = a2;
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350, &unk_1BE10F3D0);
    sub_1BE052854();
    return;
  }

  if (!a1)
  {
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350, &unk_1BE10F3D0);
    sub_1BE052864();
    return;
  }

  v17 = a1;
  v18 = UIImagePNGRepresentation(v17);
  if (v18)
  {
    v56 = v17;
    v19 = v18;
    v20 = sub_1BE04AAC4();
    v22 = v21;

    v57 = v22;
    v58 = v20;
    sub_1BD041A38(v20, v22);
    v55[1] = a4;
    sub_1BE04A124();
    v23 = sub_1BE04AA64();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v15, 1, v23) == 1)
    {
      __break(1u);
      return;
    }

    v25 = objc_allocWithZone(MEMORY[0x1E696AC68]);
    v26 = sub_1BE04A9C4();
    v27 = [v25 initWithURL:v26 statusCode:200 HTTPVersion:0 headerFields:0];

    (*(v24 + 8))(v15, v23);
    v35 = v57;
    v34 = v58;
    if (v27)
    {
      v36 = *(a5 + *(type metadata accessor for CachedAsyncImage(0, a6, a7, v29) + 44));
      v37 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
      sub_1BD041A38(v34, v35);
      v38 = v27;
      v39 = sub_1BE04AAB4();
      v40 = [v37 initWithResponse:v38 data:v39];

      sub_1BD1245AC(v34, v35, v41, v42, v43, v44, v45, v46);
      v47 = sub_1BE04A0F4();
      [v36 storeCachedResponse:v40 forRequest:v47];
    }

    sub_1BD1245AC(v34, v35, v28, v29, v30, v31, v32, v33);
    v17 = v56;
  }

  else
  {
    v34 = 0;
    v35 = 0xF000000000000000;
  }

  v48 = v17;
  v59 = sub_1BE051544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350, &unk_1BE10F3D0);
  sub_1BE052864();
  sub_1BD030220(v34, v35, v49, v50, v51, v52, v53, v54);
}

void sub_1BDA32618(unint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_1BDA32638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA326A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for CachedAsyncImage(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BD0F985C;

  return sub_1BDA305E0(v4 + v9, v6, v7);
}

unint64_t sub_1BDA32790()
{
  result = qword_1EBD5C340;
  if (!qword_1EBD5C340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3CF70, &qword_1BE0BA000);
    sub_1BD96D338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C340);
  }

  return result;
}

unint64_t sub_1BDA32814()
{
  result = qword_1EBD5C348;
  if (!qword_1EBD5C348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C330, &qword_1BE10F390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C348);
  }

  return result;
}

void sub_1BDA328AC(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C350, &unk_1BE10F3D0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1BE04A134() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v14 = *(type metadata accessor for CachedAsyncImage(0, v5, v6, v13) - 8);
  v15 = v2 + ((v11 + v12 + *(v14 + 80)) & ~*(v14 + 80));

  sub_1BDA322E0(a1, a2, v2 + v8, v2 + v11, v15, v5, v6);
}

void sub_1BDA32A3C(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = a1[3];
  v17 = a1[2];
  v18 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358, &qword_1BE10F500);
  MEMORY[0x1BFB3E970](&v9, v5);
  v8 = v10;
  if (v10)
  {
    sub_1BD4CE958(v9, v10, v11, v12, v13, v14, v6, v7);
  }

  *a2 = v8 != 0;
}

_BYTE *sub_1BDA32ABC(_BYTE *result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*result & 1) == 0)
  {
    v4 = *a4;
    v5 = a4[1];
    v6 = a4[2];
    v7 = a4[3];
    sub_1BDA33B50(a4, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358, &qword_1BE10F500);
    sub_1BE0518F4();
    v8[0] = v4;
    v8[1] = v5;
    v8[2] = v6;
    v8[3] = v7;
    return sub_1BD0DE53C(v8, &qword_1EBD5C358, &qword_1BE10F500);
  }

  return result;
}

void sub_1BDA32B68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a1;
  v78 = a2;
  v4 = v2[1];
  v87 = *v2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v88 = v4;
  v89 = v7;
  v8 = v2[2];
  v90 = v2[3];
  v83 = v5;
  v84 = v6;
  v9 = v2[3];
  v85 = v8;
  v86 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358, &qword_1BE10F500);
  MEMORY[0x1BFB3E970](&v80);
  v11 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v12 = v80;
    v13 = v81;
    v14 = v82;
    sub_1BE048C84();
    sub_1BD4CE958(v12, v11, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  *&v83 = v12;
  *(&v83 + 1) = v11;
  sub_1BD0DDEBC();
  v77 = sub_1BE0506C4();
  v76 = v17;
  v74 = v18;
  v75 = v19;
  sub_1BE0528A4();
  sub_1BDA33B50(v3, &v83);
  v20 = sub_1BE052894();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = v3[1];
  *(v21 + 32) = *v3;
  *(v21 + 48) = v23;
  v24 = v3[3];
  *(v21 + 64) = v3[2];
  *(v21 + 80) = v24;
  sub_1BDA33B50(v3, &v83);
  v25 = sub_1BE052894();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v27 = v3[1];
  *(v26 + 32) = *v3;
  *(v26 + 48) = v27;
  v28 = v3[3];
  *(v26 + 64) = v3[2];
  *(v26 + 80) = v28;
  sub_1BE051934();
  v71 = *(&v83 + 1);
  v72 = v83;
  v73 = v84;
  v83 = v87;
  v84 = v88;
  v85 = v89;
  v86 = v90;
  v29 = MEMORY[0x1BFB3E970](&v80, v10);
  v66 = &v66;
  v70 = *(&v80 + 1);
  v30 = v80;
  v68 = *(&v81 + 1);
  v69 = v81;
  v31 = *(&v82 + 1);
  v67 = v82;
  v83 = v80;
  v84 = v81;
  v85 = v82;
  MEMORY[0x1EEE9AC00](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C360, &qword_1BE10F508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80, &qword_1BE0C9780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD5C368, &qword_1EBD5C360, &qword_1BE10F508, MEMORY[0x1E697FDF8]);
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
  sub_1BD12E194();
  v32 = v74;
  v33 = v77;
  v34 = v76;
  v35 = v75;
  v36 = v72;
  v37 = v71;
  sub_1BE050F04();
  v37, v38, v39, v40, v41, v42, v43, v44;
  v36, v45, v46, v47, v48, v49, v50, v51;
  sub_1BD0DDF10(v33, v34, (v32 & 1), v52, v53, v54, v55, v56);
  v35, v57, v58, v59, v60, v61, v62, v63;
  sub_1BD4CE958(v30, v70, v69, v68, v67, v31, v64, v65);
}

id sub_1BDA32FE8@<X0>(_OWORD *a1@<X1>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v47 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v47 - v18;
  v19 = *MEMORY[0x1E69B8068];
  v20 = *(v4 + 104);
  v54 = v3;
  v52 = v20;
  (v20)(v8, v19, v3, v17);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v25 = v24;

    v26 = v8;
    v27 = v54;
    v47 = *(v4 + 8);
    v47(v26, v54);
    v57 = v23;
    v58 = v25;
    v28 = swift_allocObject();
    v29 = a1[1];
    v28[1] = *a1;
    v28[2] = v29;
    v30 = a1[3];
    v28[3] = a1[2];
    v28[4] = v30;
    sub_1BDA33B50(a1, v56);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v52(v53, v19, v27);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v32 = v53;
      v33 = sub_1BE04B6F4();
      v35 = v34;

      v47(v32, v54);
      v57 = v33;
      v58 = v35;
      v36 = swift_allocObject();
      v37 = a1[1];
      v36[1] = *a1;
      v36[2] = v37;
      v38 = a1[3];
      v36[3] = a1[2];
      v36[4] = v38;
      sub_1BDA33B50(a1, v56);
      v39 = v48;
      sub_1BE051744();
      v40 = *(v10 + 16);
      v41 = v49;
      v42 = v55;
      v40(v49, v55, v9);
      v43 = v50;
      v40(v50, v39, v9);
      v44 = v51;
      v40(v51, v41, v9);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98, &unk_1BE0ECEC0);
      v40(&v44[*(v45 + 48)], v43, v9);
      v46 = *(v10 + 8);
      v46(v39, v9);
      v46(v42, v9);
      v46(v43, v9);
      return (v46)(v41, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BDA3349C(__int128 *a1)
{
  v1 = a1[1];
  v25 = *a1;
  v26 = v1;
  v2 = a1[3];
  v27 = a1[2];
  v28 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358, &qword_1BE10F500);
  MEMORY[0x1BFB3E970](&v19, v3);
  v4 = v20;
  if (v20)
  {
    v5 = v19;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    sub_1BE048964();
    sub_1BD4CE958(v5, v4, v6, v7, v8, v9, v10, v11);
    (v8)();
    v9, v12, v13, v14, v15, v16, v17, v18;
  }
}

id sub_1BDA3354C(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v36 = *a1;
  v37 = v9;
  v10 = a1[3];
  v38 = a1[2];
  v39 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C358, &qword_1BE10F500);
  MEMORY[0x1BFB3E970](&v30, v11);
  v12 = v31;
  if (v31)
  {
    v13 = v30;
    v14 = v32;
    v15 = v33;
    v16 = v34;
    v17 = v35;
    sub_1BE048964();
    sub_1BD4CE958(v13, v12, v14, v15, v16, v17, v18, v19);
    (v16)();
    v17, v20, v21, v22, v23, v24, v25, v26;
  }

  sub_1BE04AA54();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1BD0DE53C(v4, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  (*(v6 + 32))(v8, v4, v5);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04A9C4();
    [v28 openSensitiveURL:v29 withOptions:0];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA337C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_1BD0DDEBC();
    sub_1BE048C84();
    result = sub_1BE0506C4();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

id sub_1BDA33888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  IsAvailable = PKPearlIsAvailable();
  v15 = *MEMORY[0x1E69B8068];
  v16 = *(v5 + 104);
  if (IsAvailable)
  {
    v16(v13, *MEMORY[0x1E69B8068], v4);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v18 = result;
    v19 = sub_1BE04B6F4();
    v30 = v20;
    v31 = v19;
LABEL_6:

    v23 = *(v5 + 8);
    v23(v13, v4);
    v16(v7, v15, v4);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      result = (v23)(v7, v4);
      v28 = v30;
      *a3 = v31;
      a3[1] = v28;
      a3[2] = v25;
      a3[3] = v27;
      v29 = v33;
      a3[4] = v32;
      a3[5] = v29;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v16(v10, *MEMORY[0x1E69B8068], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    v21 = sub_1BE04B6F4();
    v30 = v22;
    v31 = v21;
    v13 = v10;
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI19DeviceTakeoverAlertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroyTm_123()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;
  v22 = *(v0 + 56);
  if (v22)
  {
    v22, v15, v16, v17, v18, v19, v20, v21;
    *(v0 + 72), v23, v24, v25, v26, v27, v28, v29;
    *(v0 + 88), v30, v31, v32, v33, v34, v35, v36;
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  v23 = *(v8 + 40);
  if (v23)
  {
    v23, v16, v17, v18, v19, v20, v21, v22;
    *(v8 + 56), v24, v25, v26, v27, v28, v29, v30;
    *(v8 + 72), v31, v32, v33, v34, v35, v36, v37;
  }

  return swift_deallocObject();
}

uint64_t sub_1BDA33CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C370, &qword_1BE10F5A8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v59[-v4 - 16];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C378, &qword_1BE10F5B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59[-v7 - 16];
  v9 = PKSetupListViewConstantsViewMargin();
  PKSetupListHeaderViewConstantsViewMargin();
  v11 = v10;
  *v5 = sub_1BE04F7B4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C380, &qword_1BE10F5B8);
  sub_1BDA341CC(v1, &v5[*(v12 + 44)], v11, v9);
  sub_1BD0DE4F4(&qword_1EBD5C388, &qword_1EBD5C370, &qword_1BE10F5A8, MEMORY[0x1E6981870]);
  sub_1BE050E74();
  sub_1BD0DE53C(v5, &qword_1EBD5C370, &qword_1BE10F5A8);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE04D8B4(&v60);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  v29 = v60;
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C390, &qword_1BE10F638) + 36)];
  *v32 = v30;
  v32[1] = sub_1BD10DF54;
  v32[2] = v31;
  type metadata accessor for DevicePickerController(0);
  sub_1BDA3ABE0(&qword_1EBD4B7D0, type metadata accessor for DevicePickerController, &unk_1BE0EAD30);
  v33 = sub_1BE04E964();
  v34 = swift_getKeyPath();
  sub_1BE04E974();
  v34, v35, v36, v37, v38, v39, v40, v41;
  v33, v42, v43, v44, v45, v46, v47, v48;
  v58 = v60;
  v49 = v61;
  v63 = *(v1 + 16);
  v62 = *(v1 + 32);
  v50 = swift_allocObject();
  v51 = *(v1 + 16);
  *(v50 + 16) = *v1;
  *(v50 + 32) = v51;
  *(v50 + 48) = *(v1 + 32);
  sub_1BD0DE19C(v8, a1, &qword_1EBD5C378, &qword_1BE10F5B0);
  v52 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C398, &unk_1BE10F668) + 36);
  *v52 = v58;
  *(v52 + 16) = v49;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 0u;
  *(v52 + 56) = PKEdgeInsetsMake;
  *(v52 + 64) = 0;
  *(v52 + 72) = sub_1BDA39D60;
  *(v52 + 80) = v50;
  *(v52 + 88) = 0;
  *(v52 + 96) = 0;
  sub_1BE048964();
  sub_1BD0DE19C(&v63, v59, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BD0DE19C(&v62, v59, &qword_1EBD5C3A0, &qword_1BE10F678);
  sub_1BD0DE53C(v8, &qword_1EBD5C378, &qword_1BE10F5B0);
  v53 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3A8, &qword_1BE10F680) + 52));
  *v53 = 0xD000000000000016;
  v53[1] = 0x80000001BE1486B0;
  v54 = swift_allocObject();
  v55 = *(v1 + 16);
  *(v54 + 16) = *v1;
  *(v54 + 32) = v55;
  *(v54 + 48) = *(v1 + 32);
  v56 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3B0, &qword_1BE10F688) + 36));
  *v56 = sub_1BDA39D68;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  sub_1BE048964();
  sub_1BD0DE19C(&v63, &v60, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  return sub_1BD0DE19C(&v62, &v60, &qword_1EBD5C3A0, &qword_1BE10F678);
}

void sub_1BDA3415C(uint64_t result)
{
  v1 = *(result + 8) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    v4 = sub_1BE048964();
    v2(v4);

    sub_1BD0D4744(v2, v3, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_1BDA341CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v37 = a1;
  v49 = a2;
  v46 = sub_1BE04FB94();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE04FC54();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3B8, &qword_1BE10F690);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3C0, &qword_1BE10F698);
  v38 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3C8, &qword_1BE10F6A0);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v36 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D0, &qword_1BE10F6A8);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v36 = &v36 - v19;
  v52 = a1;
  v53 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D8, &qword_1BE10F6B0);
  v44 = MEMORY[0x1E6981F48];
  sub_1BD0DE4F4(&qword_1EBD5C3E0, &qword_1EBD5C3D8, &qword_1BE10F6B0, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v20 = sub_1BE0501C4();
  sub_1BE04FC24();
  v21 = sub_1BD0DE4F4(&qword_1EBD5C3E8, &qword_1EBD5C3B8, &qword_1BE10F690, MEMORY[0x1E697CD20]);
  MEMORY[0x1BFB3DB30](v20, *&a4, 0, v9, v10, v21);
  (*(v39 + 8))(v9, v42);
  (*(v11 + 8))(v13, v10);
  v22 = v43;
  sub_1BE04FB84();
  v54 = v10;
  v55 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x1E697C750];
  v25 = v46;
  sub_1BE051144();
  (*(v47 + 8))(v22, v25);
  (*(v38 + 8))(v16, v14);
  v54 = v14;
  v55 = v25;
  v56 = OpaqueTypeConformance2;
  v57 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v36;
  v28 = v40;
  sub_1BE050DF4();
  (*(v41 + 8))(v18, v28);
  sub_1BE051C64();
  v51 = v37;
  v50 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3F0, &qword_1BE10F6B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3F8, &qword_1BE10F6C0);
  v54 = v28;
  v55 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C400, &unk_1BE10F6C8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46038, &unk_1BE0D6320);
  v32 = sub_1BD0DE4F4(&qword_1EBD5C408, &qword_1EBD46038, &unk_1BE0D6320, &unk_1BE0FEC38);
  v54 = v31;
  v55 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v45;
  v54 = v45;
  v55 = v30;
  v56 = v29;
  v57 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD5C410, &qword_1EBD5C3F8, &qword_1BE10F6C0, v44);
  sub_1BE0510B4();
  return (*(v48 + 8))(v27, v34);
}

id sub_1BDA34964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<D0>)
{
  v65 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C428, &unk_1BE10F738);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v58 - v8;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v17 = *MEMORY[0x1E69B80D8];
  v18 = *(v10 + 104);
  v18(&v58 - v15, v17, v9, v14);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v61 = sub_1BE04B6F4();
    v64 = v21;

    v59 = *(v10 + 8);
    v59(v16, v9);
    v58 = "DEVICE_SELECTION_TITLE";
    (v18)(v12, v17, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BE0B69E0;
    v23 = *(*(v65 + 8) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_pass);
    v24 = [v23 localizedDescription];
    v25 = sub_1BE052434();
    v27 = v26;

    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1BD110550();
    *(v22 + 32) = v25;
    *(v22 + 40) = v27;
    v28 = sub_1BE04B714();
    v58 = v28;
    v30 = v29;
    v22, v29, v31, v32, v33, v34, v35, v36;
    v59(v12, v9);
    v37 = v23;
    v60 = v23;
    v38 = v23;
    v39 = sub_1BE0501F4();
    LOBYTE(v22) = v39;
    LODWORD(v59) = v39;
    sub_1BE04E1F4();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v92 = 0;
    v94 = 0;
    v76[0] = sub_1BE051404();
    v48 = sub_1BE0518D4();
    v49 = v62;
    sub_1BDA34E9C(v62);
    v50 = v63;
    sub_1BD0DE19C(v49, v63, &qword_1EBD5C428, &unk_1BE10F738);
    v51 = v61;
    *&v66 = v61;
    *(&v66 + 1) = v64;
    *&v67 = v28;
    *(&v67 + 1) = v30;
    *&v68 = v37;
    BYTE8(v68) = v22;
    *(&v68 + 9) = *v93;
    HIDWORD(v68) = *&v93[3];
    *&v69 = v41;
    *(&v69 + 1) = v43;
    *&v70 = v45;
    *(&v70 + 1) = v47;
    LOBYTE(v71) = 0;
    DWORD1(v71) = *&v95[3];
    *(&v71 + 1) = *v95;
    *(&v71 + 1) = 0;
    v72 = a3;
    v73 = 0;
    *&v74 = a3;
    BYTE8(v74) = 0;
    HIDWORD(v74) = *(v96 + 3);
    *(&v74 + 9) = v96[0];
    v75 = v48;
    v52 = v74;
    *(a2 + 128) = v48;
    *(a2 + 96) = a3;
    *(a2 + 112) = v52;
    v53 = v66;
    v54 = v67;
    v55 = v71;
    *(a2 + 64) = v70;
    *(a2 + 80) = v55;
    v56 = v69;
    *(a2 + 32) = v68;
    *(a2 + 48) = v56;
    *a2 = v53;
    *(a2 + 16) = v54;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C430, &qword_1BE10F748);
    sub_1BD0DE19C(v50, a2 + *(v57 + 48), &qword_1EBD5C428, &unk_1BE10F738);
    sub_1BD0DE19C(&v66, v76, &qword_1EBD5C438, &qword_1BE10F750);
    sub_1BD0DE53C(v49, &qword_1EBD5C428, &unk_1BE10F738);
    sub_1BD0DE53C(v50, &qword_1EBD5C428, &unk_1BE10F738);
    v76[0] = v51;
    v76[1] = v64;
    v76[2] = v58;
    v76[3] = v30;
    v76[4] = v60;
    v77 = v59;
    *v78 = *v93;
    *&v78[3] = *&v93[3];
    v79 = v41;
    v80 = v43;
    v81 = v45;
    v82 = v47;
    v83 = 0;
    *v84 = *v95;
    *&v84[3] = *&v95[3];
    v85 = 0;
    v86 = a3;
    v87 = 0;
    v88 = a3;
    v89 = 0;
    *&v90[3] = *(v96 + 3);
    *v90 = v96[0];
    v91 = v48;
    return sub_1BD0DE53C(v76, &qword_1EBD5C438, &qword_1BE10F750);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BDA34E9C@<X0>(char *a1@<X8>)
{
  v81 = a1;
  v2 = sub_1BE04BD74();
  v77 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C440, &qword_1BE10F758);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v75 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C448, &qword_1BE10F760);
  MEMORY[0x1EEE9AC00](v82);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C450, &qword_1BE10F768);
  v78 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v75 - v13;
  v85 = v1;
  sub_1BDA366A8(v9);
  v14 = *(v1 + 24);
  if (v14)
  {
    v87 = *(v1 + 16);
    v88 = v14;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v15 = sub_1BE0506C4();
    v14 = v16;
    v18 = v17;
    v20 = v19;
    KeyPath = swift_getKeyPath();
    v22 = sub_1BE050454();
    v23 = swift_getKeyPath();
    LOBYTE(v87) = v18 & 1;
    v86 = 1;
    v24 = v18 & 1;
    v25 = 1;
    v26 = 256;
  }

  else
  {
    v15 = 0;
    v20 = 0;
    KeyPath = 0;
    v23 = 0;
    v22 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
  }

  v87 = v15;
  v88 = v14;
  v89 = v24;
  v90 = v20;
  v91 = KeyPath;
  v92 = 0;
  v93 = v25;
  v94 = v23;
  v95 = v22;
  v96 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C458, &qword_1BE10F770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C460, &qword_1BE10F778);
  sub_1BDA3A118(&qword_1EBD5C468, &qword_1EBD5C448, &qword_1BE10F760, sub_1BDA39DB4);
  sub_1BDA39E6C();
  sub_1BDA3A118(&qword_1EBD5C4C0, &qword_1EBD5C460, &qword_1BE10F778, sub_1BDA3A194);
  sub_1BE051A34();
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(&v87);
  v27, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  v43 = v87[2];
  v87, v44, v45, v46, v47, v48, v49, v50;
  if (!v43)
  {
    v57 = v10;
    v64 = 1;
    v54 = v83;
    goto LABEL_8;
  }

  v51 = v77;
  v52 = v76;
  (*(v77 + 104))(v76, *MEMORY[0x1E69B80D8], v2);
  result = PKPassKitBundle();
  v54 = v83;
  if (result)
  {
    v55 = result;
    v56 = v2;
    v57 = v10;
    v58 = sub_1BE04B6F4();
    v60 = v59;

    (*(v51 + 8))(v52, v56);
    v87 = v58;
    v88 = v60;
    sub_1BD0DDEBC();
    v87 = sub_1BE0506C4();
    v88 = v61;
    LOBYTE(v89) = v62 & 1;
    v90 = v63;
    MEMORY[0x1EEE9AC00](v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4D8, &qword_1BE10F7F0);
    sub_1BDA3A228();
    sub_1BE051A24();
    v64 = 0;
LABEL_8:
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4E8, &qword_1BE10F7F8);
    (*(*(v65 - 8) + 56))(v54, v64, 1, v65);
    v66 = v78;
    v67 = *(v78 + 16);
    v68 = v54;
    v69 = v79;
    v70 = v84;
    v67(v79, v84, v57);
    v71 = v80;
    sub_1BD0DE19C(v68, v80, &qword_1EBD5C440, &qword_1BE10F758);
    v72 = v81;
    v67(v81, v69, v57);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4F0, &qword_1BE10F800);
    sub_1BD0DE19C(v71, &v72[*(v73 + 48)], &qword_1EBD5C440, &qword_1BE10F758);
    sub_1BD0DE53C(v68, &qword_1EBD5C440, &qword_1BE10F758);
    v74 = *(v66 + 8);
    v74(v70, v57);
    sub_1BD0DE53C(v71, &qword_1EBD5C440, &qword_1BE10F758);
    return (v74)(v69, v57);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA35590(uint64_t a1, uint64_t a2)
{
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D0, &qword_1BE10F6A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C400, &unk_1BE10F6C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3C8, &qword_1BE10F6A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3C0, &qword_1BE10F698);
  sub_1BE04FB94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3B8, &qword_1BE10F690);
  sub_1BD0DE4F4(&qword_1EBD5C3E8, &qword_1EBD5C3B8, &qword_1BE10F690, MEMORY[0x1E697CD20]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46038, &unk_1BE0D6320);
  sub_1BD0DE4F4(&qword_1EBD5C408, &qword_1EBD46038, &unk_1BE0D6320, &unk_1BE0FEC38);
  swift_getOpaqueTypeConformance2();
  return sub_1BE050954();
}

uint64_t sub_1BDA357C4()
{
  v0 = sub_1BE04F714();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BDA35968(v10);
  v7 = v10[2];
  v8 = v10[3];
  v9[0] = v11[0];
  *(v9 + 9) = *(v11 + 9);
  v5 = v10[0];
  v6 = v10[1];
  sub_1BE04F704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46038, &unk_1BE0D6320);
  sub_1BD0DE4F4(&qword_1EBD5C408, &qword_1EBD46038, &unk_1BE0D6320, &unk_1BE0FEC38);
  sub_1BE050CB4();
  (*(v1 + 8))(v3, v0);
  v12[2] = v7;
  v12[3] = v8;
  v13[0] = v9[0];
  *(v13 + 9) = *(v9 + 9);
  v12[0] = v5;
  v12[1] = v6;
  return sub_1BD0DE53C(v12, &qword_1EBD46038, &unk_1BE0D6320);
}

id sub_1BDA35968@<X0>(_OWORD *a1@<X8>)
{
  v147 = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v138 - v7;
  LOBYTE(v151[0]) = 1;
  v9 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46040 &qword_1BE10F6E0))];
  LOBYTE(v156[0]) = 1;
  v150[0] = 1;
  v10 = &v9[qword_1EBD56240];
  v11 = *&v9[qword_1EBD56240];
  v12 = *&v9[qword_1EBD56240 + 8];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_1BD0D4744(v11, v12, v13, v14, v15, v16, v17, v18);
  v149 = v9;
  v19 = &v9[qword_1EBD56248[0]];
  v20 = *&v9[qword_1EBD56248[0]];
  v21 = *&v9[qword_1EBD56248[0] + 8];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_1BD0D4744(v20, v21, v22, v23, v24, v25, v26, v27);
  v144 = LOBYTE(v156[0]);
  v145 = LOBYTE(v151[0]);
  v146 = v150[0];
  v28 = *MEMORY[0x1E69B80D0];
  v148 = *(v3 + 104);
  v148(v8, v28, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v31 = sub_1BE04B6F4();
    v142 = v32;
    v143 = v31;

    v140 = *(v3 + 8);
    v140(v8, v2);
    0, v33, v34, v35, v36, v37, v38, v39;
    v181[0] = *v1;
    v40 = *(&v181[0] + 1);
    KeyPath = swift_getKeyPath();
    v42 = swift_getKeyPath();
    v141 = v40;
    sub_1BE04D8B4(v156);
    KeyPath, v43, v44, v45, v46, v47, v48, v49;
    v42, v50, v51, v52, v53, v54, v55, v56;
    v57 = v156[0];
    v180 = *(v1 + 16);
    v179 = *(v1 + 32);
    v58 = swift_allocObject();
    *(v58 + 48) = *(v1 + 32);
    v59 = *(v1 + 16);
    *(v58 + 16) = *v1;
    *(v58 + 32) = v59;
    v60 = &v149[qword_1EBD56240];
    v61 = *&v149[qword_1EBD56240];
    v62 = *&v149[qword_1EBD56240 + 8];
    *v60 = sub_1BDA39D94;
    v60[1] = v58;
    sub_1BD0DE19C(v181, v156, &qword_1EBD5C420, &qword_1BE10F730);
    sub_1BD0DE19C(&v180, v156, &qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BD0DE19C(&v179, v156, &qword_1EBD5C3A0, &qword_1BE10F678);
    sub_1BD0D4744(v61, v62, v63, v64, v65, v66, v67, v68);
    v148(v5, *MEMORY[0x1E69B80D8], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v69 = result;
      LODWORD(v148) = v57 > 0;
      v139 = sub_1BE04B6F4();
      v71 = v70;

      v140(v5, v2);
      0, v72, v73, v74, v75, v76, v77, v78;
      v79 = swift_allocObject();
      *(v79 + 48) = *(v1 + 32);
      v80 = *(v1 + 16);
      *(v79 + 16) = *v1;
      *(v79 + 32) = v80;
      v81 = v149;
      v82 = &v149[qword_1EBD56248[0]];
      v83 = *&v149[qword_1EBD56248[0]];
      v84 = *&v149[qword_1EBD56248[0] + 8];
      *v82 = sub_1BDA39D9C;
      v82[1] = v79;
      sub_1BD0DE19C(v181, v156, &qword_1EBD5C420, &qword_1BE10F730);
      sub_1BD0DE19C(&v180, v156, &qword_1EBD3A5C8, &qword_1BE0BAA50);
      sub_1BD0DE19C(&v179, v156, &qword_1EBD5C3A0, &qword_1BE10F678);
      sub_1BD0D4744(v83, v84, v85, v86, v87, v88, v89, v90);
      v91 = swift_getKeyPath();
      v92 = swift_getKeyPath();
      sub_1BE04D8B4(v156);
      v91, v93, v94, v95, v96, v97, v98, v99;
      v92, v100, v101, v102, v103, v104, v105, v106;
      v107 = v156[0];
      v108 = swift_getKeyPath();
      v109 = swift_getKeyPath();
      sub_1BE04D8B4(v156);
      v108, v110, v111, v112, v113, v114, v115, v116;
      v109, v117, v118, v119, v120, v121, v122, v123;
      v124 = (v156[0] & 1) == 0;
      *(&v152 + 2) = v177;
      WORD3(v152) = v178;
      *(&v153 + 9) = *v176;
      HIDWORD(v153) = *&v176[3];
      HIWORD(v155[0]) = v175;
      v125 = v174;
      *(v155 + 10) = v174;
      v151[0] = v81;
      v151[1] = 0;
      v126 = v144;
      v127 = v145;
      LOBYTE(v152) = v144;
      BYTE1(v152) = v107;
      v129 = v142;
      v128 = v143;
      *(&v152 + 1) = v143;
      *&v153 = v142;
      v130 = v148;
      BYTE8(v153) = v148;
      v131 = v139;
      *&v154 = v139;
      *(&v154 + 1) = v71;
      *&v155[0] = 0;
      BYTE8(v155[0]) = v145;
      BYTE9(v155[0]) = v124;
      *&v155[1] = 0;
      v132 = v146;
      BYTE8(v155[1]) = v146;
      v133 = v152;
      v134 = v147;
      *v147 = v81;
      v134[1] = v133;
      v135 = v153;
      v136 = v154;
      v137 = v155[0];
      *(v134 + 73) = *(v155 + 9);
      v134[3] = v136;
      v134[4] = v137;
      v134[2] = v135;
      v156[0] = v81;
      v156[1] = 0;
      v157 = v126;
      v158 = v107;
      v160 = v178;
      v159 = v177;
      v161 = v128;
      v162 = v129;
      v163 = v130;
      *&v164[3] = *&v176[3];
      *v164 = *v176;
      v165 = v131;
      v166 = v71;
      v167 = 0;
      v168 = v127;
      v169 = v124;
      v171 = v175;
      v170 = v125;
      v172 = 0;
      v173 = v132;
      sub_1BD0DE19C(v151, v150, &qword_1EBD46038, &unk_1BE0D6320);
      return sub_1BD0DE53C(v156, &qword_1EBD46038, &unk_1BE0D6320);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA35F9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C3D0, &qword_1BE10F6A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-v6];
  sub_1BDA35968(v26);
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  v23 = v26[2];
  v24 = v26[3];
  v25[0] = v27[0];
  *(v25 + 9) = *(v27 + 9);
  v21 = v26[0];
  v22 = v26[1];
  v8(a2, v7, v4);
  v9 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C418, &qword_1BE10F6D8) + 48)];
  v11 = v24;
  v10 = v25[0];
  v13 = v24;
  v12 = v25[0];
  v28[3] = v24;
  v29[0] = v25[0];
  v14 = *(v25 + 9);
  *(v29 + 9) = *(v25 + 9);
  v28[2] = v23;
  v9[2] = v23;
  v9[3] = v11;
  v9[4] = v10;
  *(v9 + 73) = v14;
  v15 = v22;
  v16 = v23;
  v17 = v22;
  v18 = v21;
  v28[0] = v21;
  v28[1] = v22;
  *v9 = v21;
  v9[1] = v15;
  *(v31 + 9) = *(v25 + 9);
  v30[3] = v13;
  v31[0] = v12;
  v30[1] = v17;
  v30[2] = v16;
  v30[0] = v18;
  sub_1BD0DE19C(v28, v20, &qword_1EBD46038, &unk_1BE0D6320);
  sub_1BD0DE53C(v30, &qword_1EBD46038, &unk_1BE0D6320);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BDA36190(__int128 *a1)
{
  v26 = *a1;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v25);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v23[2] = v25;
  swift_getKeyPath();
  v25 = a1[1];
  v24 = *(a1 + 4);
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 4);
  sub_1BD0DE19C(&v26, v23, &qword_1EBD5C420, &qword_1BE10F730);
  sub_1BD0DE19C(&v25, v23, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BD0DE19C(&v24, v23, &qword_1EBD5C3A0, &qword_1BE10F678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8, &qword_1BE0E3A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C580, &qword_1BE10F9B8);
  sub_1BD0DE4F4(&qword_1EBD5C4F8, &qword_1EBD4B7F8, &qword_1BE0E3A60, MEMORY[0x1E69E6338]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C498, &qword_1BE10F790);
  v21 = sub_1BDA39F2C();
  v23[0] = v20;
  v23[1] = v21;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BDA363AC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for DeviceViewModel(0);
  v6 = v5 - 8;
  v30 = *(v5 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C498, &qword_1BE10F790);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v29 - v8;
  v10 = *(a1 + *(v6 + 48));
  sub_1BDA3A7F0(a1, &v29 - v8, type metadata accessor for DeviceViewModel);
  v9[*(type metadata accessor for DeviceRowView(0) + 20)] = v10;
  v11 = objc_opt_self();
  v12 = [v11 secondarySystemBackgroundColor];
  v13 = sub_1BE0511C4();
  v14 = sub_1BE0501D4();
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4B0, &qword_1BE10F798) + 36)];
  *v15 = v13;
  v15[8] = v14;
  v16 = [v11 secondarySystemBackgroundColor];
  *&v35 = sub_1BE0511C4();
  *&v9[*(v29 + 36)] = sub_1BE0518D4();
  v17 = *a2;
  v34 = a2[1];
  v35 = v17;
  v33 = *(a2 + 4);
  sub_1BDA3A7F0(a1, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceViewModel);
  v18 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v19 = swift_allocObject();
  v20 = a2[1];
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a2 + 4);
  sub_1BDA3A858(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DeviceViewModel);
  sub_1BD0DE19C(&v35, v32, &qword_1EBD5C420, &qword_1BE10F730);
  sub_1BD0DE19C(&v34, v32, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BD0DE19C(&v33, v32, &qword_1EBD5C3A0, &qword_1BE10F678);
  sub_1BDA39F2C();
  sub_1BE0509D4();
  v19, v21, v22, v23, v24, v25, v26, v27;
  return sub_1BD0DE53C(v9, &qword_1EBD5C498, &qword_1BE10F790);
}

uint64_t sub_1BDA366A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C488, &qword_1BE10F788);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C478, &qword_1BE10F780);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  if ((*(*(v1 + 8) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) & 1) != 0 || (KeyPath = swift_getKeyPath(), v14 = swift_getKeyPath(), sub_1BE04D8B4(v44), KeyPath, v15, v16, v17, v18, v19, v20, v21, v14, v22, v23, v24, v25, v26, v27, v28, v29 = *(*&v44[0] + 16), *&v44[0], v30, v31, v32, v33, v34, v35, v36, v29 >= 2))
  {
    *v5 = sub_1BE04F504();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C500, &qword_1BE10F8D8);
    sub_1BDA36C64(v1, &v5[*(v37 + 44)]);
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD0DE204(v5, v9, &qword_1EBD5C488, &qword_1BE10F788);
    v38 = &v9[*(v6 + 36)];
    v39 = v44[5];
    *(v38 + 4) = v44[4];
    *(v38 + 5) = v39;
    *(v38 + 6) = v44[6];
    v40 = v44[1];
    *v38 = v44[0];
    *(v38 + 1) = v40;
    v41 = v44[3];
    *(v38 + 2) = v44[2];
    *(v38 + 3) = v41;
    sub_1BD0DE204(v9, v12, &qword_1EBD5C478, &qword_1BE10F780);
    sub_1BD0DE204(v12, a1, &qword_1EBD5C478, &qword_1BE10F780);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  return (*(v7 + 56))(a1, v42, 1, v6);
}

uint64_t sub_1BDA36970(__int128 *a1)
{
  v25 = *a1;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v24);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v22 = v24;
  swift_getKeyPath();
  v24 = a1[1];
  v23 = *(a1 + 4);
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 4);
  sub_1BD0DE19C(&v25, v21, &qword_1EBD5C420, &qword_1BE10F730);
  sub_1BD0DE19C(&v24, v21, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BD0DE19C(&v23, v21, &qword_1EBD5C3A0, &qword_1BE10F678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B7F8, &qword_1BE0E3A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C498, &qword_1BE10F790);
  sub_1BD0DE4F4(&qword_1EBD5C4F8, &qword_1EBD4B7F8, &qword_1BE0E3A60, MEMORY[0x1E69E6338]);
  sub_1BDA39F2C();
  return sub_1BE0519C4();
}

uint64_t sub_1BDA36B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BDA3A7F0(a1, a2, type metadata accessor for DeviceViewModel);
  *(a2 + *(type metadata accessor for DeviceRowView(0) + 20)) = 2;
  v4 = objc_opt_self();
  v5 = [v4 secondarySystemBackgroundColor];
  v6 = sub_1BE0511C4();
  v7 = sub_1BE0501D4();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C4B0, &qword_1BE10F798) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = [v4 secondarySystemBackgroundColor];
  sub_1BE0511C4();
  v10 = sub_1BE0518D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C498, &qword_1BE10F790);
  *(a2 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_1BDA36C64@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v173 = sub_1BE04BD74();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C508, &qword_1BE10F8E0);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v165 - v4;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C510, &qword_1BE10F8E8);
  v179 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v177 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v165 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C518, &qword_1BE10F8F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v180 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v165 - v11;
  v13 = sub_1BE04ED74();
  v170 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C520, &qword_1BE10F8F8);
  v16 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v18 = &v165 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C528, &qword_1BE10F900);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v165 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C530, &qword_1BE10F908);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v178 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v187 = *a1;
  v27 = *(*(&v187 + 1) + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_showSelectAllDevices) == 1;
  v182 = &v165 - v26;
  if (v27)
  {
    KeyPath = swift_getKeyPath();
    v168 = v12;
    v29 = KeyPath;
    v30 = swift_getKeyPath();
    v167 = v13;
    v31 = v30;
    sub_1BE04D8B4(v184);
    v29, v32, v33, v34, v35, v36, v37, v38;
    v31, v39, v40, v41, v42, v43, v44, v45;
    v166 = v16;
    v46 = *&v184[0];
    v47 = swift_getKeyPath();
    v48 = swift_getKeyPath();
    sub_1BE04D8B4(v184);
    v47, v49, v50, v51, v52, v53, v54, v55;
    v48, v56, v57, v58, v59, v60, v61, v62;
    v63 = *(*&v184[0] + 16);
    *&v184[0], v64, v65, v66, v67, v68, v69, v70;
    v186 = a1[1];
    v185 = *(a1 + 4);
    v71 = swift_allocObject();
    *(v71 + 16) = v46 == v63;
    v72 = a1[1];
    *(v71 + 24) = *a1;
    *(v71 + 40) = v72;
    *(v71 + 56) = *(a1 + 4);
    MEMORY[0x1EEE9AC00](v71);
    sub_1BD0DE19C(&v187, v184, &qword_1EBD5C420, &qword_1BE10F730);
    sub_1BD0DE19C(&v186, v184, &qword_1EBD3A5C8, &qword_1BE0BAA50);
    sub_1BD0DE19C(&v185, v184, &qword_1EBD5C3A0, &qword_1BE10F678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C548, &qword_1BE10F950);
    sub_1BDA3A2F4();
    v12 = v168;
    sub_1BE051704();
    sub_1BE04ED64();
    sub_1BD0DE4F4(&qword_1EBD5C578, &qword_1EBD5C520, &qword_1BE10F8F8, MEMORY[0x1E697D680]);
    sub_1BDA3ABE0(&qword_1EBD59570, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v73 = v169;
    v74 = v18;
    v75 = v22;
    v76 = v167;
    sub_1BE050894();
    (*(v170 + 8))(v15, v76);
    (*(v166 + 8))(v74, v73);
    v77 = v182;
    (*(v20 + 32))(v182, v75, v19);
    (*(v20 + 56))(v77, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(&v165 - v26, 1, 1, v19);
  }

  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  sub_1BE04D8B4(v184);
  v78, v80, v81, v82, v83, v84, v85, v86;
  v79, v87, v88, v89, v90, v91, v92, v93;
  v94 = *(*&v184[0] + 16);
  *&v184[0], v95, v96, v97, v98, v99, v100, v101;
  v102 = 1;
  if (v94 >= 2)
  {
    v103 = swift_getKeyPath();
    v104 = swift_getKeyPath();
    sub_1BE04D8B4(v184);
    v103, v105, v106, v107, v108, v109, v110, v111;
    v104, v112, v113, v114, v115, v116, v117, v118;
    v119 = *&v184[0];
    v170 = *&v184[0];
    v120 = v172;
    v121 = v171;
    v122 = v173;
    (*(v172 + 104))(v171, *MEMORY[0x1E69B80D8], v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v123 = swift_allocObject();
    v124 = MEMORY[0x1E69E6530];
    *(v123 + 16) = xmmword_1BE0B69E0;
    v125 = MEMORY[0x1E69E65A8];
    *(v123 + 56) = v124;
    *(v123 + 64) = v125;
    *(v123 + 32) = v119;
    v126 = sub_1BE04B714();
    v128 = v127;
    v123, v127, v129, v130, v131, v132, v133, v134;
    (*(v120 + 8))(v121, v122);
    *&v184[0] = v126;
    *(&v184[0] + 1) = v128;
    sub_1BD0DDEBC();
    v135 = sub_1BE0506C4();
    v137 = v136;
    LOBYTE(v128) = v138;
    v140 = v139;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
    v142 = v175;
    v143 = &v175[*(v141 + 36)];
    v144 = v12;
    v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v146 = sub_1BE0505C4();
    v147 = v143 + v145;
    v12 = v144;
    (*(*(v146 - 8) + 56))(v147, 1, 1, v146);
    *v143 = swift_getKeyPath();
    v148 = v183;
    *v142 = v135;
    *(v142 + 8) = v137;
    *(v142 + 16) = v128 & 1;
    *(v142 + 24) = v140;
    LODWORD(v135) = sub_1BE04FC94();
    *(v142 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C540, &qword_1BE10F948) + 36)) = v135;
    v149 = sub_1BE051D84();
    v150 = (v142 + *(v174 + 36));
    v151 = v170;
    *v150 = v149;
    v150[1] = v151;
    sub_1BE051CF4();
    sub_1BE04EE54();
    v152 = v177;
    sub_1BD0DE204(v142, v177, &qword_1EBD5C508, &qword_1BE10F8E0);
    v153 = (v152 + *(v148 + 36));
    v154 = v184[5];
    v153[4] = v184[4];
    v153[5] = v154;
    v153[6] = v184[6];
    v155 = v184[1];
    *v153 = v184[0];
    v153[1] = v155;
    v156 = v184[3];
    v153[2] = v184[2];
    v153[3] = v156;
    v157 = v152;
    v158 = v176;
    sub_1BD0DE204(v157, v176, &qword_1EBD5C510, &qword_1BE10F8E8);
    sub_1BD0DE204(v158, v144, &qword_1EBD5C510, &qword_1BE10F8E8);
    v102 = 0;
  }

  (*(v179 + 56))(v12, v102, 1, v183);
  v159 = v182;
  v160 = v178;
  sub_1BD0DE19C(v182, v178, &qword_1EBD5C530, &qword_1BE10F908);
  v161 = v180;
  sub_1BD0DE19C(v12, v180, &qword_1EBD5C518, &qword_1BE10F8F0);
  v162 = v181;
  sub_1BD0DE19C(v160, v181, &qword_1EBD5C530, &qword_1BE10F908);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C538, &qword_1BE10F910);
  sub_1BD0DE19C(v161, v162 + *(v163 + 48), &qword_1EBD5C518, &qword_1BE10F8F0);
  sub_1BD0DE53C(v12, &qword_1EBD5C518, &qword_1BE10F8F0);
  sub_1BD0DE53C(v159, &qword_1EBD5C530, &qword_1BE10F908);
  sub_1BD0DE53C(v161, &qword_1EBD5C518, &qword_1BE10F8F0);
  return sub_1BD0DE53C(v160, &qword_1EBD5C530, &qword_1BE10F908);
}

int *sub_1BDA37898@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C570, &qword_1BE10F960);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v45 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C560, &qword_1BE10F958);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v45 - v5;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E69B80D8], v7, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = a1 & 1;
    if (a1)
    {
      v15 = "_SELECT_ALL_BUTTON";
    }

    else
    {
      v15 = "DEVICE_SELECTION_SELECTED_COUNT";
    }

    v16 = sub_1BE04B6F4();
    v18 = v17;
    (v15 | 0x8000000000000000), v17, v19, v20, v21, v22, v23, v24;

    (*(v8 + 8))(v11, v7);
    *&v49 = v16;
    *(&v49 + 1) = v18;
    sub_1BD0DDEBC();
    v25 = sub_1BE0506C4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30) + 36)];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v34 = sub_1BE0505C4();
    (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
    *v32 = swift_getKeyPath();
    *v4 = v25;
    *(v4 + 1) = v27;
    v4[16] = v29 & 1;
    *(v4 + 3) = v31;
    v35 = sub_1BE051D84();
    v36 = &v4[*(v46 + 36)];
    *v36 = v35;
    v36[8] = v14;
    sub_1BE051CE4();
    sub_1BE04EE54();
    sub_1BD0DE204(v4, v6, &qword_1EBD5C570, &qword_1BE10F960);
    v37 = &v6[*(v47 + 36)];
    v38 = v54;
    *(v37 + 4) = v53;
    *(v37 + 5) = v38;
    *(v37 + 6) = v55;
    v39 = v50;
    *v37 = v49;
    *(v37 + 1) = v39;
    v40 = v52;
    *(v37 + 2) = v51;
    *(v37 + 3) = v40;
    v41 = sub_1BE0511D4();
    KeyPath = swift_getKeyPath();
    v43 = v48;
    sub_1BD0DE204(v6, v48, &qword_1EBD5C560, &qword_1BE10F958);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C548, &qword_1BE10F950);
    v44 = (v43 + result[9]);
    *v44 = KeyPath;
    v44[1] = v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BDA37C7C(uint64_t a1)
{
  sub_1BD649DE0();
  v2 = *(a1 + 32);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v4 = *MEMORY[0x1E69BA848];
    *(inited + 32) = *MEMORY[0x1E69BA848];
    KeyPath = swift_getKeyPath();
    v6 = swift_getKeyPath();
    v7 = v4;
    sub_1BE04D8B4(&v32);
    KeyPath, v8, v9, v10, v11, v12, v13, v14;
    v6, v15, v16, v17, v18, v19, v20, v21;
    *(inited + 40) = sub_1BE053B24();
    *(inited + 48) = v22;
    v23 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BDA3ABE0(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
    v24 = sub_1BE052224();
    v23, v25, v26, v27, v28, v29, v30, v31;
    [v2 reportButtonPressed:0 context:v24];
  }
}

id sub_1BDA37E24(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI22DevicePickerController_onCompletion + 8);
    v5 = sub_1BE048964();
    v3(v5);
    sub_1BD0D4744(v3, v4, v6, v7, v8, v9, v10, v11);
  }

  result = *(a1 + 32);
  if (result)
  {
    return [result reportButtonPressed_];
  }

  return result;
}

uint64_t sub_1BDA37F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5C0, &unk_1BE10FA30);
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v62[-v6];
  v7 = sub_1BE04F6E4();
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BE051584();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460D8, &qword_1BE0D6488);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v62[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5C8, &unk_1BE10FA40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62[-v19];
  v21 = type metadata accessor for DeviceRowView(0);
  v22 = a1;
  v23 = *(a1 + *(v21 + 20));
  v72 = v22;
  v77 = v20;
  if (v23 == 2)
  {
    (*(v14 + 56))(v20, 1, 1, v13);
  }

  else
  {
    v65 = v14;
    v66 = v13;
    v67 = v7;
    v68 = v3;
    v63 = v23 & 1;
    v24 = sub_1BE051574();
    (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
    v64 = sub_1BE0515E4();
    v24, v25, v26, v27, v28, v29, v30, v31;
    (*(v10 + 8))(v12, v9);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v32 = v84;
    v33 = v85;
    v34 = v86;
    v35 = v87;
    v36 = v88;
    v37 = v89;
    if (v63)
    {
      v38 = sub_1BE0511D4();
    }

    else
    {
      v38 = sub_1BE0513E4();
    }

    v39 = v38;
    KeyPath = swift_getKeyPath();
    v81[0] = v33;
    v80[0] = v35;
    v41 = sub_1BE051D84();
    *v83 = v64;
    *&v83[8] = v32;
    v83[16] = v33;
    *&v83[24] = v34;
    v83[32] = v35;
    *&v83[40] = v36;
    *&v83[48] = v37;
    *&v83[56] = KeyPath;
    *&v83[64] = v39;
    *&v83[72] = v41;
    v83[80] = v23 & 1;
    if (v23)
    {
      v42 = v70;
      sub_1BE04F6B4();
      v20 = v77;
      v43 = v67;
      v3 = v68;
    }

    else
    {
      *v82 = MEMORY[0x1E69E7CC0];
      sub_1BDA3ABE0(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
      sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
      v42 = v70;
      v43 = v67;
      sub_1BE053664();
      v20 = v77;
      v3 = v68;
    }

    v44 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460F8, &qword_1BE0D64E0);
    sub_1BD438378();
    v45 = v69;
    sub_1BE050DA4();
    (*(v71 + 8))(v42, v43);
    *&v82[32] = *&v83[32];
    *&v82[48] = *&v83[48];
    *&v82[64] = *&v83[64];
    v82[80] = v83[80];
    *v82 = *v83;
    *&v82[16] = *&v83[16];
    sub_1BD0DE53C(v82, &qword_1EBD460F8, &qword_1BE0D64E0);
    sub_1BD0DE204(v45, v20, &qword_1EBD460D8, &qword_1BE0D6488);
    (*(v44 + 56))(v20, 0, 1, v66);
  }

  v46 = v74;
  v47 = v72;
  sub_1BDA3877C(v72, v74);
  v48 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v49 = v46 + *(v3 + 36);
  *v49 = v48;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  v71 = sub_1BE04F7B4();
  v79 = 1;
  sub_1BDA38F60(v47, v83);
  memcpy(v80, v83, sizeof(v80));
  memcpy(v81, v83, sizeof(v81));
  sub_1BD0DE19C(v80, v82, &qword_1EBD467B0, &unk_1BE0D7320);
  sub_1BD0DE53C(v81, &qword_1EBD467B0, &unk_1BE0D7320);
  memcpy(&v78[7], v80, 0x120uLL);
  LODWORD(v72) = v79;
  v54 = v73;
  sub_1BD0DE19C(v20, v73, &qword_1EBD5C5C8, &unk_1BE10FA40);
  v55 = v76;
  sub_1BD0DE19C(v46, v76, &qword_1EBD5C5C0, &unk_1BE10FA30);
  v56 = v75;
  sub_1BD0DE19C(v54, v75, &qword_1EBD5C5C8, &unk_1BE10FA40);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5D0, &qword_1BE10FA50);
  sub_1BD0DE19C(v55, v56 + *(v57 + 48), &qword_1EBD5C5C0, &unk_1BE10FA30);
  v58 = *(v57 + 64);
  v59 = v71;
  *v82 = v71;
  *&v82[8] = 0;
  v60 = v72;
  v82[16] = v72;
  memcpy(&v82[17], v78, 0x127uLL);
  memcpy((v56 + v58), v82, 0x138uLL);
  sub_1BD0DE19C(v82, v83, &qword_1EBD5C5D8, &qword_1BE10FA58);
  sub_1BD0DE53C(v46, &qword_1EBD5C5C0, &unk_1BE10FA30);
  sub_1BD0DE53C(v77, &qword_1EBD5C5C8, &unk_1BE10FA40);
  *v83 = v59;
  *&v83[8] = 0;
  v83[16] = v60;
  memcpy(&v83[17], v78, 0x127uLL);
  sub_1BD0DE53C(v83, &qword_1EBD5C5D8, &qword_1BE10FA58);
  sub_1BD0DE53C(v55, &qword_1EBD5C5C0, &unk_1BE10FA30);
  return sub_1BD0DE53C(v54, &qword_1EBD5C5C8, &unk_1BE10FA40);
}

void *sub_1BDA3877C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for DeviceRowView(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v4;
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5E0, &qword_1BE10FA68);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v31 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5E8, &unk_1BE10FA70);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DeviceViewModel(0);
  sub_1BD0DE19C(a1 + *(v18 + 24), v13, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
    v19 = sub_1BDA38D34();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v20 = v39;
    v21 = BYTE8(v39);
    v22 = v40;
    v23 = BYTE8(v40);
    *v7 = v19;
    *(v7 + 1) = v20;
    v7[16] = v21;
    *(v7 + 3) = v22;
    v7[32] = v23;
    *(v7 + 40) = v41;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC40, &qword_1BE0BD510);
    sub_1BDA3A738();
    sub_1BDA3AB70(&qword_1EBD36808, &unk_1EBD3FC40, &qword_1BE0BD510);
    return sub_1BE04F9A4();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_1BE051D34();
    sub_1BE04E494();
    v25 = v34;
    sub_1BDA3A7F0(a1, v34, type metadata accessor for DeviceRowView);
    v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v27 = swift_allocObject();
    sub_1BDA3A858(v25, v27 + v26, type metadata accessor for DeviceRowView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C608, &qword_1BE10FA88);
    sub_1BDA3A940();
    v28 = v35;
    sub_1BE04E184();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v29 = (v28 + *(v37 + 36));
    v30 = v40;
    *v29 = v39;
    v29[1] = v30;
    v29[2] = v41;
    sub_1BD0DE19C(v28, v7, &qword_1EBD5C5E0, &qword_1BE10FA68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC40, &qword_1BE0BD510);
    sub_1BDA3A738();
    sub_1BDA3AB70(&qword_1EBD36808, &unk_1EBD3FC40, &qword_1BE0BD510);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v28, &qword_1EBD5C5E0, &qword_1BE10FA68);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_1BDA38D34()
{
  v1 = (v0 + *(type metadata accessor for DeviceViewModel(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = *v1 == 5459817 && v3 == 0xE300000000000000;
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    v6 = v2 == 0x534F6863746177 && v3 == 0xE700000000000000;
    if (!v6 && (sub_1BE053B84() & 1) == 0)
    {
      v7 = v2 == 1397716596 && v3 == 0xE400000000000000;
      if (!v7 && (sub_1BE053B84() & 1) == 0)
      {
        v8 = v2 == 0x534F64615069 && v3 == 0xE600000000000000;
        if (!v8 && (sub_1BE053B84() & 1) == 0 && (v2 != 0x534F63616DLL || v3 != 0xE500000000000000) && (sub_1BE053B84() & 1) == 0 && (v2 != 0x534F6E6F69736976 || v3 != 0xE800000000000000))
        {
          sub_1BE053B84();
        }
      }
    }
  }

  return sub_1BE051574();
}

uint64_t sub_1BDA38F60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v146 = *(a1 + 16);
  v147 = v3;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BE050324();
  v12 = sub_1BE0505F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v11, v13, v15, v17, v19, v20, v21, v22;
  sub_1BD0DDF10(v4, v6, (v8 & 1), v23, v24, v25, v26, v27);
  v10, v28, v29, v30, v31, v32, v33, v34;
  LODWORD(v146) = sub_1BE04FC74();
  v35 = sub_1BE050574();
  v105 = v36;
  v106 = v35;
  LOBYTE(v10) = v37;
  v107 = v38;
  sub_1BD0DDF10(v12, v14, (v16 & 1), v38, v39, v40, v41, v42);
  v18, v43, v44, v45, v46, v47, v48, v49;
  sub_1BE051CE4();
  sub_1BE04EE54();
  v50 = v10 & 1;
  v168 = v10 & 1;
  v51 = type metadata accessor for DeviceViewModel(0);
  v52 = (a1 + *(v51 + 36));
  if (v52[1])
  {
    v53 = *v52;
    v54 = v52[1];
  }

  else
  {
    v55 = (a1 + *(v51 + 32));
    v53 = *v55;
    v54 = v55[1];
    sub_1BE048C84();
  }

  HIDWORD(v146) = HIDWORD(v53);
  v147 = v54;
  sub_1BE048C84();
  v56 = sub_1BE0506C4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = sub_1BE050454();
  v64 = sub_1BE0505F4();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v63, v65, v67, v69, v71, v72, v73, v74;
  sub_1BD0DDF10(v56, v58, (v60 & 1), v75, v76, v77, v78, v79);
  v62, v80, v81, v82, v83, v84, v85, v86;
  LODWORD(v146) = sub_1BE04FC94();
  v87 = sub_1BE050574();
  v89 = v88;
  LOBYTE(v56) = v90;
  v92 = v91;
  sub_1BD0DDF10(v64, v66, (v68 & 1), v91, v93, v94, v95, v96);
  v70, v97, v98, v99, v100, v101, v102, v103;
  sub_1BE051CE4();
  sub_1BE04EE54();
  LOBYTE(v56) = v56 & 1;
  v159 = v56;
  *&v117 = v106;
  *(&v117 + 1) = v105;
  LOBYTE(v118) = v50;
  *(&v118 + 1) = *v167;
  DWORD1(v118) = *&v167[3];
  *(&v118 + 1) = v107;
  v123 = v164;
  v124 = v165;
  v125 = v166;
  v119 = v160;
  v120 = v161;
  v121 = v162;
  v122 = v163;
  __src[6] = v164;
  __src[7] = v165;
  __src[2] = v160;
  __src[3] = v161;
  __src[4] = v162;
  __src[5] = v163;
  __src[0] = v117;
  __src[1] = v118;
  *&v126 = v87;
  *(&v126 + 1) = v89;
  LOBYTE(v127) = v56;
  *(&v127 + 1) = *v158;
  DWORD1(v127) = *&v158[3];
  *(&v127 + 1) = v92;
  v132 = v114;
  v133 = v115;
  v134 = v116;
  v128 = v110;
  v129 = v111;
  v130 = v112;
  v131 = v113;
  __src[12] = v111;
  __src[13] = v112;
  __src[10] = v127;
  __src[11] = v110;
  __src[14] = v113;
  __src[15] = v114;
  __src[16] = v115;
  __src[17] = v116;
  __src[8] = v166;
  __src[9] = v126;
  memcpy(a2, __src, 0x120uLL);
  v135[0] = v87;
  v135[1] = v89;
  v136 = v56;
  *v137 = *v158;
  *&v137[3] = *&v158[3];
  v138 = v92;
  v143 = v114;
  v144 = v115;
  v145 = v116;
  v139 = v110;
  v140 = v111;
  v141 = v112;
  v142 = v113;
  sub_1BD0DE19C(&v117, &v146, &qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD0DE19C(&v126, &v146, &qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD0DE53C(v135, &qword_1EBD3E090, &unk_1BE0D49D0);
  v146 = v106;
  v147 = v105;
  v148 = v50;
  *v149 = *v167;
  *&v149[3] = *&v167[3];
  v150 = v107;
  v154 = v163;
  v155 = v164;
  v156 = v165;
  v157 = v166;
  v151 = v160;
  v152 = v161;
  v153 = v162;
  return sub_1BD0DE53C(&v146, &qword_1EBD3E090, &unk_1BE0D49D0);
}

void sub_1BDA3941C(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v66 = a2;
  v68 = a3;
  v4 = sub_1BE04F454();
  *&v67 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v10 = sub_1BE051584();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04EB04();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x1E697C138])
  {
    (*(v15 + 96))(v18, v14);
    *&v66 = *v18;
    (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
    v20 = sub_1BE0515E4();
    (*(v11 + 8))(v13, v10);
    sub_1BE04F444();
    v21 = v67;
    (*(v67 + 16))(v6, v9, v4);
    sub_1BDA3ABE0(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v22 = sub_1BE04E644();
    (*(v21 + 8))(v9, v4);
    *v69 = v20;
    *&v69[8] = xmmword_1BE0CB9B0;
    *&v69[24] = v22;
    LOBYTE(v70) = 0;
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5C630, &qword_1BE10FA98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BDA3AA98();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BE04F9A4();
    v23 = v71;
    v24 = v72;
    v25 = v73;
    *v69 = v71;
    *&v69[16] = v72;
    v70 = v73;
    sub_1BDA3AC28(v71, *(&v71 + 1), v72, *(&v72 + 1), v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C620, &qword_1BE10FA90);
    sub_1BDA3A9EC();
    sub_1BE04F9A4();
    v66, v26, v27, v28, v29, v30, v31, v32;
    sub_1BDA3AC64(v23, *(&v23 + 1), v24, *(&v24 + 1), v25, v33, v34, v35);
  }

  else
  {
    if (v19 == *MEMORY[0x1E697C130])
    {
      (*(v15 + 8))(v18, v14);
    }

    else if (v19 != *MEMORY[0x1E697C118])
    {
      v57 = sub_1BDA38D34();
      (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
      v58 = sub_1BE0515E4();
      v57, v59, v60, v61, v62, v63, v64, v65;
      (*(v11 + 8))(v13, v10);
      *v69 = v58;
      *&v69[8] = xmmword_1BE0CB9B0;
      *&v69[24] = 0;
      v70 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C620, &qword_1BE10FA90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BDA3A9EC();
      sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BE04F9A4();
      v66 = v72;
      v67 = v71;
      v54 = v73;
      v55 = v74;
      (*(v15 + 8))(v18, v14);
      v53 = v66;
      v52 = v67;
      goto LABEL_8;
    }

    v36 = sub_1BDA38D34();
    (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
    v37 = sub_1BE0515E4();
    v36, v38, v39, v40, v41, v42, v43, v44;
    (*(v11 + 8))(v13, v10);
    *v69 = v37;
    *&v69[8] = xmmword_1BE0CB9B0;
    *&v69[24] = 0;
    LOBYTE(v70) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5C630, &qword_1BE10FA98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BDA3AA98();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BE04F9A4();
    *v69 = v71;
    *&v69[16] = v72;
    v70 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C620, &qword_1BE10FA90);
    sub_1BDA3A9EC();
    sub_1BE04F9A4();
    v37, v45, v46, v47, v48, v49, v50, v51;
  }

  v52 = v71;
  v53 = v72;
  v54 = v73;
  v55 = v74;
LABEL_8:
  v56 = v68;
  *v68 = v52;
  v56[1] = v53;
  *(v56 + 32) = v54;
  *(v56 + 33) = v55;
}

uint64_t sub_1BDA39BA4()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5A8, &qword_1BE10FA20);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C5B0, &qword_1BE10FA28);
  sub_1BDA37F28(v0, &v7[*(v8 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD5C5B8, &qword_1EBD5C5A8, &qword_1BE10FA20, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v2 + 8))(v4, v1);
  return sub_1BD0DE53C(v7, &qword_1EBD5C5A8, &qword_1BE10FA20);
}

unint64_t sub_1BDA39DB4()
{
  result = qword_1EBD5C470;
  if (!qword_1EBD5C470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C478, &qword_1BE10F780);
    sub_1BD0DE4F4(&qword_1EBD5C480, &qword_1EBD5C488, &qword_1BE10F788, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C470);
  }

  return result;
}

unint64_t sub_1BDA39E6C()
{
  result = qword_1EBD5C490;
  if (!qword_1EBD5C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C458, &qword_1BE10F770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C498, &qword_1BE10F790);
    sub_1BDA39F2C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C490);
  }

  return result;
}

unint64_t sub_1BDA39F2C()
{
  result = qword_1EBD5C4A0;
  if (!qword_1EBD5C4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C498, &qword_1BE10F790);
    sub_1BDA39FE4();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4A0);
  }

  return result;
}

unint64_t sub_1BDA39FE4()
{
  result = qword_1EBD5C4A8;
  if (!qword_1EBD5C4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C4B0, &qword_1BE10F798);
    sub_1BDA3ABE0(&qword_1EBD5C4B8, type metadata accessor for DeviceRowView, &unk_1BE10F9D0);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4A8);
  }

  return result;
}

uint64_t type metadata accessor for DeviceRowView(uint64_t a1)
{
  result = qword_1EBD5C588;
  if (!qword_1EBD5C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BDA3A118(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BDA3A194()
{
  result = qword_1EBD5C4C8;
  if (!qword_1EBD5C4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C4D0, &qword_1BE10F7A0);
    sub_1BD55ABC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4C8);
  }

  return result;
}

unint64_t sub_1BDA3A228()
{
  result = qword_1EBD5C4E0;
  if (!qword_1EBD5C4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C4D8, &qword_1BE10F7F0);
    sub_1BDA39F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C4E0);
  }

  return result;
}

void sub_1BDA3A2B4()
{
  if (*(v0 + 16) == 1)
  {
    sub_1BD64A1D4();
  }

  else
  {
    sub_1BD64A1CC();
  }
}

unint64_t sub_1BDA3A2F4()
{
  result = qword_1EBD5C550;
  if (!qword_1EBD5C550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C548, &qword_1BE10F950);
    sub_1BDA3A3AC();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C550);
  }

  return result;
}

unint64_t sub_1BDA3A3AC()
{
  result = qword_1EBD5C558;
  if (!qword_1EBD5C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C560, &qword_1BE10F958);
    sub_1BDA3A438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C558);
  }

  return result;
}

unint64_t sub_1BDA3A438()
{
  result = qword_1EBD5C568;
  if (!qword_1EBD5C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C570, &qword_1BE10F960);
    sub_1BD0DE43C();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C568);
  }

  return result;
}

uint64_t objectdestroy_12Tm_1(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

void sub_1BDA3A540()
{
  v1 = type metadata accessor for DeviceViewModel(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80)));
  sub_1BD64A328(v2, (*(v2 + *(v1 + 40)) & 1) == 0, 0);
}

void sub_1BDA3A5E0(uint64_t a1)
{
  type metadata accessor for DeviceViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD7DEDA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BDA3A664()
{
  result = qword_1EBD5C598;
  if (!qword_1EBD5C598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C3B0, &qword_1BE10F688);
    sub_1BD0DE4F4(&qword_1EBD5C5A0, &qword_1EBD5C3A8, &qword_1BE10F680, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C598);
  }

  return result;
}

unint64_t sub_1BDA3A738()
{
  result = qword_1EBD5C5F0;
  if (!qword_1EBD5C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C5E0, &qword_1BE10FA68);
    sub_1BD0DE4F4(&qword_1EBD5C5F8, &qword_1EBD5C600, &qword_1BE10FA80, MEMORY[0x1E697BD90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C5F0);
  }

  return result;
}

uint64_t sub_1BDA3A7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BDA3A858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BDA3A8C0(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for DeviceRowView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BDA3941C(a1, v6, a2);
}

unint64_t sub_1BDA3A940()
{
  result = qword_1EBD5C610;
  if (!qword_1EBD5C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C608, &qword_1BE10FA88);
    sub_1BDA3A9EC();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280, &qword_1BE0C30B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C610);
  }

  return result;
}

unint64_t sub_1BDA3A9EC()
{
  result = qword_1EBD5C618;
  if (!qword_1EBD5C618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5C620, &qword_1BE10FA90);
    sub_1BDA3AA98();
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280, &qword_1BE0C30B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C618);
  }

  return result;
}

unint64_t sub_1BDA3AA98()
{
  result = qword_1EBD5C628;
  if (!qword_1EBD5C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5C630, &qword_1BE10FA98);
    sub_1BDA3AB70(&qword_1EBD3E278, &qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C628);
  }

  return result;
}

uint64_t sub_1BDA3AB70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BDA3ABE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BDA3AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1BE048964();
    v5 = vars8;
  }

  return sub_1BE048964();
}

void sub_1BDA3AC64(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a5;
  a1, a2, a3, a4, a5, a6, a7, a8;
  if ((v8 & 1) == 0)
  {

    a4, v10, v11, v12, v13, v14, v15, v16;
  }
}

uint64_t sub_1BDA3ACB0()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 264);
  v5 = *(v0 + 256);
  v9 = v5;
  if (v10 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v6 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v9, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

id sub_1BDA3AE10(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_1BE051F54();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BE051FA4();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v44 = *v1;
  v45 = v7;
  v46 = *(v1 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  sub_1BE051914();
  v44 = v49[0];
  v45 = v49[1];
  v46 = v50;
  MEMORY[0x1BFB3E970](aBlock, v8);
  v9 = sub_1BE053344();
  sub_1BD0DE53C(v49, &unk_1EBD4EED0, &qword_1BE0CEA30);
  v10 = objc_allocWithZone(PKEnterCurrencyAmountView);
  v11 = sub_1BE052404();
  v12 = [v10 initWithCurrency:v11 amount:v9];

  if (!v12)
  {
    return [objc_allocWithZone(PKEnterCurrencyAmountView) init];
  }

  v13 = [v12 backgroundColor];
  [v12 setKeyboardColor_];

  [v12 setShowsDecimalPointButton_];
  if (sub_1BDA3ACB0())
  {
    v14 = 64.0;
  }

  else
  {
    v14 = 71.0;
  }

  if (sub_1BDA3ACB0())
  {
    v15 = 38.0;
  }

  else
  {
    v15 = 45.0;
  }

  v16 = *MEMORY[0x1E69DB980];
  v17 = PKRoundedSystemFontOfSizeAndWeight(v14, *MEMORY[0x1E69DB980]);
  v18 = PKRoundedSystemFontOfSizeAndWeight(v15, v16);
  v37 = v17;
  [v12 setAmountFont_];
  v36 = v18;
  [v12 setCurrencySymbolFont_];
  v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v12 setKerning_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5C6D0, &qword_1BE10FC38);
  sub_1BE04FF74();
  v20 = v44;
  [v12 setDelegate_];

  [v12 setEnableDoneButton_];
  if (*(v2 + 248))
  {
    [v12 showKeyboard];
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v21 = sub_1BE052D54();
  v22 = swift_allocObject();
  memcpy((v22 + 16), v2, 0x109uLL);
  aBlock[4] = sub_1BDA3D878;
  v48 = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_32_5;
  v23 = _Block_copy(aBlock);
  v24 = v48;
  sub_1BDA3D880(v2, &v44);
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE051F74();
  *&v44 = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v32 = v40;
  v33 = v43;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v6, v32, v23);
  _Block_release(v23);

  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v6, v41);
  if (*(v2 + 224))
  {
    sub_1BD0E5E8C(0, &qword_1EBD4EF20, 0x1E69B89E0);
    v34 = sub_1BE052724();
    [v12 setAmountSuggestions_];
  }

  return v12;
}

void sub_1BDA3B3C0(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 152) == 3)
  {
    (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BE0B69E0;
    v8 = sub_1BE053344();
    v9 = sub_1BE052404();
    v10 = PKCurrencyAmountMake();

    if (v10)
    {
      v11 = [v10 minimalFormattedStringValue];

      if (v11)
      {
        v12 = sub_1BE052434();
        v14 = v13;

        *(v7 + 56) = MEMORY[0x1E69E6158];
        *(v7 + 64) = sub_1BD110550();
        *(v7 + 32) = v12;
        *(v7 + 40) = v14;
        v15 = sub_1BE04B714();
        v17 = v16;
        v7, v16, v18, v19, v20, v21, v22, v23;
        (*(v3 + 8))(v6, v2);
        v24 = *(a1 + 56);
        v27 = *(a1 + 40);
        v28 = v24;
        v26[0] = v15;
        v26[1] = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0, &qword_1BE10FC20);
        sub_1BE0518F4();
        v25 = sub_1BE051494();
        v27 = *(a1 + 72);
        *&v28 = *(a1 + 88);
        v26[0] = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8, &unk_1BE10FC28);
        sub_1BE0518F4();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

char *sub_1BDA3B638()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v131 = *(v2 - 8);
  v132 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v130 = &v112[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BE051FA4();
  v128 = *(v4 - 8);
  v129 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v127 = &v112[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = *(v0 + 200);
  LOBYTE(v154) = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  sub_1BE051914();
  v149 = *(&v170 + 1);
  v147 = v170;
  v124 = v171;
  v6 = v0[1];
  v153 = *v0;
  v154 = v6;
  LODWORD(v155) = *(v0 + 8);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  sub_1BE051914();
  v7 = *(v0 + 56);
  v153 = *(v0 + 40);
  v154 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0, &qword_1BE10FC20);
  sub_1BE051914();
  v151 = *(&v170 + 1);
  v152 = v170;
  v150 = *(&v171 + 1);
  v118 = v171;
  v153 = *(v0 + 72);
  *&v154 = *(v0 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8, &unk_1BE10FC28);
  sub_1BE051914();
  v8 = v0[7];
  v167 = v0[6];
  v9 = v170;
  v145 = *(&v170 + 1);
  v148 = v170;
  v146 = v171;
  v165 = v8;
  v166 = *(v0 + 32);
  v163 = *(v0 + 132);
  v164 = *(v0 + 37);
  v10 = *(v0 + 40);
  v11 = *(v0 + 82);
  v122 = v11;
  v123 = v10;
  v143 = *(v0 + 84);
  v12 = *(v0 + 85);
  v120 = v12;
  v142 = *(v0 + 86);
  v144 = *(v0 + 88);
  v141 = *(v0 + 45);
  v140 = *(v0 + 92);
  v134 = *(v0 + 93);
  v139 = *(v0 + 94);
  v138 = *(v0 + 95);
  v137 = *(v0 + 96);
  v133 = *(v0 + 97);
  v13 = *(v0 + 98);
  v135 = *(v0 + 99);
  v136 = v13;
  v114 = *(v0 + 19);
  v115 = *(v0 + 249);
  v14 = *(v0 + 29);
  v116 = *(v0 + 30);
  v117 = v14;
  v15 = *(v0 + 83);
  v121 = v15;
  v16 = *(v0 + 87);
  v119 = v16;
  v113 = *(v1 + 89);
  v125 = type metadata accessor for EnterCurrencyAmountView.Coordinator();
  v17 = objc_allocWithZone(v125);
  *&v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_view] = 0;
  v18 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled];
  v19 = v149;
  *v18 = v147;
  *(v18 + 1) = v19;
  v18[16] = v124;
  v20 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount];
  v22 = v168[0];
  v21 = v168[1];
  *(v20 + 8) = v169;
  *v20 = v22;
  *(v20 + 1) = v21;
  v23 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide];
  v24 = v151;
  *v23 = v152;
  v23[1] = v24;
  v25 = v150;
  v23[2] = v118;
  v23[3] = v25;
  v26 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor];
  *v26 = v9;
  *(v26 + 2) = v146;
  *&v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_currencyCode] = v167;
  v27 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_currentBalance];
  *(v27 + 4) = v166;
  *v27 = v165;
  v28 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_availableBalance];
  *(v28 + 4) = v164;
  *v28 = v163;
  v29 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount];
  *v29 = v10;
  *(v29 + 2) = v11;
  *(v29 + 3) = v15;
  LOWORD(v25) = v142;
  *(v29 + 4) = v143;
  *(v29 + 5) = v12;
  *(v29 + 6) = v25;
  *(v29 + 7) = v16;
  *(v29 + 8) = v144;
  v30 = v113;
  *(v29 + 9) = v113;
  v31 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount];
  *v31 = v141;
  *(v31 + 2) = v140;
  *(v31 + 3) = v134;
  *(v31 + 4) = v139;
  *(v31 + 5) = v138;
  *(v31 + 6) = v137;
  *(v31 + 7) = v133;
  *(v31 + 8) = v136;
  *(v31 + 9) = v135;
  *&v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_transferType] = v114;
  v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_shakeMode] = v115;
  v32 = &v17[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_keypadSuggestionSelected];
  v34 = v116;
  v33 = v117;
  *v32 = v117;
  v32[1] = v34;
  sub_1BD206260(&v167, &v153);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD64475C(v168, &v153);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v35 = v126;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD0D44B8(v33, v34);
  v162.receiver = v17;
  v162.super_class = v125;
  v36 = objc_msgSendSuper2(&v162, sel_init);
  v37 = &v36[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount];
  v172 = *&v36[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 32];
  v171 = *&v36[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 16];
  v170 = *&v36[OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount];
  v153 = v170;
  v154 = v171;
  LODWORD(v155) = v172;
  v38 = v36;
  MEMORY[0x1BFB3E970](&v159, v35);
  if (MEMORY[0x1BFB403F0](v159, *(&v159 + 1), v160, v123 | (v122 << 32) | (v121 << 48), v143 | (v120 << 16) | (v142 << 32) | (v119 << 48), v144 | (v30 << 16)))
  {
    v39 = 1;
  }

  else
  {
    v153 = *v37;
    v154 = *(v37 + 1);
    LODWORD(v155) = *(v37 + 8);
    v159 = v153;
    v160 = v154;
    v161 = v155;
    MEMORY[0x1BFB3E970](v157, v35);
    v39 = MEMORY[0x1BFB403F0](v141 | (v140 << 32) | (v134 << 48), v139 | (v138 << 16) | (v137 << 32) | (v133 << 48), v136 | (v135 << 16), v157[0], v157[1], v158);
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v40 = sub_1BE052D54();
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v39 & 1;
  v155 = sub_1BDA3D86C;
  v156 = v41;
  *&v153 = MEMORY[0x1E69E9820];
  *(&v153 + 1) = 1107296256;
  *&v154 = sub_1BD126964;
  *(&v154 + 1) = &block_descriptor_243;
  v42 = _Block_copy(&v153);
  v43 = v156;
  v44 = v38;
  v43, v45, v46, v47, v48, v49, v50, v51;
  v52 = v127;
  sub_1BE051F74();
  *&v153 = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v53 = v130;
  v54 = v132;
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v52, v53, v42);
  _Block_release(v42);
  v150, v55, v56, v57, v58, v59, v60, v61;
  v151, v62, v63, v64, v65, v66, v67, v68;
  v152, v69, v70, v71, v72, v73, v74, v75;
  v146, v76, v77, v78, v79, v80, v81, v82;
  v145, v83, v84, v85, v86, v87, v88, v89;
  v148, v90, v91, v92, v93, v94, v95, v96;

  sub_1BD0DE53C(v168, &unk_1EBD4EED0, &qword_1BE0CEA30);
  v149, v97, v98, v99, v100, v101, v102, v103;
  v147, v104, v105, v106, v107, v108, v109, v110;
  (*(v131 + 8))(v53, v54);
  (*(v128 + 8))(v52, v129);
  return v44;
}

uint64_t sub_1BDA3BE9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = v3;
  v6 = result;
  v7 = sub_1BE0533F4();
  v9 = v8;
  v11 = v10;
  if (MEMORY[0x1BFB403F0]())
  {
    v12 = 1;
  }

  else
  {
    v12 = MEMORY[0x1BFB403F0](*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v7, v9, v11);
  }

  v13 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_transferType);
  if (v13 == 3)
  {
    v57 = v12;
    v14 = sub_1BE053394();
    v16 = v15;
    v18 = v17;
    v19 = MEMORY[0x1BFB403C0](0);
    v21 = v20;
    v22 = v18;
    v13 = 3;
    v24 = MEMORY[0x1BFB403F0](v14, v16, v22, v19, v23, v21);
    v12 = v57;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled);
  v26 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled + 8);
  v27 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled + 16);
  v59 = *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__nextDisabled);
  v60 = v26;
  v61 = v27;
  v58 = (v12 | v24) & 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  result = sub_1BE0518F4();
  if (*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_shakeMode))
  {
    if (*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_shakeMode) != 1 || (v29 = v25[1], v30 = *(v25 + 16), v59 = *v25, v60 = v29, v61 = v30, result = MEMORY[0x1BFB3E970](&v58, v28), v58 != 1) || (result = MEMORY[0x1BFB403F0](*(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v3 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v7, v9, v11), (result & 1) == 0))
    {
LABEL_16:
      if (a2)
      {
        v33 = sub_1BE0533F4();
        v35 = v34;
        v37 = v36;
        v38 = v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount;
        if (MEMORY[0x1BFB403F0](*(v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v4 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v7, v9, v11))
        {
          v39 = MEMORY[0x1BFB403F0](*v38, *(v38 + 8), *(v38 + 16), v33, v35, v37) ^ 1;
          if (v13 != 3)
          {
            return v39 & 1;
          }
        }

        else
        {
          v39 = 1;
          if (v13 != 3)
          {
            return v39 & 1;
          }
        }

        v40 = sub_1BE053394();
        v42 = v41;
        v44 = v43;
        v45 = MEMORY[0x1BFB403C0](0);
        if (MEMORY[0x1BFB403F0](v40, v42, v44, v45, v46, v47))
        {
          v48 = sub_1BE053394();
          v50 = v49;
          v52 = v51;
          v53 = MEMORY[0x1BFB403C0](0);
          v56 = MEMORY[0x1BFB403F0](v48, v50, v52, v53, v54, v55);
          if (v39)
          {
            v39 = v56 ^ 1;
            return v39 & 1;
          }
        }

        else if (v39)
        {
          v39 = 1;
          return v39 & 1;
        }

        v39 = 0;
        return v39 & 1;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v31 = v25[1];
    v32 = *(v25 + 16);
    v59 = *v25;
    v60 = v31;
    v61 = v32;
    result = MEMORY[0x1BFB3E970](&v58, v28);
    if (v58 != 1)
    {
      goto LABEL_16;
    }
  }

  if (v6)
  {
    result = [v6 pkui:0 smallShakeWithCompletion:?];
    goto LABEL_16;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_1BDA3C2CC(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97 - v9;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v97 - v14;
  if (!a1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v98 = v5;
  v99 = v12;
  v16 = [a1 currentAmount];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  v18 = sub_1BE0533F4();
  v20 = v19;
  v22 = v21;

  v23 = (v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount);
  v24 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 16);
  v106[0] = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount);
  v106[1] = v24;
  v107 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 32);
  v25 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 16);
  v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount);
  v104 = v25;
  v105 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amount + 32);
  v100 = v18;
  v101 = v20;
  v102 = v22;
  sub_1BD64475C(v106, v108);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0, &qword_1BE0CEA30);
  sub_1BE0518F4();
  v108[0] = v103;
  v108[1] = v104;
  v109 = v105;
  sub_1BD0DE53C(v108, &unk_1EBD4EED0, &qword_1BE0CEA30);
  v27 = v23[1];
  v103 = *v23;
  v104 = v27;
  v105 = *(v23 + 8);
  MEMORY[0x1BFB3E970](&v100, v26);
  if ((sub_1BE053444() & 1) == 0)
  {
    v28 = v23[1];
    v103 = *v23;
    v104 = v28;
    v105 = *(v23 + 8);
    MEMORY[0x1BFB3E970](&v100, v26);
    if ((sub_1BE053414() & 1) == 0)
    {
      v74 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
      *&v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
      *(&v103 + 1) = v74;
      v104 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
      v100 = 0;
      v101 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0, &qword_1BE10FC20);
      sub_1BE0518F4();
      v75 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor + 16);
      v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor);
      *&v104 = v75;
      v100 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8, &unk_1BE10FC28);
LABEL_20:
      sub_1BE0518F4();
      return;
    }
  }

  v29 = sub_1BE051494();
  v30 = (v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor);
  v31 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor + 16);
  v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuideColor);
  *&v104 = v31;
  v100 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C8, &unk_1BE10FC28);
  sub_1BE0518F4();
  v32 = v23[1];
  v103 = *v23;
  v104 = v32;
  v105 = *(v23 + 8);
  MEMORY[0x1BFB3E970](&v100, v26);
  if (MEMORY[0x1BFB403F0](v100, v101, v102, *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount + 8), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_minLoadAmount + 16)))
  {
    v33 = v98;
    v34 = v99;
    (*(v98 + 104))(v15, *MEMORY[0x1E69B80E0], v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BE0B69E0;
    v36 = sub_1BE053344();
    v37 = sub_1BE052404();
    v38 = PKCurrencyAmountMake();

    if (v38)
    {
      v39 = [v38 minimalFormattedStringValue];

      if (v39)
      {
        v40 = sub_1BE052434();
        v42 = v41;

        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_1BD110550();
        *(v35 + 32) = v40;
        *(v35 + 40) = v42;
        v43 = sub_1BE04B714();
        v45 = v44;
        v35, v44, v46, v47, v48, v49, v50, v51;
        (*(v33 + 8))(v15, v34);
        v52 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
        *&v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
        *(&v103 + 1) = v52;
        v104 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
        v100 = v43;
        v101 = v45;
LABEL_19:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0, &qword_1BE10FC20);
        goto LABEL_20;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v53 = v23[1];
  v103 = *v23;
  v104 = v53;
  v105 = *(v23 + 8);
  MEMORY[0x1BFB3E970](&v100, v26);
  if (MEMORY[0x1BFB403F0](*(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 8), *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_maxLoadAmount + 16), v100, v101, v102))
  {
    v54 = v98;
    v55 = v99;
    (*(v98 + 104))(v10, *MEMORY[0x1E69B80E0], v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1BE0B69E0;
    v57 = sub_1BE053344();
    v58 = sub_1BE052404();
    v59 = PKCurrencyAmountMake();

    if (!v59)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v60 = [v59 minimalFormattedStringValue];

    if (!v60)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v61 = sub_1BE052434();
    v63 = v62;

    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = sub_1BD110550();
    *(v56 + 32) = v61;
    *(v56 + 40) = v63;
    v64 = sub_1BE04B714();
    v66 = v65;
    v56, v65, v67, v68, v69, v70, v71, v72;
    (*(v54 + 8))(v10, v55);
    v73 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
    *&v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
    *(&v103 + 1) = v73;
    v104 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
    v100 = v64;
LABEL_18:
    v101 = v66;
    goto LABEL_19;
  }

  if (*(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator_transferType) != 3)
  {
    v95 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
    *&v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
    *(&v103 + 1) = v95;
    v104 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
    v100 = 0;
    v101 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6C0, &qword_1BE10FC20);
    sub_1BE0518F4();
    v96 = *(v30 + 2);
    v103 = *v30;
    *&v104 = v96;
    v100 = 0;
    goto LABEL_20;
  }

  v76 = v98;
  v77 = v99;
  (*(v98 + 104))(v7, *MEMORY[0x1E69B80E0], v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1BE0B69E0;
  v79 = sub_1BE053344();
  v80 = sub_1BE052404();
  v81 = PKCurrencyAmountMake();

  if (!v81)
  {
    goto LABEL_28;
  }

  v82 = [v81 minimalFormattedStringValue];

  if (v82)
  {
    v83 = sub_1BE052434();
    v85 = v84;

    *(v78 + 56) = MEMORY[0x1E69E6158];
    *(v78 + 64) = sub_1BD110550();
    *(v78 + 32) = v83;
    *(v78 + 40) = v85;
    v86 = sub_1BE04B714();
    v66 = v87;
    v78, v87, v88, v89, v90, v91, v92, v93;
    (*(v76 + 8))(v7, v77);
    v94 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 8);
    *&v103 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide);
    *(&v103 + 1) = v94;
    v104 = *(v2 + OBJC_IVAR____TtCV9PassKitUI23EnterCurrencyAmountView11Coordinator__amountGuide + 16);
    v100 = v86;
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
}

id sub_1BDA3CCE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EnterCurrencyAmountView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void destroy for EnterCurrencyAmountView(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 8), v9, v10, v11, v12, v13, v14, v15;
  *(a1 + 40), v16, v17, v18, v19, v20, v21, v22;
  *(a1 + 48), v23, v24, v25, v26, v27, v28, v29;
  *(a1 + 64), v30, v31, v32, v33, v34, v35, v36;
  *(a1 + 72), v37, v38, v39, v40, v41, v42, v43;
  *(a1 + 80), v44, v45, v46, v47, v48, v49, v50;
  *(a1 + 88), v51, v52, v53, v54, v55, v56, v57;
  *(a1 + 104), v58, v59, v60, v61, v62, v63, v64;
  *(a1 + 200), v65, v66, v67, v68, v69, v70, v71;
  *(a1 + 208), v72, v73, v74, v75, v76, v77, v78;
  *(a1 + 224), v79, v80, v81, v82, v83, v84, v85;
  if (*(a1 + 232))
  {
    *(a1 + 240), v86, v87, v88, v89, v90, v91, v92;
  }

  v93 = *(a1 + 256);
  v94 = *(a1 + 264);

  sub_1BD0D4604(v93, v94, v87, v88, v89, v90, v91, v92);
}

uint64_t initializeWithCopy for EnterCurrencyAmountView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  v9 = *(a2 + 96);
  v8 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  *(a1 + 104) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  v10 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v10;
  v11 = (a2 + 232);
  v17 = *(a2 + 232);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 180) = *(a2 + 180);
  v12 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v12;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  if (v17)
  {
    v13 = *(a2 + 240);
    *(a1 + 232) = v17;
    *(a1 + 240) = v13;
    sub_1BE048964();
  }

  else
  {
    *(a1 + 232) = *v11;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  v14 = *(a2 + 256);
  v15 = *(a2 + 264);
  sub_1BD619014(v14, v15);
  *(a1 + 256) = v14;
  *(a1 + 264) = v15;
  return a1;
}

uint64_t assignWithCopy for EnterCurrencyAmountView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1BE048964();
  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1BE048964();
  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  v20 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  sub_1BE048964();
  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  sub_1BE048964();
  v28, v29, v30, v31, v32, v33, v34, v35;
  *(a1 + 56) = *(a2 + 56);
  v36 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  sub_1BE048C84();
  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  sub_1BE048964();
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  sub_1BE048964();
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  sub_1BE048964();
  v60, v61, v62, v63, v64, v65, v66, v67;
  *(a1 + 96) = *(a2 + 96);
  v68 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  sub_1BE048C84();
  v68, v69, v70, v71, v72, v73, v74, v75;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 130) = *(a2 + 130);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 142) = *(a2 + 142);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 150) = *(a2 + 150);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 174) = *(a2 + 174);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 190) = *(a2 + 190);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 198) = *(a2 + 198);
  v76 = *(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  sub_1BE048964();
  v76, v77, v78, v79, v80, v81, v82, v83;
  v84 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  sub_1BE048964();
  v84, v85, v86, v87, v88, v89, v90, v91;
  *(a1 + 216) = *(a2 + 216);
  v92 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  sub_1BE048C84();
  v92, v93, v94, v95, v96, v97, v98, v99;
  v107 = *(a2 + 232);
  if (!*(a1 + 232))
  {
    if (v107)
    {
      v117 = *(a2 + 240);
      *(a1 + 232) = v107;
      *(a1 + 240) = v117;
      sub_1BE048964();
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_8;
  }

  if (!v107)
  {
    *(a1 + 240), v100, v101, v102, v103, v104, v105, v106;
    goto LABEL_7;
  }

  v108 = *(a2 + 240);
  v109 = *(a1 + 240);
  *(a1 + 232) = v107;
  *(a1 + 240) = v108;
  sub_1BE048964();
  v109, v110, v111, v112, v113, v114, v115, v116;
LABEL_8:
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 250) = *(a2 + 250);
  v118 = *(a2 + 256);
  v119 = *(a2 + 264);
  sub_1BD619014(v118, v119);
  v120 = *(a1 + 256);
  v121 = *(a1 + 264);
  *(a1 + 256) = v118;
  *(a1 + 264) = v119;
  sub_1BD0D4604(v120, v121, v122, v123, v124, v125, v126, v127);
  return a1;
}

uint64_t assignWithTake for EnterCurrencyAmountView(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v10 = *(a1 + 8);
  *a1 = *a2;
  v10, v11, v12, v13, v14, v15, v16, v17;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 40), v18, v19, v20, v21, v22, v23, v24;
  v25 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  v25, v26, v27, v28, v29, v30, v31, v32;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64), v33, v34, v35, v36, v37, v38, v39;
  v40 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  v40, v41, v42, v43, v44, v45, v46, v47;
  *(a1 + 80), v48, v49, v50, v51, v52, v53, v54;
  v55 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  v55, v56, v57, v58, v59, v60, v61, v62;
  v63 = *(a2 + 104);
  v64 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v63;
  v64, v65, v66, v67, v68, v69, v70, v71;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200), v72, v73, v74, v75, v76, v77, v78;
  v79 = *(a1 + 208);
  *(a1 + 200) = *(a2 + 200);
  v79, v80, v81, v82, v83, v84, v85, v86;
  *(a1 + 216) = *(a2 + 216);
  v87 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  v87, v88, v89, v90, v91, v92, v93, v94;
  v102 = *(a2 + 232);
  if (!*(a1 + 232))
  {
    if (v102)
    {
      v105 = *(a2 + 240);
      *(a1 + 232) = v102;
      *(a1 + 240) = v105;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_8;
  }

  if (!v102)
  {
    *(a1 + 240), v95, v96, v97, v98, v99, v100, v101;
    goto LABEL_7;
  }

  v103 = *(a2 + 240);
  v104 = *(a1 + 240);
  *(a1 + 232) = v102;
  *(a1 + 240) = v103;
  v104, v95, v96, v97, v98, v99, v100, v101;
LABEL_8:
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 250) = *(a2 + 250);
  v106 = *(a2 + 264);
  v107 = *(a1 + 256);
  v108 = *(a1 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v106;
  sub_1BD0D4604(v107, v108, v96, v97, v98, v99, v100, v101);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnterCurrencyAmountView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 265))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EnterCurrencyAmountView(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 265) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BDA3D6A4()
{
  result = qword_1EBD5C6B0;
  if (!qword_1EBD5C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C6B0);
  }

  return result;
}

char *sub_1BDA3D750@<X0>(char **a1@<X8>)
{
  result = sub_1BDA3B638();
  *a1 = result;
  return result;
}

uint64_t sub_1BDA3D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA3D8B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BDA3D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BDA3D8B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BDA3D840(uint64_t a1)
{
  sub_1BDA3D8B8();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BDA3D8B8()
{
  result = qword_1EBD5C6E8;
  if (!qword_1EBD5C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5C6E8);
  }

  return result;
}

uint64_t sub_1BDA3D940@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1BE049A74();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BDA3DA14@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BE049144();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1BDA3DAE8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v29 = a2;
  v6 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1BD53207C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:
      v10, v11, v12, v13, v14, v15, v16, v17;

      __break(1u);
      return;
    }

    v18 = 0;
    v10 = v31;
    v25 = i;
    v26 = a3 & 0xC000000000000001;
    v24 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v26)
      {
        v20 = MEMORY[0x1BFB40900](v18, a3);
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_17;
        }

        v20 = *(a3 + 8 * v18 + 32);
      }

      i = v20;
      v30 = v20;
      v28(&v30);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v31 = v10;
      v22 = v10[2];
      v21 = v10[3];
      if (v22 >= v21 >> 1)
      {
        sub_1BD53207C((v21 > 1), v22 + 1, 1);
        v10 = v31;
      }

      v10[2] = v22 + 1;
      sub_1BDA4B210(v8, v10 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      ++v18;
      if (v19 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_1BDA3DD20(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a3 + 16);
  if (v9)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1BD532148(0, v9, 0, a4, a5, a6, a7, a8);
    v12 = v27;
    v13 = (a3 + 32);
    while (1)
    {
      v14 = *v13++;
      v25 = v14;
      a1(&v26, &v25);
      if (v8)
      {
        break;
      }

      v22 = v26;
      v27 = v12;
      v24 = v12[2];
      v23 = v12[3];
      if (v24 >= v23 >> 1)
      {
        sub_1BD532148((v23 > 1), v24 + 1, 1, v17, v18, v19, v20, v21);
        v12 = v27;
      }

      v12[2] = v24 + 1;
      v12[v24 + 4] = v22;
      if (!--v9)
      {
        return;
      }
    }

    v12, v15, v16, v17, v18, v19, v20, v21;
    __break(1u);
  }
}

void sub_1BDA3DE98(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v33 = a7;
  v34 = a1;
  v10 = v7;
  v35 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v30 - v15;
  v17 = *(a3 + 16);
  if (v17)
  {
    v36 = MEMORY[0x1E69E7CC0];
    v31 = a5;
    (a5)(0, v17, 0, v14);
    v18 = v36;
    v19 = *(a6(0) - 8);
    v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v32 = *(v19 + 72);
    while (1)
    {
      v34(v20);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v36 = v18;
      v29 = v18[2];
      v28 = v18[3];
      if (v29 >= v28 >> 1)
      {
        v31(v28 > 1, v29 + 1, 1);
        v18 = v36;
      }

      v18[2] = v29 + 1;
      sub_1BDA4B210(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, v33);
      v20 += v32;
      if (!--v17)
      {
        return;
      }
    }

    v18, v21, v22, v23, v24, v25, v26, v27;
    __break(1u);
  }
}

uint64_t sub_1BDA3E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1BDA3E264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C750, &qword_1BE10FD78);
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v123 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C758, &qword_1BE10FD80);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v123 - v4;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C760, &qword_1BE10FD88);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v123 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C768, &qword_1BE10FD90);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v123 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C770, &qword_1BE10FD98);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v123 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37318, &qword_1BE10FDA0);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v146 = &v123 - v8;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C778, &qword_1BE10FDA8);
  v128 = *(v147 - 1);
  MEMORY[0x1EEE9AC00](v147);
  v125 = &v123 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C780, &qword_1BE10FDB0);
  v127 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v123 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C788, &qword_1BE10FDB8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v123 - v12;
  v150 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C790, &qword_1BE10FDC0);
  sub_1BD0DE4F4(&qword_1EBD5C798, &qword_1EBD5C790, &qword_1BE10FDC0, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v14 = sub_1BE04F5B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F594();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7A0, &qword_1BE10FDC8) + 36);
  (*(v15 + 16))(&v13[v18], v17, v14);
  v19 = *(v15 + 56);
  v19(&v13[v18], 0, 1, v14);
  KeyPath = swift_getKeyPath();
  v21 = &v13[*(v11 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v15 + 32))(v21 + v22, v17, v14);
  v19(v21 + v22, 0, 1, v14);
  *v21 = KeyPath;
  v23 = sub_1BE04F434();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v27, *MEMORY[0x1E697C438], v23, v25);
  v28 = sub_1BDA4A584();
  v29 = v124;
  sub_1BE050E84();
  (*(v24 + 8))(v27, v23);
  sub_1BD0DE53C(v13, &qword_1EBD5C788, &qword_1BE10FDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0, &unk_1BE0E9000);
  sub_1BE04EE44();
  v30 = swift_allocObject();
  v30[1] = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  *&v152 = v11;
  *(&v152 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v125;
  v33 = v126;
  MEMORY[0x1BFB3DEF0](0, v30, v126, OpaqueTypeConformance2);
  v30, v34, v35, v36, v37, v38, v39, v40;
  (*(v127 + 8))(v29, v33);
  v41 = v148;
  v149 = v148;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C88, &qword_1BE0DFEF0);
  *&v152 = v33;
  *(&v152 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49C90, &qword_1BE0DFEF8);
  v45 = sub_1BD53E12C();
  *&v152 = v44;
  *(&v152 + 1) = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v147;
  v127 = v43;
  v126 = v46;
  sub_1BE051024();
  (v128[1])(v32, v47);
  sub_1BE0528A4();
  v48 = v41;
  sub_1BD9852FC(v41, &v152);
  v49 = sub_1BE052894();
  v50 = swift_allocObject();
  v51 = MEMORY[0x1E69E85E0];
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  v52 = v48[1];
  *(v50 + 32) = *v48;
  *(v50 + 48) = v52;
  v53 = v48[3];
  *(v50 + 64) = v48[2];
  *(v50 + 80) = v53;
  v54 = sub_1BE0528D4();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = &v123 - v57;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v125 = sub_1BE04EAA4();
    v128 = &v123;
    v124 = *(v125 - 1);
    MEMORY[0x1EEE9AC00](v125);
    v123 = &v123 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v152 = 0;
    *(&v152 + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&v152 + 1), v60, v61, v62, v63, v64, v65, v66;
    *&v152 = 0xD000000000000042;
    *(&v152 + 1) = 0x80000001BE1489B0;
    v151 = 67;
    v67 = sub_1BE053B24();
    v68 = v42;
    v70 = v69;
    MEMORY[0x1BFB3F610](v67);
    v70, v71, v72, v73, v74, v75, v76, v77;
    v79 = MEMORY[0x1EEE9AC00](v78);
    (*(v55 + 16))(&v123 - v57, &v123 - v57, v54, v79);
    v80 = v123;
    v42 = v68;
    sub_1BE04EA94();
    (*(v55 + 8))(v58, v54);
    v81 = v131;
    v82 = v130;
    (*(v129 + 32))(v131, v146, v130);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37320, &unk_1BE0B1340);
    v84 = (*(v124 + 4))(&v81[*(v83 + 36)], v80, v125);
  }

  else
  {
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37328, &unk_1BE10FE30);
    v81 = v131;
    v86 = &v131[*(v85 + 36)];
    v87 = sub_1BE04E7B4();
    (*(v55 + 32))(&v86[*(v87 + 20)], &v123 - v57, v54);
    *v86 = &unk_1BE10FE20;
    *(v86 + 1) = v50;
    v82 = v130;
    v84 = (*(v129 + 32))(v81, v146, v130);
  }

  MEMORY[0x1EEE9AC00](v84);
  v88 = v148;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
  *&v152 = v147;
  *(&v152 + 1) = v42;
  v153 = v127;
  v154 = v126;
  v89 = swift_getOpaqueTypeConformance2();
  *&v152 = v82;
  *(&v152 + 1) = v89;
  swift_getOpaqueTypeConformance2();
  sub_1BD279F20();
  v90 = v134;
  v91 = v133;
  sub_1BE050954();
  (*(v132 + 8))(v81, v91);
  v92 = sub_1BE04EC54();
  v93 = sub_1BE050234();
  v94 = v137;
  (*(v135 + 32))(v137, v90, v136);
  v95 = v138;
  v96 = v94 + *(v138 + 36);
  *v96 = v92;
  *(v96 + 8) = v93;
  v97 = sub_1BE0501E4();
  v98 = sub_1BE04FC54();
  v147 = &v123;
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v123 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC34();
  v102 = sub_1BDA4A7D4();
  v103 = v139;
  MEMORY[0x1BFB3DB30](v97, 0x406E000000000000, 0, v101, v95, v102);
  (*(v99 + 8))(v101, v98);
  sub_1BD0DE53C(v94, &qword_1EBD5C760, &qword_1BE10FD88);
  v104 = swift_allocObject();
  v105 = v88[1];
  *(v104 + 16) = *v88;
  *(v104 + 32) = v105;
  v106 = v88[3];
  *(v104 + 48) = v88[2];
  *(v104 + 64) = v106;
  sub_1BD9852FC(v88, &v152);
  *&v152 = v95;
  *(&v152 + 1) = v102;
  v107 = swift_getOpaqueTypeConformance2();
  v122 = sub_1BD0F9764();
  v108 = MEMORY[0x1E69E7DE0];
  v109 = v142;
  v110 = v141;
  sub_1BE050DC4();
  v104, v111, v112, v113, v114, v115, v116, v117;
  (*(v140 + 8))(v103, v110);
  v152 = v88[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LOBYTE(v104) = v151;
  v118 = sub_1BE0501E4();
  *&v152 = v110;
  *(&v152 + 1) = v108;
  v153 = v107;
  v154 = v122;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = v145;
  MEMORY[0x1BFB3DE60]((v104 & 1) == 0, v118, v145, v119);
  return (*(v143 + 8))(v109, v120);
}

uint64_t sub_1BDA3F3C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v57 - v8;
  v61 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D58, &qword_1BE0E33E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7E8, &qword_1BE10FEC0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7F0, &qword_1BE10FEC8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  v67 = a1;
  *v17 = sub_1BE04F7C4();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7F8, &qword_1BE10FED0);
  sub_1BDA40088(a1, &v17[*(v24 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C800, &unk_1BE10FED8);
  sub_1BD0DE4F4(&qword_1EBD5C808, &qword_1EBD5C7E8, &qword_1BE10FEC0, MEMORY[0x1E6981870]);
  sub_1BDA4AB1C();
  sub_1BE051A24();
  v25 = &v23[*(v19 + 44)];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v25[32] = 1;
  v68 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8, &qword_1BE10FE48);
  sub_1BE0516A4();
  v26 = v69;
  KeyPath = swift_getKeyPath();
  *&v68 = v26;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v28, v29, v30, v31, v32, v33, v34;
  v35 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v26 + v35, v6, &qword_1EBD5C7D0, &qword_1BE10FE40);
  v26, v36, v37, v38, v39, v40, v41, v42;
  v43 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v43 - 8) + 48))(v6, 1, v43))
  {
    sub_1BD0DE53C(v6, &qword_1EBD5C7D0, &qword_1BE10FE40);
    v44 = v62;
    (*(v9 + 56))(v62, 1, 1, v61);
  }

  else
  {
    v46 = v58;
    v45 = v59;
    v47 = &v6[*(v43 + 28)];
    v44 = v62;
    sub_1BD0DE19C(v47, v62, &qword_1EBD3F780, &unk_1BE0DFFD0);
    sub_1BD0DE53C(v6, &qword_1EBD5C7D0, &qword_1BE10FE40);
    if ((*(v9 + 48))(v44, 1, v61) != 1)
    {
      v55 = sub_1BDA4B210(v44, v46, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      MEMORY[0x1EEE9AC00](v55);
      *(&v57 - 2) = v46;
      sub_1BDA40AB4(v45);
      type metadata accessor for FinanceKitTransactionHistoryView(0);
      sub_1BD53E7A4();
      sub_1BDA4AA28(&qword_1EBD49DB8, type metadata accessor for FinanceKitTransactionHistoryView, &unk_1BE0F2EE4);
      v49 = v64;
      sub_1BE051A24();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50, &unk_1BE0E33D0);
      (*(*(v56 - 8) + 56))(v49, 0, 1, v56);
      sub_1BDA4ABD8(v46, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      goto LABEL_5;
    }
  }

  sub_1BD0DE53C(v44, &qword_1EBD3F780, &unk_1BE0DFFD0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D50, &unk_1BE0E33D0);
  v49 = v64;
  (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
LABEL_5:
  v50 = v63;
  sub_1BD0DE19C(v23, v63, &qword_1EBD5C7F0, &qword_1BE10FEC8);
  v51 = v65;
  sub_1BD0DE19C(v49, v65, &qword_1EBD49D58, &qword_1BE0E33E0);
  v52 = v66;
  sub_1BD0DE19C(v50, v66, &qword_1EBD5C7F0, &qword_1BE10FEC8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C818, &unk_1BE10FEE8);
  sub_1BD0DE19C(v51, v52 + *(v53 + 48), &qword_1EBD49D58, &qword_1BE0E33E0);
  sub_1BD0DE53C(v49, &qword_1EBD49D58, &qword_1BE0E33E0);
  sub_1BD0DE53C(v23, &qword_1EBD5C7F0, &qword_1BE10FEC8);
  sub_1BD0DE53C(v51, &qword_1EBD49D58, &qword_1BE0E33E0);
  return sub_1BD0DE53C(v50, &qword_1EBD5C7F0, &qword_1BE10FEC8);
}

uint64_t sub_1BDA3FBD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8, &qword_1BE10FE48);
  sub_1BE0516A4();
  v16 = v47;
  KeyPath = swift_getKeyPath();
  *&v46 = v16;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  v25 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v16 + v25, v8, &qword_1EBD5C7D0, &qword_1BE10FE40);
  v16, v26, v27, v28, v29, v30, v31, v32;
  v33 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v33 - 8) + 48))(v8, 1, v33))
  {
    sub_1BD0DE53C(v8, &qword_1EBD5C7D0, &qword_1BE10FE40);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    sub_1BD0DE19C(&v8[*(v33 + 24)], v11, &qword_1EBD3F780, &unk_1BE0DFFD0);
    sub_1BD0DE53C(v8, &qword_1EBD5C7D0, &qword_1BE10FE40);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_1BDA4B210(v11, v15, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      sub_1BDA4AC38(v15, v5, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      type metadata accessor for NavigationController();
      sub_1BDA4AA28(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
      v38 = sub_1BE04EEC4();
      v40 = v39;
      sub_1BDA4ABD8(v15, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
      v41 = v44;
      v42 = &v5[*(v44 + 20)];
      *v42 = v38;
      v42[1] = v40;
      v43 = v45;
      sub_1BDA4B210(v5, v45, type metadata accessor for FinanceKitTransactionHistoryView);
      v36 = v41;
      v35 = v43;
      v34 = 0;
      return (*(v3 + 56))(v35, v34, 1, v36);
    }
  }

  sub_1BD0DE53C(v11, &qword_1EBD3F780, &unk_1BE0DFFD0);
  v34 = 1;
  v36 = v44;
  v35 = v45;
  return (*(v3 + 56))(v35, v34, 1, v36);
}

id sub_1BDA40088@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = sub_1BE04BD74();
  v133 = *(v3 - 8);
  v134 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v132 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  MEMORY[0x1EEE9AC00](v124);
  v6 = &v123 - v5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v123 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v123 - v11;
  v12 = type metadata accessor for FinanceKitMerchantHeaderView(0);
  v130 = *(v12 - 8);
  v131 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v123 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v123 - v19;
  v21 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C820, &qword_1BE10FF28);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v123 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v123 - v28;
  v139 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8, &qword_1BE10FE48);
  sub_1BE0516A4();
  v29 = v137;
  KeyPath = swift_getKeyPath();
  *&v139 = v29;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v31, v32, v33, v34, v35, v36, v37;
  v38 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v29 + v38, v17, &qword_1EBD5C7D0, &qword_1BE10FE40);
  v29, v39, v40, v41, v42, v43, v44, v45;
  v46 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v46 - 8) + 48))(v17, 1, v46))
  {
    sub_1BD0DE53C(v17, &qword_1EBD5C7D0, &qword_1BE10FE40);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_1BD0DE53C(v20, &qword_1EBD49D40, &unk_1BE0DFFB0);
    v47 = 1;
    v48 = v135;
    v50 = v132;
    v49 = v133;
    v51 = v131;
    goto LABEL_5;
  }

  sub_1BD0DE19C(v17, v20, &qword_1EBD49D40, &unk_1BE0DFFB0);
  sub_1BD0DE53C(v17, &qword_1EBD5C7D0, &qword_1BE10FE40);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  sub_1BDA4B210(v20, v24, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BDA4AC38(v24, v14, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v116 = v131;
  v117 = &v14[*(v131 + 20)];
  v136 = 0;
  sub_1BE051694();
  v118 = v138;
  *v117 = v137;
  *(v117 + 1) = v118;
  v119 = &v14[*(v116 + 24)];
  v136 = 0;
  sub_1BE051694();
  sub_1BDA4ABD8(v24, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v120 = v138;
  *v119 = v137;
  *(v119 + 1) = v120;
  v121 = v14;
  v122 = v135;
  sub_1BDA4B210(v121, v135, type metadata accessor for FinanceKitMerchantHeaderView);
  v48 = v122;
  v51 = v116;
  v47 = 0;
  v50 = v132;
  v49 = v133;
LABEL_5:
  (*(v130 + 56))(v48, v47, 1, v51);
  v52 = v134;
  (*(v49 + 104))(v50, *MEMORY[0x1E69B80D8], v134);
  result = PKPassKitBundle();
  if (result)
  {
    v54 = result;
    v55 = sub_1BE04B6F4();
    v57 = v56;

    (*(v49 + 8))(v50, v52);
    v137 = v55;
    v138 = v57;
    sub_1BD0DDEBC();
    v58 = sub_1BE0506C4();
    v60 = v59;
    LOBYTE(v57) = v61;
    v63 = v62;
    v64 = sub_1BE0503D4();
    v65 = sub_1BE0505F4();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v64, v66, v68, v70, v72, v73, v74, v75;
    sub_1BD0DDF10(v58, v60, (v57 & 1), v76, v77, v78, v79, v80);
    v63, v81, v82, v83, v84, v85, v86, v87;
    v88 = sub_1BE0505D4();
    v90 = v89;
    LOBYTE(v57) = v91;
    v93 = v92;
    sub_1BD0DDF10(v65, v67, (v69 & 1), v92, v94, v95, v96, v97);
    v71, v98, v99, v100, v101, v102, v103, v104;
    v105 = &v6[*(v124 + 36)];
    v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v107 = sub_1BE0505C4();
    (*(*(v107 - 8) + 56))(v105 + v106, 1, 1, v107);
    *v105 = swift_getKeyPath();
    *v6 = v88;
    *(v6 + 1) = v90;
    v6[16] = v57 & 1;
    *(v6 + 3) = v93;
    v108 = sub_1BE051464();
    v109 = v125;
    sub_1BD0DE204(v6, v125, &qword_1EBD386A0, &qword_1BE0B6C30);
    v110 = v127;
    *(v109 + *(v126 + 36)) = v108;
    sub_1BD0DE204(v109, v110, &qword_1EBD49D48, &unk_1BE0DFFC0);
    v111 = v135;
    v112 = v123;
    sub_1BD0DE19C(v135, v123, &qword_1EBD5C820, &qword_1BE10FF28);
    v113 = v128;
    sub_1BD0DE19C(v110, v128, &qword_1EBD49D48, &unk_1BE0DFFC0);
    v114 = v129;
    sub_1BD0DE19C(v112, v129, &qword_1EBD5C820, &qword_1BE10FF28);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C828, &qword_1BE10FF30);
    sub_1BD0DE19C(v113, v114 + *(v115 + 48), &qword_1EBD49D48, &unk_1BE0DFFC0);
    sub_1BD0DE53C(v110, &qword_1EBD49D48, &unk_1BE0DFFC0);
    sub_1BD0DE53C(v111, &qword_1EBD5C820, &qword_1BE10FF28);
    sub_1BD0DE53C(v113, &qword_1EBD49D48, &unk_1BE0DFFC0);
    return sub_1BD0DE53C(v112, &qword_1EBD5C820, &qword_1BE10FF28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA40A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BDA4AC38(a1, a2, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BDA4AA28(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  result = type metadata accessor for FinanceKitTransactionHistoryView(0);
  v7 = (a2 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

int *sub_1BDA40AB4@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0, &qword_1BE0B6C30);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v7 = &v66 - v6;
  (*(v2 + 104))(v4, *MEMORY[0x1E69B80D8], v1, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v2 + 8))(v4, v1);
    v68 = v10;
    v69 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    v18 = v17;
    v19 = sub_1BE0503D4();
    v20 = sub_1BE0505F4();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v19, v21, v23, v25, v27, v28, v29, v30;
    sub_1BD0DDF10(v13, v15, (v9 & 1), v31, v32, v33, v34, v35);
    v18, v36, v37, v38, v39, v40, v41, v42;
    v43 = sub_1BE0505D4();
    v45 = v44;
    LOBYTE(v9) = v46;
    v48 = v47;
    sub_1BD0DDF10(v20, v22, (v24 & 1), v47, v49, v50, v51, v52);
    v26, v53, v54, v55, v56, v57, v58, v59;
    v60 = &v7[*(v66 + 36)];
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v62 = sub_1BE0505C4();
    (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
    *v60 = swift_getKeyPath();
    *v7 = v43;
    *(v7 + 1) = v45;
    v7[16] = v9 & 1;
    *(v7 + 3) = v48;
    v63 = sub_1BE051464();
    v64 = v7;
    v65 = v67;
    sub_1BD0DE204(v64, v67, &qword_1EBD386A0, &qword_1BE0B6C30);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D48, &unk_1BE0DFFC0);
    *(v65 + result[9]) = v63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA40DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49C90, &qword_1BE0DFEF8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-v3];
  v10 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CA8, &qword_1BE0DFF00);
  v6 = sub_1BD0DE4F4(&qword_1EBD49CA0, &qword_1EBD49CA8, &qword_1BE0DFF00, MEMORY[0x1E697C5E0]);
  MEMORY[0x1BFB3E5A0](sub_1BDA4AAFC, v9, v5, v6);
  v7 = sub_1BD53E12C();
  MEMORY[0x1BFB3CC50](v4, v2, v7);
  return sub_1BD0DE53C(v4, &qword_1EBD49C90, &qword_1BE0DFEF8);
}

uint64_t sub_1BDA40F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BDA40FA0, v5, v4);
}

uint64_t sub_1BDA40FA0()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8, &qword_1BE10FE48);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD53C6FC;

  return sub_1BDA42A6C();
}

uint64_t sub_1BDA41060@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v31 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8, &qword_1BE10FE48);
  sub_1BE0516A4();
  v7 = v32;
  KeyPath = swift_getKeyPath();
  *&v31 = v7;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v7 + v16, v6, &qword_1EBD5C7D0, &qword_1BE10FE40);
  v7, v17, v18, v19, v20, v21, v22, v23;
  v24 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v24 - 8) + 48))(v6, 1, v24))
  {
    result = sub_1BD0DE53C(v6, &qword_1EBD5C7D0, &qword_1BE10FE40);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v30 = &v6[*(v24 + 32)];
    v26 = *v30;
    v27 = v30[1];
    v28 = v30[2];
    v29 = v30[3];
    sub_1BD2726F8(*v30, v27, v28, v29);
    result = sub_1BD0DE53C(v6, &qword_1EBD5C7D0, &qword_1BE10FE40);
    if (v27)
    {
      goto LABEL_5;
    }

    v26 = 0;
  }

  v28 = 0;
  v29 = 0;
LABEL_5:
  *a2 = v26;
  a2[1] = v27;
  a2[2] = v28;
  a2[3] = v29;
  return result;
}

uint64_t sub_1BDA41288@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD0, &qword_1BE0DFF58);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v59 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CD8, &qword_1BE0DFF60);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v61 = &v59 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE0, &qword_1BE0DFF68);
  v59 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v60 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CE8, &unk_1BE0DFF70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v59 - v10;
  v63 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v12 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF0, &unk_1BE10FE80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v59 - v18;
  v19 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49CF8, &unk_1BE0DFF80);
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  sub_1BE04FB34();
  v73 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D00, &unk_1BE10FE90);
  sub_1BD0DE4F4(&qword_1EBD49D08, &qword_1EBD49D00, &unk_1BE10FE90, MEMORY[0x1E69817F8]);
  sub_1BE04E424();
  v76 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8, &qword_1BE10FE48);
  sub_1BE0516A4();
  v23 = v74;
  KeyPath = swift_getKeyPath();
  *&v76 = v23;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v23 + v32, v8, &qword_1EBD5C7D0, &qword_1BE10FE40);
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v40 - 8) + 48))(v8, 1, v40))
  {
    sub_1BD0DE53C(v8, &qword_1EBD5C7D0, &qword_1BE10FE40);
    (*(v12 + 56))(v11, 1, 1, v63);
LABEL_4:
    sub_1BD0DE53C(v11, &qword_1EBD49CE8, &unk_1BE0DFF70);
    goto LABEL_5;
  }

  v42 = v61;
  v41 = v62;
  v43 = v60;
  sub_1BD0DE19C(&v8[*(v40 + 20)], v11, &qword_1EBD49CE8, &unk_1BE0DFF70);
  sub_1BD0DE53C(v8, &qword_1EBD5C7D0, &qword_1BE10FE40);
  if ((*(v12 + 48))(v11, 1, v63) == 1)
  {
    goto LABEL_4;
  }

  sub_1BDA4B210(v11, v41, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  if (sub_1BD51FA14())
  {
    v53 = sub_1BE04FAE4();
    MEMORY[0x1EEE9AC00](v53);
    *(&v59 - 2) = v41;
    type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
    sub_1BDA4AA28(&qword_1EBD49D18, type metadata accessor for FinanceKitMerchantBrandViewButtons, &unk_1BE0DEF94);
    sub_1BE04E424();
    v54 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0, &qword_1BE0DFF68, MEMORY[0x1E697BEF0]);
    v55 = v68;
    MEMORY[0x1BFB3CC50](v43, v68, v54);
    v56 = v67;
    v57 = v69;
    (*(v67 + 16))(v16, v42, v69);
    (*(v56 + 56))(v16, 0, 1, v57);
    v74 = v55;
    v75 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v66;
    MEMORY[0x1BFB3CC80](v16, v57, OpaqueTypeConformance2);
    sub_1BD0DE53C(v16, &qword_1EBD49CF0, &unk_1BE10FE80);
    (*(v56 + 8))(v42, v57);
    (*(v59 + 8))(v43, v55);
    sub_1BDA4ABD8(v62, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    goto LABEL_6;
  }

  sub_1BDA4ABD8(v41, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
LABEL_5:
  v44 = v66;
  v45 = v69;
  (*(v67 + 56))(v16, 1, 1, v69);
  v46 = sub_1BD0DE4F4(&qword_1EBD49D10, &qword_1EBD49CE0, &qword_1BE0DFF68, MEMORY[0x1E697BEF0]);
  v74 = v68;
  v75 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v16, v45, v47);
  sub_1BD0DE53C(v16, &qword_1EBD49CF0, &unk_1BE10FE80);
LABEL_6:
  v48 = v70;
  v49 = *(v71 + 48);
  v51 = v64;
  v50 = v65;
  (*(v64 + 16))(v70, v22, v65);
  sub_1BD0CF8D4(v44, &v48[v49]);
  sub_1BE04F854();
  sub_1BD0DE53C(v44, &qword_1EBD49CF0, &unk_1BE10FE80);
  return (*(v51 + 8))(v22, v50);
}

uint64_t sub_1BDA41C38@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D20, &unk_1BE0DFF90);
  return sub_1BDA41C90(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BDA41C90@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for FinanceKitTransactionIcon(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D28, &unk_1BE10FEA0);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v62 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D30, &unk_1BE0DFFA0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D38, &unk_1BE10FEB0);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49D40, &unk_1BE0DFFB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v62 - v17;
  v19 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v75 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D8, &qword_1BE10FE48);
  sub_1BE0516A4();
  v23 = v74;
  KeyPath = swift_getKeyPath();
  *&v75 = v23;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v23 + v32, v15, &qword_1EBD5C7D0, &qword_1BE10FE40);
  v23, v33, v34, v35, v36, v37, v38, v39;
  v40 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  if ((*(*(v40 - 8) + 48))(v15, 1, v40))
  {
    sub_1BD0DE53C(v15, &qword_1EBD5C7D0, &qword_1BE10FE40);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_4:
    sub_1BD0DE53C(v18, &qword_1EBD49D40, &unk_1BE0DFFB0);
    v45 = 1;
    v47 = v71;
    v46 = v72;
    return (*(v70 + 56))(v46, v45, 1, v47);
  }

  v42 = v67;
  v41 = v68;
  v63 = v12;
  v43 = v66;
  v44 = v69;
  sub_1BD0DE19C(v15, v18, &qword_1EBD49D40, &unk_1BE0DFFB0);
  sub_1BD0DE53C(v15, &qword_1EBD5C7D0, &qword_1BE10FE40);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_4;
  }

  sub_1BDA4B210(v18, v22, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v49 = *(v19 + 40);
  v50 = type metadata accessor for FinanceKitTransactionIcon.ViewModel(0);
  sub_1BD0DE19C(&v22[v49], &v41[*(v50 + 20)], &qword_1EBD45CC0, &qword_1BE0D5630);
  *v41 = 0;
  v74 = v44[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v51 = 0.0;
  if (v73)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  sub_1BDA4B210(v41, v42, type metadata accessor for FinanceKitTransactionIcon);
  *(v42 + *(v64 + 36)) = v52;
  v74 = v44[2];
  sub_1BE0516A4();
  if (!v73)
  {
    v51 = 40.0;
  }

  v53 = sub_1BD0DE204(v42, v43, &qword_1EBD49D28, &unk_1BE10FEA0);
  v54 = v43 + *(v65 + 36);
  *v54 = 0;
  *(v54 + 8) = v51;
  v55 = MEMORY[0x1BFB3EDF0](v53, 0.5, 1.0, 0.0);
  v74 = v44[2];
  sub_1BE0516A4();
  sub_1BDA4ABD8(v22, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v56 = v73;
  sub_1BD0DE204(v43, v9, &qword_1EBD49D30, &unk_1BE0DFFA0);
  v57 = v71;
  v58 = &v9[*(v71 + 36)];
  *v58 = v55;
  v58[8] = v56;
  v59 = v63;
  sub_1BD0DE204(v9, v63, &qword_1EBD49D38, &unk_1BE10FEB0);
  v60 = v59;
  v61 = v72;
  sub_1BD0DE204(v60, v72, &qword_1EBD49D38, &unk_1BE10FEB0);
  v47 = v57;
  v46 = v61;
  v45 = 0;
  return (*(v70 + 56))(v46, v45, 1, v47);
}

uint64_t sub_1BDA42364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BDA4AC38(a1, a2, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  type metadata accessor for NavigationController();
  sub_1BDA4AA28(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v3 = sub_1BE04EEC4();
  v5 = v4;
  v6 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v7 = a2 + *(v6 + 20);
  result = sub_1BE051694();
  *v7 = v10;
  *(v7 + 8) = v11;
  v9 = (a2 + *(v6 + 24));
  *v9 = v3;
  v9[1] = v5;
  return result;
}

uint64_t sub_1BDA42490()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading);
}

void sub_1BDA42538(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading);
}

void sub_1BDA425E8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BDA42700@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v13 + v11, a1, &qword_1EBD5C7D0, &qword_1BE10FE40);
}

uint64_t sub_1BDA427D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v12, a2, &qword_1EBD5C7D0, &qword_1BE10FE40);
}

uint64_t sub_1BDA428B0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1BD0DE19C(a1, &v17[-v5], &qword_1EBD5C7D0, &qword_1BE10FE40);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0DE53C(v6, &qword_1EBD5C7D0, &qword_1BE10FE40);
}

uint64_t sub_1BDA42A00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
  swift_beginAccess();
  sub_1BDA4AA8C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BDA42A6C()
{
  v1[24] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F780, &unk_1BE0DFFD0);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v2 = sub_1BE04AF64();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v1[32] = swift_task_alloc();
  v3 = sub_1BE0523F4();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v4 = sub_1BE049B14();
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  v5 = sub_1BE049D74();
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  v6 = sub_1BE049B44();
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0, &unk_1BE0B7DC0);
  v1[46] = swift_task_alloc();
  v7 = sub_1BE049CC4();
  v1[47] = v7;
  v1[48] = *(v7 - 8);
  v1[49] = swift_task_alloc();
  v8 = sub_1BE049D44();
  v1[50] = v8;
  v1[51] = *(v8 - 8);
  v1[52] = swift_task_alloc();
  v9 = sub_1BE049184();
  v1[53] = v9;
  v1[54] = *(v9 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v10 = sub_1BE0495A4();
  v1[57] = v10;
  v1[58] = *(v10 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v1[61] = swift_task_alloc();
  v11 = sub_1BE049B64();
  v1[62] = v11;
  v1[63] = *(v11 - 8);
  v1[64] = swift_task_alloc();
  v12 = sub_1BE049C24();
  v1[65] = v12;
  v1[66] = *(v12 - 8);
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C7D0, &qword_1BE10FE40);
  v1[68] = swift_task_alloc();
  v13 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v1[69] = v13;
  v1[70] = *(v13 - 8);
  v1[71] = swift_task_alloc();
  v14 = type metadata accessor for FinanceKitMerchantHeaderView.ViewModel(0);
  v1[72] = v14;
  v1[73] = *(v14 - 8);
  v1[74] = swift_task_alloc();
  v15 = sub_1BE04AFE4();
  v1[75] = v15;
  v1[76] = *(v15 - 8);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v16 = sub_1BE049A94();
  v1[82] = v16;
  v1[83] = *(v16 - 8);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  sub_1BE0528A4();
  v1[89] = sub_1BE052894();
  v18 = sub_1BE052844();
  v1[90] = v18;
  v1[91] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1BDA43284, v18, v17);
}

uint64_t sub_1BDA43284()
{
  v1 = *(v0 + 192);
  KeyPath = swift_getKeyPath();
  *(v0 + 56) = v1;
  *(v0 + 736) = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel___observationRegistrar;
  *(v0 + 744) = sub_1BDA4AA28(&qword_1EBD5C7E0, type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel, &unk_1BE10FD58);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v17 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading;
  *(v0 + 752) = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading;
  if (*(v1 + v17))
  {
    *(v0 + 712), v10, v11, v12, v13, v14, v15, v16;

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v19 = *(v0 + 192);
    v20 = swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    *(v21 + 24) = 1;
    *(v0 + 64) = v19;
    sub_1BE04B584();
    v20, v22, v23, v24, v25, v26, v27, v28;

    *(v0 + 760) = *(v19 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_store);
    *(v0 + 768) = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_groupID;
    sub_1BE049074();
    sub_1BE049A14();
    v29 = swift_task_alloc();
    *(v0 + 776) = v29;
    *v29 = v0;
    v29[1] = sub_1BDA438E8;
    v30 = *(v0 + 648);
    v31 = *(v0 + 632);

    return sub_1BDA49B2C(v30, v31);
  }
}

uint64_t sub_1BDA438E8()
{
  v2 = *v1;
  v2[98] = v0;

  v3 = v2[79];
  v4 = v2[76];
  v5 = v2[75];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[91];
    v10 = v2[90];
    v11 = sub_1BDA46554;
  }

  else
  {
    v2[99] = v7;
    v2[100] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[91];
    v10 = v2[90];
    v11 = sub_1BDA43A74;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1BDA43A74()
{
  v1 = *(v0 + 784);
  *(v0 + 808) = sub_1BD5812C8(*(v0 + 704), *(v0 + 648));
  *(v0 + 816) = v1;
  if (v1)
  {
    v9 = *(v0 + 752);
    v10 = *(v0 + 704);
    v11 = *(v0 + 664);
    v12 = *(v0 + 656);
    v13 = *(v0 + 648);
    v14 = *(v0 + 192);
    *(v0 + 712), v2, v3, v4, v5, v6, v7, v8;
    sub_1BD0DE53C(v13, &qword_1EBD3F7C0, &unk_1BE0D6570);
    (*(v11 + 8))(v10, v12);
    if (*(v14 + v9) == 1)
    {
      v15 = *(v0 + 192);
      KeyPath = swift_getKeyPath();
      v17 = swift_task_alloc();
      *(v17 + 16) = v15;
      *(v17 + 24) = 0;
      *(v0 + 88) = v15;
      sub_1BE04B584();
      KeyPath, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      *(*(v0 + 192) + *(v0 + 752)) = 0;
    }

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 824) = v25;
    *v25 = v0;
    v25[1] = sub_1BDA43E38;
    v26 = *(v0 + 704);
    v27 = *(v0 + 648);
    v28 = *(v0 + 592);

    return sub_1BD4E0F68(v28, v26, v27);
  }
}

uint64_t sub_1BDA43E38()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return MEMORY[0x1EEE6DFA0](sub_1BDA43F58, v3, v2);
}

uint64_t sub_1BDA43F58()
{
  v1 = v0[80];
  v2 = v0[76];
  v39 = v0[75];
  v40 = v0[78];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v38 = v0[69];
  v8 = v0[68];
  v42 = v0[61];
  v41 = v0[57];
  v9 = v0[24];
  sub_1BD0DE19C(v0[81], v1, &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD51FF8C(v1, v6);
  sub_1BDA4AC38(v3, v8, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v10 = *(v4 + 56);
  v0[104] = v10;
  v0[105] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v8, 0, 1, v5);
  v11 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
  v0[106] = v11;
  v12 = v11[5];
  sub_1BDA4AC38(v6, v8 + v12, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v13 = *(v7 + 56);
  v0[107] = v13;
  v0[108] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v8 + v12, 0, 1, v38);
  v14 = v11[6];
  v15 = type metadata accessor for FinanceKitTransactionHistoryView.ViewModel(0);
  v0[109] = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v0[110] = v17;
  v0[111] = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v8 + v14, 1, 1, v15);
  v17(v8 + v11[7], 1, 1, v15);
  v18 = (v8 + v11[8]);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = *(v11 - 1);
  v20 = *(v19 + 56);
  v0[112] = v20;
  v0[113] = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v8, 0, 1, v11);
  KeyPath = swift_getKeyPath();
  v22 = swift_task_alloc();
  *(v22 + 16) = v9;
  *(v22 + 24) = v8;
  v0[12] = v9;
  sub_1BE04B584();
  KeyPath, v23, v24, v25, v26, v27, v28, v29;

  sub_1BD0DE53C(v8, &qword_1EBD5C7D0, &qword_1BE10FE40);
  v30 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_accountID;
  v31 = *(v2 + 16);
  v0[114] = v31;
  v0[115] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v40, v9 + v30, v39);
  v32 = swift_task_alloc();
  v0[116] = v32;
  *(v32 + 16) = v40;
  v0[13] = v41;
  sub_1BE04B444();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
  (*(*(v33 - 8) + 56))(v42, 0, 1, v33);
  sub_1BE049B54();
  v34 = swift_task_alloc();
  v0[117] = v34;
  *v34 = v0;
  v34[1] = sub_1BDA44390;
  v35 = v0[67];
  v36 = v0[64];

  return MEMORY[0x1EEDC14B8](v35, v36);
}

uint64_t sub_1BDA44390()
{
  v2 = *v1;
  *(*v1 + 944) = v0;

  (*(v2[63] + 8))(v2[64], v2[62]);
  v3 = v2[91];
  v4 = v2[90];
  if (v0)
  {
    v5 = sub_1BDA46854;
  }

  else
  {
    v5 = sub_1BDA44518;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BDA44518()
{
  v1 = sub_1BE049C14();
  if (*(v1 + 16))
  {
    v10 = *(v0 + 472);
    v9 = *(v0 + 480);
    v11 = *(v0 + 456);
    v12 = *(v0 + 464);
    v13 = *(v0 + 424);
    v14 = *(v0 + 368);
    v15 = v1;
    (*(v12 + 16))(v10, v1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);
    v15, v16, v17, v18, v19, v20, v21, v22;
    (*(v12 + 32))(v9, v10, v11);
    v23 = swift_task_alloc();
    *(v0 + 952) = v23;
    *(v23 + 16) = v9;
    *(v0 + 120) = v13;
    sub_1BE04B444();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00, &unk_1BE0B7E60);
    (*(*(v24 - 8) + 56))(v14, 0, 1, v24);
    sub_1BE049CB4();
    v25 = swift_task_alloc();
    *(v0 + 960) = v25;
    *v25 = v0;
    v25[1] = sub_1BDA44AA0;
    v26 = *(v0 + 416);
    v27 = *(v0 + 392);

    return MEMORY[0x1EEDC14C8](v26, v27);
  }

  else
  {
    v28 = *(v0 + 808);
    v61 = *(v0 + 792);
    v62 = *(v0 + 752);
    v58 = *(v0 + 704);
    v29 = *(v0 + 664);
    v57 = *(v0 + 656);
    v30 = *(v0 + 648);
    v59 = *(v0 + 600);
    v60 = *(v0 + 624);
    v31 = *(v0 + 592);
    v32 = *(v0 + 568);
    v33 = *(v0 + 536);
    v34 = *(v0 + 528);
    v35 = *(v0 + 520);
    v56 = *(v0 + 192);
    v36 = v1;
    *(v0 + 712), v2, v3, v4, v5, v6, v7, v8;
    v36, v37, v38, v39, v40, v41, v42, v43;

    (*(v34 + 8))(v33, v35);
    sub_1BDA4ABD8(v32, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    sub_1BDA4ABD8(v31, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
    sub_1BD0DE53C(v30, &qword_1EBD3F7C0, &unk_1BE0D6570);
    (*(v29 + 8))(v58, v57);
    v61(v60, v59);
    if (*(v56 + v62) == 1)
    {
      v44 = *(v0 + 192);
      KeyPath = swift_getKeyPath();
      v46 = swift_task_alloc();
      *(v46 + 16) = v44;
      *(v46 + 24) = 0;
      *(v0 + 184) = v44;
      sub_1BE04B584();
      KeyPath, v47, v48, v49, v50, v51, v52, v53;
    }

    else
    {
      *(*(v0 + 192) + *(v0 + 752)) = 0;
    }

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_1BDA44AA0()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  v3 = v2[91];
  v4 = v2[90];
  if (v0)
  {
    v5 = sub_1BDA46BFC;
  }

  else
  {
    v5 = sub_1BDA44C28;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BDA44C28(uint64_t a1)
{
  v3 = *(v1 + 408);
  v2 = *(v1 + 416);
  v4 = *(v1 + 400);
  v5 = sub_1BE049D34();
  (*(v3 + 8))(v2, v4);
  if (v5[2])
  {
    v72 = *(v1 + 912);
    v71 = *(v1 + 768);
    v87 = *(v1 + 624);
    v89 = *(v1 + 656);
    v70 = *(v1 + 600);
    v13 = *(v1 + 440);
    v14 = *(v1 + 448);
    v15 = *(v1 + 424);
    v16 = *(v1 + 432);
    v18 = *(v1 + 352);
    v17 = *(v1 + 360);
    v68 = *(v1 + 344);
    v19 = *(v1 + 304);
    v91 = *(v1 + 312);
    v69 = *(v1 + 296);
    v74 = *(v1 + 288);
    v76 = *(v1 + 272);
    v78 = *(v1 + 280);
    v80 = *(v1 + 264);
    v85 = *(v1 + 256);
    v20 = *(v1 + 192);
    (*(v16 + 16))(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);
    v5, v21, v22, v23, v24, v25, v26, v27;
    (*(v16 + 32))(v14, v13, v15);
    v82 = sub_1BE049AC4();
    (*(v18 + 104))(v17, *MEMORY[0x1E6967B10], v68);
    v72(v91, v20 + v71, v70);
    (*(v19 + 104))(v91, *MEMORY[0x1E6967B00], v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
    *(swift_allocObject() + 16) = xmmword_1BE0B98D0;
    swift_getKeyPath();
    *(v1 + 976) = sub_1BDA4AA28(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    sub_1BE04A4F4();
    swift_getKeyPath();
    sub_1BE0523E4();
    (*(v76 + 16))(v78, v74, v80);
    sub_1BE04A4E4();
    (*(v76 + 8))(v74, v80);
    swift_getKeyPath();
    sub_1BDA4AA28(&qword_1EBD38DE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C0]);
    sub_1BE04A4F4();
    v28 = swift_task_alloc();
    *(v1 + 984) = v28;
    v28[2] = v87;
    v28[3] = v17;
    v28[4] = v82;
    *(v1 + 136) = v89;
    sub_1BE04B444();
    v82, v29, v30, v31, v32, v33, v34, v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
    (*(*(v36 - 8) + 56))(v85, 0, 1, v36);
    v37 = sub_1BE049B34();
    v38 = MEMORY[0x1E6967B08];
    *(v1 + 40) = v37;
    *(v1 + 48) = v38;
    __swift_allocate_boxed_opaque_existential_1((v1 + 16));
    sub_1BE049B24();
    v39 = swift_task_alloc();
    *(v1 + 992) = v39;
    *v39 = v1;
    v39[1] = sub_1BDA454A8;
    v40 = *(v1 + 336);

    return MEMORY[0x1EEDC14D8](v40, v1 + 16);
  }

  else
  {
    v41 = *(v1 + 808);
    v88 = *(v1 + 792);
    v90 = *(v1 + 752);
    v42 = *(v1 + 664);
    v79 = *(v1 + 656);
    v81 = *(v1 + 704);
    v73 = *(v1 + 648);
    v84 = *(v1 + 600);
    v86 = *(v1 + 624);
    v43 = *(v1 + 592);
    v44 = *(v1 + 568);
    v45 = *(v1 + 536);
    v46 = *(v1 + 528);
    v47 = *(v1 + 520);
    v48 = *(v1 + 464);
    v75 = *(v1 + 456);
    v77 = *(v1 + 480);
    v83 = *(v1 + 192);
    *(v1 + 712), v6, v7, v8, v9, v10, v11, v12;
    v5, v49, v50, v51, v52, v53, v54, v55;

    (*(v46 + 8))(v45, v47);
    sub_1BDA4ABD8(v44, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
    sub_1BDA4ABD8(v43, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
    sub_1BD0DE53C(v73, &qword_1EBD3F7C0, &unk_1BE0D6570);
    (*(v42 + 8))(v81, v79);
    (*(v48 + 8))(v77, v75);
    v88(v86, v84);
    if (*(v83 + v90) == 1)
    {
      v56 = *(v1 + 192);
      KeyPath = swift_getKeyPath();
      v58 = swift_task_alloc();
      *(v58 + 16) = v56;
      *(v58 + 24) = 0;
      *(v1 + 176) = v56;
      sub_1BE04B584();
      KeyPath, v59, v60, v61, v62, v63, v64, v65;
    }

    else
    {
      *(*(v1 + 192) + *(v1 + 752)) = 0;
    }

    v66 = *(v1 + 8);

    return v66();
  }
}

uint64_t sub_1BDA454A8()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v10 = *(v2 + 728);
    v11 = *(v2 + 720);
    v12 = sub_1BDA46FFC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v3, v4, v5, v6, v7, v8, v9);
    v10 = *(v2 + 728);
    v11 = *(v2 + 720);
    v12 = sub_1BDA455CC;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1BDA455CC(uint64_t a1)
{
  v3 = v1[41];
  v2 = v1[42];
  v4 = v1[40];
  v5 = sub_1BE049D54();
  v1[126] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v1[83];
    v9 = v1[76];
    v23 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v6, 0);
    v7 = v23;
    v10 = *(v8 + 16);
    v8 += 16;
    v11 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v21 = *(v8 + 56);
    v22 = v10;
    v12 = (v8 - 8);
    do
    {
      v13 = v1[87];
      v14 = v1[82];
      v22(v13, v11, v14);
      sub_1BE049A14();
      (*v12)(v13, v14);
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BD531F28((v15 > 1), v16 + 1, 1);
      }

      v17 = v1[77];
      v18 = v1[75];
      *(v23 + 16) = v16 + 1;
      (*(v9 + 32))(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v17, v18);
      v11 += v21;
      --v6;
    }

    while (v6);
  }

  v1[127] = v7;
  v19 = swift_task_alloc();
  v1[128] = v19;
  *v19 = v1;
  v19[1] = sub_1BDA457D4;

  return MEMORY[0x1EEDC1510](v7);
}

uint64_t sub_1BDA457D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[129] = a1;
  v4[130] = v1;

  v12 = v3[127];
  if (v1)
  {
    v13 = v4[126];
    v12, v5, v6, v7, v8, v9, v10, v11;
    v13, v14, v15, v16, v17, v18, v19, v20;
    v21 = v4[91];
    v22 = v4[90];
    v23 = sub_1BDA47464;
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v21 = v4[91];
    v22 = v4[90];
    v23 = sub_1BDA4592C;
  }

  return MEMORY[0x1EEE6DFA0](v23, v22, v21);
}

uint64_t sub_1BDA4592C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 1008);
  *(v8 + 712), a2, a3, a4, a5, a6, a7, a8;
  v17 = *(v9 + 16);
  v18 = *(v8 + 1008);
  if (v17)
  {
    v19 = *(v8 + 664);
    v22 = *(v19 + 16);
    v20 = v19 + 16;
    v21 = v22;
    v159 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v23 = &v18[v159];
    v154 = (*(v8 + 240) + 8);
    v156 = *(v20 + 56);
    v150 = MEMORY[0x1E69E7CC0];
    v166 = v22;
    v169 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v21(*(v8 + 688), v23, *(v8 + 656));
      sub_1BE049974();
      if ((sub_1BE052314() & 1) == 0)
      {
        break;
      }

      v34 = *(v8 + 248);
      v35 = *(v8 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
      v36 = sub_1BE0522F4();
      (*v154)(v34, v35);
      if ((v36 & 1) == 0)
      {
        goto LABEL_12;
      }

      v21(*(v8 + 680), *(v8 + 688), *(v8 + 656));
      v37 = v150;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1BD1D825C(0, v150[2] + 1, 1, v150);
      }

      v39 = v37[2];
      v38 = v37[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1BD1D825C((v38 > 1), v39 + 1, 1, v37);
        v24 = (v8 + 680);
        v150 = v37;
      }

      else
      {
        v150 = v37;
        v24 = (v8 + 680);
      }

LABEL_4:
      v25 = *v24;
      v26 = *(v8 + 656);
      (*(v20 - 8))(*(v8 + 688), v26);
      v37[2] = v40;
      (*(v20 + 16))(v37 + v159 + v39 * v156, v25, v26);
      v23 += v156;
      --v17;
      v21 = v166;
      if (!v17)
      {
        *(v8 + 1008), v27, v28, v29, v30, v31, v32, v33;
        v42 = v150;
        v43 = v169;
        goto LABEL_19;
      }
    }

    (*v154)(*(v8 + 248), *(v8 + 232));
LABEL_12:
    v21(*(v8 + 672), *(v8 + 688), *(v8 + 656));
    v37 = v169;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1BD1D825C(0, v169[2] + 1, 1, v169);
    }

    v39 = v37[2];
    v41 = v37[3];
    v40 = v39 + 1;
    if (v39 < v41 >> 1)
    {
      v169 = v37;
      v24 = (v8 + 672);
    }

    else
    {
      v37 = sub_1BD1D825C((v41 > 1), v39 + 1, 1, v37);
      v24 = (v8 + 672);
      v169 = v37;
    }

    goto LABEL_4;
  }

  v18, v10, v11, v12, v13, v14, v15, v16;
  v42 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
LABEL_19:
  (*(v8 + 880))(*(v8 + 224), 1, 1, *(v8 + 872));
  v151 = v42;
  if (*(v42 + 16))
  {
    v44 = *(v8 + 1032);
    v163 = *(v8 + 880);
    v45 = *(v8 + 480);
    v46 = *(v8 + 448);
    v47 = *(v8 + 216);
    v157 = *(v8 + 224);
    v160 = *(v8 + 872);
    v170 = v43;
    v48 = *(v8 + 200);
    v49 = swift_task_alloc();
    v49[2] = v44;
    v49[3] = v45;
    v49[4] = v46;
    sub_1BDA3DE98(sub_1BDA4ACD4, v49, v42, type metadata accessor for TransactionContext, sub_1BD531EE4, MEMORY[0x1E6967A40], type metadata accessor for TransactionContext);
    v51 = v50;

    sub_1BE049C04();
    v52 = v48;
    v43 = v170;
    sub_1BD720F44(v51, v52, v47);
    sub_1BD0DE53C(v157, &qword_1EBD3F780, &unk_1BE0DFFD0);
    v163(v47, 0, 1, v160);
    sub_1BD0DE204(v47, v157, &qword_1EBD3F780, &unk_1BE0DFFD0);
  }

  (*(v8 + 880))(*(v8 + 208), 1, 1, *(v8 + 872));
  v60 = *(v8 + 1032);
  if (v43[2])
  {
    v167 = *(v8 + 880);
    v61 = *(v8 + 480);
    v62 = *(v8 + 448);
    v63 = *(v8 + 216);
    v161 = *(v8 + 208);
    v164 = *(v8 + 872);
    v64 = *(v8 + 200);
    v65 = swift_task_alloc();
    v65[2] = v60;
    v65[3] = v61;
    v65[4] = v62;
    sub_1BDA3DE98(sub_1BDA4B3A8, v65, v43, type metadata accessor for TransactionContext, sub_1BD531EE4, MEMORY[0x1E6967A40], type metadata accessor for TransactionContext);
    v67 = v66;
    v60, v68, v69, v70, v71, v72, v73, v74;
    v43, v75, v76, v77, v78, v79, v80, v81;

    sub_1BE049C04();
    sub_1BD720F44(v67, v64, v63);
    sub_1BD0DE53C(v161, &qword_1EBD3F780, &unk_1BE0DFFD0);
    v167(v63, 0, 1, v164);
    sub_1BD0DE204(v63, v161, &qword_1EBD3F780, &unk_1BE0DFFD0);
  }

  else
  {
    *(v8 + 1032), v53, v54, v55, v56, v57, v58, v59;
    v43, v82, v83, v84, v85, v86, v87, v88;
  }

  v134 = *(v8 + 896);
  v133 = *(v8 + 856);
  v89 = *(v8 + 848);
  v90 = *(v8 + 832);
  v140 = *(v8 + 808);
  v165 = *(v8 + 792);
  v168 = *(v8 + 752);
  v143 = *(v8 + 664);
  v146 = *(v8 + 656);
  v147 = *(v8 + 704);
  v141 = *(v8 + 648);
  v158 = *(v8 + 600);
  v162 = *(v8 + 624);
  v91 = *(v8 + 576);
  v92 = *(v8 + 568);
  v93 = *(v8 + 552);
  v94 = *(v8 + 544);
  v136 = *(v8 + 528);
  v137 = *(v8 + 592);
  v138 = *(v8 + 520);
  v139 = *(v8 + 536);
  v135 = *(v8 + 480);
  v153 = *(v8 + 464);
  v155 = *(v8 + 456);
  v152 = *(v8 + 448);
  v148 = *(v8 + 432);
  v149 = *(v8 + 424);
  v142 = *(v8 + 352);
  v144 = *(v8 + 344);
  v145 = *(v8 + 360);
  v95 = *(v8 + 224);
  v131 = *(v8 + 208);
  v132 = *(v8 + 192);
  sub_1BDA4AC38(v137, v94, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  v90(v94, 0, 1, v91);
  v96 = v89[5];
  sub_1BDA4AC38(v92, v94 + v96, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  v133(v94 + v96, 0, 1, v93);
  sub_1BD0DE19C(v95, v94 + v89[6], &qword_1EBD3F780, &unk_1BE0DFFD0);
  sub_1BD0DE19C(v131, v94 + v89[7], &qword_1EBD3F780, &unk_1BE0DFFD0);
  sub_1BDA49634(v151);
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v151, v99, v101, v103, v105, v106, v107, v108;
  v109 = (v94 + v89[8]);
  *v109 = v98;
  v109[1] = v100;
  v109[2] = v102;
  v109[3] = v104;
  v134(v94, 0, 1, v89);
  KeyPath = swift_getKeyPath();
  v111 = swift_task_alloc();
  *(v111 + 16) = v132;
  *(v111 + 24) = v94;
  *(v8 + 160) = v132;
  sub_1BE04B584();
  KeyPath, v112, v113, v114, v115, v116, v117, v118;

  sub_1BD0DE53C(v131, &qword_1EBD3F780, &unk_1BE0DFFD0);
  sub_1BD0DE53C(v95, &qword_1EBD3F780, &unk_1BE0DFFD0);
  (*(v136 + 8))(v139, v138);
  sub_1BDA4ABD8(v92, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v137, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v141, &qword_1EBD3F7C0, &unk_1BE0D6570);
  (*(v143 + 8))(v147, v146);

  sub_1BD0DE53C(v94, &qword_1EBD5C7D0, &qword_1BE10FE40);
  (*(v142 + 8))(v145, v144);
  (*(v148 + 8))(v152, v149);
  (*(v153 + 8))(v135, v155);
  v165(v162, v158);
  if (*(v132 + v168) == 1)
  {
    v119 = *(v8 + 192);
    v120 = swift_getKeyPath();
    v121 = swift_task_alloc();
    *(v121 + 16) = v119;
    *(v121 + 24) = 0;
    *(v8 + 168) = v119;
    sub_1BE04B584();
    v120, v122, v123, v124, v125, v126, v127, v128;
  }

  else
  {
    *(*(v8 + 192) + *(v8 + 752)) = 0;
  }

  v129 = *(v8 + 8);

  return v129();
}

uint64_t sub_1BDA46554(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 752);
  v10 = *(v8 + 704);
  v11 = *(v8 + 664);
  v12 = *(v8 + 656);
  v13 = *(v8 + 192);
  *(v8 + 712), a2, a3, a4, a5, a6, a7, a8;
  (*(v11 + 8))(v10, v12);
  if (*(v13 + v9) == 1)
  {
    v14 = *(v8 + 192);
    KeyPath = swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    *(v16 + 24) = 0;
    *(v8 + 80) = v14;
    sub_1BE04B584();
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    *(*(v8 + 192) + *(v8 + 752)) = 0;
  }

  v24 = *(v8 + 8);

  return v24();
}

uint64_t sub_1BDA46854(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 808);
  v32 = *(v8 + 752);
  v10 = *(v8 + 704);
  v11 = *(v8 + 664);
  v12 = *(v8 + 656);
  v13 = *(v8 + 648);
  v14 = *(v8 + 624);
  v15 = *(v8 + 600);
  v16 = *(v8 + 592);
  v17 = *(v8 + 568);
  v30 = *(v8 + 192);
  v31 = *(v8 + 792);
  *(v8 + 712), a2, a3, a4, a5, a6, a7, a8;

  sub_1BDA4ABD8(v17, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v16, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v13, &qword_1EBD3F7C0, &unk_1BE0D6570);
  (*(v11 + 8))(v10, v12);
  v31(v14, v15);
  if (*(v30 + v32) == 1)
  {
    v18 = *(v8 + 192);
    KeyPath = swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v18;
    *(v20 + 24) = 0;
    *(v8 + 112) = v18;
    sub_1BE04B584();
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    *(*(v8 + 192) + *(v8 + 752)) = 0;
  }

  v28 = *(v8 + 8);

  return v28();
}

uint64_t sub_1BDA46BFC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 808);
  v37 = *(v8 + 792);
  v38 = *(v8 + 752);
  v10 = *(v8 + 664);
  v32 = *(v8 + 656);
  v33 = *(v8 + 704);
  v11 = *(v8 + 648);
  v35 = *(v8 + 600);
  v36 = *(v8 + 624);
  v12 = *(v8 + 592);
  v13 = *(v8 + 568);
  v14 = *(v8 + 536);
  v15 = *(v8 + 528);
  v16 = *(v8 + 520);
  v17 = *(v8 + 464);
  v30 = *(v8 + 456);
  v31 = *(v8 + 480);
  v34 = *(v8 + 192);
  *(v8 + 712), a2, a3, a4, a5, a6, a7, a8;

  (*(v15 + 8))(v14, v16);
  sub_1BDA4ABD8(v13, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v12, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v11, &qword_1EBD3F7C0, &unk_1BE0D6570);
  (*(v10 + 8))(v33, v32);
  (*(v17 + 8))(v31, v30);
  v37(v36, v35);
  if (*(v34 + v38) == 1)
  {
    v18 = *(v8 + 192);
    KeyPath = swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v18;
    *(v20 + 24) = 0;
    *(v8 + 128) = v18;
    sub_1BE04B584();
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    *(*(v8 + 192) + *(v8 + 752)) = 0;
  }

  v28 = *(v8 + 8);

  return v28();
}

uint64_t sub_1BDA46FFC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 808);
  v50 = *(v8 + 792);
  v51 = *(v8 + 752);
  v10 = *(v8 + 664);
  v41 = *(v8 + 656);
  v42 = *(v8 + 704);
  v38 = *(v8 + 648);
  v48 = *(v8 + 600);
  v49 = *(v8 + 624);
  v37 = *(v8 + 592);
  v11 = *(v8 + 568);
  v12 = *(v8 + 536);
  v13 = *(v8 + 528);
  v14 = *(v8 + 520);
  v47 = *(v8 + 480);
  v15 = *(v8 + 464);
  v44 = *(v8 + 448);
  v45 = *(v8 + 456);
  v16 = *(v8 + 432);
  v43 = *(v8 + 424);
  v17 = *(v8 + 352);
  v39 = *(v8 + 344);
  v40 = *(v8 + 360);
  v46 = *(v8 + 192);
  *(v8 + 712), a2, a3, a4, a5, a6, a7, a8;

  (*(v13 + 8))(v12, v14);
  sub_1BDA4ABD8(v11, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v37, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v38, &qword_1EBD3F7C0, &unk_1BE0D6570);
  (*(v10 + 8))(v42, v41);
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v18, v19, v20, v21, v22, v23, v24);
  (*(v17 + 8))(v40, v39);
  (*(v16 + 8))(v44, v43);
  (*(v15 + 8))(v47, v45);
  v50(v49, v48);
  if (*(v46 + v51) == 1)
  {
    v25 = *(v8 + 192);
    KeyPath = swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    *(v27 + 24) = 0;
    *(v8 + 144) = v25;
    sub_1BE04B584();
    KeyPath, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    *(*(v8 + 192) + *(v8 + 752)) = 0;
  }

  v35 = *(v8 + 8);

  return v35();
}

uint64_t sub_1BDA47464(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 808);
  v43 = *(v8 + 792);
  v44 = *(v8 + 752);
  v37 = *(v8 + 704);
  v10 = *(v8 + 664);
  v35 = *(v8 + 656);
  v32 = *(v8 + 648);
  v41 = *(v8 + 600);
  v42 = *(v8 + 624);
  v30 = *(v8 + 592);
  v11 = *(v8 + 568);
  v12 = *(v8 + 536);
  v13 = *(v8 + 528);
  v14 = *(v8 + 520);
  v40 = *(v8 + 480);
  v15 = *(v8 + 464);
  v36 = *(v8 + 448);
  v16 = *(v8 + 432);
  v17 = *(v8 + 352);
  v33 = *(v8 + 360);
  v34 = *(v8 + 424);
  v31 = *(v8 + 344);
  v38 = *(v8 + 456);
  v39 = *(v8 + 192);
  *(v8 + 712), a2, a3, a4, a5, a6, a7, a8;

  (*(v13 + 8))(v12, v14);
  sub_1BDA4ABD8(v11, type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel);
  sub_1BDA4ABD8(v30, type metadata accessor for FinanceKitMerchantHeaderView.ViewModel);
  sub_1BD0DE53C(v32, &qword_1EBD3F7C0, &unk_1BE0D6570);
  (*(v10 + 8))(v37, v35);
  (*(v17 + 8))(v33, v31);
  (*(v16 + 8))(v36, v34);
  (*(v15 + 8))(v40, v38);
  v43(v42, v41);
  if (*(v39 + v44) == 1)
  {
    v18 = *(v8 + 192);
    KeyPath = swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v18;
    *(v20 + 24) = 0;
    *(v8 + 152) = v18;
    sub_1BE04B584();
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    *(*(v8 + 192) + *(v8 + 752)) = 0;
  }

  v28 = *(v8 + 8);

  return v28();
}

uint64_t sub_1BDA478D4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78, &qword_1BE0B7ED0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  (*(v9 + 8))(v11, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D830, &qword_1BE0E8F08);
  a3[4] = sub_1BD62A9C0();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78, &qword_1BE0B7ED0, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  sub_1BDA4AA28(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v24 = v27;
  sub_1BE04A714();
  (*(v28 + 8))(v7, v24);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1BDA47C70@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a2;
  v60 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C188, &qword_1BE10F0C8);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v51 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C890, &qword_1BE1100F0);
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C898, &qword_1BE1100F8);
  v10 = *(v9 - 8);
  v58 = v9;
  v59 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10, &unk_1BE0B7E70);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18, &qword_1BE109170);
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v18 = &v51 - v17;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10, &unk_1BE0B7E70, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  (*(v14 + 8))(v16, v13);
  sub_1BE0495A4();
  sub_1BE04A7B4();
  v27 = swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD5C1B8, &qword_1EBD5C188, &qword_1BE10F0C8, MEMORY[0x1E6968D20]);
  v28 = v53;
  sub_1BE04A724();
  v27, v29, v30, v31, v32, v33, v34, v35;
  (*(v55 + 8))(v4, v28);
  v36 = swift_getKeyPath();
  v37 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD5C8A0, &qword_1EBD5C890, &qword_1BE1100F0, MEMORY[0x1E6968D58]);
  v38 = v56;
  sub_1BE04A724();
  v36, v39, v40, v41, v42, v43, v44, v45;
  (*(v57 + 8))(v8, v38);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C8A8, &qword_1BE110190);
  v47 = v60;
  v60[3] = v46;
  v47[4] = sub_1BDA4B07C();
  __swift_allocate_boxed_opaque_existential_1(v47);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18, &qword_1BE109170, v37);
  sub_1BD0DE4F4(&qword_1EBD5C8C8, &qword_1EBD5C898, &qword_1BE1100F8, v37);
  v48 = v52;
  v49 = v58;
  sub_1BE04A714();
  (*(v59 + 8))(v12, v49);
  return (*(v54 + 8))(v18, v48);
}