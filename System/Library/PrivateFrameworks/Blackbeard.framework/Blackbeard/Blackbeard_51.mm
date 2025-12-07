uint64_t sub_1E648B700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v167 = a2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073450, &qword_1E65ED1E0);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = v140 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A200, &unk_1E66054C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v159 = v140 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073408, &qword_1E65ED1B0);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = v140 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A208, &qword_1E66054D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v160 = v140 - v8;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A210, &qword_1E66054D8);
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v148 = v140 - v9;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = v140 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v146 = v140 - v12;
  v13 = sub_1E65D74E8();
  v14 = *(v13 - 8);
  v164 = v13;
  v165 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v142 = v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v143 = v140 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A218, &unk_1E66054F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v140 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E8, &qword_1E65ED118);
  v168 = *(v21 - 8);
  v169 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v155 = v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v140 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A220, &qword_1E6605500);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v140 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A228, &qword_1E6605508);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v144 = v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v145 = v140 - v36;
  *&v174 = sub_1E65D7428();
  *(&v174 + 1) = v37;
  sub_1E5F9AEA8();
  *&v171 = sub_1E65E66C8();
  v39 = v38;

  v166 = a1;
  if (!v39)
  {
    v45 = *(v33 + 56);
    v45(v31, 1, 1, v32);
    sub_1E5DFE50C(v31, &qword_1ED07A220, &qword_1E6605500);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A230, &qword_1E6605510);
    (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
    sub_1E5DFE50C(v20, &qword_1ED07A218, &unk_1E66054F0);
    v45(v29, 1, 1, v32);
    sub_1E5DFE50C(v29, &qword_1ED07A220, &qword_1E6605500);
    v47 = v160;
    (*(v161 + 56))(v160, 1, 1, v163);
    sub_1E5DFE50C(v47, &qword_1ED07A208, &qword_1E66054D0);
    v49 = v164;
    v48 = v165;
    v50 = v159;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A238, &qword_1E6605518);
    (*(*(v75 - 8) + 56))(v50, 1, 1, v75);
    v76 = v166;
    goto LABEL_24;
  }

  v147 = v20;
  v141 = v29;
  v162 = v33;
  v40 = v32;
  v41 = qword_1ED0718E8;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = v169;
  __swift_project_value_buffer(v169, qword_1ED096218);
  v43 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v43 = v171;
  }

  v44 = 7;
  if (((v39 >> 60) & ((v171 & 0x800000000000000) == 0)) != 0)
  {
    v44 = 11;
  }

  v170 = v44 | (v43 << 16);
  sub_1E65E5E68();

  v140[1] = sub_1E6490900(&qword_1ED0732F8, &qword_1ED0732E8, &qword_1E65ED118);
  sub_1E65E1C98();
  sub_1E65E1CD8();
  v51 = *(v168 + 8);
  v51(v25, v42);

  v52 = v162;
  v53 = (*(v162 + 48))(v31, 1, v40);
  if (v53 != 1)
  {

    v84 = v145;
    (*(v52 + 32))(v145, v31, v40);
    if (qword_1ED071898 != -1)
    {
      swift_once();
    }

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
    __swift_project_value_buffer(v85, qword_1ED096128);
    sub_1E65E1CE8();
    v86 = MEMORY[0x1E694D730](v174, *(&v174 + 1), v175, v176);
    v88 = v87;

    v90 = v164;
    v89 = v165;
    if (qword_1ED0718C8 != -1)
    {
      swift_once();
    }

    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
    __swift_project_value_buffer(v91, qword_1ED0961B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
    sub_1E65E1CE8();
    if (v176)
    {
      v92 = MEMORY[0x1E694D730](v174, *(&v174 + 1), v175, v176);
      v94 = v93;
    }

    else
    {
      v92 = 0;
      v94 = 0;
    }

    *&v174 = 0;
    *(&v174 + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v174 = v86;
    *(&v174 + 1) = v88;
    MEMORY[0x1E694D7C0](3092282, 0xE300000000000000);
    MEMORY[0x1E694D7C0](0xD000000000000011, 0x80000001E6611500);
    MEMORY[0x1E694D7C0](0x697263736275732FLL, 0xEB000000003F6562);
    v172 = v92;
    v173 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    v121 = sub_1E65E6648();
    v123 = v122;

    MEMORY[0x1E694D7C0](v121, v123);

    v124 = v146;
    sub_1E65D74C8();

    (*(v162 + 8))(v84, v40);
    if ((*(v89 + 48))(v124, 1, v90) == 1)
    {
      sub_1E5DFE50C(v124, &qword_1ED072340, &qword_1E65EA410);
      (*(v89 + 32))(v167, v166, v90);
    }

    else
    {
      (*(v89 + 8))(v166, v90);
      v125 = *(v89 + 32);
      v126 = v143;
      v125(v143, v124, v90);
      v125(v167, v126, v90);
    }

    goto LABEL_57;
  }

  v145 = v51;
  sub_1E5DFE50C(v31, &qword_1ED07A220, &qword_1E6605500);
  v54 = qword_1ED0718F0;

  if (v54 != -1)
  {
    swift_once();
  }

  v146 = v40;
  v55 = v158;
  __swift_project_value_buffer(v158, qword_1ED096230);
  sub_1E65E5E68();

  sub_1E6490900(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0);
  v56 = v156;
  sub_1E65E1C98();
  v57 = v147;
  sub_1E65E1CD8();
  (*(v157 + 8))(v56, v55);

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A230, &qword_1E6605510);
  v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
  v60 = v169;
  if (v59 != 1)
  {

    (*(v165 + 8))(v166, v164);
    sub_1E5DFE50C(v57, &qword_1ED07A218, &unk_1E66054F0);
    _s8ResourceOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1E5DFE50C(v57, &qword_1ED07A218, &unk_1E66054F0);
  v61 = qword_1ED0718F8;

  if (v61 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v60, qword_1ED096248);
  sub_1E65E5E68();

  v62 = v155;
  sub_1E65E1C98();
  v63 = v141;
  sub_1E65E1CD8();
  (v145)(v62, v60);

  v64 = v162;
  v65 = v146;
  if ((*(v162 + 48))(v63, 1, v146) != 1)
  {

    v104 = v144;
    (*(v64 + 32))(v144, v63, v65);
    if (qword_1ED0718A8 != -1)
    {
      swift_once();
    }

    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
    __swift_project_value_buffer(v105, qword_1ED096158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
    sub_1E65E1CE8();
    v107 = v164;
    v106 = v165;
    if (v176 && (v108 = MEMORY[0x1E694D730](v174, *(&v174 + 1), v175, v176), v110 = v109, , RootItem.init(rawValue:)(v108, v110, &v174), v111 = *(&v174 + 1), *(&v174 + 1) != 6))
    {
      v113 = v174;
      (*(v106 + 8))(v166, v107);
    }

    else
    {
      v112 = v166;
      swift_beginAccess();
      v113 = qword_1ED075948;
      v111 = qword_1ED075950;
      sub_1E5E05374(qword_1ED075948, qword_1ED075950);
      (*(v106 + 8))(v112, v107);
    }

    (*(v64 + 8))(v104, v65);
    v130 = v167;
    *v167 = v113;
    v130[1] = v111;
    v130[2] = 0;
    *(v130 + 24) = 1;
    goto LABEL_57;
  }

  sub_1E5DFE50C(v63, &qword_1ED07A220, &qword_1E6605500);
  v66 = qword_1ED071910;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = v154;
  __swift_project_value_buffer(v154, qword_1ED096278);
  sub_1E65E5E68();

  sub_1E6490900(&qword_1ED073418, &qword_1ED073408, &qword_1E65ED1B0);
  v68 = v152;
  sub_1E65E1C98();
  v69 = v160;
  v70 = v68;
  sub_1E65E1CD8();
  v71 = v161;
  (*(v153 + 8))(v70, v67);

  v72 = v163;
  if ((*(v71 + 48))(v69, 1, v163) == 1)
  {
    sub_1E5DFE50C(v69, &qword_1ED07A208, &qword_1E66054D0);
    goto LABEL_21;
  }

  v114 = v148;
  (*(v71 + 32))(v148, v69, v72);
  if (qword_1ED0718B0 != -1)
  {
    swift_once();
  }

  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  __swift_project_value_buffer(v115, qword_1ED096170);
  sub_1E65E1CE8();
  v116 = MEMORY[0x1E694D730](v174, *(&v174 + 1), v175, v176);
  v118 = v117;

  v119._countAndFlagsBits = v116;
  v119._object = v118;
  SharingURLResource.init(rawValue:)(v119);
  v120 = v172;
  if (v172 == 5)
  {
    (*(v71 + 8))(v114, v72);
LABEL_21:
    v73 = v151;
    v74 = v149;
    if (qword_1ED071900 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v73, qword_1ED096260);
    sub_1E65E5E68();

    sub_1E6490900(&qword_1ED07A240, &qword_1ED073450, &qword_1E65ED1E0);
    sub_1E65E1C98();
    v50 = v159;
    sub_1E65E1CD8();
    (*(v150 + 8))(v74, v73);

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A238, &qword_1E6605518);
    v96 = (*(*(v95 - 8) + 48))(v50, 1, v95);
    v48 = v165;
    v76 = v166;
    v49 = v164;
    if (v96 != 1)
    {
      sub_1E5DFE50C(v50, &qword_1ED07A200, &unk_1E66054C0);
      v97 = v142;
      (*(v48 + 16))(v142, v76, v49);
      sub_1E64F5410(v97, &v174);
      v98 = v176;
      if (v176 != 255)
      {
        v99 = v175;
        v171 = v174;
        (*(v48 + 8))(v76, v49);
        v100 = v167;
        *v167 = v171;
        v100[2] = v99;
        *(v100 + 24) = v98;
LABEL_57:
        _s8ResourceOMa(0);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_25:
      v77 = sub_1E65D74B8();
      if (v78)
      {
        if (v77 == 0x617373656E746966 && v78 == 0xEA00000000007070)
        {

LABEL_30:
          v80 = sub_1E65D7488();
          if (v81)
          {
            v82 = MEMORY[0x1E6945780](v80);
            if (v82 != 4)
            {
              v101 = v82;
              v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
              v103 = v167;
              *v167 = v101;
              (*(v48 + 32))(v103 + v102, v76, v49);
              _s8ResourceOMa(0);
              return swift_storeEnumTagMultiPayload();
            }
          }

          goto LABEL_32;
        }

        v79 = sub_1E65E6C18();

        if (v79)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      (*(v48 + 32))(v167, v76, v49);
      _s8ResourceOMa(0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_24:
    sub_1E5DFE50C(v50, &qword_1ED07A200, &unk_1E66054C0);
    goto LABEL_25;
  }

  if (qword_1ED0718A0 != -1)
  {
    swift_once();
  }

  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_project_value_buffer(v127, qword_1ED096140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  sub_1E65E1CE8();
  if (v176)
  {
    *&v171 = MEMORY[0x1E694D730](v174, *(&v174 + 1), v175, v176);
    v129 = v128;
  }

  else
  {
    *&v171 = 0;
    v129 = 0;
  }

  if (qword_1ED0718B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v127, qword_1ED096188);
  sub_1E65E1CE8();
  if (v176)
  {
    v131 = MEMORY[0x1E694D730](v174, *(&v174 + 1), v175, v176);
    v133 = v132;
  }

  else
  {
    v131 = 0;
    v133 = 0;
  }

  if (qword_1ED0718C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v115, qword_1ED0961A0);
  v134 = v163;
  v135 = v148;
  sub_1E65E1CE8();
  v136 = MEMORY[0x1E694D730](v174, *(&v174 + 1), v175, v176);
  v138 = v137;

  (*(v165 + 8))(v166, v164);
  (*(v71 + 8))(v135, v134);
  v139 = v167;
  *v167 = v171;
  v139[1] = v129;
  *(v139 + 16) = v120;
  v139[3] = v131;
  v139[4] = v133;
  v139[5] = v136;
  v139[6] = v138;
  _s8ResourceOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E648D184(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1B0, &qword_1E6605478);
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v85 = &v72 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1B8, &qword_1E6605480);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v72 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1C0, &qword_1E6605488);
  v81 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v72 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1C8, &qword_1E6605490);
  v80 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v72 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1D0, &qword_1E6605498);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v72 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1D8, &qword_1E66054A0);
  v78 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v72 - v8;
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v94 = v9;
  v95 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1E0, &qword_1E66054A8);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v19 = &v72 - v18;
  v20 = _s8ResourceOMa(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A1E8, &unk_1E66054B0);
  v97 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v24 = &v72 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64904C8();
  v99 = v24;
  sub_1E65E6DA8();
  sub_1E648FB80(v96, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v35 = v17;
    v36 = v88;
    v37 = v89;
    v39 = v92;
    v38 = v93;
    v40 = v90;
    v41 = v91;
    if (EnumCaseMultiPayload)
    {
      v42 = v95;
      if (EnumCaseMultiPayload == 1)
      {
        LODWORD(v96) = v22[16];
        v43 = *(v22 + 3);
        v94 = *(v22 + 5);
        v95 = v43;
        LOBYTE(v101) = 3;
        sub_1E64906C0();
        v45 = v99;
        v44 = v100;
        sub_1E65E6B18();
        LOBYTE(v101) = 0;
        v46 = v98;
        sub_1E65E6B28();

        if (v46)
        {

          (*(v80 + 8))(v40, v41);
          v47 = *(v97 + 8);
          v48 = v45;
        }

        else
        {
          LOBYTE(v101) = v96;
          v105 = 1;
          sub_1E643EEE4();
          sub_1E65E6B78();
          LOBYTE(v101) = 2;
          sub_1E65E6B28();
          v71 = v80;

          LOBYTE(v101) = 3;
          sub_1E65E6B48();

          (*(v71 + 8))(v40, v41);
          v47 = *(v97 + 8);
          v48 = v99;
        }

        goto LABEL_20;
      }

      v55 = *v22;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420);
      v57 = v15;
      v58 = v94;
      (*(v42 + 32))(v15, &v22[*(v56 + 48)], v94);
      LOBYTE(v101) = 4;
      sub_1E6490618();
      v59 = v39;
      v60 = v99;
      v44 = v100;
      sub_1E65E6B18();
      LOBYTE(v101) = v55;
      v105 = 0;
      sub_1E64908AC();
      v61 = v98;
      sub_1E65E6B78();
      if (v61)
      {
        (*(v81 + 8))(v59, v38);
        (*(v42 + 8))(v57, v58);
        v47 = *(v97 + 8);
        v48 = v60;
LABEL_20:
        v70 = v44;
        return v47(v48, v70);
      }

      LOBYTE(v101) = 1;
      sub_1E6490810(&qword_1ED073F50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      sub_1E65E6B78();
      (*(v81 + 8))(v59, v38);
      (*(v42 + 8))(v57, v58);
      v47 = *(v97 + 8);
      v48 = v99;
    }

    else
    {
      v51 = v94;
      v52 = v95;
      v53 = v35;
      (*(v95 + 32))(v35, v22, v94);
      LOBYTE(v101) = 1;
      sub_1E6490768();
      v54 = v99;
      sub_1E65E6B18();
      sub_1E6490810(&qword_1ED073F50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      sub_1E65E6B78();
      (*(v78 + 8))(v36, v37);
      (*(v52 + 8))(v53, v51);
      v47 = *(v97 + 8);
      v48 = v54;
    }

    v70 = v100;
    return v47(v48, v70);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      LOBYTE(v101) = 0;
      sub_1E64907BC();
      v50 = v99;
      v49 = v100;
      sub_1E65E6B18();
      (*(v73 + 8))(v19, v74);
    }

    else
    {
      LOBYTE(v101) = 2;
      sub_1E6490714();
      v69 = v75;
      v50 = v99;
      v49 = v100;
      sub_1E65E6B18();
      (*(v77 + 8))(v69, v79);
    }

    return (*(v97 + 8))(v50, v49);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v27 = *v22;
    v26 = *(v22 + 1);
    v28 = *(v22 + 2);
    v29 = v22[24];
    LOBYTE(v101) = 5;
    sub_1E6490570();
    v30 = v82;
    v32 = v99;
    v31 = v100;
    sub_1E65E6B18();
    v96 = v27;
    v101 = v27;
    v102 = v26;
    v103 = v28;
    v104 = v29;
    sub_1E6490858();
    v33 = v84;
    sub_1E65E6B78();
    (*(v83 + 8))(v30, v33);
    (*(v97 + 8))(v32, v31);
    return sub_1E5FFF204(v96, v26, v28, v29);
  }

  else
  {
    v62 = v94;
    v63 = v95;
    v64 = v76;
    (*(v95 + 32))(v76, v22, v94);
    LOBYTE(v101) = 6;
    sub_1E649051C();
    v65 = v85;
    v67 = v99;
    v66 = v100;
    sub_1E65E6B18();
    sub_1E6490810(&qword_1ED073F50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    v68 = v87;
    sub_1E65E6B78();
    (*(v86 + 8))(v65, v68);
    (*(v63 + 8))(v64, v62);
    return (*(v97 + 8))(v67, v66);
  }
}

uint64_t sub_1E648DEC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A120, &qword_1E6605430);
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v118 = &v90 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A128, &qword_1E6605438);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v117 = &v90 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A130, &qword_1E6605440);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v112 = &v90 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A138, &qword_1E6605448);
  v110 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v116 = &v90 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A140, &qword_1E6605450);
  v100 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v111 = &v90 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A148, &qword_1E6605458);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v115 = &v90 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A150, &qword_1E6605460);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v114 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A158, &unk_1E6605468);
  v120 = *(v10 - 8);
  v121 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v90 - v11;
  v113 = _s8ResourceOMa(0);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v98 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v90 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v90 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v90 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v90 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v90 - v27;
  v29 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1E64904C8();
  v30 = v123;
  sub_1E65E6D98();
  if (v30)
  {
    goto LABEL_12;
  }

  v93 = v26;
  v31 = v114;
  v92 = v17;
  v94 = v20;
  v91 = v23;
  v32 = v115;
  v33 = v116;
  v123 = 0;
  v34 = v117;
  v35 = v118;
  v95 = v28;
  v36 = v119;
  v37 = v121;
  v38 = sub_1E65E6AF8();
  v39 = (2 * *(v38 + 16)) | 1;
  v127 = v38;
  v128 = v38 + 32;
  v129 = 0;
  v130 = v39;
  v40 = sub_1E5FBC814();
  if (v40 == 7 || v129 != v130 >> 1)
  {
    v46 = sub_1E65E68F8();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v48 = v113;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
  }

  else
  {
    if (v40 > 2u)
    {
      if (v40 <= 4u)
      {
        v41 = v120;
        if (v40 == 3)
        {
          LOBYTE(v124) = 3;
          sub_1E64906C0();
          v42 = v33;
          v43 = v123;
          sub_1E65E6A68();
          if (!v43)
          {
            LOBYTE(v124) = 0;
            v44 = v105;
            v45 = sub_1E65E6A88();
            v73 = v72;
            v74 = v45;
            v131 = 1;
            sub_1E643FF0C();
            sub_1E65E6AD8();
            v118 = v12;
            v76 = v124;
            v131 = 2;
            v77 = sub_1E65E6A88();
            v78 = v44;
            v117 = v80;
            LODWORD(v114) = v76;
            v115 = v77;
            v131 = 3;
            v81 = sub_1E65E6AA8();
            v123 = 0;
            v82 = v81;
            v84 = v83;
            (*(v110 + 8))(v42, v78);
            (*(v120 + 8))(v118, v121);
            swift_unknownObjectRelease();
            v85 = v91;
            *v91 = v74;
            v85[1] = v73;
            *(v85 + 16) = v114;
            v86 = v117;
            v85[3] = v115;
            v85[4] = v86;
            v85[5] = v82;
            v85[6] = v84;
            swift_storeEnumTagMultiPayload();
            v87 = v85;
            v88 = v95;
            sub_1E6078118(v87, v95);
            v89 = v122;
LABEL_34:
            v51 = v36;
LABEL_37:
            sub_1E6078118(v88, v51);
            v49 = v89;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }

          goto LABEL_32;
        }

        LOBYTE(v124) = 4;
        sub_1E6490618();
        v61 = v123;
        sub_1E65E6A68();
        if (v61)
        {
LABEL_32:
          (*(v41 + 8))(v12, v37);
          goto LABEL_11;
        }

        v51 = v36;
        LOBYTE(v124) = 0;
        sub_1E649066C();
        v62 = v106;
        sub_1E65E6AD8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420);
        sub_1E65D74E8();
        LOBYTE(v124) = 1;
        sub_1E6490810(&qword_1ED073F38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
        v75 = v112;
        sub_1E65E6AD8();
        (*(v107 + 8))(v75, v62);
        (*(v41 + 8))(v12, v37);
        swift_unknownObjectRelease();
        v79 = v94;
        swift_storeEnumTagMultiPayload();
        v56 = v79;
        goto LABEL_35;
      }

      v57 = v120;
      if (v40 == 5)
      {
        LOBYTE(v124) = 5;
        sub_1E6490570();
        v58 = v123;
        sub_1E65E6A68();
        if (v58)
        {
LABEL_20:
          (*(v57 + 8))(v12, v37);
          goto LABEL_11;
        }

        sub_1E64905C4();
        v65 = v104;
        sub_1E65E6AD8();
        (*(v103 + 8))(v34, v65);
        (*(v57 + 8))(v12, v37);
        swift_unknownObjectRelease();
        v66 = v125;
        v67 = v126;
        v68 = v92;
        *v92 = v124;
        *(v68 + 2) = v66;
        *(v68 + 24) = v67;
        swift_storeEnumTagMultiPayload();
        v69 = v68;
      }

      else
      {
        LOBYTE(v124) = 6;
        sub_1E649051C();
        v63 = v35;
        v64 = v123;
        sub_1E65E6A68();
        if (v64)
        {
          goto LABEL_20;
        }

        sub_1E65D74E8();
        sub_1E6490810(&qword_1ED073F38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
        v70 = v98;
        v71 = v108;
        sub_1E65E6AD8();
        (*(v109 + 8))(v63, v71);
        (*(v57 + 8))(v12, v37);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v69 = v70;
      }

      v88 = v95;
      sub_1E6078118(v69, v95);
      v89 = v122;
      goto LABEL_34;
    }

    if (v40)
    {
      v51 = v36;
      v52 = v123;
      if (v40 == 1)
      {
        LOBYTE(v124) = 1;
        sub_1E6490768();
        v53 = v32;
        sub_1E65E6A68();
        if (!v52)
        {
          sub_1E65D74E8();
          sub_1E6490810(&qword_1ED073F38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
          v54 = v93;
          v55 = v102;
          sub_1E65E6AD8();
          (*(v101 + 8))(v53, v55);
          (*(v120 + 8))(v12, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v56 = v54;
LABEL_35:
          v88 = v95;
          sub_1E6078118(v56, v95);
          goto LABEL_36;
        }

        goto LABEL_10;
      }

      LOBYTE(v124) = 2;
      sub_1E6490714();
      v60 = v111;
      sub_1E65E6A68();
      if (!v52)
      {
        (*(v100 + 8))(v60, v99);
        (*(v120 + 8))(v12, v37);
        swift_unknownObjectRelease();
        v88 = v95;
        goto LABEL_25;
      }
    }

    else
    {
      LOBYTE(v124) = 0;
      sub_1E64907BC();
      v59 = v123;
      sub_1E65E6A68();
      if (!v59)
      {
        v51 = v36;
        (*(v96 + 8))(v31, v97);
        (*(v120 + 8))(v12, v37);
        swift_unknownObjectRelease();
        v88 = v95;
LABEL_25:
        swift_storeEnumTagMultiPayload();
LABEL_36:
        v89 = v122;
        goto LABEL_37;
      }
    }
  }

LABEL_10:
  (*(v120 + 8))(v12, v37);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v49 = v122;
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1E648EFEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8ResourceOMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E648FB80(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v7, v10, v4);
      v20 = 1;
LABEL_14:
      MEMORY[0x1E694E740](v20);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420);
      (*(v5 + 32))(v7, &v10[*(v21 + 48)], v4);
      MEMORY[0x1E694E740](4);
      sub_1E65DDD88();
      sub_1E65E5D78();

LABEL_15:
      sub_1E6490810(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E65E5B48();
      return (*(v5 + 8))(v7, v4);
    }

    v17 = *(v10 + 1);
    v18 = *(v10 + 4);
    MEMORY[0x1E694E740](3);
    sub_1E65E6D48();
    if (v17)
    {
      sub_1E65E5D78();
    }

    sub_1E65E5D78();

    sub_1E65E6D48();
    if (v18)
    {
      sub_1E65E5D78();
    }

    sub_1E65E5D78();
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = *v10;
        v13 = *(v10 + 1);
        v14 = *(v10 + 2);
        v15 = v10[24];
        MEMORY[0x1E694E740](5);
        v22[0] = v12;
        v22[1] = v13;
        v22[2] = v14;
        v23 = v15;
        URLAction.hash(into:)(a1);
        return sub_1E5FFF204(v12, v13, v14, v15);
      }

      (*(v5 + 32))(v7, v10, v4);
      v20 = 6;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    return MEMORY[0x1E694E740](v19);
  }
}

