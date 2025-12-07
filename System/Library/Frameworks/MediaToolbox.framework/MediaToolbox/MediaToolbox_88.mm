uint64_t sub_1969C3DB0@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x440] = *(a1 + 8 * v3);
  LODWORD(STACK[0x994]) = 1861446106;
  STACK[0x998] = &STACK[0x588];
  return (*(a1 + 8 * ((((((45 * (v3 ^ 0x4C) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1 | (4 * (((((45 * (v3 ^ 0x4C) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1))) ^ (45 * (v3 ^ 0x14C)))))();
}

uint64_t sub_1969C3E48@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v4) = (v1 - 32) ^ *(v5 + v4);
  v8 = v4 + 1 > 0x6930A80A || v4 + v2 >= v3;
  return (*(v6 + 8 * ((2 * v8) | (16 * v8) | v1)))();
}

uint64_t sub_1969C3EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_1969C3F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, int a32, int a33)
{
  v35 = *(v34 - 196);
  v36 = a33 - ((((v35 - 3403) | 0xE20) - 689145815) & (2 * a30)) != 2144628688;
  return (*(v33 + 8 * (v36 | (32 * v36) | v35)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1969C3FB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  *v10 = a5;
  if (a2)
  {
    v12 = a10 == 97900969;
  }

  else
  {
    v12 = 1;
  }

  v14 = !v12 && a3 != 0;
  return (*(v11 + 8 * ((v14 * ((a1 + 207) ^ 0x135C)) ^ a1)))();
}

uint64_t sub_1969C40C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0xA48] = v2;
  STACK[0xA50] = a1;
  return (*(STACK[0x248] + 8 * (((v1 + 484 + 3 * (v1 ^ 0xC67) + 1556) * (v3 > 9)) ^ v1)))();
}

uint64_t sub_1969C4160(uint64_t a1, char a2, int a3)
{
  v9 = v4 + 2;
  v10 = (v6 - 2);
  *v10 = (v9 ^ v7) * (v9 + 17);
  *(v10 - 1) = (a2 ^ v9) * (v9 + 18);
  return (*(v8 + 8 * (((v5 == 2) * a3) ^ v3)))(a1);
}

uint64_t sub_1969C4214(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, unsigned int a24, int a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v308 = a22 ^ 0x99;
  HIDWORD(a19) = 0;
  v58 = a3;
  v59 = __ROR8__((a17 + a3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v60 = __ROR8__(v59 ^ 0x49E9423B6F16E7D2, 8);
  v59 ^= 0xE1AFA7ACF6E0968ELL;
  v61 = (v60 + v59) ^ 0xE49D77DF873DBF7ELL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = ((a17 + a3) << a14) & 0x38;
  v64 = (__ROR8__(v61, 8) + v62) ^ 0xF5A2F1B9B5D0B209;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x5963B6C555D97F1FLL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x61459D2AF01F24F7;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x64C31C027084DE6CLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x1A2AEBE44253AF03;
  v73 = ((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0xAB3042D228875C41) >> v63;
  v74 = __ROR8__((a17 + a3 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = (v74 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v76 = __ROR8__((v75 + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2) << 56) + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2uLL) >> 8)) ^ 0xE49D77DF873DBF7ELL, 8);
  v77 = (v75 + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2) << 56) + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2uLL) >> 8)) ^ 0xE49D77DF873DBF7ELL ^ __ROR8__(v75, 61);
  v78 = (v77 + v76) ^ 0xF5A2F1B9B5D0B209;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (v79 + __ROR8__(v78, 8)) ^ 0x5963B6C555D97F1FLL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (v81 + __ROR8__(v80, 8)) ^ 0x61459D2AF01F24F7;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (v83 + __ROR8__(v82, 8)) ^ 0x64C31C027084DE6CLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x1A2AEBE44253AF03;
  v87 = ((v86 ^ __ROR8__(v85, 61)) + __ROR8__(v86, 8)) ^ 0xAB3042D228875C41;
  v88 = v87 >> v63;
  v89 = v73 + (v87 << (v63 ^ 0x3Au) << 6);
  v90 = __ROR8__((a17 + a3 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v91 = (v90 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v92 = (__ROR8__((v90 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v91) ^ 0xE49D77DF873DBF7ELL;
  v94 = __ROR8__(v91, 61);
  v93 = v92 ^ v94;
  v95 = ((v92 ^ v94) + (v92 << 56) + (v92 >> 8)) ^ 0xF5A2F1B9B5D0B209;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = (v96 + __ROR8__(v95, 8)) ^ 0x5963B6C555D97F1FLL;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (v98 + __ROR8__(v97, 8)) ^ 0x61459D2AF01F24F7;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (v100 + __ROR8__(v99, 8)) ^ 0x64C31C027084DE6CLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = v102 + __ROR8__(v101, 8);
  v104 = v88 + ((((v103 ^ __ROR8__(v102, 61) ^ 0x22AEBE44253AF03) + __ROR8__(v103 ^ 0x1A2AEBE44253AF03, 8)) ^ 0x33042D228875C41) << (v63 ^ 0x3Au) << 6);
  v105 = *(a58 + (BYTE3(v89) ^ 0x36)) ^ (BYTE3(v89) - ((v89 >> 23) & 0x96) - 53) ^ 0x53 | ((*(a56 + (v73 ^ 0x45)) ^ 0x41) << 24) | ((*(a57 + (BYTE1(v89) ^ 0x67)) ^ 0xEF) << 16) | (((*(a55 + (BYTE2(v89) ^ 0xB5)) - 65) ^ 0xEC) << 8);
  v106 = *(a58 + (HIBYTE(v89) ^ 0x23)) ^ (HIBYTE(v89) - ((2 * HIBYTE(v89)) & 0x96) - 53) ^ 0xF9 | ((*(a56 + (BYTE4(v89) ^ 0xAELL)) ^ 0x79) << 24) | ((*(a57 + (BYTE5(v89) ^ 0x95)) ^ 0x66) << 16) | (((*(a55 + (BYTE6(v89) ^ 0x61)) - 65) ^ 0x6A) << 8);
  v298 = a3 | 0xELL;
  v299 = a3 | 0xALL;
  v300 = a3 | 9;
  v295 = a3 | 7;
  v107 = *(a17 + v295);
  v294 = a3 | 0xDLL;
  v296 = a3 | 5;
  v108 = a3;
  v301 = a3 | 8;
  v293 = a3 | 6;
  v290 = a3 | 4;
  v297 = a3 | 0xFLL;
  v288 = a3 | 0xBLL;
  v292 = a3 | 0xCLL;
  v289 = a3 | 3;
  v287 = a3 | 2;
  v291 = a3 | 1;
  LODWORD(v73) = (*(a58 + (*(a17 + (v58 | 3)) ^ 0x19)) ^ (*(a17 + (v58 | 3)) - ((2 * *(a17 + (v58 | 3))) & 0x96) - 53) ^ 0xBF) & 0xFFFF00FF | (((*(a55 + (*(a17 + v287) ^ 0xD7)) - 65) ^ 0x2E) << 8) | ((*(a57 + (*(a17 + v291) ^ 0x2DLL)) ^ 0x5E) << 16) | ((*(a56 + (*(a17 + a3) ^ 0xALL)) ^ 1) << 24);
  LODWORD(v278) = *(a58 + (*(a17 + (v58 | 0xB)) ^ 0xCDLL)) ^ (*(a17 + (v58 | 0xB)) - ((2 * *(a17 + (v58 | 0xB))) & 0x96) - 53) ^ 0x6B | (((*(a55 + (*(a17 + v299) ^ 0xCBLL)) - 65) ^ 0xB2) << 8) | ((*(a57 + (*(a17 + v300) ^ 0x1ALL)) ^ 0x2C) << 16) | ((*(a56 + (*(a17 + v301) ^ 0x18)) ^ 0x12) << 24);
  HIDWORD(v278) = (*(a58 + (v107 ^ 0xE6)) ^ (v107 - ((2 * v107) & 0x96) - 53) ^ 0x38) & 0xFFFF00FF | ((*(a57 + (*(a17 + v296) ^ 0xD3)) ^ 0xF3) << 16) | ((*(a55 + (*(a17 + v293) ^ 0x9FLL)) - 65) << 8) | ((*(a56 + (*(a17 + v290) ^ 0x61)) ^ 0xFFFFFFBF) << 24);
  HIDWORD(v279) = *(a58 + (BYTE3(v104) ^ 0xBBLL)) ^ (BYTE3(v104) - ((v104 >> 23) & 0x96) - 53) ^ 8 | ((*(a56 + (v88 ^ 0xE8)) ^ 0x2A) << 24) | ((*(a57 + (BYTE1(v104) ^ 0x7ELL)) ^ 0x53) << 16) | (((*(a55 + (BYTE2(v104) ^ 0x7CLL)) - 65) ^ 0x99) << 8);
  v280 = __PAIR64__(v105, v106);
  LODWORD(v76) = v106 ^ HIDWORD(v278) ^ 0x44413C96;
  v109 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SHIDWORD(a13)) - 4;
  LODWORD(v107) = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v107 ^ 4;
  LODWORD(v94) = v107 ^ 0x388163F0;
  LODWORD(v103) = v94 >> 4;
  LODWORD(v107) = HIDWORD(v279) ^ v278 ^ 0xE827DFBC;
  v110 = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v110 ^ 4;
  LODWORD(v94) = v110 ^ 0x388163F0;
  v111 = v94 >> 4;
  v112 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 128) - 8;
  v113 = *&v112[4 * ((*(a58 + (BYTE3(v104) ^ 0xBBLL)) ^ (BYTE3(v104) - ((v104 >> 23) & 0x96) - 53)) ^ 8 ^ *(a58 + (*(a17 + (v58 | 0xB)) ^ 0xCDLL)) ^ (*(a17 + (v58 | 0xB)) - ((2 * *(a17 + (v58 | 0xB))) & 0x96) - 53) ^ 0x6B ^ 0xBC)];
  HIDWORD(v94) = v113 ^ 0x1D7;
  LODWORD(v94) = v113 ^ 0x3A27CC00;
  v114 = (v94 >> 9) + 133851514 - ((2 * (v94 >> 9)) & 0xFF4D2F4);
  HIDWORD(v277) = v73 ^ 0x8A;
  LODWORD(v73) = v105 ^ v73 ^ 0x865E118B;
  v115 = *&v112[4 * v73];
  HIDWORD(v94) = v115 ^ 0x1D7;
  LODWORD(v94) = v115 ^ 0x3A27CC00;
  v116 = (v94 >> 9) ^ v103;
  LODWORD(v279) = *(a58 + (HIBYTE(v104) ^ 3)) ^ (HIBYTE(v104) - ((2 * HIBYTE(v104)) & 0x96) - 53) ^ 0xCE | ((*(a56 + (BYTE4(v104) ^ 0xD0)) ^ 0xFFFFFFEF) << 24) | ((*(a57 + (BYTE5(v104) ^ 0xA2)) ^ 0x14) << 16) | (((*(a55 + (BYTE6(v104) ^ 0x95)) - 65) ^ 0xC) << 8);
  LODWORD(v277) = (*(a58 + (*(a17 + (v58 | 0xF)) ^ 0x23)) ^ (*(a17 + (v58 | 0xF)) - ((2 * *(a17 + (v58 | 0xF))) & 0x96) - 53) ^ 0x85 | (((*(a55 + (*(a17 + v298) ^ 0x64)) - 65) ^ 0x24) << 8) | ((*(a57 + (*(a17 + v294) ^ 0x64)) ^ 0x1F) << 16) | ((*(a56 + (*(a17 + v292) ^ 0xD8)) ^ 0x1B) << 24)) ^ 0xC6;
  LODWORD(v104) = *&v109[4 * (((*(a58 + (*(a17 + (v58 | 0xF)) ^ 0x23)) ^ (*(a17 + (v58 | 0xF)) - ((2 * *(a17 + (v58 | 0xF))) & 0x96) - 53) ^ 0x85 | (((*(a55 + (*(a17 + v298) ^ 0x64)) - 65) ^ 0x24) << 8)) ^ 0xC6 ^ (*(a58 + (HIBYTE(v104) ^ 3)) ^ (HIBYTE(v104) - ((2 * HIBYTE(v104)) & 0x96) - 53) ^ 0xCE | (((*(a55 + (BYTE6(v104) ^ 0x95)) - 65) ^ 0xC) << 8)) ^ 0x256B) >> 8)];
  HIDWORD(v94) = v104 ^ 4;
  LODWORD(v94) = v104 ^ 0x388163F0;
  v117 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 87) - 8;
  LODWORD(v103) = (v94 >> 4) ^ *&v117[4 * BYTE3(v76)] ^ v114;
  v118 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 277) - 4;
  LODWORD(v104) = (v116 + 871584170 - ((2 * v116) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v107)];
  LODWORD(v104) = (v104 + 133851514 - ((2 * v104) & 0xFF4D2F4)) ^ *&v117[4 * ((v277 ^ v279 ^ 0xBC3E256B) >> 24)];
  v119 = *&v112[4 * (*(a58 + (*(a17 + (v58 | 0xF)) ^ 0x23)) ^ (*(a17 + (v58 | 0xF)) - ((2 * *(a17 + (v58 | 0xF))) & 0x96) - 53) ^ 0x85 ^ 0xC6 ^ v279 ^ 0x6B)];
  HIDWORD(v94) = v119 ^ 0x1D7;
  LODWORD(v94) = v119 ^ 0x3A27CC00;
  v120 = v94 >> 9;
  v121 = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v121 ^ 4;
  LODWORD(v94) = v121 ^ 0x388163F0;
  LODWORD(v107) = (v94 >> 4) ^ *&v117[4 * BYTE3(v107)];
  v122 = *&v112[4 * v76];
  HIDWORD(v94) = v122 ^ 0x1D7;
  LODWORD(v94) = v122 ^ 0x3A27CC00;
  LODWORD(v107) = v107 ^ (v120 + 133851514 - ((2 * v120) & 0xFF4D2F4));
  v123 = *&v118[4 * (((v277 ^ v279) >> 16) ^ 0x12)] ^ (v94 >> 9) ^ (v111 + 871584170 - ((2 * v111) & 0x67E6A354));
  v124 = (v123 + 133851514 - ((2 * v123) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v73) = ((v103 ^ 0x719E5F62) + 871584170 - 2 * ((v103 ^ 0x719E5F62) & 0x33F351BE ^ v103 & 0x14)) ^ *&v118[4 * BYTE2(v73)] ^ 0xF9A67046;
  LODWORD(v103) = *&v109[4 * BYTE1(v73)];
  LODWORD(v107) = *&v118[4 * BYTE2(v76)] ^ 0x2CA8B861 ^ (v107 + 871584170 - ((2 * v107) & 0x67E6A354));
  HIDWORD(v94) = v103 ^ 4;
  LODWORD(v94) = v103 ^ 0x388163F0;
  v125 = v104 ^ 0x66911A15;
  LODWORD(v103) = ((v94 >> 4) + 133851514 - ((2 * (v94 >> 4)) & 0xFF4D2F4)) ^ *&v117[4 * ((v104 ^ 0x66911A15) >> 24)];
  LODWORD(v76) = *&v112[4 * v73];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  v126 = (v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354);
  LODWORD(v104) = *&v109[4 * (BYTE1(v104) ^ 0x61)];
  HIDWORD(v94) = v104 ^ 4;
  LODWORD(v94) = v104 ^ 0x388163F0;
  LODWORD(v104) = ((v94 >> 4) + 871584170 - ((2 * (v94 >> 4)) & 0x67E6A354)) ^ *&v118[4 * (BYTE2(v124) ^ 0xBB)];
  LODWORD(v76) = v104 + 133851514 - ((2 * v104) & 0xFF4D2F4);
  LODWORD(v104) = *&v112[4 * v125];
  HIDWORD(v94) = v104 ^ 0x1D7;
  LODWORD(v94) = v104 ^ 0x3A27CC00;
  v124 ^= 0xE2971AC9;
  LODWORD(v104) = *&v117[4 * BYTE3(v107)] ^ *&v118[4 * BYTE2(v73)] ^ (v94 >> 9) ^ (((*&v109[4 * BYTE1(v124)] ^ 0x388163F4u) >> (v88 & 4) >> (v88 & 4 ^ 4)) + ((*&v109[4 * BYTE1(v124)] << 28) ^ 0x40000000));
  LODWORD(v88) = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v88 ^ 4;
  LODWORD(v94) = v88 ^ 0x388163F0;
  LODWORD(v88) = v126 ^ *&v118[4 * BYTE2(v125)] ^ (v94 >> 4);
  v127 = *&v112[4 * v124];
  HIDWORD(v94) = v127 ^ 0x1D7;
  LODWORD(v94) = v127 ^ 0x3A27CC00;
  v128 = (v88 + 133851514 - ((2 * v88) & 0xFF4D2F4)) ^ *&v117[4 * HIBYTE(v124)];
  LODWORD(v88) = *&v118[4 * BYTE2(v107)] ^ (v94 >> 9);
  LODWORD(v107) = *&v112[4 * v107];
  HIDWORD(v94) = v107 ^ 0x1D7;
  LODWORD(v94) = v107 ^ 0x3A27CC00;
  LODWORD(v88) = v88 ^ (v103 + 871584170 - ((2 * v103) & 0x67E6A354));
  BYTE1(v107) = BYTE1(v104) ^ 0x64;
  LODWORD(v103) = *&v112[4 * (v104 ^ 0x98)];
  LODWORD(v73) = *&v117[4 * BYTE3(v73)] ^ (v94 >> 9);
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  LODWORD(v73) = v73 ^ 0xCEDC06E0 ^ v76;
  LOBYTE(v103) = v128 ^ 0xF2;
  v129 = *&v112[4 * (v88 ^ 0x79)];
  LODWORD(v76) = ((v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354)) ^ *&v118[4 * ((v128 ^ 0x108F19F2u) >> 16)];
  HIDWORD(v94) = v129 ^ 0x1D7;
  LODWORD(v94) = v129 ^ 0x3A27CC00;
  v130 = *&v118[4 * (BYTE2(v88) ^ 0x66)] ^ *&v117[4 * ((v128 ^ 0x108F19F2u) >> 24)];
  v131 = (v94 >> 9) + 133851515 + ~((2 * (v94 >> 9)) & 0xFF4D2F4);
  v132 = *&v112[4 * v73];
  HIDWORD(v94) = v132 ^ 0x1D7;
  LODWORD(v94) = v132 ^ 0x3A27CC00;
  v133 = v94 >> 9;
  v134 = *&v109[4 * (BYTE1(v128) ^ 0x62)];
  HIDWORD(v94) = v134 ^ 4;
  LODWORD(v94) = v134 ^ 0x388163F0;
  LODWORD(v104) = v104 ^ 0x34C6E784;
  v135 = v131 ^ *&v117[4 * BYTE3(v104)] ^ (v94 >> 4);
  v136 = *&v109[4 * ((v88 ^ 0xEA79) >> 8)];
  HIDWORD(v94) = v136 ^ 4;
  LODWORD(v94) = v136 ^ 0x388163F0;
  v137 = v94 >> 4;
  LODWORD(v103) = *&v112[4 * v103];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  LODWORD(v103) = v94 >> 9;
  LODWORD(v107) = *&v109[4 * (BYTE1(v107) ^ 0xF8)];
  HIDWORD(v94) = v107 ^ 4;
  LODWORD(v94) = v107 ^ 0x388163F0;
  LODWORD(v107) = v130 ^ v133 ^ (v94 >> 4);
  v138 = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v138 ^ 4;
  LODWORD(v94) = v138 ^ 0x388163F0;
  LODWORD(v103) = *&v117[4 * ((v88 ^ 0xEE4AEA79) >> 24)] ^ *&v118[4 * BYTE2(v104)] ^ (v94 >> 4) ^ v103;
  LODWORD(v104) = *&v117[4 * BYTE3(v73)] ^ v137 ^ 0x7A0C571F ^ (v76 + 133851514 - ((2 * v76) & 0xFF4D2F4));
  LODWORD(v76) = *&v112[4 * ((v117[4 * BYTE3(v73)] ^ v137) ^ 0x1F ^ (v76 + 122 - ((2 * v76) & 0xF4)))];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  LODWORD(v73) = (v135 + 871584170 - ((2 * v135) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v73)] ^ 0x6A4C91A5;
  LODWORD(v76) = ((v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354)) ^ *&v118[4 * ~WORD1(v103)];
  v139 = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v139 ^ 4;
  LODWORD(v94) = v139 ^ 0x388163F0;
  v140 = v94 >> 4;
  v141 = *&v112[4 * v73];
  HIDWORD(v94) = v141 ^ 0x1D7;
  LODWORD(v94) = v141 ^ 0x3A27CC00;
  LOBYTE(v138) = v103 ^ 0xEC;
  v142 = (v140 + 133851514 - ((2 * v140) & 0xFF4D2F4)) ^ *&v117[4 * ((v103 ^ 0x7ED345EC) >> 24)];
  v143 = *&v109[4 * ((v103 ^ 0x45EC) >> 8)];
  LODWORD(v103) = *&v118[4 * (BYTE2(v107) ^ 0xE4)] ^ *&v117[4 * BYTE3(v104)] ^ 0x3FCD4B97 ^ (v94 >> 9);
  HIDWORD(v94) = v143 ^ 4;
  LODWORD(v94) = v143 ^ 0x388163F0;
  LODWORD(v103) = (v94 >> 4) + v103 - 2 * ((v94 >> 4) & v103);
  LODWORD(v107) = v107 ^ 0x32C89EAF;
  v144 = *&v112[4 * v107];
  HIDWORD(v94) = v144 ^ 0x1D7;
  LODWORD(v94) = v144 ^ 0x3A27CC00;
  v145 = v94 >> 9;
  v146 = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v146 ^ 4;
  LODWORD(v94) = v146 ^ 0x388163F0;
  v147 = v94 >> 4;
  v148 = *&v112[4 * v138];
  HIDWORD(v94) = v148 ^ 0x1D7;
  LODWORD(v94) = v148 ^ 0x3A27CC00;
  v149 = *&v109[4 * BYTE1(v107)];
  LODWORD(v104) = *&v118[4 * BYTE2(v104)] ^ (v94 >> 9);
  HIDWORD(v94) = v149 ^ 4;
  LODWORD(v94) = v149 ^ 0x388163F0;
  v150 = *&v117[4 * BYTE3(v73)] ^ v104 ^ (v94 >> 4);
  LODWORD(v76) = *&v117[4 * BYTE3(v107)] ^ v147 ^ 0x43C3A22E ^ (v76 + 133851514 - ((2 * v76) & 0xFF4D2F4));
  LODWORD(v104) = *&v118[4 * BYTE2(v73)] ^ v145 ^ 0x84E5DF94 ^ (v142 + 871584170 - ((2 * v142) & 0x67E6A354));
  LODWORD(v73) = *&v109[4 * (BYTE1(v150) ^ 0xCD)];
  HIDWORD(v94) = v73 ^ 4;
  LODWORD(v94) = v73 ^ 0x388163F0;
  LODWORD(v107) = v94 >> 4;
  LODWORD(v73) = v150 ^ 0x8016B667;
  v151 = *&v112[4 * (v150 ^ 0x67)];
  HIDWORD(v94) = v151 ^ 0x1D7;
  LODWORD(v94) = v151 ^ 0x3A27CC00;
  v152 = v94 >> 9;
  v153 = v107 + 133851514 - ((2 * v107) & 0xFF4D2F4);
  LODWORD(v107) = v103 ^ 0xD37AB12A;
  v154 = *&v109[4 * ((v103 ^ 0xB12A) >> 8)];
  LODWORD(v103) = v153 ^ *&v117[4 * BYTE3(v76)];
  HIDWORD(v94) = v154 ^ 4;
  LODWORD(v94) = v154 ^ 0x388163F0;
  v155 = v94 >> 4;
  v156 = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v156 ^ 4;
  LODWORD(v94) = v156 ^ 0x388163F0;
  v157 = (v94 >> 4) ^ v152;
  v158 = *&v112[4 * v76];
  HIDWORD(v94) = v158 ^ 0x1D7;
  LODWORD(v94) = v158 ^ 0x3A27CC00;
  v159 = (v94 >> 9) ^ v155;
  v160 = *&v118[4 * BYTE2(v76)];
  v161 = (-871584170 - (((v160 ^ 0xD4E58995) + 723154539) ^ ((v160 ^ 0xE4D7FBC9) + 455607351) ^ ((v160 ^ 0x3C123F6) - 62989302))) ^ (197423943 - (v160 ^ 0x383722ED));
  v162 = *&v112[4 * v104];
  v163 = (v161 + 871584170 - ((2 * v161) & 0x67E6A354)) ^ v160;
  HIDWORD(v94) = v162 ^ 0x1D7;
  LODWORD(v94) = v162 ^ 0x3A27CC00;
  v164 = v94 >> 9;
  v165 = v157 ^ (v163 + 197423943);
  v166 = *&v112[4 * v107];
  HIDWORD(v94) = v166 ^ 0x1D7;
  LODWORD(v94) = v166 ^ 0x3A27CC00;
  LODWORD(v103) = v103 ^ (v94 >> 9);
  LODWORD(v76) = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v76 ^ 4;
  LODWORD(v94) = v76 ^ 0x388163F0;
  v167 = (v159 + 133851514 - ((2 * v159) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v104)];
  v168 = (((v94 >> 4) ^ v164) + 133851514 - ((2 * ((v94 >> 4) ^ v164)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v104) = *&v118[4 * BYTE2(v104)] ^ 0x1CB27B27 ^ (v103 + 871584170 - ((2 * v103) & 0x67E6A354));
  LODWORD(v103) = *&v118[4 * BYTE2(v73)] ^ 0x94A5192E ^ (v167 + 871584170 - ((2 * v167) & 0x67E6A354));
  LODWORD(v76) = *&v117[4 * BYTE3(v107)] ^ 0x34E62009 ^ (v165 + 133851514 - ((2 * v165) & 0xFF4D2F4));
  LODWORD(v73) = *&v112[4 * (v118[4 * BYTE2(v73)] ^ 0x2E ^ (v167 - 86 - ((2 * v167) & 0x54)))];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  v169 = v94 >> 9;
  LODWORD(v73) = *&v112[4 * v76];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  v170 = v94 >> 9;
  LODWORD(v73) = *&v112[4 * v104];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  v171 = v94 >> 9;
  LODWORD(v73) = v168 + 871584170 - ((2 * v168) & 0x67E6A354);
  v172 = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v172 ^ 4;
  LODWORD(v94) = v172 ^ 0x388163F0;
  LODWORD(v73) = *&v118[4 * BYTE2(v107)] ^ 0xC8FE04D7 ^ v73;
  LODWORD(v107) = (v94 >> 4) ^ v171;
  v173 = *&v112[4 * v73];
  HIDWORD(v94) = v173 ^ 0x1D7;
  LODWORD(v94) = v173 ^ 0x3A27CC00;
  LODWORD(v107) = (v107 + 133851515 + ~((2 * v107) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v103)];
  LODWORD(v88) = (v170 + 871584170 - ((2 * v170) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v103)];
  v174 = ((v94 >> 9) + 133851514 - ((2 * (v94 >> 9)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v76)];
  v175 = *&v109[4 * BYTE1(v104)];
  v176 = v88 + 133851514 - ((2 * v88) & 0xFF4D2F4);
  HIDWORD(v94) = v175 ^ 4;
  LODWORD(v94) = v175 ^ 0x388163F0;
  v177 = (((v94 >> 4) ^ v169) + 133851514 - ((2 * ((v94 >> 4) ^ v169)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v88) = v107 + 871584170 - ((2 * v107) & 0x67E6A354);
  LODWORD(v107) = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v107 ^ 4;
  LODWORD(v94) = v107 ^ 0x388163F0;
  LODWORD(v107) = v94 >> 4;
  LODWORD(v103) = *&v109[4 * BYTE1(v103)];
  HIDWORD(v94) = v103 ^ 4;
  LODWORD(v94) = v103 ^ 0x388163F0;
  v178 = v94 >> 4;
  LODWORD(v103) = *&v117[4 * BYTE3(v104)] ^ v107 ^ 0xE46FF14D ^ v176;
  LODWORD(v107) = *&v118[4 * BYTE2(v76)] ^ 0x53836494 ^ (v177 + 871584170 - ((2 * v177) & 0x67E6A354));
  LODWORD(v76) = *&v112[4 * (v118[4 * BYTE2(v76)] ^ 0x94 ^ (v177 - 86 - ((2 * v177) & 0x54)))];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  v179 = v94 >> 9;
  LODWORD(v76) = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v76 ^ 4;
  LODWORD(v94) = v76 ^ 0x388163F0;
  v180 = v94 >> 4;
  LODWORD(v104) = *&v118[4 * BYTE2(v104)] ^ v178 ^ 0x87CF1B64 ^ (v174 + 871584170 - ((2 * v174) & 0x67E6A354));
  LODWORD(v76) = *&v112[4 * v104];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  LODWORD(v76) = *&v118[4 * BYTE2(v73)] ^ 0xF8042EF4 ^ v88;
  LODWORD(v73) = (v94 >> 9) ^ *&v118[4 * BYTE2(v76)] ^ (v180 + 871584170 - ((2 * v180) & 0x67E6A354));
  v181 = (v179 + 871584170 - ((2 * v179) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v103)];
  LODWORD(v88) = *&v109[4 * BYTE1(v103)];
  HIDWORD(v94) = v88 ^ 4;
  LODWORD(v94) = v88 ^ 0x388163F0;
  v182 = v94 >> 4;
  LODWORD(v88) = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v88 ^ 4;
  LODWORD(v94) = v88 ^ 0x388163F0;
  v183 = v94 >> 4;
  LODWORD(v88) = (v73 + 133851514 - ((2 * v73) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v103)];
  LODWORD(v73) = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v73 ^ 4;
  LODWORD(v94) = v73 ^ 0x388163F0;
  v184 = v94 >> 4;
  LODWORD(v73) = *&v112[4 * v76];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  LODWORD(v73) = v94 >> 9;
  LODWORD(v103) = *&v112[4 * v103];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  v185 = *&v118[4 * BYTE2(v104)];
  LODWORD(v104) = *&v117[4 * BYTE3(v104)] ^ v183 ^ 0xC7FFD924 ^ (v181 + 133851514 - ((2 * v181) & 0xFF4D2F4));
  LODWORD(v73) = v185 ^ *&v117[4 * BYTE3(v107)] ^ v182 ^ 0x441A742D ^ v73;
  LODWORD(v107) = *&v117[4 * BYTE3(v76)] ^ *&v118[4 * BYTE2(v107)] ^ v184 ^ (v94 >> 9) ^ 0x3BD141BD;
  LODWORD(v76) = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v76 ^ 4;
  LODWORD(v94) = v76 ^ 0x388163F0;
  LODWORD(v76) = ((v94 >> 4) + 133851514 - ((2 * (v94 >> 4)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v104)];
  LODWORD(v103) = *&v118[4 * BYTE2(v107)] ^ 0xEB800000 ^ (*&v112[4 * v104] << 23) ^ (((*&v112[4 * v104] >> 9) ^ 0x1D13E6) + 871584170 - ((2 * ((*&v112[4 * v104] >> 9) ^ 0x1D13E6)) & 0xE6A354));
  v186 = *&v112[4 * v73];
  HIDWORD(v94) = v186 ^ 0x1D7;
  LODWORD(v94) = v186 ^ 0x3A27CC00;
  LODWORD(v76) = (v94 >> 9) ^ *&v118[4 * ((v88 ^ 0xC3A0B73E) >> 16)] ^ (v76 + 871584170 - ((2 * v76) & 0x67E6A354));
  v187 = v103 + 133851514 - ((2 * v103) & 0xFF4D2F4);
  LODWORD(v103) = *&v112[4 * v107];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  LODWORD(v103) = (v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354);
  v188 = *&v109[4 * ((v88 ^ 0xB73E) >> 8)];
  HIDWORD(v94) = v188 ^ 4;
  LODWORD(v94) = v188 ^ 0x388163F0;
  LODWORD(v103) = (v94 >> 4) ^ *&v118[4 * BYTE2(v104)] ^ v103;
  LODWORD(v103) = (v103 + 133851514 - ((2 * v103) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v107) = *&v117[4 * BYTE3(v107)] ^ *&v118[4 * BYTE2(v73)];
  LODWORD(v104) = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v104 ^ 4;
  LODWORD(v94) = v104 ^ 0x388163F0;
  LODWORD(v104) = v94 >> 4;
  LODWORD(v73) = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v73 ^ 4;
  LODWORD(v94) = v73 ^ 0x388163F0;
  LODWORD(v104) = v107 ^ v104;
  LODWORD(v73) = *&v117[4 * ((v88 ^ 0xC3A0B73E) >> 24)] ^ (v94 >> 4) ^ 0x8111DD7F ^ v187;
  LODWORD(v107) = *&v112[4 * (v88 ^ 0x22)];
  HIDWORD(v94) = v107 ^ 0x1D7;
  LODWORD(v94) = v107 ^ 0x3A27CC00;
  LODWORD(v107) = v104 ^ (v94 >> 9);
  LODWORD(v104) = *&v112[4 * v73];
  HIDWORD(v94) = v104 ^ 0x1D7;
  LODWORD(v94) = v104 ^ 0x3A27CC00;
  v189 = v94 >> 9;
  v190 = *&v112[4 * (v107 ^ 0x4D)];
  v191 = ((v190 << 23) ^ 0xEB800000) + 133851514 - ((2 * ((v190 << 23) ^ 0xEB800000)) & 0xF000000);
  LODWORD(v88) = v103 ^ 0x13B3A6C8;
  v192 = *&v117[4 * ((v103 ^ 0x13B3A6C8) >> 24)] ^ (v190 >> 9);
  LODWORD(v103) = *&v112[4 * (v103 ^ 0xD4)];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  v193 = v192 ^ v191;
  v194 = ((v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v73)];
  v195 = *&v109[4 * ((v76 ^ 0x5D0B) >> 8)];
  LODWORD(v103) = (v193 ^ 0x1D13E6) + 871584170 - 2 * ((v193 ^ 0x1D13E6) & 0x33F351BA ^ v193 & 0x10);
  HIDWORD(v94) = v195 ^ 4;
  LODWORD(v94) = v195 ^ 0x388163F0;
  v196 = v94 >> 4;
  v197 = *&v109[4 * BYTE1(v88)];
  HIDWORD(v94) = v197 ^ 4;
  LODWORD(v94) = v197 ^ 0x388163F0;
  v198 = v94 >> 4;
  v199 = v196 ^ v189;
  v200 = *&v109[4 * ((v107 ^ 0x3E4D) >> 8)];
  HIDWORD(v94) = v200 ^ 4;
  LODWORD(v94) = v200 ^ 0x388163F0;
  v201 = *&v109[4 * BYTE1(v73)];
  LODWORD(v109) = (v94 >> 4) ^ *&v117[4 * ((v76 ^ 0xA02C5D0B) >> 24)] ^ (v194 + 133851514 - ((2 * v194) & 0xFF4D2F4));
  HIDWORD(v94) = v201 ^ 4;
  LODWORD(v94) = v201 ^ 0x388163F0;
  v202 = v94 >> 4;
  LODWORD(v88) = (v199 + 871584170 - ((2 * v199) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v88)];
  v203 = *&v112[4 * (v76 ^ 0xB)];
  HIDWORD(v94) = v203 ^ 0x1D7;
  LODWORD(v94) = v203 ^ 0x3A27CC00;
  LODWORD(v88) = (v88 + 133851514 - ((2 * v88) & 0xFF4D2F4)) ^ *&v117[4 * ((v107 ^ 0xEFB13E4D) >> 24)];
  LODWORD(v117) = *&v118[4 * (BYTE2(v107) ^ 0x9D)] ^ *&v117[4 * BYTE3(v73)] ^ (v94 >> 9) ^ 0xB82C36C ^ v198;
  v204 = *&v118[4 * BYTE2(v76)] ^ v202 ^ 0x88306132 ^ v103;
  v205 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) + 79) - 4;
  v206 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a13) - 8;
  LODWORD(v104) = *&v206[4 * (v117 >> 24)];
  LODWORD(v73) = (v104 + 707941602 - ((2 * v104 - 1101223474) & 0x9607FFF6)) ^ *&v205[4 * ((v88 ^ 0x84A43AA4) >> 16)];
  v207 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SHIDWORD(a12)) - 4;
  LODWORD(v73) = *&v207[4 * BYTE1(v204)] ^ (v73 - 170340217 - ((2 * v73) & 0xEBB1A10E));
  LODWORD(v76) = v73 - 388011128 - ((2 * v73) & 0xD1BED710);
  v208 = (__ROR8__(a18 + v108, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x6AF7234D0CC131D5;
  v209 = __ROR8__(v208 ^ 0x49E9423B6F16E7D2, 8);
  v208 ^= 0xE1AFA7ACF6E0968ELL;
  v210 = (v209 + v208) ^ 0xE49D77DF873DBF7ELL;
  v211 = v210 ^ __ROR8__(v208, 61);
  v212 = (__ROR8__(v210, 8) + v211) ^ 0xF5A2F1B9B5D0B209;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = (__ROR8__(v212, 8) + v213) ^ 0x5963B6C555D97F1FLL;
  v215 = v214 ^ __ROR8__(v213, 61);
  v216 = (v215 + __ROR8__(v214, 8)) ^ 0x61459D2AF01F24F7;
  v217 = v216 ^ __ROR8__(v215, 61);
  v218 = (v217 + __ROR8__(v216, 8)) ^ 0x64C31C027084DE6CLL;
  v219 = v218 ^ __ROR8__(v217, 61);
  v220 = (v219 + __ROR8__(v218, 8)) ^ 0x1A2AEBE44253AF03;
  v221 = __ROR8__(v220, 8) + (v220 ^ __ROR8__(v219, 61));
  v222 = ((a18 + v108 + 8) >> 8) - 0x6AF7234D0CC131D5 + ((a18 + v108 + 8) >> 3 << 59);
  v223 = __ROR8__(v222 ^ 0x49E9423B6F16E7D2, 8);
  v222 ^= 0xE1AFA7ACF6E0968ELL;
  v224 = (v223 + v222) ^ 0xE49D77DF873DBF7ELL;
  v225 = v224 ^ __ROR8__(v222, 61);
  v226 = (v225 + __ROR8__(v224, 8)) ^ 0xF5A2F1B9B5D0B209;
  v227 = v226 ^ __ROR8__(v225, 61);
  v228 = (__ROR8__(v226, 8) + v227) ^ 0x5963B6C555D97F1FLL;
  v229 = v228 ^ __ROR8__(v227, 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ 0x61459D2AF01F24F7;
  v231 = v230 ^ __ROR8__(v229, 61);
  v232 = (v231 + __ROR8__(v230, 8)) ^ 0x64C31C027084DE6CLL;
  v233 = v232 ^ __ROR8__(v231, 61);
  v234 = (v233 + __ROR8__(v232, 8)) ^ 0x1A2AEBE44253AF03;
  v235 = (v234 ^ __ROR8__(v233, 61)) + __ROR8__(v234, 8);
  v286 = (a18 + v108);
  v236 = ((a18 + v108 + 16) >> 8) - 0x6AF7234D0CC131D5 + ((a18 + v108 + 16) >> 3 << 59);
  v237 = v236 ^ 0x49E9423B6F16E7D2;
  v236 ^= 0xE1AFA7ACF6E0968ELL;
  v238 = (v236 + (v237 << 56) + (v237 >> 8)) ^ 0xE49D77DF873DBF7ELL;
  v239 = v238 ^ __ROR8__(v236, 61);
  v240 = (v239 + __ROR8__(v238, 8)) ^ 0xF5A2F1B9B5D0B209;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = (__ROR8__(v240, 8) + v241) ^ 0x5963B6C555D97F1FLL;
  v243 = v242 ^ __ROR8__(v241, 61);
  v244 = (v243 + __ROR8__(v242, 8)) ^ 0x61459D2AF01F24F7;
  v245 = v244 ^ __ROR8__(v243, 61);
  v246 = (v245 + __ROR8__(v244, 8)) ^ 0x64C31C027084DE6CLL;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = (v247 + __ROR8__(v246, 8)) ^ 0x1A2AEBE44253AF03;
  v249 = v248 ^ __ROR8__(v247, 61);
  v250 = __ROR8__(v248, 8);
  v251 = v221 ^ 0xAB3042D228875C41;
  v252 = v235 ^ 0xAB3042D228875C41;
  LOBYTE(v235) = 8 * ((a18 + v108) & 7);
  v253 = v251 >> v235;
  LOBYTE(v198) = v235 ^ 0x3A;
  v254 = v253 + (v252 << (v235 ^ 0x3Au) << 6);
  v255 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a12);
  LODWORD(v76) = (((v253 + (v252 << (v235 ^ 0x3A) << 6)) >> 24) + (~(v254 >> 23) | 0x69) - 52) ^ *(a58 + (((v253 + (v252 << (v235 ^ 0x3A) << 6)) >> 24) ^ 0xB0)) ^ a21 ^ a27 ^ *(v255 + 4 * (v109 ^ 0x99u)) ^ v76 ^ ((*(a56 + (v253 ^ 0x62)) ^ 0x88888888) << 24) ^ ((*(a57 + (BYTE1(v254) ^ 0xADLL)) ^ 0x7A) << 16) ^ (((*(a55 + (BYTE2(v254) ^ 0xB5)) - 65) ^ 0xEC) << 8) ^ 0x16;
  HIDWORD(v284) = *&v206[4 * ((v109 >> 24) ^ 0x1A)];
  v256 = *&v206[4 * HIBYTE(v204)];
  v307 = *&v206[4 * (BYTE3(v88) ^ 0xF3)];
  LODWORD(v284) = *&v205[4 * BYTE2(v117)];
  v305 = *&v205[4 * BYTE2(v204)];
  LODWORD(v283) = *&v205[4 * ((v109 ^ 0x6D921A99) >> 16)];
  LODWORD(v282) = *&v207[4 * BYTE1(v117)];
  HIDWORD(v285) = *&v207[4 * ((v109 ^ 0x1A99) >> 8)];
  LODWORD(v285) = *&v207[4 * ((v88 ^ 0x3AA4) >> 8)];
  HIDWORD(v283) = *(v255 + 4 * v204);
  HIDWORD(v282) = *(v255 + 4 * (v88 ^ 0xA4u));
  v302 = *(v255 + 4 * v117);
  v257 = v252 >> v235;
  HIDWORD(v281) = v76 - ((2 * v76) & 0x9DABB94) + 82664906;
  v258 = v257 + (((v250 + v249) ^ 0x33042D228875C41) << v198 << 6);
  LOBYTE(v201) = (v257 + (((v250 + v249) ^ 0x28875C41) << v198 << 6)) >> 24;
  v259 = HIDWORD(v281) ^ 0x4A792299u;
  v260 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 59) - 8;
  LODWORD(v281) = *(a56 + (BYTE4(v254) ^ 0x5ELL));
  v261 = HIBYTE(v254);
  v262 = *(a57 + (BYTE5(v254) ^ 0xF6));
  v263 = *(a55 + (BYTE6(v254) ^ 0xB7));
  v264 = *(a58 + (HIBYTE(v254) ^ 0xFE));
  LODWORD(v254) = *(a56 + (v257 ^ 0xCFLL));
  v265 = *(a57 + (BYTE1(v258) ^ 0x64));
  LOBYTE(v88) = *(a55 + (BYTE2(v258) ^ 0xCLL));
  LODWORD(v76) = *(a58 + (v201 ^ 0xA7));
  v266 = *(a56 + (BYTE4(v258) ^ 0xECLL));
  v267 = *(a57 + (BYTE5(v258) ^ 0xF9));
  v268 = *(a55 + (BYTE6(v258) ^ 0x5DLL));
  v269 = *(a58 + (HIBYTE(v258) ^ 0x1C));
  *(a18 + v287) = (109 * v260[BYTE1(v259) ^ 0x97] + 111) ^ 0xDC;
  LODWORD(v109) = (v256 - ((2 * v256 - 1101223474) & 0xEBB1A10E) - 720951954) ^ v282;
  LODWORD(v109) = (v109 - ((2 * v109) & 0x9607FFF6) + 1258553339) ^ v283;
  LODWORD(v109) = a25 ^ v308 ^ HIDWORD(v282) ^ (v109 - 388011128 - ((2 * v109) & 0xD1BED710)) ^ ((v254 ^ 0xFFFFFFE3) << 24) ^ ((v265 ^ 0xA5) << 16) ^ v76 ^ (v201 - ((v258 >> 23) & 0x96) - 53) ^ (((v88 - 65) ^ 0x50) << 8);
  LODWORD(v109) = v109 - ((2 * v109) & 0xE7F43B32) - 201712231;
  LODWORD(v253) = v109 ^ 0x9D26C16;
  v270 = v109 ^ 0x6BD0F304;
  v271 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SHIDWORD(a11));
  *(a18 + v288) = (*(v271 + (v109 ^ 1)) + (v109 ^ 4) + 11) ^ 0x28;
  v272 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 421) - 8;
  *v286 = (((HIDWORD(v281) ^ 0x4A792299u) >> 24) - (((HIDWORD(v281) ^ 0x4A792299u) >> 23) & 0x82) + 65) ^ 0x59 ^ v272[((HIDWORD(v281) ^ 0x4A792299u) >> 24) ^ 0x63];
  *(a18 + v289) = ((BYTE4(v281) ^ 0xAA) + *(v271 + (BYTE4(v281) ^ 0xAFLL)) + 11) ^ 0x28;
  LODWORD(v109) = (HIDWORD(v284) + 707941602 - ((2 * HIDWORD(v284) - 1101223474) & 0x9607FFF6)) ^ v284;
  LODWORD(v109) = HIDWORD(v283) ^ (v109 - 388011128 - ((2 * v109) & 0xD1BED710));
  LODWORD(v109) = (v261 - ((2 * v261) & 0x96) - 53) ^ v264 ^ a23 ^ a26 ^ v285 ^ (v109 - 170340217 - ((2 * v109) & 0xEBB1A10E)) ^ ((v281 ^ 0xFFFFFFFB) << 24) ^ ((v262 ^ 0xCF) << 16) ^ (((v263 - 65) ^ 0x96) << 8) ^ 0x58;
  LODWORD(v88) = v109 - ((2 * v109) & 0x9F375F90) - 811880504;
  *(a18 + v290) = (((v88 ^ 0x10723E1) >> 24) - (((v88 ^ 0x10723E1) >> 23) & 0x82) + 65) ^ v272[((v88 ^ 0x10723E1) >> 24) ^ 0xA5] ^ 0x66;
  LODWORD(v249) = (HIBYTE(v258) - ((2 * HIBYTE(v258)) & 0x96) - 53) ^ v269 ^ a20 ^ a24 ^ v302 ^ ((v305 ^ HIDWORD(v285) ^ 0xBEDB2F7C ^ (v307 - 550611737)) - 388011128 - ((2 * (v305 ^ HIDWORD(v285) ^ 0xBEDB2F7C ^ (v307 - 550611737))) & 0xD1BED710)) ^ ((v266 ^ 0x9C) << 24) ^ ((v267 ^ 0xA1) << 16) ^ (((v268 - 65) ^ 0x16) << 8) ^ 0xBA;
  LODWORD(v249) = v249 - ((2 * v249) & 0xFF96718) - 2013482100;
  *(a18 + v298) = (109 * v260[((v249 ^ 0x37E6) >> 8) ^ 0x54] + 111) ^ 0xDB;
  v273 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) + 55) - 4;
  *(a18 + v294) = v273[((v249 ^ 0x528A37E6) >> 16) ^ 0x55] ^ 0x24;
  *(a18 + v295) = ((v88 ^ 0x74) + *(v271 + (v88 ^ 0x71)) + 11) ^ 0x8F;
  *(a18 + v293) = (109 * v260[((v88 ^ 0x23E1) >> 8) ^ 0x8FLL] + 111) ^ 0xFC;
  *(a18 + v299) = (109 * v260[BYTE1(v253) ^ 0x5BLL] + 111) ^ 0x2A;
  *(a18 + v296) = v273[((v88 ^ 0x10723E1) >> 16) ^ 0xABLL] ^ 0x9D;
  *(a18 + v300) = v273[BYTE2(v253) ^ 0xACLL] ^ 0x51;
  *(a18 + v292) = (((v249 ^ 0x528A37E6) >> 24) - (((v249 ^ 0x528A37E6) >> 23) & 0x82) + 65) ^ 0x24 ^ v272[((v249 ^ 0x528A37E6) >> 24) ^ 0x23];
  *(a18 + v291) = v273[BYTE2(v259) ^ 0x27] ^ 0x79;
  *(a18 + v297) = ((v249 ^ 0xF1) + *(v271 + (v249 ^ 0xF4)) + 11) ^ 0xC2;
  v274 = a15 < 0x568A2215;
  v275 = a3 + 16;
  if (v274 == v275 >= 0xA975DDEB)
  {
    v274 = a3 + 1451893285 < a15;
  }

  *(a18 + v301) = (HIBYTE(v270) - ((v270 >> 23) & 0x82) + 65) ^ 0x4F ^ v272[HIBYTE(v270) ^ 0xD8];
  return (*(a16 + 8 * ((5115 * v274) ^ HIDWORD(a15))))(v259, 36, v275, a24, 130, v262, 150, a18, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
}

void sub_1969C426C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  *&STACK[0x3B0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x410] = vdupq_n_s64(a3);
  *&STACK[0x400] = vdupq_n_s64(0xE788DD3012A091E0);
  *&STACK[0x2C0] = vdupq_n_s64(a1);
  *&STACK[0x2D0] = vdupq_n_s64(v6);
  *&STACK[0x2A0] = vdupq_n_s64(0xBD8F7CFD1E07971BLL);
  *&STACK[0x2B0] = vdupq_n_s64(a2);
  *&STACK[0x3F0] = vdupq_n_s64(0x7960F2B616996E9FuLL);
  *&STACK[0x280] = vdupq_n_s64(0x84EBA188CFF32DABLL);
  *&STACK[0x290] = vdupq_n_s64(v4);
  *&STACK[0x340] = vdupq_n_s64(v3);
  *&STACK[0x390] = vdupq_n_s64(0xA77DA4D51E01EB11);
  *&STACK[0x3A0] = vdupq_n_s64(0xADBA7ED07AC0689ALL);
  *&STACK[0x270] = vdupq_n_s64(v5);
  *&STACK[0x370] = vdupq_n_s64(0x4C09AA6D8FB5B1F5uLL);
  *&STACK[0x380] = vdupq_n_s64(0x67ECAB24E0949C16uLL);
  *&STACK[0x360] = vdupq_n_s64(0x3DBB3B5844776955uLL);
  *&STACK[0x250] = vdupq_n_s64(0x87C0804202802uLL);
  *&STACK[0x260] = vdupq_n_s64(0x7068FDEC8CEB6B27uLL);
  *&STACK[0x230] = vdupq_n_s64(0x8F970213731494D8);
  *&STACK[0x200] = vdupq_n_s64(0x56B23F6A8BCD7E7AuLL);
  *&STACK[0x210] = vdupq_n_s64(0x701021320009051uLL);
  *&STACK[0x350] = xmmword_196EBFA60;
  JUMPOUT(0x1969C445CLL);
}

uint64_t sub_1969C5008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X5>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, int a33)
{
  v38 = (a26 + 24 * v35);
  *v38 = v36;
  v38[1] = a6;
  *(&a33 + 3 * v35 + 2) = a19;
  v38[4] = a30;
  a33 = v34 + 1;
  return (*(v37 + 8 * ((3721 * (((a9 + 847) ^ 0x670 ^ (a2 + 95)) + v33 < 0x80000003)) ^ a9)))(a1);
}

uint64_t sub_1969C507C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x708] == 0) * ((v2 - 3063) ^ 0xE27)) ^ v2)))();
}

uint64_t sub_1969C5128()
{
  v3 = (*(v2 + 8 * ((v1 ^ 0x124) + 3380)))(64, v0);
  STACK[0x6B0] = v3;
  return (*(v2 + 8 * (((((v3 == 0) ^ ((v1 ^ 0x24) - 60)) & 1) * (((v1 ^ 0x124) - 2425) ^ 0x3C0)) | v1 ^ 0x124)))();
}

uint64_t sub_1969C5240@<X0>(uint64_t a1@<X8>)
{
  v9 = v4 + 32;
  v10 = (v9 ^ v6 ^ v2) + v1;
  v11 = *(v8 + v10 - 15);
  v12 = *(v8 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v7 + 8 * ((((v5 == v9) << 6) | ((v5 == v9) << 7)) ^ v3)))();
}

uint64_t sub_1969C5320()
{
  v5 = v0 - 6683 + (v1 + 5056);
  *(v4 - 184 + v5) = *(v3 + v5);
  return (*(v2 + 8 * (((2 * (v5 == 0)) | (4 * (v5 == 0))) ^ v1)))();
}

uint64_t sub_1969C53C0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (a8 + v9);
  v11[-1] = a2;
  *v11 = a2;
  return (*(v10 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * (((v8 - 1823443176) & 0x6CAF9CF8) - 6242)) ^ v8)))();
}

uint64_t sub_1969C54FC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  a4 = v9 + 2708 - 1575331711 * ((2 * (&a4 & 0x6C9BF728) - &a4 - 1822160685) ^ 0xFF3F9DD1) - 3381;
  a6 = a3;
  a7 = a1;
  v10 = (*(v8 + 8 * (v9 + 3916)))(&a4);
  return (*(v8 + 8 * (((a5 == v7) * (v9 - 4806 + ((v9 - 1085) | 0x48))) | (v9 + 2708))))(v10);
}

uint64_t sub_1969C559C()
{
  v8 = -v4;
  v10.val[0].i64[0] = (v3 + v8 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + v8 + 14) & 0xF;
  v10.val[1].i64[0] = (v3 + v8 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + v8 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + v8 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + v8 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + v8 + ((v5 + 34) ^ 0xE)) & 0xF;
  v10.val[3].i64[1] = (v3 + v8) & 0xF ^ 8;
  *(v3 + v7 - 8 + v8) = veor_s8(veor_s8(veor_s8(*(v1 + v10.val[0].i64[0] - 7), *(v3 + v7 - 8 + v8)), veor_s8(*(v10.val[0].i64[0] + v2 - 4), *(v10.val[0].i64[0] + v0 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_196EBFAE0), 0x5757575757575757)));
  return (*(v6 + 8 * ((1013 * (8 - (v3 & 0x18) == v8)) ^ (v5 + 3973))))(xmmword_196EBFAE0);
}

uint64_t sub_1969C574C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  STACK[0x340] = *(v26 + 24);
  STACK[0x350] = a1;
  v28 = v27 ^ 0x79FBF1FFFB3FFDDBLL;
  v30 = ((229 * (v24 ^ 0x7C1) - 1548) | 0x800u) ^ 0x86040E0004C01A74;
  STACK[0x330] = ((2 * v27) & 0x1F67FFBB6) + v28 + v30;
  return (*(a6 + 8 * (v24 ^ (52 * (((v25 + 905764049) ^ 0x35FCDCD1u) < 8)))))(v28, 0x315FDBFEB957105ELL, 0x62B6E3931000AC23, 0xBA67005A46483493, 0x691E87DAB62077CDLL, 0x787E07DA35E0BFF0, 0x2C1D3908CEDB5B5DLL, 0xFFAB05F3AEBE5606, a9, a10, a11, a12, a13, a14, a15, a16, v30, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1969C5950()
{
  LODWORD(STACK[0x4FC]) = 128;
  v3 = (*(v0 + 8 * (v1 + 96)))(128, v2);
  v4 = STACK[0x370];
  STACK[0x5F8] = v3;
  return (*(v4 + 8 * (((v3 == 0) * ((v1 - 5961) ^ 0x289)) ^ v1)))();
}

uint64_t sub_1969C5E14()
{
  v5 = STACK[0x5D8];
  v6 = STACK[0x85C];
  v7 = STACK[0x448];
  v8 = STACK[0x568];
  STACK[0x840] = *(v3 + 8 * (v4 - 3260));
  STACK[0x730] = v5;
  LODWORD(STACK[0xB38]) = v1;
  LOWORD(STACK[0xB3E]) = v0;
  LODWORD(STACK[0xB40]) = v2;
  LODWORD(STACK[0xB44]) = v6;
  STACK[0xB48] = v7;
  STACK[0xB50] = v8;
  return (*(v3 + 8 * (((((((v4 + 2) | 0xC0) - 41) ^ (v5 == 0)) & 1) * ((((v4 + 514) | 0x2C0) + 1751985086) & 0x9792CF7F ^ 0xE3B)) ^ ((v4 + 514) | 0x2C0))))();
}

uint64_t sub_1969C5E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35)
{
  v38 = *(&a32 + (v35 >> (v36 - 35)) + 1);
  v39 = ((2 * v35) & 0xBF6DFE78) + (v35 ^ 0x5FB6FF3C) - 1605828412;
  *(a11 + v39) = (HIBYTE(v38) ^ 0x7C) - ((2 * (HIBYTE(v38) ^ 0x7C)) & 0xD8) - 20;
  *(a11 + v39 + 1) = (BYTE2(v38) ^ 0x47) - ((2 * (BYTE2(v38) ^ 0x47)) & 0xD8) - 20;
  *(a11 + v39 + 2) = (BYTE1(v38) ^ 7) - ((2 * (BYTE1(v38) ^ 7)) & 0xD8) - 20;
  *(a11 + v39 + 3) = v38 ^ 0x87;
  return (*(v37 + 8 * ((7487 * (v35 + 4 < a35)) ^ v36)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1969C6004()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (87 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 1);
  return (*(v5 + 8 * ((85 * (v7 != 0)) ^ (v4 + 3520))))();
}

uint64_t sub_1969C6060@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unsigned __int8 a5@<W6>, int a6@<W7>, uint64_t a7@<X8>, int8x16_t a8@<Q0>, int8x8_t a9@<D1>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = a3 - 8;
  v24.val[0].i64[0] = (v21 + v22 - 1) & 0xF;
  v24.val[0].i64[1] = (v21 + v22 + 14) & 0xF;
  v24.val[1].i64[0] = (v21 + v22 + 13) & 0xF;
  v24.val[1].i64[1] = (v21 + v22 + 12) & 0xF;
  v24.val[2].i64[0] = (v21 + v22 + 11) & 0xF;
  v24.val[2].i64[1] = (v21 + v22 + (a5 ^ 0xAA)) & 0xF;
  v24.val[3].i64[0] = (v21 + v22 + 9) & 0xF;
  v24.val[3].i64[1] = (v21 + v22) & 0xF ^ 8;
  *(a1 - 8 + v21) = veor_s8(veor_s8(veor_s8(*(v20 + v24.val[0].i64[0] - 7), *(a4 - 8 + v21)), veor_s8(*(v24.val[0].i64[0] + v18 - 2), *(v19 + v24.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v24, a8), a9)));
  return (*(a18 + 8 * (((a7 == v22) * a6) ^ a2)))();
}

uint64_t sub_1969C6114@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 4700));

  return v3(v1);
}

uint64_t sub_1969C6148@<X0>(int8x16_t a1@<Q0>, uint64_t x8_0@<X8>, uint8x8_t d3_0@<D3>, uint8x8_t a4@<D4>)
{
  v6 = vorr_s8(*a1.i8, *&vextq_s8(a1, a1, 8uLL));
  v7 = *&v6 | v6.u32[1] | ((*&v6 | v6.u32[1]) >> 16);
  return sub_1969C6194(x8_0, (v7 | (v7 >> 8)), 0xD800D800D800D8, 0xEC00EC00EC00ECLL, d3_0, a4);
}

uint64_t sub_1969C6194@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, int8x8_t a3@<D1>, int16x4_t a4@<D2>, uint8x8_t a5@<D3>, uint8x8_t a6@<D4>)
{
  a5.i32[0] = *(a1 + v7);
  a6.i32[0] = *(v10 + v7);
  v12 = vmovl_u8(a6).u64[0];
  a2.n128_u64[0] = vorr_s8(veor_s8(vadd_s16(vsub_s16(v12, vand_s8(vadd_s16(v12, v12), a3)), a4), *&vmovl_u8(a5)), a2.n128_u64[0]);
  return (*(v11 + 8 * (((v7 + v8 != 1930) * v9) ^ v6)))(a2);
}

uint64_t sub_1969C61E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v2 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v3 + (v8 & 0xF)) ^ (11 * (v8 & 0xF)) ^ *((v8 & 0xF) + v4 + 4);
  return (*(v6 + 8 * ((3486 * (v8 == ((1308 * (a1 ^ 0x1E1u)) ^ 0x1470))) ^ (a1 - 16))))();
}

uint64_t sub_1969C631C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, unsigned int *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a22 = 1;
  v31 = *a23;
  v32 = 1283153057 * ((v30 - 144 + v29 - 2 * ((v30 - 144) & v29)) ^ 0xB7CCCBF90EE96F70);
  *(v30 - 120) = v32;
  *(v30 - 136) = v32 ^ 0x13FF;
  *(v30 - 128) = v31 - v32;
  *(v30 - 144) = ((a2 + 1800447908) ^ 7) + v32;
  *(v30 - 140) = (a2 + 1800447908) ^ v32;
  *(v30 - 112) = a2 + 1800447908 - v32 + 10;
  *(v30 - 108) = (a2 + 670121503) ^ v32;
  v33 = (*(a1 + 8 * (a2 ^ 0xD307759B)))(v30 - 144);
  return (*(a29 + 8 * *(v30 - 116)))(v33);
}

uint64_t sub_1969C63E8@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t (*a35)(void), uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, _BYTE *a45, void *a46)
{
  v51 = *(a46[291] + (*a45 ^ a1));
  *a45 = v51 - ((2 * v51) & 0xD8) - 20;
  v52 = *(a46[299] + (*(a2 - 12) ^ a1));
  *(a2 - 12) = v52 - ((2 * v52) & 0xD8) - 20;
  v53 = *(a46[307] + (v48 ^ a1));
  *(a2 - 8) = v53 - ((2 * v53) & 0xD8) - 20;
  v54 = *(a46[315] + (v49 ^ a1));
  *(a2 - 4) = v54 - ((2 * v54) & 0xD8) - 20;
  v55 = *(a46[317] + (v50 ^ a1));
  *(a2 - 3) = v55 - ((2 * v55) & 0xD8) - 20;
  v56 = *(a46[309] + (*(a2 - 11) ^ a1));
  *(a2 - 7) = v56 - ((2 * v56) & 0xD8) - 20;
  v57 = *(a46[301] + (*(a2 - 15) ^ a1));
  *(a2 - 11) = v57 - ((2 * v57) & 0xD8) - 20;
  v58 = *(a46[293] + HIBYTE(v46));
  *(a2 - 15) = v58 - ((2 * v58) & 0xD8) - 20;
  v59 = *(a2 - 14);
  v60 = *(a46[295] + (v47 ^ a1));
  *(a2 - 14) = v60 - ((2 * v60) & 0xD8) - 20;
  LOBYTE(v59) = *(a46[311] + (v59 ^ a1));
  *(a2 - 6) = v59 - ((2 * v59) & 0xD8) - 20;
  v61 = *(a2 - 10);
  v62 = *(a46[303] + (*(a2 - 2) ^ a1));
  *(a2 - 10) = v62 - ((2 * v62) & 0xD8) - 20;
  LOBYTE(v61) = *(a46[319] + (v61 ^ a1));
  *(a2 - 2) = v61 + (~(2 * v61) | 0x27) - 19;
  v63 = *(a2 - 13);
  v64 = *(a46[297] + (*(a2 - 9) ^ a1));
  *(a2 - 13) = v64 - ((2 * v64) & 0xD8) - 20;
  v65 = *(a46[305] + (*(a2 - 5) ^ a1));
  *(a2 - 9) = v65 - ((2 * v65) & 0xD8) - 20;
  v66 = *(a46[313] + (*(a2 - 1) ^ a1));
  *(a2 - 5) = v66 - ((2 * v66) & 0xD8) - 20;
  LOBYTE(v63) = *(a46[321] + (v63 ^ a1));
  *(a2 - 1) = v63 + (~(2 * v63) | 0x27) - 19;
  return a35();
}

uint64_t sub_1969C65FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v21 - 136) = a16;
  *(v21 - 128) = v17;
  *(v21 - 120) = v19 + ((v18 - 1988187018 - 2 * (v18 & 0x897EAC76)) ^ 0xEC64573D) * v20 + 789;
  v22 = (*(v16 + 8 * (v19 ^ 0x1F53)))(v21 - 136, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8 * ((((*(v21 - 116) - 1478011821) < 0xD84D4FF4) * ((v19 + 590457253) & 0xDCCE5FFF ^ 0xF7E)) ^ v19)))(v22);
}

uint64_t sub_1969C6770()
{
  STACK[0x398] = 0;
  *STACK[0x3A8] = STACK[0x398];
  return (STACK[0x608])();
}

uint64_t sub_1969C68B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12.val[0].i64[0] = (v7 - v8 - 1) & 0xF;
  v12.val[0].i64[1] = (v7 - v8 + 14) & 0xF;
  v12.val[1].i64[0] = (v7 - v8 + 13) & 0xF;
  v12.val[1].i64[1] = (v7 - v8 + 12) & 0xF;
  v12.val[2].i64[0] = (v7 - v8 + 11) & 0xF;
  v12.val[2].i64[1] = (v7 - v8 + ((a4 - 121) ^ 2)) & 0xF;
  v12.val[3].i64[0] = (v7 - v8 + 9) & 0xF;
  v12.val[3].i64[1] = (v7 - v8) & 0xF ^ 8;
  *(v7 + v9 - 8 - v8) = veor_s8(veor_s8(veor_s8(*(v6 + v12.val[0].i64[0] - 7), *(v7 + v9 - 8 - v8)), veor_s8(*(v12.val[0].i64[0] + v4 - 1), *(v12.val[0].i64[0] + v5 - 2))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_196EBFAE0), 0xC1C1C1C1C1C1C1C1)));
  return (*(v10 + 8 * ((4123 * (8 - (v7 & 0x18) == -v8)) ^ (a4 - 3127))))(v7 & 7, xmmword_196EBFAE0);
}

uint64_t sub_1969C69B0()
{
  v4 = v3 + 1040433609 + ((v0 - 1831706824) & 0x6D2D995F);
  v6 = v4 > 0x905C880B && -1872983988 - v1 > v4;
  return (*(v2 + 8 * ((8128 * v6) ^ v0)))();
}

uint64_t sub_1969C6AEC(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v13 = v8 + 1;
  v14 = v7 + v10;
  *(v6 + ((v13 >> (((v9 - 36) | v11) + 93)) << 7) + 32 * ((v13 >> 2) & 3) + 8 * (v13 & 3) + 24) = *(a1 + 16) + ((a4 + (((v14 - (((v14 * v12) >> 16) >> 7) * a2) - (a3 & (2 * (v14 - ((v14 * v12) >> 23) * a2)))) << 8)) ^ a4);
  return (*(v5 + 8 * (((v13 == 143) * a5) ^ v9)))();
}

uint64_t sub_1969C6BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  HIDWORD(a27) = v27;
  v29.n128_u64[0] = 0xECECECECECECECECLL;
  v29.n128_u64[1] = 0xECECECECECECECECLL;
  return (*(v28 + 8 * (a10 ^ (61 * (a11 == 0)))))(a1, a2, a3, a4, a5, a6, a7, 4170059478, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1969C6CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = v19 + ((((2 * (v20 - 136)) | 0x40142CBC) - (v20 - 136) + 1609951650) ^ 0xC510ED15) * v17 - 530;
  *(v20 - 128) = &a17;
  *(v20 - 136) = a16;
  v21 = (*(v18 + 8 * (v19 ^ 0x1078)))(v20 - 136, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * ((6613 * (*(v20 - 116) > ((v19 + 1661) ^ 0x5818BACAu))) ^ v19)))(v21);
}

void sub_1969C6DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = (((*(a31 + 88) ^ 0x7F1572D9) - 2132112089) ^ ((*(a31 + 88) ^ 0x2C83DC44) - 746839108) ^ ((*(a31 + 88) ^ 0x2FD1A9F6) - 802269686)) + (((v31 ^ 0x73EFB058) - 1945088088) ^ ((v31 ^ 0x3B6DDFDF) - 997056479) ^ ((v31 ^ 0x34C568DB ^ (v32 - 1466241271) & 0x57650BF7) - 885352684)) + 1532149632;
  v34 = (v33 ^ 0x5DB32E06) & (2 * (v33 & 0x9D3B4F56)) ^ v33 & 0x9D3B4F56;
  v35 = ((2 * (v33 ^ 0x45E1200A)) ^ 0xB1B4DEB8) & (v33 ^ 0x45E1200A) ^ (2 * (v33 ^ 0x45E1200A)) & 0xD8DA6F5C;
  v36 = v35 ^ 0x484A2144;
  v37 = (v35 ^ 0x90904E18) & (4 * v34) ^ v34;
  v38 = ((4 * v36) ^ 0x6369BD70) & v36 ^ (4 * v36) & 0xD8DA6F5C;
  v39 = (v38 ^ 0x40482D40) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0x9892420C)) ^ 0x8DA6F5C0) & (v38 ^ 0x9892420C) ^ (16 * (v38 ^ 0x9892420C)) & 0xD8DA6F50;
  v41 = v39 ^ 0xD8DA6F5C ^ (v40 ^ 0x88826500) & (v39 << 8);
  *(a31 + 88) = v33 ^ (2 * ((v41 << 16) & 0x58DA0000 ^ v41 ^ ((v41 << 16) ^ 0x6F5C0000) & (((v40 ^ 0x50580A1C) << 8) & 0x58DA0000 ^ 0x900000 ^ (((v40 ^ 0x50580A1C) << 8) ^ 0x5A6F0000) & (v40 ^ 0x50580A1C)))) ^ 0xC0789685;
  JUMPOUT(0x1969C6FC8);
}

uint64_t sub_1969C7738@<X0>(unsigned int a1@<W8>)
{
  v3 = 16 - ((((((a1 - 2) ^ 0x4E) + 6) ^ (a1 - 2) ^ (((a1 - 2) ^ 3) + 9) ^ (((a1 - 2) ^ 0xE) + 6)) ^ (((a1 - 2) ^ v1 ^ 0xF5 ^ (v1 - 110)) + 13)) & 0xF ^ 4u);
  LODWORD(STACK[0x90C]) = v3;
  LODWORD(v3) = (a1 ^ 0x6FBFB7C5FF6BF37FLL) + ((2 * a1) & 0x1FED7E6FELL) + ((2 * v3) & 0x1C) + (v3 ^ 0x7DAB756BBBEBB7EEuLL) + 0x1294D2CE44A85493 < 0xFFFFFFF6;
  return (*(v2 + 8 * ((v3 | (v3 << 9)) ^ v1)))();
}

void sub_1969C7868()
{
  *(v4 - 136) = v1 + 1575331711 * ((((v4 - 144) | 0xCA5595DD) - (v4 - 144) + ((v4 - 144) & 0x35AA6A20)) ^ 0xA60E00DF) + 1779;
  *(v4 - 128) = v2;
  *(v4 - 144) = v3;
  (*(v0 + 8 * (v1 ^ 0xBED)))(v4 - 144);
  JUMPOUT(0x196961C54);
}

void sub_1969C79E8(uint64_t a1@<X8>)
{
  v3 = v1 - 2294;
  (*(v2 + 8 * (v1 ^ 0x1447)))(a1);
  *(STACK[0x680] + 24) = 0;
  (*(v2 + 8 * (v3 ^ 0x1F51)))();
  STACK[0x680] = 0;
  JUMPOUT(0x1969C7A2CLL);
}

uint64_t sub_1969C7A84()
{
  v4 = *(v1 + 6);
  *(v3 - 160) = v1;
  *(v3 - 168) = v0 + 1621291457 * ((v3 - 168 - 2 * ((v3 - 168) & 0x9BAF2F13) - 1683017965) ^ 0xADB8AE8A) + 1198989114;
  *(v3 - 148) = v0 - 63 * ((v3 + 88 - 2 * ((v3 + 88) & 0x13) + 19) ^ 0x8A) + v4 - ((v4 << (v0 ^ 0xD5)) & 0x44) + 78;
  v5 = (*(v2 + 8 * (v0 + 5976)))(v3 - 168);
  return (*(v2 + 8 * (v0 ^ (8 * (*(v3 - 152) == 1559241979)))))(v5);
}

uint64_t sub_1969C7BCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 + 24);
  LODWORD(STACK[0x200]) = a3;
  v10 = *(a2 + 8 * (v7 ^ (176 * ((v8 ^ v6) < 8))));
  STACK[0x410] = v9;
  return v10(0xEFCE3EFFD692BD57, a6, 0x7B0E7BDAC39050F6, -3948);
}

void fp_dh_661781811a91bdc64ed60e1ba0aee6a8(uint64_t a1)
{
  v1 = 1621291457 * ((-142707482 - (a1 | 0xF77E74E6) + (a1 | 0x8818B19)) ^ 0x3E960A80);
  v2 = **(a1 + 48) - 1921604097;
  v3 = *(a1 + 28) - v1 - 1654780984;
  v4 = v2 < 0xDB331569;
  v5 = v2 > v3;
  if (v3 < 0xDB331569 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t fp_dh_7c5613ed5be6d6f653a069938b8d9304(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1 ^ (1621291457 * ((2 * (a1 & 0x913CD285) - a1 + 1858284922) ^ 0x58D4ACE3));
  v3 = *(a1 + 8);
  v4 = *(a1 + 24) - 1621291457 * ((2 * (a1 & 0x5915BA82913CD285) - a1 - 0x5915BA82913CD286) ^ 0xDB9C1F9058D4ACE3);
  HIDWORD(v8) = v2 - 489239129 * ((((&v8 | 0x862C4BC4) ^ 0xFFFFFFFE) - (~&v8 | 0x79D3B43B)) ^ 0xC0FB970D) + 1894503450;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x61FA5060)) - 4;
  (*&v5[8 * (v2 ^ 0x61FA48C7)])(&v8);
  v6 = 998242381 * (&v8 ^ 0xFB44BA56AA6F98D6);
  v9 = v6 - 818829135;
  v11 = v3;
  v8 = (((v4 ^ 0xCEA35ACD8A6C54C4) + 0x315CA5327593AB3CLL) ^ ((v4 ^ 0xF145EA814BD6B763) + 0xEBA157EB429489DLL) ^ ((v4 ^ 0xFBA26C4A98A71A30) + 0x45D93B56758E5D0)) - v6 + 0x28466BC8E205B0A9;
  v12 = v2 - v6 - 1643791423;
  result = (*&v5[8 * (v2 ^ 0x61FA492D)])(&v8);
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_1969C82F4@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  STACK[0x6D8] = a2;
  v3 = (*(a1 + 8 * (v2 + 4006)))(32, 0x103004054B5FA7DLL);
  v4 = STACK[0x370];
  STACK[0x388] = v3;
  return (*(v4 + 8 * (((v3 == 0) * (((v2 - 1110084488) & 0x422A96FD ^ 0xFFFFE00A) + ((v2 + 712372408) & 0xD58A0FEB))) ^ v2)))();
}

uint64_t sub_1969C8388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = (a8 + 98716048) & 0xFA1DA9BB;
  v9 = a8 - 2104;
  v10 = (*(a6 + 8 * (a8 ^ 0xC1C)))(STACK[0x5A8], a2, a3, a4, a5);
  return (*(STACK[0x370] + 8 * (((STACK[0x508] != 0) * (v8 ^ 0x9B6)) ^ v9)))(v10);
}

uint64_t sub_1969C8440()
{
  v0 = STACK[0x3B0];
  if (LODWORD(STACK[0x3B0]) == 36731)
  {
    return (*(STACK[0x248] + 8 * ((STACK[0x228] + 37) | (16 * (LODWORD(STACK[0x350]) != LODWORD(STACK[0x3D0]))))))();
  }

  if (v0 == 18647)
  {
    return (*(STACK[0x248] + 8 * ((56 * (LODWORD(STACK[0xB58]) - ((2 * LODWORD(STACK[0xB58])) & 0xB3868DE6) - 641513741 == (((STACK[0x228] + 487) | 0x4C) ^ 0xD9C356BC))) ^ (STACK[0x228] + 1651))))();
  }

  v2 = STACK[0x248];
  if (v0 == 40073)
  {
    return (*(v2 + 8 * ((7415 * (LODWORD(STACK[0xB40]) == ((STACK[0x228] + 1566456131) & 0xA2A1B8FD) - 1720256394)) ^ (STACK[0x228] - 446))))();
  }

  else
  {
    return (*(v2 + 8 * ((115 * (STACK[0x228] == -38411)) ^ (STACK[0x228] + 1313))))();
  }
}

uint64_t sub_1969C8584()
{
  if (v0 == 1906281716)
  {
    v4 = STACK[0x718];
    v5 = *(STACK[0x718] + 8);
    v6 = STACK[0x620];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v1 + 8 * (((((13 * (v2 ^ 0xF97) - 1885928548) & 0x7068FCFF) - 3252) * (v5 == 0)) ^ (v2 + 1500))))();
  }

  else if (v0 == 1906239664)
  {
    return (*(v1 + 8 * ((59 * ((((STACK[0x228] - 446) ^ (*(STACK[0x730] + 8) == 0)) & 1) == 0)) ^ (STACK[0x228] + 3056))))();
  }

  else
  {
    return (*(v1 + 8 * ((115 * (v0 == v2 + 1906278104)) ^ (v2 + 1313))))();
  }
}

void sub_1969C8658(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x105B)))(a1);
  *(STACK[0x718] + 24) = 0;
  sub_1969C8690();
}

void sub_1969C8690()
{
  (*(v1 + 8 * (v0 + 5588)))();
  STACK[0x718] = 0;
  JUMPOUT(0x1969C86B8);
}

void sub_1969C871C(int a1@<W8>)
{
  v3 = (a1 - 2516) | 0x334;
  (*(v1 + 8 * (a1 + 4205)))();
  *(v2 + 24) = 0;
  (*(v1 + 8 * (v3 ^ 0x1975)))(v2);
  JUMPOUT(0x196A028BCLL);
}

uint64_t sub_1969C874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19, int *a20)
{
  a18 = v20 - 1575331711 * (&a18 ^ 0x6C5B9502) - 1444;
  a19 = a12;
  a20 = &a14;
  v22 = (*(v21 + 8 * (v20 ^ 0x14CB)))(&a18, a2, a3, a4, a5, a6, a7, a8);
  return (*(v21 + 8 * (((a14 != (v20 ^ 0xE65)) * ((10 * (v20 ^ 0xE3A)) ^ 0x366)) ^ v20)))(v22);
}

uint64_t sub_1969C8800@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v9 = (a1 + v4);
  *v9 = a2;
  v9[1] = a2;
  return (*(v8 + 8 * (((v4 + v6 + v3 != v2) * v7) ^ v5)))();
}

void fp_dh_d11b895f25f96e501fce670138c7d404(uint64_t a1)
{
  v1 = 998242381 * ((-2 - ((a1 | 0xE4F2F817) + (~a1 | 0x1B0D07E8))) ^ 0xB1629F3E);
  v2 = *(a1 + 36) ^ v1;
  if (*(a1 + 8) | *(a1 + 40))
  {
    v3 = *(a1 + 64) - v1 == 855519512;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969C89F0(uint64_t a1)
{
  *a1 = 237100009;
  *(a1 + 4) = 0;
  *(a1 + 80) = 17152;
  memset((a1 + 8), 236, 48);
  *(a1 + 72) = 0;
  v2 = STACK[0x860];
  *(v2 + 84) = 7;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0xECECECECECECECECLL;
  *(v2 + 96) = 0xECECECECECECECECLL;
  *(v2 + 108) = 0;
  *v1 = v2;
  return (STACK[0x458])();
}

void fp_dh_09f5a3b31c5e4eff27a62035af1d3928(_DWORD *a1)
{
  v1 = *a1 ^ (1012216201 * ((1568915438 - (a1 | 0x5D83BFEE) + (a1 | 0xA27C4011)) ^ 0x26D5C8FD));
  __asm { BRAA            X3, X17 }
}

uint64_t sub_1969C8CA4@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x8C8] = v3;
  STACK[0x8D0] = v2;
  return (*(a1 + 8 * (((((a2 ^ 0x15DC) - 5433) ^ 0x731) * (v4 > 9)) ^ a2)))();
}

uint64_t sub_1969C8CEC@<X0>(int a1@<W8>)
{
  v4 = v1 ^ 0x1486;
  v5 = v2 + a1;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v3 + 8 * ((((v4 - 912469453) & 0x36633946 ^ 0x105D) * (v6 > 130)) ^ v4)))();
}

uint64_t sub_1969C8D60()
{
  v4 = STACK[0x670];
  v5 = STACK[0x660];
  v6 = STACK[0x680];
  v7 = 1068996913 * ((v1 + STACK[0x238] - 2 * (v1 & STACK[0x238])) ^ 0x94D42C92);
  *(v3 - 192) = v7 + v0 + 929;
  *(v3 - 184) = v4;
  *(v3 - 176) = v7 + 1372445196;
  *(v3 - 208) = 0;
  *(v3 - 200) = &STACK[0x404];
  *(v3 - 160) = 0;
  *(v3 - 152) = v5;
  *(v3 - 168) = v6;
  v8 = (*(v2 + 8 * (v0 ^ 0x1719)))(v3 - 208);
  v9 = STACK[0x370];
  v10 = *(v3 - 144);
  LODWORD(STACK[0x68C]) = v10;
  return (*(v2 + 8 * (((v10 == ((v0 - 3528) | 0x17D1) + 1906275577) * (((v0 + 2384) | 0xB9) ^ 0xC48)) ^ v0)))(v8, 1906281716, 48, 1906239693, 4356, v9, 95, 6138);
}

uint64_t sub_1969C8E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(a1 + a3);
  v12 = (a2 + a3);
  *(v12 - 1) = *(a1 + a3 - 16);
  *v12 = v11;
  return (*(v10 + 8 * (((v9 == a3) * a8) ^ v8)))();
}

uint64_t sub_1969C8E98@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  STACK[0x650] = 0;
  STACK[0x690] = 0;
  return (*(STACK[0x248] + 8 * (((((v1 - 587887514) & 0x230A6FFF) + ((v1 + 1192693193) & 0xB8E8E1FE) - 3985) * (v2 == 0)) | v1)))();
}

uint64_t sub_1969C8F48@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (v2 + 1514166150) & 0xA5BF937E;
  *v7 = a1;
  *v8 = a2;
  v5 = (v4 + 2322) | 0x264;
  v11 = v4 - 1790939281 * ((-294517153 - (&v11 | 0xEE72065F) + (&v11 | 0x118DF9A0)) ^ 0xE951D9E1) + 5207;
  v12 = v9;
  (*(v3 + 8 * (v4 + 5933)))(&v11);
  v11 = v5 - 1790939281 * ((((2 * &v11) | 0x9B6D401A) - &v11 - 1303814157) ^ 0xB56A804C) + 2273;
  v12 = v10;
  (*(v3 + 8 * (v5 + 2999)))(&v11);
  return 0;
}

uint64_t sub_1969C8F60(uint64_t a1, unint64_t a2)
{
  v9 = (v5 - 1) & 0xF;
  v13 = a2 < 0x10 || 1 - v8 + v2 - v5 + v9 < (((v6 + 692) | 0x800u) ^ 0xED0uLL) || (1 - v8 + v3 - v5 + v9) < 0x10 || (-v8 - v5 + v4 + v9 + 5) < 0x10;
  return (*(v7 + 8 * (v13 | (32 * v13) | v6)))((v6 - 551));
}

void sub_1969C8FDC()
{
  v1 = STACK[0x8D0];
  v2 = STACK[0x8D0] + 4;
  STACK[0x350] = STACK[0x7A8];
  STACK[0x260] = (v2 ^ 0x2DFF72FD5EAFFF3ELL) - 0x9A12090E8BB200 + ((2 * v2) & 0x5BFEE5FABD5FFE7CLL);
  STACK[0x250] = STACK[0x8C8];
  STACK[0x240] = ((STACK[0x8C0] + ((((v0 + 323) | 0x1000u) + 987) ^ 0x1659)) ^ 0xAF6774F55FACEFBELL) + 0x7DFDEBFEF0775D80 + ((2 * (STACK[0x8C0] + ((((v0 + 323) | 0x1000u) + 987) ^ 0x1659))) & 0x5ECEE9EABF59DF7CLL);
  STACK[0x230] = ((STACK[0x8B0] + 4) ^ 0xBFEDEEFC70FEFDBFLL) + 0x6D7771F7DF254F7FLL + ((2 * (STACK[0x8B0] + 4)) & 0x7FDBDDF8E1FDFB7ELL);
  STACK[0x220] = ((STACK[0x900] + 4) ^ 0x3DFF6EF47FF4DFFFLL) - 0x109A0E002FD092C1 + ((2 * (STACK[0x900] + 4)) & 0x7BFEDDE8FFE9BFFELL);
  STACK[0x210] = ((STACK[0x920] + 4) ^ 0xEF6D74F5576FEFFFLL) + 0x3DF7EBFEF8B45D3FLL + ((2 * (STACK[0x920] + 4)) & 0xDEDAE9EAAEDFDFFELL);
  STACK[0x200] = ((STACK[0x8A0] + 4) ^ 0x2FFD72F4DDB7DF3ELL) - 0x29812008D939200 + ((2 * (STACK[0x8A0] + 4)) & 0x5FFAE5E9BB6FBE7CLL);
  STACK[0x270] = v1 + 10;
  STACK[0x2B0] = STACK[0x628];
  STACK[0x2A0] = STACK[0x600];
  STACK[0x2D0] = STACK[0x7C0];
  STACK[0x2C0] = STACK[0x598];
  STACK[0x290] = STACK[0x5B0];
  STACK[0x320] = STACK[0x4C0];
  STACK[0x300] = STACK[0x4A8];
  STACK[0x280] = STACK[0x468];
  STACK[0x2F0] = STACK[0x3B0];
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x87A]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x85E]);
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x84E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x82E]);
  JUMPOUT(0x1969D15C0);
}

uint64_t sub_1969C902C@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x470] = v3;
  return (*(v2 + 8 * (((((a1 + 1056243664) ^ 0xC10AEF68) + ((a1 + 1056243664) & 0xC10AEF7D)) * (v3 == 0)) ^ a1)))();
}

uint64_t sub_1969C9088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22)
{
  v25 = 1012216201 * ((&a17 & 0x61D129F9 | ~(&a17 | 0x61D129F9)) ^ 0x1A875EEA);
  a22 = v25 + 322 * v24 - 1795305514;
  a19 = v25 - 75192010;
  a17 = v25 ^ 0x80F33AA;
  a20 = a15;
  a21 = &a13;
  v26 = (*(v22 + 8 * (322 * v24 + 4537)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v22 + 8 * ((635 * (a18 == v23 + ((322 * v24 - 1741) ^ 0x7FB) + ((322 * v24 - 1741) | 0x32) - 2093)) ^ (322 * v24))))(v26);
}

void sub_1969C91B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  *&STACK[0x2E0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x350] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x2C0] = vdupq_n_s64(v8);
  *&STACK[0x2D0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(v10);
  *&STACK[0x2B0] = vdupq_n_s64(v9);
  *&STACK[0x280] = vdupq_n_s64(v6);
  *&STACK[0x290] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(a1);
  *&STACK[0x270] = vdupq_n_s64(v7);
  *&STACK[0x240] = vdupq_n_s64(a3);
  *&STACK[0x250] = vdupq_n_s64(a2);
  *&STACK[0x340] = vdupq_n_s64(a5);
  *&STACK[0x220] = vdupq_n_s64(a6);
  *&STACK[0x230] = vdupq_n_s64(a4);
  *&STACK[0x200] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x210] = vdupq_n_s64(v11);
  *&STACK[0x300] = xmmword_196EBFA60;
  JUMPOUT(0x1969C92E0);
}

uint64_t sub_1969C9CD4@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 + (v5 ^ (a2 + 502)) - 1118;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((927 * (v7 == 0)) ^ (v3 + v5 + 2063))))();
}

uint64_t sub_1969C9D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 40 * v8 + 28);
  switch(v10)
  {
    case 1:
      v12 = STACK[0x728];
      STACK[0x4E8] = *(a6 + 8 * (a8 - 5609));
      return (*(a6 + 8 * (((v12 == 0) * ((a8 - 5449) ^ a8 ^ 0x175B)) ^ (a8 - 2927))))(a1, a2, a3, a4, a5);
    case 3:
      return (*(a6 + 8 * ((((((a8 + 730160538) & 0xD47A8C6F) + 989) ^ (a8 - 2662)) * (*(v9 + 40 * v8 + 16) == 0)) ^ (a8 + 408))))(a1, a2, a3, a4, a5);
    case 2:
      return (*(a6 + 8 * ((501 * (((STACK[0x728] == 0) ^ (a8 - 72)) & 1)) ^ (a8 + 665))))(a1, a2, a3, a4, a5);
    default:
      return (STACK[0x5C0])(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1969C9E40()
{
  v8 = (v6 + v3 + v0);
  *&v9 = 0xECECECECECECECECLL;
  *(&v9 + 1) = 0xECECECECECECECECLL;
  *v8 = v9;
  v8[1] = v9;
  return (*(v7 + 8 * ((((v2 ^ v5) + v3 != v1) | (4 * ((v2 ^ v5) + v3 != v1))) ^ v4)))();
}

uint64_t sub_1969C9E8C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = *(v6 + v5) ^ 0xEC;
  v9 = v2 + v5 + 1 < v3 && v1 + v5 - 2246 < 0xA2818BCE;
  return (*(v7 + 8 * ((v9 * v4) ^ v1)))();
}

uint64_t sub_1969CA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v7 + 4397)))(LODWORD(STACK[0x4B8]) ^ 0x9976FCFF ^ (5 * (v7 ^ 0xD19)) ^ 0x1279, 0x100004077774924, a3, a4, a5);
  v9 = STACK[0x370];
  STACK[0x928] = v8;
  if (v8)
  {
    v10 = 1906281716;
  }

  else
  {
    v10 = v6;
  }

  LODWORD(STACK[0x934]) = v10;
  return (*(v9 + 8 * ((243 * (v8 == 0)) ^ v7)))();
}

void fp_dh_acfd31f3fcb974c13710155663af8888(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) ^ (1825732043 * ((-2 - ((~a1 | 0x1E7DE8E8) + (a1 | 0xE1821717))) ^ 0x1EEBBBDF));
  v2 = 753662761 * (((v5 | 0x2DFE184D) - (v5 & 0x2DFE184D)) ^ 0x48E4E306);
  v5[0] = v2 + 1560;
  v7 = &v4;
  v6 = v2 ^ (v1 - 1738);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0xAD8)) - 4;
  (*&v3[8 * v1 + 37768])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969CA470(uint64_t a1)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 6) ^ (-63 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 5);
  return (*(v6 + 8 * ((6693 * (v7 == 0)) ^ (v4 - 1658))))();
}

uint64_t sub_1969CA518()
{
  v2 = STACK[0x970];
  STACK[0x430] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 163) | 0xC08) - 3263) ^ 0x166)) ^ (v0 + 989))))();
}

uint64_t sub_1969CA53C(int a1, int a2)
{
  v6 = a2 ^ a1 ^ (v2 + 1336189634) & 0xB05B5EFC;
  v7 = *(v5 + 8 * ((63 * (v6 < ((v2 + 1296109845) & 0xB2BEFAEF) - 6234)) ^ v2));
  v8 = STACK[0x410];
  STACK[0x400] = *(v3 + 24);
  return v7(v8, 0x35A9624B46756074, 0xAAF773659F930324, 0xEB1F931E35D5B2D0, v6, ((2 * v4) & 0x1D9F75E3ELL) + (v4 ^ 0xFDBA6EDFECFBAF1FLL) + 0x2459120130450E1);
}

uint64_t sub_1969CA6CC()
{
  *v5 = v8;
  v3 = (v2 + v0 + 1029) | 0x100;
  v9 = v0 + 679076257 - 1790939281 * ((&v9 & 0x5DA464A9 | ~(&v9 | 0x5DA464A9)) ^ 0x5A87BB17);
  v10 = v7;
  (*(v1 + 8 * (v0 + 679076983)))(&v9);
  v9 = v3 - 1790939281 * ((&v9 + 1581118530 - 2 * (&v9 & 0x5E3DF442)) ^ 0xA6E1D403) + 4816;
  v10 = v6;
  (*(v1 + 8 * (v3 ^ 0x1FAE)))(&v9);
  return 0;
}

uint64_t sub_1969CA7FC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v6 = v3 + 32;
  v7 = (v2 + (v6 << a1));
  v8 = v7[6];
  v9 = v7[7];
  v10 = v7[4];
  v11 = v7[5];
  v12 = vrev32q_s8(v7[1]);
  v13 = vrev32q_s8(*v7);
  v14 = vrev32q_s8(v7[3]);
  v7[2] = vrev32q_s8(v7[2]);
  v7[3] = v14;
  *v7 = v13;
  v7[1] = v12;
  v7[6] = vrev32q_s8(v8);
  v7[7] = vrev32q_s8(v9);
  v7[4] = vrev32q_s8(v10);
  v7[5] = vrev32q_s8(v11);
  return (*(a2 + 8 * ((2 * (v4 == v6)) | (8 * (v4 == v6)) | v5)))();
}

uint64_t sub_1969CA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v16 = (v9 ^ 0x9DC3156D) + v11;
  *(v14 + 4 * v15) = v16 + v9 - ((v16 << (((v13 + a7) & a8) - 88)) & (v10 + 1567));
  return (*(v8 + 8 * (((HIDWORD(v16) == 0) * v12) ^ v13)))(a1);
}

void sub_1969CA8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0xB24]) = a65;
  STACK[0x958] = (v65 - 1483) + STACK[0x958] - 96;
  JUMPOUT(0x1969BE3E8);
}

uint64_t sub_1969CA8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v82 = STACK[0x380];
  v7 = *STACK[0x410] + 6;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((v8 - 0x6AF7234D0CC131D5) & 0x7B9FBBE89B31A532 ^ 0x6A1EA1C00800A112) + ((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) - (((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) & 0x7F9FBBE89B31A532);
  v10 = __ROR8__(v9 ^ 0xA7B7E3F907D81E09, 8);
  v9 ^= 0xFF1066E9E2E6F55uLL;
  v11 = __ROR8__((0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20, 8);
  v12 = (0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20 ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) & 0x80FC60FEBC25C29ELL) - (v11 + v12) + 0x3F81CF80A1ED1EB0) ^ 0xCA233E39143DACB9;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v81;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v80;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x64C31C027084DE6CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x5CAA8D75362170F6) - 0x51AAB94564EF4785) ^ 0xB47FAD5ED9431778;
  v23 = *(STACK[0x248] + 8 * (STACK[0x228] - 3279));
  *v7 = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v20, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ HIBYTE(LODWORD(STACK[0x380])) ^ 0x41;
  v24 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 - 0x6AF7234D0CC131D5)) | 0xC3A82C8AC586D220) - (v24 - 0x6AF7234D0CC131D5) - 0x61D4164562C36910;
  v26 = v25 ^ 0x283D547E0DD58EC2;
  v25 ^= 0x807BB1E99423FF9ELL;
  v27 = __ROR8__(v26, 8);
  v28 = (0xC5FEDAFBD727F00 - ((v27 + v25) | 0xC5FEDAFBD727F00) + ((v27 + v25) | 0xF3A01250428D80FFLL)) ^ 0x173D658FC5B03F81;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v81;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v80;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xF225B66F71452428) - (v38 + v37) + 0x6ED24C8475D6DEBLL) ^ 0x1CC7CF2C050EC2E8;
  *(v7 + 1) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 1) & 7))) ^ BYTE2(v82) ^ 0xB4;
  v40 = __ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = v40 - ((2 * v40 + 0x2A11B965E67D9C56) & 0x545857267EBA479CLL) + 0x3F350846329BF1F9;
  v42 = __ROR8__(v41 ^ 0xE3C569A8504BC41CLL, 8);
  v41 ^= 0x4B838C3FC9BDB540uLL;
  v43 = (v42 + v41) ^ 0xE49D77DF873DBF7ELL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xF5A2F1B9B5D0B209;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v81;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v80;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x64C31C027084DE6CLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x9A35C6070C844E0CLL) - (v53 + v52) + 0x32E51CFC79BDD8FALL) ^ 0xD73008E7C4118805;
  *(v7 + 2) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 2) & 7))) ^ BYTE1(v82) ^ 0x1F;
  v55 = (__ROR8__((v7 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v56 = v55 ^ 0x4DE9423B6F16E7D2;
  v55 ^= 0xE5AFA7ACF6E0968ELL;
  v57 = __ROR8__(v56, 8);
  v58 = (((2 * (v57 + v55)) & 0xD4384CBE8D1CCB66) - (v57 + v55) + 0x15E3D9A0B9719A4CLL) ^ 0xF17EAE7F3E4C2532;
  v59 = v58 ^ __ROR8__(v55, 61);
  v60 = __ROR8__(v58, 8);
  v61 = __ROR8__(((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4, 8);
  v62 = ((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4 ^ __ROR8__(v59, 61);
  v63 = (((v61 + v62) & a6 ^ a3) + ((v61 + v62) & a5 ^ a7) - 1) ^ v75;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v80;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__(((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78, 8);
  v69 = ((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78 ^ __ROR8__(v66, 61);
  v70 = __ROR8__((v68 + v69) ^ 0x1A2AEBE44253AF03, 8) + ((v68 + v69) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v69, 61));
  *(v7 + 3) = v82 ^ v77 ^ (((v70 - (a1 & (2 * v70)) + a2) ^ v73) >> (8 * ((v7 + 3) & 7)));
  return v23();
}

void sub_1969CAE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x704]) = v6;
  STACK[0x660] = STACK[0x648];
  STACK[0x460] = *(a6 + 8 * (v7 - 5658));
  JUMPOUT(0x1968C4598);
}

uint64_t sub_1969CAF7C()
{
  v4 = *(v1 + 8 * v0);
  STACK[0x278] = *(v2 + 8 * (7 * (v0 ^ 0x2E6) - 5614));
  STACK[0x270] = v3 + 4;
  return v4();
}

uint64_t sub_1969CB058(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = a4 < v5;
  v7 = v4 + 1 + v5;
  v8 = v6 ^ (v7 < v5);
  v9 = v7 < a4;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(STACK[0x578] + 8 * ((236 * v6) ^ a3)))(a1, a2);
}

uint64_t sub_1969CB2EC@<X0>(uint64_t a1@<X3>, int a2@<W5>, unsigned int a3@<W6>, unsigned int a4@<W7>, int a5@<W8>)
{
  v10 = (*(a1 + 765 * (a4 ^ 0xA) + 638775 - ((((765 * (a4 ^ 0xA) + 638775) * v7) >> 32) >> 9) * v8) ^ 0xA2) * a3 + 6798;
  *(v6 + a4 * a3) = *(v6 + (v10 - (((8613 * v10) >> 16) >> 7) * v9));
  return (*(v5 + 8 * ((7454 * ((a5 + 1236540824) < 0x10)) ^ a2)))();
}

uint64_t sub_1969CB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  a17 = 1575331711 * ((&a17 - 896893266 - 2 * (&a17 & 0xCA8A7EAE)) ^ 0xA6D1EBAC) + 1655634431;
  v19 = (*(v18 + 54592))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * ((2841 * (a18 == 1906281716)) ^ 0x54Au)))(v19);
}

void sub_1969CB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, _BYTE *a31)
{
  *a27 = a17;
  *a26 = 142;
  *a31 = 1;
  *(a29 + 1) = 3;
  JUMPOUT(0x1969CB8D0);
}

uint64_t sub_1969CB924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, int a34)
{
  *(v39 - 128) = v34;
  *(v39 - 120) = (a28 ^ (v38 - (a34 + 153) < ~(a34 + 153))) - v34;
  *(v39 - 116) = (a34 - 84366432) ^ v34;
  *(v39 - 152) = (a31 | 4) + v34;
  *(v39 - 148) = a31 ^ v34;
  *(v36 + 16) = v34 ^ 3;
  *(v36 + 24) = (v37 + 1) - v34;
  v40 = (*(v35 + 8 * a27))(v39 - 152, a2, a3, a4, a5, a6, a7, a8);
  return (*(v35 + 8 * *(v39 - 124)))(v40);
}

void fp_dh_8b554db336864a474f766ac636da3aa1(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1825732043 * ((-2 - ((a1 | 0x10FFD3E3) + (~a1 | 0xEF002C1C))) ^ 0xEF967F2B));
  __asm { BRAA            X9, X17 }
}

void fp_dh_4d36484c950331d3744043ce373b9241(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (753662761 * (((a1 | 0x4FF4262D) - (a1 & 0x4FF4262D)) ^ 0x2AEEDD66));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969CBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(STACK[0x248] + 8 * (((((v5 == a5) ^ v6) & 1) * (((2 * v6) ^ 0x956) - 3891)) ^ v6));
  STACK[0x390] = v5;
  return v7(0xEFCE3EFFD692BD57, 0xFF17E3694DAA0981, 0x7B0E7BDAC39050F6, -3948);
}

uint64_t sub_1969CBDC4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x570]) = v14;
  LODWORD(STACK[0x558]) = v9;
  LODWORD(STACK[0x564]) = v15;
  LODWORD(STACK[0x598]) = a2;
  LODWORD(STACK[0x59C]) = v17;
  v20 = v17 * a8 + v12;
  v21 = LODWORD(STACK[0x588]) ^ 0x1398;
  v22 = (((v20 * v11) >> 32) + ((v20 - ((v20 * v11) >> 32)) >> 1)) >> 9;
  LODWORD(STACK[0x53C]) = v21;
  v23 = v17 + (v17 & 0x380) + ((v21 - v17 - 3656) & 0x38A);
  v24 = *(v19 + v20 - v22 * v13);
  v25 = v15 + 1483710525;
  v26 = *(v19 + v20 + 266 - (v20 + 266) / 0x3D3 * v13);
  v27 = *(v19 + v20 + 399 - (v20 + 399) / 0x3D3 * v13);
  v28 = 149 * a2;
  v29 = v17 * a8 + v18;
  v30 = (149 * a2 + 19901) % 0x11Au;
  v31 = ((v24 ^ 0xE8) << 24) ^ 0xFD874189;
  v32 = v26 << 8;
  v33 = *(v19 + (v29 + 133) % 0x3D3);
  v34 = *(v19 + v29 % 0x3D3);
  v35 = v27 ^ 0xFFFFFF0C;
  v36 = v27 & 0xCB;
  v37 = v33 >> 4;
  v38 = v16;
  v39 = (v10 ^ 0x81BCAF85) & (2 * (v10 & 0xD5B8CE14)) ^ v10 & 0xD5B8CE14;
  v40 = v33 << 16;
  v41 = ((2 * (v10 ^ 0x838CB385)) ^ 0xAC68FB22) & (v10 ^ 0x838CB385) ^ (2 * (v10 ^ 0x838CB385)) & 0x56347D90;
  v42 = v41 ^ 0x52140491;
  v43 = v41 ^ 0x4207800;
  v44 = *(v19 + (v29 + 266) % 0x3D3) << 8;
  v45 = (v24 & 0x6B ^ 0xF5) + (v24 & 0x6B ^ 0x9E);
  v46 = ((4 * v42) ^ 0x58D1F644) & v42 ^ (4 * v42) & 0x56347D90;
  v47 = (v46 ^ 0x50107400) & (16 * (v43 & (4 * v39) ^ v39)) ^ v43 & (4 * v39) ^ v39;
  v48 = ((16 * (v46 ^ 0x6240991)) ^ 0x6347D910) & (v46 ^ 0x6240991);
  v49 = (16 * (v46 ^ 0x6240991)) & 0x56347D90;
  v50 = v32 & 0xB600;
  v51 = v36 ^ v25;
  v52 = v47 ^ 0x56347D91 ^ (v48 ^ v49 ^ 0x42045981) & (v47 << 8);
  v53 = (v52 << 16) & 0x56340000 ^ v52 ^ ((v52 << 16) ^ 0x7D910000) & (((v48 ^ v49 ^ 0x14302481) << 8) & 0x56340000 ^ 0x42000000 ^ (((v48 ^ v49 ^ 0x14302481) << 8) ^ 0x347D0000) & (v48 ^ v49 ^ 0x14302481));
  v54 = ((v45 + 66) & 0x8F) + ((v45 + 66) & 0x8F) * v23;
  v55 = *(STACK[0x5A0] + (v29 + 399) % 0x3D3);
  v56 = *(STACK[0x5A0] + v54 % 0x3D3);
  v57 = ((v10 ^ 0xABC1D6AD) + 2121865407) ^ v10 ^ ((v10 ^ 0x7F8BB52D) - 1439466689) ^ ((v10 ^ 0x21F2A9DB) - 196450359) ^ ((v10 ^ 0xDFFFFBB7) + 172438949) ^ v55 & 0xD9 ^ ((v44 & 0x5800 | (((v40 ^ 0xFFFEFFFF) & ((v34 << 24) ^ 0x6E0FDD24) & 0xFF0FFFFF | ((v37 & 0xF) << 20)) ^ 0xE3607A84) & (v44 ^ 0xFFFF1EAC)) ^ 0x77DD5B86) & (v55 ^ 0xFFFFFF5E);
  v58 = v57 ^ 0x21059D1B;
  LOBYTE(v36) = v38;
  v59 = (v38 - ((2 * v38) & 0x4604D152) - 1560123223) ^ v25 ^ 0x8207F5B2 ^ v57;
  v60 = (v28 + 30778) % 0x11Au;
  LOWORD(v25) = v28;
  LOWORD(v52) = (v28 - 24328) % 0x11Au;
  LODWORD(STACK[0x544]) = v10 + 653143396;
  LODWORD(STACK[0x560]) = v38 + 21679535 + a5;
  v61 = ((v31 & ((v56 << 16) ^ 0xFF5EFB8D) & 0xFF87FFFF | (((v56 >> 3) & 0xF) << 19)) ^ 0x3AEA0851) & (v32 ^ 0xFFFF3ADD);
  v62 = ((v57 ^ 0x21059D1B) & 0x32155980) + v38 + ((v57 ^ 0x21059D1B) & 0x32155980 ^ 0x32155980);
  v63 = 2 * LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x554]) = v63;
  v64 = v51 ^ ((v50 | v61) ^ 0x2A810EEC) & v35;
  LOBYTE(v50) = LODWORD(STACK[0x59C]) - v63 + 120;
  v65 = *(STACK[0x5A0] + (v20 + 798) % 0x3D3);
  v66 = STACK[0x580];
  *(STACK[0x580] + 4 * v30) = v64 ^ 0x45612138;
  v67 = a5 + 390032500 + (v57 ^ 0x21059D1B);
  v68 = *(STACK[0x5A0] + (v20 + 931) % 0x3D3);
  v69 = v64 ^ 0xC4ACC7C5;
  v70 = ((v65 << 8) ^ 0xF3D3897A) & (v68 ^ 0xF7FFFF0A) | v68 & 0x85;
  LODWORD(v30) = v10 ^ v64 ^ (2 * v53);
  v71 = v25;
  STACK[0x548] = (v25 + 20050) % 0x11Au;
  *(v66 + 4 * v60) = v58;
  v72 = (v64 ^ 0xC4ACC7C5 ^ v59) - v59;
  v73 = v52;
  v74 = STACK[0x558];
  v75 = LODWORD(STACK[0x558]) + LODWORD(STACK[0x570]) + 179407435;
  v76 = *(STACK[0x5A0] + (v29 + 665) % 0x3D3) << 16;
  v77 = STACK[0x570];
  v78 = 709308908 - v10 + (v30 ^ 0x155CF2F3);
  LODWORD(v30) = LODWORD(STACK[0x570]) + 868760014;
  v79 = (v50 ^ LODWORD(STACK[0x59C])) & 0x40 | 0xA;
  v80 = *(STACK[0x5A0] + (v20 + 532) % 0x3D3) ^ 0x7A;
  v81 = *(STACK[0x5A0] + (v29 + 798) % 0x3D3) << 8;
  v82 = (*(STACK[0x5A0] + (v20 + 665) % 0x3D3) << 16) ^ 0x750C257E;
  v83 = v70 ^ 0x3B7315DB;
  v84 = *(STACK[0x5A0] + (v29 + 931) % 0x3D3);
  v85 = ((v69 ^ LODWORD(STACK[0x570])) - LODWORD(STACK[0x570]) - 555291494 - ((2 * ((v69 ^ LODWORD(STACK[0x570])) - LODWORD(STACK[0x570]))) & 0xBDCDD934)) ^ v72 ^ 0xDEE6EC9A ^ v78;
  v86 = (v84 & 0x56 | 0x1208600) ^ v30 ^ ((v81 & 0x7400 | (((((*(STACK[0x5A0] + (v29 + 532) % 0x3D3) ^ 0x1E) << 24) ^ 0x5082E12) & (v76 ^ 0xFF4B6E7A) | v76 & 0xFFF7FFFF) ^ 0xBA08A548) & (v81 ^ 0xFFFF5A7E)) ^ 0xB43ED2F3) & (v84 ^ 0xFFFFFF0E);
  LODWORD(STACK[0x540]) = v86;
  v87 = LODWORD(STACK[0x564]) - 1448804467;
  v88 = v85 - v74;
  STACK[0x558] = (v71 + 30927) % 0x11Au;
  LODWORD(v60) = v86 ^ v87;
  *(v66 + 4 * v73) = v88 + 492810115;
  v89 = (v62 - 2 * ((v62 + 28500046) & 0x53DD2097 ^ v36 & 1) + 1435500772) ^ v86 ^ v87 ^ 0xB6328F6F;
  v90 = v77 + 1943876447;
  *(v66 + 4 * ((149 * v8) % 0x11Au)) = v67;
  v91 = v66;
  v92 = v62 + 1103616479;
  LODWORD(STACK[0x568]) ^= (v77 + 1943876447) ^ ((LODWORD(STACK[0x568]) ^ 0x4E7B5EC4) - 1022143795) ^ ((LODWORD(STACK[0x568]) ^ 0x5FA38FD3) - 758414372) ^ ((LODWORD(STACK[0x568]) ^ 0x1C30DD1F) - 1856450280) ^ ((LODWORD(STACK[0x568]) ^ 0x7F7FFFFF) - 233311240) ^ 0x73EFAE8B;
  LODWORD(v73) = LODWORD(STACK[0x59C]) + 914;
  v93 = STACK[0x544];
  v94 = v30 ^ LODWORD(STACK[0x544]) ^ 0xF079078D ^ (v77 - ((2 * (v77 + 1943876447)) & 0xE0F20F1A) + 1683372780);
  v95 = v75;
  LODWORD(STACK[0x56C]) ^= ((LODWORD(STACK[0x56C]) ^ 0xEFEA355A) + 1652454967) ^ ((LODWORD(STACK[0x56C]) ^ 0xBCFCABF2) + 828958879) ^ ((LODWORD(STACK[0x56C]) ^ 0xDE82D5C5) + 1393989290) ^ ((LODWORD(STACK[0x56C]) ^ 0xFFFFF7FE) + 1919661203);
  v96 = (((124 - v88) | (v88 + 492810115)) & v79 ^ v80) << 24;
  LODWORD(STACK[0x564]) = (v62 + 28500046) ^ v87 ^ (v62 - ((2 * (v62 + 1103616479)) & 0x76A19812) - 48716312);
  v97 = ((2 * v75) & 0xBE0131CA) + (v75 ^ 0xDF0098E5);
  LOWORD(v76) = v71;
  v98 = *(STACK[0x5A0] + (v20 + 1197) % 0x3D3) << 16;
  LODWORD(v73) = (v98 ^ 0xFF7FFFFF) & ((*(STACK[0x5A0] + (((v62 + 1103616479) | (32 - v62)) & 0x85) * v73 % 0x3D3) << 24) ^ 0x45B6B3FA) | v98 & 0x490000;
  v99 = ((v96 ^ 0x4FF257E) & v82 & 0x375F2004 | v96 & 0x2000000) ^ 0x70F94123 ^ (((v96 ^ 0x4FF257E) & v82 | v96 & 0x8A000000) ^ 0xA32DA81) & v83;
  v100 = v99 ^ (v62 - ((2 * (v62 + 28500046)) & 0x1A28780E) - 1899553707);
  v101 = STACK[0x554] & 0x700;
  v102 = (v60 ^ 0x68FB93CE ^ v99) - v89;
  v103 = *(STACK[0x5A0] + (133 * ((LODWORD(STACK[0x59C]) ^ 0x381u) + v101) + 2660) % 0x3D3);
  LODWORD(v73) = (((v73 ^ 0x4A084C04) & ((*(STACK[0x5A0] + (v20 + 1330) % 0x3D3) << 8) ^ 0x4AB93444) | v73 & 0xB5460000) ^ 0xDE9C0BE9) & (v103 ^ 0xFFFFFF0C);
  LODWORD(v66) = STACK[0x560];
  v104 = v92 ^ (LODWORD(STACK[0x560]) + 506917322);
  *(v91 + 4 * STACK[0x548]) = v100 ^ 0x81CDE6CD;
  v105 = LODWORD(STACK[0x540]) ^ 0xE5EFAFF9;
  v100 ^= 0x30u;
  v106 = v103 & 0x52 ^ (v104 - ((2 * v104) & 0xD6B96CB2) - 346245543) ^ v73;
  *(v91 + 4 * STACK[0x558]) = v105;
  *(v91 + 4 * ((v71 - 24179) % 0x11Au)) = v66 + 672217550 + v105;
  v107 = (v100 ^ v93) - v93;
  v108 = (v100 ^ v30) - v30;
  LODWORD(v30) = (*(STACK[0x5A0] + (v29 + 1064) % 0x3D3) ^ 0x8A) << 24;
  LOWORD(v73) = (v71 + 31076) % 0x11Au;
  v109 = *(STACK[0x5A0] + (v29 + 1330) % 0x3D3);
  v110 = v102 ^ 0x46538173 ^ v107;
  v111 = ((((*(STACK[0x5A0] + (v29 + 1197) % 0x3D3) << 16) ^ 0x8E28F707) & (v30 ^ 0xD5FFF747) | v30 & 0x71000000) ^ 0x646D0063) & ((v109 << 8) ^ 0xFFFF0667);
  v112 = *(STACK[0x5A0] + (v29 + 1463) % 0x3D3);
  v113 = (v71 + 9173) % 0x11Au;
  v114 = STACK[0x5A0];
  v115 = (v111 ^ ((((v109 >> 3) & 1) << 11) | 0x4D2DA08D)) & (v112 ^ 0xFFFFFF1E);
  v116 = v97 ^ v90;
  v117 = (v71 + 20199) % 0x11Au;
  v118 = v112 & 0x16 ^ 0xD69957F9 ^ v115;
  v119 = v118 ^ v97 ^ v90;
  v120 = v110 ^ (v108 + 1179877747 - ((2 * v108) & 0x8CA702E6));
  v121 = v73;
  v122 = ((v119 ^ v94) - v94) ^ 0x370348EC ^ ((v118 ^ v97) - v90 + 922962156 - ((2 * ((v118 ^ v97) - v90)) & 0x6E0691D8));
  v123 = STACK[0x564];
  v124 = LODWORD(STACK[0x564]) ^ v92;
  v125 = (v73 & 0x26 ^ 0x3B05C827) + (v73 & 0x26);
  v126 = (v97 ^ v90) - v90;
  LODWORD(v73) = LODWORD(STACK[0x568]) - v126;
  *(v91 + 4 * v113) = 368352965 - v95 + v120;
  v127 = v73 + v94;
  v128 = (v73 + v94 + v90) ^ v73;
  *(v91 + 4 * v117) = v106 ^ 0x7AF2AE69;
  LODWORD(v73) = 133 * ((LODWORD(STACK[0x59C]) ^ 0x386) + v101) + 2128;
  *(v91 + 4 * v121) = v119;
  LODWORD(v73) = (*(v114 + v73 % 0x3D3) ^ 0xA6) << 24;
  v129 = (v20 + 1862) % 0x3D3;
  LODWORD(v73) = ((*(v114 + (v20 + 1729) % 0x3D3) << 16) ^ 0x97F6604D) & (v73 ^ 0xD0FF64CD) | v73 & 0x68000000;
  v130 = v122 ^ ((v124 ^ 0x406F849D ^ v106 ^ v119) - (v124 ^ 0x406F849D ^ v106));
  v131 = v20 + 1995;
  v132 = v104 - v92;
  v133 = (LODWORD(STACK[0x56C]) ^ 0x7313E1EF ^ v92) - (v104 - v92);
  LODWORD(v121) = v92 - v125;
  v134 = *(v114 + v131 % 0x3D3);
  LODWORD(v113) = (v123 ^ 0xBB50CC09) + v133;
  LODWORD(v73) = (v73 & 0x9B8E6008 ^ 0x1DE1E72 ^ (v73 ^ 0x409FB0) & ((*(v114 + v129) << 8) ^ 0x647141F5)) & (v134 ^ 0xFFFFFF0E);
  v135 = LODWORD(STACK[0x598]) + 712148547;
  *(v91 + 4 * ((v76 - 24030) % 0x11Au)) = -388308759 - v116 + v130;
  v136 = v134 & 0x70 ^ v73;
  v137 = v113 + v92;
  v138 = v113 + v125;
  LODWORD(v73) = *(v114 + (v29 + 1596) % 0x3D3) << 24;
  LODWORD(v73) = ((*(v114 + ((((-16 - LODWORD(STACK[0x59C])) | LODWORD(STACK[0x59C])) & 0x80 | ((4 - LODWORD(STACK[0x598])) & 4 | 0xAB501102) ^ v135 & 4) ^ 0xAB501103) * (LODWORD(STACK[0x59C]) + 587) % 0x3D3) << 16) ^ 0x693D3779) & (v73 ^ 0x9EFF7779) | v73 & 0x96000000;
  *(v91 + 4 * ((v76 + 9322) % 0x11Au)) = ((2 * ((v106 ^ 0xFB3F4894) + v104)) & 0x2BE93D8A) + (((v106 ^ 0xFB3F4894) + v104) ^ 0x15F49EC5);
  v139 = *(v114 + (v29 + 1862) % 0x3D3) << 8;
  v140 = v137 ^ v133;
  v141 = STACK[0x570];
  LODWORD(v73) = v139 & 0xEEEEEEEE | (v73 ^ 0xC9A62618) & (v139 ^ 0xFFFF6E79);
  v142 = *(v114 + (v29 + 1995) % 0x3D3);
  v143 = v136 ^ (v140 - ((2 * v140) & 0x5C392F46) + 773625763);
  *(v91 + 4 * ((v76 + 20348) % 0x11Au)) = v143 ^ 0x59788F91;
  LODWORD(v73) = v128 ^ v142 & 0x7F ^ 0x5433AF1 ^ (v73 ^ 0x3529CBE1) & (v142 ^ 0xFFFFFF0C);
  v143 ^= 0xD8B5696C;
  *(v91 + 4 * ((v76 + 31225) % 0x11Au)) = v73;
  v144 = v126 - v128;
  *(v91 + 4 * ((v76 - 23881) % 0x11Au)) = -388308759 - v144 + (((v73 ^ (v127 + 990234663)) - (v127 + 990234663)) ^ 0xD3096A8B ^ ((v73 ^ (v141 + 953641784)) - (v141 + 953641784) - 754357621 - ((2 * ((v73 ^ (v141 + 953641784)) - (v141 + 953641784))) & 0xA612D516)) ^ ((v143 ^ v138 ^ v121 ^ v73) - (v143 ^ v138 ^ v121)));
  *(v91 + 4 * ((149 * v135) % 0x11Au)) = v132 - v140 + 368352965 + v143;
  LODWORD(v73) = LODWORD(STACK[0x588]) + 4288;
  LODWORD(STACK[0x568]) = ((v144 - v128) ^ 0xEC8EB4E5) - 1656180727 + ((v141 - v127 - 36592879 + v144 - v128) ^ (v128 + v127 + 990234663) ^ 0xC482EBB2) + ((v128 + v127 + 990234663) ^ 0xC482EBB2);
  LODWORD(STACK[0x56C]) = ((v140 + v138) ^ 0xC482EBB2) + 21679535 + ((v132 - v140 - v140) ^ 0xEC8EB4E5) - 1680758026 + ((v140 + v138) ^ 0xC482EBB2 ^ (((2 * (v121 - 1201195800)) & 0x8F319630) + ((v121 - 1201195800) ^ 0x4798CB18) - v138 + v132 - v140 - v140));
  return (*(STACK[0x578] + 8 * (v73 | (32 * ((v135 + 1) > 0xF)))))();
}

uint64_t sub_1969CD3F8()
{
  v2 = STACK[0x4C0];
  STACK[0x528] = STACK[0x850] + 108;
  STACK[0x878] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 2742) | 0x204) ^ (v0 - 2195))) ^ v0)))();
}

uint64_t sub_1969CD498@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  if (a2)
  {
    v10 = a9 == 97900969;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && a3 != 0;
  return (*(v9 + 8 * ((v12 * ((a1 + 207) ^ 0x135C)) ^ a1)))();
}

void sub_1969CD4F4(unint64_t a1)
{
  STACK[0x2A0] = v3;
  *(a1 + 1424) = 0;
  memset((a1 + 1432), 236, 78);
  *(v2 + 96) = a1;
  STACK[0x408] = v2 + 96;
  STACK[0x298] = a1;
  *(a1 + 476) = 1;
  STACK[0x468] = *(v4 + 8 * v1);
  STACK[0x290] = v2;
  STACK[0x2F8] = v2;
  JUMPOUT(0x1969CD588);
}

uint64_t sub_1969CD698@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v3 < a2;
  if (v5 == (v2 + 1) > 0xFFFFFFFF05B67C38)
  {
    v5 = a2 + v2 + ((2 * a1) ^ 0x448u) - 577 < v3;
  }

  return (*(v4 + 8 * ((21 * !v5) ^ a1)))();
}

void sub_1969CD700()
{
  LOWORD(STACK[0x986]) = v0;
  LODWORD(STACK[0x3D0]) = v0;
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969CD794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, unint64_t a15, uint64_t a16, unint64_t a17)
{
  v23 = 1068996913 * (((v22 ^ 0x4E13EAABF967C06ELL | 0x94E15CF2DE539C3) - ((v22 ^ 0x4E13EAABF967C06ELL) & 0x94E15CF2DE539C3)) ^ 0xD33CCBF7016C183CLL);
  a15 = ((v19 ^ 0x7D16B5338F56FADBLL) - 0x10000000940700BLL + ((2 * v19) & 0xFA2D6A671EADF5B6)) ^ v23;
  LODWORD(a16) = 6365 - v23;
  a17 = a9;
  (*(v20 + 54528))(&a13, a2, a3, a4, a5, a6, a7, a8);
  v24 = 753662761 * ((-1624960300 - (v22 | 0x9F2512D4) + (v22 | 0x60DAED2B)) ^ 0x5C01660);
  a15 = a9;
  a16 = v17;
  a13 = (v18 ^ 0xFE76DADF) + ((2 * v18) & 0xFCEDB5BE) - v24 + 1472147377;
  a14 = v24 ^ 0x15D7;
  v25 = (*(v20 + 54232))(&a13);
  return (*(v20 + 8 * ((7675 * (a17 == v21)) ^ 0x928u)))(v25);
}

void sub_1969CD928(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 + 72);
  v6 = ((2 * v1) & 0xFBDFFFF8) + (v1 ^ 0x7DEFFFFF) - 2112880639;
  *(v3 + v6) = v5 ^ 0x87;
  *(v3 + v6 + 1) = ((v2 + 91) ^ BYTE1(v5) ^ 0xFC) - ((2 * ((v2 + 91) ^ BYTE1(v5) ^ 0xFC)) & 0xD8) - 20;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0x47) - ((2 * (BYTE2(v5) ^ 0x47)) & 0xD8) - 20;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0x7C) - 2 * ((HIBYTE(v5) ^ 0x7C) & 0x6D ^ HIBYTE(v5) & 1) - 20;
  __asm { BRAA            X15, X17 }
}

void IPaI1oem5iL()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_978551b399bc1eb48249af78665b1a31 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * (fp_dh_978551b399bc1eb48249af78665b1a31 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x60]) + 37);
  v1 = off_1F0B0CC80;
  v2 = off_1F0B0CAE8 - 8;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 562);
  v4 = &v6[*v0 + *(v3 - 4)];
  *v0 = 810526117 * v4 + 0x3983E51A1E6C17ABLL;
  *(v3 - 4) = 810526117 * (v4 ^ 0xC67C1AE5E193E855);
  v7[0] = 1575331711 * ((564352016 - (v7 | 0x21A35410) + (v7 | 0xDE5CABEF)) ^ 0xB2073EED) + 1655634431;
  LOBYTE(v3) = -91 * ((*(v3 - 4) - *v0) ^ 0x55);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_978551b399bc1eb48249af78665b1a31) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_978551b399bc1eb48249af78665b1a31) ^ 0x55))] ^ 0xC]) + 382) - 4;
  (*&v5[8 * (v3 ^ v2[v1[v3] ^ 0x60]) + 54296])(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969CDD44(int a1, uint64_t a2, int a3, uint64_t a4, char a5, char a6, int a7)
{
  v13 = *(a2 + v7 + 72);
  v14 = (((a1 + 734) ^ a3) & (2 * v7)) + (v7 ^ a7) + v9;
  *(a4 + v14) = v13 ^ 0x87;
  *(a4 + v14 + 1) = (BYTE1(v13) ^ 7) - (a5 & (2 * (BYTE1(v13) ^ 7))) - 20;
  *(a4 + v14 + 2) = (a6 ^ BYTE2(v13)) - (a5 & (2 * (a6 ^ BYTE2(v13)))) - 20;
  *(a4 + v14 + 3) = (HIBYTE(v13) ^ 0x7C) - 2 * ((HIBYTE(v13) ^ 0x7C) & v12 ^ HIBYTE(v13) & 1) - 20;
  return (*(v11 + 8 * (((v7 + 4 >= v8) * v10) ^ a1)))();
}

uint64_t sub_1969CDDE4@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x55C]) - v1;
  v6 = a1 != 1049230069 && v4 == 540590832;
  return (*(v3 + 8 * ((v6 * ((v2 + 783415556) & 0xD14E17FF ^ (v2 + 4348))) ^ v2)))();
}

uint64_t sub_1969CDF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(a28 + 104);
  v32 = STACK[0x6F0];
  v33 = STACK[0x8E4];
  v34 = 489239129 * ((((v30 - 224) | 0x765A6BF0) - ((v30 - 224) & 0x765A6BF0)) ^ 0xCF7248C6);
  *(v30 - 216) = (v28 + 1604992841) ^ v34;
  *(v30 - 192) = v32;
  *(v30 - 200) = v34 + v33 * ((v28 + 3603) ^ 0x3F6DDFC6) + 1333893164;
  *(v30 - 176) = &STACK[0x444];
  *(v30 - 208) = a27;
  *(v30 - 224) = &STACK[0x4B8];
  *(v30 - 184) = -489239129 * ((((v30 - 224) | 0x765A6BF0) - ((v30 - 224) & 0x765A6BF0)) ^ 0xCF7248C6) + 2035953165 * v31 - 400139902;
  v35 = (*(v29 + 8 * (v28 ^ 0x1038)))(v30 - 224, a2, a3, a4, a5, a6, a7, a8);
  return (*(v29 + 8 * ((6630 * (*(v30 - 168) == 1906281716)) ^ v28)))(v35);
}

uint64_t sub_1969CE080()
{
  v2 = v0 ^ 0x1220;
  (*(v1 + 8 * (v0 ^ 0x1116)))();
  return (*(v1 + 8 * (((STACK[0x510] == 0) * (((v2 - 5802) ^ 0x10F5) - 4427)) ^ v2)))();
}

uint64_t sub_1969CE0D4(double a1, double a2, double a3, double a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v29 = v11 - 8;
  v30.i64[0] = v12 + v29 + 13;
  v30.i64[1] = v12 + v29 + 12;
  v31.i64[0] = v12 + v29 + 15;
  v31.i64[1] = v12 + v29 + 14;
  v32.i64[0] = v12 + v29 + 17;
  v32.i64[1] = v12 + v29 + 16;
  v33.i64[0] = v12 + v29 + v9 - 4048;
  v33.i64[1] = v12 + v29 + 10;
  v34 = vandq_s8(v33, *&STACK[0x410]);
  v35 = vandq_s8(v32, *&STACK[0x410]);
  v36 = vandq_s8(v31, *&STACK[0x410]);
  v37 = vandq_s8(v30, *&STACK[0x410]);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vaddq_s64(v41, *&STACK[0x3F0]);
  v43 = vaddq_s64(v40, *&STACK[0x3F0]);
  v44 = vaddq_s64(v39, *&STACK[0x3F0]);
  v45 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a5, v41), a6), v42), vandq_s8(v42, a7));
  v46 = vaddq_s64(v38, *&STACK[0x3F0]);
  v47 = vaddq_s64(vandq_s8(vsubq_s64(a5, v38), a6), v46);
  v48 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a5, v40), a6), v43), vandq_s8(v43, a7));
  v49 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a5, v39), a6), v44), vandq_s8(v44, a7));
  v50 = vsubq_s64(v47, vandq_s8(v46, a7));
  v51 = veorq_s8(v50, *&STACK[0x3B0]);
  v52 = veorq_s8(v49, *&STACK[0x3B0]);
  v53 = veorq_s8(v49, a8);
  v54 = veorq_s8(v50, a8);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, v15), vorrq_s8(v55, v14)), v14), v16);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, v15), vorrq_s8(v56, v14)), v14), v16);
  v59 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v60);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, v17), vorrq_s8(v62, v18)), v18), v19);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, v17), vorrq_s8(v63, v18)), v18), v19);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), v20);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), v20);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), v21), v75), v22), v23);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), v21), v74), v22), v23);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = veorq_s8(vaddq_s64(v81, v79), v24);
  v84 = veorq_s8(v82, v24);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v87 = veorq_s8(v83, v85);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = vaddq_s64(v88, v86);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), v25), v90), v26), v27);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), v25), v89), v26), v27);
  v93 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v94), v28);
  v132.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), *&STACK[0x400])));
  v132.val[1] = vshlq_u64(v96, vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), *&STACK[0x400])));
  v97 = veorq_s8(v48, *&STACK[0x3B0]);
  v98 = veorq_s8(v48, a8);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v15), vorrq_s8(v99, v14)), v14), v16);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v17), vorrq_s8(v102, v18)), v18), v19);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v20);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v21), v107), v22), v23);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v24);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v25), v112), v26), v27);
  v132.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), *&STACK[0x400])));
  v114 = veorq_s8(v45, *&STACK[0x3B0]);
  v115 = veorq_s8(v45, a8);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v15), vorrq_s8(v116, v14)), v14), v16);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v17), vorrq_s8(v119, v18)), v18), v19);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v20);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v21), v124), v22), v23);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v24);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v25), v129), v26), v27);
  v132.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x400])));
  *v33.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v132, *&STACK[0x3A0])), *(v13 + v29));
  return (*(STACK[0x248] + 8 * ((8075 * (v10 == v29)) ^ v8)))();
}

void sub_1969CE0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *v30 = ((v28 + 1273678819) & 0xB4153CBC) + 2147479743 + (((a18 - v28) | (v28 - a18)) >> 31) + 1697;
  (*(v29 + 8 * (v28 + 6721)))(a28, a2, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x1969CE160);
}

uint64_t sub_1969CE1F8@<X0>(char a1@<W8>)
{
  v5 = 1799 * (v2 ^ 0xE15);
  v6 = v1 - 1;
  *(v3 + v6) = (a1 - 36 + ((v5 - 23) & 0x3D)) * (a1 ^ 0xBA);
  return (*(v4 + 8 * ((25 * (v6 != 0)) ^ v5)))();
}

uint64_t fp_dh_a413e362eac1c41aca364c1305baae79(_DWORD *a1)
{
  v1 = 998242381 * (((a1 | 0xB525D88) - (a1 & 0xB525D88)) ^ 0xA13DC55E);
  v2 = a1[1] ^ v1;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x1457)) + 8 * (((((v2 + 64) ^ (*a1 + v1 - 1805132658 < 7)) & 1) * ((v2 - 4728) ^ 0x3E6)) ^ v2) - 4))();
}

uint64_t sub_1969CE3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v83 = STACK[0x340];
  v7 = *STACK[0x410] + 10;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((v8 - 0x6AF7234D0CC131D5) & 0x7B9FBBE89B31A532 ^ 0x6A1EA1C00800A112) + ((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) - (((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) & 0x7F9FBBE89B31A532);
  v10 = __ROR8__(v9 ^ 0xA7B7E3F907D81E09, 8);
  v9 ^= 0xFF1066E9E2E6F55uLL;
  v11 = __ROR8__((0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20, 8);
  v12 = (0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20 ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) & 0x80FC60FEBC25C29ELL) - (v11 + v12) + 0x3F81CF80A1ED1EB0) ^ 0xCA233E39143DACB9;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v82;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v81;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x64C31C027084DE6CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x5CAA8D75362170F6) - 0x51AAB94564EF4785) ^ 0xB47FAD5ED9431778;
  v23 = *(STACK[0x248] + 8 * (v80 - 3252));
  *v7 = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v20, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ HIBYTE(LODWORD(STACK[0x340])) ^ 0x41;
  v24 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 - 0x6AF7234D0CC131D5)) | 0xC3A82C8AC586D220) - (v24 - 0x6AF7234D0CC131D5) - 0x61D4164562C36910;
  v26 = v25 ^ 0x283D547E0DD58EC2;
  v25 ^= 0x807BB1E99423FF9ELL;
  v27 = __ROR8__(v26, 8);
  v28 = (0xC5FEDAFBD727F00 - ((v27 + v25) | 0xC5FEDAFBD727F00) + ((v27 + v25) | 0xF3A01250428D80FFLL)) ^ 0x173D658FC5B03F81;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v82;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v81;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xF225B66F71452428) - (v38 + v37) + 0x6ED24C8475D6DEBLL) ^ 0x1CC7CF2C050EC2E8;
  *(v7 + 1) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 1) & 7))) ^ BYTE2(v83) ^ 0xB4;
  v40 = __ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = v40 - ((2 * v40 + 0x2A11B965E67D9C56) & 0x545857267EBA479CLL) + 0x3F350846329BF1F9;
  v42 = __ROR8__(v41 ^ 0xE3C569A8504BC41CLL, 8);
  v41 ^= 0x4B838C3FC9BDB540uLL;
  v43 = (v42 + v41) ^ 0xE49D77DF873DBF7ELL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xF5A2F1B9B5D0B209;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v82;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v81;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x64C31C027084DE6CLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x9A35C6070C844E0CLL) - (v53 + v52) + 0x32E51CFC79BDD8FALL) ^ 0xD73008E7C4118805;
  *(v7 + 2) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 2) & 7))) ^ BYTE1(v83) ^ 0x1F;
  v55 = (__ROR8__((v7 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v56 = v55 ^ 0x4DE9423B6F16E7D2;
  v55 ^= 0xE5AFA7ACF6E0968ELL;
  v57 = __ROR8__(v56, 8);
  v58 = (((2 * (v57 + v55)) & 0xD4384CBE8D1CCB66) - (v57 + v55) + 0x15E3D9A0B9719A4CLL) ^ 0xF17EAE7F3E4C2532;
  v59 = v58 ^ __ROR8__(v55, 61);
  v60 = __ROR8__(v58, 8);
  v61 = __ROR8__(((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4, 8);
  v62 = ((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4 ^ __ROR8__(v59, 61);
  v63 = (((v61 + v62) & a6 ^ a3) + ((v61 + v62) & a5 ^ a7) - 1) ^ v75;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v81;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__(((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78, 8);
  v69 = ((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78 ^ __ROR8__(v66, 61);
  v70 = __ROR8__((v68 + v69) ^ 0x1A2AEBE44253AF03, 8) + ((v68 + v69) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v69, 61));
  *(v7 + 3) = v83 ^ v77 ^ (((v70 - (a1 & (2 * v70)) + a2) ^ v73) >> (8 * ((v7 + 3) & 7)));
  return v23();
}

uint64_t sub_1969CE408(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LOWORD(STACK[0x85E]) = a2;
  LODWORD(STACK[0x340]) = a2;
  return (*(STACK[0x370] + 8 * (a8 - 5379)))();
}

uint64_t sub_1969CE424@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 + 2462) ^ 0xFFFFFFFFFFFFE79ELL) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((1436 * (v5 == 0)) ^ (v3 + 807))))();
}

void sub_1969CE4AC(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x7E0] = STACK[0x530];
  STACK[0x6F8] = *(a1 + 8 * a2);
  JUMPOUT(0x1969CE4D0);
}

uint64_t sub_1969CE50C@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = v5 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((6724 * (v6 == ((v3 - 4076) | 0x1087u) - 4247)) ^ v3)))();
}

void fp_dh_7df39d9d3bf8588ab9ab355dd5b97428(uint64_t a1)
{
  v1 = *(a1 + 8) - 1790939281 * ((207688607 - (a1 | 0xC61139F) + (a1 | 0xF39EEC60)) ^ 0xB42CC21);
  v2 = *a1;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2633) - 4;
  (*&v3[8 * (v1 ^ 0x1634)])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2692), fp_dh_ac8b380baf0bf0ca926b0e34adc42df4);
  __asm { BRAA            X9, X17 }
}

void fp_dh_35b5ae6caf4d05b512f50a5cef2296bd(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1068996913 * ((a1 - 2 * (a1 & 0x466FF5A6) + 1181742502) ^ 0x93811437));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969CE9E4(int a1, uint64_t a2)
{
  v9 = (v2 + a2 + v5);
  v10 = ((v9[1] ^ v6) << 16) | ((*v9 ^ a1) << 24) | ((v9[2] ^ v6) << 8);
  LODWORD(v9) = (v10 | v9[3] ^ v6) + v4 - 2 * ((v10 | v9[3] ^ v6) & (v4 + 4) ^ (v9[3] ^ v6) & 4);
  v11 = ((a2 ^ 0x6A86DCD4 | 0x80) & (2 * (a2 & 0x59)) | 0x8241880C) ^ a2 & 0x59;
  v12 = (2 * (a2 ^ 0x6A86DCD4)) & 0x904248C ^ 0x9042485 ^ ((2 * (a2 ^ 0x6A86DCD4)) ^ 0x94DAD31A) & (a2 ^ 0x6A86DCD4);
  v13 = (4 * v11) & 0x8B4DAD8C ^ v11 ^ ((4 * v11) ^ 0x8B47A830) & v12;
  v14 = (4 * v12) & 0x8B4DAD8C ^ 0x82490989 ^ ((4 * v12) ^ 0xAF773E34) & v12;
  v15 = (16 * v13) & 0x8B4DAD80 ^ v13 ^ ((16 * v13) ^ 0xB45A80C0) & v14;
  v16 = (16 * v14) & 0x8B4DAD80 ^ 0xB05250D ^ ((16 * v14) ^ 0xB4DAD8D0) & v14;
  v17 = v15 ^ (v15 << 8) & 0x8B4DAD00 ^ ((v15 << 8) ^ 0xD288C00) & v16 ^ 0x89480901;
  *(v8 + 4 * (((a2 ^ (2 * ((v17 << 16) & 0xB4D0000 ^ v17 ^ ((v17 << 16) ^ 0x2D8D0000) & ((v16 << 8) & 0xB4D0000 ^ 0x2400000 ^ ((v16 << 8) ^ 0x4DAD0000) & v16)))) >> 2) ^ 0x39528A90)) = v9;
  return (*(v7 + 8 * ((7228 * ((a2 + 4 + v5) < 0x40)) ^ v3)))();
}

uint64_t sub_1969CEBF8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v11 = (*(*(v9 + 8) + 4 * v2) ^ v5) + v3;
  *(*(a2 + 8) + 4 * v2) = v11 + v6 - (v8 & (2 * v11));
  return (*(v7 + 8 * (((v10 <= v2 + 1) * a1) ^ v4)))();
}

uint64_t sub_1969CEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = v6 + STACK[0x370];
  v19.i64[0] = v18 + (v7 ^ 0xFFFFFFFFFFFFE952);
  v19.i64[1] = v18 - 6;
  v20 = STACK[0x370] + v6 - 1;
  v21.i64[0] = v20;
  v21.i64[1] = v18 - 2;
  v22.i64[0] = v18 - 3;
  v22.i64[1] = v18 - 4;
  v23.i64[0] = v18 - 7;
  v23.i64[1] = v18 - 8;
  *&v24 = v18 - 9;
  *(&v24 + 1) = v18 - 10;
  *&STACK[0x410] = v24;
  *&v24 = v18 - 11;
  *(&v24 + 1) = v18 - 12;
  *&STACK[0x400] = v24;
  v25 = vandq_s8(v23, *&STACK[0x3F0]);
  v26 = vandq_s8(v22, *&STACK[0x3F0]);
  v27 = vandq_s8(v21, *&STACK[0x3F0]);
  v28 = vandq_s8(v19, *&STACK[0x3F0]);
  v29 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v33 = vaddq_s64(v32, *&STACK[0x3E0]);
  v34 = vaddq_s64(v31, *&STACK[0x3E0]);
  v35 = vaddq_s64(v30, *&STACK[0x3E0]);
  v36 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v32), *&STACK[0x3C0]), v33), vandq_s8(v33, *&STACK[0x3B0]));
  v37 = vaddq_s64(v29, *&STACK[0x3E0]);
  v38 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v31), *&STACK[0x3C0]), v34), vandq_s8(v34, *&STACK[0x3B0]));
  v39 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v30), *&STACK[0x3C0]), v35), vandq_s8(v35, *&STACK[0x3B0]));
  *&STACK[0x380] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v29), *&STACK[0x3C0]), v37), vandq_s8(v37, *&STACK[0x3B0]));
  v40 = veorq_s8(v38, *&STACK[0x340]);
  v41 = veorq_s8(v36, *&STACK[0x340]);
  v42 = veorq_s8(v36, *&STACK[0x330]);
  v43 = veorq_s8(v38, *&STACK[0x330]);
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v42), v9);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43), v9);
  v46 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v47 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), v10);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), v10);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(v49, vandq_s8(vaddq_s64(v49, v49), v11)), v12), *&STACK[0x2D0]);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(v48, vandq_s8(vaddq_s64(v48, v48), v11)), v12), *&STACK[0x2D0]);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = vaddq_s64(v55, v53);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), *&STACK[0x2C0]), v57), v8), *&STACK[0x2A0]);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v56, v56), *&STACK[0x2C0]), v56), v8), *&STACK[0x2A0]);
  v60 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v15);
  v73 = veorq_s8(v71, v15);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v16);
  v80 = veorq_s8(v78, v16);
  v45.i64[0] = v18 - 13;
  v45.i64[1] = v18 - 14;
  v214.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v17)));
  v214.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v17)));
  v81 = veorq_s8(v39, *&STACK[0x340]);
  v82 = veorq_s8(v39, *&STACK[0x330]);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v82), v9);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84), v10);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(v85, vandq_s8(vaddq_s64(v85, v85), v11)), v12), *&STACK[0x2D0]);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), *&STACK[0x2C0]), v88), v8), *&STACK[0x2A0]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v15);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v16);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v96.i64[0] = v18 - 15;
  v96.i64[1] = v18 - 16;
  v99 = vaddq_s64(v98, v97);
  v100 = vandq_s8(v96, *&STACK[0x3F0]);
  v214.val[0] = vshlq_u64(veorq_s8(v99, v13), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v17)));
  v101 = veorq_s8(*&STACK[0x380], *&STACK[0x340]);
  v102 = veorq_s8(*&STACK[0x380], *&STACK[0x330]);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v9);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v10);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v11)), v12), *&STACK[0x2D0]);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), *&STACK[0x2C0]), v108), v8), *&STACK[0x2A0]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v15);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v16);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v119 = vandq_s8(v45, *&STACK[0x3F0]);
  v120 = vaddq_s64(v118, v117);
  v121 = vandq_s8(*&STACK[0x400], *&STACK[0x3F0]);
  v214.val[2] = vshlq_u64(veorq_s8(v120, v13), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v17)));
  v122 = vandq_s8(*&STACK[0x410], *&STACK[0x3F0]);
  v123 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v127 = vaddq_s64(v126, *&STACK[0x3E0]);
  v128 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v126), *&STACK[0x3C0]), v127), vandq_s8(v127, *&STACK[0x3B0]));
  v129 = vaddq_s64(v125, *&STACK[0x3E0]);
  v130 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v125), *&STACK[0x3C0]), v129), vandq_s8(v129, *&STACK[0x3B0]));
  v131 = vaddq_s64(v124, *&STACK[0x3E0]);
  v132 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v124), *&STACK[0x3C0]), v131), vandq_s8(v131, *&STACK[0x3B0]));
  v133 = vaddq_s64(v123, *&STACK[0x3E0]);
  v134 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v123), *&STACK[0x3C0]), v133), vandq_s8(v133, *&STACK[0x3B0]));
  v133.i64[0] = vqtbl4q_s8(v214, *&STACK[0x360]).u64[0];
  v135 = veorq_s8(v130, *&STACK[0x340]);
  v136 = veorq_s8(v128, *&STACK[0x340]);
  v137 = veorq_s8(v128, *&STACK[0x330]);
  v138 = veorq_s8(v130, *&STACK[0x330]);
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v9);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v138), v9);
  v141 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v142 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v143 = veorq_s8(v139, v141);
  v144 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v143);
  v146 = veorq_s8(vaddq_s64(v144, v142), v10);
  v147 = veorq_s8(v145, v10);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(v147, vandq_s8(vaddq_s64(v147, v147), v11)), v12), *&STACK[0x2D0]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), v11)), v12), *&STACK[0x2D0]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v151 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v151);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), *&STACK[0x2C0]), v153), v8), *&STACK[0x2A0]);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v152, v152), *&STACK[0x2C0]), v152), v8), *&STACK[0x2A0]);
  v156 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v157 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v158 = veorq_s8(v154, v156);
  v159 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v158);
  v161 = vaddq_s64(v159, v157);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(v161, vandq_s8(vaddq_s64(v161, v161), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(v160, vandq_s8(vaddq_s64(v160, v160), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v164 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v165 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v166 = veorq_s8(v162, v164);
  v167 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v166);
  v169 = veorq_s8(vaddq_s64(v167, v165), v15);
  v170 = veorq_s8(v168, v15);
  v171 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v172 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v173 = veorq_s8(v169, v171);
  v174 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v173);
  v176 = veorq_s8(vaddq_s64(v174, v172), v16);
  v177 = veorq_s8(v175, v16);
  v178 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v179 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v213.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, v178)), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v17)));
  v213.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v179), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v17)));
  v180 = veorq_s8(v132, *&STACK[0x340]);
  v181 = veorq_s8(v132, *&STACK[0x330]);
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v9);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v10);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(v184, vandq_s8(vaddq_s64(v184, v184), v11)), v12), *&STACK[0x2D0]);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187, v187), *&STACK[0x2C0]), v187), v8), *&STACK[0x2A0]);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(v190, v190), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v15);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v16);
  v213.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x400], 3uLL), v17)));
  v196 = veorq_s8(v134, *&STACK[0x340]);
  v197 = veorq_s8(v134, *&STACK[0x330]);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v9);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v10);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v200, vandq_s8(vaddq_s64(v200, v200), v11)), v12), *&STACK[0x2D0]);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), *&STACK[0x2C0]), v203), v8), *&STACK[0x2A0]);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(v206, vandq_s8(vaddq_s64(v206, v206), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208), v15);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), v16);
  v213.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), v17)));
  v133.i64[1] = vqtbl4q_s8(v213, *&STACK[0x360]).u64[0];
  v213.val[0] = vrev64q_s8(*(v20 - 15));
  v213.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v213.val[0], v213.val[0], 8uLL), *&STACK[0x310]), v133));
  *(a6 - 15 + v6 - 1) = vextq_s8(v213.val[0], v213.val[0], 8uLL);
  return (*(STACK[0x248] + 8 * ((61 * (v6 != 16)) ^ v7 ^ 0x3D)))(a1, a2, a3, a4, a5);
}

void sub_1969CF70C(int a1@<W8>)
{
  v7 = *(v4 + 100);
  v8 = ((a1 - 3525) ^ 0xF5EFFA75 ^ *(v4 + 120)) + 2126170844 + ((2 * *(v4 + 120)) & 0xEBDFFFFC);
  v9 = 1068996913 * ((v6 - 224) ^ 0xD5EEE191);
  *(v6 - 200) = v4 + 104;
  *(v6 - 192) = a1 - v9 - 459;
  *(v6 - 208) = v8 ^ v9;
  *(v6 - 168) = 2065987003 - v9;
  *(v6 - 216) = v1;
  *(v6 - 224) = (v7 ^ 0x76BDBEE5) - v9 + ((2 * v7) & 0xED7B7DCA) - 855552;
  *(v6 - 220) = v9 + 1212704019 * (((v3 ^ 0x9A3607A1) + 1707735135) ^ ((v3 ^ 0x2B38DB12) - 725146386) ^ ((v3 ^ 0x28782468) - 678962280)) + 575815493;
  *(v6 - 184) = v2;
  *(v6 - 176) = v1;
  (*(v5 + 8 * (a1 + 1914)))(v6 - 224);
  JUMPOUT(0x1969CF840);
}

uint64_t sub_1969CF97C()
{
  v2 = STACK[0x518];
  STACK[0x958] += ((v1 - 1532) | 5u) ^ 0xFFFFFFFFFFFFF7A5;
  return (*(v0 + 8 * ((13 * (v2 == 1906281716)) ^ (v1 - 1527))))();
}

void fp_dh_074a616e96b31a9581862ec89c05b381(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) ^ (1283153057 * ((-2 - ((a1 | 0xB09998FE) + (~a1 | 0x4F666701))) ^ 0xBE6436));
  if (*(*a1 + 4) - 676339932 >= 0)
  {
    v2 = *(*a1 + 4) - 676339932;
  }

  else
  {
    v2 = 676339932 - *(*a1 + 4);
  }

  if (*(*(a1 + 8) + 4) - 676339932 >= 0)
  {
    v3 = *(*(a1 + 8) + 4) - 676339932;
  }

  else
  {
    v3 = 676339932 - *(*(a1 + 8) + 4);
  }

  v7 = *a1;
  v6[1] = v1 - 455395931 * (v6 ^ 0x76F15ECC) + 1392;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 3401) - 4;
  (*&v4[8 * v1 + 22608])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_1969CFB68@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = a2 - 2008;
  (*(a1 + 8 * (a2 ^ 0x146A)))();
  v3 = STACK[0x370];
  STACK[0x4D0] = 0;
  return (*(v3 + 8 * ((((((v2 + 872481708) & 0xCBFEFF2E) - 731) ^ (5 * (v2 ^ 0x732))) * (STACK[0x5F8] == 0)) ^ v2)))();
}

uint64_t sub_1969CFC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8 - 3318;
  v9 = (*(a6 + 8 * (a8 ^ 0xCD0)))(16, 0x20040A4A59CD2, a3, a4, a5);
  return (*(STACK[0x370] + 8 * (((LODWORD(STACK[0x36C]) ^ (v9 == 0)) & 1 | (16 * ((LODWORD(STACK[0x36C]) ^ (v9 == 0)) & 1))) ^ v8)))();
}

uint64_t sub_1969CFCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (((v4 + 124) ^ 0xF2A) - 1948843114 + (*(a4 + 68) & 0x3F ^ 0x8CF1E05D)) ^ ((*(a4 + 68) & 0x3F ^ 0x51E6A5A5) + 1455445052) ^ ((*(a4 + 68) & 0x3F ^ 0xDD1745F8) - 634276761);
  *(a4 + v6 - 119992735) = 108;
  return (*(v5 + 8 * ((4894 * (v6 - 119992791 < 0xFFFFFFC8)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_1969CFDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((222 * ((((v2 + v4 + 314) ^ (v6 == 0)) & 1) == 0)) ^ (v2 + v4 + 1370))))();
}

uint64_t sub_1969CFEE4()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 - v3 + ((v4 - 3068) | 0x512u) - 1298;
  v10 = v0 + v9;
  v11 = v0 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v8 - v3 + v2 + 3;
  v15 = v8 + ((v4 + 3075) | 0x220u) + v2 - 6685;
  v17 = v11 > v5 && v10 < v7;
  v19 = v13 > v5 && v12 < v7 || v17;
  if (v14 < v7 && v15 > v5)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  return (*(v6 + 8 * ((2018 * v21) ^ v4)))();
}

uint64_t sub_1969CFF84@<X0>(uint64_t a1@<X5>, int a2@<W7>, uint64_t a3@<X8>)
{
  *v5 = v4;
  *(v4 + 8) = *(a3 + 8);
  *(a3 + 8) = v4;
  return (*(a1 + 8 * (1145 * ((a2 - 4641) ^ 0x439) + 545)))();
}

void sub_1969D0084(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1969D0098);
}

void woqRTqq9PL5McfBs891()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55))] ^ 0x15]) + 85);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 562);
  v3 = (*(v2 - 4) - v1) ^ &v5;
  *(v0 - 4) = 810526117 * v3 + 0x3983E51A1E6C17ABLL;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 | 0x85AFEEDF) - (v6 & 0x85AFEEDF)) ^ 0xE9F47BDD) + 1655634431;
  LOBYTE(v2) = -91 * (*(v0 - 4) ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55))] ^ 0xD2]) + 406) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0xBu) - 12) ^ v2) + 52688])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969D05D8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 36864;
  *(result + 8) = 1906281716;
  return result;
}

uint64_t sub_1969D09F4(int a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, int a7)
{
  v12 = *(a2 + v7 + 72);
  v13 = (v11 & (2 * v7)) + (v7 ^ a7) - 2146925438;
  *(a4 + v13) = ((v12 >> ((a1 ^ a6) + a5)) ^ 0x7C) - (a3 & (2 * ((v12 >> ((a1 ^ a6) + a5)) ^ 0x7C))) - 20;
  *(a4 + v13 + 1) = (v9 ^ BYTE2(v12)) - (a3 & (2 * (v9 ^ BYTE2(v12)))) - 20;
  *(a4 + v13 + 2) = (BYTE1(v12) ^ 7) - (a3 & (2 * (BYTE1(v12) ^ 7))) - 20;
  *(a4 + v13 + 3) = v12 ^ 0x87;
  return (*(v10 + 8 * ((29 * (v7 + 4 >= v8)) ^ a1)))();
}

uint64_t sub_1969D0A98()
{
  *(v3 - 216) = 654144011 * ((2 * ((v3 - 224) & 0x75ADD158) - (v3 - 224) - 1974325600) ^ 0xA686533C) + 86337211 + v0;
  v4 = (*(v2 + 8 * (v0 ^ 0x14EC)))(v3 - 224);
  *v1 = *(v3 - 224) ^ 0x21;
  return (*(v2 + 8 * (v0 + 237)))(v4);
}

uint64_t sub_1969D1530()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x8C8)))(128, 0x10800400FED9166);
  STACK[0x580] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 1106937114) & 0xBE056EAB ^ 0xFFFFF952) + v0 - 4488)) ^ v0)))();
}

uint64_t sub_1969D1DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v22 = 753662761 * ((((2 * &a13) | 0xB1526458) - &a13 + 660000212) ^ 0xBDB3C967);
  a13 = ((2 * v18) & 0xBCEF17F8) - v22 + (v18 ^ 0x5B2EF487 ^ (v21 - 2057733443)) + 2008972948;
  a14 = (v21 + 4377) ^ v22;
  a15 = a9;
  a16 = v17;
  (*(v19 + 8 * (v21 + 5565)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  v23 = 1621291457 * (((&a13 | 0xF18AF329) + (~&a13 | 0xE750CD6)) ^ 0xC79D72B1);
  a16 = a9;
  a14 = v23 + v21 + 27;
  LODWORD(a15) = v23 ^ (1122297523 * v16 + 296299868);
  v24 = (*(v19 + 8 * (v21 + 5619)))(&a13);
  return (*(v19 + 8 * ((7325 * (a13 == v20)) ^ v21)))(v24);
}

uint64_t sub_1969D1F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v13 - 128) = *v11;
  *(v13 - 127) = *(v11 + 1);
  *(v13 - 119) = *(v11 + 9);
  *(v13 - 115) = *(v11 + 13);
  *(v13 - 113) = *(v11 + 15);
  if (v9)
  {
    v14 = *(v12 + 8) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  return (*(a1 + 8 * (((((7 * (v10 ^ 0x42)) ^ v15) & 1) * ((v10 ^ 0x13F) - 3195)) ^ v10 ^ 0x13F)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1969D202C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB58] = v1 ^ 0x9976F8DB;
  *(a1 + 16) = (((v1 ^ 0x6FF1B85A) - 1878115958 + (v2 ^ 0x1CDE)) ^ ((v1 ^ 0x7B428DD9) - 2067959257) ^ (((((v2 - 4448) | 4) - 1916417038) ^ v1) + 1916416680)) - 1720256283;
  v5 = (*(v3 + 8 * (v2 ^ 0x84F)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * ((61 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1969D2108()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x10C0)))(*v2, *(v0 + 8 * (v3 - 2243)));
  **(v0 + 8 * (v3 ^ 0xA07)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((v3 + 1841964178) & 0x9235D795 ^ 0x689)) ^ v3)))();
}

uint64_t sub_1969D21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, _DWORD *a17, _DWORD *a18, unsigned int a19, unsigned int a20)
{
  v26 = 1283153057 * ((-135414297 - (&a16 | 0xF7EDBDE7) + (&a16 | 0x8124218)) ^ 0x47CA412F);
  LODWORD(a16) = (v25 + 1910) ^ v26;
  HIDWORD(a16) = v26 + 1416347612;
  a17 = v24;
  (*(v23 + 8 * (v25 + 3431)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(a18) = (v25 + 1385431586) ^ (998242381 * (((&a16 | 0xA542661A) - (&a16 & 0xA542661A)) ^ 0xF2DFECC));
  a16 = v24;
  a17 = v20;
  (*(v23 + 8 * (v25 ^ 0x170C)))(&a16);
  v27 = 489239129 * ((&a16 - 1132568246 - 2 * (&a16 & 0xBC7E614A)) ^ 0x556427C);
  LODWORD(a17) = v27 + v25 + 687;
  a16 = &a12;
  a18 = v24;
  a19 = v27 + 426488402;
  a20 = v27 ^ 0x99603FFC;
  v28 = (*(v23 + 8 * (v25 + 3370)))(&a16);
  v29 = v20[1];
  *v20 += a12;
  v20[1] = v29 + a13;
  v30 = v20[3];
  v20[2] += a14;
  v20[3] = v30 + a15;
  return (*(v23 + 8 * ((15 * (((21 * ((13 * (v25 ^ 0xD41)) ^ 0xB79) - 1748871961) ^ (13 * (v25 ^ 0xD41u) + 971)) + v21 - v22 > 0xFFFFFFBF)) ^ (13 * (v25 ^ 0xD41)))))(v28);
}

uint64_t sub_1969D2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, _DWORD *a41)
{
  *STACK[0x458] = v41;
  *a41 = STACK[0x7F4];
  return (STACK[0x3D0])(a1, a2, a3, a4, a5, a6, a7, v42);
}

uint64_t sub_1969D2478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  if (v17 + a16 + 1 >= 0)
  {
    v19 = v17 + a16 + 1;
  }

  else
  {
    v19 = ~(v17 + a16);
  }

  return (*(v16 + 8 * ((51 * (((v19 ^ 0x6BD732DF) - 1132925443 + ((v19 << (((v18 + 96) | 0x92) ^ 0xDB)) & 0xD7AE65BE) + v17) > ((v18 - 1952) | 0x192) - 3035)) ^ ((v18 - 1952) | 0x192))))(2646807917, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1969D2550(uint64_t a1)
{
  *(v4 - 224) = v3 - 1068996913 * ((-1432669562 - ((v4 - 224) | 0xAA9B3286) + ((v4 - 224) | 0x5564CD79)) ^ 0x808A2CE8) + 192805379;
  v5 = *(v2 + 8 * (v3 + 4957));
  LODWORD(STACK[0x36C]) = v1;
  STACK[0x370] = v2;
  v5(v4 - 224);
  return (*(STACK[0x370] + 8 * (((*(v4 - 220) == ((v3 - 864) | 0x1258) + 1906275991) * (((v3 - 1148) | 0x500) ^ 0x17D2)) ^ v3)))(a1);
}

void fp_dh_92a7e466a844921dd0d06fd4556bc436(_DWORD *a1)
{
  v1 = a1[4];
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  v3 = v1 - 753662761 * ((a1 & 0xD974E4A1 | ~(a1 | 0xD974E4A1)) ^ 0x4391E015);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969D2798@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 + v3 - v1;
  v7 = *(v6 - 31);
  v8 = a1 + v3 - v1;
  v9.i64[0] = 0xD8D8D8D8D8D8D8D8;
  v9.i64[1] = 0xD8D8D8D8D8D8D8D8;
  v10.i64[0] = 0xECECECECECECECECLL;
  v10.i64[1] = 0xECECECECECECECECLL;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(v6 - 15), vandq_s8(vaddq_s8(*(v6 - 15), *(v6 - 15)), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v5 + 8 * ((15 * (((v2 ^ (v1 == 96)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_1969D28AC@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  v9 = v4 < v5;
  *(&STACK[0x29C] + v3) = *(a2 + a3) + (~(2 * *(a2 + a3)) | 0x27) - 19;
  if (v9 == a3 + 1 > v6)
  {
    v9 = ((15 * (v8 ^ 0xAD0)) ^ (a1 + 21)) + a3 < v4;
  }

  return (*(v7 + 8 * (v8 | (4 * v9))))();
}

void sub_1969D2920(unint64_t a1)
{
  *&STACK[0x410] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x230] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0x9A6DF79384157BA6);
  *&STACK[0x3D0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x6592086C7BEA8459uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x210] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x380] = vdupq_n_s64(0x843DAFC08D0A12D7);
  *&STACK[0x390] = vdupq_n_s64(a1);
  *&STACK[0x360] = vdupq_n_s64(0x39DC9B00391B345EuLL);
  *&STACK[0x370] = vdupq_n_s64(0x8C46C9FF8DC99742);
  *&STACK[0x340] = vdupq_n_s64(0x7EEEF60D967B2BE0uLL);
  *&STACK[0x350] = vdupq_n_s64(0xDD41ECDFBE268B20);
  *&STACK[0x320] = vdupq_n_s64(0x4AD58ABF7EED27F9uLL);
  *&STACK[0x330] = vdupq_n_s64(0x408884F934C26A10uLL);
  *&STACK[0x300] = vdupq_n_s64(0x515F59CDA9D49D9AuLL);
  *&STACK[0x310] = vdupq_n_s64(0xA2BEB39B53A93B34);
  *&STACK[0x2E0] = vdupq_n_s64(0x8494461D08EAD94FLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x83CEF08FC0DE285uLL);
  *&STACK[0x200] = vdupq_n_s64(0x7B6BB9E2F71526B0uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xE5D1DB37F8F5FDB8);
  *&STACK[0x2A0] = vdupq_n_s64(0x3A1435ECF9D49D7FuLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x8BD794260C56C500);
  *&STACK[0x280] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x290] = vdupq_n_s64(0x203EDE08BB87327CuLL);
  *&STACK[0x260] = vdupq_n_s64(0xF29226D18F0E1510);
  *&STACK[0x270] = vdupq_n_s64(0xDEA8F311324A00DuLL);
  *&STACK[0x250] = vdupq_n_s64(v1);
  JUMPOUT(0x1969D2BDCLL);
}

uint64_t sub_1969D37A8@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = a2 - 1411;
  v4 = (a2 - 1411) ^ 0x14E2;
  v5 = (a2 - 2110) | 0xC3;
  STACK[0x948] = v2;
  v6 = STACK[0x818];
  STACK[0x950] = STACK[0x818];
  return (*(a1 + 8 * (((v2 - v6 > 9) * (v4 + v5 - 756)) ^ v3)))();
}

uint64_t sub_1969D3800(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v16 = a7 + (*(v7 + (v8 * v15 - (v8 * v15) / 0x3A0u * v12)) ^ 0xEA) * a6;
  *(v10 + (v9 ^ 0x314EC) + v8 * a6 - (((((v9 ^ 0x314EC) + v8 * a6) * v13) >> 32) >> 9) * v11) = *(v10 + (v16 - ((v16 * a3) >> 32) * v11));
  return (*(v14 + 8 * (((v8 == 15) * v12) ^ v9)))(a1, a2);
}

uint64_t sub_1969D38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v10 - 1;
  *(a2 + a9) = (&a9 ^ 0xBA) * (&a9 + 17);
  v12 = *(v11 + 8 * (((v10 == 1) * (v9 - 324)) ^ (v9 - 4669)));
  return v12(v12);
}

uint64_t sub_1969D39AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v17 = 1621291457 * (((v13 | 0x6DE5B49A) - (v13 & 0x6DE5B49A)) ^ 0x5BF23503);
  *(v16 - 120) = *v15;
  *(v16 - 132) = v12 - 1453 + v17;
  *(v16 - 128) = a11 ^ v17;
  (*(v14 + 8 * (v12 ^ 0x1037)))(v16 - 136, a2, a3, a4, a5, a6, a7, a8);
  v18 = *v15;
  v19 = 1621291457 * ((v13 + 1217765205 - 2 * (v13 & 0x48959F55)) ^ 0x7E821ECC);
  v20 = ((v12 ^ 0xD3987171) + 1122297523 * *v11 + 1041281381) ^ v19;
  *(v16 - 132) = v12 - 1453 + v19;
  *(v16 - 128) = v20;
  *(v16 - 120) = v18;
  (*(v14 + 8 * (v12 + 4139)))(v16 - 136);
  v21 = *v15;
  v22 = (*(v11 + 8) ^ 0xFD36FF3786BE8AFELL) + 0x7EDFB5FBFF57FFD2 + ((2 * *(v11 + 8)) & 0xFA6DFE6F0D7D15FCLL);
  *(v16 - 120) = v12 + 3671 - 1068996913 * ((2 * (v13 & 0xB46DF4C0) - v13 + 1267862334) ^ 0x9E7CEAAF);
  *(v16 - 128) = v22 ^ (1068996913 * ((2 * (v13 & 0x7DDCF9EAB46DF4C0) - v13 - 0x7DDCF9EAB46DF4C2) ^ 0x164232869E7CEAAFLL));
  *(v16 - 112) = v21;
  (*(v14 + 8 * (v12 + 4122)))(v16 - 136);
  v23 = *v15;
  v24 = 1068996913 * ((~(v13 | 0xB27A25AB0F24911ELL) + (v13 & 0xB27A25AB0F24911ELL)) ^ 0xD9E4EEC725358F70);
  *(v16 - 128) = ((*(v11 + 16) ^ (676 * (v12 ^ 0xA82) + 0x7CFFF53BCED6F14CLL)) + ((2 * *(v11 + 16)) & 0xF9FFEA779DADF7B8) - 0xE9400848C0710CLL) ^ v24;
  *(v16 - 112) = v23;
  *(v16 - 120) = v12 + 3671 - v24;
  (*(v14 + 8 * (v12 + 4122)))(v16 - 136);
  v25 = *v15;
  v26 = (*(v11 + 24) ^ 0xFF5EFDFBE7F6BEDFLL) + 0x7CB7B7379E1FCBF1 + ((2 * *(v11 + 24)) & 0xFEBDFBF7CFED7DBELL);
  *(v16 - 120) = v12 + 3671 - 1068996913 * ((v13 + 1448859142 - 2 * (v13 & 0x565BD606)) ^ 0x83B53797);
  *(v13 + 24) = v25;
  *(v13 + 8) = v26 ^ (1068996913 * ((v13 - 0x3DD242F1A9A429FALL - 2 * (v13 & 0xC22DBD0E565BD606)) ^ 0x564C899D83B53797));
  v27 = (*(v14 + 8 * (v12 ^ 0x1026)))(v16 - 136);
  return (*(v14 + 8 * ((22 * (*(v16 - 136) != 1906281716)) ^ v12)))(v27);
}

uint64_t sub_1969D3D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39)
{
  v46 = 1283153057 * ((2 * (v42 & 0x69F2FCE0) - v42 + 369951514) ^ 0x59D5002D);
  *(v45 - 208) = v46 + v39 + 312955172;
  *(v45 - 200) = v41;
  *(v45 - 192) = (v40 - 3160) ^ v46;
  v47 = (*(v43 + 8 * (v40 ^ 0xD77)))(v45 - 208, a2, a3, a4, a5, a6, a7, a8);
  v49 = STACK[0x57C];
  v50 = STACK[0x668];
  v51 = *(v44 + 8 * (v40 ^ 0x17E1));
  if (SLODWORD(STACK[0x57C]) > 407124652)
  {
    v52 = STACK[0x370];
    if (v49 > 1199819797)
    {
      v48 = 6138;
      if (v49 == 1199819798)
      {
        a38 = a33;
        v57 = 2176 * a34;
        v58 = STACK[0x678];
        v59 = STACK[0x618];
        goto LABEL_24;
      }

      if (v49 != 1531311369)
      {
        if (v49 == 1862802940)
        {
          v53 = a32 | 0x800;
          v55 = STACK[0x618];
          v54 = v50 + 9;
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v50 + 9;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = -1639469211;
          goto LABEL_27;
        }

        goto LABEL_32;
      }

      STACK[0x610] = STACK[0x618];
      STACK[0x548] = v51;
      LODWORD(STACK[0x460]) = 438359144;
      v61 = -1970960782;
    }

    else
    {
      if (v49 != 407124653)
      {
        if (v49 == 738616224)
        {
          v53 = v52 ^ 0x1D73;
          v55 = STACK[0x618];
          v54 = v50 + 29;
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v50 + 29;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = 1531311369;
          goto LABEL_27;
        }

        if (v49 == 1070107795)
        {
          v53 = v52 ^ 0x1D73;
          v54 = STACK[0x670] + 9;
          v55 = STACK[0x618];
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v54;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = 1862802940;
          goto LABEL_27;
        }

LABEL_32:
        v55 = STACK[0x610];
        v54 = STACK[0x548];
        v53 = a35;
        v63 = STACK[0x460];
        goto LABEL_33;
      }

      STACK[0x610] = STACK[0x618];
      STACK[0x548] = v51;
      LODWORD(STACK[0x460]) = 438359144;
      v61 = 1199819798;
    }

    LODWORD(STACK[0x57C]) = v61;
    goto LABEL_34;
  }

  v52 = STACK[0x370];
  if (v49 <= -846774067)
  {
    v48 = 6138;
    if (v49 != -1970960782)
    {
      if (v49 != -1639469211)
      {
        if (v49 == -1178265637)
        {
          v53 = v52 - 3443;
          v54 = STACK[0x670] + 49;
          v55 = STACK[0x618];
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v54;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = -385570492;
LABEL_27:
          LODWORD(STACK[0x57C]) = v56;
          goto LABEL_28;
        }

        goto LABEL_32;
      }

      STACK[0x610] = STACK[0x618];
      STACK[0x548] = v51;
      LODWORD(STACK[0x460]) = 438359144;
      LODWORD(STACK[0x57C]) = -846774066;
LABEL_34:
      JUMPOUT(0x196966134);
    }

    v57 = v52 ^ 0xE7B;
    v58 = STACK[0x678];
    v59 = STACK[0x618];
LABEL_24:
    STACK[0x430] = *(v43 + 8 * a38);
    STACK[0x4B8] = v59;
    STACK[0x440] = v58;
    return (*(v43 + 8 * (((v58 == 0) * (((v57 ^ 0x19B5) + 6077) ^ (v57 - 389))) ^ v57)))(v47);
  }

  v48 = 6138;
  if (v49 == -846774066)
  {
    v57 = v52 + 389;
    v58 = STACK[0x678];
    v59 = STACK[0x618];
    a38 = a36;
    goto LABEL_24;
  }

  if (v49 == -385570492)
  {
    STACK[0x610] = STACK[0x618];
    STACK[0x548] = v50 + 49;
    LODWORD(STACK[0x460]) = 438359150;
    LODWORD(STACK[0x57C]) = 407124653;
    goto LABEL_34;
  }

  if (v49 != -54078921)
  {
    goto LABEL_32;
  }

  v54 = STACK[0x670] + 29;
  v55 = STACK[0x618];
  STACK[0x610] = STACK[0x618];
  STACK[0x548] = v54;
  LODWORD(STACK[0x460]) = 438359150;
  LODWORD(STACK[0x57C]) = 738616224;
  v53 = a39;
LABEL_28:
  v63 = 438359150;
LABEL_33:
  STACK[0x690] = v55;
  LODWORD(STACK[0x69C]) = v63;
  STACK[0x4A0] = v54;
  return (*(v43 + 8 * (((v63 - 438359194 + (*(v55 + 68) & 0x3Fu) < 0xFFFFFFC0) * (v53 + 4125 + ((v53 + 1153073455) & 0xBB4577DF))) ^ v53)))(v47, 59, 390, 2264, 4356, v52, 95, v48);
}

uint64_t sub_1969D42E4()
{
  v3 = 64 - (v0 + 1192498143 + ((v1 + 30550) | 0xA4226710));
  v4 = 348716176 - v0;
  if (HIDWORD(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= v3;
  }

  v6 = !v5;
  return (*(v2 + 8 * (v6 ^ v1)))();
}

uint64_t sub_1969D4348(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v45 = v44[396] ^ ((*v44 & 0x7FFFFFFE | v44[623] & 0x80000000) >> 1);
  v44[623] = (a4 + v42 - 2749 + v45 - (v43 & (2 * v45)) - 2090145026) ^ *(&a42 + (*v44 & 1));
  return (*(a2 + 8 * ((387 * (a38 > 0x26F)) ^ v42)))(a1);
}

uint64_t sub_1969D43BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x6C0] + 24);
  STACK[0x7C0] = v7;
  return (*(a6 + 8 * (((v7 != 0) * ((v6 - 1291) ^ 0x113E ^ (1145 * (v6 ^ 0xC49)))) | v6)))(a1, a2, a3, a4, a5);
}

void fp_dh_9d556fdabec46e454cba33129da3209d(uint64_t a1)
{
  v1 = *(a1 + 12) - 1575331711 * (a1 ^ 0x6C5B9502);
  __asm { BRAA            X10, X17 }
}

void sub_1969D4588()
{
  *&STACK[0x230] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3D0] = vdupq_n_s64(0x4DE9423B6F16E7D2uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  *&STACK[0x3B0] = vdupq_n_s64(v2);
  *&STACK[0x3C0] = vdupq_n_s64(0xE5AFA7ACF6E0968ELL);
  *&STACK[0x390] = vdupq_n_s64(v0);
  *&STACK[0x3A0] = vdupq_n_s64(v3);
  *&STACK[0x370] = vdupq_n_s64(0x812B53C3B544D6B9);
  *&STACK[0x380] = vdupq_n_s64(0x256A7876A89AD72uLL);
  *&STACK[0x350] = vdupq_n_s64(0x31F3CBC2A36B396CuLL);
  *&STACK[0x360] = vdupq_n_s64(0x7489A27A009464B0uLL);
  *&STACK[0x330] = vdupq_n_s64(0xBF58159D2FFB2386);
  *&STACK[0x340] = vdupq_n_s64(0x50B656E853741D9BuLL);
  *&STACK[0x310] = vdupq_n_s64(0xBB6F16CCE7794FAFLL);
  *&STACK[0x320] = vdupq_n_s64(0x2053F53168026E3DuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFAA19CB27FF500D8);
  *&STACK[0x300] = vdupq_n_s64(v1);
  *&STACK[0x2D0] = vdupq_n_s64(0xA99F7374E88223D2);
  *&STACK[0x2E0] = vdupq_n_s64(0x2AF31A6C0057F93uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xC351D2FA9AB1B69CLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x290] = vdupq_n_s64(0x8EB890C1F5A7514ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0xC751D2FA9AB1B69CLL);
  *&STACK[0x270] = vdupq_n_s64(0xDCED4F79D683836ALL);
  *&STACK[0x280] = vdupq_n_s64(0x26FE75566C512012uLL);
  *&STACK[0x250] = vdupq_n_s64(0xAEBD0636C7C7ECBuLL);
  *&STACK[0x260] = vdupq_n_s64(0xEE76A7BCEB41C1B5);
  *&STACK[0x210] = xmmword_196EBFAE0;
  JUMPOUT(0x1969D47F4);
}

void sub_1969D5310()
{
  v4 = 1621291457 * ((v3 - 208) ^ 0x36178199);
  *(v3 - 200) = &STACK[0x450];
  *(v3 - 208) = v4 + v0 + 5471 + 1908375424 + v1;
  *(v3 - 204) = v4 + v0 + 2530;
  (*(v2 + 8 * (v0 + 6212)))(v3 - 208);
  JUMPOUT(0x1969D580CLL);
}

uint64_t fp_dh_497d886e3ae57c5b10bbf76689f7e3d8(uint64_t a1)
{
  v1 = 1283153057 * (a1 ^ 0x4FD80337);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(a1 + 8);
  v4 = *a1 - v1;
  v5 = v4 - 751314302 + *(v3 + 68);
  *(v3 + 68) = v5;
  v4 -= 754114471;
  v6 = v4 < 0xFFD545D7;
  v7 = v5 - 2800169 < v4;
  if (v6 != v5 > 0x2ABA28)
  {
    v7 = v6;
  }

  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 - 2347) + 8 * ((7484 * v7) ^ v2) - 4))();
}

uint64_t sub_1969D54A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  memset((v12 - 184), 236, 48);
  *(a6 + 100) = 0xECECECECECECECECLL;
  memset((a6 + 108), 236, 42);
  v7 = a7 + v9 - ((2 * v9) & 0x77F4) + 2522 == (v10 ^ 0x27D) + 1135021704 + ((v10 + 2275) | 0x12);
  return (*(v11 + 8 * ((2 * v7) | (16 * v7) | v10)))(a1, a2, a3, a4, a5);
}

void sub_1969D54AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = 1068996913 * ((((v7 - 144) | 0x694BD8A1) - (v7 - 144) + ((v7 - 144) & 0x96B42758)) ^ 0xBCA53930);
  *(v7 - 128) = &STACK[0x31C];
  *(v7 - 144) = v8 ^ 0xADA01D3E;
  *(v7 - 136) = a6 + 46798474 + v8 + 29;
  (*(v6 + 8 * (a6 ^ 0x1A16)))(v7 - 144, a2, a3, a4, a5);
  JUMPOUT(0x196923570);
}

void NOAHabXy()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b7e21529ceb7e89630d679a530f50674) ^ 0x55)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b7e21529ceb7e89630d679a530f50674) ^ 0x55))] ^ 0x60]) + 65);
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))] ^ 0x76]) + 593);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = 810526117 * v2 - 0x3983E51A1E6C17ABLL;
  *(v1 - 4) = 810526117 * (v2 ^ 0xC67C1AE5E193E855);
  v5[0] = 1575331711 * ((((2 * (v5 ^ 0x28DA6047)) | 0xEBDE238C) - (v5 ^ 0x28DA6047) + 168881722) ^ 0xB16EE483) + 1655634431;
  LOBYTE(v1) = -91 * ((*(v1 - 4) + *v0) ^ 0x55);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_b7e21529ceb7e89630d679a530f50674 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_b7e21529ceb7e89630d679a530f50674 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x4E]) + 437) - 4;
  (*&v3[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v1 - 8) ^ 0x16u) - 12) ^ v1) + 53320])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969D5924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  if ((a5 - 399946083) <= 0x19 && ((1 << (a5 - 99)) & 0x3014001) != 0)
  {
    return sub_1968E9B68(a1, a2, a3, a4);
  }

  else
  {
    return (*(v6 + 8 * ((4623 * (((-1541214312 - v8) & *(v5 + 48 * v7 + 40)) == 0)) ^ (a4 - 1541213402))))(4294925278, a2, a3);
  }
}

uint64_t sub_1969D59EC@<X0>(int a1@<W2>, int a2@<W8>)
{
  *v5 = a2 - 5557 + ((v2 + 2194) | 0x5B0);
  v8 = &v5[6 * (a2 - 1049230070)];
  v9 = v8[2];
  LODWORD(STACK[0x4EC]) = v8[3];
  STACK[0x500] = *(v8 + 2);
  LODWORD(STACK[0x55C]) = v8[6];
  v10 = *(v4 + (v9 + v3) * a1 + 36);
  LODWORD(STACK[0x534]) = v10;
  return (*(v6 + 8 * ((7858 * (v10 == v7)) ^ v2)))();
}

uint64_t sub_1969D5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a6 + 8 * (v6 ^ 0x1F92)))(128, 0x10800400FED9166, a3, a4, a5);
  v8 = STACK[0x370];
  STACK[0x530] = v7;
  return (*(v8 + 8 * ((45 * (((v7 == 0) ^ (v6 + 100)) & 1)) ^ v6)))();
}

uint64_t sub_1969D5B58(unint64_t a1)
{
  STACK[0x3E8] = a1;
  LODWORD(STACK[0x3BC]) = v2;
  v4 = STACK[0x630];
  STACK[0x620] = 335;
  *(v4 + 335) = (&STACK[0x620] ^ 0xBA) * (&STACK[0x620] + 17);
  return (*(v3 + 8 * (((STACK[0x620] == 0) * (((877 * (v1 ^ 0x589) - 498807046) & 0x1DBB1FBB) + 1613)) ^ (877 * (v1 ^ 0x589) - 5192))))();
}

uint64_t sub_1969D5C38@<X0>(char a1@<W8>)
{
  v5 = ((834 * (v2 ^ 0xAC2u)) ^ 0xFFFFFFFFFFFFEC73) + v1;
  *(v4 + v5) = (a1 ^ 0xBA) * (a1 + 17);
  return (*(v3 + 8 * (v2 ^ (2 * (v5 == 0)))))();
}

uint64_t sub_1969D5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1621291457 * (((&a15 | 0xA243AF29) - (&a15 & 0xA243AF29)) ^ 0x94542EB0);
  a16 = v23 + 1241;
  LODWORD(a17) = v23 ^ (1122297523 * v21 + 296299868);
  a18 = a13;
  (*(v22 + 54664))(&a15, a2, a3, a4, a5, a6, a7, a8);
  v24 = 753662761 * (((&a15 | 0xE3B14B6B) + (~&a15 | 0x1C4EB494)) ^ 0x86ABB021);
  a15 = (v20 ^ 0x7FBE5AF4) + ((2 * v20) & 0xFF7CB5E8) - v24 - 696799332;
  a16 = v24 ^ 0x15D7;
  a17 = a13;
  a18 = v19;
  (*(v22 + 54232))(&a15);
  v25 = 753662761 * (((&a15 | 0x9E339A28) - &a15 + (&a15 & 0x61CC65D0)) ^ 0xFB296163);
  a17 = a13;
  a18 = 0;
  a15 = 1446382224 - v25;
  a16 = v25 ^ 0x15D7;
  (*(v22 + 54232))(&a15);
  v26 = 1621291457 * (((&a15 | 0x15219E1) + (~&a15 | 0xFEADE61E)) ^ 0x37459879);
  a18 = a13;
  a16 = v26 + 1241;
  LODWORD(a17) = (1122297523 * v18 + 296299868) ^ v26;
  v27 = (*(v22 + 54664))(&a15);
  return (*(v22 + 8 * ((3617 * (a15 == 1906281716)) ^ 0x1729u)))(v27);
}

uint64_t sub_1969D5E94@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, unsigned int a4@<W8>)
{
  v11 = (*(v9 + 4 * v4) ^ a4) + HIDWORD(v7) + (v10 >> (((v5 - 51) | 0x10u) + 112));
  *(v9 + 4 * a3) = v11 + a4 - (a2 & (2 * v11));
  *(v9 + 4 * v4) = HIDWORD(v11) + a4 - 2 * (BYTE4(v11) & 1);
  return (*(v8 + 8 * (v5 ^ (1186 * (a1 + 1 == v6)))))();
}

uint64_t sub_1969D5FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = v8 + v7;
  v19 = v8 + v7 + 9;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (0x6AF7234D0CC131D4 - v20) & ((v9 + 1535) - 0x3EA14D34E061C9B7) | (v20 + 0x1508DCB2F33ECE2BLL) & 0x3EA14D34E061BB9ALL;
  v22 = v21 ^ v10;
  v23 = v21 ^ a7;
  v24 = (__ROR8__(v22, 8) + v23) ^ v15;
  v25 = __ROR8__(v24, 8);
  v26 = v24 ^ __ROR8__(v23, 61);
  v27 = (((v25 + v26) | v12) - ((v25 + v26) | v13) + v13) ^ v14;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - (a1 & (2 * (v29 + v28))) + a2) ^ a3;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((a4 & (2 * (v32 + v31))) - (v32 + v31) + a5) ^ a6;
  v34 = v8 - 1;
  v35 = v33 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v33, 8) + v35) ^ v16;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x1A2AEBE44253AF03;
  *(v18 + 9) = *(v11 + v34) ^ 0xEC ^ (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * (v19 & 7u)));
  return (*(v17 + 8 * ((6623 * (v34 == 0)) ^ v9)))();
}

int *fp_dh_e4463fdb0404e048df907fd1e37ec44a(int *result)
{
  v1 = 1621291457 * ((-2 - ((result | 0xC723F9C3) + (~result | 0x38DC063C))) ^ 0xECB87A5);
  v2 = result[2] + v1;
  v3 = *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (result[1] - v1 + 1208741521)) + 26);
  if (v2 != 1866249606)
  {
    v3 = 364400985;
  }

  *result = v3;
  return result;
}

uint64_t sub_1969D62A8(uint64_t a1)
{
  v8 = -v1 - v7;
  v10 = (v6 - v7) > 0xF && (v8 + v2 + 18) > 0xF && v8 + v3 + 16 >= (v5 + 647) - 9397 + ((v5 + 1934998394) & 0x8CAA3E7F);
  v11 = v8 + v4 + 20;
  v13 = v10 && v11 > 0xF;
  return (*(a1 + 8 * (((2 * v13) | (16 * v13)) ^ (v5 - 4156))))();
}

uint64_t sub_1969D63A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * (((&a13 | 0x171CACBD) - &a13 + (&a13 & 0xE8E35340)) ^ 0x93B52451);
  a18 = v21 + v20 - 1795306232;
  a15 = v21 + 242687253;
  a13 = v21 ^ 0x80F33AA;
  a16 = a11;
  a17 = &a10;
  v22 = (*(v19 + 8 * (v20 + 3819)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * (((a14 == v18) * ((v20 - 937) ^ 0x1441)) ^ v20)))(v22);
}

uint64_t sub_1969D6460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v65 ^ 0x18BC)))((v65 - 559) ^ 0x9976F8D9 ^ LODWORD(STACK[0x5BC]), 0x100004077774924, a3, a4, a5, a6, a7, a8);
  STACK[0xAE8] = v67;
  if (v67)
  {
    a65 = 1906281716;
  }

  LODWORD(STACK[0xAF4]) = a65;
  return (*(v66 + 8 * (((v67 != 0) * (((v65 - 400) | 0x40C) ^ 0x4D9)) ^ v65)))();
}

uint64_t sub_1969D68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v11 = *(off_1F0B0BC08 - 4);
  a10 = 1790939281 * (((~&a9 & 0xE74DF14) - (~&a9 | 0xE74DF15)) ^ 0xF6A8FF54) + 3265;
  a9 = v11;
  (*(v10 + 54216))(&a9, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(a9) = 1012216201 * (((&a9 | 0xDC78B28F) - (&a9 & 0xDC78B28F)) ^ 0x58D13A63) - 5147398;
  v12 = (*(v10 + 54696))(&a9);
  return (*(v10 + 8 * ((31 * (HIDWORD(a9) == 1477999485)) ^ 0x144Cu)))(v12);
}

void fp_dh_562d64a201750367937e6282fbd80c88(_DWORD *a1)
{
  if (*(*a1 + 4) - 676339932 >= 0)
  {
    v2 = *(*a1 + 4) - 676339932;
  }

  else
  {
    v2 = 676339932 - *(*a1 + 4);
  }

  v1 = a1[5] + 455395931 * ((2 * (a1 & 0x85804FDB) - a1 + 2055188516) ^ 0xC8EEEE8);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969D6E20@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = v14 + 216;
  v17 = v16 ^ 0x1DC3;
  v18 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 4203);
  v19 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0x10FD));
  v20 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 3768) - 8;
  v21 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0x10D7)) - 4;
  v151 = v21;
  v152 = v20;
  v153 = v19;
  HIDWORD(v157) = ((v21[v11[3] ^ 0x6FLL] - 27) | (((*(v18 + (v11[1] ^ 0xBCLL)) - 17) ^ 0x83) << 16) | ((v20[*v11 ^ 0x12] ^ 3) << 24) | (((*(v19 + (v11[2] ^ 0xA7)) + 104) ^ 0x77) << 8)) ^ 0x71717126;
  LODWORD(v156) = ((((*(v18 + (v11[9] ^ ((v16 ^ 0xC3) + 80))) - 17) ^ 0xA8) << 16) | ((v20[v11[8] ^ 3] ^ 0x58) << 24) | (((*(v19 + (v11[10] ^ 0xD7)) + 104) ^ 0xBE) << 8) | (v21[v11[11] ^ 0xEDLL] - 27) ^ 0xB3) ^ 0x71717171;
  HIDWORD(v156) = ((((*(v19 + (v11[14] ^ 0xE2)) + 104) ^ 0xE7) << 8) | (((*(v18 + (v11[13] ^ 0x42)) - 17) ^ 0xBA) << 16) | ((v20[v11[12] ^ 0xC7] ^ 0xB5) << 24) | (v21[v11[15] ^ 0xBBLL] - 27) ^ 0xC2) ^ 0x71717171;
  LODWORD(v157) = ((((*(v18 + (v11[5] ^ 0x84)) - 17) ^ 0x8F) << 16) | (((*(v19 + (v11[6] ^ 0x3FLL)) + 104) ^ 0xD8) << 8) | ((v20[v11[4] ^ 0x37] ^ 0xB0) << 24) | (v21[v11[7] ^ 5] - 27)) ^ 0x717171C6;
  HIDWORD(a5) = (((a2 ^ 0xCE9331CA) - 1047006795) ^ ((a2 ^ 0x8AC0E33D) - 2050743484) ^ ((a2 ^ 0x31DEBCEB) + 1054506134)) + 115198325;
  *(v15 - 164) = 0;
  HIDWORD(a11) = 0;
  v22 = 8 * (v13 & 7);
  v23 = (__ROR8__(v13, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  v155 = 1409 * (v16 ^ 0x1080u);
  v24 = __ROR8__(v23 ^ (v155 - 0x749594F881B6AFF2), 8);
  v23 ^= 0xE788DD3012A091E0;
  v25 = (v24 + v23) ^ 0xFB9714BECA2C68E9;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xBD8F7CFD1E07971BLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xFD8B533ED96A4334;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8) + v30;
  v32 = v31 ^ __ROR8__(v30, 61);
  *(&v33 + 1) = v32 ^ 0xAC7DA0564C1838BLL;
  *&v33 = v32;
  v34 = (__ROR8__(v31 ^ 0xAC7DA0564C1838BLL, 8) + (v32 ^ 0xAC7DA0564C1838BLL)) ^ 0x6190A7627E7D0B79;
  v35 = v34 ^ (v33 >> 61);
  *&v33 = __ROR8__(v34, 8);
  v36 = (((((v35 ^ v33) + 2 * (v35 & v33)) ^ 0x8E4D6ECA343D275ELL ^ __ROR8__(v35, 61)) + __ROR8__(((v35 ^ v33) + 2 * (v35 & v33)) ^ 0x8E4D6ECA343D275ELL, 8)) ^ 0x51BB4171AFEDC628) >> v22;
  v37 = (__ROR8__(v13 + 8, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  v38 = v37 ^ 0x8B6A6B077E496091;
  v37 ^= 0xE788DD3012A091E0;
  v39 = (__ROR8__(v38, 8) + v37) ^ 0xFB9714BECA2C68E9;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (v40 + __ROR8__(v39, 8)) ^ 0xBD8F7CFD1E07971BLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (v42 + __ROR8__(v41, 8)) ^ 0xFD8B533ED96A4334;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xAC7DA0564C1838BLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x6190A7627E7D0B79;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x8E4D6ECA343D275ELL;
  v50 = (__ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61))) ^ 0x51BB4171AFEDC628;
  v51 = v50 >> v22;
  v52 = *v13;
  v53 = v36 + 2 * (v50 << (v22 ^ 0x3Fu));
  v54 = (__ROR8__(v13 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  *&v33 = __ROR8__(v54 ^ 0x8B6A6B077E496091, 8);
  v54 ^= 0xE788DD3012A091E0;
  v55 = (v33 + v54) ^ 0xFB9714BECA2C68E9;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (v56 + __ROR8__(v55, 8)) ^ 0xBD8F7CFD1E07971BLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (v58 + __ROR8__(v57, 8)) ^ 0xFD8B533ED96A4334;
  *&v33 = __ROR8__(v58, 61);
  v60 = v59 ^ v33;
  v61 = (v59 ^ v33) + (v59 >> 8) + (v59 << 56);
  v62 = v61 ^ __ROR8__(v60, 61);
  *(&v33 + 1) = v62 ^ 0xAC7DA0564C1838BLL;
  *&v33 = v62;
  v63 = (__ROR8__(v61 + 0xAC7DA0564C1838BLL - ((2 * v61) & 0x158FB40AC9830716), 8) + (v62 ^ 0xAC7DA0564C1838BLL)) ^ 0x6190A7627E7D0B79;
  v64 = v63 ^ (v33 >> 61);
  v65 = (v64 + __ROR8__(v63, 8)) ^ 0x8E4D6ECA343D275ELL;
  v66 = v51 + 2 * (((__ROR8__(v65, 8) + (v65 ^ __ROR8__(v64, 61))) ^ 0x51BB4171AFEDC628) << (v22 ^ 0x3Fu));
  LODWORD(v36) = ((v20[v36 ^ 0x43] ^ 0xEC) << 24) | (((*(v18 + (BYTE1(v53) ^ 0x70)) - 17) ^ 0x92) << 16) | (((*(v19 + (BYTE2(v53) ^ 0x48)) + 104) ^ 0xE4) << 8) | (v21[BYTE3(v53) ^ 0x44] - 27) ^ 6;
  LODWORD(v64) = ((v20[BYTE4(v53) ^ 0xC0] ^ 0x7A) << 24) | (((*(v18 + (BYTE5(v53) ^ 0x47)) - 17) ^ 0x27) << 16) | (((*(v19 + (BYTE6(v53) ^ 0x87)) + 104) ^ 0x6B) << 8) | (v21[HIBYTE(v53) ^ 0x89] - 27) ^ 0x94;
  LODWORD(v53) = ((v20[v51 ^ 0x13] ^ 0x4B) << 24) | (((*(v18 + (BYTE1(v66) ^ 0x67)) - 17) ^ 0x2F) << 16) | (((*(v19 + (BYTE2(v66) ^ 0x2FLL)) + 104) ^ 0xBF) << 8) | (v21[BYTE3(v66) ^ 0xAFLL] - 27) ^ 0x69;
  v67 = ((v20[BYTE4(v66) ^ 0xE7] ^ 0x7B) << 24) | (((*(v18 + (BYTE5(v66) ^ 0xA3)) - 17) ^ 0x37) << 16) | (((*(v19 + (BYTE6(v66) ^ 0xB7)) + 104) ^ 0x10) << 8) | (v21[HIBYTE(v66) ^ 0x64] - 27) ^ 0xCC;
  v68 = ((*(v19 + (v13[2] ^ 0xA8)) + 104) ^ 0x79) << 8;
  LOBYTE(v66) = v21[v13[15] ^ 0xEELL] - 27;
  LODWORD(v51) = (v21[v13[7] ^ 0x2ALL] - 27) ^ 0xE | (((*(v18 + (v13[5] ^ 0x43)) - 17) ^ 0xD) << 16);
  *(v15 - 184) = 4;
  LODWORD(v21) = v20[v13[4] ^ 0x2DLL] ^ 0x56;
  *(v15 - 176) = 10;
  LODWORD(v51) = v51 & 0xFFFF00FF | (v21 << 24) | (((*(v19 + (v13[6] ^ 0x76)) + 104) ^ 0x69) << 8);
  LODWORD(v21) = v53 ^ v156 ^ ((((*(v19 + (v13[10] ^ 0x9ELL)) + 104) ^ 0xF) << 8) | (((*(v18 + (v13[9] ^ 0xDDLL)) - 17) ^ 0xE4) << 16) | ((v20[v13[8] ^ 0x79] ^ 0xC4) << 24) | (v151[v13[11] ^ 0x6BLL] - 27) ^ 0xCE);
  LODWORD(v53) = v67 ^ HIDWORD(v156) ^ (v66 ^ 0xD8 | ((v20[v13[12] ^ 0x6ELL] ^ 0x18) << 24) | (((*(v18 + (v13[13] ^ 0x16)) - 17) ^ 0x45) << 16) | (((*(v19 + (v13[14] ^ 0x8CLL)) + 104) ^ 0xBF) << 8));
  v69 = (v64 ^ v157 ^ v51) - ((2 * (v64 ^ v157 ^ v51)) & 0x96B25E16) - 883347701;
  LODWORD(v66) = v21 - ((2 * v21) & 0x1B895478) - 1916491204;
  LODWORD(v36) = HIDWORD(v157) ^ (v68 & 0xFF00FF00 | ((v20[v52 ^ 0xF9] ^ 0xD9) << 24) | (((*(v18 + (v13[1] ^ 0x9BLL)) - 17) ^ 0x4A) << 16) | (v151[v13[3]] - 27) ^ 0xEB) ^ 0xCD3D2C8D ^ v36;
  v70 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xD0F)) - 8;
  v71 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xD9A));
  LODWORD(v51) = *(v71 + 4 * ((v53 ^ 0xD14400D5) >> 16));
  DWORD1(v33) = v51 ^ 0xFCEAFB;
  LODWORD(v33) = v51 ^ 0x58000000;
  LODWORD(v51) = v69 ^ 0xC8E80470;
  LODWORD(v21) = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v36)];
  v72 = v69 ^ 0x70;
  v73 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xF1E)) - 12;
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v72];
  v74 = v21 + 342877764 - ((2 * v21) & 0x28DFCC88);
  LODWORD(v21) = *(v71 + 4 * (BYTE2(v66) ^ 0x58u));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  v75 = *(v71 + 4 * BYTE2(v51));
  LODWORD(v21) = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * v36];
  DWORD1(v33) = v75 ^ 0xFCEAFB;
  LODWORD(v33) = v75 ^ 0x58000000;
  v76 = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * (v53 ^ 0xD5)];
  v77 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xD50)) - 8;
  v78 = (v76 + 342877764 - ((2 * v76) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v36)];
  LODWORD(v36) = *(v71 + 4 * BYTE2(v36));
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  LODWORD(v66) = v66 ^ 0x163DBF4A;
  LODWORD(v36) = *&v73[4 * v66] ^ *&v70[4 * BYTE1(v51)] ^ 0xC249FAB3 ^ (v33 >> 25);
  LODWORD(v51) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  v79 = BYTE1(v53);
  LODWORD(v53) = (v36 + 342877764 - ((2 * v36) & 0x28DFCC88)) ^ *&v77[4 * ((v53 ^ 0xD14400D5) >> 24)];
  LODWORD(v64) = *&v77[4 * BYTE3(v66)] ^ 0x38A602A ^ v74;
  LODWORD(v36) = *&v70[4 * v79] ^ 0xEB939729 ^ (v51 - 159836115 - ((2 * v51) & 0xECF2305A));
  LODWORD(v66) = *&v70[4 * BYTE1(v66)] ^ 0x9BA75E27 ^ (v78 - 159836115 - ((2 * v78) & 0xECF2305A));
  LODWORD(v21) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  v80 = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * v66];
  v81 = *(v71 + 4 * (BYTE2(v53) ^ 0x4Bu));
  LODWORD(v51) = v53 ^ 0xA12E828A;
  v82 = (v80 + 342877764 - ((2 * v80) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v36)];
  LODWORD(v21) = *&v77[4 * BYTE3(v66)] ^ *&v73[4 * (v53 ^ 0x8A)] ^ 0x205F04DA;
  DWORD1(v33) = v81 ^ 0xFCEAFB;
  LODWORD(v33) = v81 ^ 0x58000000;
  LODWORD(v53) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v64)];
  v83 = v21 - 159836115 - ((2 * v21) & 0xECF2305A);
  LODWORD(v21) = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v66) = (v53 - 159836115 - ((2 * v53) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v66)];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v64];
  v84 = *(v71 + 4 * BYTE2(v36));
  LODWORD(v53) = v66 + 875618974 - ((2 * v66) & 0x6861C53C);
  DWORD1(v33) = v84 ^ 0xFCEAFB;
  LODWORD(v33) = v84 ^ 0x58000000;
  v85 = *&v70[4 * BYTE1(v64)];
  LODWORD(v20) = *&v73[4 * v36];
  LODWORD(v36) = *&v70[4 * BYTE1(v36)] ^ 0x5157E554 ^ (v21 - 159836115 - ((2 * v21) & 0xECF2305A));
  LODWORD(v64) = *&v70[4 * BYTE1(v51)] ^ 0xF39607F4 ^ (v82 - 159836115 - ((2 * v82) & 0xECF2305A));
  LODWORD(v66) = v85 ^ v83 ^ (v33 >> 25) ^ 0xD09CD387;
  v86 = *(v71 + 4 * BYTE2(v36));
  DWORD1(v33) = v86 ^ 0xFCEAFB;
  LODWORD(v33) = v86 ^ 0x58000000;
  v87 = v33 >> 25;
  LODWORD(v21) = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v51) = v20 ^ 0x38852484 ^ v53;
  LODWORD(v21) = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v64)];
  v88 = (v87 + 875618974 - ((2 * v87) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * (v20 ^ 0x84 ^ v53)];
  LODWORD(v20) = *(v71 + 4 * BYTE2(v51));
  v89 = v21 + 342877764 - ((2 * v21) & 0x28DFCC88);
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  LODWORD(v21) = v33 >> 25;
  LODWORD(v20) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  LODWORD(v20) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v66)];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v66];
  LODWORD(v20) = (v20 + 875618974 - ((2 * v20) & 0x6861C53C)) ^ *&v73[4 * v36];
  v90 = *&v77[4 * BYTE3(v51)] ^ (v88 + 342877764 - ((2 * v88) & 0x28DFCC88));
  LODWORD(v21) = (v21 - 159836115 - ((2 * v21) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v36)];
  v91 = *&v77[4 * BYTE3(v64)];
  LODWORD(v64) = *&v70[4 * BYTE1(v51)] ^ 0x4CF109BD ^ (v20 - 159836115 - ((2 * v20) & 0xECF2305A));
  LODWORD(v53) = *&v77[4 * BYTE3(v36)] ^ 0x1E2C8CC3 ^ v89;
  v92 = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ v91;
  v93 = *&v70[4 * BYTE1(v66)] ^ 0x87E22ACD ^ (v90 - 159836115 - ((2 * v90) & 0xECF2305A));
  LODWORD(v36) = *(v71 + 4 * BYTE2(v93));
  LODWORD(v51) = v92 ^ 0x779B4D13;
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  v94 = v33 >> 25;
  LODWORD(v36) = *(v71 + 4 * BYTE2(v53));
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  LODWORD(v66) = *&v73[4 * (v92 ^ 0x13)] ^ 0xC249FAB3 ^ (v33 >> 25) ^ *&v70[4 * BYTE1(v64)];
  LODWORD(v36) = *&v73[4 * v53] ^ *&v70[4 * BYTE1(v93)];
  LODWORD(v66) = (v66 + 342877764 - ((2 * v66) & 0x28DFCC88)) ^ *&v77[4 * HIBYTE(v93)];
  v95 = *&v70[4 * BYTE1(v53)] ^ (v94 - 159836115 - ((2 * v94) & 0xECF2305A));
  v96 = *(v71 + 4 * (BYTE2(v92) ^ 0xFEu));
  DWORD1(v33) = v96 ^ 0xFCEAFB;
  LODWORD(v33) = v96 ^ 0x58000000;
  LODWORD(v21) = ((v36 ^ 0xC249FAB3) + 342877764 - 2 * ((v36 ^ 0xC249FAB3) & 0x146FE64C ^ v36 & 8)) ^ *&v77[4 * BYTE3(v64)] ^ (v33 >> 25);
  v97 = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v97 ^ 0xFCEAFB;
  LODWORD(v33) = v97 ^ 0x58000000;
  v98 = *&v73[4 * v93] ^ *&v70[4 * BYTE1(v51)] ^ 0xC249FAB3 ^ (v33 >> 25);
  v99 = *&v77[4 * BYTE3(v51)] ^ (v95 + 342877764 - ((2 * v95) & 0x28DFCC88));
  LODWORD(v51) = *&v73[4 * v64];
  LODWORD(v64) = *&v77[4 * BYTE3(v53)] ^ 0xA7C5FDB1 ^ (v98 + 342877764 - ((2 * v98) & 0x28DFCC88));
  v100 = v51 ^ 0x3E0B5BBF ^ (v99 + 875618974 - ((2 * v99) & 0x6861C53C));
  LODWORD(v51) = v21 ^ 0x810955F6;
  v101 = *(v71 + 4 * (BYTE2(v21) ^ 0x6Cu));
  LODWORD(v21) = *(v71 + 4 * (BYTE2(v66) ^ 0x70u));
  DWORD1(v33) = v101 ^ 0xFCEAFB;
  LODWORD(v33) = v101 ^ 0x58000000;
  v102 = v33 >> 25;
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * ((*&v77[4 * BYTE3(v53)] ^ 0xFDB1 ^ (v98 - 6588 - ((2 * v98) & 0xCC88))) >> 8)];
  v103 = *&v73[4 * (v77[4 * BYTE3(v53)] ^ 0xB1 ^ (v98 + 68 - ((2 * v98) & 0x88)))] ^ 0x205F04DA ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v21) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * HIBYTE(v100)];
  LODWORD(v66) = v66 ^ 0x71153228;
  v104 = *&v73[4 * v66] ^ (v102 + 875618974 - ((2 * v102) & 0x6861C53C));
  v105 = (v104 + 342877764 - ((2 * v104) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v64)];
  LODWORD(v20) = *&v70[4 * BYTE1(v51)] ^ *&v77[4 * BYTE3(v66)] ^ 0xE216FE69;
  LODWORD(v64) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v64 ^ 0xFCEAFB;
  LODWORD(v33) = v64 ^ 0x58000000;
  v106 = v33 >> 25;
  LODWORD(v64) = *(v71 + 4 * BYTE2(v100));
  DWORD1(v33) = v64 ^ 0xFCEAFB;
  LODWORD(v33) = v64 ^ 0x58000000;
  LODWORD(v64) = (v103 - 159836115 - ((2 * v103) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v66)] ^ 0xD2A47957 ^ (v33 >> 25);
  LODWORD(v53) = *&v70[4 * BYTE1(v100)] ^ 0xF283AE2B ^ (v105 - 159836115 - ((2 * v105) & 0xECF2305A));
  LODWORD(v66) = *&v73[4 * v51];
  LODWORD(v51) = *&v73[4 * v100] ^ (v20 + 875618974 - ((2 * v20) & 0x6861C53C)) ^ v106 ^ 0x9DDF10C0;
  LODWORD(v20) = *(v71 + 4 * BYTE2(v53));
  LODWORD(v66) = v66 ^ 0x243661B2 ^ (v21 + 875618974 - ((2 * v21) & 0x6861C53C));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  v107 = *(v71 + 4 * BYTE2(v51));
  DWORD1(v33) = v107 ^ 0xFCEAFB;
  LODWORD(v33) = v107 ^ 0x58000000;
  v108 = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v66)];
  v109 = (v108 + 875618974 - ((2 * v108) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v20) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  v110 = *&v73[4 * v51] ^ *&v70[4 * BYTE1(v66)] ^ (v33 >> 25);
  LODWORD(v20) = v110 ^ 0xC249FAB3;
  LODWORD(v36) = (v110 ^ 0xC249FAB3) & 0x146FE64C ^ v110 & 8;
  v111 = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v111 ^ 0xFCEAFB;
  LODWORD(v33) = v111 ^ 0x58000000;
  LODWORD(v36) = v20 + 342877764 - 2 * v36;
  LODWORD(v51) = *&v70[4 * BYTE1(v51)] ^ 0xE216FE69 ^ *&v77[4 * BYTE3(v64)] ^ (v33 >> 25);
  LODWORD(v66) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v66];
  LODWORD(v21) = v51 + 875618974 - ((2 * v51) & 0x6861C53C);
  LODWORD(v20) = *&v73[4 * v53];
  LODWORD(v51) = *&v70[4 * BYTE1(v64)] ^ 0xC653C9DB ^ (v66 - 159836115 - ((2 * v66) & 0xECF2305A));
  LODWORD(v64) = *&v70[4 * BYTE1(v53)] ^ 0x93159A41 ^ (v109 - 159836115 - ((2 * v109) & 0xECF2305A));
  LODWORD(v53) = *&v77[4 * BYTE3(v53)] ^ 0xFC4924AA ^ v36;
  v112 = *(v71 + 4 * BYTE2(v64));
  LODWORD(v66) = v20 ^ 0x7FBAB8A9 ^ v21;
  LODWORD(v36) = *(v71 + 4 * BYTE2(v51));
  DWORD1(v33) = v112 ^ 0xFCEAFB;
  LODWORD(v33) = v112 ^ 0x58000000;
  LODWORD(v21) = (v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A);
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  v113 = v33 >> 25;
  LODWORD(v36) = v21 ^ *&v70[4 * BYTE1(v51)];
  v114 = *&v73[4 * v51] ^ *&v70[4 * BYTE1(v64)] ^ 0xC249FAB3;
  LODWORD(v36) = (v36 + 342877764 - ((2 * v36) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v66)];
  LODWORD(v21) = *(v71 + 4 * BYTE2(v53));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v36) = (v36 + 875618974 - ((2 * v36) & 0x6861C53C)) ^ *&v73[4 * v53];
  v115 = *&v73[4 * v66] ^ (v113 + 875618974 - ((2 * v113) & 0x6861C53C));
  LODWORD(v51) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v21) = (v115 - 159836115 - ((2 * v115) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v53)];
  LODWORD(v20) = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  v116 = *&v70[4 * BYTE1(v66)];
  LODWORD(v66) = *&v77[4 * BYTE3(v64)] ^ 0x5B724F4F ^ (v21 + 342877764 - ((2 * v21) & 0x28DFCC88));
  LODWORD(v64) = (v114 + 342877764 - ((2 * v114) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v53)] ^ (v33 >> 25) ^ 0x6168A23E;
  LODWORD(v51) = v116 ^ 0x55B8C5CE ^ (v51 - 159836115 - ((2 * v51) & 0xECF2305A));
  LODWORD(v21) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = v33 >> 25;
  v117 = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v117 ^ 0xFCEAFB;
  LODWORD(v33) = v117 ^ 0x58000000;
  v118 = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v51)];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v66];
  v119 = *&v73[4 * v51] ^ 0xC249FAB3 ^ *&v70[4 * BYTE1(v66)];
  LODWORD(v21) = (v21 - 159836115 - ((2 * v21) & 0xECF2305A)) ^ *&v70[4 * ((v36 ^ 0x9654) >> 8)];
  v120 = (v118 + 875618974 - ((2 * v118) & 0x6861C53C)) ^ *&v73[4 * v64];
  v121 = v120 + 342877764 - ((2 * v120) & 0x28DFCC88);
  v122 = *(v71 + 4 * BYTE2(v51));
  DWORD1(v33) = v122 ^ 0xFCEAFB;
  LODWORD(v33) = v122 ^ 0x58000000;
  LODWORD(v66) = *&v77[4 * BYTE3(v66)] ^ *&v73[4 * (v36 ^ 0x54)] ^ 0x205F04DA ^ (v33 >> 25);
  v123 = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v51) = *(v71 + 4 * (BYTE2(v36) ^ 0xFEu));
  DWORD1(v33) = v51 ^ 0xFCEAFB;
  LODWORD(v33) = v51 ^ 0x58000000;
  LODWORD(v21) = *&v77[4 * BYTE3(v64)];
  LODWORD(v20) = (v66 - 159836115 - ((2 * v66) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v64)];
  LODWORD(v64) = *&v77[4 * BYTE3(v36)] ^ 0x6C6B9CF9 ^ v121;
  LODWORD(v66) = v123 ^ 0x62C41678;
  LODWORD(v36) = (v119 + 342877764 - ((2 * v119) & 0x28DFCC88)) ^ v21 ^ (v33 >> 25) ^ 0xCB50F71C;
  LODWORD(v51) = *(v71 + 4 * (BYTE2(v20) ^ 0x80u));
  DWORD1(v33) = v51 ^ 0xFCEAFB;
  LODWORD(v33) = v51 ^ 0x58000000;
  v124 = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * ((v123 ^ 0x1678) >> 8)];
  v125 = (v124 + 875618975 + ~((2 * v124) & 0x6861C53C)) ^ *&v73[4 * v36];
  LODWORD(v21) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v20) = v20 ^ 0xFFE590EC;
  LODWORD(v21) = *&v70[4 * BYTE1(v20)] ^ 0xC249FAB3 ^ *&v73[4 * (v123 ^ 0x78)] ^ (v33 >> 25);
  v126 = *(v71 + 4 * (BYTE2(v123) ^ 0xA1u));
  DWORD1(v33) = v126 ^ 0xFCEAFB;
  LODWORD(v33) = v126 ^ 0x58000000;
  v127 = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * (v20 >> 24)];
  v128 = (v125 + 342877764 - ((2 * v125) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v64)];
  v129 = (v127 + 875618974 - ((2 * v127) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v64) = *&v70[4 * BYTE1(v64)] ^ *&v77[4 * BYTE3(v66)] ^ (*(v71 + 4 * BYTE2(v36)) << 7) ^ (*(v71 + 4 * BYTE2(v36)) >> 25) ^ 0x9C6383C5;
  LODWORD(v71) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v36)];
  LODWORD(v66) = *&v73[4 * v20];
  LODWORD(v73) = BYTE1(v36);
  LODWORD(v36) = (v64 + 875618975 + ~((2 * v64) & 0x6861C53C)) ^ v66;
  LODWORD(v66) = *&v70[4 * v73];
  LODWORD(v73) = v71 ^ 0xF4B67A5B;
  LODWORD(v51) = v128 ^ 0xC5E485D;
  LOBYTE(v64) = v36 ^ 0x47;
  v130 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xC7A)) - 4;
  v131 = *&v130[4 * (HIBYTE(v128) ^ 0x6A)];
  DWORD1(v33) = v131 ^ 0x93921;
  LODWORD(v33) = v131 ^ 0x76000000;
  LODWORD(v66) = v66 ^ 0x5D479BEB ^ (v129 - 159836115 - ((2 * v129) & 0xECF2305A));
  v132 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xDE7)) - 12;
  LODWORD(v21) = *&v132[4 * ((v71 ^ 0x7A5B) >> 8)];
  v133 = (*&v132[4 * (((v36 ^ 0xD247) >> 8) ^ 0x1C)] + 737362981) ^ (v33 >> 24);
  v134 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3260) - 4;
  LODWORD(v21) = (v21 - ((2 * v21 + 400984138) & 0x26CE1392) + 1062882798) ^ *&v134[4 * v51];
  v135 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xDFA));
  v136 = (v133 + 325519817 - ((2 * v133) & 0x26CE1392)) ^ *&v134[4 * (v71 ^ 0x8F)];
  v137 = *(v135 + 4 * ((v71 ^ 0xF4B67A5B) >> 16)) ^ (*&v132[4 * BYTE1(v51)] - ((2 * *&v132[4 * BYTE1(v51)] + 1474725962) & 0x4E4232B4) + 1393843583);
  LODWORD(v71) = *&v130[4 * BYTE3(v66)];
  DWORD1(v33) = v71 ^ 0x93921;
  LODWORD(v33) = v71 ^ 0x76000000;
  v138 = v36 ^ 0xF77FBA1D;
  LODWORD(v36) = (v21 + 656480602 - ((2 * v21) & 0x4E4232B4)) ^ *(v135 + 4 * ((v36 ^ 0xF77FBA1D) >> 16)) ^ (v33 >> 24);
  LODWORD(v51) = *&v134[4 * (v64 ^ 0x8E)] ^ *(v135 + 4 * BYTE2(v51)) ^ (*&v132[4 * BYTE1(v66)] + 737362981);
  LODWORD(v64) = *&v130[4 * HIBYTE(v138)];
  DWORD1(v33) = v64 ^ 0x93921;
  LODWORD(v33) = v64 ^ 0x76000000;
  LODWORD(v64) = *(v135 + 4 * BYTE2(v66)) ^ (v136 + 656480602 - ((2 * v136) & 0x4E4232B4));
  LODWORD(v77) = ((v137 ^ (v33 >> 24)) + 325519817 - ((2 * (v137 ^ (v33 >> 24))) & 0x26CE1392)) ^ *&v134[4 * v66];
  LODWORD(v66) = *&v130[4 * (v73 >> 24)];
  v139 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xF68)) - 8;
  v12[1] = v139[((v64 ^ 0xBD206F14) >> 16) ^ 0xC1] ^ 0x5C;
  v140 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3218) - 8;
  v141 = v51 ^ (v66 << 8) ^ BYTE3(v66);
  v142 = v141 ^ 0x45A4645Cu;
  v12[11] = (v140[v77 ^ 0x7ALL] + 101) ^ 0x21;
  v143 = v141 ^ 0x3275756u;
  v12[7] = (v140[v36 ^ 0xE7] + 101) ^ 0x35;
  v12[13] = v139[BYTE2(v142) ^ 0xADLL] ^ 0x72;
  v144 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3293) - 12;
  v12[14] = ((BYTE1(v143) ^ 0x1E) + v144[BYTE1(v143) ^ 0xC2] - 124) ^ 0x9C;
  v12[3] = (v140[v64 ^ 0x6ALL] + 101) ^ 0x67;
  v12[2] = ((BYTE1(v64) ^ 0xDE) + v144[BYTE1(v64) ^ 2] - 124) ^ 0x1E;
  v12[15] = (v140[v141 ^ 0x94] + 101) ^ 0x40;
  v12[6] = ((BYTE1(v36) ^ 4) + v144[BYTE1(v36) ^ 0xD8] - 124) ^ 0xB7;
  v145 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3087) - 4;
  *v12 = v145[BYTE3(v64) ^ 0x9BLL] ^ 0xA7;
  v12[12] = v145[v143 >> 24] ^ 0x74;
  v12[5] = v139[((v36 ^ 0xC7D34C0C) >> 16) ^ 0x35] ^ 0x40;
  v12[9] = v139[((v77 ^ 0x80B39E4B) >> 16) ^ 5] ^ 0x1D;
  v12[*(v15 - 184)] = v145[BYTE3(v36) ^ 0xB1] ^ 0xAC;
  v12[*(v15 - 176)] = ((BYTE1(v77) ^ 0x87) + v144[BYTE1(v77) ^ 0x5BLL] - 124) ^ 0x43;
  v146 = v145[(v77 >> 24) ^ 0xBBLL];
  v147 = *(v15 - 164);
  v12[8] = v146 ^ 0x83;
  v148 = (HIDWORD(a5) < 0x816777D8) ^ ((v147 - 2123925528) < 0x816777D8);
  v149 = (v147 - 2123925528) < HIDWORD(a5);
  if (v148)
  {
    v149 = HIDWORD(a5) < 0x816777D8;
  }

  return (*(a1 + 8 * ((6147 * v149) ^ v17)))(v148, HIDWORD(a5), 8, v147, 1476395008, 167, v142, 222, a3, v12, a5, v151, v152, v153, v18, a1, a11, v155, v156, v157, 13, 14, 1, 11, 3);
}

void fp_dh_86e2adcad84accda1b024ccf27d2a004(_DWORD *a1)
{
  v1 = *a1 + 1575331711 * ((-2 - ((a1 | 0x759404E7) + (~a1 | 0x8A6BFB18))) ^ 0xE6306E1A);
  __asm { BRAA            X10, X17 }
}

void sub_1969D8E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, unsigned int a17, unsigned int a18, _DWORD *a19, unsigned int a20, unsigned int a21)
{
  v25 = 1825732043 * (((&a16 | 0xBB4EC92D) + (~&a16 | 0x44B136D2)) ^ 0xBBD89A1B);
  a17 = v25 + 1865116605;
  a18 = (v24 + 4718) ^ v25;
  (*(v22 + 8 * (v24 + 5926)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  v26 = 489239129 * (&a16 ^ 0xB9282336);
  a20 = v26 + 426488402;
  a21 = v26 ^ 0x99603FFC;
  a17 = v26 + v24 + 3259;
  a16 = &a12;
  a19 = v23;
  (*(v22 + 8 * (v24 ^ 0x195A)))(&a16);
  v27 = v21[1];
  *v21 += a12;
  v21[1] = v27 + a13;
  v28 = v21[3];
  v21[2] += a14;
  v21[3] = v28 + a15;
  a19 = v21;
  a16 = v23;
  a17 = v24 + 1068996913 * (((&a16 | 0x7A9110D) + (~&a16 | 0xF856EEF2)) ^ 0xD247F09D) + 1738598562;
  (*(v22 + 8 * (v24 + 5914)))(&a16);
  JUMPOUT(0x1969D8FC8);
}

uint64_t fp_dh_8727a287289976df26426e77d5ec12ff(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = 654144011 * ((-2 - ((a1 | 0xD8E7D8F6) + (~a1 | 0x27182709))) ^ 0xBCC5A95);
  v3 = *(a1 + 4) + v2;
  v4 = *(a1 + 8);
  v5 = 1385229187 * (*(a1 + 16) ^ v2) - 2118216123;
  v6 = 489239129 * ((710952839 - (&v8 | 0x2A604787) + (&v8 | 0xD59FB878)) ^ 0x6CB79B4E);
  v10 = v5 ^ ((v5 ^ 0xCD56D3D8) + 2085333504) ^ ((v5 ^ 0x46BC35A4) - 140423292) ^ ((v5 ^ 0xB9E79C5B) + 150660733) ^ ((v5 ^ 0x7CEFFFFF) - 839744039) ^ v6 ^ 0xAFE037F7;
  v11 = v3 + v6 - 418961162;
  v9 = v4;
  v8 = v6 + 30873476;
  result = (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x18F8EF1F)) + 8 * (v3 ^ 0x18F8F620) - 4))(&v8);
  *a1 = v12;
  return result;
}

void sub_1969D942C()
{
  v3 = *(v0 + 16);
  v2 = (v0 + 16);
  v1[16] = *v1 ^ v3;
  v4 = v1 + 16;
  v4[1] = *(v4 - 15) ^ v2[1];
  v4[2] = *(v4 - 14) ^ v2[2];
  v4[3] = *(v4 - 13) ^ v2[3];
  v4[4] = *(v4 - 12) ^ v2[4];
  v4[5] = *(v4 - 11) ^ v2[5];
  v4[6] = *(v4 - 10) ^ v2[6];
  v4[7] = *(v4 - 9) ^ v2[7];
  v4[8] = *(v4 - 8) ^ v2[8];
  v4[9] = *(v4 - 7) ^ v2[9];
  v4[10] = *(v4 - 6) ^ v2[10];
  v4[11] = *(v4 - 5) ^ v2[11];
  v4[12] = *(v4 - 4) ^ v2[12];
  v4[13] = *(v4 - 3) ^ v2[13];
  v4[14] = *(v4 - 2) ^ v2[14];
  v4[15] = *(v4 - 1) ^ v2[15];
  JUMPOUT(0x1969D9640);
}

void fp_dh_92ea1664e8e073594bfcc4623b11aab8(_DWORD *a1)
{
  v1 = *a1 ^ (1575331711 * ((-2 - ((a1 | 0x447E73FC) + (~a1 | 0xBB818C03))) ^ 0xD7DA1901));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1969D9E64()
{
  v5 = (*(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCELL) << 24) | (*(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCDLL) << 16) | (*(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCCLL) << 8);
  v6 = *(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCBLL);
  return (*(v4 + 8 * ((100 * ((((v5 | v6) - 1720256293 - 2 * ((v5 | v6) & 0x1976F8DF ^ v6 & 4)) ^ 0x9976F8DB) + v0 + 10 > v2)) ^ v3)))();
}

void sub_1969D9F64(char a1@<W3>, char a2@<W4>, unsigned __int8 *a3@<X8>)
{
  v5 = v3 ^ 0x1238;
  v6 = a3;
  LODWORD(STACK[0x340]) = 0;
  v7 = *(v4 + 8 * (v5 - 4909)) - 8;
  v8 = *(v7 + (a3[13] ^ 0x7DLL));
  v9 = v8 ^ (v8 >> 5) ^ (v8 >> 3);
  v10 = *(v4 + 8 * (v5 - 5153)) - 8;
  v11 = *(v10 + (v6[4] ^ 0x50));
  v12 = *(v10 + (*v6 ^ 0xB6));
  v13 = *(v4 + 8 * (v5 ^ 0x17A4)) - 8;
  v14 = v5 - 217 + *(v13 + (v6[7] ^ 0x8CLL)) + 122;
  v15 = v14 & 0xFFCD ^ 0xFF85;
  v16 = v14 ^ (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 2) & (2 * (((2 * (v14 & 3)) ^ 0xE) & (v14 ^ 2) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  v17 = ((v12 >> 7) | (2 * v12)) ^ 0x7D;
  v18 = (v17 >> 1) | (v17 << 7);
  v19 = *(v7 + (v6[5] ^ 0x30));
  v20 = (v17 >> 3) & 0x1A;
  v21 = (v16 & 0x1FE ^ 0xFFFFFE03) & ((((v11 >> 2) & 0x1A ^ v11) << 24) ^ 0xE1909A86) | v16 & 0x79;
  v22 = v20 ^ v18;
  v23 = *(v4 + 8 * (v5 ^ 0x142E)) - 4;
  v24 = v6[6];
  LOBYTE(v5) = *(v23 + (v24 ^ 0x5E));
  LOBYTE(v16) = ((v24 ^ 0xCE) - 107) ^ ((v24 ^ 0xA4) - 1) ^ ((v24 ^ a1) + 98);
  LOBYTE(v20) = v16 - (((v5 ^ v24 ^ 0x59) + 91) ^ ((v5 ^ v24 ^ 0x43) + 65) ^ ((v5 ^ v24 ^ 0x55) + 87)) + 112;
  v25 = v20 & 0x1B ^ 0xA5;
  v26 = 46 - (((v5 ^ 0x77) - 119) ^ ((v5 ^ 0xBE) + 66) ^ ((v5 ^ 0xD7) + 41));
  v27 = v26 & 0x42 ^ 0x4F;
  v28 = v26 ^ a2;
  LOBYTE(v5) = v26 ^ v5 ^ v20 ^ (2 * (v25 ^ v27 ^ v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & 0x36 ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ (v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * (((2 * v20) & 0x22 ^ 0x4A) & v20 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))));
  LOBYTE(v16) = v16 + (((v5 ^ 0x3B) + 46) ^ ((v5 ^ 0x14) + 3) ^ ((v5 ^ 0x68) + 127)) + 4;
  LOBYTE(v5) = v16 & 6 ^ 0xD4;
  v29 = (v16 ^ (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) << 8;
  v30 = (*(v23 + (v6[2] ^ 0x4ELL)) ^ v6[2]) << 8;
  v31 = (v30 ^ 0xFFFFE7FF) & ((v22 << 24) ^ 0x2124A8B6) | v30 & 0x5700;
  v32 = (v29 ^ 0xFFFF68FF) & (v21 & 0x2D80801B ^ 0x22201869 ^ (v21 ^ 0x806F6120) & (((v19 ^ (v19 >> 5) ^ (v19 >> 3)) << 16) ^ 0xD2BD69E4));
  v33 = *(v10 + (v6[12] ^ 0x59));
  LOBYTE(v24) = *(v13 + (v6[3] ^ 0xB3)) + 124;
  LOWORD(v30) = *(v13 + (v6[15] ^ 0x48)) + 17;
  v34 = v24 & 0xA0 | 0x1C;
  LOBYTE(v24) = v24 ^ (2 * ((v24 ^ 8) & (2 * ((v24 ^ 8) & (2 * ((v24 ^ 8) & (2 * ((v24 ^ 8) & (2 * (v24 & (2 * (v24 & 0xA0)) | v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  v35 = (v24 & 0x7F ^ 0xFF7FFF57) & (v31 ^ 0x435B62C1);
  v36 = *(v7 + (v6[1] ^ 0x7ELL));
  LOWORD(v31) = v30 & 0xFFEB ^ 0xFF9C;
  LOWORD(v30) = v30 ^ (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * v30) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31));
  v37 = (v30 & 0x1FE ^ 0xFFFFD604) & (((((v33 ^ 0xE2 ^ (v33 >> 2) & 0x1A) << 24) ^ 0x1AFC93A6) & ((v9 << 16) ^ 0xFF33D7BF) & 0xFFFCFFFF | ((v9 & 3) << 16)) ^ 0x59F04580);
  v38 = (v36 ^ (v36 >> 5) ^ (v36 >> 3)) << 16;
  v39 = ((v24 & 0x88 | 0xF32FD425) ^ v35) & (v38 ^ 0xFF98FFFF);
  LOBYTE(v33) = *(v13 + (v6[11] ^ 0x1ALL)) + 10;
  LOBYTE(v24) = v33 & 0xB0 ^ 0x6F;
  LOBYTE(v24) = (v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & 0xA ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24;
  v40 = (v33 ^ ~(2 * v24) | 0xFFFFFF00) & (((*(v23 + (v6[10] ^ 0x54)) ^ v6[10]) << 8) ^ 0x582C7249) | (v33 ^ (2 * v24)) & 0xB6;
  LODWORD(v24) = ((v30 & 0xD9 | v37) ^ 0x2D922910) & (((*(v23 + (v6[14] ^ 0x14)) ^ v6[14]) << 8) ^ 0x2D939ADB);
  v41 = *(v10 + (v6[8] ^ 0x99));
  v42 = v6[9];
  LODWORD(v6) = ((2 * v42) & 0x15C) + (v42 ^ 0x97B36EAE);
  v43 = v6 - (((v42 ^ 0xA930A1F3) + 1456430837) ^ ((v42 ^ 0xDFFBEEF1) + 537137655) ^ ((v42 ^ 0x76CB4F07) - 1993035775)) - 1910325593;
  v44 = ((v43 ^ 0x1654DC87) - 864219861) ^ v43 ^ ((v43 ^ 0xB2A7555D) + 1754170609) ^ ((v43 ^ 0x3EDA5867) - 453801525) ^ ((v43 ^ 0xBFFFFFEF) + 1708535363);
  v45 = v6 + 543298872 + (((v44 ^ 0x5B85539B) + 1045195368) ^ ((v44 ^ 0x4AB220) + 1703119837) ^ ((v44 ^ 0x81E63017) - 466679316));
  v46 = *(v7 + (v45 ^ ((v45 ^ 0xF1F4FD79) + 2046652082) ^ ((v45 ^ 0xCFF04BD1) + 1207556122) ^ ((v45 ^ 0xB38D2520) + 998553321) ^ ((v45 ^ 0xFA7FFFBF) + 1920363640) ^ 0x77F66C01));
  v47 = (v40 ^ 0xA7022000) & ((((v41 >> 2) & 0x1A ^ v41) << 24) ^ 0x1902AA29) ^ v40 & 0x102C55D6;
  LODWORD(STACK[0x310]) = v37 & 0xD26CD624 ^ 0xB1024E6 ^ v24;
  LODWORD(STACK[0x330]) = v29 & 0xE00 ^ 0xB1456508 ^ v32;
  LODWORD(STACK[0x308]) = v47 & 0xAD0AE0E4 ^ 0x7F14A74B ^ (v47 ^ 0x2D11502) & (((v46 ^ (v46 >> 3) ^ ((v46 >> 5) | 0x10)) << 16) ^ 0x52FB1F1B);
  LODWORD(STACK[0x300]) = v38 & 0xAF0000 ^ 0x7276AD55 ^ v39;
  STACK[0x338] = STACK[0x650] + 7;
  JUMPOUT(0x1969DA808);
}

void sub_1969DCC8C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1969BEC54);
}

void fp_dh_508eb57fce10dacf8b941e5ebb67f3df(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *a1 + 1825732043 * ((-2 - ((~a1 | 0x68310354) + (a1 | 0x97CEFCAB))) ^ 0x68A75063);
  __asm { BRAA            X9, X17 }
}

_DWORD *sub_1969DCDEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = v4[5];
  v10 = v4[6] - ((2 * v4[6] + 2) & 0x9A) + 78;
  v11 = ((v8 - 144) ^ 0x2CD47D9C) * a4;
  *(v8 - 136) = ((v4[4] ^ 0x7F) + (v4[4] << (((v5 - 31) | 0x1A) - 26)) - 71) ^ (((v8 + 112) ^ 0x9C) * a4);
  *(v8 - 135) = ((v8 + 112) ^ 0x9C) * a4 + v9 - ((2 * v9) & 0x66) - 77;
  *(v8 - 128) = a3;
  *(v8 - 120) = v10 ^ (((v8 + 112) ^ 0x9C) * a4);
  *(v8 - 116) = (v7 ^ ((v7 ^ 0x96976D5B) + 418848337) ^ ((v7 ^ 0x43F2B3E8) - 846020380) ^ ((v7 ^ 0x9985ADB8) + 400940724) ^ ((v7 ^ 0x3D7FFFFF) - 1289777931) ^ 0xE6B4FC2E) + v11;
  *(v8 - 112) = (v5 + 1009) ^ v11;
  *(v8 - 144) = a2;
  (*(v6 + 8 * (v5 + 2809)))(v8 - 144);
  result = v14;
  *v13 = -1;
  *v14 = v7;
  return result;
}

uint64_t sub_1969DCF64@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a2 + v5) ^ 0xEC;
  return (*(a1 + 8 * (((v5 == 0) * (((v3 + 2646) | 0x268) + 2470)) ^ v3)))();
}

uint64_t sub_1969DCFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, char a17, uint64_t a18, char *a19, uint64_t a20, uint64_t *a21, int a22, unsigned int a23, int *a24, unsigned int a25, int *a26)
{
  a16 = 1304194923;
  v29 = 1621291457 * ((((2 * &a19) | 0xAD1EE2B4) - &a19 + 695242406) ^ 0xE098F0C3);
  a20 = a18;
  a21 = &a18;
  a25 = v29 + v26 + 2575;
  a26 = &a16;
  a24 = &a15;
  a19 = &a17;
  a23 = v29 + a15 + 273767718;
  v30 = (*(v28 + 8 * (v26 ^ 0x19E2)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v28 + 8 * (((a22 == 1906281716) * ((233 * (v26 ^ 0x326)) ^ 0x3B0)) | v26)))(v30, v27);
}

uint64_t sub_1969DD590@<X0>(int a1@<W8>)
{
  STACK[0xA08] = v1;
  v3 = STACK[0x690];
  STACK[0xA10] = STACK[0x690];
  return (*(v2 + 8 * (((v1 - v3 > 9) ^ (93 * ((a1 - 62) & 0xDD ^ 0x1F))) & 1 | a1)))();
}

uint64_t sub_1969DD5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x6C8];
  STACK[0x7A8] = STACK[0x6C8];
  return (*(a6 + 8 * (((((13 * ((148 * (v6 ^ 0xED1)) ^ 0x33D) + 660) | 0x1048) ^ 0x16A4) * (v7 == 0)) ^ (148 * (v6 ^ 0xED1)))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969DD698()
{
  v1 = STACK[0x228];
  v2 = (STACK[0x228] ^ 0xB5) - 3644;
  v3 = STACK[0x228] + 1939;
  v4 = STACK[0x760];
  v5 = STACK[0x6B0];
  v6 = STACK[0xB18];
  v7 = STACK[0x228] - 2283;
  v8 = 1068996913 * ((v0 + 302691337 - 2 * ((v0 - 224) & 0x120AB4E9)) ^ 0xC7E45578);
  *(v0 - 184) = -1482410190 - v8;
  *(v0 - 208) = v5;
  *(v0 - 200) = v7 ^ v8;
  *(v0 - 192) = v6;
  *(v0 - 224) = v4;
  *(v0 - 216) = 1230483497 - v8;
  v9 = STACK[0x248];
  v10 = (*(STACK[0x248] + 8 * (v1 + 3285)))(v0 - 224);
  v11 = *(v0 - 180);
  LODWORD(STACK[0x9B8]) = v11;
  return (*(v9 + 8 * (((v11 != 1906281716) * (v2 ^ 0x70)) ^ v3)))(v10);
}

uint64_t sub_1969DDA28@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v4 = (((*(v2 + 16) ^ 0x255645CE) + 1909653148) ^ ((*(v2 + 16) ^ ((v3 ^ 0x1BF0) - 781209446)) - 2048164445) ^ ((*(v2 + 16) ^ 0xBC67CC6) + 1598211988)) - 1244536922;
  v5 = (a2 > 0x9EB2DBAE) ^ (v4 < 0x614D2451);
  v6 = a2 + 1632445521 > v4;
  if (v5)
  {
    v6 = a2 > 0x9EB2DBAE;
  }

  return (*(a1 + 8 * ((28 * !v6) ^ v3)))();
}

uint64_t sub_1969DDAF4(uint64_t a1, uint64_t a2)
{
  v45 = STACK[0x300];
  v2 = *v43;
  v3 = *v43 + 4;
  v4 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0x2AF7234D0CC131D4 - v4) & 0x2A199E3A6C7C6131 | (v4 - 0x6AF7234D0CC131D5) & 0xD1E661C593839ECELL;
  v6 = v5 ^ 0x67F0DC01036A86E3;
  v5 ^= 0xCFB639969A9CF7BFLL;
  v7 = __ROR8__(v6, 8);
  v8 = (((2 * (v7 + v5)) | 0x1ED977F0C520FDA0) - (v7 + v5) + 0x709344079D6F8130) ^ 0x6BF1CC27E5ADC1AELL;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) & 0xAB878F6F884E2F0ELL) - (v10 + v9) + 0x2A3C38483BD8E878) ^ 0xDF9EC9F18E085A71;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((a2 - ((v13 + v12) | a2) + ((v13 + v12) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL, 8);
  v15 = (a2 - ((v13 + v12) | a2) + ((v13 + v12) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL ^ __ROR8__(v12, 61);
  v16 = (((2 * (v14 + v15)) | 0xC9AD8CEC88B7F32) - (v14 + v15) - 0x64D6C676445BF99) ^ 0x6708F14D945A9B6ELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v40;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = *(STACK[0x370] + 8 * (v44 - 5613));
  v22 = (((v20 + v19) & 0x63AF45F0EF53838FLL ^ 0x294560A0428381) + ((v20 + v19) & 0x9C50BA0F10AC7C70 ^ 0x10503A0C108C4421) - 1) ^ 0xA539488F29D68A2;
  v23 = v22 ^ __ROR8__(v19, 61);
  v24 = __ROR8__(v22, 8);
  *(v2 + 4) = BYTE1(LODWORD(STACK[0x300])) ^ v42 ^ (((v41 - ((v24 + v23) | v41) + ((v24 + v23) | 0x47F243311DD82B06)) ^ 0xECC201E3355F7747) >> (8 * (v3 & 7u)));
  v25 = __ROR8__((v2 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v25 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v27 = (__ROR8__((v25 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v26) ^ 0xE49D77DF873DBF7ELL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xF5A2F1B9B5D0B209;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x5963B6C555D97F1FLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v39;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v40;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x1A2AEBE44253AF03;
  *(v2 + 5) = v45 ^ (((__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v2 + 5) & 7))) ^ 0x8F;
  return v21(a1);
}

uint64_t sub_1969DDB10@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = v4 + v2;
  *(v6 + 24) = a2;
  *(v6 + 40) = a2;
  return (*(v5 + 8 * (v3 ^ (2 * (v2 + a1 != 2942)))))();
}

uint64_t sub_1969DDB3C()
{
  STACK[0x4C8] = 0;
  STACK[0x788] = 0;
  v1 = STACK[0x958];
  v2 = &STACK[0xB70] + STACK[0x958];
  STACK[0x7E0] = (v2 + 32);
  STACK[0x5F8] = (v2 + 48);
  STACK[0x958] = v1 + 128;
  v3 = STACK[0x248];
  v4 = (*(STACK[0x248] + 8 * (v0 + 3283)))(v2, 0, 32);
  STACK[0x4A0] = 0;
  STACK[0x558] = 0;
  return (*(v3 + 8 * (((2 * ((((v0 - 1882) ^ 1) & 1) == 0)) & 0xFB | (4 * (((v0 - 90) ^ 0xFE) & 1))) ^ (v0 + 2191))))(v4);
}

uint64_t sub_1969DDB78()
{
  v2 = *(STACK[0x7F8] + 24);
  STACK[0x748] = v2;
  return (*(v0 + 8 * ((25 * (((v2 == 0) ^ (v1 - 95)) & 1)) ^ (v1 + 1585))))();
}

uint64_t sub_1969DDC7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = v56 + 1846;
  STACK[0x3C0] = 0xF946EE33624040D0;
  STACK[0x3C8] = 0xF0A7A75405519CB3;
  v59 = *a1;
  v60 = 283 * ((v56 + 1846) ^ 0xC70);
  if (v57)
  {
    v61 = v59 == 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = v61;
  HIDWORD(a13) = -42900;
  return (*(a52 + 8 * ((((v58 ^ v62) & 1) * (v60 ^ 0x19CF)) ^ v58)))(v59, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1969DDD3C(int a1)
{
  v4 = v1 + (a1 ^ 0x8CCu) - 1782;
  v5 = v1 + 4199121863 + ((a1 - 3505) | 0x200u) - 649 < v2;
  if (v2 < 0xFA4983C7 != v4 > 0xFFFFFFFF05B67C38)
  {
    v5 = v2 < 0xFA4983C7;
  }

  return (*(v3 + 8 * ((114 * v5) ^ a1)))();
}

uint64_t sub_1969DDDB0()
{
  if (v0 == 1906281716)
  {
    v4 = STACK[0x738];
    v5 = *(STACK[0x738] + 8);
    v6 = STACK[0x520];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v1 + 8 * (((v5 == 0) * ((v2 ^ 0x31) - 3417)) ^ (v2 + 2337))))();
  }

  else if (v0 == 1906239664)
  {
    return (*(v1 + 8 * (((*(STACK[0x470] + 8) != 0) * (((v2 - 1281146435) & 0x4C5CBF3F ^ 0xFFFFF3C9) + 20 * (v2 ^ 0xE35))) ^ (v2 - 2875))))();
  }

  else
  {
    return (*(v1 + 8 * ((79 * (((*(STACK[0x520] + 24) == 0) ^ (v2 - 1)) & 1)) ^ (v2 + 2074))))();
  }
}

uint64_t sub_1969DDF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23)
{
  v27 = &a23 + v25 + 8;
  *(v27 - 1) = 0xECECECECECECECECLL;
  *v27 = 0xECECECECECECECECLL;
  return (*(v26 + 8 * ((((v24 & 0xFFFFFFFFFFFFFFF0) == 16) * ((3 * (v23 ^ 0xDBC)) ^ 0x3B)) ^ v23)))();
}

void sub_1969DE000(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x19692C4B0);
}

uint64_t sub_1969DE1DC@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  v14 = (v11 + 4 * v10);
  v15 = HIDWORD(v5) + v13 * (v3 ^ v9 ^ (a2 + 1864) ^ *(v7 + 4 * v10)) + (*v14 ^ a2) + HIDWORD(v12) + v6 * (*(v2 + 4 * v10) ^ a2);
  *(v14 - 1) = v15 + a2 - (a1 & (2 * v15));
  return (*(v8 + 8 * ((504 * (v10 + 1 == v4)) ^ v3)))();
}

uint64_t sub_1969DE25C(uint64_t a1, int8x16_t a2, double a3, double a4, int8x16_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  v16 = (a12 + (v12 + v14));
  v17 = *v16;
  v18 = v16[1];
  v19 = (a1 + v12);
  *v19 = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a5)), a2);
  v19[1] = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a5)), a2);
  return (*(v15 + 8 * (((v12 == 32) * a11) ^ (a8 + v13 - 2430))))();
}

uint64_t sub_1969DE2B8@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + 8);
  v9 = ((2 * (v8[((a1 << 32) + 0x100000000) >> ((v4 + 93) ^ 0xE3u)] ^ v1)) << ~(v5 ^ 1)) | ((v8[a1] ^ v1) >> (v5 ^ 1));
  *v8 = v9 + v1 - (v2 & (2 * v9));
  return (*(v7 + 8 * ((2964 * (v3 == 1)) ^ v4)))();
}

uint64_t sub_1969DE628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = vrev64q_s8(**(v8 + 32));
  v10 = vextq_s8(v9, v9, 8uLL);
  v11.i64[0] = 0x9D9D9D9D9D9D9D9DLL;
  v11.i64[1] = 0x9D9D9D9D9D9D9D9DLL;
  v12 = vorrq_s8(vaddq_s8(v10, v10), v11);
  v11.i64[0] = 0xB1B1B1B1B1B1B1B1;
  v11.i64[1] = 0xB1B1B1B1B1B1B1B1;
  v13 = veorq_s8(v10, v11);
  v11.i64[0] = 0x7878787878787878;
  v11.i64[1] = 0x7878787878787878;
  v14 = vrev64q_s8(veorq_s8(vaddq_s8(vaddq_s8(v13, v11), v12), xmmword_196EBFB90));
  *(v7 - 104) = vextq_s8(v14, v14, 8uLL);
  return (*(v6 + 8 * (a5 ^ (55 * (v5 != 0)))))(a1, a2, a3, a4);
}

void sub_1969DE6A0(unint64_t a1@<X8>)
{
  v4 = (((2 * v2) & 0x7EBB7948F2FDFDAALL) + (v2 ^ 0x7F5DBCA4797EFED5) + v1 - 0x7F5DBCA4797EFED5);
  v5 = (*v4 << ((v3 - 105) ^ 0x8Bu)) | (v4[1] << 48) | (v4[2] << 40) | (v4[3] << 32) | (v4[4] << 24) | (v4[5] << 16) | (v4[6] << 8);
  STACK[0x448] = v5 & 0x1866823ABA9E5CB8 ^ 0xC22B8C6F29C45DA5 ^ ((v4[7] - ((2 * v4[7]) & 0x15E) + 0x744D802FB498DEAFLL) ^ 0x93D4FDEAF1F97DE8) & (v5 ^ 0xEF997DCD65F3BFFFLL);
  STACK[0x918] = a1;
  JUMPOUT(0x1969C5E18);
}

uint64_t sub_1969DE8DC@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x248];
  STACK[0x4D0] = *(STACK[0x248] + 8 * v2);
  LODWORD(STACK[0xB64]) = 1643602487;
  STACK[0xB68] = &STACK[0x438];
  return (*(v3 + 8 * (((((a1 == 0) ^ (((v2 - 8) | 4) - 1)) & 1) * (((((v2 - 8) | 0x804) - 2374) | 0xE14) - 3562)) ^ ((v2 - 8) | 0x804))))();
}

void sub_1969DE9F4()
{
  LOWORD(STACK[0x9CA]) = v0;
  LODWORD(STACK[0x3A0]) = v0;
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969DEB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  v20 = 1068996913 * ((v19 - 2 * (v19 & 0x3DDF36851CD92E2) + 0x3DDF36851CD92E2) ^ 0x97BCC7FB84237373);
  a15 = 6365 - v20;
  a14 = ((v16 ^ 0xFD1FB533AE7FBFF5) + 0x7EF6FFFFD796CADBLL + ((2 * v16) & 0xFA3F6A675CFF7FEALL)) ^ v20;
  a16 = a9;
  v21 = (*(v17 + 54528))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((2156 * (a13 == v18)) ^ 0x7E8u)))(v21);
}

uint64_t sub_1969DEC34()
{
  v10 = *(v0 + 8);
  *(v9 - 120) = v8 ^ (((((2 * v7) | 0xF527CCAA) - v7 + 90970539) ^ 0xCC8467CC) * v3);
  *(v9 - 112) = v6;
  *(v9 - 96) = v5 + v10 + ((((2 * v7) | 0x51520179F527CCAALL) - v7 - 0x28A900BCFA93E655) ^ 0x55DF5A51CC8467CCLL) * v3 - ((2 * v10) & 0x8889B80CB23BF32ELL) + 5;
  v11 = (*(v1 + 8 * (v2 + 5029)))(v9 - 120);
  return (*(v1 + 8 * ((3073 * (*(v9 - 104) == v4)) ^ v2)))(v11);
}

uint64_t sub_1969DED9C()
{
  v2 = *(v1 + 56024);

  return v2(v0);
}

uint64_t sub_1969DEDCC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA70] = v1 ^ 0x9976F8DB;
  *(a1 + 16) = (((v1 ^ 0x2025E4D1 ^ (4 * (v2 ^ 0x9DD))) - 539355853) ^ ((v1 ^ 0x4D3D4ED4) - 1295863508) ^ ((((v2 ^ 0x9DD) - 194094789) ^ v1) + 194093886)) - 1720256283;
  v4 = STACK[0x248];
  v5 = (*(STACK[0x248] + 8 * (v2 ^ 0x10D7)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((61 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1969DEFB0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  a10 = a1;
  a12 = v12 - 489239129 * ((((2 * (&a10 ^ 0xE6292363)) | 0x4EA606E8) - (&a10 ^ 0xE6292363) + 1487731852) ^ 0xF8520321) - 45;
  v14 = (*(v13 + 8 * (v12 + 5882)))(&a10);
  return (*(v13 + 8 * ((4909 * (a11 == ((v12 + 1906626593) ^ 0x3BAA75) + ((v12 + 1906626593) & 0x8E5B3F7A))) ^ v12)))(v14);
}

uint64_t sub_1969DF078@<X0>(uint64_t a1@<X6>, char a2@<W8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = (a2 ^ 0xA1 ^ (-97 * (v3 ^ 0xD7))) * (a2 + 17);
  return (*(v4 + 8 * ((1999 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1969DF0C4@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, char a6, char *a7, char *a8, unsigned int a9, unsigned int a10, uint64_t a11)
{
  v13 = a1 ^ 0xC84;
  v14 = 1283153057 * ((114627002 - (&a7 | 0x6D511BA) + (&a7 | 0xF92AEE45)) ^ 0xB6F2ED72);
  a7 = &a6;
  a8 = &a3;
  a11 = v11;
  a9 = 1322676486 - v14;
  a10 = v14 + v13 + 91;
  v15 = (*(v12 + 8 * (v13 ^ 0x1F51)))(&a7);
  return (*(v12 + 8 * (((*(v11 + 24) == 1906281716) * ((((v13 + 729191257) ^ 0x2B769F5F) + 4207) ^ (v13 + 729191257) & 0xD489787D)) ^ v13)))(v15);
}

uint64_t fp_dh_194e96975d917a8245329fdebbcb9177(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 1575331711 * ((2 * (a1 & 0x32AD849B) - a1 - 850232476) ^ 0xA109EE66);
  v2 = *(a1 + 8);
  v4 = v1 + 998242381 * ((2 * (&v4 & 0x3C439230) - &v4 - 1011061300) ^ 0x69D3F51A) - 1243683594;
  v5 = v2;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 & 0x722142FD)) + 8 * (v1 ^ 0x8DCE25E8) - 4))(&v4);
}

void FIUPqPyosF()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55)) ^ fp_dh_222236759e9e7014a4b1132c99a61f18[fp_dh_a39239c15ed61b79f612ca2106c00643[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55))] ^ 0x5C]) + 8);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55))] ^ 0x16]) + 440);
  v3 = &v5[v1 + *(v2 - 4)];
  *(v0 - 4) = 810526117 * v3 - 0x3983E51A1E6C17ABLL;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((v6 + 925849200 - 2 * (v6 & 0x372F5670)) ^ 0x5B74C372) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55))] ^ 0x7F]) + 583) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0x16u) - 12) ^ v2) + 53320])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969DF670(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LOWORD(STACK[0x82E]) = a2;
  LODWORD(STACK[0x310]) = a2;
  return (*(STACK[0x370] + 8 * (a8 - 5394)))();
}

uint64_t sub_1969DF6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24)
{
  v26 = 1012216201 * ((((&a19 ^ 0xD510847A) & 0xD550947A) + (&a19 ^ 0x28637101) - ((&a19 ^ 0x28637101) & 0xD550947A)) ^ 0x799A6D97);
  a22 = a16;
  a23 = &a14;
  a24 = v26 + v24 - 1795306622;
  a19 = v26 ^ 0x80F33AA;
  a21 = v26 - 1402624577;
  v27 = (*(v25 + 8 * (v24 + 3429)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v25 + 8 * ((78 * (((v24 - 35) ^ (a20 == ((v24 - 604312099) & 0xBC2F3F7D) - 646622601)) & 1)) ^ v24)))(v27);
}

uint64_t sub_1969DF830(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4 + 1291453940;
  v9 = v7 + v5 + 1038;
  v10 = v6 < v8;
  if (v8 < v6)
  {
    v10 = 1;
  }

  return (*(v4 + 8 * ((2611 * v10) ^ v9)))(2575459919, a2, 0);
}

uint64_t sub_1969DF968@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = a2 + 1408;
  v8 = a2 - 3182;
  v9 = *(v5 + 8);
  STACK[0x6E0] = *(v6 + 8 * v8);
  STACK[0x428] = &STACK[0x79C];
  STACK[0x608] = 0;
  LODWORD(STACK[0x7BC]) = -1720256293;
  STACK[0x5D0] = 0;
  if (v9)
  {
    v2 = &STACK[0x79C] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(v6 + 8 * ((v3 * ((28 * (v7 ^ 0x131D)) ^ (14 * (v7 ^ 0x1381)) ^ 0xF89)) ^ v7)))(a1, 1906239693);
}

void sub_1969DF9D0()
{
  if (v0 == 548573665)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 32) = v2;
}

void fp_dh_e1b5bf2d5894ad6727d58541d9525698(uint64_t a1)
{
  v3 = *(*(a1 + 8) + 4) == 676339932 || *(*(a1 + 16) + 4) == 676339932;
  v1 = *a1 + 1012216201 * ((a1 & 0x6E694478 | ~(a1 | 0x6E694478)) ^ 0x153F336B);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969DFB48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, int a8)
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x390] = vdupq_n_s64(0x38uLL);
  *&STACK[0x410] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x360] = vdupq_n_s64(v10);
  *&STACK[0x370] = vdupq_n_s64(0xC15EB2CB1F9E4465);
  v18 = 157 * (a8 ^ 0x82C);
  *&STACK[0x340] = vdupq_n_s64(v15);
  *&STACK[0x350] = vdupq_n_s64(a7);
  *&STACK[0x290] = vdupq_n_s64(v13);
  *&STACK[0x320] = vdupq_n_s64(v14);
  *&STACK[0x330] = vdupq_n_s64(v12);
  *&STACK[0x300] = vdupq_n_s64(a2);
  *&STACK[0x310] = vdupq_n_s64(a1);
  *&STACK[0x2E0] = vdupq_n_s64(a4);
  *&STACK[0x2F0] = vdupq_n_s64(a3);
  *&STACK[0x400] = vdupq_n_s64(a5);
  *&STACK[0x2C0] = vdupq_n_s64(v16);
  *&STACK[0x2D0] = vdupq_n_s64(a6);
  *&STACK[0x2A0] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x2B0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x3A0] = xmmword_196EBFA60;
  v19 = *&STACK[0x350];
  v20 = *&STACK[0x330];
  v21 = *&STACK[0x290];
  v22 = *&STACK[0x2A0];
  v24 = *&STACK[0x2B0];
  v23 = *&STACK[0x2C0];
  *&v25 = v8 + v9 - 5;
  *(&v25 + 1) = v8 + v9 - 6;
  *&STACK[0x3F0] = v25;
  *&v25 = v8 + v9 - 3;
  *(&v25 + 1) = v8 + v9 - 4;
  *&STACK[0x3E0] = v25;
  v26.i64[0] = v8 + v9 + 5;
  v26.i64[1] = v8 + v9 + 4;
  v27.i64[0] = v8 + v9 + 7;
  v27.i64[1] = v8 + v9 + 6;
  v28.i64[0] = v8 + v9 + 9;
  v28.i64[1] = v8 + v9 + 8;
  v29.i64[0] = 129 * (v18 ^ 0x7E5u) + v9 + v8 - 3609;
  v29.i64[1] = v8 + v9 + 2;
  v30 = *&STACK[0x3B0];
  v31 = vandq_s8(v29, *&STACK[0x3B0]);
  v32 = vandq_s8(v28, *&STACK[0x3B0]);
  v33 = vandq_s8(v27, *&STACK[0x3B0]);
  v34 = vandq_s8(v26, *&STACK[0x3B0]);
  v35 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v40 = *&STACK[0x370];
  v39 = *&STACK[0x380];
  v41 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v35), vaddq_s64(v35, *&STACK[0x380]));
  v42 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v36), vaddq_s64(v36, *&STACK[0x380]));
  v43 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v37), vaddq_s64(v37, *&STACK[0x380]));
  v44 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v38), vaddq_s64(v38, *&STACK[0x380]));
  v45 = *&STACK[0x360];
  v46 = veorq_s8(v42, *&STACK[0x360]);
  v47 = veorq_s8(v41, *&STACK[0x360]);
  v48 = veorq_s8(v41, v19);
  v49 = veorq_s8(v42, v19);
  v50 = *&STACK[0x340];
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), *&STACK[0x340]);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), *&STACK[0x340]);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53);
  v58 = *&STACK[0x310];
  v57 = *&STACK[0x320];
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, v20), vorrq_s8(v55, v21)), v21), *&STACK[0x320]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, v20), vorrq_s8(v56, v21)), v21), *&STACK[0x320]);
  v61 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = *&STACK[0x300];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(v66, vandq_s8(vaddq_s64(v66, v66), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v70 = *&STACK[0x2F0];
  v71 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v73 = veorq_s8(v68, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v78 = *&STACK[0x2D0];
  v77 = *&STACK[0x2E0];
  v79 = *&STACK[0x400];
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), *&STACK[0x2E0]), v76), *&STACK[0x400]), *&STACK[0x2D0]);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), *&STACK[0x2E0]), v75), *&STACK[0x400]), *&STACK[0x2D0]);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v23);
  v87 = veorq_s8(v85, v23);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), v24);
  v94 = veorq_s8(v92, v24);
  v95.i64[0] = v8 + v9 - 1;
  v95.i64[1] = v8 + v9 - 2;
  *&STACK[0x3C0] = v95;
  v96 = *&STACK[0x390];
  v197.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), *&STACK[0x390])));
  v197.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), *&STACK[0x390])));
  v97 = veorq_s8(v43, v45);
  v98 = veorq_s8(v43, v19);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v50);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = v57;
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, v20), vorrq_s8(v101, v21)), v21), v57);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = v58;
  v107 = vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v58)), v67);
  v108 = v70;
  v109 = veorq_s8(v107, v70);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = v79;
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v77), v111), v79), v78);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v23);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v24);
  v79.i64[0] = v8 + v9 + 1;
  v79.i64[1] = v8 + v9;
  *&STACK[0x3D0] = v79;
  v118 = vandq_s8(v79, v30);
  v197.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v96)));
  v119 = veorq_s8(v44, v45);
  v120 = veorq_s8(v44, v19);
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v50);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v20), vorrq_s8(v123, v21)), v21), v102);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), v106)), v67), v108);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v77), v129), v112), v78);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v23);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v24);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v137 = vandq_s8(v95, v30);
  v138 = vaddq_s64(v136, v135);
  v139 = vandq_s8(*&STACK[0x3E0], v30);
  v197.val[3] = vshlq_u64(veorq_s8(v138, v22), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v96)));
  v140 = vandq_s8(*&STACK[0x3F0], v30);
  v141 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v145 = v40;
  v146 = vbslq_s8(v40, vsubq_s64(*&STACK[0x410], v141), vaddq_s64(v141, v39));
  v147 = vbslq_s8(v40, vsubq_s64(*&STACK[0x410], v142), vaddq_s64(v142, v39));
  v148 = vbslq_s8(v145, vsubq_s64(*&STACK[0x410], v143), vaddq_s64(v143, v39));
  v149 = vbslq_s8(v145, vsubq_s64(*&STACK[0x410], v144), vaddq_s64(v144, v39));
  v142.i64[0] = vqtbl4q_s8(v197, *&STACK[0x3A0]).u64[0];
  v150 = veorq_s8(v147, v45);
  v197.val[0] = veorq_s8(v146, v45);
  v197.val[1] = veorq_s8(v146, v19);
  v197.val[2] = veorq_s8(v147, v19);
  v197.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[1]), v50);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v197.val[2]), v50);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = vaddq_s64(v197.val[3], v197.val[1]);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v152, v20), vorrq_s8(v152, v21)), v21), v102);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v197.val[0], v20), vorrq_s8(v197.val[0], v21)), v21), v102);
  v197.val[1] = veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL));
  v197.val[2] = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v197.val[2]);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[1]);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v197.val[0], vandq_s8(vaddq_s64(v197.val[0], v197.val[0]), v106)), v67), v108);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(v154, vandq_s8(vaddq_s64(v154, v154), v106)), v67), v108);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = vaddq_s64(v197.val[3], v197.val[1]);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197.val[0], v197.val[0]), v77), v197.val[0]), *&STACK[0x400]), v78);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v77), v156), *&STACK[0x400]), v78);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = veorq_s8(vaddq_s64(v197.val[3], v197.val[1]), v23);
  v159 = veorq_s8(v158, v23);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = veorq_s8(vaddq_s64(v197.val[3], v197.val[1]), v24);
  v161 = veorq_s8(v160, v24);
  v197.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3F0], 3uLL), v96)));
  v197.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v96)));
  v162 = veorq_s8(v148, v45);
  v163 = veorq_s8(v148, v19);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v50);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, v20), vorrq_s8(v166, v21)), v21), v102);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(v169, vandq_s8(vaddq_s64(v169, v169), v106)), v67), v108);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v77), v172), *&STACK[0x400]), v78);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v23);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v24);
  v197.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), v96)));
  v178 = veorq_s8(v149, v45);
  v179 = veorq_s8(v149, v19);
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v50);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v182, v20), vorrq_s8(v182, v21)), v21), v102);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(v185, vandq_s8(vaddq_s64(v185, v185), v106)), v67), v108);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), v77), v188), *&STACK[0x400]), v78);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v23);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v24);
  v197.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), v96)));
  v142.i64[1] = vqtbl4q_s8(v197, *&STACK[0x3A0]).u64[0];
  v194 = vrev64q_s8(*(v11 - 15 + v9 - 1));
  v197.val[0].i64[0] = 0xECECECECECECECECLL;
  v197.val[0].i64[1] = 0xECECECECECECECECLL;
  v195 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v194, v194, 8uLL), v197.val[0]), v142));
  *(v8 + v9 - 6) = vextq_s8(v195, v195, 8uLL);
  return (*(v17 + 8 * ((4056 * (v9 != 16)) ^ v18)))();
}

uint64_t sub_1969E0758()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x321)))(*v2, *(v0 + 8 * (v3 ^ 0x18F4)) - 4);
  *(*(v0 + 8 * (v3 - 5923)) - 4) = v4;
  return (*(v1 + 8 * (((v4 == 0) * ((v3 - 1440594750) & 0x55DDB7F9 ^ 0x166B)) | v3)))();
}

void sub_1969E07D4(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, char a4@<W4>, unsigned int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = ((a5 ^ 0x6848F28AF3A0BB60) - 0x6848F28AF3A0BB60) ^ ((a5 ^ 0x8E8E800145EFC208) + 0x71717FFEBA103DF8) ^ (((((v14 - 489) ^ (v9 + 499)) - 0x19398D752AF95B8ALL) ^ a5) + 0x19398D749C32B890);
  v20 = (v19 + 0x73952D786F340D98) * (v19 + 0x79BAAA413C0A40FLL) + ((v19 + 0x73952D786F340D98) * v15 - 0x40FA00647BF6C2FFLL * (v19 + 0x79BAAA413C0A40FLL)) * v16 + v17;
  v21 = v20 - (((v20 * v18) >> 64) >> 31) * a6;
  v22 = v21 * a1 + (a2 ^ v10) * (a2 ^ v10) + a7;
  v23 = v22 - (((v22 * v11) >> 64) >> 31) * v12;
  *(v8 + a3) = (((v23 * v21) >> 15) - (a4 & (2 * ((v23 * v21) >> 15))) - 20) ^ *(a8 + a3);
  *(v8 + (a3 | 1)) = (((v23 * v21) >> 23) - (a4 & (2 * ((v23 * v21) >> 23))) - 20) ^ *(a8 + (a3 | 1));
  *(v8 + (a3 | 2)) = (((v23 * v21) >> 31) - (a4 & (2 * ((v23 * v21) >> 31))) - 20) ^ *(a8 + (a3 | 2));
  *(v8 + (a3 | 3)) = (((v23 * v21) >> 39) + (v13 | ~(2 * ((v23 * v21) >> 39))) - 19) ^ *(a8 + (a3 | 3));
  JUMPOUT(0x1969DF8B8);
}

uint64_t sub_1969E0EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = v16 + ((((v17 - 128) | 0x33D0DDCB) - (v17 - 128) + ((v17 - 128) & 0xCC2F2230)) ^ 0x56CA2680) * v14 - 438;
  *(v17 - 128) = a12;
  *(v17 - 120) = &a13;
  v18 = (*(v13 + 8 * (v16 ^ 0x101C)))(v17 - 128, a2, a3, a4, a5, a6, a7, a8);
  v19 = *(v17 - 108) > (((v16 - 2426) | 0x688) ^ (v15 + 3841));
  return (*(v13 + 8 * (((4 * v19) | (32 * v19)) ^ v16)))(v18);
}

uint64_t sub_1969E0FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, unsigned int a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21)
{
  v24 = 1012216201 * ((-1112929448 - (&a16 | 0xBDAA0B58) + (&a16 | 0x4255F4A7)) ^ 0xC6FC7C4B);
  a16 = v24 ^ 0x80F33AA;
  a18 = v24 + 947593057;
  a21 = v24 + v23 - 1795305092;
  a19 = a11;
  a20 = &a14;
  v25 = (*(v22 + 8 * (v23 ^ 0x1DAFu)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  return (*(v22 + 8 * (((a17 == v21) * (10 * (v23 ^ 0x668) - 3174)) ^ v23)))(v25);
}

uint64_t sub_1969E1084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  LODWORD(a14) = v19 - ((((2 * &a14) | 0xA6BAAB8) - &a14 + 2060069540) ^ 0xE96E405E) * v18 - 1131;
  a15 = a10;
  a16 = &a13;
  (*(v16 + 8 * (v19 ^ 0x1782)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  HIDWORD(a15) = v19 - 489239129 * ((-911629896 - (&a14 | 0xC9A9A1B8) + (&a14 | 0x36565E47)) ^ 0x8F7E7D71) - 2467;
  a14 = a10;
  v20 = (*(v16 + 8 * (v19 ^ 0x179C)))(&a14);
  return (*(v16 + 8 * ((19 * (a15 == (v19 ^ 0x1DE9 ^ (v17 + 3901)))) | v19)))(v20);
}

uint64_t sub_1969E117C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61, int a62)
{
  STACK[0x240] = v63;
  STACK[0x248] = v62;
  v67 = (((LODWORD(STACK[0x65C]) ^ 0xBA0AF0AD) + 1173688147) ^ ((LODWORD(STACK[0x65C]) ^ 0x1947CD48) - 424136008) ^ ((LODWORD(STACK[0x65C]) ^ 0xA698E44C) + 1499929524)) + 195801938 + (((v64 ^ 0x838E9663) + 2087807389) ^ ((v64 ^ 0x63FD346C) - 1677538412) ^ ((v64 ^ a61) + 442074202));
  *(v66 + 52) = ((v67 % 0x2710) ^ 0xDFF9FF3D) + 726036704 + ((2 * (v67 % 0x2710)) & 0x7E7A);
  v68 = STACK[0x68C];
  STACK[0x590] -= 1616;
  LODWORD(STACK[0x380]) = v68;
  return (*(v65 + 8 * ((3891 * (v68 == a2)) ^ a62)))(a1);
}

uint64_t fp_dh_4dd2d88c2c1474a21063396b956ce924(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_1969E15AC()
{
  LODWORD(STACK[0x37C]) = 1583367960;
  LODWORD(STACK[0x494]) = 128;
  v3 = STACK[0x480] + 528;
  v4 = STACK[0x480] + 800;
  v5 = STACK[0x538];
  v6 = STACK[0x390];
  v7 = 998242381 * ((((2 * (v2 - 208)) | 0xC00AB594) - (v2 - 208) - 1610963658) ^ 0xCA6AC21C);
  *(v2 - 192) = &STACK[0x494];
  *(v2 - 184) = 0;
  *(v2 - 172) = (v0 + 4233) ^ v7;
  *(v2 - 144) = v7 + 855519640;
  *(v2 - 208) = v3;
  *(v2 - 200) = 0;
  *(v2 - 168) = v5;
  *(v2 - 160) = v6;
  *(v2 - 152) = v4;
  v8 = (*(v1 + 8 * (v0 + 5804)))(v2 - 208);
  return (*(v1 + 8 * (((*(v2 - 176) == 1906281716) * ((((v0 - 1260364950) & 0x4B1FB7FB) + 1934) ^ (v0 + 984))) ^ v0)))(v8);
}

uint64_t sub_1969E16B0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + (v3 - 7) % v1);
  v6 = *(a1 + (v3 - 37) % v1);
  v7 = *(a1 + (v3 - 177) % v1);
  *(a1 + v3 % v1) ^= (((v5 >> 7) | (2 * v5)) - ((4 * v5) & 0xCF) - 26) ^ (((v6 >> 2) | (v6 << 6)) + ((111 * (v2 ^ 0xB0)) ^ 0x3C) - ((2 * ((v6 >> 2) | (v6 << 6))) & 0xE3)) ^ (((v7 >> 3) | (32 * v7)) - ((2 * ((v7 >> 3) | (32 * v7))) & 0xBC) - 34) ^ 0x49;
  return (*(v4 + 8 * ((4653 * (v3 == 255)) ^ v2)))();
}

void fp_dh_e18a4b094e5126d61837dc8f2c3b752b(uint64_t a1)
{
  v3 = (*(a1 + 8) - 53 * ((-2 - ((~a1 | 0xB) + (a1 | 0xF4))) ^ 0x3C)) != 86 && *a1 != 0;
  v1 = *(a1 + 24) + 1825732043 * ((-2 - ((~a1 | 0x7428030B) + (a1 | 0x8BD7FCF4))) ^ 0x74BE503C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1969E187C@<X0>(uint64_t a1@<X0>, int a2@<W6>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  v8 = v7 == ((v5 + a3) ^ 0x1755);
  return (*(v6 + 8 * ((4 * v8) | (8 * v8) | (a2 + v5 + 3495))))();
}

uint64_t sub_1969E18BC@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W8>)
{
  v10 = v5 < a1;
  v11 = *(v7 + v3);
  v12 = v3 + 1;
  *(v9 - 220 + a3) = v11 - ((2 * v11) & 0xD8) - 20;
  if (v10 == v12 > a2)
  {
    v10 = v12 + a1 < v5;
  }

  return (*(v8 + 8 * ((v10 * v6) ^ v4)))();
}

uint64_t sub_1969E1980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v58 = STACK[0x560];
  v59 = STACK[0x498];
  STACK[0x220] = STACK[0x550];
  STACK[0x2A0] = v56;
  STACK[0x2E8] = &STACK[0x6E0] + v56;
  STACK[0x228] = v59;
  if (v58)
  {
    v60 = v59 == 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = v60;
  LODWORD(STACK[0x330]) = v61;
  STACK[0x340] = v58 + 236;
  STACK[0x338] = v59 + 32;
  STACK[0x2E0] = v59 + 1168;
  STACK[0x300] = v59 + 1432;
  STACK[0x298] = v58 + 528;
  STACK[0x290] = v58 + 800;
  STACK[0x230] = v59 + 1448;
  STACK[0x310] = v58;
  LODWORD(STACK[0x2F8]) = 1858236863;
  STACK[0x308] = v59;
  return (*(v57 + 8 * (((2 * (a56 ^ 0x65C) - 2337) * LODWORD(STACK[0x330])) ^ (2 * (a56 ^ 0x65C) + 827))))(2755106247, 2216694019, 29, a4, 3221241675, 0x100110000, 3594501091, 4224);
}

uint64_t sub_1969E1AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = *(STACK[0x308] + 1428);
  if (v12 <= 0x20 && ((1 << v12) & a6) != 0)
  {
    return (*(v10 + 8 * ((6777 * (*(STACK[0x310] + 476) == ((v11 - 3969) ^ 0x87B))) ^ (v11 - 3969))))(a1, a2, a3, a4, a5);
  }

  v14 = ((a7 + 700522532) ^ ((v7 ^ 0x719EE8CD) + a5) ^ 0xFFFE9BF6) & (v9 & 0x8DF4E8D3 ^ (v9 ^ 0xDE9627B9) & (v8 ^ 0x5FEE63C1) ^ 0x28A3B556) ^ ((a7 + 700522532) ^ ((v7 ^ 0x719EE8CD) + a5) ^ 0x719EE8FD) & a1;
  if (((~((v14 ^ a2) & (v14 >> 4)) | (((v14 ^ a2) & (v14 >> 4) ^ 0xBFFFFFFF) >> 2)) & 3) != 0)
  {
    v15 = a4 + 2;
  }

  else
  {
    v15 = 1906281716;
  }

  if (LODWORD(STACK[0x2F8]) == -1565517838)
  {
    JUMPOUT(0x1969E1CB8);
  }

  if (LODWORD(STACK[0x2F8]) != 1858236863)
  {
    JUMPOUT(0x1969E1A74);
  }

  return (*(v10 + 8 * ((23 * (v15 == ((v11 - 1529748548) ^ 0xD54E7465 ^ (v11 - 1529748548) & 0x5B2E076E))) ^ (v11 - 1869))))();
}

void sub_1969E1D58()
{
  STACK[0x948] = 0;
  STACK[0x900] = 0;
  STACK[0x4D0] = *(v1 + 8 * v0);
  JUMPOUT(0x1969763E4);
}

uint64_t sub_1969E1D7C@<X0>(uint64_t a1@<X5>, unsigned int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v42 = ((2 * a2) & 0x1FCFFBFFALL) + (a2 ^ 0xF72BF7DFFE7FDFFDLL) + a42;
  *(v42 + 0x8D4082001802003) = 0;
  *(v42 + 0x8D4082001802005) = 0;
  *(v42 + ((a3 - 636210975) & 0x25EBCB75 ^ 0x8D4082001802352)) = 0;
  *(((2 * (a2 + 4)) & 0x1FD3DDE66) + ((a2 + 4) ^ 0xCF360F7AFE9EEF33) + a42 + 0x30C9F085016110CDLL) = -9392;
  v43 = a2 + 6;
  v44 = v43 ^ 0xBCFBEEE9FE69FFB5;
  v45 = (2 * v43) & 0x1FCD3FF6ALL;
  v46 = (a34 ^ 0xC10C8264) & (2 * (a34 & 0x25)) | a34 & 0x25;
  LODWORD(v43) = ((2 * (a34 ^ 0x491586E6)) ^ 0x12A20A06) & (a34 ^ 0x491586E6) ^ (2 * (a34 ^ 0x491586E6)) & 0x85490482;
  v47 = v43 ^ 0x85490481;
  LODWORD(v43) = (v43 ^ 0x100) & (4 * v46) ^ v46;
  v48 = ((4 * v47) ^ 0x3564160C) & v47 ^ (4 * v47) & 0x8D590580;
  LODWORD(v43) = (v48 ^ 0x5400400) & (16 * v43) ^ v43;
  v49 = ((16 * (v48 ^ 0x88190183)) ^ 0xD5905830) & (v48 ^ 0x88190183) ^ (16 * (v48 ^ 0x88190183)) & 0x8D590580;
  v50 = v49 ^ 0x8490583;
  v51 = v43 ^ 0x8D590583 ^ (v49 ^ 0x85100000) & (v43 << 8);
  v52 = a34 ^ (2 * ((v51 << 16) & 0xD590000 ^ v51 ^ ((v51 << 16) ^ 0x5830000) & ((v50 << 8) & 0x8D590000 ^ 0x4580000 ^ ((v50 << 8) ^ 0x59050000) & v50)));
  v53 = (v45 + v44 + a42 + 0x430411160196004BLL);
  *v53 = HIBYTE(v52) ^ 0xD4;
  v53[1] = BYTE2(v52) ^ 0xFC;
  v53[2] = BYTE1(v52) ^ 0x88;
  v53[3] = v52 ^ 0x63;
  return (*(a1 + 8 * ((487 * ((LODWORD(STACK[0x7D4]) | ((LODWORD(STACK[0x7D4]) < 0x3BB37C9B) << 32)) != 1001618587)) ^ a3)))();
}

uint64_t sub_1969E206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 454622246) & 0xE4E70DF6 ^ 0xFFFFFFFFFFFFF3A9) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((477 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1969E20F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == 1906239664)
  {
    return (*(a6 + 8 * (((*(STACK[0x530] + 97) == (a8 - 26)) * ((a8 - 5724) ^ 0xE8C)) ^ (a8 - 4847))))(a1, a2, a3, a4, a5);
  }

  if (v8 != 1906281716)
  {
    JUMPOUT(0x1969E2524);
  }

  v9 = *(STACK[0x7B8] + 24);
  STACK[0x468] = v9;
  return (*(a6 + 8 * (((v9 == 0) * (((a8 - 5197) | 8) ^ 0x20A)) ^ (a8 - 1270))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969E21AC@<X0>(uint64_t a1@<X5>, int a2@<W7>, unint64_t a3@<X8>)
{
  v5 = LOWORD(STACK[0x83E]);
  if (v5 != 26075)
  {
    if (v5 == 45445 || v5 == 41591)
    {
      STACK[0x7F8] = a3;
      LODWORD(STACK[0x48C]) = v4;
    }

    goto LABEL_9;
  }

  v6 = STACK[0x468];
  STACK[0x7F8] = a3;
  LODWORD(STACK[0x48C]) = v4;
  STACK[0x418] = v6 + v3;
  v7 = *(STACK[0x530] + 20);
  if (v7 == 1)
  {
    v9 = 723 * (a2 ^ 0x1654);
    LODWORD(STACK[0x310]) = a2 - 1148;
    LODWORD(STACK[0x2F0]) = v9;
    LODWORD(STACK[0x300]) = v9 ^ 0x197D;
    LODWORD(STACK[0x330]) = a2 - 5165;
    LODWORD(STACK[0x340]) = (a2 + 1849324962) & 0x91C577FE;
    LODWORD(STACK[0x320]) = a2 - 4714;
    LODWORD(STACK[0x2E0]) = -1720254567;
    JUMPOUT(0x1969C311CLL);
  }

  if (v7)
  {
LABEL_9:
    JUMPOUT(0x1969E2524);
  }

  return (*(a1 + 8 * ((112 * (*(STACK[0x530] + 97) == ((a2 - 69) ^ 0x5B))) ^ (a2 - 1577))))();
}

uint64_t sub_1969E2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  v20 = 1068996913 * (((v19 | 0x2BB7B0271C50854) - (v19 & 0x2BB7B0271C50854)) ^ 0x96DA4F91A42BE9C5);
  a15 = 6365 - v20;
  a16 = a9;
  a14 = ((v16 ^ 0xFFDEFDBBB696CBF3) + 0x7C37B777CF7FBEDDLL + ((2 * v16) & 0xFFBDFB776D2D97E6)) ^ v20;
  v21 = (*(v17 + 54528))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((7275 * (a13 == ((v18 - 1272) ^ 0xB08))) ^ 0xB0Du)))(v21);
}

uint64_t sub_1969E27A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v8 + 305;
  v11 = *(v9 + 8 * ((6630 * ((v10 ^ 0xFC4) == (v7 & 0x7FFFFFF8))) ^ v8));
  return v11(v10, 4036, 6630, v11, a5, a6, a7);
}

uint64_t sub_1969E2834(uint64_t a1, uint64_t a2, int a3)
{
  v10 = (v6 - 1) & 0xF;
  v11 = -v8 - v6;
  v13 = (v11 + v5 + v10 + 1) >= 0x10 && v7 >= (13 * (a3 ^ 0x1687u)) - 5457 && v11 + v4 + v10 + ((a3 - 5793) | 0x100Au) - 4227 >= 0x10;
  v14 = v11 + v3 + v10 + 6;
  v16 = !v13 || v14 < 0x10;
  return (*(v9 + 8 * ((116 * v16) ^ a3)))(v6, a2);
}

uint64_t sub_1969E2958@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v69 = v57 - a3 - 3;
  v70 = v57 - a3 - 5;
  v71 = v57 - a3 - 6;
  v72.i64[0] = v56 + v70;
  v72.i64[1] = v56 + v71;
  v73 = v57 - a3 - 4;
  v74.i64[0] = v56 + v69;
  v74.i64[1] = v56 + v73;
  v75.i64[0] = a5 + v70;
  v75.i64[1] = a5 + v71;
  v76.i64[0] = a5 + v69;
  v76.i64[1] = a5 + v73;
  v77 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v78 = vandq_s8(v74, v77);
  v79 = vandq_s8(v72, v77);
  v80 = v77;
  v81 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vdupq_n_s64(v66);
  *&STACK[0x300] = v83;
  v84 = vdupq_n_s64(v60);
  v85 = vdupq_n_s64(v61);
  v86 = vbslq_s8(v85, vsubq_s64(v84, v81), vaddq_s64(v81, v83));
  v87 = vdupq_n_s64(0x888A2F91047ADD13);
  v88 = vbslq_s8(v85, vsubq_s64(v84, v82), vaddq_s64(v82, v83));
  v89 = veorq_s8(v88, v87);
  v90 = veorq_s8(v86, v87);
  v91 = vdupq_n_s64(v62);
  v92 = veorq_s8(v86, v91);
  v93 = veorq_s8(v88, v91);
  v94 = vdupq_n_s64(a1);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v92), v94);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93), v94);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v99 = veorq_s8(v95, v96);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = vaddq_s64(v100, v98);
  v103 = vdupq_n_s64(a2);
  v104 = vdupq_n_s64(0x24D8912177D70596uLL);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v103), v101), v104);
  v106 = vdupq_n_s64(0x82D0DE87C71DD9F3);
  v107 = v104;
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v103), v102), v104), v106);
  v109 = v106;
  v110 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v112 = veorq_s8(v105, v109);
  v113 = v109;
  v114 = veorq_s8(v112, v111);
  v115 = veorq_s8(v108, v110);
  v116 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v115);
  v118 = vaddq_s64(v116, v114);
  v119 = vdupq_n_s64(0xA6F455365512A6E1);
  *&STACK[0x3C0] = v119;
  v120 = veorq_s8(v118, v119);
  v121 = veorq_s8(v117, v119);
  v122 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v123 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v124 = veorq_s8(v120, v122);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v124);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v123);
  v127 = vdupq_n_s64(0xD2F19E5B011E36EELL);
  *&STACK[0x2F0] = v127;
  v128 = vdupq_n_s64(0x968730D27F70E488);
  v129 = vdupq_n_s64(0x7378066E86DAB11DuLL);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v127), v126), v128), v129);
  v131 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v127), v125), v128), v129);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v134 = veorq_s8(v130, v131);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v134);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v137 = vdupq_n_s64(0x2EAA180CCDADE282uLL);
  v138 = vdupq_n_s64(0x97550C0666D6F141);
  *&STACK[0x3B0] = v138;
  v139 = vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), v137)), v138);
  v140 = vdupq_n_s64(0xC67D2DBDAC7FC91DLL);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v137)), v138), v140);
  v142 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v144 = veorq_s8(v139, v140);
  v145 = veorq_s8(v144, v143);
  v146 = veorq_s8(v141, v142);
  v147 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v146);
  v149 = vdupq_n_s64(0xCDE7FE8E73F8F117);
  *&STACK[0x390] = v140;
  *&STACK[0x3A0] = v149;
  v150 = veorq_s8(vaddq_s64(v147, v145), v149);
  v151 = veorq_s8(v148, v149);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v153 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v154 = vandq_s8(v76, v80);
  v155 = vandq_s8(v75, v80);
  v156 = v80;
  v157 = vdupq_n_s64(v65);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v157);
  v159 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v157);
  v161 = vdupq_n_s64(0x9AD5F752899AD369);
  *&STACK[0x380] = v161;
  v162 = vdupq_n_s64(v58);
  v163 = vsubq_s64(vorrq_s8(v158, v161), vorrq_s8(v158, v162));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v153);
  v165 = vaddq_s64(vsubq_s64(vorrq_s8(v160, v161), vorrq_s8(v160, v162)), v162);
  v166 = vdupq_n_s64(0xD33CB569E68C34BBLL);
  v167 = veorq_s8(v165, v166);
  v168 = v166;
  *&STACK[0x370] = v166;
  v169 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v170 = vaddq_s64(v163, v162);
  v171 = veorq_s8(v170, v168);
  v172 = vdupq_n_s64(0x7B7A50FE7F7A45E7uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v174 = veorq_s8(v165, v172);
  v175 = vaddq_s64(v169, v174);
  v176 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v177 = vaddq_s64(v159, v152);
  v178 = veorq_s8(v170, v172);
  v179 = vaddq_s64(v173, v178);
  v180 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v181 = vdupq_n_s64(v64);
  v182 = veorq_s8(v179, v181);
  *&STACK[0x3E0] = v181;
  v183 = veorq_s8(v182, v180);
  v184 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v185 = veorq_s8(v175, v181);
  v186 = veorq_s8(v185, v176);
  v187 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v188 = vaddq_s64(v184, v183);
  v189 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v190 = vaddq_s64(v187, v186);
  v191 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v192 = vdupq_n_s64(v67);
  v193 = veorq_s8(v190, v192);
  v194 = v192;
  *&STACK[0x3D0] = v192;
  v195 = veorq_s8(v193, v191);
  v196 = vdupq_n_s64(0xAC1351F25BD82AF2);
  *&STACK[0x350] = v196;
  v197 = vdupq_n_s64(0x38uLL);
  v198 = vshlq_u64(veorq_s8(v164, v196), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v197)));
  v199 = veorq_s8(v188, v194);
  v200 = veorq_s8(v199, v189);
  v201 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v195);
  v203 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v204 = vshlq_u64(veorq_s8(v177, v196), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), v197)));
  v205 = vaddq_s64(v201, v200);
  v206 = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v207 = vdupq_n_s64(v59);
  v208 = veorq_s8(v205, v207);
  v209 = veorq_s8(v208, v206);
  v210 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v211 = veorq_s8(v202, v207);
  v212 = veorq_s8(v211, v203);
  v213 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v214 = vaddq_s64(v210, v209);
  v215 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v216 = vaddq_s64(v213, v212);
  v217 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v218 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v219 = veorq_s8(v216, v218);
  *&STACK[0x320] = v207;
  *&STACK[0x330] = v218;
  v220 = veorq_s8(v219, v217);
  v221 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v222 = veorq_s8(v214, v218);
  v223 = veorq_s8(v222, v215);
  v224 = vaddq_s64(v221, v220);
  v225 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v226 = vdupq_n_s64(v63);
  v227 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v226);
  *&STACK[0x2E0] = v226;
  v229 = veorq_s8(v228, v227);
  v230 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v231 = veorq_s8(v224, v226);
  v232 = veorq_s8(v231, v225);
  v233 = vaddq_s64(v230, v229);
  v234 = vdupq_n_s64(0x3B0800F1971F3628uLL);
  *&STACK[0x340] = v234;
  v235 = vsubq_s64(v233, vandq_s8(vaddq_s64(v233, v233), v234));
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v237 = vsubq_s64(v236, vandq_s8(vaddq_s64(v236, v236), v234));
  v238 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v239 = vdupq_n_s64(0x1D840078CB8F9B14uLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v241 = vaddq_s64(v237, v239);
  *&STACK[0x410] = v239;
  v242 = vdupq_n_s64(0x7AEEB9C89DC3417uLL);
  v243 = veorq_s8(v241, v242);
  v244 = v242;
  *&STACK[0x400] = v242;
  v245 = veorq_s8(v243, v240);
  v246 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v247 = veorq_s8(vaddq_s64(v235, v239), v244);
  v248 = vdupq_n_s64(v68);
  *&STACK[0x3F0] = v248;
  *&STACK[0x310] = v197;
  v598.val[2] = veorq_s8(v204, vshlq_u64(veorq_s8(vaddq_s64(v246, v245), v248), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v197))));
  v598.val[1] = veorq_s8(v198, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), veorq_s8(v247, v238)), v248), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v197))));
  v249 = v57 - a3 - 1;
  v250 = v57 - a3 - 2;
  v251 = v56 + v249;
  v246.i64[0] = v56 + v249;
  v246.i64[1] = v56 + v250;
  v252 = v156;
  v594 = v156;
  v595 = v85;
  v253 = vandq_s8(v246, v156);
  v254 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v255 = *&STACK[0x300];
  v256 = vbslq_s8(v85, vsubq_s64(v84, v254), vaddq_s64(v254, *&STACK[0x300]));
  v257 = veorq_s8(v256, v87);
  *&STACK[0x2C0] = v94;
  *&STACK[0x2D0] = v91;
  v258 = veorq_s8(v256, v91);
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), v94);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = v103;
  *&STACK[0x290] = v107;
  *&STACK[0x2A0] = v103;
  *&STACK[0x270] = v128;
  *&STACK[0x280] = v113;
  v263 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), v103), v261), v107), v113);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v265 = *&STACK[0x3C0];
  v266 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264), *&STACK[0x3C0]);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267);
  v269 = *&STACK[0x2F0];
  v270 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v268, v268), *&STACK[0x2F0]), v268), v128);
  *&STACK[0x260] = v129;
  v271 = veorq_s8(v270, v129);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v273 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272);
  v274 = *&STACK[0x380];
  v275 = veorq_s8(vaddq_s64(vsubq_s64(v273, vandq_s8(vaddq_s64(v273, v273), v137)), *&STACK[0x3B0]), *&STACK[0x390]);
  v276 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v277 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v278 = a5 + v249;
  v256.i64[0] = a5 + v249;
  v256.i64[1] = a5 + v250;
  v279 = vandq_s8(v256, v252);
  *&STACK[0x2B0] = v157;
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v157);
  *&STACK[0x250] = v162;
  v281 = vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL);
  v282 = vaddq_s64(v277, v276);
  v283 = vaddq_s64(vsubq_s64(vorrq_s8(v280, v274), vorrq_s8(v280, v162)), v162);
  v284 = veorq_s8(v283, *&STACK[0x370]);
  v285 = veorq_s8(v283, v172);
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285);
  v287 = vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL);
  v288 = veorq_s8(v282, *&STACK[0x3A0]);
  v289 = veorq_s8(v288, v281);
  v290 = vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL);
  v291 = veorq_s8(v286, *&STACK[0x3E0]);
  v292 = veorq_s8(v291, v287);
  v293 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292), *&STACK[0x3D0]);
  v294 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v295 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v296 = vaddq_s64(v290, v289);
  v297 = veorq_s8(vaddq_s64(v295, v294), v207);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL));
  v299 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298), *&STACK[0x330]);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v301 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), *&STACK[0x2E0]);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v303, vandq_s8(vaddq_s64(v303, v303), *&STACK[0x340])), *&STACK[0x410]), *&STACK[0x400]);
  v598.val[0] = veorq_s8(vshlq_u64(veorq_s8(v296, *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(v246, 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL))), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), *&STACK[0x310]))));
  v305 = v57 - a3 - 7;
  v306 = (a56 + 13) + v57 - a3 - 3620;
  v246.i64[0] = v56 + v305;
  v246.i64[1] = v56 + v306;
  v307 = vandq_s8(v246, v594);
  v308 = vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL);
  v309 = vbslq_s8(v85, vsubq_s64(v84, v308), vaddq_s64(v308, v255));
  v310 = veorq_s8(v309, v87);
  v311 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v312 = veorq_s8(v309, v91);
  v313 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v314 = veorq_s8(vaddq_s64(v311, v312), v94);
  v315 = veorq_s8(v314, v313);
  v316 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), v315);
  v317 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v316, v316), v262), v316), v107), v113);
  v318 = veorq_s8(v317, vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL));
  v319 = vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL);
  v321 = veorq_s8(vaddq_s64(v319, v318), v265);
  v322 = veorq_s8(v321, v320);
  v323 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v324 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v325 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v323, v323), v269), v323), v128), v129);
  v326 = veorq_s8(v325, v324);
  v327 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v326);
  v328 = v137;
  v329 = vsubq_s64(v327, vandq_s8(vaddq_s64(v327, v327), v137));
  v330 = vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL);
  v256.i64[0] = a5 + v305;
  v256.i64[1] = a5 + v306;
  v331 = vandq_s8(v256, v594);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), v157);
  v333 = *&STACK[0x250];
  v334 = vaddq_s64(vsubq_s64(vorrq_s8(v332, v274), vorrq_s8(v332, *&STACK[0x250])), *&STACK[0x250]);
  v335 = veorq_s8(v334, *&STACK[0x370]);
  v336 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v337 = *&STACK[0x3B0];
  v338 = *&STACK[0x390];
  v339 = veorq_s8(vaddq_s64(v329, *&STACK[0x3B0]), *&STACK[0x390]);
  v340 = veorq_s8(v339, v330);
  v341 = vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL);
  v342 = veorq_s8(v334, v172);
  v343 = vaddq_s64(v336, v342);
  v344 = vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL);
  v345 = veorq_s8(v343, *&STACK[0x3E0]);
  v346 = veorq_s8(v345, v344);
  v347 = *&STACK[0x3D0];
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v346), *&STACK[0x3D0]);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v351 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v352 = vaddq_s64(v341, v340);
  v353 = vaddq_s64(v350, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL);
  v355 = *&STACK[0x320];
  v356 = veorq_s8(v353, *&STACK[0x320]);
  v357 = veorq_s8(v356, v354);
  v358 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), v357), *&STACK[0x330]);
  v359 = veorq_s8(v358, vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL));
  v360 = vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL);
  v361 = veorq_s8(v352, *&STACK[0x3A0]);
  v362 = *&STACK[0x3A0];
  v363 = veorq_s8(v361, v351);
  v364 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v365 = veorq_s8(vaddq_s64(v360, v359), *&STACK[0x2E0]);
  v366 = *&STACK[0x2E0];
  v367 = veorq_s8(v365, vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL));
  v368 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), v367);
  v369 = *&STACK[0x340];
  v370 = veorq_s8(vaddq_s64(vsubq_s64(v368, vandq_s8(vaddq_s64(v368, v368), *&STACK[0x340])), *&STACK[0x410]), *&STACK[0x400]);
  v371 = *&STACK[0x310];
  v372 = *&STACK[0x350];
  v598.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v364, v363), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(v246, 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), veorq_s8(v370, vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL))), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), *&STACK[0x310]))));
  *&STACK[0x230] = vqtbl4q_s8(v598, *&STACK[0x360]);
  v373 = v57 - a3 - 13;
  v374 = v57 - a3 - 14;
  v375 = v57 - a3 - 15;
  v376 = v57 - a3 - 16;
  v360.i64[0] = v56 + v375;
  v360.i64[1] = v56 + v376;
  v207.i64[0] = v56 + v373;
  v207.i64[1] = v56 + v374;
  v377 = vandq_s8(v360, v594);
  v378 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v379 = vandq_s8(v207, v594);
  v598.val[0] = vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL);
  v380 = v57 - a3 - 11;
  v381 = v57 - a3 - 12;
  v363.i64[0] = v56 + v380;
  v363.i64[1] = v56 + v381;
  *&STACK[0x200] = v363;
  v382 = vandq_s8(v363, v594);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL);
  v383 = v57 - a3 - 9;
  v384 = v57 - a3 - 10;
  v363.i64[0] = v56 + v383;
  v363.i64[1] = v56 + v384;
  *&STACK[0x210] = v363;
  v385 = vandq_s8(v363, v594);
  v598.val[2] = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v386 = vbslq_s8(v595, vsubq_s64(v84, v378), vaddq_s64(v378, *&STACK[0x300]));
  v387 = vbslq_s8(v595, vsubq_s64(v84, v598.val[0]), vaddq_s64(v598.val[0], *&STACK[0x300]));
  v598.val[3] = vbslq_s8(v595, vsubq_s64(v84, v598.val[1]), vaddq_s64(v598.val[1], *&STACK[0x300]));
  *&STACK[0x300] = vbslq_s8(v595, vsubq_s64(v84, v598.val[2]), vaddq_s64(v598.val[2], *&STACK[0x300]));
  v388 = veorq_s8(v386, v87);
  v389 = vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL);
  v390 = veorq_s8(v387, v87);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL);
  v391 = veorq_s8(v386, *&STACK[0x2D0]);
  v392 = vaddq_s64(v389, v391);
  v393 = vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL);
  v394 = veorq_s8(v387, *&STACK[0x2D0]);
  v395 = vaddq_s64(v598.val[1], v394);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL);
  v396 = veorq_s8(v395, *&STACK[0x2C0]);
  v397 = veorq_s8(v396, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v398 = veorq_s8(v392, *&STACK[0x2C0]);
  v399 = veorq_s8(v398, v393);
  v400 = vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL);
  v401 = vaddq_s64(v598.val[1], v397);
  v402 = vaddq_s64(v400, v399);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v403 = vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL);
  v404 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v402, v402), *&STACK[0x2A0]), v402), *&STACK[0x290]), *&STACK[0x280]);
  v405 = veorq_s8(v404, v403);
  v406 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v401, v401), *&STACK[0x2A0]), v401), *&STACK[0x290]), *&STACK[0x280]);
  v408 = veorq_s8(v407, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v409 = vaddq_s64(v406, v405);
  v410 = vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL);
  v411 = veorq_s8(vaddq_s64(v598.val[1], v408), *&STACK[0x3C0]);
  v412 = veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL);
  v413 = veorq_s8(v409, *&STACK[0x3C0]);
  v414 = veorq_s8(v413, v410);
  v415 = vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL);
  v416 = vaddq_s64(v598.val[1], v412);
  v417 = vaddq_s64(v415, v414);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL);
  v419 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v417, v417), v269), v417), *&STACK[0x270]), *&STACK[0x260]);
  v420 = veorq_s8(v419, v418);
  v421 = vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL);
  v422 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v416, v416), v269), v416), *&STACK[0x270]), *&STACK[0x260]);
  v423 = veorq_s8(v422, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL);
  v424 = vaddq_s64(v421, v420);
  v596 = v328;
  v425 = vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL);
  v426 = vaddq_s64(v598.val[1], v423);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v427 = veorq_s8(vaddq_s64(vsubq_s64(v426, vandq_s8(vaddq_s64(v426, v426), v328)), v337), v338);
  v598.val[1] = veorq_s8(v427, v598.val[1]);
  v598.val[2] = vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL);
  v428 = veorq_s8(vaddq_s64(vsubq_s64(v424, vandq_s8(vaddq_s64(v424, v424), v328)), v337), v338);
  v429 = veorq_s8(v428, v425);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v429);
  v431 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v244.i64[0] = a5 + v375;
  v244.i64[1] = a5 + v376;
  v432 = vandq_s8(v244, v594);
  v433 = vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL);
  v256.i64[0] = a5 + v373;
  v256.i64[1] = a5 + v374;
  v434 = vandq_s8(v256, v594);
  v435 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), *&STACK[0x2B0]);
  v436 = vsubq_s64(vorrq_s8(v435, *&STACK[0x380]), vorrq_s8(v435, v333));
  v437 = vaddq_s64(v433, *&STACK[0x2B0]);
  v438 = vsraq_n_u64(vshlq_n_s64(v598.val[1], 3uLL), v598.val[1], 0x3DuLL);
  v598.val[1] = vaddq_s64(v598.val[2], v598.val[1]);
  v439 = vaddq_s64(vsubq_s64(vorrq_s8(v437, *&STACK[0x380]), vorrq_s8(v437, v333)), v333);
  v598.val[2] = veorq_s8(v439, *&STACK[0x370]);
  v440 = vsraq_n_u64(vshlq_n_s64(v598.val[2], 0x38uLL), v598.val[2], 8uLL);
  v441 = vaddq_s64(v436, v333);
  v598.val[2] = veorq_s8(v441, *&STACK[0x370]);
  v442 = vsraq_n_u64(vshlq_n_s64(v598.val[2], 0x38uLL), v598.val[2], 8uLL);
  v443 = veorq_s8(v430, v362);
  v444 = veorq_s8(v443, v431);
  v598.val[2] = vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL);
  v445 = veorq_s8(v439, v172);
  v446 = vaddq_s64(v440, v445);
  v447 = vsraq_n_u64(vshlq_n_s64(v445, 3uLL), v445, 0x3DuLL);
  v448 = veorq_s8(v441, v172);
  v449 = vaddq_s64(v442, v448);
  v450 = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v451 = veorq_s8(v598.val[1], v362);
  v598.val[1] = veorq_s8(v451, v438);
  v452 = vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL);
  v453 = veorq_s8(v449, *&STACK[0x3E0]);
  v454 = veorq_s8(v453, v450);
  v455 = vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL);
  v456 = veorq_s8(v446, *&STACK[0x3E0]);
  v457 = veorq_s8(v456, v447);
  v458 = vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL);
  v459 = vaddq_s64(v455, v454);
  v460 = vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL);
  v461 = vaddq_s64(v452, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL);
  v462 = veorq_s8(vaddq_s64(v458, v457), v347);
  v463 = veorq_s8(v462, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL);
  v464 = veorq_s8(v459, v347);
  v465 = veorq_s8(v464, v460);
  v466 = vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL);
  v467 = vaddq_s64(v598.val[1], v463);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL);
  v468 = vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL);
  v469 = veorq_s8(vaddq_s64(v466, v465), v355);
  v470 = veorq_s8(v469, v468);
  v471 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v472 = veorq_s8(v467, v355);
  v473 = veorq_s8(v472, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL);
  v474 = vaddq_s64(v471, v470);
  v475 = vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL);
  v476 = vaddq_s64(v598.val[1], v473);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL);
  v477 = veorq_s8(v476, *&STACK[0x330]);
  v478 = veorq_s8(v477, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v477, 0x38uLL), v477, 8uLL);
  v479 = vaddq_s64(v598.val[2], v444);
  v480 = veorq_s8(v474, *&STACK[0x330]);
  v481 = veorq_s8(v480, v475);
  v482 = vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL);
  v483 = vaddq_s64(v598.val[1], v478);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v478, 3uLL), v478, 0x3DuLL);
  v484 = vshlq_u64(veorq_s8(v461, v372), vnegq_s64(vandq_s8(vshlq_n_s64(v207, 3uLL), v371)));
  v485 = veorq_s8(vaddq_s64(v482, v481), v366);
  v486 = veorq_s8(v485, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v487 = vsraq_n_u64(vshlq_n_s64(v485, 0x38uLL), v485, 8uLL);
  v488 = veorq_s8(v483, v366);
  v489 = veorq_s8(v488, v598.val[1]);
  v490 = vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL);
  v491 = vaddq_s64(v487, v486);
  v492 = vaddq_s64(v490, v489);
  v493 = vsraq_n_u64(vshlq_n_s64(v486, 3uLL), v486, 0x3DuLL);
  v494 = vsraq_n_u64(vshlq_n_s64(v489, 3uLL), v489, 0x3DuLL);
  v495 = veorq_s8(vaddq_s64(vsubq_s64(v492, vandq_s8(vaddq_s64(v492, v492), v369)), *&STACK[0x410]), *&STACK[0x400]);
  v496 = veorq_s8(vaddq_s64(vsubq_s64(v491, vandq_s8(vaddq_s64(v491, v491), v369)), *&STACK[0x410]), *&STACK[0x400]);
  v597.val[3] = veorq_s8(vshlq_u64(veorq_s8(v479, v372), vnegq_s64(vandq_s8(vshlq_n_s64(v360, 3uLL), v371))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), veorq_s8(v495, v494)), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v244, 3uLL), v371))));
  v597.val[2] = veorq_s8(v484, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v496, 0x38uLL), v496, 8uLL), veorq_s8(v496, v493)), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), v371))));
  v497 = veorq_s8(v598.val[3], v87);
  v498 = vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL);
  v499 = veorq_s8(v598.val[3], *&STACK[0x2D0]);
  v500 = vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL);
  v501 = veorq_s8(vaddq_s64(v498, v499), *&STACK[0x2C0]);
  v502 = veorq_s8(v501, v500);
  v503 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL), v502);
  v504 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v503, v503), *&STACK[0x2A0]), v503), *&STACK[0x290]), *&STACK[0x280]);
  v505 = veorq_s8(v504, vsraq_n_u64(vshlq_n_s64(v502, 3uLL), v502, 0x3DuLL));
  v506 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL), v505), *&STACK[0x3C0]);
  v507 = veorq_s8(v506, vsraq_n_u64(vshlq_n_s64(v505, 3uLL), v505, 0x3DuLL));
  v508 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v506, 0x38uLL), v506, 8uLL), v507);
  v509 = vsraq_n_u64(vshlq_n_s64(v507, 3uLL), v507, 0x3DuLL);
  v598.val[3].i64[0] = a5 + v380;
  v598.val[3].i64[1] = a5 + v381;
  v510 = vandq_s8(v598.val[3], v594);
  v511 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510, 0x38uLL), v510, 8uLL), *&STACK[0x2B0]);
  v512 = vaddq_s64(vsubq_s64(vorrq_s8(v511, *&STACK[0x380]), vorrq_s8(v511, v333)), v333);
  v513 = veorq_s8(v512, *&STACK[0x370]);
  v514 = vsraq_n_u64(vshlq_n_s64(v513, 0x38uLL), v513, 8uLL);
  v515 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v508, v508), *&STACK[0x2F0]), v508), *&STACK[0x270]), *&STACK[0x260]);
  v516 = veorq_s8(v515, v509);
  v517 = vsraq_n_u64(vshlq_n_s64(v515, 0x38uLL), v515, 8uLL);
  v518 = veorq_s8(v512, v172);
  v519 = vaddq_s64(v514, v518);
  v520 = vsraq_n_u64(vshlq_n_s64(v518, 3uLL), v518, 0x3DuLL);
  v521 = veorq_s8(v519, *&STACK[0x3E0]);
  v522 = veorq_s8(v521, v520);
  v523 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL), v522), *&STACK[0x3D0]);
  v524 = veorq_s8(v523, vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL));
  v525 = vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL);
  v526 = vsraq_n_u64(vshlq_n_s64(v516, 3uLL), v516, 0x3DuLL);
  v527 = vaddq_s64(v517, v516);
  v528 = vaddq_s64(v525, v524);
  v529 = vsraq_n_u64(vshlq_n_s64(v524, 3uLL), v524, 0x3DuLL);
  v530 = vsubq_s64(v527, vandq_s8(vaddq_s64(v527, v527), v596));
  v531 = veorq_s8(v528, *&STACK[0x320]);
  v532 = veorq_s8(v531, v529);
  v533 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v531, 0x38uLL), v531, 8uLL), v532);
  v534 = vsraq_n_u64(vshlq_n_s64(v532, 3uLL), v532, 0x3DuLL);
  v535 = veorq_s8(vaddq_s64(v530, *&STACK[0x3B0]), *&STACK[0x390]);
  v536 = veorq_s8(v535, v526);
  v537 = vsraq_n_u64(vshlq_n_s64(v535, 0x38uLL), v535, 8uLL);
  v538 = veorq_s8(v533, *&STACK[0x330]);
  v539 = veorq_s8(v538, v534);
  v540 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538, 0x38uLL), v538, 8uLL), v539), v366);
  v541 = veorq_s8(v540, vsraq_n_u64(vshlq_n_s64(v539, 3uLL), v539, 0x3DuLL));
  v542 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v540, 0x38uLL), v540, 8uLL), v541);
  v543 = vsraq_n_u64(vshlq_n_s64(v536, 3uLL), v536, 0x3DuLL);
  v544 = vaddq_s64(v537, v536);
  v545 = vsraq_n_u64(vshlq_n_s64(v541, 3uLL), v541, 0x3DuLL);
  v546 = veorq_s8(v544, *&STACK[0x3A0]);
  v547 = veorq_s8(v546, v543);
  v548 = vsraq_n_u64(vshlq_n_s64(v546, 0x38uLL), v546, 8uLL);
  v549 = veorq_s8(vaddq_s64(vsubq_s64(v542, vandq_s8(vaddq_s64(v542, v542), v369)), *&STACK[0x410]), *&STACK[0x400]);
  v597.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v548, v547), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x200], 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v549, 0x38uLL), v549, 8uLL), veorq_s8(v549, v545)), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v598.val[3], 3uLL), *&STACK[0x310]))));
  v550 = veorq_s8(*&STACK[0x300], v87);
  v551 = veorq_s8(*&STACK[0x300], *&STACK[0x2D0]);
  v552 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v550, 0x38uLL), v550, 8uLL), v551), *&STACK[0x2C0]);
  v553 = veorq_s8(v552, vsraq_n_u64(vshlq_n_s64(v551, 3uLL), v551, 0x3DuLL));
  v554 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v552, 0x38uLL), v552, 8uLL), v553);
  v555 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v554, v554), *&STACK[0x2A0]), v554), *&STACK[0x290]), *&STACK[0x280]);
  v556 = veorq_s8(v555, vsraq_n_u64(vshlq_n_s64(v553, 3uLL), v553, 0x3DuLL));
  v557 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v555, 0x38uLL), v555, 8uLL), v556), *&STACK[0x3C0]);
  v558 = veorq_s8(v557, vsraq_n_u64(vshlq_n_s64(v556, 3uLL), v556, 0x3DuLL));
  v559 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v557, 0x38uLL), v557, 8uLL), v558);
  v560 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v559, v559), *&STACK[0x2F0]), v559), *&STACK[0x270]), *&STACK[0x260]);
  v561 = veorq_s8(v560, vsraq_n_u64(vshlq_n_s64(v558, 3uLL), v558, 0x3DuLL));
  v562 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v560, 0x38uLL), v560, 8uLL), v561);
  v563 = vsraq_n_u64(vshlq_n_s64(v561, 3uLL), v561, 0x3DuLL);
  v564 = vaddq_s64(vsubq_s64(v562, vandq_s8(vaddq_s64(v562, v562), v596)), *&STACK[0x3B0]);
  v562.i64[0] = a5 + v383;
  v562.i64[1] = a5 + v384;
  v565 = vandq_s8(v562, v594);
  v566 = veorq_s8(v564, *&STACK[0x390]);
  v567 = veorq_s8(v566, v563);
  v568 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v565, 0x38uLL), v565, 8uLL), *&STACK[0x2B0]);
  v569 = vsraq_n_u64(vshlq_n_s64(v566, 0x38uLL), v566, 8uLL);
  v570 = vsubq_s64(vorrq_s8(v568, *&STACK[0x380]), vorrq_s8(v568, *&STACK[0x250]));
  v571 = vsraq_n_u64(vshlq_n_s64(v567, 3uLL), v567, 0x3DuLL);
  v572 = vaddq_s64(v569, v567);
  v573 = vaddq_s64(v570, *&STACK[0x250]);
  v574 = veorq_s8(v573, *&STACK[0x370]);
  v575 = veorq_s8(v573, v172);
  v576 = veorq_s8(v572, *&STACK[0x3A0]);
  v577 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v574, 0x38uLL), v574, 8uLL), v575), *&STACK[0x3E0]);
  v578 = veorq_s8(v577, vsraq_n_u64(vshlq_n_s64(v575, 3uLL), v575, 0x3DuLL));
  v579 = veorq_s8(v576, v571);
  v580 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v577, 0x38uLL), v577, 8uLL), v578), *&STACK[0x3D0]);
  v581 = vsraq_n_u64(vshlq_n_s64(v576, 0x38uLL), v576, 8uLL);
  v582 = veorq_s8(v580, vsraq_n_u64(vshlq_n_s64(v578, 3uLL), v578, 0x3DuLL));
  v583 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v580, 0x38uLL), v580, 8uLL), v582), *&STACK[0x320]);
  v584 = veorq_s8(v583, vsraq_n_u64(vshlq_n_s64(v582, 3uLL), v582, 0x3DuLL));
  v585 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v583, 0x38uLL), v583, 8uLL), v584), *&STACK[0x330]);
  v586 = vsraq_n_u64(vshlq_n_s64(v584, 3uLL), v584, 0x3DuLL);
  v587 = veorq_s8(vaddq_s64(v581, v579), *&STACK[0x350]);
  v588 = veorq_s8(v585, v586);
  v589 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v585, 0x38uLL), v585, 8uLL), v588), *&STACK[0x2E0]);
  v590 = veorq_s8(v589, vsraq_n_u64(vshlq_n_s64(v588, 3uLL), v588, 0x3DuLL));
  v591 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v589, 0x38uLL), v589, 8uLL), v590);
  v592 = veorq_s8(vaddq_s64(vsubq_s64(v591, vandq_s8(vaddq_s64(v591, v591), *&STACK[0x340])), *&STACK[0x410]), *&STACK[0x400]);
  v597.val[0] = veorq_s8(vshlq_u64(v587, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x210], 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v592, 0x38uLL), v592, 8uLL), veorq_s8(v592, vsraq_n_u64(vshlq_n_s64(v590, 3uLL), v590, 0x3DuLL))), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v562, 3uLL), *&STACK[0x310]))));
  v597.val[0].i64[0] = vqtbl4q_s8(v597, *&STACK[0x360]).u64[0];
  v597.val[1] = *&STACK[0x230];
  v597.val[1].i64[1] = v597.val[0].i64[0];
  v597.val[1] = vrev64q_s8(v597.val[1]);
  *(v278 - 15) = veorq_s8(vextq_s8(v597.val[1], v597.val[1], 8uLL), *(v251 - 15));
  return (*(a4 + 8 * ((6477 * (a3 + 16 == v57)) ^ a56)))(a1, a2);
}

uint64_t sub_1969E4080(int a1)
{
  v3 = ((655 * (a1 ^ 0xFB8) + 1568258063) & 0xA286597F ^ 0xFFFFFFFFFFFFE6C3) + v1;
  v5 = v3 > 0xF || ((v1 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * ((120 * v5) ^ a1)))();
}

uint64_t sub_1969E4244@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  *v14 = 0;
  v16 = a1 ^ v12;
  v17 = v11 + a1 + 1598;
  a10 = a1 + 1575331711 * ((781537595 - (&a10 | 0x2E95513B) + (&a10 | 0xD16AAEC4)) ^ 0xBD313BC6) + 945431364;
  v18 = (*(v15 + 8 * (v13 + a1 + 475)))(&a10);
  return (*(v15 + 8 * (((a11 == 1906281716) * (v16 ^ 0x17CD)) | v17)))(v18);
}

uint64_t sub_1969E4350()
{
  *(v5 - 216) = 654144011 * ((365282197 - ((v5 - 224) | 0x15C5C395) + ((v5 - 224) | 0xEA3A3C6A)) ^ 0xC6EE41F6) + 86337211 + v0;
  v6 = (*(v3 + 8 * v1))(v5 - 224);
  *(v4 + 16) = *(v5 - 224) ^ v2;
  return (*(v3 + 8 * ((v0 - 2202) | 0x10)))(v6);
}

void fp_dh_de085629babfb6c2229160c92ba71af3(_DWORD *a1)
{
  v1 = 1012216201 * ((-2 - ((a1 | 0xF04D769A) + (~a1 | 0xFB28965))) ^ 0x8B1B0189);
  v2 = *(*a1 + 12) - 1555047569;
  v3 = a1[4] - v1 - 1379421910;
  v4 = (v3 < 0xFA1D8F9E) ^ (v2 < 0xFA1D8F9E);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0xFA1D8F9E;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1969E4844()
{
  v6 = *v2;
  *(v4 - 1) = *(v2 - 1);
  *v4 = v6;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v0)))();
}

uint64_t sub_1969E4958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x618];
  STACK[0x6B8] = *(a6 + 8 * v7);
  return (*(a6 + 8 * (((v8 != 0) * ((5 * ((v7 - 2132795572) & 0x7F1FF699 ^ 0x12E1)) ^ 0x1600)) ^ (v7 - 2132795572) & 0x7F1FF699)))(a1, a2, a3, a4, a5);
}

void fp_dh_f33c966baf8c7b2c19d8f48bc4b56777(uint64_t a1)
{
  v1 = 753662761 * (a1 ^ 0x651AFB4B);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969E4B84@<X0>(int a1@<W8>)
{
  v4 = v2 - a1 - 514;
  *v1 = (v7 << ((v2 - a1 - 2) ^ 0x5Bu)) | v8;
  v10 = v2 - a1 + 2057737816 - 1790939281 * (((&v10 | 0x2EAAB504) - (&v10 & 0x2EAAB504)) ^ 0xD6769545);
  v11 = v9;
  (*(v3 + 8 * (v2 - a1 + 2057738542)))(&v10);
  v10 = 2057738330 - 1790939281 * ((((2 * &v10) | 0x898B68CA) - &v10 - 1153807461) ^ 0xBC199424) + v4;
  v11 = v6;
  (*(v3 + 8 * (v4 ^ 0x855965D0)))(&v10);
  return 0;
}

uint64_t sub_1969E4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, uint64_t a17, int *a18, unsigned int a19, unsigned int a20)
{
  v27 = *v20;
  v28 = (v23 + 960206865) & 0xC6C467EC;
  v29 = ((&a16 - 1109901648 - 2 * (&a16 & 0xBDD83EB0)) ^ 0xBD4E6D87) * v24;
  a16 = v26;
  LODWORD(a17) = v25 + v29 + 10;
  HIDWORD(a17) = (v23 + 4218) ^ v29;
  (*(v22 + 8 * (v23 ^ 0x1F3E)))(&a16, a2, a3, a4, a5, a6, a7, a8);
  v30 = *(v21 + 16) + 730960721 - ((2 * *(v21 + 16)) & 0x572331AA) + 1412;
  v31 = 1575331711 * ((-2096424475 - (&a16 | 0x830B19E5) + (&a16 | 0x7CF4E61A)) ^ 0x10AF7318);
  a17 = v21 + 80;
  LODWORD(a16) = v30 ^ v31;
  LODWORD(a18) = v23 - 1989036853 + v31;
  (*(v22 + 8 * (v23 ^ 0x1F63)))(&a16);
  v32 = v28 + *(v21 + 20) + 730960721 - ((2 * *(v21 + 20)) & 0x572331AA);
  v33 = 1575331711 * ((((&a16 | 0xDDD02E32) ^ 0xFFFFFFFE) - (~&a16 | 0x222FD1CD)) ^ 0x4E7444CF);
  LODWORD(a18) = v23 - 1989036853 + v33;
  LODWORD(a16) = v32 ^ v33;
  a17 = v21 + 84;
  (*(v22 + 8 * (v23 ^ 0x1F63)))(&a16);
  v34 = 489239129 * ((177793942 - (&a16 | 0xA98EB96) + (&a16 | 0xF5671469)) ^ 0x4C4F375F);
  a16 = &a12;
  a18 = v26;
  a19 = v34 + 426488402;
  a20 = v34 ^ 0x99603FFC;
  LODWORD(a17) = v34 + v23 + 2759;
  (*(v22 + 8 * (v23 ^ 0x1F4E)))(&a16);
  v35 = *(v21 + 4);
  *v21 += a12;
  *(v21 + 4) = v35 + a13;
  v36 = *(v21 + 12);
  *(v21 + 8) += a14;
  *(v21 + 12) = v36 + a15;
  a16 = v26;
  a18 = v21;
  LODWORD(a17) = v23 + 1738598062 + 1068996913 * (((&a16 | 0xB3520367) - (&a16 & 0xB3520367)) ^ 0x66BCE2F6);
  (*(v22 + 8 * (v23 ^ 0x1F2A)))(&a16);
  v37 = 1825732043 * (&a16 ^ 0x965337);
  LODWORD(a17) = v37 + 1865116593;
  HIDWORD(a17) = (v23 + 4218) ^ v37;
  a16 = v21;
  (*(v22 + 8 * (v23 + 5426)))(&a16);
  *v27 = *v21 - ((2 * *v21) & 0xD8) - 20;
  v27[1] = *(v21 + 1) - ((2 * *(v21 + 1)) & 0xD8) - 20;
  v27[2] = *(v21 + 2) - ((2 * *(v21 + 2)) & 0xD8) - 20;
  v27[3] = *(v21 + 3) - ((2 * *(v21 + 3)) & 0xD8) - 20;
  v27[4] = *(v21 + 4) - ((2 * *(v21 + 4)) & 0xD8) - 20;
  v27[5] = *(v21 + 5) - ((2 * *(v21 + 5)) & 0xD8) - 20;
  v27[6] = *(v21 + 6) - ((2 * *(v21 + 6)) & 0xD8) - 20;
  v27[7] = *(v21 + 7) - ((2 * *(v21 + 7)) & 0xD8) - 20;
  v27[8] = *(v21 + 8) - ((2 * *(v21 + 8)) & 0xD8) - 20;
  v27[9] = *(v21 + 9) - ((2 * *(v21 + 9)) & 0xD8) - 20;
  v27[10] = *(v21 + 10) - ((2 * *(v21 + 10)) & 0xD8) - 20;
  v27[11] = *(v21 + 11) - ((2 * *(v21 + 11)) & 0xD8) - 20;
  v27[12] = *(v21 + 12) - ((2 * *(v21 + 12)) & 0xD8) - 20;
  v27[13] = *(v21 + 13) - ((2 * *(v21 + 13)) & 0xD8) - 20;
  v27[14] = *(v21 + 14) - ((2 * *(v21 + 14)) & 0xD8) - 20;
  v27[15] = *(v21 + 15) - ((2 * *(v21 + 15)) & 0xD8) - 20;
  v38 = 1825732043 * ((((2 * &a16) | 0x8233B3F0) - &a16 - 1092213240) ^ 0x418F8ACF);
  a16 = v21;
  LODWORD(a17) = v38 + 1865116593;
  HIDWORD(a17) = (v23 + 4218) ^ v38;
  (*(v22 + 8 * (v23 + 5426)))(&a16);
  a16 = v26;
  a18 = v21;
  LODWORD(a17) = v23 + 1738598062 + 1068996913 * (&a16 ^ 0xD5EEE191);
  (*(v22 + 8 * (v23 ^ 0x1F2A)))(&a16);
  v39 = 1825732043 * ((&a16 & 0x5366CB58 | ~(&a16 | 0x5366CB58)) ^ 0xAC0F6790);
  a16 = v21;
  LODWORD(a17) = v39 + 1865116593;
  HIDWORD(a17) = (v23 + 4218) ^ v39;
  v40 = (*(v22 + 8 * (v23 ^ 0x1F3E)))(&a16);
  v27[4] = *v21 - ((2 * *v21) & 0xD8) - 20;
  v27[5] = *(v21 + 1) - ((2 * *(v21 + 1)) & 0xD8) - 20;
  v27[6] = *(v21 + 2) - ((2 * *(v21 + 2)) & 0xD8) - 20;
  v27[7] = *(v21 + 3) - ((2 * *(v21 + 3)) & 0xD8) - 20;
  v27[8] = *(v21 + 4) - ((2 * *(v21 + 4)) & 0xD8) - 20;
  v27[9] = *(v21 + 5) - ((2 * *(v21 + 5)) & 0xD8) - 20;
  v27[10] = *(v21 + 6) - ((2 * *(v21 + 6)) & 0xD8) - 20;
  v27[11] = *(v21 + 7) - ((2 * *(v21 + 7)) & 0xD8) - 20;
  v27[12] = *(v21 + 8) - ((2 * *(v21 + 8)) & 0xD8) - 20;
  v27[13] = *(v21 + 9) - ((2 * *(v21 + 9)) & 0xD8) - 20;
  v27[14] = *(v21 + 10) - ((2 * *(v21 + 10)) & 0xD8) - 20;
  v27[15] = *(v21 + 11) - ((2 * *(v21 + 11)) & 0xD8) - 20;
  v27[16] = *(v21 + 12) - ((2 * *(v21 + 12)) & 0xD8) - 20;
  v27[17] = *(v21 + 13) - ((2 * *(v21 + 13)) & 0xD8) - 20;
  v27[18] = *(v21 + 14) - ((2 * *(v21 + 14)) & 0xD8) - 20;
  v27[19] = *(v21 + 15) - ((2 * *(v21 + 15)) & 0xD8) - 20;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0u;
  return (*(v22 + 8 * (v28 ^ (2 * (((v28 + 1140656762) & 0xBC02FB5F) != 2942)))))(v40);
}

uint64_t sub_1969E5478()
{
  *v3 = ((v0 + 32) & 0xDB ^ 0x5B) & v1;
  v4 = __rev16(*(v3 + 6)) | ((*(v3 + 2) << ((((((v0 + 32) & 0xDB) + 117) & 0xBD) + 76) ^ 0xF1u)) + (((((v0 - 1607825632) & 0x5FD56FDB ^ 0x5B) & v1) << 56) | (*(v3 + 1) << 48)) + (*(v3 + 3) << 32) + (*(v3 + 4) << 24) + (*(v3 + 5) << 16));
  return (*(v2 + 8 * ((7 * (((((v4 + 0x1F6D1F4CEF332AFALL - ((2 * v4) & 0x3EDA3E99DE6655F4)) ^ 0xE5D8DC1BF255B353) + 0x1A2723E40DAA4CADLL) ^ (((v4 + 0x1F6D1F4CEF332AFALL - ((2 * v4) & 0x3EDA3E99DE6655F4)) ^ 0xCAA0FB35A1BE535ELL) + 0x355F04CA5E41ACA2) ^ (((v4 + 0x1F6D1F4CEF332AFALL - ((2 * v4) & 0x3EDA3E99DE6655F4)) ^ 0x30153862BCD8CAF7) - 0x30153862BCD8CAF7)) + 0x1F6D1F4CEF332AFALL < 0xE)) ^ (v0 - 1607825632) & 0x5FD56FDB)))();
}

uint64_t sub_1969E56C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9 == 41591)
  {
    return (*(a6 + 8 * ((a8 - 5022) ^ ((2 * (v11 == -1720256289)) | ((v11 == -1720256289) << 6)))))(a1);
  }

  if (v9 != 26075 && v9 != 45445)
  {
    LODWORD(STACK[0x414]) = v10;
    STACK[0x6F8] = *(a6 + 8 * (a8 - 5476));
    JUMPOUT(0x1969CE4D0);
  }

  STACK[0x818] = v8;
  return (*(a6 + 8 * ((4487 * (v9 == (15 * (a8 ^ 0x1638) - 25460))) ^ (a8 - 3611))))(a1);
}

uint64_t sub_1969E5868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(a6 + 8 * (((v7 ^ 0xBA2) + 1309) | (8 * (((v6 != 0x9976F8DB) ^ (121 * (((v7 ^ 0xA2) + 29) ^ 0xD2))) & 1)))))();
}

uint64_t sub_1969E58C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, unsigned int a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, char *a18, unsigned int a19)
{
  v25 = v24 + a13;
  *v19 += a13;
  a17 = v22;
  a18 = &a11;
  a19 = v23 + 1621291457 * (((&a14 ^ 0xFB17A6A0) & 0x6511E70B | ~(&a14 ^ 0xFB17A6A0 | 0x6511E70B)) ^ 0x57EE3FCD) + 3293;
  a14 = v25;
  a16 = v20;
  v26 = (*(v21 + 8 * (v23 ^ 0x13F9)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  return (*(v21 + 8 * (((a15 == (((v23 - 2233) | 0x844) ^ 0x719F84B0)) * (((v23 + 525444770) & 0xE0AE5FF6) - 3301)) ^ v23)))(v26);
}

void sub_1969E59A0()
{
  LODWORD(STACK[0x4F0]) = 0;
  LODWORD(STACK[0x588]) = 244766;
  LODWORD(STACK[0x570]) = 245548;
  LODWORD(STACK[0x56C]) = 246330;
  LODWORD(STACK[0x568]) = 247112;
  LODWORD(STACK[0x564]) = 249458;
  LODWORD(STACK[0x560]) = 250240;
  LODWORD(STACK[0x4EC]) = 251022;
  LODWORD(STACK[0x558]) = 251804;
  LODWORD(STACK[0x4E8]) = 253368;
  LODWORD(STACK[0x554]) = 498916;
  LODWORD(STACK[0x548]) = 499698;
  LODWORD(STACK[0x544]) = 500480;
  LODWORD(STACK[0x540]) = 502044;
  LODWORD(STACK[0x53C]) = 502826;
  LODWORD(STACK[0x538]) = 503608;
  LODWORD(STACK[0x534]) = 505172;
  LODWORD(STACK[0x528]) = 506736;
  LODWORD(STACK[0x524]) = 507518;
  LODWORD(STACK[0x520]) = 708;
  LODWORD(STACK[0x4B0]) = v0 + 4453;
  LODWORD(STACK[0x598]) = 475 * ((v0 + 4453) ^ 0x1874);
  LODWORD(STACK[0x518]) = 248676;
  LODWORD(STACK[0x514]) = 501262;
  LODWORD(STACK[0x510]) = 505954;
  LODWORD(STACK[0x50C]) = 252586;
  JUMPOUT(0x1969E5B08);
}

void sub_1969E69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = (((2 * v9) & 0x3BB79277EAE3FF00) + (v9 ^ 0x1DDBC93BF571FF80) + v8 - 0x1DDBC93BF571FF80);
  v11 = (*v10 << ((a8 + 93) ^ 0xA2)) | (v10[1] << 16) | (v10[2] << 8);
  LODWORD(STACK[0x6D4]) = (v11 | v10[3]) - 1720256293 - 2 * ((v11 | v10[3]) & 0x1976F8DF ^ v10[3] & 4);
  JUMPOUT(0x1968C8F00);
}

uint64_t sub_1969E6EB0@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = (v15 + 4 * v13);
  v20 = HIDWORD(v12) + (*v19 ^ v10) + HIDWORD(v14) + v18 * (*(*(a10 + 8) + 4 * v13) ^ v10);
  *(v19 - 1) = v20 + v10 - ((v20 << (v16 ^ 0x73)) & a2);
  return (*(v17 + 8 * ((v13 + 1 == a3) ^ v16)))(a1, v16 ^ v11);
}

void sub_1969E712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v26 - 128) = v25;
  *(v26 - 120) = &a14;
  *(v26 - 112) = &a22;
  *(v26 - 104) = a12;
  *(v26 - 136) = v23 + ((((2 * (v26 - 144)) | 0x164C400C) - (v26 - 144) - 187047942) ^ 0x44FE2331) * v22 + 3553;
  *(v26 - 144) = &a14;
  (*(v24 + 8 * (v23 ^ 0x18C0)))(v26 - 144, a2, a3, a4, a5, a6, a7, a8);
  JUMPOUT(0x19699D7ACLL);
}

uint64_t sub_1969E72EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * (((&a13 | 0x27951E1F) - (&a13 & 0x27951E1F)) ^ 0xA33C96F3);
  a13 = v21 ^ 0x80F33AA;
  a15 = v21 - 1793516106;
  a16 = a10;
  a17 = &a11;
  a18 = v21 + v20 - 1795305885;
  v22 = (*(v19 + 8 * (v20 ^ 0x10C6)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * ((6985 * (a14 == ((v20 + 2434) ^ 0x1B5D ^ (v18 - 2186)))) ^ v20)))(v22);
}

uint64_t sub_1969E7568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5603));
  v7 = STACK[0x290] + STACK[0x200] - 0x2D6560F450244D3ELL;
  v8 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v48) & 0xFBFFFFFFFFFFFFFFLL;
  v9 = v8 ^ 0x4DE9423B6F16E7D2;
  v8 ^= 0xE5AFA7ACF6E0968ELL;
  v10 = __ROR8__(v9, 8);
  v11 = __ROR8__((v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v12 = (v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v8, 61);
  v13 = (v11 + v12) ^ 0xF5A2F1B9B5D0B209;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xB8A665E197C7F47ELL) - (v15 + v14) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x1D3A72000429358 - ((v18 + v17) | 0x1D3A72000429358) + ((v18 + v17) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0x25583E6B392D1AC8 - ((v21 + v20) | 0x25583E6B392D1AC8) + ((v21 + v20) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x272BFFDC1C3FC546 - ((v24 + v23) | 0x272BFFDC1C3FC546) + ((v24 + v23) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((((2 * (v27 + v26)) | 0xC355F3281D11914) - (v27 + v26) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v7 & 7u))) ^ *v7;
  v29 = *++v7;
  v30 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = -2 - (((0x6AF7234D0CC131D4 - v30) | 0x1A41569DA1CC8FFALL) + ((v30 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v32 = v31 ^ 0x53A814A6CEDA6828;
  v31 ^= 0xFBEEF131572C1974;
  v33 = __ROR8__(v32, 8);
  v34 = (((2 * (v33 + v31)) & 0xF2BD014CC6D06D4ALL) - (v33 + v31) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xF5A2F1B9B5D0B209;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (0xFF7817662BD390FALL - ((v37 + v38) | 0xFF7817662BD390FALL) + ((v37 + v38) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x61459D2AF01F24F7;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x64C31C027084DE6CLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (0xD96EC6C1FDF6D5E3 - ((v45 + v44) | 0xD96EC6C1FDF6D5E3) + ((v45 + v44) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v44) = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v44, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ v29;
  return v6(a1, (v44 | (v28 << 8)) - 2 * ((v44 & 5 | (v28 << 8) & 0x3505) ^ v44 & 5) + 13568, a3, a4, a5);
}

uint64_t sub_1969E782C()
{
  v3 = (*(v2 + 8 * (v1 + 5008)))();
  LODWORD(STACK[0x688]) = v0;
  return (*(v2 + 8 * (((v0 == (((v1 + 3967) | 0x1CB) ^ 0x719F9B0F)) * ((v1 + 1639084366) & 0x9E4D9FFB ^ 0x8EB)) ^ v1)))(v3);
}

uint64_t sub_1969E7984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v8;
  return (*(a6 + 8 * ((((a8 + 1937094732) & 0x8C8A31FF ^ 0x11D) * (a1 == 0)) ^ (a8 - 427))))();
}

uint64_t sub_1969E79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20)
{
  a19 = (v20 - 2301) ^ ((((&a18 | 0x83C56AD1) - &a18 + (&a18 & 0x7C3A9528)) ^ 0x835339E6) * v23);
  a18 = v21 + 8 * v22;
  a20 = a13;
  v25 = (*(v24 + 8 * (v20 + 1322)))(&a18, a2, a3, a4, a5, a6, a7, a8);
  return (*(v24 + 8 * (((a12 <= (v22 + 1)) * (v20 - 5476)) ^ v20)))(v25);
}

void fp_dh_67cc14da6f7a20a08ae60e9e1b18b373(_DWORD *a1)
{
  v1 = *a1 - 1575331711 * (((a1 | 0xE98C942D) - (a1 & 0xE98C942D)) ^ 0x85D7012F);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1969E7BF4()
{
  v2 = v0 ^ 0x1A81ECC59515547FLL;
  v6 = *(v2 - 0x1A81ECC595155467);
  v5[1] = 998242381 * ((((2 * v5) | 0x330963C) - v5 - 26757918) ^ 0xABF7D3C8) + 5723;
  (*(v1 + 55320))(v5);
  v3 = v5[0];
  (*(v1 + 53768))(v2 - 0x1A81ECC59515547FLL);
  return (v3 - 1906281716);
}

uint64_t sub_1969E7D70@<X0>(int a1@<W0>, _OWORD *a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (a9 + a3);
  v12 = a2[1];
  *(v11 - 1) = *a2;
  *v11 = v12;
  return (*(v10 + 8 * ((22 * (((((v9 - 113) & 0x66) + 3) ^ ((((v9 - 140226417) & 0x85BAF66 ^ 0xC06) & a1) == 32)) & 1)) ^ (v9 - 140226417) & 0x85BAF66u)))();
}

void sub_1969E7DD8(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v4 = (((a3[1] ^ 0xECLL) << ((a1 - 49) ^ 0x92u)) + ((*a3 ^ 0xECu) << 56) + ((a3[2] ^ 0xECu) << 40) + ((a3[3] ^ 0xECu) << 32) + ((a3[4] ^ 0xECLL) << 24) + ((a3[5] ^ 0xECLL) << 16) + ((a3[6] ^ 0xECLL) << 8)) | a3[7] ^ 0xECLL;
  **v3 = (v4 - ((2 * v4) & 0xF5EE6A28855A7980) - 0x508CAEBBD52C340) ^ 0xFAF7351442AD3CC0;
  JUMPOUT(0x1969E7E88);
}

void sub_1969E7ED0(uint64_t a1, unint64_t a2)
{
  STACK[0x978] = a2;
  v2 = STACK[0x4C8];
  *(v2 + 112) = -1720256293;
  *(v2 + 116) = -1720256293;
  *(v2 + 108) = 0;
  *(v2 + 104) = 0;
  JUMPOUT(0x1969E7EECLL);
}

uint64_t sub_1969E7FC8@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + 4 * v3);
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((27 * (v3 + (v4 + 4676) - (v1 & 0x1FFFFFFF8) == 5671)) ^ v4)))();
}

uint64_t sub_1969E8034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, int a15)
{
  a15 = v16 - ((&a13 + 872034014 - 2 * (&a13 & 0x33FA2EDE)) ^ 0x336C7DE9) * v17 - 3380;
  a14 = &a11;
  v18 = (*(v15 + 8 * (v16 ^ 0x924)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v15 + 8 * ((1037 * (a13 == (v16 ^ 0x3CB) + 1906277423)) ^ v16)))(v18);
}

uint64_t sub_1969E810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v3 + 247);
  v7 = v5 - v4 + v9 - 745 >= ((v3 + 250) ^ 0x324uLL);
  return (*(v6 + 8 * ((v7 | (4 * v7)) ^ v9)))(a1, a2, a3);
}

uint64_t sub_1969E81A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a18 = &a15;
  a19 = v20 - 1825732043 * (&a17 ^ 0x965337) - 24;
  v23 = (*(v19 + 8 * (v20 ^ 0x1FD8)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * (((a17 != v22) * ((v21 + (v20 ^ 0x5F5) + 1227) ^ (v21 + 1226))) ^ v20)))(v23);
}

uint64_t sub_1969E8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v8 ^ 0x165F) << 7;
  v10 = (v9 + 4985) | 0x204;
  STACK[0x808] = STACK[0x3D8];
  STACK[0x6F8] = *(a6 + 8 * v9);
  STACK[0x508] = &STACK[0x808];
  v6 = STACK[0x808];
  STACK[0x5A8] = STACK[0x808];
  return (*(a6 + 8 * ((197 * (((v6 == 0) ^ (v10 - 76)) & 1)) ^ v10)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969E8934@<X0>(uint64_t a1@<X8>)
{
  *(*(a1 + 8) + 4 * (((v3 + 850) ^ v2) + v5)) = v6 ^ (v4 + 1871);
  v7 = (v3 - 646026238) & 0x26819BDD;
  *(a1 + 4) = v5 + 1;
  v8 = -2835 - (v5 - 676345803 + v7);
  if (v5 - 676345803 + v7 + 2835 >= 0)
  {
    v8 = v5 - 676345803 + v7 + 2835;
  }

  return (*(v1 + 8 * ((60 * ((v2 + (v8 ^ 0x7C50B9DF) - 1409325315 + ((2 * v8) & 0xF8A173BE) + 1720) <= ((v7 - 3037) | 0x672) - 1651)) ^ v7)))();
}

void sub_1969E8A3C()
{
  v0 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v1 = STACK[0xAA0] + (((v5 + 725) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v1 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v1) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v2 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v3 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v4 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v0 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v0 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v2 + 10;
  STACK[0x290] = v3 + 10;
  STACK[0x310] = v4;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969E8A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  a14 = ((v16 ^ 0xFE3FF57BB6DFBAFBLL) + 0x7DD6BFB7CF36CFD5 + ((2 * v16) & 0xFC7FEAF76DBF75F6)) ^ (1068996913 * ((((2 * (v19 ^ 0x1AD187012A517088)) | 0x25B475B7C8A48894) - (v19 ^ 0x1AD187012A517088) - 0x12DA3ADBE452444ALL) ^ 0x9C6A89491BEDD553));
  a16 = a10;
  a15 = 6365 - 1068996913 * ((((2 * (v19 ^ 0x2A517088)) | 0xC8A48894) - (v19 ^ 0x2A517088) + 464370614) ^ 0x1BEDD553);
  v20 = (*(v18 + 54528))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * ((4191 * (a13 == v17)) ^ 0xA41u)))(v20);
}

uint64_t sub_1969E8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  v22 = v20 || *(a1 + 16) == 0;
  return (*(a2 + 8 * ((203 * ((v22 ^ (v18 - 20)) & 1)) ^ v18)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_1969E8BF4()
{
  LODWORD(STACK[0x3BC]) = STACK[0x634];
  LODWORD(STACK[0x79C]) = STACK[0x3BC];
  JUMPOUT(0x1969F9E14);
}

uint64_t sub_1969E8C0C()
{
  STACK[0x508] = 0;
  STACK[0x4A0] = 0;
  return (*(v0 + 8 * ((2724 * (LODWORD(STACK[0x784]) == (v1 ^ 0x719F82E8))) ^ (v1 - 3198))))();
}

void sub_1969E8C5C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  STACK[0x280] = v3;
  *&STACK[0x3D0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3B0] = vdupq_n_s64(v6);
  *&STACK[0x3C0] = vdupq_n_s64(a3);
  *&STACK[0x410] = vdupq_n_s64(a1);
  *&STACK[0x390] = vdupq_n_s64(a2);
  *&STACK[0x3A0] = vdupq_n_s64(0xE788DD3012A091E0);
  *&STACK[0x370] = vdupq_n_s64(v4);
  *&STACK[0x380] = vdupq_n_s64(0xBD8F7CFD1E07971BLL);
  *&STACK[0x350] = vdupq_n_s64(0x84EBA188CFF32DABLL);
  *&STACK[0x360] = vdupq_n_s64(0x7960F2B616996E9FuLL);
  *&STACK[0x330] = vdupq_n_s64(0xA77DA4D51E01EB11);
  *&STACK[0x340] = vdupq_n_s64(0xADBA7ED07AC0689ALL);
  *&STACK[0x310] = vdupq_n_s64(0x67ECAB24E0949C16uLL);
  *&STACK[0x320] = vdupq_n_s64(v5);
  *&STACK[0x2F0] = vdupq_n_s64(0x3DBB3B5844776955uLL);
  *&STACK[0x300] = vdupq_n_s64(0x4C09AA6D8FB5B1F5uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x87C0804202802uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x7068FDEC8CEB6B27uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x701021320009051uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8F970213731494D8);
  *&STACK[0x2A0] = vdupq_n_s64(0x56B23F6A8BCD7E7AuLL);
  *&STACK[0x290] = xmmword_196EBFAE0;
  JUMPOUT(0x1969E8E78);
}

uint64_t sub_1969E93EC()
{
  v1 = STACK[0x36C];
  v2 = LODWORD(STACK[0x36C]) - 2577;
  *STACK[0x770] = STACK[0x908];
  return (*(STACK[0x370] + 8 * ((157 * (LODWORD(STACK[0x914]) == v0 + ((v1 - 533) | 0x215) - 5049 - 676)) ^ v2)))();
}

uint64_t sub_1969E944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  a15 = 6365 - 1068996913 * ((v19 - 2 * (v19 & 0xE19B3F02) - 509919486) ^ 0x3475DE93);
  a16 = a10;
  a14 = (((2 * v16) & 0xF8FFFF6FEDFF75A2) - 0x694A8470E93001 + (v16 ^ 0x7C7FFFB7F6FFBAD1)) ^ (1068996913 * ((v19 - 2 * (v19 & 0x79F6D086E19B3F02) + 0x79F6D086E19B3F02) ^ 0xED97E4153475DE93));
  v20 = (*(v18 + 54528))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * ((76 * (((a13 == v17) ^ 0x8F) & 1)) ^ 0xB8Fu)))(v20);
}

uint64_t sub_1969E9574@<X0>(int a1@<W8>)
{
  v4 = (((a1 - v1 + 1861793159) ^ 0xB7EACE14) + 653100167) ^ (a1 - v1 + 1861793159) ^ (((a1 - v1 + 1861793159) ^ 0x7194B3F) - 1776418386) ^ (((a1 - v1 + 1861793159) ^ 0xFFFEDBFF) + 1861849454) ^ (((((v2 + 1352732103) & 0xAF5EEE5F) + 569761181) ^ (a1 - v1 + 1861793159)) - 1326276308);
  LODWORD(STACK[0x5C8]) = v4 ^ 0xF78E4DB6;
  v5 = (*(v3 + 8 * (v2 + 2200)))(v4 ^ 0x6EF8B56D, 0x100004077774924);
  STACK[0x700] = v5;
  return (*(v3 + 8 * ((1019 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1969E9674@<X0>(int a1@<W8>)
{
  v7 = ((-990739875 - (v3 | 0xC4F2825D) + (v3 | 0x3B0D7DA2)) ^ 0x82255E94) * v5;
  *(v6 - 184) = 0;
  *(v6 - 192) = (v2 + 2973) ^ v7;
  *(v6 - 176) = a1 + v7;
  *(v6 - 208) = &STACK[0x604];
  *(v6 - 200) = &STACK[0x4A8];
  v8 = (*(v4 + 8 * (v2 + 6020)))(v6 - 208);
  v9 = *(v6 - 172);
  STACK[0x410] = v1;
  return (*(v4 + 8 * (((v9 == 7 * (v2 ^ 0x4B) + 1906275577) * (126 * (v2 ^ 0x30B) - 1518)) ^ v2)))(v8, 1906281716, 48, 1906239693, 4356, STACK[0x370], 95, 4290432414);
}

uint64_t sub_1969E9834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = ((a12 + 443173274) ^ 0x2CD4876D) & (2 * ((a12 + 443173274) & 0x8C95264E)) ^ (a12 + 443173274) & 0x8C95264E;
  v20 = ((((a12 + 443173274) ^ 0x35DC8FE5) << ((v17 + 38) ^ 0x8B)) ^ 0x72935356) & ((a12 + 443173274) ^ 0x35DC8FE5) ^ (((a12 + 443173274) ^ 0x35DC8FE5) << ((v17 + 38) ^ 0x8B)) & 0xB949A9AA;
  v21 = v20 ^ 0x8948A8A9;
  v22 = (v20 ^ 0x30010100) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0xE526A6AC) & v21 ^ (4 * v21) & 0xB949A9A8;
  v24 = (v23 ^ 0xA100A0A0) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x18490903)) ^ 0x949A9AB0) & (v23 ^ 0x18490903) ^ (16 * (v23 ^ 0x18490903)) & 0xB949A9A0;
  v26 = v24 ^ 0xB949A9AB ^ (v25 ^ 0x90088800) & (v24 << 8);
  v27 = (a12 + 443173274) ^ (2 * ((v26 << 16) & 0x39490000 ^ v26 ^ ((v26 << 16) ^ 0x29AB0000) & (((v25 ^ 0x2941210B) << 8) & 0x39490000 ^ 0x30400000 ^ (((v25 ^ 0x2941210B) << 8) ^ 0x49A90000) & (v25 ^ 0x2941210B))));
  v29 = v27 != -1407945448 && (((321 * ((v17 - 1381083750) & 0x5251AA65 ^ 0x277)) ^ 0x17DC) & v27) == 8;
  HIDWORD(a17) = (a12 + 443173274) ^ (2 * ((v26 << 16) & 0x39490000 ^ v26 ^ ((v26 << 16) ^ 0x29AB0000) & (((v25 ^ 0x2941210B) << 8) & 0x39490000 ^ 0x30400000 ^ (((v25 ^ 0x2941210B) << 8) ^ 0x49A90000) & (v25 ^ 0x2941210B))));
  return (*(v18 + 8 * ((45 * v29) ^ (v17 + 5926))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1969E9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35)
{
  v38 = *(&a32 + (v35 >> ((v36 - 122) ^ 0x2A)) + 1);
  v39 = ((2 * v35) & 0xEFDB7DD0) + (v35 ^ 0x77EDBEEA) - 2012069610;
  *(a11 + v39) = v38 ^ 0x87;
  *(a11 + v39 + 1) = (BYTE1(v38) ^ 7) - ((2 * (BYTE1(v38) ^ 7)) & 0xD8) - 20;
  *(a11 + v39 + 2) = (BYTE2(v38) ^ 0x47) - ((2 * (BYTE2(v38) ^ 0x47)) & 0xD8) - 20;
  *(a11 + v39 + 3) = (HIBYTE(v38) ^ 0x7C) - 2 * ((HIBYTE(v38) ^ 0x7C) & 0x6D ^ HIBYTE(v38) & 1) - 20;
  return (*(v37 + 8 * ((4591 * (v35 + 4 < a35)) ^ v36)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1969E9AE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = v11 + a8;
  v20 = v11 + a8 + 9;
  v21 = __ROR8__(v20 & ((v12 + 4432) - 5733), 8);
  v22 = ((0x6AF7234D0CC131D4 - v21) & a1) + v21 - 0x6AF7234D0CC131D5 - ((v21 - 0x6AF7234D0CC131D5) & a2);
  v23 = __ROR8__(v22 ^ v14, 8);
  v24 = v22 ^ v15;
  v25 = (v9 - ((v23 + v24) | v9) + ((v23 + v24) | v17)) ^ v18;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (a3 - ((v27 + v26) | a3) + ((v27 + v26) | a5)) ^ a6;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x5963B6C555D97F1FLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__(((v16 & (2 * (v32 + v31))) - (v32 + v31) + a7) ^ v13, 8);
  v34 = ((v16 & (2 * (v32 + v31))) - (v32 + v31) + a7) ^ v13 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ 0x64C31C027084DE6CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((v8 & (2 * (v37 + v36))) - (v37 + v36) + a4) ^ 0xC249F792A028E260;
  v39 = v11 - 1;
  *(v19 + 9) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v36, 61))) ^ 0xAB3042D228875C41) >> (8 * (v20 & 7u))) ^ *(v10 + v39);
  return (*(STACK[0x370] + 8 * ((4561 * (v39 == 0)) ^ v12)))();
}

uint64_t sub_1969E9CA0()
{
  result = (*(v3 + 8 * (v0 + 3109)))();
  *(v2 + 4) = v1;
  return result;
}

uint64_t sub_1969E9D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = STACK[0x3D8];
  if (STACK[0x7C8])
  {
    v6 = v10 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(a6 + 8 * ((v7 * (v9 + 1540 + ((v9 + 1540) ^ 0xFFFFF919) + 4016)) ^ (v9 + 1540))))(v10, a2, a3, a4, a5);
}

void fp_dh_d9d49357479cf9154cdcf4590d1fdba0(uint64_t a1)
{
  v1 = 998242381 * (a1 ^ 0xAA6F98D6);
  v2 = *a1 ^ v1;
  if (*(a1 + 16))
  {
    v3 = *(a1 + 4) - v1 == 2125716557;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969E9DE4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(result + 16);
  *a2 = 0;
  v4[291] = v2;
  *a2 += (4 * (v3 ^ 0x988)) ^ 0xA3C;
  v4[293] = v2 + 256;
  *a2 += 256;
  v4[295] = v2 + 512;
  *a2 += 256;
  v4[297] = v2 + 768;
  *a2 += 256;
  v4[299] = v2 + 1024;
  *a2 += 256;
  v4[301] = v2 + 1280;
  *a2 += 256;
  v4[303] = v2 + 1536;
  *a2 += 256;
  v4[305] = v2 + 1792;
  *a2 += 256;
  v4[307] = v2 + 2048;
  *a2 += 256;
  v4[309] = v2 + 2304;
  *a2 += 256;
  v4[311] = v2 + 2560;
  *a2 += 256;
  v4[313] = v2 + 2816;
  *a2 += 256;
  v4[315] = v2 + 3072;
  *a2 += 256;
  v4[317] = v2 + 3328;
  *a2 += 256;
  v4[319] = v2 + 3584;
  *a2 += 256;
  v4[321] = v2 + 3840;
  *a2 += 256;
  *(result + 8) = 1906281716;
  return result;
}

uint64_t sub_1969E9F48(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v135 = v124 - 8;
  v16 = v135 + v126 + a16;
  v17.i64[0] = v135 + v126 + 1;
  v17.i64[1] = v135 + v126;
  v18.i64[0] = v135 + v126 + 3;
  v18.i64[1] = v135 + v126 + 2;
  v19.i64[0] = v135 + v126 + 5;
  v19.i64[1] = v135 + v126 + 4;
  v20.i64[0] = v16 - 2105;
  v20.i64[1] = v135 + v126 + 6;
  v21 = vandq_s8(v20, a1);
  v22 = vandq_s8(v19, a1);
  v23 = vandq_s8(v18, a1);
  v24 = vandq_s8(v17, a1);
  v25 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL), a3);
  v26 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL), a3);
  v27 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), a3);
  v28 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL), a3);
  v29 = veorq_s8(v28, a4);
  v30 = veorq_s8(v27, a4);
  v31 = veorq_s8(v26, a4);
  v32 = veorq_s8(v25, a4);
  v33 = veorq_s8(v25, a5);
  v34 = veorq_s8(v26, a5);
  v35 = veorq_s8(v27, a5);
  v36 = veorq_s8(v28, a5);
  v37 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v33), a6);
  v38 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), v34), a6);
  v39 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), v35), a6);
  v40 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), v36), a6);
  v41 = vsraq_n_u64(vshlq_n_s64(v33, 3uLL), v33, 0x3DuLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v34, 3uLL), v34, 0x3DuLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL);
  v44 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v45 = veorq_s8(v39, v43);
  v46 = veorq_s8(v38, v42);
  v47 = veorq_s8(v37, v41);
  v48 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v47);
  v52 = veorq_s8(vaddq_s64(v48, v44), a7);
  v53 = veorq_s8(vaddq_s64(v49, v45), a7);
  v54 = veorq_s8(vaddq_s64(v50, v46), a7);
  v55 = veorq_s8(v51, a7);
  v56 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v59 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v60 = veorq_s8(v54, v58);
  v61 = veorq_s8(v53, v57);
  v62 = veorq_s8(v52, v56);
  v63 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v62);
  v67 = veorq_s8(vaddq_s64(v63, v59), a8);
  v68 = veorq_s8(vaddq_s64(v64, v60), a8);
  v69 = veorq_s8(vaddq_s64(v65, v61), a8);
  v70 = veorq_s8(v66, a8);
  v71 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v73 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v74 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v75 = veorq_s8(v69, v73);
  v76 = veorq_s8(v68, v72);
  v77 = veorq_s8(v67, v71);
  v78 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v77);
  v82 = veorq_s8(vaddq_s64(v78, v74), v128);
  v83 = veorq_s8(vaddq_s64(v79, v75), v128);
  v84 = veorq_s8(vaddq_s64(v80, v76), v128);
  v85 = veorq_s8(v81, v128);
  v86 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v89 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v90 = veorq_s8(v84, v88);
  v91 = veorq_s8(v83, v87);
  v92 = veorq_s8(v82, v86);
  v93 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v92);
  v97 = veorq_s8(vaddq_s64(v93, v89), v129);
  v98 = veorq_s8(vaddq_s64(v94, v90), v129);
  v99 = veorq_s8(vaddq_s64(v95, v91), v129);
  v100 = veorq_s8(v96, v129);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v104 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v105 = veorq_s8(v99, v103);
  v106 = veorq_s8(v98, v102);
  v107 = veorq_s8(v97, v101);
  v108 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v107);
  v112 = vaddq_s64(v110, v106);
  v113 = vaddq_s64(v109, v105);
  v114 = vaddq_s64(v108, v104);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v130)), v131), v132);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v130)), v131), v132);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), v130)), v131), v132);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), v130)), v131), v132);
  v119 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL))), v134);
  v136.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), veorq_s8(v115, v119)), v134), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), a2)));
  v136.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, v120)), v134), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), a2)));
  v136.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, v121)), v134), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), a2)));
  v136.val[0] = vshlq_u64(v122, vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), a2)));
  *(v16 - 2112) = vrev64_s8(*&vqtbl4q_s8(v136, v133));
  return (*(STACK[0x370] + 8 * (((a15 == v125 + 8) * v127) ^ a12)))();
}

uint64_t sub_1969E9FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, int a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  v63 = v59 + 14;
  *(v62 - 128) = v63 + 1283153057 * ((2 * ((v62 - 144) & 0x1FD0F378) - (v62 - 144) - 533787514) ^ 0xAFF70FB1) + 3901;
  *(v62 - 144) = &a59 | 0xC;
  *(v62 - 136) = &a59;
  *(v62 - 104) = &a40;
  *(v62 - 120) = v61 + a38;
  (*(v60 + 8 * (v63 + 6849)))(v62 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v60 + 8 * ((1329 * (*(v62 - 112) == ((v63 + 1149524066) & 0x1B7BA7AF ^ 0x719F8CD3))) ^ v63)))(a11);
}

uint64_t sub_1969EA0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, unsigned __int8 a62)
{
  STACK[0x248] = v62;
  v67 = *STACK[0x670] == (a62 ^ 0xEB) && LODWORD(STACK[0x658]) == 1672587722 && v63 == 97900968;
  return (*(v64 + 8 * (v67 | (16 * v67) | (a6 - 369))))(a1, a2, a3, a4, a5);
}

uint64_t sub_1969EA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char *a20, unsigned int a21)
{
  a21 = 1498 - 1825732043 * ((((2 * &a19) | 0x22E7C410) - &a19 + 1854676472) ^ 0x91E5B13F);
  a20 = &a13;
  v23 = (*(v22 + 53584))(&a19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v22 + 8 * ((6878 * (a19 == 1906281716)) ^ v21)))(v23);
}

uint64_t sub_1969EA1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = STACK[0x410];
  v19 = v11 - 1;
  v20 = __ROR8__((v15 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = -2 - (((0x6AF7234D0CC131D4 - v20) | 0x6592086C7BEA8459) + ((v20 + 0x1508DCB2F33ECE2BLL) | 0x9A6DF79384157BA6));
  v22 = v21 ^ (((STACK[0x410] - 1008713004) & 0x3C1FBBF6) + 0x2C7B4A5714FC5099);
  v21 ^= 0x843DAFC08D0A12D7;
  v23 = __ROR8__(v22, 8);
  v24 = (((2 * (v23 + v21)) & 0x8C46C9FF8DC99742) - (v23 + v21) + 0x39DC9B00391B345ELL) ^ 0xDD41ECDFBE268B20;
  v25 = v24 ^ __ROR8__(v21, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x7EEEF60D967B2BE0) - (v26 + v25) + 0x408884F934C26A10) ^ 0x4AD58ABF7EED27F9;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0xA2BEB39B53A93B34) + 0x515F59CDA9D49D9ALL) ^ 0x83CEF08FC0DE285;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (0x7B6BB9E2F71526B0 - ((v32 + v31) | 0x7B6BB9E2F71526B0) + ((v32 + v31) | 0x8494461D08EAD94FLL)) ^ 0xE5D1DB37F8F5FDB8;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v36 = __ROR8__((v13 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = -2 - (((v16 - v36) | v12) + ((v36 + 0xDEA8F311324A00DLL) | 0xF29226D18F0E1510));
  v39 = v38 ^ a2;
  v40 = __ROR8__(v35, 8);
  v41 = v38 ^ a3;
  v42 = __ROR8__(v39, 8);
  v43 = (((v42 + v41) ^ a4) - (a5 & (2 * ((v42 + v41) ^ a4))) + a6) ^ a7;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a8;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v14;
  v48 = __ROR8__(v47, 8);
  v49 = v47 ^ __ROR8__(v46, 61);
  v50 = (((2 * (v40 + v37)) & 0x8BD794260C56C500) - (v40 + v37) + 0x3A1435ECF9D49D7FLL) ^ 0x203EDE08BB87327CLL;
  v51 = (v48 + v49 - (v17 & (2 * (v48 + v49))) + v8) ^ v9;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x60B83CEF67356D1BLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v37, 61));
  v56 = __ROR8__(v53, 8);
  v57 = (v56 + v54 - (v10 & (2 * (v56 + v54))) + 0x715A94BD6AF46B8ELL) ^ 0x7AEF220226ADDE8CLL;
  v58 = v57 ^ __ROR8__(v54, 61);
  v59 = __ROR8__(v57, 8);
  *(v13 + v19) = ((v55 ^ 0xAB3042D228875C41) >> (8 * ((v15 + v19) & 7))) ^ (((v59 + v58 - ((2 * (v59 + v58)) & 0xEF0989440325BE54) - 0x87B3B5DFE6D20D6) ^ 0x4EED5A497390D0E3) >> (8 * ((v13 + v19) & 7))) ^ *(v15 + v19);
  return (*(STACK[0x248] + 8 * ((430 * (v19 == 0)) ^ v18)))();
}

uint64_t sub_1969EA664()
{
  v0 = *STACK[0x3F0];
  v1 = __ROR8__((v0 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v2 = (0x2AF7234D0CC131D4 - v1) & 0x2A199E3A6C7C6131 | (v1 + v37) & 0xD1E661C593839ECELL;
  v3 = v2 ^ 0x67F0DC01036A86E3;
  v2 ^= 0xCFB639969A9CF7BFLL;
  v4 = __ROR8__(v3, 8);
  v5 = (((2 * (v4 + v2)) | 0x1ED977F0C520FDA0) - (v4 + v2) + 0x709344079D6F8130) ^ 0x6BF1CC27E5ADC1AELL;
  v6 = v5 ^ __ROR8__(v2, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) & 0xAB878F6F884E2F0ELL) - (v7 + v6) + 0x2A3C38483BD8E878) ^ 0xDF9EC9F18E085A71;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((0x32FA8FDF7E2CED0CLL - ((v10 + v9) | 0x32FA8FDF7E2CED0CLL) + ((v10 + v9) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL, 8);
  v12 = (0x32FA8FDF7E2CED0CLL - ((v10 + v9) | 0x32FA8FDF7E2CED0CLL) + ((v10 + v9) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) | 0xC9AD8CEC88B7F32) - (v11 + v12) - 0x64D6C676445BF99) ^ 0x6708F14D945A9B6ELL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x64C31C027084DE6CLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = *(STACK[0x248] + 8 * (v38 - 3514));
  v19 = (((v17 + v16) & 0x63AF45F0EF53838FLL ^ 0x294560A0428381) + ((v17 + v16) & 0x9C50BA0F10AC7C70 ^ 0x10503A0C108C4421) - 1) ^ 0xA539488F29D68A2;
  v20 = v19 ^ __ROR8__(v16, 61);
  v21 = __ROR8__(v19, 8);
  *(v0 + 4) = v36 ^ 0xDD ^ (((0xB80DBCCEE227D4F9 - ((v21 + v20) | 0xB80DBCCEE227D4F9) + ((v21 + v20) | 0x47F243311DD82B06)) ^ 0xECC201E3355F7747) >> (8 * ((v0 + 4) & 7)));
  v22 = __ROR8__((v0 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (v22 + v37) ^ 0xE1AFA7ACF6E0968ELL;
  v24 = (__ROR8__((v22 + v37) ^ 0x49E9423B6F16E7D2, 8) + v23) ^ 0xE49D77DF873DBF7ELL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xF5A2F1B9B5D0B209;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5963B6C555D97F1FLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x64C31C027084DE6CLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v39;
  *(v0 + 5) = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v0 + 5) & 7))) ^ 0xDB;
  return v18();
}

uint64_t sub_1969EA678(uint64_t a1)
{
  v5 = *(&STACK[0x29C] + v1 + 72);
  v6 = ((2 * v1) & 0xDFEFF6F8) + (v1 ^ 0xEFF7FB7E) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0x7C) - ((((v3 + 34) | 0x90) + 72) & (2 * (HIBYTE(v5) ^ 0x7C))) - 20;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x47) - ((2 * (BYTE2(v5) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 7) - ((2 * (BYTE1(v5) ^ 7)) & 0xD8) - 20;
  *(a1 + v6 + 3) = v5 ^ 0x87;
  return (*(v4 + 8 * ((2055 * (v1 + 4 < LODWORD(STACK[0x2F8]))) ^ v3)))();
}

void fp_dh_fc56a011a5790d42ac13f5f1f4b1390e(uint64_t a1)
{
  v1 = 753662761 * ((((2 * a1) | 0x82D06364) - a1 + 1050136142) ^ 0xA472CAF9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969EA8D8()
{
  v5 = (v4 + 2102056027) & 0x27FB;
  v15 = v12;
  v16 = &v11;
  LODWORD(v14) = v4 - ((99601374 - (&v14 | 0x5EFCBDE) + (&v14 | 0xFA103421)) ^ 0x964BA123) * v2 - 731;
  (*(v3 + 8 * (v4 ^ 0x1132u)))(&v14);
  HIDWORD(v15) = v4 - 489239129 * (((&v14 | 0x7CF5416E) - (&v14 & 0x7CF5416E)) ^ 0xC5DD6258) - 2067;
  v14 = v12;
  (*(v3 + 8 * (v4 ^ 0x112Cu)))(&v14);
  if (v15 == v1)
  {
    v6 = -100663297;
  }

  else
  {
    v6 = 1910497278;
  }

  if (v15 == v1)
  {
    v7 = -201326594;
  }

  else
  {
    v7 = -473972740;
  }

  if (v15 == v1)
  {
    v8 = 2006945013;
  }

  else
  {
    v8 = -4215562;
  }

  v9 = (v6 ^ v11) + v8 + ((v11 << (v5 + 14)) & v7);
  LODWORD(v14) = v4 - (((&v14 | 0x48278EBB) + (~&v14 | 0xB7D87144)) ^ 0xB0FBAEFB) * v0 + 3129;
  v15 = v12;
  (*(v3 + 8 * (v4 ^ 0x1137u)))(&v14);
  v15 = v13;
  LODWORD(v14) = v5 - ((&v14 - 908005400 - 2 * (&v14 & 0xC9E0EFE8)) ^ 0x313CCFA9) * v0 + 4066;
  (*(v3 + 8 * (v5 + 4792)))(&v14);
  return (v9 - 1906281716);
}

void sub_1969EAB54()
{
  if (v0 == 1143350500)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *v1 = v2;
}

uint64_t sub_1969EABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 1283153057 * ((v8 - 120) ^ 0x4FD80337);
  *(v8 - 112) = v6;
  *(v8 - 120) = a5 + v9 - 1374402255;
  *(v8 - 104) = (v7 - 572) ^ v9;
  return (*(v5 + 8 * (v7 ^ 0x1753)))(v8 - 120, a2, a3, a4);
}

uint64_t sub_1969EACE0(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x350]) = a1;
  STACK[0x340] = v8;
  return (*(a6 + 8 * (((((v7 + a4) & a5 ^ a7) + v7 + 3093) * (*v8 != 0)) ^ v7)))();
}

uint64_t sub_1969EAD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a14 = &a11;
  a15 = 1498 - 1825732043 * (((&a13 ^ 0x6F8B46B3 | 0x9F8EDC9F) - ((&a13 ^ 0x6F8B46B3) & 0x9F8EDC9F)) ^ 0xF093C91B);
  v18 = (*(v16 + 53584))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8 * ((5950 * (a13 == v15)) ^ v17)))(v18);
}

uint64_t sub_1969EAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = STACK[0x3E8];
  v8 = (LODWORD(STACK[0x3BC]) - 763604091);
  STACK[0x4F8] = v8;
  return (*(v6 + 8 * ((14 * (v8 == ((a6 - 3113) ^ 0xBD2))) ^ (a6 - 3113))))(v7, a2, a3, a4, a5);
}

uint64_t sub_1969EAF64@<X0>(int a1@<W8>)
{
  v8 = v4 + v2;
  v9 = v4 - 1;
  *(*v6 + (v1 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == v3) * v5) ^ a1)))();
}

uint64_t sub_1969EB0C4()
{
  v3 = ((((v1 + 3196) | 0x258u) + 787) ^ 0xFFFFFFFFFFFFEA94) + v0;
  v5 = v3 > 0xF || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * (((4 * v5) | (32 * v5)) ^ (v1 + 465))))();
}

uint64_t sub_1969EB118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  *v6 = a1;
  return (*(a6 + 8 * (((STACK[0x478] == 0) * (((v7 - 665) | 0x14) + ((v7 - 2261) | 0x650) - 10951)) ^ v7)))();
}

uint64_t sub_1969EB164@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x440] = *(a1 + 8 * v3);
  LODWORD(STACK[0x994]) = 1684334801;
  STACK[0x998] = &STACK[0x390];
  return (*(a1 + 8 * (((((((v3 ^ 0x24) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1 | (4 * ((((((v3 ^ 0x24) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1))) ^ v3 ^ 0x1024)))();
}

uint64_t sub_1969EB1F8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((6690 * (v7 == (v5 - a2) - 2007)) ^ (v5 + v3))))();
}

void sub_1969EB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = LODWORD(STACK[0x2E0]);
  switch(v9)
  {
    case 41591:
      (*(a6 + 8 * ((a8 - 4621) ^ (7377 * (v8 == -1720256289)))))(a1);
      break;
    case 26075:
      STACK[0x7D8] = STACK[0x7A8] + STACK[0x270];
      JUMPOUT(0x1969EB4FCLL);
    case 45445:
      (*(a6 + 8 * ((5180 * (v8 == (a8 ^ 0x1DBD) - 1720259341)) ^ (a8 - 4621))))(a1, a2, a3, a4, a5);
      break;
    default:
      sub_1969CAE84(a1, a2, a3, a4, a5, a6);
      break;
  }
}

uint64_t sub_1969EBEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = vrev64q_s8(**(v11 + 24));
  v15 = vextq_s8(v14, v14, 8uLL);
  v16.i64[0] = 0x4F4F4F4F4F4F4F4FLL;
  v16.i64[1] = 0x4F4F4F4F4F4F4F4FLL;
  v17.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v17.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v18 = vaddq_s8(vorrq_s8(v15, v16), vorrq_s8(v15, v17));
  v16.i64[0] = 0xB1B1B1B1B1B1B1B1;
  v16.i64[1] = 0xB1B1B1B1B1B1B1B1;
  v17.i64[0] = 0x8787878787878787;
  v17.i64[1] = 0x8787878787878787;
  v19 = vrev64q_s8(veorq_s8(vmlaq_s8(v17, v18, v16), xmmword_196EBFAF0));
  *(v12 - 104) = vextq_s8(v19, v19, 8uLL);
  return (*(v13 + 8 * (a2 ^ (21 * (a9 != 0)))))(a1);
}

uint64_t sub_1969EBFA8@<X0>(int a1@<W0>, uint64_t a2@<X3>, int a3@<W5>, int a4@<W8>)
{
  v8 = (v6 + 4 * v5);
  v9 = v5 + 1;
  *v8 = v8[397] ^ (a4 + a3) ^ *(a2 + 4 * (*(v6 + 4 * v9) & 1)) ^ ((*(v6 + 4 * v9) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((v9 == 227) * a1) ^ a4)))();
}

uint64_t sub_1969EC000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5593));
  v7 = STACK[0x2B0] + STACK[0x240] - 0x2D6560F450244D3ELL;
  v8 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v48) & 0xFBFFFFFFFFFFFFFFLL;
  v9 = v8 ^ 0x4DE9423B6F16E7D2;
  v8 ^= 0xE5AFA7ACF6E0968ELL;
  v10 = __ROR8__(v9, 8);
  v11 = __ROR8__((v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v12 = (v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v8, 61);
  v13 = (v11 + v12) ^ 0xF5A2F1B9B5D0B209;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xB8A665E197C7F47ELL) - (v15 + v14) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x1D3A72000429358 - ((v18 + v17) | 0x1D3A72000429358) + ((v18 + v17) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0x25583E6B392D1AC8 - ((v21 + v20) | 0x25583E6B392D1AC8) + ((v21 + v20) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x272BFFDC1C3FC546 - ((v24 + v23) | 0x272BFFDC1C3FC546) + ((v24 + v23) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((((2 * (v27 + v26)) | 0xC355F3281D11914) - (v27 + v26) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v7 & 7u))) ^ *v7;
  v29 = *++v7;
  v30 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = -2 - (((0x6AF7234D0CC131D4 - v30) | 0x1A41569DA1CC8FFALL) + ((v30 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v32 = v31 ^ 0x53A814A6CEDA6828;
  v31 ^= 0xFBEEF131572C1974;
  v33 = __ROR8__(v32, 8);
  v34 = (((2 * (v33 + v31)) & 0xF2BD014CC6D06D4ALL) - (v33 + v31) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xF5A2F1B9B5D0B209;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (0xFF7817662BD390FALL - ((v37 + v38) | 0xFF7817662BD390FALL) + ((v37 + v38) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x61459D2AF01F24F7;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x64C31C027084DE6CLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (0xD96EC6C1FDF6D5E3 - ((v45 + v44) | 0xD96EC6C1FDF6D5E3) + ((v45 + v44) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v44) = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v44, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ v29;
  return v6(a1, (v44 | (v28 << 8)) - 2 * ((v44 & 5 | (v28 << 8) & 0x3505) ^ v44 & 5) + 13568, a3, a4, a5);
}

uint64_t sub_1969EC1D4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int32x4_t a14, int32x4_t a15, int32x4_t a16, int32x4_t a17, int a18)
{
  LODWORD(a10) = a5 + 53 * (a3 ^ 0x5B) - 1449183830;
  HIDWORD(a5) = HIDWORD(a10) ^ 0xEC2;
  v20 = vdupq_n_s32(0x5D5D9ADu);
  v21.i64[0] = 0xECECECECECECECECLL;
  v21.i64[1] = 0xECECECECECECECECLL;
  v22 = vdupq_n_s32(0x5D5D9A9u);
  v23 = *(v18 + 8 * a3);
  v24 = *(v19 + 72);
  v25 = *(v19 + 84);
  v26 = (*(v19 + 96) - ((2 * *(v19 + 96)) & 0xCF) - 17);
  if (v26 == 237)
  {
    v70 = vld4q_s8(v19);
    HIDWORD(a8) = *(v19 + 88);
    v52 = veorq_s8(v70.val[0], v21);
    v53 = vmovl_high_u8(v52);
    v54 = vmovl_u8(*v52.i8);
    v55 = veorq_s8(v70.val[1], v21);
    _Q21 = vmovl_high_u8(v55);
    _Q20 = vmovl_u8(*v55.i8);
    v58 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v59 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v60 = veorq_s8(v70.val[2], v21);
    v61 = vmovl_u8(*v60.i8);
    v62 = vmovl_high_u8(v60);
    v70.val[0] = veorq_s8(v70.val[3], v21);
    v70.val[1] = vmovl_u8(*v70.val[0].i8);
    v70.val[2] = vmovl_u16(*v70.val[1].i8);
    v70.val[1] = vmovl_high_u16(v70.val[1]);
    v70.val[0] = vmovl_high_u8(v70.val[0]);
    v70.val[3] = vmovl_u16(*v70.val[0].i8);
    v70.val[0] = vmovl_high_u16(v70.val[0]);
    v63 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v62, 8uLL)), vshlq_n_s32(vmovl_high_u16(v53), 0x18uLL)), v70.val[0]);
    v64 = vorrq_s8(vorrq_s8(vorrq_s8(v59, vshll_n_u16(*v62.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v53.i8), 0x18uLL)), v70.val[3]);
    v65 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v61, 8uLL)), vshlq_n_s32(vmovl_high_u16(v54), 0x18uLL)), v70.val[1]);
    v66 = vorrq_s8(vorrq_s8(vorrq_s8(v58, vshll_n_u16(*v61.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v54.i8), 0x18uLL)), v70.val[2]);
    v70.val[0] = veorq_s8(vandq_s8(v63, v20), (*v70.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v70.val[3] = veorq_s8(vandq_s8(v64, v20), (*&v70.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v70.val[1] = veorq_s8(vandq_s8(v65, v20), (*&v70.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v70.val[2] = veorq_s8(vandq_s8(v66, v20), (*&v70.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    a14 = vaddq_s32(vsubq_s32(v66, vaddq_s32(v70.val[2], v70.val[2])), v22);
    a15 = vaddq_s32(vsubq_s32(v65, vaddq_s32(v70.val[1], v70.val[1])), v22);
    a16 = vaddq_s32(vsubq_s32(v64, vaddq_s32(v70.val[3], v70.val[3])), v22);
    a17 = vaddq_s32(vsubq_s32(v63, vaddq_s32(v70.val[0], v70.val[0])), v22);
    a18 = __ROR4__(a16.i32[0] ^ a17.i32[1] ^ a14.i32[2] ^ *(&a14 + (((6 * HIDWORD(a5) - 4254) | 0x440u) ^ 0xFFFFFFFFFA54189ELL) + 95150386), 31) ^ 0x5D5D9A9;
    v67 = *(v18 + 8 * ((6 * HIDWORD(a5)) ^ 0x1C));
    LODWORD(v68) = 2731 * (HIDWORD(a10) ^ 0xDDD);
    HIDWORD(v68) = v68 + 676530816;
    HIDWORD(a12) = HIDWORD(a10) ^ 0xC33;
    LODWORD(v69) = HIDWORD(a10) ^ 0xCD9;
    HIDWORD(v69) = HIDWORD(a10) ^ 0xFEF;
    return v67(95150386, 95150387, v25, a1, v24, v67, v24, 2085029739, a4, a5, a2, a7, a8, v68, a10, v23, a12, v69);
  }

  else
  {
    if (v26 != 238)
    {
      JUMPOUT(0x1969EC8CCLL);
    }

    v71 = vld4q_s8(v19);
    v27 = veorq_s8(v71.val[0], v21);
    v28 = vmovl_high_u8(v27);
    v29 = vmovl_high_u16(v28);
    v30 = vmovl_u16(*v28.i8);
    v31 = vmovl_u8(*v27.i8);
    v32 = vmovl_high_u16(v31);
    v33 = vmovl_u16(*v31.i8);
    v34 = veorq_s8(v71.val[1], v21);
    v35 = vmovl_u8(*v34.i8);
    v36 = vmovl_high_u8(v34);
    v37 = veorq_s8(v71.val[2], v21);
    _Q25 = vmovl_u8(*v37.i8);
    _Q24 = vmovl_high_u8(v37);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v71.val[0] = veorq_s8(v71.val[3], v21);
    v71.val[1] = vmovl_u8(*v71.val[0].i8);
    v71.val[2] = vmovl_u16(*v71.val[1].i8);
    v71.val[0] = vmovl_high_u8(v71.val[0]);
    v71.val[3] = vmovl_u16(*v71.val[0].i8);
    v71.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v71.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v36, 8uLL), v29));
    v71.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v71.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v36.i8, 8uLL), v30));
    v71.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v71.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v35, 8uLL), v32));
    v46 = vdupq_n_s32(0x5D5D9B9u);
    v71.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v71.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v35.i8, 8uLL), v33));
    v47 = veorq_s8(vandq_s8(v71.val[0], v46), (*&v29 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v48 = veorq_s8(vandq_s8(v71.val[3], v46), (*&v30 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v49 = veorq_s8(vandq_s8(v71.val[1], v46), (*&v32 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v50 = veorq_s8(vandq_s8(v71.val[2], v46), (*&v33 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    a14 = vaddq_s32(vsubq_s32(v71.val[2], vaddq_s32(v50, v50)), v22);
    a15 = vaddq_s32(vsubq_s32(v71.val[1], vaddq_s32(v49, v49)), v22);
    a16 = vaddq_s32(vsubq_s32(v71.val[3], vaddq_s32(v48, v48)), v22);
    a17 = vaddq_s32(vsubq_s32(v71.val[0], vaddq_s32(v47, v47)), v22);
    return (*(v18 + 8 * (HIDWORD(a10) ^ 0x15)))(v20);
  }
}

uint64_t sub_1969ECFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * (((&a13 ^ 0x984CD4E6) - 1239601661 - 2 * ((&a13 ^ 0x984CD4E6) & 0xB61D2E03)) ^ 0xAAF87209);
  a18 = v21 + v20 - 1795305604;
  a13 = v21 ^ 0x80F33AA;
  a15 = v21 - 1137445230;
  a16 = a9;
  a17 = &a10;
  v22 = (*(v18 + 8 * (v20 + 4447)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * (((a14 == v19 + ((v20 + 1033414343) & 0x1F76) - 3942) * ((v20 + 389993655) & 0x2BB7 ^ 0x1427)) ^ v20)))(v22);
}

uint64_t sub_1969ED0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = (a12 + v13);
  *(v17 - 1) = v16;
  *v17 = v16;
  return (*(v15 + 8 * ((((v14 + 2516) - 4087 == (v12 & 0xFFFFFFFFFFFFFFF0)) * a6) ^ v14)))();
}

void sub_1969ED288(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 6260)))(a2);
  v3 = STACK[0x370];
  v4 = STACK[0x470];
  *(STACK[0x470] + 24) = 0;
  sub_1968EFE64(v4, v5, v6, v7, v8, v3);
}

uint64_t sub_1969ED300(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v13 = *(v11 + 48 * v10 + 36);
  v15 = v13 != v12 && v13 + a3 < a7;
  return (*(v8 + 8 * ((v15 * ((v7 ^ (a5 - 472)) - v9 - 2792)) | v7)))(a1, a2);
}

uint64_t sub_1969ED394@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = a2 + 301;
  v3 = ((a2 - 1960283630) & 0x74D79E5F) - 2245;
  v4 = STACK[0x3C0];
  STACK[0x768] = STACK[0x3C0];
  return (*(a1 + 8 * (((v3 ^ 0xDAA) * (v4 == 0)) ^ v2)))();
}

uint64_t sub_1969ED4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v65 == 8 || v65 == 5)
  {
    LOBYTE(STACK[0x6DF]) = LOBYTE(STACK[0x19DF]) ^ 0xEC;
    LOBYTE(STACK[0x6DE]) = LOBYTE(STACK[0x19DE]) ^ 0xEC;
    LOBYTE(STACK[0x6DD]) = LOBYTE(STACK[0x19DD]) ^ 0xEC;
    LOBYTE(STACK[0x6DC]) = LOBYTE(STACK[0x19DC]) ^ 0xEC;
    LOBYTE(STACK[0x6DB]) = LOBYTE(STACK[0x19DB]) ^ 0xEC;
    LOBYTE(STACK[0x6DA]) = LOBYTE(STACK[0x19DA]) ^ 0xEC;
    LOBYTE(STACK[0x6D9]) = LOBYTE(STACK[0x19D9]) ^ 0xEC;
    LOBYTE(STACK[0x6D8]) = LOBYTE(STACK[0x19D8]) ^ 0xEC;
    LOBYTE(STACK[0x6D7]) = LOBYTE(STACK[0x19D7]) ^ 0xEC;
    LOBYTE(STACK[0x6D6]) = LOBYTE(STACK[0x19D6]) ^ 0xEC;
    LOBYTE(STACK[0x6D5]) = LOBYTE(STACK[0x19D5]) ^ 0xEC;
    LOBYTE(STACK[0x6D4]) = LOBYTE(STACK[0x19D4]) ^ 0xEC;
    LOBYTE(STACK[0x6D3]) = LOBYTE(STACK[0x19D3]) ^ 0xEC;
    LOBYTE(STACK[0x6D2]) = LOBYTE(STACK[0x19D2]) ^ 0xEC;
    LOBYTE(STACK[0x6D1]) = LOBYTE(STACK[0x19D1]) ^ 0xEC;
    LOBYTE(STACK[0x6D0]) = LOBYTE(STACK[0x19D0]) ^ 0xEC;
  }

  v67 = STACK[0x370];
  v68 = STACK[0x370] - 690;
  v69 = (*(v66 + 8 * (STACK[0x370] ^ 0xCEC)))(LODWORD(STACK[0x5FC]), v65, a65 ^ 0xE7C898DF, (STACK[0x370] + 30084833) & 0xFE34DBBF ^ 0x5D5DB35 ^ LODWORD(STACK[0x5CC]), &STACK[0x6D0], STACK[0x3D0], LODWORD(STACK[0x59C]), &STACK[0x19B0]);
  v70 = ((2 * v69) & 0xFFBFEAF2) + (v69 ^ 0xFFDFF579);
  v71 = (*(v66 + 8 * (v67 ^ 0xCFC)))(*STACK[0x278], STACK[0x3D0], LODWORD(STACK[0x59C]));
  return (*(v66 + 8 * ((204 * (v70 == -2099847)) ^ v68)))(v71);
}

uint64_t sub_1969ED9AC@<X0>(int a1@<W8>)
{
  v8 = 489239129 * ((v7 - 144) ^ v2);
  *(v7 - 144) = (v5 + 173) ^ v8;
  *(v7 - 128) = (v1 ^ 0xFFFFAFE6) - v8 + 752810810 + ((v5 - 44330) & a1);
  *(v7 - 136) = v6;
  v9 = (*(v3 + 8 * (v5 + 3504)))(v7 - 144);
  return (*(v3 + 8 * ((510 * (((v5 + 89) ^ (*(v7 - 140) == v4)) & 1)) ^ v5)))(v9);
}

uint64_t sub_1969EDDE0()
{
  v3 = *(v0 + 16) - 170633196 + ((v1 + 1719437381) & 0x99837799);
  v4 = *(v0 + 12) - 1309738827;
  v5 = (v4 < 0x8BCACE4) ^ (v3 < 0x8BCACE4);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x8BCACE4;
  }

  return (*(v2 + 8 * ((1508 * v6) ^ v1)))();
}

void sub_1969EDEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = &a18;
  *(v21 - 104) = a12;
  *(v21 - 136) = v19 + ((((2 * (v21 - 144)) | 0xAA851FE6) - (v21 - 144) - 1430425587) ^ 0x1A9A8CC4) * v18 + 3553;
  *(v21 - 144) = &a14;
  *(v21 - 128) = v20;
  *(v21 - 120) = &a14;
  JUMPOUT(0x1969A6F08);
}

uint64_t sub_1969EDF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3.i64[0] = 0xECECECECECECECECLL;
  v3.i64[1] = 0xECECECECECECECECLL;
  return sub_1969EDF54(a1, a2, a3, v3);
}

uint64_t sub_1969EDF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, int8x16_t a4@<Q0>)
{
  v9 = ~v6 + a3;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = veorq_s8(v10, a4);
  *(v12 - 31) = veorq_s8(v11, a4);
  return (*(v8 + 8 * ((((v5 + 3930) ^ v7) + v6 == v4) ^ (v5 + 2811))))();
}

uint64_t sub_1969EDFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, unsigned int a14, int a15, unsigned int a16, uint64_t a17, char *a18, int a19)
{
  v23 = ((&a14 + 1935533170 - 2 * (&a14 & 0x735DE472)) ^ 0xF7F46C9E) * v21;
  a17 = a10;
  a18 = &a12;
  a19 = v23 - 1795305098 + v22;
  a16 = v23 - 1086285303;
  a14 = v23 ^ 0x80F33AA;
  v24 = (*(v19 + 8 * (v22 + 4953)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  return (*(v19 + 8 * (((a15 == v20) * ((v22 - 758) ^ 0x427)) ^ v22)))(v24);
}

void sub_1969EE0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, char *a21)
{
  v24 = 1621291457 * ((2 * (&a19 & 0x3D8B01F8) - &a19 - 1032520186) ^ 0xF4637F9F);
  a21 = &a10;
  a19 = v24 + (v21 ^ (v23 + 3072) ^ 0x7D9FBDA3) + ((2 * v21) & 0xFB3F5BEE) - 201335043;
  a20 = v24 + v23 + 2090;
  (*(v22 + 8 * (v23 + 5772)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  (*(v22 + 8 * ((v23 + 3072) ^ 0xA39)))(a13);
  JUMPOUT(0x19692D1A8);
}

uint64_t sub_1969EE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, unsigned int a21, uint64_t a22)
{
  *v23 = v28;
  v29 = *v24;
  *(v29 + 3) = 16908633;
  *(v29 + 2) = 76;
  *v29 = 20550;
  *(v29 + 7) = 0;
  *(v29 + 8) = bswap32(v25 + 44);
  *(v29 + 12) = *v22;
  *(v29 + 13) = 0;
  *(v29 + 14) = a12;
  *(v29 + 15) = 0;
  a21 = ((v26 ^ 0x1B34) - 3524) ^ (753662761 * ((~&a20 & 0x9DEA6F39 | &a20 & 0x621590C6) ^ 0xF8F09472));
  a20 = -1239 * ((~&a20 & 0x6F39 | &a20 & 0x90C6) ^ 0x9472) + 1572;
  a22 = v29 + 16;
  v30 = (*(v27 + 8 * ((v26 ^ 0x1B34) + 2935)))(&a20, a2, a3, a4, a5, a6, a7, a8);
  *(v29 + 32) = bswap32(a15);
  return (*(v27 + 8 * ((7 * ((((v26 ^ 0x1B34) - 1436931183) & 0x55A5DDFE ^ 0xB36EB94) + v25 - ((v25 << ((v26 ^ 0x34) + 103)) & 0x166DE57C) == 188150462)) ^ v26 ^ 0x1B34)))(v30);
}

uint64_t sub_1969EE3A8@<X0>(int a1@<W5>, int a2@<W6>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  if (a60 == -1773392752 || a60 == 798020379 || a60 == -1654668468)
  {
    JUMPOUT(0x1969EE48CLL);
  }

  return (*(v60 + 8 * ((a1 - 486) ^ (((a3 >> 3) & 1) * a2))))();
}

uint64_t sub_1969EE568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = (v16 - 24) | 2;
  v20 = v17 + v15;
  *(v20 - 1) = (&a15 ^ 0xBA) * (&a15 + 17);
  *(v20 + ((v19 - 3978) ^ 0xFFFFFFFFFFFFFB3ELL)) = (&a15 ^ 0xBB) * (&a15 + 18);
  return (*(v18 + 8 * ((42 * ((v15 & 0xFFFFFFFE) != 2)) ^ v19)))();
}

uint64_t sub_1969EE5E0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v6 = 877 * (a2 ^ 0x29B);
  (*(v4 + 8 * (a2 ^ 0x199B)))(*v8, a1, v10);
  *(v5 - 208) = (v6 - 2059849679) ^ (((((v5 - 208) | 0x1FF2988B) - (v5 - 208) + ((v5 - 208) & 0xE00D6770)) ^ 0x7AE863C0) * v3);
  (*(v4 + 8 * (v6 + 769)))(v5 - 208);
  result = v7;
  *(v7 + 16) = v9;
  return result;
}

void sub_1969EE6B8(_DWORD **a1@<X0>, uint64_t a2@<X8>)
{
  **a1 = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x19691E118);
}

uint64_t sub_1969EE810()
{
  v5 = v1 - 1;
  *(v4 + v5) = (((v2 ^ 0xB) + 90) ^ v0) * (v0 + 17);
  return (*(v3 + 8 * ((239 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1969EED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 12);
  *(v8 - 140) = (v5 - 1999284710) ^ (((-2 - ((~(v8 - 144) | 0xFC912903) + ((v8 - 144) | 0x36ED6FC))) ^ 0x998BD248) * v4);
  *(v8 - 144) = ((v5 - 95) ^ 0x63) + ((-2 - ((~(v8 + 112) | 3) + ((v8 + 112) | 0xFC))) ^ 0x48) * v4 + (((v7 ^ 0xB) - 107) ^ ((v7 ^ 0x59) - 57) ^ ((((v5 ^ 0x1B) - 49) ^ v7) - 83));
  *(v8 - 136) = ((-2 - ((~(v8 + 112) | 3) + ((v8 + 112) | 0xFC))) ^ 0x48) * v4 + v9 + 44;
  v10 = (*(v6 + 8 * (v5 ^ 0xE70)))(v8 - 144);
  return (*(v6 + 8 * ((3508 * (*(v8 - 132) == 1906281716)) ^ v5)))(v10, a2, a3, 654144011);
}

uint64_t sub_1969EEEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v25 = (a3 + 4 * (v21 + v23));
  *v25 = a20 ^ __ROR4__(*(v25 - 8) ^ *(v25 - 3) ^ *(v25 - 14) ^ *(v25 - 16), 31);
  return (*(v22 + 8 * ((7011 * (v21 + 1 == v24 + 80)) ^ v20)))((v20 + 1377), a2);
}

uint64_t sub_1969EEF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~v5 + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = v7 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((2 * ((v4 ^ a1) + v5 == v3)) | (4 * ((v4 ^ a1) + v5 == v3))) ^ (v6 - 2738))))();
}

uint64_t sub_1969EF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = 282 * (v40 ^ 0x711);
  v43 = *v39;
  v44 = *(v39 + 1);
  v45 = *(v39 + 9);
  v46 = *(v39 + 13);
  v47 = v39[15];
  *(v41 - 144) = v43;
  *(v41 - 143) = v44;
  *(v41 - 135) = v45;
  *(v41 - 131) = v46;
  *(v41 - 129) = v47;
  if (a39)
  {
    v48 = *(a1 + 40) == 0;
  }

  else
  {
    v48 = 1;
  }

  v50 = !v48 && *(a1 + 24) != 0;
  return (*(a3 + 8 * ((69 * v50) ^ v42)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_1969EF3AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, int a21, int a22, char a23, __int16 a24, unsigned __int8 a25, int a26, unsigned __int8 a27)
{
  *(v27 - 124) = a26 ^ 0x838FF9D1;
  *(v27 - 128) = a21 ^ 0x42B79926;
  *(v27 - 132) = (((a19 ^ 0x20) << 24) | (((11 * ((a3 + 11) ^ 0x1F) - 97) ^ a20) << 8) | a25 ^ 0x9E | ((a27 ^ 0xF9) << 16)) ^ 0x500FC56;
  *(v27 - 120) = (a23 & 0x9F | (~a23 | 0xFFFFFF00) & (a22 ^ 0xEE0710)) ^ 0x740E8E9B;
  JUMPOUT(0x1969675A4);
}

uint64_t sub_1969EF4B8(__n128 a1)
{
  v3[-1] = a1;
  *v3 = a1;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))();
}

uint64_t sub_1969EF4E0@<X0>(int a1@<W8>, uint64_t a2, int a3)
{
  v5 = v4 + 48798697 < a3 - 2076917860;
  if ((a3 - 2076917860) < 0x2E89BE9 != v4 > 0xFD176416)
  {
    v5 = (a3 - 2076917860) < 0x2E89BE9;
  }

  return (*(v3 + 8 * ((197 * !v5) ^ a1)))();
}

uint64_t sub_1969EF550(uint64_t a1)
{
  v4 = *(a1 + 48);
  **(a1 + 24) = 0;
  *v4 = 0;
  return (*(v1 + 8 * ((61 * (*(v2 + 5) == (v3 + 102))) ^ v3)))();
}

void sub_1969EF58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v21 = *(a4 + 96) - ((2 * *(a4 + 96)) & 0x5B403A78) - 1382015684;
  v22 = 1068996913 * ((~((v20 - 136) | 0xEAE7F43E) + ((v20 - 136) & 0xEAE7F43E)) ^ 0xC0F6EA50);
  *(v20 - 120) = a4;
  *(v20 - 136) = v21 ^ v22;
  *(v20 - 128) = v22 + a19;
  (*(v19 + 8 * a18))(v20 - 136, a2, a3);
  JUMPOUT(0x1969EF63CLL);
}

uint64_t sub_1969EF6E0(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v19 = *(STACK[0x580] + (v11 + (v10 & 0xF) * a6) % (((v8 - 1786) | 0x296) ^ 0x1151u)) ^ (16 * *(STACK[0x580] + v11 + (v10 >> 4) * a6 - ((((v11 + (v10 >> 4) * a6) * v15) >> 32) >> 9) * v12));
  v20 = a7 + (((*(v7 + ((v19 ^ 9) * v18 + 13178 - ((((v19 ^ 9u) * v18 + 13178) * v17) >> 32) * v13)) - (((v19 ^ 0x59) + 97) ^ v19 ^ 0x59)) >> 4) ^ 0xE) * a6;
  *(STACK[0x580] + v9 * a6 - 261492520 - ((((v9 * a6 - 261492520) * v15) >> 32) >> 9) * v12) = 16 * *(STACK[0x580] + (v20 - ((v20 * a3) >> 32) * v12));
  return (*(v16 + 8 * (((v9 + 1 != a2 + 256) * v14) ^ v8)))();
}

uint64_t sub_1969EF88C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = (v10 + 2793) | v9;
  v17 = (*(v14 + 4 * v15) ^ v5) + v7 + a3 * (((v16 + v11) | v12) ^ (v5 + 194) ^ *(*(v8 + 8) + a2));
  *(v14 + 4 * v15) = v17 + v5 - (((v16 ^ v13) + v6) & (2 * v17));
  return (*(v4 + 8 * (v16 ^ (31 * (a4 != 0)))))(a1);
}

uint64_t sub_1969EF8E4(uint64_t a1)
{
  LODWORD(STACK[0x534]) = v1;
  STACK[0x590] -= 432;
  return (STACK[0x468])(a1, 1906281716, 48);
}

uint64_t sub_1969EF99C(uint64_t a1, uint64_t a2, int a3)
{
  v12 = v7 > 0xF;
  v10 = (v6 - 1) & 0xFLL;
  v11 = -v9 - v6 + 1;
  v12 = v12 && (v11 + v4 + v10) > 0xF;
  v13 = v12 && (v11 + v3 + v10) > 0xF;
  v14 = v11 + v5 + v10;
  v16 = v13 && v14 >= ((a3 - 257642898) & 0xF5B4EDB) - 4977 + (599 * ((a3 - 2516) ^ 0x7B7u));
  return (*(v8 + 8 * ((111 * v16) ^ (a3 - 2516))))(599 * ((a3 - 2516) ^ 0x7B7u));
}

void sub_1969EFC04(uint64_t a1)
{
  *a1 = 256;
  memset((a1 + 8), 236, 36);
  *(a1 + 56) = 3974950124;
  memset((a1 + 64), 236, 36);
  *(a1 + 112) = 3974950124;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 131) = 0;
  JUMPOUT(0x1969EFC54);
}

uint64_t sub_1969EFF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v39 = v32;
  v40 = (v36 ^ 0xEE7DB6AD) & (2 * ((17 * (v35 ^ 0xEA) + v33) & v36)) ^ (17 * (v35 ^ 0xEA) + v33) & v36;
  v41 = ((2 * (v36 ^ 0xFECDDAED)) ^ 0xE169DB8A) & (v36 ^ 0xFECDDAED) ^ (2 * (v36 ^ 0xFECDDAED)) & 0x70B4EDC4;
  v42 = v41 ^ 0x10942445;
  v43 = (v41 ^ 0x6030C985) & (4 * v40) ^ v40;
  v44 = ((4 * v42) ^ 0xC2D3B714) & v42 ^ (4 * v42) & 0x70B4EDC4;
  v45 = (v44 ^ 0x4090A501) & (16 * v43) ^ v43;
  v46 = ((16 * (v44 ^ 0x302448C1)) ^ 0xB4EDC50) & (v44 ^ 0x302448C1) ^ (16 * (v44 ^ 0x302448C1)) & 0x70B4EDC0;
  v47 = v45 ^ 0x70B4EDC5 ^ (v46 ^ 0x4CC85) & (v45 << 8);
  v48 = (v47 << 16) & 0x70B40000 ^ v47 ^ ((v47 << 16) ^ 0x6DC50000) & (((v46 ^ 0x70B02185) << 8) & 0x70B40000 ^ 0x40100000 ^ (((v46 ^ 0x70B02185) << 8) ^ 0x34ED0000) & (v46 ^ 0x70B02185));
  v49 = ((-2117216273 - ((v37 - 120) | 0x81CDD7EF) + ((v37 - 120) | 0x7E322810)) ^ 0xABDCC981) * a8;
  *(v37 - 104) = &a23;
  *(v37 - 120) = v49 ^ v36 ^ (2 * v48) ^ 0x3B8F19E;
  *(v37 - 112) = v49 + v38 + v35;
  v50 = (*(v34 + 8 * (v35 ^ 0x1A7A)))(v37 - 120, a2, a3, a4, a5, a6, a7);
  return (*(v34 + 8 * ((2918 * ((a32 & 0x3Fu) + v39 > ((17 * (v35 ^ 0xEA) + 1148) | 0x174u) - 2358)) ^ (17 * (v35 ^ 0xEA)))))(v50);
}

uint64_t sub_1969F0174()
{
  v1 = STACK[0x28C];
  v2 = LODWORD(STACK[0x28C]) + 4966;
  v3 = STACK[0x480];
  STACK[0x550] = STACK[0x480];
  STACK[0x418] = 0;
  LODWORD(STACK[0x44C]) = 763604091;
  STACK[0x4A8] = 0;
  LODWORD(STACK[0x604]) = 763604091;
  STACK[0x560] = 0;
  return (*(v0 + 8 * ((((v3 == 0) ^ v2) & 1 | (2 * (((v3 == 0) ^ v2) & 1))) ^ v1)))();
}

uint64_t sub_1969F051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v9 ^ ((a7 - 4304) | 0xB) ^ 0xFA2A22ED;
  if ((v8 - 1578499267) < 0xB4D2547C != v10 > 0x4B2DAB83)
  {
    v11 = (v8 - 1578499267) < 0xB4D2547C;
  }

  else
  {
    v11 = v8 - 1578499267 > v10 - 1261284228;
  }

  return (*(v7 + 8 * ((v11 * ((a7 - 4304) ^ 0x421)) ^ (a7 - 27))))(a1);
}

uint64_t sub_1969F05A0@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = STACK[0x590];
  v5 = &STACK[0x6E0] + STACK[0x590];
  STACK[0x3A8] = (v5 + 2048);
  STACK[0x3F0] = (v5 + 2176);
  STACK[0x5A0] = (v5 + 2304);
  STACK[0x590] = v4 + 2432;
  LODWORD(STACK[0x380]) = a1;
  return (*(v3 + 8 * ((5658 * (*v2 == ((145 * (a2 ^ 0x692)) ^ 0x1581) - 6085)) ^ a2)))();
}

uint64_t sub_1969F0620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  (*(v24 + 8 * SHIDWORD(a13)))(a14 + 16, 0x100004077774924, a3, a4, a5, a6, a7, a8);
  v25 = (*(v24 + 8 * a13))();
  *v23 = v25;
  return sub_1969F0698(v25, 1);
}

uint64_t sub_1969F0908@<X0>(char a1@<W0>, unsigned int a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W7>, _BYTE *a6@<X8>, uint64_t x6_0@<X6>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, __int16 a32, char a33)
{
  *a6 += (((a31 ^ 0x94) - 45) ^ ((a31 ^ 0xA8) - 17) ^ ((a31 ^ 0xCB) + v34 - 18 + 83)) + 78;
  if (v36 == 426488387)
  {
    v41 = a6;
  }

  else
  {
    v41 = a6 + 1;
  }

  *v41 = v40 + *v41 - 45;
  v42 = v36 ^ 0x196BB242;
  a6[2 % v42] = (((v38 ^ 0x86) + 118) ^ ((v38 ^ 0xE6) + 22) ^ ((v38 ^ 0x8E) + 126)) + a6[2 % v42] - 30;
  a6[3 % v42] += 92;
  a6[4 % v42] += ((((a33 - ((2 * a33) & 0xFB) + 125) ^ 0x25) - 37) ^ (((a33 - ((2 * a33) & 0xFB) + 125) ^ 0x1E) - 30) ^ (((a33 - ((2 * a33) & 0xFB) + 125) ^ 0x46) - 70)) + 125;
  a6[a2 % v42] += a5 + 53;
  a6[6 % v42] = (((v37 ^ 0x90) + 114) ^ ((v37 ^ 0xD6) + 56) ^ ((v37 ^ 0xA7) + 71)) + a6[6 % v42] - 1;
  a6[7 % v42] += a1;
  a6[8 % v42] = ((((v39 - ((2 * v39) & 0xD6) - 21) ^ 0xD6) + 42) ^ (((v39 - ((2 * v39) & 0xD6) - 21) ^ 0x29) - 41) ^ (((v39 - ((2 * v39) & 0xD6) - 21) ^ a3) - 20)) + a6[8 % v42] - 21;
  a6[9 % v42] += a4;
  a6[0xA % v42] = a6[0xA % (v36 ^ 0x196BB242u)] + v35;
  return sub_1969F0B4C(x6_0, a6);
}

uint64_t sub_1969F0E4C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v2 - 16);
  v6 = (a1 + v4 + 24);
  *v6 = *(a1 + v2 - 32);
  v6[1] = v5;
  return (*(v3 + 8 * ((381 * ((v1 & 0x1E74FB37u) - 237300484 - (a1 & 0xFFFFFFE0) == 2065)) ^ ((v1 & 0x1E74FB37) - 237301041))))(2065 - ((v1 & 0x1E74FB37u) - 237300484));
}

uint64_t sub_1969F0ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = (v4 + 4 * (a4 + v7));
  *v9 = (v6 + ((a3 - 495) | 5) - 1671) ^ __ROR4__(*(v9 - 8) ^ *(v9 - 3) ^ *(v9 - 14) ^ *(v9 - 16), 31);
  return (*(v5 + 8 * ((6395 * (a4 + 1 == v8 + 80)) ^ a3)))();
}

uint64_t sub_1969F0F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int *a23)
{
  v26 = v24 ^ (v23 + 2943);
  a16 = 0;
  LODWORD(a21) = v26 + 1310 - 1575331711 * (&a21 ^ 0x6C5B9502);
  a22 = a14;
  a23 = &a16;
  (*(v25 + 8 * (v26 ^ 0x190D)))(&a21, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(a21) = v26 + 1310 - 1575331711 * ((&a21 & 0xED89184E | ~(&a21 | 0xED89184E)) ^ 0x7E2D72B3);
  a22 = a14;
  a23 = &a19;
  (*(v25 + 8 * (v26 ^ 0x190D)))(&a21);
  a21 = a14;
  HIDWORD(a22) = v26 - 489239129 * ((((2 * (&a21 ^ 0xABC3963A)) | 0x8869B436) - (&a21 ^ 0xABC3963A) + 1003169253) ^ 0xD6DF6F17) - 26;
  v27 = (*(v25 + 8 * (v26 ^ 0x1913)))(&a21);
  return (*(v25 + 8 * (((a22 != ((v26 - 635) ^ 0x719F8DDC)) * (((v26 - 635) | 0x294) - 925)) ^ v26)))(v27);
}

uint64_t sub_1969F1A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10)
{
  a9 = 192807272 - 1068996913 * (((&a9 ^ 0xD0B1D548) + 1089221245 - 2 * ((&a9 ^ 0xD0B1D548) & 0x40EC327D)) ^ 0x45B306A4);
  v11 = (*(v10 + 54800))(&a9, a2, a3, a4, a5, a6, a7, a8);
  return (*(v10 + 8 * ((546 * (a10 == 1906281716)) | 0x1405u)))(v11);
}

void sub_1969F1AD0(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 2777)))(a2);
  *(STACK[0x690] + 24) = 0;
  JUMPOUT(0x1968EA3D8);
}

uint64_t sub_1969F1AF8@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a2 ^ 0x1FB7;
  v18 = ((v14 + 188150462) ^ 0xB36F2BEu) < 8 || a14 - a1 < (((v16 - 499096704) & 0x1DBF877Fu) + 5528) - 6319;
  return (*(v15 + 8 * ((98 * v18) ^ v16)))();
}

uint64_t sub_1969F1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v14 = (((a11 - 41322033) ^ 0x181E42FA) - 488971879) ^ (a11 - 41322033) ^ (((a11 - 41322033) ^ 0xA5AC7FFF) + 1600707742) ^ (((a11 - 41322033) ^ 0xEF7FFB7F) + 364599326) ^ ((((v11 ^ 0x53) + 1475774148) ^ (a11 - 41322033)) + (*(v13 - 200) ^ 0xAD323F50));
  v15 = ((v11 ^ 0x53) - 4943) | 0x602;
  *(v13 - 200) = v15;
  v17 = v14 != 87776413 && ((v15 ^ 0x6D9) & v14) == 13;
  v18 = *(v12 + 8 * ((v17 * ((v11 ^ 0x53) - 5087)) ^ v11 ^ 0x53));
  *(v13 - 204) = -42899;
  return v18(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1969F2064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v35 - 168) = 998242381 * (((~(v35 - 168) & 0x97B9DFCC) - (~(v35 - 168) | 0x97B9DFCD)) ^ 0x3DD6471B) + 1135415174 + v32 + 1465;
  *(v35 - 160) = a32;
  (*(v33 + 8 * (v32 ^ 0x15BF)))(v35 - 168, a2, a3, a4, a5, a6, a7, a8);
  v36 = v32 + 1188;
  v37 = 1283153057 * ((((v35 - 168) | 0x37110FF3) - (v35 - 168) + ((v35 - 168) & 0xC8EEF008)) ^ 0x78C90CC4);
  v38 = *(v34 + 8 * (v32 - 3726)) - 8;
  *(v35 - 168) = a32;
  *(v35 - 160) = v38;
  *(v35 - 152) = v32 + 1188 + v37;
  *(v35 - 148) = v37 + 814017574;
  v39 = v32 ^ 0x159C;
  (*(v33 + 8 * v39))(v35 - 168);
  v40 = 1283153057 * ((v35 - 168) ^ 0x4FD80337);
  *(v35 - 152) = v36 + v40;
  *(v35 - 148) = v40 + 814017559;
  *(v35 - 168) = a32;
  *(v35 - 160) = a22;
  (*(v33 + 8 * v39))(v35 - 168);
  JUMPOUT(0x1969F21C4);
}

uint64_t sub_1969F2378@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 8);
  STACK[0x390] = 0;
  LODWORD(STACK[0x634]) = -1720256293;
  STACK[0x678] = 0;
  return (*(a1 + 8 * (((((v3 == 0) ^ v2 ^ 0xC5) & 1) * ((v2 ^ 0xC86) - 238)) ^ v2)))();
}

uint64_t sub_1969F26A8()
{
  if (v1)
  {
    v4 = *((v2 ^ 0x1A81ECC59515547FLL) - 0x1A81ECC595155467) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((1008 * ((v6 ^ 0xD3) & 1)) ^ 0xDEDu)))();
}

uint64_t sub_1969F275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x730] = v6 + 8;
  v8 = STACK[0x790];
  LODWORD(STACK[0x630]) = STACK[0x43C];
  STACK[0x6C8] = v8;
  STACK[0x5E8] = 0;
  LODWORD(STACK[0x3EC]) = -1720256293;
  STACK[0x820] = 0x3378E7DAD334F2CBLL;
  STACK[0x7D8] = 0;
  v9 = (*(a6 + 8 * (v7 + 5797)))(16, 0x20040A4A59CD2, a3, a4, a5);
  v10 = STACK[0x370];
  STACK[0x648] = v9;
  return (*(v10 + 8 * ((29 * (((v7 - 1) ^ (v9 == 0)) & 1)) ^ v7)))();
}

uint64_t sub_1969F27FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 & 0x76BA1EEF;
  v6 = (v4 + 534) ^ (654144011 * (&v6 ^ 0x2CD47D9C));
  v7 = a1;
  v8 = v2;
  return (*(v1 + 8 * (v4 + 3118)))(&v6);
}

uint64_t sub_1969F284C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1969F28E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LOWORD(STACK[0x86E]);
  if (v11 == 26075)
  {
    v13 = STACK[0x7C0];
    STACK[0x430] = v8;
    LODWORD(STACK[0x4B8]) = v10;
    return (*(a6 + 8 * (((v13 + v9 == 0) * (((a8 - 3421) | 0x410) - 3332)) ^ (a8 - 1469))))(a1, a2, a3, a4, a5);
  }

  else
  {
    if (v11 == 45445 || (v12 = a8, v11 == 41591))
    {
      STACK[0x430] = v8;
      v12 = a8;
    }

    v15 = 113 * (v12 ^ 0x164A);
    *STACK[0x770] = 0;
    LODWORD(STACK[0x4B8]) = -1720256293;
    v16 = STACK[0x758];
    v17 = *STACK[0x498];
    STACK[0x380] = STACK[0x758];
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18;
    return (*(a6 + 8 * ((v19 * ((((v15 - 2263) | 8) + 332) ^ 0x2BA)) ^ v15)))(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1969F2A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  *v34 = ((-((~(v30 - 1585) + v31) ^ (v32 - (v30 - 1585))) | (~(v30 - 1585) + v31)) >> 63) + v34[623];
  *(v35 - 136) = 1881689346 - v33 + v30;
  *(v35 - 168) = v33 + 1;
  *(v35 - 164) = v30 + v33 + 1221535178;
  v36 = (v35 - 176);
  v36[3] = v33 + 3;
  *v36 = (v28 + 1) - v33;
  *(v35 - 144) = v30 + v33 + 1221535512;
  *(v35 - 140) = a28;
  v37 = (*(v29 + 8 * a27))(v35 - 176, a2, a3, a4, a5, a6, a7, a8);
  return (*(v29 + 8 * *(v35 - 160)))(v37);
}

uint64_t sub_1969F2AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v13 = *(v11 + 48 * v7 + 36);
  v15 = v13 != v12 && ((v8 + 4412) ^ 0x11CC ^ (a3 - 520)) + v13 < a7;
  return (*(v10 + 8 * ((v15 * ((v8 + 4412 - v9 - 282) ^ (a5 + 40))) ^ (v8 + 4412))))(a1, a2);
}

uint64_t sub_1969F2B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = v22 - 2181;
  *(v25 - 144) = v22 + 998242381 * ((2 * ((v25 - 144) & 0x4174D3A0) - (v25 - 144) - 1098175400) ^ 0x14E4B48E) + 1135414016;
  *(v25 - 136) = &STACK[0xBE8];
  v27 = v22;
  (*(v23 + 8 * (v22 ^ 0x3FE)))(v25 - 144, a2, a3, a4, a5, a6, a7, a8);
  v28 = 1283153057 * ((((v25 - 144) | 0x3B8831C6) - (v25 - 144) + ((v25 - 144) & 0xC477CE38)) ^ 0x745032F1);
  v29 = *(v24 + 8 * (v27 - 5922)) - 12;
  *(v25 - 144) = &STACK[0xBE8];
  *(v25 - 136) = v29;
  *(v25 - 128) = v27 - 1435 + v28;
  *(v25 - 124) = v28 + 814017574;
  (*(v23 + 8 * (v27 + 325)))(v25 - 144);
  v30 = 1283153057 * ((v25 - 1426384107 - 2 * ((v25 - 144) & 0xAAFB1BA5)) ^ 0xE5231892);
  *(v25 - 144) = &STACK[0xBE8];
  *(v25 - 136) = a22;
  *(v25 - 128) = v27 - 1435 + v30;
  *(v25 - 124) = v30 + 814017559;
  v31 = (*(v23 + 8 * (v27 ^ 0x3DD)))(v25 - 144);
  LODWORD(STACK[0xC40]) = STACK[0xBE8];
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  STACK[0xC4C] = STACK[0xBF4];
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v32 = *&STACK[0xC10];
  *&STACK[0xC58] = *&STACK[0xC00];
  *&STACK[0xC68] = v32;
  return (*(v23 + 8 * ((74 * ((((v26 - 70) ^ 0xCD) + 1) & 1)) ^ (v26 - 70))))(v31);
}

void sub_1969F2D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = ((v10 & (v8 + 901)) << ((v9 - 31) ^ 0x84)) & (v10 ^ 0x6F75A6A5) ^ v10 & (v8 + 901);
  v14 = ((2 * (v10 ^ 0x7B47ACB5)) ^ 0xEA7D373A) & (v10 ^ 0x7B47ACB5) ^ (2 * (v10 ^ 0x7B47ACB5)) & 0xF53E9B9C;
  v15 = v14 ^ 0x15028885;
  v16 = (v14 ^ 0x642E1105) & (4 * v13) ^ v13;
  v17 = ((4 * v15) ^ 0xD4FA6E74) & v15 ^ (4 * v15) & 0xF53E9B9C;
  v18 = (v17 ^ 0xD43A0A09) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x21049189)) ^ 0x53E9B9D0) & (v17 ^ 0x21049189) ^ (16 * (v17 ^ 0x21049189)) & 0xF53E9B90;
  v20 = v18 ^ 0xF53E9B9D ^ (v19 ^ 0x5128990D) & (v18 << 8);
  v21 = (v20 << 16) & 0x753E0000 ^ v20 ^ ((v20 << 16) ^ 0x1B9D0000) & (((v19 ^ 0xA416020D) << 8) & 0x753E0000 ^ 0x41240000 ^ (((v19 ^ 0xA416020D) << 8) ^ 0x3E9B0000) & (v19 ^ 0xA416020D));
  v22 = (((~(v11 - 120) & 0xF1739760) - (~(v11 - 120) | 0xF1739761)) ^ 0x249D76F0) * a8;
  *(v11 - 120) = v22 ^ v10 ^ (2 * v21) ^ 0xEB9C1D2E;
  *(v11 - 112) = v12 + v9 + v22 + 59;
  *(v11 - 104) = a6;
  JUMPOUT(0x1969F2EECLL);
}

uint64_t sub_1969F2F58(int a1)
{
  v9 = *(v3 + 4 * (v7 + v4 + v1 - 2280 - 3560));
  HIDWORD(v10) = *(v3 + 4 * (v7 + v4 - 8)) ^ *(v3 + 4 * (v7 + v4 - 3)) ^ v9 ^ *(v3 + 4 * (v7 + v4 - 16)) ^ v5;
  LODWORD(v10) = *(v3 + 4 * (v7 + v4 - 8)) ^ *(v3 + 4 * (v7 + v4 - 3)) ^ v9 ^ *(v3 + 4 * (v7 + v4 - 16));
  *(v3 + 4 * (v2 + v7)) = (v10 >> 31) ^ v6;
  return (*(v8 + 8 * ((((v2 + 1 + v7) < 0x50) * a1) ^ v1)))();
}

uint64_t sub_1969F2FFC()
{
  v4 = (*(v1 + 8 * (v3 + 5144)))(*v2, *(v0 + 8 * (v3 ^ 0x734)));
  **(v0 + 8 * (v3 ^ 0x7EC)) = v4;
  return (*(v1 + 8 * (((v4 == 0) * ((((v3 - 1293) | 0x1804) ^ 0xFFFFE176) + (v3 ^ 0x1E6))) ^ v3)))();
}

void sub_1969F3074(uint64_t a1)
{
  (*(v1 + 56120))();
  (*(v1 + 53768))(a1);
  JUMPOUT(0x196971324);
}

uint64_t sub_1969F3258()
{
  LODWORD(STACK[0x330]) = v2;
  STACK[0x338] = v1;
  LODWORD(STACK[0x340]) = v0;
  STACK[0x5F0] = 0;
  v6 = 489239129 * ((2 * ((v5 - 208) & 0x60F8E1A0) - (v5 - 208) + 520560223) ^ 0xA62F3D69);
  *(v5 - 176) = v6 + 483267739;
  *(v5 - 192) = (v4 - 2306) ^ v6;
  *(v5 - 200) = &STACK[0x5F0];
  *(v5 - 208) = &STACK[0x4C0];
  *(v5 - 184) = 0;
  v7 = (*(v3 + 8 * (v4 ^ 0xD6F)))(v5 - 208);
  return (*(v3 + 8 * (((*(v5 - 172) == 1906281716) * (((v4 - 5365) | 0x152B) ^ 0x17DC)) ^ v4)))(v7);
}

void sub_1969F3334(char *a1@<X8>)
{
  v2 = &STACK[0x19E0] + v1;
  *v2 = *a1;
  *(v2 + 1) = *(a1 + 1);
  *(v2 + 9) = *(a1 + 9);
  *(v2 + 13) = *(a1 + 13);
  v2[15] = a1[15];
  v4 = *a1;
  v3 = *(a1 + 1);
  *(v2 + 2) = v4;
  *(v2 + 3) = v3;
  JUMPOUT(0x1969D9F70);
}

uint64_t sub_1969F3378()
{
  v5 = *(v0 + 4 * (v3 - 1));
  v6 = 1566083941 * (((v5 ^ (v5 >> 30) ^ 0xC57B9F16) + 773898384) ^ ((v5 ^ (v5 >> 30) ^ 0x8F7BF2C2) + 1679863132) ^ ((v5 ^ (v5 >> 30) ^ 0x4A006DD4) - 1587858866)) + 596827422;
  *(v0 + 4 * v3) = (*(v0 + 4 * v3) ^ v6 ^ ((v6 ^ 0xD003BFA8) + 1166308024) ^ ((v6 ^ 0xDCD29FFB) + 1230328549) ^ ((v6 ^ 0x99D2ED1C) + 206905348) ^ ((v6 ^ 0xFF7BFFAF) + 1794912945) ^ 0x6A7832E0) - v3;
  v7 = STACK[0x350];
  *(v4 - 192) = v3 + 1 - STACK[0x350];
  *(v4 - 172) = (v1 - 84372101) ^ v7;
  *(v4 - 208) = ((v1 + 503364715) | 9) + v7;
  *(v4 - 204) = (v1 + 503364715) ^ v7;
  *(v4 - 176) = v1 + 503364715 - v7 + 319;
  *(v4 - 184) = v7;
  *(v4 - 200) = STACK[0x348];
  v8 = (*(v2 + 8 * (v1 + 721)))(v4 - 208);
  return (*(v2 + 8 * *(v4 - 180)))(v8);
}

uint64_t sub_1969F34F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = 998242381 * ((((v20 - 136) | 0xCE961FF4) - (v20 - 136) + ((v20 - 136) & 0x3169E008)) ^ 0x64F98722);
  *(v20 - 128) = &a17;
  *(v20 - 136) = (((v19 - 3781) ^ v17 ^ 0x75BFF88F) + ((2 * v17) & 0xEB7FF57E) - 269568005) ^ v21;
  *(v20 - 132) = (v19 + 447) ^ v21;
  v22 = (*(v18 + 8 * (v19 + 2418)))(v20 - 136, a2, a3, a4, a5, a6, a7, a8);
  return sub_1969F3590(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1969F3590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v20 - 120) = v18 + ((2 * ((v20 - 136) & 0x301DFC48) - (v20 - 136) - 807271500) ^ 0xAAF8F8FF) * v19 + 1703;
  *(v20 - 136) = a16;
  *(v20 - 128) = v16;
  v21 = (*(v17 + 8 * (v18 + 6241)))(v20 - 136, a2, a3, a4, a5, a6, a7, a8);
  return (*(v17 + 8 * ((123 * (*(v20 - 116) <= ((v18 + 3170) ^ 0x5818A539u))) ^ v18)))(v21);
}

uint64_t sub_1969F370C@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v5 + a1 + 40);
  v9 = v1 + a1;
  *(v9 + 24) = *(v5 + a1 + 24);
  *(v9 + 40) = v8;
  return (*(v7 + 8 * (((a1 + ((v4 + v2) & v6) == 3919) * v3) ^ v4)))();
}

uint64_t sub_1969F38DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a3 + v6) ^ 0xEC;
  return (*(v5 + 8 * ((3220 * (v6 == 0)) ^ (v4 + 5334))))();
}

uint64_t sub_1969F39E4()
{
  STACK[0x3D0] = STACK[0x4D8];
  LODWORD(STACK[0x59C]) = STACK[0x38C];
  return (*(v1 + 8 * ((84 * (((((v0 - 116) & 0x4F) - 102) ^ ((LODWORD(STACK[0x42C]) - 1) < 2)) & 1)) ^ (v0 - 628981364) & 0x257D7F4F)))();
}

uint64_t sub_1969F3A48(uint64_t a1, __n128 a2)
{
  v8 = STACK[0x370];
  v2 = *(v5 + 8 * (v4 - 5704));
  STACK[0x278] = *(v6 + 8 * (v4 - 5614));
  STACK[0x270] = v7 + 4;
  return v2(a1, 1906281716, 48, 1906239693, 4356, v8, 95, 6138, a2, 0);
}

uint64_t sub_1969F3B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = 753662761 * ((((v17 - 144) | 0x39F79C44) - (v17 - 144) + ((v17 - 144) & 0xC60863B8)) ^ 0x5CED670F);
  *(v17 - 144) = &a14;
  *(v17 - 136) = v18 ^ 0x781EFA5A;
  *(v17 - 132) = (v16 - 878) ^ v18;
  v19 = (*(v14 + 8 * (v16 + 1492)))(v17 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v14 + 8 * (((((v15 == 0) ^ (v16 - 9)) & 1) * ((v16 ^ 0x120B) - 1790)) ^ (v16 - 3259))))(v19);
}

uint64_t sub_1969F3CA0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = (*(v4 + 8 * (v5 ^ 0xB75)))(a1, 1337519501 * (*(v2 + 8) ^ a2) - 236321470);
  **(v3 + 8 * (v5 - 3586)) = v6;
  return (*(v4 + 8 * (((((v5 + 54) ^ (v6 == 0)) & 1) * (v5 - 4021)) ^ v5)))();
}

void sub_1969F3D1C(int a1@<W8>, uint64_t a2, __int128 a3, unsigned int a4)
{
  v5 = 1283153057 * (&a3 ^ 0x4FD80337);
  a4 = a1 - v5 - 3868;
  *(&a3 + 1) = 0;
  LODWORD(a3) = v5 - 1938887815;
  DWORD1(a3) = v5 + 436188070;
  (*(v4 + 8 * (a1 ^ 0x931)))(&a3);
  JUMPOUT(0x1969BF88CLL);
}

uint64_t sub_1969F3E24@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  *v1 = v1[3];
  v1[3] = v4;
  v5 = v1[1];
  v1[1] = v1[2];
  v1[2] = v5;
  return (*(a1 + 8 * (((v2 == 1805132658) * ((v3 + 4728) ^ 0x1623)) ^ v3)))();
}

uint64_t sub_1969F3E80(__n128 *a1, __n128 a2, __n128 a3)
{
  v6 = &STACK[0x6E0] + v4;
  *v6 = 988001955;
  *(v6 + 1) = 0;
  *(v6 + 4) = 1737729328;
  *(v6 + 6) = 763604091;
  *(&STACK[0x6E0] + v4 + 40) = 763604091;
  *(v6 + 4) = 0;
  STACK[0x5B0] = &STACK[0x6E0] + v4 + 40;
  *(&STACK[0x6E0] + v4 + 48) = 0;
  STACK[0x540] = &STACK[0x6E0] + v4 + 48;
  *(&STACK[0x6E0] + v4 + 56) = 763604091;
  *(&STACK[0x6E0] + v4 + 64) = 0;
  STACK[0x5D0] = &STACK[0x6E0] + v4 + 56;
  STACK[0x4F0] = &STACK[0x6E0] + v4 + 64;
  *(&STACK[0x6E0] + v4 + 72) = 763604091;
  STACK[0x580] = &STACK[0x6E0] + v4 + 72;
  *(&STACK[0x6E0] + v4 + 80) = 0;
  STACK[0x3C8] = &STACK[0x6E0] + v4 + 80;
  v6[88] = 33;
  a1->n128_u32[0] = 988001955;
  memset(&a1->n128_u8[4], 236, 15);
  a1[1].n128_u32[3] = 0;
  STACK[0x2E8] = &a1[1].n128_u64[1] + 4;
  a1[1].n128_u32[2] = 763604091;
  a1[14].n128_u32[2] = 0;
  STACK[0x2E0] = &a1[14].n128_u64[1];
  memset(&a1[27].n128_u8[4], 236, 30);
  memset(&a1[70].n128_i8[8], 236, 18);
  a1[72].n128_u64[0] = 0xECECECECECECECECLL;
  a1[72].n128_u64[1] = 0xECECECECECECECECLL;
  a1[73] = a3;
  a1[74] = a3;
  return (*(v5 + 8 * ((254 * ((((v3 + 25) & 0x78) - 7) & 1)) ^ (v3 - 1639028711) & 0x61B19778u)))(a2);
}

uint64_t sub_1969F4030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = ~v6 + v2;
  v9 = *(a2 + v8 - 15);
  v10 = *(a2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * ((120 * (v6 + v4 - 1662 != v3)) ^ v5)))();
}

uint64_t sub_1969F4300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53, char a54)
{
  *(v59 + 16) = v58;
  *(v59 + 20) = v54 ^ 0x13A39530;
  *(v59 + 24) = a13 ^ 0x5D5D9A9;
  *(v59 + 560) = a32;
  if (v58 == 8 || v58 == 5)
  {
    *(v59 + 43) = a54 ^ 0xEC;
    *(v59 + 42) = a53 ^ 0xEC;
    *(v59 + 41) = a52 ^ 0xEC;
    *(v59 + 40) = a51 ^ 0xEC;
    *(v59 + 39) = a50 ^ 0xEC;
    *(v59 + 38) = a49 ^ 0xEC;
    *(v59 + 37) = a48 ^ 0xEC;
    *(v59 + 36) = a47 ^ 0xEC;
    *(v59 + 35) = a46 ^ 0xEC;
    *(v59 + 34) = a45 ^ 0xEC;
    *(v59 + 33) = a44 ^ 0xEC;
    *(v59 + 32) = a43 ^ 0xEC;
    *(v59 + 31) = a42 ^ 0xEC;
    *(v59 + 30) = a41 ^ 0xEC;
    *(v59 + 29) = a40 ^ 0xEC;
    *(v59 + 28) = a39 ^ 0xEC;
  }

  *(v60 - 172) = (v57 + 1972) ^ (489239129 * ((((v60 - 176) | 0x49D39025) + (~(v60 - 176) | 0xB62C6FDA)) ^ 0xF0FBB312));
  v61 = (*(v56 + 8 * (v57 ^ 0x1389)))(v60 - 176, a2, a3, a4, a5, a6, a7, a8);
  return (*(v56 + 8 * ((1534 * (*(v60 - 176) == v55 + v57 - 2106 - 102)) ^ (v57 - 2146))))(v61);
}

uint64_t sub_1969F4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v49 = *(a5 + 8 * (((v48 - 2862 + (v48 ^ 0x16A6) - 7011) * (v47 == a45)) ^ v48));
  STACK[0x2D0] = v47;
  return v49(a47, 0x4647DA357A539214);
}

uint64_t sub_1969F4848@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56)
{
  STACK[0x240] = v57;
  STACK[0x248] = v56;
  return (*(v58 + 8 * ((4076 * ((((a1 & 1) == 0) ^ (3 * a56)) & 1)) ^ a55)))();
}

unsigned __int8 **sub_1969F4884@<X0>(unsigned __int8 **result@<X0>, char a2@<W8>)
{
  v7 = (v6 - 128);
  v8 = *result;
  if (a2 == 100)
  {
LABEL_4:
    v9 = &v8[56 * *v8 + 24];
    v10 = ((((v6 - 128) | 0xF2E73430) - ((v6 - 128) | 0xD18CBCF) + 219728847) ^ 0x97FDCF7B) * v5;
    *(v6 - 104) = v18;
    *(v6 - 120) = v9;
    *(v6 - 128) = (((((v6 - 128) | 0x3430) - ((v6 - 128) | 0xCBCF) - 13361) ^ 0xCF7B) * v5) ^ 0x6298;
    *(v6 - 112) = v10 + 1904658650;
    *(v6 - 108) = v2 - v10 - 1922;
    (*(v4 + 8 * (v2 ^ 0xF79)))(v6 - 128);
    v11 = 998242381 * ((v6 - 128) ^ 0xAA6F98D6);
    *v7 = (v2 - 1995) ^ v11;
    *(v6 - 124) = v11 + 2125716558;
    *(v6 - 120) = v18;
    *(v6 - 112) = &v17;
    (*(v4 + 8 * (v2 ^ 0xE84)))(v6 - 128);
    v12 = 998242381 * ((v6 - 851303059 - 2 * ((v6 - 128) & 0xCD4225ED)) ^ 0x672DBD3B);
    *v7 = (v2 - 1995) ^ v12;
    *(v6 - 124) = v12 + 2125716558;
    *(v6 - 120) = v18;
    *(v6 - 112) = &v16;
    (*(v4 + 8 * (v2 + 1412)))(v6 - 128);
    *v7 = v18;
    *(v6 - 120) = v2 + 1825732043 * ((((v6 - 128) | 0x3ACF703) + (~(v6 - 128) | 0xFC5308FC)) ^ 0x33AA435) - 5491;
    *(v6 - 112) = v3;
    return (*(v4 + 8 * (v2 ^ 0xEB8)))(v6 - 128);
  }

  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

  *v7 = v2 - 1575331711 * ((v6 + 1560129698 - 2 * ((v6 - 128) & 0x5CFDB122)) ^ 0x30A62420) - 1915868722;
  *(v6 - 120) = v19;
  (*(v4 + 8 * (v2 + 1317)))(v6 - 128);
  v13 = ((v6 - 2103918807 - 2 * ((v6 - 128) & 0x8298BFA9)) ^ 0xE78244E2) * v5;
  *(v6 - 120) = &v17;
  *(v6 - 112) = v19;
  *v7 = v13 ^ 0x7383F52B;
  *(v6 - 124) = v2 + 1869823483 + v13;
  (*(v4 + 8 * (v2 + 1385)))(v6 - 128);
  v14 = (((v6 - 128) & 0x96281106 | ~((v6 - 128) | 0x96281106)) ^ 0xCCD15B2) * v5;
  *(v6 - 120) = &v16;
  *(v6 - 112) = v19;
  *v7 = v14 ^ 0x7383F52B;
  *(v6 - 124) = v2 + 1869823483 + v14;
  (*(v4 + 8 * (v2 + 1385)))(v6 - 128);
  v15 = &v8[56 * *v8];
  *(v6 - 129) = v15[43] ^ 0xEC;
  *(v6 - 130) = v15[42] ^ 0xEC;
  *(v6 - 131) = v15[41] ^ 0xEC;
  *(v6 - 132) = v15[40] ^ 0xEC;
  *(v6 - 133) = v15[39] ^ 0xEC;
  *(v6 - 134) = v15[38] ^ 0xEC;
  *(v6 - 135) = v15[37] ^ 0xEC;
  *(v6 - 136) = v15[36] ^ 0xEC;
  *(v6 - 137) = v15[35] ^ 0xEC;
  *(v6 - 138) = v15[34] ^ 0xEC;
  *(v6 - 139) = v15[33] ^ 0xEC;
  *(v6 - 140) = v15[32] ^ 0xEC;
  *(v6 - 141) = v15[31] ^ 0xEC;
  *(v6 - 142) = v15[30] ^ 0xEC;
  *(v6 - 143) = v15[29] ^ 0xEC;
  *(v6 - 144) = v15[28] ^ 0xEC;
  *(v6 - 145) = v15[27] ^ 0xEC;
  *(v6 - 146) = v15[26] ^ 0xEC;
  *(v6 - 147) = v15[25] ^ 0xEC;
  *(v6 - 148) = v15[24] ^ 0xEC;
  *(v6 - 120) = v19;
  *(v6 - 112) = v6 - 148;
  *v7 = v3;
  *(v6 - 104) = v2 + 455395931 * ((v6 - 1811766201 - 2 * ((v6 - 128) & 0x9402A4C7)) ^ 0xE2F3FA0B) + 142;
  return (*(v4 + 8 * (v2 + 1288)))(v6 - 128);
}

uint64_t sub_1969F4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16)
{
  a9 = 0;
  a15 = a12;
  a16 = &a9;
  LODWORD(a14) = v16 + 1282 - ((2 * (&a14 & 0x2B96C1E0) - &a14 - 731300326) ^ 0xB832AB18) * v19;
  (*(v18 + 8 * (v16 + 5871)))(&a14, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(a14) = v16 + 1282 - ((((2 * &a14) | 0xF1B0A40A) - &a14 - 2027442693) ^ 0x1483C707) * v19;
  a15 = a12;
  a16 = &a10;
  (*(v18 + 8 * (v16 ^ 0x1911)))(&a14);
  a14 = a12;
  HIDWORD(a15) = v16 - 489239129 * (((&a14 | 0x2CCD29E6) - &a14 + (&a14 & 0xD332D618)) ^ 0x95E50AD0) - 54;
  v20 = (*(v18 + 8 * (v16 + 5873)))(&a14);
  return (*(v18 + 8 * ((4649 * (a15 == (((v16 - 958) | 0x208) ^ (v17 + 521)))) ^ v16)))(v20);
}

uint64_t sub_1969F6B60()
{
  if (v1)
  {
    v4 = v2 == ((v0 - 1343950617) & 0x5E3FFF7D) + (v0 ^ 0xF1DB0E1B);
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((11 * v5) | v0)))();
}

uint64_t sub_1969F6BB8()
{
  v3 = (v0 - 143) | 0x20;
  v4 = ((2 * v9) & 0xEB7F1BEE) + 2078277373 + ((v3 - 171998001) ^ v9);
  v5 = v3 + 1598;
  v10 = v3 - (((&v10 | 0x16451E07) - (&v10 & 0x16451E07)) ^ 0xEE993E46) * v1 + 3757;
  v11 = v8;
  (*(v2 + 8 * (v3 ^ 0x1383)))(&v10);
  v10 = v5 - ((((2 * &v10) | 0xAB94C522) - &v10 - 1439326865) ^ 0xAD1642D0) * v1 + 2159;
  v11 = v7;
  (*(v2 + 8 * (v5 ^ 0x15CD)))(&v10);
  return v4 - 1906281716;
}

uint64_t sub_1969F6CA0@<X0>(uint64_t a1@<X8>, int8x8_t a2@<D0>)
{
  v9 = (a1 + v5);
  v10 = veor_s8(*(v7 + v5 + 8), a2);
  *v9 = veor_s8(*(v7 + v5), a2);
  v9[1] = v10;
  return (*(v8 + 8 * (((v5 + v4 - 2126 == v2) * v6) ^ (v3 + 1606))))();
}

void sub_1969F6D0C()
{
  v6 = 1283153057 * ((2 * ((v5 - 144) & 0x17976710) - (v5 - 144) + 1751685352) ^ 0x27B09BDF);
  *(v5 - 136) = v4;
  *(v5 - 120) = v3;
  *(v5 - 144) = v0 + v6 + 418792435 + v2;
  *(v5 - 140) = v2 - v6 + 5860;
  (*(v1 + 8 * (v2 ^ 0x1881)))(v5 - 144);
  JUMPOUT(0x19696E7E8);
}

uint64_t sub_1969F6D90(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8)
{
  v13 = v8 < a8;
  v14 = v9 + 1;
  if (v13 == v14 > a6 + 2)
  {
    v13 = v14 + a8 < v8;
  }

  return (*(v12 + 8 * ((v13 * (v11 & a1 ^ a5)) ^ v10)))();
}

_DWORD *sub_1969F8CC8()
{
  result = v1;
  *v1 = (v2 ^ 0xF19F9CF7) + 2147479549 + ((v2 << (v3 ^ 0x17)) & 0xE33E30CA);
  return result;
}

void sub_1969F8D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned __int8 a20, int a21, unsigned __int8 a22, int a23, int a24, int a25, unsigned __int8 a26, uint64_t a27, int a28, char a29, int a30)
{
  *(v30 - 124) = (((a22 ^ 0x94) << (a29 ^ 0xB1)) + (a23 << 24) + (a26 ^ 0x25 | ((*(v30 - 116) ^ 0x2A) << 8))) ^ 0xBCD39399;
  *(v30 - 128) = a20 & 0xD7 ^ 0x40F2EED3 ^ (a30 ^ 0x25D59FA0) & (a20 ^ 0xFFFFFF0F);
  *(v30 - 132) = a21 ^ 0x5B07E830;
  JUMPOUT(0x1969B87F4);
}

void sub_1969F8E5C()
{
  if (v0 == 1159249384)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 40) = v2;
}

uint64_t sub_1969F8EBC(uint64_t a1, uint64_t a2, int a3)
{
  STACK[0x590] = v4 - 1824;
  LODWORD(STACK[0x380]) = a3;
  return (*(v5 + 8 * ((4047 * (*(v6 + 360) > ((v3 + 797542905) & 0xD07677FF) - 6138)) ^ v3)))(a1);
}

uint64_t sub_1969F8F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v22 = 753662761 * (((&a15 ^ 0xC5F0FEFB | 0x4F95AA92) - (&a15 ^ 0xC5F0FEFB) + ((&a15 ^ 0xC5F0FEFB) & 0xB06A5569)) ^ 0xEF7FAF22);
  a15 = (v20 ^ 0x77371B99) + ((2 * v20) & 0xEE6E3732) - v22 - 553718025;
  a16 = v22 ^ 0x15D7;
  a17 = a9;
  a18 = v19;
  (*(v21 + 54232))(&a15, a2, a3, a4, a5, a6, a7, a8);
  v23 = 1621291457 * (&a15 ^ 0x36178199);
  a18 = a9;
  a16 = v23 + 1241;
  LODWORD(a17) = (1122297523 * v18 + 296299868) ^ v23;
  v24 = (*(v21 + 54664))(&a15);
  return (*(v21 + 8 * ((4935 * (a15 == 1906281716)) ^ 0x512u)))(v24);
}

uint64_t sub_1969F908C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a2 + v5);
  return (*(a1 + 8 * ((5188 * (v5 == 248 * (v3 ^ 0xE0Bu) - 4712)) ^ v3)))();
}

uint64_t sub_1969F90D0@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v6 = (((v4 + 1872) - 2467) ^ v3) + v2;
  *(v5 - 7 + v6) = veor_s8(*(a2 - 7 + v6), 0xECECECECECECECECLL);
  return (*(a1 + 8 * ((821 * (((v4 - 602) & v2) - 8 != v3)) ^ (v4 - 235))))();
}

void sub_1969F9184(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x240] = v4;
  STACK[0x590] -= 1616;
  LODWORD(STACK[0x380]) = a4 - 162;
  JUMPOUT(0x196A01674);
}

void sub_1969F9198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = *(STACK[0x738] + 20);
  if (!v8)
  {
    JUMPOUT(0x1968E94F8);
  }

  if (v8 == 1)
  {
    (*(a6 + 8 * (a8 ^ 0xCB2)))(STACK[0x5C8], 0, 32, a4, a5);
    JUMPOUT(0x1969F91F4);
  }

  sub_1969A7A9C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1969F942C(uint64_t a1)
{
  v8 = a1 - 1;
  v9 = ((3 * (v1 ^ 0x1111u)) ^ 0xD5FLL) & v8;
  *(v6 + v8) = *(v5 + v9) ^ *(v2 + v8) ^ *(v9 + v4 + 7) ^ *(v9 + v3 + 5) ^ (33 * v9);
  return (*(v7 + 8 * ((5570 * (v8 == 0)) ^ (v1 - 3946))))();
}

uint64_t sub_1969F9560@<X0>(int a1@<W8>)
{
  v5 = *(v1 - 88);
  *(v1 - 1) = *(v1 - 104);
  *v1 = v5;
  return (*(v3 + 8 * (((v2 == 0) * a1) ^ v4)))();
}

uint64_t sub_1969F9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22)
{
  v24 = 1012216201 * ((((&a17 | 0x20B5DEE) ^ 0xFFFFFFFE) - (~&a17 | 0xFDF4A211)) ^ 0x795D2AFD);
  a22 = v24 + v23 + 49 - 1795305817;
  a20 = a16;
  a21 = &a14;
  a19 = v24 + 1357291636;
  a17 = v24 ^ 0x80F33AA;
  v25 = (*(v22 + 8 * ((v23 + 49) ^ 0x137A)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v22 + 8 * ((6973 * (a18 == ((v23 + 49) ^ 0xB41) + 1906281016)) ^ (v23 + 49))))(v25);
}

uint64_t sub_1969F9E90(uint64_t a1)
{
  v6 = STACK[0x280];
  v1 = *(v4 + 8 * v3);
  STACK[0x278] = *(v5 + 8 * (877 * (v3 ^ 0x1B9) - 5614));
  STACK[0x270] = v6 + 4;
  return v1(a1, 1906281716, 48);
}

uint64_t sub_1969F9ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24)
{
  v27 = 1012216201 * ((1087270855 - (&a19 | 0x40CE6FC7) + (&a19 | 0xBF319038)) ^ 0x3B9818D4);
  a21 = v27 - 235263691;
  a19 = v27 ^ 0x80F33AA;
  a24 = v27 + v24 - 1795308133;
  a22 = a13;
  a23 = &a14;
  v28 = (*(v25 + 8 * (v24 + 1918)))(&a19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v25 + 8 * ((((((v24 ^ 0xF) + 1) ^ (a20 == v26)) & 1) * (v24 - 4869)) | v24)))(v28);
}

uint64_t sub_1969F9FD8(unint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = HIDWORD(a1) + a4 * (*(a7 + 4 * a5) ^ v8) + (a3 ^ (v8 + 2019) ^ *(a8 + 4 * a6));
  *(a8 + 4 * a6) = v13 + v8 - ((v10 + 844) & (2 * v13));
  return (*(v11 + 8 * (((a5 + 1 == v9) * v12) ^ a2)))();
}

uint64_t sub_1969FA148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = v19 - 1825732043 * ((2 * (&a17 & 0xC955EE8) - &a17 + 1936367895) ^ 0x73FCF220) - 114;
  a18 = &a14;
  v21 = (*(v20 + 8 * (v19 ^ 0x1C66)))(&a17, a2, a3, a4, a5, a6, a7, a8);
  return (*(v20 + 8 * ((6101 * (a17 == v19 + 1906273263 + ((v19 - 945063505) & 0x38549356) + 1895)) ^ v19)))(v21);
}

uint64_t sub_1969FA1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, __int16 a17, char a18, __int16 a19, char a20, uint64_t a21, uint64_t a22, char *a23)
{
  LODWORD(a21) = v23 - 2563 - ((&a21 + 739667760 - 2 * (&a21 & 0x2C166F30)) ^ 0x404DFA32) * v25;
  a22 = a14;
  a23 = &a20;
  (*(v24 + 8 * (v23 ^ 0x86A)))(&a21, a2, a3, a4, a5, a6, a7, a8);
  LODWORD(a21) = v23 - 2563 - ((2 * (&a21 & 0xAE57878) - &a21 - 182810747) ^ 0x99411287) * v25;
  a22 = a14;
  a23 = &a18;
  (*(v24 + 8 * (v23 + 2026)))(&a21);
  LODWORD(a21) = v23 - 2563 - ((&a21 & 0x50B506A3 | ~(&a21 | 0x50B506A3)) ^ 0xC3116C5E) * v25;
  a22 = a14;
  a23 = &a16;
  (*(v24 + 8 * (v23 ^ 0x86A)))(&a21);
  LODWORD(a21) = v23 - 2563 - (((&a21 | 0x36E4A734) - &a21 + (&a21 & 0xC91B58C8)) ^ 0x5ABF3236) * v25;
  a22 = a14;
  a23 = &a13;
  (*(v24 + 8 * (v23 + 2026)))(&a21);
  a22 = a14;
  a23 = &a10;
  LODWORD(a21) = v23 - 2563 - (((&a21 | 0x794A4AA3) + (~&a21 | 0x86B5B55C)) ^ 0x1511DFA0) * v25;
  (*(v24 + 8 * (v23 ^ 0x86A)))(&a21);
  HIDWORD(a22) = v23 - 489239129 * (&a21 ^ 0xB9282336) - 3899;
  a21 = a14;
  v26 = (*(v24 + 8 * (v23 + 2028)))(&a21);
  return (*(v24 + 8 * ((3009 * (a22 == (v23 ^ 0x51DA2DDD) + 533019415 + 5 * (v23 ^ 0x117B) + 9)) ^ v23)))(v26);
}

uint64_t sub_1969FA488@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v3 = 16 - ((((v2 + 759) | 0x940) - 6613) & a2 ^ (2 * ((((v2 + 2224) ^ 0x1659) & (2 * a2) | 2) & (a2 + 1427892608))) ^ 0xA);
  LODWORD(STACK[0x578]) = v3;
  return (*(a1 + 8 * ((8090 * ((a2 ^ 0xA7E07FF477CFD7FDLL) + ((2 * a2) & 0xEF9FAFFALL) + ((2 * v3) & 0x1C) + (v3 ^ 0x5BFD97EBAEDFFFEELL) - 0x3DE17E026AFD7EBLL < 0xFFFFFFF6)) ^ v2)))();
}

uint64_t sub_1969FA5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = LODWORD(STACK[0x59C]);
  v72 = *(v66 + 52) ^ ((*(v66 + 52) ^ 0xF03E22FC) + 75607327) ^ ((*(v66 + 52) ^ 0x3A773433) - 825705518) ^ ((*(v66 + 52) ^ 0xB2B69905) + 1175000808) ^ 0xE7CCBC68 ^ (((v65 - 1738974890) & 0x67A6B7FB) + ((v65 + 1941961006) ^ *(v66 + 52)) - 2030020549);
  STACK[0x338] = v71;
  v73 = 654144011 * ((((v67 | 0xA366746C) ^ 0xFFFFFFFE) - (~v67 | 0x5C998B93)) ^ 0x704DF60F);
  *(v70 - 208) = a65 - v73;
  *(v70 - 204) = v72 + v73;
  *(v70 - 184) = v73 + v65 - 1558;
  *(v70 - 192) = v69;
  *(v70 - 176) = &STACK[0x6D0];
  *(v70 - 168) = STACK[0x248];
  *(v70 - 200) = ((v71 ^ 0x5F6FF5AE) - 1095074186 + ((2 * v71) & 0xBEDFEB5C)) ^ v73;
  v74 = (*(v68 + 8 * (v65 + 5156)))(v70 - 208, a2, a3, a4, a5, a6, a7, a8);
  v75 = *(v70 - 160);
  LODWORD(STACK[0x450]) = v75;
  return (*(v68 + 8 * ((2760 * (v75 == 1906281716)) ^ v65)))(v74);
}

uint64_t sub_1969FA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 1498 - 1825732043 * (((&a13 | 0x4E05A049) - (&a13 & 0x4E05A049)) ^ 0x4E93F37E);
  a14 = &a9;
  v18 = (*(v15 + 53584))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v15 + 8 * ((141 * (a13 == v16)) ^ v17)))(v18);
}

uint64_t sub_1969FA954(uint64_t a1)
{
  v5 = v4 + 1833;
  v7 = (*(v2 + 8 * (v5 ^ 0x249)))(a1, **(v1 + 8 * (v5 ^ 0x1B2A)), 0, v3 + 4);
  v8 = (*(v2 + 8 * (v4 + 2159)))(a1);
  return (*(v2 + 8 * ((159 * (v7 == (v5 ^ 0x140A) - 4481 + ((v4 - 4590) | 0x444))) ^ v5)))(v8);
}

uint64_t sub_1969FA9F0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  result = (*(v3 + 8 * (a2 ^ 0x18F5)))(*v4, a1, *(v2 + 8) + ((a2 + 1404) ^ 0xA93242BF));
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 12) = v5;
  return result;
}

uint64_t sub_1969FAB28(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20)
{
  v26 = v21 ^ 0x4FC6DA14;
  *(v25 - 108) = v20;
  v27 = (v23 + v20);
  v174 = v20 | (1443 * (a8 ^ 0x1A22)) ^ 0xB42;
  v28 = (*(a13 + (v27[13] ^ 8)) ^ v27[13] ^ ((v27[13] ^ (((2 * a8) ^ 0x24) - 124)) - 65)) << 16;
  v29 = *(a16 + (v27[11] ^ 0x17));
  v30 = *(a16 + (v27[15] ^ 0xF9));
  v31 = ((*(a14 + (*v27 ^ 0x71)) + 74) ^ 8) << 24;
  v32 = *(a15 + (v27[6] ^ 0x78));
  v33 = (((((v32 ^ (v32 >> 1) & 0x36) ^ 6) << 8) + 1515016549 - (((v32 ^ (v32 >> 1) & 0x36) << 9) & 0xA200)) ^ 0x5A4D5165) + (((*(a14 + (*(v23 + v174) ^ 0x8ALL)) + 74) ^ 0xC9) << 24);
  v34 = (((v31 ^ 0xF9FFFFFF) & ((((*(a15 + (v27[2] ^ 0xEELL)) >> 1) & 0x36 ^ *(a15 + (v27[2] ^ 0xEELL))) << 8) ^ 0x9E2FA700) & 0xAD00A3F5 | v31 & 0x21000000 | *(a16 + (v27[3] ^ 0xD6)) & 0xF5) ^ 0xC259CE41) & (((v31 ^ 0xF9FFFFFF) & ((((*(a15 + (v27[2] ^ 0xEELL)) >> 1) & 0x36 ^ *(a15 + (v27[2] ^ 0xEELL))) << 8) ^ 0x9E2FA700) & 0x52005C0A | v31 & 0x40000000 | *(a16 + (v27[3] ^ 0xD6)) & 0xA) ^ 0xEDDFB3F5) | (v31 ^ 0xF9FFFFFF) & ((((*(a15 + (v27[2] ^ 0xEELL)) >> 1) & 0x36 ^ *(a15 + (v27[2] ^ 0xEELL))) << 8) ^ 0x9E2FA700) & 0x1000100A | *(a16 + (v27[3] ^ 0xD6)) & 0xA;
  v35 = ((*(a15 + (v27[14] ^ 0x5ELL)) >> 1) & 0x36 ^ *(a15 + (v27[14] ^ 0x5ELL))) << 8;
  v36 = (v35 ^ 0xFFFFCAFF) & ((v30 & 0x77777777 | ((((((*(a14 + (v27[12] ^ 0xB9)) + 74) ^ 0xE9) << 24) ^ 0x5C5E0057) & (v28 ^ 0xFF670057) | v28 & 0xA10000) ^ 0xEA9348DF) & (v30 ^ 0xFFFF7CBF)) ^ 0x2C2DAE42);
  v37 = v35 & 0x1900;
  v38 = v33 + *(a16 + (v27[7] ^ 0x35));
  v39 = (((v27[5] ^ 0xE8) - 65) ^ v27[5] ^ *(a13 + (v27[5] ^ 8))) << 16;
  v173 = v27[1];
  v40 = (((v27[9] ^ 0x4B) - 65) ^ v27[9] ^ 0x4B ^ *(a13 + (v27[9] ^ 0xABLL))) << 16;
  v41 = (v40 & 0x40440044 | 0x400D402) ^ a7 ^ 0xAA9E2780 ^ ((((((*(a15 + (v27[10] ^ 0xE7)) >> 1) & 0x36 ^ *(a15 + (v27[10] ^ 0xE7))) << 8) ^ 0x3FB8472C) & (v29 ^ 0x3FF9FF7E) & 0x3E28E3EF | v29 & 0xC3) ^ 0xCC06DE79 ^ ((((((*(a15 + (v27[10] ^ 0xE7)) >> 1) & 0x36 ^ *(a15 + (v27[10] ^ 0xE7))) << 8) ^ 0x3FB8472C) & (v29 ^ 0x3FF9FF7E) | v29 & 0xD3) ^ 0xC0050410) & ((((*(a14 + (v27[8] & 0xFD ^ 0xFB ^ (v27[8] & 2 | 0xCCu))) + 74) ^ 0xC9) << 24) ^ 0xDB951C10)) & (v40 ^ 0xFF19FFFF);
  v42 = ((v39 & 0x750000 ^ v38 & 0xCB75C8DB ^ 0x7E8A7725) & (v38 & 0x348A3724 ^ v39 & 0x8A0000 ^ 0x5EB347BD) | (v39 & 0x750000 ^ v38 & 0xCB75C8DB) & 0x81448842) ^ a3 ^ 0xDAD55EA5;
  v43 = ((((v173 ^ 0xC0 ^ ((v173 ^ 0xC0) - 65) ^ *(a13 + (v173 ^ 0x20))) << 16) ^ 0xD39E20DD) & (v34 ^ 0xA0A6BC42) | v34 & 0x2C00DF22) ^ a1 ^ 0xC8AE412E;
  v44 = v26 ^ v37 ^ 0xB5CFA66F ^ v36;
  v45 = HIBYTE(v44);
  v46 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1A14));
  v47 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6682) - 12;
  v48 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6186);
  v49 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1A0A)) - 4;
  v50 = (*&v47[4 * (HIBYTE(v43) ^ 0xA6)] + v22) ^ *(v48 + 4 * ((v26 ^ v37) ^ 0x6Fu ^ v36)) ^ *&v49[4 * (BYTE1(v41) ^ 0xE5)] ^ *(v46 + 4 * (BYTE2(v42) ^ 0x24u));
  v51 = v50 ^ (v41 >> 8);
  v52 = BYTE1(v44) ^ 0xD1682052 ^ *&v49[4 * (BYTE1(v44) ^ v24)];
  v53 = (*&v47[4 * (HIBYTE(v42) ^ 0xC5)] + v22) ^ *(v46 + 4 * (BYTE2(v41) ^ 0xE6u)) ^ 0x3B74A8B8;
  v54 = ((-v53 ^ 0xBFEED617 ^ (v52 - (v53 ^ v52)) ^ (v53 - 1074866665 - ((2 * v53) & 0x7FDDAC2E))) + v52) ^ __ROR4__(__ROR4__(*(v48 + 4 * (v43 ^ 0x83u)), 21) ^ 0x9F4E4A3B, 11);
  v55 = BYTE1(v43) ^ 0xD16820E1 ^ *&v49[4 * (BYTE1(v43) ^ 0x69)];
  v56 = (*&v47[4 * (HIBYTE(v41) ^ 0x5C)] + v22) ^ *(v46 + 4 * BYTE2(v44)) ^ 0x3B74A8B8;
  v57 = ((-v56 ^ 0x206F280A ^ (v56 + 544155658 - ((2 * v56) & 0x40DE5014)) ^ (v55 - (v56 ^ v55))) + v55) ^ *(v48 + 4 * (v42 ^ 0xDCu));
  v58 = BYTE1(v42) ^ 0x1F27E95B ^ (*&v47[4 * v45] + v22) ^ *(v46 + 4 * (BYTE2(v43) ^ 0xE0u)) ^ *(v48 + 4 * (v41 ^ 0x3Fu)) ^ *&v49[4 * (BYTE1(v42) ^ 0x83)];
  if ((v58 & 0x1000000) != 0)
  {
    v59 = -16777216;
  }

  else
  {
    v59 = 0x1000000;
  }

  v60 = (v59 + v58) ^ 0xCA088F2D;
  v61 = HIBYTE(v60);
  v62 = (*&v47[4 * (HIBYTE(v50) ^ 0x5F)] + v22) ^ *&v49[4 * (BYTE1(v57) ^ 0x64)] ^ *(v48 + 4 * (v60 ^ 7u)) ^ *(v46 + 4 * (BYTE2(v54) ^ 0x80u));
  v63 = (v47[4 * (HIBYTE(v50) ^ 0x5F)] + v22) ^ v49[4 * (BYTE1(v57) ^ 0x64)] ^ *(v48 + 4 * (v60 ^ 7u)) ^ *(v46 + 4 * (BYTE2(v54) ^ 0x80u)) ^ BYTE1(v57);
  v64 = (*&v47[4 * (HIBYTE(v54) ^ 0x38)] + v22) ^ *(v46 + 4 * (BYTE2(v57) ^ 0xF9u)) ^ *&v49[4 * (BYTE1(v60) ^ v24)] ^ *(v48 + 4 * (v51 ^ 0x4Bu));
  v65 = v64 ^ BYTE1(v60);
  v66 = *&v47[4 * (HIBYTE(v57) ^ 0xA8)] + v22;
  v67 = *&v49[4 * (BYTE1(v50) ^ 0x16)] ^ ((BYTE1(v50) ^ 0xCC) - 781705136 + ((v50 >> 7) & 0xA4 ^ 0xFFFFFF7F) + 3) ^ *(v48 + 4 * (v54 ^ 0xB6u)) ^ ((*(v46 + 4 * BYTE2(v60)) ^ 0x3B74A8B8 ^ ((*(v46 + 4 * BYTE2(v60)) ^ 0xC48B5747) + 1) ^ (v66 - (*(v46 + 4 * BYTE2(v60)) ^ 0x3B74A8B8 ^ v66))) + v66);
  v68 = (*&v47[4 * v61] + v22) ^ *(v46 + 4 * (BYTE2(v50) ^ 0xE8u)) ^ *(v48 + 4 * (v57 ^ 0x6Cu)) ^ *&v49[4 * (BYTE1(v54) ^ 0x8E)];
  v69 = *&v49[4 * (BYTE1(v67) ^ 0x94)];
  v70 = (*&v47[4 * (v24 ^ HIBYTE(v62))] + v22) ^ *(v46 + 4 * (BYTE2(v64) ^ 0x5Au)) ^ *(v48 + 4 * ((v68 ^ BYTE1(v54)) ^ 0x37u)) ^ ((BYTE1(v67) ^ 0xD168201C) + v69 - 2 * ((BYTE1(v67) ^ 0xD168201C) & v69));
  v71 = BYTE1(v62);
  v72 = *(v48 + 4 * (v65 ^ 0xCDu));
  v73 = *(v46 + 4 * (BYTE2(v67) ^ 0x2Fu)) ^ BYTE1(v68) ^ (*&v47[4 * (HIBYTE(v64) ^ 0x3C)] + v22) ^ *&v49[4 * (BYTE1(v68) ^ 0x24)] ^ *(v48 + 4 * (v63 ^ 0x4Au));
  if ((v72 & 0x20000000) != 0)
  {
    v74 = -536870912;
  }

  else
  {
    v74 = 0x20000000;
  }

  HIDWORD(v75) = v72;
  LODWORD(v75) = v74 + v72;
  v76 = *(v46 + 4 * (BYTE2(v68) ^ 0x90u)) ^ *&v49[4 * (BYTE1(v62) ^ 0x1F)] ^ (*&v47[4 * (HIBYTE(v67) ^ 0xE7)] + v22) ^ __ROR4__((v75 >> 28) ^ 0xB58EE473, 4);
  v77 = (*&v47[4 * (HIBYTE(v68) ^ 0xAA)] + v22) ^ *(v46 + 4 * (BYTE2(v62) ^ 0x39u)) ^ *&v49[4 * (BYTE1(v64) ^ 0x74)] ^ *(v48 + 4 * (v67 ^ 0xDu));
  v78 = BYTE1(v62) ^ 0x1DC0EC4B ^ v76;
  v79 = BYTE1(v73) ^ 0x9A;
  v80 = (v73 ^ 0x8A279A7B) >> 8;
  v81 = (*&v47[4 * (HIBYTE(v70) ^ 0x14)] + v22) ^ *(v46 + 4 * ((v73 ^ 0x8A279A7B) >> 16)) ^ *(v48 + 4 * ((v77 ^ BYTE1(v64)) ^ 0xA8u)) ^ *&v49[4 * (BYTE1(v78) ^ v24)];
  v82 = v81 ^ BYTE1(v78);
  v83 = *&v49[4 * (BYTE1(v77) ^ 0x78)] ^ (*&v47[4 * ((v73 ^ 0x8A279A7B) >> 24)] + v22) ^ *(v48 + 4 * (v70 ^ 0xB1u)) ^ *(v46 + 4 * BYTE2(v78));
  v84 = *(v46 + 4 * (BYTE2(v77) ^ 0x84u)) ^ (((v70 >> 8) & 0xFC ^ 0xAB066336) & ((v70 >> 8) & 3 ^ 0xAB0663FD) | (v70 >> 8) & 1) ^ *&v49[4 * (BYTE1(v70) ^ 0x90)] ^ *(v48 + 4 * (v73 ^ 0x7Cu)) ^ (*&v47[4 * (HIBYTE(v76) ^ 0xEF)] + v22);
  v85 = BYTE1(v77) ^ 0xF9B33D1D ^ v83;
  v86 = *(v46 + 4 * (BYTE2(v70) ^ 0x99u)) ^ *&v49[4 * (v79 ^ v24)] ^ (*&v47[4 * (HIBYTE(v77) ^ 0x2D)] + v22) ^ *(v48 + 4 * (v71 ^ 0x4Bu ^ v76));
  v87 = *&v49[4 * (BYTE1(v84) ^ 0xD8)];
  v88 = *(v46 + 4 * BYTE2(v85)) ^ *(v48 + 4 * ((v86 ^ v80) ^ 0x70u)) ^ (*&v47[4 * (HIBYTE(v81) ^ 0xF2)] + v22) ^ ((-v87 ^ 0x1C445CC5 ^ ((BYTE1(v84) ^ 0xD1682050) - (BYTE1(v84) ^ 0xD1682050 ^ v87)) ^ (v87 + 474242245 - ((2 * v87) & 0x3888B98A))) + (BYTE1(v84) ^ 0xD1682050));
  v89 = *(v46 + 4 * (BYTE2(v84) ^ 0xA1u)) ^ (*&v47[4 * (HIBYTE(v83) ^ 0xB)] + v22) ^ *&v49[4 * (BYTE1(v86) ^ 0x47)] ^ *(v48 + 4 * (v82 ^ 0x91u));
  v90 = v89 ^ BYTE1(v86);
  v91 = (*&v47[4 * (HIBYTE(v84) ^ 0x27)] + v22) ^ *(v46 + 4 * (BYTE2(v86) ^ 0xAFu)) ^ *&v49[4 * (BYTE1(v81) ^ 0x23)] ^ *(v48 + 4 * (BYTE1(v77) ^ 0x1Du ^ v83));
  v92 = v91 ^ BYTE1(v81);
  v93 = *(v48 + 4 * (v84 ^ 0xA4u));
  v94 = v88 ^ 0xAC2123B4;
  v95 = *(v46 + 4 * (BYTE2(v81) ^ 0x18u)) ^ BYTE1(v85) ^ (*&v47[4 * (HIBYTE(v86) ^ 0xD2)] + v22) ^ *&v49[4 * (BYTE1(v85) ^ v24)] ^ v93;
  v96 = v95 ^ 0xA97E9C5F;
  v97 = *&v47[4 * (HIBYTE(v88) ^ 0x5E)] + v22;
  v98 = *(v46 + 4 * ((v90 ^ 0x5766068u) >> 16)) ^ 0x3B74A8B8;
  v99 = *&v49[4 * (((v92 ^ 0x5F7A) >> 8) ^ v24)] ^ *(v48 + 4 * (v95 ^ 0x58u)) ^ (v98 + v97 - 2 * (v98 & v97));
  v100 = *&v47[4 * (HIBYTE(v89) ^ 0xF7)];
  v101 = *(v46 + 4 * ((v95 ^ 0xA97E9C5F) >> 16)) ^ BYTE1(v94) ^ (*&v47[4 * (HIBYTE(v91) ^ 8)] + v22) ^ *(v48 + 4 * (v90 ^ 0x6Fu)) ^ *&v49[4 * (BYTE1(v94) ^ v24)];
  v102 = ((v90 ^ 0x6068) >> 8) ^ 0xD1682052;
  v103 = *&v49[4 * (((v90 ^ 0x6068) >> 8) ^ v24)];
  v104 = v102 & 0x40;
  if ((v103 & v102 & 0x40) != 0)
  {
    v104 = -v104;
  }

  v105 = *(v46 + 4 * (BYTE2(v92) ^ 0x5Du)) ^ (v100 + v22);
  v106 = ((v92 ^ 0x5F7A) >> 8) ^ 0x8844616E ^ v99;
  v107 = v105 ^ BYTE1(v96) ^ *&v49[4 * (BYTE1(v96) ^ v24)] ^ *(v48 + 4 * (v88 ^ 0xB3u)) ^ 0xC5CAF788;
  v108 = *(v46 + 4 * BYTE2(v94)) ^ v102 & 0xD16820BF ^ (*&v47[4 * HIBYTE(v96)] + v22) ^ *(v48 + 4 * (v92 ^ 0x7Du)) ^ (v104 + v103);
  LOBYTE(v124) = v101 ^ 0xA7;
  v109 = BYTE1(v108) ^ 0x14;
  v110 = *&v47[4 * (HIBYTE(v99) ^ 0x7A)] + v22;
  v111 = ((v101 ^ 0xF6A7) >> 8);
  v112 = *(v46 + 4 * BYTE2(v107)) ^ 0x3B74A8B8;
  v113 = ((v101 ^ 0x4C1BF6A7) >> 16) % 0x56u;
  v114 = v110 & v112 ^ *&v49[4 * (v111 ^ v24)] ^ (v110 | v112) ^ *(v48 + 4 * (v108 ^ 6u));
  v115 = ((((v101 ^ 0x4C1BF6A7) >> 16) - v113) ^ v113) + 2 * ((((v101 ^ 0x4C1BF6A7) >> 16) - v113) & v113);
  v116 = *(v46 + 4 * ((v108 ^ 0x47811401) >> 16)) ^ BYTE1(v106) ^ (*&v47[4 * (HIBYTE(v101) ^ 0xBE)] + v22) ^ *&v49[4 * (BYTE1(v106) ^ v24)];
  v117 = v114 ^ v111;
  v118 = *(v46 + 4 * v115);
  v119 = (*(v48 + 4 * v107) ^ 0xF53B61E8 ^ -(*(v48 + 4 * v107) ^ 0xF53B61E8) ^ ((v116 ^ 0xEA1C88EA) + (*(v48 + 4 * v107) ^ 0x1F27E902 ^ v116) - 2 * (*(v48 + 4 * v107) ^ 0x1F27E902 ^ v116))) + (v116 ^ 0xEA1C88EA);
  v120 = *&v47[4 * (HIBYTE(v108) ^ 0xB5)];
  v121 = v109;
  v122 = *(v46 + 4 * BYTE2(v106)) ^ 0x3B74A8B8 ^ (((2 * v120) & 0xB3034DE) + (v120 ^ v22));
  v123 = *(v48 + 4 * v106);
  v124 = v124;
  if (!(((v117 ^ 0x245341BA) + 1916040468) | v117 ^ 0x245341BA))
  {
    v124 = v122;
  }

  v125 = BYTE1(v107);
  v126 = *&v49[4 * (BYTE1(v107) ^ v24)];
  v127 = (*&v47[4 * HIBYTE(v107)] + v22) ^ *&v49[4 * (v121 ^ v24)] ^ v121 ^ v123 ^ 0x15CBF90E ^ v118;
  v128 = BYTE1(v119) ^ 0xB8;
  v129 = v126 ^ v125 ^ v122 ^ *(v48 + 4 * (v124 ^ 7u));
  v130 = ((*&v47[4 * HIBYTE(v127)] + v22) ^ *(v46 + 4 * ((v119 ^ 0x357BB800) >> 16)) ^ 0xEA1C88EA ^ ((v129 ^ 0x9342) >> 8) ^ *(v48 + 4 * (v117 ^ 0x95u)) ^ *&v49[4 * (((v129 ^ 0x9342) >> 8) ^ v24)]) + 824103333;
  v131 = ((2 * v130) & 0x9DC25CB6) + (v130 ^ 0xCEE12E5B);
  v132 = (*&v47[4 * (HIBYTE(v119) ^ 0xC7)] + v22) ^ *&v49[4 * (((v117 ^ 0xF892) >> 8) ^ v24)] ^ *(v48 + 4 * (v127 ^ 7u)) ^ *(v46 + 4 * ((v129 ^ 0xF44D9342) >> 16));
  v133 = v132 ^ ((v117 ^ 0xF892) >> 8);
  v134 = *(v46 + 4 * BYTE2(v127)) ^ (*&v47[4 * (HIBYTE(v114) ^ 0x98)] + v22) ^ *&v49[4 * (((v119 ^ 0xB800) >> 8) ^ v24)] ^ 0x4BFBE9D9 ^ *(v48 + 4 * (v129 ^ 0x45u));
  v135 = *(v46 + 4 * ((v117 ^ 0x6AF9F892u) >> 16)) ^ BYTE1(v127) ^ *&v49[4 * (BYTE1(v127) ^ v24)] ^ *(v48 + 4 * (v119 ^ 7u)) ^ (*&v47[4 * ((v129 ^ 0xF44D9342) >> 24)] + v22);
  v136 = BYTE1(v135) ^ 0x24;
  v137 = *(v46 + 4 * ((v131 ^ 0x35A0C691) >> 16)) ^ (*&v47[4 * HIBYTE(v134)] + v22) ^ ((v133 ^ 0x41D2) >> 8) ^ *&v49[4 * (((v133 ^ 0x41D2) >> 8) ^ v24)] ^ *(v48 + 4 * (v135 ^ 0x84u));
  v138 = HIWORD(v77);
  v139 = *(v46 + 4 * ((v133 ^ 0x746C41D2u) >> 16)) ^ *&v49[4 * (((v135 ^ 0x2483) >> 8) ^ v24)] ^ *(v48 + 4 * (v134 ^ v128)) ^ (*&v47[4 * (HIBYTE(v131) ^ 0xC7)] + v22);
  v140 = ((v131 ^ 0xC691) >> 8);
  v141 = *(v46 + 4 * ((v135 ^ 0xC8D92483) >> 16)) ^ (*&v47[4 * (HIBYTE(v132) ^ 0x86)] + v22) ^ *&v49[4 * (BYTE1(v134) ^ v24)] ^ *(v48 + 4 * ((((2 * v130) & 0xB6) + (v130 ^ 0x5B)) ^ 0x96u));
  v142 = *(v46 + 4 * BYTE2(v134)) ^ (*&v47[4 * (HIBYTE(v135) ^ 0x3A)] + v22) ^ *&v49[4 * (v140 ^ v24)];
  v143 = *(v48 + 4 * (v133 ^ 0xD5u));
  v144 = v140 ^ 0xEA1C88EA ^ v142;
  if ((v143 & 0x800000 & v142) != 0)
  {
    v145 = -(v143 & 0x800000);
  }

  else
  {
    v145 = v143 & 0x800000;
  }

  v146 = (v145 + v144) ^ v143 & 0xFF7FFFFF;
  v147 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6679) - 12;
  v148 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6264) - 8;
  v149 = *&v148[4 * (BYTE2(v139) ^ 0x8F)] ^ 0x6C56D810;
  v150 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1A82));
  v151 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6252) - 12;
  v152 = v149 ^ *&v147[4 * (HIBYTE(v137) ^ 0xFD)] ^ (*(v150 + 4 * (BYTE1(v141) ^ 0x2Du)) - 1204411238) ^ (v149 >> 1) & 0x2770D721 ^ *&v151[4 * (v146 ^ 0x94)];
  v153 = *&v148[4 * (BYTE2(v141) ^ 0x6F)] ^ 0x6C56D810;
  v154 = v153 ^ *&v147[4 * (HIBYTE(v139) ^ 0xA3)] ^ (v153 >> 1) & 0x2770D721 ^ *&v151[4 * (v137 ^ 0xFF)];
  v155 = *&v148[4 * (((v146 ^ 0x24E7E49C) >> (v138 & 0x10) >> (v138 & 0x10 ^ 0x10)) ^ 0xC1)] ^ 0x6C56D810;
  v156 = *(v150 + 4 * (BYTE1(v146) ^ 0xDFu)) - 1204411238;
  v157 = v155 ^ *&v147[4 * (HIBYTE(v141) ^ 0x56)] ^ (*(v150 + 4 * (BYTE1(v137) ^ 0x22u)) - 1204411238) ^ (v155 >> 1) & 0x2770D721 ^ *&v151[4 * ((v139 ^ v136) ^ 0x2F)];
  v158 = *&v147[4 * (HIBYTE(v146) ^ 0xF5)];
  LODWORD(v147) = *&v148[4 * (BYTE2(v137) ^ 0xBF)];
  v159 = *&v151[4 * ((v141 ^ BYTE1(v134)) ^ 0x56)] ^ (*(v150 + 4 * (BYTE1(v139) ^ 0x32u)) - 1204411238) ^ (v147 ^ 0x6C56D810 ^ v158) & 0xFFFFDFFF ^ (((v147 ^ 0x6C56D810) >> 1) & 0x2770D721 | (v147 ^ 0x6C56D810 ^ v158) & 0x2000);
  v160 = (((BYTE3(v157) ^ 0x44) - (BYTE3(v157) ^ 0x50)) ^ 0xFFFFFFF8) + (BYTE3(v157) ^ 0x44);
  v161 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6332) - 8;
  v27[8] = v161[v160 ^ 0xF4] ^ v160 ^ 0xAA;
  v162 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1B9C)) - 8;
  LODWORD(v147) = v162[v159 ^ 0x82] ^ 0x48;
  LODWORD(v160) = v162[v159 ^ 0x82] ^ 0x48 ^ (v147 >> 6) ^ (v147 >> 2);
  v27[15] = (((((v160 >> 4) | (16 * v160)) ^ 0x92) >> 4) | (16 * (((v160 >> 4) | (16 * v160)) ^ 0x92))) ^ 0xA5;
  v163 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1BAA)) - 8;
  v27[2] = v163[BYTE1(v152) ^ 0x96] ^ 0xEA;
  v164 = v154 ^ v156;
  *v27 = BYTE3(v152) ^ 0x52 ^ v161[BYTE3(v152) ^ 0x63];
  v165 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6112) - 12;
  v27[5] = v165[BYTE2(v164) ^ 0x8ELL] ^ (v165[BYTE2(v164) ^ 0x8ELL] >> 2) & 0x2E ^ 0xC3;
  LODWORD(v160) = v162[v164 ^ 0x98];
  v27[7] = (v160 ^ 0xEF) & 0xC0 | ((v160 ^ 0x48 ^ (((v160 ^ 0x48) & 0xC0) >> 4) ^ (4 * (v160 ^ 0xEF))) >> 2);
  v27[6] = v163[BYTE1(v164) ^ 0x31] ^ 0xC8;
  v27[13] = v165[BYTE2(v159) ^ 0x43] ^ 0xA1 ^ (v165[BYTE2(v159) ^ 0x43] >> 2) & 0x2E;
  LOBYTE(v160) = v162[v152 ^ 0xB6];
  LOBYTE(v156) = v160 ^ 0x48;
  v166 = v160 ^ 0x48;
  LOBYTE(v160) = v160 ^ 0xBE;
  LOBYTE(v156) = (v156 >> 6) ^ (v166 >> 2);
  v167 = (BYTE1(v157) ^ 0x5E) - ((2 * (BYTE1(v157) ^ 0x5E)) & 0x174u);
  v168 = v156 & 0x1E ^ (v160 & 0x9E);
  v169 = *(v25 - 108);
  v27[3] = v156 & 0xE1 ^ v160 & 0x61 | v156 & 0x1E ^ v160 & 0x9E;
  v27[10] = v163[(v167 + 186)] ^ 0x86;
  v27[12] = HIBYTE(v159) ^ 0x84 ^ v161[HIBYTE(v159) ^ 0x24];
  v27[1] = v165[BYTE2(v152) ^ 0xEFLL] ^ 0x69 ^ (v165[BYTE2(v152) ^ 0xEFLL] >> 2) & 0x2E;
  v27[14] = v163[BYTE1(v159) ^ 0x92] ^ 0x72;
  *(a19 + v174) = BYTE3(v164) ^ 0xE5 ^ v161[BYTE3(v164) ^ 0x41];
  v170 = v165[BYTE2(v157) ^ 0x82];
  v171 = v170 ^ 0x34;
  if (v173 == 192)
  {
    v171 = 75;
  }

  v27[9] = (v170 - 2 * (v171 & v170) + 75) ^ ((v170 - 2 * (v171 & v170) + 75) >> 2) & 0x2E ^ 1;
  v27[11] = v162[v157 ^ 0xFDLL] ^ ((v162[v157 ^ 0xFDLL] ^ 0x48) >> 6) ^ ((v162[v157 ^ 0xFDLL] ^ 0x48) >> 2) ^ 0xBB;
  return (*(a20 + 8 * ((204 * (((v169 + 16) ^ a18) != -1407945448)) ^ (a8 - 3265))))(v152, v163, v164, 134, v167, v168, v157, a8, a9, a10, a11, a12, a13, a14);
}

void sub_1969FB0B8(int a1@<W8>, uint64_t a2, int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v9 = (((&a3 | 0x7FA9972F) + (~&a3 | 0x805668D0)) ^ 0x30719419) * v6;
  a3 = v9 + a1;
  a4 = v9 + 436188070;
  a6 = v7 - v9 - 2195;
  a5 = 0;
  (*(v8 + 8 * (v7 + 3450)))(&a3);
  JUMPOUT(0x196A113B8);
}

uint64_t sub_1969FB18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = LOWORD(STACK[0x86C]);
  if (v13 == 26075)
  {
    v15 = STACK[0x598];
    STACK[0x708] = v8;
    LODWORD(STACK[0x4B8]) = v11;
    return (*(a6 + 8 * (((v15 + v9 == 0) * (((a8 + 730465546) & 0xD475EDF8) - 2396)) ^ (a8 - 1101))))(a1, a2, a3, a4, a5);
  }

  else
  {
    if (v13 == 45445 || (v14 = a8, v13 == 41591))
    {
      STACK[0x708] = v8;
      v10 = 1906239355;
      v14 = a8;
    }

    *STACK[0x380] = 0;
    LODWORD(STACK[0x4B8]) = -1720256293;
    return (*(a6 + 8 * ((((((((v14 - 1948217201) & 0x741F5BB7) - 291) | 0x46A) + 4187) ^ (((v14 - 1948217201) & 0x741F5BB7) + 5049)) * (v10 != v12)) ^ (v14 - 1948217201) & 0x741F5BB7)))(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1969FB2D0()
{
  result = v1;
  *(v1 + 24) = v2;
  return result;
}

void fp_dh_c60b89969c70fdc0929d1227b6edc64c(uint64_t a1)
{
  v1 = 1825732043 * (((a1 | 0x65EE05ED) - a1 + (a1 & 0x9A11FA12)) ^ 0x657856DA);
  __asm { BRAA            X12, X17 }
}

void sub_1969FB4E8(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x196A028B4);
}

void sub_1969FB544()
{
  LODWORD(STACK[0x3D0]) = -1720256289;
  STACK[0x410] = STACK[0x8B8] + 24;
  LODWORD(STACK[0x340]) = LODWORD(STACK[0xA64]) ^ 0xD8C2E756;
  v0 = LOWORD(STACK[0xA5E]);
  LODWORD(STACK[0x3C0]) = v0;
  LODWORD(STACK[0x3A0]) = v0 ^ 0xFFFFB88F;
  STACK[0x400] = STACK[0x620] + 24;
  v1 = LOWORD(STACK[0xB3E]);
  LODWORD(STACK[0x3B0]) = v1;
  LODWORD(STACK[0x390]) = v1 ^ 0xFFFF9583;
  LODWORD(STACK[0x330]) = LODWORD(STACK[0xB44]) ^ 0xD8C2E756;
  STACK[0x3F0] = STACK[0x520] + 24;
  STACK[0x3E0] = STACK[0x8A0] + 24;
  v2 = STACK[0xA60];
  LODWORD(STACK[0x360]) = STACK[0xA60];
  LODWORD(STACK[0x380]) = v2 ^ 0xD8C2E756;
  v3 = STACK[0xB40];
  LODWORD(STACK[0x350]) = STACK[0xB40];
  LODWORD(STACK[0x370]) = v3 ^ 0xD8C2E756;
  JUMPOUT(0x1969B5B2CLL);
}

uint64_t sub_1969FB5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = a23;
  *(v25 - 136) = a9 - 1575331711 * ((((v25 - 136) | 0x3B3FC089) - ((v25 - 136) & 0x3B3FC089)) ^ 0x5764558B) + 1403;
  v23[1] = v26;
  v23[2] = &a12;
  (*(v24 + 8 * (a9 ^ 0x19E8)))(v25 - 136, a2, a3, a4, a5, a6, a7, a8);
  *v23 = a23;
  *(v25 - 124) = a9 - 489239129 * ((v25 - 136) ^ 0xB9282336) + 67;
  v27 = (*(v24 + 8 * (a9 + 5994)))(v25 - 136);
  return (*(v24 + 8 * ((7074 * (*(v25 - 128) == (((a9 + 26226947) | 0x56044B10) ^ 0x260BF3AD))) ^ a9)))(v27);
}

uint64_t sub_1969FB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v22 = v9 - v10 + v7;
  *&v23 = v22 - 15;
  *(&v23 + 1) = v22 - 16;
  *&STACK[0x390] = v23;
  *&v23 = v22 - 13;
  *(&v23 + 1) = v22 - 14;
  *&STACK[0x370] = v23;
  v24.i64[0] = v22 - 5;
  v24.i64[1] = v22 - 6;
  v25.i64[0] = v22 - 3;
  v25.i64[1] = v22 - 4;
  v26 = v9 - v10 - 1;
  v27.i64[0] = v7 + v26;
  v27.i64[1] = v22 - 2;
  v28.i64[0] = (a6 + 213) + v22 - 3619;
  v28.i64[1] = v22 - 8;
  v29 = *&STACK[0x340];
  v30 = vandq_s8(v28, *&STACK[0x340]);
  v31 = vandq_s8(v27, *&STACK[0x340]);
  v32 = vandq_s8(v25, *&STACK[0x340]);
  v33 = vandq_s8(v24, *&STACK[0x340]);
  v34 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v38 = *&STACK[0x410];
  v39 = vaddq_s64(v36, *&STACK[0x410]);
  v40 = vaddq_s64(v35, *&STACK[0x410]);
  v42 = *&STACK[0x3F0];
  v41 = *&STACK[0x400];
  v43 = *&STACK[0x3E0];
  *&STACK[0x380] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3F0], v37), *&STACK[0x3E0]), vorrq_s8(vaddq_s64(v37, *&STACK[0x410]), *&STACK[0x400]));
  v44 = vaddq_s64(vorrq_s8(vsubq_s64(v42, v36), v43), vorrq_s8(v39, v41));
  v45 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v42, v34), v43), vorrq_s8(vaddq_s64(v34, v38), v41)));
  v46 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v42, v35), v43), vorrq_s8(v40, v41)));
  v47 = *&STACK[0x310];
  v48 = veorq_s8(v46, *&STACK[0x310]);
  v49 = veorq_s8(v45, *&STACK[0x310]);
  v50 = veorq_s8(v45, v16);
  v51 = veorq_s8(v46, v16);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50);
  v55 = *&STACK[0x2E0];
  v54 = *&STACK[0x2F0];
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), *&STACK[0x2F0]), v53), *&STACK[0x2E0]), v17);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), *&STACK[0x2F0]), v52), *&STACK[0x2E0]), v17);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = *&STACK[0x230];
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v18), vorrq_s8(v60, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x3D0]);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v18), vorrq_s8(v61, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x3D0]);
  v65 = *&STACK[0x3D0];
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v68 = veorq_s8(v63, v66);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v71 = *&STACK[0x2B0];
  v72 = *&STACK[0x3C0];
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x2B0]), v70), v21), *&STACK[0x3C0]);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x2B0]), v69), v21), *&STACK[0x3C0]);
  v75 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = vaddq_s64(v78, v76);
  v81 = *&STACK[0x3B0];
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), *&STACK[0x3B0]), v80), v19), v20);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v79, v79), *&STACK[0x3B0]), v79), v19), v20);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v12);
  v89 = veorq_s8(v87, v12);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v95 = veorq_s8(vaddq_s64(v93, v91), v15);
  v96 = veorq_s8(v94, v15);
  v97.i64[0] = v22 - 11;
  v97.i64[1] = v22 - 12;
  *&STACK[0x350] = v97;
  v98 = vsubq_s64(v13, v44);
  v99 = *&STACK[0x330];
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL))), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), *&STACK[0x330])));
  v205.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL))), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), *&STACK[0x330])));
  v100 = veorq_s8(v98, v47);
  v101 = veorq_s8(v98, v16);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v54), v102), v55), v17);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v18), vorrq_s8(v105, v62)), v62), v65);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v71), v108), v21), v72);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v111, v111), v81), v111), v19), v20);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v12);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v15);
  v91.i64[0] = v22 - 9;
  v91.i64[1] = v22 - 10;
  *&STACK[0x360] = v91;
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL)));
  v118 = vandq_s8(v91, v29);
  v119 = vsubq_s64(v13, *&STACK[0x380]);
  v205.val[0] = vshlq_u64(veorq_s8(v117, v14), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v99)));
  v120 = veorq_s8(v119, v47);
  v121 = veorq_s8(v119, v16);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = v55;
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v54), v122), v55), v17);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v18), vorrq_s8(v126, v62)), v62), v65);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v71), v129), v21), v72);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), v81), v132), v19), v20);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v12);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v15);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vandq_s8(v97, v29);
  v141 = vaddq_s64(v139, v138);
  v142 = *&STACK[0x370];
  v143 = vandq_s8(*&STACK[0x370], v29);
  v205.val[3] = vshlq_u64(veorq_s8(v141, v14), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v99)));
  v144 = *&STACK[0x390];
  v145 = vandq_s8(*&STACK[0x390], v29);
  v146 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v150 = *&STACK[0x410];
  v152 = *&STACK[0x3F0];
  v151 = *&STACK[0x400];
  v153 = *&STACK[0x3E0];
  *&STACK[0x380] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3F0], v149), *&STACK[0x3E0]), vorrq_s8(vaddq_s64(v149, *&STACK[0x410]), *&STACK[0x400]));
  v154 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v152, v146), v153), vorrq_s8(vaddq_s64(v146, v150), v151)));
  v155 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v152, v147), v153), vorrq_s8(vaddq_s64(v147, v150), v151)));
  v118.i64[0] = vqtbl4q_s8(v205, *&STACK[0x250]).u64[0];
  v205.val[0] = veorq_s8(v155, v47);
  v205.val[1] = veorq_s8(v154, v47);
  v205.val[2] = veorq_s8(v154, v16);
  v205.val[3] = veorq_s8(v155, v16);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[1], v205.val[1]), v54), v205.val[1]), v123), v17);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[0], v205.val[0]), v54), v205.val[0]), v123), v17);
  v156 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v156);
  v157 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(v157, v205.val[2]);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[0], v18), vorrq_s8(v205.val[0], v62)), v62), *&STACK[0x3D0]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[1], v18), vorrq_s8(v205.val[1], v62)), v62), *&STACK[0x3D0]);
  v205.val[2] = veorq_s8(v205.val[1], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[1], v205.val[1]), v71), v205.val[1]), v21), *&STACK[0x3C0]);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[0], v205.val[0]), v71), v205.val[0]), v21), *&STACK[0x3C0]);
  v158 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v158);
  v159 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(v159, v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[1], v205.val[1]), *&STACK[0x3B0]), v205.val[1]), *&STACK[0x3A0]), v20);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[0], v205.val[0]), *&STACK[0x3B0]), v205.val[0]), *&STACK[0x3A0]), v20);
  v160 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v160);
  v161 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = veorq_s8(vaddq_s64(v161, v205.val[2]), v12);
  v205.val[0] = veorq_s8(v205.val[0], v12);
  v162 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v162);
  v163 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = veorq_s8(vaddq_s64(v163, v205.val[2]), v15);
  v205.val[0] = veorq_s8(v205.val[0], v15);
  v164 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v165 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v152, v148), v153), vorrq_s8(vaddq_s64(v148, v150), v151)));
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), veorq_s8(v205.val[1], v164)), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v144, 3uLL), v99)));
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[2]), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v142, 3uLL), v99)));
  v166 = veorq_s8(v165, v47);
  v167 = veorq_s8(v165, v16);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), v54), v168), v123), v17);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v171, v18), vorrq_s8(v171, v62)), v62), *&STACK[0x3D0]);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), v71), v174), v21), *&STACK[0x3C0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v177, v177), *&STACK[0x3B0]), v177), *&STACK[0x3A0]), v20);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v12);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v15);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL)));
  v184 = vsubq_s64(v13, *&STACK[0x380]);
  v205.val[1] = vshlq_u64(veorq_s8(v183, v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v99)));
  v185 = veorq_s8(v184, v47);
  v186 = veorq_s8(v184, v16);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187, v187), v54), v187), v123), v17);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, v18), vorrq_s8(v190, v62)), v62), *&STACK[0x3D0]);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v193, v193), v71), v193), v21), *&STACK[0x3C0]);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v196, v196), *&STACK[0x3B0]), v196), *&STACK[0x3A0]), v20);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v12);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200), v15);
  v205.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL))), v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v99)));
  v118.i64[1] = vqtbl4q_s8(v205, *&STACK[0x250]).u64[0];
  v202 = vrev64q_s8(*(v6 + v26));
  v205.val[0].i64[0] = 0xECECECECECECECECLL;
  v205.val[0].i64[1] = 0xECECECECECECECECLL;
  v203 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v202, v202, 8uLL), v205.val[0]), v118));
  *(v7 + v26 - 15) = vextq_s8(v203, v203, 8uLL);
  return (*(v11 + 8 * (((v10 + 16 == v9) * v8) ^ a6)))();
}

uint64_t sub_1969FC2B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 ^ 0xF4A;
  v10 = a8 ^ 0xEBF;
  *a1 = 0;
  a1[1] = 0;
  *(v8 + 8) = a1;
  v11 = (*(a6 + 8 * ((a8 ^ 0xF4A) + 374)))(16, 0x20040A4A59CD2, a3, a4, a5);
  return (*(STACK[0x370] + 8 * (((v11 == 0) * (((v9 - 698) ^ 0xFFFFF1D1) + v10)) ^ v9)))();
}

uint64_t sub_1969FC334()
{
  v3 = STACK[0x628];
  STACK[0x790] = STACK[0x628];
  v4 = STACK[0x758];
  v5 = (((LODWORD(STACK[0x5CC]) ^ 0x8BA8E89E) + 1951864674) ^ ((LODWORD(STACK[0x5CC]) ^ 0xEFB57245) + 273321403) ^ ((((v0 + 2597) | 8) ^ LODWORD(STACK[0x5CC]) ^ 0xFD6B6C1C) + 43294208)) + 57936960;
  v6 = 753662761 * ((v2 - 1882258961 - 2 * ((v2 - 224) & 0x8FCF02CF)) ^ 0xEAD5F984);
  *(v2 - 200) = STACK[0x938];
  *(v2 - 192) = v3;
  *(v2 - 216) = v3;
  *(v2 - 176) = v4;
  *(v2 - 184) = (v0 + 1227) ^ v6;
  *(v2 - 224) = 1294227624 - v6;
  *(v2 - 220) = v5 ^ v6;
  v7 = (*(v1 + 8 * (v0 ^ 0x18A4)))(v2 - 224);
  return (*(v1 + 8 * ((3423 * (*(v2 - 208) == ((v0 + 2597) ^ 0x719F82E0))) ^ v0)))(v7);
}

uint64_t sub_1969FC630()
{
  v3 = STACK[0x970];
  STACK[0x430] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 == 0) * (((((v1 ^ 0x42F) - 826) | 0xC08) - 3263) ^ 0x166)) ^ v1 ^ 0x42F)))();
}

uint64_t sub_1969FC65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v13 = *(a1 + v5);
  v14 = v5 + a2;
  v15 = v5 - 1;
  *(v12 + v15) = *(a4 + v15) ^ *(v6 + v15) ^ (v15 * v7) ^ v13 ^ a3 ^ *(v14 + (v4 ^ v10) * v8 - 441);
  return (*(v11 + 8 * (((v15 == 0) * v9) ^ v4)))();
}

uint64_t sub_1969FC760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (((a9 ^ 0xF97FFF28) + 109045653 + v12) ^ ((a9 ^ 0xD2A123D6) + 761191466) ^ (((v13 - 1167382350) ^ a9) + 1167378989)) - 410362860;
  v16 = ((v15 ^ 0xA71109C2) + 221938907) ^ v15 ^ ((v15 ^ 0x576B12DF) - 46096440) ^ ((v15 ^ 0xD2518415) + 2021263630) ^ ((v15 ^ 0x77FFEDEF) - 573284104);
  v18 = v16 == (((v14 - 130) | 0x682) ^ 0x55D4756D) || (((v14 - 130) ^ 0x107) & v16) != 7;
  return (*(a2 + 8 * ((37 * v18) ^ v14)))(a1);
}

uint64_t sub_1969FC884(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

void sub_1969FC8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 96) - ((2 * *(a4 + 96)) & 0x4A) - 89);
  if (v6 == 166)
  {
    v10 = *(a4 + 64);
    v9 = *(a4 + 68);
    *(a4 + 56) = (v5 + 61 + 8 * (v9 - ((2 * v9) & 0x18)) - 20) ^ 0x8C;
    *(a4 + 57) = v4 ^ (v9 >> 5);
    *(a4 + 58) = v4 ^ (v9 >> 13);
    *(a4 + 59) = v4 ^ (v9 >> 21);
    *(a4 + 60) = ((__PAIR64__(v10, v9) >> 29) - ((2 * (__PAIR64__(v10, v9) >> 29)) & 0xAA) - 43) ^ 0x39;
    *(a4 + 61) = v4 ^ (v10 >> 5);
    *(a4 + 62) = v4 ^ (v10 >> 13);
    v8 = (v10 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    if (v6 != 169)
    {
      goto LABEL_6;
    }

    v8 = *(a4 + 64);
    v7 = *(a4 + 68);
    *(a4 + 56) = v4 ^ (v8 >> 21);
    *(a4 + 57) = v4 ^ (v8 >> 13);
    *(a4 + 58) = v4 ^ (v8 >> 5);
    *(a4 + 59) = ((__PAIR64__(v8, v7) >> 29) + (((v5 + 45) | 0x10) ^ 0xEB) - 2 * (__PAIR64__(v8, v7) >> 29) - 32) ^ 0x93;
    *(a4 + 60) = v4 ^ (v7 >> 21);
    *(a4 + 61) = v4 ^ (v7 >> 13);
    *(a4 + 62) = v4 ^ (v7 >> 5);
    LOBYTE(v8) = (8 * (v7 - ((2 * v7) & 4)) - 112) ^ 0x7C;
  }

  *(a4 + 63) = v8;
LABEL_6:
  JUMPOUT(0x1969CE738);
}

uint64_t sub_1969FCA1C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1EDA)))();
  STACK[0x788] = 0;
  return (STACK[0x7C0])(v2);
}

uint64_t sub_1969FCA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * ((-1022599485 - (&a13 | 0xC30C5EC3) + (&a13 | 0x3CF3A13C)) ^ 0xB85A29D0);
  a16 = a9;
  a17 = &a11;
  a13 = v21 ^ 0x80F33AA;
  a15 = v21 + 658859819;
  a18 = v21 + v20 - 1795305284;
  v22 = (*(v18 + 8 * (v20 + 4767)))(&a13, a2, a3, a4, a5, a6, a7, a8);
  return (*(v18 + 8 * (((a14 == v19) * (((v20 - 997) | 0x44) + (v20 ^ 0x158F))) ^ v20)))(v22);
}

uint64_t sub_1969FCB20@<X0>(int a1@<W8>)
{
  v9 = v2 < v3;
  *(v6 + v4 + 24) = *(v5 + v4) ^ 0xEC;
  if (v9 == v4 + 1 > 0xBAA09236)
  {
    v9 = a1 + v4 + 3474 < v2;
  }

  return (*(v7 + 8 * ((v9 * (v1 + 4511)) ^ v8)))();
}

uint64_t sub_1969FCBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v20 - 144) = a11;
  *(v20 - 128) = &a14;
  *(v20 - 120) = a12;
  *(v20 - 136) = (v17 + 3569) ^ (1575331711 * ((((v20 - 144) | 0x14E3640E) - (v20 - 144) + ((v20 - 144) & 0xEB1C9BF0)) ^ 0x78B8F10C));
  *(v20 - 112) = &a14;
  (*(v19 + 8 * (v17 ^ 0x189F)))(v20 - 144, a2, a3, a4, a5, a6, a7, a8);
  *(v20 - 128) = a11;
  *(v20 - 120) = &a14;
  *(v20 - 112) = &a16;
  *(v20 - 104) = a12;
  *(v20 - 144) = &a14;
  *(v20 - 136) = v17 + 1283153057 * ((~((v20 - 144) | 0x2FBC07F6) + ((v20 - 144) & 0x2FBC07F6)) ^ 0x9F9BFB3E) + 3553;
  v21 = (*(v19 + 8 * (v17 + 6208)))(v20 - 144);
  return (*(v19 + 8 * ((247 * (v18 + v17 + 595 - 1188 + ((v17 - 1714612176) & 0x6632FF9F) + ((v17 - 1090913104) & 0x41060FCEu) - 1516664616 > 0x7FFFFFFE)) ^ (v17 + 30))))(v21);
}

uint64_t sub_1969FCF48@<X0>(char a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(a2 + v4 + a4) = *(a3 + v4);
  v7 = ((v5 + 315) ^ 0x687) + v4 == (a1 & 0x78);
  return (*(v6 + 8 * (((4 * v7) | (8 * v7)) ^ v5)))();
}

void fp_dh_bd5bc70e390364e04a386e950f9e336e(uint64_t a1)
{
  v1 = 998242381 * ((-2 - ((a1 | 0xDAE77CE3) + (~a1 | 0x2518831C))) ^ 0x8F771BCA);
  v2 = *(a1 + 20) ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v1;
  v5 = (8 * (((v4 ^ 0x7BA2CC7D) + 369462888) ^ v4 ^ ((v4 ^ 0x184A5B36) + 367860013) ^ ((v4 ^ 0xE4BD5D1) + 65837004) ^ ((v4 ^ 0x1FFBFF7F) + 308067686))) ^ 0x92C5EF28;
  v6 = *(v3 + 16);
  v7 = *(v3 + 20) + __CFADD__(v5, v6) + (((((v4 ^ 0x7B25357) - 1441459890) ^ v4 ^ ((v4 ^ 0xEA40EE1C) + 1206365191) ^ ((v4 ^ 0xC655EF50) + 1811066188) ^ ((v4 ^ 0x79FFEFFE) - 732385818)) >> 29) ^ 2);
  *(v3 + 16) = v5 + v6;
  *(v3 + 20) = v7;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1969FD1DC@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 8) = 1906239529;
  return result;
}

uint64_t sub_1969FD224@<X0>(unsigned int a1@<W8>, uint8x8_t a2@<D0>, int8x8_t a3@<D1>, int16x4_t a4@<D2>)
{
  v11 = (v7 & v8) - v6 - 3985;
  a2.i32[0] = *(v4 + v11);
  v12 = vmovl_u8(a2).u64[0];
  v13 = vadd_s16(vsub_s16(v12, vand_s8(vadd_s16(v12, v12), a3)), a4);
  *(v5 + v11) = vuzp1_s8(v13, v13).u32[0];
  return (*(v10 + 8 * (((v6 == 16) * v9) ^ a1)))(0);
}

uint64_t sub_1969FD278@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a2 + v7) = *(v5 + v7) - ((v2 + a1) & (2 * *(v5 + v7))) - 20;
  return (*(v6 + 8 * (((v7 != 0) * v4) ^ v2)))();
}

uint64_t sub_1969FD2B0()
{
  v1 = STACK[0x4A0];
  v2 = STACK[0x958];
  v3 = &STACK[0xB70] + STACK[0x958];
  STACK[0x938] = v3;
  v4 = v3 + 16;
  STACK[0x758] = (v3 + 16);
  STACK[0x4E8] = (v3 + 48);
  STACK[0x958] = v2 + 80;
  (*(STACK[0x248] + 8 * (v0 + 4092)))();
  v5 = v4;
  v6 = STACK[0x248];
  v7 = (*(STACK[0x248] + 8 * (v0 ^ 0x101C)))(v5, 0, 32);
  STACK[0x970] = 0;
  STACK[0x628] = 0;
  LODWORD(STACK[0x5CC]) = -1720256293;
  STACK[0x960] = 0;
  LODWORD(STACK[0x5F4]) = 0;
  STACK[0x578] = v1;
  return (*(v6 + 8 * (((v1 == 0) * (v0 + 809 + ((2 * v0) ^ 0x153C) - 3336)) ^ v0)))(v7);
}

uint64_t fp_dh_62a60ff91a25c8719d77607882cde384(uint64_t a1)
{
  v210 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v194 = (*v2 ^ 0x7DFFBFFB) - 6390617 + ((2 * *v2) & 0xFBFF7FF6);
  v195 = (v2[1] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[1]) & 0xFBFF7FF6);
  v196 = (v2[2] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[2]) & 0xFBFF7FF6);
  v197 = (v2[3] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[3]) & 0xFBFF7FF6);
  v198 = (v2[4] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[4]) & 0xFBFF7FF6);
  v199 = (v2[5] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[5]) & 0xFBFF7FF6);
  v200 = (v2[6] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[6]) & 0xFBFF7FF6);
  v201 = (v2[7] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[7]) & 0xFBFF7FF6);
  v202 = (v2[8] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[8]) & 0xFBFF7FF6);
  v203 = (v2[9] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[9]) & 0xFBFF7FF6);
  v204 = (v2[10] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[10]) & 0xFBFF7FF6);
  v205 = (v2[11] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[11]) & 0xFBFF7FF6);
  v206 = (v2[12] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[12]) & 0xFBFF7FF6);
  v207 = (v2[13] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[13]) & 0xFBFF7FF6);
  v208 = (v2[14] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[14]) & 0xFBFF7FF6);
  v209 = (v2[15] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[15]) & 0xFBFF7FF6);
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  LODWORD(v2) = v194;
  v6 = *v1 + v194 + 1861378123 + ((((v5 & v3 | v4 & ~v3) ^ 0xB04A7D72) + 1123460547) ^ (((v5 & v3 | v4 & ~v3) ^ 0x18C1EB7D) - 360893490) ^ (((v5 & v3 | v4 & ~v3) ^ 0xA88B960F) + 1513574080));
  v7 = (2 * (v6 & 0xF81D2EDA ^ 0xA528A42A)) & 0xA0280420 ^ v6 & 0xF81D2EDA ^ 0xA528A42A ^ ((2 * (v6 & 0xF81D2EDA ^ 0xA528A42A)) ^ 0x4A514854) & (v6 ^ 0x5D358AF0);
  v8 = (2 * (v6 ^ 0x5D358AF0)) & 0xA528A42A ^ 0xA528A42A ^ ((2 * (v6 ^ 0x5D358AF0)) ^ 0x4A514854) & (v6 ^ 0x5D358AF0);
  v9 = (4 * v7) & 0xA528A428 ^ v7 ^ ((4 * v7) ^ 0x94A290A8) & v8;
  v10 = (4 * v8) & 0xA528A428 ^ 0x21082402 ^ ((4 * v8) ^ 0x94A290A8) & v8;
  v11 = (16 * v9) & 0xA528A420 ^ v9 ^ ((16 * v9) ^ 0x10824020) & v10;
  v12 = (16 * v10) & 0xA528A420 ^ 0xA520A40A ^ ((16 * v10) ^ 0x528A42A0) & v10;
  v13 = v11 ^ (v11 << 8) & 0xA528A400 ^ ((v11 << 8) ^ 0x8242200) & v12 ^ 0x8400A008;
  v14 = (v13 << 16) & 0x280000 ^ v13 ^ ((v13 << 16) ^ 0x2A0000) & ((v12 << 8) & 0x280000 ^ ((v12 << 8) ^ 0xA40000) & v12 ^ 0x80000);
  v15 = (v6 ^ 0xFE5D8CD2) & (2 * (v6 & 0xF81D2EDA)) ^ v6 & 0xF81D2EDA;
  v16 = ((2 * (v6 ^ 0x9E4F8972)) ^ 0xCCA54F50) & (v6 ^ 0x9E4F8972) ^ (2 * (v6 ^ 0x9E4F8972)) & 0x6652A7A8;
  v17 = (v16 ^ 0x40000700) & (4 * v15) ^ v15;
  v18 = ((4 * (v16 ^ 0x2252A0A8)) ^ 0x994A9EA0) & (v16 ^ 0x2252A0A8) ^ (4 * (v16 ^ 0x2252A0A8)) & 0x6652A7A8;
  v19 = (v18 ^ 0x4286A0) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x66102108)) ^ 0x652A7A80) & (v18 ^ 0x66102108) ^ (16 * (v18 ^ 0x66102108)) & 0x6652A7A0;
  v21 = v19 ^ 0x6652A7A8 ^ (v20 ^ 0x64022200) & (v19 << 8);
  v22 = ((v14 << 8) ^ (v6 << 7)) & 0xFFFFFF80 | ((v6 ^ (2 * ((v21 << 16) & 0x66666666 ^ v21 ^ ((v21 << 16) ^ 0x27000000) & (((v20 ^ 0x2508528) << 8) & 0x66520000 ^ 0x24000000 ^ (((v20 ^ 0x2508528) << 8) ^ 0x52A70000) & (v20 ^ 0x2508528))))) >> 25);
  v23 = v3 - 1442212664 + (((v22 ^ 0x4122D2BC) + 304852658) ^ ((v22 ^ 0x56CAACF9) + 96719093) ^ ((v22 ^ 0x19DB3979) + 1255294325));
  v24 = ((v23 ^ 0xD9DAD18A) + 560390544) ^ v23 ^ ((v23 ^ 0x3B964ED5) - 1020625199) ^ ((v23 ^ 0x98F1BF1A) + 1615695648) ^ ((v23 ^ 0x7DFEEFBF) - 2059214917);
  v25 = v3 & (v24 ^ 0x743CFFA) | v5 & ~(v24 ^ 0x743CFFA);
  v26 = v4 + v195 + 180059365 + (((v25 ^ 0xDE678F9F) + 1931459056) ^ ((v25 ^ 0x2806098) - 1342679319) ^ ((v25 ^ 0xDCE7EF07) + 1906301304));
  v27 = (v26 ^ 0xB8F1F71E) & (2 * (v26 & 0xB2F5C75E)) ^ v26 & 0xB2F5C75E;
  v28 = ((2 * (v26 ^ 0xD8F07FAE)) ^ 0xD40B71E0) & (v26 ^ 0xD8F07FAE) ^ (2 * (v26 ^ 0xD8F07FAE)) & 0x6A05B8F0;
  v29 = v28 ^ 0x2A048810;
  v30 = (v28 ^ 0x400130E0) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0xA816E3C0) & v29 ^ (4 * v29) & 0x6A05B8F0;
  v32 = v30 ^ 0x6A05B8F0 ^ (v31 ^ 0x2804A0C0) & (16 * v30);
  v33 = (16 * (v31 ^ 0x42011830)) & 0x6A05B8F0 ^ 0x4A0430F0 ^ ((16 * (v31 ^ 0x42011830)) ^ 0xA05B8F00) & (v31 ^ 0x42011830);
  v34 = (v32 << 8) & 0x6A05B800 ^ v32 ^ ((v32 << 8) ^ 0x5B8F000) & v33;
  HIDWORD(v35) = ((v26 ^ 0xDF1787C9) + 147605) ^ v26 ^ ((v26 ^ 0x8DB00) + 859230) ^ ((v26 ^ 0xA9B14) + 1006666) ^ ((v26 ^ 0xFFFFFF7F) + 669731);
  LODWORD(v35) = v26 ^ (2 * ((v34 << 16) & 0x6A000000 ^ v34 ^ ((v34 << 16) ^ 0x8F00000) & ((v33 << 8) & 0x6A050000 ^ 0x6A000000 ^ ((v33 << 8) ^ 0x5B80000) & v33)));
  v36 = (((v24 ^ 0xD5A54741) - 2069529345) ^ ((v24 ^ 0xD957D142) - 2007504130) ^ ((v24 ^ 0xBB159F9) + 1521574471)) - 1249987870 + ((((v35 >> 20) ^ 0x8604165F) + 1118985294) ^ (((v35 >> 20) ^ 0xD9446BD6) + 502407621) ^ (((v35 >> 20) ^ 0xFCCA5AE6) + 947654901));
  v37 = ((v36 ^ 0xBE06EC31) + 856033129) ^ v36 ^ ((v36 ^ 0x2DD41C6B) - 1596655821) ^ ((v36 ^ 0x1E421B07) - 1824329633) ^ ((v36 ^ 0xFF6FFFFB) + 1919882403);
  v38 = (v24 ^ v3) & 0x887710D5 ^ v3 ^ (v37 ^ 0xFA880473) & (v24 ^ v3 ^ 0x743CFFA);
  v39 = v5 + v196 - 11706683 + (((v38 ^ 0x3D999562) - 1910174723) ^ ((v38 ^ 0x3B3DD0B0) - 2004791761) ^ ((v38 ^ 0x6E74502) - 1252271203));
  v40 = (v39 ^ 0xEA212601) & (2 * (v39 & 0xF3353725)) ^ v39 & 0xF3353725;
  v41 = ((2 * (v39 ^ 0x6A016E01)) ^ 0x3268B248) & (v39 ^ 0x6A016E01) ^ (2 * (v39 ^ 0x6A016E01)) & 0x99345924;
  v42 = v41 ^ 0x89144924;
  v43 = (v41 ^ 0x10201000) & (4 * v40) ^ v40;
  v44 = ((4 * v42) ^ 0x64D16490) & v42 ^ (4 * v42) & 0x99345924;
  v45 = v43 ^ 0x99345924 ^ (v44 ^ 0x104000) & (16 * v43);
  v46 = (16 * (v44 ^ 0x99241924)) & 0x99345920 ^ 0x8304924 ^ ((16 * (v44 ^ 0x99241924)) ^ 0x93459240) & (v44 ^ 0x99241924);
  v47 = (v45 << 8) & 0x99345900 ^ v45 ^ ((v45 << 8) ^ 0x34592400) & v46;
  HIDWORD(v35) = ((v39 ^ 0xABE23184) + 1697) ^ v39 ^ ((v39 ^ 0xEF8) + 14813) ^ ((v39 ^ 0xC48) + 15213) ^ ((v39 ^ 0x7BEF) + 19660);
  LODWORD(v35) = v39 ^ (2 * ((v47 << 16) & 0x19340000 ^ v47 ^ ((v47 << 16) ^ 0x59240000) & ((v46 << 8) & 0x19340000 ^ 0x9240000 ^ ((v46 << 8) ^ 0x34590000) & v46)));
  v48 = (((v37 ^ 0x132678E7) - 788232848) ^ ((v37 ^ 0xAB562D2D) + 1769263270) ^ ((v37 ^ 0xCA8F416C) + 145603813)) + 1583787253 + ((((v35 >> 15) ^ 0x9228FEB0) + 1873898864) ^ (((v35 >> 15) ^ 0x7F47CD) - 35204077) ^ (((v35 >> 15) ^ 0x3E01F16) - 25588534));
  v49 = (v48 ^ 0x164835A7) & (2 * (v48 & 0x848D3427)) ^ v48 & 0x848D3427;
  v50 = ((2 * (v48 ^ 0x1E4015E9)) ^ 0x359A439C) & (v48 ^ 0x1E4015E9) ^ (2 * (v48 ^ 0x1E4015E9)) & 0x9ACD21CE;
  v51 = v50 ^ 0x8A452042;
  v52 = (v50 ^ 0x1008018C) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x6B348738) & v51 ^ (4 * v51) & 0x9ACD21CC;
  v54 = v52 ^ 0x9ACD21CE ^ (v53 ^ 0xA040100) & (16 * v52);
  v55 = (16 * (v53 ^ 0x90C920C6)) & 0x9ACD21C0 ^ 0x120D210E ^ ((16 * (v53 ^ 0x90C920C6)) ^ 0xACD21CE0) & (v53 ^ 0x90C920C6);
  v56 = (v54 << 8) & 0x9ACD2100 ^ v54 ^ ((v54 << 8) ^ 0xCD21CE00) & v55;
  v57 = v48 ^ (2 * ((v56 << 16) & 0x1ACD0000 ^ v56 ^ ((v56 << 16) ^ 0x21CE0000) & ((v55 << 8) & 0x1ACD0000 ^ 0x12CC0000 ^ ((v55 << 8) ^ 0x4D210000) & v55)));
  v58 = (v37 ^ 0x3DDD0277 ^ v24 ^ 0xAEFFC440) & 0xA1339E51 ^ v24 ^ 0xAEFFC440 ^ (v57 ^ 0x1BEE9EA) & (v37 ^ 0x3DDD0277 ^ v24 ^ 0xAEFFC440 ^ 0xE69E1D6B);
  v59 = v3 + v197 - 894254343 + (((v58 ^ 0x88E449A3) + 1655578339) ^ ((v58 ^ 0x2C66F6B6) - 970153480) ^ ((v58 ^ 0xAD2CA8EE) + 1197932464));
  v60 = (v59 ^ 0xC1826E12) & (2 * (v59 & 0x95888E98)) ^ v59 & 0x95888E98;
  v61 = ((2 * (v59 ^ 0xE1826302)) ^ 0xE815DB34) & (v59 ^ 0xE1826302) ^ (2 * (v59 ^ 0xE1826302)) & 0x740AED9A;
  v62 = v61 ^ 0x140A248A;
  v63 = (v61 ^ 0x60004800) & (4 * v60) ^ v60;
  v64 = ((4 * v62) ^ 0xD02BB668) & v62 ^ (4 * v62) & 0x740AED98;
  v65 = (v64 ^ 0x500AA400) & (16 * v63) ^ v63;
  v66 = ((16 * (v64 ^ 0x24004992)) ^ 0x40AED9A0) & (v64 ^ 0x24004992) ^ (16 * (v64 ^ 0x24004992)) & 0x740AED90;
  v67 = v65 ^ 0x740AED9A ^ (v66 ^ 0x400AC900) & (v65 << 8);
  HIDWORD(v35) = ((v59 ^ 0x5DFF2A1E) + 138) ^ v59 ^ ((v59 ^ 0x23A) + 174) ^ ((v59 ^ 0x2B2) + 38) ^ ((v59 ^ 0x3FE) + 362);
  LODWORD(v35) = v59 ^ (2 * (((v67 << 16) ^ 0x6D9A0000) & (((v66 ^ 0x3400241A) << 8) & 0x740A0000 ^ 0x74020000 ^ (((v66 ^ 0x3400241A) << 8) ^ 0xAED0000) & (v66 ^ 0x3400241A)) ^ v67 ^ ((v67 << 16) & 0x740A0000 | 0x2C00)));
  v68 = (((v57 ^ 0xCC062F3) - 569319125) ^ ((v57 ^ 0x9D9CD0EC) + 1330402102) ^ ((v57 ^ 0x31D1C5A4) - 486455682)) + 1604149989 + ((((v35 >> 10) ^ 0xAD14470E) + 1626189406) ^ (((v35 >> 10) ^ 0xFA91A28D) + 929582047) ^ (((v35 >> 10) ^ 0xDA887C0) - 1068405100));
  v69 = (v68 ^ 0x54B49D87) & (2 * (v68 & 0x96301DA7)) ^ v68 & 0x96301DA7;
  v70 = ((2 * (v68 ^ 0x78B4868F)) ^ 0xDD093650) & (v68 ^ 0x78B4868F) ^ (2 * (v68 ^ 0x78B4868F)) & 0xEE849B28;
  v71 = v70 ^ 0x22848928;
  v72 = (v70 ^ 0xC8001200) & (4 * v69) ^ v69;
  v73 = ((4 * v71) ^ 0xBA126CA0) & v71 ^ (4 * v71) & 0xEE849B28;
  v74 = (v73 ^ 0xAA000820) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x44849308)) ^ 0xE849B280) & (v73 ^ 0x44849308) ^ (16 * (v73 ^ 0x44849308)) & 0xEE849B20;
  v76 = v74 ^ 0xEE849B28 ^ (v75 ^ 0xE8009200) & (v74 << 8);
  v77 = v68 ^ (2 * ((v76 << 16) & 0x6E840000 ^ v76 ^ ((v76 << 16) ^ 0x1B280000) & (((v75 ^ 0x6840928) << 8) & 0x6E840000 ^ 0x6A040000 ^ (((v75 ^ 0x6840928) << 8) ^ 0x49B0000) & (v75 ^ 0x6840928))));
  v78 = (v57 ^ 0x2D2F7C26 ^ v37 ^ 0x3DDD0277) & 0x86AC2BEA ^ v37 ^ 0x3DDD0277 ^ (v77 ^ 0xD995001D) & (v57 ^ 0x2D2F7C26 ^ v37 ^ 0x3DDD0277 ^ 0xC2801D4C);
  v79 = v198 + (((v24 ^ 0x17E816F2) + 1189621070) ^ ((v24 ^ 0x4F3FEFCF) + 507499633) ^ ((v24 ^ 0x5F9436C7) + 244583801)) - 1522700971 + (((v78 ^ 0x431126F5) + 1825910136) ^ ((v78 ^ 0x9D98B707) - 1302545274) ^ ((v78 ^ 0x132B8E6B) + 1022330346));
  HIDWORD(v35) = ((v79 ^ 0x921BA672) + 32373544) ^ v79 ^ ((v79 ^ 0x6BB1AD) + 27127033) ^ ((v79 ^ 0x1926A8A) + 6567904) ^ ((v79 ^ 0x1EBDFFF) + 1933995);
  LODWORD(v35) = ((v79 ^ 0xAFCE5562) + 909641784) ^ v79 ^ ((v79 ^ 0xCFED138) - 1794601874) ^ ((v79 ^ 0x3AE6D900) - 1559198624) ^ ((v79 ^ 0xFFDFFFF0) + 1714004656);
  v80 = (((v77 ^ 0x2ACCA060) + 165489556) ^ ((v77 ^ 0xA10C9E97) - 2112023195) ^ ((v77 ^ 0xD4F91500) - 135749900)) - 542670972 + ((((v35 >> 25) ^ 0x437507F6) - 256548281) ^ (((v35 >> 25) ^ 0xD137843C) + 1660412301) ^ (((v35 >> 25) ^ 0x9693D6F9) + 626242378));
  v81 = (v80 ^ 0xE91E8FFA) & (2 * (v80 & 0xED1EAFF3)) ^ v80 & 0xED1EAFF3;
  v82 = ((2 * (v80 ^ 0xF91E88F8)) ^ 0x28004E16) & (v80 ^ 0xF91E88F8) ^ (2 * (v80 ^ 0xF91E88F8)) & 0x1400270A;
  v83 = v82 ^ 0x14002109;
  v84 = (v82 ^ 0x600) & (4 * v81) ^ v81;
  v85 = ((4 * v83) ^ 0x50009C2C) & v83 ^ (4 * v83) & 0x14002708;
  v86 = (v85 ^ 0x10000400) & (16 * v84) ^ v84;
  v87 = ((16 * (v85 ^ 0x4002303)) ^ 0x400270B0) & (v85 ^ 0x4002303) ^ (16 * (v85 ^ 0x4002303)) & 0x14002700;
  v88 = v86 ^ 0x1400270B ^ (v87 ^ 0x2000) & (v86 << 8);
  v89 = v80 ^ (2 * (((v88 << 16) ^ 0x270B0000) & (((v87 ^ 0x1400070B) << 8) & 0x14000000 ^ 0x14000000 ^ (((v87 ^ 0x1400070B) << 8) ^ 0x270000) & (v87 ^ 0x1400070B)) ^ v88 ^ ((v88 << 16) & 0x14000000 | 0x270A)));
  v90 = (v77 ^ 0xDCEE740C ^ v57 ^ 0x2D2F7C26) & 0x87657EE0 ^ v57 ^ 0x2D2F7C26 ^ (v89 ^ 0x4A7BD111) & (v77 ^ 0xDCEE740C ^ v57 ^ 0x2D2F7C26 ^ 0xE755466);
  v91 = v199 + (((v37 ^ 0x66E3BE6E) - 1530838041) ^ ((v37 ^ 0x6413D47F) - 1506727432) ^ ((v37 ^ 0x700F7EB7) - 1305640128)) + 198830763 + (((v90 ^ 0x8850F167) + 2132646521) ^ ((v90 ^ 0xD0F64131) + 666577455) ^ ((v90 ^ 0xD361EFAB) + 606897333));
  v92 = 2 * (v91 & 0x90A780CB);
  v93 = ((2 * (v91 ^ 0xFC814551)) ^ 0xD84D8B34) & (v91 ^ 0xFC814551) ^ (2 * (v91 ^ 0xFC814551)) & 0x6C26C59A;
  v94 = (v93 ^ 0x40040110) & (4 * (v92 & (v91 ^ 0xDC8744C3) ^ v91 & 0x90A780CB)) ^ v92 & (v91 ^ 0xDC8744C3) ^ v91 & 0x90A780CB;
  v95 = ((4 * (v93 ^ 0x2422448A)) ^ 0xB09B1668) & (v93 ^ 0x2422448A) ^ (4 * (v93 ^ 0x2422448A)) & 0x6C26C598;
  v96 = (v95 ^ 0x20020400) & (16 * v94) ^ v94;
  v97 = ((16 * (v95 ^ 0x4C24C192)) ^ 0xC26C59A0) & (v95 ^ 0x4C24C192) ^ (16 * (v95 ^ 0x4C24C192)) & 0x6C26C590;
  v98 = v96 ^ 0x6C26C59A ^ (v97 ^ 0x40244100) & (v96 << 8);
  v99 = (v98 << 16) & 0x60000 ^ v98 ^ ((v98 << 16) ^ 0x20000) & (((v97 ^ 0x2C02841A) << 8) & 0x60000 ^ (((v97 ^ 0x2C02841A) << 8) ^ 0x50000) & (v97 ^ 0x2C02841A) ^ 0x20000);
  v100 = v92 & (v91 ^ 0xC2370C83) ^ v91 & 0x90A780CB;
  v101 = ((2 * (v91 ^ 0xE2760D91)) ^ 0xE5A31AB4) & (v91 ^ 0xE2760D91) ^ (2 * (v91 ^ 0xE2760D91)) & 0x72D18D5A;
  v102 = v101 ^ 0x1250854A;
  v103 = (v101 ^ 0x40800010) & (4 * v100) ^ v100;
  v104 = ((4 * v102) ^ 0xCB463568) & v102 ^ (4 * v102) & 0x72D18D58;
  v105 = (v104 ^ 0x42400540) & (16 * v103) ^ v103;
  v106 = ((16 * (v104 ^ 0x30918812)) ^ 0x2D18D5A0) & (v104 ^ 0x30918812) ^ (16 * (v104 ^ 0x30918812)) & 0x72D18D50;
  v107 = v105 ^ 0x72D18D5A ^ (v106 ^ 0x20108500) & (v105 << 8);
  v108 = ((v99 << 13) ^ (v91 << 12)) & 0xFFFFF000 | ((v91 ^ (2 * ((v107 << 16) & 0x72D00000 ^ v107 ^ ((v107 << 16) ^ 0xD580000) & (((v106 ^ 0x52C1085A) << 8) & 0x72D10000 ^ 0x22500000 ^ (((v106 ^ 0x52C1085A) << 8) ^ 0x518D0000) & (v106 ^ 0x52C1085A))))) >> 20);
  v109 = (((v89 ^ 0x9DE18ED6) + 713601274) ^ ((v89 ^ 0xBF6A9899) + 134457015) ^ ((v89 ^ 0xEF95B9BE) + 1492944786)) - 1578863399 + (((v108 ^ 0xBF56C184) + 1064566519) ^ ((v108 ^ 0x2DD4D43E) - 1376654515) ^ ((v108 ^ 0x723DE2E0) - 233251437));
  v110 = ((v109 ^ 0x7F1484CE) - 65161775) ^ v109 ^ ((v109 ^ 0xD46DDB31) + 1466231344) ^ ((v109 ^ 0x28706E41) - 1418109088) ^ ((v109 ^ 0xFFFFFF5F) + 2096549442);
  v111 = (v89 ^ 0x4896C1D0 ^ v77 ^ 0xDCEE740C) & 0x8DDDB2F4 ^ v77 ^ 0xDCEE740C ^ (v110 ^ 0xF12B7C15) & (v89 ^ 0x4896C1D0 ^ v77 ^ 0xDCEE740C ^ 0x65F31DA);
  HIDWORD(v35) = v200 + (v57 ^ 0xA08D77BB) + 37109257 + (((v111 ^ 0xCF94AD11) + 1615137118) ^ ((v111 ^ 0x478B8D18) - 396744363) ^ ((v111 ^ 0xF954F22) - 1606096017));
  LODWORD(v35) = HIDWORD(v35);
  v112 = v110 ^ 0x9E966AF3;
  v113 = v110 ^ 0x7CF6CEE1;
  v114 = (v35 >> 15) + (v110 ^ 0x7CF6CEE1);
  HIDWORD(v35) = v201 + (v77 ^ 0x5F392BF7) + 2141739103 + (((v114 & (v89 ^ 0xB1E86110 ^ v110)) - ((2 * (v114 & (v89 ^ 0xB1E86110 ^ v110))) & 0xB10DC42) - 2054656479) ^ v89 ^ 0x4896C1D0);
  LODWORD(v35) = HIDWORD(v35);
  v115 = (v35 >> 10) + v114;
  v116 = v115 & ((v114 - ((2 * v114) & 0xC4C14824) - 496983022) ^ v112);
  HIDWORD(v35) = v202 + (v89 ^ 0xCD1EAFF1) - 337486794 + ((v116 - ((2 * v116) & 0xC4C14824) - 496983022) ^ v112);
  LODWORD(v35) = HIDWORD(v35);
  v117 = (v35 >> 25) + v115;
  HIDWORD(v35) = v203 + v113 + 229030669 + (v115 & v117 | v114 & ~v117);
  LODWORD(v35) = HIDWORD(v35);
  v118 = (v35 >> 20) + v117;
  HIDWORD(v35) = v204 + v114 - 2107564273 + (v117 & v118 | v115 & ~v118);
  LODWORD(v35) = HIDWORD(v35);
  v119 = (v35 >> 15) + v118;
  HIDWORD(v35) = v205 + v115 + 197040924 + (v118 & v119 | v117 & ~v119);
  LODWORD(v35) = HIDWORD(v35);
  v120 = (v35 >> 10) + v119;
  HIDWORD(v35) = v206 + v117 - 302918528 + (v119 & v120 | v118 & ~v120);
  LODWORD(v35) = HIDWORD(v35);
  v121 = (v35 >> 25) + v120;
  HIDWORD(v35) = v207 + v118 + 2147103985 + (v120 & v121 | v119 & ~v121);
  LODWORD(v35) = HIDWORD(v35);
  v122 = (v35 >> 20) + v121;
  HIDWORD(v35) = v208 + v119 + 685442796 + (v121 & v122 | v120 & ~v122);
  LODWORD(v35) = HIDWORD(v35);
  v123 = (v35 >> 15) + v122;
  HIDWORD(v35) = v209 + v120 - 870986881 + (v122 & v123 | v121 & ~v123);
  LODWORD(v35) = HIDWORD(v35);
  v124 = (v35 >> 10) + v123;
  HIDWORD(v35) = v195 + v121 + 2021648576 + (v124 & v122 | v123 & ~v122);
  LODWORD(v35) = HIDWORD(v35);
  v125 = (v35 >> 27) + v124;
  HIDWORD(v35) = v200 + v122 + 1117943454 + (v125 & v123 | v124 & ~v123);
  LODWORD(v35) = HIDWORD(v35);
  v126 = (v35 >> 23) + v125;
  HIDWORD(v35) = v205 + v123 - 1463804497 + (v126 & v124 | v125 & ~v124);
  LODWORD(v35) = HIDWORD(v35);
  v127 = (v35 >> 18) + v126;
  HIDWORD(v35) = v194 + v124 + 1813547784 + (v127 & v125 | v126 & ~v125);
  LODWORD(v35) = HIDWORD(v35);
  v128 = (v35 >> 12) + v127;
  HIDWORD(v35) = v199 + v125 + 1485886395 + (v128 & v126 | v127 & ~v126);
  LODWORD(v35) = HIDWORD(v35);
  v129 = (v35 >> 27) + v128;
  HIDWORD(v35) = v204 + v126 - 2069506127 + (v129 & v127 | v128 & ~v127);
  LODWORD(v35) = HIDWORD(v35);
  v130 = (v35 >> 23) + v129;
  HIDWORD(v35) = v209 + v127 + 1526966751 + (v130 & v128 | v129 & ~v128);
  LODWORD(v35) = HIDWORD(v35);
  v131 = (v35 >> 18) + v130;
  HIDWORD(v35) = v198 + v128 + 1781907238 + (v131 & v129 | v130 & ~v129);
  LODWORD(v35) = HIDWORD(v35);
  v132 = (v35 >> 12) + v131;
  HIDWORD(v35) = v203 + v129 - 1539075772 + (v132 & v130 | v131 & ~v130);
  LODWORD(v35) = HIDWORD(v35);
  v133 = (v35 >> 27) + v132;
  HIDWORD(v35) = v208 + v130 + 1167641396 + (v133 & v131 | v132 & ~v131);
  LODWORD(v35) = HIDWORD(v35);
  v134 = (v35 >> 23) + v133;
  HIDWORD(v35) = v197 + v131 + 2000081125 + (v134 & v132 | v133 & ~v132);
  LODWORD(v35) = HIDWORD(v35);
  v135 = (v35 >> 18) + v134;
  HIDWORD(v35) = v202 + v132 - 943990709 + (v135 & v133 | v134 & ~v133);
  LODWORD(v35) = HIDWORD(v35);
  v136 = (v35 >> 12) + v135;
  HIDWORD(v35) = v207 + v133 + 742763619 + (v136 & v134 | v135 & ~v134);
  LODWORD(v35) = HIDWORD(v35);
  v137 = (v35 >> 27) + v136;
  HIDWORD(v35) = v196 + v134 + 2136041302 + (v137 & v135 | v136 & ~v135);
  LODWORD(v35) = HIDWORD(v35);
  v138 = (v35 >> 23) + v137;
  HIDWORD(v35) = v201 + v135 - 372193737 + (v138 & v136 | v137 & ~v136);
  LODWORD(v35) = HIDWORD(v35);
  v139 = (v35 >> 18) + v138;
  HIDWORD(v35) = v206 + v136 + 260837352 + ((v139 ^ v138) & v137 ^ v138);
  LODWORD(v35) = HIDWORD(v35);
  v140 = (v35 >> 12) + v139;
  v194 = *(&v194 + (v137 & 0xF));
  *(&v194 + (v137 & 0xF)) = v2;
  LODWORD(v2) = v195;
  v195 = *(&v194 + (v140 & 0xF));
  *(&v194 + (v140 & 0xF)) = v2;
  LODWORD(v2) = v196;
  v196 = *(&v194 + (v139 & 0xF));
  *(&v194 + (v139 & 0xF)) = v2;
  LODWORD(v2) = v197;
  v197 = *(&v194 + (v138 & 0xF));
  *(&v194 + (v138 & 0xF)) = v2;
  LODWORD(v2) = v198;
  v198 = *(&v194 + (v137 >> 4));
  *(&v194 + (v137 >> 4)) = v2;
  v141 = v199;
  v199 = *(&v194 + (v140 >> 4));
  *(&v194 + (v140 >> 4)) = v141;
  LODWORD(v2) = v200;
  v200 = *(&v194 + (v139 >> 4));
  *(&v194 + (v139 >> 4)) = v2;
  LODWORD(v2) = v201;
  v201 = *(&v194 + (v138 >> 4));
  *(&v194 + (v138 >> 4)) = v2;
  HIDWORD(v35) = v199 + v137 - 2107900768 + (v140 ^ v139 ^ v138);
  LODWORD(v35) = HIDWORD(v35);
  v142 = (v35 >> 28) + v140;
  HIDWORD(v35) = v202 + v138 + 164870623 + (v142 ^ v140 ^ v139);
  LODWORD(v35) = HIDWORD(v35);
  v143 = (v35 >> 21) + v142;
  HIDWORD(v35) = v205 + v139 - 268491648 + (v142 ^ v140 ^ v143);
  LODWORD(v35) = HIDWORD(v35);
  v144 = (v35 >> 16) + v143;
  HIDWORD(v35) = v208 + v140 - 2142831766 + (v143 ^ v142 ^ v144);
  LODWORD(v35) = HIDWORD(v35);
  v145 = (v35 >> 9) + v144;
  HIDWORD(v35) = v195 + v142 + 656453026 + (v144 ^ v143 ^ v145);
  LODWORD(v35) = HIDWORD(v35);
  v146 = (v35 >> 28) + v145;
  HIDWORD(v35) = v198 + v143 - 834628857 + (v145 ^ v144 ^ v146);
  LODWORD(v35) = HIDWORD(v35);
  v147 = (v35 >> 21) + v146;
  HIDWORD(v35) = v201 + v144 + 2031947454 + (v146 ^ v145 ^ v147);
  LODWORD(v35) = HIDWORD(v35);
  v148 = (v35 >> 16) + v147;
  HIDWORD(v35) = v204 + v145 + 1092714446 + (v147 ^ v146 ^ v148);
  LODWORD(v35) = HIDWORD(v35);
  v149 = (v35 >> 9) + v148;
  HIDWORD(v35) = v207 + v146 - 1426243036 + (v148 ^ v147 ^ v149);
  LODWORD(v35) = HIDWORD(v35);
  v150 = (v35 >> 28) + v149;
  HIDWORD(v35) = v194 + v147 + 1828907864 + (v149 ^ v148 ^ v150);
  LODWORD(v35) = HIDWORD(v35);
  v151 = (v35 >> 21) + v150;
  HIDWORD(v35) = v197 + v148 + 1464923107 + (v150 ^ v149 ^ v151);
  LODWORD(v35) = HIDWORD(v35);
  v152 = (v35 >> 16) + v151;
  HIDWORD(v35) = v200 + v149 - 2031493021 + (v151 ^ v150 ^ v152);
  LODWORD(v35) = HIDWORD(v35);
  v153 = (v35 >> 9) + v152;
  HIDWORD(v35) = v203 + v150 + 1547080599 + (v152 ^ v151 ^ v153);
  LODWORD(v35) = HIDWORD(v35);
  v154 = (v35 >> 28) + v153;
  HIDWORD(v35) = v206 + v151 + 1765629251 + (v153 ^ v152 ^ v154);
  LODWORD(v35) = HIDWORD(v35);
  v155 = (v35 >> 21) + v154;
  HIDWORD(v35) = v209 + v152 - 1576779690 + (v154 ^ v153 ^ v155);
  LODWORD(v35) = HIDWORD(v35);
  v156 = (v35 >> 16) + v155;
  HIDWORD(v35) = v196 + v153 + 1192106435 + (v155 ^ v154 ^ v156);
  LODWORD(v35) = HIDWORD(v35);
  v157 = (v35 >> 9) + v156;
  HIDWORD(v35) = v194 + v154 + 1988814242 + ((v157 | ~v155) ^ v156);
  LODWORD(v35) = HIDWORD(v35);
  v158 = (v35 >> 26) + v157;
  HIDWORD(v35) = v201 + v155 - 980630795 + ((v158 | ~v156) ^ v157);
  LODWORD(v35) = HIDWORD(v35);
  v159 = (v35 >> 22) + v158;
  HIDWORD(v35) = v208 + v156 + 771090181 + ((v159 | ~v157) ^ v158);
  LODWORD(v35) = HIDWORD(v35);
  v160 = (v35 >> 17) + v159;
  HIDWORD(v35) = v199 + v157 + 2130011031 + ((v160 | ~v158) ^ v159);
  LODWORD(v35) = HIDWORD(v35);
  v161 = (v35 >> 11) + v160;
  HIDWORD(v35) = v206 + v158 - 407036639 + ((v161 | ~v159) ^ v160);
  LODWORD(v35) = HIDWORD(v35);
  v162 = (v35 >> 26) + v161;
  HIDWORD(v35) = v197 + v159 + 292458480 + ((v162 | ~v160) ^ v161);
  LODWORD(v35) = HIDWORD(v35);
  v163 = (v35 >> 22) + v162;
  HIDWORD(v35) = v204 + v160 - 2108573733 + ((v163 | ~v161) ^ v162);
  LODWORD(v35) = HIDWORD(v35);
  v164 = (v35 >> 17) + v163;
  HIDWORD(v35) = v195 + v161 + 132522287 + ((v164 | ~v162) ^ v163);
  LODWORD(v35) = HIDWORD(v35);
  v165 = (v35 >> 11) + v164;
  HIDWORD(v35) = v202 + v162 - 234208851 + ((v165 | ~v163) ^ v164);
  LODWORD(v35) = HIDWORD(v35);
  v166 = (v35 >> 26) + v165;
  HIDWORD(v35) = v209 + v163 - 2138133954 + ((v166 | ~v164) ^ v165);
  LODWORD(v35) = HIDWORD(v35);
  v167 = (v35 >> 22) + v166;
  HIDWORD(v35) = v200 + v164 + 627246706 + ((v167 | ~v165) ^ v166);
  LODWORD(v35) = HIDWORD(v35);
  v168 = (v35 >> 17) + v167;
  HIDWORD(v35) = v207 + v165 - 798370561 + ((v168 | ~v166) ^ v167);
  LODWORD(v35) = HIDWORD(v35);
  v169 = (v35 >> 11) + v168;
  HIDWORD(v35) = v198 + v166 + 2041922016 + ((v169 | ~v167) ^ v168);
  LODWORD(v35) = HIDWORD(v35);
  LODWORD(v2) = v169 + ((v35 >> 26) ^ 0xE42557EE) + ((2 * (v35 >> 26)) & 0xC84AAFDC) + 1006627072;
  v170 = (v2 ^ 0x9F98BFC1) & (2 * (v2 & 0xDFDABF12)) ^ v2 & 0xDFDABF12;
  v171 = ((2 * (v2 ^ 0x369CCDC1)) ^ 0xD28CE5A6) & (v2 ^ 0x369CCDC1) ^ (2 * (v2 ^ 0x369CCDC1)) & 0xE94672D2;
  v172 = v171 ^ 0x29421251;
  v173 = (v171 ^ 0xC0046080) & (4 * v170) ^ v170;
  v174 = ((4 * v172) ^ 0xA519CB4C) & v172 ^ (4 * v172) & 0xE94672D0;
  v175 = (v174 ^ 0xA1004240) & (16 * v173) ^ v173;
  v176 = ((16 * (v174 ^ 0x48463093)) ^ 0x94672D30) & (v174 ^ 0x48463093) ^ (16 * (v174 ^ 0x48463093)) & 0xE94672D0;
  v177 = v175 ^ 0xE94672D3 ^ (v176 ^ 0x80462000) & (v175 << 8);
  LODWORD(v2) = v2 ^ (2 * ((v177 << 16) & 0x69460000 ^ v177 ^ ((v177 << 16) ^ 0x72D30000) & (((v176 ^ 0x690052C3) << 8) & 0x69460000 ^ 0x29040000 ^ (((v176 ^ 0x690052C3) << 8) ^ 0x46720000) & (v176 ^ 0x690052C3))));
  HIDWORD(v35) = v205 + v167 + 1067234707 + ((v169 - ((2 * v169) & 0x16256B68) - 1961708108) ^ 0x74ED4A4B ^ (v2 ^ 0x322DA54B) & v168);
  LODWORD(v35) = HIDWORD(v35);
  v178 = (((v2 ^ 0x8FA027DC) + 1328734880) ^ ((v2 ^ 0x88E31CCD) + 1215420815) ^ ((v2 ^ 0xCA9161A5) + 168010983)) + 345496058 + (v35 >> 22);
  v179 = (v178 ^ 0x9C37468E) & (2 * (v178 & 0xDE27860E)) ^ v178 & 0xDE27860E;
  v180 = ((2 * (v178 ^ 0x3F4A9A)) ^ 0xBC319928) & (v178 ^ 0x3F4A9A) ^ (2 * (v178 ^ 0x3F4A9A)) & 0xDE18CC94;
  v181 = v180 ^ 0x42084494;
  v182 = (v180 ^ 0x98100800) & (4 * v179) ^ v179;
  v183 = ((4 * v181) ^ 0x78633250) & v181 ^ (4 * v181) & 0xDE18CC94;
  v184 = (v183 ^ 0x58000000) & (16 * v182) ^ v182;
  v185 = ((16 * (v183 ^ 0x8618CC84)) ^ 0xE18CC940) & (v183 ^ 0x8618CC84) ^ (16 * (v183 ^ 0x8618CC84)) & 0xDE18CC90;
  v186 = v184 ^ 0xDE18CC94 ^ (v185 ^ 0xC008C800) & (v184 << 8);
  v187 = (v178 ^ (2 * ((v186 << 16) & 0x5E180000 ^ v186 ^ ((v186 << 16) ^ 0x4C940000) & (((v185 ^ 0x1E100494) << 8) & 0x5E180000 ^ 0x46100000 ^ (((v185 ^ 0x1E100494) << 8) ^ 0x18CC0000) & (v185 ^ 0x1E100494)))) ^ 0x5C9E0D9) & v169 ^ v2;
  HIDWORD(v35) = v196 + v168 + 232567789 + (((v187 ^ 0xD4CA8B7C) + 2042350621) ^ ((v187 ^ 0xC66BFD4) - 1592264523) ^ ((v187 ^ 0xEA8191E3) + 1206965892));
  LODWORD(v35) = HIDWORD(v35);
  v188 = v178 + 2110514257 + (v35 >> 17);
  v189 = ((v188 ^ 0x3BE3B0CD) + 1538789746) ^ v188 ^ ((v188 ^ 0x3A149AE5) + 1515141978) ^ ((v188 ^ 0xE3A40994) - 2080397271) ^ ((v188 ^ 0x7DF77DFF) + 497867844);
  v190 = ((v178 ^ 0x47C6ECF6) - 1713280260) ^ v178 ^ ((v178 ^ 0x93B361B) - 685985769) ^ ((v178 ^ 0x10F25C70) - 824845698) ^ ((v178 ^ 0x7FD7FF6F) - 1578075805) ^ v189 & 0xA4897ABB ^ (v189 ^ 0x605BA1BC) & (v2 ^ 0x695B200F);
  HIDWORD(v35) = v203 + v169 + 1215161723 + (((v190 ^ 0x826A0DF7) + 1497242162) ^ ((v190 ^ 0xC30F8CDB) + 408656670) ^ ((v190 ^ 0xBF4B2799) + 1679765600));
  LODWORD(v35) = HIDWORD(v35);
  result = v1[1];
  *v1 = *v1 - 222339064 + (((v2 ^ 0x586EC78D) - 1728314673) ^ ((v2 ^ 0xBDCA36E5) + 2102981543) ^ ((v2 ^ 0x2876ABDC) - 387682656));
  v1[1] = result + v188 + ((v35 >> 11) ^ 0x7BBFFF96) + ((2 * (v35 >> 11)) & 0xF77FFF2C) - 459562457;
  v192 = v1[2] + 1616617916 + v188 + 1;
  v193 = v1[3] - 567835122 + v178;
  v1[2] = v192;
  v1[3] = v193;
  return result;
}

void fp_dh_39335171eb8cf91912c06ef3850be0e0(uint64_t a1)
{
  v1 = 1012216201 * ((a1 - 1129148669 - 2 * (a1 & 0xBCB28F03)) ^ 0x381B07EF);
  v2 = *(a1 + 12) ^ v1;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969FFDAC()
{
  STACK[0xA18] = v0;
  v3 = STACK[0x6F8];
  STACK[0xA20] = STACK[0x6F8];
  return (*(v1 + 8 * (((v0 - v3 > (v2 - 3329) - 274) * (v2 + 2675)) ^ (v2 - 1149))))();
}

uint64_t sub_1969FFDF8()
{
  v4 = (*(v2 + 8 * (v3 + 3109)))();
  *v0 = 0;
  return v1(v4);
}

void fp_dh_eafb84b432d87c17ad24633c1984b624(uint64_t a1)
{
  v1 = 1068996913 * (a1 ^ 0xD5EEE191);
  __asm { BRAA            X10, X17 }
}

void sub_196A0002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x800]) = v7;
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v8;
  LODWORD(STACK[0x414]) = v7;
  STACK[0x6F8] = *(a6 + 8 * (25 * (v6 ^ 0x25A) - 5476));
  JUMPOUT(0x1969CE4D0);
}

uint64_t sub_196A00084()
{
  v1 = *(STACK[0x8D0] + 24);
  STACK[0x7A0] = v1;
  return (*(STACK[0x248] + 8 * (((v1 == 0) * ((((v0 - 3812) | 0xA08) ^ 0xFFFFF047) + ((v0 + 1660730628) & 0x9D033367))) ^ v0)))();
}

uint64_t sub_196A0012C()
{
  v5 = (v1 + v4 + 41);
  *(v5 - 1) = 0u;
  *v5 = 0u;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFE0) == 32) * (v2 + 853)) ^ (v2 - 3425))))();
}

void fp_dh_ab30292583be0c7dd712835584e7a14b(uint64_t a1)
{
  v1 = 1790939281 * ((-2 - ((~a1 | 0xD6F6A71E) + (a1 | 0x290958E1))) ^ 0x2E2A875F);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_196A002E4()
{
  v2 = STACK[0x4C0];
  STACK[0x538] = STACK[0x4C0];
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 70)) & 1) * ((v0 ^ 0xC54) - 2065)) ^ v0)))();
}

uint64_t sub_196A00344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v23 - 128) = &a21;
  *(v23 - 132) = v21 + 1012216201 * ((((v23 - 136) | 0x32AA7C8B) - (v23 - 136) + ((v23 - 136) & 0xCD558370)) ^ 0xB603F467) + 1255;
  v24 = (*(v22 + 8 * (v21 ^ 0x123C)))(v23 - 136, a2, a3, a4, a5, a6, a7, a8);
  return (*(v22 + 8 * (((*(v23 - 136) == ((v21 - 6818110) & 0x57FC7F7D) + 436931995) * (((v21 - 675208622) & 0x283ED79F) + 471)) | v21)))(v24);
}

uint64_t fp_dh_1f54bfb24b7427ffd7e55ad5fdc940eb(uint64_t result)
{
  v1 = *(result + 8);
  *v1 = 0xFBDC740BB9F3DCDCLL;
  v1[1] = 0x5190721660F77F86;
  v1[2] = 0;
  return result;
}

uint64_t fp_dh_b7518feea8c17f4f55e165dce16b0837(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = 1283153057 * (((a1 | 0x5EAF6260) - a1 + (a1 & 0xA1509D9F)) ^ 0x11776157);
  v2 = *(a1 + 48) + v1;
  v3 = *(a1 + 12) ^ v1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32) + v1;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x8EC6A082)) - 4;
  if (v3 == 1448105703 || v3 == 1448105700)
  {
    __asm { BRAA            X20, X17 }
  }

  v9 = *a1;
  v10 = 998242381 * (((v14 | 0xB6396C4D) - (v14 & 0xB6396C4D)) ^ 0x1C56F49B);
  v18 = *(a1 + 16);
  v11 = v2 + 1899589200;
  v17 = v6 + v10 - 752326117;
  v15 = v11 + v10;
  v14[0] = v9;
  v14[1] = v5;
  v14[2] = v4;
  result = (*&v7[8 * v11 + 19056])(v14);
  *(a1 + 8) = v16;
  return result;
}

void fp_dh_0d0491cbebcbf4d4847c494cdacdf209(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (753662761 * ((-888151013 - (a1 | 0xCB0FE41B) + (a1 | 0x34F01BE4)) ^ 0x51EAE0AF));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_196A0086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, int a13)
{
  a10 = 455395931 * (((&a10 | 0xCB9B4600) - (&a10 & 0xCB9B4600)) ^ 0xBD6A18CC) + 1218;
  a11 = v14;
  a12 = v13;
  (*(v15 + 55800))(&a10, a2, a3, a4, a5, a6, a7, a8);
  return sub_1969DDD00(a13);
}

void FHN8Er(uint64_t a1)
{
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_cd36a3c020896b186c916386d25640ff) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_cd36a3c020896b186c916386d25640ff) ^ 0x55))] ^ 0xE1]) + 117);
  v3 = *(v2 - 4);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v3) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v3) ^ 0x55))] ^ 0x76]) + 593);
  v5 = v3 ^ &v9 ^ *(v4 - 4);
  v6 = 810526117 * v5 - 0x3983E51A1E6C17ABLL;
  v7 = 810526117 * (v5 ^ 0xC67C1AE5E193E855);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_cd36a3c020896b186c916386d25640ff ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (fp_dh_cd36a3c020896b186c916386d25640ff ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xE1]) + 516) - 4;
  (*&v8[8 * (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * ((v7 - v4) ^ 0x55))) ^ 0xCu)) ^ (-91 * ((v7 - v4) ^ 0x55))) + 53208])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * ((v7 + v4) ^ 0x55))) ^ 0xBBu) - 8) ^ (-91 * ((v7 + v4) ^ 0x55))) | 0x200u)), fp_dh_ac8b380baf0bf0ca926b0e34adc42df4);
  __asm { BRAA            X8, X17 }
}

void NQ7ggq70Owbvqj8qbExsJ5Hw()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55))] ^ 0x16]) + 242);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55))) + 562);
  v3 = *(v2 - 4) - v1 - &v5;
  *(v0 - 4) = 810526117 * v3 + 0x3983E51A1E6C17ABLL;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((2 * (v6 & 0x73560400) - v6 - 1935016967) ^ 0xE0F26EFB) + 1655634431;
  LOBYTE(v2) = -91 * (*(v0 - 4) ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55))] ^ 0x7F]) + 583) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0x1Du) - 12) ^ v2) + 52880])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196A00D70()
{
  if (v0 == -604250380 || v0 == 1765068451 || v0 == 1646731647)
  {
    JUMPOUT(0x196A00E28);
  }

  return (*(v2 + 8 * ((v3 - 2106) ^ (4610 * ((v1 & 8) == 0)))))();
}

void fp_dh_a234a528b6e6d86ecf90f9c798945deb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v4 = *(v3 + 40) + 1621291457 * ((1478030690 - (v3 | 0x5818F562) + (v3 | 0xA7E70A9D)) ^ 0x91F08B04);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_196A010D4()
{
  v3 = v0;
  v4 = (*(v2 + 8 * (v1 ^ 0x1992)))();
  STACK[0x958] -= 32;
  return (*(v2 + 8 * (((v3 == (((v1 + 46) | 0x20A) ^ 0x1170) + 1906275705) * (((v1 + 46) | 0x20A) ^ 0x86B)) ^ ((v1 + 46) | 0x20A))))(v4);
}

uint64_t sub_196A011C8()
{
  STACK[0xAB8] = v1;
  v3 = STACK[0x478];
  STACK[0xAC0] = STACK[0x478];
  return (*(v2 + 8 * (((v1 - v3 > ((3 * (v0 ^ 0x409u)) ^ 0x12AuLL)) * (129 * (v0 ^ 0x474) - 3380)) ^ v0)))();
}

void sub_196A01218()
{
  LOWORD(STACK[0x9EE]) = v0;
  LODWORD(STACK[0x3F0]) = v0;
  JUMPOUT(0x196A17488);
}

uint64_t sub_196A013E4()
{
  v3 = *v1;
  STACK[0x8D0] = 0;
  STACK[0x768] = 0;
  return (*(v2 + 8 * ((((12 * (v0 ^ 0x136E)) ^ (v0 + 1210580279) & 0xB7D7F1F5 ^ 0xF52) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_196A014D8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x16C9)))(32, 0x103004054B5FA7DLL);
  STACK[0x620] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0xC43) + 4817) ^ (686 * (v0 ^ 0xC43)))) | v0)))();
}

void fp_dh_c4e8673cdff0bd7dbbe5c31af0d4dde1(uint64_t a1)
{
  v1 = 753662761 * (((a1 | 0x33B7BAE1) - a1 + (a1 & 0xCC48451E)) ^ 0x56AD41AA);
  __asm { BRAA            X9, X17 }
}

void U4HBs()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55))] ^ 0x76]) + 228);
  v1 = -91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + *v0) ^ 0x55);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v1 - 4) ^ 0xD2u) - 4) ^ v1) + 373);
  v3 = &v5[*(v2 - 4) ^ *v0];
  *v0 = (810526117 * v3) ^ 0xC67C1AE5E193E855;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 | 0xF69B15D6) - (v6 & 0xF69B15D6)) ^ 0x9AC080D4) + 1655634431;
  LOBYTE(v2) = -91 * (*v0 ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55))] ^ 0xE0]) + 607) - 4;
  (*&v4[8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v2) ^ 0x60u) - 8) ^ v2) + 54296])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196A01960@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB24]) = v1;
  STACK[0x958] = (a1 - 1483) + STACK[0x958] - 96;
  return (*(v2 + 8 * (((a1 ^ 0x1509) * (v1 == 1906281716)) ^ a1)))();
}

uint64_t sub_196A019E4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = STACK[0x228] + 120;
  v44 = (v41 ^ a2) + a41;
  STACK[0x988] = v44;
  return (*(v42 + 8 * (v43 ^ (117 * (v44 <= a33)))))(a1, 1906239698);
}

uint64_t sub_196A01A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (a1 - 843325662) & 0x32440F7D;
  v16 = ((a13 + 482848606) ^ 0xA16BF761) & (2 * ((a13 + 482848606) & 0xB46B8642)) ^ (a13 + 482848606) & 0xB46B8642;
  v17 = (v13 ^ 0x5D547866) & (2 * ((a13 + 482848606) ^ 0xE93FFB61)) ^ ((v15 - 1163332615) ^ (2 * ((a13 + 482848606) ^ 0xE93FFB61))) & ((a13 + 482848606) ^ 0xE93FFB61);
  v18 = ((4 * (v17 ^ 0x45540521)) ^ 0x7551F48C) & (v17 ^ 0x45540521) ^ (4 * (v17 ^ 0x45540521)) & 0x5D547D20;
  v19 = (v18 ^ 0x55507400) & (16 * ((v17 ^ 0x10003800) & (4 * v16) ^ v16)) ^ (v17 ^ 0x10003800) & (4 * v16) ^ v16;
  v20 = ((16 * (v18 ^ 0x8040923)) ^ 0xD547D230) & (v18 ^ 0x8040923) ^ (16 * (v18 ^ 0x8040923)) & 0x5D547D20;
  v21 = v19 ^ 0x5D547D23 ^ (v20 ^ 0x55445000) & (v19 << 8);
  v22 = (a13 + 482848606) ^ (2 * ((v21 << 16) & 0x5D540000 ^ v21 ^ ((v21 << 16) ^ 0x7D230000) & (((v20 ^ 0x8102D03) << 8) & 0x5D540000 ^ 0x9000000 ^ (((v20 ^ 0x8102D03) << 8) ^ 0x547D0000) & (v20 ^ 0x8102D03))));
  v24 = v22 == -1262257148 || (((337 * (v15 ^ 0x649)) ^ 0x54B) & v22) != ((v15 - 1217775535) & 0x4895CDE9) - 3204;
  return (*(v14 + 8 * ((16 * v24) | (32 * v24) | v15)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_196A01C4C@<X0>(int a1@<W8>)
{
  v6 = *(v1 + 4 * (v4 - 1));
  *(v1 + 4 * v4) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v1 + 4 * v4)) - v4;
  v7 = 1283153057 * ((((v5 - 152) | 0xF7E2B4B6154E3E98) - ((v5 - 152) & 0xF7E2B4B6154E3E98)) ^ 0x5E0F27015A963DAFLL);
  *(v5 - 116) = (a1 - 84366432) ^ v7;
  *(v5 - 128) = v7;
  *(v5 - 120) = a1 + 250005995 - v7 - 348;
  *(v5 - 152) = v7 + a1 + 250005995 - 20;
  *(v5 - 148) = (a1 + 250005995) ^ v7;
  *(v3 + 16) = v7 ^ 0x26F;
  *(v3 + 24) = v4 + 1 - v7;
  v8 = (*(v2 + 8 * (a1 + 6390)))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 124)))(v8);
}

uint64_t sub_196A01D78@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = (*(a1 + 8 * (a2 ^ 0x19DD)))();
  v4 = STACK[0x370];
  *(v2 + 24) = 0;
  return sub_1969F31EC(v3, v5, v6, v7, v8, v4);
}

uint64_t sub_196A01DE4@<X0>(unsigned int a1@<W8>)
{
  v4 = ((v2 + 1461) ^ 0x7B8) + 1277424353 + (((*(v1 + 16) ^ 0x8180B1CD) - 1366044888) ^ ((*(v1 + 16) ^ 0x1598F7DC) + 982223159) ^ ((*(v1 + 16) ^ 0x6BE7B9EE) + 1156892421));
  v5 = (a1 > 0xE2EF7DEC) ^ (v4 < 0x1D108213);
  v6 = a1 + 487621139 > v4;
  if (v5)
  {
    v6 = a1 > 0xE2EF7DEC;
  }

  return (*(v3 + 8 * ((22 * !v6) ^ v2)))();
}

void CdfajkOy32ff()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_945f4689927c186922906a70f26a598c ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_945f4689927c186922906a70f26a598c ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x4E]) - 182);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))] ^ 0x1D]) + 385);
  v3 = &v5[*(v2 - 4) ^ v1];
  *(v0 - 4) = (810526117 * v3) ^ 0xC67C1AE5E193E855;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((v6 & 0x88FBE953 | ~(v6 | 0x88FBE953)) ^ 0x1B5F83AE) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_945f4689927c186922906a70f26a598c) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_945f4689927c186922906a70f26a598c) ^ 0x55))] ^ 0x15]) + 461) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0xE1u) - 12) ^ v2) + 53664])(v6);
  __asm { BRAA            X9, X17 }
}

void fp_dh_d58ec6074cad13c87163d4ae2a01213a(uint64_t a1)
{
  v1 = *(a1 + 16) - 1283153057 * ((((2 * a1) | 0x82D70306) - a1 + 1049919101) ^ 0x8EB382B4);
  v2 = *(a1 + 8);
  v3 = (*(v2 + 16) >> 3) & 0x3F;
  *(v2 + 24 + v3) = 0x80;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_196A026EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, char a36)
{
  v39 = v37 % 0xD2u;
  v40 = *(&a36 + (v37 - 13) % 0xD2u);
  v41 = *(&a36 + (v37 + ((2 * v36) ^ 0x1E1Cu) - 739) % 0xD2);
  v42 = (((v40 >> 5) | (8 * v40)) - ((2 * ((v40 >> 5) | (8 * v40))) & 0xFFFFFFDF) + 111) ^ *(&a36 + v39);
  v43 = *(&a36 + (v37 - 155) % 0xD2u);
  *(&a36 + v39) = (((v41 >> 3) | (32 * v41)) ^ 0xFE) + (((v43 >> 1) | (v43 << 7)) ^ 0x86) + ((2 * ((v41 >> 3) | (32 * v41))) & 0xFC) - (v43 & 0xF2) + (((v42 ^ 0x6B) + 119) ^ ((v42 ^ 0xE7) - 5) ^ ((v42 ^ 0xE3) - 1)) + 9;
  return (*(v38 + 8 * ((7 * (v37 != 839)) ^ v36)))();
}

void sub_196A02910()
{
  v4 = STACK[0x330] + 4 * v2;
  v5 = *v4;
  LODWORD(v4) = -1555358357 * ((*(*STACK[0x338] + (*STACK[0x340] & 0xFFFFFFFF91F4D4BCLL)) ^ v4) & 0x7FFFFFFF);
  LODWORD(v4) = v4 ^ WORD1(v4);
  v6 = 4 * ((-1555358357 * v4) >> 24);
  *(v1 + 4 * v2) ^= v5 ^ (v0 - (v3 - 6136) < ~(v3 - 6136)) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SLODWORD(STACK[0x32C])) + v6 - 4) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SLODWORD(STACK[0x328])) + v6 - 8) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SLODWORD(STACK[0x324])) + v6 - 12) ^ (v4 * ((v3 ^ 0x12D7) + 493550292)) ^ (-1555358357 * v4) ^ (444360667 * ((-1555358357 * v4) >> 24));
  JUMPOUT(0x196A02A04);
}

uint64_t sub_196A02B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q3>)
{
  v9 = (a2 + (v7 + a4));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a1 + v7);
  *v12 = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), a6)), a5);
  v12[1] = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a6)), a5);
  return (*(v8 + 8 * ((a3 + v6 + 3127) | (4 * (v7 == 32)))))();
}

uint64_t fp_dh_2890b633393b9ee10fff2f384e8ab704(_DWORD *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = 654144011 * ((((2 * a1) | 0x8451BABC) - a1 - 1109974366) ^ 0x6EFCA0C2);
  v3 = *a1 + v2;
  v11 = v3 - 489239129 * ((2 * (&v10 & 0x2D69F8C8) - &v10 - 761919691) ^ 0x6BBE2403) - 1567369456;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x30524D5A)) - 4;
  (*&v4[8 * (v3 ^ 0x305255FD)])(&v10);
  v5 = 1621291457 * ((&v10 + 994119083 - 2 * (&v10 & 0x3B410DAB)) ^ 0xD568C32);
  v11 = v3 + v5 - 2019442080;
  v12 = 1866249606 - v5;
  result = (*&v4[8 * (v3 - 810693686)])(&v10);
  v7 = 1618133546;
  if ((v10 - 364443022) > 5 || ((1 << (v10 + 114)) & 0x25) == 0)
  {
    goto LABEL_57;
  }

  v8 = a1[2] ^ v2;
  if (v8 > -264020090)
  {
    if (v8 > 414844453)
    {
      if (v8 <= 1365354753)
      {
        if (v8 > 1003609871)
        {
          if (v8 == 1003609872)
          {
            goto LABEL_56;
          }

          v9 = 1358882382;
        }

        else
        {
          if (v8 == 414844454)
          {
            goto LABEL_56;
          }

          v9 = 698060085;
        }
      }

      else if (v8 <= 1685594512)
      {
        if (v8 == 1365354754)
        {
          goto LABEL_56;
        }

        v9 = 1583597438;
      }

      else
      {
        if (v8 == 1685594513 || v8 == 1858302884)
        {
          goto LABEL_56;
        }

        v9 = 1961130473;
      }
    }

    else if (v8 <= 230926676)
    {
      if (v8 > -26889839)
      {
        if (v8 == -26889838)
        {
          goto LABEL_56;
        }

        v9 = 4476423;
      }

      else
      {
        if (v8 == -264020089)
        {
          goto LABEL_56;
        }

        v9 = -236593372;
      }
    }

    else if (v8 <= 279552725)
    {
      if (v8 == 230926677)
      {
        goto LABEL_56;
      }

      v9 = 234325939;
    }

    else
    {
      if (v8 == 279552726 || v8 == 339343269)
      {
        goto LABEL_56;
      }

      v9 = 386987830;
    }
  }

  else if (v8 > -1061036841)
  {
    if (v8 <= -621537127)
    {
      if (v8 > -844266958)
      {
        if (v8 == -844266957)
        {
          goto LABEL_56;
        }

        v9 = -661873529;
      }

      else
      {
        if (v8 == -1061036840)
        {
          goto LABEL_56;
        }

        v9 = -1015876376;
      }
    }

    else if (v8 <= -420486613)
    {
      if (v8 == -621537126)
      {
        goto LABEL_56;
      }

      v9 = -510297583;
    }

    else
    {
      if (v8 == -420486612 || v8 == -387643333)
      {
        goto LABEL_56;
      }

      v9 = -298393429;
    }
  }

  else if (v8 <= -1560908637)
  {
    if (v8 > -1707090177)
    {
      if (v8 == -1707090176)
      {
        goto LABEL_56;
      }

      v9 = -1699349151;
    }

    else
    {
      if (v8 == -2039147600)
      {
        goto LABEL_56;
      }

      v9 = -1885111177;
    }
  }

  else
  {
    if (v8 > -1309205039)
    {
      if (v8 != -1309205038 && v8 != -1308302750)
      {
        v9 = -1220402307;
        goto LABEL_54;
      }

LABEL_56:
      v7 = 1618133547;
      goto LABEL_57;
    }

    if (v8 == -1560908636)
    {
      goto LABEL_56;
    }

    v9 = -1499486058;
  }

LABEL_54:
  v7 = 1618133547;
  if (v8 != v9)
  {
    v7 = 1618133546;
  }

LABEL_57:
  a1[1] = v7;
  return result;
}