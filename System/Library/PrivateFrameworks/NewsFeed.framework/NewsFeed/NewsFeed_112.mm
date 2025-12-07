uint64_t sub_1D65A20E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BEF00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65A2118(uint64_t a1)
{
  v2 = sub_1D66BD480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A2154(uint64_t a1)
{
  v2 = sub_1D66BD480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66BD6FC(0);
  v7 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BD790(0);
  sub_1D5B58B84(&qword_1EC8873C8, sub_1D66BD790, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v39;
  v14 = v10;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D6623A84();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v35 = 0uLL;
  v36 = 0;
  sub_1D726431C();
  v18 = v13;
  v19 = v37;
  v20 = v38;
  v35 = xmmword_1D728CF30;
  v36 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v34 = v20;
  v26 = v37;
  v35 = xmmword_1D7297410;
  v36 = 0;
  sub_1D726427C();
  v27 = v26;
  v28 = v37;
  v35 = xmmword_1D72BAA60;
  v36 = 0;
  v32 = sub_1D726423C();
  v33 = v19;
  v35 = xmmword_1D72BAA70;
  v36 = 0;
  sub_1D66BD910();
  sub_1D726427C();
  v29 = v34;
  (*(v18 + 8))(v14, v7);
  v30 = v37;
  *a2 = v33;
  *(a2 + 8) = v29;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  *(a2 + 32) = v32;
  *(a2 + 40) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v141 = v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v142 = v137 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v144 = v137 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v148 = v137 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v137 - v17;
  sub_1D66BD964(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = *(v1 + 8);
  v26 = *(v1 + 24);
  v143 = *(v1 + 16);
  v140 = v26;
  v162 = *(v1 + 32);
  v139 = *(v1 + 40);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D66BD790(0);
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EC8873C8, sub_1D66BD790, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerNodeStyle.Selector, v30, v32, v27, &type metadata for FormatSponsoredBannerNodeStyle.Selector, v30, &type metadata for FormatVersions.DawnburstF, v28, v23, v31, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCE80);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v149 = v34;
  v146 = v33;
  v147 = v36;
  v151 = v35 + 16;
  (v36)(v18);
  v150 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v159 = v24;
  v160 = v25;
  v157 = 0uLL;
  v158 = 0;
  v37 = &v23[*(v20 + 44)];
  v39 = *v37;
  v38 = *(v37 + 1);
  v161 = 0;
  v40 = swift_allocObject();
  *&v154 = v137;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v161;
  *(v40 + 40) = v39;
  *(v40 + 48) = v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v137[-4] = sub_1D5B4AA6C;
  v137[-3] = 0;
  v135 = sub_1D6708B98;
  v136 = v42;
  v161 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v161;
  v145 = v39;
  *(v43 + 40) = v39;
  *(v43 + 48) = v38;
  sub_1D66BD9F8(0);
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EC8873E0, sub_1D66BD9F8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v152 = v46;
  v153 = v45;
  v47 = sub_1D72647CC();
  v161 = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v161;
  v49 = *(v20 + 36);
  v50 = v18;
  v51 = &v23[v49];
  v156 = v23;
  v52 = *&v23[v49 + 24];
  v53 = *&v23[v49 + 32];
  v54 = __swift_project_boxed_opaque_existential_1(v51, v52);
  MEMORY[0x1EEE9AC00](v54, v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v137[-4] = sub_1D615B4A4;
  v137[-3] = &v137[-6];
  v135 = sub_1D6708B98;
  v136 = v43;
  v58 = v155;
  sub_1D5D2BC70(v50, sub_1D615B49C, v59, sub_1D615B4A4, &v137[-6], v52, v53);
  if (v58)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v60 = v156;
    return sub_1D5D2CFE8(v60, sub_1D66BD964);
  }

  v138 = v51;
  *&v155 = v38;

  sub_1D5D3E60C();
  sub_1D72647EC();
  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

  v62 = v148;
  v64 = v146;
  v63 = v147;
  v147(v148, v149, v146);
  swift_storeEnumTagMultiPayload();
  v154 = xmmword_1D728CF30;
  v157 = xmmword_1D728CF30;
  v158 = 0;
  LOBYTE(v159) = 0;
  v65 = swift_allocObject();
  v67 = v65;
  *(v65 + 16) = v154;
  *(v65 + 32) = v159;
  v68 = v145;
  v69 = v155;
  *(v65 + 40) = v145;
  *(v65 + 48) = v69;
  if ((~v143 & 0xF000000000000007) != 0)
  {
    v137[1] = v137;
    v159 = v143;
    MEMORY[0x1EEE9AC00](v65, v66);
    v137[-4] = sub_1D5B4AA6C;
    v137[-3] = 0;
    v135 = sub_1D6708B98;
    v136 = v67;
    v161 = 0;
    v71 = v70;
    v72 = swift_allocObject();
    *(v72 + 16) = v154;
    *(v72 + 32) = v161;
    *(v72 + 40) = v68;
    *(v72 + 48) = v69;
    swift_retain_n();
    sub_1D5CFCFAC(v71);
    v73 = sub_1D72647CC();
    v161 = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    *(v74 + 24) = v154;
    *(v74 + 40) = v161;
    v75 = *(v138 + 3);
    v76 = *(v138 + 4);
    v77 = __swift_project_boxed_opaque_existential_1(v138, v75);
    MEMORY[0x1EEE9AC00](v77, v78);
    MEMORY[0x1EEE9AC00](v79, v80);
    v137[-4] = sub_1D615B4A4;
    v137[-3] = &v137[-6];
    v135 = sub_1D6708B98;
    v136 = v72;
    LOBYTE(v75) = sub_1D5D2F7A4(v148, sub_1D615B49C, v81, sub_1D615B4A4, &v137[-6], v75, v76);

    if (v75)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v69 = v155;
      v64 = v146;

      v68 = v145;
    }

    else
    {

      v69 = v155;
      v68 = v145;
      v64 = v146;
    }

    v63 = v147;
    v62 = v148;
  }

  else
  {
  }

  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
  v82 = v144;
  v63(v144, v149, v64);
  swift_storeEnumTagMultiPayload();
  v154 = xmmword_1D7297410;
  v157 = xmmword_1D7297410;
  v158 = 0;
  LOBYTE(v159) = 0;
  v83 = swift_allocObject();
  v85 = v83;
  *(v83 + 16) = v154;
  *(v83 + 32) = v159;
  *(v83 + 40) = v68;
  *(v83 + 48) = v69;
  if ((~v140 & 0xF000000000000007) != 0)
  {
    v153 = v137;
    v159 = v140;
    MEMORY[0x1EEE9AC00](v83, v84);
    v152 = &v137[-6];
    v137[-4] = sub_1D5B4AA6C;
    v137[-3] = 0;
    v135 = sub_1D6708B98;
    v136 = v85;
    v161 = 0;
    v97 = v96;
    v98 = swift_allocObject();
    *(v98 + 16) = v154;
    *(v98 + 32) = v161;
    *(v98 + 40) = v68;
    *(v98 + 48) = v69;
    swift_retain_n();
    sub_1D5CFCFAC(v97);
    v99 = sub_1D72647CC();
    v161 = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = v154;
    *(v100 + 40) = v161;
    v101 = *(v138 + 3);
    v102 = *(v138 + 4);
    v103 = __swift_project_boxed_opaque_existential_1(v138, v101);
    MEMORY[0x1EEE9AC00](v103, v104);
    MEMORY[0x1EEE9AC00](v105, v106);
    v107 = v152;
    v137[-4] = sub_1D615B4A4;
    v137[-3] = v107;
    v135 = sub_1D6708B98;
    v136 = v98;
    v109 = sub_1D5D2F7A4(v82, sub_1D615B49C, v108, sub_1D615B4A4, &v137[-6], v101, v102);
    v132 = v109;

    if (v132)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v69 = v155;
      v64 = v146;
      v86 = v141;

      v68 = v145;
      v63 = v147;
      goto LABEL_16;
    }

    v69 = v155;
    v68 = v145;
    v64 = v146;
    v63 = v147;
  }

  else
  {
  }

  v86 = v141;
LABEL_16:
  sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
  v63(v142, v149, v64);
  swift_storeEnumTagMultiPayload();
  v154 = xmmword_1D72BAA60;
  v157 = xmmword_1D72BAA60;
  v158 = 0;
  LOBYTE(v159) = 0;
  v87 = swift_allocObject();
  v89 = v87;
  *(v87 + 16) = v154;
  *(v87 + 32) = v159;
  *(v87 + 40) = v68;
  *(v87 + 48) = v69;
  if (v162 == 2)
  {

    v90 = v156;
  }

  else
  {
    v153 = v137;
    LOBYTE(v159) = v162 & 1;
    MEMORY[0x1EEE9AC00](v87, v88);
    v137[-4] = sub_1D5B4AA6C;
    v137[-3] = 0;
    v135 = sub_1D6708B98;
    v136 = v89;
    v161 = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v154;
    *(v110 + 32) = v161;
    *(v110 + 40) = v68;
    *(v110 + 48) = v69;
    swift_retain_n();
    v111 = sub_1D72647CC();
    v161 = 0;
    v112 = swift_allocObject();
    *(v112 + 16) = v111;
    *(v112 + 24) = v154;
    *(v112 + 40) = v161;
    v113 = *(v138 + 3);
    v114 = *(v138 + 4);
    v115 = __swift_project_boxed_opaque_existential_1(v138, v113);
    MEMORY[0x1EEE9AC00](v115, v116);
    MEMORY[0x1EEE9AC00](v117, v118);
    v137[-4] = sub_1D615B4A4;
    v137[-3] = &v137[-6];
    v135 = sub_1D6708B98;
    v136 = v110;
    v120 = sub_1D5D2F7A4(v142, sub_1D615B49C, v119, sub_1D615B4A4, &v137[-6], v113, v114);
    v133 = v120;

    v86 = v141;
    if (v133)
    {
      v90 = v156;
      sub_1D72647EC();
      v69 = v155;
      v64 = v146;
      v68 = v145;
    }

    else
    {
      v90 = v156;
      v69 = v155;
      v68 = v145;
      v64 = v146;
    }
  }

  sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);

  if (qword_1EDF31F30 != -1)
  {
    swift_once();
  }

  v91 = __swift_project_value_buffer(v64, qword_1EDFFCE20);
  v147(v86, v91, v64);
  swift_storeEnumTagMultiPayload();
  v155 = xmmword_1D72BAA70;
  v157 = xmmword_1D72BAA70;
  v158 = 0;
  LOBYTE(v159) = 0;
  v92 = swift_allocObject();
  v94 = v92;
  *(v92 + 16) = v155;
  *(v92 + 32) = v159;
  *(v92 + 40) = v68;
  *(v92 + 48) = v69;
  v95 = v139;
  if (v139 == 2)
  {
  }

  else
  {
    *&v154 = v137;
    v159 = v139;
    MEMORY[0x1EEE9AC00](v92, v93);
    v137[-4] = sub_1D5B4AA6C;
    v137[-3] = 0;
    v135 = sub_1D6708B98;
    v136 = v94;
    v161 = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v155;
    *(v121 + 32) = v161;
    *(v121 + 40) = v68;
    *(v121 + 48) = v69;
    swift_retain_n();
    sub_1D5D0A59C(v95);
    v122 = sub_1D72647CC();
    v161 = 0;
    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    *(v123 + 24) = v155;
    *(v123 + 40) = v161;
    v124 = *(v138 + 3);
    v125 = *(v138 + 4);
    v126 = __swift_project_boxed_opaque_existential_1(v138, v124);
    MEMORY[0x1EEE9AC00](v126, v127);
    MEMORY[0x1EEE9AC00](v128, v129);
    v137[-4] = sub_1D615B4A4;
    v137[-3] = &v137[-6];
    v86 = v141;
    v135 = sub_1D66BDA8C;
    v136 = v121;
    v131 = sub_1D5D2F7A4(v141, sub_1D615B49C, v130, sub_1D615B4A4, &v137[-6], v124, v125);
    v134 = v131;

    if (v134)
    {
      sub_1D66BD5B8();
      v90 = v156;
      sub_1D72647EC();

      sub_1D5D0A58C(v159);
    }

    else
    {

      sub_1D5D0A58C(v159);
      v90 = v156;
    }
  }

  sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
  v60 = v90;
  return sub_1D5D2CFE8(v60, sub_1D66BD964);
}

unint64_t sub_1D65A3A20()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F4364656C6C6966;
  if (v1 != 1)
  {
    v5 = 0x64656C6C69666E75;
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

uint64_t sub_1D65A3AF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BF1B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65A3B2C(uint64_t a1)
{
  v2 = sub_1D66BD868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A3B68(uint64_t a1)
{
  v2 = sub_1D66BD868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerSizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66BDB08(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BDB9C(0);
  sub_1D5B58B84(&qword_1EDF24F28, sub_1D66BDB9C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x64656C6C6966, 0xE600000000000000, 0x64656C6C69666E75, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C62940();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  sub_1D66BDD1C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v78 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66BDB9C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24F28, sub_1D66BDB9C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerSizing, v19, v21, v16, &type metadata for FormatSponsoredBannerSizing, v19, &type metadata for FormatVersions.DawnburstF, v17, v14, v20, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE80);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v81 = v23;
  v75 = v25;
  v76 = v22;
  v74 = v24 + 16;
  (v25)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v89 = v15;
  v87 = 0uLL;
  v88 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v86 = 0;
  v29 = swift_allocObject();
  v83 = &v71;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v86;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = v14;
  *&v85 = v9;
  *(&v71 - 4) = sub_1D5B4AA6C;
  *(&v71 - 3) = 0;
  v69 = sub_1D6708B9C;
  v70 = v32;
  v86 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v86;
  v77 = v27;
  *(v33 + 40) = v27;
  *(v33 + 48) = v28;
  sub_1D66BDDB0(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02E88, sub_1D66BDDB0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v35;
  v82 = v36;
  v37 = sub_1D72647CC();
  v86 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v86;
  v39 = (v31 + *(v11 + 36));
  v41 = v39[3];
  v40 = v39[4];
  v42 = __swift_project_boxed_opaque_existential_1(v39, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v71 - 4) = sub_1D615B4A4;
  *(&v71 - 3) = (&v71 - 6);
  v46 = v84;
  v47 = v85;
  v69 = sub_1D6708B9C;
  v70 = v33;
  sub_1D5D2BC70(v85, sub_1D615B49C, v48, sub_1D615B4A4, (&v71 - 6), v41, v40);
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v72 = v39;
    v49 = v81;
    v84 = v28;

    v50 = sub_1D5CA1E90();
    sub_1D72647EC();
    v83 = v50;
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

    v51 = v79;
    v75(v79, v49, v76);
    swift_storeEnumTagMultiPayload();
    v85 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    v88 = 0;
    LOBYTE(v89) = 0;
    v52 = swift_allocObject();
    v54 = v52;
    *(v52 + 16) = v85;
    *(v52 + 32) = v89;
    v56 = v77;
    v55 = v78;
    v57 = v84;
    *(v52 + 40) = v77;
    *(v52 + 48) = v57;
    if ((~v55 & 0xF000000000000007) != 0)
    {
      v81 = &v71;
      v89 = v55;
      MEMORY[0x1EEE9AC00](v52, v53);
      *(&v71 - 4) = sub_1D5B4AA6C;
      *(&v71 - 3) = 0;
      v69 = sub_1D6708B9C;
      v70 = v54;
      v86 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v85;
      *(v58 + 32) = v86;
      *(v58 + 40) = v56;
      *(v58 + 48) = v57;
      swift_retain_n();
      sub_1D62B48BC(v55);
      v59 = sub_1D72647CC();
      v86 = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v85;
      *(v60 + 40) = v86;
      v61 = v72[3];
      v62 = v72[4];
      v63 = __swift_project_boxed_opaque_existential_1(v72, v61);
      MEMORY[0x1EEE9AC00](v63, v64);
      MEMORY[0x1EEE9AC00](v65, v66);
      *(&v71 - 4) = sub_1D615B4A4;
      *(&v71 - 3) = (&v71 - 6);
      v51 = v79;
      v69 = sub_1D66BDE44;
      v70 = v58;
      LOBYTE(v62) = sub_1D5D2F7A4(v79, sub_1D615B49C, v67, sub_1D615B4A4, (&v71 - 6), v61, v62);

      if (v62)
      {
        sub_1D72647EC();
      }

      sub_1D5C92A8C(v89);
    }

    else
    {
    }

    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v31, sub_1D66BDD1C);
}

uint64_t sub_1D65A4784()
{
  v1 = 0x64656C6C69666E75;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6C6966;
  }
}

uint64_t sub_1D65A47D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BF3CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65A480C(uint64_t a1)
{
  v2 = sub_1D66BDC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A4848(uint64_t a1)
{
  v2 = sub_1D66BDC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerUserInterfaceStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v30;
    v15 = v9;
    if (v13)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5117798;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BDEC0();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    if (v27)
    {
      if (v27 == 1)
      {
        (*(v14 + 8))(v15, v6);
        v24 = 1;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC8873E8, sub_1D66BDF14, &type metadata for FormatSponsoredBannerUserInterfaceStyle, type metadata accessor for FormatUserInterfaceValue);
        v27 = xmmword_1D7279980;
        sub_1D66BDF68();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v25 = v28;
        v26 = v29;
        v24 = swift_allocObject();
        *(v24 + 16) = v25;
        *(v24 + 24) = v26;
      }
    }

    else
    {
      (*(v14 + 8))(v15, v6);
      v24 = 0;
    }

    *v11 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerUserInterfaceStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v34 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v34 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerUserInterfaceStyle, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatSponsoredBannerUserInterfaceStyle, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowG, v21, v18, v22, &off_1F51F6B58);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F30 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE20);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D64189B4(1, v10);
      v26 = v10;
    }

    else
    {
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      sub_1D5D0A57C(v30);
      sub_1D5D0A57C(v29);
      if (qword_1EDF31F30 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE20);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638604C(2, v30, v29, v6);
      sub_1D5D0A58C(v30);
      sub_1D5D0A58C(v29);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F30 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE20);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64189B4(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65A505C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802658148;
  if (v2 != 1)
  {
    v4 = 0x65746E4972657375;
    v3 = 0xED00006563616672;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (*a2 != 1)
  {
    v8 = 0x65746E4972657375;
    v7 = 0xED00006563616672;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867696CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65A5164()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65A5208(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65A5298(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65A5338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664A60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65A5368(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (v2 != 1)
  {
    v5 = 0x65746E4972657375;
    v4 = 0xED00006563616672;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatSportsEventBinding.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F51177E8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BDFF8();
    v28 = 0uLL;
    sub_1D726431C();
    if (v26 <= 1u)
    {
      v28 = xmmword_1D7279980;
      if (v26)
      {
        sub_1D5FCE1E0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = v26;
        v25 = 64;
      }

      else
      {
        sub_1D5FCE1E0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v24 = v26;
      }
    }

    else if (v26 == 2)
    {
      sub_1D5C30060(0, &qword_1EC887400, sub_1D5FCE114, &type metadata for FormatTagBinding.Color, type metadata accessor for FormatArraySubscript);
      v28 = xmmword_1D7279980;
      sub_1D66BE04C();
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v24 = v26;
      v25 = v27 | 0x80;
    }

    else if (v26 == 3)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = -64;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = -64;
      v24 = 1;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSportsEventBinding.Color.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48 - v21;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v2;
  v27 = *(v2 + 8);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v51 = v26;
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.Color, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatSportsEventBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v29, v26, v30, &off_1F51F6C58);
  v32 = v27 >> 6;
  if (v27 >> 6 > 1)
  {
    if (v32 == 2)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD68);
      (*(*(v37 - 8) + 16))(v14, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v27 & 0x3F;
      v35 = v51;
      sub_1D63921A4(2, v50, v39, v14);
      v36 = v14;
    }

    else if (v50 | v27 ^ 0xC0)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCD68);
      v46 = v49;
      (*(*(v44 - 8) + 16))(v49, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v51;
      sub_1D641BA98(4, v46);
      v36 = v46;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD68);
      (*(*(v42 - 8) + 16))(v10, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v51;
      sub_1D641BA98(3, v10);
      v36 = v10;
    }
  }

  else if (v32)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD68);
    (*(*(v40 - 8) + 16))(v18, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v51;
    sub_1D6392010(1, v50, v18);
    v36 = v18;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
    (*(*(v33 - 8) + 16))(v22, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v51;
    sub_1D6392010(0, v50, v22);
    v36 = v22;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t FormatSportsEventBinding.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v32;
    v13 = a1[3];
    v27 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117838;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v27;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BE0DC();
    v29 = 0uLL;
    sub_1D726431C();
    if (v28)
    {
      if (v28 == 1)
      {
        v28 = xmmword_1D7279980;
        sub_1D5C6E160();
        sub_1D726431C();
        a1 = v27;
        (*(v11 + 8))(v10, v6);
        v23 = v29;
        v24 = v30;
        v25 = 64;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC887418, sub_1D66BE130, &type metadata for FormatTagBinding.Command, type metadata accessor for FormatArraySubscript);
        v28 = xmmword_1D7279980;
        sub_1D66BE184();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v23 = v29;
        v24 = v30;
        v25 = v31 | 0x80;
        a1 = v27;
      }
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D5C6E160();
      sub_1D726431C();
      a1 = v27;
      (*(v11 + 8))(v10, v6);
      v25 = 0;
      v23 = v29;
      v24 = v30;
    }

    *v12 = v23;
    *(v12 + 16) = v24;
    *(v12 + 24) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSportsEventBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 16);
  v34 = *(v1 + 8);
  v35 = v20;
  v21 = *(v1 + 24);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.Command, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatSportsEventBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v23, v18, v24, &off_1F51F6C58);
  if (v21 >> 6)
  {
    if (v21 >> 6 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD68);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6391924(1, v19, v34, v35, v10);
      v28 = v10;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD68);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6391ABC(2, v19, v34, v35, v21 & 0x3F, v6);
      v28 = v6;
    }
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD68);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6391924(0, v19, v34, v35, v14);
    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatSportsEventBinding.DateTime.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.DateTime, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatSportsEventBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641B954(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatSportsEventBinding.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v35;
    v13 = a1[3];
    v29 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51178D8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v29;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BE268();
    v31 = 0;
    v32 = 0;
    sub_1D726431C();
    if (v30)
    {
      if (v30 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D668F6D0();
        sub_1D726431C();
        a1 = v29;
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = 0;
        v25 = v31;
        v26 = v33;
        v27 = v32 | 2;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC887440, sub_1D66BE2BC, &type metadata for FormatTagBinding.Image, type metadata accessor for FormatArraySubscript);
        v30 = xmmword_1D7279980;
        sub_1D66BE310();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = v31;
        v27 = v32;
        v26 = v33;
        v24 = 1;
        v23 = v34;
        a1 = v29;
      }
    }

    else
    {
      v30 = xmmword_1D7279980;
      sub_1D668F6D0();
      sub_1D726431C();
      a1 = v29;
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v24 = 0;
      v25 = v31;
      v27 = v32;
      v26 = v33;
    }

    *v12 = v25;
    *(v12 + 8) = v27;
    *(v12 + 16) = v26;
    *(v12 + 32) = v23;
    *(v12 + 40) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSportsEventBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  v40 = *v1;
  v41 = v21;
  v42 = v20;
  v39 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = sub_1D5C30408();
  v43 = v18;
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.Image, &type metadata for FormatCodingKeys, v26, v23, &type metadata for FormatSportsEventBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v24, v18, v25, &off_1F51F6C58);
  if (v22)
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 & 0xFFFFFFFE | (v19 >> 1) & 1;
  if (v28)
  {
    if (v28 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD68);
      (*(*(v29 - 8) + 16))(v10, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v43;
      sub_1D6391C98(1, v40, v19 & 0xFFFFFFFFFFFFFFFDLL, v41, v42, v10);
      v32 = v10;
    }

    else
    {
      *&v44 = v40;
      *(&v44 + 1) = v19;
      v45 = v41;
      v46 = v42;
      v47 = v39;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD68);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v43;
      sub_1D6391E30(2, &v44, v6);
      v32 = v6;
    }

    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v43;
    sub_1D6391C98(0, v40, v19, v41, v42, v14);
    sub_1D5D2CFE8(v14, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
  }
}