uint64_t sub_1E648F41C(uint64_t a1)
{
  v2 = sub_1E6490570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F458(uint64_t a1)
{
  v2 = sub_1E6490570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F494()
{
  v1 = *v0;
  v2 = 1953460082;
  v3 = 0x6E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0x676E6972616873;
  if (v1 != 3)
  {
    v4 = 0x6B6E694C6E65706FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6269726373627573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E648F568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6491164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E648F590(uint64_t a1)
{
  v2 = sub_1E64904C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F5CC(uint64_t a1)
{
  v2 = sub_1E64904C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F608()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1E648F638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E648F710(uint64_t a1)
{
  v2 = sub_1E6490618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F74C(uint64_t a1)
{
  v2 = sub_1E6490618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F788(uint64_t a1)
{
  v2 = sub_1E64907BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F7C4(uint64_t a1)
{
  v2 = sub_1E64907BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F800()
{
  v1 = 0x7972746E756F63;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x79726F6765746163;
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

uint64_t sub_1E648F87C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E64913B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E648F8A4(uint64_t a1)
{
  v2 = sub_1E64906C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F8E0(uint64_t a1)
{
  v2 = sub_1E64906C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F91C(uint64_t a1)
{
  v2 = sub_1E6490768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F958(uint64_t a1)
{
  v2 = sub_1E6490768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648F994(uint64_t a1)
{
  v2 = sub_1E6490714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648F9D0(uint64_t a1)
{
  v2 = sub_1E6490714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648FA0C(uint64_t a1)
{
  v2 = sub_1E649051C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E648FA48(uint64_t a1)
{
  v2 = sub_1E649051C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E648FAB4()
{
  sub_1E65E6D28();
  sub_1E648EFEC(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E648FAF8(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E648EFEC(v2);
  return sub_1E65E6D78();
}

uint64_t sub_1E648FB80(uint64_t a1, uint64_t a2)
{
  v4 = _s8ResourceOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E648FBE4(uint64_t a1, char *a2)
{
  v90 = a1;
  v91 = a2;
  v2 = sub_1E65D74E8();
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v86 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v86 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v86 - v12;
  v14 = _s8ResourceOMa(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v86 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v86 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v86 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A118, &qword_1E6605428);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v86 - v30;
  v32 = &v86 + *(v29 + 56) - v30;
  sub_1E648FB80(v90, &v86 - v30);
  sub_1E648FB80(v91, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1E648FB80(v31, v27);
      if (!swift_getEnumCaseMultiPayload())
      {
        v76 = v88;
        v77 = v89;
        (*(v89 + 32))(v13, v32, v88);
        v42 = sub_1E65D7468();
        v78 = *(v77 + 8);
        v78(v13, v76);
        v78(v27, v76);
        goto LABEL_43;
      }

      (*(v89 + 8))(v27, v88);
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_1E648FB80(v31, v22);
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v58 = *(v89 + 32);
        v91 = v11;
        v59 = v11;
        v60 = v88;
        v58(v59, &v22[v57], v88);
        v61 = &v32[v57];
        v62 = v8;
        v58(v8, v61, v60);
        v63 = sub_1E65DDD88();
        v65 = v64;
        if (v63 == sub_1E65DDD88() && v65 == v66)
        {
        }

        else
        {
          v68 = sub_1E65E6C18();

          if ((v68 & 1) == 0)
          {
            v69 = *(v89 + 8);
            v69(v62, v60);
            v69(v91, v60);
            sub_1E649046C(v31);
LABEL_39:
            v42 = 0;
            return v42 & 1;
          }
        }

        v79 = v91;
        v42 = sub_1E65D7468();
        v80 = *(v89 + 8);
        v80(v62, v60);
        v80(v79, v60);
        goto LABEL_43;
      }

      (*(v89 + 8))(&v22[v57], v88);
      goto LABEL_38;
    }

    v91 = v31;
    sub_1E648FB80(v31, v25);
    v44 = *v25;
    v43 = *(v25 + 1);
    v45 = v25[16];
    v47 = *(v25 + 3);
    v46 = *(v25 + 4);
    v49 = *(v25 + 5);
    v48 = *(v25 + 6);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v31 = v91;
      goto LABEL_38;
    }

    v89 = v49;
    v50 = *(v32 + 1);
    v51 = v32[16];
    v52 = *(v32 + 3);
    v53 = *(v32 + 4);
    v54 = *(v32 + 5);
    v90 = *(v32 + 6);
    if (v43)
    {
      if (!v50)
      {

        goto LABEL_59;
      }

      v87 = v54;
      v88 = v52;
      if (v44 == *v32 && v43 == v50)
      {
      }

      else
      {
        v56 = sub_1E65E6C18();

        if ((v56 & 1) == 0)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      v87 = v54;
      v88 = v52;
      if (v50)
      {

        goto LABEL_61;
      }
    }

    if (sub_1E648B2FC(v45, v51))
    {
      if (v46)
      {
        if (v53)
        {
          if (v47 == v88 && v46 == v53)
          {

            goto LABEL_68;
          }

          v83 = sub_1E65E6C18();

          if (v83)
          {
LABEL_68:
            if (v89 == v87 && v48 == v90)
            {

              v75 = v91;
              goto LABEL_33;
            }

            v85 = sub_1E65E6C18();

            if (v85)
            {
              v75 = v91;
              goto LABEL_33;
            }

LABEL_62:
            sub_1E649046C(v91);
            goto LABEL_39;
          }
        }

        else
        {
        }

LABEL_61:

        goto LABEL_62;
      }

      if (!v53)
      {
        goto LABEL_68;
      }

LABEL_60:

      goto LABEL_61;
    }

LABEL_59:

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E648FB80(v31, v19);
      v35 = *v19;
      v34 = *(v19 + 1);
      v36 = *(v19 + 2);
      v37 = v19[24];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v38 = *v32;
        v39 = *(v32 + 1);
        v40 = *(v32 + 2);
        v41 = v32[24];
        v94[0] = v35;
        v94[1] = v34;
        v94[2] = v36;
        v95 = v37;
        v92[0] = v38;
        v92[1] = v39;
        v92[2] = v40;
        v93 = v41;
        v42 = _s10Blackbeard9URLActionO2eeoiySbAC_ACtFZ_0(v94, v92);
        sub_1E5FFF204(v38, v39, v40, v41);
        sub_1E5FFF204(v35, v34, v36, v37);
LABEL_43:
        sub_1E649046C(v31);
        return v42 & 1;
      }

      sub_1E5FFF204(v35, v34, v36, v37);
    }

    else
    {
      v70 = v87;
      sub_1E648FB80(v31, v87);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v71 = v88;
        v72 = v89;
        v73 = v86;
        (*(v89 + 32))(v86, v32, v88);
        v42 = sub_1E65D7468();
        v74 = *(v72 + 8);
        v74(v73, v71);
        v74(v70, v71);
        goto LABEL_43;
      }

      (*(v89 + 8))(v70, v88);
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload == 5)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
LABEL_38:
    sub_1E5DFE50C(v31, &qword_1ED07A118, &qword_1E6605428);
    goto LABEL_39;
  }

LABEL_32:
  v75 = v31;
LABEL_33:
  sub_1E649046C(v75);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1E649046C(uint64_t a1)
{
  v2 = _s8ResourceOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E64904C8()
{
  result = qword_1ED07A160;
  if (!qword_1ED07A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A160);
  }

  return result;
}

unint64_t sub_1E649051C()
{
  result = qword_1ED07A168;
  if (!qword_1ED07A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A168);
  }

  return result;
}

unint64_t sub_1E6490570()
{
  result = qword_1ED07A170;
  if (!qword_1ED07A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A170);
  }

  return result;
}

unint64_t sub_1E64905C4()
{
  result = qword_1ED07A178;
  if (!qword_1ED07A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A178);
  }

  return result;
}

unint64_t sub_1E6490618()
{
  result = qword_1ED07A180;
  if (!qword_1ED07A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A180);
  }

  return result;
}

unint64_t sub_1E649066C()
{
  result = qword_1ED07A188;
  if (!qword_1ED07A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A188);
  }

  return result;
}

unint64_t sub_1E64906C0()
{
  result = qword_1ED07A190;
  if (!qword_1ED07A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A190);
  }

  return result;
}

unint64_t sub_1E6490714()
{
  result = qword_1ED07A198;
  if (!qword_1ED07A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A198);
  }

  return result;
}

unint64_t sub_1E6490768()
{
  result = qword_1ED07A1A0;
  if (!qword_1ED07A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1A0);
  }

  return result;
}

unint64_t sub_1E64907BC()
{
  result = qword_1ED07A1A8;
  if (!qword_1ED07A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1A8);
  }

  return result;
}

uint64_t sub_1E6490810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E6490858()
{
  result = qword_1ED07A1F0;
  if (!qword_1ED07A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1F0);
  }

  return result;
}

unint64_t sub_1E64908AC()
{
  result = qword_1ED07A1F8;
  if (!qword_1ED07A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A1F8);
  }

  return result;
}

uint64_t sub_1E6490900(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E64909D8()
{
  result = qword_1ED07A248;
  if (!qword_1ED07A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A248);
  }

  return result;
}

unint64_t sub_1E6490A30()
{
  result = qword_1ED07A250;
  if (!qword_1ED07A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A250);
  }

  return result;
}

unint64_t sub_1E6490A88()
{
  result = qword_1ED07A258;
  if (!qword_1ED07A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A258);
  }

  return result;
}

unint64_t sub_1E6490AE0()
{
  result = qword_1ED07A260;
  if (!qword_1ED07A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A260);
  }

  return result;
}

unint64_t sub_1E6490B38()
{
  result = qword_1ED07A268;
  if (!qword_1ED07A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A268);
  }

  return result;
}

unint64_t sub_1E6490B90()
{
  result = qword_1ED07A270;
  if (!qword_1ED07A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A270);
  }

  return result;
}

unint64_t sub_1E6490BE8()
{
  result = qword_1ED07A278;
  if (!qword_1ED07A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A278);
  }

  return result;
}

unint64_t sub_1E6490C40()
{
  result = qword_1ED07A280;
  if (!qword_1ED07A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A280);
  }

  return result;
}

unint64_t sub_1E6490C98()
{
  result = qword_1ED07A288;
  if (!qword_1ED07A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A288);
  }

  return result;
}

unint64_t sub_1E6490CF0()
{
  result = qword_1ED07A290;
  if (!qword_1ED07A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A290);
  }

  return result;
}

unint64_t sub_1E6490D48()
{
  result = qword_1ED07A298;
  if (!qword_1ED07A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A298);
  }

  return result;
}

unint64_t sub_1E6490DA0()
{
  result = qword_1ED07A2A0;
  if (!qword_1ED07A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2A0);
  }

  return result;
}

unint64_t sub_1E6490DF8()
{
  result = qword_1ED07A2A8;
  if (!qword_1ED07A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2A8);
  }

  return result;
}

unint64_t sub_1E6490E50()
{
  result = qword_1ED07A2B0;
  if (!qword_1ED07A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2B0);
  }

  return result;
}

unint64_t sub_1E6490EA8()
{
  result = qword_1ED07A2B8;
  if (!qword_1ED07A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2B8);
  }

  return result;
}

unint64_t sub_1E6490F00()
{
  result = qword_1ED07A2C0;
  if (!qword_1ED07A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2C0);
  }

  return result;
}

unint64_t sub_1E6490F58()
{
  result = qword_1ED07A2C8;
  if (!qword_1ED07A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2C8);
  }

  return result;
}

unint64_t sub_1E6490FB0()
{
  result = qword_1ED07A2D0;
  if (!qword_1ED07A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2D0);
  }

  return result;
}

unint64_t sub_1E6491008()
{
  result = qword_1ED07A2D8;
  if (!qword_1ED07A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2D8);
  }

  return result;
}

unint64_t sub_1E6491060()
{
  result = qword_1ED07A2E0;
  if (!qword_1ED07A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2E0);
  }

  return result;
}

unint64_t sub_1E64910B8()
{
  result = qword_1ED07A2E8;
  if (!qword_1ED07A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2E8);
  }

  return result;
}

unint64_t sub_1E6491110()
{
  result = qword_1ED07A2F0;
  if (!qword_1ED07A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A2F0);
  }

  return result;
}

uint64_t sub_1E6491164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953460082 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6618020 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6972616873 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6E694C6E65706FLL && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E64913B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

char *DynamicBarButtonItem.__allocating_init<A>(store:presentationContextKey:rootView:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_1E649198C(a1, a2, a3, a4, a5, a6);
  (*(*(a5 - 8) + 8))(a4, a5);
  return v14;
}

char *DynamicBarButtonItem.init<A>(store:presentationContextKey:rootView:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1E649198C(a1, a2, a3, a4, a5, a6);
  (*(*(a5 - 8) + 8))(a4, a5);
  return v8;
}

void sub_1E6491634(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden_];
  }
}

void sub_1E6491698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E65DEBD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 104))(v6, *MEMORY[0x1E699CD18], v3);
    v9 = sub_1E65DEBC8();
    (*(v4 + 8))(v6, v3);
    [v8 _setPrefersNoPlatter_];
  }
}

id DynamicBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DynamicBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E649198C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  v12 = sub_1E65D76F8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  swift_allocObject();
  *(v6 + OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver) = sub_1E65E4D18();
  (*(v13 + 16))(v16, a3, v12);
  v17 = sub_1E60946F0(v16, a4, a5, a6);
  v20[4] = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v17;

  sub_1E65E4D08();

  v20[2] = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E6491D60(&qword_1EE2D6840, MEMORY[0x1E699CD20], MEMORY[0x1E699CD28]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  (*(v13 + 8))(a3, v12);
  return v18;
}

uint64_t type metadata accessor for DynamicBarButtonItem(uint64_t a1)
{
  result = qword_1EE2D9658;
  if (!qword_1EE2D9658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6491D60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6491DA8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 80) = a3;
  *(v4 + 16) = a1;
  sub_1E65D76A8();
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6491E40, 0, 0);
}

uint64_t sub_1E6491E40()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.removeBookmarks.getter();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v3 = sub_1E65DADD8();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E65EA670;
  sub_1E600B01C(*(v0 + 16), *(v0 + 24), *(v0 + 80));
  sub_1E65D7698();
  sub_1E65DAD98();
  v7 = sub_1E5F9B3B0(v6);
  *(v0 + 56) = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v10 = (v1 + *v1);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1E64920A0;

  return v10(v7);
}

uint64_t sub_1E64920A0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E64921F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E64921F4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1E649226C(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = a3;
  v62 = a2;
  v72 = a1;
  v64 = sub_1E65D76F8();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v4;
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v60 = *(v5 - 8);
  v73 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v52 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  if (qword_1ED071938 != -1)
  {
    swift_once();
  }

  v66 = qword_1ED0962A8;
  v63 = *v3;
  sub_1E5E1DEAC(v3, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v10 + 80);
  v18 = ((v17 + 16) & ~v17) + v11;
  v19 = (v17 + 16) & ~v17;
  v20 = v17 | 7;
  v21 = swift_allocObject();
  sub_1E5E1FA80(v12, v21 + v19);
  sub_1E5E1DEAC(v3, v12);
  v22 = swift_allocObject();
  sub_1E5E1FA80(v12, v22 + v19);
  sub_1E5E1DEAC(v3, v12);
  v54 = v18;
  v56 = v20;
  v23 = swift_allocObject();
  v57 = v19;
  sub_1E5E1FA80(v12, v23 + v19);
  sub_1E5E1DEAC(v3, v12);
  v24 = swift_allocObject();
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24;
  sub_1E5E1FA80(v53, v24 + v19);
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_1E6605FA0;
  *(v26 + 24) = v25;
  sub_1E604BABC();
  v52 = v3;
  sub_1E65DEB78();
  v58 = v16;
  sub_1E65DE8E8();
  v27 = v69;
  sub_1E6494C60(v72, v69);
  v28 = v59;
  v29 = v55;
  v30 = v64;
  (*(v59 + 16))(v55, v62, v64);
  v31 = *(v60 + 80);
  v32 = (v31 + 16) & ~v31;
  v33 = (v32 + v73 + *(v28 + 80)) & ~*(v28 + 80);
  v34 = swift_allocObject();
  sub_1E5FAB460(v27, v34 + v32, &qword_1ED073950, &unk_1E65F4360);
  (*(v28 + 32))(v34 + v33, v29, v30);
  v35 = v72;
  sub_1E6494C60(v72, v27);
  v36 = swift_allocObject();
  sub_1E5FAB460(v27, v36 + v32, &qword_1ED073950, &unk_1E65F4360);
  type metadata accessor for AppFeature(0);
  sub_1E5DED16C();
  v64 = sub_1E6494E24();
  v37 = v68;
  sub_1E65E4DE8();
  v38 = v53;
  sub_1E5E1DEAC(v52, v53);
  v39 = v65;
  v40 = v65[7];
  v60 = v65[5];
  v61 = v40;
  v62 = v65[9];
  sub_1E6494C60(v35, v27);
  v41 = (v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + v31 + 80) & ~v31;
  v43 = swift_allocObject();
  sub_1E5E1FA80(v38, v43 + v57);
  v44 = (v43 + v41);
  v45 = v39[3];
  v44[2] = v39[2];
  v44[3] = v45;
  v44[4] = v39[4];
  v46 = v39[1];
  *v44 = *v39;
  v44[1] = v46;
  sub_1E5FAB460(v27, v43 + v42, &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1E64961C8;
  *(v47 + 24) = v43;

  v48 = v58;
  v49 = v74;
  v50 = sub_1E65E4F08();

  (*(v70 + 8))(v49, v71);
  (*(v67 + 8))(v48, v37);
  return sub_1E63884E0(v66, v50, sub_1E5E278AC, 0, sub_1E6493B4C, 0);
}

id sub_1E6492AD8(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = a3;
  v62 = a2;
  v72 = a1;
  v64 = sub_1E65D76F8();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v4;
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v60 = *(v5 - 8);
  v73 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v52 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  if (qword_1ED071968 != -1)
  {
    swift_once();
  }

  v66 = qword_1ED0962D8;
  v63 = *v3;
  sub_1E5E1DEAC(v3, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v10 + 80);
  v18 = ((v17 + 16) & ~v17) + v11;
  v19 = (v17 + 16) & ~v17;
  v20 = v17 | 7;
  v21 = swift_allocObject();
  sub_1E5E1FA80(v12, v21 + v19);
  sub_1E5E1DEAC(v3, v12);
  v22 = swift_allocObject();
  sub_1E5E1FA80(v12, v22 + v19);
  sub_1E5E1DEAC(v3, v12);
  v54 = v18;
  v56 = v20;
  v23 = swift_allocObject();
  v57 = v19;
  sub_1E5E1FA80(v12, v23 + v19);
  sub_1E5E1DEAC(v3, v12);
  v24 = swift_allocObject();
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24;
  sub_1E5E1FA80(v53, v24 + v19);
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_1E6605F08;
  *(v26 + 24) = v25;
  sub_1E604BABC();
  v52 = v3;
  sub_1E65DEB78();
  v58 = v16;
  sub_1E65DE8E8();
  v27 = v69;
  sub_1E6494C60(v72, v69);
  v28 = v59;
  v29 = v55;
  v30 = v64;
  (*(v59 + 16))(v55, v62, v64);
  v31 = *(v60 + 80);
  v32 = (v31 + 16) & ~v31;
  v33 = (v32 + v73 + *(v28 + 80)) & ~*(v28 + 80);
  v34 = swift_allocObject();
  sub_1E5FAB460(v27, v34 + v32, &qword_1ED073950, &unk_1E65F4360);
  (*(v28 + 32))(v34 + v33, v29, v30);
  v35 = v72;
  sub_1E6494C60(v72, v27);
  v36 = swift_allocObject();
  sub_1E5FAB460(v27, v36 + v32, &qword_1ED073950, &unk_1E65F4360);
  type metadata accessor for AppFeature(0);
  sub_1E5DED16C();
  v64 = sub_1E6494E24();
  v37 = v68;
  sub_1E65E4DE8();
  v38 = v53;
  sub_1E5E1DEAC(v52, v53);
  v39 = v65;
  v40 = v65[7];
  v60 = v65[5];
  v61 = v40;
  v62 = v65[9];
  sub_1E6494C60(v35, v27);
  v41 = (v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + v31 + 80) & ~v31;
  v43 = swift_allocObject();
  sub_1E5E1FA80(v38, v43 + v57);
  v44 = (v43 + v41);
  v45 = v39[3];
  v44[2] = v39[2];
  v44[3] = v45;
  v44[4] = v39[4];
  v46 = v39[1];
  *v44 = *v39;
  v44[1] = v46;
  sub_1E5FAB460(v27, v43 + v42, &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1E64961C8;
  *(v47 + 24) = v43;

  v48 = v58;
  v49 = v74;
  v50 = sub_1E65E4F08();

  (*(v70 + 8))(v49, v71);
  (*(v67 + 8))(v48, v37);
  return sub_1E63884E0(v66, v50, sub_1E5F870C8, 0, sub_1E6493E10, 0);
}

uint64_t sub_1E6493344(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v62 = a2;
  v63 = a5;
  v72 = a4;
  v69 = a3;
  v7 = sub_1E65D76F8();
  v66 = *(v7 - 8);
  v67 = v7;
  v68 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v64 = *(v9 - 8);
  v76 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D40, &qword_1E65FAA90);
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v53 - v12;
  v13 = type metadata accessor for AppComposer(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D48, &qword_1E65FAA98);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D50, &unk_1E65FAAA0);
  v71 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v61 = &v53 - v18;
  v70 = *a1;
  sub_1E5E1DEAC(a1, v16);
  v19 = *(v14 + 80);
  v20 = ((v19 + 16) & ~v19) + v15;
  v21 = (v19 + 16) & ~v19;
  v22 = v19 | 7;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v16, v23 + v21);
  sub_1E5E1DEAC(a1, v16);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v16, v24 + v21);
  v56 = a1;
  sub_1E5E1DEAC(a1, v16);
  v57 = v20;
  v58 = v22;
  v25 = swift_allocObject();
  v59 = v21;
  sub_1E5E1FA80(v16, v25 + v21);
  sub_1E5E1DEAC(a1, v16);
  v26 = swift_allocObject();
  sub_1E5E1FA80(v16, v26 + v21);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1E65FAAC8;
  *(v27 + 24) = v26;
  sub_1E604BABC();

  sub_1E65DEB78();
  sub_1E65DE8E8();
  v28 = v62;
  v29 = v55;
  sub_1E6494C60(v62, v55);
  v30 = v65;
  v31 = v66;
  v32 = v67;
  (*(v66 + 16))(v65, v69, v67);
  v33 = *(v64 + 80);
  v34 = (v33 + 16) & ~v33;
  v69 = v34 + v76;
  v64 = v33 | 7;
  v35 = (v34 + v76 + *(v31 + 80)) & ~*(v31 + 80);
  v36 = swift_allocObject();
  sub_1E5FAB460(v29, v36 + v34, &qword_1ED073950, &unk_1E65F4360);
  (*(v31 + 32))(v36 + v35, v30, v32);
  v37 = v28;
  sub_1E6494C60(v28, v29);
  v38 = swift_allocObject();
  sub_1E5FAB460(v29, v38 + v34, &qword_1ED073950, &unk_1E65F4360);
  type metadata accessor for AppFeature(0);
  sub_1E5DED16C();
  v69 = sub_1E6494E24();
  sub_1E65E4DE8();
  v39 = v54;
  sub_1E5E1DEAC(v56, v54);
  v40 = v72[9];
  v67 = v72[7];
  v68 = v40;
  v41 = v72;
  sub_1E6494C60(v37, v29);
  v42 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_1E5E1FA80(v39, v43 + v59);
  v44 = (v43 + v42);
  v45 = v41[3];
  v44[2] = v41[2];
  v44[3] = v45;
  v44[4] = v41[4];
  v46 = v41[1];
  *v44 = *v41;
  v44[1] = v46;
  sub_1E5FAB460(v29, v43 + ((v42 + v33 + 80) & ~v33), &qword_1ED073950, &unk_1E65F4360);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1E62BC0F4;
  *(v47 + 24) = v43;

  v48 = v61;
  v49 = v77;
  v50 = v75;
  v51 = sub_1E65E4F08();

  (*(v73 + 8))(v49, v74);
  (*(v71 + 8))(v48, v50);
  return v51;
}

