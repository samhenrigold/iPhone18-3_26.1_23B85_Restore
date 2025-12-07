unint64_t sub_1DABFB154(char a1)
{
  result = 0x6F626D79735F6469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x65676E6168637865;
      break;
    case 3:
      result = 0x6563697270;
      break;
    case 4:
      result = 0x65676E616863;
      break;
    case 5:
      result = 1852141679;
      break;
    case 6:
      result = 0x776F6C5F796164;
      break;
    case 7:
      result = 0x686769685F796164;
      break;
    case 8:
      result = 0x776F6C5F72616579;
      break;
    case 9:
      result = 0x6769685F72616579;
      break;
    case 10:
      result = 0x646E656469766964;
      break;
    case 11:
      result = 0x635F74656B72616DLL;
      break;
    case 12:
      result = 0x656D756C6F76;
      break;
    case 13:
      result = 0x765F6D335F677661;
      break;
    case 14:
      result = 0x6F697461725F6570;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 7565413;
      break;
    case 17:
      result = 0x79636E6572727563;
      break;
    case 18:
      result = 0x5F736C6961746564;
      break;
    case 19:
      result = 0x616E5F74726F6873;
      break;
    case 20:
      result = 0x7079745F61746164;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000018;
      break;
    case 23:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DABFB3E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DABFB154(*a1);
  v5 = v4;
  if (v3 == sub_1DABFB154(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABFB470()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABFB154(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABFB4D4(uint64_t a1)
{
  sub_1DABFB154(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DABFB528(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DABFB154(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DABFB588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABFC4D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DABFB5B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DABFB154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DABFB5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABFC4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABFB620(uint64_t a1)
{
  v2 = sub_1DABFDD70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFB65C(uint64_t a1)
{
  v2 = sub_1DABFDD70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DABFB698(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABFB6E8(char a1)
{
  if (!a1)
  {
    return 7823730;
  }

  if (a1 == 1)
  {
    return 0x6E69727453776172;
  }

  return 7630182;
}

void *sub_1DABFB734@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABFC52C(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x2D0uLL);
  }

  return result;
}

uint64_t sub_1DABFB780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DABFB7F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DABFB860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DABFB8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1DABFB940@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DABFB698(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DABFB970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DABFB6E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DABFB9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABFB6E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABFB9CC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DABFD54C();
  *a2 = result;
  return result;
}

uint64_t sub_1DABFB9F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DABFBA4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DABFBAA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = sub_1DACB9AF4();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v45 = v38 - v9;
  v44 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for YahooQuoteDetailResponse.Value.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v12 = sub_1DACBA004();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - v13;
  v46 = a3;
  v16 = type metadata accessor for YahooQuoteDetailResponse.Value(0, a2, a3, v15);
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v38 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v49;
  sub_1DACBA2F4();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v18;
  v21 = v45;
  v20 = v46;
  v51 = 0;
  v22 = sub_1DACB9FA4();
  v24 = v49;
  v25 = &v49[*(v16 + 36)];
  v38[1] = v26;
  v38[2] = v22;
  *v25 = v22;
  v25[1] = v26;
  v50 = 2;
  v27 = sub_1DACB9FA4();
  v38[0] = v14;
  v28 = &v24[*(v16 + 40)];
  *v28 = v27;
  v28[1] = v29;
  sub_1DACB71E4();
  v30 = a2;
  v31 = v20;
  sub_1DACBA144();
  v32 = v44;
  if ((*(v44 + 48))(v21, 1, v30) == 1)
  {
    (*(v41 + 8))(v21, v42);
    type metadata accessor for YahooQuoteDetailResponse.Value.ValueError(0, v30, v31, v33);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v47 + 8))(v38[0], v48);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v34 = v24;
    (*(v47 + 8))(v38[0], v48);
    v35 = *(v32 + 32);
    v36 = v40;
    v35(v40, v21, v30);
    v35(v34, v36, v30);
    v37 = v39;
    (*(v39 + 16))(v43, v34, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v37 + 8))(v34, v16);
  }
}

uint64_t sub_1DABFC0A0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DABFC0F8(uint64_t a1)
{
  v2 = sub_1DABFE5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC134(uint64_t a1)
{
  v2 = sub_1DABFE5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABFC170@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABFD554(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABFC19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365746F7571 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABFC220(uint64_t a1)
{
  v2 = sub_1DABFE918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC25C(uint64_t a1)
{
  v2 = sub_1DABFE918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABFC298@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABFD6FC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABFC338@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DABFC390(uint64_t a1)
{
  v2 = sub_1DABFEB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC3CC(uint64_t a1)
{
  v2 = sub_1DABFEB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABFC408@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABFD8A4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DABFC434(uint64_t a1)
{
  v2 = sub_1DABFDCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC470(uint64_t a1)
{
  v2 = sub_1DABFDCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABFC4AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DABFDB20(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DABFC4D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACBA1B4();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

void *sub_1DABFC52C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v136 = a2;
  sub_1DABFEAE8(0, &qword_1EE126868, sub_1DABFDD70, &type metadata for YahooQuoteDetailResponse.Quote.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  v9 = a1[3];
  v228 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABFDD70();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v228);
  }

  v10 = v6;
  LOBYTE(v138) = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v135 = v11;
  LOBYTE(v138) = 1;
  v14 = v8;
  v15 = sub_1DACB9F34();
  v16 = v5;
  v18 = v17;
  v19 = v15;
  LOBYTE(v138) = 2;
  v133 = sub_1DACB9F34();
  v134 = v20;
  LOBYTE(v138) = 17;
  v130 = sub_1DACB9F34();
  v132 = v21;
  LOBYTE(v138) = 18;
  v22 = sub_1DACB9F34();
  v131 = v23;
  v127 = v22;
  LOBYTE(v138) = 19;
  v126 = sub_1DACB9F34();
  v129 = v24;
  LOBYTE(v138) = 20;
  v123 = sub_1DACB9F34();
  v128 = v25;
  LOBYTE(v138) = 21;
  v26 = sub_1DACB9F34();
  v120 = v27;
  v121 = v26;
  v46 = v18;
  v28 = MEMORY[0x1E69E63B0];
  sub_1DABFDDDC(0, &qword_1EE126878, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6420]);
  LOBYTE(v137[0]) = 3;
  v29 = v28;
  v31 = v30;
  v125 = sub_1DABFDE2C(&qword_1EE126880, &qword_1EE126878, v29, MEMORY[0x1E69E6420]);
  v124 = v14;
  sub_1DACB9F84();
  v119 = v138;
  v118 = v139;
  v117 = v140;
  v116 = v141;
  v115 = v142;
  LOBYTE(v137[0]) = 4;
  sub_1DACB9F84();
  v114 = v138;
  v113 = v139;
  v112 = v140;
  v111 = v141;
  v110 = v142;
  LOBYTE(v137[0]) = 5;
  sub_1DACB9F84();
  v108 = v139;
  v109 = v138;
  v106 = v141;
  v107 = v140;
  v105 = v142;
  LOBYTE(v137[0]) = 6;
  sub_1DACB9F84();
  v103 = v139;
  v104 = v138;
  v101 = v141;
  v102 = v140;
  v100 = v142;
  LOBYTE(v137[0]) = 7;
  sub_1DACB9F84();
  v98 = v139;
  v99 = v138;
  v96 = v141;
  v97 = v140;
  v95 = v142;
  LOBYTE(v137[0]) = 8;
  sub_1DACB9F84();
  v93 = v139;
  v94 = v138;
  v91 = v141;
  v92 = v140;
  v90 = v142;
  LOBYTE(v137[0]) = 9;
  sub_1DACB9F84();
  v88 = v139;
  v89 = v138;
  v86 = v141;
  v87 = v140;
  v85 = v142;
  LOBYTE(v137[0]) = 10;
  sub_1DACB9F84();
  v83 = v139;
  v84 = v138;
  v81 = v141;
  v82 = v140;
  v80 = v142;
  LOBYTE(v137[0]) = 11;
  v47 = v16;
  v122 = v31;
  sub_1DACB9F84();
  v78 = v139;
  v79 = v138;
  v76 = v141;
  v77 = v140;
  v75 = v142;
  v32 = MEMORY[0x1E69E6810];
  v33 = MEMORY[0x1E69E6868];
  sub_1DABFDDDC(0, &qword_1EE126888, MEMORY[0x1E69E6810], MEMORY[0x1E69E6868]);
  LOBYTE(v137[0]) = 12;
  sub_1DABFDE2C(qword_1EE126890, &qword_1EE126888, v32, v33);
  sub_1DACB9F84();
  v73 = v139;
  v74 = v138;
  v71 = v141;
  v72 = v140;
  v70 = v142;
  LOBYTE(v137[0]) = 13;
  v34 = v47;
  v35 = v124;
  sub_1DACB9F84();
  v68 = v139;
  v69 = v138;
  v66 = v141;
  v67 = v140;
  v65 = v142;
  LOBYTE(v137[0]) = 14;
  sub_1DACB9F84();
  v63 = v139;
  v64 = v138;
  v61 = v141;
  v62 = v140;
  v60 = v142;
  LOBYTE(v137[0]) = 15;
  sub_1DACB9F84();
  v58 = v139;
  v59 = v138;
  v56 = v141;
  v57 = v140;
  v55 = v142;
  LOBYTE(v137[0]) = 16;
  sub_1DACB9F84();
  v53 = v139;
  v54 = v138;
  v51 = v141;
  v52 = v140;
  v50 = v142;
  LOBYTE(v138) = 22;
  v36 = sub_1DACB9F34();
  v48 = v37;
  v49 = v36;
  LOBYTE(v138) = 23;
  v125 = sub_1DACB9F34();
  v122 = v38;
  (*(v10 + 8))(v35, v34);
  v137[0] = v135;
  v137[1] = v13;
  v39 = v19;
  v137[2] = v19;
  v40 = v46;
  v137[3] = v46;
  v137[4] = v133;
  v41 = v134;
  v137[5] = v134;
  v137[6] = v119;
  v137[7] = v118;
  v137[8] = v117;
  v137[9] = v116;
  v137[10] = v115;
  v137[11] = v114;
  v137[12] = v113;
  v137[13] = v112;
  v137[14] = v111;
  v137[15] = v110;
  v137[16] = v109;
  v137[17] = v108;
  v137[18] = v107;
  v137[19] = v106;
  v137[20] = v105;
  v137[21] = v104;
  v137[22] = v103;
  v137[23] = v102;
  v137[24] = v101;
  v137[25] = v100;
  v137[26] = v99;
  v137[27] = v98;
  v137[28] = v97;
  v137[29] = v96;
  v137[30] = v95;
  v137[31] = v94;
  v137[32] = v93;
  v137[33] = v92;
  v137[34] = v91;
  v137[35] = v90;
  v137[36] = v89;
  v137[37] = v88;
  v137[38] = v87;
  v137[39] = v86;
  v137[40] = v85;
  v137[41] = v84;
  v137[42] = v83;
  v137[43] = v82;
  v137[44] = v81;
  v137[45] = v80;
  v137[46] = v79;
  v137[47] = v78;
  v137[48] = v77;
  v137[49] = v76;
  v137[50] = v75;
  v137[51] = v74;
  v137[52] = v73;
  v137[53] = v72;
  v137[54] = v71;
  v137[55] = v70;
  v137[56] = v69;
  v137[57] = v68;
  v137[58] = v67;
  v137[59] = v66;
  v137[60] = v65;
  v137[61] = v64;
  v137[62] = v63;
  v137[63] = v62;
  v137[64] = v61;
  v137[65] = v60;
  v137[66] = v59;
  v137[67] = v58;
  v137[68] = v57;
  v137[69] = v56;
  v137[70] = v55;
  v137[71] = v54;
  v137[72] = v53;
  v137[73] = v52;
  v137[74] = v51;
  v137[75] = v50;
  v137[76] = v130;
  v42 = v132;
  v137[77] = v132;
  v137[78] = v127;
  v43 = v131;
  v137[79] = v131;
  v137[80] = v126;
  v137[81] = v129;
  v44 = v123;
  v137[82] = v123;
  v137[83] = v128;
  v137[84] = v121;
  v137[85] = v120;
  v137[86] = v49;
  v137[87] = v48;
  v137[88] = v125;
  v137[89] = v122;
  sub_1DABFDE7C(v137, &v138);
  __swift_destroy_boxed_opaque_existential_1(v228);
  v138 = v135;
  v139 = v13;
  v140 = v39;
  v141 = v40;
  v142 = v133;
  v143 = v41;
  v144 = v119;
  v145 = v118;
  v146 = v117;
  v147 = v116;
  v148 = v115;
  v149 = v114;
  v150 = v113;
  v151 = v112;
  v152 = v111;
  v153 = v110;
  v154 = v109;
  v155 = v108;
  v156 = v107;
  v157 = v106;
  v158 = v105;
  v159 = v104;
  v160 = v103;
  v161 = v102;
  v162 = v101;
  v163 = v100;
  v164 = v99;
  v165 = v98;
  v166 = v97;
  v167 = v96;
  v168 = v95;
  v169 = v94;
  v170 = v93;
  v171 = v92;
  v172 = v91;
  v173 = v90;
  v174 = v89;
  v175 = v88;
  v176 = v87;
  v177 = v86;
  v178 = v85;
  v179 = v84;
  v180 = v83;
  v181 = v82;
  v182 = v81;
  v183 = v80;
  v184 = v79;
  v185 = v78;
  v186 = v77;
  v187 = v76;
  v188 = v75;
  v189 = v74;
  v190 = v73;
  v191 = v72;
  v192 = v71;
  v193 = v70;
  v194 = v69;
  v195 = v68;
  v196 = v67;
  v197 = v66;
  v198 = v65;
  v199 = v64;
  v200 = v63;
  v201 = v62;
  v202 = v61;
  v203 = v60;
  v204 = v59;
  v205 = v58;
  v206 = v57;
  v207 = v56;
  v208 = v55;
  v209 = v54;
  v210 = v53;
  v211 = v52;
  v212 = v51;
  v213 = v50;
  v214 = v130;
  v215 = v42;
  v216 = v127;
  v217 = v43;
  v218 = v126;
  v219 = v129;
  v220 = v44;
  v221 = v128;
  v222 = v121;
  v223 = v120;
  v224 = v49;
  v225 = v48;
  v226 = v125;
  v227 = v122;
  sub_1DABFDEB4(&v138);
  return memcpy(v136, v137, 0x2D0uLL);
}

void *sub_1DABFD554(void *a1)
{
  sub_1DABFEAE8(0, &qword_1EE126938, sub_1DABFE5FC, &type metadata for YahooQuoteDetailResponse.Finance.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFE5FC();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFE650();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DABFD6FC(void *a1)
{
  sub_1DABFEAE8(0, &qword_1EE1269E0, sub_1DABFE918, &type metadata for YahooQuoteDetailResponse.QuoteService.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFE918();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFE96C();
    sub_1DACB9F84();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DABFD8A4(void *a1)
{
  sub_1DABFEAE8(0, &qword_1EE126A08, sub_1DABFEB48, &type metadata for YahooQuoteDetailResponse.Quotes.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DABFEB48();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFEC84(0, &qword_1EE126A18, MEMORY[0x1E69E62F8]);
    sub_1DABFEB9C();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_1DABFDB20(void *a1)
{
  sub_1DABFEAE8(0, &qword_1EE126850, sub_1DABFDCC8, &type metadata for YahooQuoteDetailResponse.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFDCC8();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFDD1C();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DABFDCC8()
{
  result = qword_1EE126858;
  if (!qword_1EE126858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126858);
  }

  return result;
}

unint64_t sub_1DABFDD1C()
{
  result = qword_1EE126860;
  if (!qword_1EE126860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126860);
  }

  return result;
}

unint64_t sub_1DABFDD70()
{
  result = qword_1EE126870;
  if (!qword_1EE126870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126870);
  }

  return result;
}

void sub_1DABFDDDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for YahooQuoteDetailResponse.Value(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DABFDE2C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DABFDDDC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YahooQuoteDetailResponse.Quote.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for YahooQuoteDetailResponse.Quote.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DABFE04C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DABFE0CC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1DABFE210(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1DABFE3F0()
{
  result = qword_1ECBE8EA8;
  if (!qword_1ECBE8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8EA8);
  }

  return result;
}

unint64_t sub_1DABFE448()
{
  result = qword_1ECBE8EB0[0];
  if (!qword_1ECBE8EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE8EB0);
  }

  return result;
}

unint64_t sub_1DABFE4A0()
{
  result = qword_1EE126918;
  if (!qword_1EE126918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126918);
  }

  return result;
}

unint64_t sub_1DABFE4F8()
{
  result = qword_1EE126920;
  if (!qword_1EE126920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126920);
  }

  return result;
}

unint64_t sub_1DABFE550()
{
  result = qword_1EE126928;
  if (!qword_1EE126928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126928);
  }

  return result;
}

unint64_t sub_1DABFE5A8()
{
  result = qword_1EE126930;
  if (!qword_1EE126930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126930);
  }

  return result;
}

unint64_t sub_1DABFE5FC()
{
  result = qword_1EE126940;
  if (!qword_1EE126940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126940);
  }

  return result;
}

unint64_t sub_1DABFE650()
{
  result = qword_1EE126948[0];
  if (!qword_1EE126948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE126948);
  }

  return result;
}

uint64_t sub_1DABFE6E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DABFE740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DABFE7A4()
{
  result = qword_1ECBE8F38;
  if (!qword_1ECBE8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F38);
  }

  return result;
}

unint64_t sub_1DABFE86C()
{
  result = qword_1EE1269D0;
  if (!qword_1EE1269D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269D0);
  }

  return result;
}

unint64_t sub_1DABFE8C4()
{
  result = qword_1EE1269D8;
  if (!qword_1EE1269D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269D8);
  }

  return result;
}

unint64_t sub_1DABFE918()
{
  result = qword_1EE1269E8;
  if (!qword_1EE1269E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269E8);
  }

  return result;
}

unint64_t sub_1DABFE96C()
{
  result = qword_1EE1269F0;
  if (!qword_1EE1269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269F0);
  }

  return result;
}

unint64_t sub_1DABFE9E4()
{
  result = qword_1ECBE8F40;
  if (!qword_1ECBE8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F40);
  }

  return result;
}

unint64_t sub_1DABFEA3C()
{
  result = qword_1EE1269F8;
  if (!qword_1EE1269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269F8);
  }

  return result;
}

unint64_t sub_1DABFEA94()
{
  result = qword_1EE126A00;
  if (!qword_1EE126A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A00);
  }

  return result;
}

void sub_1DABFEAE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1DACBA004();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DABFEB48()
{
  result = qword_1EE126A10;
  if (!qword_1EE126A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A10);
  }

  return result;
}

unint64_t sub_1DABFEB9C()
{
  result = qword_1EE126A20;
  if (!qword_1EE126A20)
  {
    sub_1DABFEC84(255, &qword_1EE126A18, MEMORY[0x1E69E62F8]);
    sub_1DABFEC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A20);
  }

  return result;
}

unint64_t sub_1DABFEC30()
{
  result = qword_1EE126A28;
  if (!qword_1EE126A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A28);
  }

  return result;
}

void sub_1DABFEC84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for YahooQuoteDetailResponse.Quote);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABFECEC()
{
  result = qword_1ECBE8F48;
  if (!qword_1ECBE8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F48);
  }

  return result;
}

unint64_t sub_1DABFED44()
{
  result = qword_1EE126A38;
  if (!qword_1EE126A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A38);
  }

  return result;
}

unint64_t sub_1DABFED9C()
{
  result = qword_1EE126A40;
  if (!qword_1EE126A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A40);
  }

  return result;
}

uint64_t sub_1DABFEE24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  return v0;
}

uint64_t sub_1DABFEE64()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1DABFEEBC()
{
  if ((sub_1DAA64FC0() & 1) == 0)
  {
    return 0;
  }

  if ([*(v0 + 56) isPrivateDataSyncingAllowed])
  {
    return 1;
  }

  if (qword_1EE11D680 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  return v2;
}

uint64_t sub_1DABFEF94()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5A98 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v5 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v3 + 518);
  v7 = v3[4152];
  sub_1DAA640AC(v3);
  if (v7)
  {
    v6 = 0;
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v8 = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFF0EC()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5AA0 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v5 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v3 + 520);
  v7 = v3[4168];
  sub_1DAA640AC(v3);
  if (v7)
  {
    v6 = 0;
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v8 = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFF244()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5AA8 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v3 + 531);
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFF394()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D5A0 != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v5 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v3 + 524);
  v7 = v3[4200];
  sub_1DAA640AC(v3);
  if (v7)
  {
    v6 = 0;
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v8 = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFF4EC()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D5B0 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v3 + 534);
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFF63C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE120058 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v3 + 529);
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFF78C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D590 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v3 + 171);
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFF8DC()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D558 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v3 + 172);
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFFA2C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D580 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *&v3[*(v1 + 540)];
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFFB90()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D540 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v3 + 176);
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFFCE0()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D518 != -1)
  {
    swift_once();
  }

  v4 = objc_opt_self();
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v3 + 177);
  sub_1DAA640AC(v3);
  [v4 enabledForCurrentLevel_];
  LOBYTE(v7) = sub_1DACB8004();

  return v7 & 1;
}

uint64_t sub_1DABFFE80()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5AA8 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 531);
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFFFF8()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D5B0 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 534);
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DAC00148()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE120058 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 529);
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DAC00298()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D590 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 171);
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DAC003E8()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D558 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 172);
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DAC00538()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D580 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *&v3[*(v1 + 540)];
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

unint64_t sub_1DAC00810()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1DAB68788(MEMORY[0x1E69E7CC0]);
  result = sub_1DAB681FC(v0);
  qword_1EE11EDA8 = v1;
  *algn_1EE11EDB0 = result;
  return result;
}

uint64_t static StockPriceData.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EDA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_1EE11EDB0;
  *a1 = qword_1EE11EDA8;
  a1[1] = v1;
  sub_1DACB71E4();

  return sub_1DACB71E4();
}

unint64_t StockPriceData.description.getter()
{
  sub_1DACB9C94();

  type metadata accessor for Quote(0);
  v0 = sub_1DACB9134();
  MEMORY[0x1E1276F20](v0);

  MEMORY[0x1E1276F20](0xD000000000000016, 0x80000001DACEE4D0);
  sub_1DAC00A1C(0);
  sub_1DAC00A84();
  sub_1DAA642D8();
  sub_1DACB71E4();
  v1 = sub_1DACB9554();
  v3 = v2;

  MEMORY[0x1E1276F20](v1, v3);

  MEMORY[0x1E1276F20](10589, 0xE200000000000000);
  return 0xD000000000000017;
}