uint64_t FormatSportsEventBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v30;
    v13 = a1[3];
    v26 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117928;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v26;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BE3A0();
    v29 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      if (v27 == 1)
      {
        v29 = xmmword_1D7279980;
        sub_1D5CA1374();
        sub_1D726431C();
        a1 = v26;
        (*(v11 + 8))(v10, v6);
        v23 = v27;
        v24 = 64;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC887460, sub_1D66BE3F4, &type metadata for FormatTagBinding.Text, type metadata accessor for FormatArraySubscript);
        v29 = xmmword_1D7279980;
        sub_1D66BE448();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        a1 = v26;
        v23 = v27;
        v24 = v28 | 0x80;
      }
    }

    else
    {
      v29 = xmmword_1D7279980;
      sub_1D5CA1374();
      sub_1D726431C();
      a1 = v26;
      (*(v11 + 8))(v10, v6);
      v24 = 0;
      v23 = v27;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D65A7790(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, char *, __n128), void (*a4)(uint64_t, uint64_t, void, char *, __n128))
{
  v38 = a4;
  v39 = a3;
  v6 = v4;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v37 - v18;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v6;
  v24 = *(v6 + 8);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v28, v25, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v26, v23, v27, &off_1F51F6C58);
  if (v24 >> 6)
  {
    if (v24 >> 6 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD68);
      (*(*(v29 - 8) + 16))(v15, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      (v39)(1, v40, v15);
      v31 = v15;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v34 = sub_1D725BD1C();
      v35 = __swift_project_value_buffer(v34, qword_1EDFFCD68);
      (*(*(v34 - 8) + 16))(v11, v35, v34);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      (v38)(2, v40, v24 & 0x3F, v11);
      v31 = v11;
    }
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCD68);
    (*(*(v32 - 8) + 16))(v19, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    (v39)(0, v40, v19);
    v31 = v19;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v23, sub_1D5D30DC4);
}

uint64_t FormatStateMachineActionEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D66BE4D8(0);
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BE56C(0);
  sub_1D5B58B84(&qword_1EC8874A0, sub_1D66BE56C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v35;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v26 = *(v17 - 2);
      v25 = *(v17 - 1);

      v27 = sub_1D6627E68(1701667182, 0xE400000000000000, 0x656449746E657665, 0xEF7265696669746ELL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  v33 = 0uLL;
  v34 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v13;
  v22 = v18;
  v33 = xmmword_1D728CF30;
  v34 = 0;
  v23 = sub_1D72642BC();
  v24 = v14;
  v30 = v23;
  v32 = v31;
  (*(v21 + 8))(v10, v24);
  *a2 = v22;
  a2[1] = v20;
  a2[2] = v30;
  a2[3] = v32;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineActionEvent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  sub_1D66BE6EC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v77 = v1[3];
  v78 = v17;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66BE56C(0);
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EC8874A0, sub_1D66BE56C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatStateMachineActionEvent, v21, v23, v18, &type metadata for FormatStateMachineActionEvent, v21, &type metadata for FormatVersions.JazzkonG, v19, v14, v22, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
  v26 = *(v24 - 8);
  v74 = *(v26 + 16);
  v75 = v25;
  v80 = v24;
  v73 = v26 + 16;
  v74(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v89 = v16;
  v86 = 0uLL;
  v87 = 0;
  v27 = &v14[*(v11 + 44)];
  v83 = v9;
  v28 = *v27;
  v29 = *(v27 + 1);
  v90 = 0;
  v30 = swift_allocObject();
  v84 = &v69;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v90;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v69 - 4) = sub_1D5B4AA6C;
  *(&v69 - 3) = 0;
  v67 = sub_1D6708BA0;
  v68 = v32;
  v90 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v90;
  v76 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66BE780(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC8874B8, sub_1D66BE780, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v81 = v36;
  v82 = v35;
  v37 = sub_1D72647CC();
  v90 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v90;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v69 - 4) = sub_1D615B4A4;
  *(&v69 - 3) = (&v69 - 6);
  v46 = v83;
  v67 = sub_1D66BE814;
  v68 = v33;
  v47 = v85;
  sub_1D5D2BC70(v83, sub_1D615B49C, v48, sub_1D615B4A4, (&v69 - 6), v40, v41);
  if (v47)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v39;
    v49 = v80;
    v71 = v29;

    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v51 = v79;
    (v74)(v79, v75, v49);
    swift_storeEnumTagMultiPayload();
    v88 = v78;
    v89 = v77;
    v85 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v90 = 0;
    v52 = swift_allocObject();
    v84 = &v69;
    *(v52 + 16) = v85;
    *(v52 + 32) = v90;
    v53 = v76;
    v54 = v71;
    *(v52 + 40) = v76;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v69 - 4) = sub_1D5B4AA6C;
    *(&v69 - 3) = 0;
    v67 = sub_1D6708BA0;
    v68 = v56;
    v90 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v85;
    *(v57 + 32) = v90;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v90 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v85;
    *(v59 + 40) = v90;
    v60 = *(v70 + 3);
    v61 = *(v70 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v70, v60);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v69 - 4) = sub_1D615B4A4;
    *(&v69 - 3) = (&v69 - 6);
    v67 = sub_1D6708BA0;
    v68 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v66, sub_1D615B4A4, (&v69 - 6), v60, v61);

    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66BE6EC);
}