uint64_t sub_1E6493B4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v21 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v11, v9, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *v9;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v14 = *v9;
      v15 = sub_1E65D76A8();
      (*(*(v15 - 8) + 8))(&v9[v13], v15);
      goto LABEL_8;
    }

    sub_1E5DFE50C(v9, &unk_1ED077CC0, &unk_1E65F2610);
  }

  v14 = 0;
LABEL_8:
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v6, v3, &unk_1ED077CC0, &unk_1E65F2610);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 > 2)
  {
    goto LABEL_16;
  }

  if (v16)
  {
    if (v16 == 1)
    {
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v18 = *v3;
      v19 = sub_1E65D76A8();
      (*(*(v19 - 8) + 8))(&v3[v17], v19);
      if (v14)
      {
        return v18 ^ 1u;
      }

      return 0;
    }

    sub_1E5DFE50C(v3, &unk_1ED077CC0, &unk_1E65F2610);
LABEL_16:
    v18 = 0;
    result = 0;
    if (!v14)
    {
      return result;
    }

    return v18 ^ 1u;
  }

  v18 = *v3;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  return v18 ^ 1u;
}

uint64_t sub_1E6493E10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v21 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v11, v9, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *v9;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v14 = *v9;
      v15 = sub_1E65D76A8();
      (*(*(v15 - 8) + 8))(&v9[v13], v15);
      goto LABEL_8;
    }

    sub_1E5DFE50C(v9, &unk_1ED077CC0, &unk_1E65F2610);
  }

  v14 = 0;
LABEL_8:
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E5FAB460(v6, v3, &unk_1ED077CC0, &unk_1E65F2610);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 > 2)
  {
LABEL_14:
    v18 = 0;
    return v14 & v18;
  }

  if (!v16)
  {
    v18 = *v3;
    return v14 & v18;
  }

  if (v16 != 1)
  {
    sub_1E5DFE50C(v3, &unk_1ED077CC0, &unk_1E65F2610);
    goto LABEL_14;
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
  v18 = *v3;
  v19 = sub_1E65D76A8();
  (*(*(v19 - 8) + 8))(&v3[v17], v19);
  return v14 & v18;
}

uint64_t sub_1E64940C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A300, &qword_1E6605EE8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = *a1;
  *(v2 + 160) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E649417C, 0, 0);
}

uint64_t sub_1E649417C()
{
  v1 = v0[7];
  v0[12] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[13] = sub_1E65E6058();
  v0[14] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649422C, v3, v2);
}

uint64_t sub_1E649422C()
{

  sub_1E5E20198(22, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  v0[15] = v1;
  v2 = swift_dynamicCast();
  v3 = *(v1 - 8);
  v0[16] = v3;
  v4 = *(v3 + 56);
  if (v2)
  {
    v5 = v3;
    v7 = v0[8];
    v6 = v0[9];
    v4(v7, 0, 1, v1);
    (*(v5 + 32))(v6, v7, v1);
    v8 = 0;
  }

  else
  {
    v9 = v0[8];
    v8 = 1;
    v4(v9, 1, 1, v1);
    sub_1E5DFE50C(v9, &qword_1ED07A300, &qword_1E6605EE8);
  }

  v4(v0[9], v8, 1, v1);

  return MEMORY[0x1EEE6DFA0](sub_1E64943D8, 0, 0);
}

uint64_t sub_1E64943D8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  *(v0 + 136) = v1;
  if ((*(v1 + 48))(v2, 1) != 1)
  {
    *(v0 + 144) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v7;
    v6 = sub_1E649456C;
    goto LABEL_5;
  }

  sub_1E5DFE50C(v2, &qword_1ED07A300, &qword_1E6605EE8);
  if (*(v0 + 160) == 2)
  {
    *(v0 + 152) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v4;
    v6 = sub_1E64946DC;
LABEL_5:

    return MEMORY[0x1EEE6DFA0](v6, v3, v5);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E649456C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[9];

  sub_1E65E4E28();
  (*(v1 + 8))(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E6494604, 0, 0);
}

uint64_t sub_1E6494604(uint64_t a1)
{
  if (*(v1 + 160) == 2)
  {
    *(v1 + 152) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64946DC, v3, v2);
  }

  else
  {

    v4 = *(v1 + 8);

    return v4();
  }
}

uint64_t sub_1E64946DC()
{
  v1 = v0[11];
  v2 = v0[10];

  sub_1E6461AA0(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6494768(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_1E65D76A8();
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = *a1;
  *(v2 + 80) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E649480C, 0, 0);
}

uint64_t sub_1E649480C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.insertBookmarks.getter();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v3 = sub_1E65DADD8();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E65EA670;
  sub_1E600B01C(*(v0 + 32), *(v0 + 40), *(v0 + 80));
  sub_1E65D7698();
  sub_1E65DAD98();
  v7 = sub_1E5F9B3B0(v6);
  *(v0 + 56) = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v10 = (v1 + *v1);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1E6494A6C;

  return v10(v7);
}

uint64_t sub_1E6494A6C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6494BC0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6494BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6494C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6494CD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v8 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  sub_1E65DE488();
  v3 = v8[1];
  v4 = v8[2];
  v5 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A2F8, &qword_1E6605ED8);
  sub_1E65DE7E8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  type metadata accessor for AppState(0);
  return sub_1E64076CC(v2, v3, v4, v5);
}

unint64_t sub_1E6494E24()
{
  result = qword_1ED077D68;
  if (!qword_1ED077D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077D50, &unk_1E65FAAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077D68);
  }

  return result;
}

uint64_t sub_1E6494E88(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  HIDWORD(v16) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  sub_1E65DE488();
  v10 = v17;
  v9 = v18;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v13 = *a4;
  *(v12 + 72) = *(a4 + 1);
  v14 = *(a4 + 3);
  *(v12 + 88) = *(a4 + 2);
  *(v12 + 104) = v14;
  *(v12 + 120) = *(a4 + 4);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = BYTE4(v16);
  *(v12 + 40) = v10;
  *(v12 + 48) = v9;
  *(v12 + 56) = v13;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v8, &unk_1E6605ED0, v12);
}

uint64_t sub_1E6495040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E61FAD2C(a1, v4, v5, v8, v6, v7, v1 + 56);
}

uint64_t sub_1E6495114(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E64940C0(a1, v1 + v5);
}

uint64_t sub_1E64951EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  return sub_1E608C678(a1, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1E64952D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);

  return sub_1E6494CD4();
}

uint64_t objectdestroy_25Tm_1()
{
  v103 = type metadata accessor for AppComposer(0);
  v101 = *(*(v103 - 1) + 80);
  v1 = (v101 + 16) & ~v101;
  v99 = (*(*(v103 - 1) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360) - 8) + 80);
  v102 = v0;
  v96 = v0 + v1;

  v2 = v0 + v1 + v103[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v98 = type metadata accessor for AccountService();
  v97 = *(v98[-1].Description + 1);
  v97(v2 + v4, v98);
  v5 = v3[7];
  v95 = type metadata accessor for AppStateService();
  v94 = *(v95[-1].Description + 1);
  v94(v2 + v5, v95);
  v6 = v3[8];
  v93 = type metadata accessor for ArchivedSessionService();
  v92 = *(v93[-1].Description + 1);
  v92(v2 + v6, v93);
  v7 = v3[9];
  v91 = type metadata accessor for AssetService();
  v90 = *(v91[-1].Description + 1);
  v90(v2 + v7, v91);
  v8 = v3[10];
  v89 = type metadata accessor for AwardsService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v8, v89);
  v9 = v3[11];
  v87 = type metadata accessor for BookmarkService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v9, v87);
  v10 = v3[12];
  v85 = type metadata accessor for CatalogService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v10, v85);
  v11 = v3[13];
  v83 = type metadata accessor for ConfigurationService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v11, v83);
  v12 = v3[14];
  v81 = type metadata accessor for ContentAvailabilityService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v12, v81);
  v13 = v3[15];
  v79 = type metadata accessor for EngagementService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v13, v79);
  v14 = v3[16];
  v77 = type metadata accessor for HealthDataService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v14, v77);
  v15 = v3[17];
  v75 = type metadata accessor for InteropService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v15, v75);
  v16 = v3[18];
  v73 = type metadata accessor for LocalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v16, v73);
  v17 = v3[19];
  v71 = type metadata accessor for MarketingService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v17, v71);
  v18 = v3[20];
  v69 = type metadata accessor for MetricService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v18, v69);
  v19 = v3[21];
  v67 = type metadata accessor for PersonalizationService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v19, v67);
  v20 = v3[22];
  v65 = type metadata accessor for PlayerService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v20, v65);
  v21 = v3[23];
  v63 = type metadata accessor for PrivacyPreferenceService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v21, v63);
  v22 = v3[24];
  v61 = type metadata accessor for RecommendationService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v22, v61);
  v23 = v3[25];
  v59 = type metadata accessor for RemoteBrowsingService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v23, v59);
  v24 = v3[26];
  v57 = type metadata accessor for SearchService();
  v56 = *(v57[-1].Description + 1);
  v56(v2 + v24, v57);
  v25 = v3[27];
  v55 = type metadata accessor for ServiceSubscriptionService();
  v54 = *(v55[-1].Description + 1);
  v54(v2 + v25, v55);
  v26 = v3[28];
  v48 = type metadata accessor for SessionService();
  v53 = *(v48[-1].Description + 1);
  v53(v2 + v26, v48);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v52 = *(v28[-1].Description + 1);
  v52(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v51 = *(v30[-1].Description + 1);
  v51(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v50 = *(v32[-1].Description + 1);
  v50(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v49 = *(QueueService[-1].Description + 1);
  v49(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v47 = *(v36[-1].Description + 1);
  v47(v2 + v35, v36);

  v37 = v96 + v103[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v97(v38 + v3[6], v98);
  v94(v38 + v3[7], v95);
  v92(v38 + v3[8], v93);
  v90(v38 + v3[9], v91);
  v88(v38 + v3[10], v89);
  v86(v38 + v3[11], v87);
  v84(v38 + v3[12], v85);
  v82(v38 + v3[13], v83);
  v80(v38 + v3[14], v81);
  v78(v38 + v3[15], v79);
  v76(v38 + v3[16], v77);
  v74(v38 + v3[17], v75);
  v72(v38 + v3[18], v73);
  v70(v38 + v3[19], v71);
  v68(v38 + v3[20], v69);
  v66(v38 + v3[21], v67);
  v64(v38 + v3[22], v65);
  v62(v38 + v3[23], v63);
  v60(v38 + v3[24], v61);
  v58(v38 + v3[25], v59);
  v56(v38 + v3[26], v57);
  v54(v38 + v3[27], v55);
  v53(v38 + v3[28], v48);
  v52(v38 + v3[29], v28);
  v51(v38 + v3[30], v30);
  v50(v38 + v3[31], v32);

  v49(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v47(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v96 + v103[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v96 + v103[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  swift_unknownObjectRelease();

  v40 = v102 + ((v99 + v100 + 80) & ~v100);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v40, *(v40 + 8), *(v40 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v42 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 == 2)
    {
    }

    else if (v43 == 1)
    {
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v45 = sub_1E65D76A8();
      (*(*(v45 - 8) + 8))(v42 + v44, v45);
    }
  }

  return swift_deallocObject();
}

void *sub_1E64961CC(char *a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_1E65D7968();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E65E0E48();
  v7 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v34 = &v34 - v14;
    v35 = v6;
    v36 = v4;
    v38 = v3;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1E601CF48(0, v16, 0);
    v17 = v44;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v20 = *(v18 + 64);
    v37 = a2;
    v21 = a2 + ((v20 + 32) & ~v20);
    v41 = *(v18 + 56);
    v42 = v19;
    v22 = (v18 - 8);
    do
    {
      v23 = v43;
      v24 = v18;
      v42(v9, v21, v43);
      v25 = sub_1E65E0E38();
      v27 = v26;
      v28 = sub_1E61442E8(v25, v26);
      sub_1E6496D88(v25, v27);
      v13 = (*v22)(v9, v23);
      v44 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        v13 = sub_1E601CF48((v29 > 1), v30 + 1, 1);
        v17 = v44;
      }

      *(v17 + 16) = v30 + 1;
      *(v17 + 8 * v30 + 32) = v28;
      v21 += v41;
      --v16;
      v18 = v24;
    }

    while (v16);
    a2 = v37;
    v3 = v38;
    v6 = v35;
    v4 = v36;
    v15 = v34;
  }

  MEMORY[0x1EEE9AC00](v13);
  *(&v34 - 2) = v40;
  sub_1E612C4B4(sub_1E6496D9C, v17, v15);

  v31 = v39;
  sub_1E5DFD1CC(v15, v39, &qword_1ED0758F8, &qword_1E65F20A8);
  if ((*(v4 + 48))(v31, 1, v3) == 1)
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v4 + 32))(v6, v31, v3);

    v32 = sub_1E64965BC(v6, a2);

    (*(v4 + 8))(v6, v3);
  }

  sub_1E5DFE50C(v15, &qword_1ED0758F8, &qword_1E65F20A8);
  return v32;
}

void *sub_1E64965BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65D8F28();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D72D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v31 - v16;
  v37 = sub_1E65D86A8();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v20 = sub_1E65D7958();
  if ((v20 & 0x8000000000000000) == 0 && v20 < *(a2 + 16))
  {
    sub_1E65E0E48();
    v21 = sub_1E65D7938();
    v22 = sub_1E6496AC8(v21);
    sub_1E5FAA0F0(v22);
    v23 = sub_1E65E0E18();
    v31[1] = v24;
    v31[2] = v23;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v31[0] = v25;
    sub_1E65D7958();
    sub_1E65E0E28();
    sub_1E5DFD1CC(v17, v15, &qword_1ED072D90, &qword_1E66040F0);
    if ((*(v6 + 48))(v15, 1, v5) != 1)
    {
      (*(v6 + 32))(v11, v15, v5);
      (*(v6 + 16))(v9, v11, v5);
      sub_1E65E5D58();
      (*(v6 + 8))(v11, v5);
    }

    sub_1E5DFE50C(v17, &qword_1ED072D90, &qword_1E66040F0);
    (*(v33 + 104))(v36, *MEMORY[0x1E69CBCB0], v34);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v26 = v32;
    sub_1E65D8678();
    v19 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1E64F6A68(0, v19[2] + 1, 1, v19);
    }

    v27 = v35;
    v29 = v19[2];
    v28 = v19[3];
    if (v29 >= v28 >> 1)
    {
      v19 = sub_1E64F6A68((v28 > 1), v29 + 1, 1, v19);
    }

    v19[2] = v29 + 1;
    (*(v27 + 32))(v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29, v26);
  }

  return v19;
}

uint64_t sub_1E6496AC8(uint64_t a1)
{
  v2 = sub_1E65D8F28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E0E38();
  v8 = v7;
  v9 = sub_1E61453F8(v6, v7);
  sub_1E6496D88(v6, v8);
  if (a1 < 0 || *(v9 + 16) <= a1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1E5DF650C(v9 + 40 * a1 + 32, &v20);

    sub_1E5DF599C(&v20, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v10 = *(sub_1E65D86A8() - 8);
    v19[3] = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E65EA670;
    sub_1E5DF650C(v23, &v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v14 = (*(v13 + 8))(v12, v13);
    v19[1] = v15;
    v19[2] = v14;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v17 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    (*(v16 + 16))(v17, v16);
    (*(v3 + 104))(v5, *MEMORY[0x1E69CBCC8], v2);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    __swift_destroy_boxed_opaque_existential_1(&v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v11;
  }
}

uint64_t sub_1E6496D88(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 7u)
  {
  }

  return result;
}

uint64_t sub_1E6496DCC(uint64_t a1)
{
  v3 = type metadata accessor for ItemContext(0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v26 = v5;
  v23 = v1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1E601BFA8(0, v6, 0);
  v7 = v31;
  v30 = a1 + 56;
  result = sub_1E65E6748();
  v9 = result;
  v10 = 0;
  v24 = a1 + 64;
  v25 = v6;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v30 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(a1 + 36);
    swift_bridgeObjectRetain_n();
    v13 = v26;
    sub_1E65E3538();
    type metadata accessor for ProgramDetailItemContext(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    v31 = v7;
    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1E601BFA8((v14 > 1), v15 + 1, 1);
      v7 = v31;
    }

    *(v7 + 16) = v15 + 1;
    result = sub_1E5E1EA08(v13, v7 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v15, type metadata accessor for ItemContext);
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v16 = *(v30 + 8 * v12);
    if ((v16 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v9 & 0x3F));
    if (v17)
    {
      v11 = __clz(__rbit64(v17)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v12 << 6;
      v19 = v12 + 1;
      v20 = (v24 + 8 * v12);
      while (v19 < (v11 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1E5F87098(v9, v29, 0);
          v11 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v9, v29, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v25)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E64970E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a3;
  v128 = a2;
  v140 = a1;
  v122 = a5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B0, &qword_1E65FA6D0);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v114 = v98 - v7;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A40, &qword_1E65F9748);
  MEMORY[0x1EEE9AC00](v120);
  v115 = v98 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  v9 = MEMORY[0x1EEE9AC00](v121);
  v116 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v119 = v98 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A308, &qword_1E6605FD8);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v110 = v98 - v12;
  v13 = sub_1E65E2E98();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v107 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1E65E2F78();
  v111 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v131 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppComposer(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v105 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v104 = v98 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v102 = v98 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v99 = v98 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v126 = v98 - v27;
  v29 = v28;
  v98[1] = v28;
  MEMORY[0x1EEE9AC00](v26);
  v31 = v98 - v30;
  v132 = type metadata accessor for AppComposer;
  sub_1E5E1DD0C(v5, v98 - v30, type metadata accessor for AppComposer);
  v129 = *a4;
  v130 = a4[3];
  v127 = a4[5];
  v125 = a4[7];
  v137 = a4[9];
  v32 = *(v17 + 80);
  v139 = ((v32 + 16) & ~v32) + v29;
  v134 = (v32 + 16) & ~v32;
  v33 = (v139 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = v33;
  v34 = swift_allocObject();
  sub_1E5E1EA08(v31, v34 + ((v32 + 16) & ~v32), type metadata accessor for AppComposer);
  v35 = (v34 + v33);
  v124 = a4;
  v36 = *(a4 + 3);
  v35[2] = *(a4 + 2);
  v35[3] = v36;
  v35[4] = *(a4 + 4);
  v37 = *(a4 + 1);
  *v35 = *a4;
  v35[1] = v37;
  swift_unknownObjectRetain();

  v38 = v141;
  v133 = sub_1E6498460(v140, v128, v138, sub_1E64983B4, v34);

  v108 = *v38;
  v123 = v31;
  v39 = v132;
  sub_1E5E1DD0C(v38, v31, v132);
  v103 = swift_allocObject();
  v40 = v134;
  sub_1E5E1EA08(v31, v103 + v134, type metadata accessor for AppComposer);
  v41 = v126;
  v42 = v39;
  sub_1E5E1DD0C(v38, v126, v39);
  v101 = swift_allocObject();
  sub_1E5E1EA08(v41, v101 + v40, type metadata accessor for AppComposer);
  v43 = v38;
  v44 = v38;
  v45 = v99;
  sub_1E5E1DD0C(v44, v99, v39);
  v100 = swift_allocObject();
  sub_1E5E1EA08(v45, v100 + v40, type metadata accessor for AppComposer);
  v46 = v43;
  v47 = v43;
  v48 = v102;
  sub_1E5E1DD0C(v46, v102, v39);
  v99 = swift_allocObject();
  v49 = v40;
  sub_1E5E1EA08(v48, v99 + v40, type metadata accessor for AppComposer);
  v50 = v138;
  sub_1E5DF650C(v138, &v143);
  v51 = swift_allocObject();
  sub_1E5DF599C(&v143, v51 + 16);
  sub_1E5DF650C(v50, &v142);
  v52 = v104;
  sub_1E5E1DD0C(v47, v104, v42);
  v136 = v32;
  v53 = swift_allocObject();
  sub_1E5DF599C(&v142, v53 + 16);
  v135 = type metadata accessor for AppComposer;
  sub_1E5E1EA08(v52, v53 + ((v32 + 56) & ~v32), type metadata accessor for AppComposer);
  v54 = v105;
  sub_1E5E1DD0C(v47, v105, v42);
  v55 = swift_allocObject();
  sub_1E5E1EA08(v54, v55 + v49, type metadata accessor for AppComposer);

  sub_1E65E2E88();
  sub_1E65E2F68();
  v56 = swift_allocObject();
  v57 = v140;
  v58 = v128;
  *(v56 + 16) = v140;
  *(v56 + 24) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v58;
  type metadata accessor for AppFeature(0);
  sub_1E64A33B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E64A33B8(&qword_1ED07A310, MEMORY[0x1E699EAB8], MEMORY[0x1E699EAB0]);
  swift_bridgeObjectRetain_n();
  v60 = v110;
  v61 = v109;
  sub_1E65E4DE8();
  v62 = v123;
  v63 = v132;
  sub_1E5E1DD0C(v141, v123, v132);
  v64 = v106;
  v65 = (v106 + 87) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  sub_1E5E1EA08(v62, v66 + v134, v135);
  v67 = (v66 + v64);
  v68 = v124;
  v69 = *(v124 + 3);
  v67[2] = *(v124 + 2);
  v67[3] = v69;
  v67[4] = *(v68 + 4);
  v70 = *(v68 + 1);
  *v67 = *v68;
  v67[1] = v70;
  v71 = (v66 + v65);
  *v71 = v140;
  v71[1] = v58;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v72 = swift_allocObject();
  *(v72 + 16) = sub_1E649CCBC;
  *(v72 + 24) = v66;

  v73 = v131;
  v140 = sub_1E65E4F08();

  (*(v112 + 8))(v60, v113);
  (*(v111 + 8))(v73, v61);
  v74 = v141;
  sub_1E5E1DD0C(v141, v62, v63);
  sub_1E5DF650C(v138, &v143);
  v75 = v64;
  v76 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v134;
  v79 = v62;
  v80 = v135;
  sub_1E5E1EA08(v79, v77 + v134, v135);
  *(v77 + v75) = v133;
  sub_1E5DF599C(&v143, v77 + v76);
  v81 = (v77 + ((v76 + 47) & 0xFFFFFFFFFFFFFFF8));
  v82 = v124;
  v83 = *(v124 + 3);
  v81[2] = *(v124 + 2);
  v81[3] = v83;
  v81[4] = *(v82 + 4);
  v84 = *(v82 + 1);
  *v81 = *v82;
  v81[1] = v84;
  v85 = v74;
  v86 = v126;
  sub_1E5E1DD0C(v85, v126, v63);
  v87 = swift_allocObject();
  sub_1E5E1EA08(v86, v87 + v78, v80);
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  sub_1E5FEB2FC();
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v88 = v114;
  sub_1E65E2EC8();
  v89 = sub_1E5FED46C(&unk_1ED077A50, &qword_1ED0771B0, &qword_1E65FA6D0, MEMORY[0x1E699EA30]);
  v90 = v115;
  v91 = v82;
  v92 = v117;
  sub_1E630FCD8(v91, v117, v89, v115);
  (*(v118 + 8))(v88, v92);
  v93 = v123;
  sub_1E5E1DD0C(v141, v123, v132);
  v94 = swift_allocObject();
  sub_1E5E1EA08(v93, v94 + v78, v135);
  sub_1E626FC24();
  v95 = v116;
  sub_1E6259D5C(sub_1E5FF0278, v94, v120);

  sub_1E5DFE50C(v90, &unk_1ED077A40, &qword_1E65F9748);
  sub_1E626FB98();
  v96 = v119;
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v95, &qword_1ED077100, &unk_1E65FA500);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v96, &qword_1ED077100, &unk_1E65FA500);
}

uint64_t sub_1E649805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  v32 = v29 - v16;
  v31 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v33, v6);
  v19 = a4[3];
  v29[0] = *a4;
  v29[1] = v19;
  v20 = a4[7];
  v29[2] = a4[5];
  v29[3] = v20;
  v33 = a4[9];
  v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1E5FAB460(v14, v24 + v21, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v24 + v22, v10, v6);
  *(v24 + v23) = v31;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a4 + 4);
  v25[3] = *(a4 + 3);
  v25[4] = v26;
  v27 = *(a4 + 2);
  v25[1] = *(a4 + 1);
  v25[2] = v27;
  *v25 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v32, &unk_1E65EC0C8, v24);
}