void sub_1DAC00A1C(uint64_t a1)
{
  if (!qword_1ECBE8F50)
  {
    type metadata accessor for Chart(255);
    v1 = sub_1DACB9174();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8F50);
    }
  }
}

unint64_t sub_1DAC00A84()
{
  result = qword_1ECBE8F58;
  if (!qword_1ECBE8F58)
  {
    sub_1DAC00A1C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F58);
  }

  return result;
}

StocksCore::StockPriceData __swiftcall StockPriceData.merge(other:)(StocksCore::StockPriceData other)
{
  v3 = v1;
  v4 = *other.quotes._rawValue;
  v5 = *(other.quotes._rawValue + 1);
  v6 = *v2;
  v7 = v2[1];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v6;
  sub_1DAC014FC(v4, sub_1DAC00C04, 0, isUniquelyReferenced_nonNull_native, &v14);

  v9 = v14;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v7;
  sub_1DAC019C8(v5, sub_1DAC00BDC, 0, v10, &v14);

  v12 = v14;
  *v3 = v9;
  v3[1] = v12;
  result.sparklines._rawValue = v11;
  result.quotes._rawValue = v12;
  return result;
}

uint64_t sub_1DAC00C2C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, unint64_t *a3@<X3>, void *a4@<X8>, unint64_t *a5@<X1>)
{
  sub_1DAC02090(0, a5, a2);
  v10 = *(v9 + 48);
  sub_1DAC01F5C(0, a3, a2);
  v13 = *a1;
  v12 = a1[1];
  sub_1DAA85FD8(a1 + v10, a4 + *(v11 + 48), a2);
  *a4 = v13;
  a4[1] = v12;

  return sub_1DACB71E4();
}