uint64_t sub_1D65A8768()
{
  v1 = 0x656449746E657665;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D65A87C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BF4E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65A87F8(uint64_t a1)
{
  v2 = sub_1D66BE644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A8834(uint64_t a1)
{
  v2 = sub_1D66BE644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateMachineEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D66BE890(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19C04(0);
  sub_1D5B58B84(&qword_1EDF25188, sub_1D5E19C04, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v10;
  if (v14)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v18 - 2);
      v23 = *(v18 - 1);

      v25 = sub_1D6623C70();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v15, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v33 = 0uLL;
  v34 = 0;
  v19 = sub_1D72642BC();
  v21 = v20;
  v22 = v19;
  v32 = sub_1D5C95A1C(v10, 1, 0, 0, sub_1D5C8CD38, sub_1D66BE890, &qword_1EDF3BE00, sub_1D5C8CD38);
  v33 = xmmword_1D7297410;
  v34 = 0;
  v28 = sub_1D72642BC();
  v30 = v29;
  (*(v11 + 8))(v10, v6);
  *v12 = v22;
  v12[1] = v21;
  v12[2] = v32;
  v12[3] = v28;
  v12[4] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineEvent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v89 - v11;
  sub_1D66BE924(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[3];
  v99 = v1[2];
  v90 = v20;
  v89 = v1[4];
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5E19C04(0);
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF25188, sub_1D5E19C04, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatStateMachineEvent, v24, v26, v21, &type metadata for FormatStateMachineEvent, v24, &type metadata for FormatVersions.JazzkonG, v22, v17, v25, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD18);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v96 = v28;
  v97 = v27;
  v94 = v29 + 16;
  v95 = v30;
  (v30)(v12);
  v93 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v108 = v18;
  v109 = v19;
  v106 = 0uLL;
  v107 = 0;
  v31 = &v17[*(v14 + 44)];
  v32 = *v31;
  v33 = *(v31 + 1);
  v110 = 0;
  v34 = swift_allocObject();
  *&v103 = &v89;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v110;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v102 = (&v89 - 6);
  *(&v89 - 4) = sub_1D5B4AA6C;
  *(&v89 - 3) = 0;
  v87 = sub_1D6708BA4;
  v88 = v36;
  v110 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v110;
  v98 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D5E19BC8(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03148, sub_1D5E19BC8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v100 = v39;
  v101 = v40;
  v41 = sub_1D72647CC();
  v110 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v110;
  v43 = *(v14 + 36);
  v44 = v12;
  v104 = v17;
  v45 = &v17[v43];
  v47 = *&v17[v43 + 24];
  v46 = *&v17[v43 + 32];
  v48 = __swift_project_boxed_opaque_existential_1(&v17[v43], v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v52 = v102;
  *(&v89 - 4) = sub_1D615B4A4;
  *(&v89 - 3) = v52;
  v87 = sub_1D6708BA4;
  v88 = v37;
  v53 = v105;
  sub_1D5D2BC70(v44, sub_1D615B49C, v54, sub_1D615B4A4, (&v89 - 6), v47, v46);
  if (v53)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v55 = v104;
  }

  else
  {
    v102 = v45;
    *&v105 = v33;

    v55 = v104;
    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v56 = v92;
    v95(v92, v96, v97);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v106) = 0;
    v57 = swift_allocObject();
    v103 = xmmword_1D728CF30;
    *(v57 + 16) = xmmword_1D728CF30;
    *(v57 + 32) = v106;
    *(v57 + 40) = v98;
    *(v57 + 48) = v105;

    v58 = sub_1D72647CC();
    LOBYTE(v106) = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v103;
    *(v59 + 40) = v106;
    v61 = *(v102 + 3);
    v60 = *(v102 + 4);
    v62 = __swift_project_boxed_opaque_existential_1(v102, v61);
    *&v103 = &v89;
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v89 - 4) = sub_1D5B4AA6C;
    *(&v89 - 3) = 0;
    v87 = sub_1D66BE9B8;
    v88 = v57;
    LOBYTE(v60) = sub_1D5D2F7A4(v56, sub_1D615B49C, v66, sub_1D615B4A4, (&v89 - 6), v61, v60);

    if (v60)
    {
      sub_1D5E07690(v99, v55, 1, 0, 0);
      v67 = v105;
      v68 = v97;
      v69 = v98;
      v70 = v96;
      *&v103 = 0;
    }

    else
    {
      *&v103 = 0;
      v69 = v98;
      v67 = v105;
      v70 = v96;
      v68 = v97;
    }

    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v71 = v91;
    v95(v91, v70, v68);
    swift_storeEnumTagMultiPayload();
    v108 = v90;
    v109 = v89;
    v105 = xmmword_1D7297410;
    v106 = xmmword_1D7297410;
    v107 = 0;
    v110 = 0;
    v72 = swift_allocObject();
    v99 = &v89;
    *(v72 + 16) = v105;
    *(v72 + 32) = v110;
    *(v72 + 40) = v69;
    *(v72 + 48) = v67;
    MEMORY[0x1EEE9AC00](v72, v73);
    *(&v89 - 4) = sub_1D5B4AA6C;
    *(&v89 - 3) = 0;
    v87 = sub_1D6708BA4;
    v88 = v74;
    v110 = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = v105;
    *(v75 + 32) = v110;
    *(v75 + 40) = v69;
    *(v75 + 48) = v67;
    swift_retain_n();
    v76 = sub_1D72647CC();
    v110 = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    *(v77 + 24) = v105;
    *(v77 + 40) = v110;
    v78 = *(v102 + 3);
    v79 = *(v102 + 4);
    v80 = __swift_project_boxed_opaque_existential_1(v102, v78);
    MEMORY[0x1EEE9AC00](v80, v81);
    MEMORY[0x1EEE9AC00](v82, v83);
    *(&v89 - 4) = sub_1D615B4A4;
    *(&v89 - 3) = (&v89 - 6);
    v87 = sub_1D6708BA4;
    v88 = v75;
    v84 = v103;
    sub_1D5D2BC70(v71, sub_1D615B49C, v85, sub_1D615B4A4, (&v89 - 6), v78, v79);
    if (v84)
    {
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v55, sub_1D66BE924);
}

uint64_t sub_1D65A9758()
{
  v1 = 0x696669746E656469;
  v2 = 0x65746174536F74;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746174536D6F7266;
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

uint64_t sub_1D65A97D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BF600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65A980C(uint64_t a1)
{
  v2 = sub_1D5E19CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A9848(uint64_t a1)
{
  v2 = sub_1D5E19CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateMachineEventValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66BEA34(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BEAC8(0);
  sub_1D5B58B84(&qword_1EDF24ED8, sub_1D66BEAC8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineEventValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66BEC48(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66BEAC8(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF24ED8, sub_1D66BEAC8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatStateMachineEventValue, v17, v19, v14, &type metadata for FormatStateMachineEventValue, v17, &type metadata for FormatVersions.JazzkonG, v15, v11, v18, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v48 = v13;
  v45[3] = 0;
  v45[4] = 0;
  v46 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v49 = 0;
  v25 = swift_allocObject();
  v45[1] = v45;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v49;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D67088B4;
  v44 = v27;
  v49 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v49;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D66BECDC(0);
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02E38, sub_1D66BECDC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v45[0] = v30;
  v31 = sub_1D72647CC();
  v49 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v49;
  v33 = &v11[*(v8 + 36)];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v45[-4] = sub_1D615B4A4;
  v45[-3] = &v45[-6];
  v43 = sub_1D67088B4;
  v44 = v28;
  v40 = v45[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v41, sub_1D615B4A4, &v45[-6], v34, v35);
  if (v40)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66BEC48);
}

uint64_t sub_1D65AA06C(uint64_t a1)
{
  v2 = sub_1D66BEBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AA0A8(uint64_t a1)
{
  v2 = sub_1D66BEBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65AA0E4()
{
  v1 = 0x65706F6373;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x536C616974696E69;
  }
}

uint64_t sub_1D65AA13C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66BF774(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65AA174(uint64_t a1)
{
  v2 = sub_1D665D8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AA1B0(uint64_t a1)
{
  v2 = sub_1D665D8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateMachineInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v32;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5117978;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BEDD4();
    v27 = 0;
    v28 = 0;
    sub_1D726431C();
    v22 = v31;
    if (v31)
    {
      v31 = xmmword_1D7279980;
      sub_1D5F84ED8();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = 0;
      v24 = v27;
      v25 = v28;
      v26 = v29;
    }

    else
    {
      sub_1D5C80140(0, &qword_1EDF2E1D8, sub_1D66BEE28, &type metadata for FormatStateMachineEventValue, &type metadata for FormatStateMachineEvent);
      v31 = xmmword_1D7279980;
      sub_1D66BEE7C();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = v27;
      v25 = v28;
      v26 = v29;
      v23 = v30;
    }

    *v13 = v24;
    *(v13 + 8) = v25;
    *(v13 + 16) = v26;
    *(v13 + 24) = v23;
    *(v13 + 32) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineInput.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v29 = *(v1 + 8);
  v30 = v15;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatStateMachineInput, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatStateMachineInput, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v20, v14, v21, &off_1F51F6BF8);
  if (v18)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6393680(1, v30, v29, v16 & 1, v6);
    v25 = v6;
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725BD1C();
    v27 = __swift_project_value_buffer(v26, qword_1EDFFCD18);
    (*(*(v26 - 8) + 16))(v10, v27, v26);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63934B4(0, v30, v29, v16, v17, v10);
    v25 = v10;
  }

  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65AA8D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x646E616D6D6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x646E616D6D6F63;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65AA97C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65AA9FC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65AAA68(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65AAAF0(uint64_t *a1@<X8>)
{
  v2 = 0x646E616D6D6F63;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatStateViewNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v336 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v341 = &v336 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v342 = &v336 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v343 = &v336 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v344 = &v336 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v345 = &v336 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v346 = &v336 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v347 = &v336 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v348 = &v336 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v349 = &v336 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  *&v354 = &v336 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  *&v357 = &v336 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v336 - v44;
  sub_1D66C0738(0);
  *&v358 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v336 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1D5E19A14(0);
  v53 = v52;
  v54 = sub_1D5B58B84(&qword_1EDF25478, sub_1D5E19A14, &unk_1D7321584);
  sub_1D5D2EE70(v4, v53, v55, v50, v4, v53, &type metadata for FormatVersions.JazzkonG, v51, v49, v54, &off_1F51F6BF8);
  swift_beginAccess();
  v56 = v2[2];
  v57 = v2[3];
  v58 = qword_1EDF31EA8;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725BD1C();
  v60 = __swift_project_value_buffer(v59, qword_1EDFFCD18);
  v61 = *(v59 - 8);
  v62 = *(v61 + 16);
  v356 = v60;
  v353 = (v61 + 16);
  v62(v45);
  v63 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v64 = sub_1D725895C();
  v65 = (*(*(v64 - 8) + 48))(v8, 1, v64);
  v352 = v59;
  v351 = v62;
  v350 = v2;
  v355 = v63;
  if (v65 == 1)
  {
    v338 = v56;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v66 = v358;
    v67 = &v49[*(v358 + 44)];
    v69 = *v67;
    v68 = *(v67 + 1);
    LOBYTE(v360) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 32) = v360;
    *(v70 + 40) = v69;
    *(v70 + 48) = v68;
    sub_1D5E199D8(0);
    v72 = v71;
    v73 = sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8, MEMORY[0x1E69E6F60]);

    *&v340 = v72;
    v74 = sub_1D72647CC();
    LOBYTE(v360) = 0;
    v75 = swift_allocObject();
    *(v75 + 24) = 0;
    *(v75 + 32) = 0;
    *(v75 + 16) = v74;
    *(v75 + 40) = v360;
    v76 = &v49[*(v66 + 36)];
    v77 = *(v76 + 3);
    v78 = *(v76 + 4);
    v79 = __swift_project_boxed_opaque_existential_1(v76, v77);
    MEMORY[0x1EEE9AC00](v79, v80);
    MEMORY[0x1EEE9AC00](v81, v82);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D66C07CC;
    v335 = v70;
    v83 = v359;
    v85 = sub_1D5D2F7A4(v45, sub_1D615B49C, v84, sub_1D615B4A4, (&v336 - 6), v77, v78);
    if (v83)
    {
      sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v49, sub_1D66C0738);
    }

    v139 = v85;
    v359 = v73;

    if (v139)
    {
      v360 = 0uLL;
      LOBYTE(v361) = 0;
      v373 = v338;
      v374 = v57;
      sub_1D72647EC();
      v87 = 0;

      sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
      v59 = v352;
      v88 = v356;
      v2 = v350;
      v62 = v351;
      goto LABEL_8;
    }

    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v87 = 0;
    v2 = v350;
    v59 = v352;
    v62 = v351;
  }

  else
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v87 = v359;
  }

  v88 = v356;
LABEL_8:
  swift_beginAccess();
  v89 = v2[4];
  (v62)(v357, v88, v59);
  swift_storeEnumTagMultiPayload();
  if (((v89 >> 59) & 0x1E | (v89 >> 2) & 1) == 0x16 && v89 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v118 = v358;
    v119 = &v49[*(v358 + 44)];
    v121 = *v119;
    v120 = *(v119 + 1);
    LOBYTE(v360) = 0;
    v122 = swift_allocObject();
    v340 = xmmword_1D728CF30;
    *(v122 + 16) = xmmword_1D728CF30;
    *(v122 + 32) = v360;
    *(v122 + 40) = v121;
    *(v122 + 48) = v120;
    sub_1D5C82CD8(v89);
    sub_1D5E199D8(0);
    v124 = v123;
    sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8, MEMORY[0x1E69E6F60]);
    v359 = v87;

    v338 = v124;
    v125 = sub_1D72647CC();
    LOBYTE(v360) = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = v125;
    *(v126 + 24) = v340;
    *(v126 + 40) = v360;
    v127 = &v49[*(v118 + 36)];
    v128 = *(v127 + 3);
    v129 = *(v127 + 4);
    v130 = __swift_project_boxed_opaque_existential_1(v127, v128);
    v131 = v49;
    MEMORY[0x1EEE9AC00](v130, v132);
    MEMORY[0x1EEE9AC00](v133, v134);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v122;
    v135 = v357;
    v136 = v359;
    v138 = sub_1D5D2F7A4(v357, sub_1D615B49C, v137, sub_1D615B4A4, (&v336 - 6), v128, v129);
    v359 = v136;
    if (v136)
    {

      sub_1D5C92A8C(v89);
      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
LABEL_33:
      v117 = v131;
      return sub_1D5D2CFE8(v117, sub_1D66C0738);
    }

    v142 = v138;

    if (v142)
    {
      v360 = v340;
      LOBYTE(v361) = 0;
      v372 = v89;
      sub_1D5CA1E90();
      v143 = v359;
      sub_1D72647EC();
      v87 = v143;
      v2 = v350;
      v59 = v352;
      v144 = v357;
      if (v143)
      {
        sub_1D5C92A8C(v372);
        sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
LABEL_45:
        v117 = v49;
        return sub_1D5D2CFE8(v117, sub_1D66C0738);
      }

      sub_1D5C92A8C(v372);
      sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
      v62 = v351;
    }

    else
    {
      sub_1D5C92A8C(v89);
      sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);
      v2 = v350;
      v59 = v352;
      v62 = v351;
      v87 = v359;
    }
  }

  v359 = v87;
  v338 = v2[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v90 = __swift_project_value_buffer(v59, qword_1EDFFCD68);
  (v62)(v354, v90, v59);
  swift_storeEnumTagMultiPayload();
  v357 = xmmword_1D7297410;
  v360 = xmmword_1D7297410;
  LOBYTE(v361) = 0;
  v91 = &v49[*(v358 + 44)];
  v92 = *v91;
  v93 = *(v91 + 1);
  LOBYTE(v372) = 0;
  v94 = swift_allocObject();
  v96 = v94;
  *(v94 + 16) = v357;
  *(v94 + 32) = v372;
  *&v340 = v92;
  *(v94 + 40) = v92;
  *(v94 + 48) = v93;
  v339 = v49;
  if (v338)
  {
    v337 = &v336;
    v372 = v338;
    MEMORY[0x1EEE9AC00](v94, v95);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v96;
    LOBYTE(v370) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v357;
    *(v97 + 32) = v370;
    *(v97 + 40) = v340;
    *(v97 + 48) = v93;
    sub_1D5E199D8(0);
    v99 = v98;
    v100 = sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8, MEMORY[0x1E69E6F60]);
    swift_retain_n();

    v338 = v99;
    v336 = v100;
    v101 = sub_1D72647CC();
    v102 = v354;
    v103 = v101;
    LOBYTE(v370) = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = v357;
    *(v104 + 40) = v370;
    v105 = v358;
    v106 = &v49[*(v358 + 36)];
    v107 = *(v106 + 3);
    v108 = *(v106 + 4);
    v109 = __swift_project_boxed_opaque_existential_1(v106, v107);
    MEMORY[0x1EEE9AC00](v109, v110);
    MEMORY[0x1EEE9AC00](v111, v112);
    *(&v336 - 4) = sub_1D615B4A4;
    *(&v336 - 3) = (&v336 - 6);
    v334 = sub_1D6708BA8;
    v335 = v97;
    v113 = v359;
    v115 = sub_1D5D2F7A4(v102, sub_1D615B49C, v114, sub_1D615B4A4, (&v336 - 6), v107, v108);
    if (v113)
    {

      v116 = v339;

      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
      v117 = v116;
      return sub_1D5D2CFE8(v117, sub_1D66C0738);
    }

    v145 = v115;
    v140 = v105;
    *&v357 = v93;

    if (v145)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v141 = 0;
      v59 = v352;

      v2 = v350;
      v62 = v351;
    }

    else
    {

      v2 = v350;
      v59 = v352;
      v62 = v351;
      v141 = 0;
    }
  }

  else
  {
    *&v357 = v93;

    v140 = v358;
    v141 = v359;
  }

  v359 = v141;
  sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v146 = v2[6];
  v147 = v349;
  (v62)(v349, v356, v59);
  swift_storeEnumTagMultiPayload();
  if (*(v146 + 16))
  {
    LOBYTE(v360) = 0;
    v148 = v140;
    v149 = swift_allocObject();
    v354 = xmmword_1D72BAA60;
    *(v149 + 16) = xmmword_1D72BAA60;
    *(v149 + 32) = v360;
    v150 = v357;
    *(v149 + 40) = v340;
    *(v149 + 48) = v150;
    sub_1D5E199D8(0);
    v152 = v151;
    sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8, MEMORY[0x1E69E6F60]);

    v131 = v339;
    v338 = v152;
    v153 = sub_1D72647CC();
    LOBYTE(v360) = 0;
    v154 = swift_allocObject();
    *(v154 + 16) = v153;
    *(v154 + 24) = v354;
    *(v154 + 40) = v360;
    v155 = (v131 + *(v148 + 36));
    v156 = v155[3];
    v157 = v155[4];
    v158 = __swift_project_boxed_opaque_existential_1(v155, v156);
    MEMORY[0x1EEE9AC00](v158, v159);
    MEMORY[0x1EEE9AC00](v160, v161);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v149;
    v162 = v359;
    v164 = sub_1D5D2F7A4(v147, sub_1D615B49C, v163, sub_1D615B4A4, (&v336 - 6), v156, v157);
    v359 = v162;
    if (v162)
    {
      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);

      goto LABEL_33;
    }

    v165 = v164;

    if (v165)
    {
      v360 = v354;
      LOBYTE(v361) = 0;
      v370 = v146;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      v166 = v359;
      sub_1D72647EC();
      v59 = v352;
      if (v166)
      {

        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
        v117 = v131;
        return sub_1D5D2CFE8(v117, sub_1D66C0738);
      }

      v359 = 0;

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
      v2 = v350;
    }

    else
    {
      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);

      v2 = v350;
      v59 = v352;
    }
  }

  else
  {
    sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
  }

  v167 = v2[7];
  v168 = v2[8];
  v169 = v348;
  (v351)(v348, v356, v59);
  swift_storeEnumTagMultiPayload();
  v370 = v167;
  v371 = v168;
  v354 = xmmword_1D72BAA70;
  v360 = xmmword_1D72BAA70;
  LOBYTE(v361) = 0;
  LOBYTE(v369) = 0;
  v170 = swift_allocObject();
  v349 = &v336;
  *(v170 + 16) = v354;
  *(v170 + 32) = v369;
  v171 = v340;
  v172 = v357;
  *(v170 + 40) = v340;
  *(v170 + 48) = v172;
  MEMORY[0x1EEE9AC00](v170, v173);
  *(&v336 - 4) = sub_1D5B4AA6C;
  *(&v336 - 3) = 0;
  v334 = sub_1D6708BA8;
  v335 = v174;
  LOBYTE(v369) = 0;
  v175 = swift_allocObject();
  *(v175 + 16) = v354;
  *(v175 + 32) = v369;
  *(v175 + 40) = v171;
  *(v175 + 48) = v172;
  sub_1D5E199D8(0);
  v177 = v176;
  v178 = sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v179 = v339;
  v338 = v177;
  v337 = v178;
  v180 = sub_1D72647CC();
  LOBYTE(v369) = 0;
  v181 = swift_allocObject();
  *(v181 + 16) = v180;
  *(v181 + 24) = v354;
  *(v181 + 40) = v369;
  v182 = (v179 + *(v358 + 36));
  v183 = v182[3];
  v184 = v182[4];
  v185 = __swift_project_boxed_opaque_existential_1(v182, v183);
  MEMORY[0x1EEE9AC00](v185, v186);
  MEMORY[0x1EEE9AC00](v187, v188);
  *(&v336 - 4) = sub_1D615B4A4;
  *(&v336 - 3) = (&v336 - 6);
  v334 = sub_1D6708BA8;
  v335 = v175;
  v189 = v359;
  sub_1D5D2BC70(v169, sub_1D615B49C, v190, sub_1D615B4A4, (&v336 - 6), v183, v184);
  if (v189)
  {
    sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);

    v117 = v179;
    return sub_1D5D2CFE8(v117, sub_1D66C0738);
  }

  *&v354 = v182;

  sub_1D72647EC();
  sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);

  v191 = v350[9];
  v192 = v347;
  (v351)(v347, v356, v352);
  swift_storeEnumTagMultiPayload();
  v370 = v191;
  v358 = xmmword_1D72BAA80;
  v360 = xmmword_1D72BAA80;
  LOBYTE(v361) = 0;
  LOBYTE(v369) = 0;
  v193 = swift_allocObject();
  v349 = &v336;
  *(v193 + 16) = v358;
  *(v193 + 32) = v369;
  v194 = v340;
  v195 = v357;
  *(v193 + 40) = v340;
  *(v193 + 48) = v195;
  MEMORY[0x1EEE9AC00](v193, v196);
  v359 = 0;
  *(&v336 - 4) = sub_1D5B4AA6C;
  *(&v336 - 3) = 0;
  v334 = sub_1D6708BA8;
  v335 = v197;
  LOBYTE(v369) = 0;
  v198 = swift_allocObject();
  *(v198 + 16) = v358;
  *(v198 + 32) = v369;
  *(v198 + 40) = v194;
  *(v198 + 48) = v195;
  swift_retain_n();
  v199 = sub_1D72647CC();
  LOBYTE(v369) = 0;
  v200 = swift_allocObject();
  *(v200 + 16) = v199;
  *(v200 + 24) = v358;
  *(v200 + 40) = v369;
  v201 = *(v354 + 24);
  v202 = *(v354 + 32);
  v203 = __swift_project_boxed_opaque_existential_1(v354, v201);
  MEMORY[0x1EEE9AC00](v203, v204);
  MEMORY[0x1EEE9AC00](v205, v206);
  *(&v336 - 4) = sub_1D615B4A4;
  *(&v336 - 3) = (&v336 - 6);
  v334 = sub_1D6708BA8;
  v335 = v198;
  v207 = v359;
  sub_1D5D2BC70(v192, sub_1D615B49C, v208, sub_1D615B4A4, (&v336 - 6), v201, v202);
  if (v207)
  {
    sub_1D5D2CFE8(v192, type metadata accessor for FormatVersionRequirement);

    v49 = v339;
    goto LABEL_45;
  }

  sub_1D5C34D84(0, &qword_1EDF1B540, &type metadata for FormatStateViewNodeState, MEMORY[0x1E69E62F8]);
  sub_1D66C085C();
  sub_1D72647EC();
  v359 = 0;
  sub_1D5D2CFE8(v192, type metadata accessor for FormatVersionRequirement);

  v209 = v350;
  swift_beginAccess();
  v210 = v209[10];
  v211 = v346;
  (v351)(v346, v356, v352);
  swift_storeEnumTagMultiPayload();
  if (v210)
  {
    LOBYTE(v360) = 0;
    v212 = swift_allocObject();
    v358 = xmmword_1D72BAA90;
    *(v212 + 16) = xmmword_1D72BAA90;
    *(v212 + 32) = v360;
    *(v212 + 40) = v340;
    *(v212 + 48) = v357;

    v213 = v339;
    v214 = sub_1D72647CC();
    LOBYTE(v360) = 0;
    v215 = swift_allocObject();
    *(v215 + 16) = v214;
    *(v215 + 24) = v358;
    *(v215 + 40) = v360;
    v216 = *(v354 + 24);
    v217 = *(v354 + 32);
    v218 = __swift_project_boxed_opaque_existential_1(v354, v216);
    MEMORY[0x1EEE9AC00](v218, v219);
    MEMORY[0x1EEE9AC00](v220, v221);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v212;
    v222 = v359;
    v224 = sub_1D5D2F7A4(v211, sub_1D615B49C, v223, sub_1D615B4A4, (&v336 - 6), v216, v217);
    v225 = v345;
    v359 = v222;
    if (v222)
    {
      sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);

      v117 = v213;
      return sub_1D5D2CFE8(v117, sub_1D66C0738);
    }

    v227 = v224;

    v226 = v344;
    if (v227)
    {
      v360 = v358;
      LOBYTE(v361) = 0;
      v369 = v210;
      v228 = v339;
      v229 = v359;
      sub_1D72647EC();
      v359 = v229;
      if (v229)
      {
        sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);
        v117 = v228;
        return sub_1D5D2CFE8(v117, sub_1D66C0738);
      }
    }

    sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);
    v209 = v350;
  }

  else
  {
    sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);
    v226 = v344;
    v225 = v345;
  }

  swift_beginAccess();
  v230 = v209[11];
  sub_1D5EB1500(v230);
  v231 = v352;
  v232 = v357;
  v233 = v354;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v234 = __swift_project_value_buffer(v231, qword_1EDFFCD50);
  (v351)(v225, v234, v231);
  swift_storeEnumTagMultiPayload();
  if (v230 == 0x8000000000000000)
  {
    sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
    v235 = v226;
  }

  else
  {
    v349 = v234;
    LOBYTE(v360) = 0;
    v236 = swift_allocObject();
    v358 = xmmword_1D72BAAA0;
    *(v236 + 16) = xmmword_1D72BAAA0;
    *(v236 + 32) = v360;
    *(v236 + 40) = v340;
    *(v236 + 48) = v232;

    v237 = v339;
    v238 = sub_1D72647CC();
    LOBYTE(v360) = 0;
    v239 = swift_allocObject();
    *(v239 + 16) = v238;
    *(v239 + 24) = v358;
    *(v239 + 40) = v360;
    v240 = v233[3];
    v241 = v233[4];
    v242 = __swift_project_boxed_opaque_existential_1(v233, v240);
    MEMORY[0x1EEE9AC00](v242, v243);
    MEMORY[0x1EEE9AC00](v244, v245);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v236;
    v246 = v359;
    v248 = sub_1D5D2F7A4(v225, sub_1D615B49C, v247, sub_1D615B4A4, (&v336 - 6), v240, v241);
    if (v246)
    {

      sub_1D5EB15C4(v230);
      sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v237, sub_1D66C0738);
    }

    v249 = v248;

    if (v249)
    {
      v360 = v358;
      LOBYTE(v361) = 0;
      v368 = v230;
      sub_1D5DF6A60();
      sub_1D72647EC();
      v359 = 0;
      sub_1D5EB15C4(v368);
      sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
      v209 = v350;
      v231 = v352;
    }

    else
    {
      sub_1D5EB15C4(v230);
      sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
      v209 = v350;
      v231 = v352;
      v359 = 0;
    }

    v235 = v344;
    v232 = v357;
    v233 = v354;
    v234 = v349;
  }

  swift_beginAccess();
  v250 = *(v209 + 96);
  v251 = v339;
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v252 = __swift_project_value_buffer(v231, qword_1EDFFCD00);
  (v351)(v235, v252, v231);
  swift_storeEnumTagMultiPayload();
  if (v250)
  {
    sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v360) = 0;
    v253 = swift_allocObject();
    v358 = xmmword_1D72BAAB0;
    *(v253 + 16) = xmmword_1D72BAAB0;
    *(v253 + 32) = v360;
    *(v253 + 40) = v340;
    *(v253 + 48) = v232;

    v254 = sub_1D72647CC();
    LOBYTE(v360) = 0;
    v255 = swift_allocObject();
    *(v255 + 16) = v254;
    *(v255 + 24) = v358;
    *(v255 + 40) = v360;
    v256 = v233[3];
    v257 = v233[4];
    v258 = __swift_project_boxed_opaque_existential_1(v233, v256);
    MEMORY[0x1EEE9AC00](v258, v259);
    MEMORY[0x1EEE9AC00](v260, v261);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v253;
    v262 = v359;
    v264 = sub_1D5D2F7A4(v235, sub_1D615B49C, v263, sub_1D615B4A4, (&v336 - 6), v256, v257);
    if (v262)
    {
      sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v251, sub_1D66C0738);
    }

    v265 = v264;

    if (v265)
    {
      v360 = v358;
      LOBYTE(v361) = 0;
      LOBYTE(v367) = 0;
      sub_1D72647EC();
    }

    v359 = 0;
    sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
    v209 = v350;
    v231 = v352;
    v232 = v357;
  }

  v266 = v209[13];
  v267 = v343;
  (v351)(v343, v234, v231);
  swift_storeEnumTagMultiPayload();
  v358 = xmmword_1D72BAAC0;
  v360 = xmmword_1D72BAAC0;
  LOBYTE(v361) = 0;
  LOBYTE(v367) = 0;
  v268 = swift_allocObject();
  v270 = v268;
  *(v268 + 16) = v358;
  *(v268 + 32) = v367;
  v271 = v340;
  *(v268 + 40) = v340;
  *(v268 + 48) = v232;
  if (v266)
  {
    v349 = &v336;
    v367 = v266;
    MEMORY[0x1EEE9AC00](v268, v269);
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v270;
    LOBYTE(v365) = 0;
    v272 = swift_allocObject();
    *(v272 + 16) = v358;
    *(v272 + 32) = v365;
    *(v272 + 40) = v271;
    *(v272 + 48) = v232;
    swift_retain_n();

    v273 = sub_1D72647CC();
    LOBYTE(v365) = 0;
    v274 = swift_allocObject();
    *(v274 + 16) = v273;
    *(v274 + 24) = v358;
    *(v274 + 40) = v365;
    v275 = *(v354 + 24);
    v276 = *(v354 + 32);
    v277 = __swift_project_boxed_opaque_existential_1(v354, v275);
    MEMORY[0x1EEE9AC00](v277, v278);
    MEMORY[0x1EEE9AC00](v279, v280);
    *(&v336 - 4) = sub_1D615B4A4;
    *(&v336 - 3) = (&v336 - 6);
    v334 = sub_1D6708BA8;
    v335 = v272;
    v281 = v359;
    v283 = sub_1D5D2F7A4(v267, sub_1D615B49C, v282, sub_1D615B4A4, (&v336 - 6), v275, v276);
    v359 = v281;
    if (v281)
    {

LABEL_77:
      v284 = v267;
      goto LABEL_102;
    }

    v286 = v283;

    if (v286)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
      v287 = v359;
      sub_1D72647EC();
      v359 = v287;
      if (v287)
      {

        v267 = v343;
        goto LABEL_77;
      }
    }

    v209 = v350;
    v285 = v342;
    v231 = v352;
    v232 = v357;
  }

  else
  {

    v285 = v342;
  }

  sub_1D5D2CFE8(v343, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v288 = v209[14];
  (v351)(v285, v356, v231);
  swift_storeEnumTagMultiPayload();
  v289 = v339;
  if (!*(v288 + 16))
  {
    v302 = v341;
    goto LABEL_92;
  }

  LOBYTE(v360) = 0;
  v290 = swift_allocObject();
  v358 = xmmword_1D72BAAD0;
  *(v290 + 16) = xmmword_1D72BAAD0;
  *(v290 + 32) = v360;
  *(v290 + 40) = v340;
  *(v290 + 48) = v232;

  v291 = sub_1D72647CC();
  LOBYTE(v360) = 0;
  v292 = swift_allocObject();
  *(v292 + 16) = v291;
  *(v292 + 24) = v358;
  *(v292 + 40) = v360;
  v293 = *(v354 + 24);
  v294 = *(v354 + 32);
  v295 = __swift_project_boxed_opaque_existential_1(v354, v293);
  MEMORY[0x1EEE9AC00](v295, v296);
  MEMORY[0x1EEE9AC00](v297, v298);
  *(&v336 - 4) = sub_1D5B4AA6C;
  *(&v336 - 3) = 0;
  v334 = sub_1D6708BA8;
  v335 = v290;
  v299 = v359;
  v301 = sub_1D5D2F7A4(v285, sub_1D615B49C, v300, sub_1D615B4A4, (&v336 - 6), v293, v294);
  if (!v299)
  {
    v303 = v301;
    v359 = 0;

    if (v303)
    {
      v304 = v359;
      sub_1D5E07B38(v288, v339, 0xA, 0, 0);
      v359 = v304;
      if (v304)
      {

        v289 = v339;
        v285 = v342;
        goto LABEL_86;
      }
    }

    v302 = v341;
    v209 = v350;
LABEL_92:
    sub_1D5D2CFE8(v342, type metadata accessor for FormatVersionRequirement);
    v305 = v209[15];
    v306 = v209[16];
    v307 = v209[17];
    v308 = v209[18];
    v349 = v209[19];
    v356 = v209[20];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v309 = v352;
    v310 = __swift_project_value_buffer(v352, qword_1EDFFCE38);
    (v351)(v302, v310, v309);
    swift_storeEnumTagMultiPayload();
    v358 = xmmword_1D72BAAE0;
    v365 = xmmword_1D72BAAE0;
    v366 = 0;
    LOBYTE(v360) = 0;
    v311 = swift_allocObject();
    v313 = v311;
    *(v311 + 16) = v358;
    *(v311 + 32) = v360;
    v314 = v340;
    v315 = v357;
    *(v311 + 40) = v340;
    *(v311 + 48) = v315;
    if (!v305)
    {

      sub_1D5D2CFE8(v341, type metadata accessor for FormatVersionRequirement);

LABEL_103:
      v117 = v339;
      return sub_1D5D2CFE8(v117, sub_1D66C0738);
    }

    v355 = &v336;
    *&v360 = v305;
    *(&v360 + 1) = v306;
    v361 = v307;
    v316 = v308;
    v362 = v308;
    v317 = v349;
    v363 = v349;
    v364 = v356;
    MEMORY[0x1EEE9AC00](v311, v312);
    v353 = &v336 - 6;
    *(&v336 - 4) = sub_1D5B4AA6C;
    *(&v336 - 3) = 0;
    v334 = sub_1D6708BA8;
    v335 = v313;
    v375 = 0;
    v318 = swift_allocObject();
    *(v318 + 16) = v358;
    *(v318 + 32) = v375;
    *(v318 + 40) = v314;
    *(v318 + 48) = v315;
    swift_retain_n();
    sub_1D5EB1D80(v305, v306, v307, v316, v317, v356);
    v319 = sub_1D72647CC();
    v375 = 0;
    v320 = swift_allocObject();
    *(v320 + 16) = v319;
    *(v320 + 24) = v358;
    *(v320 + 40) = v375;
    v321 = *(v354 + 24);
    v322 = *(v354 + 32);
    v323 = __swift_project_boxed_opaque_existential_1(v354, v321);
    MEMORY[0x1EEE9AC00](v323, v324);
    MEMORY[0x1EEE9AC00](v325, v326);
    v327 = v353;
    *(&v336 - 4) = sub_1D615B4A4;
    *(&v336 - 3) = v327;
    v334 = sub_1D6708BA8;
    v335 = v318;
    v328 = v359;
    v330 = sub_1D5D2F7A4(v341, sub_1D615B49C, v329, sub_1D615B4A4, (&v336 - 6), v321, v322);
    v359 = v328;
    if (v328)
    {
    }

    else
    {
      v331 = v330;

      if (v331)
      {
        sub_1D6659A24();
        v332 = v359;
        sub_1D72647EC();
        v359 = v332;
      }
    }

    v333 = v363;

    sub_1D5CBF568(v333);

    v284 = v341;
LABEL_102:
    sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);
    goto LABEL_103;
  }