uint64_t sub_1E64983B4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E649805C(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E6498460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v58 = a4;
  v71 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = v45 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v45 - v12;
  v13 = type metadata accessor for AppComposer(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v73 = v45 - v18;
  v20 = v19;
  v50 = v19;
  MEMORY[0x1EEE9AC00](v17);
  v22 = v45 - v21;
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v78 = 0xD000000000000012;
  *(&v78 + 1) = 0x80000001E66180F0;
  v45[10] = a2;
  MEMORY[0x1E694D7C0](a1, a2);
  v52 = v78;
  sub_1E5DF650C(a3, &v78);
  v72 = swift_allocObject();
  sub_1E5DF599C(&v78, v72 + 16);
  v23 = v5;
  v48 = type metadata accessor for AppComposer;
  sub_1E5E1DD0C(v5, v22, type metadata accessor for AppComposer);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v47 = *(v14 + 80);
  v25 = swift_allocObject();
  v74 = v25;
  v49 = type metadata accessor for AppComposer;
  sub_1E5E1EA08(v22, v25 + v24, type metadata accessor for AppComposer);
  v26 = (v25 + ((v24 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v71;
  v26[1] = a2;
  v27 = v23;
  v46 = v23;
  v28 = v23;
  v29 = v73;
  sub_1E5E1DD0C(v28, v73, type metadata accessor for AppComposer);
  v71 = swift_allocObject();
  sub_1E5E1EA08(v29, v71 + v24, type metadata accessor for AppComposer);
  v54 = *v27;
  v73 = type metadata accessor for ActionButtonDescriptor(0);
  v70 = type metadata accessor for ArtworkDescriptor(0);
  v69 = type metadata accessor for ContextMenu(0);
  v68 = type metadata accessor for ItemContext(0);
  v45[9] = type metadata accessor for ItemMetrics(0);
  v67 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v45[8] = type metadata accessor for SectionMetrics(0);
  v66 = type metadata accessor for ViewDescriptor(0);
  v65 = sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v64 = sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v63 = sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v45[7] = sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v45[6] = sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v45[5] = sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v45[4] = sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v45[3] = sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v45[2] = sub_1E64A33B8(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v45[1] = sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);

  sub_1E65DC178();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v31 = sub_1E65DC168();
  v76 = v30;
  v77 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v75 = v31;
  v32 = v55;
  sub_1E65DC248();
  v33 = v53;
  sub_1E5E1DD0C(v46, v53, v48);
  v34 = (v47 + 32) & ~v47;
  v35 = (v50 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v52;
  *(v36 + 16) = v52;
  sub_1E5E1EA08(v33, v36 + v34, v49);
  v38 = (v36 + v35);
  *v38 = sub_1E5F8AA74;
  v38[1] = 0;
  *(swift_allocObject() + 16) = v37;
  type metadata accessor for AppFeature(0);
  sub_1E64A33B8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);

  v39 = v57;
  v40 = v56;
  sub_1E65E4DE8();
  v41 = swift_allocObject();
  *(v41 + 16) = v58;
  *(v41 + 24) = v59;

  sub_1E65E4CC8();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1E5FE9CE8;
  *(v42 + 24) = v41;

  v43 = sub_1E65E4F08();

  (*(v61 + 8))(v39, v62);
  (*(v60 + 8))(v32, v40);
  return v43;
}

uint64_t sub_1E6499064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1E65D76A8();
  v3[5] = swift_task_alloc();
  v4 = sub_1E65DADD8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6499154, 0, 0);
}

uint64_t sub_1E6499154()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1E65D7698();
  sub_1E65DAD98();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v4 = BookmarkService.insertBookmarks.getter();
  v0[9] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA670;
  (*(v2 + 16))(v7 + v6, v1, v3);
  v8 = sub_1E5F9B3B0(v7);
  v0[10] = v8;
  swift_setDeallocating();
  v9 = *(v2 + 8);
  v0[11] = v9;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v7 + v6, v3);
  swift_deallocClassInstance();
  v12 = (v4 + *v4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1E6499370;

  return v12(v8);
}

uint64_t sub_1E6499370()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1E6499554;
  }

  else
  {

    v2 = sub_1E64994D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64994D4()
{
  (*(v0 + 88))(*(v0 + 64), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6499554()
{
  (*(v0 + 88))(*(v0 + 64), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64995D4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6499064(a1, a2, v2 + v7);
}

uint64_t sub_1E64996B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D7848();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1E65D94D8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64997D4, 0, 0);
}

uint64_t sub_1E64997D4()
{
  *(v0 + 128) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 96) = type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.fetchRemoteCatalogProgramDetail.getter();
  *(v0 + 104) = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1E64998FC;
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  return v8(v4, v5, v6);
}

uint64_t sub_1E64998FC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E5F9C8B4;
  }

  else
  {
    v2 = sub_1E6499A2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6499A2C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 72);
  v6 = *(v0 + 16);
  v7 = *(v0 + 40) + *(v0 + 128);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E63BAE10(v5, (v7 + *(v2 + 136)), v6);
  (*(v4 + 8))(v5, v10);
  (*(v3 + 8))(v1, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6499B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E64996B4(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E6499C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65DADD8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6499CFC, 0, 0);
}

uint64_t sub_1E6499CFC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  v0[9] = v2;
  v3 = sub_1E5F9B84C(&unk_1F5FA8D18);
  v0[10] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1E6499E38;

  return v6(v3);
}

uint64_t sub_1E6499E38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1E649A1AC;
  }

  else
  {

    v4 = sub_1E6499F5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6499F5C()
{
  v1 = v0[12];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[12] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v26 = v0[7];
  v25 = (v26 + 8);
  v27 = v0[12];

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v13 = v0[3];
    v12 = v0[4];
    (*(v26 + 16))(v0[8], *(v27 + 48) + *(v26 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), v0[6]);
    v14 = sub_1E65DADA8();
    v16 = v0[8];
    v17 = v0[6];
    if (v14 == v13 && v15 == v12)
    {

      (*v25)(v16, v17);
LABEL_17:

      v20 = MEMORY[0x1E699EBA8];
LABEL_18:
      v21 = v0[2];
      v22 = *v20;
      v23 = sub_1E65E3298();
      (*(*(v23 - 8) + 104))(v21, v22, v23);

      v24 = v0[1];

      return v24();
    }

    v7 &= v7 - 1;
    v19 = sub_1E65E6C18();

    result = (*v25)(v16, v17);
    if (v19)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v20 = MEMORY[0x1E699EBA0];
      goto LABEL_18;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E649A1AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E649A224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6499C38(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E649A318(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60A9C54(a1, v1 + v5);
}

uint64_t sub_1E649A3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649A494, 0, 0);
}

uint64_t sub_1E649A494()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1E5DF650C(v1, v0 + 16);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  sub_1E5DF599C((v0 + 16), (v6 + 4));
  v6[9] = v4;
  v6[10] = v3;

  sub_1E6059EAC(0, 0, v2, &unk_1E6606088, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E649A5B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E649A3F4(a1, a2, v2 + 16);
}

uint64_t sub_1E649A65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for RouteSource(0);
  v6[6] = swift_task_alloc();
  v6[7] = type metadata accessor for RouteDestination(0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649A724, 0, 0);
}

uint64_t sub_1E649A724()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v8 = v6[3];
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  swift_storeEnumTagMultiPayload();
  *v1 = v5;
  v1[1] = v4;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DD0C(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E64A3400(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 88));
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1E649A8A0;
  v10 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v10, (v0 + 88), v8, v7);
}

uint64_t sub_1E649A8A0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_1E64A3400(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6354FAC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E649AA28(uint64_t a1)
{
  v2 = sub_1E65D74E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v3 + 32))(v10 + v9, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1E64B80F8(0, 0, v7, &unk_1E6606078, v10);
}

uint64_t sub_1E649AC18()
{
  v0[3] = objc_opt_self();
  v0[4] = sub_1E65E6058();
  v0[5] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649ACC0, v2, v1);
}

uint64_t sub_1E649ACC0()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E649AD48, 0, 0);
}

uint64_t sub_1E649AD48(uint64_t a1)
{
  v1[7] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E64A33B8(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v1[8] = sub_1E65E5AF8();

  v1[9] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649AE60, v3, v2);
}

uint64_t sub_1E649AE60()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];

  [v3 openURL:v2 options:v1 completionHandler:0];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E649AEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for RouteDestination(0);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649B070, 0, 0);
}

uint64_t sub_1E649B070()
{
  v1 = *(v0 + 128);
  v34 = *(v0 + 104);
  v35 = *(v0 + 96);
  v37 = *(v0 + 88);
  v38 = *(v0 + 120);
  v32 = *(v0 + 112);
  v33 = *(v0 + 80);
  v2 = *(v0 + 72);
  v41 = *(v0 + 64);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v39 = v2[3];
  v40 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v39);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v6 = (v1 + v5[16]);
  v27 = v5[12];
  v28 = v5[20];
  v7 = (v1 + v5[24]);
  v8 = (v1 + v5[28]);
  v29 = v5[32];
  v36 = v5[36];
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;

  sub_1E65E6848();
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = *(v10 + 16);
  v31(v1 + v27, v41, v9);
  v11 = sub_1E65DB3E8();
  *v6 = 0;
  v6[1] = 0;
  (*(*(v11 - 8) + 56))(v1 + v28, 1, 1, v11);
  *v7 = v4;
  v7[1] = v3;
  *v8 = v4;
  v8[1] = v3;
  v12 = *MEMORY[0x1E69CD548];
  v13 = sub_1E65DB5D8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v1 + v29, v12, v13);
  (*(v14 + 56))(v1 + v29, 0, 1, v13);
  v15 = *MEMORY[0x1E69CBDC0];
  v16 = sub_1E65D8F38();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v32, v15, v16);
  (*(v17 + 56))(v32, 0, 1, v16);
  v18 = (v33 + *(type metadata accessor for AppComposer(0) + 36));
  v19 = *v18;
  v20 = v18[1];
  v31(v34, v41, v30);
  (*(v10 + 56))(v34, 0, 1, v30);
  v21 = sub_1E65D9908();
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v22 = sub_1E65D9F88();
  (*(*(v22 - 8) + 56))(v37, 1, 1, v22);
  swift_bridgeObjectRetain_n();
  sub_1E5FA9D34(v19, v20);
  sub_1E65D7A28();
  v23 = sub_1E65D7A38();
  (*(*(v23 - 8) + 56))(v1 + v36, 0, 1, v23);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v38 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  *(v0 + 40) = -64;
  sub_1E600F5B0((v0 + 41));
  v24 = swift_task_alloc();
  *(v0 + 136) = v24;
  *v24 = v0;
  v24[1] = sub_1E649B580;
  v25 = *(v0 + 128);

  return RoutingContext.presentDestination(_:style:priority:)(v25, (v0 + 32), (v0 + 41), v39, v40);
}

uint64_t sub_1E649B580()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 144) = v0;

  sub_1E64A3400(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E649B724, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E649B724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E649B7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E649AEF4(a1, a2, a3, v3 + 16, v3 + v9);
}

uint64_t sub_1E649B8AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649B94C, 0, 0);
}

uint64_t sub_1E649B94C()
{
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E649B9E0, v2, v1);
}

uint64_t sub_1E649B9E0()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = sub_1E6496DCC(v2);
  v4 = sub_1E600A878(v3);

  *v1 = v4;
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v1, &qword_1ED072828, &qword_1E65EBE20);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E649BAB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E649B8AC(a1, v1);
}

uint64_t sub_1E649BB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1E65D76A8();
  v3[5] = swift_task_alloc();
  v4 = sub_1E65DADD8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649BC3C, 0, 0);
}

uint64_t sub_1E649BC3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1E65D7698();
  sub_1E65DAD98();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v4 = BookmarkService.removeBookmarks.getter();
  v0[9] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073228, &qword_1E65ED080);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA670;
  (*(v2 + 16))(v7 + v6, v1, v3);
  v8 = sub_1E5F9B3B0(v7);
  v0[10] = v8;
  swift_setDeallocating();
  v9 = *(v2 + 8);
  v0[11] = v9;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v7 + v6, v3);
  swift_deallocClassInstance();
  v12 = (v4 + *v4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1E649BE58;

  return v12(v8);
}

uint64_t sub_1E649BE58()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1E64A353C;
  }

  else
  {

    v2 = sub_1E64A3540;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E649BFBC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E649BB4C(a1, a2, v2 + v7);
}

uint64_t sub_1E649C09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v81 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v67 - v9;
  v77 = sub_1E65D7848();
  v74 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v85 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E2F88();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v67 - v14;
  v82 = sub_1E65E2F28();
  v15 = *(v82 - 8);
  v16 = MEMORY[0x1EEE9AC00](v82);
  v67 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v70 = &v67 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v68 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v67 - v22;
  v71 = sub_1E65E3298();
  v24 = *(v71 - 8);
  v25 = MEMORY[0x1EEE9AC00](v71);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v67 - v28;
  v30 = sub_1E65E2F58();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AppState(0);
  v76 = v32;
  sub_1E63164FC();
  v34 = *(v33 + 312);
  v78 = a1;
  v35 = *(a1 + v34);
  v36 = *(v35 + 16);
  v83 = v29;
  if (v36 && (v37 = sub_1E6215038(a2, v84), (v38 & 1) != 0))
  {
    v39 = a2;
    v40 = v84;
    v41 = *(v35 + 56) + *(v15 + 72) * v37;
    v42 = *(v15 + 16);
    v43 = v15;
    v44 = v82;
    v42(v23, v41, v82);
    sub_1E65E2EE8();
    v45 = v44;
    v15 = v43;
    (*(v43 + 8))(v23, v45);
    (*(v24 + 32))(v83, v27, v71);
  }

  else
  {
    v39 = a2;
    v40 = v84;
    (*(v24 + 104))(v29, *MEMORY[0x1E699EBA0], v71);
  }

  v46 = v80;
  v47 = v77;
  if (*(v35 + 16) && (v48 = sub_1E6215038(v39, v40), (v49 & 1) != 0))
  {
    v50 = v68;
    v51 = v82;
    (*(v15 + 16))(v68, *(v35 + 56) + *(v15 + 72) * v48, v82);
    v52 = v69;
    sub_1E65E2ED8();
    (*(v15 + 8))(v50, v51);
    (*(v72 + 32))(v46, v52, v73);
  }

  else
  {
    (*(v72 + 104))(v46, *MEMORY[0x1E699EAC0], v73);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v53 = v75;
  sub_1E65E4C98();
  v54 = v79;
  sub_1E5E1F544(v79);
  sub_1E5DFE50C(v53, &qword_1ED071F78, &unk_1E65EA3F0);
  v55 = v74;
  v56 = *(v74 + 48);
  if (v56(v54, 1, v47) == 1)
  {
    sub_1E65D77C8();
    if (v56(v54, 1, v47) != 1)
    {
      sub_1E5DFE50C(v54, &qword_1ED071F80, &unk_1E65F4310);
    }

    if (!*(v35 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    (*(v55 + 32))(v85, v54, v47);
    if (!*(v35 + 16))
    {
      goto LABEL_21;
    }
  }

  v57 = sub_1E6215038(v39, v40);
  if (v58)
  {
    v59 = v70;
    v60 = v82;
    (*(v15 + 16))(v70, *(v35 + 56) + *(v15 + 72) * v57, v82);
    sub_1E65E2F08();
    (*(v15 + 8))(v59, v60);
    if (!*(v35 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (!*(v35 + 16))
  {
    goto LABEL_21;
  }

  v61 = sub_1E6215038(v39, v40);
  if (v62)
  {
    v63 = *(v35 + 56) + *(v15 + 72) * v61;
    v64 = v67;
    v65 = v82;
    (*(v15 + 16))(v67, v63, v82);
    sub_1E65E2EF8();
    (*(v15 + 8))(v64, v65);
  }

LABEL_21:

  return sub_1E65E2F18();
}

uint64_t sub_1E649C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793D0, &qword_1E6601538);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_1E65E2F28();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  type metadata accessor for AppState(0);

  return sub_1E6409244(v9, a3, a4);
}

uint64_t sub_1E649C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v9 = type metadata accessor for AppComposer(0);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E2F38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v12 + 16))(v14, a1, v11);
  v19 = a4[3];
  v33 = *a4;
  v34 = v19;
  v20 = a4[7];
  v35 = a4[5];
  v36 = v20;
  v37 = a4[9];
  sub_1E5E1DD0C(a3, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v38 + 80) + v22 + 80) & ~*(v38 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v12 + 32))(v24 + v21, v14, v11);
  v25 = (v24 + v22);
  v26 = *(a4 + 3);
  v25[2] = *(a4 + 2);
  v25[3] = v26;
  v25[4] = *(a4 + 4);
  v27 = *(a4 + 1);
  *v25 = *a4;
  v25[1] = v27;
  sub_1E5E1EA08(v32, v24 + v23, type metadata accessor for AppComposer);
  v28 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v40;
  *v28 = v39;
  v28[1] = v29;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v17, &unk_1E6606068, v24);
}

uint64_t sub_1E649CCBC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + ((v7 + 87) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1E649C978(a1, a2, v2 + v6, (v2 + v7), v9, v10);
}