uint64_t sub_1DAC00CB4@<X0>(uint64_t a1@<X8>)
{
  sub_1DAC02090(0, &qword_1EE11FC10, type metadata accessor for Chart);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - v4;
  v5 = type metadata accessor for Chart(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart, sub_1DAC02090);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v40 - v13);
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = a1;
  v43 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = (*(v15 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    sub_1DAA85FD8(*(v15 + 56) + *(v6 + 72) * v25, v8, type metadata accessor for Chart);
    v29 = v42;
    v30 = *(v42 + 48);
    *v14 = v27;
    v14[1] = v28;
    v31 = v29;
    sub_1DAC01FC0(v8, v14 + v30, type metadata accessor for Chart);
    v32 = v41;
    (*(v41 + 56))(v14, 0, 1, v31);
    sub_1DACB71E4();
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v24;
    v34 = v1[5];
    sub_1DAC020F8(v14, v33, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart);
    v35 = 1;
    v36 = (*(v32 + 48))(v33, 1, v31);
    v37 = v45;
    if (v36 != 1)
    {
      v38 = v40;
      sub_1DAC01EF0(v33, v40, &qword_1EE11FC10, type metadata accessor for Chart);
      v34(v38);
      sub_1DAC0217C(v38, &qword_1EE11FC10, type metadata accessor for Chart);
      v35 = 0;
    }

    sub_1DAC01F5C(0, &qword_1EE11FBD8, type metadata accessor for Chart);
    return (*(*(v39 - 8) + 56))(v37, v35, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v41;
        v31 = v42;
        (*(v41 + 56))(&v40 - v13, 1, 1, v42);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC010D8@<X0>(uint64_t a1@<X8>)
{
  sub_1DAC02090(0, &qword_1EE11FC00, type metadata accessor for Quote);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - v4;
  v5 = type metadata accessor for Quote(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote, sub_1DAC02090);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v40 - v13);
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = a1;
  v43 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = (*(v15 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    sub_1DAA85FD8(*(v15 + 56) + *(v6 + 72) * v25, v8, type metadata accessor for Quote);
    v29 = v42;
    v30 = *(v42 + 48);
    *v14 = v27;
    v14[1] = v28;
    v31 = v29;
    sub_1DAC01FC0(v8, v14 + v30, type metadata accessor for Quote);
    v32 = v41;
    (*(v41 + 56))(v14, 0, 1, v31);
    sub_1DACB71E4();
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v24;
    v34 = v1[5];
    sub_1DAC020F8(v14, v33, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
    v35 = 1;
    v36 = (*(v32 + 48))(v33, 1, v31);
    v37 = v45;
    if (v36 != 1)
    {
      v38 = v40;
      sub_1DAC01EF0(v33, v40, &qword_1EE11FC00, type metadata accessor for Quote);
      v34(v38);
      sub_1DAC0217C(v38, &qword_1EE11FC00, type metadata accessor for Quote);
      v35 = 0;
    }

    sub_1DAC01F5C(0, &qword_1EE11D198, type metadata accessor for Quote);
    return (*(*(v39 - 8) + 56))(v37, v35, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v41;
        v31 = v42;
        (*(v41 + 56))(&v40 - v13, 1, 1, v42);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC014FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v10 = type metadata accessor for Quote(0);
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1ECBE8F60, &qword_1EE11D198, type metadata accessor for Quote, sub_1DAC01F5C);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v53 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v57 = a1;
  v58 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v59 = v17;
  v60 = 0;
  v61 = v20 & v18;
  v62 = a2;
  v63 = a3;
  sub_1DACB71E4();
  v55 = a3;
  sub_1DACB71F4();
  sub_1DAC010D8(v15);
  sub_1DAC01F5C(0, &qword_1EE11D198, type metadata accessor for Quote);
  v22 = v21;
  v56 = *(*(v21 - 8) + 48);
  if (v56(v15, 1, v21) == 1)
  {
LABEL_5:
    sub_1DAA54B38(v57);
  }

  v54 = a4;
  v25 = *v15;
  v24 = v15[1];
  sub_1DAC01FC0(v15 + *(v22 + 48), v12, type metadata accessor for Quote);
  v26 = *a5;
  v53 = v25;
  v28 = sub_1DAA4BF3C(v25, v24);
  v29 = v26[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = v27;
  if (v26[3] >= v31)
  {
    if (v54)
    {
      v35 = *a5;
      if (v27)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1DAA89048();
      v35 = *a5;
      if (v32)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v35[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v35[6] + 16 * v28);
    *v36 = v53;
    v36[1] = v24;
    sub_1DAC01FC0(v12, v35[7] + *(v64 + 72) * v28, type metadata accessor for Quote);
    v37 = v35[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (!v38)
    {
      v35[2] = v39;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  sub_1DAA7C010(v31, v54 & 1);
  v33 = sub_1DAA4BF3C(v53, v24);
  if ((v32 & 1) == (v34 & 1))
  {
    v28 = v33;
    v35 = *a5;
    if (v32)
    {
LABEL_16:

      sub_1DAC02028(v12, v35[7] + *(v64 + 72) * v28, type metadata accessor for Quote);
LABEL_19:
      while (1)
      {
        sub_1DAC010D8(v15);
        if (v56(v15, 1, v22) == 1)
        {
          goto LABEL_5;
        }

        v44 = *v15;
        v43 = v15[1];
        sub_1DAC01FC0(v15 + *(v22 + 48), v12, type metadata accessor for Quote);
        v45 = *a5;
        v46 = sub_1DAA4BF3C(v44, v43);
        v48 = v45[2];
        v49 = (v47 & 1) == 0;
        v38 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v38)
        {
          goto LABEL_25;
        }

        v51 = v47;
        if (v45[3] < v50)
        {
          sub_1DAA7C010(v50, 1);
          v46 = sub_1DAA4BF3C(v44, v43);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_27;
          }
        }

        v35 = *a5;
        if (v51)
        {
          v28 = v46;
          goto LABEL_16;
        }

        v35[(v46 >> 6) + 8] |= 1 << v46;
        v40 = (v35[6] + 16 * v46);
        *v40 = v44;
        v40[1] = v43;
        sub_1DAC01FC0(v12, v35[7] + *(v64 + 72) * v46, type metadata accessor for Quote);
        v41 = v35[2];
        v38 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v38)
        {
          goto LABEL_26;
        }

        v35[2] = v42;
      }
    }

    goto LABEL_13;
  }

LABEL_27:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAC019C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v10 = type metadata accessor for Chart(0);
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1EE126A48, &qword_1EE11FBD8, type metadata accessor for Chart, sub_1DAC01F5C);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v53 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v57 = a1;
  v58 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v59 = v17;
  v60 = 0;
  v61 = v20 & v18;
  v62 = a2;
  v63 = a3;
  sub_1DACB71E4();
  v55 = a3;
  sub_1DACB71F4();
  sub_1DAC00CB4(v15);
  sub_1DAC01F5C(0, &qword_1EE11FBD8, type metadata accessor for Chart);
  v22 = v21;
  v56 = *(*(v21 - 8) + 48);
  if (v56(v15, 1, v21) == 1)
  {
LABEL_5:
    sub_1DAA54B38(v57);
  }

  v54 = a4;
  v25 = *v15;
  v24 = v15[1];
  sub_1DAC01FC0(v15 + *(v22 + 48), v12, type metadata accessor for Chart);
  v26 = *a5;
  v53 = v25;
  v28 = sub_1DAA4BF3C(v25, v24);
  v29 = v26[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = v27;
  if (v26[3] >= v31)
  {
    if (v54)
    {
      v35 = *a5;
      if (v27)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1DAB66744();
      v35 = *a5;
      if (v32)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v35[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v35[6] + 16 * v28);
    *v36 = v53;
    v36[1] = v24;
    sub_1DAC01FC0(v12, v35[7] + *(v64 + 72) * v28, type metadata accessor for Chart);
    v37 = v35[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (!v38)
    {
      v35[2] = v39;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  sub_1DAA860FC(v31, v54 & 1);
  v33 = sub_1DAA4BF3C(v53, v24);
  if ((v32 & 1) == (v34 & 1))
  {
    v28 = v33;
    v35 = *a5;
    if (v32)
    {
LABEL_16:

      sub_1DAC02028(v12, v35[7] + *(v64 + 72) * v28, type metadata accessor for Chart);
LABEL_19:
      while (1)
      {
        sub_1DAC00CB4(v15);
        if (v56(v15, 1, v22) == 1)
        {
          goto LABEL_5;
        }

        v44 = *v15;
        v43 = v15[1];
        sub_1DAC01FC0(v15 + *(v22 + 48), v12, type metadata accessor for Chart);
        v45 = *a5;
        v46 = sub_1DAA4BF3C(v44, v43);
        v48 = v45[2];
        v49 = (v47 & 1) == 0;
        v38 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v38)
        {
          goto LABEL_25;
        }

        v51 = v47;
        if (v45[3] < v50)
        {
          sub_1DAA860FC(v50, 1);
          v46 = sub_1DAA4BF3C(v44, v43);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_27;
          }
        }

        v35 = *a5;
        if (v51)
        {
          v28 = v46;
          goto LABEL_16;
        }

        v35[(v46 >> 6) + 8] |= 1 << v46;
        v40 = (v35[6] + 16 * v46);
        *v40 = v44;
        v40[1] = v43;
        sub_1DAC01FC0(v12, v35[7] + *(v64 + 72) * v46, type metadata accessor for Chart);
        v41 = v35[2];
        v38 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v38)
        {
          goto LABEL_26;
        }

        v35[2] = v42;
      }
    }

    goto LABEL_13;
  }

LABEL_27:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

void sub_1DAC01E94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1DACB9AF4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1DAC01EF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAC02090(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1DAC01F5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAC01FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC02028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1DAC02090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAC020F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1DAC01E94(0, a3, a4, a5, sub_1DAC02090);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DAC0217C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC02090(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAC02200@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAAA2108(0);
  swift_allocObject();
  result = sub_1DACB8E34();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC02290()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC022E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DAC02330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC02380(_OWORD *a1)
{
  v3 = sub_1DACB8FB4();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DACB9004();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[7];
  v26[6] = a1[6];
  v26[7] = v9;
  v26[8] = a1[8];
  v10 = a1[3];
  v26[2] = a1[2];
  v26[3] = v10;
  v11 = a1[5];
  v26[4] = a1[4];
  v26[5] = v11;
  v12 = a1[1];
  v26[0] = *a1;
  v26[1] = v12;
  v21[1] = *(v1 + 24);
  v13 = swift_allocObject();
  v14 = a1[7];
  *(v13 + 112) = a1[6];
  *(v13 + 128) = v14;
  *(v13 + 144) = a1[8];
  v15 = a1[3];
  *(v13 + 48) = a1[2];
  *(v13 + 64) = v15;
  v16 = a1[5];
  *(v13 + 80) = a1[4];
  *(v13 + 96) = v16;
  v17 = a1[1];
  *(v13 + 16) = *a1;
  *(v13 + 32) = v17;
  *(v13 + 160) = v1;
  v25[4] = sub_1DAC04130;
  v25[5] = v13;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1DAA5796C;
  v25[3] = &block_descriptor_15;
  v18 = _Block_copy(v25);
  sub_1DAAD4CCC(v26, v24);
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v24[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA57344(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1DAA5802C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57424(&qword_1EE123EB0, &qword_1EE123EC0, v19);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v8, v5, v18);
  _Block_release(v18);
  (*(v23 + 8))(v5, v3);
  (*(v6 + 8))(v8, v22);
}

uint64_t sub_1DAC026C4(_OWORD *a1, uint64_t a2)
{
  sub_1DAA41D64(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D40;
  v5 = a1[7];
  v45[6] = a1[6];
  v45[7] = v5;
  v45[8] = a1[8];
  v6 = a1[3];
  v45[2] = a1[2];
  v45[3] = v6;
  v7 = a1[5];
  v45[4] = a1[4];
  v45[5] = v7;
  v8 = a1[1];
  v45[0] = *a1;
  v45[1] = v8;
  sub_1DAA9B6F0(v45);
  v9 = [*sub_1DAA9B6E0(v45) articleID];
  v10 = sub_1DACB9324();
  v12 = v11;

  v13 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1DAA443C8();
  *(v4 + 64) = v14;
  *(v4 + 32) = v10;
  *(v4 + 40) = v12;
  v15 = a1[7];
  v44[6] = a1[6];
  v44[7] = v15;
  v44[8] = a1[8];
  v16 = a1[3];
  v44[2] = a1[2];
  v44[3] = v16;
  v17 = a1[5];
  v44[4] = a1[4];
  v44[5] = v17;
  v18 = a1[1];
  v44[0] = *a1;
  v44[1] = v18;
  sub_1DAA9B6F0(v44);
  v19 = [*sub_1DAA9B6E0(v44) title];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1DACB9324();
    v23 = v22;

    v24 = (v4 + 72);
    *(v4 + 96) = v13;
    *(v4 + 104) = v14;
    if (v23)
    {
      *v24 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    v24 = (v4 + 72);
    *(v4 + 96) = v13;
    *(v4 + 104) = v14;
  }

  *v24 = 0;
  v23 = 0xE000000000000000;
LABEL_6:
  *(v4 + 80) = v23;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v25 = sub_1DACB9AD4();
  v26 = sub_1DACB9914();
  sub_1DACB8C64("marking headline as exposed (id=%{public}@, title=%{public}@)", 61, 2, &dword_1DAA3F000, v25, v26, v4);

  v27 = sub_1DAC02AC8(a2, a1);
  v29 = v28;
  if (v30)
  {
  }

  v32 = v27;
  sub_1DACB88F4();
  sub_1DACB71E4();
  sub_1DACB8E14();

  v33 = a1[7];
  v43[6] = a1[6];
  v43[7] = v33;
  v43[8] = a1[8];
  v34 = a1[3];
  v43[2] = a1[2];
  v43[3] = v34;
  v35 = a1[5];
  v43[4] = a1[4];
  v43[5] = v35;
  v36 = a1[1];
  v43[0] = *a1;
  v43[1] = v36;
  sub_1DAA9B6F0(v43);
  v37 = [*sub_1DAA9B6E0(v43) identifier];
  v38 = sub_1DACB9324();
  v40 = v39;

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1DACA5F1C(v32, v29, 1, v38, v40, isUniquelyReferenced_nonNull_native);

  *(a2 + 16) = v42;
  return swift_endAccess();
}

_OWORD *sub_1DAC02AC8(uint64_t a1, _OWORD *a2)
{
  v35 = sub_1DACB8D04();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[7];
  v39[6] = a2[6];
  v39[7] = v7;
  v39[8] = a2[8];
  v8 = a2[3];
  v39[2] = a2[2];
  v39[3] = v8;
  v9 = a2[5];
  v39[4] = a2[4];
  v39[5] = v9;
  v10 = a2[1];
  v39[0] = *a2;
  v39[1] = v10;
  sub_1DAA9B6F0(v39);
  v11 = [*sub_1DAA9B6E0(v39) identifier];
  v12 = sub_1DACB9324();
  v14 = v13;

  swift_beginAccess();
  v15 = *(a1 + 16);
  if (*(v15 + 16))
  {
    v16 = sub_1DAA4BF3C(v12, v14);
    v18 = v17;

    if (v18)
    {
      a2 = *(*(v15 + 56) + 24 * v16);
      swift_endAccess();
      sub_1DACB71E4();
      return a2;
    }
  }

  else
  {
  }

  swift_endAccess();
  sub_1DACB88F4();
  v19 = a2[7];
  v38[6] = a2[6];
  v38[7] = v19;
  v38[8] = a2[8];
  v20 = a2[3];
  v38[2] = a2[2];
  v38[3] = v20;
  v21 = a2[5];
  v38[4] = a2[4];
  v38[5] = v21;
  v22 = a2[1];
  v38[0] = *a2;
  v38[1] = v22;
  sub_1DAA9B6F0(v38);
  v23 = [*sub_1DAA9B6E0(v38) identifier];
  v24 = sub_1DACB9324();
  v26 = v25;

  v36[3] = MEMORY[0x1E69E6158];
  v36[4] = MEMORY[0x1E69D62D8];
  v36[0] = v24;
  v36[1] = v26;
  sub_1DACB8E04();
  __swift_destroy_boxed_opaque_existential_1(v36);
  v27 = v40;
  sub_1DACB8E24();
  if (v27)
  {
    (*(v4 + 8))(v6, v35);
  }

  else
  {
    (*(v4 + 8))(v6, v35);

    if (v36[6])
    {
      return v36[5];
    }

    else
    {
      v28 = a2[7];
      v37[6] = a2[6];
      v37[7] = v28;
      v37[8] = a2[8];
      v29 = a2[3];
      v37[2] = a2[2];
      v37[3] = v29;
      v30 = a2[5];
      v37[4] = a2[4];
      v37[5] = v30;
      v31 = a2[1];
      v37[0] = *a2;
      v37[1] = v31;
      sub_1DAA9B6F0(v37);
      v32 = [*sub_1DAA9B6E0(v37) identifier];
      a2 = sub_1DACB9324();
    }
  }

  return a2;
}

uint64_t sub_1DAC02E00(_OWORD *a1)
{
  v3 = a1[7];
  v21[6] = a1[6];
  v21[7] = v3;
  v21[8] = a1[8];
  v4 = a1[3];
  v21[2] = a1[2];
  v21[3] = v4;
  v5 = a1[5];
  v21[4] = a1[4];
  v21[5] = v5;
  v6 = a1[1];
  v21[0] = *a1;
  v21[1] = v6;
  v20 = 0;
  v7 = *(v1 + 24);
  v8 = swift_allocObject();
  v9 = a1[4];
  *(v8 + 104) = a1[5];
  v10 = a1[7];
  *(v8 + 120) = a1[6];
  *(v8 + 136) = v10;
  *(v8 + 152) = a1[8];
  v11 = *a1;
  *(v8 + 40) = a1[1];
  v12 = a1[3];
  *(v8 + 56) = a1[2];
  *(v8 + 72) = v12;
  *(v8 + 88) = v9;
  *(v8 + 16) = v1;
  *(v8 + 24) = v11;
  *(v8 + 168) = &v20;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1DAC04120;
  *(v13 + 24) = v8;
  aBlock[4] = sub_1DAB4DBE8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAC03468;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DAAD4CCC(v21, v18);
  sub_1DACB71F4();

  dispatch_sync(v7, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v17 = v20;

    return v17;
  }

  return result;
}

uint64_t sub_1DAC02FE0(uint64_t a1, _OWORD *a2, char *a3)
{
  v43 = a3;
  v44 = sub_1DACB8D04();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[7];
  v59[6] = a2[6];
  v59[7] = v8;
  v59[8] = a2[8];
  v9 = a2[3];
  v59[2] = a2[2];
  v59[3] = v9;
  v10 = a2[5];
  v59[4] = a2[4];
  v59[5] = v10;
  v11 = a2[1];
  v59[0] = *a2;
  v59[1] = v11;
  sub_1DAA9B6F0(v59);
  v12 = [*sub_1DAA9B6E0(v59) identifier];
  v13 = sub_1DACB9324();
  v15 = v14;

  swift_beginAccess();
  v16 = *(a1 + 16);
  if (*(v16 + 16))
  {
    v17 = sub_1DAA4BF3C(v13, v15);
    v19 = v18;

    if (v19)
    {
      v20 = *(*(v16 + 56) + 24 * v17 + 16);
      result = swift_endAccess();
      *v43 = v20;
      return result;
    }
  }

  else
  {
  }

  swift_endAccess();
  sub_1DACB88F4();
  v22 = a2[7];
  v58[6] = a2[6];
  v58[7] = v22;
  v58[8] = a2[8];
  v23 = a2[3];
  v58[2] = a2[2];
  v58[3] = v23;
  v24 = a2[5];
  v58[4] = a2[4];
  v58[5] = v24;
  v25 = a2[1];
  v58[0] = *a2;
  v58[1] = v25;
  sub_1DAA9B6F0(v58);
  v26 = [*sub_1DAA9B6E0(v58) identifier];
  v27 = sub_1DACB9324();
  v29 = v28;

  *(&v50 + 1) = MEMORY[0x1E69E6158];
  *&v51 = MEMORY[0x1E69D62D8];
  *&v49 = v27;
  *(&v49 + 1) = v29;
  sub_1DACB8E04();
  __swift_destroy_boxed_opaque_existential_1(&v49);
  sub_1DACB8E24();
  (*(v5 + 8))(v7, v44);

  v30 = v47;
  if (v47)
  {
    v31 = v46;
    v32 = v48;
    v33 = a2[7];
    v55 = a2[6];
    v56 = v33;
    v57 = a2[8];
    v34 = a2[3];
    v51 = a2[2];
    v52 = v34;
    v35 = a2[5];
    v53 = a2[4];
    v54 = v35;
    v36 = a2[1];
    v49 = *a2;
    v50 = v36;
    sub_1DAA9B6F0(&v49);
    v37 = [*sub_1DAA9B6E0(&v49) identifier];
    v38 = sub_1DACB9324();
    v40 = v39;

    swift_beginAccess();
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(a1 + 16);
    *(a1 + 16) = 0x8000000000000000;
    v32 &= 1u;
    sub_1DACA5F1C(v31, v30, v32, v38, v40, isUniquelyReferenced_nonNull_native);

    *(a1 + 16) = v45;
    swift_endAccess();

    *v43 = v32;
  }

  return result;
}

uint64_t sub_1DAC03490(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a4;
  sub_1DAC04B0C(0, &qword_1EE11CF48, sub_1DAC04AB8, &type metadata for HeadlineHistoryModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC04AB8();
  sub_1DACBA304();
  v15 = 0;
  v10 = v12[1];
  sub_1DACBA094();
  if (!v10)
  {
    v14 = 1;
    sub_1DACBA0A4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAC0367C(uint64_t a1)
{
  v2 = sub_1DAC04AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC036B8(uint64_t a1)
{
  v2 = sub_1DAC04AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC036F4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC04200(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DAC03748(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  sub_1DAC04B0C(0, &qword_1EE11CF30, sub_1DAC04984, &type metadata for HeadlineHistoryEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC04984();
  sub_1DACBA304();
  v14 = a2;
  v13 = 0;
  sub_1DAC041AC(0, &qword_1EE11D2F8, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6208]);
  sub_1DAC04A48(&qword_1EE11D308, MEMORY[0x1E69D6210]);
  sub_1DACBA0E4();
  if (!v3)
  {
    v14 = v12;
    v13 = 1;
    sub_1DAC041AC(0, &qword_1EE11D2E0, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], MEMORY[0x1E69D6208]);
    sub_1DAC049D8(&qword_1EE11D2F0, MEMORY[0x1E69D6210]);
    sub_1DACBA0E4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DAC039B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465736F707865 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAC03A84(uint64_t a1)
{
  v2 = sub_1DAC04984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC03AC0(uint64_t a1)
{
  v2 = sub_1DAC04984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC03B20()
{
  v0 = *a100;
  sub_1DACB71E4();
  return v0;
}

uint64_t sub_1DAC03B58(uint64_t a1)
{
  v2 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1DAC03BA4(uint64_t a1)
{
  v2 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1DAC03BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1DAC03C54@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  sub_1DAC0413C(0, &qword_1EE11D310, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0]);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - v5;
  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1E69D62D0];
  sub_1DAC0413C(0, &qword_1EE11D320, &qword_1EE11D328, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = MEMORY[0x1E69D6200];
  sub_1DAC041AC(0, &qword_1EE11D328, v7, v8, MEMORY[0x1E69D6200]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v18(v14, 1, 1, v16);
  v18(v12, 1, 1, v17);
  v19 = MEMORY[0x1E69D6208];
  sub_1DAC041AC(0, &qword_1EE11D2F8, v7, v8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  v20 = sub_1DACB8E54();
  v21 = MEMORY[0x1E69E6370];
  v22 = MEMORY[0x1E69D62E0];
  sub_1DAC041AC(0, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], v15);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v6, 1, 1, v23);
  v25(v4, 1, 1, v24);
  sub_1DAC041AC(0, &qword_1EE11D2E0, v21, v22, v19);
  swift_allocObject();
  result = sub_1DACB8E54();
  v27 = v29;
  *v29 = v20;
  v27[1] = result;
  return result;
}

uint64_t sub_1DAC03F64@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC0440C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1DAC03FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAAA2C20();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1DAC03FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAAA2C20();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1DAC0404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

void sub_1DAC040B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  swift_unknownObjectRelease();
  if ((a14 & 0x8000000000000000) == 0)
  {
  }
}

void sub_1DAC0413C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1DAC041AC(255, a3, a4, a5, MEMORY[0x1E69D6200]);
    v6 = sub_1DACB9AF4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1DAC041AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1DAC04200(void *a1)
{
  sub_1DAC04B0C(0, &qword_1EE11CF70, sub_1DAC04AB8, &type metadata for HeadlineHistoryModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC04AB8();
  sub_1DACBA2F4();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DACB9FA4();
    v11 = 1;
    sub_1DACB9FB4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DAC0440C(void *a1)
{
  v38 = a1;
  sub_1DAC04B0C(0, &qword_1EE11CF68, sub_1DAC04984, &type metadata for HeadlineHistoryEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v32 - v2;
  sub_1DAC0413C(0, &qword_1EE11D310, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v32 - v6;
  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1E69D62D0];
  sub_1DAC0413C(0, &qword_1EE11D320, &qword_1EE11D328, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = MEMORY[0x1E69D6200];
  sub_1DAC041AC(0, &qword_1EE11D328, v7, v8, MEMORY[0x1E69D6200]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v18(v14, 1, 1, v16);
  v18(v12, 1, 1, v17);
  v19 = MEMORY[0x1E69D6208];
  sub_1DAC041AC(0, &qword_1EE11D2F8, v7, v8, MEMORY[0x1E69D6208]);
  v21 = v20;
  swift_allocObject();
  v37 = sub_1DACB8E54();
  v22 = MEMORY[0x1E69E6370];
  sub_1DAC041AC(0, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], v15);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v35, 1, 1, v23);
  v25(v36, 1, 1, v24);
  v26 = v38;
  sub_1DAC041AC(0, &qword_1EE11D2E0, v22, MEMORY[0x1E69D62E0], v19);
  swift_allocObject();
  sub_1DACB8E54();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1DAC04984();
  v27 = v40;
  v28 = v39;
  sub_1DACBA2F4();
  if (v27)
  {
  }

  else
  {
    v29 = v33;
    v41 = 0;
    sub_1DAC04A48(&qword_1EE11D300, MEMORY[0x1E69D6218]);
    v30 = v34;
    sub_1DACB9FE4();

    v21 = v42;
    v41 = 1;
    sub_1DAC049D8(&qword_1EE11D2E8, MEMORY[0x1E69D6218]);
    sub_1DACB9FE4();
    (*(v29 + 8))(v28, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v21;
}

unint64_t sub_1DAC04984()
{
  result = qword_1EE11E5B8;
  if (!qword_1EE11E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5B8);
  }

  return result;
}

uint64_t sub_1DAC049D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC041AC(255, &qword_1EE11D2E0, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], MEMORY[0x1E69D6208]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAC04A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC041AC(255, &qword_1EE11D2F8, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6208]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC04AB8()
{
  result = qword_1EE11E650;
  if (!qword_1EE11E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E650);
  }

  return result;
}

void sub_1DAC04B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC04B98()
{
  result = qword_1ECBE8F78;
  if (!qword_1ECBE8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F78);
  }

  return result;
}

unint64_t sub_1DAC04BF0()
{
  result = qword_1ECBE8F80;
  if (!qword_1ECBE8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F80);
  }

  return result;
}

unint64_t sub_1DAC04C48()
{
  result = qword_1EE11E640;
  if (!qword_1EE11E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E640);
  }

  return result;
}

unint64_t sub_1DAC04CA0()
{
  result = qword_1EE11E648;
  if (!qword_1EE11E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E648);
  }

  return result;
}

unint64_t sub_1DAC04CF8()
{
  result = qword_1EE11E5A8;
  if (!qword_1EE11E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5A8);
  }

  return result;
}

unint64_t sub_1DAC04D50()
{
  result = qword_1EE11E5B0;
  if (!qword_1EE11E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5B0);
  }

  return result;
}

uint64_t sub_1DAC04DB8()
{
  sub_1DAA65E94();
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAC04E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DAA98788;
  *(v10 + 24) = v8;
  v12[4] = sub_1DAB4DBE8;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAA5796C;
  v12[3] = &block_descriptor_28;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();

  [v9 prepareForUseWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t sub_1DAC04F1C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC04F54()
{
  sub_1DAA65E94();
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC0503C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_1DAC05064()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC050A4()
{
  sub_1DAC051C4(0);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC050F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DACB82E4();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB82D4();
}

void sub_1DAC051C4(uint64_t a1)
{
  if (!qword_1EE11D410)
  {
    sub_1DACB8704();
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D410);
    }
  }
}

void sub_1DAC0521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v23 = a2;
  v24 = a3;
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAB25E48(0, 4, 0);
  v13 = 0;
  v14 = v29;
  v22 = a1;
  v27 = *(a1 + 56);
  v28 = v7 + 32;
  do
  {
    sub_1DACB8BD4();
    sub_1DACB7A24();

    (*(v7 + 8))(v10, v6);
    v29 = v14;
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1DAB25E48((v15 > 1), v16 + 1, 1);
      v14 = v29;
    }

    ++v13;
    *(v14 + 16) = v16 + 1;
    v17 = (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v12, v6);
  }

  while (v13 != 4);
  MEMORY[0x1EEE9AC00](v17);
  *(&v22 - 2) = v22;
  *(&v22 - 1) = v14;
  sub_1DAC05A04(0);
  sub_1DACB8BB4();

  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 24) = v24;
  sub_1DACB71F4();
  v19 = sub_1DACB89D4();
  sub_1DACB8A64();

  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  *(v20 + 24) = v26;
  sub_1DACB71F4();
  v21 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAC055C0(uint64_t a1)
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  type metadata accessor for SDSAuthToken(0);
  sub_1DACB7CB4();
  sub_1DAC05ACC(&qword_1EE123A48, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v8 = sub_1DACB9224();
  v9 = *(v2 + 8);
  v9(v7, v1);
  if (v8)
  {
    sub_1DACB7B84();
    sub_1DACB7BF4();
    sub_1DACB7CB4();
    v10 = sub_1DACB7C24();
    v9(v5, v1);
    v9(v7, v1);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_1DAC05780(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1DACB8704();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6830], v3);
  a2(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAC058DC()
{
  sub_1DAC051C4(0);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC05984()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(v2, sub_1DAC055C0, 0, v3, v4);
}

void sub_1DAC05A04(uint64_t a1)
{
  if (!qword_1EE124010)
  {
    sub_1DACB7AB4();
    type metadata accessor for SDSAuthToken(255);
    sub_1DAC05ACC(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE124010);
    }
  }
}

uint64_t sub_1DAC05ACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAC05B18()
{
  type metadata accessor for NoFavoritesPersonalizer();

  return swift_allocObject();
}

id sub_1DAC05B80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (!result)
  {
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE121F40[0] != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (result)
  {
    v5 = result;
    sub_1DAA4E470(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DACCB1F0;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v7 = sub_1DACB9634();

    v8 = [v3 recordTreeSourceWithRecordSources_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v8;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1DAC05D9C()
{
  if (qword_1EE121F40[0] != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E348;
  v0 = unk_1EE13E350;
  v3 = qword_1EE13E358;
  v2 = unk_1EE13E360;
  v4 = qword_1EE13E368;
  v5 = unk_1EE13E370;
  v6 = qword_1EE13E378;
  v7 = unk_1EE13E380;
  sub_1DAA4E470(0, &qword_1EE123B50, MEMORY[0x1E69E6158]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D30;
  *(v8 + 32) = v1;
  *(v8 + 40) = v0;
  *(v8 + 48) = v3;
  *(v8 + 56) = v2;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E69B5378]);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v10 = sub_1DACB92F4();
  v11 = sub_1DACB92F4();
  v12 = sub_1DACB9634();

  v13 = sub_1DACB9634();
  v14 = [v9 initWithRecordType:v10 recordIDPrefix:v11 keys:v12 localizableKeys:v13];

  return v14;
}

uint64_t sub_1DAC05F38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = sub_1DAC06054(*(a1 + 32), *(a1 + 40));
  v9 = v8;
  v10 = sub_1DAC06054(v5, v6);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    if (a4)
    {
      if (v10 != v7 || v11 != v9)
      {
LABEL_16:
        a4 = sub_1DACBA174();

LABEL_17:

        return a4 & 1;
      }
    }

    else if (v7 != v10 || v9 != v11)
    {
      goto LABEL_16;
    }

LABEL_19:
    a4 = 0;
    return a4 & 1;
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  a4 = (a4 & 1) == 0;
  return a4 & 1;
}

uint64_t sub_1DAC06054(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DACB7664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  v11 = (*(v10 + 8))(a1, a2, 0, v9, v10);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    a1 = v13;
    a2 = v14;
  }

  else
  {

    sub_1DACB71E4();
  }

  v22 = a1;
  v23 = a2;
  sub_1DACB7614();
  sub_1DAA642D8();
  v16 = sub_1DACB9B34();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v8, v5);

  v22 = v16;
  v23 = v18;
  sub_1DACB7644();
  sub_1DACB9B34();
  v19(v8, v5);

  v20 = sub_1DACB93B4();

  return v20;
}

uint64_t sub_1DAC06250(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, int a6)
{
  v7 = v6;
  v114 = a6;
  v8 = __dst;
  v9 = a3;
  v10 = a2;
  v11 = __src;
  v12 = a2 - __src;
  v13 = (a2 - __src) / 136;
  v14 = a3 - a2;
  v15 = (a3 - a2) / 136;
  if (v13 < v15)
  {
    if (__dst != __src || &__src[136 * v13] <= __dst)
    {
      memmove(__dst, __src, 136 * v13);
    }

    v16 = (v8 + 136 * v13);
    if (v12 < 136)
    {
LABEL_6:
      v10 = v11;
      goto LABEL_48;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v96 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v99 = *(v10 + 3);
      v100 = v21;
      v97 = v19;
      v98 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v104 = *(v10 + 16);
      v102 = v23;
      v103 = v24;
      v101 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v105 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v108 = *(v8 + 48);
      v109 = v27;
      v106 = v25;
      v107 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v113 = *(v8 + 128);
      v111 = v29;
      v112 = v30;
      v110 = v28;
      memmove(&v78, v8, 0x88uLL);
      sub_1DAA806E4(&v96, &v69);
      sub_1DAA806E4(&v105, &v69);
      v31 = sub_1DAC0BBFC(&__dsta, &v78, v114 & 1);
      if (v6)
      {
        v66 = v84;
        v67 = v85;
        v68 = v86;
        v62 = v80;
        v63 = v81;
        v64 = v82;
        v65 = v83;
        v60 = v78;
        v61 = v79;
        sub_1DAA9B1C8(&v60);
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v71 = v89;
        v72 = v90;
        v73 = v91;
        v74 = v92;
        v69 = __dsta;
        v70 = v88;
        sub_1DAA9B1C8(&v69);
        v55 = &v16[-v8] / 136;
        if (v11 < v8 || v11 >= v8 + 136 * v55 || v11 != v8)
        {
          v56 = 136 * v55;
          v57 = v11;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v32 = v31;
      v66 = v84;
      v67 = v85;
      v68 = v86;
      v62 = v80;
      v63 = v81;
      v64 = v82;
      v65 = v83;
      v60 = v78;
      v61 = v79;
      sub_1DAA9B1C8(&v60);
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      v74 = v92;
      v69 = __dsta;
      v70 = v88;
      sub_1DAA9B1C8(&v69);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v11 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v11 += 136;
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v11 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v11, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (__dst != a2 || &a2[136 * v15] <= __dst)
  {
    memmove(__dst, a2, 136 * v15);
  }

  v16 = (v8 + 136 * v15);
  if (v14 < 136 || v10 <= v11)
  {
LABEL_48:
    v54 = &v16[-v8] / 136;
    if (v10 < v8 || v10 >= v8 + 136 * v54 || v10 != v8)
    {
LABEL_51:
      v56 = 136 * v54;
      v57 = v10;
LABEL_52:
      memmove(v57, v8, v56);
    }

    goto LABEL_53;
  }

  v33 = -v8;
LABEL_22:
  v59 = v7;
  v34 = v10 - 136;
  v35 = &v16[v33];
  v9 -= 136;
  v36 = v16;
  while (1)
  {
    v16 = v36;
    v36 -= 136;
    v96 = *(v16 - 136);
    v37 = *(v16 - 120);
    v38 = *(v16 - 104);
    v39 = *(v16 - 72);
    v99 = *(v16 - 88);
    v100 = v39;
    v97 = v37;
    v98 = v38;
    v40 = *(v16 - 56);
    v41 = *(v16 - 40);
    v42 = *(v16 - 24);
    v104 = *(v16 - 1);
    v102 = v41;
    v103 = v42;
    v101 = v40;
    memmove(&__dsta, v36, 0x88uLL);
    v43 = *(v10 - 56);
    v44 = *(v10 - 24);
    v111 = *(v10 - 40);
    v112 = v44;
    v45 = *(v10 - 120);
    v46 = *(v10 - 88);
    v107 = *(v10 - 104);
    v108 = v46;
    v47 = *(v10 - 88);
    v48 = *(v10 - 56);
    v109 = *(v10 - 72);
    v110 = v48;
    v49 = *(v10 - 120);
    v105 = *v34;
    v106 = v49;
    v50 = *(v10 - 24);
    v84 = v111;
    v85 = v50;
    v80 = v107;
    v81 = v47;
    v82 = v109;
    v83 = v43;
    v113 = *(v10 - 1);
    v86 = *(v10 - 1);
    v78 = v105;
    v79 = v45;
    sub_1DAA806E4(&v96, &v69);
    sub_1DAA806E4(&v105, &v69);
    v51 = sub_1DAC0BBFC(&__dsta, &v78, v114 & 1);
    if (v59)
    {
      break;
    }

    v52 = v51;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v62 = v80;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v60 = v78;
    v61 = v79;
    sub_1DAA9B1C8(&v60);
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v71 = v89;
    v72 = v90;
    v73 = v91;
    v74 = v92;
    v69 = __dsta;
    v70 = v88;
    sub_1DAA9B1C8(&v69);
    v53 = v9 + 136;
    if (v52)
    {
      if (v53 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v7 = 0;
        v33 = -v8;
      }

      else
      {
        v7 = 0;
        v33 = -v8;
        if (v53 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }
      }

      if (v16 <= v8 || (v10 -= 136, v34 <= v11))
      {
        v10 = v34;
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    if (v53 < v16 || v9 >= v16 || v53 != v16)
    {
      memmove(v9, v36, 0x88uLL);
    }

    v35 -= 136;
    v9 -= 136;
    if (v36 <= v8)
    {
      v16 = v36;
      goto LABEL_48;
    }
  }

  v66 = v84;
  v67 = v85;
  v68 = v86;
  v62 = v80;
  v63 = v81;
  v64 = v82;
  v65 = v83;
  v60 = v78;
  v61 = v79;
  sub_1DAA9B1C8(&v60);
  v75 = v93;
  v76 = v94;
  v77 = v95;
  v71 = v89;
  v72 = v90;
  v73 = v91;
  v74 = v92;
  v69 = __dsta;
  v70 = v88;
  sub_1DAA9B1C8(&v69);
  v54 = v35 / 136;
  if (v10 < v8 || v10 >= v8 + 136 * v54)
  {
    memmove(v10, v8, 136 * v54);

    return 1;
  }

  if (v10 != v8)
  {
    goto LABEL_51;
  }

LABEL_53:

  return 1;
}

uint64_t sub_1DAC068C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DAC0694C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

BOOL sub_1DAC069B0(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v8 = type metadata accessor for Quote(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v27 - v13);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = sub_1DAA4BF3C(*(a1 + 16), *(a1 + 24));
  if (v18)
  {
    sub_1DAC0F278(*(a3 + 56) + *(v9 + 72) * v17, v14);
    v19 = v14[2];
    v20 = *(v14 + 24);
    sub_1DAC0F2DC(v14);
    if (!*(a3 + 16))
    {
LABEL_10:
      if (v20)
      {
        return 0;
      }

      return a4;
    }
  }

  else
  {
    v20 = 1;
    v19 = 0.0;
    if (!*(a3 + 16))
    {
      goto LABEL_10;
    }
  }

  v21 = sub_1DAA4BF3C(v15, v16);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1DAC0F278(*(a3 + 56) + *(v9 + 72) * v21, v12);
  v23 = v12[2];
  v24 = *(v12 + 24);
  sub_1DAC0F2DC(v12);
  if (v20)
  {
    if (v24)
    {
      return 0;
    }

    return !a4;
  }

  else if ((v24 & 1) == 0)
  {
    if (a4)
    {
      return v23 < v19;
    }

    else
    {
      return v19 < v23;
    }
  }

  return a4;
}

uint64_t sub_1DAC06B68(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, int a6)
{
  v90 = a6;
  v89 = *(type metadata accessor for Quote(0) - 8);
  v11 = MEMORY[0x1EEE9AC00](a3);
  v88 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v87 = &v84 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v86 = &v84 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v85 = &v84 - v19;
  v20 = &a2[-a1];
  v21 = v20 / 136;
  v22 = a3 - a2;
  v23 = (a3 - a2) / 136;
  if (v20 / 136 < v23)
  {
    if (a4 != v18 || &v18[136 * v21] <= a4)
    {
      v24 = v17;
      v25 = v18;
      memmove(a4, v18, 136 * v21);
      v18 = v25;
      v17 = v24;
    }

    v26 = &a4[136 * v21];
    if (v20 < 136)
    {
      a2 = v18;
      goto LABEL_74;
    }

    v27 = v18;
    if (a2 >= v17)
    {
      goto LABEL_72;
    }

    v111 = v17;
    while (1)
    {
      v91 = v27;
      v93 = *a2;
      v28 = *(a2 + 1);
      v29 = *(a2 + 2);
      v30 = *(a2 + 4);
      v96 = *(a2 + 3);
      v97 = v30;
      v94 = v28;
      v95 = v29;
      v31 = *(a2 + 5);
      v32 = *(a2 + 6);
      v33 = *(a2 + 7);
      v101 = *(a2 + 16);
      v99 = v32;
      v100 = v33;
      v98 = v31;
      v102 = *a4;
      v34 = *(a4 + 1);
      v35 = *(a4 + 2);
      v36 = *(a4 + 4);
      v105 = *(a4 + 3);
      v106 = v36;
      v103 = v34;
      v104 = v35;
      v37 = *(a4 + 5);
      v38 = *(a4 + 6);
      v39 = *(a4 + 7);
      v110 = *(a4 + 16);
      v108 = v38;
      v109 = v39;
      v107 = v37;
      if (!*(a5 + 16))
      {
        break;
      }

      v40 = v94;
      sub_1DAA806E4(&v93, v92);
      sub_1DAA806E4(&v102, v92);
      v41 = sub_1DAA4BF3C(v40, *(&v40 + 1));
      if ((v42 & 1) == 0)
      {
        goto LABEL_12;
      }

      v43 = v85;
      sub_1DAC0F278(*(a5 + 56) + *(v89 + 72) * v41, v85);
      v44 = *(v43 + 16);
      v45 = *(v43 + 24);
      sub_1DAC0F2DC(v43);
LABEL_13:
      v46 = 0.0;
      if (*(a5 + 16) && (v47 = sub_1DAA4BF3C(v103, *(&v103 + 1)), (v48 & 1) != 0))
      {
        v49 = v86;
        sub_1DAC0F278(*(a5 + 56) + *(v89 + 72) * v47, v86);
        v46 = *(v49 + 2);
        v50 = v49[24];
        sub_1DAC0F2DC(v49);
      }

      else
      {
        v50 = 1;
      }

      sub_1DAA9B1C8(&v102);
      sub_1DAA9B1C8(&v93);
      if (v45)
      {
        v51 = v91;
        if (((v50 | v90) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (v50)
      {
        v51 = v91;
        if (v90)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v51 = v91;
        if (v90)
        {
          if (v46 < v44)
          {
            goto LABEL_24;
          }
        }

        else if (v44 < v46)
        {
LABEL_24:
          v52 = a2;
          v53 = v51 == a2;
          a2 += 136;
          if (v53)
          {
            goto LABEL_26;
          }

LABEL_25:
          memmove(v51, v52, 0x88uLL);
          goto LABEL_26;
        }
      }

      v52 = a4;
      v53 = v51 == a4;
      a4 += 136;
      if (!v53)
      {
        goto LABEL_25;
      }

LABEL_26:
      v27 = v51 + 136;
      if (a4 >= v26 || a2 >= v111)
      {
        goto LABEL_72;
      }
    }

    sub_1DAA806E4(&v93, v92);
    sub_1DAA806E4(&v102, v92);
LABEL_12:
    v45 = 1;
    v44 = 0.0;
    goto LABEL_13;
  }

  v91 = v18;
  if (a4 != a2 || &a2[136 * v23] <= a4)
  {
    v54 = v17;
    memmove(a4, a2, 136 * v23);
    v17 = v54;
  }

  v26 = &a4[136 * v23];
  if (v22 >= 136 && a2 > v91)
  {
LABEL_39:
    v27 = a2 - 136;
    v55 = v17 - 136;
    v56 = v26;
    v86 = a2;
    while (1)
    {
      v111 = v55;
      v26 = v56;
      v93 = *(v56 - 136);
      v58 = *(v56 - 120);
      v59 = *(v56 - 104);
      v60 = *(v56 - 72);
      v96 = *(v56 - 88);
      v97 = v60;
      v94 = v58;
      v95 = v59;
      v61 = *(v56 - 56);
      v62 = *(v56 - 40);
      v63 = *(v56 - 24);
      v101 = *(v56 - 8);
      v99 = v62;
      v100 = v63;
      v98 = v61;
      v64 = *(v27 + 3);
      v104 = *(v27 + 2);
      v105 = v64;
      v65 = *(v27 + 1);
      v102 = *v27;
      v103 = v65;
      v110 = *(v27 + 16);
      v66 = *(v27 + 7);
      v108 = *(v27 + 6);
      v109 = v66;
      v67 = *(v27 + 5);
      v106 = *(v27 + 4);
      v107 = v67;
      if (!*(a5 + 16))
      {
        break;
      }

      v68 = v94;
      sub_1DAA806E4(&v93, v92);
      sub_1DAA806E4(&v102, v92);
      v69 = sub_1DAA4BF3C(v68, *(&v68 + 1));
      if ((v70 & 1) == 0)
      {
        goto LABEL_46;
      }

      v71 = v87;
      sub_1DAC0F278(*(a5 + 56) + *(v89 + 72) * v69, v87);
      v72 = *(v71 + 16);
      v73 = *(v71 + 24);
      sub_1DAC0F2DC(v71);
LABEL_47:
      v74 = 0.0;
      if (*(a5 + 16) && (v75 = sub_1DAA4BF3C(v103, *(&v103 + 1)), (v76 & 1) != 0))
      {
        v77 = a4;
        v78 = v88;
        sub_1DAC0F278(*(a5 + 56) + *(v89 + 72) * v75, v88);
        v74 = *(v78 + 16);
        v79 = *(v78 + 24);
        v80 = v78;
        a4 = v77;
        a2 = v86;
        sub_1DAC0F2DC(v80);
      }

      else
      {
        v79 = 1;
      }

      sub_1DAA9B1C8(&v102);
      sub_1DAA9B1C8(&v93);
      if (v73)
      {
        v57 = v111;
        if (((v79 | v90) & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v57 = v111;
        if (v79)
        {
          if (v90)
          {
            goto LABEL_65;
          }
        }

        else if (v90)
        {
          if (v74 < v72)
          {
            goto LABEL_65;
          }
        }

        else if (v72 < v74)
        {
LABEL_65:
          if (v57 + 136 < a2 || v57 >= a2)
          {
            memmove(v57, v27, 0x88uLL);
            v81 = v91;
          }

          else
          {
            v81 = v91;
            if (v57 + 136 != a2)
            {
              memmove(v57, v27, 0x88uLL);
            }
          }

          if (v26 <= a4 || (a2 = v27, v17 = v111, v27 <= v81))
          {
LABEL_72:
            a2 = v27;
            goto LABEL_74;
          }

          goto LABEL_39;
        }
      }

      v56 = (v26 - 136);
      if (v57 + 136 < v26 || v57 >= v26 || v57 + 136 != v26)
      {
        memmove(v111, v26 - 136, 0x88uLL);
        v57 = v111;
      }

      v55 = v57 - 136;
      if (v56 <= a4)
      {
        v26 -= 136;
        goto LABEL_74;
      }
    }

    sub_1DAA806E4(&v93, v92);
    sub_1DAA806E4(&v102, v92);
LABEL_46:
    v73 = 1;
    v72 = 0.0;
    goto LABEL_47;
  }

LABEL_74:
  v82 = (v26 - a4) / 136;
  if (a2 != a4 || a2 >= &a4[136 * v82])
  {
    memmove(a2, a4, 136 * v82);
  }

  return 1;
}

uint64_t sub_1DAC0723C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, int a7)
{
  v190 = a1;
  v12 = type metadata accessor for Quote(0);
  v207 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v204 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v203 = &v189 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v192 = &v189 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v191 = &v189 - v19;
  v198 = a3;
  v20 = a3[1];
  v281 = a5;
  v196 = a6;
  v205 = a7;
  if (v20 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v22 = MEMORY[0x1E69E7CC0];
LABEL_136:
    v204 = *v190;
    if (!v204)
    {
      goto LABEL_179;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v176 = (v22 + 16);
      v177 = *(v22 + 2);
      if (v177 >= 2)
      {
        v199 = v22;
        do
        {
          v178 = *v198;
          if (!*v198)
          {
            goto LABEL_177;
          }

          v179 = &v22[16 * v177];
          v180 = *v179;
          v181 = &v176[2 * v177];
          v182 = v181[1];
          v183 = v178 + 136 * *v179;
          v184 = (v178 + 136 * *v181);
          v206 = v178 + 136 * v182;
          v207 = v184;
          v22 = v281;
          sub_1DACB71E4();
          sub_1DACB71F4();
          v185 = v183;
          v186 = v202;
          sub_1DAC06B68(v185, v207, v206, v204, v22, v205 & 1);
          v202 = v186;
          if (v186)
          {
            goto LABEL_134;
          }

          if (v182 < v180)
          {
            goto LABEL_165;
          }

          v187 = *v176;
          if (v177 - 2 >= *v176)
          {
            goto LABEL_166;
          }

          *v179 = v180;
          *(v179 + 1) = v182;
          v188 = v187 - v177;
          if (v187 < v177)
          {
            goto LABEL_167;
          }

          v177 = v187 - 1;
          memmove(v181, v181 + 2, 16 * v188);
          *v176 = v177;
          v22 = v199;
        }

        while (v177 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_173:
    v22 = sub_1DAC0694C(v22);
    goto LABEL_138;
  }

  v189 = a4;
  LODWORD(v206) = a7 & 1;
  v193 = v206 == 0;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = v21 + 1;
    v199 = v22;
    if (v21 + 1 >= v20)
    {
      v45 = v21 + 1;
      v22 = v281;
    }

    else
    {
      v24 = *v198;
      v25 = *v198 + 136 * v23;
      v263 = *v25;
      v26 = *(v25 + 16);
      v27 = *(v25 + 32);
      v28 = *(v25 + 64);
      v266 = *(v25 + 48);
      v267 = v28;
      v264 = v26;
      v265 = v27;
      v29 = *(v25 + 80);
      v30 = *(v25 + 96);
      v31 = *(v25 + 112);
      v271 = *(v25 + 128);
      v269 = v30;
      v270 = v31;
      v268 = v29;
      v259 = *(v25 + 80);
      v260 = *(v25 + 96);
      v261 = *(v25 + 112);
      v262 = *(v25 + 128);
      v255 = *(v25 + 16);
      v256 = *(v25 + 32);
      v257 = *(v25 + 48);
      v258 = *(v25 + 64);
      v254 = *v25;
      v32 = v24 + 136 * v21;
      v272 = *v32;
      v33 = *(v32 + 16);
      v34 = *(v32 + 32);
      v35 = *(v32 + 48);
      v276 = *(v32 + 64);
      v275 = v35;
      v274 = v34;
      v273 = v33;
      v36 = *(v32 + 80);
      v37 = *(v32 + 96);
      v38 = *(v32 + 112);
      v280 = *(v32 + 128);
      v279 = v38;
      v278 = v37;
      v277 = v36;
      v39 = *(v32 + 112);
      v251 = *(v32 + 96);
      v252 = v39;
      v253 = *(v32 + 128);
      v40 = *(v32 + 48);
      v247 = *(v32 + 32);
      v248 = v40;
      v41 = *(v32 + 80);
      v249 = *(v32 + 64);
      v250 = v41;
      v42 = *(v32 + 16);
      v245 = *v32;
      v246 = v42;
      sub_1DAA806E4(&v263, &v236);
      sub_1DAA806E4(&v272, &v236);
      v43 = v202;
      LODWORD(v201) = sub_1DAC069B0(&v254, &v245, v281, v206);
      v202 = v43;
      if (v43)
      {
        v233 = v251;
        v234 = v252;
        v235 = v253;
        v229 = v247;
        v230 = v248;
        v231 = v249;
        v232 = v250;
        v227 = v245;
        v228 = v246;
        sub_1DAA9B1C8(&v227);
        v242 = v260;
        v243 = v261;
        v244 = v262;
        v238 = v256;
        v239 = v257;
        v240 = v258;
        v241 = v259;
        v236 = v254;
        v237 = v255;
        sub_1DAA9B1C8(&v236);

        swift_bridgeObjectRelease_n();
      }

      v233 = v251;
      v234 = v252;
      v235 = v253;
      v229 = v247;
      v230 = v248;
      v231 = v249;
      v232 = v250;
      v227 = v245;
      v228 = v246;
      sub_1DAA9B1C8(&v227);
      v242 = v260;
      v243 = v261;
      v244 = v262;
      v238 = v256;
      v239 = v257;
      v240 = v258;
      v241 = v259;
      v236 = v254;
      v237 = v255;
      sub_1DAA9B1C8(&v236);
      if (v21 + 2 < v20)
      {
        v44 = v24 + 136 * v21 + 272;
        v45 = v21 + 2;
        while (1)
        {
          v209 = *v44;
          v48 = *(v44 + 16);
          v49 = *(v44 + 32);
          v50 = *(v44 + 64);
          v212 = *(v44 + 48);
          v213 = v50;
          v210 = v48;
          v211 = v49;
          v51 = *(v44 + 80);
          v52 = *(v44 + 96);
          v53 = *(v44 + 112);
          v217 = *(v44 + 128);
          v215 = v52;
          v216 = v53;
          v214 = v51;
          v218 = *(v44 - 136);
          v54 = *(v44 - 120);
          v55 = *(v44 - 104);
          v56 = *(v44 - 72);
          v221 = *(v44 - 88);
          v222 = v56;
          v219 = v54;
          v220 = v55;
          v57 = *(v44 - 56);
          v58 = *(v44 - 40);
          v59 = *(v44 - 24);
          v226 = *(v44 - 8);
          v224 = v58;
          v225 = v59;
          v223 = v57;
          v60 = v281;
          if (*(v281 + 16))
          {
            v61 = v210;
            sub_1DAA806E4(&v209, v208);
            sub_1DAA806E4(&v218, v208);
            v62 = sub_1DAA4BF3C(v61, *(&v61 + 1));
            if (v63)
            {
              v64 = *(v60 + 56) + *(v207 + 9) * v62;
              v65 = v191;
              sub_1DAC0F278(v64, v191);
              v66 = *(v65 + 16);
              v67 = *(v65 + 24);
              sub_1DAC0F2DC(v65);
            }

            else
            {
              v67 = 1;
              v66 = 0.0;
            }
          }

          else
          {
            sub_1DAA806E4(&v209, v208);
            sub_1DAA806E4(&v218, v208);
            v67 = 1;
            v66 = 0.0;
          }

          v68 = v281;
          v69 = 0.0;
          if (*(v281 + 16) && (v70 = sub_1DAA4BF3C(v219, *(&v219 + 1)), (v71 & 1) != 0))
          {
            v72 = v45;
            v73 = v192;
            sub_1DAC0F278(*(v68 + 56) + *(v207 + 9) * v70, v192);
            v69 = *(v73 + 16);
            v74 = *(v73 + 24);
            v75 = v73;
            v45 = v72;
            sub_1DAC0F2DC(v75);
          }

          else
          {
            v74 = 1;
          }

          sub_1DAA9B1C8(&v218);
          sub_1DAA9B1C8(&v209);
          if ((v67 & 1) == 0)
          {
            break;
          }

          v47 = v193;
          if ((v74 & 1) == 0)
          {
            goto LABEL_12;
          }

          if (v201)
          {
            v23 = v45 - 1;
            v22 = v281;
            if (v45 < v21)
            {
              goto LABEL_170;
            }

            goto LABEL_35;
          }

LABEL_13:
          ++v45;
          v44 += 136;
          if (v20 == v45)
          {
            v23 = v45 - 1;
            v45 = v20;
            goto LABEL_33;
          }
        }

        v47 = v205;
        if ((v74 & 1) == 0)
        {
          if (v205)
          {
            v46 = v69 < v66;
          }

          else
          {
            v46 = v66 < v69;
          }

          v47 = v46;
        }

LABEL_12:
        if ((v201 ^ v47))
        {
          v23 = v45 - 1;
          goto LABEL_33;
        }

        goto LABEL_13;
      }

      v45 = v21 + 2;
LABEL_33:
      v22 = v281;
      if (v201)
      {
        if (v45 < v21)
        {
          goto LABEL_170;
        }

LABEL_35:
        if (v21 <= v23)
        {
          v76 = 136 * v45 - 136;
          v77 = v45;
          v78 = 136 * v21;
          v79 = v21;
          v197 = v77;
          do
          {
            if (v79 != --v77)
            {
              v81 = *v198;
              if (!*v198)
              {
                goto LABEL_176;
              }

              v80 = v81 + v76;
              v223 = *(v81 + v78 + 80);
              v224 = *(v81 + v78 + 96);
              v225 = *(v81 + v78 + 112);
              v226 = *(v81 + v78 + 128);
              v219 = *(v81 + v78 + 16);
              v220 = *(v81 + v78 + 32);
              v221 = *(v81 + v78 + 48);
              v222 = *(v81 + v78 + 64);
              v218 = *(v81 + v78);
              memmove((v81 + v78), (v81 + v76), 0x88uLL);
              *(v80 + 80) = v223;
              *(v80 + 96) = v224;
              *(v80 + 112) = v225;
              *(v80 + 128) = v226;
              *(v80 + 16) = v219;
              *(v80 + 32) = v220;
              *(v80 + 48) = v221;
              *(v80 + 64) = v222;
              *v80 = v218;
            }

            ++v79;
            v76 -= 136;
            v78 += 136;
          }

          while (v79 < v77);
          v22 = v281;
          v45 = v197;
        }
      }
    }

    v82 = v198[1];
    if (v45 < v82)
    {
      if (__OFSUB__(v45, v21))
      {
        goto LABEL_169;
      }

      if (v45 - v21 < v189)
      {
        break;
      }
    }

LABEL_78:
    if (v45 < v21)
    {
      goto LABEL_168;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v197 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v199 = sub_1DAADB818(0, *(v199 + 2) + 1, 1, v199);
    }

    v118 = *(v199 + 2);
    v117 = *(v199 + 3);
    v119 = v118 + 1;
    if (v118 >= v117 >> 1)
    {
      v199 = sub_1DAADB818((v117 > 1), v118 + 1, 1, v199);
    }

    v120 = v199;
    *(v199 + 2) = v119;
    v121 = v120 + 32;
    v122 = &v120[16 * v118 + 32];
    v123 = v197;
    *v122 = v21;
    *(v122 + 1) = v123;
    v195 = *v190;
    if (!v195)
    {
      goto LABEL_178;
    }

    if (v118)
    {
      v22 = v199;
      v194 = v121;
      while (1)
      {
        v124 = v119 - 1;
        if (v119 >= 4)
        {
          break;
        }

        if (v119 == 3)
        {
          v125 = *(v22 + 4);
          v126 = *(v22 + 5);
          v135 = __OFSUB__(v126, v125);
          v127 = v126 - v125;
          v128 = v135;
LABEL_99:
          if (v128)
          {
            goto LABEL_155;
          }

          v141 = &v22[16 * v119];
          v143 = *v141;
          v142 = *(v141 + 1);
          v144 = __OFSUB__(v142, v143);
          v145 = v142 - v143;
          v146 = v144;
          if (v144)
          {
            goto LABEL_157;
          }

          v147 = &v121[16 * v124];
          v149 = *v147;
          v148 = *(v147 + 1);
          v135 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v135)
          {
            goto LABEL_160;
          }

          if (__OFADD__(v145, v150))
          {
            goto LABEL_162;
          }

          if (v145 + v150 >= v127)
          {
            if (v127 < v150)
            {
              v124 = v119 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        if (v119 < 2)
        {
          goto LABEL_163;
        }

        v151 = &v22[16 * v119];
        v153 = *v151;
        v152 = *(v151 + 1);
        v135 = __OFSUB__(v152, v153);
        v145 = v152 - v153;
        v146 = v135;
LABEL_114:
        if (v146)
        {
          goto LABEL_159;
        }

        v154 = &v121[16 * v124];
        v156 = *v154;
        v155 = *(v154 + 1);
        v135 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v135)
        {
          goto LABEL_161;
        }

        if (v157 < v145)
        {
          goto LABEL_130;
        }

LABEL_121:
        if (v124 - 1 >= v119)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        v162 = *v198;
        if (!*v198)
        {
          goto LABEL_175;
        }

        v163 = &v121[16 * v124 - 16];
        v164 = *v163;
        v165 = v124;
        v166 = &v121[16 * v124];
        v167 = *(v166 + 1);
        v168 = v162 + 136 * *v163;
        v169 = (v162 + 136 * *v166);
        v200 = v162 + 136 * v167;
        v201 = v169;
        v170 = v281;
        sub_1DACB71E4();
        v22 = v196;
        sub_1DACB71F4();
        v171 = v168;
        v172 = v202;
        sub_1DAC06B68(v171, v201, v200, v195, v170, v206);
        v202 = v172;
        if (v172)
        {
LABEL_134:

          swift_bridgeObjectRelease_n();
        }

        if (v167 < v164)
        {
          goto LABEL_150;
        }

        v22 = v199;
        v173 = *(v199 + 2);
        if (v165 > v173)
        {
          goto LABEL_151;
        }

        *v163 = v164;
        *(v163 + 1) = v167;
        if (v165 >= v173)
        {
          goto LABEL_152;
        }

        v174 = v165;
        v119 = v173 - 1;
        memmove(v166, v166 + 16, 16 * (v173 - 1 - v174));
        *(v22 + 2) = v173 - 1;
        v121 = v194;
        if (v173 <= 2)
        {
          goto LABEL_130;
        }
      }

      v129 = &v121[16 * v119];
      v130 = *(v129 - 8);
      v131 = *(v129 - 7);
      v135 = __OFSUB__(v131, v130);
      v132 = v131 - v130;
      if (v135)
      {
        goto LABEL_153;
      }

      v134 = *(v129 - 6);
      v133 = *(v129 - 5);
      v135 = __OFSUB__(v133, v134);
      v127 = v133 - v134;
      v128 = v135;
      if (v135)
      {
        goto LABEL_154;
      }

      v136 = &v22[16 * v119];
      v138 = *v136;
      v137 = *(v136 + 1);
      v135 = __OFSUB__(v137, v138);
      v139 = v137 - v138;
      if (v135)
      {
        goto LABEL_156;
      }

      v135 = __OFADD__(v127, v139);
      v140 = v127 + v139;
      if (v135)
      {
        goto LABEL_158;
      }

      if (v140 >= v132)
      {
        v158 = &v121[16 * v124];
        v160 = *v158;
        v159 = *(v158 + 1);
        v135 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v135)
        {
          goto LABEL_164;
        }

        if (v127 < v161)
        {
          v124 = v119 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_99;
    }

    v22 = v199;
LABEL_130:
    v21 = v197;
    v20 = v198[1];
    if (v197 >= v20)
    {
      goto LABEL_136;
    }
  }

  if (__OFADD__(v21, v189))
  {
    goto LABEL_171;
  }

  if (v21 + v189 >= v82)
  {
    v83 = v198[1];
  }

  else
  {
    v83 = (v21 + v189);
  }

  if (v83 < v21)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v45 == v83)
  {
    goto LABEL_78;
  }

  v84 = v45;
  v85 = *v198;
  v86 = (*v198 + 136 * v84);
  v197 = v84;
  v194 = v21;
  v195 = v83;
  v87 = v21 - v84 + 1;
LABEL_54:
  v200 = v87;
  v201 = v86;
  while (1)
  {
    v263 = *v86;
    v88 = *(v86 + 1);
    v89 = *(v86 + 2);
    v90 = *(v86 + 4);
    v266 = *(v86 + 3);
    v267 = v90;
    v264 = v88;
    v265 = v89;
    v91 = *(v86 + 5);
    v92 = *(v86 + 6);
    v93 = *(v86 + 7);
    v271 = *(v86 + 16);
    v269 = v92;
    v270 = v93;
    v268 = v91;
    v272 = *(v86 - 136);
    v94 = *(v86 - 120);
    v95 = *(v86 - 104);
    v96 = *(v86 - 88);
    v276 = *(v86 - 72);
    v275 = v96;
    v274 = v95;
    v273 = v94;
    v97 = *(v86 - 56);
    v98 = *(v86 - 40);
    v99 = *(v86 - 24);
    v280 = *(v86 - 1);
    v279 = v99;
    v278 = v98;
    v277 = v97;
    if (!*(v22 + 2))
    {
      sub_1DAA806E4(&v263, &v254);
      sub_1DAA806E4(&v272, &v254);
LABEL_59:
      v105 = 1;
      v104 = 0.0;
      goto LABEL_60;
    }

    v100 = v264;
    sub_1DAA806E4(&v263, &v254);
    sub_1DAA806E4(&v272, &v254);
    v22 = v281;
    v101 = sub_1DAA4BF3C(v100, *(&v100 + 1));
    if ((v102 & 1) == 0)
    {
      goto LABEL_59;
    }

    v103 = v203;
    sub_1DAC0F278(*(v22 + 7) + *(v207 + 9) * v101, v203);
    v104 = *(v103 + 16);
    v105 = *(v103 + 24);
    sub_1DAC0F2DC(v103);
LABEL_60:
    v106 = 0.0;
    if (*(v22 + 2) && (v107 = sub_1DAA4BF3C(v273, *(&v273 + 1)), (v108 & 1) != 0))
    {
      v109 = v204;
      sub_1DAC0F278(*(v22 + 7) + *(v207 + 9) * v107, v204);
      v106 = *(v109 + 2);
      v110 = v109[24];
      sub_1DAC0F2DC(v109);
    }

    else
    {
      v110 = 1;
    }

    sub_1DAA9B1C8(&v272);
    sub_1DAA9B1C8(&v263);
    if (v105)
    {
      if ((v110 | v206))
      {
        goto LABEL_53;
      }
    }

    else if (v110)
    {
      if ((v205 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v205)
    {
      if (v106 >= v104)
      {
        goto LABEL_53;
      }
    }

    else if (v104 >= v106)
    {
      goto LABEL_53;
    }

    if (!v85)
    {
      break;
    }

    v111 = v86 - 136;
    v259 = *(v86 + 5);
    v260 = *(v86 + 6);
    v261 = *(v86 + 7);
    v262 = *(v86 + 16);
    v255 = *(v86 + 1);
    v256 = *(v86 + 2);
    v257 = *(v86 + 3);
    v258 = *(v86 + 4);
    v254 = *v86;
    v112 = *(v86 - 56);
    *(v86 + 4) = *(v86 - 72);
    *(v86 + 5) = v112;
    v113 = *(v86 - 24);
    *(v86 + 6) = *(v86 - 40);
    *(v86 + 7) = v113;
    *(v86 + 16) = *(v86 - 1);
    v114 = *(v86 - 88);
    *(v86 + 2) = *(v86 - 104);
    *(v86 + 3) = v114;
    v115 = *(v86 - 120);
    *v86 = *(v86 - 136);
    *(v86 + 1) = v115;
    *(v111 + 4) = v258;
    *(v111 + 5) = v259;
    *(v111 + 6) = v260;
    *(v111 + 7) = v261;
    *(v111 + 16) = v262;
    *(v111 + 1) = v255;
    *(v111 + 2) = v256;
    *(v111 + 3) = v257;
    *v111 = v254;
    if (!v87)
    {
LABEL_53:
      v86 = v201 + 136;
      v87 = v200 - 1;
      if (++v197 == v195)
      {
        v45 = v195;
        v21 = v194;
        goto LABEL_78;
      }

      goto LABEL_54;
    }

    ++v87;
    v86 -= 136;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_175:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_176:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_177:

  __break(1u);
LABEL_178:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:

  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1DAC08190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  v81 = a6;
  v11 = type metadata accessor for Quote(0);
  v53 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v48 - v16);
  v49 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *a4 + 136 * a3;
    v20 = a1 - a3 + 1;
LABEL_5:
    v51 = v19;
    v52 = a3;
    v21 = v19;
    v50 = v20;
    while (1)
    {
      v63 = *v21;
      v22 = *(v21 + 16);
      v23 = *(v21 + 32);
      v24 = *(v21 + 64);
      v66 = *(v21 + 48);
      v67 = v24;
      v64 = v22;
      v65 = v23;
      v25 = *(v21 + 80);
      v26 = *(v21 + 96);
      v27 = *(v21 + 112);
      v71 = *(v21 + 128);
      v69 = v26;
      v70 = v27;
      v68 = v25;
      v72 = *(v21 - 136);
      v28 = *(v21 - 120);
      v29 = *(v21 - 104);
      v30 = *(v21 - 72);
      v75 = *(v21 - 88);
      v76 = v30;
      v73 = v28;
      v74 = v29;
      v31 = *(v21 - 56);
      v32 = *(v21 - 40);
      v33 = *(v21 - 24);
      v80 = *(v21 - 8);
      v78 = v32;
      v79 = v33;
      v77 = v31;
      if (!*(a5 + 16))
      {
        break;
      }

      v34 = v64;
      sub_1DAA806E4(&v63, &v54);
      sub_1DAA806E4(&v72, &v54);
      v35 = sub_1DAA4BF3C(v34, *(&v34 + 1));
      if ((v36 & 1) == 0)
      {
        goto LABEL_10;
      }

      sub_1DAC0F278(*(a5 + 56) + *(v53 + 72) * v35, v17);
      v37 = v17[2];
      v38 = *(v17 + 24);
      sub_1DAC0F2DC(v17);
LABEL_11:
      v39 = 0.0;
      if (*(a5 + 16) && (v40 = sub_1DAA4BF3C(v73, *(&v73 + 1)), (v41 & 1) != 0))
      {
        sub_1DAC0F278(*(a5 + 56) + *(v53 + 72) * v40, v14);
        v39 = v14[2];
        v42 = *(v14 + 24);
        sub_1DAC0F2DC(v14);
      }

      else
      {
        v42 = 1;
      }

      sub_1DAA9B1C8(&v72);
      result = sub_1DAA9B1C8(&v63);
      if (v38)
      {
        if ((v42 | v81))
        {
          goto LABEL_4;
        }
      }

      else if (v42)
      {
        if ((v81 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v81)
      {
        if (v39 >= v37)
        {
          goto LABEL_4;
        }
      }

      else if (v37 >= v39)
      {
        goto LABEL_4;
      }

      if (!v18)
      {
        __break(1u);
        return result;
      }

      v43 = v21 - 136;
      v59 = *(v21 + 80);
      v60 = *(v21 + 96);
      v61 = *(v21 + 112);
      v62 = *(v21 + 128);
      v55 = *(v21 + 16);
      v56 = *(v21 + 32);
      v57 = *(v21 + 48);
      v58 = *(v21 + 64);
      v54 = *v21;
      v44 = *(v21 - 56);
      *(v21 + 64) = *(v21 - 72);
      *(v21 + 80) = v44;
      v45 = *(v21 - 24);
      *(v21 + 96) = *(v21 - 40);
      *(v21 + 112) = v45;
      *(v21 + 128) = *(v21 - 8);
      v46 = *(v21 - 88);
      *(v21 + 32) = *(v21 - 104);
      *(v21 + 48) = v46;
      v47 = *(v21 - 120);
      *v21 = *(v21 - 136);
      *(v21 + 16) = v47;
      *(v43 + 64) = v58;
      *(v43 + 80) = v59;
      *(v43 + 96) = v60;
      *(v43 + 112) = v61;
      *(v43 + 128) = v62;
      *(v43 + 16) = v55;
      *(v43 + 32) = v56;
      *(v43 + 48) = v57;
      *v43 = v54;
      if (!v20)
      {
LABEL_4:
        a3 = v52 + 1;
        v19 = v51 + 136;
        v20 = v50 - 1;
        if (v52 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      ++v20;
      v21 -= 136;
    }

    sub_1DAA806E4(&v63, &v54);
    sub_1DAA806E4(&v72, &v54);
LABEL_10:
    v38 = 1;
    v37 = 0.0;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1DAC08534(uint64_t *a1, uint64_t a2, char *a3, char a4)
{
  v8 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_1DACBA104();
  if (result >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        sub_1DACB71E4();
        sub_1DACB71F4();
        sub_1DAC08190(0, v8, 1, a1, a2, a4 & 1);
        swift_bridgeObjectRelease_n();
      }

      else
      {

        return swift_bridgeObjectRelease_n();
      }
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < -1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = v8 / 2;
  if (v8 <= 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = sub_1DACB96C4();
    *(v12 + 16) = v11;
  }

  v13[0] = (v12 + 32);
  v13[1] = v11;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAC0723C(v13, v14, a1, v10, a2, a3, a4 & 1);

  *(v12 + 16) = 0;

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC086E4(char **a1, uint64_t a2, char *a3, char a4)
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DACA671C(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = (v8 + 32);
  v11[1] = v9;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAC08534(v11, a2, a3, a4 & 1);

  *a1 = v8;

  return swift_bridgeObjectRelease_n();
}

BOOL sub_1DAC087CC(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v9 = type metadata accessor for Quote(0);
  v53 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v48 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v48 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v19 = (&v48 - v18);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v52 = v4;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v50 = v17;
  v51 = v22;
  v24 = sub_1DAA4BF3C(v20, v21);
  v25 = 0.0;
  if (v26)
  {
    v49 = v23;
    v27 = *(v53 + 72);
    sub_1DAC0F278(*(a3 + 56) + v27 * v24, v19);
    v28 = *v19;
    v29 = *(v19 + 8);
    sub_1DAC0F2DC(v19);
    if (v29)
    {
      goto LABEL_7;
    }

    if (!*(a3 + 16))
    {
      return 0;
    }

    v30 = sub_1DAA4BF3C(v20, v21);
    if (v31 & 1) == 0 || (sub_1DAC0F278(*(a3 + 56) + v30 * v27, v16), v32 = v16[2], v33 = *(v16 + 24), sub_1DAC0F2DC(v16), (v33))
    {
LABEL_7:
      v34 = 1;
    }

    else
    {
      v34 = 0;
      if (v28 - v32 <= 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v32 / (v28 - v32);
      }
    }

    v23 = v49;
    if (!*(a3 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34 = 1;
    if (!*(a3 + 16))
    {
      goto LABEL_16;
    }
  }

  v35 = sub_1DAA4BF3C(v51, v23);
  if (v36)
  {
    v37 = *(v53 + 72);
    sub_1DAC0F278(*(a3 + 56) + v37 * v35, v13);
    v38 = *v13;
    v39 = *(v13 + 8);
    sub_1DAC0F2DC(v13);
    if ((v39 & 1) == 0)
    {
      if (*(a3 + 16))
      {
        v40 = sub_1DAA4BF3C(v51, v23);
        if (v41)
        {
          v42 = v50;
          sub_1DAC0F278(*(a3 + 56) + v40 * v37, v50);
          v43 = *(v42 + 16);
          v44 = *(v42 + 24);
          sub_1DAC0F2DC(v42);
          if ((v44 & 1) == 0)
          {
            v46 = 0.0;
            if (v38 - v43 > 0.0)
            {
              v46 = v43 / (v38 - v43);
            }

            if (v34)
            {
              return !a4;
            }

            else if (a4)
            {
              return v46 < v25;
            }

            else
            {
              return v25 < v46;
            }
          }
        }
      }
    }
  }

LABEL_16:
  if (v34)
  {
    return 0;
  }

  return a4;
}

uint64_t sub_1DAC08AB0(char **a1, uint64_t a2, char **a3, uint64_t a4, char *a5, char *a6, int a7)
{
  v8 = v7;
  v197 = a4;
  v198 = a1;
  v13 = type metadata accessor for Quote(0);
  v214 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v201 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v199 = &v197 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v209 = &v197 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v210 = &v197 - v20;
  v211 = a3;
  v21 = a3[1];
  v206 = a6;
  v216 = a7;
  if (v21 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v208 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v214 = *v198;
    if (!v214)
    {
      goto LABEL_170;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_128:
      v213 = v8;
      v185 = (v208 + 16);
      v8 = *(v208 + 2);
      if (v8 < 2)
      {
LABEL_135:

        return swift_bridgeObjectRelease_n();
      }

      while (1)
      {
        v186 = *v211;
        if (!*v211)
        {
          goto LABEL_167;
        }

        v187 = &v208[16 * v8];
        v188 = *v187;
        v189 = &v185[2 * v8];
        v190 = v189[1];
        v191 = &v186[136 * *v187];
        v304 = &v186[136 * *v189];
        v215 = &v186[136 * v190];
        sub_1DACB71E4();
        sub_1DACB71F4();
        v192 = v191;
        v193 = v213;
        sub_1DAC09F94(v192, v304, v215, v214, a5, v216 & 1, sub_1DAC087CC);
        v213 = v193;
        if (v193)
        {

          swift_bridgeObjectRelease_n();
        }

        if (v190 < v188)
        {
          goto LABEL_155;
        }

        v194 = *v185;
        if (v8 - 2 >= *v185)
        {
          goto LABEL_156;
        }

        *v187 = v188;
        *(v187 + 1) = v190;
        v195 = v194 - v8;
        if (v194 < v8)
        {
          goto LABEL_157;
        }

        v8 = v194 - 1;
        memmove(v189, v189 + 2, 16 * v195);
        *v185 = v8;
        if (v8 <= 1)
        {
          goto LABEL_135;
        }
      }
    }

LABEL_161:
    v208 = sub_1DAC0694C(v208);
    goto LABEL_128;
  }

  v207 = a7 & 1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v22 = 0;
  v208 = MEMORY[0x1E69E7CC0];
  v304 = a5;
  while (2)
  {
    v23 = v22;
    v24 = v22 + 1;
    v200 = v22;
    if (v22 + 1 < v21)
    {
      v25 = *v211;
      v26 = &(*v211)[136 * v24];
      v286 = *v26;
      v27 = *(v26 + 16);
      v28 = *(v26 + 32);
      v29 = *(v26 + 48);
      v290 = *(v26 + 64);
      v289 = v29;
      v288 = v28;
      v287 = v27;
      v30 = *(v26 + 80);
      v31 = *(v26 + 96);
      v32 = *(v26 + 112);
      v294 = *(v26 + 128);
      v293 = v32;
      v292 = v31;
      v291 = v30;
      v282 = *(v26 + 80);
      v283 = *(v26 + 96);
      v284 = *(v26 + 112);
      v285 = *(v26 + 128);
      v278 = *(v26 + 16);
      v279 = *(v26 + 32);
      v280 = *(v26 + 48);
      v281 = *(v26 + 64);
      v277 = *v26;
      v33 = &v25[136 * v22];
      v295 = *v33;
      v34 = *(v33 + 1);
      v35 = *(v33 + 2);
      v36 = *(v33 + 4);
      v298 = *(v33 + 3);
      v299 = v36;
      v296 = v34;
      v297 = v35;
      v37 = *(v33 + 5);
      v38 = *(v33 + 6);
      v39 = *(v33 + 7);
      v303 = *(v33 + 16);
      v301 = v38;
      v302 = v39;
      v300 = v37;
      v40 = *(v33 + 7);
      v274 = *(v33 + 6);
      v275 = v40;
      v276 = *(v33 + 16);
      v41 = *(v33 + 3);
      v270 = *(v33 + 2);
      v271 = v41;
      v42 = *(v33 + 4);
      v273 = *(v33 + 5);
      v272 = v42;
      v43 = *v33;
      v269 = *(v33 + 1);
      v268 = v43;
      sub_1DAA806E4(&v286, &v259);
      sub_1DAA806E4(&v295, &v259);
      v44 = sub_1DAC087CC(&v277, &v268, a5, v207);
      if (v8)
      {
        v256 = v274;
        v257 = v275;
        v258 = v276;
        v252 = v270;
        v253 = v271;
        v255 = v273;
        v254 = v272;
        v251 = v269;
        v250 = v268;
        sub_1DAA9B1C8(&v250);
        v265 = v283;
        v266 = v284;
        v267 = v285;
        v261 = v279;
        v262 = v280;
        v264 = v282;
        v263 = v281;
        v260 = v278;
        v259 = v277;
        sub_1DAA9B1C8(&v259);

        swift_bridgeObjectRelease_n();
      }

      v45 = v44;
      v256 = v274;
      v257 = v275;
      v258 = v276;
      v252 = v270;
      v253 = v271;
      v255 = v273;
      v254 = v272;
      v251 = v269;
      v250 = v268;
      sub_1DAA9B1C8(&v250);
      v265 = v283;
      v266 = v284;
      v267 = v285;
      v261 = v279;
      v262 = v280;
      v264 = v282;
      v263 = v281;
      v260 = v278;
      v259 = v277;
      sub_1DAA9B1C8(&v259);
      v46 = v23 + 2;
      if (v23 + 2 >= v21)
      {
        v48 = v23 + 2;
        v70 = v197;
        if (!v45)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v47 = &v25[136 * v23 + 272];
        do
        {
          v48 = v46;
          v239[0] = *v47;
          v49 = *(v47 + 16);
          v50 = *(v47 + 32);
          v51 = *(v47 + 64);
          v239[3] = *(v47 + 48);
          v239[4] = v51;
          v239[1] = v49;
          v239[2] = v50;
          v52 = *(v47 + 80);
          v53 = *(v47 + 96);
          v54 = *(v47 + 112);
          v240 = *(v47 + 128);
          v239[6] = v53;
          v239[7] = v54;
          v239[5] = v52;
          v55 = *(v47 + 112);
          v236 = *(v47 + 96);
          v237 = v55;
          v238 = *(v47 + 128);
          v56 = *(v47 + 48);
          v232 = *(v47 + 32);
          v233 = v56;
          v57 = *(v47 + 80);
          v234 = *(v47 + 64);
          v235 = v57;
          v58 = *(v47 + 16);
          v230 = *v47;
          v231 = v58;
          v241 = *(v47 - 136);
          v59 = *(v47 - 120);
          v60 = *(v47 - 104);
          v61 = *(v47 - 72);
          v244 = *(v47 - 88);
          v245 = v61;
          v242 = v59;
          v243 = v60;
          v62 = *(v47 - 56);
          v63 = *(v47 - 40);
          v64 = *(v47 - 24);
          v249 = *(v47 - 8);
          v247 = v63;
          v248 = v64;
          v246 = v62;
          v65 = *(v47 - 56);
          v66 = *(v47 - 24);
          v227 = *(v47 - 40);
          v228 = v66;
          v229 = *(v47 - 8);
          v67 = *(v47 - 120);
          v68 = *(v47 - 88);
          v223 = *(v47 - 104);
          v224 = v68;
          v225 = *(v47 - 72);
          v226 = v65;
          v221 = *(v47 - 136);
          v222 = v67;
          sub_1DAA806E4(v239, v219);
          sub_1DAA806E4(&v241, v219);
          v69 = sub_1DAC087CC(&v230, &v221, a5, v207);
          v217[6] = v227;
          v217[7] = v228;
          v218 = v229;
          v217[2] = v223;
          v217[3] = v224;
          v217[4] = v225;
          v217[5] = v226;
          v217[0] = v221;
          v217[1] = v222;
          sub_1DAA9B1C8(v217);
          v219[6] = v236;
          v219[7] = v237;
          v220 = v238;
          v219[2] = v232;
          v219[3] = v233;
          v219[4] = v234;
          v219[5] = v235;
          v219[0] = v230;
          v219[1] = v231;
          sub_1DAA9B1C8(v219);
          if ((v45 ^ v69))
          {
            v24 = v48 - 1;
            v70 = v197;
            if (!v45)
            {
              goto LABEL_25;
            }

            goto LABEL_16;
          }

          v46 = v48 + 1;
          v47 += 136;
        }

        while (v21 != v48 + 1);
        v24 = v48;
        v48 = v21;
        v70 = v197;
        if (!v45)
        {
          goto LABEL_25;
        }
      }

LABEL_16:
      if (v48 < v200)
      {
        goto LABEL_164;
      }

      if (v200 > v24)
      {
        v24 = v48;
        v23 = v200;
        goto LABEL_26;
      }

      v213 = 0;
      v71 = v48;
      v72 = 136 * v48 - 136;
      v73 = 136 * v200;
      v74 = v200;
      do
      {
        if (v74 != --v71)
        {
          v75 = *v211;
          if (!*v211)
          {
            goto LABEL_168;
          }

          v76 = &v75[v72];
          v246 = *&v75[v73 + 80];
          v247 = *&v75[v73 + 96];
          v248 = *&v75[v73 + 112];
          v249 = *&v75[v73 + 128];
          v242 = *&v75[v73 + 16];
          v243 = *&v75[v73 + 32];
          v244 = *&v75[v73 + 48];
          v245 = *&v75[v73 + 64];
          v241 = *&v75[v73];
          memmove(&v75[v73], &v75[v72], 0x88uLL);
          *(v76 + 5) = v246;
          *(v76 + 6) = v247;
          *(v76 + 7) = v248;
          *(v76 + 16) = v249;
          *(v76 + 1) = v242;
          *(v76 + 2) = v243;
          *(v76 + 3) = v244;
          *(v76 + 4) = v245;
          *v76 = v241;
        }

        ++v74;
        v72 -= 136;
        v73 += 136;
      }

      while (v74 < v71);
      v8 = v213;
LABEL_25:
      v24 = v48;
      v23 = v200;
      goto LABEL_26;
    }

    v70 = v197;
LABEL_26:
    v77 = v211[1];
    if (v24 >= v77)
    {
      goto LABEL_74;
    }

    if (__OFSUB__(v24, v23))
    {
      goto LABEL_160;
    }

    if (v24 - v23 >= v70)
    {
      goto LABEL_74;
    }

    v78 = (v23 + v70);
    if (__OFADD__(v23, v70))
    {
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_166:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_167:

      __break(1u);
LABEL_168:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_169:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_170:

      result = swift_bridgeObjectRelease_n();
      __break(1u);
      return result;
    }

    if (v78 >= v77)
    {
      v78 = v211[1];
    }

    if (v78 < v23)
    {
      goto LABEL_163;
    }

    if (v24 == v78)
    {
      goto LABEL_74;
    }

    v213 = v8;
    v215 = *v211;
    v79 = v23 - v24;
    v80 = &v215[136 * v24];
    v81 = v79 + 1;
    v202 = v78;
    while (2)
    {
      v204 = v80;
      v205 = v24;
      v203 = v81;
      while (1)
      {
        v286 = *v80;
        v82 = *(v80 + 1);
        v83 = *(v80 + 2);
        v84 = *(v80 + 3);
        v290 = *(v80 + 4);
        v289 = v84;
        v288 = v83;
        v287 = v82;
        v85 = *(v80 + 5);
        v86 = *(v80 + 6);
        v87 = *(v80 + 7);
        v294 = *(v80 + 16);
        v293 = v87;
        v292 = v86;
        v291 = v85;
        v295 = *(v80 - 136);
        v88 = *(v80 - 120);
        v89 = *(v80 - 104);
        v90 = *(v80 - 72);
        v298 = *(v80 - 88);
        v299 = v90;
        v296 = v88;
        v297 = v89;
        v91 = *(v80 - 56);
        v92 = *(v80 - 40);
        v93 = *(v80 - 24);
        v303 = *(v80 - 1);
        v301 = v92;
        v302 = v93;
        v300 = v91;
        if (*(a5 + 2))
        {
          break;
        }

        sub_1DAA806E4(&v286, &v277);
        sub_1DAA806E4(&v295, &v277);
        v107 = 1;
        v96 = 0.0;
        if (!*(a5 + 2))
        {
          goto LABEL_62;
        }

LABEL_47:
        v108 = v296;
        v109 = sub_1DAA4BF3C(v296, *(&v296 + 1));
        a5 = v304;
        if ((v110 & 1) == 0)
        {
          goto LABEL_62;
        }

        v111 = *(v304 + 7);
        v212 = *(v214 + 9);
        v112 = v81;
        v113 = v304;
        v114 = v209;
        sub_1DAC0F278(v111 + v212 * v109, v209);
        v115 = *v114;
        v116 = *(v114 + 8);
        v117 = v114;
        a5 = v113;
        v81 = v112;
        sub_1DAC0F2DC(v117);
        if (v116)
        {
          goto LABEL_62;
        }

        if (!*(a5 + 2))
        {
          goto LABEL_62;
        }

        v118 = sub_1DAA4BF3C(v108, *(&v108 + 1));
        a5 = v304;
        if ((v119 & 1) == 0)
        {
          goto LABEL_62;
        }

        v120 = v199;
        sub_1DAC0F278(*(v304 + 7) + v118 * v212, v199);
        v121 = *(v120 + 16);
        v122 = *(v120 + 24);
        sub_1DAC0F2DC(v120);
        if (v122)
        {
          goto LABEL_62;
        }

        if (v115 - v121 <= 0.0)
        {
          v123 = 0.0;
        }

        else
        {
          v123 = v121 / (v115 - v121);
        }

        sub_1DAA9B1C8(&v295);
        sub_1DAA9B1C8(&v286);
        if (v107)
        {
          if (v207)
          {
            goto LABEL_36;
          }
        }

        else if (v216)
        {
          if (v123 >= v96)
          {
            goto LABEL_36;
          }
        }

        else if (v96 >= v123)
        {
          goto LABEL_36;
        }

LABEL_64:
        if (!v215)
        {
          goto LABEL_165;
        }

        v124 = v80 - 136;
        v282 = *(v80 + 5);
        v283 = *(v80 + 6);
        v284 = *(v80 + 7);
        v285 = *(v80 + 16);
        v278 = *(v80 + 1);
        v279 = *(v80 + 2);
        v280 = *(v80 + 3);
        v281 = *(v80 + 4);
        v277 = *v80;
        v125 = *(v80 - 56);
        *(v80 + 4) = *(v80 - 72);
        *(v80 + 5) = v125;
        v126 = *(v80 - 24);
        *(v80 + 6) = *(v80 - 40);
        *(v80 + 7) = v126;
        *(v80 + 16) = *(v80 - 1);
        v127 = *(v80 - 88);
        *(v80 + 2) = *(v80 - 104);
        *(v80 + 3) = v127;
        v128 = *(v80 - 120);
        *v80 = *(v80 - 136);
        *(v80 + 1) = v128;
        *(v124 + 4) = v281;
        *(v124 + 5) = v282;
        *(v124 + 6) = v283;
        *(v124 + 7) = v284;
        *(v124 + 16) = v285;
        *(v124 + 1) = v278;
        *(v124 + 2) = v279;
        *(v124 + 3) = v280;
        *v124 = v277;
        if (!v81)
        {
          goto LABEL_36;
        }

        ++v81;
        v80 -= 136;
      }

      v94 = v287;
      sub_1DAA806E4(&v286, &v277);
      sub_1DAA806E4(&v295, &v277);
      v95 = sub_1DAA4BF3C(v94, *(&v94 + 1));
      v96 = 0.0;
      if ((v97 & 1) == 0)
      {
        goto LABEL_44;
      }

      v98 = *(v214 + 9);
      v99 = v210;
      sub_1DAC0F278(*(a5 + 7) + v98 * v95, v210);
      v100 = *v99;
      v101 = *(v99 + 8);
      sub_1DAC0F2DC(v99);
      if (v101)
      {
        goto LABEL_44;
      }

      if (!*(a5 + 2))
      {
        goto LABEL_35;
      }

      v102 = sub_1DAA4BF3C(v94, *(&v94 + 1));
      if (v103 & 1) == 0 || (v104 = v201, sub_1DAC0F278(*(a5 + 7) + v102 * v98, v201), v105 = *(v104 + 16), v106 = *(v104 + 24), sub_1DAC0F2DC(v104), (v106))
      {
LABEL_44:
        v107 = 1;
        if (!*(a5 + 2))
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      }

      v107 = 0;
      if (v100 - v105 <= 0.0)
      {
        v96 = 0.0;
      }

      else
      {
        v96 = v105 / (v100 - v105);
      }

      if (*(a5 + 2))
      {
        goto LABEL_47;
      }

LABEL_62:
      if ((v107 & 1) == 0)
      {
        sub_1DAA9B1C8(&v295);
        sub_1DAA9B1C8(&v286);
        if ((v216 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_64;
      }

LABEL_35:
      sub_1DAA9B1C8(&v295);
      sub_1DAA9B1C8(&v286);
LABEL_36:
      v24 = v205 + 1;
      v80 = v204 + 136;
      v81 = v203 - 1;
      if ((v205 + 1) != v202)
      {
        continue;
      }

      break;
    }

    v24 = v202;
    v8 = v213;
    v23 = v200;
LABEL_74:
    a5 = v208;
    if (v24 < v23)
    {
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v205 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a5 = sub_1DAADB818(0, *(a5 + 2) + 1, 1, a5);
    }

    v131 = *(a5 + 2);
    v130 = *(a5 + 3);
    v132 = v131 + 1;
    if (v131 >= v130 >> 1)
    {
      a5 = sub_1DAADB818((v130 > 1), v131 + 1, 1, a5);
    }

    *(a5 + 2) = v132;
    v133 = a5 + 32;
    v134 = &a5[16 * v131 + 32];
    v135 = v205;
    *v134 = v200;
    *(v134 + 1) = v135;
    v212 = *v198;
    if (!v212)
    {
      goto LABEL_169;
    }

    v213 = v8;
    v208 = a5;
    if (!v131)
    {
LABEL_3:
      v21 = v211[1];
      v22 = v205;
      v8 = v213;
      a5 = v304;
      if (v205 >= v21)
      {
        goto LABEL_126;
      }

      continue;
    }

    break;
  }

  v204 = a5 + 32;
  while (2)
  {
    v136 = v132 - 1;
    if (v132 >= 4)
    {
      v141 = &v133[16 * v132];
      v142 = *(v141 - 8);
      v143 = *(v141 - 7);
      v147 = __OFSUB__(v143, v142);
      v144 = v143 - v142;
      if (v147)
      {
        goto LABEL_144;
      }

      v146 = *(v141 - 6);
      v145 = *(v141 - 5);
      v147 = __OFSUB__(v145, v146);
      v139 = v145 - v146;
      v140 = v147;
      if (v147)
      {
        goto LABEL_145;
      }

      v148 = &a5[16 * v132];
      v150 = *v148;
      v149 = *(v148 + 1);
      v147 = __OFSUB__(v149, v150);
      v151 = v149 - v150;
      if (v147)
      {
        goto LABEL_147;
      }

      v147 = __OFADD__(v139, v151);
      v152 = v139 + v151;
      if (v147)
      {
        goto LABEL_149;
      }

      if (v152 >= v144)
      {
        v170 = &v133[16 * v136];
        v172 = *v170;
        v171 = *(v170 + 1);
        v147 = __OFSUB__(v171, v172);
        v173 = v171 - v172;
        if (v147)
        {
          goto LABEL_158;
        }

        if (v139 < v173)
        {
          v136 = v132 - 2;
        }
      }

      else
      {
LABEL_95:
        if (v140)
        {
          goto LABEL_146;
        }

        v153 = &a5[16 * v132];
        v155 = *v153;
        v154 = *(v153 + 1);
        v156 = __OFSUB__(v154, v155);
        v157 = v154 - v155;
        v158 = v156;
        if (v156)
        {
          goto LABEL_148;
        }

        v159 = &v133[16 * v136];
        v161 = *v159;
        v160 = *(v159 + 1);
        v147 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v147)
        {
          goto LABEL_151;
        }

        if (__OFADD__(v157, v162))
        {
          goto LABEL_153;
        }

        if (v157 + v162 < v139)
        {
          goto LABEL_110;
        }

        if (v139 < v162)
        {
          v136 = v132 - 2;
        }
      }
    }

    else
    {
      if (v132 == 3)
      {
        v137 = *(a5 + 4);
        v138 = *(a5 + 5);
        v147 = __OFSUB__(v138, v137);
        v139 = v138 - v137;
        v140 = v147;
        goto LABEL_95;
      }

      if (v132 < 2)
      {
        goto LABEL_154;
      }

      v163 = &a5[16 * v132];
      v165 = *v163;
      v164 = *(v163 + 1);
      v147 = __OFSUB__(v164, v165);
      v157 = v164 - v165;
      v158 = v147;
LABEL_110:
      if (v158)
      {
        goto LABEL_150;
      }

      v166 = &v133[16 * v136];
      v168 = *v166;
      v167 = *(v166 + 1);
      v147 = __OFSUB__(v167, v168);
      v169 = v167 - v168;
      if (v147)
      {
        goto LABEL_152;
      }

      if (v169 < v157)
      {
        goto LABEL_3;
      }
    }

    if (v136 - 1 >= v132)
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v174 = *v211;
    if (!*v211)
    {
      goto LABEL_166;
    }

    v175 = &v133[16 * v136 - 16];
    v176 = *v175;
    v177 = v136;
    v178 = &v133[16 * v136];
    v179 = *(v178 + 1);
    v180 = &v174[136 * *v175];
    v215 = &v174[136 * *v178];
    v8 = &v174[136 * v179];
    v181 = v304;
    sub_1DACB71E4();
    sub_1DACB71F4();
    v182 = v180;
    v183 = v213;
    sub_1DAC09F94(v182, v215, v8, v212, v181, v207, sub_1DAC087CC);
    v213 = v183;
    if (!v183)
    {

      a5 = v208;
      if (v179 < v176)
      {
        goto LABEL_141;
      }

      v8 = *(v208 + 2);
      if (v177 > v8)
      {
        goto LABEL_142;
      }

      *v175 = v176;
      *(v175 + 1) = v179;
      if (v177 >= v8)
      {
        goto LABEL_143;
      }

      v184 = v177;
      v132 = v8 - 1;
      memmove(v178, v178 + 16, 16 * (v8 - 1 - v184));
      *(a5 + 2) = v8 - 1;
      v133 = v204;
      if (v8 <= 2)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC09BF4(char **a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *, _OWORD *, __int128 **, uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(__int128 *, __int128 *, uint64_t, void))
{
  v12 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1DACA671C(v12);
  }

  v13 = *(v12 + 2);
  v15[0] = (v12 + 32);
  v15[1] = v13;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAC0B750(v15, a2, a3, a4 & 1, a5, a6);

  *a1 = v12;

  return swift_bridgeObjectRelease_n();
}

BOOL sub_1DAC09CF4(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v8 = type metadata accessor for Quote(0);
  v44 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v41 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v41 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v41 - v18);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a2 + 16);
  v42 = *(a2 + 24);
  v43 = v22;
  v23 = sub_1DAA4BF3C(v20, v21);
  if (v24)
  {
    sub_1DAC0F278(*(a3 + 56) + *(v44 + 72) * v23, v19);
    v25 = v19[4];
    v26 = *(v19 + 40);
    sub_1DAC0F2DC(v19);
    if ((v26 & 1) == 0 && v25 == 0.0)
    {
      goto LABEL_9;
    }
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v27 = sub_1DAA4BF3C(v20, v21);
  if ((v28 & 1) == 0)
  {
LABEL_9:
    v30 = 1;
    v29 = 0.0;
    if (!*(a3 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_1DAC0F278(*(a3 + 56) + *(v44 + 72) * v27, v17);
    v29 = v17[4];
    v30 = *(v17 + 40);
    sub_1DAC0F2DC(v17);
    if (!*(a3 + 16))
    {
      goto LABEL_18;
    }
  }

  v31 = sub_1DAA4BF3C(v43, v42);
  if (v32 & 1) == 0 || (sub_1DAC0F278(*(a3 + 56) + *(v44 + 72) * v31, v14), v33 = v14[4], v34 = *(v14 + 40), sub_1DAC0F2DC(v14), (v34) || v33 != 0.0)
  {
    if (*(a3 + 16))
    {
      v35 = sub_1DAA4BF3C(v43, v42);
      if (v36)
      {
        sub_1DAC0F278(*(a3 + 56) + *(v44 + 72) * v35, v11);
        v37 = v11[4];
        v38 = *(v11 + 40);
        sub_1DAC0F2DC(v11);
        if ((v30 & 1) == 0)
        {
          if ((v38 & 1) == 0)
          {
            if (a4)
            {
              return v37 < v29;
            }

            else
            {
              return v29 < v37;
            }
          }

          return a4;
        }

        if ((v38 & 1) == 0)
        {
          return !a4;
        }

        return 0;
      }
    }
  }

LABEL_18:
  if (v30)
  {
    return 0;
  }

  return a4;
}

uint64_t sub_1DAC09F94(char *__dst, char *__src, char *a3, char *a4, uint64_t a5, char a6, uint64_t (*a7)(__int128 *, __int128 *, uint64_t, void))
{
  v117 = a7;
  v8 = a4;
  v9 = a3;
  v10 = __src;
  v11 = __dst;
  v12 = __src - __dst;
  v13 = (__src - __dst) / 136;
  v14 = a3 - __src;
  v15 = (a3 - __src) / 136;
  if (v13 < v15)
  {
    if (a4 != __dst || &__dst[136 * v13] <= a4)
    {
      memmove(a4, __dst, 136 * v13);
    }

    v16 = (v8 + 136 * v13);
    if (v12 < 136)
    {
LABEL_6:
      v10 = v11;
      goto LABEL_51;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v99 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v102 = *(v10 + 3);
      v103 = v21;
      v100 = v19;
      v101 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v107 = *(v10 + 16);
      v105 = v23;
      v106 = v24;
      v104 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v108 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v111 = *(v8 + 48);
      v112 = v27;
      v109 = v25;
      v110 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v116 = *(v8 + 128);
      v114 = v29;
      v115 = v30;
      v113 = v28;
      memmove(&v81, v8, 0x88uLL);
      sub_1DAA806E4(&v99, &v72);
      sub_1DAA806E4(&v108, &v72);
      v31 = v117(&__dsta, &v81, a5, a6 & 1);
      if (v7)
      {
        v69 = v87;
        v70 = v88;
        v71 = v89;
        v65 = v83;
        v66 = v84;
        v67 = v85;
        v68 = v86;
        v63 = v81;
        v64 = v82;
        sub_1DAA9B1C8(&v63);
        v78 = v96;
        v79 = v97;
        v80 = v98;
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v72 = __dsta;
        v73 = v91;
        sub_1DAA9B1C8(&v72);
        v56 = &v16[-v8] / 136;
        if (v11 < v8 || v11 >= v8 + 136 * v56 || v11 != v8)
        {
          v57 = 136 * v56;
          v58 = v11;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v32 = v31;
      v69 = v87;
      v70 = v88;
      v71 = v89;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v68 = v86;
      v63 = v81;
      v64 = v82;
      sub_1DAA9B1C8(&v63);
      v78 = v96;
      v79 = v97;
      v80 = v98;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v72 = __dsta;
      v73 = v91;
      sub_1DAA9B1C8(&v72);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v11 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v11 += 136;
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v11 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v11, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v15] <= a4)
  {
    memmove(a4, __src, 136 * v15);
  }

  v16 = (v8 + 136 * v15);
  if (v14 < 136)
  {
    goto LABEL_51;
  }

  v33 = a5;
  if (v10 <= v11)
  {
    goto LABEL_51;
  }

  v34 = -v8;
LABEL_22:
  v35 = v10 - 136;
  v36 = &v16[v34];
  v9 -= 136;
  v37 = v16;
  while (1)
  {
    v16 = v37;
    v37 -= 136;
    v99 = *(v16 - 136);
    v38 = *(v16 - 120);
    v39 = *(v16 - 104);
    v40 = *(v16 - 72);
    v102 = *(v16 - 88);
    v103 = v40;
    v100 = v38;
    v101 = v39;
    v41 = *(v16 - 56);
    v42 = *(v16 - 40);
    v43 = *(v16 - 24);
    v107 = *(v16 - 1);
    v105 = v42;
    v106 = v43;
    v104 = v41;
    memmove(&__dsta, v37, 0x88uLL);
    v44 = *(v10 - 56);
    v45 = *(v10 - 24);
    v114 = *(v10 - 40);
    v115 = v45;
    v46 = *(v10 - 120);
    v47 = *(v10 - 88);
    v110 = *(v10 - 104);
    v111 = v47;
    v48 = *(v10 - 88);
    v49 = *(v10 - 56);
    v112 = *(v10 - 72);
    v113 = v49;
    v50 = *(v10 - 120);
    v108 = *v35;
    v109 = v50;
    v51 = *(v10 - 24);
    v87 = v114;
    v88 = v51;
    v83 = v110;
    v84 = v48;
    v85 = v112;
    v86 = v44;
    v116 = *(v10 - 1);
    v89 = *(v10 - 1);
    v81 = v108;
    v82 = v46;
    sub_1DAA806E4(&v99, &v72);
    sub_1DAA806E4(&v108, &v72);
    v52 = v117(&__dsta, &v81, v33, a6 & 1);
    if (v7)
    {
      break;
    }

    v53 = v52;
    v69 = v87;
    v70 = v88;
    v71 = v89;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v63 = v81;
    v64 = v82;
    sub_1DAA9B1C8(&v63);
    v78 = v96;
    v79 = v97;
    v80 = v98;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v72 = __dsta;
    v73 = v91;
    sub_1DAA9B1C8(&v72);
    v54 = v9 + 136;
    if (v53)
    {
      if (v54 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v34 = -v8;
        v33 = a5;
        if (v16 <= v8)
        {
LABEL_39:
          v10 = v35;
          goto LABEL_51;
        }
      }

      else
      {
        v34 = -v8;
        if (v54 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }

        v33 = a5;
        if (v16 <= v8)
        {
          goto LABEL_39;
        }
      }

      v10 -= 136;
      if (v35 > v11)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

    if (v54 < v16 || v9 >= v16)
    {
      memmove(v9, v37, 0x88uLL);
      v33 = a5;
    }

    else
    {
      v33 = a5;
      if (v54 != v16)
      {
        memmove(v9, v37, 0x88uLL);
      }
    }

    v36 -= 136;
    v9 -= 136;
    if (v37 <= v8)
    {
      v16 = v37;
LABEL_51:
      v59 = &v16[-v8] / 136;
      if (v10 < v8 || v10 >= v8 + 136 * v59 || v10 != v8)
      {
        v57 = 136 * v59;
        v58 = v10;
LABEL_55:
        memmove(v58, v8, v57);
      }

LABEL_56:

      return 1;
    }
  }

  v69 = v87;
  v70 = v88;
  v71 = v89;
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v68 = v86;
  v63 = v81;
  v64 = v82;
  sub_1DAA9B1C8(&v63);
  v78 = v96;
  v79 = v97;
  v80 = v98;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v77 = v95;
  v72 = __dsta;
  v73 = v91;
  sub_1DAA9B1C8(&v72);
  v55 = v36 / 136;
  if (v10 >= v8 && v10 < v8 + 136 * v55)
  {
    if (v10 != v8)
    {
      memmove(v10, v8, 136 * v55);
    }

    goto LABEL_56;
  }

  memmove(v10, v8, 136 * v55);

  return 1;
}

uint64_t sub_1DAC0A664(char **a1, uint64_t a2, char **a3, uint64_t a4, char *a5, uint64_t a6, int a7)
{
  v192 = a4;
  v193 = a1;
  v11 = type metadata accessor for Quote(0);
  v312 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v196 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v200 = &v191 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v204 = &v191 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v201 = &v191 - v18;
  v203 = a3;
  v19 = a3[1];
  v199 = a6;
  v206 = a5;
  v208 = a7;
  if (v19 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v210 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v205 = *v193;
    if (!v205)
    {
      goto LABEL_167;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_123:
      v175 = v210 + 16;
      v176 = *(v210 + 2);
      if (v176 < 2)
      {
LABEL_130:

        return swift_bridgeObjectRelease_n();
      }

      while (1)
      {
        v177 = *v203;
        if (!*v203)
        {
          goto LABEL_164;
        }

        v178 = &v210[16 * v176];
        v179 = *v178;
        v180 = v175;
        v181 = &v175[16 * v176];
        v182 = *(v181 + 1);
        v183 = &v177[136 * *v178];
        v312 = &v177[136 * *v181];
        v209 = &v177[136 * v182];
        v184 = v206;
        sub_1DACB71E4();
        sub_1DACB71F4();
        v185 = v183;
        v186 = v207;
        sub_1DAC09F94(v185, v312, v209, v205, v184, v208 & 1, sub_1DAC09CF4);
        v207 = v186;
        if (v186)
        {

          swift_bridgeObjectRelease_n();
        }

        if (v182 < v179)
        {
          goto LABEL_152;
        }

        v187 = *v180;
        if (v176 - 2 >= *v180)
        {
          goto LABEL_153;
        }

        *v178 = v179;
        *(v178 + 1) = v182;
        v188 = v187 - v176;
        if (v187 < v176)
        {
          goto LABEL_154;
        }

        v175 = v180;
        v176 = v187 - 1;
        memmove(v181, v181 + 16, 16 * v188);
        *v180 = v176;
        if (v176 <= 1)
        {
          goto LABEL_130;
        }
      }
    }

LABEL_158:
    v210 = sub_1DAC0694C(v210);
    goto LABEL_123;
  }

  v202 = a7 & 1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v20 = 0;
  v210 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v21 = v20 + 1;
    v195 = v20;
    if (v20 + 1 >= v19)
    {
      ++v20;
      goto LABEL_14;
    }

    v22 = *v203;
    v23 = &(*v203)[136 * v21];
    v294 = *v23;
    v24 = *(v23 + 16);
    v25 = *(v23 + 32);
    v26 = *(v23 + 48);
    v298 = *(v23 + 64);
    v297 = v26;
    v296 = v25;
    v295 = v24;
    v27 = *(v23 + 80);
    v28 = *(v23 + 96);
    v29 = *(v23 + 112);
    v302 = *(v23 + 128);
    v301 = v29;
    v300 = v28;
    v299 = v27;
    v290 = *(v23 + 80);
    v291 = *(v23 + 96);
    v292 = *(v23 + 112);
    v293 = *(v23 + 128);
    v286 = *(v23 + 16);
    v287 = *(v23 + 32);
    v288 = *(v23 + 48);
    v289 = *(v23 + 64);
    v285 = *v23;
    v30 = &v22[136 * v20];
    v303 = *v30;
    v31 = *(v30 + 1);
    v32 = *(v30 + 2);
    v33 = *(v30 + 4);
    v306 = *(v30 + 3);
    v307 = v33;
    v304 = v31;
    v305 = v32;
    v34 = *(v30 + 5);
    v35 = *(v30 + 6);
    v36 = *(v30 + 7);
    v311 = *(v30 + 16);
    v309 = v35;
    v310 = v36;
    v308 = v34;
    v37 = *(v30 + 7);
    v282 = *(v30 + 6);
    v283 = v37;
    v284 = *(v30 + 16);
    v38 = *(v30 + 3);
    v278 = *(v30 + 2);
    v279 = v38;
    v39 = *(v30 + 4);
    v281 = *(v30 + 5);
    v280 = v39;
    v40 = *v30;
    v277 = *(v30 + 1);
    v276 = v40;
    sub_1DAA806E4(&v294, &v267);
    sub_1DAA806E4(&v303, &v267);
    v41 = v207;
    v42 = sub_1DAC09CF4(&v285, &v276, a5, v202);
    v207 = v41;
    if (v41)
    {
      v264 = v282;
      v265 = v283;
      v266 = v284;
      v260 = v278;
      v261 = v279;
      v263 = v281;
      v262 = v280;
      v259 = v277;
      v258 = v276;
      sub_1DAA9B1C8(&v258);
      v273 = v291;
      v274 = v292;
      v275 = v293;
      v269 = v287;
      v270 = v288;
      v272 = v290;
      v271 = v289;
      v268 = v286;
      v267 = v285;
      v190 = &v267;
      goto LABEL_133;
    }

    v43 = v42;
    v264 = v282;
    v265 = v283;
    v266 = v284;
    v260 = v278;
    v261 = v279;
    v263 = v281;
    v262 = v280;
    v259 = v277;
    v258 = v276;
    sub_1DAA9B1C8(&v258);
    v273 = v291;
    v274 = v292;
    v275 = v293;
    v269 = v287;
    v270 = v288;
    v272 = v290;
    v271 = v289;
    v268 = v286;
    v267 = v285;
    sub_1DAA9B1C8(&v267);
    v44 = (v20 + 2);
    if (v20 + 2 < v19)
    {
      v45 = &v22[136 * v20 + 272];
      while (1)
      {
        v20 = v44;
        v247[0] = *v45;
        v46 = *(v45 + 16);
        v47 = *(v45 + 32);
        v48 = *(v45 + 64);
        v247[3] = *(v45 + 48);
        v247[4] = v48;
        v247[1] = v46;
        v247[2] = v47;
        v49 = *(v45 + 80);
        v50 = *(v45 + 96);
        v51 = *(v45 + 112);
        v248 = *(v45 + 128);
        v247[6] = v50;
        v247[7] = v51;
        v247[5] = v49;
        v52 = *(v45 + 112);
        v244 = *(v45 + 96);
        v245 = v52;
        v246 = *(v45 + 128);
        v53 = *(v45 + 48);
        v240 = *(v45 + 32);
        v241 = v53;
        v54 = *(v45 + 80);
        v242 = *(v45 + 64);
        v243 = v54;
        v55 = *(v45 + 16);
        v238 = *v45;
        v239 = v55;
        v249 = *(v45 - 136);
        v56 = *(v45 - 120);
        v57 = *(v45 - 104);
        v58 = *(v45 - 72);
        v252 = *(v45 - 88);
        v253 = v58;
        v250 = v56;
        v251 = v57;
        v59 = *(v45 - 56);
        v60 = *(v45 - 40);
        v61 = *(v45 - 24);
        v257 = *(v45 - 8);
        v255 = v60;
        v256 = v61;
        v254 = v59;
        v62 = *(v45 - 56);
        v63 = *(v45 - 24);
        v235 = *(v45 - 40);
        v236 = v63;
        v237 = *(v45 - 8);
        v64 = *(v45 - 120);
        v65 = *(v45 - 88);
        v231 = *(v45 - 104);
        v232 = v65;
        v233 = *(v45 - 72);
        v234 = v62;
        v229 = *(v45 - 136);
        v230 = v64;
        sub_1DAA806E4(v247, &v220);
        sub_1DAA806E4(&v249, &v220);
        v66 = v207;
        v67 = sub_1DAC09CF4(&v238, &v229, a5, v202);
        v207 = v66;
        if (v66)
        {
          break;
        }

        v68 = v67;
        v217 = v235;
        v218 = v236;
        v219 = v237;
        v213 = v231;
        v214 = v232;
        v215 = v233;
        v216 = v234;
        v211 = v229;
        v212 = v230;
        sub_1DAA9B1C8(&v211);
        v226 = v244;
        v227 = v245;
        v228 = v246;
        v222 = v240;
        v223 = v241;
        v224 = v242;
        v225 = v243;
        v220 = v238;
        v221 = v239;
        sub_1DAA9B1C8(&v220);
        if ((v43 ^ v68))
        {
          v21 = v20 - 1;
          if (!v43)
          {
            goto LABEL_14;
          }

          goto LABEL_113;
        }

        v44 = (v20 + 1);
        v45 += 136;
        if (v19 == v20 + 1)
        {
          v21 = v20;
          v20 = v19;
          if (!v43)
          {
            goto LABEL_14;
          }

LABEL_113:
          v169 = v195;
          if (v20 >= v195)
          {
            if (v195 <= v21)
            {
              v170 = 136 * v20 - 136;
              v171 = 136 * v195;
              v172 = v20;
              while (1)
              {
                if (v169 != --v172)
                {
                  v173 = *v203;
                  if (!*v203)
                  {
                    goto LABEL_165;
                  }

                  v174 = &v173[v170];
                  v254 = *&v173[v171 + 80];
                  v255 = *&v173[v171 + 96];
                  v256 = *&v173[v171 + 112];
                  v257 = *&v173[v171 + 128];
                  v250 = *&v173[v171 + 16];
                  v251 = *&v173[v171 + 32];
                  v252 = *&v173[v171 + 48];
                  v253 = *&v173[v171 + 64];
                  v249 = *&v173[v171];
                  memmove(&v173[v171], &v173[v170], 0x88uLL);
                  *(v174 + 5) = v254;
                  *(v174 + 6) = v255;
                  *(v174 + 7) = v256;
                  *(v174 + 16) = v257;
                  *(v174 + 1) = v250;
                  *(v174 + 2) = v251;
                  *(v174 + 3) = v252;
                  *(v174 + 4) = v253;
                  *v174 = v249;
                }

                ++v169;
                v170 -= 136;
                v171 += 136;
                if (v169 >= v172)
                {
                  goto LABEL_14;
                }
              }
            }

            goto LABEL_14;
          }

LABEL_161:
          __break(1u);
LABEL_162:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_163:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_164:

          __break(1u);
LABEL_165:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_166:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_167:

          result = swift_bridgeObjectRelease_n();
          __break(1u);
          return result;
        }
      }

      v217 = v235;
      v218 = v236;
      v219 = v237;
      v213 = v231;
      v214 = v232;
      v215 = v233;
      v216 = v234;
      v211 = v229;
      v212 = v230;
      sub_1DAA9B1C8(&v211);
      v226 = v244;
      v227 = v245;
      v228 = v246;
      v222 = v240;
      v223 = v241;
      v224 = v242;
      v225 = v243;
      v220 = v238;
      v221 = v239;
      v190 = &v220;
LABEL_133:
      sub_1DAA9B1C8(v190);

      swift_bridgeObjectRelease_n();
    }

    v20 += 2;
    if (v43)
    {
      goto LABEL_113;
    }

LABEL_14:
    v69 = v203[1];
    if (v20 >= v69)
    {
      goto LABEL_61;
    }

    if (__OFSUB__(v20, v195))
    {
      goto LABEL_157;
    }

    if (v20 - v195 >= v192)
    {
      goto LABEL_61;
    }

    v70 = (v195 + v192);
    if (__OFADD__(v195, v192))
    {
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v70 >= v69)
    {
      v70 = v203[1];
    }

    if (v70 < v195)
    {
      goto LABEL_160;
    }

    if (v20 == v70)
    {
      goto LABEL_61;
    }

    v209 = *v203;
    v71 = v195 - v20 + 1;
    v72 = &v209[136 * v20];
    v194 = v70;
    while (2)
    {
      v205 = v20;
      v197 = v71;
      v198 = v72;
      while (1)
      {
        v73 = v72;
        v294 = *v72;
        v74 = *(v72 + 1);
        v75 = *(v72 + 2);
        v76 = *(v72 + 3);
        v298 = *(v72 + 4);
        v297 = v76;
        v296 = v75;
        v295 = v74;
        v77 = *(v72 + 5);
        v78 = *(v72 + 6);
        v79 = *(v72 + 7);
        v302 = *(v72 + 16);
        v301 = v79;
        v300 = v78;
        v299 = v77;
        v303 = *(v72 - 136);
        v80 = *(v72 - 120);
        v81 = *(v72 - 104);
        v82 = *(v72 - 72);
        v306 = *(v72 - 88);
        v307 = v82;
        v304 = v80;
        v305 = v81;
        v83 = *(v72 - 56);
        v84 = *(v72 - 40);
        v85 = *(v72 - 24);
        v311 = *(v72 - 1);
        v309 = v84;
        v310 = v85;
        v308 = v83;
        v86 = v295;
        if (*(a5 + 2))
        {
          sub_1DAA806E4(&v294, &v285);
          sub_1DAA806E4(&v303, &v285);
          v87 = sub_1DAA4BF3C(v86, *(&v86 + 1));
          if (v88)
          {
            v89 = v201;
            sub_1DAC0F278(*(a5 + 7) + *(v312 + 9) * v87, v201);
            v90 = *(v89 + 32);
            v91 = *(v89 + 40);
            sub_1DAC0F2DC(v89);
            if ((v91 & 1) == 0 && v90 == 0.0)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_1DAA806E4(&v294, &v285);
          sub_1DAA806E4(&v303, &v285);
        }

        if (!*(a5 + 2))
        {
          goto LABEL_23;
        }

        v92 = sub_1DAA4BF3C(v86, *(&v86 + 1));
        if (v93)
        {
          v94 = v204;
          sub_1DAC0F278(*(a5 + 7) + *(v312 + 9) * v92, v204);
          v95 = *(v94 + 32);
          v96 = *(v94 + 40);
          sub_1DAC0F2DC(v94);
          if (!*(a5 + 2))
          {
            goto LABEL_35;
          }

          goto LABEL_38;
        }

LABEL_37:
        v96 = 1;
        v95 = 0.0;
        if (!*(a5 + 2))
        {
LABEL_35:
          if (v96)
          {
            goto LABEL_23;
          }

LABEL_48:
          sub_1DAA9B1C8(&v303);
          sub_1DAA9B1C8(&v294);
          if ((a7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_49;
        }

LABEL_38:
        v97 = v304;
        v98 = sub_1DAA4BF3C(v304, *(&v304 + 1));
        if (v99)
        {
          v100 = v200;
          sub_1DAC0F278(*(a5 + 7) + *(v312 + 9) * v98, v200);
          v101 = *(v100 + 32);
          v102 = *(v100 + 40);
          sub_1DAC0F2DC(v100);
          if ((v102 & 1) == 0 && v101 == 0.0)
          {
            break;
          }
        }

        if (!*(a5 + 2))
        {
          break;
        }

        v103 = sub_1DAA4BF3C(v97, *(&v97 + 1));
        if ((v104 & 1) == 0)
        {
          break;
        }

        v105 = v196;
        sub_1DAC0F278(*(a5 + 7) + *(v312 + 9) * v103, v196);
        v106 = *(v105 + 32);
        v107 = *(v105 + 40);
        sub_1DAC0F2DC(v105);
        if (v96)
        {
          LOBYTE(a7) = v208;
          if (v107)
          {
            goto LABEL_23;
          }

          sub_1DAA9B1C8(&v303);
          sub_1DAA9B1C8(&v294);
          if (v202)
          {
            goto LABEL_24;
          }
        }

        else
        {
          LOBYTE(a7) = v208;
          if (v107)
          {
            goto LABEL_48;
          }

          sub_1DAA9B1C8(&v303);
          sub_1DAA9B1C8(&v294);
          if (a7)
          {
            if (v106 >= v95)
            {
              goto LABEL_24;
            }
          }

          else if (v95 >= v106)
          {
            goto LABEL_24;
          }
        }

LABEL_49:
        if (!v209)
        {
          goto LABEL_162;
        }

        v72 = v73 - 136;
        v290 = *(v73 + 5);
        v291 = *(v73 + 6);
        v292 = *(v73 + 7);
        v293 = *(v73 + 16);
        v286 = *(v73 + 1);
        v287 = *(v73 + 2);
        v288 = *(v73 + 3);
        v289 = *(v73 + 4);
        v285 = *v73;
        v108 = *(v73 - 56);
        *(v73 + 4) = *(v73 - 72);
        *(v73 + 5) = v108;
        v109 = *(v73 - 24);
        *(v73 + 6) = *(v73 - 40);
        *(v73 + 7) = v109;
        *(v73 + 16) = *(v73 - 1);
        v110 = *(v73 - 88);
        *(v73 + 2) = *(v73 - 104);
        *(v73 + 3) = v110;
        v111 = *(v73 - 120);
        *v73 = *(v73 - 136);
        *(v73 + 1) = v111;
        *(v72 + 4) = v289;
        *(v72 + 5) = v290;
        *(v72 + 6) = v291;
        *(v72 + 7) = v292;
        *(v72 + 16) = v293;
        *(v72 + 1) = v286;
        *(v72 + 2) = v287;
        *(v72 + 3) = v288;
        *v72 = v285;
        if (!v71)
        {
          goto LABEL_24;
        }

        ++v71;
      }

      LOBYTE(a7) = v208;
      if ((v96 & 1) == 0)
      {
        goto LABEL_48;
      }

LABEL_23:
      sub_1DAA9B1C8(&v303);
      sub_1DAA9B1C8(&v294);
LABEL_24:
      v20 = (v205 + 1);
      v72 = v198 + 136;
      v71 = v197 - 1;
      if (v205 + 1 != v194)
      {
        continue;
      }

      break;
    }

    v20 = v194;
LABEL_61:
    if (v20 < v195)
    {
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v210 = sub_1DAADB818(0, *(v210 + 2) + 1, 1, v210);
    }

    v113 = *(v210 + 2);
    v112 = *(v210 + 3);
    v114 = v113 + 1;
    if (v113 >= v112 >> 1)
    {
      v210 = sub_1DAADB818((v112 > 1), v113 + 1, 1, v210);
    }

    v115 = v210;
    *(v210 + 2) = v114;
    v116 = v115 + 32;
    v117 = &v115[16 * v113 + 32];
    *v117 = v195;
    *(v117 + 1) = v20;
    v198 = *v193;
    if (!v198)
    {
      goto LABEL_166;
    }

    if (!v113)
    {
LABEL_3:
      v19 = v203[1];
      if (v20 >= v19)
      {
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  v205 = v20;
  v197 = v116;
  while (2)
  {
    v118 = v114 - 1;
    if (v114 >= 4)
    {
      v123 = &v116[16 * v114];
      v124 = *(v123 - 8);
      v125 = *(v123 - 7);
      v129 = __OFSUB__(v125, v124);
      v126 = v125 - v124;
      if (v129)
      {
        goto LABEL_141;
      }

      v128 = *(v123 - 6);
      v127 = *(v123 - 5);
      v129 = __OFSUB__(v127, v128);
      v121 = v127 - v128;
      v122 = v129;
      if (v129)
      {
        goto LABEL_142;
      }

      v130 = &v210[16 * v114];
      v132 = *v130;
      v131 = *(v130 + 1);
      v129 = __OFSUB__(v131, v132);
      v133 = v131 - v132;
      if (v129)
      {
        goto LABEL_144;
      }

      v129 = __OFADD__(v121, v133);
      v134 = v121 + v133;
      if (v129)
      {
        goto LABEL_146;
      }

      if (v134 >= v126)
      {
        v152 = &v116[16 * v118];
        v154 = *v152;
        v153 = *(v152 + 1);
        v129 = __OFSUB__(v153, v154);
        v155 = v153 - v154;
        if (v129)
        {
          goto LABEL_155;
        }

        if (v121 < v155)
        {
          v118 = v114 - 2;
        }
      }

      else
      {
LABEL_82:
        if (v122)
        {
          goto LABEL_143;
        }

        v135 = &v210[16 * v114];
        v137 = *v135;
        v136 = *(v135 + 1);
        v138 = __OFSUB__(v136, v137);
        v139 = v136 - v137;
        v140 = v138;
        if (v138)
        {
          goto LABEL_145;
        }

        v141 = &v116[16 * v118];
        v143 = *v141;
        v142 = *(v141 + 1);
        v129 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v129)
        {
          goto LABEL_148;
        }

        if (__OFADD__(v139, v144))
        {
          goto LABEL_150;
        }

        if (v139 + v144 < v121)
        {
          goto LABEL_97;
        }

        if (v121 < v144)
        {
          v118 = v114 - 2;
        }
      }
    }

    else
    {
      if (v114 == 3)
      {
        v119 = *(v210 + 4);
        v120 = *(v210 + 5);
        v129 = __OFSUB__(v120, v119);
        v121 = v120 - v119;
        v122 = v129;
        goto LABEL_82;
      }

      if (v114 < 2)
      {
        goto LABEL_151;
      }

      v145 = &v210[16 * v114];
      v147 = *v145;
      v146 = *(v145 + 1);
      v129 = __OFSUB__(v146, v147);
      v139 = v146 - v147;
      v140 = v129;
LABEL_97:
      if (v140)
      {
        goto LABEL_147;
      }

      v148 = &v116[16 * v118];
      v150 = *v148;
      v149 = *(v148 + 1);
      v129 = __OFSUB__(v149, v150);
      v151 = v149 - v150;
      if (v129)
      {
        goto LABEL_149;
      }

      if (v151 < v139)
      {
        goto LABEL_3;
      }
    }

    if (v118 - 1 >= v114)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v156 = *v203;
    if (!*v203)
    {
      goto LABEL_163;
    }

    v157 = &v116[16 * v118 - 16];
    v158 = *v157;
    v159 = v118;
    v160 = &v116[16 * v118];
    v161 = *(v160 + 1);
    v162 = &v156[136 * *v157];
    v209 = &v156[136 * *v160];
    v163 = &v156[136 * v161];
    v164 = v206;
    sub_1DACB71E4();
    sub_1DACB71F4();
    v165 = v162;
    v166 = v207;
    sub_1DAC09F94(v165, v209, v163, v198, v164, v202, sub_1DAC09CF4);
    v207 = v166;
    if (!v166)
    {

      if (v161 < v158)
      {
        goto LABEL_138;
      }

      v167 = *(v210 + 2);
      if (v159 > v167)
      {
        goto LABEL_139;
      }

      *v157 = v158;
      *(v157 + 1) = v161;
      if (v159 >= v167)
      {
        goto LABEL_140;
      }

      v168 = v159;
      v114 = v167 - 1;
      memmove(v160, v160 + 16, 16 * (v167 - 1 - v168));
      *(v210 + 2) = v167 - 1;
      v20 = v205;
      a5 = v206;
      LOBYTE(a7) = v208;
      v116 = v197;
      if (v167 <= 2)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC0B750(__int128 **a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *, _OWORD *, __int128 **, uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(__int128 *, __int128 *, uint64_t, void))
{
  v13 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_1DACBA104();
  if (result < v13)
  {
    if (v13 >= -1)
    {
      v15 = result;
      v16 = v13 / 2;
      if (v13 <= 1)
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v17 = sub_1DACB96C4();
        *(v17 + 16) = v16;
      }

      *&v96[0] = v17 + 32;
      *(&v96[0] + 1) = v16;
      sub_1DACB71E4();
      sub_1DACB71F4();
      a5(v96, v94, a1, v15, a2, a3, a4 & 1);

      *(v17 + 16) = 0;

      swift_bridgeObjectRelease_n();
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v13 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v13)
  {
    if (v13 == 1)
    {
    }

    else
    {
      v18 = *a1;
      sub_1DACB71E4();
      sub_1DACB71F4();
      v19 = 0;
      v98 = 1;
      v20 = v18;
      while (2)
      {
        v47 = v20;
        v48 = v19;
        while (1)
        {
          v94[0] = *(v20 + 136);
          v21 = *(v20 + 152);
          v22 = *(v20 + 168);
          v23 = *(v20 + 200);
          v94[3] = *(v20 + 184);
          v94[4] = v23;
          v94[1] = v21;
          v94[2] = v22;
          v24 = *(v20 + 216);
          v25 = *(v20 + 232);
          v26 = *(v20 + 248);
          v95 = *(v20 + 33);
          v94[6] = v25;
          v94[7] = v26;
          v94[5] = v24;
          v27 = *(v20 + 216);
          v28 = *(v20 + 248);
          v91 = *(v20 + 232);
          v92 = v28;
          v93 = *(v20 + 33);
          v29 = *(v20 + 152);
          v30 = *(v20 + 184);
          v87 = *(v20 + 168);
          v88 = v30;
          v89 = *(v20 + 200);
          v90 = v27;
          v85 = *(v20 + 136);
          v86 = v29;
          v96[0] = *v20;
          v31 = v20[1];
          v32 = v20[2];
          v33 = v20[4];
          v96[3] = v20[3];
          v96[4] = v33;
          v96[1] = v31;
          v96[2] = v32;
          v34 = v20[5];
          v35 = v20[6];
          v36 = v20[7];
          v97 = *(v20 + 16);
          v96[6] = v35;
          v96[7] = v36;
          v96[5] = v34;
          v37 = v20[7];
          v82 = v20[6];
          v83 = v37;
          v84 = *(v20 + 16);
          v38 = v20[3];
          v78 = v20[2];
          v79 = v38;
          v39 = v20[5];
          v80 = v20[4];
          v81 = v39;
          v40 = v20[1];
          v76 = *v20;
          v77 = v40;
          sub_1DAA806E4(v94, &v67);
          sub_1DAA806E4(v96, &v67);
          v41 = a6(&v85, &v76, a2, a4 & 1);
          if (v6)
          {
            v64 = v82;
            v65 = v83;
            v66 = v84;
            v60 = v78;
            v61 = v79;
            v62 = v80;
            v63 = v81;
            v58 = v76;
            v59 = v77;
            sub_1DAA9B1C8(&v58);
            v73 = v91;
            v74 = v92;
            v75 = v93;
            v69 = v87;
            v70 = v88;
            v71 = v89;
            v72 = v90;
            v67 = v85;
            v68 = v86;
            sub_1DAA9B1C8(&v67);
            swift_bridgeObjectRelease_n();
          }

          v42 = v41;
          v64 = v82;
          v65 = v83;
          v66 = v84;
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v63 = v81;
          v58 = v76;
          v59 = v77;
          sub_1DAA9B1C8(&v58);
          v73 = v91;
          v74 = v92;
          v75 = v93;
          v69 = v87;
          v70 = v88;
          v71 = v89;
          v72 = v90;
          v67 = v85;
          v68 = v86;
          result = sub_1DAA9B1C8(&v67);
          if ((v42 & 1) == 0)
          {
            break;
          }

          if (!v18)
          {
            goto LABEL_26;
          }

          v55 = *(v20 + 232);
          v56 = *(v20 + 248);
          v51 = *(v20 + 168);
          v52 = *(v20 + 184);
          v53 = *(v20 + 200);
          v54 = *(v20 + 216);
          v49 = *(v20 + 136);
          v50 = *(v20 + 152);
          v43 = v20[5];
          *(v20 + 200) = v20[4];
          *(v20 + 216) = v43;
          v44 = v20[7];
          *(v20 + 232) = v20[6];
          *(v20 + 248) = v44;
          v45 = *v20;
          *(v20 + 152) = v20[1];
          v46 = v20[3];
          *(v20 + 168) = v20[2];
          v57 = *(v20 + 33);
          *(v20 + 33) = *(v20 + 16);
          *(v20 + 184) = v46;
          *(v20 + 136) = v45;
          v20[4] = v53;
          v20[5] = v54;
          v20[6] = v55;
          v20[7] = v56;
          *(v20 + 16) = v57;
          v20[2] = v51;
          v20[3] = v52;
          *v20 = v49;
          v20[1] = v50;
          if (!v19)
          {
            break;
          }

          v20 = (v20 - 136);
          ++v19;
        }

        if (v98 + 1 != v13)
        {
          ++v98;
          v20 = (v47 + 136);
          v19 = v48 - 1;
          continue;
        }

        break;
      }

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {

    return swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1DAC0BBFC(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a3;
  v5 = sub_1DACB7664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = v11;
  v31 = v9;
  v32 = v10;
  sub_1DACB71E4();
  sub_1DACB7614();
  sub_1DAA642D8();
  v12 = sub_1DACB9B34();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v8, v5);

  v31 = v12;
  v32 = v14;
  sub_1DACB7644();
  sub_1DACB9B34();
  v15(v8, v5);

  v28 = sub_1DACB93B4();
  v29 = v16;

  v31 = v27;
  v32 = v26;
  sub_1DACB71E4();
  sub_1DACB7614();
  v17 = sub_1DACB9B34();
  v19 = v18;
  v15(v8, v5);

  v31 = v17;
  v32 = v19;
  sub_1DACB7644();
  sub_1DACB9B34();
  v15(v8, v5);

  v20 = sub_1DACB93B4();
  v22 = v21;

  if (v30)
  {
    if (v20 != v28 || v22 != v29)
    {
LABEL_8:
      v23 = sub_1DACBA174();
      goto LABEL_9;
    }
  }

  else if (v28 != v20 || v29 != v22)
  {
    goto LABEL_8;
  }

  v23 = 0;
LABEL_9:

  return v23 & 1;
}

uint64_t sub_1DAC0BEB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    swift_retain_n();
    v11 = MEMORY[0x1E69E7CC0];
LABEL_93:
    __dst = *a1;
    if (*a1)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  swift_retain_n();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v164 = a4;
  while (1)
  {
    v12 = v10;
    v13 = (v10 + 1);
    if ((v10 + 1) >= v8)
    {
      v63 = (v10 + 1);
    }

    else
    {
      v14 = *a3;
      v15 = *a3 + 136 * v13;
      v241 = *v15;
      v16 = *(v15 + 16);
      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v245 = *(v15 + 64);
      v244 = v18;
      v243 = v17;
      v242 = v16;
      v19 = *(v15 + 80);
      v20 = *(v15 + 96);
      v21 = *(v15 + 112);
      v249 = *(v15 + 128);
      v248 = v21;
      v247 = v20;
      v246 = v19;
      v22 = *(v15 + 112);
      v238 = *(v15 + 96);
      v239 = v22;
      v240 = *(v15 + 128);
      v23 = *(v15 + 48);
      v234 = *(v15 + 32);
      v235 = v23;
      v24 = *(v15 + 64);
      v237 = *(v15 + 80);
      v236 = v24;
      v25 = *v15;
      v233 = *(v15 + 16);
      v232 = v25;
      v26 = (v14 + 136 * v12);
      v250 = *v26;
      v27 = v26[1];
      v28 = v26[2];
      v29 = v26[4];
      v253 = v26[3];
      v254 = v29;
      v251 = v27;
      v252 = v28;
      v30 = v26[5];
      v31 = v26[6];
      v32 = v26[7];
      v258 = *(v26 + 16);
      v256 = v31;
      v257 = v32;
      v255 = v30;
      v33 = v26[7];
      v229 = v26[6];
      v230 = v33;
      v231 = *(v26 + 16);
      v34 = v26[3];
      v225 = v26[2];
      v226 = v34;
      v35 = v26[4];
      v228 = v26[5];
      v227 = v35;
      v36 = *v26;
      v224 = v26[1];
      v223 = v36;
      sub_1DAA806E4(&v241, &v214);
      sub_1DAA806E4(&v250, &v214);
      v37 = sub_1DAC0BBFC(&v232, &v223, a6 & 1);
      if (v7)
      {
LABEL_104:
        v212 = v230;
        v213 = v231;
        v207 = v225;
        v208 = v226;
        v210 = v228;
        v211 = v229;
        v209 = v227;
        v205 = v223;
        v206 = v224;
        sub_1DAA9B1C8(&v205);
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v216 = v234;
        v217 = v235;
        v219 = v237;
        v218 = v236;
        v215 = v233;
        v214 = v232;
        sub_1DAA9B1C8(&v214);
LABEL_105:
      }

      v38 = v37;
      v212 = v230;
      v213 = v231;
      v207 = v225;
      v208 = v226;
      v210 = v228;
      v211 = v229;
      v209 = v227;
      v205 = v223;
      v206 = v224;
      sub_1DAA9B1C8(&v205);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v219 = v237;
      v218 = v236;
      v215 = v233;
      v214 = v232;
      sub_1DAA9B1C8(&v214);
      v39 = v12 + 2;
      if ((v12 + 2) >= v8)
      {
        v63 = (v12 + 2);
        if (v38)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __dst = v12;
        v40 = v14 + 136 * v12 + 272;
        while (1)
        {
          v41 = v39;
          v194[0] = *v40;
          v42 = *(v40 + 16);
          v43 = *(v40 + 32);
          v44 = *(v40 + 64);
          v194[3] = *(v40 + 48);
          v194[4] = v44;
          v194[1] = v42;
          v194[2] = v43;
          v45 = *(v40 + 80);
          v46 = *(v40 + 96);
          v47 = *(v40 + 112);
          v195 = *(v40 + 128);
          v194[6] = v46;
          v194[7] = v47;
          v194[5] = v45;
          v48 = *(v40 + 112);
          v191 = *(v40 + 96);
          v192 = v48;
          v193 = *(v40 + 128);
          v49 = *(v40 + 48);
          v187 = *(v40 + 32);
          v188 = v49;
          v50 = *(v40 + 80);
          v189 = *(v40 + 64);
          v190 = v50;
          v51 = *(v40 + 16);
          v185 = *v40;
          v186 = v51;
          v196 = *(v40 - 136);
          v52 = *(v40 - 120);
          v53 = *(v40 - 104);
          v54 = *(v40 - 72);
          v199 = *(v40 - 88);
          v200 = v54;
          v197 = v52;
          v198 = v53;
          v55 = *(v40 - 56);
          v56 = *(v40 - 40);
          v57 = *(v40 - 24);
          v204 = *(v40 - 8);
          v202 = v56;
          v203 = v57;
          v201 = v55;
          v58 = *(v40 - 56);
          v59 = *(v40 - 24);
          v182 = *(v40 - 40);
          v183 = v59;
          v184 = *(v40 - 8);
          v60 = *(v40 - 120);
          v61 = *(v40 - 88);
          v178 = *(v40 - 104);
          v179 = v61;
          v180 = *(v40 - 72);
          v181 = v58;
          v176 = *(v40 - 136);
          v177 = v60;
          sub_1DAA806E4(v194, v174);
          sub_1DAA806E4(&v196, v174);
          v62 = sub_1DAC0BBFC(&v185, &v176, a6 & 1);
          v172[6] = v182;
          v172[7] = v183;
          v173 = v184;
          v172[2] = v178;
          v172[3] = v179;
          v172[4] = v180;
          v172[5] = v181;
          v172[0] = v176;
          v172[1] = v177;
          sub_1DAA9B1C8(v172);
          v174[6] = v191;
          v174[7] = v192;
          v175 = v193;
          v174[2] = v187;
          v174[3] = v188;
          v174[4] = v189;
          v174[5] = v190;
          v174[0] = v185;
          v174[1] = v186;
          sub_1DAA9B1C8(v174);
          if ((v38 ^ v62))
          {
            break;
          }

          v39 = (v41 + 1);
          v40 += 136;
          if (v8 == v41 + 1)
          {
            v13 = v41;
            v63 = v8;
            goto LABEL_15;
          }
        }

        v63 = v41;
        v13 = v41 - 1;
LABEL_15:
        v12 = __dst;
        if (v38)
        {
LABEL_16:
          if (v63 < v12)
          {
            goto LABEL_127;
          }

          if (v12 <= v13)
          {
            v64 = v12;
            v65 = 136 * v63 - 136;
            v66 = 136 * v64;
            v67 = v63;
            __dst = v64;
            do
            {
              if (v64 != --v67)
              {
                v68 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v69 = v68 + v65;
                v201 = *(v68 + v66 + 80);
                v202 = *(v68 + v66 + 96);
                v203 = *(v68 + v66 + 112);
                v204 = *(v68 + v66 + 128);
                v197 = *(v68 + v66 + 16);
                v198 = *(v68 + v66 + 32);
                v199 = *(v68 + v66 + 48);
                v200 = *(v68 + v66 + 64);
                v196 = *(v68 + v66);
                memmove((v68 + v66), (v68 + v65), 0x88uLL);
                *(v69 + 80) = v201;
                *(v69 + 96) = v202;
                *(v69 + 112) = v203;
                *(v69 + 128) = v204;
                *(v69 + 16) = v197;
                *(v69 + 32) = v198;
                *(v69 + 48) = v199;
                *(v69 + 64) = v200;
                *v69 = v196;
              }

              ++v64;
              v65 -= 136;
              v66 += 136;
            }

            while (v64 < v67);
            v12 = __dst;
          }
        }
      }
    }

    v70 = a3[1];
    if (v63 >= v70)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v63, v12))
    {
      goto LABEL_123;
    }

    if (v63 - v12 >= a4)
    {
      goto LABEL_136;
    }

    v71 = &v12[a4];
    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:

      __break(1u);
LABEL_129:

      __break(1u);
      goto LABEL_130;
    }

    if (v71 >= v70)
    {
      v71 = a3[1];
    }

    if (v71 < v12)
    {
      goto LABEL_126;
    }

    if (v63 == v71)
    {
LABEL_136:
      if (v63 < v12)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v122 = *a3;
      v123 = *a3 + 136 * v63;
      v124 = &v12[-v63 + 1];
      v167 = v71;
      do
      {
        __dst = v124;
        v125 = v123;
        while (1)
        {
          v241 = *v123;
          v126 = *(v123 + 16);
          v127 = *(v123 + 32);
          v128 = *(v123 + 48);
          v245 = *(v123 + 64);
          v244 = v128;
          v243 = v127;
          v242 = v126;
          v129 = *(v123 + 80);
          v130 = *(v123 + 96);
          v131 = *(v123 + 112);
          v249 = *(v123 + 128);
          v248 = v131;
          v247 = v130;
          v246 = v129;
          v132 = *(v123 + 112);
          v238 = *(v123 + 96);
          v239 = v132;
          v240 = *(v123 + 128);
          v133 = *(v123 + 48);
          v234 = *(v123 + 32);
          v235 = v133;
          v134 = *(v123 + 64);
          v237 = *(v123 + 80);
          v236 = v134;
          v135 = *v123;
          v233 = *(v123 + 16);
          v232 = v135;
          v250 = *(v123 - 136);
          v136 = *(v123 - 120);
          v137 = *(v123 - 104);
          v138 = *(v123 - 72);
          v253 = *(v123 - 88);
          v254 = v138;
          v251 = v136;
          v252 = v137;
          v139 = *(v123 - 56);
          v140 = *(v123 - 40);
          v141 = *(v123 - 24);
          v258 = *(v123 - 8);
          v256 = v140;
          v257 = v141;
          v255 = v139;
          v142 = *(v123 - 56);
          v143 = *(v123 - 24);
          v229 = *(v123 - 40);
          v230 = v143;
          v231 = *(v123 - 8);
          v144 = *(v123 - 120);
          v145 = *(v123 - 88);
          v225 = *(v123 - 104);
          v226 = v145;
          v146 = *(v123 - 72);
          v228 = v142;
          v227 = v146;
          v147 = *(v123 - 136);
          v224 = v144;
          v223 = v147;
          sub_1DAA806E4(&v241, &v214);
          sub_1DAA806E4(&v250, &v214);
          v148 = sub_1DAC0BBFC(&v232, &v223, a6 & 1);
          if (v7)
          {
            goto LABEL_104;
          }

          v149 = v148;
          v212 = v230;
          v213 = v231;
          v207 = v225;
          v208 = v226;
          v210 = v228;
          v211 = v229;
          v209 = v227;
          v205 = v223;
          v206 = v224;
          sub_1DAA9B1C8(&v205);
          v220 = v238;
          v221 = v239;
          v222 = v240;
          v216 = v234;
          v217 = v235;
          v219 = v237;
          v218 = v236;
          v215 = v233;
          v214 = v232;
          sub_1DAA9B1C8(&v214);
          if ((v149 & 1) == 0)
          {
            break;
          }

          if (!v122)
          {
            goto LABEL_129;
          }

          v150 = v123 - 136;
          v201 = *(v123 + 80);
          v202 = *(v123 + 96);
          v203 = *(v123 + 112);
          v204 = *(v123 + 128);
          v197 = *(v123 + 16);
          v198 = *(v123 + 32);
          v199 = *(v123 + 48);
          v200 = *(v123 + 64);
          v196 = *v123;
          v151 = *(v123 - 56);
          *(v123 + 64) = *(v123 - 72);
          *(v123 + 80) = v151;
          v152 = *(v123 - 24);
          *(v123 + 96) = *(v123 - 40);
          *(v123 + 112) = v152;
          *(v123 + 128) = *(v123 - 8);
          v153 = *(v123 - 88);
          *(v123 + 32) = *(v123 - 104);
          *(v123 + 48) = v153;
          v154 = *(v123 - 120);
          *v123 = *(v123 - 136);
          *(v123 + 16) = v154;
          *(v150 + 64) = v200;
          *(v150 + 80) = v201;
          *(v150 + 96) = v202;
          *(v150 + 112) = v203;
          *(v150 + 128) = v204;
          *(v150 + 16) = v197;
          *(v150 + 32) = v198;
          *(v150 + 48) = v199;
          *v150 = v196;
          if (!v124)
          {
            break;
          }

          ++v124;
          v123 -= 136;
        }

        ++v63;
        v123 = v125 + 136;
        v124 = (__dst - 1);
      }

      while (v63 != v167);
      v63 = v167;
      if (v167 < v12)
      {
        goto LABEL_122;
      }
    }

    v166 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAADB818(0, *(v11 + 2) + 1, 1, v11);
    }

    v73 = *(v11 + 2);
    v72 = *(v11 + 3);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v11 = sub_1DAADB818((v72 > 1), v73 + 1, 1, v11);
    }

    *(v11 + 2) = v74;
    v75 = &v11[16 * v73];
    *(v75 + 4) = v12;
    *(v75 + 5) = v63;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v73)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v10 = v166;
    a4 = v164;
    if (v166 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v76 = v74 - 1;
    if (v74 >= 4)
    {
      v81 = &v11[16 * v74 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_109;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_110;
      }

      v88 = &v11[16 * v74];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_112;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_115;
      }

      if (v92 >= v84)
      {
        v110 = &v11[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_121;
        }

        if (v79 < v113)
        {
          v76 = v74 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v74 == 3)
    {
      v77 = *(v11 + 4);
      v78 = *(v11 + 5);
      v87 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      v80 = v87;
LABEL_52:
      if (v80)
      {
        goto LABEL_111;
      }

      v93 = &v11[16 * v74];
      v95 = *v93;
      v94 = *(v93 + 1);
      v96 = __OFSUB__(v94, v95);
      v97 = v94 - v95;
      v98 = v96;
      if (v96)
      {
        goto LABEL_114;
      }

      v99 = &v11[16 * v76 + 32];
      v101 = *v99;
      v100 = *(v99 + 1);
      v87 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v87)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v97, v102))
      {
        goto LABEL_118;
      }

      if (v97 + v102 >= v79)
      {
        if (v79 < v102)
        {
          v76 = v74 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v103 = &v11[16 * v74];
    v105 = *v103;
    v104 = *(v103 + 1);
    v87 = __OFSUB__(v104, v105);
    v97 = v104 - v105;
    v98 = v87;
LABEL_66:
    if (v98)
    {
      goto LABEL_113;
    }

    v106 = &v11[16 * v76];
    v108 = *(v106 + 4);
    v107 = *(v106 + 5);
    v87 = __OFSUB__(v107, v108);
    v109 = v107 - v108;
    if (v87)
    {
      goto LABEL_116;
    }

    if (v109 < v97)
    {
      goto LABEL_3;
    }

LABEL_73:
    v114 = v76 - 1;
    if (v76 - 1 >= v74)
    {
      break;
    }

    v115 = *a3;
    if (!*a3)
    {
      goto LABEL_128;
    }

    v116 = *&v11[16 * v114 + 32];
    v117 = *&v11[16 * v76 + 40];
    v118 = (v115 + 136 * v116);
    v119 = (v115 + 136 * *&v11[16 * v76 + 32]);
    v120 = (v115 + 136 * v117);
    sub_1DACB71F4();
    sub_1DAC06250(v118, v119, v120, __dst, a5, a6 & 1);
    if (v7)
    {
      goto LABEL_105;
    }

    if (v117 < v116)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAC0694C(v11);
    }

    if (v114 >= *(v11 + 2))
    {
      goto LABEL_108;
    }

    v121 = &v11[16 * v114];
    *(v121 + 4) = v116;
    *(v121 + 5) = v117;
    v259 = v11;
    sub_1DAC068C0(v76);
    v11 = v259;
    v74 = *(v259 + 2);
    if (v74 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  v11 = sub_1DAC0694C(v11);
LABEL_95:
  v259 = v11;
  v155 = *(v11 + 2);
  if (v155 < 2)
  {
LABEL_103:
  }

  else
  {
    while (1)
    {
      v156 = *a3;
      if (!*a3)
      {
        break;
      }

      v157 = *&v11[16 * v155];
      v158 = *&v11[16 * v155 + 24];
      v159 = (v156 + 136 * v157);
      v160 = (v156 + 136 * *&v11[16 * v155 + 16]);
      v161 = (v156 + 136 * v158);
      sub_1DACB71F4();
      sub_1DAC06250(v159, v160, v161, __dst, a5, a6 & 1);
      if (v7)
      {
        goto LABEL_103;
      }

      if (v158 < v157)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAC0694C(v11);
      }

      if (v155 - 2 >= *(v11 + 2))
      {
        goto LABEL_120;
      }

      v162 = &v11[16 * v155];
      *v162 = v157;
      *(v162 + 1) = v158;
      v259 = v11;
      sub_1DAC068C0(v155 - 1);
      v11 = v259;
      v155 = *(v259 + 2);
      if (v155 <= 1)
      {
        goto LABEL_103;
      }
    }

LABEL_130:

    __break(1u);
LABEL_131:

    __break(1u);
LABEL_132:

    __break(1u);
LABEL_133:

    __break(1u);
  }

  return result;
}