LABEL_86:
  sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v289, sub_1D66C0738);
}

unint64_t sub_1D65AE168(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x736574617473;
      break;
    case 6:
      result = 0x7865646E497ALL;
      break;
    case 7:
      result = 0x696C696269736976;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x6F6974616D696E61;
      break;
    case 10:
      result = 0x726F7463656C6573;
      break;
    case 11:
      result = 2019912806;
      break;
    case 12:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65AE2CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C0CD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65AE304(uint64_t a1)
{
  v2 = sub_1D5E19AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AE340(uint64_t a1)
{
  v2 = sub_1D5E19AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatString.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v36;
    v13 = a1[3];
    v29 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51179C8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v29;
          goto LABEL_9;
        }
      }
    }

    sub_1D66C094C();
    v31 = 0;
    *&v32 = 0;
    sub_1D726431C();
    if (v30)
    {
      if (v30 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        a1 = v29;
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = v31;
        v25 = v32;
        v26 = 0uLL;
        v27 = 0x4000;
      }

      else
      {
        v30 = xmmword_1D7279980;
        sub_1D5C77160();
        sub_1D726431C();
        a1 = v29;
        (*(v11 + 8))(v10, v6);
        v24 = v31;
        v25 = v32;
        v26 = v33;
        v23 = v34;
        v27 = v35 & 0x7FF | 0x8000;
      }
    }

    else
    {
      sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
      v30 = xmmword_1D7279980;
      sub_1D5C34150();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v27 = 0;
      v24 = v31;
      *&v25 = v32;
      v26 = 0uLL;
      a1 = v29;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 24) = v26;
    *(v12 + 40) = v23;
    *(v12 + 48) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatString.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v43 = *(v1 + 16);
  v45 = v18;
  v20 = *(v1 + 32);
  v19 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  v44 = v17;
  sub_1D5D2EE70(&type metadata for FormatString, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatString, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v23, v17, v24, &off_1F51F6C18);
  if (v21 >> 14)
  {
    if (v21 >> 14 == 1)
    {
      v26 = *(&v45 + 1);
      v27 = v43;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD98);
      (*(*(v28 - 8) + 16))(v9, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v30 = v26;
      v31 = v44;
      sub_1D63BB7D8(1, v45, v30, v27, v9);
      v32 = v9;
    }

    else
    {
      v46[0] = v45;
      v46[1] = v43;
      v47 = v20;
      v48 = v19;
      v49 = v21 & 0x3FFF;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCE38);
      v39 = v42;
      (*(*(v37 - 8) + 16))(v42, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v44;
      sub_1D63BB970(2, v46, v39);
      v32 = v39;
    }
  }

  else
  {
    v33 = *(&v45 + 1);
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD98);
    (*(*(v34 - 8) + 16))(v13, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v33;
    v31 = v44;
    sub_1D63BB610(0, v45, v36, v13);
    v32 = v13;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t sub_1D65AEC78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 0x676E69646E6962;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656E696C6E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6E6F6974706FLL;
  if (*a2 != 1)
  {
    v8 = 0x676E69646E6962;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65AED6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65AEE08(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65AEE90(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65AEF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66636C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65AEF58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 0x676E69646E6962;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65AF060@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C10EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65AF098(uint64_t a1)
{
  v2 = sub_1D5C2E89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AF0D4(uint64_t a1)
{
  v2 = sub_1D5C2E89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStyleImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v87 - v11;
  sub_1D66C0A1C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v91 = v1[1];
  v89 = v1[2];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5CCEA34(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF25688, sub_1D5CCEA34, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatStyleImage, v22, v24, v19, &type metadata for FormatStyleImage, v22, &type metadata for FormatVersions.JazzkonG, v20, v17, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v96 = v26;
  v97 = v25;
  v94 = v27 + 16;
  v95 = v28;
  (v28)(v12);
  v93 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v107 = v18;
  v105 = 0uLL;
  v106 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v104 = 0;
  v32 = swift_allocObject();
  v102 = &v87;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v104;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v87 - 4) = sub_1D5B4AA6C;
  *(&v87 - 3) = 0;
  v85 = sub_1D6708BB0;
  v86 = v34;
  v104 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v104;
  v92 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D5E19968(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03708, sub_1D5E19968, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v99 = v37;
  v100 = v38;
  v39 = sub_1D72647CC();
  v104 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v104;
  v41 = *(v14 + 36);
  v42 = v12;
  v43 = &v17[v41];
  v101 = v17;
  v44 = *&v17[v41 + 24];
  v45 = *&v17[v41 + 32];
  v46 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v87 - 4) = sub_1D615B4A4;
  *(&v87 - 3) = (&v87 - 6);
  v85 = sub_1D6708BB0;
  v86 = v35;
  v50 = v103;
  sub_1D5D2BC70(v42, sub_1D615B49C, v51, sub_1D615B4A4, (&v87 - 6), v44, v45);
  if (v50)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v53 = v101;
    return sub_1D5D2CFE8(v53, sub_1D66C0A1C);
  }

  v87 = v43;
  v88 = v31;

  sub_1D5B55E48();
  v52 = v101;
  sub_1D72647EC();
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

  v55 = v98;
  v95(v98, v96, v97);
  swift_storeEnumTagMultiPayload();
  v107 = v91;
  v103 = xmmword_1D728CF30;
  v105 = xmmword_1D728CF30;
  v106 = 0;
  v104 = 0;
  v56 = swift_allocObject();
  v102 = &v87;
  *(v56 + 16) = v103;
  *(v56 + 32) = v104;
  v57 = v92;
  v58 = v88;
  *(v56 + 40) = v92;
  *(v56 + 48) = v58;
  MEMORY[0x1EEE9AC00](v56, v59);
  v91 = 0;
  *(&v87 - 4) = sub_1D5B4AA6C;
  *(&v87 - 3) = 0;
  v85 = sub_1D6708BB0;
  v86 = v60;
  v104 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = v103;
  *(v61 + 32) = v104;
  *(v61 + 40) = v57;
  *(v61 + 48) = v58;
  swift_retain_n();
  v62 = sub_1D72647CC();
  v104 = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = v103;
  *(v63 + 40) = v104;
  v64 = *(v87 + 3);
  v65 = *(v87 + 4);
  v66 = __swift_project_boxed_opaque_existential_1(v87, v64);
  MEMORY[0x1EEE9AC00](v66, v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  *(&v87 - 4) = sub_1D615B4A4;
  *(&v87 - 3) = (&v87 - 6);
  v85 = sub_1D6708BB0;
  v86 = v61;
  v70 = v91;
  sub_1D5D2BC70(v55, sub_1D615B49C, v71, sub_1D615B4A4, (&v87 - 6), v64, v65);
  if (v70)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v53 = v52;
    return sub_1D5D2CFE8(v53, sub_1D66C0A1C);
  }

  type metadata accessor for FormatImageNodeStyle(0);
  sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle, &protocol conformance descriptor for FormatImageNodeStyle);
  sub_1D72647EC();
  v72 = v52;
  sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

  v73 = v90;
  v95(v90, v96, v97);
  swift_storeEnumTagMultiPayload();
  v74 = v89;
  if (*(v89 + 16))
  {
    LOBYTE(v105) = 0;
    v75 = swift_allocObject();
    v103 = xmmword_1D7297410;
    *(v75 + 16) = xmmword_1D7297410;
    *(v75 + 32) = v105;
    *(v75 + 40) = v92;
    *(v75 + 48) = v88;

    v76 = sub_1D72647CC();
    LOBYTE(v105) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    *(v77 + 24) = v103;
    *(v77 + 40) = v105;
    v78 = *(v87 + 3);
    v79 = *(v87 + 4);
    v80 = __swift_project_boxed_opaque_existential_1(v87, v78);
    MEMORY[0x1EEE9AC00](v80, v81);
    MEMORY[0x1EEE9AC00](v82, v83);
    *(&v87 - 4) = sub_1D5B4AA6C;
    *(&v87 - 3) = 0;
    v85 = sub_1D66C0AB0;
    v86 = v75;
    LOBYTE(v78) = sub_1D5D2F7A4(v73, sub_1D615B49C, v84, sub_1D615B4A4, (&v87 - 6), v78, v79);

    if (v78)
    {
      sub_1D5E080BC(v74, v72, 2, 0, 0);
    }
  }

  sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v72, sub_1D66C0A1C);
}

uint64_t sub_1D65AFC88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C1338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65AFCC0(uint64_t a1)
{
  v2 = sub_1D5CCEBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AFCFC(uint64_t a1)
{
  v2 = sub_1D5CCEBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65AFD38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C14A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65AFD70(uint64_t a1)
{
  v2 = sub_1D5CA58E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AFDAC(uint64_t a1)
{
  v2 = sub_1D5CA58E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65AFDE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C1874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65AFE20(uint64_t a1)
{
  v2 = sub_1D5C62678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AFE5C(uint64_t a1)
{
  v2 = sub_1D5C62678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSupplementaryNodePinDistance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5117A18;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66C0B2C();
    v27 = 0uLL;
    sub_1D726431C();
    v22 = v25;
    if (v25)
    {
      v27 = xmmword_1D7279980;
      sub_1D66C0B80();
      sub_1D726427C();
      (*(v7 + 8))(v10, v6);
      v23 = v25;
      v24 = v26;
    }

    else
    {
      sub_1D5C71DC8(0);
      v27 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = 0;
      v23 = v25;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 9) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodePinDistance.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 9);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodePinDistance, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatSupplementaryNodePinDistance, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v19, v14, v20, &off_1F51F6CD8);
  if (v17)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
    (*(*(v22 - 8) + 16))(v6, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64383A4(1, v15, v16, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD50);
    (*(*(v25 - 8) + 16))(v10, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63866E8(0, v15, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65B0574(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656D617266;
  }

  else
  {
    v2 = 0x6465786966;
  }

  if (*a2)
  {
    v3 = 0x656D617266;
  }

  else
  {
    v3 = 0x6465786966;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D65B05F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65B0664(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65B06B8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65B0730(uint64_t *a1@<X8>)
{
  v2 = 0x6465786966;
  if (*v1)
  {
    v2 = 0x656D617266;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t FormatSupplementaryNodePinDistanceAdjustment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v25;
    v14 = v10;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117A68;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66C0BD4();
    v26 = 0uLL;
    sub_1D726431C();
    v23 = v27;
    v26 = xmmword_1D7279980;
    sub_1D66C0C28();
    sub_1D726431C();
    (*(v7 + 8))(v14, v6);
    *v13 = v27;
    *(v13 + 8) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodePinDistanceAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *v1;
  v23 = *(v1 + 8);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodePinDistanceAdjustment, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatSupplementaryNodePinDistanceAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6385EB8(2, v39, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD50);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6385EB8(3, v39, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD50);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6385EB8(1, v39, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD50);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6385EB8(0, v39, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65B1028()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65B10E0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65B1184(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65B1238@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664AAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65B1268(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579297;
  v4 = 0xE800000000000000;
  v5 = 0x796C7069746C756DLL;
  if (*v1 != 2)
  {
    v5 = 0x656469766964;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7463617274627573;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D65B13C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a2;
  v31 = a4;
  v28 = a5;
  v29 = a3;
  v6 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v13;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = v14;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v10 + 8))(v18, v9);
          goto LABEL_9;
        }
      }
    }

    (v29)(v17);
    v32 = 0uLL;
    sub_1D726431C();
    if (v33)
    {
      if (v33 == 1)
      {
        (*(v10 + 8))(v18, v9);
        v27 = 1;
      }

      else
      {
        sub_1D5C71DC8(0);
        v32 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v10 + 8))(v18, v9);
        v27 = v33;
      }
    }

    else
    {
      (*(v10 + 8))(v18, v9);
      v27 = 0;
    }

    *v28 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D65B17A8(void *a1, uint64_t a2, void (*a3)(uint64_t, char *, __n128), void (*a4)(uint64_t, uint64_t, char *, __n128))
{
  v36 = a4;
  v37 = a3;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v4;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v27, v24, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD50);
      (*(*(v28 - 8) + 16))(v14, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      (v37)(1, v14);
      v30 = v14;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD50);
      (*(*(v33 - 8) + 16))(v10, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      (v36)(2, v23, v10);
      v30 = v10;
    }
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
    (*(*(v31 - 8) + 16))(v18, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    (v37)(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65B1BB8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x676E696361705368;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6465786966;
  if (v3 == 1)
  {
    v6 = 0x676E696361705368;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E696361705376;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6465786966;
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x676E696361705376;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65B1C94()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65B1D28(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65B1DA8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65B1E38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664AF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t FormatSupplementaryNodePinEdge.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD50);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v27;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v27);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t sub_1D65B22B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6465786966;
  if (v2 != 1)
  {
    v4 = 0x6E6F6974636573;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701274725;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6465786966;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6974636573;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701274725;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65B23AC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65B2444(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65B24C8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D65B255C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6664768(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D65B258C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6465786966;
  if (v2 != 1)
  {
    v5 = 0x6E6F6974636573;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701274725;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65B2690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F66736E617274;
  }

  else
  {
    v3 = 0x6764456F546E6970;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEF656764456F546DLL;
  }

  if (*a2)
  {
    v5 = 0x726F66736E617274;
  }

  else
  {
    v5 = 0x6764456F546E6970;
  }

  if (*a2)
  {
    v6 = 0xEF656764456F546DLL;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65B2748()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65B27DC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65B285C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65B28F8(uint64_t *a1@<X8>)
{
  v2 = 0x6764456F546E6970;
  if (*v1)
  {
    v2 = 0x726F66736E617274;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF656764456F546DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D65B29F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xE900000000000059;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (*a2)
  {
    v3 = 0xE900000000000059;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

uint64_t sub_1D65B2A8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65B2B00(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65B2B60(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65B2BDC(void *a1@<X8>)
{
  v2 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0xE900000000000059;
  }

  *a1 = 0x656C616353706F74;
  a1[1] = v2;
}

uint64_t FormatSupplementaryNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v195 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v200 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v201 = &v195 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v202 = &v195 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v203 = &v195 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v213 = &v195 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v195 - v26;
  sub_1D66C22A4(0);
  v211 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D66C23CC(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF24EC8, sub_1D66C23CC, &unk_1D7321584);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.JazzkonG, v33, v31, v36, &off_1F51F6BF8);
  swift_beginAccess();
  v210 = v2;
  v38 = v2[2];
  v39 = v2[3];
  v40 = qword_1EDF31EA8;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD18);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v45 = v43 + 16;
  v208 = v42;
  v209 = v41;
  v44(v27);
  v46 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v47 = sub_1D725895C();
  v48 = (*(*(v47 - 8) + 48))(v8, 1, v47);
  v205 = v44;
  v204 = v45;
  v207 = v46;
  if (v48 != 1)
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_11;
  }

  v206 = v38;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v49 = v211;
  v50 = &v31[*(v211 + 11)];
  v52 = *v50;
  v51 = *(v50 + 1);
  LOBYTE(v220) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v220;
  *(v53 + 40) = v52;
  *(v53 + 48) = v51;
  sub_1D66C2338(0);
  v55 = v54;
  v56 = sub_1D5B58B84(&qword_1EDF02E28, sub_1D66C2338, MEMORY[0x1E69E6F60]);

  *&v214 = v55;
  v57 = sub_1D72647CC();
  LOBYTE(v220) = 0;
  v58 = v31;
  v59 = swift_allocObject();
  *(v59 + 24) = 0;
  *(v59 + 32) = 0;
  *(v59 + 16) = v57;
  *(v59 + 40) = v220;
  v60 = &v58[*(v49 + 9)];
  v61 = *(v60 + 3);
  v62 = *(v60 + 4);
  v63 = __swift_project_boxed_opaque_existential_1(v60, v61);
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v195 - 4) = sub_1D5B4AA6C;
  *(&v195 - 3) = 0;
  v193 = sub_1D66C254C;
  v194 = v53;
  v67 = v212;
  v69 = sub_1D5D2F7A4(v27, sub_1D615B49C, v68, sub_1D615B4A4, (&v195 - 6), v61, v62);
  if (!v67)
  {
    v71 = v69;
    v212 = v56;

    if (v71)
    {
      v220 = 0uLL;
      v221 = 0;
      *&v218 = v206;
      *(&v218 + 1) = v39;
      v31 = v58;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v212 = 0;
    }

    else
    {
      v212 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v58;
    }

    v44 = v205;
LABEL_11:
    v72 = v210[4];
    v73 = v210[5];
    (v44)(v213, v208, v209);
    swift_storeEnumTagMultiPayload();
    *&v218 = v72;
    *(&v218 + 1) = v73;
    v214 = xmmword_1D728CF30;
    v220 = xmmword_1D728CF30;
    v221 = 0;
    v74 = v211;
    v75 = &v31[*(v211 + 11)];
    v76 = *v75;
    v77 = *(v75 + 1);
    LOBYTE(v215) = 0;
    v78 = swift_allocObject();
    v206 = &v195;
    *(v78 + 16) = v214;
    *(v78 + 32) = v215;
    *(v78 + 40) = v76;
    *(v78 + 48) = v77;
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v195 - 4) = sub_1D5B4AA6C;
    *(&v195 - 3) = 0;
    v193 = sub_1D6708BB4;
    v194 = v80;
    LOBYTE(v215) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v214;
    *(v81 + 32) = v215;
    v197 = v76;
    *(v81 + 40) = v76;
    *(v81 + 48) = v77;
    sub_1D66C2338(0);
    v83 = v82;
    v84 = sub_1D5B58B84(&qword_1EDF02E28, sub_1D66C2338, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v198 = v83;
    v199 = v84;
    v85 = sub_1D72647CC();
    LOBYTE(v215) = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v214;
    *(v86 + 40) = v215;
    v87 = &v31[*(v74 + 9)];
    v88 = *(v87 + 3);
    v89 = *(v87 + 4);
    v90 = __swift_project_boxed_opaque_existential_1(v87, v88);
    MEMORY[0x1EEE9AC00](v90, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    *(&v195 - 4) = sub_1D615B4A4;
    *(&v195 - 3) = (&v195 - 6);
    v94 = v212;
    v95 = v213;
    v193 = sub_1D6708BB4;
    v194 = v81;
    sub_1D5D2BC70(v213, sub_1D615B49C, v96, sub_1D615B4A4, (&v195 - 6), v88, v89);
    if (v94)
    {
      sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

LABEL_14:
      v70 = v31;
      return sub_1D5D2CFE8(v70, sub_1D66C22A4);
    }

    v211 = v87;
    *&v214 = v77;

    sub_1D72647EC();
    sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);

    v98 = *(v210 + 48);
    v99 = v203;
    v100 = v205;
    (v205)(v203, v208, v209);
    swift_storeEnumTagMultiPayload();
    v213 = xmmword_1D7297410;
    v220 = xmmword_1D7297410;
    v221 = 0;
    LOBYTE(v218) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = v213;
    *(v102 + 32) = v218;
    v103 = v197;
    *(v102 + 40) = v197;
    v104 = v214;
    *(v102 + 48) = v214;
    v196 = v31;
    if (v98 == 2)
    {
      v212 = 0;

      v105 = v211;
      v106 = v100;
    }

    else
    {
      v212 = &v195;
      LOBYTE(v218) = v98 & 1;
      MEMORY[0x1EEE9AC00](v104, v101);
      *(&v195 - 4) = sub_1D5B4AA6C;
      *(&v195 - 3) = 0;
      v193 = sub_1D6708BB4;
      v194 = v102;
      LOBYTE(v215) = 0;
      v125 = v124;
      v126 = v99;
      v127 = swift_allocObject();
      *(v127 + 16) = v213;
      *(v127 + 32) = v215;
      *(v127 + 40) = v103;
      *(v127 + 48) = v125;
      swift_retain_n();
      v128 = sub_1D72647CC();
      LOBYTE(v215) = 0;
      v129 = swift_allocObject();
      *(v129 + 16) = v128;
      *(v129 + 24) = v213;
      *(v129 + 40) = v215;
      v105 = v211;
      v130 = *(v211 + 3);
      v131 = *(v211 + 4);
      v132 = __swift_project_boxed_opaque_existential_1(v211, v130);
      MEMORY[0x1EEE9AC00](v132, v133);
      MEMORY[0x1EEE9AC00](v134, v135);
      *(&v195 - 4) = sub_1D615B4A4;
      *(&v195 - 3) = (&v195 - 6);
      v193 = sub_1D6708BB4;
      v194 = v127;
      v137 = sub_1D5D2F7A4(v126, sub_1D615B49C, v136, sub_1D615B4A4, (&v195 - 6), v130, v131);
      v138 = v137;

      if (v138)
      {
        sub_1D72647EC();
        v106 = v205;
        v99 = v203;
        v212 = 0;
      }

      else
      {
        v212 = 0;
        v106 = v205;
        v99 = v203;
      }
    }

    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

    v107 = v210;
    swift_beginAccess();
    v108 = v107[7];
    v109 = v202;
    v106(v202, v208, v209);
    swift_storeEnumTagMultiPayload();
    if (*(v108 + 16))
    {
      LOBYTE(v218) = 0;
      v110 = swift_allocObject();
      v213 = xmmword_1D72BAA60;
      *(v110 + 16) = xmmword_1D72BAA60;
      *(v110 + 32) = v218;
      *(v110 + 40) = v197;
      *(v110 + 48) = v214;

      v31 = v196;
      v111 = v109;
      v112 = sub_1D72647CC();
      LOBYTE(v218) = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v213;
      *(v113 + 40) = v218;
      v114 = *(v105 + 3);
      v115 = *(v105 + 4);
      v116 = __swift_project_boxed_opaque_existential_1(v105, v114);
      MEMORY[0x1EEE9AC00](v116, v117);
      MEMORY[0x1EEE9AC00](v118, v119);
      *(&v195 - 4) = sub_1D5B4AA6C;
      *(&v195 - 3) = 0;
      v193 = sub_1D6708BB4;
      v194 = v110;
      v120 = v212;
      v122 = sub_1D5D2F7A4(v111, sub_1D615B49C, v121, sub_1D615B4A4, (&v195 - 6), v114, v115);
      v123 = v120;
      if (v120)
      {
        sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);

        goto LABEL_14;
      }

      v139 = v122;

      if (v139)
      {
        v218 = v213;
        v219 = 0;
        v215 = v108;
        sub_1D5C34D84(0, &qword_1EDF04B88, &type metadata for FormatSupplementaryNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D66C25C8();
        sub_1D72647EC();
        v106 = v205;

        sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);

        v106 = v205;
      }
    }

    else
    {
      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
      v123 = v212;
    }

    v140 = v210[8];
    v141 = *(v210 + 36) | (*(v210 + 74) << 16);
    v142 = v201;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v143 = v209;
    v144 = __swift_project_value_buffer(v209, qword_1EDFFCD50);
    v145 = v106;
    v106(v142, v144, v143);
    swift_storeEnumTagMultiPayload();
    v213 = xmmword_1D72BAA70;
    v218 = xmmword_1D72BAA70;
    v219 = 0;
    LOBYTE(v215) = 0;
    v146 = v142;
    v148 = swift_allocObject();
    *(v148 + 16) = v213;
    *(v148 + 32) = v215;
    v149 = v197;
    *(v148 + 40) = v197;
    v150 = v214;
    *(v148 + 48) = v214;
    if (BYTE2(v141) == 255)
    {

      sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

      v151 = v145;
    }

    else
    {
      v212 = &v195;
      v215 = v140;
      v216 = v141;
      v217 = BYTE2(v141);
      MEMORY[0x1EEE9AC00](v150, v147);
      v208 = &v195 - 6;
      *(&v195 - 4) = sub_1D5B4AA6C;
      *(&v195 - 3) = 0;
      v193 = sub_1D6708BB4;
      v194 = v148;
      v222 = 0;
      v160 = v105;
      v162 = v161;
      v163 = swift_allocObject();
      *(v163 + 16) = v213;
      *(v163 + 32) = v222;
      *(v163 + 40) = v149;
      *(v163 + 48) = v162;
      swift_retain_n();
      sub_1D62B7DCC(v140, v141);
      v164 = sub_1D72647CC();
      v222 = 0;
      v165 = swift_allocObject();
      *(v165 + 16) = v164;
      *(v165 + 24) = v213;
      *(v165 + 40) = v222;
      v166 = v123;
      v167 = *(v160 + 3);
      v168 = *(v160 + 4);
      v169 = __swift_project_boxed_opaque_existential_1(v160, v167);
      MEMORY[0x1EEE9AC00](v169, v170);
      MEMORY[0x1EEE9AC00](v171, v172);
      v173 = v208;
      *(&v195 - 4) = sub_1D615B4A4;
      *(&v195 - 3) = v173;
      v193 = sub_1D6708BB4;
      v194 = v163;
      v175 = sub_1D5D2F7A4(v201, sub_1D615B49C, v174, sub_1D615B4A4, (&v195 - 6), v167, v168);
      v123 = v166;
      if (v166)
      {

        sub_1D610CA74(v215, v216, v217, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
        goto LABEL_49;
      }

      v191 = v175;

      if (v191)
      {
        sub_1D610BD84();
        sub_1D72647EC();
        v151 = v205;

        sub_1D610CA74(v215, v216, v217, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D610CA74(v215, v216, v217, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
        v151 = v205;
      }

      v105 = v211;
    }

    v152 = *(v210 + 75);
    v153 = v200;
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v154 = v209;
    v155 = __swift_project_value_buffer(v209, qword_1EDFFCD68);
    v151(v153, v155, v154);
    swift_storeEnumTagMultiPayload();
    v213 = xmmword_1D72BAA80;
    v218 = xmmword_1D72BAA80;
    v219 = 0;
    LOBYTE(v215) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v213;
    *(v157 + 32) = v215;
    v158 = v197;
    *(v157 + 40) = v197;
    v159 = v214;
    *(v157 + 48) = v214;
    if (v152 == 3)
    {

LABEL_48:
      sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

      goto LABEL_49;
    }

    v211 = &v195;
    v212 = v123;
    LOBYTE(v215) = v152;
    MEMORY[0x1EEE9AC00](v159, v156);
    *(&v195 - 4) = sub_1D5B4AA6C;
    *(&v195 - 3) = 0;
    v193 = sub_1D6708BB4;
    v194 = v157;
    v222 = 0;
    v176 = v105;
    v178 = v177;
    v179 = swift_allocObject();
    *(v179 + 16) = v213;
    *(v179 + 32) = v222;
    *(v179 + 40) = v158;
    *(v179 + 48) = v178;
    swift_retain_n();
    v180 = sub_1D72647CC();
    v222 = 0;
    v181 = swift_allocObject();
    *(v181 + 16) = v180;
    *(v181 + 24) = v213;
    *(v181 + 40) = v222;
    v182 = *(v176 + 3);
    v183 = *(v176 + 4);
    v184 = __swift_project_boxed_opaque_existential_1(v176, v182);
    MEMORY[0x1EEE9AC00](v184, v185);
    MEMORY[0x1EEE9AC00](v186, v187);
    *(&v195 - 4) = sub_1D615B4A4;
    *(&v195 - 3) = (&v195 - 6);
    v193 = sub_1D6708BB4;
    v194 = v179;
    v188 = v212;
    v190 = sub_1D5D2F7A4(v153, sub_1D615B49C, v189, sub_1D615B4A4, (&v195 - 6), v182, v183);
    if (!v188)
    {
      v192 = v190;

      if (v192)
      {
        sub_1D5F23DE4();
        sub_1D72647EC();
      }

      v153 = v200;
      goto LABEL_48;
    }

    sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

LABEL_49:
    v70 = v196;
    return sub_1D5D2CFE8(v70, sub_1D66C22A4);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

  v70 = v58;
  return sub_1D5D2CFE8(v70, sub_1D66C22A4);
}

uint64_t sub_1D65B4820()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6162726562627572;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x726F7463656C6573;
  if (v1 != 3)
  {
    v4 = 7235952;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
  if (v1 != 1)
  {
    v5 = 0x426F547370696C63;
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

uint64_t sub_1D65B48FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C2A70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65B4934(uint64_t a1)
{
  v2 = sub_1D66C24A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B4970(uint64_t a1)
{
  v2 = sub_1D66C24A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSupplementaryNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66C26B8(0);
  v7 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C274C(0);
  sub_1D5B58B84(&qword_1EDF24EB8, sub_1D66C274C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v42;
  v14 = v10;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = v10;
      v22 = v7;
      v23 = v13;
      v25 = *(v17 - 2);
      v24 = *(v17 - 1);

      v26 = sub_1D662465C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v23 + 8))(v21, v22);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v38 = 0uLL;
  v39 = 0;
  sub_1D726431C();
  v18 = v40;
  v19 = v41;
  v38 = xmmword_1D728CF30;
  v39 = 0;
  v20 = sub_1D726423C();
  v37 = v18;
  v28 = v7;
  v29 = v13;
  v30 = v20;
  v38 = xmmword_1D7297410;
  v39 = 0;
  sub_1D5C4D6F4();
  sub_1D726427C();
  v35 = v40;
  v36 = v41 | (BYTE2(v41) << 16);
  v38 = xmmword_1D72BAA60;
  v39 = 0;
  sub_1D5F23D90();
  sub_1D726427C();
  (*(v29 + 8))(v14, v28);
  v32 = v40;
  *a2 = v37;
  *(a2 + 8) = v19;
  *(a2 + 16) = v30;
  *(a2 + 24) = v35;
  v33 = v36;
  *(a2 + 34) = BYTE2(v36);
  *(a2 + 32) = v33;
  *(a2 + 35) = v32;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v131 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v133 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v135 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v127 - v14;
  sub_1D66C28CC(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = *(v1 + 8);
  LODWORD(v132) = *(v1 + 16);
  v128 = *(v1 + 24);
  v151 = *(v1 + 34);
  v130 = *(v1 + 32);
  v129 = *(v1 + 35);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D66C274C(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF24EB8, sub_1D66C274C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodeStyle.Selector, v26, v28, v23, &type metadata for FormatSupplementaryNodeStyle.Selector, v26, &type metadata for FormatVersions.JazzkonG, v24, v20, v27, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD18);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v139 = v29;
  v140 = v30;
  v137 = v31 + 16;
  v138 = v32;
  v32(v15);
  v136 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v148 = v21;
  v149 = v22;
  v146 = 0uLL;
  v147 = 0;
  v33 = &v20[*(v17 + 44)];
  v35 = *v33;
  v34 = *(v33 + 1);
  v150 = 0;
  v36 = swift_allocObject();
  *&v144 = &v127;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v150;
  *(v36 + 40) = v35;
  *(v36 + 48) = v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  *(&v127 - 4) = sub_1D5B4AA6C;
  *(&v127 - 3) = 0;
  v125 = sub_1D6708BB8;
  v126 = v38;
  v150 = 0;
  v39 = v17;
  v40 = v20;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v150;
  v134 = v35;
  *(v41 + 40) = v35;
  *(v41 + 48) = v34;
  sub_1D66C2960(0);
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF02E18, sub_1D66C2960, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v141 = v44;
  v142 = v43;
  v45 = sub_1D72647CC();
  v150 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v150;
  v47 = *(v39 + 36);
  v48 = v15;
  v143 = v40;
  v49 = &v40[v47];
  v50 = *&v40[v47 + 24];
  v51 = *&v40[v47 + 32];
  v52 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  *(&v127 - 4) = sub_1D615B4A4;
  *(&v127 - 3) = (&v127 - 6);
  v125 = sub_1D6708BB8;
  v126 = v41;
  v56 = v145;
  sub_1D5D2BC70(v48, sub_1D615B49C, v57, sub_1D615B4A4, (&v127 - 6), v50, v51);
  if (v56)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v58 = v143;
  }

  else
  {
    v59 = v140;
    v127 = v49;
    *&v145 = v34;

    sub_1D5D3E60C();
    v58 = v143;
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v61 = v135;
    v138(v135, v59, v139);
    swift_storeEnumTagMultiPayload();
    v144 = xmmword_1D728CF30;
    v146 = xmmword_1D728CF30;
    v147 = 0;
    LOBYTE(v148) = 0;
    v62 = swift_allocObject();
    v64 = v62;
    *(v62 + 16) = v144;
    *(v62 + 32) = v148;
    v65 = v134;
    v66 = v145;
    *(v62 + 40) = v134;
    *(v62 + 48) = v66;
    if (v132 == 2)
    {

      v67 = v133;
    }

    else
    {
      v140 = &v127;
      LOBYTE(v148) = v132 & 1;
      MEMORY[0x1EEE9AC00](v62, v63);
      v132 = &v127 - 6;
      *(&v127 - 4) = sub_1D5B4AA6C;
      *(&v127 - 3) = 0;
      v125 = sub_1D6708BB8;
      v126 = v64;
      v150 = 0;
      v80 = swift_allocObject();
      v81 = v65;
      v82 = v80;
      *(v80 + 16) = v144;
      *(v80 + 32) = v150;
      *(v80 + 40) = v81;
      *(v80 + 48) = v66;
      swift_retain_n();
      v83 = sub_1D72647CC();
      v150 = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v144;
      *(v84 + 40) = v150;
      v85 = *(v127 + 3);
      v86 = *(v127 + 4);
      v87 = __swift_project_boxed_opaque_existential_1(v127, v85);
      MEMORY[0x1EEE9AC00](v87, v88);
      MEMORY[0x1EEE9AC00](v89, v90);
      v91 = v132;
      *(&v127 - 4) = sub_1D615B4A4;
      *(&v127 - 3) = v91;
      v125 = sub_1D6708BB8;
      v126 = v82;
      v93 = sub_1D5D2F7A4(v61, sub_1D615B49C, v92, sub_1D615B4A4, (&v127 - 6), v85, v86);
      v122 = v93;

      v67 = v133;
      if (v122)
      {
        sub_1D72647EC();
      }

      v66 = v145;
      v65 = v134;
    }

    v68 = v130 | (v151 << 16);
    sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v69 = v139;
    v70 = __swift_project_value_buffer(v139, qword_1EDFFCD50);
    v138(v67, v70, v69);
    swift_storeEnumTagMultiPayload();
    v144 = xmmword_1D7297410;
    v146 = xmmword_1D7297410;
    v147 = 0;
    LOBYTE(v148) = 0;
    v71 = swift_allocObject();
    v73 = v71;
    *(v71 + 16) = v144;
    *(v71 + 32) = v148;
    *(v71 + 40) = v65;
    *(v71 + 48) = v66;
    if (BYTE2(v68) == 255)
    {

      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v140 = &v127;
      v94 = v128;
      v148 = v128;
      LOWORD(v149) = v68;
      BYTE2(v149) = BYTE2(v68);
      MEMORY[0x1EEE9AC00](v71, v72);
      *(&v127 - 4) = sub_1D5B4AA6C;
      *(&v127 - 3) = 0;
      v125 = sub_1D6708BB8;
      v126 = v73;
      v150 = 0;
      v95 = swift_allocObject();
      v96 = v65;
      v97 = v95;
      *(v95 + 16) = v144;
      *(v95 + 32) = v150;
      *(v95 + 40) = v96;
      *(v95 + 48) = v66;
      swift_retain_n();
      sub_1D62B7DCC(v94, v68);
      v98 = sub_1D72647CC();
      v150 = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      *(v99 + 24) = v144;
      *(v99 + 40) = v150;
      v100 = *(v127 + 3);
      v101 = *(v127 + 4);
      v102 = __swift_project_boxed_opaque_existential_1(v127, v100);
      MEMORY[0x1EEE9AC00](v102, v103);
      MEMORY[0x1EEE9AC00](v104, v105);
      *(&v127 - 4) = sub_1D615B4A4;
      *(&v127 - 3) = (&v127 - 6);
      v106 = v133;
      v125 = sub_1D6708BB8;
      v126 = v97;
      v108 = sub_1D5D2F7A4(v133, sub_1D615B49C, v107, sub_1D615B4A4, (&v127 - 6), v100, v101);
      v123 = v108;

      if (v123)
      {
        sub_1D610BD84();
        sub_1D72647EC();
        v66 = v145;
        v65 = v134;

        sub_1D610CA74(v148, v149, SBYTE2(v149), sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D610CA74(v148, v149, SBYTE2(v149), sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
        v66 = v145;
        v65 = v134;
      }
    }

    v74 = v131;
    v75 = v139;
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v76 = __swift_project_value_buffer(v75, qword_1EDFFCD68);
    v138(v74, v76, v75);
    swift_storeEnumTagMultiPayload();
    v145 = xmmword_1D72BAA60;
    v146 = xmmword_1D72BAA60;
    v147 = 0;
    LOBYTE(v148) = 0;
    v77 = swift_allocObject();
    v79 = v77;
    *(v77 + 16) = v145;
    *(v77 + 32) = v148;
    *(v77 + 40) = v65;
    *(v77 + 48) = v66;
    if (v129 == 3)
    {
    }

    else
    {
      *&v144 = &v127;
      LOBYTE(v148) = v129;
      MEMORY[0x1EEE9AC00](v77, v78);
      *(&v127 - 4) = sub_1D5B4AA6C;
      *(&v127 - 3) = 0;
      v125 = sub_1D6708BB8;
      v126 = v79;
      v150 = 0;
      v109 = swift_allocObject();
      v110 = v65;
      v111 = v109;
      *(v109 + 16) = v145;
      *(v109 + 32) = v150;
      *(v109 + 40) = v110;
      *(v109 + 48) = v66;
      swift_retain_n();
      v112 = sub_1D72647CC();
      v150 = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v145;
      *(v113 + 40) = v150;
      v114 = *(v127 + 3);
      v115 = *(v127 + 4);
      v116 = __swift_project_boxed_opaque_existential_1(v127, v114);
      MEMORY[0x1EEE9AC00](v116, v117);
      MEMORY[0x1EEE9AC00](v118, v119);
      *(&v127 - 4) = sub_1D615B4A4;
      *(&v127 - 3) = (&v127 - 6);
      v125 = sub_1D66C29F4;
      v126 = v111;
      v121 = sub_1D5D2F7A4(v131, sub_1D615B49C, v120, sub_1D615B4A4, (&v127 - 6), v114, v115);
      v124 = v121;

      if (v124)
      {
        sub_1D5F23DE4();
        sub_1D72647EC();
      }

      v74 = v131;
    }

    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v58, sub_1D66C28CC);
}

uint64_t sub_1D65B5F5C()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 7235952;
  v4 = 0x6162726562627572;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x426F547370696C63;
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

uint64_t sub_1D65B5FF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C2CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65B6030(uint64_t a1)
{
  v2 = sub_1D66C2824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B606C(uint64_t a1)
{
  v2 = sub_1D66C2824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSwitchListValue.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  v13 = *(a2 + 16);
  v49 = *(a2 + 24);
  v50 = v13;
  v15 = _s10CodingKeysOMa_46(255, v13, v49, v14);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v53 = v15;
  *(&v53 + 1) = WitnessTable;
  v54 = v17;
  v55 = v18;
  v19 = type metadata accessor for FormatCodingKeysContainer(255, &v53);
  v20 = swift_getWitnessTable();
  v21 = sub_1D726446C();
  v22 = swift_getWitnessTable();
  v51 = type metadata accessor for VersionedKeyedEncodingContainer(0, v21, v22, v23);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v24);
  v26 = &v43 - v25;
  v27 = *v3;
  v45 = v3[1];
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);

  sub_1D5D2EE70(a2, v19, v30, v28, a2, v19, &type metadata for FormatVersions.JazzkonC, v29, v26, v20, &off_1F51F6C78);
  v56 = v27;
  v53 = 0uLL;
  LOBYTE(v54) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v43 = *(*(v31 - 8) + 16);
  v44 = v32;
  v43(v12);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatSwitchListValue.CaseValue(255, v50, v49, v33);
  v34 = sub_1D72627FC();
  v52 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v36 = v47;
  sub_1D5D38930(&v56, &v53, v12, sub_1D5B4AA6C, 0, v51, v34, v35);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v36)
  {
    return (*(v48 + 8))(v26, v51);
  }

  v38 = v46;
  v56 = v45;
  v53 = xmmword_1D728CF30;
  LOBYTE(v54) = 0;
  (v43)(v46, v44, v31);
  swift_storeEnumTagMultiPayload();
  v40 = type metadata accessor for FormatSwitchListValue.DefaultValue(0, v50, v49, v39);

  v41 = swift_getWitnessTable();
  v42 = v51;
  sub_1D5D432A4(&v56, &v53, v38, sub_1D5B4AA6C, 0, v51, v40, v41);
  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);

  return (*(v48 + 8))(v26, v42);
}

uint64_t sub_1D65B65BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_46);
  *a2 = result;
  return result;
}

uint64_t sub_1D65B6600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65B6654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65B66A8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  v12 = *(a2 + 24);
  v42 = *(a2 + 16);
  v43 = v12;
  v14 = _s10CodingKeysOMa_309(255, v42, v12, v13);
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v49 = v14;
  *(&v49 + 1) = WitnessTable;
  v50 = v16;
  v51 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer(255, &v49);
  v19 = swift_getWitnessTable();
  v20 = sub_1D726446C();
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for VersionedKeyedEncodingContainer(0, v20, v21, v22);
  v46 = *(v23 - 8);
  v47 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v41 - v25;
  v27 = *v2;
  v41 = v2[1];
  v29 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);

  sub_1D5D2EE70(a2, v18, v30, v29, a2, v18, &type metadata for FormatVersions.JazzkonC, v28, v26, v19, &off_1F51F6C78);
  v52 = v27;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v33 = *(*(v31 - 8) + 16);
  v33(v11, v32, v31);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v34 = sub_1D66596F4();
  v35 = v45;
  sub_1D5D38930(&v52, &v49, v11, sub_1D5B4AA6C, 0, v47, &type metadata for FormatExpression, v34);
  sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

  if (v35)
  {
    return (*(v46 + 8))(v26, v47);
  }

  v52 = v41;
  v49 = xmmword_1D728CF30;
  LOBYTE(v50) = 0;
  v37 = v44;
  v33(v44, v32, v31);
  swift_storeEnumTagMultiPayload();
  v38 = sub_1D72627FC();
  v48 = *(v43 + 16);

  v39 = swift_getWitnessTable();
  v40 = v47;
  sub_1D5D38930(&v52, &v49, v37, sub_1D5B4AA6C, 0, v47, v38, v39);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);

  return (*(v46 + 8))(v26, v40);
}

uint64_t sub_1D65B6B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D65B6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65B6B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B6CC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_309);
  *a2 = result;
  return result;
}

uint64_t sub_1D65B6D08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65B6D5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSwitchListValue.DefaultValue.encode(to:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 24);
  v37 = *(a2 + 16);
  v38 = v9;
  v11 = _s10CodingKeysOMa_45(255, v37, v9, v10);
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v40 = v11;
  v41 = WitnessTable;
  v42 = v13;
  v43 = v14;
  v15 = type metadata accessor for FormatCodingKeysContainer(255, &v40);
  v16 = swift_getWitnessTable();
  v17 = sub_1D726446C();
  v18 = swift_getWitnessTable();
  v20 = type metadata accessor for VersionedKeyedEncodingContainer(0, v17, v18, v19);
  v21 = *(v20 - 8);
  v35 = v20;
  v36 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v35 - v23;
  v25 = *v2;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);

  sub_1D5D2EE70(a2, v15, v28, v26, a2, v15, &type metadata for FormatVersions.JazzkonC, v27, v24, v16, &off_1F51F6C78);
  v44 = v25;
  v40 = 0;
  v41 = 0;
  LOBYTE(v42) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
  (*(*(v29 - 8) + 16))(v8, v30, v29);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v31 = sub_1D72627FC();
  v39 = *(v38 + 16);
  v32 = swift_getWitnessTable();
  v33 = v35;
  sub_1D5D38930(&v44, &v40, v8, sub_1D5B4AA6C, 0, v35, v31, v32);
  sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);

  return (*(v36 + 8))(v24, v33);
}

uint64_t sub_1D65B7154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D65B7234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65B7154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B7264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DFB88(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_45);
  *a2 = result;
  return result;
}

uint64_t sub_1D65B72A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65B72FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSwitchNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v203 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v208 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v209 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v210 = &v203 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v211 = &v203 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v221 = &v203 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v203 - v26;
  sub_1D66C2E94(0);
  v220 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v203 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5C5534C(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF25678, sub_1D5C5534C, &unk_1D7321584);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.JazzkonC, v33, v31, v36, &off_1F51F6C78);
  swift_beginAccess();
  v39 = v2[2];
  v38 = v2[3];
  v217 = v2;
  v40 = qword_1EDF31EB0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v45 = v43 + 16;
  v218 = v42;
  v219 = v41;
  v44(v27);
  v46 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v47 = sub_1D725895C();
  v48 = (*(*(v47 - 8) + 48))(v8, 1, v47);
  v213 = v44;
  v215 = v45;
  v214 = v46;
  if (v48 == 1)
  {
    v212 = v39;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v49 = v220;
    v50 = &v31[*(v220 + 11)];
    v52 = *v50;
    v51 = *(v50 + 1);
    LOBYTE(v224) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    *(v53 + 32) = v224;
    *(v53 + 40) = v52;
    *(v53 + 48) = v51;
    sub_1D66C2F28(0);
    v55 = v54;
    v56 = sub_1D5B58B84(&qword_1EDF036F8, sub_1D66C2F28, MEMORY[0x1E69E6F60]);

    *&v222 = v55;
    v57 = sub_1D72647CC();
    LOBYTE(v224) = 0;
    v58 = v31;
    v59 = swift_allocObject();
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    *(v59 + 16) = v57;
    *(v59 + 40) = v224;
    v60 = &v58[*(v49 + 9)];
    v61 = *(v60 + 3);
    v62 = *(v60 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v60, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D66C2FBC;
    v202 = v53;
    v67 = v223;
    v69 = sub_1D5D2F7A4(v27, sub_1D615B49C, v68, sub_1D615B4A4, (&v203 - 6), v61, v62);
    if (v67)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

LABEL_14:
      v97 = v58;
      return sub_1D5D2CFE8(v97, sub_1D66C2E94);
    }

    v70 = v69;
    v223 = v56;

    if (v70)
    {
      v224 = 0uLL;
      LOBYTE(v225) = 0;
      v232 = v212;
      v233 = v38;
      v31 = v58;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v223 = 0;
    }

    else
    {
      v223 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v58;
    }

    v44 = v213;
  }

  else
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v71 = *(v217 + 32);
  (v44)(v221, v218, v219);
  swift_storeEnumTagMultiPayload();
  v232 = v71;
  v222 = xmmword_1D728CF30;
  v224 = xmmword_1D728CF30;
  LOBYTE(v225) = 0;
  v72 = v220;
  v73 = &v31[*(v220 + 11)];
  v75 = *v73;
  v74 = *(v73 + 1);
  v231[0] = 0;
  v76 = swift_allocObject();
  v212 = &v203;
  *(v76 + 16) = v222;
  *(v76 + 32) = v231[0];
  *(v76 + 40) = v75;
  *(v76 + 48) = v74;
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6708BBC;
  v202 = v78;
  v231[0] = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v222;
  *(v79 + 32) = v231[0];
  v205 = v75;
  *(v79 + 40) = v75;
  *(v79 + 48) = v74;
  sub_1D66C2F28(0);
  v81 = v80;
  v82 = sub_1D5B58B84(&qword_1EDF036F8, sub_1D66C2F28, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v206 = v81;
  v207 = v82;
  v83 = sub_1D72647CC();
  v231[0] = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v222;
  *(v84 + 40) = v231[0];
  v85 = *(v72 + 9);
  v216 = v31;
  v86 = &v31[v85];
  v87 = *&v31[v85 + 24];
  v88 = *&v31[v85 + 32];
  v89 = __swift_project_boxed_opaque_existential_1(&v31[v85], v87);
  MEMORY[0x1EEE9AC00](v89, v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  *(&v203 - 4) = sub_1D615B4A4;
  *(&v203 - 3) = (&v203 - 6);
  v93 = v221;
  v201 = sub_1D6708BBC;
  v202 = v79;
  v94 = v223;
  sub_1D5D2BC70(v221, sub_1D615B49C, v95, sub_1D615B4A4, (&v203 - 6), v87, v88);
  if (v94)
  {
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

    v58 = v216;
    goto LABEL_14;
  }

  v220 = v86;
  *&v222 = v74;

  sub_1D5B5BF78(0, &qword_1EDF1B0E8, type metadata accessor for FormatSwitchNodeCase, MEMORY[0x1E69E62F8]);
  sub_1D66C3038();
  v96 = v216;
  sub_1D72647EC();
  v223 = 0;
  sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

  v99 = v217;
  v100 = *(v217 + 40);
  v101 = v211;
  v102 = v213;
  (v213)(v211, v218, v219);
  swift_storeEnumTagMultiPayload();
  v221 = xmmword_1D7297410;
  v224 = xmmword_1D7297410;
  LOBYTE(v225) = 0;
  LOBYTE(v232) = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v221;
  *(v104 + 32) = v232;
  v105 = v205;
  *(v104 + 40) = v205;
  v106 = v222;
  *(v104 + 48) = v222;
  if (v100)
  {
    v212 = &v203;
    v232 = v100;
    MEMORY[0x1EEE9AC00](v106, v103);
    v204 = &v203 - 6;
    *(&v203 - 4) = sub_1D5B4AA6C;
    *(&v203 - 3) = 0;
    v201 = sub_1D6708BBC;
    v202 = v104;
    v231[0] = 0;
    v108 = v107;
    v109 = swift_allocObject();
    *(v109 + 16) = v221;
    *(v109 + 32) = v231[0];
    *(v109 + 40) = v105;
    *(v109 + 48) = v108;
    swift_retain_n();

    v110 = sub_1D72647CC();
    v231[0] = 0;
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = v221;
    *(v111 + 40) = v231[0];
    v112 = *(v220 + 3);
    v113 = *(v220 + 4);
    v114 = __swift_project_boxed_opaque_existential_1(v220, v112);
    MEMORY[0x1EEE9AC00](v114, v115);
    MEMORY[0x1EEE9AC00](v116, v117);
    v118 = v204;
    *(&v203 - 4) = sub_1D615B4A4;
    *(&v203 - 3) = v118;
    v201 = sub_1D6708BBC;
    v202 = v109;
    v119 = v223;
    v121 = sub_1D5D2F7A4(v101, sub_1D615B49C, v120, sub_1D615B4A4, (&v203 - 6), v112, v113);
    v223 = v119;
    v122 = v210;
    if (v119)
    {

      v96 = v216;
LABEL_19:
      sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);
      v97 = v96;
      return sub_1D5D2CFE8(v97, sub_1D66C2E94);
    }

    v124 = v121;

    if (v124)
    {
      type metadata accessor for FormatSwitchNodeDefault();
      sub_1D5B58B84(&qword_1EDF0D318, type metadata accessor for FormatSwitchNodeDefault, &protocol conformance descriptor for FormatSwitchNodeDefault);
      v96 = v216;
      v125 = v223;
      sub_1D72647EC();
      v223 = v125;
      if (v125)
      {

        v101 = v211;
        goto LABEL_19;
      }

      v123 = v217;
      v102 = v213;
    }

    else
    {

      v96 = v216;
      v123 = v217;
      v102 = v213;
    }
  }

  else
  {

    v122 = v210;
    v123 = v99;
  }

  sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v126 = *(v123 + 48);
  v102(v122, v218, v219);
  swift_storeEnumTagMultiPayload();
  if ((v126 & 1) == 0)
  {
    sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
    v139 = v223;
    goto LABEL_33;
  }

  LOBYTE(v224) = 0;
  v127 = swift_allocObject();
  v221 = xmmword_1D72BAA60;
  *(v127 + 16) = xmmword_1D72BAA60;
  *(v127 + 32) = v224;
  *(v127 + 40) = v205;
  *(v127 + 48) = v222;

  v128 = sub_1D72647CC();
  LOBYTE(v224) = 0;
  v129 = swift_allocObject();
  *(v129 + 16) = v128;
  *(v129 + 24) = v221;
  *(v129 + 40) = v224;
  v130 = *(v220 + 3);
  v131 = *(v220 + 4);
  v132 = __swift_project_boxed_opaque_existential_1(v220, v130);
  MEMORY[0x1EEE9AC00](v132, v133);
  MEMORY[0x1EEE9AC00](v134, v135);
  *(&v203 - 4) = sub_1D5B4AA6C;
  *(&v203 - 3) = 0;
  v201 = sub_1D6708BBC;
  v202 = v127;
  v136 = v223;
  v138 = sub_1D5D2F7A4(v122, sub_1D615B49C, v137, sub_1D615B4A4, (&v203 - 6), v130, v131);
  if (!v136)
  {
    v140 = v138;

    if (v140)
    {
      v224 = v221;
      LOBYTE(v225) = 0;
      v231[0] = 1;
      sub_1D72647EC();
      v139 = 0;
      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
      v139 = 0;
    }

LABEL_33:
    v223 = v139;
    swift_beginAccess();
    v142 = *(v123 + 56);
    v141 = *(v123 + 64);
    v143 = qword_1EDF31F58[0];

    if (v143 != -1)
    {
      swift_once();
    }

    v144 = v219;
    v145 = __swift_project_value_buffer(v219, qword_1EDFFCE98);
    v146 = v209;
    (v213)(v209, v145, v144);
    swift_storeEnumTagMultiPayload();
    v221 = xmmword_1D72BAA70;
    v224 = xmmword_1D72BAA70;
    LOBYTE(v225) = 0;
    LOBYTE(v229) = 0;
    v148 = swift_allocObject();
    *(v148 + 16) = v221;
    *(v148 + 32) = v229;
    v149 = v205;
    *(v148 + 40) = v205;
    v150 = v222;
    *(v148 + 48) = v222;
    if (v141)
    {
      v218 = &v203;
      *&v229 = v142;
      *(&v229 + 1) = v141;
      MEMORY[0x1EEE9AC00](v150, v147);
      *(&v203 - 4) = sub_1D5B4AA6C;
      *(&v203 - 3) = 0;
      v201 = sub_1D6708BBC;
      v202 = v148;
      v234 = 0;
      v152 = v151;
      v153 = swift_allocObject();
      *(v153 + 16) = v221;
      *(v153 + 32) = v234;
      *(v153 + 40) = v149;
      *(v153 + 48) = v152;
      swift_retain_n();

      v154 = sub_1D72647CC();
      v234 = 0;
      v155 = swift_allocObject();
      *(v155 + 16) = v154;
      *(v155 + 24) = v221;
      *(v155 + 40) = v234;
      v156 = *(v220 + 3);
      v157 = *(v220 + 4);
      v158 = __swift_project_boxed_opaque_existential_1(v220, v156);
      MEMORY[0x1EEE9AC00](v158, v159);
      MEMORY[0x1EEE9AC00](v160, v161);
      *(&v203 - 4) = sub_1D615B4A4;
      *(&v203 - 3) = (&v203 - 6);
      v146 = v209;
      v201 = sub_1D6708BBC;
      v202 = v153;
      v162 = v223;
      v164 = sub_1D5D2F7A4(v209, sub_1D615B49C, v163, sub_1D615B4A4, (&v203 - 6), v156, v157);
      v223 = v162;
      if (v162)
      {
        swift_bridgeObjectRelease_n();

        v165 = v216;
LABEL_38:
        sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
        v97 = v165;
        return sub_1D5D2CFE8(v97, sub_1D66C2E94);
      }

      v166 = v164;

      if (v166)
      {
        v165 = v216;
        v167 = v223;
        sub_1D72647EC();
        v223 = v167;
        if (v167)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_38;
        }
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
    v168 = *(v123 + 72);
    v169 = *(v123 + 80);
    v170 = *(v123 + 88);
    v171 = *(v123 + 96);
    v172 = *(v123 + 104);
    v173 = *(v123 + 112);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v174 = v219;
    v175 = __swift_project_value_buffer(v219, qword_1EDFFCE38);
    v176 = v208;
    (v213)(v208, v175, v174);
    swift_storeEnumTagMultiPayload();
    v221 = xmmword_1D72BAA80;
    v229 = xmmword_1D72BAA80;
    v230 = 0;
    LOBYTE(v224) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v221;
    *(v178 + 32) = v224;
    v179 = v205;
    *(v178 + 40) = v205;
    v180 = v222;
    *(v178 + 48) = v222;
    if (v168)
    {
      v219 = &v203;
      v217 = v168;
      *&v224 = v168;
      *(&v224 + 1) = v169;
      v225 = v170;
      v226 = v171;
      v218 = v172;
      v227 = v172;
      v228 = v173;
      v181 = v173;
      MEMORY[0x1EEE9AC00](v180, v177);
      *(&v203 - 4) = sub_1D5B4AA6C;
      *(&v203 - 3) = 0;
      v201 = sub_1D6708BBC;
      v202 = v178;
      v234 = 0;
      v183 = v182;
      v184 = swift_allocObject();
      *(v184 + 16) = v221;
      *(v184 + 32) = v234;
      *(v184 + 40) = v179;
      *(v184 + 48) = v183;
      swift_retain_n();
      sub_1D5EB1D80(v217, v169, v170, v171, v218, v181);
      v185 = sub_1D72647CC();
      v234 = 0;
      v186 = swift_allocObject();
      *(v186 + 16) = v185;
      *(v186 + 24) = v221;
      *(v186 + 40) = v234;
      v187 = *(v220 + 3);
      v188 = *(v220 + 4);
      v189 = __swift_project_boxed_opaque_existential_1(v220, v187);
      MEMORY[0x1EEE9AC00](v189, v190);
      MEMORY[0x1EEE9AC00](v191, v192);
      *(&v203 - 4) = sub_1D615B4A4;
      *(&v203 - 3) = (&v203 - 6);
      v201 = sub_1D6708BBC;
      v202 = v184;
      v193 = v208;
      v194 = v223;
      v196 = sub_1D5D2F7A4(v208, sub_1D615B49C, v195, sub_1D615B4A4, (&v203 - 6), v187, v188);
      if (v194)
      {

        v197 = v216;
LABEL_52:
        v199 = v227;

        sub_1D5CBF568(v199);

        sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
LABEL_55:
        v97 = v197;
        return sub_1D5D2CFE8(v97, sub_1D66C2E94);
      }

      v198 = v196;

      if (v198)
      {
        sub_1D6659A24();
        v197 = v216;
        sub_1D72647EC();

        goto LABEL_52;
      }

      v200 = v227;

      sub_1D5CBF568(v200);

      sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);
    }

    v197 = v216;
    goto LABEL_55;
  }

  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v96, sub_1D66C2E94);
}

uint64_t sub_1D65B8FC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C3110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65B8FF8(uint64_t a1)
{
  v2 = sub_1D5C55450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B9034(uint64_t a1)
{
  v2 = sub_1D5C55450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSwitchNodeCase.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v74 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v68 - v10;
  sub_1D66C3354(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C55BF8(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25368, sub_1D5C55BF8, &unk_1D7321584);
  sub_1D5D2EE70(v4, v20, v22, v17, v4, v20, &type metadata for FormatVersions.JazzkonC, v18, v16, v21, &off_1F51F6C78);
  v73 = v2;
  v23 = v2[2];
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v71 = v25;
  v72 = v24;
  v68[1] = v26 + 16;
  v69 = v27;
  (v27)(v11);
  v68[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v80 = v23;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v28 = &v16[*(v13 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v85) = 0;
  v31 = swift_allocObject();
  *&v77 = v68;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v68[-4] = sub_1D5B4AA6C;
  v68[-3] = 0;
  v66 = sub_1D6708BC0;
  v67 = v33;
  LOBYTE(v85) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v85;
  v70 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66C33E8(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF03398, sub_1D66C33E8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v75 = v37;
  v76 = v36;
  v38 = sub_1D72647CC();
  LOBYTE(v85) = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v85;
  v40 = *(v13 + 36);
  v78 = v16;
  v41 = &v16[v40];
  v42 = *(v41 + 3);
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v68[-4] = sub_1D615B4A4;
  v68[-3] = &v68[-6];
  v66 = sub_1D6708BC0;
  v67 = v34;
  v48 = v79;
  sub_1D5D2BC70(v11, sub_1D615B49C, v49, sub_1D615B4A4, &v68[-6], v42, v43);
  if (v48)
  {
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v50 = v78;
  }

  else
  {
    v79 = v30;

    sub_1D66596F4();
    v50 = v78;
    sub_1D72647EC();
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v51 = v73;
    swift_beginAccess();
    v52 = v51[3];
    v53 = v74;
    v69(v74, v71, v72);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v80) = 0;
    v54 = swift_allocObject();
    v77 = xmmword_1D728CF30;
    *(v54 + 16) = xmmword_1D728CF30;
    *(v54 + 32) = v80;
    *(v54 + 40) = v70;
    *(v54 + 48) = v79;

    v79 = v52;

    v55 = sub_1D72647CC();
    LOBYTE(v80) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v77;
    *(v56 + 40) = v80;
    v57 = *(v41 + 3);
    v58 = *(v41 + 4);
    v59 = __swift_project_boxed_opaque_existential_1(v41, v57);
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    v68[-4] = sub_1D5B4AA6C;
    v68[-3] = 0;
    v66 = sub_1D66C347C;
    v67 = v54;
    LOBYTE(v57) = sub_1D5D2F7A4(v53, sub_1D615B49C, v63, sub_1D615B4A4, &v68[-6], v57, v58);
    v64 = v79;

    if (v57)
    {
      v80 = v77;
      v81 = 0;
      v85 = v64;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v50, sub_1D66C3354);
}

uint64_t sub_1D65B990C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C6DD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65B9944(uint64_t a1)
{
  v2 = sub_1D5C55D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B9980(uint64_t a1)
{
  v2 = sub_1D5C55D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D65B99BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D65B9AA8(uint64_t a1)
{
  v2 = sub_1D5C5D29C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B9AE4(uint64_t a1)
{
  v2 = sub_1D5C5D29C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSwitchValue.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  v13 = *(a2 + 16);
  v51 = *(a2 + 24);
  v52 = v13;
  v15 = _s10CodingKeysOMa_42(255, v13, v51, v14);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v55 = v15;
  *(&v55 + 1) = WitnessTable;
  v56 = v17;
  v57 = v18;
  v19 = type metadata accessor for FormatCodingKeysContainer(255, &v55);
  v20 = swift_getWitnessTable();
  v21 = sub_1D726446C();
  v22 = swift_getWitnessTable();
  v53 = type metadata accessor for VersionedKeyedEncodingContainer(0, v21, v22, v23);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v24);
  v26 = &v45 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v29 = __swift_project_boxed_opaque_existential_1(a1, v27);
  v46 = a2;
  sub_1D5D2EE70(a2, v19, v29, v27, a2, v19, &type metadata for FormatVersions.JazzkonC, v28, v26, v20, &off_1F51F6C78);
  v47 = v3;
  v58 = *v3;
  v55 = 0uLL;
  LOBYTE(v56) = 0;
  v30 = qword_1EDF31EB0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v33 = *(*(v31 - 8) + 16);
  v45 = v32;
  v33(v12);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatSwitchValue.CaseValue(255, v52, v51, v34);
  v35 = sub_1D72627FC();
  v54 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = v49;
  sub_1D5D38930(&v58, &v55, v12, sub_1D5B4AA6C, 0, v53, v35, v36);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v37)
  {
    return (*(v50 + 8))(v26, v53);
  }

  v39 = *(v46 + 36);
  v55 = xmmword_1D728CF30;
  LOBYTE(v56) = 0;
  v40 = v48;
  (v33)(v48, v45, v31);
  swift_storeEnumTagMultiPayload();
  v42 = type metadata accessor for FormatSwitchValue.DefaultValue(0, v52, v51, v41);
  v43 = swift_getWitnessTable();
  v44 = v53;
  sub_1D5D38930(v47 + v39, &v55, v40, sub_1D5B4AA6C, 0, v53, v42, v43);
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return (*(v50 + 8))(v26, v44);
}

uint64_t sub_1D65BA02C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D65BA140@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_42);
  *a2 = result;
  return result;
}

uint64_t sub_1D65BA184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65BA1D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65BA22C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - v11;
  v13 = *(a2 + 24);
  v43 = *(a2 + 16);
  v41 = v13;
  v15 = _s10CodingKeysOMa_308(255, v43, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v49 = v15;
  *(&v49 + 1) = WitnessTable;
  v50 = v17;
  v51 = v18;
  v19 = type metadata accessor for FormatCodingKeysContainer(255, &v49);
  v20 = swift_getWitnessTable();
  v21 = sub_1D726446C();
  v22 = swift_getWitnessTable();
  v24 = type metadata accessor for VersionedKeyedEncodingContainer(0, v21, v22, v23);
  v47 = *(v24 - 8);
  v48 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v41 - v26;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v42 = a2;
  sub_1D5D2EE70(a2, v19, v30, v28, a2, v19, &type metadata for FormatVersions.JazzkonC, v29, v27, v20, &off_1F51F6C78);
  v44 = v3;
  v52 = *v3;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  v31 = qword_1EDF31EB0;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD30);
  v34 = *(*(v32 - 8) + 16);
  v34(v12, v33, v32);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v35 = sub_1D66596F4();
  v36 = v46;
  sub_1D5D38930(&v52, &v49, v12, sub_1D5B4AA6C, 0, v48, &type metadata for FormatExpression, v35);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v36)
  {
    return (*(v47 + 8))(v27, v48);
  }

  v38 = *(v42 + 36);
  v49 = xmmword_1D728CF30;
  LOBYTE(v50) = 0;
  v39 = v45;
  v34(v45, v33, v32);
  swift_storeEnumTagMultiPayload();
  v40 = v48;
  sub_1D5D38930(v44 + v38, &v49, v39, sub_1D5B4AA6C, 0, v48, v43, *(v41 + 16));
  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  return (*(v47 + 8))(v27, v40);
}

uint64_t sub_1D65BA6B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D65BA7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65BA6B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BA804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_308);
  *a2 = result;
  return result;
}

uint64_t sub_1D65BA848(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65BA89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSwitchValue.DefaultValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v30 = *(a2 + 24);
  v31 = v8;
  v10 = _s10CodingKeysOMa_41(255, v8, v30, v9);
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v33 = v10;
  v34 = WitnessTable;
  v35 = v12;
  v36 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer(255, &v33);
  v15 = swift_getWitnessTable();
  v16 = sub_1D726446C();
  v17 = swift_getWitnessTable();
  v19 = type metadata accessor for VersionedKeyedEncodingContainer(0, v16, v17, v18);
  v29 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5D2EE70(a2, v14, v25, v23, a2, v14, &type metadata for FormatVersions.JazzkonC, v24, v22, v15, &off_1F51F6C78);
  v33 = 0;
  v34 = 0;
  LOBYTE(v35) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  (*(*(v26 - 8) + 16))(v7, v27, v26);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D38930(v32, &v33, v7, sub_1D5B4AA6C, 0, v19, v31, *(v30 + 16));
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return (*(v29 + 8))(v22, v19);
}

uint64_t sub_1D65BAC44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DFB88(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_41);
  *a2 = result;
  return result;
}

uint64_t sub_1D65BAC88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65BACDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSymbolConfig.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v45 - v19;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v1;
  v48 = *(v1 + 8);
  v49 = v25;
  v26 = *(v1 + 16);
  v27 = *(v1 + 17);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v50 = v24;
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatSymbolConfig, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v29, v24, v30, &off_1F51F6C78);
  if (v27 <= 1)
  {
    if (!v27)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
      (*(*(v35 - 8) + 16))(v20, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v50;
      sub_1D63A74A8(0, v49, v48, v20);
      goto LABEL_17;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v42 = sub_1D725BD1C();
    v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
    (*(*(v42 - 8) + 16))(v16, v43, v42);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v34 = v50;
    sub_1D63A7640(1, v49, v48, v26, v16);
    v39 = v16;
  }

  else
  {
    if (v27 != 2)
    {
      if (v27 == 3)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v32 = sub_1D725BD1C();
        v33 = __swift_project_value_buffer(v32, qword_1EDFFCD30);
        v20 = v46;
        (*(*(v32 - 8) + 16))(v46, v33, v32);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v34 = v50;
        sub_1D63A797C(3, v49, v20);
      }

      else
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v40 = sub_1D725BD1C();
        v41 = __swift_project_value_buffer(v40, qword_1EDFFCD30);
        v20 = v47;
        (*(*(v40 - 8) + 16))(v47, v41, v40);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v34 = v50;
        sub_1D63A7B10(4, v49, v20);
      }

LABEL_17:
      v39 = v20;
      goto LABEL_21;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
    (*(*(v37 - 8) + 16))(v12, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v34 = v50;
    sub_1D63A77DC(2, v49, v48, v12);
    v39 = v12;
  }

LABEL_21:
  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v34, sub_1D5D30DC4);
}

uint64_t sub_1D65BB310()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D65BB3E0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D65BB49C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65BB568(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953394534;
  v5 = 0xE400000000000000;
  v6 = 1702521203;
  v7 = 0xE600000000000000;
  v8 = 0x746867696577;
  if (v2 != 3)
  {
    v8 = 0x656C616373;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C79745374786574;
    v3 = 0xE900000000000065;
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

uint64_t FormatSymbolConfig.Font.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C3648(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C36DC(0);
  sub_1D5B58B84(&qword_1EC8874F0, sub_1D66C36DC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(1953394534, 0xE400000000000000, 0x656C616373, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B556F4();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C954A4();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.Font.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v67 - v8;
  sub_1D66C385C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C36DC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8874F0, sub_1D66C36DC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Font, v19, v21, v16, &type metadata for FormatSymbolConfig.Font, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v69 = v23;
  v70 = v22;
  v67[1] = v24 + 16;
  v68 = v25;
  v25(v9);
  v67[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v82 = v15;
  v80 = 0uLL;
  v81 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v79 = 0;
  v29 = swift_allocObject();
  v76 = v67;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v79;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v78 = v9;
  v67[-4] = sub_1D5B4AA6C;
  v67[-3] = 0;
  v65 = sub_1D6708BC4;
  v66 = v31;
  v79 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v79;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C38F0(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887508, sub_1D66C38F0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v74 = v35;
  v75 = v34;
  v36 = sub_1D72647CC();
  v79 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v79;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v67[-4] = sub_1D615B4A4;
  v67[-3] = &v67[-6];
  v45 = v77;
  v46 = v78;
  v65 = sub_1D6708BC4;
  v66 = v32;
  sub_1D5D2BC70(v78, sub_1D615B49C, v47, sub_1D615B4A4, &v67[-6], v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v48 = v14;
  }

  else
  {
    v77 = v38;

    sub_1D5B57BA4();
    v48 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v49 = v73;
    v68(v73, v69, v70);
    swift_storeEnumTagMultiPayload();
    v78 = xmmword_1D728CF30;
    v80 = xmmword_1D728CF30;
    v81 = 0;
    LOBYTE(v82) = 0;
    v50 = swift_allocObject();
    v52 = v50;
    *(v50 + 16) = v78;
    *(v50 + 32) = v82;
    v53 = v71;
    *(v50 + 40) = v71;
    *(v50 + 48) = v28;
    if (v72 == 5)
    {
    }

    else
    {
      v70 = v67;
      LOBYTE(v82) = v72;
      MEMORY[0x1EEE9AC00](v50, v51);
      v67[-4] = sub_1D5B4AA6C;
      v67[-3] = 0;
      v65 = sub_1D6708BC4;
      v66 = v52;
      v79 = 0;
      v55 = swift_allocObject();
      *(v55 + 16) = v78;
      *(v55 + 32) = v79;
      *(v55 + 40) = v53;
      *(v55 + 48) = v28;
      swift_retain_n();
      v76 = v48;
      v56 = sub_1D72647CC();
      v79 = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v78;
      *(v57 + 40) = v79;
      v58 = *(v77 + 3);
      v59 = *(v77 + 4);
      v60 = __swift_project_boxed_opaque_existential_1(v77, v58);
      MEMORY[0x1EEE9AC00](v60, v61);
      MEMORY[0x1EEE9AC00](v62, v63);
      v67[-4] = sub_1D615B4A4;
      v67[-3] = &v67[-6];
      v49 = v73;
      v65 = sub_1D66C3984;
      v66 = v55;
      LOBYTE(v58) = sub_1D5D2F7A4(v73, sub_1D615B49C, v64, sub_1D615B4A4, &v67[-6], v58, v59);

      if (v58)
      {
        sub_1D66C3A00();
        v48 = v76;
        sub_1D72647EC();
      }

      else
      {
        v48 = v76;
      }
    }

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v48, sub_1D66C385C);
}

uint64_t sub_1D65BC1E4()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953394534;
  }
}

uint64_t sub_1D65BC22C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C6EF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65BC264(uint64_t a1)
{
  v2 = sub_1D66C37B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BC2A0(uint64_t a1)
{
  v2 = sub_1D66C37B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.Scale.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C3A54(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C3AE8(0);
  sub_1D5B58B84(&qword_1EDF25568, sub_1D66C3AE8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x656C616373, 0xE500000000000000, 0x746867696577, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C954A4();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C76094();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.Scale.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v68 - v8;
  sub_1D66C3C68(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v82 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C3AE8(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25568, sub_1D66C3AE8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Scale, v19, v21, v16, &type metadata for FormatSymbolConfig.Scale, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v69 = *(v24 + 16);
  v70 = v22;
  v68[1] = v24 + 16;
  v69(v9, v23, v22);
  v68[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v81 = v15;
  v79 = 0uLL;
  v80 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v78 = 0;
  v28 = swift_allocObject();
  v75 = v68;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v78;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v77 = v9;
  v68[-4] = sub_1D5B4AA6C;
  v68[-3] = 0;
  v66 = sub_1D6708BC8;
  v67 = v30;
  v78 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v78;
  v71 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66C3CFC(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF035C8, sub_1D66C3CFC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v73 = v33;
  v74 = v34;
  v35 = sub_1D72647CC();
  v78 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v78;
  v37 = &v14[*(v11 + 36)];
  v39 = *(v37 + 3);
  v38 = *(v37 + 4);
  v40 = __swift_project_boxed_opaque_existential_1(v37, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v68[-4] = sub_1D615B4A4;
  v68[-3] = &v68[-6];
  v44 = v76;
  v45 = v77;
  v66 = sub_1D6708BC8;
  v67 = v31;
  sub_1D5D2BC70(v77, sub_1D615B49C, v46, sub_1D615B4A4, &v68[-6], v39, v38);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v47 = v14;
  }

  else
  {
    v76 = v37;

    sub_1D66C3A00();
    v47 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v48 = v70;
    v49 = __swift_project_value_buffer(v70, qword_1EDFFCD98);
    v50 = v72;
    v69(v72, v49, v48);
    swift_storeEnumTagMultiPayload();
    v77 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v53 = v51;
    *(v51 + 16) = v77;
    *(v51 + 32) = v81;
    v54 = v71;
    *(v51 + 40) = v71;
    *(v51 + 48) = v27;
    if (v82 == 10)
    {
    }

    else
    {
      v75 = v68;
      v81 = v82;
      MEMORY[0x1EEE9AC00](v51, v52);
      v68[-4] = sub_1D5B4AA6C;
      v68[-3] = 0;
      v66 = sub_1D6708BC8;
      v67 = v53;
      v78 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v77;
      *(v56 + 32) = v78;
      *(v56 + 40) = v54;
      *(v56 + 48) = v27;
      swift_retain_n();
      v57 = sub_1D72647CC();
      v78 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v77;
      *(v58 + 40) = v78;
      v59 = *(v76 + 3);
      v60 = *(v76 + 4);
      v61 = __swift_project_boxed_opaque_existential_1(v76, v59);
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      v68[-4] = sub_1D615B4A4;
      v68[-3] = &v68[-6];
      v50 = v72;
      v66 = sub_1D66C3D90;
      v67 = v56;
      LOBYTE(v60) = sub_1D5D2F7A4(v72, sub_1D615B49C, v65, sub_1D615B4A4, &v68[-6], v59, v60);

      if (v60)
      {
        sub_1D61B9A34();
        v47 = v14;
        sub_1D72647EC();
      }

      else
      {
        v47 = v14;
      }
    }

    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v47, sub_1D66C3C68);
}

uint64_t sub_1D65BCEE4()
{
  v1 = 0x746867696577;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_1D65BCF30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C700C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65BCF68(uint64_t a1)
{
  v2 = sub_1D66C3BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BCFA4(uint64_t a1)
{
  v2 = sub_1D66C3BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.Size.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v92 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v94 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v87 - v11;
  sub_1D66C3E0C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 8);
  v90 = *(v1 + 9);
  v91 = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C94ECC(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25578, sub_1D5C94ECC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Size, v23, v25, v20, &type metadata for FormatSymbolConfig.Size, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v97 = *(v28 + 16);
  v98 = v27;
  v96 = v28 + 16;
  v97(v12);
  v95 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v108 = v18;
  v106 = 0uLL;
  v107 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v105 = 0;
  v32 = swift_allocObject();
  v101 = &v87;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v105;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v104 = v12;
  *(&v87 - 4) = sub_1D5B4AA6C;
  *(&v87 - 3) = 0;
  v85 = sub_1D6708BCC;
  v86 = v34;
  v105 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v105;
  v93 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66C3EA0(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF035D8, sub_1D66C3EA0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v99 = v38;
  v100 = v37;
  v39 = sub_1D72647CC();
  v105 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v105;
  v41 = *(v14 + 36);
  v102 = v17;
  v42 = &v17[v41];
  v44 = *(v42 + 3);
  v43 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v87 - 4) = sub_1D615B4A4;
  *(&v87 - 3) = (&v87 - 6);
  v49 = v103;
  v50 = v104;
  v85 = sub_1D6708BCC;
  v86 = v35;
  sub_1D5D2BC70(v104, sub_1D615B49C, v51, sub_1D615B4A4, (&v87 - 6), v44, v43);
  if (v49)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v52 = v102;
  }

  else
  {
    v88 = v42;
    v103 = v26;
    v89 = v31;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v52 = v102;
    sub_1D72647EC();
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

    v53 = v94;
    (v97)(v94, v98, v103);
    swift_storeEnumTagMultiPayload();
    v104 = xmmword_1D728CF30;
    v106 = xmmword_1D728CF30;
    v107 = 0;
    LOBYTE(v108) = 0;
    v54 = swift_allocObject();
    v56 = v54;
    *(v54 + 16) = v104;
    *(v54 + 32) = v108;
    v57 = v93;
    v58 = v89;
    *(v54 + 40) = v93;
    *(v54 + 48) = v58;
    if (v91 == 10)
    {

      v59 = v92;
    }

    else
    {
      v101 = &v87;
      LOBYTE(v108) = v91;
      MEMORY[0x1EEE9AC00](v54, v55);
      *(&v87 - 4) = sub_1D5B4AA6C;
      *(&v87 - 3) = 0;
      v85 = sub_1D6708BCC;
      v86 = v56;
      v105 = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v104;
      *(v60 + 32) = v105;
      *(v60 + 40) = v57;
      *(v60 + 48) = v58;
      swift_retain_n();
      v61 = v53;
      v62 = sub_1D72647CC();
      v105 = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = v104;
      *(v63 + 40) = v105;
      v64 = *(v88 + 3);
      v65 = *(v88 + 4);
      v66 = __swift_project_boxed_opaque_existential_1(v88, v64);
      MEMORY[0x1EEE9AC00](v66, v67);
      MEMORY[0x1EEE9AC00](v68, v69);
      *(&v87 - 4) = sub_1D615B4A4;
      *(&v87 - 3) = (&v87 - 6);
      v85 = sub_1D6708BCC;
      v86 = v60;
      sub_1D5D2F7A4(v61, sub_1D615B49C, v70, sub_1D615B4A4, (&v87 - 6), v64, v65);

      v59 = v92;
      sub_1D61B9A34();
      sub_1D72647EC();
      v53 = v94;
      v58 = v89;
      v57 = v93;
    }

    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    (v97)(v59, v98, v103);
    swift_storeEnumTagMultiPayload();
    v104 = xmmword_1D7297410;
    v106 = xmmword_1D7297410;
    v107 = 0;
    LOBYTE(v108) = 0;
    v71 = swift_allocObject();
    v73 = v71;
    *(v71 + 16) = v104;
    *(v71 + 32) = v108;
    *(v71 + 40) = v57;
    *(v71 + 48) = v58;
    if (v90 == 5)
    {
    }

    else
    {
      v103 = &v87;
      LOBYTE(v108) = v90;
      MEMORY[0x1EEE9AC00](v71, v72);
      *(&v87 - 4) = sub_1D5B4AA6C;
      *(&v87 - 3) = 0;
      v85 = sub_1D6708BCC;
      v86 = v73;
      v105 = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = v104;
      *(v75 + 32) = v105;
      *(v75 + 40) = v57;
      *(v75 + 48) = v58;
      swift_retain_n();
      v76 = sub_1D72647CC();
      v105 = 0;
      v77 = swift_allocObject();
      *(v77 + 16) = v76;
      *(v77 + 24) = v104;
      *(v77 + 40) = v105;
      v78 = *(v88 + 3);
      v79 = *(v88 + 4);
      v80 = __swift_project_boxed_opaque_existential_1(v88, v78);
      MEMORY[0x1EEE9AC00](v80, v81);
      MEMORY[0x1EEE9AC00](v82, v83);
      *(&v87 - 4) = sub_1D615B4A4;
      *(&v87 - 3) = (&v87 - 6);
      v59 = v92;
      v85 = sub_1D66C3F34;
      v86 = v75;
      LOBYTE(v79) = sub_1D5D2F7A4(v92, sub_1D615B49C, v84, sub_1D615B4A4, (&v87 - 6), v78, v79);

      if (v79)
      {
        sub_1D66C3A00();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v52, sub_1D66C3E0C);
}

uint64_t sub_1D65BDC28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66C711C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65BDC60(uint64_t a1)
{
  v2 = sub_1D5C95344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BDC9C(uint64_t a1)
{
  v2 = sub_1D5C95344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.TextStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66C3FB0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C4044(0);
  sub_1D5B58B84(&qword_1EDF0C5A0, sub_1D66C4044, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6624B98();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5CA9754();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v19 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D5C954A4();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v30;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 16) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.TextStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v103 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v109 = v100 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v100 - v11;
  sub_1D66C41C4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v104 = *(v1 + 1);
  v120 = v1[16];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D66C4044(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF0C5A0, sub_1D66C4044, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.TextStyle, v22, v24, v19, &type metadata for FormatSymbolConfig.TextStyle, v22, &type metadata for FormatVersions.JazzkonC, v20, v17, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v102 = v26;
  v107 = v27 + 16;
  v108 = v28;
  (v28)(v12);
  v106 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v116) = v18;
  v117 = 0uLL;
  v118 = 0;
  v29 = &v17[*(v14 + 44)];
  v31 = *v29;
  v30 = *(v29 + 1);
  v119 = 0;
  v32 = swift_allocObject();
  v112 = v100;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v119;
  *(v32 + 40) = v31;
  *(v32 + 48) = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v115 = v12;
  v100[-4] = sub_1D5B4AA6C;
  v100[-3] = 0;
  v98 = sub_1D6708BD0;
  v99 = v34;
  v119 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v119;
  v105 = v31;
  *(v35 + 40) = v31;
  *(v35 + 48) = v30;
  sub_1D66C4258(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF035B8, sub_1D66C4258, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v110 = v37;
  v111 = v38;
  v39 = sub_1D72647CC();
  v119 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v119;
  v41 = &v17[*(v14 + 36)];
  v114 = v17;
  v42 = *(v41 + 3);
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v100[-4] = sub_1D615B4A4;
  v100[-3] = &v100[-6];
  v48 = v115;
  v98 = sub_1D6708BD0;
  v99 = v35;
  v49 = v113;
  sub_1D5D2BC70(v115, sub_1D615B49C, v50, sub_1D615B4A4, &v100[-6], v42, v43);
  if (!v49)
  {
    v101 = v41;
    v113 = v25;
    v52 = v30;

    sub_1D668B4C0();
    sub_1D72647EC();
    v112 = 0;
    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v54 = v113;
    v55 = __swift_project_value_buffer(v113, qword_1EDFFCD50);
    v56 = v109;
    v108(v109, v55, v54);
    swift_storeEnumTagMultiPayload();
    v115 = xmmword_1D728CF30;
    v117 = xmmword_1D728CF30;
    v118 = 0;
    LOBYTE(v116) = 0;
    v57 = swift_allocObject();
    v59 = v57;
    *(v57 + 16) = v115;
    *(v57 + 32) = v116;
    v61 = v104;
    v60 = v105;
    *(v57 + 40) = v105;
    *(v57 + 48) = v52;
    v62 = v52;
    if (v61)
    {
      v100[1] = v100;
      v116 = v61;
      MEMORY[0x1EEE9AC00](v57, v58);
      v100[-4] = sub_1D5B4AA6C;
      v100[-3] = 0;
      v98 = sub_1D6708BD0;
      v99 = v59;
      v119 = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v115;
      *(v63 + 32) = v119;
      *(v63 + 40) = v60;
      *(v63 + 48) = v52;
      swift_retain_n();

      v64 = sub_1D72647CC();
      v119 = 0;
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      *(v65 + 24) = v115;
      *(v65 + 40) = v119;
      v66 = *(v101 + 3);
      v67 = *(v101 + 4);
      v68 = __swift_project_boxed_opaque_existential_1(v101, v66);
      MEMORY[0x1EEE9AC00](v68, v69);
      MEMORY[0x1EEE9AC00](v70, v71);
      v100[-4] = sub_1D615B4A4;
      v100[-3] = &v100[-6];
      v98 = sub_1D6708BD0;
      v99 = v63;
      v72 = v112;
      v74 = sub_1D5D2F7A4(v56, sub_1D615B49C, v73, sub_1D615B4A4, &v100[-6], v66, v67);
      v75 = v72;
      if (v72)
      {

        v76 = v114;
        v77 = v109;

        sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
        goto LABEL_22;
      }

      v78 = v74;

      if (v78)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v76 = v114;
        sub_1D72647EC();
        v79 = v109;
        v54 = v113;
        v80 = v102;
        v62 = v52;

        sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
        v97 = v80;
        v60 = v105;
LABEL_17:
        v81 = v103;
        v108(v103, v97, v54);
        swift_storeEnumTagMultiPayload();
        v115 = xmmword_1D7297410;
        v117 = xmmword_1D7297410;
        v118 = 0;
        LOBYTE(v116) = 0;
        v82 = swift_allocObject();
        v84 = v82;
        *(v82 + 16) = v115;
        *(v82 + 32) = v116;
        *(v82 + 40) = v60;
        *(v82 + 48) = v62;
        if (v120 == 5)
        {
        }

        else
        {
          v113 = v100;
          LOBYTE(v116) = v120;
          MEMORY[0x1EEE9AC00](v82, v83);
          v100[-4] = sub_1D5B4AA6C;
          v100[-3] = 0;
          v98 = sub_1D6708BD0;
          v99 = v84;
          v119 = 0;
          v85 = swift_allocObject();
          *(v85 + 16) = v115;
          *(v85 + 32) = v119;
          *(v85 + 40) = v60;
          *(v85 + 48) = v62;
          swift_retain_n();
          v86 = sub_1D72647CC();
          v119 = 0;
          v87 = swift_allocObject();
          *(v87 + 16) = v86;
          *(v87 + 24) = v115;
          *(v87 + 40) = v119;
          v88 = *(v101 + 3);
          v89 = *(v101 + 4);
          v90 = __swift_project_boxed_opaque_existential_1(v101, v88);
          MEMORY[0x1EEE9AC00](v90, v91);
          MEMORY[0x1EEE9AC00](v92, v93);
          v100[-4] = sub_1D615B4A4;
          v100[-3] = &v100[-6];
          v98 = sub_1D66C42EC;
          v99 = v85;
          v95 = sub_1D5D2F7A4(v81, sub_1D615B49C, v94, sub_1D615B4A4, &v100[-6], v88, v89);
          if (v75)
          {
            sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

            v76 = v114;
            goto LABEL_22;
          }

          v96 = v95;

          if (v96)
          {
            sub_1D66C3A00();
            v76 = v114;
            sub_1D72647EC();
          }

          else
          {
            v76 = v114;
          }

          v81 = v103;
        }

        sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

LABEL_22:
        v51 = v76;
        return sub_1D5D2CFE8(v51, sub_1D66C41C4);
      }

      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
      v54 = v113;
      v76 = v114;
      v62 = v52;
      v60 = v105;
    }

    else
    {

      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

      v76 = v114;
      v75 = v112;
    }

    v97 = v102;
    goto LABEL_17;
  }

  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v51 = v114;
  return sub_1D5D2CFE8(v51, sub_1D66C41C4);
}