uint64_t sub_1E649CD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a3;
  v107 = a2;
  v100 = a1;
  v96 = a5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v109 = v75 - v8;
  v112 = sub_1E65D76F8();
  v108 = *(v112 - 8);
  v85 = *(v108 + 64);
  v9 = MEMORY[0x1EEE9AC00](v112);
  v111 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v114 = v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v110 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v113 = v75 - v15;
  v16 = type metadata accessor for AppComposer(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v78 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v75 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v95 = *(v94 - 8);
  v22 = MEMORY[0x1EEE9AC00](v94);
  v90 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v91 = v75 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v92 = v75 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v93 = v75 - v28;
  v101 = type metadata accessor for AppComposer;
  sub_1E5E1DD0C(a1, v21, type metadata accessor for AppComposer);
  sub_1E5DF650C(a3, &v116);
  v81 = *a4;
  v82 = *(a4 + 24);
  v83 = *(a4 + 40);
  v84 = *(a4 + 56);
  v106 = *(a4 + 72);
  v29 = *(v17 + 80);
  v30 = (v29 + 16) & ~v29;
  v102 = v30 + v18;
  v98 = v30;
  v99 = v29 | 7;
  v31 = (v30 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = v31;
  v103 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v89 = v32;
  v97 = type metadata accessor for AppComposer;
  sub_1E5E1EA08(v21, v32 + v30, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v116, v32 + v31);
  v33 = (v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8));
  v34 = *(a4 + 48);
  v33[2] = *(a4 + 32);
  v33[3] = v34;
  v33[4] = *(a4 + 64);
  v35 = *(a4 + 16);
  *v33 = *a4;
  v33[1] = v35;
  v36 = sub_1E65E3E08();
  (*(*(v36 - 8) + 56))(v113, 1, 1, v36);
  swift_unknownObjectRetain();

  sub_1E65D76E8();
  (*(v87 + 104))(v109, *MEMORY[0x1E699D720], v88);
  v37 = v100;
  v38 = v78;
  v39 = v101;
  sub_1E5E1DD0C(v100, v78, v101);
  v88 = swift_allocObject();
  v40 = v98;
  v41 = v97;
  sub_1E5E1EA08(v38, v88 + v98, v97);
  sub_1E5E1DD0C(v37, v38, v39);
  v87 = swift_allocObject();
  sub_1E5E1EA08(v38, v87 + v40, v41);
  sub_1E5E1DD0C(v37, v38, v39);
  v86 = swift_allocObject();
  v42 = v40;
  sub_1E5E1EA08(v38, v86 + v40, v41);
  sub_1E5E1DD0C(v37, v38, v39);
  sub_1E5DF650C(v105, &v115);
  v43 = v108;
  v44 = *(v108 + 16);
  v79 = v108 + 16;
  v80 = v44;
  v45 = v111;
  v44(v111, v114, v112);
  v46 = v103;
  v47 = (v103 + 87) & 0xFFFFFFFFFFFFFFF8;
  v77 = v47 + 8;
  v76 = v47;
  v48 = (v47 + 8 + *(v43 + 80)) & ~*(v43 + 80);
  v49 = swift_allocObject();
  v50 = v97;
  sub_1E5E1EA08(v38, v49 + v42, v97);
  sub_1E5DF599C(&v115, v49 + v104);
  v85 = v49;
  v51 = (v49 + v46);
  v52 = *(a4 + 48);
  v51[2] = *(a4 + 32);
  v51[3] = v52;
  v51[4] = *(a4 + 64);
  v53 = *(a4 + 16);
  *v51 = *a4;
  v51[1] = v53;
  v54 = v107;
  *(v49 + v47) = v107;
  v55 = v49 + v48;
  v56 = v112;
  (*(v43 + 32))(v55, v45, v112);
  v57 = v100;
  v58 = v101;
  sub_1E5E1DD0C(v100, v38, v101);
  sub_1E5DF650C(v105, &v115);
  v59 = swift_allocObject();
  v60 = v98;
  sub_1E5E1EA08(v38, v59 + v98, v50);
  sub_1E5DF599C(&v115, v59 + v104);
  v61 = (v59 + v103);
  v105 = v59;
  v62 = *(a4 + 48);
  v61[2] = *(a4 + 32);
  v61[3] = v62;
  v61[4] = *(a4 + 64);
  v63 = *(a4 + 16);
  *v61 = *a4;
  v61[1] = v63;
  *(v59 + v76) = v54;
  sub_1E5E1DD0C(v57, v38, v58);
  v104 = swift_allocObject();
  sub_1E5E1EA08(v38, v104 + v60, v50);
  sub_1E5DFD1CC(v113, v110, &qword_1ED074410, &qword_1E65F0B78);
  v80(v111, v114, v56);
  v103 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v102 = type metadata accessor for ArtworkDescriptor(0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v98 = type metadata accessor for ContextMenu(0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v83 = type metadata accessor for ItemContext(0);
  v82 = type metadata accessor for ItemMetrics(0);
  v81 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v79 = type metadata accessor for SectionMetrics(0);
  v78 = type metadata accessor for ViewDescriptor(0);
  v77 = sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v76 = sub_1E60731B0();
  v75[5] = sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v75[4] = sub_1E5FEB2FC();
  v75[3] = sub_1E60C08DC();
  v75[2] = sub_1E60C15C0();
  v75[1] = sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v66 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  *&v115 = v65;
  *(&v115 + 1) = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v115 = v64;
  *(&v115 + 1) = OpaqueTypeConformance2;
  v75[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E64A33B8(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v68 = v90;
  sub_1E65DC198();
  (*(v108 + 8))(v114, v112);
  sub_1E5DFE50C(v113, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v69 = v91;
  v70 = v94;
  sub_1E5FEE4C8();
  v71 = *(v95 + 8);
  v71(v68, v70);
  v72 = v92;
  sub_1E5FEE4C8();
  v71(v69, v70);
  v73 = v93;
  sub_1E5FEE4C8();
  v71(v72, v70);
  sub_1E5FEE4C8();
  return (v71)(v73, v70);
}

uint64_t sub_1E649DE44(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E649DFC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkDescriptor(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E64FCC04(v6);
  type metadata accessor for AppComposer(0);
  v11 = sub_1E65DAE38();
  v12 = sub_1E65DAE38();
  v13 = sub_1E65E4B48();
  v14 = 4.0;
  if (v13)
  {
    v14 = 8.0;
  }

  v15 = 16.0;
  if (v13)
  {
    v15 = 18.0;
  }

  if (v11 == v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v11 == v12)
  {
    v17 = 12.0;
  }

  else
  {
    v17 = 8.0;
  }

  sub_1E5E1EA08(v6, v10, type metadata accessor for ArtworkContent);
  *(v10 + v8[7]) = MEMORY[0x1E69E7CD0];
  v18 = (v10 + v8[8]);
  *v18 = 0.0;
  v18[1] = v16;
  v18[2] = v16;
  v18[3] = v17;
  *(v10 + v8[9]) = 1;
  v19 = (v10 + v8[10]);
  *v19 = 0;
  v19[1] = 0;
  sub_1E64D2DD0(v10, a1, a2);
  v20 = sub_1E65E4B98();
  v22 = v21;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v10, a1, v23);
  sub_1E64A3400(v10, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v25 = (v23 + *(result + 36));
  *v25 = v20;
  v25[1] = v22;
  return result;
}

uint64_t sub_1E649E1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a3;
  v53 = type metadata accessor for CanvasTaskIdentifier(0);
  v4 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v48 - v6;
  v50 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RouteDestination(0);
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v48 - v12);
  v59 = sub_1E65E3578();
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ProgramDetailItemContext(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  sub_1E5E1DD0C(a1, v17, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1E5E1EA08(v17, v23, type metadata accessor for ProgramDetailItemContext);
    sub_1E5E1DD0C(v23, v21, type metadata accessor for ProgramDetailItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v56;
      (*(v56 + 32))(v58, v21, v59);
      v25 = sub_1E65E3548();
      v27 = v26;
      swift_storeEnumTagMultiPayload();
      *v13 = v25;
      v13[1] = v27;
      type metadata accessor for RouteResource(0);
      swift_storeEnumTagMultiPayload();
      sub_1E5E1EA08(v8, v13 + *(v9 + 20), type metadata accessor for RouteSource);
      *(v13 + *(v9 + 24)) = MEMORY[0x1E69E7CD0];
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
      v29 = v28[12];
      v30 = v28[16];
      v49 = v28[20];
      v50 = v29;
      v31 = v60;
      v32 = (v60 + v28[24]);
      v33 = v52;
      sub_1E5E1DD0C(v13, v52, type metadata accessor for RouteDestination);
      sub_1E5E1DD0C(v33, v51, type metadata accessor for CanvasTaskIdentifier);
      sub_1E64A33B8(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier, &unk_1E65F55A8);
      sub_1E65E6848();
      sub_1E64A3400(v33, type metadata accessor for CanvasTaskIdentifier);
      v34 = *MEMORY[0x1E6999B50];
      v35 = sub_1E65E4EB8();
      (*(*(v35 - 8) + 104))(v31 + v30, v34, v35);
      v36 = *MEMORY[0x1E6999B48];
      v37 = sub_1E65E4EA8();
      (*(*(v37 - 8) + 104))(v31 + v49, v36, v37);
      sub_1E5DF650C(v57, v61);
      v38 = v55;
      sub_1E5E1DD0C(v13, v55, type metadata accessor for RouteDestination);
      v39 = (*(v54 + 80) + 56) & ~*(v54 + 80);
      v40 = swift_allocObject();
      sub_1E5DF599C(v61, v40 + 16);
      sub_1E5E1EA08(v38, v40 + v39, type metadata accessor for RouteDestination);
      *v32 = &unk_1E6606140;
      v32[1] = v40;
      sub_1E65E6068();
      sub_1E64A3400(v13, type metadata accessor for RouteDestination);
      (*(v24 + 8))(v58, v59);
      sub_1E64A3400(v23, type metadata accessor for ProgramDetailItemContext);
      v41 = *MEMORY[0x1E6999AD8];
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
      v43 = *(v42 - 8);
      (*(v43 + 104))(v31, v41, v42);
      return (*(v43 + 56))(v31, 0, 1, v42);
    }

    sub_1E64A3400(v23, type metadata accessor for ProgramDetailItemContext);
    v46 = v21;
    v45 = type metadata accessor for ProgramDetailItemContext;
  }

  else
  {
    v45 = type metadata accessor for ItemContext;
    v46 = v17;
  }

  sub_1E64A3400(v46, v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  return (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
}

uint64_t sub_1E649E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_1E65E0438();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v4[9] = swift_task_alloc();
  v4[10] = sub_1E65E03F8();
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v4[22] = swift_task_alloc();
  sub_1E65D72D8();
  v4[23] = swift_task_alloc();
  sub_1E65D7848();
  v4[24] = swift_task_alloc();
  sub_1E65E5C28();
  v4[25] = swift_task_alloc();
  v7 = sub_1E65D76F8();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = sub_1E65E2F28();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v9 = sub_1E65E2F88();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  v10 = sub_1E65E32E8();
  v4[37] = v10;
  v4[38] = *(v10 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E649EDF8, 0, 0);
}

uint64_t sub_1E649EDF8()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_1E6215038(*(v0 + 32), *(v0 + 40)), (v3 & 1) != 0))
  {
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);
    (*(v9 + 16))(v7, *(v1 + 56) + *(v9 + 72) * v2, v8);

    sub_1E65E2ED8();
    (*(v9 + 8))(v7, v8);
    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E699EAC8])
    {
      v11 = *(v0 + 304);
      v10 = *(v0 + 312);
      v13 = *(v0 + 288);
      v12 = *(v0 + 296);
      v15 = *(v0 + 216);
      v14 = *(v0 + 224);
      v16 = *(v0 + 208);
      v65 = *(v0 + 24);
      (*(*(v0 + 280) + 96))(v13, *(v0 + 272));
      (*(v11 + 32))(v10, v13, v12);

      MEMORY[0x1E694D7C0](45, 0xE100000000000000);
      sub_1E65D76E8();
      v17 = sub_1E65D76C8();
      v19 = v18;
      (*(v15 + 8))(v14, v16);
      MEMORY[0x1E694D7C0](v17, v19);

      v20 = *(v65 + *(type metadata accessor for AppComposer(0) + 20) + 8);
      if (v20 >= 2)
      {
        if (v20 == 2)
        {
          return sub_1E65E69D8();
        }

        v45 = *(v0 + 240);
        v46 = *(v0 + 160);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
        (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
        *v46 = 2;
        v48 = *MEMORY[0x1E699D848];
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
        (*(*(v49 - 8) + 104))(v46, v48, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_1E65E5BA8();
        type metadata accessor for LocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v22 = [objc_opt_self() bundleForClass_];
        sub_1E65D77C8();
        sub_1E65E5D48();
        if (qword_1EE2D7270 != -1)
        {
          swift_once();
        }

        v23 = *(v0 + 240);
        v24 = *(v0 + 176);
        v25 = *(v0 + 168);
        v26 = *(v0 + 128);
        v27 = *(v0 + 104);
        v66 = *(v0 + 96);
        v28 = sub_1E65D7348();
        __swift_project_value_buffer(v28, qword_1EE2EA268);
        sub_1E65E5D38();

        v29 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
        (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
        v30 = type metadata accessor for ActionButtonDescriptor(0);
        (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
        sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
        sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
        sub_1E65E0458();
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
        (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v32 = *(v27 + 8);
        v32(v26, v66);
        v33 = *(v0 + 160);
        if (*(v0 + 321) > 2u)
        {
          v36 = *(v0 + 152);
          v37 = *(v0 + 120);
          v38 = *(v0 + 96);
          swift_getKeyPath();
          sub_1E65E4EC8();

          sub_1E65E0678();
          v32(v37, v38);
          v39 = sub_1E65E07C8();
          v40 = 2;
          if (v39)
          {
            v40 = 4;
          }

          *v36 = v40;
          v36[1] = 0x4034000000000000;
          v41 = *MEMORY[0x1E699D840];
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
          (*(*(v42 - 8) + 104))(v36, v41, v42);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1E5FAB460(v36, v33, &qword_1ED072650, &qword_1E65EB968);
        }

        else
        {
          *v33 = 1;
          swift_storeEnumTagMultiPayload();
        }

        v43 = *(v0 + 112);
        v44 = *(v0 + 96);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v32(v43, v44);
        if (*(v0 + 320) <= 2u)
        {
          sub_1E65E0AC8();
LABEL_24:
          v63 = *(v0 + 304);
          v64 = *(v0 + 296);
          v51 = *(v0 + 232);
          v50 = *(v0 + 240);
          v62 = *(v0 + 312);
          v52 = *(v0 + 160);
          v53 = *(v0 + 144);
          v54 = *(v0 + 72);
          v60 = *(v0 + 64);
          v55 = *(v0 + 56);
          v61 = *(v0 + 48);
          v56 = *(v0 + 88);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073018, &qword_1E65ECE70);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1E65EA670;
          sub_1E5DFD1CC(v52, v53, &qword_1ED072650, &qword_1E65EB968);
          sub_1E5DFD1CC(v50, v51, &qword_1ED072648, &qword_1E65EB960);
          v57 = sub_1E65E32C8();
          v58 = swift_task_alloc();
          *(v58 + 16) = v56;
          sub_1E5F9FD68(sub_1E64A3398, v58, v57);

          v59 = type metadata accessor for SectionMetrics(0);
          (*(*(v59 - 8) + 56))(v54, 1, 1, v59);
          (*(v55 + 104))(v60, *MEMORY[0x1E699D7D8], v61);
          type metadata accessor for ActionButtonDescriptor(0);
          type metadata accessor for ArtworkDescriptor(0);
          type metadata accessor for ContextMenu(0);
          type metadata accessor for ItemContext(0);
          type metadata accessor for ItemMetrics(0);
          type metadata accessor for SectionHeaderSubtitleDescriptor(0);
          type metadata accessor for ViewDescriptor(0);
          sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
          sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
          sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
          sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
          sub_1E64A33B8(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
          sub_1E5DF11E0();
          sub_1E64A33B8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
          sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
          sub_1E65E0418();
          sub_1E5DFE50C(v52, &qword_1ED072650, &qword_1E65EB968);
          sub_1E5DFE50C(v50, &qword_1ED072648, &qword_1E65EB960);
          (*(v63 + 8))(v62, v64);
          sub_1E64A3400(v56, MEMORY[0x1E699D780]);
          goto LABEL_11;
        }
      }

      sub_1E65E0A68();
      goto LABEL_24;
    }

    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
  }

  else
  {
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_11:

  v34 = *(v0 + 8);

  return v34(v67);
}

uint64_t sub_1E649FC44(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v7);

  sub_1E65E3538();
  type metadata accessor for ProgramDetailItemContext(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DD0C(a2, v6, MEMORY[0x1E699D780]);
  sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E65E04D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E649FE50(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D9CC8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65E3578();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for ItemContext(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for ProgramDetailItemContext(0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64A0088, 0, 0);
}

unint64_t sub_1E64A0088()
{
  v1 = v0[20];
  v78 = v0[17];
  v2 = v0[8];
  v3 = v0[2];
  v4 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v87 = (v1 + 8);
  v80 = (v2 + 8);
  v81 = (v2 + 32);
  v75 = (v1 + 40);
  v77 = (v1 + 32);
  v88 = v3;

  v10 = 0;
  v84 = v1;
  v85 = v9;
LABEL_4:
  v82 = v4;
  v0[24] = v4;
  v11 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = *(v1 + 72);
    v14 = *(v1 + 16);
    v14(v0[23], *(v88 + 48) + v13 * (v12 | (v10 << 6)), v0[19]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v73 = v13;
      v17 = v0[17];
      v16 = v0[18];
      sub_1E5E1EA08(v0[13], v16, type metadata accessor for ProgramDetailItemContext);
      sub_1E5E1DD0C(v16, v17, type metadata accessor for ProgramDetailItemContext);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v19 = v0[17];
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v0[10];
        v21 = v0[7];
        (*v81)(v20, v19, v21);
        v22 = sub_1E65E3548();
        v24 = v23;
        (*v80)(v20, v21);
      }

      else
      {
        v22 = *v19;
        v24 = *(v78 + 8);
      }

      v14(v0[22], v0[23], v0[19]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v82;
      result = sub_1E6215038(v22, v24);
      v28 = v82[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        v32 = v27;
        if (v82[3] >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = result;
            sub_1E6424B84();
            result = v43;
          }
        }

        else
        {
          sub_1E641BE8C(v31, isUniquelyReferenced_nonNull_native);
          result = sub_1E6215038(v22, v24);
          if ((v32 & 1) != (v33 & 1))
          {
LABEL_55:

            return sub_1E65E6C68();
          }
        }

        v34 = v0[22];
        v35 = v0[23];
        v36 = v0[19];
        v83 = v0[18];
        if (v32)
        {
          v37 = v0[23];
          v38 = result;

          v4 = v90;
          (*v75)(v90[7] + v38 * v73, v34, v36);
          sub_1E64A3400(v83, type metadata accessor for ProgramDetailItemContext);
          (*v87)(v37, v36);
LABEL_25:
          v1 = v84;
          v9 = v85;
          goto LABEL_4;
        }

        v39 = v22;
        v4 = v90;
        v90[(result >> 6) + 8] |= 1 << result;
        v40 = (v90[6] + 16 * result);
        *v40 = v39;
        v40[1] = v24;
        (*v77)(v90[7] + result * v73, v34, v36);
        sub_1E64A3400(v83, type metadata accessor for ProgramDetailItemContext);
        result = (*v87)(v35, v36);
        v41 = v90[2];
        v30 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (!v30)
        {
          v90[2] = v42;
          goto LABEL_25;
        }
      }

      __break(1u);
      return result;
    }

    v15 = v0[13];
    (*v87)(v0[23], v0[19]);
    sub_1E64A3400(v15, type metadata accessor for ItemContext);
    v11 = v10;
    v1 = v84;
    v9 = v85;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v44 = v0[5];

  v45 = -1;
  v46 = -1 << *(v88 + 32);
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  v47 = v45 & *(v88 + 56);
  v48 = (63 - v46) >> 6;
  v79 = v44;

  v49 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v0[25] = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v54 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_54;
    }

    if (v54 >= v48)
    {
      break;
    }

    v47 = *(v5 + 8 * v54);
    ++v49;
    if (v47)
    {
      v86 = v50;
LABEL_37:
      v55 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      (*(v1 + 16))(v0[21], *(v88 + 48) + *(v1 + 72) * (v55 | (v54 << 6)), v0[19]);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v57 = v0[15];
        v56 = v0[16];
        sub_1E5E1EA08(v0[12], v56, type metadata accessor for ProgramDetailItemContext);
        sub_1E5E1DD0C(v56, v57, type metadata accessor for ProgramDetailItemContext);
        v58 = swift_getEnumCaseMultiPayload();
        v59 = v0[21];
        v60 = v0[19];
        v61 = v0[15];
        if (v58 != 1)
        {
          sub_1E64A3400(v0[16], type metadata accessor for ProgramDetailItemContext);
          (*v87)(v59, v60);
          v53 = v61;
          v52 = type metadata accessor for ProgramDetailItemContext;
          goto LABEL_31;
        }

        v62 = v0[9];
        v74 = v0[7];
        v76 = v0[16];
        (*v81)(v62, v61);
        sub_1E65E3548();
        sub_1E65E3558();
        sub_1E65D9C88();
        (*v80)(v62, v74);
        sub_1E64A3400(v76, type metadata accessor for ProgramDetailItemContext);
        (*v87)(v59, v60);
        v50 = v86;
        v63 = v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1E64F610C(0, v86[2] + 1, 1, v86);
        }

        v65 = v50[2];
        v64 = v50[3];
        if (v65 >= v64 >> 1)
        {
          v50 = sub_1E64F610C((v64 > 1), v65 + 1, 1, v50);
        }

        v66 = v0[6];
        v67 = v0[4];
        v50[2] = v65 + 1;
        (*(v79 + 32))(v50 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v65, v66, v67);
        v49 = v54;
        v1 = v63;
        v0[25] = v50;
        if (!v47)
        {
          continue;
        }
      }

      else
      {
        v51 = v0[12];
        (*v87)(v0[21], v0[19]);
        v52 = type metadata accessor for ItemContext;
        v53 = v51;
LABEL_31:
        sub_1E64A3400(v53, v52);
        v49 = v54;
        v50 = v86;
        v0[25] = v86;
        if (!v47)
        {
          continue;
        }
      }

LABEL_32:
      v86 = v50;
      v54 = v49;
      goto LABEL_37;
    }
  }

  if (v50[2])
  {
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v68 = CatalogService.fetchRemoteCatalogLockups.getter();
    v0[26] = v69;
    v89 = (v68 + *v68);
    v70 = swift_task_alloc();
    v0[27] = v70;
    *v70 = v0;
    v70[1] = sub_1E64A0A74;

    return (v89)(19, v50);
  }

  else
  {

    v71 = v0[1];
    v72 = MEMORY[0x1E69E7CD0];

    return v71(v72);
  }
}

uint64_t sub_1E64A0A74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1E64A0D1C;
  }

  else
  {

    *(v4 + 232) = a1;
    v5 = sub_1E64A0BAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E64A0BAC()
{
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = sub_1E6404CB8(sub_1E64A337C, v4, v1);

  v8 = sub_1E600A848(v5);

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_1E64A0D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64A0E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v206 = a3;
  v228 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v173 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v204 = &v173 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v202 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v215 = &v173 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v214 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v226 = &v173 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v203 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v227 = &v173 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v189 = &v173 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v187 = &v173 - v26;
  v186 = sub_1E65DAC98();
  v184 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v181 = &v173 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v188);
  v182 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1E65DA0B8();
  v183 = *(v185 - 8);
  v29 = MEMORY[0x1EEE9AC00](v185);
  v180 = &v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v198 = &v173 - v31;
  v179 = sub_1E65D9D58();
  v178 = *(v179 - 8);
  v32 = MEMORY[0x1EEE9AC00](v179);
  v177 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v176 = &v173 - v34;
  v194 = sub_1E65D8BB8();
  v35 = MEMORY[0x1EEE9AC00](v194);
  v195 = &v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v205 = &v173 - v37;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v38 = MEMORY[0x1EEE9AC00](v197);
  v196 = &v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v225 = (&v173 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v210 = &v173 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v218 = (&v173 - v45);
  MEMORY[0x1EEE9AC00](v44);
  v224 = &v173 - v46;
  v232 = sub_1E65D72D8();
  v223 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v231 = &v173 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v192 = &v173 - v49;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v190 = *(v191 - 1);
  MEMORY[0x1EEE9AC00](v191);
  v51 = &v173 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v173 - v53;
  v213 = sub_1E65D9AC8();
  v230 = *(v213 - 8);
  v55 = MEMORY[0x1EEE9AC00](v213);
  v193 = &v173 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v216 = &v173 - v57;
  v201 = sub_1E65D7848();
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v233 = &v173 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for ItemContext(0);
  v59 = MEMORY[0x1EEE9AC00](v199);
  v211 = &v173 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v222 = &v173 - v61;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v207 = *(v208 - 8);
  v62 = MEMORY[0x1EEE9AC00](v208);
  v221 = &v173 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v173 - v64;
  v66 = sub_1E65E03F8();
  v67 = MEMORY[0x1EEE9AC00](v66);
  v220 = &v173 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v209 = &v173 - v69;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v212 = *(v219 - 8);
  v70 = MEMORY[0x1EEE9AC00](v219);
  v72 = &v173 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v217 = &v173 - v73;
  v229 = a1;
  v74 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v76 = a2;
  v175 = v8;
  v77 = sub_1E6215038(v74, v75);
  v79 = v78;

  if ((v79 & 1) == 0)
  {
LABEL_7:
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v87 - 8) + 56))(v228, 1, 1, v87);
  }

  v80 = v212;
  v81 = *(v76 + 56) + *(v212 + 72) * v77;
  v82 = v219;
  (*(v212 + 16))(v72, v81, v219);
  (*(v80 + 32))(v217, v72, v82);
  v174 = v206 + *(type metadata accessor for AppComposer(0) + 20);
  v83 = *(v174 + 8);
  if (v83 >= 2)
  {
    v85 = v213;
    if (v83 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    v86 = v209;
    sub_1E65E0A68();
  }

  else
  {
    swift_getKeyPath();
    sub_1E65E4EC8();

    v84 = v208;
    sub_1E65E0708();
    (*(v207 + 8))(v65, v84);
    v85 = v213;
    v86 = v209;
    if (v234 > 2u)
    {
      sub_1E65E0A68();
    }

    else
    {
      sub_1E65E0AC8();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1E5E1DD0C(v86, v220, MEMORY[0x1E699D780]);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v89 = v192;
  v90 = v191;
  sub_1E65E4C98();
  sub_1E60EEE88(v54);
  sub_1E5DFE50C(v89, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v190 + 8))(v51, v90);
  v91 = v230;
  v92 = *(v230 + 48);
  if (v92(v54, 1, v85) == 1)
  {
    MEMORY[0x1E6941490]();
    v93 = v92(v54, 1, v85);
    v94 = v174;
    if (v93 != 1)
    {
      sub_1E5DFE50C(v54, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v91 + 32))(v216, v54, v85);
    v94 = v174;
  }

  v95 = *(type metadata accessor for AppEnvironment(0) + 136);
  v190 = sub_1E5F9B6D0(&unk_1F5FA8D40);
  v96 = sub_1E65D8248();
  v206 = v95;
  v97 = v94;
  sub_1E63C4134(v233, (v94 + v95), v96, v231);

  v192 = sub_1E65D80A8();
  v98 = sub_1E65D9AA8();
  v100 = v99;
  v101 = v193;
  MEMORY[0x1E6941490]();
  v102 = sub_1E65D9AA8();
  v104 = v103;
  v105 = *(v230 + 8);
  v230 += 8;
  v105(v101, v85);
  v237 = v83;
  v191 = v105;
  if (v98 == v102 && v100 == v104)
  {
  }

  else
  {
    v106 = sub_1E65E6C18();

    if ((v106 & 1) == 0)
    {
      v110 = sub_1E65D8198();
      v111 = sub_1E65D9AA8();
      v113 = sub_1E637CA94(v111, v112, v110);

      v109 = v97;
      if (v113)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v114 = *(sub_1E65DADF8() - 8);
        v115 = *(v114 + 72);
        v116 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1E65EB9E0;
        v118 = (v117 + v116);
        *v118 = sub_1E65D9AA8();
        v118[1] = v119;
        swift_storeEnumTagMultiPayload();
        *(v118 + v115) = 1;
        swift_storeEnumTagMultiPayload();
        v120 = sub_1E65D80A8();
        v234 = v117;
        sub_1E5FA9E2C(v120);
        v192 = v234;
      }

      v107 = v205;
      v108 = v195;
      goto LABEL_23;
    }
  }

  v107 = v205;
  v108 = v195;
  v109 = v97;
LABEL_23:
  v121 = v190;
  v122 = *(sub_1E65D8068() + 16);

  if (v122)
  {
    v123 = sub_1E65D8068();
    v124 = v224;
    sub_1E63C4134(v233, (v109 + v206), v123, v224);

    v125 = 0;
  }

  else
  {
    v125 = 1;
    v124 = v224;
  }

  v126 = *(v223 + 56);
  v194 = v223 + 56;
  v193 = v126;
  (v126)(v124, v125, 1, v232);
  v195 = sub_1E63B0704(v121);

  sub_1E65D8128();
  sub_1E5E1DD0C(v107, v108, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v127 = v183;
    v128 = v198;
    v129 = v108;
    v130 = v185;
    (*(v183 + 32))(v198, v129, v185);
    v131 = v180;
    (*(v127 + 16))(v180, v128, v130);
    v132 = v181;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    v107 = v205;
    (*(v184 + 8))(v132, v186);
    sub_1E65DA0A8();
    sub_1E64A33B8(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v133 = v196;
    sub_1E65DC438();
    v134 = *(v127 + 8);
    v134(v131, v130);
    v134(v198, v130);
    v109 = v174;
  }

  else
  {
    v135 = v178;
    v136 = v176;
    v137 = v179;
    (*(v178 + 32))(v176, v108, v179);
    v138 = v177;
    (*(v135 + 16))(v177, v136, v137);
    v133 = v196;
    sub_1E6134678(v138, v196);
    (*(v135 + 8))(v136, v137);
  }

  sub_1E64A3400(v107, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v133, v225, &qword_1ED074530, &qword_1E65F0CA8);
  v139 = sub_1E65D81E8();
  v142 = v192;
  v143 = v193;
  if (v141 == -1)
  {
    v147 = 4;
  }

  else
  {
    v234 = v139;
    v235 = v140;
    v236 = v141 & 1;
    v144 = v139;
    v145 = v140;
    v146 = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v144, v145, v146);
    v147 = v238;
  }

  LODWORD(v205) = v147;
  v148 = v218;
  v149 = v232;
  (*(v223 + 16))(v218, v231, v232);
  v150 = 1;
  v143(v148, 0, 1, v149);
  sub_1E65D8158();
  v151 = v210;
  if (*(v142 + 16))
  {
    sub_1E63C4134(v233, (v109 + v206), v142, v210);
    v150 = 0;
  }

  v143(v151, v150, 1, v232);
  sub_1E65D8178();
  v152 = type metadata accessor for ActionButtonDescriptor(0);
  v206 = v152;
  v153 = *(*(v152 - 8) + 56);
  v154 = v215;
  v153();
  v155 = v202;
  (v153)(v202, 1, 1, v152);
  v156 = sub_1E65D8088();
  v158 = v157;
  v198 = v157;
  v159 = sub_1E65D80C8();
  v161 = v160;
  v163 = v162;
  v164 = sub_1E65D81B8();
  v163 &= 1u;
  v172 = v156;
  v171 = v154;
  v165 = v210;
  v166 = v214;
  sub_1E63A0574(v221, v225, v195, v205, v218, v226, v210, v214, v227, v224, v237, v171, v155, v172, v158, v159, v161, v163, v164, v167, 7u);

  sub_1E5F87058(v159, v161, v163);

  sub_1E5DFE50C(v155, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v215, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v166, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v165, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v226, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v218, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1DD0C(v222, v211, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v227, v203, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v204);
  sub_1E622BB88(v231, v175);
  v229 = type metadata accessor for ArtworkDescriptor(0);
  v226 = type metadata accessor for ContextMenu(0);
  v218 = type metadata accessor for ItemMetrics(0);
  v215 = type metadata accessor for ViewDescriptor(0);
  v214 = sub_1E64A33B8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E64A33B8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E64A33B8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E64A33B8(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E64A33B8(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E64A33B8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v168 = v228;
  sub_1E65E0488();
  sub_1E5DFE50C(v227, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v225, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v224, &qword_1ED072D90, &qword_1E66040F0);
  (*(v223 + 8))(v231, v232);
  (v191)(v216, v213);
  (*(v200 + 8))(v233, v201);
  sub_1E64A3400(v222, type metadata accessor for ItemContext);
  (*(v207 + 8))(v221, v208);
  v169 = MEMORY[0x1E699D780];
  sub_1E64A3400(v220, MEMORY[0x1E699D780]);
  sub_1E64A3400(v209, v169);
  (*(v212 + 8))(v217, v219);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v170 - 8) + 56))(v168, 0, 1, v170);
}

uint64_t sub_1E64A2BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E649CD78(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E64A2C7C(char *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E649DE44(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E64A2D94(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E64A2E28(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E2F38() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v7 + *(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFA78C;

  return sub_1E637FACC(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_1E64A2FD0(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E649ABF8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E64A30C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E649A65C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_1E64A318C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E649E950(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E64A32A4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E649FE50(a1, v1 + v5);
}

uint64_t sub_1E64A33B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E64A3400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64A3460(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E64A3544(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 56) + 16 * v11);
        v13 = v12[1];
        if (v13)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v15 = (*(a1 + 48) + 16 * v11);
      v31 = v15[1];
      v32 = *v15;
      v30 = *v12;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_1E6419E3C(v16 + 1, 1);
        v2 = v33;
      }

      else
      {
      }

      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v31;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = 16 * v21;
      v28 = (*(v2 + 48) + v27);
      *v28 = v32;
      v28[1] = v22;
      v29 = (*(v2 + 56) + v27);
      *v29 = v30;
      v29[1] = v13;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v31;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v14);
      ++v9;
      if (v6)
      {
        v9 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E64A37AC()
{
  v28 = sub_1E65D70A8();
  v0 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1E65D74D8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1E601C0D8(0, v3, 0);
    v4 = v29;
    v6 = *(v0 + 16);
    v5 = v0 + 16;
    v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v24 = *(v5 + 56);
    v25 = v6;
    v22[1] = v2;
    v23 = (v5 - 8);
    v26 = v5;
    do
    {
      v9 = v27;
      v8 = v28;
      v25(v27, v7, v28);
      v10 = sub_1E65D7088();
      v12 = v11;
      v13 = sub_1E65D7098();
      v15 = v14;
      (*v23)(v9, v8);
      v29 = v4;
      v17 = v4[2];
      v16 = v4[3];
      if (v17 >= v16 >> 1)
      {
        sub_1E601C0D8((v16 > 1), v17 + 1, 1);
        v4 = v29;
      }

      v4[2] = v17 + 1;
      v18 = &v4[4 * v17];
      v18[4] = v10;
      v18[5] = v12;
      v18[6] = v13;
      v18[7] = v15;
      v7 += v24;
      --v3;
    }

    while (v3);

    if (v4[2])
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = MEMORY[0x1E69E7CC8];
    goto LABEL_10;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795D8, &qword_1E6601708);
  v19 = sub_1E65E6A28();
LABEL_10:
  v29 = v19;
  sub_1E64A3AA8(v4, 1, &v29);
  v20 = sub_1E64A3544(v29);

  return v20;
}

uint64_t sub_1E64A3A24()
{
  v0 = sub_1E64A37AC();
  if (*(v0 + 16) && (v1 = sub_1E6215038(0x696669746E656469, 0xEA00000000007265), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1E64A3AA8(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = *a3;

  v10 = sub_1E6215038(v6, v5);
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
    sub_1E641A3AC(v15, v4 & 1);
    v10 = sub_1E6215038(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1E65E6C68();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1E6423ACC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
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
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
    sub_1E65E69B8();
    MEMORY[0x1E694D7C0](39, 0xE100000000000000);
    sub_1E65E69D8();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v8 = 1;
    while (v8 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v7 = *v4;
      v27 = *a3;

      v28 = sub_1E6215038(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1E641A3AC(v32, 1);
        v28 = sub_1E6215038(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v7;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1E64A3E58(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a4;
  *(v4 + 228) = a3;
  *(v4 + 64) = a1;
  sub_1E65E6058();
  *(v4 + 88) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v4 + 96) = v6;
  *(v4 + 104) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E64A3EF8, v6, v5);
}

uint64_t sub_1E64A3EF8()
{
  if (*(v0 + 228))
  {
    v1 = type metadata accessor for AppComposer(0);
    *(v0 + 144) = v1;
    *(v0 + 224) = *(v1 + 20);
    *(v0 + 152) = type metadata accessor for AppEnvironment(0);
    v2 = SessionService.makeQueueSessionItems.getter();
    *(v0 + 160) = v3;
    v15 = (v2 + *v2);
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_1E64A42F0;
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);

    return v15(v6, v5);
  }

  else
  {
    v8 = *(v0 + 64);
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v9 = PlayerService.makeQueueSessionViewController.getter();
    *(v0 + 112) = v10;
    v11 = sub_1E65D8CC8();
    v13 = v12;
    *(v0 + 120) = v12;
    v16 = (v9 + *v9);
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_1E64A4158;

    return v16(v8, v11, v13);
  }
}

uint64_t sub_1E64A4158(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1E64A4818;
  }

  else
  {

    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1E64A4284;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E64A4284()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E64A42F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);
  if (v1)
  {
    v7 = sub_1E64A4890;
  }

  else
  {
    v7 = sub_1E64A4434;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E64A4434()
{
  v15 = v0;
  v1 = v0[18];
  v2 = v0[10];

  v3 = PlayerService.makeQueueSessionViewController.getter();
  v0[24] = v4;
  sub_1E5FB9CA4(*(v2 + *(v1 + 36)), *(v2 + *(v1 + 36) + 8), &v13);
  v5 = v13;
  v6 = v14;
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v7 = 0xE700000000000000;
        v8 = 0x65726F6C707865;
      }

      else
      {
        if (v14 != 2)
        {
          goto LABEL_17;
        }

        v7 = 0xE600000000000000;
        v8 = 0x756F59726F66;
      }
    }

    else
    {
      v7 = 0xE500000000000000;
      v8 = 0x736E616C70;
    }

    goto LABEL_16;
  }

  if (v14 <= 4)
  {
    if (v14 == 3)
    {
      v7 = 0xE700000000000000;
      v8 = 0x7972617262696CLL;
    }

    else
    {
      v7 = 0xE600000000000000;
      v8 = 0x686372616573;
    }

    goto LABEL_16;
  }

  if (v14 == 5)
  {
    v7 = 0xE600000000000000;
    v8 = 0x7478654E7075;
LABEL_16:
    sub_1E5E07DA0(v13, v14);
    v5 = v8;
    v6 = v7;
    goto LABEL_17;
  }

  if (v14 == 6)
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_17:
  v0[25] = v6;
  v12 = (v3 + *v3);
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_1E64A466C;
  v10 = v0[22];

  return v12(v10, v5, v6);
}

uint64_t sub_1E64A466C(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1E64A4900;
  }

  else
  {

    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1E64A47AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E64A47AC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E64A4818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64A4890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64A4900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64A498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 72) = a7;
  *(v8 + 64) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1E65E5798();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  sub_1E65E6058();
  *(v8 + 104) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E64A4A90, v11, v10);
}

void sub_1E64A4A90()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for AppComposer(0);
  *(v0 + 200) = *(v2 + 20);
  *(v0 + 128) = type metadata accessor for AppEnvironment(0);
  v3 = SessionService.makeSessionConfiguration.getter();
  *(v0 + 136) = v4;
  sub_1E5FB9CA4(*(v1 + *(v2 + 36)), *(v1 + *(v2 + 36) + 8), &v14);
  v5 = v14;
  v6 = v15;
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v7 = 0xE700000000000000;
        v8 = 0x65726F6C707865;
      }

      else
      {
        if (v15 != 2)
        {
LABEL_17:
          v9 = v5;
          v10 = v6;
LABEL_18:
          *(v0 + 144) = v10;
          v13 = v3 + *v3;
          v11 = swift_task_alloc();
          *(v0 + 152) = v11;
          *v11 = v0;
          v11[1] = sub_1E64A4D00;
          v12 = *(v0 + 72);
          v18 = v9;
          v19 = v10;
          v17 = v12;

          __asm { BRAA            X8, X16 }
        }

        v7 = 0xE600000000000000;
        v8 = 0x756F59726F66;
      }
    }

    else
    {
      v7 = 0xE500000000000000;
      v8 = 0x736E616C70;
    }
  }

  else if (v15 > 4)
  {
    if (v15 != 5)
    {
      v9 = 0;
      v10 = 0;
      if (v15 == 6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v7 = 0xE600000000000000;
    v8 = 0x7478654E7075;
  }

  else if (v15 == 3)
  {
    v7 = 0xE700000000000000;
    v8 = 0x7972617262696CLL;
  }

  else
  {
    v7 = 0xE600000000000000;
    v8 = 0x686372616573;
  }

  sub_1E5E07DA0(v14, v15);
  v5 = v8;
  v6 = v7;
  goto LABEL_17;
}

uint64_t sub_1E64A4D00()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1E64A5114;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1E64A4E24;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E64A4E24()
{
  v1 = PlayerService.makeSessionViewController.getter();
  v0[21] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1E64A4F34;
  v4 = v0[12];

  return v6(v4);
}

uint64_t sub_1E64A4F34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1E64A5194;
  }

  else
  {
    v4[24] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1E64A5080;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E64A5080()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[24];

  return v4(v5);
}

uint64_t sub_1E64A5114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64A5194()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E64A5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 72) = a7;
  *(v8 + 64) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  *(v8 + 80) = swift_task_alloc();
  v9 = sub_1E65E5798();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  sub_1E65E6058();
  *(v8 + 112) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();
  *(v8 + 120) = v11;
  *(v8 + 128) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E64A5360, v11, v10);
}

void sub_1E64A5360()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for AppComposer(0);
  *(v0 + 208) = *(v3 + 20);
  *(v0 + 136) = type metadata accessor for AppEnvironment(0);
  v4 = SessionService.makeSampleContentSessionConfiguration.getter();
  *(v0 + 144) = v5;
  v6 = (v2 + *(v3 + 36));
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_1E65D96F8();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  sub_1E5FB9CA4(v7, v8, &v19);
  v10 = v19;
  v11 = v20;
  if (v20 <= 2)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        v12 = 0xE700000000000000;
        v13 = 0x65726F6C707865;
      }

      else
      {
        if (v20 != 2)
        {
LABEL_17:
          v14 = v10;
          v15 = v11;
LABEL_18:
          *(v0 + 152) = v15;
          v18 = v4 + *v4;
          v16 = swift_task_alloc();
          *(v0 + 160) = v16;
          *v16 = v0;
          v16[1] = sub_1E64A5614;
          v17 = *(v0 + 80);
          v23 = v14;
          v24 = v15;
          v22 = v17;

          __asm { BRAA            X8, X16 }
        }

        v12 = 0xE600000000000000;
        v13 = 0x756F59726F66;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      v13 = 0x736E616C70;
    }
  }

  else if (v20 > 4)
  {
    if (v20 != 5)
    {
      v14 = 0;
      v15 = 0;
      if (v20 == 6)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v12 = 0xE600000000000000;
    v13 = 0x7478654E7075;
  }

  else if (v20 == 3)
  {
    v12 = 0xE700000000000000;
    v13 = 0x7972617262696CLL;
  }

  else
  {
    v12 = 0xE600000000000000;
    v13 = 0x686372616573;
  }

  sub_1E5E07DA0(v19, v20);
  v10 = v13;
  v11 = v12;
  goto LABEL_17;
}

uint64_t sub_1E64A5614()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 168) = v0;

  sub_1E64A5BC0(v3);

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1E64A5AAC;
  }

  else
  {
    v6 = sub_1E64A57AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E64A57AC()
{
  v1 = PlayerService.makeSampleContentSessionViewController.getter();
  v0[22] = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1E64A58C0;
  v4 = v0[13];
  v5 = v0[9];

  return v7(v4, v5);
}

uint64_t sub_1E64A58C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1E64A5B24;
  }

  else
  {
    v4[25] = a1;
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1E64A5A0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E64A5A0C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[25];

  return v4(v5);
}

uint64_t sub_1E64A5AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E64A5B24()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E64A5BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E64A5C28()
{
  v0 = sub_1E65E3C48();
  __swift_allocate_value_buffer(v0, qword_1ED0966C0);
  __swift_project_value_buffer(v0, qword_1ED0966C0);
  return sub_1E65E3C58();
}

uint64_t sub_1E64A5C8C()
{
  v0 = sub_1E65E3C48();
  __swift_allocate_value_buffer(v0, qword_1EE2D4F38);
  __swift_project_value_buffer(v0, qword_1EE2D4F38);
  return sub_1E65E3C58();
}

uint64_t sub_1E64A5D14()
{
  v0 = sub_1E65E3C48();
  __swift_allocate_value_buffer(v0, qword_1EE2D4F10);
  __swift_project_value_buffer(v0, qword_1EE2D4F10);
  return sub_1E65E3C58();
}

uint64_t sub_1E64A5D9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E65E3C48();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1E64A5E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v105 = a3;
  v106 = a1;
  v115 = sub_1E65E2758();
  v112 = *(v115 - 8);
  v107 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E27D8();
  v104 = *(v7 - 8);
  v103 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v113 = &v84 - v10;
  v11 = type metadata accessor for AppComposer(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v96 = &v84 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v92 = &v84 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v91 = (&v84 - v20);
  v108 = v21;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v84 - v22;
  v118 = &v84 - v22;
  v109 = sub_1E65E29E8();
  v24 = MEMORY[0x1EEE9AC00](v109);
  v93 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  v100 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v84 - v27;
  v30 = v29;
  v31 = *(v29 + 16);
  v110 = v29 + 16;
  v111 = v31;
  v95 = &v84 - v27;
  v94 = a2;
  (v31)(&v84 - v27, a2);
  v86 = type metadata accessor for AppComposer;
  sub_1E5E1DD74(v4, v23, type metadata accessor for AppComposer);
  v99 = *(v30 + 80);
  v32 = v30;
  v33 = (v99 + 16) & ~v99;
  v34 = *(v12 + 80);
  v35 = swift_allocObject();
  v36 = *(v32 + 32);
  v117 = v35;
  v37 = v28;
  v38 = v109;
  v36(v35 + v33, v37, v109);
  v97 = v32 + 32;
  v98 = v36;
  v39 = v86;
  sub_1E5E1EA70(v118, v35 + ((v33 + v26 + v34) & ~v34), v86);
  v40 = v93;
  v111(v93, a2, v38);
  v118 = swift_allocObject();
  v36(v118 + v33, v40, v38);
  sub_1E65E5148();
  v41 = sub_1E65E5138();
  v42 = v116;
  v43 = v91;
  v44 = v39;
  sub_1E5E1DD74(v116, v91, v39);
  v45 = (v34 + 32) & ~v34;
  v46 = v108 + v45;
  v89 = v45;
  v47 = (v108 + v45) & 0xFFFFFFFFFFFFFFF8;
  v88 = v108 + v45;
  v48 = swift_allocObject();
  v93 = v48;
  v87 = &unk_1E6606198;
  v49 = v117;
  *(v48 + 16) = &unk_1E6606198;
  *(v48 + 24) = v49;
  sub_1E5E1EA70(v43, v48 + v45, v39);
  v46[v48] = 0;
  v50 = v48 + v47;
  v91 = sub_1E64A72E0;
  v51 = v118;
  *(v50 + 8) = sub_1E64A72E0;
  *(v50 + 16) = v51;
  v52 = (v48 + ((v47 + 31) & 0xFFFFFFFFFFFFFFF8));
  v53 = MEMORY[0x1E69AB380];
  *v52 = v41;
  v52[1] = v53;
  v54 = v41;
  v55 = v92;
  v56 = v39;
  sub_1E5E1DD74(v42, v92, v39);
  v57 = v108 + ((v34 + 48) & ~v34);
  v85 = (v34 + 48) & ~v34;
  v58 = swift_allocObject();
  v108 = v58;
  v59 = v87;
  v60 = v117;
  *(v58 + 16) = v87;
  *(v58 + 24) = v60;
  *(v58 + 32) = v41;
  v90 = v41;
  *(v58 + 40) = MEMORY[0x1E69AB380];
  sub_1E5E1EA70(v55, v58 + ((v34 + 48) & ~v34), v44);
  *(v58 + v57) = 0;
  v61 = (v58 + (v57 & 0xFFFFFFFFFFFFFFF8));
  v62 = v91;
  v63 = v118;
  *(v61 + 1) = v91;
  *(v61 + 2) = v63;
  v64 = v96;
  sub_1E5E1DD74(v116, v96, v56);
  v65 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v66[2] = v59;
  v66[3] = v60;
  v66[4] = v54;
  v66[5] = MEMORY[0x1E69AB380];
  sub_1E5E1EA70(v64, v66 + v85, v56);
  v67 = v66 + v65;
  *v67 = v62;
  *(v67 + 1) = v63;
  v67[16] = 0;
  v68 = v101;
  sub_1E5E1DD74(v116, v101, v56);
  v69 = swift_allocObject();
  v116 = v69;
  *(v69 + 16) = v59;
  *(v69 + 24) = v60;
  sub_1E5E1EA70(v68, v69 + v89, v56);
  v70 = sub_1E65E60A8();
  (*(*(v70 - 8) + 56))(v113, 1, 1, v70);
  v71 = MEMORY[0x1E699F460];
  v72 = v102;
  sub_1E5E1DD74(v105, v102, MEMORY[0x1E699F460]);
  v73 = v95;
  v74 = v109;
  v111(v95, v94, v109);
  v75 = v112;
  (*(v112 + 16))(v114, v106, v115);
  v76 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v77 = (v103 + v99 + v76) & ~v99;
  v78 = (v100 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v75 + 80) + v78 + 80) & ~*(v75 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  sub_1E5E1EA70(v72, v80 + v76, v71);
  v98(v80 + v77, v73, v74);
  v81 = (v80 + v78);
  *v81 = v90;
  v81[1] = MEMORY[0x1E69AB380];
  v81[2] = &unk_1E65EB918;
  v81[3] = v93;
  v81[4] = &unk_1E65FA770;
  v81[5] = v108;
  v81[6] = &unk_1E65EB920;
  v81[7] = v66;
  v81[8] = &unk_1E65FA780;
  v82 = v115;
  v81[9] = v116;
  (*(v112 + 32))(v80 + v79, v114, v82);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1E6059EAC(0, 0, v113, &unk_1E66061D0, v80);
}

uint64_t sub_1E64A6760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64A68A8, 0, 0);
}

uint64_t sub_1E64A68A8()
{
  sub_1E65E2988();
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = *MEMORY[0x1E69CBD48];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v5 + *(type metadata accessor for AppComposer(0) + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E64A6C40(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E29E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E64A6760(a1, v1 + v6, v1 + v9);
}

unint64_t sub_1E64A6D7C(uint64_t a1)
{
  v36 = sub_1E65D76F8();
  v2 = *(v36 - 8);
  v3 = MEMORY[0x1EEE9AC00](v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA190;
  *(inited + 32) = 3;
  v34 = inited + 32;
  v35 = a1;
  sub_1E65E29C8();
  v17 = sub_1E65E1FC8();
  v18 = *(v17 - 8);
  v32 = *(v18 + 48);
  if (v32(v15, 1, v17) == 1)
  {
    sub_1E5DFE50C(v15, &unk_1ED077750, &unk_1E66011C0);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_1E65E1FB8();
    (*(v18 + 8))(v15, v17);
    v19 = sub_1E65D76C8();
    v20 = v21;
    (*(v2 + 8))(v7, v36);
  }

  v37 = v19;
  v38 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5DF4B74(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80, MEMORY[0x1E69E7C78]);
  sub_1E65E6848();
  *(inited + 80) = 9;
  sub_1E65E2958();
  v22 = sub_1E65D76C8();
  v24 = v23;
  (*(v2 + 8))(v5, v36);
  v37 = v22;
  v38 = v24;
  sub_1E65E6848();
  *(inited + 128) = 0;
  sub_1E65E29C8();
  v25 = v32;
  v26 = v32(v13, 1, v17);
  if (v26 == 1)
  {
    sub_1E5DFE50C(v13, &unk_1ED077750, &unk_1E66011C0);
    v27 = 0;
  }

  else
  {
    v27 = sub_1E65E1FA8();
    (*(v18 + 8))(v13, v17);
  }

  v28 = v33;
  v37 = v27;
  LOBYTE(v38) = v26 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762B8, &qword_1E65F52F8);
  sub_1E64B54A0();
  sub_1E65E6848();
  *(inited + 176) = 7;
  sub_1E65E29C8();
  if (v25(v28, 1, v17) == 1)
  {
    sub_1E5DFE50C(v28, &unk_1ED077750, &unk_1E66011C0);
    v29 = 0;
  }

  else
  {
    sub_1E65E1F88();
    (*(v18 + 8))(v28, v17);
    v29 = sub_1E65E5F78();
  }

  v37 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787A8, &qword_1E65FD688);
  sub_1E633EEA8();
  sub_1E65E6848();
  v30 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  return v30;
}

unint64_t sub_1E64A72E0()
{
  v1 = *(sub_1E65E29E8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E64A6D7C(v2);
}

uint64_t sub_1E64A7340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v8 = sub_1E65D7908();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  v9 = sub_1E65E2BF8();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079428, &qword_1E6601580);
  v7[32] = swift_task_alloc();
  v10 = sub_1E65E27C8();
  v7[33] = v10;
  v7[34] = *(v10 - 8);
  v7[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v7[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A340, &qword_1E66061D8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v11 = sub_1E65E2A38();
  v7[41] = v11;
  v7[42] = *(v11 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v12 = sub_1E65E2698();
  v7[47] = v12;
  v7[48] = *(v12 - 8);
  v7[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075500, &qword_1E65F1B18);
  v7[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A348, &qword_1E66061E0);
  v7[57] = swift_task_alloc();
  v13 = sub_1E65D8C68();
  v7[58] = v13;
  v7[59] = *(v13 - 8);
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = type metadata accessor for PageMetricsClick(0);
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v14 = sub_1E65E2CB8();
  v7[84] = v14;
  v7[85] = *(v14 - 8);
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = swift_task_alloc();
  v7[90] = swift_task_alloc();
  v7[91] = swift_task_alloc();
  v7[92] = swift_task_alloc();
  v7[93] = swift_task_alloc();
  v15 = sub_1E65E2E58();
  v7[94] = v15;
  v7[95] = *(v15 - 8);
  v7[96] = swift_task_alloc();
  v7[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A350, &qword_1E66061E8);
  v7[98] = swift_task_alloc();
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v7[102] = sub_1E65E27D8();
  v7[103] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64A7ACC, 0, 0);
}

unint64_t sub_1E64A7ACC()
{
  sub_1E5E1DD74(*(v0 + 176), *(v0 + 824), MEMORY[0x1E699F460]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v128 = *(v0 + 824);
      v130 = v128[1];
      v129 = v128[2];
      if (!v130 || !v129)
      {

        goto LABEL_112;
      }

      v564 = *v128;
      v131 = *(v128 + 24);
      v133 = *(v0 + 448);
      v132 = *(v0 + 456);
      sub_1E65E2748();
      sub_1E60F0514(v132);
      sub_1E5DFE50C(v133, &qword_1ED075500, &qword_1E65F1B18);
      v134 = sub_1E65E2648();
      v135 = (*(*(v134 - 8) + 48))(v132, 1, v134);
      sub_1E5DFE50C(v132, &qword_1ED07A348, &qword_1E66061E0);
      v136 = *(v0 + 440);
      if (v131)
      {
        v137 = *MEMORY[0x1E69CC908];
        v138 = sub_1E65D9D78();
        v139 = *(v138 - 8);
        (*(v139 + 104))(v136, v137, v138);
        (*(v139 + 56))(v136, 0, 1, v138);
      }

      else
      {
        v488 = sub_1E65D9D78();
        (*(*(v488 - 8) + 56))(v136, 1, 1, v488);
      }

      v489 = *(v0 + 624);
      v490 = *(v0 + 536);
      v491 = *(v0 + 472);
      v572 = *(v0 + 464);
      v576 = *(v0 + 520);
      v492 = *(v0 + 424);
      v566 = v492;
      v569 = *(v0 + 440);
      v493 = *(v0 + 408);
      v563 = v493;
      v586 = *(v0 + 192);
      (*(v491 + 104))();
      v494 = sub_1E65D74E8();
      (*(*(v494 - 8) + 56))(v492, 1, 1, v494);
      v495 = sub_1E65DA208();
      (*(*(v495 - 8) + 56))(v493, 1, 1, v495);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EB9E0;
      *(inited + 32) = 9;
      *(v0 + 144) = v564;
      *(v0 + 152) = v130;
      sub_1E65E6848();
      *(inited + 80) = 12;
      *(v0 + 168) = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076108, &unk_1E65F4AF0);
      sub_1E61A8F10();
      sub_1E65E6848();
      v565 = sub_1E6427784(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      if (v135 == 1)
      {
        v497 = 0x6C50657461657243;
      }

      else
      {
        v497 = 0xD000000000000014;
      }

      if (v135 == 1)
      {
        v498 = 0xEA00000000006E61;
      }

      else
      {
        v498 = 0x80000001E66181B0;
      }

      v499 = v490[14];
      v500 = *MEMORY[0x1E69CBCC8];
      v501 = sub_1E65D8F28();
      (*(*(v501 - 8) + 104))(v489 + v499, v500, v501);
      v502 = v490[15];
      v503 = *MEMORY[0x1E69CC448];
      v504 = sub_1E65D9908();
      v505 = *(v504 - 8);
      (*(v505 + 104))(v489 + v502, v503, v504);
      (*(v505 + 56))(v489 + v502, 0, 1, v504);
      sub_1E5FAB460(v569, v489, &qword_1ED073578, &qword_1E65F0E60);
      (*(v491 + 32))(v489 + v490[5], v576, v572);
      sub_1E5FAB460(v566, v489 + v490[6], &qword_1ED072340, &qword_1E65EA410);
      *(v489 + v490[7]) = MEMORY[0x1E69E7CC0];
      sub_1E5FAB460(v563, v489 + v490[8], &qword_1ED073570, &unk_1E65F4570);
      v506 = (v489 + v490[9]);
      *v506 = 0;
      v506[1] = 0;
      v507 = (v489 + v490[10]);
      *v507 = 0;
      v507[1] = 0;
      *(v489 + v490[11]) = v565;
      v508 = (v489 + v490[12]);
      *v508 = 0;
      v508[1] = 0;
      v509 = (v489 + v490[13]);
      *v509 = v497;
      v509[1] = v498;
      v577 = (*(v586 + 48) + **(v586 + 48));
      v510 = swift_task_alloc();
      *(v0 + 1048) = v510;
      *v510 = v0;
      v510[1] = sub_1E64AD1C4;
      v25 = *(v0 + 624);
      goto LABEL_132;
    case 2u:
    case 0xCu:
    case 0x11u:
    case 0x12u:
      sub_1E64B5420(*(v0 + 824), MEMORY[0x1E699F460]);
      goto LABEL_112;
    case 3u:
      v57 = *(v0 + 824);
      v58 = *(v0 + 512);
      v59 = *(v0 + 464);
      v60 = *(v0 + 472);
      v62 = *v57;
      v61 = v57[1];
      v63 = sub_1E65E29D8();
      v64 = sub_1E637CA94(v62, v61, v63);

      v65 = MEMORY[0x1E69CBA70];
      if ((v64 & 1) == 0)
      {
        v65 = MEMORY[0x1E69CBA68];
      }

      (*(v60 + 104))(v58, *v65, v59);
      result = sub_1E65E2978();
      v67 = result;
      v68 = *(result + 16);
      if (!v68)
      {
        goto LABEL_18;
      }

      v69 = 0;
      v70 = *(v0 + 680);
      v71 = (v70 + 8);
      while (v69 < *(v67 + 16))
      {
        (*(v70 + 16))(*(v0 + 720), v67 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69, *(v0 + 672));
        if (sub_1E65E2C88() == v62 && v72 == v61)
        {

LABEL_116:

          v460 = *(v0 + 728);
          v461 = *(v0 + 672);
          (*(*(v0 + 680) + 32))(v460, *(v0 + 720), v461);
          v75 = sub_1E65E2CA8();
          v76 = v462;
          (*v71)(v460, v461);
LABEL_117:
          v463 = *(v0 + 608);
          v464 = *(v0 + 536);
          v465 = *(v0 + 512);
          v466 = *(v0 + 464);
          v467 = *(v0 + 472);
          v468 = *(v0 + 192);
          v469 = sub_1E65D9D78();
          (*(*(v469 - 8) + 56))(v463, 1, 1, v469);
          (*(v467 + 16))(v463 + v464[5], v465, v466);
          v470 = v464[6];
          v471 = sub_1E65D74E8();
          (*(*(v471 - 8) + 56))(v463 + v470, 1, 1, v471);
          v472 = v464[8];
          v473 = sub_1E65DA208();
          (*(*(v473 - 8) + 56))(v463 + v472, 1, 1, v473);
          v474 = v464[14];
          v475 = *MEMORY[0x1E69CBCC8];
          v476 = sub_1E65D8F28();
          (*(*(v476 - 8) + 104))(v463 + v474, v475, v476);
          v477 = v464[15];
          v478 = *MEMORY[0x1E69CC4B0];
          v479 = sub_1E65D9908();
          v480 = *(v479 - 8);
          (*(v480 + 104))(v463 + v477, v478, v479);
          (*(v480 + 56))(v463 + v477, 0, 1, v479);
          v481 = MEMORY[0x1E69E7CC0];
          v482 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
          *(v463 + v464[7]) = v481;
          v483 = (v463 + v464[9]);
          *v483 = 0;
          v483[1] = 0;
          v484 = (v463 + v464[10]);
          *v484 = 0;
          v484[1] = 0;
          *(v463 + v464[11]) = v482;
          v485 = (v463 + v464[12]);
          *v485 = 0;
          v485[1] = 0;
          v486 = (v463 + v464[13]);
          *v486 = v75;
          v486[1] = v76;
          v577 = (*(v468 + 48) + **(v468 + 48));
          v487 = swift_task_alloc();
          *(v0 + 1080) = v487;
          *v487 = v0;
          v487[1] = sub_1E64ADB2C;
          v25 = *(v0 + 608);
          goto LABEL_132;
        }

        v74 = sub_1E65E6C18();

        if (v74)
        {
          goto LABEL_116;
        }

        ++v69;
        result = (*v71)(*(v0 + 720), *(v0 + 672));
        if (v68 == v69)
        {
LABEL_18:

          v75 = 0;
          v76 = 0;
          goto LABEL_117;
        }
      }

      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return result;
    case 4u:
      v184 = *(v0 + 824);
      v185 = *(v0 + 712);
      v186 = *(v0 + 680);
      v187 = *(v0 + 672);
      v189 = *(v0 + 384);
      v188 = *(v0 + 392);
      v190 = *(v0 + 376);
      v191 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A318, &qword_1E66061A8) + 48);
      (*(v189 + 32))(v188, v184, v190);
      (*(v186 + 32))(v185, v184 + v191, v187);
      sub_1E65E2C88();
      sub_1E65E2A08();
      v192 = sub_1E65E29B8();
      v193 = sub_1E65E2C88();
      if (*(v192 + 16))
      {
        v195 = sub_1E6215038(v193, v194);
        v197 = v196;

        if (v197)
        {
          (*(*(v0 + 336) + 16))(*(v0 + 320), *(v192 + 56) + *(*(v0 + 336) + 72) * v195, *(v0 + 328));
          v198 = 0;
          goto LABEL_94;
        }
      }

      else
      {
      }

      v198 = 1;
LABEL_94:
      v349 = *(v0 + 328);
      v350 = *(v0 + 336);
      v352 = *(v0 + 312);
      v351 = *(v0 + 320);
      (*(v350 + 56))(v351, v198, 1, v349);
      sub_1E5FAB460(v351, v352, &qword_1ED07A340, &qword_1E66061D8);
      if ((*(v350 + 48))(v352, 1, v349) == 1)
      {
        v353 = *(v0 + 312);
        (*(*(v0 + 336) + 16))(*(v0 + 360), *(v0 + 368), *(v0 + 328));

        sub_1E5DFE50C(v353, &qword_1ED07A340, &qword_1E66061D8);
      }

      else
      {
        v354 = *(v0 + 360);
        v355 = *(v0 + 328);
        v356 = *(v0 + 336);
        v357 = *(v0 + 312);

        (*(v356 + 32))(v354, v357, v355);
      }

      v358 = *(v0 + 600);
      v359 = *(v0 + 536);
      v360 = *(v0 + 504);
      v361 = *(v0 + 464);
      v362 = *(v0 + 472);
      v584 = *(v0 + 192);
      v363 = sub_1E65E2A28();
      v364 = sub_1E65E2688();
      v366 = sub_1E637CA94(v364, v365, v363);

      v367 = MEMORY[0x1E69CBA70];
      if ((v366 & 1) == 0)
      {
        v367 = MEMORY[0x1E69CBA68];
      }

      (*(v362 + 104))(v360, *v367, v361);
      v368 = sub_1E65D9D78();
      (*(*(v368 - 8) + 56))(v358, 1, 1, v368);
      (*(v362 + 16))(v358 + v359[5], v360, v361);
      v369 = v359[6];
      v370 = sub_1E65D74E8();
      (*(*(v370 - 8) + 56))(v358 + v369, 1, 1, v370);
      v371 = v359[8];
      v372 = sub_1E65DA208();
      (*(*(v372 - 8) + 56))(v358 + v371, 1, 1, v372);
      v373 = sub_1E65E2688();
      v375 = v374;
      v376 = v359[14];
      v377 = *MEMORY[0x1E69CBCC8];
      v378 = sub_1E65D8F28();
      (*(*(v378 - 8) + 104))(v358 + v376, v377, v378);
      v379 = v359[15];
      v380 = sub_1E65D9908();
      (*(*(v380 - 8) + 56))(v358 + v379, 1, 1, v380);
      v381 = MEMORY[0x1E69E7CC0];
      v382 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v358 + v359[7]) = v381;
      v383 = (v358 + v359[9]);
      *v383 = 0;
      v383[1] = 0;
      v384 = (v358 + v359[10]);
      *v384 = 0;
      v384[1] = 0;
      *(v358 + v359[11]) = v382;
      v385 = (v358 + v359[12]);
      *v385 = 0;
      v385[1] = 0;
      v386 = (v358 + v359[13]);
      *v386 = v373;
      v386[1] = v375;
      v577 = (*(v584 + 48) + **(v584 + 48));
      v387 = swift_task_alloc();
      *(v0 + 1096) = v387;
      *v387 = v0;
      v387[1] = sub_1E64AE000;
      v25 = *(v0 + 600);
      goto LABEL_132;
    case 7u:
      v55 = *(v0 + 824);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A320, &qword_1E66061B0);
      sub_1E5DFE50C(v55 + *(v56 + 48), &qword_1ED07A380, &qword_1E6606218);
      goto LABEL_112;
    case 8u:
      v110 = *(v0 + 824);
      v111 = *(v0 + 792);
      v112 = *(v0 + 784);
      v113 = *(v0 + 264);
      v114 = *(v0 + 272);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A378, &qword_1E6606210);
      v116 = *(v110 + *(v115 + 48));
      v117 = *(v110 + *(v115 + 64) + 8);
      sub_1E5FAB460(v110, v111, &qword_1ED07A350, &qword_1E66061E8);
      sub_1E5DFD1CC(v111, v112, &qword_1ED07A350, &qword_1E66061E8);
      v118 = *(v114 + 48);
      if (v118(v112, 1, v113) == 1)
      {
        v119 = *(v0 + 792);
        v120 = *(v0 + 288);
        v121 = *(v0 + 264);
        sub_1E5DFE50C(*(v0 + 784), &qword_1ED07A350, &qword_1E66061E8);
        v123 = v118(v119, 1, v121) == 1 && v116 == 7;
        v124 = sub_1E65D9908();
        (*(*(v124 - 8) + 56))(v120, 1, 1, v124);
        v125 = (v123 & v117) == 0;
        if ((v123 & v117) != 0)
        {
          v126 = 0x446464416E616C50;
        }

        else
        {
          v126 = 0x6C61646F4D646441;
        }

        if (v125)
        {
          v127 = 0xEB00000000797469;
        }

        else
        {
          v127 = 0xEA00000000007961;
        }
      }

      else
      {
        v343 = *(v0 + 680);
        v344 = *(v0 + 672);
        v345 = *(v0 + 280);
        v346 = *(v0 + 256);
        (*(*(v0 + 272) + 32))(v345, *(v0 + 784), *(v0 + 264));
        v347 = sub_1E65E2978();
        *(swift_task_alloc() + 16) = v345;
        sub_1E64105E0(sub_1E64B5480, v347, v346);

        if ((*(v343 + 48))(v346, 1, v344) == 1)
        {
          sub_1E5DFE50C(*(v0 + 256), &qword_1ED079428, &qword_1E6601580);
          v126 = sub_1E65E27A8();
          v127 = v348;
        }

        else
        {
          v427 = *(v0 + 680);
          v428 = *(v0 + 672);
          v429 = *(v0 + 256);
          v126 = sub_1E65E2CA8();
          v127 = v430;
          (*(v427 + 8))(v429, v428);
        }

        v432 = *(v0 + 280);
        v431 = *(v0 + 288);
        v433 = *(v0 + 264);
        v434 = *(v0 + 272);
        v435 = *MEMORY[0x1E69CC4B0];
        v436 = sub_1E65D9908();
        v437 = *(v436 - 8);
        (*(v437 + 104))(v431, v435, v436);
        (*(v437 + 56))(v431, 0, 1, v436);
        (*(v434 + 8))(v432, v433);
      }

      v438 = *(v0 + 592);
      v439 = *(v0 + 536);
      v440 = *(v0 + 464);
      v441 = *(v0 + 472);
      v442 = *(v0 + 288);
      v443 = *(v0 + 192);
      v444 = sub_1E65D9D78();
      (*(*(v444 - 8) + 56))(v438, 1, 1, v444);
      (*(v441 + 104))(v438 + v439[5], *MEMORY[0x1E69CBAA0], v440);
      v445 = v439[6];
      v446 = sub_1E65D74E8();
      (*(*(v446 - 8) + 56))(v438 + v445, 1, 1, v446);
      v447 = v439[8];
      v448 = sub_1E65DA208();
      (*(*(v448 - 8) + 56))(v438 + v447, 1, 1, v448);
      v449 = v439[14];
      v450 = *MEMORY[0x1E69CBCC8];
      v451 = sub_1E65D8F28();
      (*(*(v451 - 8) + 104))(v438 + v449, v450, v451);
      sub_1E5DFD1CC(v442, v438 + v439[15], &qword_1ED072330, &qword_1E65EAB70);
      v452 = MEMORY[0x1E69E7CC0];
      v453 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v438 + v439[7]) = v452;
      v454 = (v438 + v439[9]);
      *v454 = 0;
      v454[1] = 0;
      v455 = (v438 + v439[10]);
      *v455 = 0;
      v455[1] = 0;
      *(v438 + v439[11]) = v453;
      v456 = (v438 + v439[12]);
      *v456 = 0;
      v456[1] = 0;
      v457 = (v438 + v439[13]);
      *v457 = v126;
      v457[1] = v127;
      v577 = (*(v443 + 48) + **(v443 + 48));
      v458 = swift_task_alloc();
      *(v0 + 1112) = v458;
      *v458 = v0;
      v458[1] = sub_1E64AE558;
      v25 = *(v0 + 592);
      goto LABEL_132;
    case 9u:
      v26 = *(v0 + 496);
      v27 = *(v0 + 464);
      v28 = *(v0 + 472);
      v29 = *(v0 + 432);
      v30 = *(v0 + 416);
      v31 = *(v0 + 400);
      v32 = **(v0 + 824);
      v33 = sub_1E65D9D78();
      (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
      (*(v28 + 104))(v26, *MEMORY[0x1E69CBAA0], v27);
      v34 = sub_1E65D74E8();
      (*(*(v34 - 8) + 56))(v30, 1, 1, v34);
      v35 = sub_1E65DA208();
      (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
      v573 = qword_1E6606238[v32];
      v578 = *&aScheduletraine[8 * v32];
      v36 = *(v0 + 584);
      v37 = *(v0 + 536);
      v38 = *(v0 + 496);
      v40 = *(v0 + 464);
      v39 = *(v0 + 472);
      v41 = *(v0 + 432);
      v567 = *(v0 + 416);
      v570 = *(v0 + 400);
      v42 = *(v0 + 192);
      v43 = v37[14];
      v44 = *MEMORY[0x1E69CBCD0];
      v45 = sub_1E65D8F28();
      (*(*(v45 - 8) + 104))(v36 + v43, v44, v45);
      v46 = v37[15];
      v47 = sub_1E65D9908();
      (*(*(v47 - 8) + 56))(v36 + v46, 1, 1, v47);
      v48 = MEMORY[0x1E69E7CC0];
      v49 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      sub_1E5FAB460(v41, v36, &qword_1ED073578, &qword_1E65F0E60);
      (*(v39 + 32))(v36 + v37[5], v38, v40);
      sub_1E5FAB460(v567, v36 + v37[6], &qword_1ED072340, &qword_1E65EA410);
      *(v36 + v37[7]) = v48;
      sub_1E5FAB460(v570, v36 + v37[8], &qword_1ED073570, &unk_1E65F4570);
      v50 = (v36 + v37[9]);
      *v50 = 0;
      v50[1] = 0;
      v51 = (v36 + v37[10]);
      *v51 = 0;
      v51[1] = 0;
      *(v36 + v37[11]) = v49;
      v52 = (v36 + v37[12]);
      *v52 = 0;
      v52[1] = 0;
      v53 = (v36 + v37[13]);
      *v53 = v578;
      v53[1] = v573;
      v577 = (*(v42 + 48) + **(v42 + 48));
      v54 = swift_task_alloc();
      *(v0 + 1128) = v54;
      *v54 = v0;
      v54[1] = sub_1E64AEA44;
      v25 = *(v0 + 584);
      goto LABEL_132;
    case 0xAu:
      v140 = *(v0 + 568);
      v141 = *(v0 + 536);
      v142 = *(v0 + 464);
      v143 = *(v0 + 472);
      v144 = *(v0 + 192);
      v145 = **(v0 + 824);
      v146 = sub_1E65D9D78();
      (*(*(v146 - 8) + 56))(v140, 1, 1, v146);
      (*(v143 + 104))(v140 + v141[5], *MEMORY[0x1E69CBA70], v142);
      v147 = v141[6];
      v148 = sub_1E65D74E8();
      (*(*(v148 - 8) + 56))(v140 + v147, 1, 1, v148);
      v149 = v141[8];
      v150 = sub_1E65DA208();
      (*(*(v150 - 8) + 56))(v140 + v149, 1, 1, v150);
      *(v0 + 160) = v145;
      v151 = sub_1E65E6BC8();
      v153 = v152;
      v154 = v141[14];
      v155 = *MEMORY[0x1E69CBCC8];
      v156 = sub_1E65D8F28();
      (*(*(v156 - 8) + 104))(v140 + v154, v155, v156);
      v157 = v141[15];
      v158 = sub_1E65D9908();
      (*(*(v158 - 8) + 56))(v140 + v157, 1, 1, v158);
      v159 = MEMORY[0x1E69E7CC0];
      v160 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v140 + v141[7]) = v159;
      v161 = (v140 + v141[9]);
      *v161 = 0;
      v161[1] = 0;
      v162 = (v140 + v141[10]);
      *v162 = 0;
      v162[1] = 0;
      *(v140 + v141[11]) = v160;
      v163 = (v140 + v141[12]);
      *v163 = 0;
      v163[1] = 0;
      v164 = (v140 + v141[13]);
      *v164 = v151;
      v164[1] = v153;
      v577 = (*(v144 + 48) + **(v144 + 48));
      v165 = swift_task_alloc();
      *(v0 + 1160) = v165;
      *v165 = v0;
      v165[1] = sub_1E64AF3AC;
      v25 = *(v0 + 568);
      goto LABEL_132;
    case 0xBu:
      v199 = *(v0 + 824);
      v200 = *(v0 + 704);
      v201 = *(v0 + 680);
      v202 = *(v0 + 672);
      v204 = *(v0 + 240);
      v203 = *(v0 + 248);
      v205 = *(v0 + 232);
      v206 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A328, &qword_1E66061B8) + 48);
      (*(v204 + 32))(v203, v199, v205);
      (*(v201 + 32))(v200, v199 + v206, v202);
      sub_1E65E2C88();
      sub_1E65E2A08();
      v207 = sub_1E65E29B8();
      v208 = sub_1E65E2C88();
      if (*(v207 + 16))
      {
        v210 = sub_1E6215038(v208, v209);
        v212 = v211;

        if (v212)
        {
          (*(*(v0 + 336) + 16))(*(v0 + 304), *(v207 + 56) + *(*(v0 + 336) + 72) * v210, *(v0 + 328));
          v213 = 0;
          goto LABEL_102;
        }
      }

      else
      {
      }

      v213 = 1;
LABEL_102:
      v388 = *(v0 + 328);
      v389 = *(v0 + 336);
      v391 = *(v0 + 296);
      v390 = *(v0 + 304);
      (*(v389 + 56))(v390, v213, 1, v388);
      sub_1E5FAB460(v390, v391, &qword_1ED07A340, &qword_1E66061D8);
      if ((*(v389 + 48))(v391, 1, v388) == 1)
      {
        v392 = *(v0 + 296);
        (*(*(v0 + 336) + 16))(*(v0 + 344), *(v0 + 352), *(v0 + 328));

        sub_1E5DFE50C(v392, &qword_1ED07A340, &qword_1E66061D8);
      }

      else
      {
        v394 = *(v0 + 336);
        v393 = *(v0 + 344);
        v395 = *(v0 + 328);
        v396 = *(v0 + 296);

        (*(v394 + 32))(v393, v396, v395);
      }

      v397 = *(v0 + 560);
      v398 = *(v0 + 536);
      v399 = *(v0 + 488);
      v400 = *(v0 + 464);
      v401 = *(v0 + 472);
      v585 = *(v0 + 192);
      v402 = sub_1E65E29F8();
      v403 = sub_1E65E2BD8();
      v405 = sub_1E637CA94(v403, v404, v402);

      v406 = MEMORY[0x1E69CBA70];
      if ((v405 & 1) == 0)
      {
        v406 = MEMORY[0x1E69CBA68];
      }

      (*(v401 + 104))(v399, *v406, v400);
      v407 = sub_1E65D9D78();
      (*(*(v407 - 8) + 56))(v397, 1, 1, v407);
      (*(v401 + 16))(v397 + v398[5], v399, v400);
      v408 = v398[6];
      v409 = sub_1E65D74E8();
      (*(*(v409 - 8) + 56))(v397 + v408, 1, 1, v409);
      v410 = v398[8];
      v411 = sub_1E65DA208();
      (*(*(v411 - 8) + 56))(v397 + v410, 1, 1, v411);
      v412 = sub_1E65E2BD8();
      v414 = v413;
      v415 = v398[14];
      v416 = *MEMORY[0x1E69CBCC8];
      v417 = sub_1E65D8F28();
      (*(*(v417 - 8) + 104))(v397 + v415, v416, v417);
      v418 = v398[15];
      v419 = sub_1E65D9908();
      (*(*(v419 - 8) + 56))(v397 + v418, 1, 1, v419);
      v420 = MEMORY[0x1E69E7CC0];
      v421 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v397 + v398[7]) = v420;
      v422 = (v397 + v398[9]);
      *v422 = 0;
      v422[1] = 0;
      v423 = (v397 + v398[10]);
      *v423 = 0;
      v423[1] = 0;
      *(v397 + v398[11]) = v421;
      v424 = (v397 + v398[12]);
      *v424 = 0;
      v424[1] = 0;
      v425 = (v397 + v398[13]);
      *v425 = v412;
      v425[1] = v414;
      v577 = (*(v585 + 48) + **(v585 + 48));
      v426 = swift_task_alloc();
      *(v0 + 1176) = v426;
      *v426 = v0;
      v426[1] = sub_1E64AF860;
      v25 = *(v0 + 560);
      goto LABEL_132;
    case 0xDu:
    case 0x10u:
      v1 = *(v0 + 824);

      v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A330, &qword_1E66061C0) + 48);
      v3 = sub_1E65E2718();
      (*(*(v3 - 8) + 8))(v1 + v2, v3);
      goto LABEL_112;
    case 0xEu:
      v166 = *(v0 + 824);
      v167 = *(v166 + 8);
      v168 = *(v166 + 16);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A338, &qword_1E66061C8);
      v170 = v169[20];
      *(v0 + 1264) = v170;
      v171 = v169[24];
      *(v0 + 1268) = v171;
      v172 = v169[28];
      *(v0 + 1272) = v172;
      v173 = v169[32];
      *(v0 + 1276) = v173;
      v579 = v168;
      if (v168)
      {
        result = sub_1E65E2978();
        v174 = result;
        v175 = *(result + 16);
        if (v175)
        {
          v176 = 0;
          v177 = *(v0 + 680);
          v178 = (v177 + 8);
          while (1)
          {
            if (v176 >= *(v174 + 16))
            {
              goto LABEL_136;
            }

            (*(v177 + 16))(*(v0 + 688), v174 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v176, *(v0 + 672));
            if (sub_1E65E2C88() == v167 && v579 == v179)
            {
              break;
            }

            v181 = sub_1E65E6C18();

            if (v181)
            {
              goto LABEL_127;
            }

            ++v176;
            result = (*v178)(*(v0 + 688), *(v0 + 672));
            if (v175 == v176)
            {
              goto LABEL_50;
            }
          }

LABEL_127:

          v511 = *(v0 + 696);
          v512 = *(v0 + 672);
          (*(*(v0 + 680) + 32))(v511, *(v0 + 688), v512);
          v182 = sub_1E65E2CA8();
          v514 = v513;
          (*v178)(v511, v512);

          v183 = v514;
        }

        else
        {
LABEL_50:

          v182 = v167;
          v183 = v579;
        }

        v515 = *(v0 + 552);
        v516 = *(v0 + 536);
        v518 = *(v0 + 464);
        v517 = *(v0 + 472);
        v519 = *(v0 + 192);
        v520 = sub_1E65D9D78();
        (*(*(v520 - 8) + 56))(v515, 1, 1, v520);
        (*(v517 + 104))(v515 + v516[5], *MEMORY[0x1E69CBA70], v518);
        v521 = v516[6];
        v522 = sub_1E65D74E8();
        (*(*(v522 - 8) + 56))(v515 + v521, 1, 1, v522);
        v523 = v516[8];
        v524 = sub_1E65DA208();
        (*(*(v524 - 8) + 56))(v515 + v523, 1, 1, v524);
        v525 = v516[14];
        v526 = *MEMORY[0x1E69CBCC8];
        v527 = sub_1E65D8F28();
        (*(*(v527 - 8) + 104))(v515 + v525, v526, v527);
        v528 = v516[15];
        v529 = sub_1E65D9908();
        (*(*(v529 - 8) + 56))(v515 + v528, 1, 1, v529);
        v530 = MEMORY[0x1E69E7CC0];
        v531 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
        *(v515 + v516[7]) = v530;
        v532 = (v515 + v516[9]);
        *v532 = 0;
        v532[1] = 0;
        v533 = (v515 + v516[10]);
        *v533 = 0;
        v533[1] = 0;
        *(v515 + v516[11]) = v531;
        v534 = (v515 + v516[12]);
        *v534 = 0;
        v534[1] = 0;
        v535 = (v515 + v516[13]);
        *v535 = v182;
        v535[1] = v183;
        v577 = (*(v519 + 48) + **(v519 + 48));
        v536 = swift_task_alloc();
        *(v0 + 1192) = v536;
        *v536 = v0;
        v536[1] = sub_1E64AFDB4;
        v25 = *(v0 + 552);
        goto LABEL_132;
      }

      sub_1E5DFE50C(v166 + v173, &qword_1ED07A358, &qword_1E66061F0);
      sub_1E5DFE50C(v166 + v172, &qword_1ED07A360, &qword_1E66061F8);
      sub_1E5DFE50C(v166 + v171, &qword_1ED07A368, &qword_1E6606200);
      sub_1E5DFE50C(v166 + v170, &qword_1ED07A370, &qword_1E6606208);
LABEL_112:

      v459 = *(v0 + 8);

      return v459();
    case 0xFu:
      v580 = (*(*(v0 + 192) + 16) + **(*(v0 + 192) + 16));
      v214 = swift_task_alloc();
      *(v0 + 1208) = v214;
      *v214 = v0;
      v215 = sub_1E64B02DC;
      goto LABEL_59;
    case 0x14u:
      v217 = *(v0 + 216);
      v216 = *(v0 + 224);
      v218 = *(v0 + 208);
      v219 = **(v0 + 824);
      sub_1E65D7858();
      v220 = sub_1E65D7898();
      (*(v217 + 8))(v216, v218);
      result = sub_1E65E2C08();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_138;
      }

      if (result >= *(v220 + 16))
      {
        goto LABEL_139;
      }

      v221 = *(v0 + 544);
      v222 = *(v0 + 536);
      v224 = *(v0 + 472);
      v223 = *(v0 + 480);
      v225 = *(v0 + 464);
      v226 = v220 + 16 * result;
      v227 = *(v226 + 40);
      v574 = *(v226 + 32);
      v581 = *(v0 + 192);

      v228 = sub_1E65E29A8();
      v229 = sub_1E637D138(v219, v228);

      v230 = MEMORY[0x1E69CBA70];
      if (!v229)
      {
        v230 = MEMORY[0x1E69CBA68];
      }

      (*(v224 + 104))(v223, *v230, v225);
      v231 = sub_1E65D9D78();
      (*(*(v231 - 8) + 56))(v221, 1, 1, v231);
      (*(v224 + 16))(v221 + v222[5], v223, v225);
      v232 = v222[6];
      v233 = sub_1E65D74E8();
      (*(*(v233 - 8) + 56))(v221 + v232, 1, 1, v233);
      v234 = v222[8];
      v235 = sub_1E65DA208();
      (*(*(v235 - 8) + 56))(v221 + v234, 1, 1, v235);
      v236 = v222[14];
      v237 = *MEMORY[0x1E69CBCC8];
      v238 = sub_1E65D8F28();
      (*(*(v238 - 8) + 104))(v221 + v236, v237, v238);
      v239 = v222[15];
      v240 = sub_1E65D9908();
      (*(*(v240 - 8) + 56))(v221 + v239, 1, 1, v240);
      v241 = MEMORY[0x1E69E7CC0];
      v242 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v221 + v222[7]) = v241;
      v243 = (v221 + v222[9]);
      *v243 = 0;
      v243[1] = 0;
      v244 = (v221 + v222[10]);
      *v244 = 0;
      v244[1] = 0;
      *(v221 + v222[11]) = v242;
      v245 = (v221 + v222[12]);
      *v245 = 0;
      v245[1] = 0;
      v246 = (v221 + v222[13]);
      *v246 = v574;
      v246[1] = v227;
      v577 = (*(v581 + 48) + **(v581 + 48));
      v247 = swift_task_alloc();
      *(v0 + 1240) = v247;
      *v247 = v0;
      v247[1] = sub_1E64B0888;
      v25 = *(v0 + 544);
      goto LABEL_132;
    case 0x15u:
      v100 = *(v0 + 808);
      v101 = *(v0 + 776);
      v102 = *(v0 + 760);
      v103 = *(v0 + 752);
      v104 = *(v0 + 264);
      v105 = *(v0 + 272);
      sub_1E65E2998();
      sub_1E65E2E48();
      (*(v102 + 8))(v101, v103);
      v106 = (*(v105 + 48))(v100, 1, v104);
      v107 = *(v0 + 808);
      if (v106 == 1)
      {
        v108 = 0xD000000000000012;
        sub_1E5DFE50C(*(v0 + 808), &qword_1ED07A350, &qword_1E66061E8);
        v109 = 0x80000001E66181D0;
        goto LABEL_131;
      }

      v333 = *(v0 + 264);
      v332 = *(v0 + 272);
      v108 = sub_1E65E27A8();
      v583 = v334;
      (*(v332 + 8))(v107, v333);
      result = sub_1E65E2978();
      v335 = result;
      v336 = *(result + 16);
      if (!v336)
      {
        goto LABEL_87;
      }

      v337 = 0;
      v338 = *(v0 + 680);
      v339 = (v338 + 8);
      break;
    case 0x16u:
      v77 = *(v0 + 656);
      v78 = *(v0 + 536);
      v79 = *(v0 + 464);
      v80 = *(v0 + 472);
      v81 = *(v0 + 192);
      v82 = sub_1E65D9D78();
      (*(*(v82 - 8) + 56))(v77, 1, 1, v82);
      (*(v80 + 104))(v77 + v78[5], *MEMORY[0x1E69CBA90], v79);
      v83 = v78[6];
      v84 = sub_1E65D74E8();
      (*(*(v84 - 8) + 56))(v77 + v83, 1, 1, v84);
      v85 = v78[8];
      v86 = sub_1E65DA208();
      (*(*(v86 - 8) + 56))(v77 + v85, 1, 1, v86);
      v87 = v78[14];
      v88 = *MEMORY[0x1E69CBCC8];
      v89 = sub_1E65D8F28();
      (*(*(v89 - 8) + 104))(v77 + v87, v88, v89);
      v90 = v78[15];
      v91 = *MEMORY[0x1E69CC458];
      v92 = sub_1E65D9908();
      v93 = *(v92 - 8);
      (*(v93 + 104))(v77 + v90, v91, v92);
      (*(v93 + 56))(v77 + v90, 0, 1, v92);
      v94 = MEMORY[0x1E69E7CC0];
      v95 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v77 + v78[7]) = v94;
      v96 = (v77 + v78[9]);
      *v96 = 0;
      v96[1] = 0;
      v97 = (v77 + v78[10]);
      *v97 = 0;
      v97[1] = 0;
      *(v77 + v78[11]) = v95;
      v98 = (v77 + v78[12]);
      *v98 = 0;
      v98[1] = 0;
      *(v77 + v78[13]) = xmmword_1E65F4AB0;
      v577 = (*(v81 + 48) + **(v81 + 48));
      v99 = swift_task_alloc();
      *(v0 + 848) = v99;
      *v99 = v0;
      v99[1] = sub_1E64ABF7C;
      v25 = *(v0 + 656);
      goto LABEL_132;
    case 0x17u:
      v292 = *(v0 + 800);
      v293 = *(v0 + 768);
      v294 = *(v0 + 760);
      v295 = *(v0 + 752);
      v296 = *(v0 + 648);
      v297 = *(v0 + 536);
      v298 = *(v0 + 472);
      v571 = *(v0 + 464);
      v575 = *(v0 + 528);
      v299 = *(v0 + 272);
      v568 = *(v0 + 264);
      v582 = *(v0 + 192);
      sub_1E65E2998();
      sub_1E65E2E48();
      (*(v294 + 8))(v293, v295);
      v300 = (*(v299 + 48))(v292, 1, v568);
      *(v0 + 1256) = v300;
      sub_1E5DFE50C(v292, &qword_1ED07A350, &qword_1E66061E8);
      if (v300 == 1)
      {
        v301 = 6579265;
      }

      else
      {
        v301 = 0x657461647055;
      }

      if (v300 == 1)
      {
        v302 = 0xE300000000000000;
      }

      else
      {
        v302 = 0xE600000000000000;
      }

      v303 = MEMORY[0x1E69CBA00];
      if (v300 != 1)
      {
        v303 = MEMORY[0x1E69CBA80];
      }

      (*(v298 + 104))(v575, *v303, v571);
      v304 = sub_1E65D9D78();
      *(v0 + 864) = v304;
      v305 = *(v304 - 8);
      v306 = *(v305 + 56);
      *(v0 + 872) = v306;
      *(v0 + 880) = (v305 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v306(v296, 1, 1, v304);
      (*(v298 + 16))(v296 + v297[5], v575, v571);
      v307 = v297[6];
      v308 = sub_1E65D74E8();
      *(v0 + 888) = v308;
      v309 = *(v308 - 8);
      v310 = *(v309 + 56);
      *(v0 + 896) = v310;
      *(v0 + 904) = (v309 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v310(v296 + v307, 1, 1, v308);
      v311 = v297[8];
      v312 = sub_1E65DA208();
      *(v0 + 912) = v312;
      v313 = *(v312 - 8);
      v314 = *(v313 + 56);
      *(v0 + 920) = v314;
      *(v0 + 928) = (v313 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v314(v296 + v311, 1, 1, v312);
      v315 = v297[14];
      v316 = *MEMORY[0x1E69CBCC8];
      *(v0 + 1260) = v316;
      v317 = sub_1E65D8F28();
      *(v0 + 936) = v317;
      v318 = *(v317 - 8);
      v319 = *(v318 + 104);
      *(v0 + 944) = v319;
      *(v0 + 952) = (v318 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v319(v296 + v315, v316, v317);
      v320 = v297[15];
      v321 = sub_1E65D9908();
      *(v0 + 960) = v321;
      v322 = *(v321 - 8);
      v323 = *(v322 + 56);
      *(v0 + 968) = v323;
      *(v0 + 976) = (v322 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v323(v296 + v320, 1, 1, v321);
      v324 = MEMORY[0x1E69E7CC0];
      v325 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v296 + v297[7]) = v324;
      v326 = (v296 + v297[9]);
      *v326 = 0;
      v326[1] = 0;
      v327 = (v296 + v297[10]);
      *v327 = 0;
      v327[1] = 0;
      *(v296 + v297[11]) = v325;
      v328 = (v296 + v297[12]);
      *v328 = 0;
      v328[1] = 0;
      v329 = (v296 + v297[13]);
      *v329 = v301;
      v329[1] = v302;
      v330 = *(v582 + 48);
      *(v0 + 984) = v330;
      *(v0 + 992) = *(v582 + 56);
      v577 = (v330 + *v330);
      v331 = swift_task_alloc();
      *(v0 + 1000) = v331;
      *v331 = v0;
      v331[1] = sub_1E64AC430;
      v25 = *(v0 + 648);
      goto LABEL_132;
    case 0x19u:
      v4 = *(v0 + 632);
      v5 = *(v0 + 536);
      v6 = *(v0 + 464);
      v7 = *(v0 + 472);
      v8 = *(v0 + 192);
      v9 = sub_1E65D9D78();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      (*(v7 + 104))(v4 + v5[5], *MEMORY[0x1E69CBA58], v6);
      v10 = v5[6];
      v11 = sub_1E65D74E8();
      (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
      v12 = v5[8];
      v13 = sub_1E65DA208();
      (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
      v14 = v5[14];
      v15 = *MEMORY[0x1E69CBCC8];
      v16 = sub_1E65D8F28();
      (*(*(v16 - 8) + 104))(v4 + v14, v15, v16);
      v17 = v5[15];
      v18 = sub_1E65D9908();
      (*(*(v18 - 8) + 56))(v4 + v17, 1, 1, v18);
      v19 = MEMORY[0x1E69E7CC0];
      v20 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v4 + v5[7]) = v19;
      v21 = (v4 + v5[9]);
      *v21 = 0;
      v21[1] = 0;
      v22 = (v4 + v5[10]);
      *v22 = 0;
      v22[1] = 0;
      *(v4 + v5[11]) = v20;
      v23 = (v4 + v5[12]);
      *v23 = 0;
      v23[1] = 0;
      *(v4 + v5[13]) = xmmword_1E6606180;
      v577 = (*(v8 + 48) + **(v8 + 48));
      v24 = swift_task_alloc();
      *(v0 + 1032) = v24;
      *v24 = v0;
      v24[1] = sub_1E64ACD10;
      v25 = *(v0 + 632);
      goto LABEL_132;
    case 0x1Au:
      v248 = *(v0 + 616);
      v249 = *(v0 + 536);
      v250 = *(v0 + 464);
      v251 = *(v0 + 472);
      v252 = *(v0 + 192);
      v253 = sub_1E65D9D78();
      (*(*(v253 - 8) + 56))(v248, 1, 1, v253);
      (*(v251 + 104))(v248 + v249[5], *MEMORY[0x1E69CBAA0], v250);
      v254 = v249[6];
      v255 = sub_1E65D74E8();
      (*(*(v255 - 8) + 56))(v248 + v254, 1, 1, v255);
      v256 = v249[8];
      v257 = sub_1E65DA208();
      (*(*(v257 - 8) + 56))(v248 + v256, 1, 1, v257);
      v258 = v249[14];
      v259 = *MEMORY[0x1E69CBCC8];
      v260 = sub_1E65D8F28();
      (*(*(v260 - 8) + 104))(v248 + v258, v259, v260);
      v261 = v249[15];
      v262 = *MEMORY[0x1E69CC458];
      v263 = sub_1E65D9908();
      v264 = *(v263 - 8);
      (*(v264 + 104))(v248 + v261, v262, v263);
      (*(v264 + 56))(v248 + v261, 0, 1, v263);
      v265 = MEMORY[0x1E69E7CC0];
      v266 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v248 + v249[7]) = v265;
      v267 = (v248 + v249[9]);
      *v267 = 0;
      v267[1] = 0;
      v268 = (v248 + v249[10]);
      *v268 = 0;
      v268[1] = 0;
      *(v248 + v249[11]) = v266;
      v269 = (v248 + v249[12]);
      *v269 = 0;
      v269[1] = 0;
      *(v248 + v249[13]) = xmmword_1E6606170;
      v577 = (*(v252 + 48) + **(v252 + 48));
      v270 = swift_task_alloc();
      *(v0 + 1064) = v270;
      *v270 = v0;
      v270[1] = sub_1E64AD678;
      v25 = *(v0 + 616);
      goto LABEL_132;
    case 0x1Cu:
      v271 = *(v0 + 576);
      v272 = *(v0 + 536);
      v273 = *(v0 + 464);
      v274 = *(v0 + 472);
      v275 = *(v0 + 192);
      v276 = sub_1E65D9D78();
      (*(*(v276 - 8) + 56))(v271, 1, 1, v276);
      (*(v274 + 104))(v271 + v272[5], *MEMORY[0x1E69CBA70], v273);
      v277 = v272[6];
      v278 = sub_1E65D74E8();
      (*(*(v278 - 8) + 56))(v271 + v277, 1, 1, v278);
      v279 = v272[8];
      v280 = sub_1E65DA208();
      (*(*(v280 - 8) + 56))(v271 + v279, 1, 1, v280);
      v281 = v272[14];
      v282 = *MEMORY[0x1E69CBCC8];
      v283 = sub_1E65D8F28();
      (*(*(v283 - 8) + 104))(v271 + v281, v282, v283);
      v284 = v272[15];
      v285 = sub_1E65D9908();
      (*(*(v285 - 8) + 56))(v271 + v284, 1, 1, v285);
      v286 = MEMORY[0x1E69E7CC0];
      v287 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v271 + v272[7]) = v286;
      v288 = (v271 + v272[9]);
      *v288 = 0;
      v288[1] = 0;
      v289 = (v271 + v272[10]);
      *v289 = 0;
      v289[1] = 0;
      *(v271 + v272[11]) = v287;
      v290 = (v271 + v272[12]);
      *v290 = 0;
      v290[1] = 0;
      *(v271 + v272[13]) = xmmword_1E6606160;
      v577 = (*(v275 + 48) + **(v275 + 48));
      v291 = swift_task_alloc();
      *(v0 + 1144) = v291;
      *v291 = v0;
      v291[1] = sub_1E64AEEF8;
      v25 = *(v0 + 576);
      goto LABEL_132;
    case 0x1Eu:
      v580 = (*(*(v0 + 192) + 16) + **(*(v0 + 192) + 16));
      v214 = swift_task_alloc();
      *(v0 + 1224) = v214;
      *v214 = v0;
      v215 = sub_1E64B0774;
LABEL_59:
      v214[1] = v215;

      return v580();
    default:
      goto LABEL_112;
  }

  while (1)
  {
    if (v337 >= *(v335 + 16))
    {
      goto LABEL_137;
    }

    (*(v338 + 16))(*(v0 + 736), v335 + ((*(v338 + 80) + 32) & ~*(v338 + 80)) + *(v338 + 72) * v337, *(v0 + 672));
    if (sub_1E65E2C88() == v108 && v340 == v583)
    {
      break;
    }

    v342 = sub_1E65E6C18();

    if (v342)
    {
      goto LABEL_130;
    }

    ++v337;
    result = (*v339)(*(v0 + 736), *(v0 + 672));
    if (v336 == v337)
    {
LABEL_87:

      v109 = v583;
      goto LABEL_131;
    }
  }

LABEL_130:

  v537 = *(v0 + 744);
  v538 = *(v0 + 672);
  (*(*(v0 + 680) + 32))(v537, *(v0 + 736), v538);
  v108 = sub_1E65E2CA8();
  v540 = v539;
  (*v339)(v537, v538);

  v109 = v540;
LABEL_131:
  v541 = *(v0 + 664);
  v542 = *(v0 + 536);
  v544 = *(v0 + 464);
  v543 = *(v0 + 472);
  v545 = *(v0 + 192);
  v546 = sub_1E65D9D78();
  (*(*(v546 - 8) + 56))(v541, 1, 1, v546);
  (*(v543 + 104))(v541 + v542[5], *MEMORY[0x1E69CBA70], v544);
  v547 = v542[6];
  v548 = sub_1E65D74E8();
  (*(*(v548 - 8) + 56))(v541 + v547, 1, 1, v548);
  v549 = v542[8];
  v550 = sub_1E65DA208();
  (*(*(v550 - 8) + 56))(v541 + v549, 1, 1, v550);
  v551 = v542[14];
  v552 = *MEMORY[0x1E69CBCC8];
  v553 = sub_1E65D8F28();
  (*(*(v553 - 8) + 104))(v541 + v551, v552, v553);
  v554 = v542[15];
  v555 = sub_1E65D9908();
  (*(*(v555 - 8) + 56))(v541 + v554, 1, 1, v555);
  v556 = MEMORY[0x1E69E7CC0];
  v557 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *(v541 + v542[7]) = v556;
  v558 = (v541 + v542[9]);
  *v558 = 0;
  v558[1] = 0;
  v559 = (v541 + v542[10]);
  *v559 = 0;
  v559[1] = 0;
  *(v541 + v542[11]) = v557;
  v560 = (v541 + v542[12]);
  *v560 = 0;
  v560[1] = 0;
  v561 = (v541 + v542[13]);
  *v561 = v108;
  v561[1] = v109;
  v577 = (*(v545 + 48) + **(v545 + 48));
  v562 = swift_task_alloc();
  *(v0 + 832) = v562;
  *v562 = v0;
  v562[1] = sub_1E64ABAC8;
  v25 = *(v0 + 664);
LABEL_132:

  return v577(v25);
}