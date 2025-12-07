uint64_t sub_1002ADE80()
{
  v3 = STACK[0x448] + 540400008;
  v4 = ((v3 ^ 0x9CE2A925) + 1126731603) ^ v3 ^ ((v3 ^ 0xEE53DC8E) + 832174842) ^ ((v3 ^ 0x4FFFFFFB) - 1875519091) ^ (v1 + (((v0 ^ 0x1BB5) + 494620389) ^ v3) - 1028563451);
  return (*(v2 + 8 * ((11019 * ((((v4 ^ 0x826CE343) - 1381225061) ^ ((v4 ^ 0xEEDECF00) - 1054998054) ^ ((((v0 ^ 0x8ED) - 1382) ^ 0x63472956) + (v4 ^ 0x4C87F5CB))) - 267720538 < 0xFFFFFFF8)) ^ v0 ^ 0x1BB5)))();
}

void sub_1002B4564(uint64_t a1, int a2)
{
  ++LODWORD(STACK[0x480]);
  LODWORD(STACK[0x488]) = v3 ^ 0xCCA3F221;
  LODWORD(STACK[0x490]) = v2 ^ 0x50630110;
  LODWORD(STACK[0x498]) = v4 ^ 0xD825748B;
  LODWORD(STACK[0x4A8]) = a2 + 2;
  LODWORD(STACK[0x4D0]) += 3;
  LODWORD(STACK[0x4A0]) = v5 + 3;
  LODWORD(STACK[0x4C8]) += 3;
  LODWORD(STACK[0x4C0]) += 2;
  JUMPOUT(0x1002B36CCLL);
}

uint64_t sub_1002B4638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  v69 = a54;
  if ((STACK[0x3F4] & 1) == 0)
  {
    v69 = HIDWORD(a55);
  }

  v70 = (STACK[0x3F4] & 2) == 0;
  v71 = STACK[0x328];
  if ((STACK[0x3F4] & 2) == 0)
  {
    v71 = STACK[0x320];
  }

  LODWORD(v100) = v71;
  v72 = STACK[0x338];
  if ((STACK[0x3F4] & 2) != 0)
  {
    v72 = STACK[0x330];
  }

  LODWORD(a51) = v72;
  v73 = STACK[0x31C];
  if ((STACK[0x3F4] & 2) == 0)
  {
    v73 = STACK[0x318];
  }

  LODWORD(STACK[0x328]) = v73;
  v74 = STACK[0x370];
  if (v70)
  {
    v74 = STACK[0x368];
  }

  LODWORD(STACK[0x31C]) = v74;
  v75 = STACK[0x310];
  if (!v70)
  {
    v75 = a65;
  }

  LODWORD(STACK[0x338]) = v75;
  if (!v70)
  {
    a62 = a56;
  }

  LODWORD(STACK[0x498]) = a62;
  v77 = STACK[0x398];
  LODWORD(STACK[0x330]) = v69;
  if (!v70)
  {
    v77 = v69;
  }

  LODWORD(STACK[0x310]) = v77;
  v78 = a48 ^ a64 ^ 0x292257EA;
  v79 = STACK[0x430];
  if ((STACK[0x430] & 1) == 0)
  {
    v78 = a46;
  }

  LODWORD(STACK[0x320]) = v78;
  v80 = STACK[0x2D4];
  if ((v79 & 2) == 0)
  {
    v80 = a52;
  }

  LODWORD(a54) = v80;
  v81 = STACK[0x2DC];
  if ((v79 & 2) == 0)
  {
    v81 = STACK[0x2D8];
  }

  HIDWORD(a55) = v81;
  if ((v79 & 2) == 0)
  {
    a50 = a49;
  }

  LODWORD(a56) = a50;
  v83 = v66 ^ 0xD07E94B5;
  v84 = v65 ^ 0xAFAD683A;
  v85 = (v66 ^ 0xD07E94B5) & 0xFE ^ 2;
  LODWORD(STACK[0x4A8]) = v67 ^ 0x90125CD4;
  v86 = (v67 ^ 0x90125CD4) & 7;
  LODWORD(STACK[0x4C0]) = v86 ^ 4;
  v87 = -(v86 ^ 4) & 7;
  LODWORD(STACK[0x488]) = v86;
  if (v86 == 4)
  {
    v88 = 0;
  }

  else
  {
    v88 = 255;
  }

  LODWORD(STACK[0x4C8]) = v87;
  v89 = v88 << v87;
  LODWORD(STACK[0x4A0]) = 16843009 * v89;
  LODWORD(STACK[0x318]) = (v65 ^ 0xBD000000) & (1224736768 * v89);
  v90 = v89 ^ 0x3431A113;
  if (v86 == 4)
  {
    v91 = -875667732;
  }

  else
  {
    v91 = v90;
  }

  LODWORD(v101) = v66 ^ 0x13;
  LODWORD(STACK[0x490]) = v83;
  LODWORD(STACK[0x480]) = v84;
  HIDWORD(v100) = (v84 ^ BYTE1(v84) ^ BYTE2(v84)) ^ HIBYTE(v65) ^ 0xBB;
  LODWORD(STACK[0x4B0]) = 16843009 * ((v83 ^ BYTE1(v83) ^ BYTE2(v83)) ^ HIBYTE(v66) ^ 0xC4);
  v92 = LODWORD(STACK[0x2F0]) ^ 0x30772FE9;
  LODWORD(STACK[0x2D4]) = v85;
  LODWORD(STACK[0x4D0]) = 16843009 * v85;
  HIDWORD(v101) = v91;
  LODWORD(STACK[0x2D8]) = v91 & 0xE;
  v93 = (0x832B4B59 >> ((5 * (v68 ^ 5)) ^ 0x65)) - 2094348241;
  v94 = ((0x832B4B59 >> ((5 * (v68 ^ 5)) ^ 0x65)) + 597093945) >> 16;
  v95 = ((0x832B4B59 >> ((5 * (v68 ^ 5)) ^ 0x65)) + 597093945 + v94) >> 8;
  v96 = v94 + 1087849920 + v95 + (0x832B4B59 >> ((5 * (v68 ^ 5)) ^ 0x65)) - 2094314663;
  v97 = ((0x832B4B59 >> ((5 * (v68 ^ 5)) ^ 0x65)) + 1398873289) ^ v92 ^ (v94 + 1889662842 + v95 + v93) ^ (v94 + 286104154 + v93 + v95 + HIWORD(v96) + ((v96 + HIWORD(v96)) >> 8));
  v98 = (v97 & 0xE202AAE2 ^ 0xD6C26E1) & (v97 & 0x1DFD551D ^ 0xE2AFEBFE);
  return (*(STACK[0x4E0] + 8 * (v98 | v97 & 0x1091511C)))(3056, 1087849920, 3779258528, v98, 1087849920, 286070576, 1889629264, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v100, v101, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1002B4A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a49, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, uint64_t a56, int a57, int a58, int a59, int a60, int a61, int a62, uint64_t a63, int arg188, int arg18C)
{
  HIDWORD(v155) = (LODWORD(STACK[0x498]) ^ 0xC279D12E) + 1896673467 * (v66 ^ 0x5068F2D2 ^ v70 ^ 0x112A6032);
  LODWORD(a38) = v65 ^ 0x72A94337;
  LODWORD(STACK[0x2DC]) = (a58 ^ 0xAAF137CB) + 174465075 * ((v67 ^ 0x5A3A7482) - (v65 ^ 0x72A94337));
  v71 = (v65 ^ 0x72A94337) & 0xFE ^ 0x34;
  v72 = v68 ^ 0x45B0AAC7;
  LODWORD(a41) = (v68 ^ 0x45B0AAC7) & 0xFFFFFFF8 ^ 0x80429198;
  LODWORD(v155) = v65 ^ 0x867B2D65;
  v149 = v65 ^ 0x65 ^ ((v65 ^ 0x2D65) >> 8) ^ ((v65 ^ 0x867B2D65) >> 16) ^ HIBYTE(v65) ^ 0x91;
  v73 = v65 ^ 0xB9F8E303;
  LODWORD(STACK[0x470]) = v68 ^ 0xC5F23B59;
  LODWORD(a44) = (v65 ^ 0x72A94337) & 0xFFFFFF01;
  LODWORD(STACK[0x498]) = 16843009 * v71;
  v154 = ~v71 | 0xFFFFFF01;
  v74 = (v154 & (a44 ^ 0xB11589EA) | (16843009 * v71) & 0x14) ^ 0x7A4429EA;
  LODWORD(a39) = LODWORD(STACK[0x2BC]) ^ 0x99B04FBD;
  HIDWORD(a45) = v71 - LODWORD(STACK[0x2D4]);
  v75 = STACK[0x490] & 0xFFFFFF01;
  v76 = STACK[0x4D0];
  v77 = ~LOBYTE(STACK[0x4D0]) | 0xFFFFFF01;
  v152 = ((v77 & (v75 ^ 0x53171505) | STACK[0x4D0] & 0xFA) ^ 0x12025504) % 0x101;
  v78 = (v68 ^ 0x45B0AAC7) & 7 ^ 6;
  v79 = -v78 & 7;
  if (((v68 ^ 0x45B0AAC7) & 7) == 6)
  {
    v80 = 0;
  }

  else
  {
    v80 = 255;
  }

  v81 = v80 << v79;
  if ((v72 & 7) == 6)
  {
    v82 = 0;
  }

  else
  {
    v82 = ~v81;
  }

  v151 = v82;
  v83 = (STACK[0x430] & 2) == 0;
  if ((STACK[0x430] & 2) != 0)
  {
    a55 = STACK[0x320];
  }

  LODWORD(STACK[0x2D4]) = a55;
  v85 = STACK[0x30C];
  if (!v83)
  {
    v85 = STACK[0x308];
  }

  LODWORD(v158) = v85;
  LODWORD(STACK[0x320]) = 16843009 * HIDWORD(a47);
  v86 = *(&off_1006B4E30 + v64 - 4106) - 12;
  v87 = (16843009 * HIDWORD(a47)) ^ LODWORD(STACK[0x4B0]) ^ 0x98989898;
  LODWORD(STACK[0x304]) = v87 % 0x101;
  v88 = LODWORD(STACK[0x488]) ^ 0xFFFFFFFB;
  v89 = STACK[0x4A8] & 0xFFFFFFF8;
  LODWORD(STACK[0x30C]) = (((v89 ^ 0x3C39A9E5) & v88 | v69 & 2) ^ 0x2AB3686D) % 0x101;
  v90 = (STACK[0x3F4] & 2) == 0;
  v91 = STACK[0x354];
  if ((STACK[0x3F4] & 2) != 0)
  {
    v91 = STACK[0x350];
  }

  LODWORD(STACK[0x350]) = v91;
  v92 = v67 ^ 0x916BD4B6;
  LODWORD(STACK[0x354]) = v67 ^ LODWORD(STACK[0x2E0]);
  v93 = STACK[0x238];
  if (v90)
  {
    v93 = a64;
  }

  v94 = STACK[0x370];
  if (!v90)
  {
    v94 = STACK[0x368];
  }

  v159 = v94;
  v95 = STACK[0x380];
  if (v90)
  {
    v95 = STACK[0x378];
  }

  HIDWORD(v158) = v95;
  v96 = STACK[0x360];
  if (v90)
  {
    v96 = STACK[0x35C];
  }

  LODWORD(STACK[0x2E0]) = v96;
  LODWORD(STACK[0x378]) = v81;
  LODWORD(STACK[0x360]) = (1157627904 * v81) & (v70 ^ 0xFC2A6032);
  v160 = a60 ^ (32 * (v78 ^ LODWORD(STACK[0x4C0])));
  v97 = __ROR4__(*&v86[4 * LODWORD(STACK[0x4C8])], 9) ^ 0xC7DC3A41;
  v98 = *(&off_1006B4E30 + v64 - 3482);
  v99 = *(v98 + 4 * v79);
  LODWORD(STACK[0x2BC]) = v79;
  v100 = (a59 ^ 0x34F8FCE) + v97 + ((v99 - 538451343) ^ 0x8A65544F);
  LODWORD(STACK[0x370]) = 16843009 * v149;
  v101 = 16843009 * (v70 ^ 0x32 ^ ((v70 ^ 0x6032) >> 8) ^ ((v70 ^ 0x112A6032u) >> 16) ^ ((v70 ^ 0x112A6032u) >> 24) ^ 0x66);
  LODWORD(STACK[0x3F4]) = v101;
  v102 = (16843009 * v149) ^ 0x2C2C2C2C ^ v101;
  v150 = v86;
  LODWORD(STACK[0x35C]) = a61 ^ __ROR4__(*&v86[4 * (v102 % 0x101)], 9);
  LODWORD(STACK[0x488]) = (v77 & (v75 ^ 0x9246A93A) | v76 & 0xC4) ^ 0xD353E93B;
  LODWORD(STACK[0x380]) = v87 ^ LODWORD(STACK[0x310]) ^ (v87 >> 7) ^ v102 ^ (v102 >> 7);
  v103 = (v89 ^ 0xA4D5EB95) & v88 | v69 & 2;
  LODWORD(STACK[0x368]) = (LODWORD(STACK[0x358]) ^ 0xD0CEA1B1) - v73;
  LODWORD(STACK[0x344]) = v73 ^ v93 ^ (v73 >> 4) ^ v74 ^ (v74 >> 4);
  v104 = LODWORD(STACK[0x470]) + (a62 ^ 0xAAF137CB) - (v78 | a41);
  v105 = v69 ^ 0x86989D58;
  v106 = (v100 + 1) ^ v103;
  LODWORD(STACK[0x2F8]) = v103 ^ v69 ^ 0xBBC1BEE6 ^ ((v103 ^ v69 ^ 0xBBC1BEE6) << 6) ^ (a39 - LODWORD(STACK[0x470]) + (v78 | a41));
  LODWORD(STACK[0x308]) = v70 ^ 0x2A97BE79;
  v107 = 1085742771 * (v69 ^ 0x13409259 ^ v72);
  v108 = (*(v98 + 4 * (v74 % 0x101)) - 538451343) ^ 0x759AABB0;
  v109 = STACK[0x498];
  if (v90)
  {
    v110 = STACK[0x390];
  }

  else
  {
    v110 = STACK[0x388];
  }

  LODWORD(STACK[0x390]) = v110;
  v111 = STACK[0x4A0];
  LODWORD(STACK[0x238]) = LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x4A0]);
  v112 = *(&off_1006B4E30 + (v64 ^ 0x1107));
  LODWORD(STACK[0x4A0]) = LODWORD(STACK[0x2D8]) ^ v111 ^ a49 & (HIDWORD(a49) ^ 0xEC);
  v112 -= 12;
  v113 = *(&off_1006B4E30 + v64 - 3195) - 4;
  v114 = *&v113[4 * (v92 % 0x101)];
  v115 = *(v112 + 4 * v152) ^ arg188 ^ v114 ^ (1506752328 * (v114 ^ 0x73057D85));
  v153 = v112;
  LODWORD(STACK[0x388]) = (arg18C ^ 0x35E07208) + 261356289 * HIDWORD(a45) + (*(v112 + 4 * (v73 % 0x101)) ^ 0x4B28652A) + v108;
  v116 = v107 ^ LODWORD(STACK[0x348]);
  v117 = LODWORD(STACK[0x35C]) ^ (*(v98 + 4 * LODWORD(STACK[0x304])) - 538451343);
  LODWORD(STACK[0x348]) = v92 ^ v159 ^ (8 * v92);
  LODWORD(STACK[0x310]) = v92 + (HIDWORD(v158) ^ 0x35E07208);
  v118 = LODWORD(STACK[0x354]) ^ 0x80A04B20;
  v119 = LODWORD(STACK[0x354]) ^ 0x957ED3DC;
  LODWORD(STACK[0x304]) = v119 ^ (v118 >> 2) & 0x2DE5773D ^ (v104 + 2129790651 * (LODWORD(STACK[0x4C8]) - v79));
  v120 = v105 % 0x101;
  v121 = v106 ^ v105;
  v122 = v106 ^ v105 ^ 0xB7D7AA85;
  v123 = LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x3A8]) ^ v122 ^ ((v106 ^ v105) >> 2) & 0x2DE5773D ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x2F0]) ^ 0x25A96D9F ^ v122 ^ ((LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x2F0]) ^ 0x25A96D9F ^ v122) >> 2) & 0x2DE5773D;
  v124 = STACK[0x2E8];
  v125 = LODWORD(STACK[0x2E8]) ^ 0xBA121CF6;
  v126 = *&v113[4 * LODWORD(STACK[0x30C])] ^ 0x73057D85;
  v127 = (LODWORD(STACK[0x3F8]) >> 2) & 0x2DE5773D ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x4A8]) ^ ((v125 ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x4A8])) >> 2) & 0x2DE5773D ^ (*(v98 + 4 * v120) - 538451343) ^ v126 ^ (1506752328 * v126);
  v128 = STACK[0x398];
  if (v90)
  {
    v128 = STACK[0x330];
  }

  LODWORD(STACK[0x354]) = v128;
  LODWORD(STACK[0x368]) += (v154 & (a44 ^ 0x3C82EC07) | v109 & 0xF8) ^ 0xF7D34C07;
  LODWORD(STACK[0x35C]) = HIDWORD(v155) - 1528491557;
  v129 = STACK[0x4D0];
  LODWORD(STACK[0x358]) = v119 ^ (v118 >> 1) & 0x1B74FC5E ^ (LODWORD(STACK[0x4D0]) + (LODWORD(STACK[0x2C0]) ^ 0x35E07208) - v109);
  v130 = v124 ^ LODWORD(STACK[0x2C4]) ^ v106;
  LODWORD(STACK[0x31C]) = v122;
  LODWORD(STACK[0x318]) = v121;
  v131 = v130 ^ v122 ^ (v121 >> 1) & 0x1B74FC5E ^ ((v106 ^ v125) >> 1) & 0x1B74FC5E;
  v132 = (LODWORD(STACK[0x320]) ^ 0xFFFFFFE9) - ((2 * LODWORD(STACK[0x320])) & 0x2C);
  v133 = 16843009 * LODWORD(STACK[0x378]);
  v134 = (a38 & v151) ^ v133;
  v135 = LODWORD(STACK[0x360]) ^ v133;
  v136 = LODWORD(STACK[0x360]) ^ ~v133;
  v137 = LODWORD(STACK[0x308]) ^ v155;
  v138 = (a47 ^ 0x34F8FCE) - v129;
  v139 = LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x488]) ^ (8 * LODWORD(STACK[0x488]));
  v140 = LODWORD(STACK[0x4C0]) + (LODWORD(STACK[0x2C8]) ^ 0xD0CEA1B1);
  LODWORD(STACK[0x360]) = LODWORD(STACK[0x380]) ^ 0xA1EFF900;
  LODWORD(STACK[0x2E8]) = v139 ^ 0xBA9F6666;
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x2F8]) ^ 0xFC959E23;
  LODWORD(STACK[0x348]) = LODWORD(STACK[0x388]) + 1;
  LODWORD(STACK[0x378]) = v115 ^ 0x3B98B900;
  HIDWORD(a51) = v116;
  LODWORD(STACK[0x2D8]) = v116 ^ 0xB455A991;
  LODWORD(STACK[0x30C]) = LODWORD(STACK[0x344]) ^ 0xE6ACF147;
  v157 = __PAIR64__(v131, v117);
  LODWORD(STACK[0x2C8]) = v117 ^ 0xC902AE31;
  v156 = __PAIR64__(v139, v123);
  LODWORD(STACK[0x2C4]) = v123 ^ 0x999A33FE;
  LODWORD(STACK[0x330]) = v160 ^ 0xDAAF702E;
  LODWORD(STACK[0x398]) = v127;
  LODWORD(STACK[0x308]) = v127 ^ 0x9DFB332C;
  LODWORD(STACK[0x2C0]) = v109 + v138;
  v141 = LODWORD(STACK[0x2BC]);
  LODWORD(STACK[0x2D0]) = v131 ^ 0xF9ED9473;
  v142 = LODWORD(STACK[0x4A0]) ^ 0xC90EAC3E;
  v143 = v64 ^ 0x1295u;
  v144 = LODWORD(STACK[0x4B0]) ^ (v132 + 22);
  LODWORD(STACK[0x258]) = v64 + 5913;
  LODWORD(STACK[0x388]) = v140 - v78;
  LODWORD(STACK[0x4A8]) = v135;
  v145 = *(*(&off_1006B4E30 + v143) + 181);
  v146 = (v145 >> 3) & 0xD0CDF98 ^ v145 ^ ((((v145 >> 3) & 0xD0CDF98 ^ v145 ^ 0x7DC4A4B4) & STACK[0x4D0]) >> 1);
  v147 = 4 * ((v144 ^ (v64 + 25)) ^ 0xE1u);
  *(STACK[0x460] + v147) = v137 ^ 0xF3ACAB1 ^ (((((v146 ^ 0x77A9CBAD) & v136 | v135 & 0xA6D6F18) ^ 0xA6D6F18) << LODWORD(STACK[0x4C0])) + ((v146 & 0xC90EAC32 ^ 0x4904A430 ^ (v146 ^ 0x7DC4A4B5) & v142) >> LODWORD(STACK[0x4C8])));
  *(STACK[0x468] + v147) = v137 ^ *(STACK[0x478] + 624) ^ (*(STACK[0x478] + 624) >> 3) ^ (*(STACK[0x478] + 624) >> 2) ^ 0x7FD7551A;
  return (*(STACK[0x4E0] + 8 * v64))(3373182002, 0, v160, v141, v142, v137, v134, v143, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, v150, a38, a39, v113, a41, v153, v98, a44, a45, v155, v156, v157, a51, v158);
}

uint64_t sub_1002B56B8(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(a44) = LODWORD(STACK[0x310]) - LODWORD(STACK[0x488]);
  LODWORD(STACK[0x310]) = a3 ^ 0x35E07208;
  LODWORD(v988) = v86 & 0x1B74FC5E;
  HIDWORD(v987) = v87 & 0x1B74FC5E;
  v90 = STACK[0x350];
  v91 = STACK[0x368];
  v92 = STACK[0x31C];
  v93 = LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x350]) ^ a71 ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x3B0]) ^ a44 ^ LODWORD(STACK[0x2E8]) ^ a57 ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2C4]);
  v94 = STACK[0x390];
  v95 = STACK[0x388];
  v96 = STACK[0x2C0];
  HIDWORD(v984) = LODWORD(STACK[0x304]) ^ 0xF6F97C8D;
  LODWORD(v984) = LODWORD(STACK[0x358]) ^ 0xC0C22F0F;
  v97 = STACK[0x348];
  v98 = a73 ^ LODWORD(STACK[0x390]) ^ a75 ^ a49 ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x35C]) ^ v984 ^ LODWORD(STACK[0x2F0]) ^ HIDWORD(v984) ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x2C8]);
  v99 = STACK[0x4D0];
  v100 = v98 ^ (((v98 ^ 0x8F5D354C) & STACK[0x4D0]) >> 1);
  v102 = (((v100 ^ 0x8F5D354D) & a7) >> a4) - ((2 * (((v100 ^ 0x8F5D354D) & a7) >> a4)) & 0x3CDD1FB0) - 1636921384;
  v103 = STACK[0x4A8];
  v104 = (((v100 ^ 0xF2F716CE) & v89 | STACK[0x4A8] & 0x7DAA2383) ^ 0x7DAA2383) << v88;
  LODWORD(STACK[0x470]) = v102 ^ 0x710B294A ^ (v104 - ((2 * v104) & 0xDECB4D24) - 278550894);
  v105 = STACK[0x308];
  v106 = v93 ^ LODWORD(STACK[0x308]) ^ (((v93 ^ LODWORD(STACK[0x308]) ^ 0xE30E882) & v85) >> 1);
  v107 = STACK[0x4A0];
  v108 = STACK[0x238];
  v109 = STACK[0x4C8];
  v110 = ((v106 & 0xCB3E6D18 ^ 0xA306800 ^ (v106 ^ 0xE30E883) & (v107 ^ 0xCB3E6D14)) >> v109) - ((2 * ((v106 & 0xCB3E6D18 ^ 0xA306800 ^ (v106 ^ 0xE30E883) & (v107 ^ 0xCB3E6D14)) >> v109)) & 0x46039258) + 587319596;
  v111 = (((v106 ^ 0x8FD6F25E) & ~LODWORD(STACK[0x238]) | STACK[0x238] & 0x81E61ADD) ^ 0x81E61ADD) << LODWORD(STACK[0x4C0]);
  v112 = STACK[0x4C0];
  LODWORD(STACK[0x488]) = v110 & 0x6D579911 ^ 0x1A6B9FC7 ^ ((v111 - ((2 * v111) & 0xA565201C) + 1387433998) ^ 0xC01AF6E0) & (v110 ^ 0xDCFE36D3);
  v113 = v96 ^ ((v96 & v85) >> 1);
  v114 = v85;
  v115 = v92 ^ (((LODWORD(STACK[0x318]) ^ 0xB25F2A1C) & v85) >> 1);
  LODWORD(v986) = (((v103 & 0xC29B843 | v89 & (v113 ^ 0xC29B843)) ^ 0xC29B843) << v88) + ((v113 & (v107 ^ 0xC)) >> a4);
  HIDWORD(v985) = ((((v115 ^ 0x41F34F75) & ~v108 | v108 & 0x447BCFED) ^ 0x447BCFED) << v88) + ((v115 & 0x11A2DEA2 ^ 0x1808080 ^ (v115 ^ 0x5888098) & (a7 ^ 0x11A2DEA2)) >> v109);
  LOBYTE(v92) = v109;
  LODWORD(STACK[0x320]) ^= LODWORD(STACK[0x4B0]) ^ 0x98989898 ^ (((((a57 ^ ((a57 & v85) >> 1) ^ 0xFAF4C06) & v89 | v103 & 0xFAF4C06) ^ 0xFAF4C06) << v112) + (((a57 ^ ((a57 & v85) >> 1) ^ 0xBC3D0063) & (v107 ^ 0xC) ^ v107 & 0xBC3D0063) >> v109));
  v116 = v91 ^ ((v91 & v85) >> 1);
  v118 = ((v116 & a7) >> a4) - ((2 * ((v116 & a7) >> a4)) & 0x22CCDB9E) + 291925455;
  LODWORD(v987) = LODWORD(STACK[0x3F4]) ^ 0xA80CC231;
  LODWORD(STACK[0x31C]) = LODWORD(STACK[0x370]) ^ v987 ^ 0x8420EE1D ^ (((((v94 ^ ((v85 & (v94 ^ 0x34F8FCE)) >> 1) ^ 0xDB5C3889) & ~v108 | v108 & 0xD813B747) ^ 0xD813B747) << v88) + ((a7 & (v94 ^ ((v85 & (v94 ^ 0x34F8FCE)) >> 1) ^ 0x34F8FCE)) >> a4));
  v119 = (((v116 ^ 0xC355CB08) & v89 | v103 & 0xC355CB08) ^ 0xC355CB08) << v112;
  LODWORD(STACK[0x318]) = (v119 - ((2 * v119) & 0xABEDDE50) - 705237208) & 0x249167A9 ^ 0xDFFEFF7E ^ ((v119 - ((2 * v119) & 0xABEDDE50) - 705237208) ^ 0x2A0910D7) & (v118 ^ 0xCA08F599);
  v120 = v90 ^ ((v85 & (v90 ^ 0xD0CEA1B0)) >> 1);
  v121 = (v120 ^ 0xACB86B64) & ~v108 | v108 & 0x7C76CAD5;
  v122 = LODWORD(STACK[0x398]) ^ 0xEAE5D690;
  LODWORD(STACK[0x398]) = (((a7 & (v120 ^ 0xD0CEA1B1)) >> v92) - ((2 * ((a7 & (v120 ^ 0xD0CEA1B1)) >> v92)) & 0x3F8FA3CC) + 533189094) ^ 0xBACEE8E3 ^ (((v121 ^ 0x7C76CAD5) << v88) - ((2 * ((v121 ^ 0x7C76CAD5) << v88)) & 0x4A12720A) - 1526122235);
  v123 = v105 ^ ((v122 & v99) >> 1);
  v124 = v123 ^ 0x771EE5BC;
  v125 = a7;
  v126 = (((v123 ^ 0xB92C4442) & v89 | v103 & 0xCE32A1FE) ^ 0xCE32A1FE) << v112;
  LODWORD(STACK[0x390]) = (((v124 & a7) >> a4) - ((2 * ((v124 & a7) >> a4)) & 0x2F0CE326) + 394686867) ^ 0x4A8BE3EC ^ (v126 - ((2 * v126) & 0xBA1B24FE) + 1561170559);
  v127 = v95 ^ ((v95 & v99) >> 1);
  v128 = ((v103 & 0x12402782 | v89 & (v127 ^ 0x12402782)) ^ 0x12402782) << v88;
  v129 = a71 ^ ((v85 & (a71 ^ 0x8C3C6B66)) >> 1);
  v130 = ((a7 & v127) >> v92) - ((2 * ((a7 & v127) >> v92)) & 0xC60B2CE2) + 1661310577;
  v131 = ((v103 & 0xA0E86688 | v89 & (v129 ^ 0x2CD40DEF)) ^ 0xA0E86688) << v112;
  LODWORD(STACK[0x308]) = (v128 - ((2 * v128) & 0xC6DD9FB8) + 1668206556) & 0xD6B095D4 ^ 0x6B6FEFFF ^ ((v128 - ((2 * v128) & 0xC6DD9FB8) + 1668206556) ^ 0x9C913023) & (v130 ^ 0x4A4AFC5A);
  LODWORD(STACK[0x388]) = (((a7 & (v129 ^ 0x8C3C6B67)) >> v92) - ((2 * ((a7 & (v129 ^ 0x8C3C6B67)) >> v92)) & 0x3D1C37A4) - 1634853934) ^ 0x96C5EAD8 ^ (v131 - ((2 * v131) & 0x1097E214) + 139194634);
  v132 = a73 ^ ((v99 & (a73 ^ 0x8C3C6B66)) >> 1);
  v133 = ((v103 & 0x1F152557 | v89 & (v132 ^ 0x93294E30)) ^ 0x1F152557) << v112;
  v134 = (v107 & 0xE9B58A3E ^ (v132 ^ 0x6589E159) & (v107 ^ 0xC) ^ 0xC) >> a4;
  LODWORD(STACK[0x370]) = (v134 - ((2 * v134) & 0x6E51C47A) + 925426237) ^ (v133 - ((2 * v133) & 0x2B9B540E) - 1781683705) ^ 0xA2E5483A;
  v135 = a75 ^ ((v85 & (a75 ^ 0x8C3C6B66)) >> 1);
  v136 = (((v135 ^ 0xD3AE07F7) & ~v108 | v108 & 0x5F926C90) ^ 0x5F926C90) << v88;
  LODWORD(STACK[0x368]) = (((a7 & (v135 ^ 0x8C3C6B67)) >> v92) - ((2 * ((a7 & (v135 ^ 0x8C3C6B67)) >> v92)) & 0x6E12FA48) - 1224114908) ^ 0x4C70AFD ^ (v136 - ((2 * v136) & 0x679CEFB2) - 1278314535);
  v137 = a49 ^ ((v99 & (a49 ^ 0x8C3C6B66)) >> 1);
  v138 = ((v103 & 0x771CEB36 | v89 & (v137 ^ 0xFB208051)) ^ 0x771CEB36) << v112;
  v139 = LODWORD(STACK[0x358]) ^ 0xB1037790;
  v140 = v97 ^ ((v97 & v85) >> 1);
  v141 = (v137 & 0xA69A42E0 ^ 0x84184260 ^ (v137 ^ 0x8C3C6B67) & (v107 ^ 0xA69A42EC)) >> v92;
  LODWORD(STACK[0x358]) = (v138 - ((2 * v138) & 0x80669420) - 1070380528) & 0xF5A6C965 ^ 0xCA7B7E9A ^ ((v138 - ((2 * v138) & 0x80669420) - 1070380528) ^ 0x3FCCB5EF) & ((v141 - ((2 * v141) & 0x688FD35A) + 877128109) ^ 0x3E1EDF37);
  v142 = ((v140 & a7) >> a4) - ((2 * ((v140 & a7) >> a4)) & 0x4ECAD30) + 41309848;
  v143 = (((v140 ^ 0xED94AA05) & ~v108 | v108 & 0xED94AA05) ^ 0xED94AA05) << v112;
  v144 = v143 - ((2 * v143) & 0xFE3A5602);
  v145 = v984 ^ ((v139 & v99) >> 1);
  v146 = a44 ^ ((v114 & a44) >> 1);
  v147 = (v145 ^ 0x71C1589F) & (v107 ^ 0xF932A729);
  v148 = v145 & 0xF932A725;
  v149 = (((v145 ^ 0xA1634020) & v89 | v103 & 0xD0A218BF) ^ 0xD0A218BF) << v112;
  v150 = ((v148 ^ 0x71000005 ^ v147) >> v92) - ((2 * ((v148 ^ 0x71000005 ^ v147) >> v92)) & 0x8F1338B8) - 947282852;
  v151 = (((v146 ^ 0x5B5C1F2) & ~v108 | v108 & 0x5B5C1F2) ^ 0x5B5C1F2) << v88;
  LODWORD(STACK[0x348]) = v142 ^ 0xFD6B7D99 ^ (v144 - 14865663);
  LODWORD(STACK[0x350]) = v150 ^ (v149 - 467841686 + (~(2 * v149) | 0x37C5652D)) ^ 0x2394D135;
  v152 = LODWORD(STACK[0x330]) ^ ((STACK[0x310] & v99) >> 1);
  LODWORD(STACK[0x310]) = (((v125 & v146) >> a4) - ((2 * ((v125 & v146) >> a4)) & 0xF3EC70FE) - 101304193) ^ 0x8A1BDA81 ^ (v151 - ((2 * v151) & 0xE7DBC5FC) + 1944969982);
  v153 = (v152 & 0xEEF3B79C ^ 0xEE430204 ^ (v152 ^ 0xEF4F0226) & (v107 ^ 0xEEF3B790)) >> v92;
  v154 = (((v152 ^ 0x907992B6) & ~v108 | v108 & 0x7F369090) ^ 0x7F369090) << v88;
  LODWORD(STACK[0x330]) = (v154 - ((2 * v154) & 0x4838E400) - 1541639680) & 0x1A42FFED ^ 0xE5BD7212 ^ ((v154 - ((2 * v154) & 0x4838E400) - 1541639680) ^ 0x5BE38DFF) & ((v153 - ((2 * v153) & 0x34B927A0) - 1705208880) ^ 0x7FE193C2);
  v155 = LODWORD(STACK[0x2F0]) ^ (((LODWORD(STACK[0x2F8]) ^ 0x4E846162) & v114) >> 1);
  v156 = (((v155 ^ 0x15967E6) & v89 | v103 & 0xB34898A6) ^ 0xB34898A6) << v112;
  v157 = LODWORD(STACK[0x3F8]) ^ ((v114 & (LODWORD(STACK[0x3F8]) ^ 0x99B04FBC)) >> 1);
  v158 = (v155 & 0xDFAC8673 ^ 0x92008640 ^ (v155 ^ 0xB211FF40) & (v107 ^ 0xDFAC867F)) >> a4;
  LODWORD(STACK[0x3F8]) = (v158 - ((2 * v158) & 0x35EC624E) + 452342055) ^ 0xE87BE8F0 ^ (v156 - ((2 * v156) & 0xE51BB3AE) - 225584681);
  v159 = (v103 & 0x4C1F7D1E | v89 & (v157 ^ 0xD5AF32A3)) ^ 0x4C1F7D1E;
  v160 = v157 & 0x21CA73F ^ 0x10073D ^ (v125 ^ 0x21CA73F) & (v157 ^ 0x99B04FBD);
  v161 = LODWORD(STACK[0x328]) ^ ((v114 & (LODWORD(STACK[0x328]) ^ 0x99B04FBC)) >> 1);
  LODWORD(STACK[0x2F8]) = (v159 << v88) + (v160 >> v92);
  v162 = ((v103 & 0x38297F32 | v89 & (v161 ^ 0xA199308F)) ^ 0x38297F32) << v112;
  v163 = LODWORD(STACK[0x2D4]) ^ ((v99 & (LODWORD(STACK[0x2D4]) ^ 0x2BA201A2)) >> 1);
  v164 = (v161 & 0x7697910A ^ 0x10900108 ^ (v125 ^ 0x7697910A) & (v161 ^ 0x99B04FBD)) >> a4;
  LODWORD(STACK[0x2D4]) = (v162 - ((2 * v162) & 0xF1A4D0FC) - 120428418) & 0xF2A4B1C ^ 0xF8D7FCFF ^ ((v162 - ((2 * v162) & 0xF1A4D0FC) - 120428418) ^ 0x72D9781) & ((v164 - ((2 * v164) & 0xFD358076) + 2124070971) ^ 0x8E4F74D8);
  v165 = ((v108 & 0xA28764FC | (v163 ^ 0x8925655E) & ~v108) ^ 0xA28764FC) << v88;
  v166 = LODWORD(STACK[0x3A0]) ^ ((v114 & (LODWORD(STACK[0x3A0]) ^ 0x99B04FBC)) >> 1);
  v167 = v103 & 0xE3FCE97E | v89 & (v166 ^ 0x7A4CA6C3);
  v168 = (v163 & 0xFFFF1A9D ^ 0x2BA20080 ^ (v163 ^ 0x2BA201A2) & (v107 ^ 0xFFFF1A91)) >> v92;
  v996 = (v168 - ((2 * v168) & 0xF8AF4F9A) - 61364275) ^ 0xBCBDEB86 ^ (v165 - ((2 * v165) & 0x81D49896) + 1089096779);
  v169 = v107 & 0x1B0986A7 ^ (v166 ^ 0x82B9C91A) & (v107 ^ 0xC);
  v170 = LODWORD(STACK[0x2DC]) ^ ((STACK[0x2DC] & v114) >> 1);
  v171 = ((v103 & 0xF78EE00E | v89 & (v170 ^ 0xF78EE00E)) ^ 0xF78EE00E) << v112;
  LODWORD(STACK[0x2F0]) = (v171 - ((2 * v171) & 0x19D22A4C) - 1930881754) & 0x942038D2 ^ 0xEFFFD72F ^ ((v171 - ((2 * v171) & 0x19D22A4C) - 1930881754) ^ 0x7316EAD9) & ((((v170 & (v107 ^ 0xC)) >> v92) - ((2 * ((v170 & (v107 ^ 0xC)) >> v92)) & 0x481CB49A) + 604920397) ^ 0x4FD19D60);
  LODWORD(STACK[0x3A0]) = ((v167 ^ 0xE3FCE97E) << v88) + ((v169 ^ 4) >> v92);
  v172 = LODWORD(STACK[0x304]) ^ 0x87A38196;
  v173 = LODWORD(STACK[0x2C4]) ^ (((a47 ^ 0x8F430D0C) & v114) >> 1);
  v174 = (((v173 ^ 0x424C40F9) & ~v108 | v108 & 0x54957E0B) ^ 0x54957E0B) << v112;
  v175 = (v173 & 0xD62475E6 ^ 0x160034E2 ^ (v173 ^ 0x16D93EF2) & (v107 ^ 0xD62475EA)) >> v92;
  LODWORD(STACK[0x328]) = (v175 - ((2 * v175) & 0xE1FD3EB0) + 1895735128) ^ 0x7EF94B43 ^ (v174 - ((2 * v174) & 0x1C0FA836) + 235394075);
  v176 = HIDWORD(v984) ^ ((v172 & v114) >> 1);
  v177 = (v176 ^ 0x715AFD1A) & (v107 ^ 0xF9625D8D);
  v178 = v176 & 0xF9625D81;
  v179 = (((v176 ^ 0xE30A9B14) & v89 | v103 & 0x9250660E) ^ 0x9250660E) << v112;
  LODWORD(STACK[0x304]) = (((v178 ^ 0x71425D00 ^ v177) >> v92) - ((2 * ((v178 ^ 0x71425D00 ^ v177) >> v92)) & 0xA81198E0) + 1409862768) ^ 0x690D68C0 ^ (v179 - ((2 * v179) & 0x7A0B4960) + 1023780016);
  v180 = LODWORD(STACK[0x2E8]) ^ ((v114 & (HIDWORD(a47) ^ 0xAAF137CA)) >> 1);
  LOBYTE(v105) = v92;
  LODWORD(STACK[0x2E8]) = (((v125 & (v180 ^ 0x106E51AD)) >> v92) - ((2 * ((v125 & (v180 ^ 0x106E51AD)) >> v92)) & 0x7D589EC4) + 1051479906) ^ 0x5C81046E ^ ((((v103 & 0x640468C2 | v89 & (v180 ^ 0x746A396F)) ^ 0x640468C2) << v112) - ((2 * (((v103 & 0x640468C2 | v89 & (v180 ^ 0x746A396F)) ^ 0x640468C2) << v112)) & 0xC45A9618) + 1647135500);
  v181 = LODWORD(STACK[0x2E0]) ^ ((v99 & (LODWORD(STACK[0x2E0]) ^ 0xC511E598)) >> 1);
  v182 = a54 ^ ((v114 & (a54 ^ 0xF5461370)) >> 1);
  LODWORD(STACK[0x2E0]) = (((v103 & 0xEE0DCEC9 | v89 & (v181 ^ 0x2B1C2B51)) ^ 0xEE0DCEC9) << v88) + ((v181 & 0x83F44B93 ^ 0x81104190 ^ (v125 ^ 0x83F44B93) & (v181 ^ 0xC511E598)) >> v92);
  v183 = ((v182 ^ 0xD1909641) & ~v108 | v108 & 0x24D68530) ^ 0x24D68530;
  v184 = v182 & 0x68862837 ^ 0x60060031 ^ (v182 ^ 0xF5461371) & (v107 ^ 0x6886283B);
  v185 = LODWORD(STACK[0x2C8]) ^ (((a48 ^ 0x77577468) & v114) >> 1);
  LODWORD(STACK[0x2C8]) = (v183 << v112) + (v184 >> a4);
  v186 = (((v185 ^ 0xF5E8D6EB) & v89 | v103 & 0x4BBD0CB3) ^ 0x4BBD0CB3) << v88;
  v187 = (v185 & 0xDCDBD1F9 ^ 0x9C51D058 ^ (v185 ^ 0xBE55DA58) & (v125 ^ 0xDCDBD1F9)) >> a4;
  LODWORD(STACK[0x2DC]) = (v187 - ((2 * v187) & 0x5AA8D008) - 1386977276) ^ 0x1C07F09C ^ (v186 - ((2 * v186) & 0x62A73130) - 1319921512);
  v188 = a66 ^ ((v99 & (a66 ^ 0xF5461370)) >> 1);
  v189 = (v188 ^ 0xD8CE2B63) & (v107 ^ 0xC) ^ v107 & 0x2D883812;
  v190 = ((v108 & 0x1AE91906 | (v188 ^ 0xEFAF0A77) & ~v108) ^ 0x1AE91906) << v112;
  v191 = LODWORD(STACK[0x2D8]) ^ (((HIDWORD(a49) ^ 0x984D6EB4) & v114) >> 1);
  LODWORD(STACK[0x2C4]) = ((v189 >> v92) - ((2 * (v189 >> v92)) & 0x667C20C0) + 859705440) ^ 0x8D10D617 ^ (v190 - ((2 * v190) & 0x7C5D8CEE) - 1104230793);
  v994 = (((a67 ^ ((v99 & (a67 ^ 0xF5461370)) >> 1)) & 0x8749139C ^ 0x85401310 ^ (v125 ^ 0x8749139C) & (a67 ^ ((v99 & (a67 ^ 0xF5461370)) >> 1) ^ 0xF5461371)) >> a4) + (((v108 & 0x5E29B2F7 | (a67 ^ ((v99 & (a67 ^ 0xF5461370)) >> 1) ^ 0xAB6FA186) & ~v108) ^ 0x5E29B2F7) << v112);
  LODWORD(STACK[0x2D8]) = (((v103 & 0x9792F59 | (v191 ^ 0x2561E87D) & v89) ^ 0x9792F59) << v88) + (((v191 ^ 0x4E726E47) & (v107 ^ 0xC) ^ v107 & 0x626AA963) >> v92);
  v192 = LODWORD(STACK[0x2D0]) ^ (((HIDWORD(a48) ^ 0xB6A49AB8) & v99) >> 1);
  v193 = (((v192 ^ 0xA67CF294) & v89 | v103 & 0xE935FC5E) ^ 0xE935FC5E) << v88;
  LODWORD(STACK[0x2D0]) = ((((v192 ^ 0x4F490ECA) & v125) >> v92) - ((2 * (((v192 ^ 0x4F490ECA) & v125) >> v92)) & 0x251DF74) + 19460026) ^ 0x846D4280 ^ (v193 - ((2 * v193) & 0xA8B5A74) - 2059031238);
  v194 = a50 ^ ((v114 & (a50 ^ 0xF5461370)) >> 1);
  v195 = (v194 ^ 0x81CB6D62) & ~v108 | v108 & 0x748D7E13;
  v196 = (v194 & 0x73B3E552 ^ 0x71020150 ^ (v194 ^ 0xF5461371) & (v107 ^ 0x73B3E55E)) >> a4;
  v993 = (v196 - ((2 * v196) & 0x121643CC) - 1995759130) & 0x4A695B97 ^ 0xBD9FA5EE ^ ((((v195 ^ 0x748D7E13) << v112) - ((2 * ((v195 ^ 0x748D7E13) << v112)) & 0x3106596A) - 1736233803) ^ 0x2D1588DD) & ((v196 - ((2 * v196) & 0x121643CC) - 1995759130) ^ 0x76F4DE19);
  v197 = LODWORD(STACK[0x338]) ^ ((v99 & (LODWORD(STACK[0x338]) ^ 0x2188D2D8)) >> 1);
  v198 = HIDWORD(a68) ^ ((v114 & (HIDWORD(a68) ^ 0x6FF25BC4)) >> 1);
  v199 = (v125 ^ 0xA1EB5994) & (v198 ^ 0x6FF25BC4);
  v200 = v198 & 0xA1EB5994;
  v201 = (((v198 ^ 0xCB3AE109) & ~v108 | v108 & 0xA4C8BACD) ^ 0xA4C8BACD) << v112;
  LODWORD(STACK[0x338]) = (((v103 & 0xC77039FD | v89 & (v197 ^ 0xE6F8EB25)) ^ 0xC77039FD) << v88) + ((v197 & 0x778DA0CB ^ 0x218880C8 ^ (v197 ^ 0x2188D2D8) & (v107 ^ 0x778DA0C7)) >> v92);
  HIDWORD(a68) = (v201 - ((2 * v201) & 0xF583D89E) + 2059529295) ^ (((v200 ^ 0x21E25984 ^ v199) >> a4) - ((2 * ((v200 ^ 0x21E25984 ^ v199) >> a4)) & 0x9238C35A) - 920886867) ^ 0xB3DD8DE2;
  v202 = LODWORD(STACK[0x400]) ^ ((v99 & (LODWORD(STACK[0x400]) ^ 0x2188D2D8)) >> 1);
  v203 = a69 ^ ((v114 & (a69 ^ 0x6FF25BC4)) >> 1);
  v204 = ((v103 & 0x9AA8ABC7 | v89 & (v202 ^ 0xBB20791F)) ^ 0x9AA8ABC7) << v88;
  LODWORD(v991) = ((v204 - ((2 * v204) & 0x8DDE17CA) - 957412379) ^ 0x3910F41A) & ((((v125 & (v202 ^ 0x2188D2D8)) >> a4) - ((2 * ((v125 & (v202 ^ 0x2188D2D8)) >> a4)) & 0x5E9F2162) - 1353740111) ^ 0xD2ADF728) ^ (v204 - ((2 * v204) & 0x8DDE17CA) - 957412379) & 0x821D9866;
  v205 = (v203 ^ 0x5A64D8C6) & ~v108 | v108 & 0x35968302;
  v206 = (v107 & 0xD34FD36A ^ (v203 ^ 0xBCBD88AE) & (v107 ^ 0xC) ^ 8) >> v92;
  v207 = ((v205 ^ 0x35968302) << v112) - 1433267190 + (~(2 * ((v205 ^ 0x35968302) << v112)) | 0xAADBD7ED);
  LODWORD(v992) = v207 & 0xD02AFCC6 ^ 0xAFD71739 ^ (v207 ^ 0x556DEBF6) & ((v206 - ((2 * v206) & 0x5BD53E00) - 1377132800) ^ 0x823F9C39);
  v208 = LODWORD(STACK[0x3B0]) ^ ((v99 & (LODWORD(STACK[0x3B0]) ^ 0x2188D2D8)) >> 1);
  v209 = v108 & 0x3948B910 | (v208 ^ 0x18C06BC8) & ~v108;
  v210 = (v208 & 0x35BE59F6 ^ 0x218850D0 ^ (v208 ^ 0x2188D2D8) & (v107 ^ 0x35BE59FA)) >> v92;
  v211 = a70 ^ ((v114 & (a70 ^ 0x6FF25BC4)) >> 1);
  LODWORD(a54) = (((v209 ^ 0x3948B910) << v112) - ((2 * ((v209 ^ 0x3948B910) << v112)) & 0x86D1BC9A) - 1016537523) ^ (v210 - ((2 * v210) & 0x11FCBBE8) + 150887924);
  v212 = ((v103 & 0x79F21BFC | v89 & (v211 ^ 0x16004038)) ^ 0x79F21BFC) << v88;
  v213 = (v211 & 0xF325F50E ^ 0x63205104 ^ (v125 ^ 0xF325F50E) & (v211 ^ 0x6FF25BC4)) >> a4;
  v214 = LODWORD(STACK[0x408]) ^ ((v99 & (LODWORD(STACK[0x408]) ^ 0x2188D2D8)) >> 1);
  LODWORD(STACK[0x3B0]) = (v213 - ((2 * v213) & 0x397A089A) + 482149453) ^ 0x2D9BD605 ^ (v212 - ((2 * v212) & 0x624DA490) + 824627784);
  v215 = v103 & 0x71DA4FD8 | v89 & (v214 ^ 0x50529D00);
  v216 = v125;
  v217 = ((v125 & (v214 ^ 0x2188D2D8)) >> v92) + 1718346366 + (~(2 * ((v125 & (v214 ^ 0x2188D2D8)) >> v92)) | 0x33283B05);
  v218 = HIDWORD(a55) ^ ((v114 & (HIDWORD(a55) ^ 0x6FF25BC4)) >> 1);
  v219 = (v218 ^ 0xCF937EC9) & ~v108 | v108 & 0xA061250D;
  v220 = ((v218 ^ 0x1A711D96) & (v107 ^ 0xC) ^ v107 & 0x75834652) >> a4;
  LODWORD(STACK[0x400]) = v217 & 0x2AF2B4B5 ^ 0xF76FEB7F ^ ((((v215 ^ 0x71DA4FD8) << v112) - ((2 * ((v215 ^ 0x71DA4FD8) << v112)) & 0xAB98553C) + 1439443614) ^ 0x80C161D4) & (v217 ^ 0x99941D82);
  v221 = LODWORD(STACK[0x3B4]) ^ ((v99 & (LODWORD(STACK[0x3B4]) ^ 0x703ECF36)) >> 1);
  v222 = ((v108 & 0xDAF932E | (v221 ^ 0x7D915C18) & ~v108) ^ 0xDAF932E) << v88;
  HIDWORD(v992) = (v220 - ((2 * v220) & 0xAF31A468) + 1469633076) ^ 0x75319B1A ^ (((v219 ^ 0xA061250D) << v88) - ((2 * ((v219 ^ 0xA061250D) << v88)) & 0x4552925C) + 581519662);
  v223 = a56 ^ ((v114 & (a56 ^ 0xCD1B3EA6)) >> 1);
  v224 = (v222 - ((2 * v222) & 0xBF73C622) + 1606017809) ^ (((v125 & (v221 ^ 0x703ECF36)) >> v92) - 1932805522 + (~(2 * ((v125 & (v221 ^ 0x703ECF36)) >> v92)) | 0xE6688B25)) ^ 0xD372597C;
  HIDWORD(a55) = v224;
  v225 = ((v103 & 0x800CA044 | v89 & (v223 ^ 0x4D179EE2)) ^ 0x800CA044) << v112;
  v226 = (v107 & 0xF9DD33A9 ^ (v223 ^ 0x34C60D0F) & (v107 ^ 0xC) ^ 8) >> a4;
  HIDWORD(v991) = (v226 - ((2 * v226) & 0x2A56C342) + 355164577) ^ (v225 - ((2 * v225) & 0xBF89015C) + 1606713518) ^ 0x4AEFE10F;
  v227 = LODWORD(STACK[0x30C]) ^ (((LODWORD(STACK[0x344]) ^ 0x703ECF36) & v114) >> 1);
  v228 = (v227 ^ 0x229A36D7) & v89 | v103 & 0xB40808A6;
  v229 = (v107 & 0x1E945AAA ^ (v227 ^ 0x880664DB) & (v107 ^ 0xC) ^ 8) >> a4;
  LODWORD(STACK[0x3B4]) = (v229 - ((2 * v229) & 0x8C2BF628) + 1175845652) & 0xB89D6871 ^ 0x4777FF9E ^ ((((v228 ^ 0xB40808A6) << v88) - ((2 * ((v228 ^ 0xB40808A6) << v88)) & 0x1EFDDFC) + 16248574) ^ 0x47957970) & ((v229 - ((2 * v229) & 0x8C2BF628) + 1175845652) ^ 0xB9EA04EB);
  v230 = a53 ^ ((v99 & (a53 ^ 0xCD1B3EA6)) >> 1);
  v231 = ((v125 & (v230 ^ 0xCD1B3EA6)) >> v105) - ((2 * ((v125 & (v230 ^ 0xCD1B3EA6)) >> v105)) & 0x52F9F132) + 696055961;
  v232 = ((v108 & 0xFA4608B2 | (v230 ^ 0x375D3614) & ~v108) ^ 0xFA4608B2) << v112;
  LODWORD(STACK[0x344]) = (v232 - ((2 * v232) & 0x73D3EB68) - 1175849548) ^ v231 ^ 0x90950D2D;
  v233 = LODWORD(STACK[0x3B8]) ^ ((v99 & (LODWORD(STACK[0x3B8]) ^ 0x703ECF36)) >> 1);
  v234 = ((v103 & 0x93210D02 | v89 & (v233 ^ 0xE31FC234)) ^ 0x93210D02) << v112;
  v235 = a74 ^ ((v114 & (a74 ^ 0xCD1B3EA6)) >> 1);
  v236 = (((v235 ^ 0x2ABCEB33) & ~v108 | v108 & 0xE7A7D595) ^ 0xE7A7D595) << v88;
  v237 = (v233 & 0x484ADB1F ^ 0x400ACB16 ^ (v233 ^ 0x703ECF36) & (v107 ^ 0x484ADB13)) >> a4;
  v238 = ((v125 & (v235 ^ 0xCD1B3EA6)) >> v105) - ((2 * ((v125 & (v235 ^ 0xCD1B3EA6)) >> v105)) & 0xBCE1A3BC) + 1584452062;
  LODWORD(STACK[0x30C]) = v238 & 0x19950C9F ^ 0xFE7AF3FE ^ ((v236 - ((2 * v236) & 0xA36420D0) + 1370624104) ^ 0xB7D8E308) & (v238 ^ 0xA18F2E21);
  LODWORD(STACK[0x3B8]) = (v237 - ((2 * v237) & 0x65CD2B5C) - 1293511250) & 0xAA28FFA6 ^ 0xF7F795FF ^ ((v234 - ((2 * v234) & 0xEEDD0372) + 2003730873) ^ 0x22B981E0) & ((v237 - ((2 * v237) & 0x65CD2B5C) - 1293511250) ^ 0x4D196A51);
  v239 = LODWORD(STACK[0x3C4]) ^ ((v114 & (LODWORD(STACK[0x3C4]) ^ 0x703ECF36)) >> 1);
  LODWORD(STACK[0x3C4]) = (((v103 & 0x5AFEF315 | v89 & (v239 ^ 0x2AC03C23)) ^ 0x5AFEF315) << v112) + ((v239 & 0x24A6D982 ^ 0x2026C902 ^ (v125 ^ 0x24A6D982) & (v239 ^ 0x703ECF36)) >> a4);
  v240 = a76 ^ ((v99 & (a76 ^ 0xCD1B3EA6)) >> 1);
  v241 = v108 & 0x34B9FE23 | (v240 ^ 0xF9A2C085) & ~v108;
  v242 = ((v240 ^ 0x6A437BE6) & (v107 ^ 0xC) ^ v107 & 0xA7584540) >> v105;
  v243 = ((v241 ^ 0x34B9FE23) << v88) - ((2 * ((v241 ^ 0x34B9FE23) << v88)) & 0x9EDC7F84) - 814858302;
  v997 = v243 & 0x7FDFAB69 ^ 0xCF6E7FD6 ^ (v243 ^ 0x3091C03D) & ((v242 - ((2 * v242) & 0xCF4B737A) + 1738914237) ^ 0xE785ED2B);
  v244 = LODWORD(STACK[0x354]) ^ ((v99 & (LODWORD(STACK[0x354]) ^ 0xC279D12E)) >> 1);
  v245 = (v244 & 0xBC8312F7 ^ 0x80011026 ^ (v244 ^ 0xC279D12E) & (v107 ^ 0xBC8312FB)) >> a4;
  v246 = ((v103 & 0x27E10E29 | v89 & (v244 ^ 0xE598DF07)) ^ 0x27E10E29) << v88;
  v247 = (v245 - ((2 * v245) & 0x5C900E6C) + 776472374) ^ 0xEBCBB856 ^ (v246 - ((2 * v246) & 0x8B077EC0) - 981221536);
  LODWORD(a56) = v247;
  v248 = v114;
  v249 = LODWORD(STACK[0x35C]) ^ ((STACK[0x35C] & v114) >> 1);
  v250 = (v249 ^ 0xB14D8BCA) & ~v108 | v108 & 0xB14D8BCA;
  v251 = HIDWORD(a65) ^ ((v99 & (HIDWORD(a65) ^ 0x8F70ED2E)) >> 1);
  v998 = ((((a77 ^ ((v114 & (a77 ^ 0x8F70ED2E)) >> 1) ^ 0x127A4FB) & ~v108 | v108 & 0x8E5749D5) ^ 0x8E5749D5) << v112) + ((v125 & (a77 ^ ((v114 & (a77 ^ 0x8F70ED2E)) >> 1) ^ 0x8F70ED2E)) >> v105);
  v252 = ((v250 ^ 0xB14D8BCA) << v88) - ((2 * ((v250 ^ 0xB14D8BCA) << v88)) & 0x12C7824E) + 157532455;
  v253 = v252 & 0x36FA7448 ^ 0xC967CBB7 ^ (v252 ^ 0xF69C3ED8) & ((((v249 & (v107 ^ 0xC)) >> a4) - ((2 * ((v249 & (v107 ^ 0xC)) >> a4)) & 0x8BDADC84) + 1173188162) ^ 0x8CE8E5F5);
  LODWORD(v985) = v253;
  v254 = ((v103 & 0xFF904ECA | v89 & (v251 ^ 0x70E0A3E4)) ^ 0xFF904ECA) << v112;
  v255 = (v251 & 0x6AAB01BD ^ 0xA20012C ^ (v125 ^ 0x6AAB01BD) & (v251 ^ 0x8F70ED2E)) >> v105;
  HIDWORD(a65) = (v255 - ((2 * v255) & 0xDF6E05DC) - 273218834) ^ 0x515FC118 ^ (v254 - ((2 * v254) & 0x7DD187EC) - 1092041738);
  v256 = LODWORD(STACK[0x360]) ^ (((LODWORD(STACK[0x380]) ^ 0xC279D12E) & v99) >> 1);
  LODWORD(STACK[0x2C0]) = v107 ^ 0xC;
  LOBYTE(v251) = v88;
  LODWORD(STACK[0x490]) = v88;
  v257 = ((((v256 ^ 0xE0E8C052) & ~v108 | v108 & 0x837EE87C) ^ 0x837EE87C) << v88) + ((v107 & 0x568A426E ^ (v256 ^ 0x351C6A40) & (v107 ^ 0xC) ^ 0xC) >> a4);
  HIDWORD(v986) = v257;
  v258 = a78 ^ ((v114 & (a78 ^ 0x8F70ED2E)) >> 1);
  v259 = (v125 ^ 0x35A0DABA) & (v258 ^ 0x8F70ED2E);
  v260 = v258 & 0x35A0DABA;
  v261 = v105;
  v262 = ((v103 & 0x3FD503D0 | v89 & (v258 ^ 0xB0A5EEFE)) ^ 0x3FD503D0) << v112;
  v999 = (((v260 ^ 0x520C82A ^ v259) >> v105) - ((2 * ((v260 ^ 0x520C82A ^ v259) >> v105)) & 0xD8AA020) + 113594384) ^ 0xABA72126 ^ (v262 - ((2 * v262) & 0x5AC4E26C) - 1386057418);
  v263 = LODWORD(STACK[0x378]) ^ (((a60 ^ 0x8676A9FC) & v114) >> 1);
  v264 = ((((v263 ^ 0x56F04559) & ~v108 | v108 & 0xEB1E55A4) ^ 0xEB1E55A4) << v251) + (((v263 ^ 0xCE2242E) & (v107 ^ 0xC) ^ v107 & 0xB10C34D3) >> v105);
  HIDWORD(v988) = v264;
  v265 = v216;
  v995 = (((v103 & 0x178DAD54 | v89 & (HIDWORD(a54) ^ ((v99 & (HIDWORD(a54) ^ 0x8F70ED2E)) >> 1) ^ 0x98FD407A)) ^ 0x178DAD54) << v112) | ((v216 & (HIDWORD(a54) ^ ((v99 & (HIDWORD(a54) ^ 0x8F70ED2E)) >> 1) ^ 0x8F70ED2E)) >> a4);
  v266 = LODWORD(STACK[0x2F8]) ^ v986 ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x3F8]);
  LODWORD(STACK[0x380]) = a55 ^ 0x98989898 ^ v986;
  LODWORD(STACK[0x378]) = a55 ^ 0x98989898 ^ HIDWORD(v985);
  v267 = v266 ^ LODWORD(STACK[0x318]) ^ HIDWORD(v985) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x390]);
  v268 = LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x3A0]);
  v269 = v268 & 0x10000000;
  if ((v267 & v268 & 0x10000000) != 0)
  {
    v269 = -v269;
  }

  v270 = v269 + v267;
  v271 = a62 ^ LODWORD(STACK[0x3A8]) ^ LODWORD(STACK[0x480]) ^ HIDWORD(v987) ^ v988 ^ a64 ^ 0x8849C8AB;
  v272 = (LODWORD(STACK[0x220]) ^ a63 ^ 0x8707101F) - ((2 * (LODWORD(STACK[0x220]) ^ a63 ^ 0x8707101F)) & 0xF7E1D4AC) + 2079386198;
  v273 = a79 ^ LODWORD(STACK[0x4B0]) ^ 0x1F35C0AA;
  v274 = a68;
  v275 = (LODWORD(STACK[0x228]) ^ a68 ^ 0x8169B39B) - ((2 * (LODWORD(STACK[0x228]) ^ a68 ^ 0x8169B39B)) & 0xFB3C93A4);
  LODWORD(STACK[0x408]) = a54 ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x338]) ^ v224 ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x2E8]) ^ v247 ^ v991 ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x3B8]) ^ v268 & 0xEFFFFFFF ^ v253 ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x3B4]) ^ v257 ^ v264 ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x328]) ^ 0x3479EC44 ^ v270;
  HIDWORD(v989) = v987 ^ ((a80 ^ a64 ^ 0xF0075F91) - ((2 * (a80 ^ a64 ^ 0xF0075F91)) & 0xF7BE23C4) + 2078216674);
  LODWORD(STACK[0x228]) = v272 ^ a68;
  LODWORD(STACK[0x3F4]) ^= 0x79A5EA5D ^ (v271 - ((2 * v271) & 0xF7BE23C4) + 2078216674);
  v276 = (HIDWORD(a56) ^ a68 ^ 0x15B45B8D) - ((2 * (HIDWORD(a56) ^ a68 ^ 0x15B45B8D)) & 0xFB3C93A4);
  v277 = LODWORD(STACK[0x268]) ^ 0x127E2156;
  LODWORD(STACK[0x268]) = a63 ^ (v275 + 2107525586);
  LODWORD(a68) = a63 ^ (v273 - ((2 * v273) & 0xFB3C93A4) + 2107525586);
  LODWORD(STACK[0x220]) = a63 ^ (v276 + 2107525586);
  LODWORD(v990) = (((a61 - ((2 * a61) & 0xF7E1D4AC) + 2079386198) ^ v274) + 2107525586 + (~(2 * ((a61 - ((2 * a61) & 0xF7E1D4AC) + 2079386198) ^ v274)) | 0x4C36C5B) + 1) ^ a63;
  HIDWORD(v990) = ((v987 ^ a81 ^ 0x159BA039) - 2 * ((v987 ^ a81 ^ 0x159BA039) & 0x1E43EE4E ^ (v987 ^ a81) & 4) - 1639715254) ^ a64;
  v278 = (((v99 & v277) >> 1) - (v99 & v277 & 0x3235DB9E) - 1726288433) ^ LODWORD(STACK[0x248]);
  v279 = v248;
  v280 = (((v248 & (LODWORD(STACK[0x3CC]) ^ 0x8E790202)) >> 1) - (v248 & (LODWORD(STACK[0x3CC]) ^ 0x8E790202) & 0x508417D4) - 1472066582) ^ LODWORD(STACK[0x270]);
  v281 = v261;
  v1000 = ((v265 & v278) >> v261) | ((v278 & ~v108) << v112);
  v282 = STACK[0x2C0];
  v283 = STACK[0x490];
  LODWORD(STACK[0x480]) = ((v89 & v280) << LODWORD(STACK[0x490])) | ((v280 & STACK[0x2C0]) >> a4);
  v284 = (((v99 & (LODWORD(STACK[0x2A0]) ^ 0xA7481D62)) >> 1) - (v99 & (LODWORD(STACK[0x2A0]) ^ 0xA7481D62) & 0x28DACFD4) - 1804769302) ^ LODWORD(STACK[0x278]);
  HIDWORD(a45) = v265;
  v1001 = ((v265 & v284) >> a4) ^ ((v284 & ~v108) << v283);
  v285 = (((v248 & (LODWORD(STACK[0x2A4]) ^ 0x7BE1CC80)) >> 1) - (v248 & (LODWORD(STACK[0x2A4]) ^ 0x7BE1CC80) & 0x53F3A7C2) - 1443245087) ^ LODWORD(STACK[0x280]);
  v286 = (((v99 & (LODWORD(STACK[0x29C]) ^ 0x176E6CBC)) >> 1) - (v99 & (LODWORD(STACK[0x29C]) ^ 0x176E6CBC) & 0x1D964288) - 1899290300) ^ LODWORD(STACK[0x288]);
  LODWORD(v989) = ((v89 & v285) << v112) + ((v285 & v282) >> a4);
  v287 = v108;
  LODWORD(v988) = ((v265 & v286) >> v281) + ((v286 & ~v108) << v283);
  v288 = (((v99 & (LODWORD(STACK[0x294]) ^ 0xD0D5A2CC)) >> 1) - (v99 & (LODWORD(STACK[0x294]) ^ 0xD0D5A2CC) & 0xF598232A) - 87289451) ^ LODWORD(STACK[0x250]);
  v1003 = ((v89 & v288) << v283) ^ ((v288 & v282) >> a4);
  HIDWORD(v290) = a54 ^ 1;
  LODWORD(v290) = a54 ^ 0xCB9683B8;
  v289 = v290 >> 3;
  v291 = (((v248 & (LODWORD(STACK[0x3E8]) ^ 0x12E6388C)) >> 1) - (v248 & (LODWORD(STACK[0x3E8]) ^ 0x12E6388C) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  LODWORD(STACK[0x4B0]) = ((v291 & ~v108) << v283) | ((v291 & v282) >> v281);
  v292 = (692928087 * (v996 - HIDWORD(a65))) ^ ((692928087 * (v996 - HIDWORD(a65))) >> 16);
  v293 = (-1986001865 * (v292 ^ (v292 >> 8))) ^ ((-1986001865 * (v292 ^ (v292 >> 8))) >> 16);
  v294 = (-1583260105 * (v293 ^ (v293 >> 8))) ^ ((-1583260105 * (v293 ^ (v293 >> 8))) >> 16);
  v295 = 2139161809 * (v294 ^ (v294 >> 8)) - ((2139161809 * (v294 ^ (v294 >> 8))) >> 16);
  v296 = STACK[0x460];
  v297 = (v295 ^ (v295 >> 8)) - STACK[0x460];
  v298 = STACK[0x2D4];
  v299 = (692928087 * (v298 - v253)) ^ ((692928087 * (v298 - v253)) >> 16);
  v300 = (-1986001865 * (v299 ^ (v299 >> 8))) ^ ((-1986001865 * (v299 ^ (v299 >> 8))) >> 16);
  v301 = (-1583260105 * (v300 ^ (v300 >> 8))) ^ ((-1583260105 * (v300 ^ (v300 >> 8))) >> 16);
  v302 = v991 ^ 0xF6186552 ^ (v301 - ((2 * v301) & 0x13EE155E) + 167185071);
  v303 = v302 + v301 - 2 * (v302 & v301);
  v304 = LODWORD(STACK[0x430]) ^ 0x2010C44D;
  v305 = LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x230]) ^ a72 ^ LODWORD(STACK[0x218]) ^ a65 ^ a83 ^ 0xAB0F0337;
  v306 = LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x3C8]) ^ a82 ^ 0x5683A33F;
  if (v297)
  {
    v307 = STACK[0x320];
  }

  else
  {
    v307 = (LODWORD(STACK[0x378]) + v297 - 2 * (STACK[0x378] & v297)) ^ v297;
  }

  if (v297)
  {
    v308 = STACK[0x31C];
  }

  else
  {
    v308 = STACK[0x320];
  }

  if (v297)
  {
    v309 = STACK[0x380];
  }

  else
  {
    v309 = STACK[0x31C];
  }

  if (v297)
  {
    v310 = (LODWORD(STACK[0x378]) + v297 - 2 * (STACK[0x378] & v297)) ^ v297;
  }

  else
  {
    v310 = STACK[0x380];
  }

  if (v297)
  {
    v311 = STACK[0x318];
  }

  else
  {
    v311 = STACK[0x308];
  }

  v312 = STACK[0x390];
  if (v297)
  {
    v313 = STACK[0x308];
  }

  else
  {
    v313 = STACK[0x390];
  }

  if (v297)
  {
    v314 = STACK[0x398];
  }

  else
  {
    v312 = STACK[0x398];
    v314 = STACK[0x318];
  }

  v315 = STACK[0x370];
  v316 = STACK[0x368];
  if (v297)
  {
    v317 = STACK[0x368];
  }

  else
  {
    v317 = STACK[0x370];
  }

  LODWORD(STACK[0x320]) = v89;
  if (v297)
  {
    v318 = STACK[0x358];
  }

  else
  {
    v318 = v316;
  }

  v319 = STACK[0x388];
  if (v297)
  {
    v320 = STACK[0x388];
  }

  else
  {
    v320 = STACK[0x358];
  }

  if (v297)
  {
    v319 = v315;
  }

  v321 = STACK[0x310];
  v322 = STACK[0x330];
  if (v297)
  {
    v323 = STACK[0x330];
  }

  else
  {
    v323 = STACK[0x310];
  }

  LODWORD(STACK[0x398]) = v323;
  v324 = STACK[0x350];
  if (v297)
  {
    v325 = v321;
  }

  else
  {
    v325 = STACK[0x350];
  }

  LODWORD(STACK[0x390]) = v325;
  v326 = STACK[0x348];
  if (v297)
  {
    v327 = v324;
  }

  else
  {
    v327 = STACK[0x348];
  }

  LODWORD(STACK[0x360]) = v327;
  if (v297)
  {
    v322 = v326;
  }

  LODWORD(STACK[0x388]) = v322;
  v328 = STACK[0x3F8];
  v329 = STACK[0x3A0];
  if (v297)
  {
    v330 = STACK[0x3F8];
  }

  else
  {
    v330 = STACK[0x3A0];
  }

  LODWORD(STACK[0x3CC]) = v330;
  v331 = v298;
  if (v297)
  {
    v298 = v329;
  }

  LODWORD(STACK[0x378]) = v298;
  v332 = STACK[0x2F8];
  if (v297)
  {
    v333 = v331;
  }

  else
  {
    v333 = STACK[0x2F8];
  }

  LODWORD(STACK[0x3A0]) = v333;
  if (v297)
  {
    v328 = v332;
  }

  LODWORD(STACK[0x350]) = v328;
  v334 = STACK[0x328];
  v335 = STACK[0x304];
  if (v297)
  {
    v336 = STACK[0x304];
  }

  else
  {
    v336 = STACK[0x328];
  }

  LODWORD(STACK[0x3C8]) = v336;
  v337 = STACK[0x2E8];
  if (v297)
  {
    v335 = STACK[0x2E8];
  }

  LODWORD(STACK[0x31C]) = v335;
  v338 = STACK[0x2F0];
  if (v297)
  {
    v339 = STACK[0x2F0];
  }

  else
  {
    v339 = v337;
  }

  LODWORD(STACK[0x35C]) = v339;
  if (v297)
  {
    v338 = v334;
  }

  LODWORD(STACK[0x310]) = v338;
  v340 = STACK[0x2D8];
  v341 = STACK[0x2D0];
  if (v297)
  {
    v342 = STACK[0x2D0];
  }

  else
  {
    v342 = STACK[0x2D8];
  }

  LODWORD(STACK[0x3A8]) = v342;
  v343 = STACK[0x2DC];
  if ((v297 & 1) == 0)
  {
    v340 = STACK[0x2DC];
  }

  LODWORD(STACK[0x370]) = v340;
  v344 = STACK[0x2E0];
  if ((v297 & 1) == 0)
  {
    v343 = STACK[0x2E0];
  }

  LODWORD(STACK[0x380]) = v343;
  if ((v297 & 1) == 0)
  {
    v344 = v341;
  }

  LODWORD(STACK[0x358]) = v344;
  HIDWORD(v346) = v289;
  LODWORD(v346) = v289;
  v345 = v346 >> 29;
  v347 = STACK[0x2C8];
  v348 = STACK[0x2C4];
  if (v297)
  {
    v349 = STACK[0x2C4];
  }

  else
  {
    v349 = STACK[0x2C8];
  }

  LODWORD(STACK[0x308]) = v349;
  if (v297)
  {
    v348 = v994;
  }

  LODWORD(STACK[0x368]) = v348;
  if (v297)
  {
    v350 = v993;
  }

  else
  {
    v350 = v994;
  }

  LODWORD(STACK[0x288]) = v350;
  if ((v297 & 1) == 0)
  {
    v347 = v993;
  }

  LODWORD(STACK[0x354]) = v347;
  v351 = STACK[0x400];
  if (v297)
  {
    v352 = STACK[0x400];
  }

  else
  {
    v352 = v345;
  }

  LODWORD(STACK[0x2F8]) = v352;
  if (v297)
  {
    v353 = v345;
  }

  else
  {
    v353 = v303;
  }

  LODWORD(STACK[0x328]) = v353;
  v354 = STACK[0x338];
  if (v297)
  {
    v355 = v303;
  }

  else
  {
    v355 = STACK[0x338];
  }

  LODWORD(STACK[0x2C4]) = v355;
  if ((v297 & 1) == 0)
  {
    v354 = v351;
  }

  LODWORD(STACK[0x2F0]) = v354;
  v356 = STACK[0x3B0];
  v357 = HIDWORD(v992);
  if (v297)
  {
    v358 = HIDWORD(v992);
  }

  else
  {
    v358 = STACK[0x3B0];
  }

  LODWORD(STACK[0x348]) = v358;
  v359 = HIDWORD(a68);
  if (v297)
  {
    v357 = HIDWORD(a68);
  }

  LODWORD(STACK[0x2E0]) = v357;
  if (v297)
  {
    v359 = v992;
  }

  LODWORD(STACK[0x318]) = v359;
  if (v297)
  {
    v360 = v356;
  }

  else
  {
    v360 = v992;
  }

  LODWORD(STACK[0x2A4]) = v360;
  v361 = STACK[0x3B8];
  v362 = STACK[0x3C4];
  if (v297)
  {
    v363 = STACK[0x3C4];
  }

  else
  {
    v363 = STACK[0x3B8];
  }

  LODWORD(STACK[0x2E8]) = v363;
  v364 = STACK[0x3B4];
  if ((v297 & 1) == 0)
  {
    v361 = STACK[0x3B4];
  }

  LODWORD(STACK[0x3B8]) = v361;
  v365 = HIDWORD(a55);
  if ((v297 & 1) == 0)
  {
    v364 = HIDWORD(a55);
  }

  LODWORD(STACK[0x2D0]) = v364;
  if ((v297 & 1) == 0)
  {
    v365 = v362;
  }

  LODWORD(STACK[0x3C4]) = v365;
  v366 = STACK[0x30C];
  v367 = v997;
  if (v297)
  {
    v368 = v997;
  }

  else
  {
    v368 = STACK[0x30C];
  }

  LODWORD(STACK[0x3B0]) = v368;
  v369 = HIDWORD(v991);
  if (v297)
  {
    v367 = HIDWORD(v991);
  }

  LODWORD(STACK[0x3B4]) = v367;
  v370 = STACK[0x344];
  if ((v297 & 1) == 0)
  {
    v366 = STACK[0x344];
  }

  LODWORD(STACK[0x2C8]) = v366;
  if (v297)
  {
    v369 = v370;
  }

  LODWORD(STACK[0x2D8]) = v369;
  if (v297)
  {
    v371 = HIDWORD(v986);
  }

  else
  {
    v371 = v253;
  }

  LODWORD(STACK[0x344]) = v371;
  if (v297)
  {
    v372 = HIDWORD(v988);
  }

  else
  {
    v372 = HIDWORD(v986);
  }

  LODWORD(STACK[0x2DC]) = v372;
  if (v297)
  {
    v373 = a56;
  }

  else
  {
    v373 = HIDWORD(v988);
  }

  LODWORD(STACK[0x278]) = v373;
  if (v297)
  {
    v374 = v253;
  }

  else
  {
    v374 = a56;
  }

  LODWORD(STACK[0x29C]) = v374;
  if (v297)
  {
    v375 = v999;
  }

  else
  {
    v375 = HIDWORD(a65);
  }

  LODWORD(STACK[0x250]) = v375;
  if (v297)
  {
    v376 = HIDWORD(a65);
  }

  else
  {
    v376 = v998;
  }

  LODWORD(STACK[0x280]) = v376;
  if (v297)
  {
    v377 = v998;
  }

  else
  {
    v377 = v995;
  }

  LODWORD(STACK[0x230]) = v377;
  if (v297)
  {
    v378 = v995;
  }

  else
  {
    v378 = v999;
  }

  LODWORD(STACK[0x270]) = v378;
  v379 = STACK[0x228];
  v380 = STACK[0x268];
  if (v297)
  {
    v381 = STACK[0x228];
  }

  else
  {
    v381 = STACK[0x268];
  }

  LODWORD(STACK[0x2A0]) = v381;
  v382 = STACK[0x3F4];
  if (v297)
  {
    v383 = STACK[0x3F4];
  }

  else
  {
    v383 = v379;
  }

  LODWORD(STACK[0x2D4]) = v383;
  if (v297)
  {
    v384 = v380;
  }

  else
  {
    v384 = v990;
  }

  LODWORD(STACK[0x294]) = v384;
  if (v297)
  {
    v385 = v990;
  }

  else
  {
    v385 = v382;
  }

  LODWORD(STACK[0x248]) = v385;
  if (v297)
  {
    v386 = HIDWORD(v990);
  }

  else
  {
    v386 = a68;
  }

  LODWORD(STACK[0x228]) = v386;
  v387 = STACK[0x220];
  if (v297)
  {
    v388 = STACK[0x220];
  }

  else
  {
    v388 = HIDWORD(v990);
  }

  LODWORD(STACK[0x268]) = v388;
  if (v297)
  {
    v389 = HIDWORD(v989);
  }

  else
  {
    v389 = v387;
  }

  LODWORD(STACK[0x220]) = v389;
  if (v297)
  {
    v390 = a68;
  }

  else
  {
    v390 = HIDWORD(v989);
  }

  LODWORD(STACK[0x240]) = v390;
  LODWORD(STACK[0x430]) = v297 + v304;
  v391 = v297 + v305;
  LODWORD(STACK[0x338]) = v297 + v305;
  v392 = v297 + v306;
  LODWORD(STACK[0x3F4]) = v297 + v306;
  v393 = (v297 & 2) == 0;
  if ((v297 & 2) != 0)
  {
    v394 = v307;
  }

  else
  {
    v394 = v309;
  }

  if (v393)
  {
    v395 = v307;
  }

  else
  {
    v395 = v309;
  }

  if (v393)
  {
    v396 = v308;
  }

  else
  {
    v396 = v310;
  }

  if (v393)
  {
    v397 = v310;
  }

  else
  {
    v397 = v308;
  }

  if (v393)
  {
    v398 = v312;
  }

  else
  {
    v398 = v311;
  }

  LODWORD(STACK[0x218]) = v398;
  if (v393)
  {
    v399 = v311;
  }

  else
  {
    v399 = v312;
  }

  LODWORD(STACK[0x330]) = v399;
  if (v393)
  {
    v400 = v314;
  }

  else
  {
    v400 = v313;
  }

  v1007 = v400;
  if (v393)
  {
    v401 = v313;
  }

  else
  {
    v401 = v314;
  }

  v1005 = v401;
  if (v393)
  {
    v402 = v318;
  }

  else
  {
    v402 = v319;
  }

  LODWORD(STACK[0x30C]) = v402;
  if (v393)
  {
    v403 = v319;
  }

  else
  {
    v403 = v318;
  }

  LODWORD(STACK[0x400]) = v403;
  if (v393)
  {
    v404 = v320;
  }

  else
  {
    v404 = v317;
  }

  LODWORD(STACK[0x3F8]) = v404;
  if (v393)
  {
    v405 = v317;
  }

  else
  {
    v405 = v320;
  }

  LODWORD(STACK[0x304]) = v405;
  v406 = v279 >> 1;
  v407 = (v279 >> 1) & 0x4A3C0F51 ^ 0x94781EA2;
  v408 = v287;
  v409 = STACK[0x4C8];
  v410 = STACK[0x4C0];
  v411 = v1000 ^ v988 ^ v989;
  v412 = v411 ^ (((v406 & 0xA000740 ^ 0x84001600 ^ (HIDWORD(a45) ^ 0x8E001740) & v407) >> LODWORD(STACK[0x4C8])) | ((v406 & 0x80C0C00 ^ 0x80C22 ^ v407 & (v287 ^ 0xD67013D1)) << LODWORD(STACK[0x4C0]))) ^ v395;
  v413 = LODWORD(STACK[0x4D0]) >> 1;
  v414 = v413 & 0x4A3C0F51 ^ 0x94781EA2;
  v415 = STACK[0x4A0];
  v416 = STACK[0x4A8];
  v417 = STACK[0x490];
  v418 = STACK[0x2BC];
  v419 = v411 ^ (((v413 & 0x40180B10 ^ 0x14580A20 ^ (LODWORD(STACK[0x4A8]) ^ 0x8A2414C3) & v414) << LODWORD(STACK[0x490])) + ((v413 & 0x481C0D41 ^ 0x84581C00 ^ v414 & (LODWORD(STACK[0x4A0]) ^ 0xCC5C1D41)) >> LODWORD(STACK[0x2BC]))) ^ v397;
  v420 = v411 ^ (((v406 & 0x48180D01 ^ 0x14180C20 ^ (LODWORD(STACK[0x4A8]) ^ 0x826412D2) & v407) << LODWORD(STACK[0x4C0])) | ((v406 & 0x4A300410 ^ 0x94700422 ^ v407 & (LODWORD(STACK[0x4A0]) ^ 0xDE700432)) >> LODWORD(STACK[0x4C8]))) ^ v396;
  v421 = v1000 ^ v988 ^ ((v413 & 0x2200A50 ^ 0x4600AA0 ^ (v408 ^ 0xD81C1503) & v414) << LODWORD(STACK[0x490])) ^ ((v413 & 0x8180A00 ^ 0x80181A02 ^ (HIDWORD(a45) ^ 0x88181A02) & v414) >> LODWORD(STACK[0x2BC])) ^ v989 ^ v394;
  HIDWORD(v422) = *(v296 + 4 * (v411 ^ (((v406 & 1 ^ 0x20 ^ (LODWORD(STACK[0x4A8]) ^ 0xD2) & v407) << LODWORD(STACK[0x4C0])) | ((v406 & 0x4A300410 ^ 0x94700422 ^ v407 & (LODWORD(STACK[0x4A0]) ^ 0xDE700432)) >> LODWORD(STACK[0x4C8]))) ^ v396));
  LODWORD(v422) = HIDWORD(v422);
  v423 = (v422 >> 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v412)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v421)), 24) ^ *(v296 + 4 * BYTE2(v419));
  v424 = v391 - LODWORD(STACK[0x430]) + (*(v296 + 4 * BYTE2(v421)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v420)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v419)), 8) ^ __ROR4__(*(v296 + 4 * v412), 16));
  v425 = v406 & 0x34E0FD25 ^ 0x69C1FA4B;
  v426 = v406 & 0x30405820 ^ 0x60415800 ^ v425 & (v408 ^ 0xDA0A74F);
  v427 = v1001 ^ LODWORD(STACK[0x4B0]);
  v428 = v427 ^ (((v406 & 0x2000BD24 ^ 0x6901B840 ^ (HIDWORD(a45) ^ 0x6901BD64) & v425) >> LODWORD(STACK[0x2BC])) + (v426 << LODWORD(STACK[0x490]))) ^ LODWORD(STACK[0x330]);
  v429 = LODWORD(STACK[0x430]) - v392;
  LODWORD(STACK[0x330]) = v429;
  v430 = v428 ^ (v423 + v429);
  v431 = v413 & 0x34E0FD25 ^ 0x69C1FA4B;
  v432 = v413 & 0x20407821 ^ 0x61417849 ^ (v416 ^ 0x1CA08706) & v431;
  v433 = v427 ^ ((v432 << v410) + ((v413 & 0x14603C20 ^ 0x41413A0A ^ v431 & (v415 ^ 0x55613E26u)) >> v409)) ^ v1005 ^ v424;
  v434 = v427 ^ ((v413 & 0x14009C05 ^ 0x41009843 ^ (HIDWORD(a45) ^ 0x55009C47) & v431) >> v418) ^ (v432 << v417) ^ v1007 ^ *(v296 + 4 * BYTE2(v412)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v419)), 24) ^ __ROR4__(*(v296 + 4 * v421), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v420)), 8);
  v435 = v415;
  v436 = v409;
  v437 = v427 ^ (((v406 & 0x10601500 ^ 0x4041104A ^ v425 & (v415 ^ 0x50611546)) >> v409) | (v426 << v410)) ^ LODWORD(STACK[0x218]) ^ *(v296 + 4 * BYTE2(v420)) ^ __ROR4__(*(v296 + 4 * v419), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v412)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v421)), 8);
  v438 = v406 & 0x650ACAC ^ 0xCA15959;
  v439 = v1003 ^ LODWORD(STACK[0x480]);
  v440 = v439 ^ (((v406 & 0x2508488 ^ 0x8A05108 ^ (v416 ^ 0x4012875) & v438) << v410) | ((v438 & (v415 ^ 0x605C) ^ (v406 & 0x2000 | 0x4050)) >> v418)) ^ LODWORD(STACK[0x304]) ^ __ROR4__(*(v296 + 4 * BYTE1(v430)), 8) ^ __ROR4__(*(v296 + 4 * v434), 16) ^ *(v296 + 4 * BYTE2(v433)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v437)), 24);
  v441 = v408;
  v442 = v413 & 0x650ACAC ^ 0xCA15959;
  v443 = v439 ^ (((v413 & 0x600082C ^ 0xC804848 ^ (HIDWORD(a45) ^ 0xE80486C) & v442) >> v436) | ((v413 & 0x10888C ^ 0x8815909 ^ (v408 ^ 0x6602470) & v442) << v417)) ^ LODWORD(STACK[0x30C]) ^ __ROR4__(*(v296 + 4 * v437), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v433)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v434)), 8) ^ *(v296 + 4 * BYTE2(v430));
  v444 = v439 ^ (((v406 & 0x240ACA0 ^ 0x8A04950 ^ (HIDWORD(a45) ^ 0xAE0EDF0) & v438) >> v418) + ((v406 & 0x4100C00 ^ 0xC804801 ^ v438 & (v408 ^ 0x261B1FC)) << v410)) ^ LODWORD(STACK[0x3F8]) ^ __ROR4__(*(v296 + 4 * v433), 16) ^ *(v296 + 4 * BYTE2(v434)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v430)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v437)), 8);
  v445 = v439 ^ ((v413 & 0x41088A4 ^ 0xCA01841 ^ v442 & (v415 ^ 0xCB098E9u)) >> v436) ^ ((v413 & 0x450048C ^ 0xCA11019 ^ (v416 ^ 0x200E960) & v442) << v417) ^ LODWORD(STACK[0x400]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v434)), 24) ^ __ROR4__(*(v296 + 4 * v430), 16) ^ *(v296 + 4 * BYTE2(v437)) ^ __ROR4__(*(v296 + 4 * BYTE1(v433)), 8);
  v446 = (*(v296 + 4 * BYTE2(v445)) ^ __ROR4__(*(v296 + 4 * BYTE1(v440)), 8) ^ __ROR4__(*(v296 + 4 * v443), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v444)), 24)) + 248512857 * (LODWORD(STACK[0x408]) - ((LODWORD(STACK[0x470]) - ((2 * LODWORD(STACK[0x470])) & 0x5384E052) - 1446875095) ^ LODWORD(STACK[0x488])));
  v447 = STACK[0x498];
  v448 = (((v447 & (LODWORD(STACK[0x440]) ^ 0xF82E3B3A)) >> 1) - (v447 & (LODWORD(STACK[0x440]) ^ 0xF82E3B3A) & 0x184CD4D4) - 1943639446) ^ LODWORD(STACK[0x438]);
  v449 = STACK[0x320];
  LODWORD(STACK[0x400]) = ((STACK[0x320] & v448) << v410) + ((HIDWORD(a45) & v448) >> v436);
  v450 = STACK[0x4D0];
  v451 = (((STACK[0x4D0] & (LODWORD(STACK[0x2AC]) ^ 0xC90BA010)) >> 1) - (STACK[0x4D0] & (LODWORD(STACK[0x2AC]) ^ 0xC90BA010) & 0x2AD98490) - 1788034488) ^ LODWORD(STACK[0x2AC]);
  LODWORD(STACK[0x218]) = ((v451 & 0xAF357926 ^ 0xC256000 ^ (v451 ^ 0x5C676259) & (v415 ^ 0xAF35792A)) >> v418) | ((v451 & 0x6C08E4EA ^ 0x4C006048 ^ (v408 ^ 0x93F71B15) & (v451 ^ 0x5C676259)) << v417);
  v452 = (((v450 & (LODWORD(STACK[0x3E0]) ^ 0xD5BF0B3E)) >> 1) - (v450 & (LODWORD(STACK[0x3E0]) ^ 0xD5BF0B3E) & 0x558B6FE) - 2102633601) ^ LODWORD(STACK[0x28C]);
  v453 = STACK[0x2C0];
  LODWORD(STACK[0x304]) = ((v449 & v452) << v410) | ((v452 & STACK[0x2C0]) >> v436);
  v454 = (((v447 & (LODWORD(STACK[0x3DC]) ^ 0x59BBCB8Cu)) >> 1) - (v447 & (LODWORD(STACK[0x3DC]) ^ 0x59BBCB8C) & 0x9FFF0CA6) - 805337517) ^ LODWORD(STACK[0x290]);
  v455 = (((v450 & (LODWORD(STACK[0x3E4]) ^ 0x64CD1068u)) >> 1) - (v450 & (LODWORD(STACK[0x3E4]) ^ 0x64CD1068) & 0x5B0625B0) - 1383918888) ^ LODWORD(STACK[0x2A8]);
  LOBYTE(v442) = v417;
  v456 = ((HIDWORD(a45) & v454) >> v418) | ((v454 & ~v408) << v417);
  v457 = LODWORD(STACK[0x3D8]) ^ 0x3F8323EC;
  v458 = v436;
  LODWORD(STACK[0x480]) = ((v449 & v455) << v410) + ((v455 & v453) >> v436);
  v459 = (((v447 & v457) >> 1) - (v447 & v457 & 0xAB2B3EF2) + 1435869049) ^ LODWORD(STACK[0x410]);
  v460 = v441;
  v461 = v442;
  v462 = v418;
  LODWORD(STACK[0x3F8]) = ((HIDWORD(a45) & v459) >> v418) ^ ((v459 & ~v441) << v442);
  v463 = (((v447 & (LODWORD(STACK[0x3D0]) ^ 0x5788D962u)) >> 1) - (v447 & (LODWORD(STACK[0x3D0]) ^ 0x5788D962) & 0xFBAF88D2) + 2111292521) ^ LODWORD(STACK[0x260]);
  LODWORD(STACK[0x410]) = ((HIDWORD(a45) & v463) >> v458) + ((v463 & ~v441) << v410);
  v464 = (((v450 & (LODWORD(STACK[0x3D4]) ^ 0xB36DBB92)) >> 1) - (v450 & (LODWORD(STACK[0x3D4]) ^ 0xB36DBB92) & 0x6A1D222E) + 890147095) ^ LODWORD(STACK[0x298]);
  v465 = ((v449 & v464) << v410) ^ ((HIDWORD(a45) & v464) >> v418);
  LODWORD(STACK[0x320]) = v465;
  if (v393)
  {
    v466 = STACK[0x398];
  }

  else
  {
    v466 = STACK[0x360];
  }

  if (v393)
  {
    v467 = STACK[0x360];
  }

  else
  {
    v467 = STACK[0x398];
  }

  v468 = STACK[0x390];
  if (v393)
  {
    v469 = STACK[0x390];
  }

  else
  {
    v469 = STACK[0x388];
  }

  if (v393)
  {
    v468 = STACK[0x388];
  }

  v470 = STACK[0x378];
  if (v393)
  {
    v471 = STACK[0x378];
  }

  else
  {
    v471 = STACK[0x350];
  }

  v1002 = v471;
  if (v393)
  {
    v470 = STACK[0x350];
  }

  v1006 = v470;
  v472 = STACK[0x3CC];
  if (v393)
  {
    v473 = STACK[0x3CC];
  }

  else
  {
    v473 = STACK[0x3A0];
  }

  if (v393)
  {
    v472 = STACK[0x3A0];
  }

  v1004 = v472;
  v474 = STACK[0x31C];
  v475 = STACK[0x310];
  if (v393)
  {
    v476 = STACK[0x310];
  }

  else
  {
    v476 = STACK[0x31C];
  }

  LODWORD(STACK[0x28C]) = v476;
  if (!v393)
  {
    v474 = v475;
  }

  LODWORD(STACK[0x260]) = v474;
  v477 = STACK[0x3C8];
  v478 = STACK[0x35C];
  if (v393)
  {
    v479 = STACK[0x3C8];
  }

  else
  {
    v479 = STACK[0x35C];
  }

  LODWORD(STACK[0x290]) = v479;
  if (v393)
  {
    v477 = v478;
  }

  v1008 = v477;
  v480 = STACK[0x308];
  v481 = STACK[0x288];
  if (v393)
  {
    v482 = STACK[0x288];
  }

  else
  {
    v482 = STACK[0x308];
  }

  LODWORD(STACK[0x388]) = v482;
  if (v393)
  {
    v483 = v480;
  }

  else
  {
    v483 = v481;
  }

  LODWORD(STACK[0x378]) = v483;
  v484 = STACK[0x370];
  v485 = STACK[0x358];
  if (v393)
  {
    v486 = STACK[0x358];
  }

  else
  {
    v486 = STACK[0x370];
  }

  LODWORD(STACK[0x2C0]) = v486;
  if (!v393)
  {
    v484 = v485;
  }

  LODWORD(STACK[0x2AC]) = v484;
  v487 = STACK[0x3A8];
  v488 = STACK[0x380];
  if (v393)
  {
    v489 = STACK[0x380];
  }

  else
  {
    v489 = STACK[0x3A8];
  }

  LODWORD(STACK[0x2A8]) = v489;
  if (!v393)
  {
    v487 = v488;
  }

  LODWORD(STACK[0x298]) = v487;
  v490 = STACK[0x2F8];
  v491 = STACK[0x2C4];
  if (v393)
  {
    v492 = STACK[0x2F8];
  }

  else
  {
    v492 = STACK[0x2C4];
  }

  LODWORD(STACK[0x308]) = v492;
  if (v393)
  {
    v493 = v491;
  }

  else
  {
    v493 = v490;
  }

  LODWORD(STACK[0x2F8]) = v493;
  v494 = STACK[0x368];
  v495 = STACK[0x354];
  if (v393)
  {
    v496 = STACK[0x354];
  }

  else
  {
    v496 = STACK[0x368];
  }

  LODWORD(STACK[0x380]) = v496;
  if (v393)
  {
    v497 = v494;
  }

  else
  {
    v497 = v495;
  }

  LODWORD(STACK[0x370]) = v497;
  v498 = STACK[0x328];
  v499 = STACK[0x2F0];
  if (v393)
  {
    v500 = STACK[0x328];
  }

  else
  {
    v500 = STACK[0x2F0];
  }

  LODWORD(STACK[0x30C]) = v500;
  if (v393)
  {
    v501 = v499;
  }

  else
  {
    v501 = v498;
  }

  LODWORD(STACK[0x2F0]) = v501;
  v502 = STACK[0x2E0];
  v503 = STACK[0x2A4];
  if (v393)
  {
    v504 = STACK[0x2A4];
  }

  else
  {
    v504 = STACK[0x2E0];
  }

  LODWORD(STACK[0x3A8]) = v504;
  if (v393)
  {
    v505 = v502;
  }

  else
  {
    v505 = v503;
  }

  LODWORD(STACK[0x398]) = v505;
  v506 = STACK[0x348];
  v507 = STACK[0x318];
  if (v393)
  {
    v508 = STACK[0x318];
  }

  else
  {
    v508 = STACK[0x348];
  }

  LODWORD(STACK[0x390]) = v508;
  if (v393)
  {
    v509 = v506;
  }

  else
  {
    v509 = v507;
  }

  LODWORD(STACK[0x3A0]) = v509;
  v510 = STACK[0x2E8];
  v511 = STACK[0x2D0];
  if (v393)
  {
    v512 = STACK[0x2E8];
  }

  else
  {
    v512 = STACK[0x2D0];
  }

  LODWORD(STACK[0x328]) = v512;
  if (v393)
  {
    v513 = v511;
  }

  else
  {
    v513 = v510;
  }

  LODWORD(STACK[0x318]) = v513;
  v514 = STACK[0x3B8];
  v515 = STACK[0x3C4];
  if (v393)
  {
    v516 = STACK[0x3B8];
  }

  else
  {
    v516 = STACK[0x3C4];
  }

  LODWORD(STACK[0x31C]) = v516;
  if (v393)
  {
    v517 = v515;
  }

  else
  {
    v517 = v514;
  }

  LODWORD(STACK[0x310]) = v517;
  v518 = STACK[0x3B4];
  v519 = STACK[0x2C8];
  if (v393)
  {
    v520 = STACK[0x2C8];
  }

  else
  {
    v520 = STACK[0x3B4];
  }

  LODWORD(STACK[0x3C4]) = v520;
  if (v393)
  {
    v521 = v518;
  }

  else
  {
    v521 = v519;
  }

  LODWORD(STACK[0x3B4]) = v521;
  v522 = STACK[0x3B0];
  v523 = STACK[0x2D8];
  if (v393)
  {
    v524 = STACK[0x2D8];
  }

  else
  {
    v524 = STACK[0x3B0];
  }

  LODWORD(STACK[0x3B8]) = v524;
  if (v393)
  {
    v525 = v522;
  }

  else
  {
    v525 = v523;
  }

  LODWORD(STACK[0x3B0]) = v525;
  v526 = STACK[0x344];
  v527 = STACK[0x278];
  if (v393)
  {
    v528 = STACK[0x344];
  }

  else
  {
    v528 = STACK[0x278];
  }

  LODWORD(STACK[0x354]) = v528;
  if (v393)
  {
    v529 = v527;
  }

  else
  {
    v529 = v526;
  }

  LODWORD(STACK[0x348]) = v529;
  v530 = STACK[0x250];
  v531 = STACK[0x230];
  if (v393)
  {
    v532 = STACK[0x250];
  }

  else
  {
    v532 = STACK[0x230];
  }

  LODWORD(STACK[0x3D4]) = v532;
  if (v393)
  {
    v533 = v531;
  }

  else
  {
    v533 = v530;
  }

  LODWORD(STACK[0x3D0]) = v533;
  v534 = STACK[0x2DC];
  v535 = STACK[0x29C];
  if (v393)
  {
    v536 = STACK[0x29C];
  }

  else
  {
    v536 = STACK[0x2DC];
  }

  LODWORD(STACK[0x344]) = v536;
  if (v393)
  {
    v537 = v534;
  }

  else
  {
    v537 = v535;
  }

  LODWORD(STACK[0x350]) = v537;
  v538 = STACK[0x280];
  v539 = STACK[0x270];
  if (v393)
  {
    v540 = STACK[0x270];
  }

  else
  {
    v540 = STACK[0x280];
  }

  LODWORD(STACK[0x3CC]) = v540;
  if (v393)
  {
    v541 = v538;
  }

  else
  {
    v541 = v539;
  }

  LODWORD(STACK[0x3C8]) = v541;
  v542 = STACK[0x228];
  v543 = STACK[0x220];
  if (v393)
  {
    v544 = STACK[0x220];
  }

  else
  {
    v544 = STACK[0x228];
  }

  LODWORD(STACK[0x3E4]) = v544;
  if (v393)
  {
    v545 = v542;
  }

  else
  {
    v545 = v543;
  }

  LODWORD(STACK[0x3DC]) = v545;
  v546 = STACK[0x2A0];
  v547 = STACK[0x248];
  if (v393)
  {
    v548 = STACK[0x248];
  }

  else
  {
    v548 = STACK[0x2A0];
  }

  LODWORD(STACK[0x368]) = v548;
  if (v393)
  {
    v549 = v546;
  }

  else
  {
    v549 = v547;
  }

  LODWORD(STACK[0x35C]) = v549;
  v550 = STACK[0x2D4];
  v551 = STACK[0x294];
  if (v393)
  {
    v552 = STACK[0x2D4];
  }

  else
  {
    v552 = STACK[0x294];
  }

  LODWORD(STACK[0x358]) = v552;
  if (v393)
  {
    v553 = v551;
  }

  else
  {
    v553 = v550;
  }

  LODWORD(STACK[0x360]) = v553;
  v554 = STACK[0x268];
  v555 = STACK[0x240];
  if (v393)
  {
    v556 = STACK[0x240];
  }

  else
  {
    v556 = STACK[0x268];
  }

  LODWORD(STACK[0x3D8]) = v556;
  if (v393)
  {
    v557 = v554;
  }

  else
  {
    v557 = v555;
  }

  LODWORD(STACK[0x3E0]) = v557;
  v558 = v413 & 0x791BD001 ^ 0xF237A002;
  v559 = v406 & 0x791BD001 ^ 0xF237A002;
  v560 = v465 ^ v456;
  v561 = v560 ^ (((v413 & 0x7813C001 ^ 0x7233A000 ^ (HIDWORD(a45) ^ 0x7A33E001) & v558) >> v458) + ((v413 & 0x20080000 ^ 0xA0202000 ^ (v460 ^ 0x5B17D003) & v558) << v461)) ^ v467 ^ __ROR4__(*(v296 + 4 * HIBYTE(v445)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v443)), 8) ^ __ROR4__(*(v296 + 4 * v444), 16) ^ *(v296 + 4 * BYTE2(v440));
  v562 = v560 ^ ((v406 & 0x69134001 ^ 0xE0370002 ^ v559 & (v435 ^ 0xE9374003)) >> v418) ^ ((v406 & 0x281BD001 ^ 0x2237A000 ^ (v416 ^ 0xD1000002) & v559) << v410) ^ v469 ^ __ROR4__(*(v296 + 4 * BYTE1(v444)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v440)), 24) ^ __ROR4__(*(v296 + 4 * v445), 16) ^ *(v296 + 4 * BYTE2(v443));
  v563 = v560 ^ ((v406 & 0x29134000 ^ 0xA0330002 ^ v559 & (v460 ^ 0x520CB001)) << v410) ^ ((v406 & 0xB4001 ^ 0x80072000 ^ (HIDWORD(a45) ^ 0x800F6001) & v559) >> v418) ^ v466 ^ __ROR4__(*(v296 + 4 * v440), 16) ^ *(v296 + 4 * BYTE2(v444)) ^ __ROR4__(*(v296 + 4 * BYTE1(v445)), 8);
  v565 = __ROR4__(*(v296 + 4 * HIBYTE(v443)), 24);
  v564 = v563 ^ v565;
  v566 = v560 ^ (((v413 & 0x5109D001 ^ 0x5025A000 ^ (v416 ^ 0xAA120002) & v558) << v461) + ((v413 & 0x180AD001 ^ 0x90028000 ^ v558 & (v435 ^ 0x980AD001)) >> v458)) ^ v468 ^ v446;
  v567 = *(v296 + 4 * BYTE2(v561)) ^ __ROR4__(*(v296 + 4 * (v563 ^ v565)), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v566)), 24);
  HIDWORD(v568) = *(v296 + 4 * BYTE1(v562));
  LODWORD(v568) = HIDWORD(v568);
  v569 = v413 & 0xC2C4B16 ^ 0x1858962D;
  v570 = (v460 ^ 0xC28C605) & v569 ^ (v413 & 0x40912 | 0x10501028);
  v571 = LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x3F8]);
  v572 = v571 ^ (((v413 & 0x14 ^ 0x10940D ^ v569 & (v435 ^ 0x109411u)) >> v418) | (v570 << v410)) ^ v473 ^ ((v568 >> 8) + v567 - 2 * (v567 & (v568 >> 8)));
  v573 = v406 & 0xC2C4B16 ^ 0x1858962D;
  v574 = v406 & 0x40C0016 ^ 0x58000C ^ (v416 ^ 0x1820DF21) & v573;
  v575 = v571 ^ ((v574 << v461) + ((v406 & 0x8280100 ^ 0x8181020 ^ (HIDWORD(a45) ^ 0x8381120) & v573) >> v458)) ^ v1002 ^ *(v296 + 4 * BYTE2(v566)) ^ __ROR4__(*(v296 + 4 * BYTE1(v561)), 8) ^ __ROR4__(*(v296 + 4 * v562), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v564)), 24);
  v576 = v410;
  v577 = v458;
  v578 = v571 ^ ((v574 << v410) | ((v406 & 0x200904 ^ 0x50900C ^ v573 & (v435 ^ 0x709900)) >> v458)) ^ v1004 ^ __ROR4__(*(v296 + 4 * HIBYTE(v562)), 24) ^ __ROR4__(*(v296 + 4 * v561), 16) ^ *(v296 + 4 * BYTE2(v564)) ^ __ROR4__(*(v296 + 4 * BYTE1(v566)), 8);
  v579 = v461;
  v580 = v571 ^ (((v413 & 0x84202 ^ 0x80609 ^ (HIDWORD(a45) ^ 0x8460B) & v569) >> v462) | (v570 << v461)) ^ v1006 ^ __ROR4__(*(v296 + 4 * HIBYTE(v561)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v564)), 8) ^ *(v296 + 4 * BYTE2(v562));
  LODWORD(v568) = __ROR4__(*(v296 + 4 * v566), 16);
  v581 = v580 ^ v568;
  v582 = LODWORD(STACK[0x408]) ^ __ROR4__(*(v296 + 4 * ((v580 ^ v568) >> 8)), 8) ^ __ROR4__(*(v296 + 4 * v578), 16) ^ *(v296 + 4 * BYTE2(v572));
  LODWORD(v568) = __ROR4__(*(v296 + 4 * HIBYTE(v575)), 24);
  v583 = v413 & 0x60CF7D4F ^ 0xC19EFA9F;
  v584 = v406 & 0x60CF7D4F ^ 0xC19EFA9F;
  v585 = LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x218]);
  v586 = v585 ^ ((v413 & 0xC50548 ^ 0x81940088 ^ (HIDWORD(a45) ^ 0x81D505C8) & v583) >> v462) ^ ((v413 & 0x200D2C09 ^ 0x1CA889 ^ (v416 ^ 0xC1C25356) & v583) << v579) ^ v1008 ^ __ROR4__(*(v296 + 4 * HIBYTE(v572)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v578)), 8) ^ *(v296 + 4 * BYTE2(v581)) ^ __ROR4__(*(v296 + 4 * v575), 16);
  v587 = LODWORD(STACK[0x260]) ^ (((v406 & 0x400C1048 ^ 0x411C1218 ^ v584 & (v460 ^ 0xA0C3ED87)) << v410) | ((v406 & 0x60CE6048 ^ 0x409EE098 ^ v584 & (v435 ^ 0x60DEE0D4)) >> v577)) ^ ((LODWORD(STACK[0x470]) ^ -LODWORD(STACK[0x470]) ^ ((v582 ^ v568) - (v582 ^ v568 ^ LODWORD(STACK[0x470])))) + (v582 ^ v568));
  v588 = v585 ^ LODWORD(STACK[0x488]) ^ (v587 - ((2 * v587) & 0x5384E052) - 1446875095);
  v589 = v413 & 0x5604C ^ 0x104608C ^ v583 & (v435 ^ 0x10560C0);
  v590 = v460;
  v591 = v413 & 0x20815901 ^ 0x1905A01 ^ (v460 ^ 0xC04EA4DE) & v583;
  v592 = v579;
  v593 = v585 ^ ((((v406 & 0x8B440D ^ 0xF5DEFBFF ^ (v416 ^ 0xAAB440D) & (v406 & 0x60CF7D4F ^ 0x3E610560)) - (((v406 & 0x60CF7D4F) - (STACK[0x498] & 0x811A889E) + 1522353903) ^ v416 ^ 0x64DC438F)) << v579) | ((v406 & 0x60406D46 ^ 0xC0006886 ^ (HIDWORD(a45) ^ 0xE0406DC6) & v584) >> v462)) ^ LODWORD(STACK[0x28C]) ^ *(v296 + 4 * BYTE2(v578)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v581)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v575)), 8) ^ __ROR4__(*(v296 + 4 * v572), 16);
  v594 = v585 ^ (v589 >> v577) ^ (v591 << v410) ^ LODWORD(STACK[0x290]) ^ __ROR4__(*(v296 + 4 * BYTE1(v572)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v578)), 24) ^ *(v296 + 4 * BYTE2(v575)) ^ __ROR4__(*(v296 + 4 * v581), 16);
  HIDWORD(v568) = *(v296 + 4 * BYTE1(v593));
  LODWORD(v568) = HIDWORD(v568);
  v595 = (v568 >> 8) ^ __ROR4__(*(v296 + 4 * v594), 16);
  HIDWORD(v568) = *(v296 + 4 * v588);
  LODWORD(v568) = HIDWORD(v568);
  v596 = (v568 >> 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v594)), 8);
  v597 = *(v296 + 4 * BYTE2(v594)) ^ __ROR4__(*(v296 + 4 * v586), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v588)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v593)), 24);
  LODWORD(STACK[0x2C4]) = v597;
  v598 = v596 ^ *(v296 + 4 * BYTE2(v593)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v586)), 24);
  LODWORD(STACK[0x2D4]) = v598;
  v599 = (v595 ^ __ROR4__(*(v296 + 4 * HIBYTE(v588)), 24) ^ *(v296 + 4 * BYTE2(v586))) + LODWORD(STACK[0x330]);
  LODWORD(STACK[0x2C8]) = v599;
  v600 = LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x338]) ^ *(v296 + 4 * BYTE2(v588)) ^ __ROR4__(*(v296 + 4 * BYTE1(v586)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v594)), 24) ^ __ROR4__(*(v296 + 4 * v593), 16);
  LODWORD(STACK[0x2A4]) = v600;
  v601 = v406 & 0x6749B044 ^ 0xCE936089;
  v602 = v406 & 0x63403044 ^ 0xC2122081 ^ (HIDWORD(a45) ^ 0xE35230C5) & v601;
  LODWORD(STACK[0x498]) = v602;
  LODWORD(STACK[0x470]) = v601;
  v603 = (v406 & 0x440A004 ^ 0x84002081 ^ v601 & (v590 ^ 0x6B9B5048)) << v410;
  LOBYTE(v589) = v577;
  v604 = (v602 >> v577) | v603;
  v605 = v603;
  LODWORD(STACK[0x330]) = v603;
  v606 = STACK[0x410];
  v607 = STACK[0x400];
  v608 = LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x410]);
  v609 = v608 ^ v604 ^ LODWORD(STACK[0x298]);
  v610 = v413 & 0x6749B044 ^ 0xCE936089;
  LODWORD(STACK[0x2E8]) = v610;
  v611 = v413 & 0x6349B044 ^ 0xC2016000 ^ v610 & (v435 ^ 0xE349F048);
  LODWORD(STACK[0x488]) = v611;
  v612 = (v413 & 0x2493000 ^ 0xA032000 ^ (v416 ^ 0xE590C0CD) & v610) << v592;
  v613 = v462;
  LODWORD(STACK[0x2DC]) = v612;
  LODWORD(STACK[0x2E0]) = v608;
  v614 = v608 ^ (v612 + (v611 >> v462)) ^ LODWORD(STACK[0x2A8]);
  v615 = v406 & 0x26408004 ^ 0x6100089 ^ (v406 & 0x6749B044 ^ 0xCE936089) & (v435 ^ 0x26508081);
  LODWORD(STACK[0x338]) = v615;
  v616 = v589;
  v617 = v608 ^ ((v615 >> v589) + v605) ^ LODWORD(STACK[0x2AC]);
  v618 = v413 & 0x24080044 ^ 0x8C004000 ^ (HIDWORD(a45) ^ 0xAC084044) & v610;
  LODWORD(STACK[0x2D8]) = v618;
  v619 = v606 ^ (((v413 & 0x2493000 ^ 0xA032000 ^ (v416 ^ 0xE590C0CD) & v610) << v592) + (v618 >> v462)) ^ LODWORD(STACK[0x2C0]);
  v620 = v590;
  v621 = v406 & 0x61011275 ^ 0xC20224EB;
  v622 = v406 & 0x61000224 ^ 0x42000020 ^ v621 & (v435 ^ 0x63000228);
  LODWORD(STACK[0x430]) = v622;
  v623 = (v622 >> v462) + ((v621 & (v590 ^ 0x410224E1) ^ (v406 & 0x20011214 | 0x8200000A)) << v592);
  v624 = v609 ^ v599;
  v625 = *(v296 + 4 * (v609 ^ v599));
  v626 = STACK[0x4B0];
  v627 = LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x4B0]);
  LODWORD(STACK[0x408]) = v627 ^ v623;
  v628 = v614 ^ v597;
  v629 = v627 ^ v623 ^ LODWORD(STACK[0x2F0]) ^ __ROR4__(v625, 16) ^ *(v296 + 4 * BYTE2(v628));
  v630 = v617 ^ v600;
  v631 = v598 ^ v619 ^ v607;
  v632 = v629 ^ __ROR4__(*(v296 + 4 * ((v617 ^ v600) >> 8)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v631)), 24);
  v633 = v413 & 0x61011275 ^ 0xC20224EB;
  v634 = v413 & 0x60000200 ^ 0xC2002080 ^ (HIDWORD(a45) ^ 0xE2002280) & v633;
  LODWORD(STACK[0x304]) = v634;
  v635 = *(v296 + 4 * BYTE2(v630));
  v636 = (v413 & 0x40011260 ^ 0x400000E8 ^ (v416 ^ 0xA3022417) & v633) << v410;
  LODWORD(STACK[0x2D0]) = v636;
  LODWORD(STACK[0x2F0]) = v634 >> v616;
  v637 = v627 ^ (v634 >> v616) ^ v636 ^ LODWORD(STACK[0x2F8]) ^ v635 ^ __ROR4__(*(v296 + 4 * HIBYTE(v628)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v624)), 8) ^ __ROR4__(*(v296 + 4 * (v598 ^ v619 ^ v607)), 16);
  v638 = v620;
  v639 = v413 & 0x60010274 ^ 0x42022068 ^ (v620 ^ 0x81001483) & v633;
  LODWORD(STACK[0x2F8]) = v639;
  v640 = v413 & 0x11034 ^ 0x2022420 ^ v633 & (v435 ^ 0x2033438);
  v641 = v406 & 0x41001071 ^ 0xC0022063 ^ (v416 ^ 0x2201068C) & v621;
  LODWORD(STACK[0x2C0]) = v641;
  v642 = v406 & 0x61010060 ^ 0xC20004E8 ^ (HIDWORD(a45) ^ 0xE30104E8) & v621;
  v643 = v627 ^ ((v640 >> v462) | (v639 << v410)) ^ LODWORD(STACK[0x308]) ^ *(v296 + 4 * BYTE2(v631)) ^ __ROR4__(*(v296 + 4 * v630), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v624)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v628)), 8);
  v644 = v627 ^ ((v641 << v592) + (v642 >> v616)) ^ LODWORD(STACK[0x30C]) ^ *(v296 + 4 * BYTE2(v624)) ^ __ROR4__(*(v296 + 4 * BYTE1(v631)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v630)), 24) ^ __ROR4__(*(v296 + 4 * v628), 16);
  v645 = v607 + 1706374958;
  if (v607 >= 0x9A4AC8D2)
  {
    v646 = -1706374958;
  }

  else
  {
    v645 = v607;
    v646 = 0;
  }

  if (v645)
  {
    v647 = v607;
  }

  else
  {
    v647 = v646;
  }

  LODWORD(STACK[0x298]) = v647;
  v648 = v416;
  v649 = v406 & 0x3A14EA7 ^ 0x7429D4E;
  v650 = v649;
  v651 = v406 & 0x1804AA1 ^ 0x1009900 ^ (v416 ^ 0x663044E) & v649;
  LODWORD(STACK[0x2AC]) = v651;
  v652 = v406 & 0x20046A6 ^ 0x6021546 ^ (HIDWORD(a45) ^ 0x60257E6) & v649;
  LODWORD(STACK[0x400]) = v652;
  v653 = v638;
  v654 = v413 & 0x3A14EA7 ^ 0x7429D4E;
  LODWORD(STACK[0x30C]) = v654;
  v655 = v413 & 0x1200221 ^ 0x5029140 ^ (v638 ^ 0x2C14C8E) & v654;
  v656 = LODWORD(STACK[0x480]) ^ v626;
  v657 = v656 ^ (v652 >> v616);
  LODWORD(STACK[0x308]) = v657;
  v658 = v657 ^ (v651 << v592) ^ LODWORD(STACK[0x310]) ^ *(v296 + 4 * BYTE2(v637)) ^ __ROR4__(*(v296 + 4 * BYTE1(v644)), 8) ^ __ROR4__(*(v296 + 4 * v643), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v632)), 24);
  v659 = v413 & 0x2200800 ^ 0x6409848 ^ (v413 & 0x3A14EA7 ^ 0x7429D4E) & (v435 ^ 0x6609844);
  LODWORD(STACK[0x310]) = v659 >> v613;
  v660 = v656 ^ (v655 << v410) ^ (v659 >> v613) ^ LODWORD(STACK[0x318]) ^ *(v296 + 4 * BYTE2(v644)) ^ __ROR4__(*(v296 + 4 * HIBYTE(v637)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v643)), 8) ^ __ROR4__(*(v296 + 4 * v632), 16);
  LODWORD(STACK[0x2A0]) = v650;
  v661 = v613;
  v662 = v656 ^ ((v406 & 0x2810402 ^ 0x2400442 ^ (HIDWORD(a45) ^ 0x2C10442) & v650) >> v613) ^ ((v406 & 0x2214801 ^ 0x2008800 ^ (v648 ^ 0x5C217EE) & v650) << v410) ^ LODWORD(STACK[0x31C]) ^ *(v296 + 4 * BYTE2(v643)) ^ __ROR4__(*(v296 + 4 * BYTE1(v632)), 8) ^ __ROR4__(*(v296 + 4 * v637), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v644)), 24);
  v663 = v655 << v592;
  LODWORD(STACK[0x2A8]) = v663;
  v664 = v656 ^ (v659 >> v616);
  LODWORD(STACK[0x31C]) = v664;
  v665 = v664 ^ v663 ^ LODWORD(STACK[0x328]) ^ __ROR4__(*(v296 + 4 * BYTE1(v637)), 8) ^ *(v296 + 4 * BYTE2(v632)) ^ __ROR4__(*(v296 + 4 * v644), 16);
  v667 = __ROR4__(*(v296 + 4 * HIBYTE(v643)), 24);
  v666 = v665 ^ v667;
  v668 = v413 & 0x22B55C3C ^ 0x456AB878;
  v669 = v413 & 0x2021101C ^ 0x4209018 ^ v668 & (v435 ^ 0x24219010);
  LODWORD(STACK[0x328]) = v669;
  v670 = v413 & 0x294002C ^ 0x41088028 ^ (v648 ^ 0x24637C50) & v668;
  LODWORD(STACK[0x318]) = v670;
  v671 = (v670 << v592) + (v669 >> v616);
  v672 = *(v296 + 4 * ((v665 ^ v667) >> 8));
  v673 = LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x3F8]);
  v674 = *(v296 + 4 * HIBYTE(v660));
  v675 = v673 ^ v671;
  v676 = v673;
  LODWORD(STACK[0x29C]) = v673;
  v677 = v675 ^ LODWORD(STACK[0x344]) ^ __ROR4__(v672, 8) ^ __ROR4__(v674, 24) ^ *(v296 + 4 * BYTE2(v662)) ^ __ROR4__(*(v296 + 4 * v658), 16);
  v678 = v653;
  v679 = v406 & 0x22B55C3C ^ 0x456AB878;
  v680 = v406 & 0x22A00000 ^ 0x42A8040 ^ v679 & (v653 ^ 0x41557C3C);
  LODWORD(STACK[0x344]) = v680;
  v681 = v406 & 0x285002C ^ 0x40408028 ^ (HIDWORD(a45) ^ 0x42C5802C) & v679;
  LODWORD(STACK[0x320]) = v681;
  v682 = (v681 >> v661) ^ (v680 << v410) ^ v676;
  v683 = v682 ^ LODWORD(STACK[0x348]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v658)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v662)), 8) ^ *(v296 + 4 * BYTE2(v660)) ^ __ROR4__(*(v296 + 4 * v666), 16);
  v684 = v675 ^ LODWORD(STACK[0x350]) ^ __ROR4__(*(v296 + 4 * BYTE1(v660)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v666)), 24) ^ __ROR4__(*(v296 + 4 * v662), 16) ^ *(v296 + 4 * BYTE2(v658));
  v685 = v682 ^ LODWORD(STACK[0x354]) ^ *(v296 + 4 * BYTE2(v666)) ^ __ROR4__(*(v296 + 4 * v660), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v662)), 24);
  v686 = STACK[0x468];
  v687 = *(STACK[0x468] + 4 * v677);
  HIDWORD(v689) = v687 ^ 0x1F;
  LODWORD(v689) = v687 ^ 0x986A1B00;
  v688 = v689 >> 8;
  LODWORD(v689) = __ROR4__(*(v296 + 4 * BYTE1(v658)), 8);
  v690 = v685 ^ v689;
  v691 = *(STACK[0x468] + 4 * (v685 ^ v689));
  HIDWORD(v689) = v691 ^ 0x1F;
  LODWORD(v689) = v691 ^ 0x986A1B00;
  v692 = v689 >> 8;
  v693 = *(STACK[0x468] + 4 * v684);
  HIDWORD(v689) = v693 ^ 0x1F;
  LODWORD(v689) = v693 ^ 0x986A1B00;
  v694 = v689 >> 8;
  v695 = *(STACK[0x468] + 4 * BYTE2(v683));
  HIDWORD(v689) = v695 ^ 0x6A1B1F;
  LODWORD(v689) = v695 ^ 0x98000000;
  v696 = (v689 >> 24) ^ v692;
  v697 = *(STACK[0x468] + 4 * HIBYTE(v683));
  HIDWORD(v689) = v697 ^ 0x1B1F;
  LODWORD(v689) = v697 ^ 0x986A0000;
  v698 = (v689 >> 16) ^ v694;
  v699 = *(STACK[0x468] + 4 * HIBYTE(v684));
  HIDWORD(v689) = v699 ^ 0x1B1F;
  LODWORD(v689) = v699 ^ 0x986A0000;
  v700 = v696 ^ (v689 >> 16);
  v701 = *(STACK[0x468] + 4 * HIBYTE(v690));
  HIDWORD(v689) = v701 ^ 0x1B1F;
  LODWORD(v689) = v701 ^ 0x986A0000;
  v702 = ((v689 >> 16) ^ v688) - 1737876705 - ((2 * ((v689 >> 16) ^ v688)) & 0x30D4363E);
  v703 = *(STACK[0x468] + 4 * BYTE2(v690));
  HIDWORD(v689) = v703 ^ 0x6A1B1F;
  LODWORD(v689) = v703 ^ 0x98000000;
  v704 = v689 >> 24;
  v705 = *(STACK[0x468] + 4 * BYTE2(v677));
  HIDWORD(v689) = v705 ^ 0x6A1B1F;
  LODWORD(v689) = v705 ^ 0x98000000;
  v706 = (v698 ^ (v689 >> 24)) - 1737876705 - ((2 * (v698 ^ (v689 >> 24))) & 0x30D4363E);
  v707 = *(STACK[0x468] + 4 * v683);
  HIDWORD(v689) = v707 ^ 0x1F;
  LODWORD(v689) = v707 ^ 0x986A1B00;
  v708 = (v689 >> 8) ^ v704;
  v709 = *(STACK[0x468] + 4 * HIBYTE(v677));
  HIDWORD(v689) = v709 ^ 0x1B1F;
  LODWORD(v689) = v709 ^ 0x986A0000;
  v710 = *(STACK[0x468] + 4 * BYTE1(v684)) ^ LODWORD(STACK[0x358]) ^ ((v708 ^ (v689 >> 16)) - 1737876705 - ((2 * (v708 ^ (v689 >> 16))) & 0x30D4363E));
  v711 = STACK[0x448];
  v712 = (v710 - ((2 * v710) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v713 = (v712 - ((2 * v712) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v714 = STACK[0x418];
  LODWORD(STACK[0x4A0]) = v713 - ((2 * v713) & 0x184CD4D4);
  v715 = *(v686 + 4 * BYTE2(v684));
  v716 = *(v686 + 4 * BYTE1(v690)) ^ LODWORD(STACK[0x35C]) ^ v706;
  HIDWORD(v689) = v715 ^ 0x6A1B1F;
  LODWORD(v689) = v715 ^ 0x98000000;
  v717 = *(v686 + 4 * BYTE1(v677)) ^ LODWORD(STACK[0x360]) ^ (v700 - 1737876705 - ((2 * v700) & 0x30D4363E));
  v718 = *(v686 + 4 * BYTE1(v683)) ^ LODWORD(STACK[0x368]) ^ (v689 >> 24) ^ v702;
  v719 = (v718 - ((2 * v718) & 0x1778FF0C) - 1950580858) ^ v714;
  v720 = (v719 - ((2 * v719) & 0x1AC1B02) - 2133455487) ^ v711;
  LODWORD(STACK[0x3F8]) = v720 - ((2 * v720) & 0x184CD4D4);
  v721 = (v716 - ((2 * v716) & 0x1AC1B02) - 2133455487) ^ v711;
  v722 = (v717 - ((2 * v717) & 0x1AC1B02) - 2133455487) ^ v711;
  v723 = (v721 - ((2 * v721) & 0x1778FF0C) - 1950580858) ^ v714;
  LODWORD(STACK[0x368]) = v723 - ((2 * v723) & 0x184CD4D4);
  v724 = (v722 - ((2 * v722) & 0x1778FF0C) - 1950580858) ^ v714;
  LODWORD(STACK[0x360]) = v724 - ((2 * v724) & 0x184CD4D4);
  v725 = LODWORD(STACK[0x2E0]) ^ ((LODWORD(STACK[0x338]) >> v661) + LODWORD(STACK[0x330])) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x2A4]);
  v726 = STACK[0x4C8];
  v727 = LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x410]) ^ (LODWORD(STACK[0x2D8]) >> v726) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x378]);
  v728 = v678;
  LOBYTE(v714) = STACK[0x490];
  LOBYTE(v709) = v661;
  v729 = LODWORD(STACK[0x2E0]) ^ (LODWORD(STACK[0x498]) >> v661) ^ ((v406 & 0x62018044 ^ 0x4A110000 ^ (LODWORD(STACK[0x4A8]) ^ 0x85CA7089) & STACK[0x470]) << v714) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x2C8]);
  v730 = *(v296 + 4 * (LOBYTE(STACK[0x2C4]) ^ LOBYTE(STACK[0x410]) ^ (LODWORD(STACK[0x2D8]) >> v726) ^ LOBYTE(STACK[0x2DC]) ^ LOBYTE(STACK[0x298]) ^ LOBYTE(STACK[0x378])));
  v731 = (v730 << (STACK[0x4D0] & 0x10) << (STACK[0x4D0] & 0x10 ^ 0x10)) + HIWORD(v730);
  v732 = LODWORD(STACK[0x2E0]) ^ (LODWORD(STACK[0x488]) >> v726) ^ ((v413 & 0x40408040 ^ 0x40000009 ^ (v678 ^ 0xAF9B7084) & STACK[0x2E8]) << v410) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x2D4]);
  v733 = v627 ^ (LODWORD(STACK[0x2D0]) + LODWORD(STACK[0x2F0])) ^ LODWORD(STACK[0x390]) ^ __ROR4__(*(v296 + 4 * ((LOWORD(STACK[0x2E0]) ^ (LODWORD(STACK[0x498]) >> v661) ^ ((v406 & 0x8044 ^ (LOWORD(STACK[0x4A8]) ^ 0x7089) & STACK[0x470]) << v714) ^ LOWORD(STACK[0x388]) ^ LOWORD(STACK[0x2C8])) >> 8)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v727)), 24) ^ *(v296 + 4 * BYTE2(v725)) ^ __ROR4__(*(v296 + 4 * (LOBYTE(STACK[0x2E0]) ^ (LODWORD(STACK[0x488]) >> v726) ^ ((v413 & 0x40 ^ 9 ^ (v678 ^ 0x84) & STACK[0x2E8]) << v410) ^ LOBYTE(STACK[0x380]) ^ LOBYTE(STACK[0x2D4]))), 16);
  v734 = LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x398]) ^ *(v296 + 4 * BYTE2(v727)) ^ __ROR4__(*(v296 + 4 * (LOBYTE(STACK[0x2E0]) ^ (LODWORD(STACK[0x498]) >> v661) ^ ((v406 & 0x44 ^ (LOBYTE(STACK[0x4A8]) ^ 0x89) & STACK[0x470]) << v714) ^ LOBYTE(STACK[0x388]) ^ LOBYTE(STACK[0x2C8]))), 16) ^ __ROR4__(*(v296 + 4 * HIBYTE(v732)), 24) ^ __ROR4__(*(v296 + 4 * BYTE1(v725)), 8);
  v735 = v627 ^ (LODWORD(STACK[0x430]) >> v726) ^ (LODWORD(STACK[0x2C0]) << v410) ^ LODWORD(STACK[0x3A0]) ^ __ROR4__(*(v296 + 4 * (LOBYTE(STACK[0x2E0]) ^ ((LODWORD(STACK[0x338]) >> v661) + LOBYTE(STACK[0x330])) ^ LOBYTE(STACK[0x370]) ^ LOBYTE(STACK[0x2A4]))), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v727)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v729)), 24) ^ *(v296 + 4 * BYTE2(v732));
  v736 = v627 ^ ((LODWORD(STACK[0x304]) >> v661) | (LODWORD(STACK[0x2F8]) << v714)) ^ LODWORD(STACK[0x3A8]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v725)), 24) ^ *(v296 + 4 * BYTE2(v729));
  LODWORD(v689) = __ROR4__(*(v296 + 4 * BYTE1(v732)), 8);
  v737 = v736 ^ v689 ^ v731;
  v738 = *(v296 + 4 * BYTE2(v734)) ^ LODWORD(STACK[0x3B0]) ^ __ROR4__(*(v296 + 4 * (v736 ^ v689 ^ v731)), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v733)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v735)), 24);
  v739 = LODWORD(STACK[0x308]) ^ (LODWORD(STACK[0x2AC]) << v410) ^ LODWORD(STACK[0x3B4]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v734)), 24) ^ *(v296 + 4 * BYTE2(v733)) ^ __ROR4__(*(v296 + 4 * BYTE1(v737)), 8) ^ __ROR4__(*(v296 + 4 * v735), 16);
  v740 = LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x310]) ^ (v738 + LODWORD(STACK[0x4B0]) - 2 * (v738 & STACK[0x4B0]));
  v741 = v656 ^ ((LODWORD(STACK[0x400]) >> v661) + ((v406 & 0x12046A2 ^ 0x500854A ^ STACK[0x2A0] & (v728 ^ 0x2C31805)) << v410)) ^ LODWORD(STACK[0x3B8]) ^ __ROR4__(*(v296 + 4 * HIBYTE(v733)), 24) ^ __ROR4__(*(v296 + 4 * v734), 16) ^ __ROR4__(*(v296 + 4 * BYTE1(v735)), 8) ^ *(v296 + 4 * BYTE2(v737));
  v742 = LODWORD(STACK[0x31C]) ^ ((v413 & 0x2A00283 ^ 0x602004A ^ (LODWORD(STACK[0x4A8]) ^ 0x141DD24) & STACK[0x30C]) << v714) ^ LODWORD(STACK[0x3C4]) ^ *(v296 + 4 * BYTE2(v735)) ^ __ROR4__(*(v296 + 4 * BYTE1(v734)), 8) ^ __ROR4__(*(v296 + 4 * HIBYTE(v737)), 24) ^ __ROR4__(*(v296 + 4 * v733), 16);
  v743 = *(v296 + 4 * v742);
  v744 = *(v296 + 4 * HIBYTE(v742));
  v745 = *(v296 + 4 * v741);
  v746 = *(v296 + 4 * BYTE1(v742));
  v747 = *(v296 + 4 * BYTE2(v740));
  v748 = *(v296 + 4 * HIBYTE(v739));
  v749 = *(v296 + 4 * BYTE1(v739));
  v750 = *(v296 + 4 * BYTE1(v740));
  v751 = *(v296 + 4 * BYTE2(v742));
  v752 = *(v296 + 4 * BYTE1(v741));
  v753 = *(v296 + 4 * HIBYTE(v740));
  v754 = *(v296 + 4 * HIBYTE(v741));
  v755 = *(v296 + 4 * BYTE2(v741));
  v756 = *(v296 + 4 * v740);
  v757 = ((LODWORD(STACK[0x2A4]) ^ (-1346079365 - LODWORD(STACK[0x2C4]))) + LODWORD(STACK[0x2C8]) + 1636997906) ^ LODWORD(STACK[0x2D4]);
  v758 = LODWORD(STACK[0x318]) << v576;
  v759 = LODWORD(STACK[0x328]) >> v709;
  v760 = LODWORD(STACK[0x344]) << v714;
  v761 = LODWORD(STACK[0x320]) >> v726;
  v762 = LODWORD(STACK[0x29C]) ^ v760 ^ v761 ^ LODWORD(STACK[0x3C8]) ^ __ROR4__(v750, 8) ^ __ROR4__(*(v296 + 4 * v739), 16) ^ v751 ^ __ROR4__(v754, 24);
  v763 = LODWORD(STACK[0x29C]) ^ (v758 + v759) ^ LODWORD(STACK[0x3CC]) ^ __ROR4__(v743, 16) ^ *(v296 + 4 * BYTE2(v739)) ^ __ROR4__(v752, 8) ^ __ROR4__(v753, 24);
  v764 = LODWORD(STACK[0x29C]) ^ v759 ^ v758 ^ LODWORD(STACK[0x3D0]) ^ __ROR4__(v746, 8) ^ __ROR4__(v748, 24);
  v765 = LODWORD(STACK[0x29C]) ^ (v761 | v760) ^ LODWORD(STACK[0x3D4]) ^ __ROR4__(v744, 24) ^ __ROR4__(v745, 16) ^ v747 ^ __ROR4__(v749, 8);
  v766 = *(v686 + 4 * BYTE2(v763));
  HIDWORD(v689) = v766 ^ 0x6A1B1F;
  LODWORD(v689) = v766 ^ 0x98000000;
  v767 = v689 >> 24;
  v768 = *(v686 + 4 * HIBYTE(v765));
  HIDWORD(v689) = v768 ^ 0x1B1F;
  LODWORD(v689) = v768 ^ 0x986A0000;
  v769 = v689 >> 16;
  v770 = *(v686 + 4 * HIBYTE(v763));
  v771 = v764 ^ v755;
  HIDWORD(v689) = v770 ^ 0x1B1F;
  LODWORD(v689) = v770 ^ 0x986A0000;
  v772 = v689 >> 16;
  v773 = *(v686 + 4 * v762);
  HIDWORD(v689) = v773 ^ 0x1F;
  LODWORD(v689) = v773 ^ 0x986A1B00;
  v774 = v689 >> 8;
  v775 = v771 ^ __ROR4__(v756, 16);
  v776 = *(v686 + 4 * BYTE2(v765));
  v777 = v767 - 1737876705 - ((2 * v767) & 0x30D4363E);
  HIDWORD(v689) = v776 ^ 0x6A1B1F;
  LODWORD(v689) = v776 ^ 0x98000000;
  v778 = v689 >> 24;
  v779 = *(v686 + 4 * v775);
  HIDWORD(v689) = v779 ^ 0x1F;
  LODWORD(v689) = v779 ^ 0x986A1B00;
  v780 = (v689 >> 8) ^ v778;
  v781 = *(v686 + 4 * BYTE2(v775));
  HIDWORD(v689) = v781 ^ 0x6A1B1F;
  LODWORD(v689) = v781 ^ 0x98000000;
  v782 = v689 >> 24;
  v783 = *(v686 + 4 * HIBYTE(v775));
  HIDWORD(v689) = v783 ^ 0x1B1F;
  LODWORD(v689) = v783 ^ 0x986A0000;
  v784 = (v689 >> 16) - 1737876705 - ((2 * (v689 >> 16)) & 0x30D4363E);
  v785 = *(v686 + 4 * v763);
  HIDWORD(v689) = v785 ^ 0x1F;
  LODWORD(v689) = v785 ^ 0x986A1B00;
  v786 = v689 >> 8;
  v787 = *(v686 + 4 * BYTE2(v762));
  HIDWORD(v689) = v787 ^ 0x6A1B1F;
  LODWORD(v689) = v787 ^ 0x98000000;
  v788 = v689 >> 24;
  v789 = *(v686 + 4 * v765);
  HIDWORD(v689) = v789 ^ 0x1F;
  LODWORD(v689) = v789 ^ 0x986A1B00;
  v790 = *(v686 + 4 * HIBYTE(v762));
  v791 = v757 ^ LODWORD(STACK[0x3DC]) ^ *(v686 + 4 * BYTE1(v765)) ^ v786 ^ v788 ^ v784;
  v792 = v757 ^ LODWORD(STACK[0x3D8]) ^ *(v686 + 4 * BYTE1(v762)) ^ v782 ^ (v689 >> 8) ^ (v772 - 1737876705 - ((2 * v772) & 0x30D4363E));
  HIDWORD(v689) = v790 ^ 0x1B1F;
  LODWORD(v689) = v790 ^ 0x986A0000;
  v793 = v757 ^ LODWORD(STACK[0x3E0]) ^ *(v686 + 4 * BYTE1(v763)) ^ (v689 >> 16) ^ (v780 - 1737876705 - ((2 * v780) & 0x30D4363E));
  v794 = v757 ^ LODWORD(STACK[0x3E4]) ^ *(v686 + 4 * BYTE1(v775)) ^ v769 ^ v774 ^ v777;
  v795 = (v792 - ((2 * v792) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v796 = (v795 - ((2 * v795) & 0x184CD4D4) - 1943639446) ^ LODWORD(STACK[0x438]);
  v797 = (v793 - ((2 * v793) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v798 = (v794 - ((2 * v794) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v799 = (v797 - ((2 * v797) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v800 = v799 - ((2 * v799) & 0x184CD4D4);
  v801 = (v791 - ((2 * v791) & 0x1AC1B02) - 2133455487) ^ LODWORD(STACK[0x448]);
  v802 = (v798 - ((2 * v798) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v803 = (v801 - ((2 * v801) & 0x1778FF0C) - 1950580858) ^ LODWORD(STACK[0x418]);
  v804 = v802 - ((2 * v802) & 0x184CD4D4);
  v805 = v796 - ((2 * v796) & 0x1AC1B02);
  v806 = v803 - ((2 * v803) & 0x184CD4D4);
  v807 = STACK[0x440];
  v808 = LODWORD(STACK[0x440]) ^ 0x6BDA2021;
  v809 = v808 ^ (LODWORD(STACK[0x4A0]) - 1943639446);
  v810 = v808 ^ (LODWORD(STACK[0x368]) - 1943639446);
  v811 = v808 ^ (LODWORD(STACK[0x3F8]) - 1943639446);
  v812 = v808 ^ (LODWORD(STACK[0x360]) - 1943639446);
  v813 = STACK[0x3F4];
  if (STACK[0x3F4])
  {
    v814 = v808 ^ (LODWORD(STACK[0x368]) - 1943639446);
  }

  else
  {
    v814 = v808 ^ (LODWORD(STACK[0x4A0]) - 1943639446);
  }

  if (v813)
  {
    v810 = v812;
  }

  else
  {
    v809 = v811;
    v811 = v812;
  }

  v815 = LODWORD(STACK[0x3E8]) ^ 0x34213D3A ^ (v805 - 2133455487);
  v816 = v807 ^ 0xD2195966 ^ (v806 - 1943639446);
  v817 = v807 ^ 0xD2195966 ^ (v800 - 1943639446);
  v818 = v807 ^ 0xD2195966 ^ (v804 - 1943639446);
  if (v813)
  {
    v819 = v816;
  }

  else
  {
    v819 = v817;
  }

  if (v813)
  {
    v816 = v815;
  }

  else
  {
    v817 = v818;
  }

  if ((v813 & 1) == 0)
  {
    v818 = v815;
  }

  if ((v813 & 2) != 0)
  {
    v820 = v814;
  }

  else
  {
    v820 = v811;
  }

  if ((v813 & 2) != 0)
  {
    v821 = v810;
  }

  else
  {
    v811 = v814;
    v821 = v809;
  }

  if ((v813 & 2) != 0)
  {
    v822 = v818;
  }

  else
  {
    v809 = v810;
    v822 = v819;
  }

  if ((v813 & 2) != 0)
  {
    v818 = v819;
    v823 = v816;
  }

  else
  {
    v823 = v817;
  }

  if ((v813 & 2) != 0)
  {
    v816 = v817;
  }

  v824 = v809 ^ v757 ^ v821 ^ v823 ^ 0xB9C37947;
  v825 = (v824 ^ v816) - (v757 ^ 0xB9C37947);
  v826 = v811 + 1369154397 * v825;
  v827 = v820 ^ v757 ^ v822 ^ 0xB9C37947 ^ v826;
  v828 = v827 + 802070607 * v825;
  v829 = (v821 + 782476715 * ((v757 ^ 0x463C86B8) + (v827 ^ v818)) + 782476715) ^ v818;
  v830 = v829 ^ v828;
  v831 = v826 ^ v757 ^ 0x6A163D01;
  v832 = v823 ^ v822 ^ v831 ^ v829;
  v833 = (v824 ^ (-104105813 * (v823 ^ 0xD3D54446)) ^ (-104105813 * (v830 ^ 0xD3D54446))) + 1086831723 * (v832 - (v818 ^ v757 ^ 0x6A163D01));
  v834 = v830 ^ v757 ^ 0x6A163D01;
  v835 = v757 & 0x1000000;
  v836 = v831 ^ v816 ^ v833;
  v837 = v822 ^ 0xD3D54446;
  if ((v836 & v757 & 0x1000000) != 0)
  {
    v835 = -v835;
  }

  v838 = (v832 ^ 0xD3D54446) + 1472380469 * (v837 + ((v757 ^ 0x6A163D01) & 0xFEFFFFFF ^ 0x2C2ABBB9 ^ (v835 + v836))) + 1472380469;
  v839 = v833 ^ 0x8C8C09DD;
  v840 = STACK[0x258];
  v841 = *(&off_1006B4E30 + LODWORD(STACK[0x258]) - 9599) - 8;
  LODWORD(STACK[0x4D0]) = (((v833 ^ 0x8C8C09DD) >> 8) - (((v833 ^ 0x8C8C09DD) >> 7) & 0x54) - 86) ^ v841[((v833 ^ 0x9DD) >> 8) ^ 0xFLL];
  v842 = *(&off_1006B4E30 + v840 - 9834) - 4;
  v843 = v842[BYTE2(v838) ^ 0xEELL];
  HIDWORD(v844) = v843 ^ 0x48;
  LODWORD(v844) = ~v843 << 24;
  LODWORD(STACK[0x4C8]) = v844 >> 31;
  LODWORD(STACK[0x498]) = ((v831 ^ v816 ^ v833) - ((2 * (v831 ^ v816 ^ v833)) & 0x54) - 86) ^ v841[(v831 ^ v816 ^ v833) ^ 0xE3];
  v845 = v842[BYTE1(v834) ^ 0x80];
  HIDWORD(v844) = v845 ^ 0x48;
  LODWORD(v844) = ~v845 << 24;
  LODWORD(STACK[0x4A0]) = v844 >> 31;
  STACK[0x4B0] = BYTE1(v838) ^ 0xCCLL;
  STACK[0x490] = HIBYTE(v834) ^ 0x15;
  STACK[0x4C0] = v833 ^ 0xE9;
  v846 = v842[HIBYTE(v833) ^ 0x4ALL];
  HIDWORD(v844) = v846 ^ 0x48;
  LODWORD(v844) = ~v846 << 24;
  LODWORD(STACK[0x4A8]) = v844 >> 31;
  STACK[0x488] = BYTE2(v833) ^ 0x9FLL;
  v847 = (((v836 ^ 0xA14EAF09) >> 24) + (~((v836 ^ 0xA14EAF09) >> 23) | 0xFFFFFFAB) - 85) ^ v841[((v836 ^ 0xA14EAF09) >> 24) ^ 0xF8];
  STACK[0x480] = HIBYTE(v838) ^ 0xBCLL;
  v982 = v842;
  v848 = v842[BYTE2(v836) ^ 0xCDLL];
  HIDWORD(v844) = v848 ^ 0x48;
  LODWORD(v844) = ~v848 << 24;
  v849 = v844 >> 31;
  v850 = (v838 ^ 0x533F347B) % 0x10D;
  LODWORD(STACK[0x468]) = (v838 ^ 0x533F347B) % 0x10F;
  LODWORD(STACK[0x470]) = v839 % 0x10F;
  LODWORD(STACK[0x3F8]) = v850;
  v851 = (v850 | 0x40) - ((2 * v850) & 0x74);
  v852 = *(&off_1006B4E30 + (v840 ^ 0x2770)) - 4;
  v853 = v852[(v830 ^ v757 ^ 1) ^ 0x59];
  LODWORD(STACK[0x3CC]) = ((v834 ^ 0x69472117) % 0x10F) & 0x3F;
  v854 = ((v834 ^ 0x69472117) % 0x10F) & 0x3F ^ (16 * v853) ^ 0x10;
  v855 = (v854 - 2 * (v854 & 0x77 ^ ((v834 ^ 0x69472117) % 0x10F) & 6) - 15) ^ v853;
  v856 = v841[((v836 ^ 0xAF09) >> 8) ^ 3] ^ (((v836 ^ 0xA14EAF09) >> 8) + (~((v836 ^ 0xA14EAF09) >> 7) | 0xFFFFFFAB) - 85);
  v857 = ((v836 ^ 0xA14EAF09) % 0x10D) & 0x3F;
  LODWORD(STACK[0x3B8]) = v857;
  v858 = v856 ^ v857 ^ 0xFFFFFFF2;
  LODWORD(v842) = ((v836 ^ 9) - ((v836 ^ 0xA14EAF09) / 0x101)) & 0x3F;
  LODWORD(STACK[0x3C4]) = v842;
  HIDWORD(v844) = v842 ^ 0x44 ^ v847;
  LODWORD(v844) = v849 << 24;
  v859 = v844 >> 31;
  v860 = ((v836 ^ 0xA14EAF09) % 0x107) & 0x3F;
  LODWORD(STACK[0x3B4]) = v860;
  HIDWORD(v844) = v860 ^ v849;
  LODWORD(v844) = v858 << 24;
  v861 = (v844 >> 31);
  v862 = STACK[0x498];
  HIDWORD(v844) = v858;
  LODWORD(v844) = LODWORD(STACK[0x498]) << 24;
  v863 = (v844 >> 31);
  v864 = *(&off_1006B4E30 + v840 - 8966);
  v865 = *(v864 + STACK[0x490]);
  v981 = v852;
  v866 = v852[STACK[0x488]];
  LODWORD(STACK[0x3D4]) = (v839 % 0x107) & 0x3F;
  v867 = (v839 % 0x107) & 0x3F ^ (16 * v866) ^ 0x10;
  LODWORD(v852) = ((v836 ^ 0xA14EAF09) % 0x10F) & 0x3F;
  LODWORD(STACK[0x3E8]) = v852;
  LODWORD(STACK[0x3F4]) = ((v834 ^ 0x69472117) % 0x101) & 0x3F;
  v868 = ((((v834 ^ 0x69472117) % 0x101) & 0x3F) - ((2 * ((v834 ^ 0x69472117) % 0x101)) & 0x74) + 58) ^ v865;
  HIDWORD(v844) = v862 ^ v852;
  LODWORD(v844) = ~v865 << 24;
  v869 = (v844 >> 31);
  v870 = *(v864 + (BYTE2(v834) ^ 0x3CLL)) ^ 0xFFFFFFD8;
  LODWORD(STACK[0x3E4]) = ((v834 ^ 0x69472117) % 0x107) & 0x3F;
  v871 = v870 ^ ((((v834 ^ 0x69472117) % 0x107) & 0x3F) - ((2 * ((v834 ^ 0x69472117) % 0x107)) & 0x74) - 70);
  HIDWORD(v844) = v868;
  LODWORD(v844) = v871 << 24;
  v872 = (v844 >> 31);
  LODWORD(v852) = STACK[0x4A0];
  HIDWORD(v844) = v871;
  LODWORD(v844) = LODWORD(STACK[0x4A0]) << 24;
  v873 = (v844 >> 31);
  v874 = ((v834 ^ 0x69472117) % 0x10D) & 0x3F;
  LODWORD(STACK[0x3A8]) = v874;
  HIDWORD(v844) = v874 ^ v852;
  LODWORD(v844) = v855 << 24;
  v875 = (v844 >> 31);
  v876 = *(v864 + STACK[0x480]);
  LODWORD(STACK[0x3C8]) = ((v838 ^ 0x533F347B) % 0x101) & 0x3F;
  v877 = STACK[0x4C8];
  HIDWORD(v844) = ((((v838 ^ 0x533F347B) % 0x101) & 0x3F) - ((2 * ((v838 ^ 0x533F347B) % 0x101)) & 0x74) + 58) ^ v876;
  LODWORD(v844) = LODWORD(STACK[0x4C8]) << 24;
  v878 = (v844 >> 31);
  HIDWORD(v844) = v855;
  LODWORD(v844) = ~v876 << 24;
  v879 = (v844 >> 31);
  v980 = v864;
  LODWORD(v852) = *(v864 + STACK[0x4B0]);
  LODWORD(v842) = ((v838 ^ 0x533F347B) % 0x107) & 0x3F;
  LODWORD(STACK[0x3B0]) = v842;
  LODWORD(v842) = v842 ^ v877;
  v880 = v859;
  v881 = (v851 + 122) ^ v852;
  HIDWORD(v844) = v842;
  LODWORD(v844) = ~v852 << 24;
  v882 = (v844 >> 31);
  LODWORD(v852) = v841[v838 ^ 0x78] ^ (v838 - ((2 * v838) & 0x54) - 86) ^ 0xFFFFFF89;
  HIDWORD(v844) = v881;
  LODWORD(v844) = v852 << 24;
  v883 = (v844 >> 31);
  LODWORD(v842) = STACK[0x468] & 0x3F;
  LODWORD(STACK[0x3E0]) = v842;
  v884 = STACK[0x4A8];
  HIDWORD(v844) = v852 ^ v842;
  LODWORD(v844) = LODWORD(STACK[0x4A8]) << 24;
  v885 = v844 >> 31;
  v886 = v866 ^ 0xFFFFFFDB ^ (v867 - 2 * (v867 & 0x77 ^ (v839 % 0x107) & 6) - 15);
  v887 = (v839 - (v839 / 0x101)) & 0x3F;
  LODWORD(STACK[0x3D0]) = v887;
  HIDWORD(v844) = v887 ^ v884;
  LODWORD(v844) = v886 << 24;
  v888 = (v844 >> 31);
  LODWORD(v842) = STACK[0x4D0];
  HIDWORD(v844) = v886;
  LODWORD(v844) = LODWORD(STACK[0x4D0]) << 24;
  v889 = v844 >> 31;
  v983 = v841;
  v890 = v841[STACK[0x4C0]] ^ (v839 - ((2 * v839) & 0x54) - 86) ^ 0xFFFFFF96;
  LODWORD(STACK[0x3DC]) = (v839 % 0x10D) & 0x3F;
  LODWORD(v852) = v842 ^ (v839 % 0x10D) & 0x3F;
  v891 = STACK[0x470];
  LODWORD(STACK[0x3D8]) = STACK[0x470] & 0x3F;
  v892 = v890 ^ v891 & 0x3F;
  HIDWORD(v844) = v852;
  LODWORD(v844) = v892 << 24;
  v893 = v844 >> 31;
  HIDWORD(v844) = v875 ^ 0x3E;
  LODWORD(v844) = v879 << 24;
  v894 = v844 >> 31;
  HIDWORD(v844) = v888 ^ 0x30;
  LODWORD(v844) = v889 << 24;
  v895 = v844 >> 31;
  HIDWORD(v844) = v872 ^ 0x66;
  LODWORD(v844) = v873 << 24;
  v896 = v844 >> 31;
  STACK[0x468] = v872;
  HIDWORD(v844) = v869 ^ 0x52;
  LODWORD(v844) = v872 << 24;
  v897 = v844 >> 31;
  if ((v847 & 0x80u) == 0)
  {
    v898 = -121;
  }

  else
  {
    v898 = 0;
  }

  v899 = v898 ^ (2 * v892);
  HIDWORD(v901) = v893 ^ 0x42;
  LODWORD(v901) = v899 << 24;
  v900 = v901 >> 31;
  STACK[0x460] = v879;
  STACK[0x418] = v878;
  HIDWORD(v901) = v879 ^ 0x46;
  LODWORD(v901) = (v878 ^ 0xFFFFFFF0) << 24;
  v902 = v901 >> 31;
  HIDWORD(v901) = v878 ^ 0xFFFFFFF0;
  LODWORD(v901) = v882 << 24;
  v903 = v901 >> 31;
  STACK[0x438] = v882;
  STACK[0x470] = v883;
  v904 = v883 ^ 0xFFFFFF90;
  HIDWORD(v901) = v904;
  LODWORD(v901) = v885 << 24;
  v905 = v901 >> 31;
  HIDWORD(v901) = v882 ^ 0x50;
  LODWORD(v901) = v904 << 24;
  v906 = v901 >> 31;
  v393 = (v898 & 1) == 0;
  v907 = *(&off_1006B4E30 + (v840 ^ 0x2726));
  v908 = STACK[0x2CC] & 0xF;
  LODWORD(v907) = *(v907 + (v908 ^ 3) - 12);
  HIDWORD(v901) = ~v907;
  LODWORD(v901) = (v907 ^ 0xFFFFFF9F) << 24;
  v909 = (v901 >> 25) ^ 0x2E;
  v910 = v899 - 1;
  if (v393)
  {
    v910 = v899 + 1;
  }

  STACK[0x4C0] = (v880 >> 7) & 0xFFFFFF87 ^ (2 * v899) ^ 0x7A;
  STACK[0x4D0] = v903 ^ 0x7Bu;
  STACK[0x480] = v861;
  HIDWORD(v912) = v861 ^ 0xFFFFFFA2;
  LODWORD(v912) = v863 << 24;
  v911 = v912 >> 31;
  HIDWORD(v912) = v880;
  LODWORD(v912) = (v861 ^ 0xFFFFFFA2) << 24;
  STACK[0x4C8] = (v912 >> 31) ^ 0xFFFFFFE6;
  STACK[0x4B0] = v896 ^ 0x4Au;
  v913 = v906 ^ 0xFFFFFFA7;
  v914 = v900 ^ 0xFFFFFFB0;
  STACK[0x448] = v869;
  STACK[0x430] = v863;
  HIDWORD(v912) = v863;
  LODWORD(v912) = v869 << 24;
  v915 = (v912 >> 31) ^ 0x33;
  v916 = v902 ^ 0x17u;
  v917 = v911 ^ 0xFFFFFFAC;
  HIDWORD(v912) = v889;
  LODWORD(v912) = v893 << 24;
  v918 = (v912 >> 31) ^ 0xFFFFFFED;
  STACK[0x488] = v888;
  HIDWORD(v912) = v885;
  LODWORD(v912) = v888 << 24;
  v919 = (v912 >> 31) ^ 0x71;
  v920 = v905 ^ 0xFFFFFF98;
  v921 = v897 ^ 0xB5;
  STACK[0x498] = v875;
  STACK[0x440] = v873;
  HIDWORD(v912) = v873;
  LODWORD(v912) = v875 << 24;
  v922 = v894 ^ 0xFFFFFFCF;
  v923 = (v912 >> 31) ^ 0x3E;
  LODWORD(v924) = v920;
  switch(v909)
  {
    case 0:
      LODWORD(v924) = v914;
      break;
    case 1:
      v924 = STACK[0x4C8];
      break;
    case 2:
      break;
    case 3:
      LODWORD(v924) = v915;
      break;
    case 4:
      LODWORD(v924) = v923;
      break;
    case 6:
      v924 = STACK[0x4D0];
      break;
    case 7:
      LODWORD(v924) = v895 ^ 0xA;
      break;
    case 8:
      LODWORD(v924) = v918;
      break;
    case 9:
      LODWORD(v924) = v913;
      break;
    case 10:
      LODWORD(v924) = v917;
      break;
    case 11:
      v924 = STACK[0x4C0];
      break;
    case 12:
      v924 = STACK[0x4B0];
      break;
    case 13:
      LODWORD(v924) = v919;
      break;
    case 14:
      LODWORD(v924) = v916;
      break;
    case 15:
      LODWORD(v924) = v897 ^ 0xFFFFFFB5;
      break;
    default:
      LODWORD(v924) = v894 ^ 0xFFFFFFCF;
      break;
  }

  STACK[0x4A0] = v919;
  STACK[0x4A8] = v895 ^ 0xAu;
  v925 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x454]) ^ 0x27EC)) + (v908 ^ 3)) ^ 0xFFFFFFD4;
  v926 = *(*(&off_1006B4E30 + (LODWORD(STACK[0x454]) ^ 0x24DA)) + (v908 ^ 8) - 8);
  HIDWORD(v927) = v926 ^ 0x67;
  LODWORD(v927) = v926 << 24;
  v928 = (v927 >> 31) ^ 0x21;
  v929 = *(*(&off_1006B4E30 + LODWORD(STACK[0x454]) - 9593) + (v908 ^ 6) - 12) - 83;
  STACK[0x490] = v908;
  if (v908 == 8)
  {
    v930 = -16;
  }

  else
  {
    v930 = 112;
  }

  v931 = v930 ^ v925 ^ (v925 >> 2) & 0x3E ^ v929;
  v932 = v924 ^ v931;
  v933 = v928;
  v934 = STACK[0x210];
  v935 = v924 ^ v931;
  switch(v933)
  {
    case 0:
      v935 = v915;
      LOBYTE(v914) = v924 ^ v931;
      break;
    case 1:
      v935 = v915;
      STACK[0x4C8] = v932;
      break;
    case 2:
      v935 = v915;
      v920 = v924 ^ v931;
      break;
    case 3:
      break;
    case 5:
      v935 = v915;
      v922 = v924 ^ v931;
      break;
    case 6:
      v935 = v915;
      STACK[0x4D0] = v932;
      break;
    case 7:
      v935 = v915;
      STACK[0x4A8] = v932;
      break;
    case 8:
      v935 = v915;
      LOBYTE(v918) = v924 ^ v931;
      break;
    case 9:
      v935 = v915;
      LOBYTE(v913) = v924 ^ v931;
      break;
    case 10:
      v935 = v915;
      LOBYTE(v917) = v924 ^ v931;
      break;
    case 11:
      v935 = v915;
      STACK[0x4C0] = v932;
      break;
    case 12:
      v935 = v915;
      STACK[0x4B0] = v932;
      break;
    case 13:
      v935 = v915;
      STACK[0x4A0] = v932;
      break;
    case 14:
      v916 = v924 ^ v931;
      v935 = v915;
      break;
    case 15:
      v935 = v915;
      v921 = v924 ^ v931;
      break;
    default:
      v935 = v915;
      LOBYTE(v923) = v924 ^ v931;
      break;
  }

  STACK[0x400] = v922;
  STACK[0x408] = v920;
  STACK[0x410] = v916;
  v936 = *(a84 + (STACK[0x418] ^ 0x2ALL));
  HIDWORD(v938) = v936 ^ 0x28;
  LODWORD(v938) = v936 << 24;
  v937 = v938 >> 31;
  v939 = ((v880 ^ 0xFFFFFFA8) - ((2 * (v880 ^ 0xFFFFFFA8) + 26) & 0x26)) ^ 0xD7 ^ *(a85 + (v880 ^ 0xACLL));
  v940 = STACK[0x460];
  v941 = (STACK[0x460] ^ 0x16) - ((2 * (STACK[0x460] ^ 0x16) + 26) & 0x26);
  v942 = *(a84 + (v893 ^ 0xB6));
  HIDWORD(v938) = v942 ^ 0x28;
  LODWORD(v938) = v942 << 24;
  v943 = (v910 - ((2 * v910) & 0xF8) + 124) ^ 0xD9 ^ *(v934 + (v910 ^ 0x64));
  v944 = (STACK[0x430] - ((2 * STACK[0x430]) & 0xF8) + 124) ^ *(v934 + (STACK[0x430] ^ 0x79));
  v945 = (((v889 - ((2 * v889) & 0xF8) + 124) ^ 0x4C ^ *(v934 + (v889 ^ 0x8DLL))) << 16) | (((v938 >> 31) ^ 0x61) << 8) | v943;
  LODWORD(STACK[0x430]) = v945 - 2 * (v945 & 0x30DABF ^ v943 & 3);
  v946 = STACK[0x200];
  v947 = (v939 << 24) | ((v944 ^ 0x7C) << 8) | (((STACK[0x480] - ((2 * STACK[0x480]) & 0x78) - 68) ^ *(STACK[0x200] + (STACK[0x480] ^ 0x8CLL)) ^ 0x40) << 16);
  v948 = v941 ^ 0x8A ^ *(a85 + (v940 ^ 0x12));
  v949 = (v885 + (~(2 * v885) | 0x87) - 67) ^ *(STACK[0x200] + (v885 ^ 0xE9));
  v950 = (STACK[0x438] - ((2 * STACK[0x438]) & 0x78) - 68) ^ 0x2C ^ *(STACK[0x200] + (STACK[0x438] ^ 0xE6));
  LODWORD(v940) = *(a84 + (STACK[0x470] ^ 0xBDLL));
  HIDWORD(v938) = v940 ^ 0x28;
  LODWORD(v938) = v940 << 24;
  v951 = STACK[0x448];
  v952 = STACK[0x448] ^ 0x79;
  v953 = ((((STACK[0x468] ^ 0xFFFFFFE6) - ((2 * (STACK[0x468] ^ 0xFFFFFFE6) + 26) & 0x26)) ^ 0x64 ^ *(a85 + (STACK[0x468] ^ 0xE2))) << 24) | (((STACK[0x440] - ((2 * STACK[0x440]) & 0xF8) + 124) ^ 0x7B ^ *(v934 + (STACK[0x440] ^ 0xA4))) << 16) | v948;
  LODWORD(STACK[0x480]) = v953 - 2 * (v953 & 0x253E003B ^ v948 & 0x11111111);
  v954 = (v951 - ((2 * v951) & 0x78) - 68) ^ 0xAE ^ *(v946 + v952);
  LODWORD(STACK[0x470]) = (v954 | v947) - 2 * ((v954 | v947) & 0x19BA707B ^ v954 & 0x10);
  v955 = (v950 << 16) | (((v938 >> 31) ^ 0xA7) << 8) | v949 ^ 0x3E | ((v937 ^ 0x18) << 24);
  LODWORD(STACK[0x468]) = v955 - 2 * (v955 & 0x5080F89A ^ (v949 ^ 0x3E) & 0x12);
  v956 = (v914 - ((2 * v914) & 0x78) - 68) ^ 0x37 ^ *(v946 + (v914 ^ 0x29));
  v957 = (STACK[0x4C0] - ((2 * STACK[0x4C0]) & 0x78) - 68) ^ 0x56 ^ *(v946 + (STACK[0x4C0] ^ 0x3FLL));
  LODWORD(v951) = *(a84 + (STACK[0x400] ^ 0x99));
  HIDWORD(v938) = v951 ^ 0x28;
  LODWORD(v938) = v951 << 24;
  LODWORD(v952) = (((STACK[0x4B0] - ((2 * STACK[0x4B0]) & 0xF8) + 124) ^ *(v934 + (STACK[0x4B0] ^ 0x81)) ^ 0xFFFFFFE7) << 24) | (((v938 >> 31) ^ 0x23) << 8);
  LODWORD(STACK[0x4B0]) = *(v934 + (v921 ^ 0xB5)) ^ (v921 | (((v935 - ((2 * v935) & 0x78) - 68) ^ 0x2D ^ *(v946 + (v935 ^ 0xEFLL))) << 8)) ^ 0x7C | ((((v917 ^ 0x46) - ((2 * (v917 ^ 0x46) + 26) & 0x26)) ^ 0x6C ^ *(a85 + (v917 ^ 0x42))) << 16);
  v958 = *(a84 + (STACK[0x4A0] ^ 0xD0));
  HIDWORD(v938) = v958 ^ 0x28;
  LODWORD(v938) = v958 << 24;
  LOBYTE(v958) = v938 >> 31;
  v959 = (v956 << 8) | ((((v918 ^ 0x61) - ((2 * (v918 ^ 0x61) + 26) & 0x26)) ^ 0xFD ^ *(a85 + (v918 ^ 0x65))) << 16) | v957;
  LODWORD(STACK[0x4C0]) = v959 - 2 * (v959 & 0x1DD64B ^ v957 & 1);
  v960 = v958 | (((STACK[0x4D0] - ((2 * STACK[0x4D0]) & 0x78) - 68) ^ 0xB3 ^ *(v946 + (STACK[0x4D0] ^ 0xC8))) << 24);
  v961 = v952 | (((v923 - ((2 * v923) & 0x78) - 68) ^ 0xB5 ^ *(v946 + (v923 ^ 0xEELL))) << 16);
  LODWORD(STACK[0x4A0]) = v961 - ((2 * v961) & 0x8B9AC400);
  v962 = *(a84 + (STACK[0x408] ^ 0x55));
  HIDWORD(v938) = v962 ^ 0x28;
  LODWORD(v938) = v962 << 24;
  v963 = STACK[0x410] ^ 0x6ALL;
  LODWORD(v951) = (STACK[0x410] ^ 0x6E) - ((2 * (STACK[0x410] ^ 0x6E) + 26) & 0x26);
  v964 = (((v913 - ((2 * v913) & 0xF8) + 124) ^ 0x81 ^ *(v934 + (v913 ^ 0x5DLL))) << 16) | (((v938 >> 31) ^ 0x5E) << 8) | v960;
  LODWORD(STACK[0x460]) = v964 - 2 * (v964 & 0x6BAD9821 ^ v958 & 0x20);
  v965 = STACK[0x4A8] ^ 0x94;
  v966 = v951 ^ 0x94 ^ *(a85 + v963);
  LODWORD(STACK[0x4A8]) = v966 - ((2 * v966) & 0x34);
  LODWORD(v940) = STACK[0x454];
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x454]) - 8851;
  LODWORD(STACK[0x4C8]) = v940 - 7488;
  v967 = *(a84 + v965);
  v968 = STACK[0x4E0];
  v969 = (*(STACK[0x4E0] + 8 * (v940 + 2418)))(1032);
  v970 = (*(v968 + 8 * (v940 ^ 0x177E)))(1028);
  STACK[0x368] = v969;
  STACK[0x360] = v970;
  if (v969)
  {
    v977 = v970 == 0;
  }

  else
  {
    v977 = 1;
  }

  v978 = v977;
  return (*(v968 + 8 * ((46 * v978) ^ LODWORD(STACK[0x4C8]))))(v970, (v967 << 24), v971, v972, v973, v974, v975, v976, a9, v980, v981, v982, v983, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v984, a47, a48, a49, v985, v986, a54, a55, a56, v987, v988, v989, v990, a65, v991, a68, v992);
}

uint64_t sub_1002BC76C()
{
  v1 = STACK[0x4D0];
  (*(v0 + 8 * (LODWORD(STACK[0x4D0]) + 11234)))(STACK[0x360]);
  (*(v0 + 8 * (v1 ^ 0x3426)))(STACK[0x368]);
  return sub_1002C8DE0();
}

uint64_t sub_1002BC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4B0] = LODWORD(STACK[0x3B8]) ^ 0x16u;
  v68 = LODWORD(STACK[0x3A8]) ^ 0x2Au;
  STACK[0x4A0] = LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x4D0]) ^ 0x4D2u;
  STACK[0x490] = LODWORD(STACK[0x3C4]) ^ 0x1Au;
  LODWORD(STACK[0x498]) = v66 ^ 0x309E;
  STACK[0x488] = ((v66 ^ 0x309Eu) - 5873) ^ LODWORD(STACK[0x3CC]);
  STACK[0x480] = LODWORD(STACK[0x3B0]) ^ 0x39u;
  v69 = LOBYTE(STACK[0x516]);
  STACK[0x398] = v69;
  LODWORD(v69) = *(a65 + (v69 ^ 0x40));
  STACK[0x468] = LODWORD(STACK[0x3C8]) ^ 0xAu;
  HIDWORD(v70) = v69 ^ 0x28;
  LODWORD(v70) = v69 << 24;
  v71 = LOBYTE(STACK[0x512]);
  STACK[0x400] = v71;
  v72 = *(a66 + (v71 ^ 0x8C)) ^ ((v71 ^ 0x88) - ((((v71 ^ 0xFFFFFF88) << ((v66 ^ 0x9E) - 23)) + 26) & 0x26));
  v73 = LOBYTE(STACK[0x51B]);
  STACK[0x348] = v73;
  v74 = STACK[0x210];
  v75 = *(STACK[0x210] + (v73 ^ 0x7D));
  LODWORD(STACK[0x350]) = 2 * v73;
  v76 = v75 ^ (v73 - ((2 * v73) & 0xF8) + 124);
  v77 = (v70 >> 31) ^ 0xC8;
  v78 = LOBYTE(STACK[0x51A]);
  LODWORD(STACK[0x4A8]) = 2 * v78;
  STACK[0x408] = v78;
  LODWORD(v69) = v76 ^ 0x3E | ((*(v74 + (v78 ^ 8)) ^ (v78 - ((2 * v78) & 0xF8) + 124) ^ 0xDA) << 8);
  v79 = LOBYTE(STACK[0x518]);
  STACK[0x390] = v79;
  v80 = *(a65 + (v79 ^ 0x91));
  HIDWORD(v70) = v80 ^ 0x28;
  LODWORD(v70) = v80 << 24;
  v81 = v69 | (((v70 >> 31) ^ 0x8B) << 24);
  v82 = LOBYTE(STACK[0x51C]);
  STACK[0x388] = v82;
  LODWORD(v69) = *(a65 + (v82 ^ 0xAA));
  HIDWORD(v70) = v69 ^ 0x28;
  LODWORD(v70) = v69 << 24;
  LODWORD(v82) = v70 >> 31;
  v83 = LOBYTE(STACK[0x51F]);
  STACK[0x2F8] = v83;
  LOBYTE(v69) = *(v74 + (v83 ^ 0x3B));
  LODWORD(STACK[0x304]) = 2 * v83;
  LOBYTE(v69) = (v83 - ((2 * v83) & 0xF8) + 124) ^ v69;
  v84 = LOBYTE(STACK[0x511]);
  STACK[0x328] = v84;
  v85 = ((v72 ^ 0xE1) << 8) | ((*(a66 + (v84 ^ 0xF1)) ^ ((v84 ^ 0xF5) - ((2 * (v84 ^ 0xF5) + 26) & 0x26)) ^ 0xAF) << 16);
  v86 = *STACK[0x4B8];
  STACK[0x2F0] = v86;
  v87 = STACK[0x200];
  LODWORD(v83) = v85 | ((*(STACK[0x200] + (v86 ^ 0x83)) ^ (v86 + (~(2 * v86) | 0x87) - 67) ^ 0xFFFFFFEF) << 24);
  v88 = LOBYTE(STACK[0x51E]);
  STACK[0x2E8] = v88;
  LODWORD(v88) = *(a65 + (v88 ^ 6));
  HIDWORD(v70) = v88 ^ 0x28;
  LODWORD(v70) = v88 << 24;
  LOBYTE(v88) = v70 >> 31;
  v89 = LOBYTE(STACK[0x517]);
  STACK[0x380] = v89;
  v90 = *(a65 + (v89 ^ 0xA5));
  HIDWORD(v70) = v90 ^ 0x28;
  LODWORD(v70) = v90 << 24;
  v91 = (v70 >> 31) ^ 0x80 | (v77 << 8);
  v92 = LOBYTE(STACK[0x515]);
  STACK[0x330] = v92;
  LODWORD(v92) = *(a65 + (v92 ^ 0xAE));
  HIDWORD(v70) = v92 ^ 0x28;
  LODWORD(v70) = v92 << 24;
  v93 = LOBYTE(STACK[0x51D]);
  STACK[0x2E0] = v93;
  LOBYTE(v92) = ((2 * v93) & 0xDA ^ 0x82) + (v93 ^ 0x3C);
  LOBYTE(v92) = (v92 - ((2 * v92) & 0x26) + 19) ^ *(a66 + (v93 ^ 0xD5));
  v94 = v69 ^ 0x85 | ((v82 ^ 0x62) << 24) | ((v92 ^ 0x85) << 16) | ((v88 ^ 0x6F) << 8);
  LODWORD(STACK[0x438]) = v94;
  v95 = LOBYTE(STACK[0x514]);
  LODWORD(STACK[0x318]) = 2 * v95;
  STACK[0x310] = v95;
  LODWORD(v79) = *(v87 + (v95 ^ 0xB0)) ^ (v95 - ((2 * v95) & 0x78) - 68) ^ 0xB0;
  v96 = LOBYTE(STACK[0x513]);
  STACK[0x320] = v96;
  LODWORD(v95) = *(v74 + (v96 ^ 0x75)) ^ (v96 - ((2 * v96) & 0xF8) + 124) ^ 0xE9;
  LODWORD(v96) = v91 & 0xFF00FFFF | (((v70 >> 31) ^ 0x7E) << 16) | (v79 << 24);
  LODWORD(STACK[0x4C8]) = v96;
  LODWORD(STACK[0x4B8]) = v95 | v83;
  v97 = LOBYTE(STACK[0x519]);
  STACK[0x4D0] = v97;
  LOBYTE(v79) = *(v74 + (v97 ^ 0x9E));
  LODWORD(v97) = v97 - ((2 * v97) & 0x1F8) + 124;
  LODWORD(STACK[0x2DC]) = v97;
  LODWORD(v97) = v81 & 0xFF00FFFF | ((v79 ^ v97 ^ 5) << 16);
  LODWORD(STACK[0x460]) = v97;
  v98 = STACK[0x478];
  LODWORD(v92) = *(STACK[0x478] + 4 * (v92 ^ 0xFu));
  HIDWORD(v70) = v92 ^ ((v92 ^ 0x47B06B0) >> 3) ^ ((v92 ^ 0x47B06B0) >> 2) ^ 0xE91625CE;
  LODWORD(v70) = HIDWORD(v70);
  v99 = STACK[0x428];
  LODWORD(v82) = *(STACK[0x428] + 4 * (v82 ^ 0x96u));
  LODWORD(v88) = *(STACK[0x428] + 4 * (v88 ^ 0xE5u));
  v100 = STACK[0x420];
  v101 = (v95 | v83) ^ *(STACK[0x420] + 4 * (v69 ^ 0xF9u)) ^ __ROR4__(v82 ^ 0xB96AFC1 ^ (8 * v82) & 0x3B308800, 8) ^ __ROR4__(v88 ^ 0xB96AFC1 ^ (8 * v88) & 0x3B308800, 24) ^ ((v70 >> 16) - ((2 * (v70 >> 16)) & 0xBFA79A6C) + 1607716150);
  v102 = v101 ^ v96;
  LODWORD(v82) = v101 ^ v96 ^ v97;
  LODWORD(STACK[0x410]) = v82;
  LODWORD(v69) = v82 ^ 0xFB;
  LODWORD(v88) = v82 ^ 0xFB ^ v94;
  v103 = LODWORD(STACK[0x3D0]) ^ 0x11u;
  LODWORD(v97) = *(v99 + 4 * (((v88 ^ 0xA216DCAA) >> 16) ^ 0x5Au));
  v104 = LODWORD(STACK[0x3D4]) ^ 0x11u;
  LODWORD(v83) = v97 ^ 0xB96AFC1 ^ (8 * v97) & 0x3B308800;
  LODWORD(STACK[0x454]) = v88 ^ 0x341A6E7F;
  LODWORD(v97) = *(v98 + 4 * (v88 ^ 0xE3u)) ^ 0x47B06B0;
  LODWORD(v97) = v97 ^ __ROR4__(*(v100 + 4 * (BYTE3(v88) ^ 0xE2)) ^ 0xECDF8FCE, 8) ^ (v97 >> 2) ^ (v97 >> 3) ^ __ROR4__(v83, 16) ^ __ROR4__(*(v100 + 4 * (((v88 ^ 0xDCAA) >> 8) ^ 0x64u)) ^ 0xECDF8FCE, 24) ^ v101;
  LODWORD(STACK[0x470]) = v97;
  v105 = (v102 ^ 0x3DB2A5D0 ^ ((v102 ^ 0xC24D5A2F) + 1) ^ ((v97 ^ 0x8F0BBA23) - (v102 ^ 0x3DB2A5D0 ^ v97 ^ 0x8F0BBA23))) + (v97 ^ 0x8F0BBA23);
  v106 = v105 ^ v69;
  LODWORD(v69) = v105 ^ v69 ^ v88 ^ 0x341A6E7F;
  LODWORD(STACK[0x3D0]) = v106;
  LODWORD(v88) = *(v98 + 4 * (v69 ^ 0xAEu));
  v107 = STACK[0x458];
  LODWORD(v88) = v88 ^ ((v88 ^ 0x47B06B0) >> 3) ^ ((v88 ^ 0x47B06B0) >> 2) ^ __ROR4__(*(v100 + 4 * (BYTE1(v69) ^ 0xC1u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(*(STACK[0x458] + 4 * (((v69 ^ 0xCF4C1732) >> 16) ^ 0x3Au)) ^ 0x39ECC3F, 16) ^ __ROR4__(*(STACK[0x458] + 4 * (BYTE3(v69) ^ 0xF5)) ^ 0x39ECC3F, 8) ^ v97 ^ 0x8F0BBA23;
  LODWORD(v83) = v88 ^ v105 ^ 0xD27B06B0;
  LODWORD(STACK[0x448]) = v83;
  LODWORD(v83) = v106 ^ v83;
  LODWORD(v96) = v69 ^ 0xCF4C1732 ^ v83;
  LODWORD(STACK[0x440]) = v69 ^ 0xCF4C1732;
  v108 = v83;
  LODWORD(STACK[0x430]) = v83;
  HIDWORD(v70) = *(v107 + 4 * (BYTE1(v96) ^ 0xEu)) ^ 0x39ECC3F;
  LODWORD(v70) = HIDWORD(v70);
  LODWORD(v97) = v70 >> 24;
  LODWORD(v70) = __ROR4__(*(v107 + 4 * (BYTE3(v96) ^ 0xD2)) ^ 0x39ECC3F, 8);
  LODWORD(STACK[0x4C0]) = v96;
  LODWORD(v83) = ((v97 ^ v70) - ((2 * (v97 ^ v70)) & 0xB253A40C) + 1495912966) ^ *(v107 + 4 * (v69 ^ 0x32 ^ v83 ^ 0x76u));
  LODWORD(v97) = *(v98 + 4 * (BYTE2(v96) ^ 0xBDu));
  v109 = ((v97 ^ 0x47B06B0) >> 3) ^ ((v97 ^ 0x47B06B0) >> 2);
  LODWORD(v97) = v83 ^ __ROR4__(v97 ^ 0x80036030 ^ (v109 - ((2 * v109) & 0x522A8BFC) + 1763001854), 16);
  LODWORD(STACK[0x3C8]) = v97 ^ v105;
  LODWORD(v96) = v97 ^ v105 ^ 0x86F7BBDE;
  LODWORD(v87) = v96 ^ v69 ^ 0xCF4C1732;
  LODWORD(v84) = *(v99 + 4 * (BYTE3(v87) ^ 0x56));
  LODWORD(v74) = *(v98 + 4 * ((v97 ^ v105) ^ 0xDE ^ v69 ^ 0x32 ^ 0x9Cu)) ^ 0x47B06B0;
  LODWORD(v92) = v74 ^ (v74 >> 3) ^ (v74 >> 2) ^ __ROR4__(*(v100 + 4 * (BYTE1(v87) ^ 0xD6u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(*(v107 + 4 * (BYTE2(v87) ^ 0x3Au)) ^ 0x39ECC3F, 16);
  LODWORD(v88) = v88 ^ 0xE91625CE;
  LODWORD(STACK[0x418]) = v88;
  LODWORD(STACK[0x3C4]) = v97 ^ v88;
  v110 = v92 ^ __ROR4__(v84 ^ 0x25826CDB ^ (((8 * v84) & 0x3B308800 ^ 0x39200800) - ((2 * ((8 * v84) & 0x3B308800 ^ 0x39200800)) & 0x26611000) + 389335834), 8) ^ v97 ^ v88;
  LODWORD(v83) = v96 ^ v108;
  LODWORD(STACK[0x3B4]) = v96 ^ v108;
  LODWORD(STACK[0x3B8]) = v110 ^ v96;
  v111 = v110;
  LODWORD(STACK[0x3CC]) = v110;
  LODWORD(v88) = v110 ^ v96 ^ 0xF8DA3D47;
  v112 = v88 ^ v83 ^ 0xAD6191AB;
  LODWORD(STACK[0x3D4]) = v112;
  v113 = v98;
  LODWORD(v84) = *(v98 + 4 * (((v112 ^ v87) >> 8) ^ 0x9Cu));
  v114 = LODWORD(STACK[0x3D8]) ^ 0x36u;
  LODWORD(v74) = ((v84 ^ 0x47B06B0) >> 3) ^ ((v84 ^ 0x47B06B0) >> 2);
  v115 = *(v98 + 4 * (((v112 ^ v87) >> 24) ^ 0x77));
  LODWORD(v84) = v84 ^ 0x80036030 ^ (v74 - ((2 * v74) & 0x522A8BFC) + 1763001854);
  LODWORD(v74) = ((v115 ^ 0x47B06B0u) >> 3) ^ ((v115 ^ 0x47B06B0u) >> 2);
  LODWORD(v98) = *(v99 + 4 * (((v112 ^ v87) >> 16) ^ 0x56u));
  LODWORD(v96) = *(v99 + 4 * ((v112 ^ v87) ^ 0x56u));
  v116 = v96 ^ (8 * v96) & 0x3B308800 ^ __ROR4__(v98 ^ 0xB96AFC1 ^ (8 * v98) & 0x3B308800, 16) ^ v111 ^ __ROR4__(v84, 24) ^ __ROR4__(v115 ^ 0x80036030 ^ (v74 - ((2 * v74) & 0x522A8BFC) + 1763001854), 8) ^ 0x4571E1F7;
  LODWORD(v92) = v88 ^ v83 ^ 0x8A0CB2D5;
  LODWORD(v96) = STACK[0x3F8] & 0x3F;
  STACK[0x260] = STACK[0x4A0] << v67;
  STACK[0x238] = STACK[0x4B0] << v67;
  STACK[0x248] = STACK[0x490] << v67;
  STACK[0x280] = (LODWORD(STACK[0x3E8]) ^ 0xEu) << v67;
  STACK[0x250] = (LODWORD(STACK[0x3F4]) ^ 0x31u) << v67;
  STACK[0x270] = v68 << v67;
  STACK[0x230] = STACK[0x488] << v67;
  STACK[0x240] = STACK[0x480] << v67;
  STACK[0x220] = (LODWORD(STACK[0x3E0]) ^ 3u) << v67;
  STACK[0x268] = v103 << v67;
  STACK[0x278] = (v96 ^ 0xD) << v67;
  STACK[0x228] = (LODWORD(STACK[0x3DC]) ^ 0x19u) << v67;
  STACK[0x218] = v104 << v67;
  LODWORD(v88) = v116 ^ v88;
  LODWORD(v104) = v88 ^ 0x803D7371;
  LODWORD(v84) = v88;
  LODWORD(STACK[0x488]) = v88;
  LODWORD(v88) = v92 ^ v88 ^ 0x803D7371;
  LODWORD(v96) = v112 ^ v87 ^ 0xEB000000;
  LODWORD(v68) = v88 ^ v96;
  LODWORD(v74) = v88;
  LODWORD(STACK[0x3DC]) = v88;
  v117 = v107;
  LODWORD(v88) = *(v107 + 4 * (((v88 ^ v112 ^ v87) >> 8) ^ 0x19u));
  STACK[0x258] = v114 << v67;
  v118 = *(v99 + 4 * (BYTE3(v68) ^ 0x9A));
  HIDWORD(v70) = v118 ^ 0xB96AFC1 ^ (8 * v118) & 0x3B308800;
  LODWORD(v70) = HIDWORD(v70);
  v119 = v70 >> 8;
  LODWORD(v70) = __ROR4__(v88 ^ 0x39ECC3F, 24);
  LODWORD(v103) = *(v100 + 4 * (v68 ^ 0xA8u)) ^ __ROR4__(*(v107 + 4 * (BYTE2(v68) ^ 0x57u)) ^ 0x39ECC3F, 16) ^ v116 ^ 0x8F0BBA23 ^ ((v119 ^ v70) - ((2 * (v119 ^ v70)) & 0xBFA79A6C) + 1607716150);
  LODWORD(STACK[0x3B0]) = v103;
  v120 = v103 ^ v104 ^ v96;
  LODWORD(v83) = v103 ^ v104;
  LODWORD(STACK[0x3F8]) = v103 ^ v104;
  v121 = v96;
  LODWORD(STACK[0x3D8]) = v96;
  LODWORD(v104) = *(v113 + 4 * (BYTE2(v120) ^ 0xE6u));
  LODWORD(v88) = ((v104 ^ 0x47B06B0) >> 3) ^ ((v104 ^ 0x47B06B0) >> 2);
  LODWORD(v114) = *(v99 + 4 * (v120 ^ 0x1Bu)) ^ 0xEEB6DA29;
  LODWORD(v92) = v114 ^ __ROR4__(*(v100 + 4 * (HIBYTE(v120) ^ 0xA9)) ^ 0xECDF8FCE, 8) ^ (8 * v114) & 0x3B308800;
  LODWORD(v114) = v120 ^ 0x7F7A2E4D;
  LODWORD(STACK[0x3E4]) = v120 ^ 0x7F7A2E4D;
  LODWORD(v88) = v92 ^ __ROR4__(*(v100 + 4 * (BYTE1(v120) ^ 0xF8u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(v104 ^ 0x80036030 ^ (v88 - ((2 * v88) & 0x522A8BFC) + 1763001854), 16);
  v122 = v88 ^ v84;
  LODWORD(STACK[0x4A0]) = v88 ^ v84 ^ 0xF62D8699;
  LODWORD(v98) = v83 ^ v74;
  LODWORD(v92) = v88 ^ v84 ^ 0xF62D8699 ^ v83 ^ v74;
  LODWORD(v96) = v92 ^ v114;
  v123 = v92 ^ v114 ^ 0xB3170D33;
  LODWORD(v84) = *(v99 + 4 * ((v123 >> (STACK[0x4D0] & 0x18) >> (STACK[0x4D0] & 0x18 ^ 0x18)) ^ 0x56u));
  v124 = v99;
  LODWORD(v99) = v92 ^ 0xCC6D237E;
  LODWORD(v92) = v88 ^ v103;
  HIDWORD(v70) = v84 ^ 0x25826CDB ^ (((8 * v84) & 0x3B308800 ^ 0x39200800) - ((2 * ((8 * v84) & 0x3B308800 ^ 0x39200800)) & 0x26611000) + 389335834);
  LODWORD(v70) = HIDWORD(v70);
  LODWORD(STACK[0x3A0]) = v88 ^ v103 ^ 0x27170D33;
  LODWORD(v69) = ((v92 ^ 0x27170D33 ^ -(v92 ^ 0x27170D33) ^ ((v70 >> 8) - (v92 ^ 0x27170D33 ^ (v70 >> 8)))) + (v70 >> 8)) ^ __ROR4__(*(v100 + 4 * (BYTE2(v96) ^ 0xC1u)) ^ 0xECDF8FCE, 16);
  LODWORD(v88) = *(v100 + 4 * (v96 ^ 0xE5u)) ^ __ROR4__(*(v100 + 4 * (BYTE1(v96) ^ 0xDBu)) ^ 0xECDF8FCE, 24) ^ (v69 - ((2 * v69) & 0xBFA79A6C) + 1607716150);
  LODWORD(STACK[0x370]) = v88;
  LODWORD(v69) = v122 ^ 0x575BEA2C ^ v88;
  LODWORD(STACK[0x35C]) = v69;
  v125 = v69 ^ v99;
  LODWORD(v69) = v69 ^ v99 ^ 0x5107F8DB;
  v126 = v123;
  LODWORD(STACK[0x358]) = v123;
  LODWORD(v84) = *(v113 + 4 * (((v69 ^ v123) >> 24) ^ 0x51));
  v127 = v69 ^ v123 ^ 0xCD7A2E4D;
  LODWORD(STACK[0x354]) = v127;
  LODWORD(v104) = *(v124 + 4 * ((v69 ^ v123) ^ 0x1Bu)) ^ 0xEEB6DA29;
  LODWORD(v104) = v104 ^ __ROR4__(*(v100 + 4 * (((v69 ^ v123) >> 16) ^ 0xACu)) ^ 0xECDF8FCE, 16) ^ (8 * v104) & 0x3B308800 ^ __ROR4__(*(v117 + 4 * (((v69 ^ v123) >> 8) ^ 0x14u)) ^ 0x39ECC3F, 24);
  LODWORD(v70) = __ROR4__(v84 ^ ((v84 ^ 0x47B06B0) >> 3) ^ ((v84 ^ 0x47B06B0) >> 2) ^ 0xE91625CE, 8);
  LODWORD(STACK[0x344]) = v104 ^ v70;
  LODWORD(v88) = LODWORD(STACK[0x410]) ^ 0xFFCD4865;
  LODWORD(STACK[0x480]) = v88;
  v128 = v101 ^ 0x84E7C6F1;
  v129 = v88 - v128 - 158506645;
  v130 = v102 ^ 0x54735F9B;
  LODWORD(v114) = LODWORD(STACK[0x3C8]) ^ 0x9EAF2DF3;
  LODWORD(STACK[0x30C]) = v114;
  v131 = v105 ^ 0x55E1FCBE;
  v132 = LODWORD(STACK[0x438]) ^ 0x366EC208;
  LODWORD(STACK[0x308]) = LODWORD(STACK[0x3B4]) ^ 0xF079A261;
  v133 = v87 ^ 0x1858962D;
  LODWORD(STACK[0x2D4]) = v87 ^ 0x1858962D;
  v134 = (v87 ^ 0x1858962D) - v130 + 1644404151;
  LODWORD(v83) = STACK[0x3B8];
  LODWORD(v117) = (LODWORD(STACK[0x3B8]) ^ 0x569A98A0 ^ v121) - 688896180;
  LODWORD(v96) = LODWORD(STACK[0x3D0]) ^ 0xC3ED4E6B;
  LODWORD(STACK[0x438]) = v96;
  LODWORD(STACK[0x2D8]) = LODWORD(STACK[0x3C4]) ^ 0x82AF2DF3;
  LODWORD(v88) = LODWORD(STACK[0x4C8]) ^ 0x44EC87C8;
  LODWORD(STACK[0x2C0]) = -1760626370 - (v96 ^ v88);
  LODWORD(v124) = LODWORD(STACK[0x460]) ^ 0x3FC6095C;
  LODWORD(STACK[0x3D0]) = v125 ^ 0xD9176EEE;
  v135 = 196015000 - (v92 ^ 0x96ADBA5 ^ v126);
  LODWORD(v74) = v98 ^ 0x711529D8;
  LODWORD(STACK[0x3A8]) = v98 ^ 0x711529D8;
  LODWORD(STACK[0x31C]) = (LODWORD(STACK[0x4C0]) ^ 0x622E274D ^ v99) + 645077142;
  v136 = v122 ^ 0xFF3D7371 ^ v104 ^ v70;
  LODWORD(STACK[0x410]) = v136;
  LODWORD(v69) = v69 ^ v136;
  LODWORD(STACK[0x338]) = v69 ^ 0xD2A85F3C;
  v137 = v69 ^ v88 ^ v127;
  LODWORD(STACK[0x2A8]) = v137;
  LODWORD(v103) = v99 ^ 0x7838B303;
  LODWORD(v104) = LODWORD(STACK[0x3CC]) ^ 0x9704623F;
  LODWORD(v69) = v83 ^ 0x9704623F;
  v138 = 1502530033 - STACK[0x2B0];
  LODWORD(STACK[0x2C4]) = v138;
  LODWORD(v96) = v116 ^ v134 ^ 0xE0EEB61F;
  LODWORD(v83) = LODWORD(STACK[0x3D4]) ^ v128;
  HIDWORD(v458) = v114 + v131;
  LODWORD(v99) = (v114 + v131) ^ 0x6BA73B1B ^ v135;
  v139 = v69 ^ v99;
  v140 = v99 ^ 0xC19EFA9F;
  v453 = v99 ^ 0xC19EFA9F;
  v141 = LODWORD(STACK[0x3D4]) ^ 0x2A9EFA9F ^ v99;
  v142 = v99 ^ v104;
  LODWORD(STACK[0x378]) = v83;
  HIDWORD(v459) = v88 - v104;
  v143 = (v88 - v104) ^ 0x607B5D99;
  LODWORD(v457) = v83 ^ 0xBBDC10E0;
  v144 = v117 ^ v83 ^ 0xBBDC10E0;
  v145 = v143 ^ v88 ^ v144;
  v146 = v68 ^ 0x2FE43F7;
  v147 = 1740044362 - v124;
  LODWORD(v69) = v74 + v88;
  v148 = v137 ^ 0xB5239B15;
  v149 = v144 ^ v143 ^ v124;
  v150 = v144 ^ v143 ^ LODWORD(STACK[0x4B8]) ^ 0x675260E0;
  v151 = v144 ^ v143 ^ v132;
  HIDWORD(v460) = v69;
  v152 = v69 ^ 0xAB173204;
  LODWORD(v460) = v133 + 618927963 + (v68 ^ 0x2FE43F7);
  LODWORD(STACK[0x4B0]) = v148 ^ v460;
  v153 = v103 ^ v148 ^ v460;
  v154 = v96 ^ v69 ^ 0xAB173204;
  v155 = v154 ^ (v139 + v138 + v153);
  if (v155)
  {
    v156 = v150;
  }

  else
  {
    v156 = v144 ^ v143 ^ v132;
  }

  LODWORD(STACK[0x4B8]) = v156;
  if (v155)
  {
    v157 = v145;
  }

  else
  {
    v157 = v150;
  }

  LODWORD(STACK[0x468]) = v157;
  if ((v155 & 1) == 0)
  {
    v151 = v149;
  }

  LODWORD(STACK[0x460]) = v151;
  if (v155)
  {
    v158 = v149;
  }

  else
  {
    v158 = v145;
  }

  LODWORD(STACK[0x490]) = v158;
  v159 = LODWORD(STACK[0x454]) ^ 0x69C1FA4B;
  v160 = STACK[0x308];
  v161 = -384469273 - v130;
  LODWORD(v458) = LODWORD(STACK[0x308]) - v132;
  v162 = v458 ^ 0xD62F863D ^ v148;
  LODWORD(STACK[0x454]) = v162 ^ v130;
  LODWORD(STACK[0x3F4]) = v162 ^ v128;
  v163 = v162 ^ LODWORD(STACK[0x480]);
  v164 = v159 ^ v162;
  v165 = v129 ^ 0xCA15959 ^ LODWORD(STACK[0x440]);
  v166 = STACK[0x2D8];
  v167 = v147 - LODWORD(STACK[0x2D8]);
  v168 = v131 ^ v129 ^ v167;
  v169 = LODWORD(STACK[0x470]) ^ v129 ^ 0xDAEA469D ^ v167;
  v170 = LODWORD(STACK[0x438]) ^ v129 ^ v167;
  LODWORD(v459) = v167;
  v171 = v165 ^ v167;
  if (v155)
  {
    v172 = v168;
  }

  else
  {
    v172 = v169;
  }

  LODWORD(STACK[0x480]) = v172;
  if (v155)
  {
    v173 = v170;
  }

  else
  {
    v173 = v168;
  }

  if (v155)
  {
    v174 = v169;
  }

  else
  {
    v174 = v171;
  }

  if (v155)
  {
    v175 = v171;
  }

  else
  {
    v175 = v170;
  }

  LODWORD(STACK[0x438]) = v175;
  v176 = STACK[0x31C];
  v177 = LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x2C0]);
  v178 = v177 ^ 0x1A16944E;
  v179 = LODWORD(STACK[0x418]) ^ 0xB77705E5 ^ v177;
  v180 = LODWORD(STACK[0x448]) ^ 0xD55A837C ^ v177;
  v181 = v177 ^ 0x1A16944E ^ LODWORD(STACK[0x430]);
  v182 = v178 ^ LODWORD(STACK[0x4C0]);
  if (v155)
  {
    v183 = v181;
  }

  else
  {
    v183 = v180;
  }

  LODWORD(STACK[0x3E8]) = v183;
  if (v155)
  {
    v184 = v182;
  }

  else
  {
    v184 = v181;
  }

  LODWORD(STACK[0x3C8]) = v184;
  if (v155)
  {
    v185 = v179;
  }

  else
  {
    v185 = v182;
  }

  LODWORD(STACK[0x3E0]) = v185;
  if (v155)
  {
    v186 = v180;
  }

  else
  {
    v186 = v179;
  }

  LODWORD(STACK[0x3C4]) = v186;
  v187 = v134 ^ LODWORD(STACK[0x3DC]) ^ 0x2FE43F7;
  v188 = v134 ^ LODWORD(STACK[0x488]) ^ 0x4EAE13F8;
  v189 = v140 ^ LODWORD(STACK[0x3D8]);
  if (v155)
  {
    v190 = v142;
  }

  else
  {
    v190 = v140 ^ LODWORD(STACK[0x3D8]);
  }

  LODWORD(STACK[0x3D8]) = v190;
  if (v155)
  {
    v191 = v139;
  }

  else
  {
    v191 = v142;
  }

  LODWORD(STACK[0x3B8]) = v191;
  if (v155)
  {
    v192 = v189;
  }

  else
  {
    v192 = v141;
  }

  LODWORD(STACK[0x3B4]) = v192;
  if (v155)
  {
    v193 = v141;
  }

  else
  {
    v193 = v139;
  }

  LODWORD(STACK[0x3CC]) = v193;
  v194 = v161 - v146;
  LODWORD(STACK[0x29C]) = v152;
  v195 = v187 ^ v152;
  v196 = v188 ^ v152;
  if (v155)
  {
    v197 = v195;
  }

  else
  {
    v197 = v196;
  }

  LODWORD(STACK[0x3DC]) = v197;
  if (v155)
  {
    v198 = v146 ^ v134 ^ v152;
  }

  else
  {
    v198 = v195;
  }

  LODWORD(STACK[0x488]) = v198;
  if (v155)
  {
    v199 = v196;
  }

  else
  {
    v199 = v154;
  }

  LODWORD(STACK[0x448]) = v199;
  if (v155)
  {
    v200 = v154;
  }

  else
  {
    v200 = v146 ^ v134 ^ v152;
  }

  LODWORD(STACK[0x3D4]) = v200;
  v201 = STACK[0x3D0];
  v202 = STACK[0x338];
  HIDWORD(v457) = LODWORD(STACK[0x3D0]) + 869620590 + LODWORD(STACK[0x338]);
  v455 = v148 ^ HIDWORD(v457);
  v203 = v148 ^ HIDWORD(v457) ^ 0xBD780AA6;
  v204 = v203 ^ LODWORD(STACK[0x3B0]);
  v205 = v203 ^ LODWORD(STACK[0x3F8]);
  v206 = v148 ^ HIDWORD(v457) ^ LODWORD(STACK[0x3A8]);
  v452 = v148 ^ HIDWORD(v457) ^ 0xC20224EB;
  v207 = v452 ^ LODWORD(STACK[0x3E4]);
  if (v155)
  {
    v208 = v204;
  }

  else
  {
    v208 = v452 ^ LODWORD(STACK[0x3E4]);
  }

  if (v155)
  {
    v209 = v205;
  }

  else
  {
    v209 = v204;
  }

  LODWORD(STACK[0x3B0]) = v209;
  if (v155)
  {
    v210 = v206;
  }

  else
  {
    v210 = v205;
  }

  if (v155)
  {
    v211 = v207;
  }

  else
  {
    v211 = v206;
  }

  LODWORD(STACK[0x3A8]) = v211;
  v212 = LODWORD(STACK[0x3A0]) ^ 0x293F4BD8;
  v213 = v135 ^ v176;
  v214 = v135 ^ v176 ^ 0xA66D40A3 ^ LODWORD(STACK[0x35C]);
  v215 = v134;
  v216 = LODWORD(STACK[0x4C8]) ^ v134 ^ 0x236743E1;
  v217 = v213 ^ 0x71B2C16 ^ LODWORD(STACK[0x370]);
  v218 = v194 ^ v134;
  v219 = v194 ^ v134 ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x344]) ^ 0x54B310F7;
  v220 = v134 ^ LODWORD(STACK[0x2D4]);
  v221 = v134 ^ v166 ^ v135;
  v222 = v220 ^ v135;
  v461 = v215;
  v223 = v215 ^ LODWORD(STACK[0x30C]) ^ v135;
  v224 = v215 ^ v160 ^ v135;
  LODWORD(STACK[0x4C8]) = v148 ^ v218;
  v225 = v148 ^ v218 ^ v202;
  v226 = v213;
  HIDWORD(v447) = v213;
  v227 = v201 ^ v213;
  LODWORD(v447) = LODWORD(STACK[0x4B0]) ^ 0x7429D4E;
  v228 = v447 ^ LODWORD(STACK[0x358]);
  v229 = v447 ^ LODWORD(STACK[0x4A0]);
  v230 = v212 ^ LODWORD(STACK[0x4B0]);
  if (v155)
  {
    v231 = v230;
  }

  else
  {
    v231 = LODWORD(STACK[0x4B0]) ^ 0x7429D4E ^ LODWORD(STACK[0x358]);
  }

  LODWORD(STACK[0x3E4]) = v231;
  LODWORD(STACK[0x294]) = v229;
  if (v155)
  {
    v232 = v229;
  }

  else
  {
    v232 = v230;
  }

  LODWORD(STACK[0x35C]) = v153;
  if ((v155 & 1) == 0)
  {
    v228 = v153;
  }

  v450 = v226 ^ 0x456AB878;
  v233 = v226 ^ 0x456AB878 ^ LODWORD(STACK[0x354]);
  v234 = v216 ^ v194;
  LODWORD(STACK[0x288]) = v148;
  v235 = v219 ^ v148;
  v448 = v218 ^ 0xAAF1EA64 ^ LODWORD(STACK[0x2A8]);
  v236 = v448 ^ LODWORD(STACK[0x410]);
  v237 = STACK[0x454];
  if ((v155 & 1) == 0)
  {
    v237 = STACK[0x3F4];
  }

  LODWORD(STACK[0x358]) = v163;
  LODWORD(STACK[0x354]) = v164;
  if (v155)
  {
    v238 = v164;
  }

  else
  {
    v238 = v163;
  }

  LODWORD(STACK[0x2D0]) = v221;
  LODWORD(STACK[0x2AC]) = v223;
  if ((v155 & 1) == 0)
  {
    v223 = v221;
  }

  LODWORD(STACK[0x3A0]) = v223;
  LODWORD(STACK[0x2C8]) = v222;
  LODWORD(STACK[0x2A4]) = v224;
  if (v155)
  {
    v239 = v222;
  }

  else
  {
    v239 = v224;
  }

  LODWORD(STACK[0x298]) = v227;
  if (v155)
  {
    v240 = v233;
  }

  else
  {
    v240 = v227;
  }

  LODWORD(STACK[0x2D8]) = v214;
  LODWORD(STACK[0x2D4]) = v217;
  if (v155)
  {
    v241 = v214;
  }

  else
  {
    v241 = v217;
  }

  LODWORD(STACK[0x2B0]) = v225;
  LODWORD(STACK[0x290]) = v234;
  if (v155)
  {
    v242 = v234;
  }

  else
  {
    v242 = v225;
  }

  HIDWORD(v454) = v236;
  if (v155)
  {
    v243 = v236;
  }

  else
  {
    v243 = v235;
  }

  LODWORD(STACK[0x4C0]) = v155;
  v244 = (v155 & 2) == 0;
  if ((v155 & 2) != 0)
  {
    v245 = v237;
  }

  else
  {
    v245 = v238;
  }

  LODWORD(STACK[0x308]) = v245;
  if ((v155 & 2) != 0)
  {
    v246 = v238;
  }

  else
  {
    v246 = v237;
  }

  LODWORD(STACK[0x470]) = v246;
  if ((v155 & 2) != 0)
  {
    v247 = v174;
  }

  else
  {
    v247 = v173;
  }

  LODWORD(STACK[0x4A0]) = v247;
  if ((v155 & 2) != 0)
  {
    v248 = v173;
  }

  else
  {
    v248 = v174;
  }

  LODWORD(STACK[0x344]) = v248;
  if ((v155 & 2) != 0)
  {
    v249 = v208;
  }

  else
  {
    v249 = v210;
  }

  LODWORD(STACK[0x410]) = v249;
  if ((v155 & 2) != 0)
  {
    v250 = v210;
  }

  else
  {
    v250 = v208;
  }

  LODWORD(STACK[0x418]) = v250;
  if ((v155 & 2) != 0)
  {
    v251 = v228;
  }

  else
  {
    v251 = v232;
  }

  LODWORD(STACK[0x370]) = v251;
  if ((v155 & 2) != 0)
  {
    v252 = v232;
  }

  else
  {
    v252 = v228;
  }

  LODWORD(STACK[0x440]) = v252;
  if ((v155 & 2) != 0)
  {
    v253 = v241;
  }

  else
  {
    v253 = v240;
  }

  LODWORD(STACK[0x338]) = v253;
  if ((v155 & 2) != 0)
  {
    v254 = v240;
  }

  else
  {
    v254 = v241;
  }

  LODWORD(STACK[0x30C]) = v254;
  if ((v155 & 2) != 0)
  {
    v255 = v243;
  }

  else
  {
    v255 = v242;
  }

  LODWORD(STACK[0x430]) = v255;
  if ((v155 & 2) != 0)
  {
    v256 = v242;
  }

  else
  {
    v256 = v243;
  }

  HIDWORD(v456) = v256;
  v257 = ((STACK[0x2E8] ^ 0x52) - ((2 * (STACK[0x2E8] ^ 0x52) + 26) & 0x26)) ^ *(a66 + (STACK[0x2E8] ^ 0x56));
  v258 = *(a65 + (STACK[0x2F0] ^ 0xDC));
  HIDWORD(v259) = v258 ^ 0x28;
  LODWORD(v259) = v258 << 24;
  v260 = *(a65 + (STACK[0x2E0] ^ 0xCE));
  v261 = (v259 >> 31) ^ 0xD2;
  HIDWORD(v259) = v260 ^ 0x28;
  LODWORD(v259) = v260 << 24;
  v262 = (STACK[0x388] - ((2 * STACK[0x388]) & 0x1F8) + 124) ^ *(STACK[0x210] + (STACK[0x388] ^ 0xE1));
  v263 = (((v259 >> 31) ^ 0x25) << 16) | ((v262 ^ 0xE2) << 24) | ((STACK[0x2F8] - (STACK[0x304] & 0x78) - 68) ^ *(STACK[0x200] + (STACK[0x2F8] ^ 0x78))) ^ 0x32 | ((v257 ^ 0x5C) << 8);
  v264 = *(a66 + (STACK[0x310] ^ 0xFB));
  v265 = *(a65 + (STACK[0x330] ^ 0xBF));
  HIDWORD(v259) = v265 ^ 0x28;
  LODWORD(v259) = v265 << 24;
  v266 = *(a66 + (STACK[0x380] ^ 0x13)) ^ ((STACK[0x380] ^ 0x17) - ((2 * (STACK[0x380] ^ 0x17) + 26) & 0x26)) ^ 0x80 | ((*(STACK[0x200] + (STACK[0x398] ^ 0x5C)) ^ (STACK[0x398] - ((2 * STACK[0x398]) & 0x78) - 68) ^ 0x3C) << 8) & 0xFF00FFFF | ((v264 ^ (((LODWORD(STACK[0x318]) + 39) | 0xD9) - STACK[0x310]) ^ 0xFC) << 24) | (((v259 >> 31) ^ 0xF2) << 16);
  v263 ^= 0xA216DCAA;
  v267 = *(STACK[0x478] + 4 * (v262 ^ 0xDCu));
  HIDWORD(v259) = v267 ^ ((v267 ^ 0x47B06B0u) >> 3) ^ ((v267 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE;
  LODWORD(v259) = HIDWORD(v259);
  v268 = STACK[0x458];
  v269 = STACK[0x420];
  v270 = *(STACK[0x458] + 4 * (((STACK[0x2F8] - (STACK[0x304] & 0x78) - 68) ^ *(STACK[0x200] + (STACK[0x2F8] ^ 0x78))) ^ 0xA2u)) ^ __ROR4__(*(STACK[0x458] + 4 * (v257 ^ 0xBAu)) ^ 0x39ECC3F, 24) ^ (*(a66 + (STACK[0x320] ^ 0xD4)) ^ 0x28 ^ ((STACK[0x320] ^ 0xD0) + ((36 - 2 * (STACK[0x320] ^ 0xD0)) | 0xD9) + 1) | (v261 << 24) | ((*(STACK[0x200] + (STACK[0x328] ^ 0x53)) ^ (STACK[0x328] - ((2 * STACK[0x328]) & 0x78) - 68) ^ 0xD1) << 16) | ((*(a66 + (STACK[0x400] ^ 0xA)) ^ 0x89 ^ ((STACK[0x400] ^ 0xE) + ((36 - 2 * (STACK[0x400] ^ 0xE)) | 0xD9) + 1)) << 8)) ^ __ROR4__(*(STACK[0x420] + 4 * (BYTE2(v263) ^ 0xD6u)) ^ 0xECDF8FCE, 16) ^ ((v259 >> 8) - ((2 * (v259 >> 8)) & 0xB253A40C) + 1495912966);
  v271 = ((*(STACK[0x200] + (STACK[0x348] ^ 0xA3)) ^ (STACK[0x348] - (STACK[0x350] & 0x78) - 68) ^ 0xF9) & 0xFF00FFFF | ((*(STACK[0x210] + (STACK[0x4D0] ^ 0x2F)) ^ LODWORD(STACK[0x2DC]) ^ 0xAC) << 16) | ((*(STACK[0x210] + (STACK[0x390] ^ 0xD)) ^ (STACK[0x390] - ((2 * STACK[0x390]) & 0xF8) + 124) ^ 0x6E) << 24) | ((*(STACK[0x200] + (STACK[0x408] ^ 0xE8)) ^ (STACK[0x408] - (STACK[0x4A8] & 0x78) - 68) ^ 0x21) << 8)) ^ v266 ^ v270;
  v272 = v271 ^ v263 ^ 0x49D607B;
  v273 = *(STACK[0x478] + 4 * (((v271 ^ v263) >> 24) ^ 0xE3));
  HIDWORD(v259) = v273 ^ ((v273 ^ 0x47B06B0u) >> 3) ^ ((v273 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE;
  LODWORD(v259) = HIDWORD(v259);
  v274 = STACK[0x428];
  v275 = *(STACK[0x428] + 4 * (BYTE2(v272) ^ 0x7Cu));
  v276 = *(STACK[0x420] + 4 * (v272 ^ 0x18u)) ^ __ROR4__(*(STACK[0x420] + 4 * (BYTE1(v272) ^ 0x58u)) ^ 0xECDF8FCE, 24) ^ __ROR4__(v275 ^ 0xB96AFC1 ^ (8 * v275) & 0x3B308800, 16) ^ ((v259 >> 8) - ((2 * (v259 >> 8)) & 0xBFA79A6C) + 1607716150);
  v277 = v276 ^ v266;
  v278 = v277 ^ v271;
  v279 = v278 ^ v272;
  HIDWORD(v259) = *(STACK[0x458] + 4 * (((v279 ^ 0x1EA34937) >> 16) ^ 0x9Cu)) ^ 0x39ECC3F;
  LODWORD(v259) = HIDWORD(v259);
  v280 = *(STACK[0x478] + 4 * (v279 ^ 0x75u)) ^ 0x47B06B0;
  v281 = (v259 >> 16) ^ __ROR4__(*(STACK[0x458] + 4 * (HIBYTE(v279) ^ 0x8B)) ^ 0x39ECC3F, 8) ^ v270 ^ __ROR4__(*(STACK[0x420] + 4 * (((v279 ^ 0x4937) >> 8) ^ 0x24u)) ^ 0xECDF8FCE, 24) ^ v280 ^ (v280 >> 2) ^ (v280 >> 3) ^ v276 ^ 0x90FC01FD;
  v282 = v277 ^ 0xB598DB92 ^ v281;
  v283 = v278 ^ 0x2028CDFC ^ v282;
  v284 = v283 ^ v279;
  v285 = v283 ^ v279 ^ 0xB105BBE9;
  v286 = v283 ^ v279 ^ 0x5B024332;
  v287 = *(STACK[0x478] + 4 * (BYTE1(v286) ^ 0x9Cu));
  v288 = ((v287 ^ 0x47B06B0u) >> 3) ^ ((v287 ^ 0x47B06B0u) >> 2);
  HIDWORD(v259) = v287 ^ 0x80036030 ^ (v288 - ((2 * v288) & 0x522A8BFC) + 1763001854);
  LODWORD(v259) = HIDWORD(v259);
  v289 = v259 >> 24;
  LODWORD(v259) = __ROR4__(*(STACK[0x420] + 4 * (HIBYTE(v284) ^ 0x8D)) ^ 0xECDF8FCE, 8);
  v290 = *(STACK[0x420] + 4 * (v285 ^ 0xDu)) ^ __ROR4__(*(STACK[0x458] + 4 * (BYTE2(v285) ^ 0x3Du)) ^ 0x39ECC3F, 16) ^ v281 ^ ((v289 ^ v259) - ((2 * (v289 ^ v259)) & 0xBFA79A6C) + 1607716150);
  v291 = v290 ^ v282;
  v292 = v290 ^ v282 ^ v283;
  v293 = v292 ^ v286;
  v294 = ((v292 ^ v286) >> 16) ^ 0x31;
  v295 = *(STACK[0x428] + 4 * ((v292 ^ v286) ^ 0x75u)) ^ 0xEEB6DA29;
  v296 = *(STACK[0x428] + 4 * (((v292 ^ v286) >> 8) ^ 0xECu));
  v297 = v296 ^ 0xB96AFC1 ^ (8 * v296) & 0x3B308800;
  v298 = v293 ^ 0xDC0BBA23;
  v299 = *(STACK[0x478] + 4 * (HIBYTE(v293) ^ 0x40));
  v300 = v295 ^ __ROR4__(*(STACK[0x458] + 4 * v294) ^ 0x39ECC3F, 16) ^ (8 * v295) & 0x3B308800 ^ __ROR4__(v297, 24) ^ __ROR4__(v299 ^ ((((v299 ^ 0x47B06B0u) >> !(v264 & 1) >> (v264 & 1)) ^ v299 ^ 0x47B06B0) >> 2) ^ 0xE91625CE, 8) ^ v290 ^ 0x8F0BBA23;
  v301 = v291 ^ 0x7A1B4FCB ^ v300;
  v302 = v292 ^ 0x650C42F8 ^ v301;
  v303 = *(STACK[0x428] + 4 * (((v302 ^ v298) >> 16) ^ 0x51u));
  v304 = *(STACK[0x478] + 4 * ((v302 ^ v298) ^ 0x47u)) ^ 0x47B06B0;
  v305 = v304 ^ __ROR4__(*(STACK[0x420] + 4 * (((v302 ^ v298) >> 24) ^ 0x6F)) ^ 0xECDF8FCE, 8) ^ (v304 >> 2) ^ (v304 >> 3) ^ __ROR4__(v303 ^ 0xB96AFC1 ^ (8 * v303) & 0x3B308800, 16) ^ __ROR4__(*(STACK[0x458] + 4 * (((v302 ^ v298) >> 8) ^ 0xC2u)) ^ 0x39ECC3F, 24);
  v306 = v300 ^ v305;
  v307 = v291 ^ 0x360C42F8 ^ v305;
  LOBYTE(v291) = v298 ^ v291 ^ 0xF8 ^ v305;
  v308 = *(STACK[0x428] + 4 * (((v298 ^ v307) >> 16) ^ 0x3Bu));
  v309 = v308 ^ 0xB96AFC1 ^ (8 * v308) & 0x3B308800;
  v310 = v298 ^ v307 ^ 0xDB6D237E;
  HIDWORD(v259) = *(STACK[0x458] + 4 * (((v298 ^ v307) >> 24) ^ 0xE1)) ^ 0x39ECC3F;
  LODWORD(v259) = HIDWORD(v259);
  v311 = (v259 >> 8) ^ __ROR4__(*(STACK[0x458] + 4 * (((v298 ^ v307) >> 8) ^ 0x19u)) ^ 0x39ECC3F, 24);
  LODWORD(v259) = __ROR4__(v309, 16);
  v312 = v306 ^ *(STACK[0x458] + 4 * (v291 ^ 0x44u)) ^ ((v311 ^ v259) - ((2 * (v311 ^ v259)) & 0xB253A40C) + 1495912966);
  v313 = v302 ^ v307;
  v314 = v312 ^ v307;
  v315 = v312 ^ v307 ^ 0x7BA0130A ^ v302 ^ v307;
  v316 = *(STACK[0x478] + 4 * (((v312 ^ v307 ^ 0x130A ^ v313 ^ v310) >> 8) ^ 0x47u));
  v317 = ((v316 ^ 0x47B06B0u) >> 3) ^ ((v316 ^ 0x47B06B0u) >> 2);
  HIDWORD(v259) = v316 ^ 0x80036030 ^ (v317 - ((2 * v317) & 0x522A8BFC) + 1763001854);
  LODWORD(v259) = HIDWORD(v259);
  v318 = *(STACK[0x478] + 4 * (((v315 ^ v310) >> 16) ^ 0xF6u));
  v319 = (v259 >> 24) ^ __ROR4__(*(STACK[0x420] + 4 * (((v315 ^ v310) >> 24) ^ 0xB4)) ^ 0xECDF8FCE, 8);
  LODWORD(v259) = __ROR4__(v318 ^ ((v318 ^ 0x47B06B0u) >> 3) ^ ((v318 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE, 16);
  v320 = v315 ^ v310 ^ 0x626ADBA5;
  v321 = v312 ^ *(STACK[0x458] + 4 * ((v312 ^ v307) ^ 0xA ^ v313 ^ v310 ^ 0x9Fu)) ^ ((v319 ^ v259) - ((2 * (v319 ^ v259)) & 0xB253A40C) + 1495912966);
  v322 = v321 ^ v312 ^ v307 ^ 0x7BA0130A;
  v323 = v321 ^ 0x5ECC297B;
  v324 = v322 ^ 0x5ECC297B;
  v325 = v315 ^ 0x187DD696 ^ v322 ^ 0x5ECC297B;
  v326 = *(STACK[0x478] + 4 * (((v325 ^ v320) >> 16) ^ 0x3Du));
  v327 = *(STACK[0x478] + 4 * (((v325 ^ v320) >> 24) ^ 0xE0));
  HIDWORD(v259) = v326 ^ ((v326 ^ 0x47B06B0u) >> 3) ^ ((v326 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE;
  LODWORD(v259) = HIDWORD(v259);
  v328 = (v259 >> 16) & 0xFFFFFFFE ^ __ROR4__(*(STACK[0x420] + 4 * (((v325 ^ v320) >> 8) ^ 0xDCu)) ^ 0xECDF8FCE, 24) ^ __ROR4__(v327 ^ ((v327 ^ 0x47B06B0u) >> 3) ^ ((v327 ^ 0x47B06B0u) >> 2) ^ 0xE91625CE, 8);
  v329 = (v259 >> 16) & 1;
  v330 = STACK[0x490];
  if (v244)
  {
    v330 = STACK[0x4B8];
  }

  LODWORD(STACK[0x348]) = v330;
  v331 = STACK[0x468];
  if (v244)
  {
    v331 = STACK[0x460];
  }

  LODWORD(STACK[0x3D0]) = v331;
  v332 = STACK[0x438];
  if (!v244)
  {
    v332 = STACK[0x480];
  }

  LODWORD(STACK[0x330]) = v332;
  v333 = STACK[0x3E0];
  if (!v244)
  {
    v333 = STACK[0x3E8];
  }

  LODWORD(STACK[0x304]) = v333;
  v334 = STACK[0x3C4];
  if (!v244)
  {
    v334 = STACK[0x3C8];
  }

  LODWORD(STACK[0x2BC]) = v334;
  LODWORD(STACK[0x28C]) = v239;
  v335 = STACK[0x3A0];
  if (!v244)
  {
    v335 = v239;
  }

  LODWORD(STACK[0x2A0]) = v335;
  v336 = STACK[0x3CC];
  if (v244)
  {
    v336 = STACK[0x3D8];
  }

  LODWORD(STACK[0x318]) = v336;
  v337 = STACK[0x488];
  if (!v244)
  {
    v337 = STACK[0x448];
  }

  LODWORD(STACK[0x408]) = v337;
  v338 = STACK[0x3B8];
  if (v244)
  {
    v338 = STACK[0x3B4];
  }

  v339 = STACK[0x3B0];
  if (v244)
  {
    v339 = STACK[0x3A8];
  }

  LODWORD(STACK[0x400]) = v339;
  v340 = STACK[0x3DC];
  if (v244)
  {
    v340 = STACK[0x3D4];
  }

  LODWORD(STACK[0x3F8]) = v340;
  if ((v323 & v329) != 0)
  {
    LODWORD(v329) = -v329;
  }

  v341 = v328 ^ (v329 + v323);
  v342 = v325 ^ v320 ^ 0x7CA10A05;
  v343 = *(v268 + 4 * ((v325 ^ v320) ^ 0x3Fu)) ^ 0xEB3FC63A;
  v344 = v341 + v343 - 2 * (v341 & v343);
  v345 = v344 ^ v322;
  v346 = v344 ^ v322 ^ 0xFA7A2E4D;
  v347 = v346 ^ v325;
  HIDWORD(v349) = *(v268 + 4 * (((v344 ^ v322 ^ 0x2E4D ^ v325 ^ v342) >> 8) ^ 0x3Du)) ^ 0x39ECC3F;
  LODWORD(v349) = HIDWORD(v349);
  v348 = v349 >> 24;
  LODWORD(v349) = __ROR4__(*(v269 + 4 * (((v346 ^ v325 ^ v342) >> 16) ^ 0x60u)) ^ 0xECDF8FCE, 16);
  v350 = v346 ^ v325 ^ v342 ^ 0xEFB60736;
  v351 = *(v274 + 4 * (((v346 ^ v325 ^ v342) >> 24) ^ 0xB9));
  v352 = ((v348 ^ v349) + 1607716150 + (~(2 * (v348 ^ v349)) | 0x40586593) + 1) ^ *(v269 + 4 * ((v346 ^ v325 ^ v342) ^ 0xE0u)) ^ v344 ^ 0x5F1B4FCB;
  HIDWORD(v349) = v351 ^ 0x25826CDB ^ (((8 * v351) & 0x3B308800 ^ 0x39200800) - ((2 * ((8 * v351) & 0x3B308800 ^ 0x39200800)) & 0x26611000) + 389335834);
  LODWORD(v349) = HIDWORD(v349);
  v353 = ((v349 >> 8) ^ -(v349 >> 8) ^ (v352 - (v352 ^ (v349 >> 8)))) + v352;
  v354 = v345 ^ 0xB66D237E;
  v355 = (v453 ^ v301) + LODWORD(STACK[0x2C4]);
  v356 = v310 ^ 0xCE936089;
  v357 = LODWORD(STACK[0x29C]) ^ v461;
  v358 = v306 ^ v357;
  v359 = v357 ^ v313 ^ 0xACF9BB2C;
  v360 = v357 ^ v356;
  v361 = v357 ^ v307 ^ 0x15FE43F7;
  v362 = v455 ^ v314 ^ 0xB9A237E1;
  v363 = v455 ^ v312 ^ 0x62CF149F;
  v364 = v455 ^ v315 ^ 0xA068FF4E;
  v365 = STACK[0x4B0];
  v366 = LODWORD(STACK[0x4B0]) ^ v325 ^ 0x7BE3974B;
  HIDWORD(v449) = v355 + v366;
  v367 = (v355 + v366) ^ v358;
  if (v367)
  {
    v368 = v455 ^ v314 ^ 0xB9A237E1;
  }

  else
  {
    v368 = v363;
  }

  LODWORD(STACK[0x380]) = v368;
  if (v367)
  {
    v369 = v363;
  }

  else
  {
    v369 = v452 ^ v320;
  }

  if (v367)
  {
    v370 = v452 ^ v320;
  }

  else
  {
    v370 = v364;
  }

  if (v367)
  {
    v371 = v364;
  }

  else
  {
    v371 = v362;
  }

  v372 = v447 ^ v342;
  v373 = v365 ^ 0x1F49A78 ^ v323;
  v374 = v365 ^ 0x1F49A78 ^ v324;
  v375 = HIDWORD(v447) ^ 0x747DB54B ^ v344;
  v376 = HIDWORD(v447) ^ 0xD67DB54B ^ v346;
  v377 = HIDWORD(v447) ^ 0xAADCBF4E ^ v347;
  v378 = LODWORD(STACK[0x4C8]) ^ v354 ^ v353 ^ 0xC0D27171;
  v379 = v347 ^ v354 ^ v353 ^ v448 ^ 0x30B60736;
  v380 = v448 ^ v353;
  v381 = v450 ^ v350;
  v382 = v379 ^ v350;
  if (v367)
  {
    v383 = v379;
  }

  else
  {
    v383 = v378;
  }

  LODWORD(STACK[0x398]) = v383;
  if (v367)
  {
    v384 = v379 ^ v350;
  }

  else
  {
    v384 = v379;
  }

  if (v367)
  {
    v382 = v380;
  }

  LODWORD(STACK[0x390]) = v382;
  if (v367)
  {
    v385 = v378;
  }

  else
  {
    v385 = v380;
  }

  v386 = LODWORD(STACK[0x430]) ^ 0x6DD6E7FD;
  LODWORD(STACK[0x2C4]) = v338;
  v387 = (v338 + 487773007 + v386) ^ 0x94AE334;
  v388 = LODWORD(STACK[0x3F0]) ^ 0x406BB31u;
  v389 = ((((LODWORD(STACK[0x418]) ^ 0x98309E84 ^ (LODWORD(STACK[0x440]) + 1426332996)) - 693118922) ^ LODWORD(STACK[0x410])) >> 1) + 861368245;
  v390 = 2 * (v387 + LODWORD(STACK[0x408])) + 27645340;
  v391 = 2 * (LODWORD(STACK[0x4A0]) - LODWORD(STACK[0x3D0]) + ((LODWORD(STACK[0x470]) + 236721140) ^ 0x1CD1B41C)) - 332133295;
  v392 = *(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0x941A4C31 % v388)) + 1968028560) % v388)) + 2236384502) % v388)) + 2095419359) % v388)) + 204802178;
  STACK[0x4A8] = v388;
  LODWORD(v392) = v392 % v388 - ((2 * (v392 % v388)) & 0x4353D46) - 501571933;
  v393 = (((v392 ^ 0x5C130664) - 653958528) ^ ((v392 ^ 0x7CC492AC) - 103614792) ^ ((v392 ^ 0xC2CD0A6B) + 1205562993)) - 652259880;
  v394 = LODWORD(STACK[0x498]) + 579;
  LODWORD(STACK[0x388]) = v358 ^ 0x59E94EC4;
  if (v367)
  {
    v395 = v358 ^ 0x59E94EC4;
  }

  else
  {
    v395 = v360;
  }

  if (v367)
  {
    v396 = v360;
  }

  else
  {
    v396 = v359;
  }

  LODWORD(STACK[0x428]) = v396;
  LODWORD(STACK[0x420]) = v361;
  if (v367)
  {
    v397 = v359;
  }

  else
  {
    v397 = v361;
  }

  LODWORD(v451) = v372;
  if (v367)
  {
    v398 = v373;
  }

  else
  {
    v398 = v372;
  }

  if (v367)
  {
    v399 = v374;
  }

  else
  {
    v399 = v373;
  }

  LODWORD(STACK[0x478]) = v399;
  HIDWORD(v451) = v366;
  if (v367)
  {
    v400 = v366;
  }

  else
  {
    v400 = v374;
  }

  if (v367)
  {
    v401 = v376;
  }

  else
  {
    v401 = v375;
  }

  if (v367)
  {
    v402 = v381;
  }

  else
  {
    v402 = v377;
  }

  LODWORD(STACK[0x4D0]) = v367;
  LODWORD(STACK[0x498]) = v391;
  v403 = v391 ^ 0xD4AD8E21;
  LODWORD(STACK[0x4C8]) = v390;
  LODWORD(STACK[0x4B0]) = v389;
  HIDWORD(v446) = v395;
  HIDWORD(v445) = v397;
  if ((v367 & 2) != 0)
  {
    v404 = v395;
  }

  else
  {
    v404 = v397;
  }

  LODWORD(STACK[0x2DC]) = v404;
  LODWORD(v449) = v369;
  HIDWORD(v447) = v371;
  if ((v367 & 2) != 0)
  {
    v405 = v369;
  }

  else
  {
    v405 = v371;
  }

  LODWORD(STACK[0x2E0]) = v405;
  LODWORD(v454) = v370;
  v406 = STACK[0x380];
  if ((v367 & 2) == 0)
  {
    v406 = v370;
  }

  LODWORD(STACK[0x2E8]) = v406;
  LODWORD(v446) = v398;
  LODWORD(v445) = v400;
  if ((v367 & 2) != 0)
  {
    v407 = v400;
  }

  else
  {
    v407 = v398;
  }

  LODWORD(STACK[0x2F0]) = v407;
  LODWORD(STACK[0x328]) = v401;
  LODWORD(STACK[0x320]) = v402;
  if ((v367 & 2) != 0)
  {
    v408 = v401;
  }

  else
  {
    v408 = v402;
  }

  LODWORD(STACK[0x2F8]) = v408;
  LODWORD(STACK[0x350]) = v384;
  LODWORD(STACK[0x310]) = v385;
  if ((v367 & 2) != 0)
  {
    v409 = v384;
  }

  else
  {
    v409 = v385;
  }

  LODWORD(v456) = v409;
  v410 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * (((v394 - 94) ^ 0x47B0E221056636AFLL) + 1910425234) - 0x3D87110BBA27A720);
  v411 = ((v394 - 94) ^ 0x47B0E221056636AFLL) + 0x6AB0228C045F8A4ALL + (((v410 ^ 0x1135B1715BEE7535) + 0x4405711C2CE60261) ^ ((v410 ^ 0x960C91CB1EAFB0E4) - 0x3CC3AE599658384ELL) ^ ((v410 ^ 0x41897AD6C66B0DFELL) + 0x14B9BABBB1637AACLL));
  v412 = (v411 ^ 0xB85E444D305717E4) & (2 * (v411 & 0xBA1E6151021787E9)) ^ v411 & 0xBA1E6151021787E9;
  v413 = ((2 * (v411 ^ 0xDC5604ED30511434)) ^ 0xCC90CB78648D27BALL) & (v411 ^ 0xDC5604ED30511434) ^ (2 * (v411 ^ 0xDC5604ED30511434)) & 0x664865BC324693DCLL;
  v414 = (v413 ^ 0x4200210802048388) & (4 * v412) ^ v412;
  v415 = ((4 * (v413 ^ 0x2248248412429045)) ^ 0x992196F0C91A4F74) & (v413 ^ 0x2248248412429045) ^ (4 * (v413 ^ 0x2248248412429045)) & 0x664865BC324693DCLL;
  v416 = (v415 ^ 0x4B000020350) & (16 * v414) ^ v414;
  v417 = ((16 * (v415 ^ 0x6648610C32449089)) ^ 0x64865BC324693DD0) & (v415 ^ 0x6648610C32449089) ^ (16 * (v415 ^ 0x6648610C32449089)) & 0x664865BC324693D0;
  v418 = (v417 ^ 0x6400418020401100) & (v416 << 8) ^ v416;
  v419 = (((v417 ^ 0x248243C1206820DLL) << 8) ^ 0x4865BC324693DD00) & (v417 ^ 0x248243C1206820DLL) ^ ((v417 ^ 0x248243C1206820DLL) << 8) & 0x664865BC32469300;
  v420 = v418 ^ 0x664865BC324693DDLL ^ (v419 ^ 0x4040243002020000) & (v418 << 16);
  v421 = v411 - 0x45E19EAEFDE87817 + (((v411 ^ (2 * ((v420 << 32) & 0x664865BC00000000 ^ v420 ^ ((v420 << 32) ^ 0x324693DD00000000) & (((v419 ^ 0x2608418C304402DDLL) << 16) & 0x664865BC00000000 ^ 0x24045B800000000 ^ (((v419 ^ 0x2608418C304402DDLL) << 16) ^ 0x65BC324600000000) & (v419 ^ 0x2608418C304402DDLL))))) >> 32) ^ 0xFFFFFFFFCDF156EELL) + 1;
  v422 = v421 + (v421 >> 16) + ((v421 + (v421 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v423 = v422 ^ v403;
  v424 = ((v394 - 94) ^ 0x47B0E221056636AFLL) + 0x146346719E56BEABLL + (((v422 ^ v410 ^ 0x8CCAE128E6D2C3F7) + 0x3120678CF5A657F9) ^ ((v422 ^ v410 ^ 0x86BDDD1BBE07923ALL) + 0x3B575BBFAD730636) ^ ((v422 ^ v410 ^ 0xA773C3358D551CDLL) - 0x48624568B45E3A3DLL));
  v425 = (v424 ^ 0xD7750AA52AED7CFALL) & (2 * (v424 & 0xE60150C948CE7EF3)) ^ v424 & 0xE60150C948CE7EF3;
  v426 = ((2 * (v424 ^ 0xD3778BA73A75E9B8)) ^ 0x6AEDB6DCE5772E96) & (v424 ^ 0xD3778BA73A75E9B8) ^ (2 * (v424 ^ 0xD3778BA73A75E9B8)) & 0x3576DB6E72BB974ALL;
  v427 = v426 ^ 0x1512492212889149;
  v428 = (v426 ^ 0x25148A4C70B30600) & (4 * v425) ^ v425;
  v429 = ((4 * v427) ^ 0xD5DB6DB9CAEE5D2CLL) & v427 ^ (4 * v427) & 0x3576DB6E72BB9748;
  v430 = (v429 ^ 0x1552492842AA1500) & (16 * v428) ^ v428;
  v431 = ((16 * (v429 ^ 0x2024924630118243)) ^ 0x576DB6E72BB974B0) & (v429 ^ 0x2024924630118243) ^ (16 * (v429 ^ 0x2024924630118243)) & 0x3576DB6E72BB9740;
  v432 = (v431 ^ 0x1564926622B91400) & (v430 << 8) ^ v430;
  v433 = (((v431 ^ 0x201249085002834BLL) << 8) ^ 0x76DB6E72BB974B00) & (v431 ^ 0x201249085002834BLL) ^ ((v431 ^ 0x201249085002834BLL) << 8) & 0x3576DB6E72BB9700;
  v434 = v432 ^ 0x3576DB6E72BB974BLL ^ (v433 ^ 0x34524A6232930000) & (v432 << 16);
  v435 = v424 - 0x19FEAF36B731810DLL + (((v424 ^ (2 * ((v434 << 32) & 0x3576DB6E00000000 ^ v434 ^ ((v434 << 32) ^ 0x72BB974B00000000) & (((v433 ^ 0x124910C4028944BLL) << 16) & 0x3576DB6E00000000 ^ 0x2410894400000000 ^ (((v433 ^ 0x124910C4028944BLL) << 16) ^ 0x5B6E72BB00000000) & (v433 ^ 0x124910C4028944BLL))))) >> 32) ^ 0xFFFFFFFF13763F7ELL) + 1;
  v436 = v435 + (v435 >> 16) + ((v435 + (v435 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v437 = v423 ^ v436;
  v438 = ((v394 - 94) ^ 0x47B0E221056636AFLL) + 0x2332603C927D4BD6 + (((v436 ^ v410 ^ 0x66A915F940A148BCLL) + 0x6A40B45AE46FB0B6) ^ ((v436 ^ v410 ^ 0x87D3AF260AADA677) - 0x74C5F17A519CA181) ^ ((v436 ^ v410 ^ 0xE17ABADF4A0CEECBLL) - 0x126CE483113DE93DLL));
  v439 = (((v438 ^ 0xFF10E6E089637FB8) + 0x7723FD1E4A2EF276) ^ v438 ^ ((v438 ^ 0x55A6380E2E774BCBLL) - 0x226ADC0F12C539F9) ^ ((v438 ^ 0x68C5C42DF65DBDB4) - 0x1F09202CCAEFCF84) ^ ((v438 ^ 0xB5BFFEC26DFBFBF7) + 0x3D8CE53CAEB6763BLL)) >> 32;
  v440 = (v439 ^ 0x5FCAE615A1A5F8EALL) + 0x413D3E2FA7842DE4;
  v441 = v438 - (((v439 ^ 0x47A03BBEB324F66DLL) + 0x5957E384B5052365) ^ v440 ^ ((v439 ^ 0x186ADDAB654DEA86) + 0x69D0591636C3F90)) - 0x58D50BC6CAC54129;
  v442 = v441 + (v441 >> 16) + ((v441 + (v441 >> 16)) >> 8);
  v443 = v393 > 0x402C4892;
  if (v393 < 0x402C4891)
  {
    v443 = 1;
  }

  return (*(STACK[0x4E0] + 8 * ((208 * !v443) ^ v394)))(v437, v440, v437 ^ (v442 - 1603558688), v393, 0x91E64A87A06BA2E0, 0xE60150C948CE7EF3, 3461186048, v442 - 0x6E19B5785F945D20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v445, v446, __PAIR64__(v377, v381), __PAIR64__(v375, v376), v447, v449, v451, v454, v456, v457, v458, v459, v460);
}

uint64_t sub_1002BF4D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, uint64_t a58, uint64_t a59, int a60, int a61, int a62, int a63)
{
  v68 = STACK[0x4C0];
  if (STACK[0x4C0])
  {
    v69 = STACK[0x3F4];
  }

  else
  {
    v69 = STACK[0x354];
  }

  if (v68)
  {
    v70 = STACK[0x358];
  }

  else
  {
    v70 = STACK[0x454];
  }

  if (v68)
  {
    v71 = STACK[0x2D0];
  }

  else
  {
    v71 = STACK[0x2C8];
  }

  if (v68)
  {
    v72 = STACK[0x2A4];
  }

  else
  {
    v72 = STACK[0x2AC];
  }

  if (v68)
  {
    v73 = STACK[0x35C];
  }

  else
  {
    v73 = STACK[0x294];
  }

  if (v68)
  {
    a66 = STACK[0x2D4];
  }

  if (v68)
  {
    v75 = STACK[0x298];
  }

  else
  {
    v75 = STACK[0x2D8];
  }

  if (v68)
  {
    v76 = a65;
  }

  else
  {
    v76 = STACK[0x290];
  }

  if (v68)
  {
    a63 = STACK[0x2B0];
  }

  v78 = (STACK[0x4C0] & 2) == 0;
  v79 = STACK[0x468];
  if ((STACK[0x4C0] & 2) != 0)
  {
    v79 = STACK[0x460];
  }

  LODWORD(STACK[0x2B0]) = v79;
  v80 = STACK[0x3C8];
  if (!v78)
  {
    v80 = STACK[0x3C4];
  }

  LODWORD(STACK[0x298]) = v80;
  LODWORD(STACK[0x454]) = v69;
  LODWORD(STACK[0x354]) = v70;
  if (v78)
  {
    v81 = v69;
  }

  else
  {
    v81 = v70;
  }

  LODWORD(STACK[0x290]) = v81;
  LODWORD(STACK[0x358]) = v71;
  LODWORD(STACK[0x2D8]) = v72;
  if (v78)
  {
    v82 = v72;
  }

  else
  {
    v82 = v71;
  }

  LODWORD(STACK[0x468]) = v82;
  v83 = STACK[0x3B8];
  if (!v78)
  {
    v83 = STACK[0x3B4];
  }

  LODWORD(STACK[0x460]) = v83;
  v84 = STACK[0x3B0];
  if (!v78)
  {
    v84 = STACK[0x3A8];
  }

  LODWORD(STACK[0x3F4]) = v84;
  v85 = STACK[0x3E4];
  LODWORD(STACK[0x35C]) = v73;
  if (v78)
  {
    v85 = v73;
  }

  LODWORD(STACK[0x294]) = v85;
  LODWORD(STACK[0x2D0]) = a66;
  LODWORD(STACK[0x2C8]) = v75;
  if (v78)
  {
    v86 = a66;
  }

  else
  {
    v86 = v75;
  }

  LODWORD(STACK[0x3C4]) = v86;
  LODWORD(STACK[0x2AC]) = v76;
  LODWORD(STACK[0x2A4]) = a63;
  v87 = STACK[0x4D0];
  if (STACK[0x4D0])
  {
    a61 = a60;
  }

  LODWORD(STACK[0x3C8]) = a61;
  if (v87)
  {
    a56 = a55;
  }

  if (v87)
  {
    a54 = a57;
  }

  v91 = STACK[0x388];
  if (v87)
  {
    v91 = STACK[0x420];
  }

  LODWORD(STACK[0x420]) = v91;
  v92 = (v87 & 2) == 0;
  if (!v92)
  {
    a53 = a51;
  }

  LODWORD(STACK[0x3A0]) = a53;
  v94 = STACK[0x380];
  if (!v92)
  {
    v94 = a62;
  }

  LODWORD(STACK[0x3A8]) = v94;
  if (v92)
  {
    a52 = a50;
  }

  LODWORD(STACK[0x3B0]) = a52;
  if (v92)
  {
    v96 = a56;
  }

  else
  {
    v96 = a54;
  }

  LODWORD(STACK[0x3B4]) = v96;
  if (v92)
  {
    a56 = a54;
  }

  LODWORD(STACK[0x3B8]) = a56;
  v97 = (((LODWORD(STACK[0x3F0]) ^ 0xB3D6278F) + 1233372959) ^ ((LODWORD(STACK[0x3F0]) ^ 0xDCF2C931) + 648489377) ^ ((LODWORD(STACK[0x3F0]) ^ 0x6B22558F) - 1854425825)) + 1249128737;
  v98 = v97 < 0x48C78CC2;
  v99 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * ((v67 | ((v67 < 0x71DEC692) << 32)) + 0x5308D2E29B1722A9) + 0x67B968E79850B628);
  v100 = (v67 | ((v67 < 0x71DEC692) << 32)) - 0x32C3F6D01B2C27A9 + (((v99 ^ a8 ^ 0x12EE88208708FC12) - 0x4BB5F39DD78D3EB0) ^ ((v99 ^ a8 ^ ((v66 - 1891) - 0x6F5CD57CB2077E32)) + 0x3607AEC1E282AE36) ^ ((v99 ^ a8 ^ 0x824DA2A3CAF06F7ALL) + 0x24E926E1658A5228));
  v101 = v100 - 0x73E08D73062CDC46 + (((((v100 ^ 0xBA2F924EA4245C3BLL) + 0x3630E0C25DF77F84) ^ v100 ^ ((v100 ^ 0x38EABDBE58FA1D50) - 0x4B0A30CD5ED6C117) ^ ((v100 ^ 0x4E4A2D7F05417B50) - 0x3DAAA00C036DA714) ^ ((v100 ^ 0xBF6F8FFCFFB3E678) + 0x3370FD700660C5C8)) >> 32) ^ 0xFFFFFFFF8C1F728CLL);
  v102 = v101 + (v101 >> 16) + ((v101 + (v101 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v103 = v102 ^ a3;
  v104 = (v67 | ((v67 < 0x71DEC692) << 32)) + 0x5748B171036FCC9CLL + (((v102 ^ v99 ^ 0xABCA4A31F1ED837FLL) + 0x1835A9250EC3094) ^ ((v102 ^ v99 ^ 0xB2C7093D939CC47ALL) + 0x188E199E329D7797) ^ ((v102 ^ v99 ^ 0x190D430C62714705) - 0x4CBBAC503C8F0B16));
  v105 = (v104 ^ 0xFC6FBDE2E10FB6E4) & (2 * (v104 & 0xFE6E3DEAE9AFB8E5)) ^ v104 & 0xFE6E3DEAE9AFB8E5;
  v106 = ((2 * (v104 ^ 0x2427DCE7E20AB72ELL)) ^ 0xB493C21A174A1F96) & (v104 ^ 0x2427DCE7E20AB72ELL) ^ (2 * (v104 ^ 0x2427DCE7E20AB72ELL)) & 0xDA49E10D0BA50FCALL;
  v107 = v106 ^ 0x4A48210508A50049;
  v108 = (v106 ^ 0x9001C008030007C0) & (4 * v105) ^ v105;
  v109 = ((4 * v107) ^ 0x692784342E943F2CLL) & v107 ^ (4 * v107) & 0xDA49E10D0BA50FC8;
  v110 = (v109 ^ 0x480180040A840F00) & (16 * v108) ^ v108;
  v111 = ((16 * (v109 ^ 0x92486109012100C3)) ^ 0xA49E10D0BA50FCB0) & (v109 ^ 0x92486109012100C3) ^ (16 * (v109 ^ 0x92486109012100C3)) & 0xDA49E10D0BA50FC0;
  v112 = (v111 ^ 0x800800000A000C00) & (v110 << 8) ^ v110;
  v113 = (((v111 ^ 0x5A41E10D01A5034BLL) << 8) ^ 0x49E10D0BA50FCB00) & (v111 ^ 0x5A41E10D01A5034BLL) ^ ((v111 ^ 0x5A41E10D01A5034BLL) << 8) & 0xDA49E10D0BA50F00;
  v114 = v112 ^ 0xDA49E10D0BA50FCBLL ^ (v113 ^ 0x4841010901050000) & (v112 << 16);
  v115 = ((v104 ^ (2 * ((v114 << 32) & 0x5A49E10D00000000 ^ v114 ^ ((v114 << 32) ^ 0xBA50FCB00000000) & (((v113 ^ 0x9208E0040AA004CBLL) << 16) & 0x5A49E10D00000000 ^ 0x1A40E00800000000 ^ (((v113 ^ 0x9208E0040AA004CBLL) << 16) ^ 0x610D0BA500000000) & (v113 ^ 0x9208E0040AA004CBLL))))) >> 32) ^ 0x5EFFFDE2;
  v116 = v104 - 0x191C2151650471BLL + v115 - 2 * v115 + ((v104 - 0x191C2151650471BLL + v115 - 2 * v115) >> 16);
  v117 = v116 + (v116 >> 8) - 0x6E19B5785F945D20;
  v118 = v103 ^ v117;
  v119 = (v67 | ((v67 < 0x71DEC692) << 32)) + 0x6F15ED263CD7A4BELL + (((v117 ^ v99 ^ 0x28BE24A70E2535AFLL) - 0xE350B3044341760) ^ ((v117 ^ v99 ^ 0x3771A29EDE3FFA1DLL) - 0x11FA8D09942ED8D2) ^ ((v117 ^ v99 ^ 0x1FCF8639D01ACFB2) - 0x3944A9AE9A0BED7DLL));
  v120 = v119 - 0x488ABD8F64A54880 + (((((v119 ^ 0xE0D8683B2EA8EEEALL) + 0x57AD2A4BB5F25995) ^ v119 ^ ((v119 ^ 0xFF6AE7C795B028E7) + 0x481FA5B70EEA9F9ALL) ^ ((v119 ^ 0xE823DCC808427152) + 0x5F569EB89318C62ELL) ^ ((v119 ^ 0xBF1BEEBBD7FFFFDELL) + 0x86EACCB4CA548A2)) >> 32) ^ 0xFFFFFFFFB7754270);
  v121 = v98 ^ (v67 - 689387983 < 0x48C78CC2);
  v122 = v120 + (v120 >> 16) + ((v120 + (v120 >> 16)) >> 8);
  if (!v121)
  {
    v98 = v97 > v67 - 689387983;
  }

  v123 = *(STACK[0x4E0] + 8 * ((491 * !v98) ^ v66));
  return v123(v123, -1217052048, v118 ^ (v122 - 1603558688), v121, 0xB77542709B5AB780, 0x5F569EB89318C62ELL, 3605579313, v122 - 0x6E19B5785F945D20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1002BFDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = (STACK[0x4C0] & 2) == 0;
  v66 = STACK[0x4B8];
  if ((STACK[0x4C0] & 2) == 0)
  {
    v66 = STACK[0x490];
  }

  LODWORD(v157) = v66;
  v67 = STACK[0x454];
  if ((STACK[0x4C0] & 2) == 0)
  {
    v67 = STACK[0x354];
  }

  LODWORD(STACK[0x2D4]) = v67;
  v68 = STACK[0x358];
  if (!v65)
  {
    v68 = STACK[0x2D8];
  }

  LODWORD(STACK[0x454]) = v68;
  v69 = STACK[0x488];
  if (v65)
  {
    v69 = STACK[0x448];
  }

  LODWORD(STACK[0x448]) = v69;
  v70 = STACK[0x3E4];
  if (!v65)
  {
    v70 = STACK[0x35C];
  }

  LODWORD(STACK[0x3E4]) = v70;
  v71 = STACK[0x2AC];
  if (!v65)
  {
    v71 = STACK[0x2A4];
  }

  HIDWORD(v157) = v71;
  LODWORD(STACK[0x358]) = HIDWORD(a55) ^ LODWORD(STACK[0x388]);
  v72 = (STACK[0x4D0] & 2) == 0;
  v73 = a55;
  if ((STACK[0x4D0] & 2) != 0)
  {
    v73 = HIDWORD(a54);
  }

  LODWORD(STACK[0x388]) = v73;
  v74 = STACK[0x398];
  if (!v72)
  {
    v74 = STACK[0x390];
  }

  LODWORD(STACK[0x398]) = v74;
  v75 = (a8 ^ 0xD76D59B6069CA26ELL) - ((a8 ^ 0xD76D59B6069CA26ELL) >> 30) + (((a8 ^ 0xD76D59B6069CA26ELL) - ((a8 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v76 = v75 - (v75 >> 4);
  v77 = ((v76 ^ 0x8C7DB11C1BB910A4) >> ((v64 + 63) ^ 0xC2u)) + (v76 ^ 0x8C7DB11C1BB910A4);
  v78 = v77 - (v77 >> 9) + ((v77 - (v77 >> 9)) >> 3);
  v79 = v78 + 0x3690DB5D4C331D54 - ((v78 + 0x3690DB5D4C331D54) >> 29) - ((v78 + 0x3690DB5D4C331D54 - ((v78 + 0x3690DB5D4C331D54) >> 29)) >> 9);
  v80 = v79 - (v79 >> 3);
  v81 = v80 - 0xA56C130BF1F620DLL - ((v80 - 0xA56C130BF1F620DLL) >> 26) - ((v80 - 0xA56C130BF1F620DLL - ((v80 - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v82 = v81 - (v81 >> 7);
  LODWORD(v76) = v82 ^ v76;
  v83 = (v82 ^ 0x7BC03D24179C195CLL) - ((v82 ^ 0x7BC03D24179C195CLL) >> 27) + (((v82 ^ 0x7BC03D24179C195CLL) - ((v82 ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v84 = v83 - (v83 >> 1);
  LODWORD(v78) = v84 ^ v78;
  v85 = v84 - 0x5B46CA940EEFB0F3 - ((v84 - 0x5B46CA940EEFB0F3) >> 28) - ((v84 - 0x5B46CA940EEFB0F3 - ((v84 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v86 = v85 - (v85 >> 3);
  v87 = v86 - 0xC5B39F814D45862 + ((v86 - 0xC5B39F814D45862) >> 30) + ((v86 - 0xC5B39F814D45862 + ((v86 - 0xC5B39F814D45862) >> 30)) >> 10);
  v88 = v87 - (v87 >> 3);
  v89 = (v88 ^ 0xEB853C9A73BC9BDLL) - ((v88 ^ 0xEB853C9A73BC9BDLL) >> 27) + (((v88 ^ 0xEB853C9A73BC9BDLL) - ((v88 ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v90 = v89 + (v89 >> 1);
  v91 = v76 ^ v61 ^ v88;
  v92 = v78 ^ v62 ^ v90;
  v93 = v90 - 0x19AEA5D6B20CAF27 + ((v90 - 0x19AEA5D6B20CAF27) >> 30) - ((v90 - 0x19AEA5D6B20CAF27 + ((v90 - 0x19AEA5D6B20CAF27) >> 30)) >> 11);
  v94 = v86 ^ v80 ^ a3 ^ (v93 - (v93 >> 6));
  LODWORD(v86) = 16843009 * (v91 & 0xFE ^ 0xAA) - 1021731694;
  LODWORD(STACK[0x2AC]) = v86;
  LODWORD(v78) = (v86 ^ 0x3AC45A4D) & (2 * (v86 & 0x3CE6636E)) ^ v86 & 0x3CE6636E;
  LODWORD(v93) = ((2 * (v86 ^ 0x2B849E41)) ^ 0x2EC5FA5E) & (v86 ^ 0x2B849E41) ^ (2 * (v86 ^ 0x2B849E41)) & 0x1762FD2E;
  LODWORD(v80) = v93 ^ 0x11220521;
  LODWORD(v93) = (v93 ^ 0x6009808) & (4 * v78) ^ v78;
  LODWORD(v78) = ((4 * v80) ^ 0x5D8BF4BC) & v80 ^ (4 * v80) & 0x1762FD2C;
  LODWORD(v93) = (v78 ^ 0x1502F420) & (16 * v93) ^ v93;
  LODWORD(v78) = ((16 * (v78 ^ 0x2600903)) ^ 0x762FD2F0) & (v78 ^ 0x2600903) ^ (16 * (v78 ^ 0x2600903)) & 0x1762FD20;
  LODWORD(v93) = v93 ^ 0x1762FD2F ^ (v78 ^ 0x1622D000) & (v93 << 8);
  v95 = (v93 << 16) & 0x17620000 ^ v93 ^ ((v93 << 16) ^ 0x7D2F0000) & (((v78 ^ 0x1402D0F) << 8) & 0x17620000 ^ 0x15020000 ^ (((v78 ^ 0x1402D0F) << 8) ^ 0x62FD0000) & (v78 ^ 0x1402D0F));
  v96 = v91 ^ 0xCA ^ ((v91 ^ 0x1ACA) >> 8) ^ ((v91 ^ 0xA1831ACA) >> 16) ^ HIBYTE(v91) ^ 0xD0;
  LODWORD(v86) = (*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0xA0CEC3B7 % STACK[0x4A8])) + 950935619) % STACK[0x4A8])) + 4139440780) % STACK[0x4A8])) + 926257647) % STACK[0x4A8])) + 2144989500) % STACK[0x4A8];
  v97 = ((((v86 - ((2 * v86) & 0x359E9728) + 1523534740) ^ 0x93DE096F) + 487692464) ^ (((v86 - ((2 * v86) & 0x359E9728) + 1523534740) ^ 0xACEA8442) + 572855683) ^ (((v86 - ((2 * v86) & 0x359E9728) + 1523534740) ^ 0x65FBC6B9) - 348891270)) - 409080816;
  v98 = STACK[0x428];
  if (!v72)
  {
    v98 = STACK[0x420];
  }

  LODWORD(STACK[0x2D8]) = v98;
  LODWORD(a55) = 2 * v95;
  v99 = STACK[0x478];
  if (v72)
  {
    v99 = STACK[0x3C8];
  }

  LODWORD(STACK[0x390]) = v99;
  v100 = v94 & 7 ^ 3;
  LODWORD(STACK[0x35C]) = v100;
  v101 = -v100 & 7;
  if ((v94 & 7) == 3)
  {
    v102 = 0;
  }

  else
  {
    v102 = 255;
  }

  LODWORD(STACK[0x354]) = v101;
  v103 = v102 << v101;
  HIDWORD(v155) = 16843009 * v103;
  LODWORD(STACK[0x2A4]) = (1224736768 * v103) & v92 ^ HIDWORD(v155);
  if ((v94 & 7) == 3)
  {
    v104 = 0;
  }

  else
  {
    v104 = ~v103;
  }

  LODWORD(v155) = v91 & v104;
  LODWORD(STACK[0x488]) = v92;
  HIDWORD(a52) = v92 ^ 0x8F ^ ((v92 ^ 0xAA8F) >> 8) ^ ((v92 ^ 0xD1BDAA8F) >> 16) ^ HIBYTE(v92) ^ 0x38;
  v105 = LODWORD(STACK[0x498]) ^ 0xC13710BE;
  LODWORD(STACK[0x380]) = (16843009 * v96) ^ 0x71717171;
  v106 = v64 + 5439;
  LODWORD(STACK[0x4B8]) = v91;
  HIDWORD(v156) = v91 & 0xFFFFFF01;
  LODWORD(STACK[0x490]) = v94;
  HIDWORD(a54) = v94 & 0xFFFFFFF8;
  v107 = v97 < 0xBB9EC665;
  v108 = ((v64 - 3623) ^ 0x55DE2D6Cu) > 0x55DE2E1F;
  v109 = ((v108 << 32) | 0x55DE2E1F) + 0x3B8CD67492161470;
  v110 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * v109 + 0x23994C58C05DEB88);
  v111 = ((v108 << 32) | 0x55DE2E1F) - 0x491851ED98B25CDELL + (((v110 ^ v63 ^ 0x16377039A126CE48) - 0x7169291F557D2D05) ^ ((v110 ^ v63 ^ 0xFC20263A80ABFEDFLL) + 0x648180E38B0FE26ELL) ^ ((v110 ^ v63 ^ 0xEA175603218D3097) + 0x72B6F0DA2A292C26));
  v112 = (v111 ^ 0x30660255263A808DLL) & (2 * (v111 & 0xB076AB143730120CLL)) ^ v111 & 0xB076AB143730120CLL;
  v113 = ((2 * (v111 ^ 0x7043507D461A8085)) ^ 0x806BF6D2E2552512) & (v111 ^ 0x7043507D461A8085) ^ (2 * (v111 ^ 0x7043507D461A8085)) & 0xC035FB69712A9288;
  v114 = v113 ^ 0x40140929112A9289;
  v115 = (v113 ^ 0x8021F148602A0288) & (4 * v112) ^ v112;
  v116 = ((4 * v114) ^ 0xD7EDA5C4AA4A24) & v114 ^ (4 * v114) & 0xC035FB69712A9288;
  v117 = (v116 ^ 0x15E921402A0200) & (16 * v115) ^ v115;
  v118 = ((16 * (v116 ^ 0xC020124831009089)) ^ 0x35FB69712A92890) & (v116 ^ 0xC020124831009089) ^ (16 * (v116 ^ 0xC020124831009089)) & 0xC035FB69712A9280;
  v119 = (v118 ^ 0x15B20110280000) & (v117 << 8) ^ v117;
  v120 = (((v118 ^ 0xC020496861029209) << 8) ^ 0x35FB69712A928900) & (v118 ^ 0xC020496861029209) ^ ((v118 ^ 0xC020496861029209) << 8) & 0xC035FB69712A9200;
  v121 = v119 ^ 0xC035FB69712A9289 ^ (v120 ^ 0x31696120020000) & (v119 << 16);
  v122 = v111 - 0x4F8954EBC8CFEDF4 + (((v111 ^ (2 * ((v121 << 32) & 0x4035FB6900000000 ^ v121 ^ ((v121 << 32) ^ 0x712A928900000000) & (((v120 ^ 0xC004920851281289) << 16) & 0x4035FB6900000000 ^ 0x148A4100000000 ^ (((v120 ^ 0xC004920851281289) << 16) ^ 0x7B69712A00000000) & (v120 ^ 0xC004920851281289))))) >> 32) ^ 0xFFFFFFFF4FA3862BLL) + 1;
  v123 = v122 + (v122 >> 16) + ((v122 + (v122 >> 16)) >> 8);
  v124 = v109 + 0x575DCFBD77B5DFA2 + ((((v123 - 0x6E19B5785F945D20) ^ v110 ^ 0xDC3F284637F02282) + 0x129A9A0965EB7006) ^ (((v123 - 0x6E19B5785F945D20) ^ v110 ^ 0x62FC39C72697A3ACLL) - 0x53A674778B730ED4) ^ (((v123 - 0x6E19B5785F945D20) ^ v110 ^ 0xBEC311811167812ELL) + 0x7066A3CE437CD3AALL));
  v125 = (v124 ^ 0x5F6F277F4EBAC316) & (2 * (v124 & 0x9E6FA77E4E3A8B47)) ^ v124 & 0x9E6FA77E4E3A8B47;
  v126 = ((2 * (v124 ^ 0x57B761234EEFD194)) ^ 0x93B18CBA01AAB5A6) & (v124 ^ 0x57B761234EEFD194) ^ (2 * (v124 ^ 0x57B761234EEFD194)) & 0xC9D8C65D00D55AD2;
  v127 = v126 ^ 0x4848424500554A51;
  v128 = (v126 ^ 0x8190C41C00811040) & (4 * v125) ^ v125;
  v129 = ((4 * v127) ^ 0x2763197403556B4CLL) & v127 ^ (4 * v127) & 0xC9D8C65D00D55AD0;
  v130 = (v129 ^ 0x140005400554A40) & (16 * v128) ^ v128;
  v131 = ((16 * (v129 ^ 0xC898C60900801093)) ^ 0x9D8C65D00D55AD30) & (v129 ^ 0xC898C60900801093) ^ (16 * (v129 ^ 0xC898C60900801093)) & 0xC9D8C65D00D55AD0;
  v132 = (v131 ^ 0x8988445000550800) & (v130 << 8) ^ v130;
  v133 = (((v131 ^ 0x4050820D008052C3) << 8) ^ 0xD8C65D00D55AD300) & (v131 ^ 0x4050820D008052C3) ^ ((v131 ^ 0x4050820D008052C3) << 8) & 0xC9D8C65D00D55A00;
  v134 = v132 ^ 0xC9D8C65D00D55AD3 ^ (v133 ^ 0xC8C0440000500000) & (v132 << 16);
  v135 = v124 - 0x61905881B1C574B9 + (((v124 ^ (2 * ((v134 << 32) & 0x49D8C65D00000000 ^ v134 ^ ((v134 << 32) ^ 0xD55AD300000000) & (((v133 ^ 0x118825D008508D3) << 16) & 0x49D8C65D00000000 ^ 0x980C60800000000 ^ (((v133 ^ 0x118825D008508D3) << 16) ^ 0x465D00D500000000) & (v133 ^ 0x118825D008508D3))))) >> 32) ^ 0xFFFFFFFFF3815099) + 1;
  v136 = v135 + (v135 >> 16) + ((v135 + (v135 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v137 = (v123 - 1603558688) ^ v105 ^ v136;
  v138 = v109 - 0x75472E02BD23A836 + (((v136 ^ v110 ^ 0x2AAB1EB9F9EC7279) + 0x72F3054909220995) ^ ((v136 ^ v110 ^ 0x8A2B074B29EBC01ELL) - 0x2D8CE34426DA440CLL) ^ ((v136 ^ v110 ^ 0xA08019F2D007B267) - 0x727FDFDDF363675));
  v139 = (v138 ^ 0xC0483B1AC34EED3CLL) & (2 * (v138 & 0xE1623B9CE460E9B9)) ^ v138 & 0xE1623B9CE460E9B9;
  v140 = ((2 * (v138 ^ 0xC0480B33CB0FFC4ELL)) ^ 0x4254615E5EDE2BEELL) & (v138 ^ 0xC0480B33CB0FFC4ELL) ^ (2 * (v138 ^ 0xC0480B33CB0FFC4ELL)) & 0x212A30AF2F6F15F6;
  v141 = v140 ^ 0x212A10A121211411;
  v142 = (v140 ^ 0x20222006022611F4) & (4 * v139) ^ v139;
  v143 = ((4 * v141) ^ 0x84A8C2BCBDBC57DCLL) & v141 ^ (4 * v141) & 0x212A30AF2F6F15F4;
  v144 = (v143 ^ 0x2800AC2D2C15D0) & (16 * v142) ^ v142;
  v145 = ((16 * (v143 ^ 0x2102300302430023)) ^ 0x12A30AF2F6F15F70) & (v143 ^ 0x2102300302430023) ^ (16 * (v143 ^ 0x2102300302430023)) & 0x212A30AF2F6F15F0;
  v146 = (v145 ^ 0x2200A226611500) & (v144 << 8) ^ v144;
  v147 = (((v145 ^ 0x2108300D090E0087) << 8) ^ 0x2A30AF2F6F15F700) & (v145 ^ 0x2108300D090E0087) ^ ((v145 ^ 0x2108300D090E0087) << 8) & 0x212A30AF2F6F1500;
  v148 = v146 ^ 0x212A30AF2F6F15F7 ^ (v147 ^ 0x2020202F2F050000) & (v146 << 16);
  v149 = v138 - 0x1E9DC4631B9F1647 + (((v138 ^ (2 * ((v148 << 32) & 0x212A30AF00000000 ^ v148 ^ ((v148 << 32) ^ 0x2F6F15F700000000) & (((v147 ^ 0x10A1080006A00F7) << 16) & 0x212A30AF00000000 ^ 0x100108000000000 ^ (((v147 ^ 0x10A1080006A00F7) << 16) ^ 0x30AF2F6F00000000) & (v147 ^ 0x10A1080006A00F7))))) >> 32) ^ 0xFFFFFFFF1E9D8473);
  v150 = v149 + 1 + ((v149 + 1) >> 16) + ((v149 + 1 + ((v149 + 1) >> 16)) >> 8);
  if (v97 >= 0xBB9EC665)
  {
    v107 = v97 > 0xBB9EC666;
  }

  v151 = (v150 - 801779344);
  v152 = v137 ^ (v150 - 1603558688);
  v153 = *(STACK[0x4E0] + 8 * ((452 * !v107) ^ v106));
  LODWORD(v156) = 16843009 * v96;
  return v153(v153, 0xE1623B9CE460E9B9, v152, 1440624160, v151, 0x9E6FA77E4E3A8B47, 452, v97 < 0xBB9EC665, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v155, a51, a52, v156, a54, a55, v157, a57, a58, a59, a60, a61);
}

uint64_t sub_1002C0C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = (STACK[0x4C0] & 2) == 0;
  v60 = STACK[0x480];
  if ((STACK[0x4C0] & 2) != 0)
  {
    v60 = STACK[0x438];
  }

  LODWORD(STACK[0x28C]) = v60;
  v61 = STACK[0x3D8];
  if (v59)
  {
    v61 = STACK[0x3CC];
  }

  LODWORD(STACK[0x438]) = v61;
  v62 = STACK[0x2D0];
  if (v59)
  {
    v62 = STACK[0x2C8];
  }

  LODWORD(STACK[0x3D8]) = v62;
  v63 = (STACK[0x4D0] & 2) == 0;
  v64 = STACK[0x478];
  if ((STACK[0x4D0] & 2) != 0)
  {
    v64 = STACK[0x3C8];
  }

  LODWORD(STACK[0x2D0]) = v64;
  v65 = STACK[0x350];
  if (!v63)
  {
    v65 = STACK[0x310];
  }

  HIDWORD(a55) = v65;
  LODWORD(STACK[0x480]) = a53 ^ 0x98989898 ^ (16843009 * HIDWORD(a52));
  LODWORD(STACK[0x478]) = LODWORD(STACK[0x4B8]) ^ 0xDECB3EAB;
  v66 = (((LODWORD(STACK[0x3F0]) ^ 0x29929313) - 741903485) ^ ((LODWORD(STACK[0x3F0]) ^ 0xBEBE3356) + 1156305864) ^ ((LODWORD(STACK[0x3F0]) ^ 0x932A1B74) + 1769995238)) - 1632078451;
  v67 = (v58 - 625) | 0x208Cu;
  v68 = a4 < 0x55DE2E1F;
  v69 = (a4 | (v68 << 32)) + 0x4D7AAA0A0D1C1992;
  v70 = 0xBF25396F735B7765 * *(STACK[0x4D8] + 8 * (v67 + v69) - 0x6BD5505317D349F8);
  v71 = (a4 | (v68 << 32)) - 0x4D41A77124269CBDLL + (((v70 ^ v57 ^ 0x8AC166CC6116DB13) + 0x1C97BB883F3E5B70) ^ ((v70 ^ v57 ^ 0x32ADAB4DB78FE252) - 0x5B0489F616589DD1) ^ ((v70 ^ v57 ^ 0xB86CCD81D6993941) + 0x2E3A10C588B1B93ELL));
  v72 = v71 - 0x491535D38FE011DELL + (((((v71 ^ 0xBD1990F3762E9370) + 0xBF35ADF06317D51) ^ v71 ^ ((v71 ^ 0x227F17F9CDE7A0A3) - 0x6B6A222A4207B17CLL) ^ ((v71 ^ 0x898E8D2E9FF429E0) + 0x3F644702EFEBC7C1) ^ ((v71 ^ 0x5FFD3FF7ABDD0BECLL) - 0x16E80A24243D1A33)) >> 32) ^ 0xFFFFFFFFB6EACA2CLL);
  v73 = v72 + (v72 >> 16) + ((v72 + (v72 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v74 = v73 ^ a3;
  v75 = (a4 | (v68 << 32)) - 0x18C7D75EB9EF31F9 + (((v73 ^ v70 ^ 0x3C3961ED79919166) + 0x7A527587413A951ELL) ^ ((v73 ^ v70 ^ 0x9E612143C2F10BA5) - 0x27F5CAD605A5F021) ^ ((v73 ^ v70 ^ 0xA25840AEBB609AC3) - 0x1BCCAB3B7C346147));
  v76 = (v75 ^ 0x805C88E70A75FE5FLL) & (2 * (v75 & 0xD25CC2F42B65FF5ELL)) ^ v75 & 0xD25CC2F42B65FF5ELL;
  v77 = ((2 * (v75 ^ 0x45C88E71E7C2E4BLL)) ^ 0xAC0094266A33A22ALL) & (v75 ^ 0x45C88E71E7C2E4BLL) ^ (2 * (v75 ^ 0x45C88E71E7C2E4BLL)) & 0xD6004A133519D114;
  v78 = v77 ^ 0x52004A1115085115;
  v79 = (v77 ^ 0x8000400020118004) & (4 * v76) ^ v76;
  v80 = ((4 * v78) ^ 0x5801284CD4674454) & v78 ^ (4 * v78) & 0xD6004A133519D114;
  v81 = (v80 ^ 0x5000080014014000) & (16 * v79) ^ v79;
  v82 = ((16 * (v80 ^ 0x8600421321189101)) ^ 0x6004A133519D1150) & (v80 ^ 0x8600421321189101) ^ (16 * (v80 ^ 0x8600421321189101)) & 0xD6004A133519D110;
  v83 = (v82 ^ 0x4000001311191100) & (v81 << 8) ^ v81;
  v84 = (((v82 ^ 0x96004A002400C005) << 8) ^ 0x4A133519D11500) & (v82 ^ 0x96004A002400C005) ^ ((v82 ^ 0x96004A002400C005) << 8) & 0xD6004A133519D100;
  v85 = v83 ^ 0xD6004A133519D115 ^ (v84 ^ 0x21111110000) & (v83 << 16);
  v86 = v75 - 0x2DA33D0BD49A00A2 + (((v75 ^ (2 * ((v85 << 32) & 0x56004A1300000000 ^ v85 ^ ((v85 << 32) ^ 0x3519D11500000000) & (((v84 ^ 0xD60048022408C015) << 16) & 0x56004A1300000000 ^ 0x14004A0200000000 ^ (((v84 ^ 0xD60048022408C015) << 16) ^ 0x4A13351900000000) & (v84 ^ 0xD60048022408C015))))) >> 32) ^ 0xFFFFFFFFA9A3290FLL) + 1;
  v87 = v86 + (v86 >> 16) + ((v86 + (v86 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v88 = v74 ^ v87;
  v89 = v69 + 0x43F991842460011DLL + (((v87 ^ v70 ^ 0xE642D17B4A3F01A8) - 0x69D264F9014C145FLL) ^ ((v87 ^ v70 ^ 0x3A0B6D1A61E6A7) + 0x70554110AEED0CB0) ^ ((v87 ^ v70 ^ 0xE678DA16505EE70FLL) - 0x69E86F941B2DF2F8));
  v90 = (v89 ^ 0xFFDF7DF3A4D0C989) & (2 * (v89 & 0xFE1C79F3C418CD29)) ^ v89 & 0xFE1C79F3C418CD29;
  v91 = ((2 * (v89 ^ 0x43EFEF33ACE043DBLL)) ^ 0x7BE72D80D1F11DE4) & (v89 ^ 0x43EFEF33ACE043DBLL) ^ (2 * (v89 ^ 0x43EFEF33ACE043DBLL)) & 0xBDF396C068F88EF2;
  v92 = v91 ^ 0x8410924028088212;
  v93 = (v91 ^ 0x3CE3148008E88EF0) & (4 * v90) ^ v90;
  v94 = ((4 * v92) ^ 0xF7CE5B01A3E23BC8) & v92 ^ (4 * v92) & 0xBDF396C068F88EF0;
  v95 = (v94 ^ 0xB5C2120020E00AC0) & (16 * v93) ^ v93;
  v96 = ((16 * (v94 ^ 0x83184C048188432)) ^ 0xDF396C068F88EF20) & (v94 ^ 0x83184C048188432) ^ (16 * (v94 ^ 0x83184C048188432)) & 0xBDF396C068F88EF0;
  v97 = (v96 ^ 0x9D31040008888E00) & (v95 << 8) ^ v95;
  v98 = (((v96 ^ 0x20C292C0607000D2) << 8) ^ 0xF396C068F88EF200) & (v96 ^ 0x20C292C0607000D2) ^ ((v96 ^ 0x20C292C0607000D2) << 8) & 0xBDF396C068F88E00;
  v99 = v97 ^ 0xBDF396C068F88EF2 ^ (v98 ^ 0xB192804068880000) & (v97 << 16);
  v100 = (v99 << 32) & 0x3DF396C000000000;
  v101 = v89 - 0x1E3860C3BE732D7 + (((v89 ^ (2 * (v100 ^ v99 ^ ((v99 << 32) ^ 0x68F88EF200000000) & (((v98 ^ 0xC61168000700CF2) << 16) & 0x3DF396C000000000 ^ 0x2933960000000000 ^ (((v98 ^ 0xC61168000700CF2) << 16) ^ 0x16C068F800000000) & (v98 ^ 0xC61168000700CF2))))) >> 32) ^ 0xFFFFFFFF2BE5A60CLL) + 1;
  v102 = v101 + (v101 >> 16) + ((v101 + (v101 >> 16)) >> 8);
  v103 = (v66 < 0x9D0BD12E) ^ ((a4 + 1194173200) < 0x9D0BD12E);
  v104 = a4 + 1194173200 < v66;
  if (v103)
  {
    v104 = v66 < 0x9D0BD12E;
  }

  HIDWORD(a51) = 16843009 * HIDWORD(a52);
  return (*(STACK[0x4E0] + 8 * ((200 * !v104) ^ v58)))(v103, v100, v88 ^ (v102 - 1603558688), a4, 0x56004A1300000000, 3493187952, 0x3DF396C000000000, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1002C15A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x3E8];
  if ((STACK[0x4C0] & 2) != 0)
  {
    v69 = STACK[0x3E0];
  }

  LODWORD(a53) = v69;
  if ((STACK[0x4C0] & 2) != 0)
  {
    v70 = STACK[0x3D4];
  }

  else
  {
    v70 = STACK[0x3DC];
  }

  v71 = a56 ^ LODWORD(STACK[0x2AC]);
  v171 = (a8 - 8588) | 0x2E08u;
  v72 = STACK[0x428];
  if ((STACK[0x4D0] & 2) == 0)
  {
    v72 = STACK[0x420];
  }

  LODWORD(a56) = v72;
  v73 = (v65 ^ 0xD76D59B6069CA26ELL) - ((v65 ^ 0xD76D59B6069CA26ELL) >> 30) + (((v65 ^ 0xD76D59B6069CA26ELL) - ((v65 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v74 = v73 - (v73 >> 4);
  v75 = ((((a8 - 8588) | 0x2E08u) - 0x73824EE3E4471D66) ^ v74) + (((((a8 - 8588) | 0x2E08u) - 0x73824EE3E4471D66) ^ v74) >> 27);
  v76 = v75 - (v75 >> 9) + ((v75 - (v75 >> 9)) >> 3);
  v77 = v76 - ((v76 + 0x3690DB5D4C331D54) >> 29) + 0x3690DB5D4C331D54 - ((v76 - ((v76 + 0x3690DB5D4C331D54) >> 29) + 0x3690DB5D4C331D54) >> 9);
  v78 = v77 - (v77 >> 3);
  v79 = v78 - 0xA56C130BF1F620DLL - ((v78 - 0xA56C130BF1F620DLL) >> 26) - ((v78 - 0xA56C130BF1F620DLL - ((v78 - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v80 = v79 - (v79 >> 7);
  LODWORD(v74) = v80 ^ v74 ^ v68;
  v81 = (v80 ^ 0x7BC03D24179C195CLL) - ((v80 ^ 0x7BC03D24179C195CLL) >> 27) + (((v80 ^ 0x7BC03D24179C195CLL) - ((v80 ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v82 = v81 - (v81 >> 1);
  LODWORD(v76) = v82 ^ v76 ^ v66;
  v83 = v82 - 0x5B46CA940EEFB0F3 - ((v82 - 0x5B46CA940EEFB0F3) >> 28) - ((v82 - 0x5B46CA940EEFB0F3 - ((v82 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v84 = v83 - (v83 >> 3);
  v85 = v84 - 0xC5B39F814D45862 + ((v84 - 0xC5B39F814D45862) >> 30) + ((v84 - 0xC5B39F814D45862 + ((v84 - 0xC5B39F814D45862) >> 30)) >> 10);
  v86 = v85 - (v85 >> 3);
  v87 = v74 ^ v86;
  v88 = (v86 ^ 0xEB853C9A73BC9BDLL) - ((v86 ^ 0xEB853C9A73BC9BDLL) >> 27) + (((v86 ^ 0xEB853C9A73BC9BDLL) - ((v86 ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v89 = v88 + (v88 >> 1);
  v90 = v76 ^ v89;
  v91 = v89 - 0x19AEA5D6B20CAF27 + ((v89 - 0x19AEA5D6B20CAF27) >> 30) - ((v89 - 0x19AEA5D6B20CAF27 + ((v89 - 0x19AEA5D6B20CAF27) >> 30)) >> 11);
  v92 = v84 ^ v78 ^ a3 ^ (v91 - (v91 >> 6));
  LODWORD(v78) = v87 & 0xFE ^ 0x34;
  LODWORD(STACK[0x428]) = v78;
  LODWORD(v76) = 16843009 * v78 - 189071287;
  LODWORD(v84) = (v76 ^ 0x2B16FF27) & (2 * (v76 & 0xB44FFB7)) ^ v76 & 0xB44FFB7;
  LODWORD(v86) = ((2 * (v76 ^ 0x3916C925)) ^ 0x64A46D24) & (v76 ^ 0x3916C925) ^ (2 * (v76 ^ 0x3916C925)) & 0x32523692;
  LODWORD(v84) = (v86 ^ 0x20002400) & (4 * v84) ^ v84;
  LODWORD(v86) = ((4 * (v86 ^ 0x12521292)) ^ 0xC948DA48) & (v86 ^ 0x12521292) ^ (4 * (v86 ^ 0x12521292)) & 0x32523690;
  LODWORD(v84) = (v86 ^ 0x401202) & (16 * v84) ^ v84;
  LODWORD(v86) = ((16 * (v86 ^ 0x32122492)) ^ 0x25236920) & (v86 ^ 0x32122492) ^ (16 * (v86 ^ 0x32122492)) & 0x32523690;
  LODWORD(v84) = v84 ^ 0x32523692 ^ (v86 ^ 0x20022000) & (v84 << 8);
  v93 = v76 ^ (2 * ((v84 << 16) & 0x32520000 ^ v84 ^ ((v84 << 16) ^ 0x36920000) & (((v86 ^ 0x12501692) << 8) & 0x32520000 ^ 0x20400000 ^ (((v86 ^ 0x12501692) << 8) ^ 0x52360000) & (v86 ^ 0x12501692))));
  v94 = STACK[0x354];
  LODWORD(v86) = *(a37 + 4 * LODWORD(STACK[0x354]));
  HIDWORD(v96) = v86 ^ 0x14F;
  LODWORD(v96) = v86 ^ 0x462FBE00;
  v95 = v96 >> 9;
  v97 = v92 & 7 ^ 4;
  if ((v92 & 7) == 4)
  {
    v98 = 0;
  }

  else
  {
    v98 = 255;
  }

  LODWORD(STACK[0x3E8]) = -v97;
  v99 = -v97 & 7;
  v100 = v98 << (-v97 & 7);
  LODWORD(STACK[0x420]) = 1157627904 * v100;
  v101 = 16843009 * v100;
  v102 = 16843009 * (v87 ^ 0xCA ^ ((v87 ^ 0x1ACA) >> 8) ^ ((v87 ^ 0xA1831ACA) >> 16) ^ HIBYTE(v87) ^ 0x5E);
  v103 = a57 + (v95 ^ 0x607F2D9E) + (*(a42 + 4 * v99) ^ 0x4B28652A);
  v104 = *(a40 + 4 * (LODWORD(STACK[0x480]) % 0x101));
  LODWORD(STACK[0x3D4]) = v104 ^ 0x73057D85;
  v105 = 1506752328 * (v104 ^ 0x73057D85);
  LODWORD(STACK[0x3DC]) = v105;
  v106 = LODWORD(STACK[0x430]) + (v104 ^ 0xF271DF9 ^ v105);
  LODWORD(v174) = 16843009 * (v90 ^ 0x8F ^ ((v90 ^ 0xAA8F) >> 8) ^ ((v90 ^ 0xD1BDAA8F) >> 16) ^ HIBYTE(v90) ^ 2);
  v107 = v102 ^ 0x2C2C2C2C ^ v174;
  v108 = *(a42 + 4 * (v107 % 0x101));
  LODWORD(STACK[0x3CC]) = v108;
  LODWORD(STACK[0x430]) = v106 + (v108 ^ 0xB4D79AD5);
  v109 = (v71 & 0xFE | HIDWORD(a53)) ^ 0xDECB3E31;
  v110 = (LODWORD(STACK[0x35C]) | a55) ^ 0xDECB3EA8;
  v111 = STACK[0x490];
  HIDWORD(a53) = v110 ^ LODWORD(STACK[0x490]) ^ 0xDECB3EAB ^ (v103 + 1);
  v112 = (v110 - 257) % 0x101;
  v113 = (v87 & 0xFFFFFF01 | (2 * (v93 >> 1))) ^ 0xCB51A092;
  LODWORD(a36) = v70 - ((2 * v70) & 0xA33E5566) + 1369385651;
  LODWORD(a38) = LODWORD(STACK[0x308]) - ((2 * LODWORD(STACK[0x308])) & 0xA33E5566) + 1369385651;
  v114 = v92 ^ 0xCB51A030;
  v115 = v92 ^ 0xCB51A034;
  HIDWORD(v175) = LODWORD(STACK[0x2A0]) - (v92 ^ 0xCB51A034) + ((v92 ^ 0xCB51A030) & 0xB535C70);
  LODWORD(STACK[0x3C8]) = v109;
  v116 = *(a43 + 4 * (v109 % 0x101));
  LODWORD(a44) = v111 ^ 0xDECB3EAB;
  v117 = *(a37 + 4 * ((v111 ^ 0xDECB3EAB) % 0x101));
  v118 = STACK[0x478];
  v119 = *(a37 + 4 * (LODWORD(STACK[0x478]) % 0x101));
  HIDWORD(v173) = v116 - 538451343;
  v120 = *(a40 + 4 * (v113 % 0x101));
  if ((v92 & 7) == 4)
  {
    v121 = 0;
  }

  else
  {
    v121 = ~v100;
  }

  v122 = v87 ^ 0xCB51A034;
  if (v110 <= 0x100)
  {
    v112 = v110;
  }

  LODWORD(v173) = *(a42 + 4 * v112);
  LODWORD(v172) = *(a42 + 4 * (v122 % 0x101)) ^ 0x4B28652A;
  LODWORD(STACK[0x4C0]) = v111 ^ LODWORD(STACK[0x30C]) ^ v92;
  v123 = v115 + LODWORD(STACK[0x2C4]);
  v124 = LODWORD(STACK[0x3D0]) - v94 + v115;
  HIDWORD(a32) = 261356289 * (LODWORD(STACK[0x428]) - a65);
  v125 = STACK[0x4D8];
  v126 = (*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0x29740881 % STACK[0x4A8])) + 1020720254) % STACK[0x4A8])) + 2194900173) % STACK[0x4A8])) + 679027458) % STACK[0x4A8])) + 3800010653) % STACK[0x4A8];
  v127 = ((((v126 - ((2 * v126) & 0x1B95D682) - 1379210431) ^ 0xB567A4F3) + 461879869) ^ (((v126 - ((2 * v126) & 0x1B95D682) - 1379210431) ^ 0x8F58E762) + 565770670) ^ (((v126 - ((2 * v126) & 0x1B95D682) - 1379210431) ^ 0x97F5A8D0) + 957724192)) + 2110155483;
  v128 = v114 & 0xFFFFFFF8;
  v129 = STACK[0x420] & v90;
  LODWORD(STACK[0x3E0]) = v101;
  LODWORD(STACK[0x2A0]) = v129 ^ v101;
  LODWORD(STACK[0x308]) = v87 & v121;
  HIDWORD(v179) = LODWORD(STACK[0x430]) + 1;
  LODWORD(STACK[0x2C8]) = v93;
  LODWORD(STACK[0x2AC]) = v71;
  LODWORD(STACK[0x350]) = v97;
  LODWORD(v176) = v123 - (v97 | v128);
  LODWORD(STACK[0x2C4]) = v117;
  LODWORD(a35) = v119;
  HIDWORD(v172) = v120;
  HIDWORD(v177) = v124 + v99;
  LODWORD(v178) = v90;
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x488]) ^ a54 ^ v90;
  v130 = LODWORD(STACK[0x498]) ^ 0x832A377;
  LODWORD(STACK[0x428]) = v87;
  LODWORD(a39) = 32 * LODWORD(STACK[0x35C]);
  HIDWORD(v174) = LODWORD(STACK[0x480]) >> 7;
  LODWORD(a37) = v97 | v128;
  LODWORD(v177) = -(v97 | v128);
  LODWORD(STACK[0x3D0]) = v122;
  HIDWORD(v168) = v122 >> 4;
  LODWORD(STACK[0x310]) = v99;
  LODWORD(v168) = v94 - v99;
  LODWORD(STACK[0x420]) = v113;
  LODWORD(v169) = v113 >> 4;
  HIDWORD(a45) = v110;
  v131 = *v125 * ((v171 - 7672) ^ 0xBF25396F735B6777);
  v132 = (((v131 ^ v67 ^ 0xCDCFD87AE0BBB1CFLL) + 0x3C75252B8F7785F9) ^ ((v131 ^ v67 ^ 0x84E2C7DDEEEF0B2DLL) + 0x75583A8C81233F1BLL) ^ ((v131 ^ v67 ^ 0x492D1FA70E54BAE2) - 0x47681D099E67712ALL)) + 0x343C31AE223435F0;
  v133 = v132 - 0x25F72EFF92006A27 + (((((v132 ^ 0x3ECC72A4C561C1CBLL) - 0x1B3B5C5B5761ABE3) ^ v132 ^ ((v132 ^ 0x70680243D9B0B1A4) - 0x559F2CBC4BB0DB8CLL) ^ ((v132 ^ 0xDC2E35E771AEF500) + 0x626E4E71C516100) ^ ((v132 ^ 0xB77D6BFFFF7FEF6FLL) + 0x6D75BAFF92807AB9)) >> 32) ^ 0xFFFFFFFFDA08D100);
  v134 = ((v133 >> 16) ^ v133) + 2 * ((v133 >> 16) & v133);
  v135 = v134 + (v134 >> 8);
  v136 = ((((v135 - 0x6E19B5785F945D20) ^ v131 ^ 0xB917A024793763ADLL) - 0x77B27BE9120B8699) ^ (((v135 - 0x6E19B5785F945D20) ^ v131 ^ 0x5B6BC6AE8550E40) + 0x34EC98587C96148CLL) ^ (((v135 - 0x6E19B5785F945D20) ^ v131 ^ 0xBCA11C4E91626DEDLL) - 0x7204C783FA5E88D9)) + 0x1943754507613371;
  v137 = (v136 ^ 0x244A560D63D335D3) & (2 * (v136 & 0xB562668863DBB1C3)) ^ v136 & 0xB562668863DBB1C3;
  v138 = ((2 * (v136 ^ 0x268A131DE4E236D7)) ^ 0x27D0EB2B0E730E28) & (v136 ^ 0x268A131DE4E236D7) ^ (2 * (v136 ^ 0x268A131DE4E236D7)) & 0x93E8759587398714;
  v139 = v138 ^ 0x9028149481088114;
  v140 = (v138 ^ 0x3A0209506310600) & (4 * v137) ^ v137;
  v141 = ((4 * v139) ^ 0x4FA1D6561CE61C50) & v139 ^ (4 * v139) & 0x93E8759587398714;
  v142 = (v141 ^ 0x3A0541404200410) & (16 * v140) ^ v140;
  v143 = ((16 * (v141 ^ 0x9048218183198304)) ^ 0x3E87595873987140) & (v141 ^ 0x9048218183198304) ^ (16 * (v141 ^ 0x9048218183198304)) & 0x93E8759587398710;
  v144 = (v143 ^ 0x1280511003180100) & (v142 << 8) ^ v142;
  v145 = (((v143 ^ 0x8168248584218614) << 8) ^ 0xE875958739871400) & (v143 ^ 0x8168248584218614) ^ ((v143 ^ 0x8168248584218614) << 8) & 0x93E8759587398700;
  v146 = v144 ^ 0x93E8759587398714 ^ (v145 ^ 0x8060158501010000) & (v144 << 16);
  v147 = v136 - 0x4A9D99779C244E3DLL + (((v136 ^ (2 * ((v146 << 32) & 0x13E8759500000000 ^ v146 ^ ((v146 << 32) ^ 0x739871400000000) & (((v145 ^ 0x1388601086388314) << 16) & 0x13E8759500000000 ^ 0x268708400000000 ^ (((v145 ^ 0x1388601086388314) << 16) ^ 0x7595873900000000) & (v145 ^ 0x1388601086388314))))) >> 32) ^ 0xFFFFFFFF6B1D7874) + 1;
  v148 = v147 + (v147 >> 16) + ((v147 + (v147 >> 16)) >> 8) - 0x6E19B5785F945D20;
  v149 = (v148 >> 1) & 0x57CF659E ^ v148;
  v150 = (((v148 ^ v131 ^ 0x4BCD84B381370670) - 0x5B1B1CE78613C9ECLL) ^ ((v148 ^ v131 ^ 0xBB5B11733AEDE3DCLL) + 0x547276D8C236D3C0) ^ ((v148 ^ v131 ^ 0xF09695C0BBDAE5ACLL) + 0x1FBFF26B4301D5D0)) + 0x7C52D2CE55B65A79;
  v151 = (v150 ^ 0xD053B191294D6483) & (2 * (v150 & 0x9483C585B16E7523)) ^ v150 & 0x9483C585B16E7523;
  v152 = ((2 * (v150 ^ 0xD851BA9849454EC1)) ^ 0x99A4FE3BF05677C4) & (v150 ^ 0xD851BA9849454EC1) ^ (2 * (v150 ^ 0xD851BA9849454EC1)) & 0x4CD27F1DF82B3BE2;
  v153 = v152 ^ 0x4452010408290822;
  v154 = (v152 ^ 0x403F19C00231A0) & (4 * v151) ^ v151;
  v155 = ((4 * v153) ^ 0x3349FC77E0ACEF88) & v153 ^ (4 * v153) & 0x4CD27F1DF82B3BE0;
  v156 = (v155 ^ 0x407C15E0282B80) & (16 * v154) ^ v154;
  v157 = ((16 * (v155 ^ 0x4C92030818031062)) ^ 0xCD27F1DF82B3BE20) & (v155 ^ 0x4C92030818031062) ^ (16 * (v155 ^ 0x4C92030818031062)) & 0x4CD27F1DF82B3BE0;
  v158 = (v157 ^ 0x4C02711D80233A00) & (v156 << 8) ^ v156;
  v159 = (((v157 ^ 0xD00E00780801C2) << 8) ^ 0xD27F1DF82B3BE200) & (v157 ^ 0xD00E00780801C2) ^ ((v157 ^ 0xD00E00780801C2) << 8) & 0x4CD27F1DF82B3B00;
  v160 = v158 ^ 0x4CD27F1DF82B3BE2 ^ (v159 ^ 0x40521D18282B0000) & (v158 << 16);
  v161 = (v160 << 32) ^ 0x782B3BE200000000;
  v162 = (v160 << 32) & 0x4CD27F1D00000000;
  v163 = ((v150 ^ (2 * (v162 ^ v160 ^ v161 & (((v159 ^ 0xC806205D00019E2) << 16) & 0x4CD27F1D00000000 ^ 0xC2071400000000 ^ (((v159 ^ 0xC806205D00019E2) << 16) ^ 0x7F1DF82B00000000) & (v159 ^ 0xC806205D00019E2))))) >> 32) ^ 0xFFFFFFFF62DCB241;
  v164 = v150 - 0x6B7C3A7A4E918ADDLL + v163 + 1 + ((v150 - 0x6B7C3A7A4E918ADDLL + v163 + 1) >> 16);
  v165 = v164 + (v164 >> 8) - 1603558688;
  v166 = v127 < 0x80F1606A || v127 > 0x80F1606B;
  HIDWORD(v169) = v117 ^ 0x462FBE00;
  LODWORD(v170) = v119 ^ 0x462FBE00;
  HIDWORD(v170) = v120 ^ 0x73057D85;
  LODWORD(a40) = v71 ^ 0xC79866CF;
  LODWORD(a41) = v93 ^ 0xBC49293;
  LODWORD(a42) = v110 << 6;
  LODWORD(a43) = 8 * v118;
  LODWORD(v175) = v107 >> 7;
  LODWORD(a51) = v93 ^ 0xF43B6D6C;
  HIDWORD(v178) = v87 ^ 0xB73D1860;
  LODWORD(v179) = ~v102;
  LODWORD(a57) = v93 >> 1;
  HIDWORD(v176) = v102 ^ 0x2C2C2C2C ^ v174;
  return (*(STACK[0x4E0] + 8 * ((61 * !v166) ^ v171)))(v127 < 0x80F1606A, 1232589324, v162, 0xB562668863DBB1C3, 0x93E8759587398714, ((v135 - 1603558688) >> 1) & 0x57CF659E ^ (v135 - 1603558688) ^ v130 ^ v149 ^ (v165 >> 1) & 0x57CF659E ^ v165, 1473209758, v161, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v168, v169, v170, v171, a32, v172, v173, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v174, v175, v176, v177, a50, a51, v178, a53, v179, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1002C26EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, int a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, int a39, int a40, uint64_t a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  LODWORD(STACK[0x30C]) = a54 ^ a55;
  LODWORD(STACK[0x308]) ^= LODWORD(STACK[0x3E0]);
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x3CC]) ^ a40 ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x3DC]);
  LODWORD(STACK[0x290]) = 2129790651 * a28;
  HIDWORD(v57) = LODWORD(STACK[0x2C4]) ^ 0x14F;
  LODWORD(v57) = a31;
  v56 = v57 >> 9;
  v58 = LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x294]) ^ a29;
  LODWORD(STACK[0x2C4]) = LODWORD(STACK[0x4D0]) ^ 0x59E94EC4;
  LODWORD(STACK[0x3DC]) = LODWORD(STACK[0x478]) + LODWORD(STACK[0x298]) - LODWORD(STACK[0x3C8]);
  LODWORD(STACK[0x3E0]) = v58 ^ LODWORD(STACK[0x420]) ^ a30;
  HIDWORD(v57) = a38 ^ 0x14F;
  LODWORD(v57) = a32;
  LODWORD(STACK[0x3CC]) = a37 ^ LODWORD(STACK[0x3C4]) ^ (v57 >> 9);
  LODWORD(STACK[0x3D4]) = a42 ^ a36 ^ 0x85379DF8 ^ v56;
  v59 = (((LODWORD(STACK[0x3F0]) ^ 0x774BC016) - 1927405432) ^ ((LODWORD(STACK[0x3F0]) ^ 0x285D427F) - 771185937) ^ ((LODWORD(STACK[0x3F0]) ^ 0x5B103958) - 1589257782)) + 280503164;
  v60 = v59 < 0xF0B7F1D;
  if (v60 == (a2 - 980177645) < 0xF0B7F1D)
  {
    v60 = v59 > a2 - 980177645;
  }

  return (*(STACK[0x4E0] + 8 * (v55 ^ 2 ^ (2 * v60))))(v59 > a2 - 980177645);
}

uint64_t sub_1002C312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, int a44, int a45, int a46, int a47, uint64_t a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  LODWORD(STACK[0x298]) = a55 ^ 0xE9E9E9E9;
  v60 = LODWORD(STACK[0x2B0]) + a40 + a41;
  v61 = STACK[0x4B8];
  v62 = (v58 ^ 0xD76D59B6069CA26ELL) - ((v58 ^ 0xD76D59B6069CA26ELL) >> 30) + (((v58 ^ 0xD76D59B6069CA26ELL) - ((v58 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v63 = v62 - (v62 >> 4);
  v64 = (v63 ^ 0x8C7DB11C1BB910A4) + ((v63 ^ 0x8C7DB11C1BB910A4) >> 27) - (((v63 ^ 0x8C7DB11C1BB910A4) + ((v63 ^ 0x8C7DB11C1BB910A4) >> 27)) >> 9);
  v65 = v64 + (v64 >> 3);
  LODWORD(a40) = (v65 >> 1) & 0x57CF659E;
  v118 = v65;
  v66 = v65 + 0x3690DB5D4C331D54 - ((v65 + 0x3690DB5D4C331D54) >> 29) - ((v65 + 0x3690DB5D4C331D54 - ((v65 + 0x3690DB5D4C331D54) >> 29)) >> 9);
  v67 = v66 - (v66 >> 3);
  v68 = v67 - 0xA56C130BF1F620DLL - ((v67 - 0xA56C130BF1F620DLL) >> 26) - ((v67 - 0xA56C130BF1F620DLL - ((v67 - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v69 = v68 - (v68 >> 7);
  v70 = STACK[0x4B0];
  v71 = (LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4B0])) >> 1;
  LODWORD(STACK[0x2BC]) = v71;
  v72 = v71 & 0x57CF659E ^ v61 ^ a44 ^ (a44 << 6);
  v73 = (v69 ^ 0x7BC03D24179C195CLL) - ((v69 ^ 0x7BC03D24179C195CLL) >> 27) + (((v69 ^ 0x7BC03D24179C195CLL) - ((v69 ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v74 = v73 - (v73 >> 1);
  v75 = a47 ^ a42 ^ (a50 + a36);
  LODWORD(a42) = (v74 >> 1) & 0x57CF659E;
  v76 = v74 - 0x5B46CA940EEFB0F3 - ((v74 - 0x5B46CA940EEFB0F3) >> 28) - ((v74 - 0x5B46CA940EEFB0F3 - ((v74 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v77 = v76 - (v76 >> 3);
  LODWORD(STACK[0x294]) = (v77 >> 1) & 0x57CF659E;
  v78 = v72 ^ v75 ^ v55;
  STACK[0x2B0] = v77;
  v79 = v77 - 0xC5B39F814D45862 + ((v77 - 0xC5B39F814D45862) >> 30) + ((v77 - 0xC5B39F814D45862 + ((v77 - 0xC5B39F814D45862) >> 30)) >> 10);
  v80 = v79 - (v79 >> 3);
  v81 = (v80 ^ 0xEB853C9A73BC9BDLL) - ((v80 ^ 0xEB853C9A73BC9BDLL) >> 27) + (((v80 ^ 0xEB853C9A73BC9BDLL) - ((v80 ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v82 = v81 + (v81 >> 1);
  v116 = a7 & (v82 >> 1);
  v117 = v82;
  v83 = v82 - 0x19AEA5D6B20CAF27 + ((v82 - 0x19AEA5D6B20CAF27) >> 30) - ((v82 - 0x19AEA5D6B20CAF27 + ((v82 - 0x19AEA5D6B20CAF27) >> 30)) >> 11);
  v115 = v83 - (v83 >> 6);
  v84 = v78 ^ v63 ^ (v63 >> 1) & 0x57CF659E ^ v69 ^ (v69 >> 1) & 0x57CF659E ^ v80 ^ (v80 >> 1) & 0x57CF659E;
  LODWORD(v63) = (*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * ((*(STACK[0x4D8] + 8 * (0x3DED04D7 % STACK[0x4A8])) + 2254417002) % STACK[0x4A8])) + 2818276552) % STACK[0x4A8])) + 228888465) % STACK[0x4A8])) + 2058349328) % STACK[0x4A8];
  LODWORD(v80) = STACK[0x4C8];
  LODWORD(v83) = LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x4C8]);
  LODWORD(STACK[0x4A8]) = v83;
  HIDWORD(v114) = ((v84 ^ v83) >> 1) & 0x57CF659E;
  LODWORD(STACK[0x470]) -= LODWORD(STACK[0x3D0]);
  LODWORD(v83) = LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x318]);
  v85 = v84 ^ 0x9ED96846;
  LODWORD(STACK[0x478]) = v85;
  LODWORD(STACK[0x3D0]) = v83 ^ a43 ^ LODWORD(STACK[0x3C8]) ^ a37;
  LODWORD(STACK[0x318]) = a7 & (v67 >> 1) ^ v67;
  v86 = v70 ^ 0x1D03B67D;
  LODWORD(STACK[0x498]) ^= LODWORD(STACK[0x490]);
  LODWORD(STACK[0x4B0]) = v60 + 1;
  v87 = v80 ^ 0x7D356DFD;
  v88 = ((((v63 - ((2 * v63) & 0xF2B7114) - 2020231030) ^ 0x85C2A14B) + 1325143574) ^ (((v63 - ((2 * v63) & 0xF2B7114) - 2020231030) ^ 0x63070DD) - 854669436) ^ (((v63 - ((2 * v63) & 0xF2B7114) - 2020231030) ^ 0x467691C) - 816193981)) - 1183972313;
  v89 = v88 < 0x61913FC;
  v90 = v59 & 0x4000000000000;
  v91 = *STACK[0x4D8] * ((v57 - 4167) - 0x40DAC6908CA49B34);
  if ((v91 & v59 & 0x4000000000000) != 0)
  {
    v90 = -v90;
  }

  v92 = ((((v90 + v91) ^ v59 & 0xFFFBFFFFFFFFFFFFLL ^ 0x9DC29F6D4B43B32ELL) - 0x659E2C6E9BE872B3) ^ (((v90 + v91) ^ v59 & 0xFFFBFFFFFFFFFFFFLL ^ 0xDA2BFA5BA56853EDLL) - 0x2277495875C39270) ^ (((v90 + v91) ^ v59 & 0xFFFBFFFFFFFFFFFFLL ^ 0x47E96536EE2BE0C3) + 0x404A29CAC17FDEA2)) + 0x5C3711FAB204E3F9;
  v93 = (v92 ^ 0xDE35A5059C16D9B7) & (2 * (v92 & 0x9C25A1091EA6DDA4)) ^ v92 & 0x9C25A1091EA6DDA4;
  v94 = ((2 * (v92 ^ 0xCE77E517BC57FBBFLL)) ^ 0xA4A4883D45E24C36) & (v92 ^ 0xCE77E517BC57FBBFLL) ^ (2 * (v92 ^ 0xCE77E517BC57FBBFLL)) & 0x5252441EA2F1261ALL;
  v95 = ((4 * (v94 ^ 0x52524402A2112209)) ^ 0x4949107A8BC4986CLL) & (v94 ^ 0x52524402A2112209) ^ (4 * (v94 ^ 0x52524402A2112209)) & 0x5252441EA2F12618;
  v96 = (v95 ^ 0x4040001A82C00010) & (16 * ((v94 ^ 0x240400E00A00418) & (4 * v93) ^ v93)) ^ (v94 ^ 0x240400E00A00418) & (4 * v93) ^ v93;
  v97 = ((16 * (v95 ^ 0x1212440420312613)) ^ 0x252441EA2F1261B0) & (v95 ^ 0x1212440420312613) ^ (16 * (v95 ^ 0x1212440420312613)) & 0x5252441EA2F12610;
  v98 = (v97 ^ 0x400A22102000) & (v96 << 8) ^ v96;
  v99 = (((v97 ^ 0x5252041480E1060BLL) << 8) ^ 0x52441EA2F1261B00) & (v97 ^ 0x5252041480E1060BLL) ^ ((v97 ^ 0x5252041480E1060BLL) << 8) & 0x5252441EA2F12600;
  v100 = v98 ^ 0x5252441EA2F1261BLL ^ (v99 ^ 0x52400402A0200000) & (v98 << 16);
  v101 = v92 - 0x63DA5EF6E159225CLL + (((v92 ^ (2 * ((v100 << 32) & 0x5252441E00000000 ^ v100 ^ ((v100 << 32) ^ 0x22F1261B00000000) & (((v99 ^ 0x12401C02D1241BLL) << 16) & 0x5252441E00000000 ^ 0x1240440E00000000 ^ (((v99 ^ 0x12401C02D1241BLL) << 16) ^ 0x441EA2F100000000) & (v99 ^ 0x12401C02D1241BLL))))) >> 32) ^ 0xFFFFFFFFC3DEDEFFLL) + 1;
  v102 = v101 + (v101 >> 16) + ((v101 + (v101 >> 16)) >> 8);
  LODWORD(v100) = (v102 >> 1) & 0x17D8761B ^ v102 ^ v86;
  v103 = ((v102 + v56) >> 1) & 0x17D8761B ^ (v102 + v56) ^ v87;
  v104 = ((((v102 - 0x6E19B5785F945D20) ^ v91 ^ 0x2862DB6D894ECBC5) - 0x772834F8DF80E7A9) ^ (((v102 - 0x6E19B5785F945D20) ^ v91 ^ 0xE7452216E954ED66) + 0x47F0327C40653EF6) ^ (((v102 - 0x6E19B5785F945D20) ^ v91 ^ 0xCF27F97B601A26A3) + 0x6F92E911C92BF531)) - 0x622C0AFAF1932C06;
  v105 = v104 - 0x3E89056FB79EA78DLL + (((((v104 ^ 0x31864FC2D6EF2D24) - 0xF0F4AAD61718AAALL) ^ v104 ^ ((v104 ^ 0x956D97C918DE7A35) + 0x541B6D5950BF2245) ^ ((v104 ^ 0x471DA2DBCEE08D43) - 0x7994A7B4797E2ACDLL) ^ ((v104 ^ 0xDD7F7FBFB74F7DDCLL) + 0x1C09852FFF2E25AELL)) >> 32) ^ 0xFFFFFFFFC176FA90);
  v106 = v105 + (v105 >> 16) + ((v105 + (v105 >> 16)) >> 8);
  v107 = v100 ^ (v106 >> 1) & 0x17D8761B ^ v106;
  v108 = v103 ^ ((v106 + v56) >> 1) & 0x17D8761B ^ (v106 + v56);
  v109 = ((((v106 - 0x6E19B5785F945D20) ^ v91 ^ 0x3FCB52B7759E64F2) - 0x7349DC7FB2D4A043) ^ (((v106 - 0x6E19B5785F945D20) ^ v91 ^ 0x133A45A364BDC06ALL) - 0x5FB8CB6BA3F704DBLL) ^ (((v106 - 0x6E19B5785F945D20) ^ v91 ^ 0x2CF117141123A498) - 0x607399DCD6696029)) - 0x569AA0DB3214AC21;
  v110 = v109 - 0x5CE2D05C06A08F2DLL + (((((v109 ^ 0x4D8529659BC6246CLL) - 0x1167F9399D66AB42) ^ v109 ^ ((v109 ^ 0x59D273D55C54C41CLL) - 0x530A3895AF44B32) ^ ((v109 ^ 0x34C3750713CC13E1) - 0x6821A55B156C9CCFLL) ^ ((v109 ^ 0x7C76FFEBD2FE7CBFuLL) - 0x20942FB7D45EF391)) >> 32) ^ 0xFFFFFFFFA31D2FA3);
  v111 = v110 + (v110 >> 16) + ((v110 + (v110 >> 16)) >> 8);
  if (v88 >= 0x61913FC)
  {
    v89 = v88 > 0x61913FD;
  }

  v112 = *(STACK[0x4E0] + 8 * ((473 * !v89) ^ v57));
  LODWORD(v114) = (v85 >> 1) & 0x57CF659E;
  return v112(v112, v88 < 0x61913FC, v107, v107 ^ (v111 >> 1) & 0x17D8761B ^ v111, v108, a6, 0x5252441EA2F12600, 0xA04734945C08FB25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v114, a7 & (v115 >> 1), v115, a37, v116, v117, a40, v118, a42, a43);
}

uint64_t sub_1002C3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, uint64_t a48, int a49, uint64_t a50, int a51, int a52, int a53, int a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  LODWORD(STACK[0x304]) = ~LODWORD(STACK[0x2A0]);
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x338]) ^ a52 ^ a56 ^ a53;
  LODWORD(STACK[0x3C4]) = a55 + LODWORD(STACK[0x290]);
  LODWORD(STACK[0x480]) = a60 ^ 0x9A2AFE07;
  STACK[0x338] = a36 ^ a37;
  LODWORD(STACK[0x4C8]) ^= LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x4A8]) ^ v62 ^ a45 ^ a43 ^ a49 ^ a47 ^ a39 ^ a41 ^ a34 ^ a35;
  v63 = (((LODWORD(STACK[0x3F0]) ^ 0xEBE575D8) + 296785226) ^ ((LODWORD(STACK[0x3F0]) ^ 0xBDFAAEA9) + 1202671161) ^ ((((v61 ^ 0x3637) + 1377385362) ^ LODWORD(STACK[0x3F0])) - 1471381294)) - 69811019;
  v64 = v63 < 0xFA2A2056;
  if (v64 == (v60 - 766678011) < 0xFA2A2056)
  {
    v64 = v60 - 766678011 < v63;
  }

  return (*(STACK[0x4E0] + 8 * ((101 * !v64) ^ v61 ^ 0x3637)))();
}

uint64_t sub_1002C44BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, int a53, int a54, int a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3F0]) = a51 + a50;
  v68 = (v65 ^ 0xD76D59B6069CA26ELL) - ((v65 ^ 0xD76D59B6069CA26ELL) >> 30) + (((v65 ^ 0xD76D59B6069CA26ELL) - ((v65 ^ 0xD76D59B6069CA26ELL) >> 30)) >> 14);
  v69 = ((v68 - (v68 >> 4)) ^ 0x8C7DB11C1BB910A4) + (((v68 - (v68 >> 4)) ^ 0x8C7DB11C1BB910A4) >> 27) - ((((v68 - (v68 >> 4)) ^ 0x8C7DB11C1BB910A4) + (((v68 - (v68 >> 4)) ^ 0x8C7DB11C1BB910A4) >> 27)) >> 9);
  v70 = v69 + (v69 >> 3);
  v71 = v70 + 0x3690DB5D4C331D54 - ((v70 + 0x3690DB5D4C331D54) >> 29) - ((v70 + 0x3690DB5D4C331D54 - ((v70 + 0x3690DB5D4C331D54) >> 29)) >> 9);
  v72 = v71 - (v71 >> 3) - 0xA56C130BF1F620DLL - ((v71 - (v71 >> 3) - 0xA56C130BF1F620DLL) >> 26) - ((v71 - (v71 >> 3) - 0xA56C130BF1F620DLL - ((v71 - (v71 >> 3) - 0xA56C130BF1F620DLL) >> 26)) >> 14);
  v73 = ((v72 - (v72 >> 7)) ^ 0x7BC03D24179C195CLL) - (((v72 - (v72 >> 7)) ^ 0x7BC03D24179C195CLL) >> 27) + ((((v72 - (v72 >> 7)) ^ 0x7BC03D24179C195CLL) - (((v72 - (v72 >> 7)) ^ 0x7BC03D24179C195CLL) >> 27)) >> 9);
  v74 = v73 - (v73 >> 1);
  v75 = v74 - 0x5B46CA940EEFB0F3 - ((v74 - 0x5B46CA940EEFB0F3) >> 28) - ((v74 - 0x5B46CA940EEFB0F3 - ((v74 - 0x5B46CA940EEFB0F3) >> 28)) >> 12);
  v76 = v75 - (v75 >> 3) - 0xC5B39F814D45862 + ((v75 - (v75 >> 3) - 0xC5B39F814D45862) >> 30) + ((v75 - (v75 >> 3) - 0xC5B39F814D45862 + ((v75 - (v75 >> 3) - 0xC5B39F814D45862) >> 30)) >> 10);
  v77 = ((v76 - (v76 >> 3)) ^ 0xEB853C9A73BC9BDLL) - (((v76 - (v76 >> 3)) ^ 0xEB853C9A73BC9BDLL) >> 27) + ((((v76 - (v76 >> 3)) ^ 0xEB853C9A73BC9BDLL) - (((v76 - (v76 >> 3)) ^ 0xEB853C9A73BC9BDLL) >> 27)) >> 12);
  v78 = (LODWORD(STACK[0x4A8]) >> 1) & 0x17D8761B;
  LODWORD(STACK[0x498]) = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x330]) ^ a46 ^ a47 ^ a6 ^ LODWORD(STACK[0x318]) ^ STACK[0x2B0] ^ LODWORD(STACK[0x294]) ^ STACK[0x338];
  v79 = a56 + 1495912966 - 2 * (a56 & 0x5929D216 ^ STACK[0x428] & 0x10);
  LODWORD(STACK[0x428]) = v78 ^ LODWORD(STACK[0x488]) ^ (a57 + a65 + a53 + 1) ^ v67 ^ v70 ^ (v70 >> 1) & 0x17D8761B ^ v74 ^ (v74 >> 1) & 0x17D8761B ^ v66 & ((v77 + (v77 >> 1)) >> 1) ^ (v77 + (v77 >> 1));
  v80 = v79 ^ LODWORD(STACK[0x480]) ^ 0x5AB71E39;
  v81 = *(*(&off_1006B4E30 + (a2 ^ 0x1541)) + ((a2 - 234) ^ 0x1442u));
  v82 = v81 ^ (((v81 ^ 0x571F2620) & (LODWORD(STACK[0x2AC]) ^ 0x864B9C5C) ^ v81 & 0xBE2C056C) >> 1) ^ 0x5C192431;
  v83 = 4 * (LOBYTE(STACK[0x298]) ^ LOBYTE(STACK[0x380]));
  *(STACK[0x360] + v83) = LODWORD(STACK[0x480]) ^ a56 ^ ((v82 & STACK[0x308]) >> LODWORD(STACK[0x354])) ^ ((v82 & STACK[0x304]) << LODWORD(STACK[0x350]));
  *(STACK[0x368] + v83) = v80 ^ *(STACK[0x458] + 232);
  return (*(STACK[0x4E0] + 8 * a2))(5186);
}

uint64_t sub_1002C4858(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, uint64_t a49, uint64_t a50, unsigned int a51, unsigned int a52, int a53, int a54, uint64_t a55, int a56, unsigned int a57, int a58, int a59, unsigned int a60, int a61, int a62, int a63)
{
  v97 = STACK[0x328];
  if ((STACK[0x4D0] & 2) != 0)
  {
    v97 = STACK[0x320];
  }

  LODWORD(STACK[0x4D0]) = v97;
  v98 = LODWORD(STACK[0x420]) + LODWORD(STACK[0x470]);
  v99 = a8 & v90;
  v100 = v95 ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x3D4]);
  LODWORD(STACK[0x370]) = 0;
  LODWORD(STACK[0x2BC]) = 0;
  LODWORD(STACK[0x2B0]) = 0;
  v101 = v100 ^ a4 ^ a7 ^ v91 ^ v94 ^ v99;
  LODWORD(STACK[0x318]) = (v96 + 1279) | 0x40C;
  v102 = STACK[0x348];
  v103 = STACK[0x28C];
  v104 = STACK[0x2D4];
  v105 = STACK[0x498];
  v106 = STACK[0x428];
  v107 = LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x498]) ^ v101 ^ LODWORD(STACK[0x428]) ^ v93;
  v108 = v107 ^ 0x4814E70D;
  v109 = ((v107 ^ 0xBF693F84) & (LODWORD(STACK[0x2AC]) ^ 0x240D4960) ^ (v107 ^ 0x4814E70D) & 0x1C6AD050) >> (((v96 - 1) | 0xC) ^ 0xE);
  v110 = STACK[0x344];
  v111 = LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x3DC]) ^ a57 ^ LODWORD(STACK[0x3CC]) ^ a52 ^ LODWORD(STACK[0x4C0]);
  v112 = STACK[0x3F0];
  v113 = a51 ^ LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x3F0]) ^ a48;
  LODWORD(STACK[0x478]) = v93;
  v114 = STACK[0x4B0];
  v115 = v108 ^ 0xFD49B089 ^ v109;
  v116 = v111 ^ v113 ^ LODWORD(STACK[0x4B0]) ^ v98 ^ LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x4C8]);
  v117 = v116 ^ 0xCC70CA6A;
  v118 = STACK[0x2C8];
  v119 = (v116 ^ 0x3B0D12E2) & (LODWORD(STACK[0x2C8]) ^ 0xC42297BA) ^ (v116 ^ 0xCC70CA6A) & 0xCFE60528;
  v120 = STACK[0x30C];
  v121 = STACK[0x350];
  v122 = STACK[0x310];
  LODWORD(STACK[0x290]) = ((v115 & a78) << LODWORD(STACK[0x350])) + ((v115 & STACK[0x30C]) >> LODWORD(STACK[0x310]));
  v123 = STACK[0x304];
  v124 = STACK[0x35C];
  v125 = STACK[0x308];
  v126 = STACK[0x354];
  LODWORD(STACK[0x294]) = (((v117 ^ (v119 >> 1) ^ 0x94CFD88D) & STACK[0x304]) << LODWORD(STACK[0x35C])) ^ (((v117 ^ (v119 >> 1) ^ 0x94CFD88D) & STACK[0x308]) >> LODWORD(STACK[0x354]));
  v740 = (((v114 ^ ((v114 & a87) >> 1)) & v123) << v124) | (((v114 ^ ((v114 & a87) >> 1)) & v125) >> v126);
  v738 = ((v123 & (a57 ^ ((a57 & a87) >> 1))) << v121) + ((v125 & (a57 ^ ((a57 & a87) >> 1))) >> v126);
  v128 = v118 ^ 0xBC49292;
  v743 = (((v112 ^ (((v118 ^ 0xBC49292) & v112) >> 1)) & v120) >> v122) | (((v112 ^ (((v118 ^ 0xBC49292) & v112) >> 1)) & a78) << v121);
  v735 = ((v123 & (v102 ^ ((a87 & v102) >> 1))) << v124) + (((v102 ^ ((a87 & v102) >> 1)) & v120) >> v122);
  LODWORD(STACK[0x4B8]) = (((v98 ^ ((v98 & (v118 ^ 0xBC49292u)) >> 1)) & v123) << v121) | (((v98 ^ ((v98 & (v118 ^ 0xBC49292u)) >> 1)) & v120) >> v126);
  LODWORD(STACK[0x488]) = (((v104 ^ ((a87 & v104) >> 1)) & v120) >> v122) + (((v104 ^ ((a87 & v104) >> 1)) & a78) << v124);
  v129 = v101 ^ (((v101 ^ 0xA5C23E30) & (v118 ^ 0xF0F15FBA) ^ v101 & 0xFB35CD28) >> 1) ^ 0xF5423821;
  LODWORD(STACK[0x348]) = ((v129 & a78) << v124) + ((v129 & v120) >> v122);
  LODWORD(STACK[0x4B0]) = (((a51 ^ ((a51 & a87) >> 1)) & v120) >> v122) | (((a51 ^ ((a51 & a87) >> 1)) & a78) << v124);
  LODWORD(STACK[0x4A8]) = ((v123 & (v103 ^ ((a87 & v103) >> 1))) << v121) ^ ((v125 & (v103 ^ ((a87 & v103) >> 1))) >> v122);
  v130 = LODWORD(STACK[0x4A0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x4A0]) >> 1);
  LODWORD(STACK[0x4A0]) = ((v130 & v120) >> v122) + ((v130 & a78) << v124);
  v131 = v105 ^ (((v105 ^ 0x9ED96846) & (v118 ^ 0x9DC4C94) ^ v105 & 0x218DE06) >> 1) ^ 0x9FD54C45;
  LODWORD(STACK[0x498]) = ((v131 & v125) >> v126) ^ ((v131 & v123) << v121);
  LODWORD(STACK[0x320]) = ((v123 & (v110 ^ ((a87 & v110) >> 1))) << v124) ^ (((v110 ^ ((a87 & v110) >> 1)) & v120) >> v122);
  LODWORD(STACK[0x344]) = (((a52 ^ (((v118 ^ 0xBC49292) & a52) >> 1)) & v123) << v121) ^ (((a52 ^ (((v118 ^ 0xBC49292) & a52) >> 1)) & v125) >> v126);
  v132 = v106 ^ (((v106 ^ 0xA5C23E30) & (v118 ^ 0x99B5AD56) ^ v106 & 0x92713FC4) >> 1) ^ 0xE5E22131;
  LODWORD(STACK[0x490]) = ((v132 & a78) << v121) + ((v132 & v120) >> v126);
  v133 = LODWORD(STACK[0x3DC]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3DC]) >> 1);
  LODWORD(STACK[0x338]) = ((v133 & a78) << v124) ^ ((v133 & v125) >> v126);
  v134 = a48 ^ (((v118 ^ 0xA23CB390) & (a48 ^ 0x159A9E9E) ^ a48 & 0xA9F82102) >> 1) ^ 0x15569E9E;
  LODWORD(STACK[0x480]) = ((v134 & a78) << v124) + ((v134 & v125) >> v126);
  v135 = STACK[0x2AC];
  v136 = LODWORD(STACK[0x478]) ^ (((LODWORD(STACK[0x478]) ^ 0xA5C23E30) & (LODWORD(STACK[0x2AC]) ^ 0xB7CA3E70) ^ STACK[0x478] & 0x8FADA740) >> 1) ^ 0xE7022D31;
  LODWORD(STACK[0x478]) = ((v136 & a78) << v121) | ((v136 & v120) >> v126);
  v137 = LODWORD(STACK[0x468]) ^ (((v118 ^ 0xBC49292u) & STACK[0x468]) >> 1);
  v138 = STACK[0x430];
  v139 = (v118 ^ 0x62DF6352) & (LODWORD(STACK[0x430]) ^ 0x159A9E9E) ^ STACK[0x430] & 0x691BF1C0;
  LODWORD(STACK[0x470]) = ((v137 & v120) >> v126) + ((v137 & v123) << v121);
  LODWORD(STACK[0x330]) = (((v138 ^ (v139 >> 1) ^ 0x1517D6DF) & v123) << v121) ^ (((v138 ^ (v139 >> 1) ^ 0x1517D6DF) & v125) >> v126);
  v140 = LODWORD(STACK[0x454]) ^ (((v118 ^ 0xBC49292u) & STACK[0x454]) >> 1);
  LODWORD(STACK[0x468]) = ((v140 & v123) << v121) + ((v140 & v125) >> v122);
  v141 = LODWORD(STACK[0x460]) ^ ((a87 & STACK[0x460]) >> 1);
  LODWORD(STACK[0x328]) = ((v123 & v141) << v121) | ((v125 & v141) >> v126);
  v142 = LODWORD(STACK[0x438]) ^ ((a87 & STACK[0x438]) >> 1);
  LODWORD(STACK[0x460]) = ((v123 & v142) << v121) + ((v125 & v142) >> v126);
  v143 = LODWORD(STACK[0x3C4]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3C4]) >> 1);
  v144 = LODWORD(STACK[0x3D0]) ^ ((STACK[0x3D0] & a87) >> 1);
  LODWORD(STACK[0x458]) = ((v143 & v120) >> v126) + ((v143 & a78) << v121);
  LODWORD(STACK[0x454]) = ((v144 & v123) << v121) ^ ((v144 & v120) >> v122);
  v145 = LODWORD(STACK[0x448]) ^ ((a87 & STACK[0x448]) >> 1);
  v146 = STACK[0x3E8];
  v147 = (v118 ^ 0x3F93AA46) & (LODWORD(STACK[0x3E8]) ^ 0x66952FE4) ^ STACK[0x3E8] & 0x345738D4;
  v148 = ((v123 & v145) << v124) + ((v125 & v145) >> v126);
  LODWORD(STACK[0x438]) = (((a60 ^ (((v118 ^ 0xBC49292) & a60) >> 1)) & v120) >> v122) ^ (((a60 ^ (((v118 ^ 0xBC49292) & a60) >> 1)) & a78) << v121);
  LODWORD(STACK[0x448]) = (((v146 ^ (v147 >> 1) ^ 0x749FBB87) & a78) << v121) + (((v146 ^ (v147 >> 1) ^ 0x749FBB87) & v125) >> v126);
  v149 = LODWORD(STACK[0x2DC]) ^ ((a87 & STACK[0x2DC]) >> 1);
  LODWORD(STACK[0x430]) = ((v123 & v149) << v124) | ((v149 & v120) >> v122);
  v150 = LODWORD(STACK[0x408]) ^ ((a87 & STACK[0x408]) >> 1);
  v151 = ((v123 & v150) << v121) + ((v125 & v150) >> v126);
  v152 = LODWORD(STACK[0x2D8]) ^ (((v118 ^ 0xBC49292u) & STACK[0x2D8]) >> 1);
  LODWORD(STACK[0x428]) = ((v152 & v120) >> v122) | ((v152 & a78) << v124);
  v153 = LODWORD(STACK[0x3F8]) ^ ((a87 & STACK[0x3F8]) >> 1);
  v154 = LODWORD(STACK[0x3A0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3A0]) >> 1);
  LODWORD(STACK[0x420]) = ((v154 & v120) >> v122) | ((v154 & a78) << v124);
  v155 = LODWORD(STACK[0x3F4]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3F4]) >> 1);
  v156 = LODWORD(STACK[0x3A8]) ^ ((a87 & STACK[0x3A8]) >> 1);
  v157 = ((v123 & v153) << v121) + ((v125 & v153) >> v126);
  v158 = ((v155 & v125) >> v122) ^ ((v155 & v123) << v124);
  v159 = LODWORD(STACK[0x410]) ^ (((v118 ^ 0xBC49292u) & STACK[0x410]) >> 1);
  LODWORD(STACK[0x408]) = ((v156 & a78) << v121) ^ ((v156 & v120) >> v126);
  v160 = ((v159 & a78) << v124) + ((v159 & v120) >> v122);
  v161 = LODWORD(STACK[0x2E0]) ^ ((a87 & STACK[0x2E0]) >> 1);
  v162 = LODWORD(STACK[0x400]) ^ (((v118 ^ 0xBC49292u) & STACK[0x400]) >> 1);
  v163 = LODWORD(STACK[0x2E8]) ^ ((a87 & STACK[0x2E8]) >> 1);
  LODWORD(STACK[0x400]) = ((v123 & v161) << v121) ^ ((v125 & v161) >> v126);
  LODWORD(STACK[0x3F8]) = ((v125 & v163) >> v126) + ((v163 & a78) << v124);
  v164 = LODWORD(STACK[0x418]) ^ (((v118 ^ 0xBC49292u) & STACK[0x418]) >> 1);
  v165 = ((v162 & v120) >> v122) ^ ((v162 & v123) << v121);
  v166 = ((v164 & v123) << v121) + ((v164 & v120) >> v122);
  v167 = LODWORD(STACK[0x388]) ^ ((a87 & STACK[0x388]) >> 1);
  v168 = LODWORD(STACK[0x4C8]) ^ (((LODWORD(STACK[0x4C8]) ^ 0xD9954C44) & (v118 ^ 0x1BA58A8) ^ STACK[0x4C8] & 0xA7ECA3A) >> 1) ^ 0xDD9F6844;
  LODWORD(STACK[0x3F0]) = ((v125 & v167) >> v126) ^ ((v167 & a78) << v124);
  v169 = ((v168 & v125) >> v122) | ((v168 & v123) << v121);
  v170 = LODWORD(STACK[0x2D0]) ^ ((a87 & STACK[0x2D0]) >> 1);
  LODWORD(STACK[0x3E8]) = ((v170 & a78) << v124) | ((v170 & v120) >> v126);
  v171 = LODWORD(STACK[0x3E0]) ^ ((STACK[0x3E0] & a87) >> 1);
  v172 = LODWORD(STACK[0x3B0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x3B0]) >> 1);
  v173 = ((v171 & v125) >> v122) | ((v171 & v123) << v121);
  v174 = LODWORD(STACK[0x440]) ^ ((a87 & STACK[0x440]) >> 1);
  LODWORD(STACK[0x3E0]) = ((v172 & v120) >> v126) ^ ((v172 & a78) << v124);
  v175 = LODWORD(STACK[0x390]) ^ (((v118 ^ 0xBC49292u) & STACK[0x390]) >> 1);
  v176 = ((v123 & v174) << v121) + ((v125 & v174) >> v122);
  v177 = LODWORD(STACK[0x3E4]) ^ ((a87 & STACK[0x3E4]) >> 1);
  LODWORD(STACK[0x3DC]) = ((v175 & a78) << v124) ^ ((v175 & v120) >> v126);
  v178 = LODWORD(STACK[0x2F0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x2F0]) >> 1);
  v179 = ((v123 & v177) << v121) + ((v177 & v120) >> v126);
  LODWORD(STACK[0x3D4]) = ((v178 & v125) >> v122) | ((v178 & a78) << v124);
  v180 = LODWORD(STACK[0x4C0]) ^ (((LODWORD(STACK[0x4C0]) ^ 0x159A9E9E) & (v135 ^ 0x6DC340C) ^ STACK[0x4C0] & 0x3EBBAD3C) >> 1) ^ 0x1FD7D891;
  v181 = LODWORD(STACK[0x4D0]) ^ (((v118 ^ 0xBC49292u) & STACK[0x4D0]) >> 1);
  v182 = ((v125 & v180) >> v126) | ((v180 & a78) << v121);
  LODWORD(STACK[0x3D0]) = ((v181 & v120) >> v122) + ((v181 & v123) << v124);
  v183 = LODWORD(STACK[0x3D8]) ^ ((a87 & STACK[0x3D8]) >> 1);
  v184 = LODWORD(STACK[0x3B4]) ^ ((v128 & STACK[0x3B4]) >> 1);
  v185 = ((v123 & v183) << v121) | ((v183 & v120) >> v126);
  v186 = LODWORD(STACK[0x3C8]) ^ ((STACK[0x3C8] & a87) >> 1);
  LODWORD(STACK[0x3C8]) = ((v184 & a78) << v124) ^ ((v184 & v125) >> v122);
  v187 = ((v186 & v120) >> v122) + ((v186 & v123) << v124);
  v188 = LODWORD(STACK[0x2F8]) ^ ((v128 & STACK[0x2F8]) >> 1);
  LODWORD(STACK[0x3C4]) = ((v188 & v125) >> v126) ^ ((v188 & a78) << v121);
  v189 = LODWORD(STACK[0x3CC]) ^ (((LODWORD(STACK[0x3CC]) ^ 0x15E5862E) & (v135 ^ 0x7F7EE4C2) ^ STACK[0x3CC] & 0x47197DF2) >> 1) ^ 0x1765043F;
  v190 = ((v123 & v189) << v124) | ((v125 & v189) >> v122);
  v191 = LODWORD(STACK[0x3B8]) ^ ((v128 & STACK[0x3B8]) >> 1);
  LODWORD(STACK[0x3B4]) = ((v191 & v120) >> v126) | ((v191 & a78) << v121);
  v192 = LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x328]);
  LODWORD(STACK[0x2D8]) = v182;
  LODWORD(STACK[0x440]) = v148;
  v193 = LODWORD(STACK[0x460]) ^ v148;
  LODWORD(STACK[0x410]) = v151;
  LODWORD(STACK[0x418]) = v157;
  LODWORD(STACK[0x2DC]) = v176;
  LODWORD(STACK[0x3D8]) = v179;
  v194 = v192 ^ v182 ^ v193 ^ v151 ^ v157 ^ v176 ^ v179;
  v195 = STACK[0x380];
  v196 = STACK[0x298];
  v197 = LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x380]);
  LODWORD(STACK[0x3CC]) = v185;
  LODWORD(STACK[0x2D0]) = v187;
  LODWORD(STACK[0x3B8]) = v190;
  LODWORD(STACK[0x3B0]) = v197 ^ v735;
  v198 = v194 ^ v185 ^ v187 ^ v738 ^ v190 ^ v197 ^ v735;
  v199 = LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x458]);
  LODWORD(STACK[0x2F8]) = v158;
  LODWORD(STACK[0x2F0]) = v160;
  LODWORD(STACK[0x2D4]) = v738 ^ v92;
  LODWORD(STACK[0x3A8]) = v740 ^ v92;
  LODWORD(STACK[0x2E8]) = v165;
  LODWORD(STACK[0x3F4]) = v166;
  v200 = v198 ^ v199 ^ v158 ^ v160 ^ v165 ^ v166 ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x480]) ^ v740 ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x448]);
  LODWORD(STACK[0x3A0]) = v197 ^ v743;
  v201 = v197 ^ v743 ^ LODWORD(STACK[0x4B8]);
  LODWORD(STACK[0x3E4]) = v173;
  v202 = v201 ^ v173 ^ LODWORD(STACK[0x454]);
  LODWORD(STACK[0x2E0]) = v169;
  LODWORD(STACK[0x28C]) = v200 ^ v202 ^ v169 ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x478]);
  v203 = STACK[0x378];
  v204 = (v135 ^ 0x2339FAF6) & a68 ^ STACK[0x378] & 0x1B5E63C6;
  LODWORD(STACK[0x4D0]) = v197 ^ a59;
  v205 = a58 ^ LODWORD(STACK[0x398]);
  LODWORD(STACK[0x398]) = a58 ^ a67 ^ a54;
  LODWORD(STACK[0x390]) = a58 ^ a63 ^ a54;
  LODWORD(STACK[0x4C8]) = a58 ^ a61 ^ a54;
  LODWORD(STACK[0x388]) = v205 ^ a54;
  LODWORD(STACK[0x380]) = v195 ^ a65 ^ v196;
  LODWORD(STACK[0x378]) = v195 ^ a66 ^ v196;
  LODWORD(STACK[0x4C0]) = v195 ^ a64 ^ v196;
  v741 = ((v123 & (v203 ^ (v204 >> 1) ^ 0xB6721080)) << v124) | ((v125 & (v203 ^ (v204 >> 1) ^ 0xB6721080)) >> v122);
  v730 = (((a86 ^ ((v128 & a86) >> 1)) & a78) << v121) ^ (((a86 ^ ((v128 & a86) >> 1)) & v120) >> v126);
  v206 = STACK[0x2C8];
  v207 = a71 ^ (((LODWORD(STACK[0x2C8]) ^ 0xDE9CE8CC) & (a71 ^ 0x6BA73B1A) ^ a71 & 0xD5587A5E) >> 1) ^ 0x4B272616;
  v758 = ((v125 & (a88 ^ ((a87 & a88) >> 1))) >> v122) ^ (((a88 ^ ((a87 & a88) >> 1)) & a78) << v121);
  v208 = (v135 ^ 0x40934DB4) & (a70 ^ 0xD62F863C) ^ a70 & 0x78F4D484;
  LODWORD(STACK[0x298]) = ((v207 & v120) >> v126) + ((v207 & v123) << v124);
  v733 = ((v123 & (a70 ^ (v208 >> 1) ^ 0xFE3DC43F)) << v124) + ((v125 & (a70 ^ (v208 >> 1) ^ 0xFE3DC43F)) >> v126);
  v739 = (((a79 ^ ((v128 & a79) >> 1)) & v125) >> v122) ^ (((a79 ^ ((v128 & a79) >> 1)) & v123) << v124);
  v209 = a73 ^ (((v135 ^ 0x6F4956C8) & (a73 ^ 0x607B5D98) ^ a73 & 0x572ECFF8u) >> 1) ^ 0x406E7B55;
  v736 = ((v209 & a78) << v121) | ((v209 & v120) >> v126);
  v721 = (((a69 ^ ((v128 & a69) >> 1)) & v123) << v124) | (((a69 ^ ((v128 & a69) >> 1)) & v125) >> v122);
  v210 = LODWORD(STACK[0x2C0]) ^ ((a87 & STACK[0x2C0]) >> 1);
  v720 = ((v123 & (a74 ^ ((a87 & a74) >> 1))) << v124) | ((v125 & (a74 ^ ((a87 & a74) >> 1))) >> v122);
  v211 = a80 ^ ((v128 & a80) >> 1);
  v757 = ((v210 & a78) << v121) ^ ((v210 & v120) >> v126);
  v756 = ((v211 & a78) << v121) ^ ((v211 & v120) >> v126);
  v212 = a75 ^ (((v135 ^ 0xCC953C96) & STACK[0x29C] ^ a75 & 0xF4F2A5A6) >> 1) ^ 0xFB1E2206;
  LODWORD(STACK[0x29C]) = ((v123 & v212) << v124) | ((v125 & v212) >> v122);
  v213 = LODWORD(STACK[0x31C]) ^ ((a87 & STACK[0x31C]) >> 1);
  v729 = (((a72 ^ ((v128 & a72) >> 1)) & a78) << v121) ^ (((a72 ^ ((v128 & a72) >> 1)) & v120) >> v126);
  v214 = STACK[0x2A8];
  v215 = (v206 ^ 0xE14A0E32) & (LODWORD(STACK[0x2A8]) ^ 0xB5239B14) ^ STACK[0x2A8] & 0xEA8E9CA0;
  LODWORD(STACK[0x31C]) = ((v123 & v213) << v124) + ((v213 & v120) >> v122);
  v216 = *(a89 + (a76 & 0xFE ^ 0x12));
  HIDWORD(v217) = v216 ^ 0x28;
  LODWORD(v217) = v216 << 24;
  v719 = (((v214 ^ (v215 >> 1) ^ 0xE522D715) & a78) << v121) | (((v214 ^ (v215 >> 1) ^ 0xE522D715) & v125) >> v126);
  LOBYTE(v206) = (v217 >> 31) ^ 0x52;
  v218 = *(a89 + (STACK[0x218] & 0xFE ^ 0xF));
  HIDWORD(v217) = v218 ^ 0x28;
  LODWORD(v217) = v218 << 24;
  v219 = (((STACK[0x228] - ((2 * STACK[0x228]) & 0xF8) + 124) ^ *(STACK[0x210] + (STACK[0x228] & 0xFE ^ 0xDA)) ^ 0x30) << 8) & 0xFF00FFFF | (((v217 >> 31) ^ 0x47) << 16);
  v220 = STACK[0x200];
  v221 = *(a89 + (STACK[0x240] & 0xFE ^ 0x5A));
  HIDWORD(v217) = v221 ^ 0x28;
  LODWORD(v217) = v221 << 24;
  v222 = (((STACK[0x238] - ((2 * STACK[0x238]) & 0x78) - 68) ^ 0xA6 ^ *(STACK[0x200] + (STACK[0x238] & 0xFE ^ 0x90))) << 8) | ((((STACK[0x248] ^ 0xFFFFFFBE) - ((2 * (STACK[0x248] ^ 0xFFFFFFBE) + 26) & 0x26)) ^ *(a90 + (STACK[0x248] & 0xFE ^ 0xBA)) ^ 0x3C) << 24) | (((STACK[0x260] + (~(2 * STACK[0x260]) | 0x87) - 67) ^ *(STACK[0x200] + (STACK[0x260] & 0xFE ^ 0xB)) ^ 0x40) << 16);
  v223 = *(STACK[0x210] + (STACK[0x258] & 0xFE ^ 0x34)) ^ 0x7C;
  v224 = v219 | (((STACK[0x268] - ((2 * STACK[0x268]) & 0xF8) + 124) ^ 0xD7 ^ *(STACK[0x210] + (STACK[0x268] & 0xFE ^ 0xA5))) << 24) | v223 ^ STACK[0x258] & 0xFE;
  v225 = ((((STACK[0x250] - ((2 * STACK[0x250]) & 0x78) - 68) ^ 0x35 ^ *(STACK[0x200] + (STACK[0x250] & 0xFE ^ 0xA5))) << 24) | (((STACK[0x270] - ((2 * STACK[0x270]) & 0xF8) + 124) ^ 0xDC ^ *(STACK[0x210] + (STACK[0x270] & 0xFE ^ 0x31))) << 8) | (*(STACK[0x200] + (STACK[0x230] & 0xFE ^ 0x3F)) ^ STACK[0x230] & 0xFE ^ 0xBC) & 0xFF00FFFF | (v206 << 16)) - 2 * ((((((STACK[0x250] - ((2 * STACK[0x250]) & 0x78) - 68) ^ 0x35 ^ *(STACK[0x200] + (STACK[0x250] & 0xFE ^ 0xA5))) << 24) | (((STACK[0x270] - ((2 * STACK[0x270]) & 0xF8) + 124) ^ 0xDC ^ *(STACK[0x210] + (STACK[0x270] & 0xFE ^ 0x31))) << 8)) & 0x6B6E46BF | (*(STACK[0x200] + (STACK[0x230] & 0xFE ^ 0x3F)) ^ STACK[0x230] & 0xFE ^ 0xBC) & 0x6B0046BF | (v206 << 16) & 0x6B6E46BF) ^ (*(STACK[0x200] + (STACK[0x230] & 0xFE ^ 0x3F)) ^ STACK[0x230] & 0xFE ^ 0xBC) & 0xC);
  v225 -= 345094477;
  v226 = (STACK[0x280] + (~(2 * STACK[0x280]) | 7) + 125) ^ 0xFD ^ *(STACK[0x210] + (STACK[0x280] & 0xFE ^ 0x41));
  v227 = *(STACK[0x210] + (STACK[0x220] & 0xFE ^ 0x6C)) ^ STACK[0x220] & 0xFE ^ 0x7C;
  v228 = (((v217 >> 31) ^ 0xBA) << 16) | (((STACK[0x278] - ((2 * STACK[0x278]) & 0x78) - 68) ^ 0x2A ^ *(STACK[0x200] + (STACK[0x278] & 0xFE ^ 0x7C))) << 8) | v227 | ((((a77 ^ 0xFFFFFFEA) - ((2 * (a77 ^ 0xFFFFFFEA) + 26) & 0x26)) ^ 0x6C ^ *(a90 + (a77 & 0xFE ^ 0xEELL))) << 24);
  v229 = v228 - 2 * (v228 & 0x420BA4EF ^ v227 & 0xA) + 1108059365;
  v230 = v225 ^ 0x20F354A8;
  LODWORD(STACK[0x2C0]) = v128;
  v231 = (v225 ^ 0x93D79B1E) & v128 ^ STACK[0x2C8] & 0x78B9DDD2;
  v232 = (v226 | v222) - 2 * ((v226 | v222) & 0x6795056F ^ v226 & 0xC) + 1737819491;
  v233 = STACK[0x2AC];
  v754 = v232 ^ 0xF3810BEB;
  v234 = v232 ^ 0xF3810BEB ^ (((v232 ^ 0x9525BAD8) & a87 ^ STACK[0x2AC] & 0xF2B0BF90) >> 1);
  v235 = (v229 ^ 0x5BF44CF2) & a87 ^ STACK[0x2AC] & 0x19FFE8EE;
  v755 = v230;
  v753 = v229 ^ 0xC8792E23;
  v236 = v224 - 2 * (v224 & 0x499A069B ^ v223 & 1) - 912652646;
  v237 = ((((v229 ^ 0xC8792E23 ^ (v235 >> 1) ^ 0x4535C6B4) & v123 | STACK[0x2A0] & 0xC374889B) ^ 0xC374889B) << v124) + (((v229 ^ 0xC8792E23 ^ (v235 >> 1) ^ 0x86414E2F) & v125) >> v126);
  v752 = v236 ^ 0x2BBD291F;
  v238 = v236 ^ 0x2BBD291F ^ (((v236 ^ 0xC99A06F2) & (LODWORD(STACK[0x2C8]) ^ 0x502B5F6E) ^ v236 & 0x5BEFCDFC) >> 1);
  v239 = STACK[0x2CC];
  HIDWORD(v751) = (((LODWORD(STACK[0x2CC]) ^ 0x541C90E3) + 2078039611) ^ ((LODWORD(STACK[0x2CC]) ^ 0xA3770BAF) - 1934113417) ^ ((LODWORD(STACK[0x2CC]) ^ 0xD75E42C4) - 123827170)) + 1941017705;
  LODWORD(v751) = ((v123 & ((v233 >> 1) & 0x2AEEEB6F ^ 0x5DFF1ED6)) << v124) ^ ((((v233 >> 1) & 0x2AEEEB6F ^ 0x5DFF1ED6) & v120) >> v122) ^ (((v234 ^ 0x8C04422B) & v125) >> v126) ^ ((((v234 ^ 0xF8964B1) & v123 | STACK[0x2A0] & 0x838D269A) ^ 0x838D269A) << v124);
  HIDWORD(v750) = (((((v230 ^ (v231 >> 1) ^ 0xD73FE438) & a78 | STACK[0x2A4] & 0x18E2BE15) ^ 0x18E2BE15) << v121) + (((v230 ^ (v231 >> 1) ^ 0xCFDD5A2D) & v120) >> v122)) ^ ((((a62 & 0x5301E87B ^ 0xA70398BF) & a78) << v121) | (((a62 & 0x5301E87B ^ 0xA70398BF) & v125) >> v126));
  LODWORD(v750) = v237 ^ (((((v233 >> 1) & 0x72305F42 ^ 0xF450F285) & a78) << v121) | ((((v233 >> 1) & 0x72305F42 ^ 0xF450F285) & v120) >> v126));
  HIDWORD(v749) = (((((v238 ^ 0xAB02A567) & a78 | STACK[0x2A4] & 0x6DE088F2) ^ 0x6DE088F2) << v121) + (((v238 ^ 0xC6E22D95) & v120) >> v122)) ^ ((((a62 & 0x4EF74B89 ^ 0x990CDE1B) & v125) >> v122) + (((a62 & 0x4EF74B89 ^ 0x990CDE1B) & v123) << v124));
  v240 = a62 & 0x4A3C0F51 ^ 0x945817E3;
  v241 = (LODWORD(STACK[0x2AC]) >> 1) & 0x4A3C0F51 ^ 0x9C4812B2;
  LODWORD(STACK[0x280]) = ((v123 & v241) << v121) + ((v241 & v120) >> v126);
  LODWORD(STACK[0x278]) = ((v123 & v241) << v124) | ((v125 & v241) >> v126);
  LODWORD(STACK[0x258]) = v240;
  LODWORD(STACK[0x260]) = v240 & a78;
  LODWORD(STACK[0x270]) = ((v240 & a78) << v121) | ((v240 & v120) >> v122);
  v242 = a62 & 0x34E0FD25 ^ 0x6D21B34A;
  v243 = (v233 >> 1) & 0x34E0FD25 ^ 0x7DE1364B;
  LODWORD(STACK[0x268]) = ((v123 & v243) << v121) + ((v243 & v120) >> v126);
  LODWORD(STACK[0x250]) = ((v242 & v120) >> v122) | ((v242 & v123) << v121);
  LODWORD(STACK[0x240]) = ((v125 & v243) >> v126) + ((v243 & a78) << v124);
  v244 = a62 & 0x650ACAC ^ 0x8E15151;
  v245 = v244 & a78;
  v246 = v244 & v120;
  LODWORD(STACK[0x248]) = (v246 >> v122) | (v245 << v121);
  LODWORD(STACK[0x220]) = (v233 >> 1) & 0x650ACAC ^ 0x8B1D5D1;
  LODWORD(STACK[0x238]) = (v245 << v124) | (v246 >> v126);
  v247 = (v233 >> 1) & 0x791BD001 ^ 0xEA246002;
  LODWORD(STACK[0x228]) = v247;
  LODWORD(STACK[0x230]) = v247 & v120;
  LODWORD(STACK[0x218]) = ((v247 & v120) >> v122) | ((v247 & a78) << v121);
  v248 = a62 & 0x791BD001 ^ 0xF335E003;
  LODWORD(v749) = ((v248 & v125) >> v126) + ((v248 & v123) << v124);
  HIDWORD(v748) = ((v248 & a78) << v121) | ((v248 & v125) >> v122);
  v725 = (v233 >> 1) & 0xC2C4B16 ^ 0x1478DE3D;
  v724 = a62 & 0xC2C4B16 ^ 0x1C78DF2D;
  LODWORD(v748) = 615541889 * ((LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x28C])) - LODWORD(STACK[0x294]));
  v249 = (v233 >> 1) & 0x60CF7D4F ^ 0xC19DB697;
  v250 = a62 & 0x60CF7D4F ^ 0xC15CB3D6;
  v723 = ((v250 & v120) >> v126) + ((v250 & v123) << v124);
  v722 = ((v250 & a78) << v124) | ((v250 & v120) >> v122);
  v251 = a62 & 0x6749B044 ^ 0xCBD360C9;
  v252 = (v233 >> 1) & 0x6749B044 ^ 0xCA92E089;
  v253 = a62 & 0x61011275 ^ 0xC30224AA;
  v254 = (v233 >> 1) & 0x61011275 ^ 0xC20324FB;
  v255 = (v233 >> 1) & 0x3A14EA7;
  v718 = (v233 & 0x600180C ^ 0xFFFFE7FF) + 121806158 + (v255 ^ 0x214C80);
  v256 = a62 & 0x3A14EA7 ^ 0x6E2D54F;
  v257 = v255 ^ 0x763D1CE;
  v258 = (v233 >> 1) & 0x22B55C3C ^ 0x455BF460;
  v259 = a62 & 0x22B55C3C ^ 0x45CAF070;
  v711 = (v251 & v123) << v124;
  v260 = (v251 & v125) >> v122;
  v717 = v758 ^ v711 ^ v260;
  v715 = ((v251 & v123) << v121) | v260;
  v713 = ((v123 & v252) << v121) | ((v252 & v120) >> v122);
  v261 = (v253 & v120) >> v126;
  v262 = (v253 & a78) << v121;
  v710 = ((v253 & v120) >> v122) | v262;
  v712 = v261 | v262;
  v708 = v261 + ((v253 & a78) << v124);
  v706 = ((v253 & v123) << v124) | ((v253 & v125) >> v122);
  v704 = ((v254 & a78) << v121) + ((v254 & v120) >> v126);
  v263 = (v256 & v123) << v121;
  v264 = (v256 & v125) >> v122;
  v702 = v264 | v263;
  v699 = ((v256 & v120) >> v126) | v263;
  v697 = ((v123 & v257) << v121) | ((v257 & v120) >> v126);
  v265 = (v257 & a78) << v124;
  v266 = (v125 & v257) >> v122;
  v701 = v266 + v265;
  v696 = v266 | v265;
  v267 = (v259 & a78) << v124;
  v268 = (v259 & v120) >> v122;
  v694 = v259 & v125;
  HIDWORD(v747) = ((v259 & v125) >> v122) | v267;
  LODWORD(v747) = v268 + v267;
  v269 = v259 & v123;
  HIDWORD(v746) = ((v259 & v123) << v121) + v268;
  v270 = (v123 & v258) << v121;
  v271 = (v125 & v258) >> v126;
  LODWORD(v746) = v270 + ((v258 & v120) >> v126);
  HIDWORD(v745) = v270 | v271;
  v689 = v271 + ((v258 & a78) << v124);
  LODWORD(STACK[0x2CC]) = (((v239 ^ 0x1032E433) + 1072835307) ^ ((v239 ^ 0xFBC25BEF) - 738028233) ^ ((v239 ^ 0xCBC56654) - 469391218)) - 1794414187;
  LODWORD(v745) = LODWORD(STACK[0x2C8]) ^ 0xB548F200;
  HIDWORD(v744) = LODWORD(STACK[0x2C8]) ^ 0x7F1DCB40;
  HIDWORD(v686) = LODWORD(STACK[0x2C8]) ^ 0xDEC07E4;
  LODWORD(v744) = v233 & 0xE7E1ACEC;
  HIDWORD(v742) = v233 ^ 0x329E99E8;
  LODWORD(v686) = v233 ^ 0x731C0AA6;
  v272 = v741 ^ v736;
  LODWORD(v742) = v741 ^ v736 ^ ((STACK[0x258] & v125) >> v122) ^ (LODWORD(STACK[0x260]) << v124) ^ v739;
  v273 = LODWORD(STACK[0x278]) ^ v739;
  v274 = LODWORD(STACK[0x270]) ^ v739;
  HIDWORD(v737) = v272 ^ LODWORD(STACK[0x280]) ^ v739;
  LODWORD(v737) = v272 ^ v273;
  HIDWORD(v734) = v272 ^ v274;
  v275 = v719 ^ v733;
  LODWORD(v734) = v719 ^ v733 ^ ((v242 & a78) << v124) ^ ((v242 & v125) >> v122);
  HIDWORD(v732) = v275 ^ LODWORD(STACK[0x268]);
  LODWORD(v732) = v275 ^ LODWORD(STACK[0x250]);
  HIDWORD(v731) = v275 ^ LODWORD(STACK[0x240]);
  v276 = v730 ^ v729;
  v277 = v123 & STACK[0x220];
  v278 = v125 & STACK[0x220];
  LODWORD(v731) = v730 ^ v729 ^ LODWORD(STACK[0x248]);
  HIDWORD(v728) = v276 ^ (v278 >> v126) ^ (v277 << v124);
  LODWORD(v728) = v276 ^ (v278 >> v122) ^ (v277 << v121);
  HIDWORD(v727) = v276 ^ LODWORD(STACK[0x238]);
  LODWORD(v727) = LODWORD(STACK[0x218]) ^ v757 ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x290]);
  HIDWORD(v726) = (LODWORD(STACK[0x230]) >> v126) ^ ((v123 & STACK[0x228]) << v124);
  v279 = (v125 & v725) >> v126;
  v280 = (v725 & a78) << v124;
  LODWORD(v726) = v279 + v280;
  HIDWORD(a45) = v280 ^ v279;
  v281 = (v724 & v123) << v121;
  v282 = (v724 & v120) >> v122;
  LODWORD(a44) = v282 | v281;
  LODWORD(a43) = v281 ^ v282;
  v283 = v123;
  v284 = LODWORD(STACK[0x298]) ^ v756;
  LODWORD(a42) = v284 ^ (((v125 & v249) >> v122) | ((v249 & a78) << v121));
  LODWORD(a41) = v284 ^ v723;
  LODWORD(a40) = v284 ^ ((v125 & v249) >> v126) ^ ((v123 & v249) << v121);
  LODWORD(a39) = v284 ^ v722;
  v285 = (v252 & v120) >> v126;
  v286 = v123 & v254;
  v287 = v125 & v254;
  v288 = v287 >> v122;
  v289 = v286 << v124;
  v290 = (v286 << v124) + (v287 >> v126);
  v291 = (v286 << v121) | v288;
  v292 = v288 ^ v289;
  v293 = v719 ^ v721;
  v294 = v719 ^ v720;
  v295 = (((v718 + 1) & a78) << v124) ^ (((v718 + 1) & v120) >> v126);
  LODWORD(a38) = LODWORD(STACK[0x29C]) ^ v717;
  LODWORD(a37) = LODWORD(STACK[0x29C]) ^ v758 ^ ((v251 & v120) >> v126) ^ v711;
  LODWORD(a36) = LODWORD(STACK[0x29C]) ^ v758 ^ (((v125 & v252) >> v122) + ((v252 & a78) << v121));
  LODWORD(a35) = LODWORD(STACK[0x29C]) ^ v758 ^ v285 ^ ((v252 & a78) << v121);
  HIDWORD(v716) = LODWORD(STACK[0x29C]) ^ v758 ^ v715;
  LODWORD(v716) = LODWORD(STACK[0x29C]) ^ v758 ^ (((v252 & a78) << v124) + v285);
  HIDWORD(v714) = LODWORD(STACK[0x29C]) ^ v758 ^ v713;
  LODWORD(v714) = LODWORD(STACK[0x29C]) ^ v758 ^ ((v251 & v125) >> v126) ^ ((v251 & a78) << v124);
  v296 = v121;
  HIDWORD(a32) = v293 ^ v712;
  LODWORD(a31) = v293 ^ v292;
  LODWORD(v709) = v293 ^ v290;
  HIDWORD(v709) = v293 ^ v710;
  HIDWORD(v707) = v293 ^ v708;
  LODWORD(v707) = v293 ^ v291;
  HIDWORD(v705) = v293 ^ v706;
  LODWORD(v705) = v293 ^ v704;
  HIDWORD(v703) = v294 ^ v295;
  v297 = v126;
  LODWORD(v703) = v294 ^ v702;
  HIDWORD(v700) = v294 ^ v701;
  LODWORD(v700) = v294 ^ v699;
  HIDWORD(v698) = v294 ^ (((v256 & a78) << v124) + v264);
  LODWORD(v698) = v294 ^ v697;
  HIDWORD(v695) = v294 ^ v696;
  LODWORD(v695) = (v694 >> v126) ^ (v269 << v124);
  v298 = STACK[0x318];
  HIDWORD(v693) = ((v258 & a78) << v121) ^ ((v258 & v120) >> v122);
  LODWORD(v693) = LODWORD(STACK[0x2A8]) ^ 0xAAF1EA64;
  HIDWORD(v692) = LODWORD(STACK[0x2A8]) ^ 0x69D2DCB5;
  LODWORD(v692) = STACK[0x2A0] & 0xA099B13F;
  HIDWORD(v691) = STACK[0x2A0] & 0x10DFB442;
  LODWORD(v691) = STACK[0x2A4] & 0xAB696B43;
  HIDWORD(v690) = STACK[0x2A4] & 0x2A05C292;
  HIDWORD(v688) = LODWORD(STACK[0x31C]) ^ -LODWORD(STACK[0x31C]);
  LODWORD(v688) = v756 ^ v689;
  LODWORD(v690) = LODWORD(STACK[0x288]) ^ a81;
  HIDWORD(v687) = a88 ^ v690;
  LODWORD(STACK[0x2C8]) = STACK[0x358];
  LODWORD(STACK[0x318]) = v298;
  v299 = STACK[0x4D8];
  v300 = *(a89 + (*(STACK[0x4D8] + 11) ^ 0xB2));
  HIDWORD(v217) = v300 ^ 0x28;
  LODWORD(v217) = v300 << 24;
  v301 = v217 >> 31;
  v302 = *(a89 + (*(STACK[0x4D8] + 8) ^ 0xE6));
  HIDWORD(v217) = v302 ^ 0x28;
  LODWORD(v217) = v302 << 24;
  v303 = v217 >> 31;
  LODWORD(v687) = (v298 - 7335) | 0xA00;
  v304 = *(STACK[0x4D8] + ((v687 + 2086226407) ^ 0x7C595445u));
  LODWORD(STACK[0x218]) = v298 - 2315;
  LOBYTE(v281) = ((v304 ^ 0x83) + 3) ^ ((v304 ^ 0x4A) - 52) ^ (v298 - 11 + (v304 ^ 0xCD) + 73);
  v305 = v301 ^ 0xC6;
  v306 = v305 | ((*(a90 + v304) ^ 0xDA ^ (v281 - ((2 * v281 + 14) & 0x26) + 122)) << 8);
  v307 = v299[2];
  LOBYTE(v264) = ((v307 ^ 0x91) + 115) ^ ((v307 ^ 0x9D) + 127) ^ ((v307 ^ 0x73) - 111);
  LODWORD(v307) = *(a90 + (v307 ^ 0x7B)) ^ 0x5E ^ (v264 + ((2 * v264) & 0x26 ^ 0xDF) + 100);
  v308 = *(a89 + (v299[12] ^ 0xC6));
  HIDWORD(v217) = v308 ^ 0x28;
  LODWORD(v217) = v308 << 24;
  v309 = ((v303 ^ 0x96) << 24) | ((v299[9] ^ 0x37 ^ *(v220 + (v299[9] ^ 0xD0))) << 16);
  LODWORD(v307) = ((*v299 ^ ~*(v220 + (*v299 ^ 0x82))) << 24) | (v307 << 8) | v299[3] ^ 0xD7 ^ *(v220 + (v299[3] ^ 0x72)) | ((v299[1] ^ 5 ^ *(v220 + (v299[1] ^ 0x49))) << 16);
  v310 = ((v299[4] ^ *(STACK[0x210] + (v299[4] ^ 0x5DLL)) ^ 0xE) << 24) | ((v299[5] ^ 0x93 ^ *(STACK[0x210] + (v299[5] ^ 0x4CLL))) << 16) | ((v299[6] ^ 0xC9 ^ *(v220 + (v299[6] ^ 0x4FLL))) << 8);
  v311 = v307 ^ ((v307 & STACK[0x2C0]) >> 1);
  v312 = (v309 | v306) ^ (((v309 | v306) & a87) >> 1);
  v313 = ((v299[13] ^ 0x72 ^ *(v220 + (v299[13] ^ 0x8ALL))) << 16) | (((v217 >> 31) ^ 0xA0) << 24) | ((v299[14] ^ 0x71 ^ *(STACK[0x210] + (v299[14] ^ 0x83))) << 8) | v299[15] ^ *(STACK[0x210] + (v299[15] ^ 0xA0)) ^ 0x1F;
  v314 = v313 ^ ((v313 & STACK[0x2C0]) >> 1);
  LODWORD(STACK[0x2A8]) = 2086229061;
  LODWORD(STACK[0x2AC]) = LODWORD(STACK[0x2CC]) < 0xA50080E7;
  if ((HIDWORD(v751) + 2086229061) >= 0x11)
  {
    a82 = v754;
  }

  v316 = a82 ^ (((a82 ^ 0x94140EA2) & v745 ^ a82 & 0xBE8C6092) >> 1);
  if ((HIDWORD(v751) + 2086229061) >= 0x11)
  {
    a83 = v755;
  }

  v318 = a83 ^ (((a83 ^ 0x2C7CBE88) & a87 ^ v744) >> 1);
  if ((HIDWORD(v751) + 2086229061) >= 0x11)
  {
    a84 = v753;
  }

  v320 = a84 ^ (((a84 ^ 0x8A728A3E) & HIDWORD(v744) ^ a84 & 0x74D959D2) >> 1);
  if ((HIDWORD(v751) + 2086229061) >= 0x11)
  {
    a85 = v752;
  }

  v322 = a85 ^ (((a85 ^ 0xE2272FEC) & HIDWORD(v742) ^ a85 & 0xAF900D8) >> 1);
  v323 = v310 | v299[7] ^ 0x2F ^ *(v220 + (v299[7] ^ 0xD4));
  v324 = ((v323 & a87) >> (v305 & 1) >> !(v305 & 1)) ^ v323;
  v325 = HIDWORD(v750) ^ (((((v318 ^ 0x7B34674B) & v283 | v692) ^ 0xA099B13F) << v121) | (((v318 ^ 0xDBADD674) & v120) >> v297)) ^ ((v324 & a78) << v124) ^ ((v324 & v120) >> v122);
  v326 = STACK[0x390];
  v327 = LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x390]) ^ v325;
  v328 = v325;
  LODWORD(STACK[0x2A4]) = v325;
  v329 = (2101576273 * v327 + ((2101576273 * v327) >> 16)) ^ ((2101576273 * v327 + ((2101576273 * v327) >> 16)) >> 8);
  v330 = (v329 ^ LODWORD(STACK[0x488])) + v329 - 2 * ((v329 ^ LODWORD(STACK[0x488])) & v329);
  v331 = v751 ^ (((v316 ^ 0xDE160EE2) & v125) >> v122) ^ LODWORD(STACK[0x2B0]) ^ ((((v316 ^ 0x757F65A1) & a78 | v691) ^ 0xAB696B43) << v124) ^ ((v311 & v283) << v296) ^ ((v311 & v125) >> v297);
  LODWORD(STACK[0x29C]) = v331;
  v332 = v750 ^ LODWORD(STACK[0x2BC]) ^ (((((v320 ^ 0x9A853A74) & v283 | HIDWORD(v691)) ^ 0x10DFB442) << v296) + (((v320 ^ 0x8A5A8E36) & v120) >> v297)) ^ (((v312 & v125) >> v297) + ((v312 & v283) << v124));
  LODWORD(STACK[0x2BC]) = v332;
  v333 = HIDWORD(v749) ^ LODWORD(STACK[0x370]) ^ (((((v322 ^ 0xC9326D1B) & a78 | HIDWORD(v690)) ^ 0x2A05C292) << v124) | (((v322 ^ 0xE337AF89) & v125) >> v122)) ^ (((v314 & v120) >> v122) + ((v314 & a78) << v296));
  LODWORD(STACK[0x2B0]) = v333;
  v334 = 2101576273 * (LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x4C8]) ^ v328);
  v335 = -488660003 * (((v334 + HIWORD(v334)) ^ ((v334 + HIWORD(v334)) >> 8)) + v332);
  v336 = 1316303477 * ((v335 - HIWORD(v335) - ((v335 - HIWORD(v335)) >> 8)) ^ v333);
  v337 = v336 + HIWORD(v336);
  v338 = -740829067 * (v337 - v331 + (v337 >> 8)) - ((-740829067 * (v337 - v331 + (v337 >> 8))) >> 16);
  v339 = STACK[0x360];
  LODWORD(STACK[0x2A0]) = v338 ^ STACK[0x360] ^ (v338 >> 8);
  v340 = (v337 >> 8) + v337;
  v341 = v340 + LODWORD(STACK[0x410]) - 2 * (v340 & STACK[0x410]);
  v342 = -740829067 * (v340 - v331) - ((-740829067 * (v340 - v331)) >> 16);
  v343 = v342 ^ v339 ^ (v342 >> 8);
  LODWORD(STACK[0x370]) = v343;
  v344 = (v337 ^ LODWORD(STACK[0x2D0])) - v337 + 2 * (v337 & STACK[0x2D0]);
  v345 = v341 ^ v340;
  v346 = (v343 & 1) == 0;
  v347 = STACK[0x3B0];
  v348 = STACK[0x3A8];
  if (v343)
  {
    v349 = STACK[0x3A8];
  }

  else
  {
    v349 = STACK[0x3B0];
  }

  LODWORD(STACK[0x228]) = v349;
  v350 = STACK[0x3A0];
  if ((v343 & 1) == 0)
  {
    v347 = STACK[0x3A0];
  }

  LODWORD(STACK[0x488]) = v347;
  if (v343)
  {
    v351 = v350;
  }

  else
  {
    v351 = STACK[0x2D4];
  }

  if (v343)
  {
    v352 = STACK[0x2D4];
  }

  else
  {
    v352 = v348;
  }

  v353 = STACK[0x348];
  if (v343)
  {
    v354 = STACK[0x348];
  }

  else
  {
    v354 = v330;
  }

  LODWORD(STACK[0x258]) = v354;
  v355 = STACK[0x4B0];
  if (v343)
  {
    v353 = STACK[0x4B0];
  }

  LODWORD(STACK[0x28C]) = v353;
  v356 = STACK[0x4B8];
  if (v343)
  {
    v357 = v330;
  }

  else
  {
    v357 = STACK[0x4B8];
  }

  LODWORD(STACK[0x288]) = v357;
  if (v343)
  {
    v358 = v356;
  }

  else
  {
    v358 = v355;
  }

  v359 = STACK[0x4A0];
  v360 = STACK[0x498];
  if (v343)
  {
    v361 = STACK[0x498];
  }

  else
  {
    v361 = STACK[0x4A0];
  }

  LODWORD(STACK[0x2D4]) = v361;
  v362 = STACK[0x4A8];
  if ((v343 & 1) == 0)
  {
    v359 = STACK[0x4A8];
  }

  LODWORD(STACK[0x4A0]) = v359;
  if (v343)
  {
    v363 = STACK[0x320];
  }

  else
  {
    v363 = v360;
  }

  if ((v343 & 1) == 0)
  {
    v362 = STACK[0x320];
  }

  LODWORD(STACK[0x238]) = v362;
  v364 = STACK[0x344];
  v365 = STACK[0x490];
  if (v343)
  {
    v366 = STACK[0x490];
  }

  else
  {
    v366 = STACK[0x344];
  }

  LODWORD(STACK[0x320]) = v366;
  v367 = STACK[0x480];
  if (v343)
  {
    v368 = v364;
  }

  else
  {
    v368 = STACK[0x480];
  }

  v369 = STACK[0x338];
  if ((v343 & 1) == 0)
  {
    v367 = STACK[0x338];
  }

  LODWORD(STACK[0x280]) = v367;
  if (v343)
  {
    v370 = v369;
  }

  else
  {
    v370 = v365;
  }

  v371 = STACK[0x330];
  v372 = STACK[0x468];
  if (v346)
  {
    v373 = STACK[0x330];
  }

  else
  {
    v373 = STACK[0x468];
  }

  LODWORD(STACK[0x410]) = v373;
  v374 = STACK[0x470];
  if (v346)
  {
    v375 = STACK[0x470];
  }

  else
  {
    v375 = v371;
  }

  LODWORD(STACK[0x250]) = v375;
  v376 = STACK[0x478];
  if (v346)
  {
    v377 = STACK[0x478];
  }

  else
  {
    v377 = v374;
  }

  LODWORD(STACK[0x298]) = v377;
  if (v346)
  {
    v378 = v372;
  }

  else
  {
    v378 = v376;
  }

  v379 = STACK[0x328];
  v380 = STACK[0x454];
  if (v346)
  {
    v381 = STACK[0x454];
  }

  else
  {
    v381 = STACK[0x328];
  }

  LODWORD(STACK[0x2D0]) = v381;
  v382 = STACK[0x458];
  if (v346)
  {
    v383 = STACK[0x458];
  }

  else
  {
    v383 = v380;
  }

  LODWORD(STACK[0x344]) = v383;
  if (v346)
  {
    v384 = STACK[0x460];
  }

  else
  {
    v384 = v382;
  }

  if (v346)
  {
    v385 = v379;
  }

  else
  {
    v385 = STACK[0x460];
  }

  LODWORD(STACK[0x278]) = v385;
  v386 = STACK[0x440];
  v387 = STACK[0x448];
  if (v346)
  {
    v388 = STACK[0x440];
  }

  else
  {
    v388 = STACK[0x448];
  }

  LODWORD(STACK[0x348]) = v388;
  if (v346)
  {
    v389 = v387;
  }

  else
  {
    v389 = v345;
  }

  LODWORD(STACK[0x448]) = v389;
  v390 = STACK[0x418];
  if (!v346)
  {
    v345 = STACK[0x418];
  }

  LODWORD(STACK[0x294]) = v345;
  if (v346)
  {
    v386 = v390;
  }

  v391 = STACK[0x430];
  v392 = STACK[0x428];
  if (v346)
  {
    v393 = STACK[0x430];
  }

  else
  {
    v393 = STACK[0x428];
  }

  LODWORD(STACK[0x338]) = v393;
  if (v346)
  {
    v394 = v392;
  }

  else
  {
    v394 = STACK[0x420];
  }

  if (v346)
  {
    v395 = STACK[0x438];
  }

  else
  {
    v395 = v391;
  }

  if (v346)
  {
    v396 = STACK[0x420];
  }

  else
  {
    v396 = STACK[0x438];
  }

  v397 = STACK[0x2F8];
  v398 = STACK[0x2F0];
  if (v346)
  {
    v399 = STACK[0x2F8];
  }

  else
  {
    v399 = STACK[0x2F0];
  }

  LODWORD(STACK[0x290]) = v399;
  if (v346)
  {
    v400 = STACK[0x3F4];
  }

  else
  {
    v400 = v397;
  }

  v401 = STACK[0x2E8];
  if (v346)
  {
    v402 = STACK[0x2E8];
  }

  else
  {
    v402 = STACK[0x3F4];
  }

  LODWORD(STACK[0x240]) = v402;
  if (v346)
  {
    v403 = v398;
  }

  else
  {
    v403 = v401;
  }

  v404 = STACK[0x408];
  v405 = STACK[0x3F0];
  if (v346)
  {
    v406 = STACK[0x3F0];
  }

  else
  {
    v406 = STACK[0x408];
  }

  LODWORD(STACK[0x248]) = v406;
  v407 = STACK[0x400];
  if (v346)
  {
    v408 = v404;
  }

  else
  {
    v408 = STACK[0x400];
  }

  LODWORD(STACK[0x408]) = v408;
  if (v346)
  {
    v409 = v407;
  }

  else
  {
    v409 = STACK[0x3F8];
  }

  if (v346)
  {
    v410 = STACK[0x3F8];
  }

  else
  {
    v410 = v405;
  }

  v411 = STACK[0x3E4];
  v412 = STACK[0x2DC];
  if (v346)
  {
    v413 = STACK[0x3E4];
  }

  else
  {
    v413 = STACK[0x2DC];
  }

  LODWORD(STACK[0x270]) = v413;
  v414 = STACK[0x2E0];
  if (v346)
  {
    v415 = STACK[0x2E0];
  }

  else
  {
    v415 = v411;
  }

  LODWORD(STACK[0x268]) = v415;
  if (v346)
  {
    v416 = STACK[0x3D8];
  }

  else
  {
    v416 = v414;
  }

  if (v346)
  {
    v417 = v412;
  }

  else
  {
    v417 = STACK[0x3D8];
  }

  v418 = STACK[0x3D4];
  if (v346)
  {
    v419 = STACK[0x3DC];
  }

  else
  {
    v419 = STACK[0x3D4];
  }

  v420 = STACK[0x3E0];
  if (v346)
  {
    v421 = STACK[0x3E0];
  }

  else
  {
    v421 = STACK[0x3DC];
  }

  LODWORD(STACK[0x2E0]) = v421;
  if (v346)
  {
    v420 = STACK[0x3E8];
    v422 = v418;
  }

  else
  {
    v422 = STACK[0x3E8];
  }

  LODWORD(STACK[0x3D4]) = v422;
  v423 = STACK[0x3B8];
  if (v346)
  {
    v424 = v344;
  }

  else
  {
    v424 = STACK[0x3B8];
  }

  LODWORD(STACK[0x2DC]) = v424;
  v425 = STACK[0x3CC];
  if (v346)
  {
    v426 = STACK[0x3CC];
  }

  else
  {
    v426 = v344;
  }

  LODWORD(STACK[0x2F0]) = v426;
  v427 = STACK[0x2D8];
  if (v346)
  {
    v428 = v423;
  }

  else
  {
    v428 = STACK[0x2D8];
  }

  LODWORD(STACK[0x260]) = v428;
  if (v346)
  {
    v425 = v427;
  }

  v429 = STACK[0x3D0];
  v430 = STACK[0x3B4];
  if (v346)
  {
    v431 = STACK[0x3B4];
  }

  else
  {
    v431 = STACK[0x3D0];
  }

  LODWORD(STACK[0x2D8]) = v431;
  v432 = STACK[0x3C8];
  if (v346)
  {
    v433 = v429;
  }

  else
  {
    v433 = STACK[0x3C8];
  }

  LODWORD(STACK[0x2F8]) = v433;
  v434 = STACK[0x3C4];
  if (v346)
  {
    v435 = STACK[0x3C4];
  }

  else
  {
    v435 = v430;
  }

  LODWORD(STACK[0x2E8]) = v435;
  if (!v346)
  {
    v432 = v434;
  }

  v436 = STACK[0x4D0];
  if (v346)
  {
    v437 = STACK[0x4D0];
  }

  else
  {
    v437 = v326;
  }

  LODWORD(STACK[0x330]) = v437;
  v438 = STACK[0x398];
  if (v346)
  {
    v439 = v326;
  }

  else
  {
    v439 = STACK[0x398];
  }

  v440 = STACK[0x380];
  if (!v346)
  {
    v438 = STACK[0x380];
  }

  LODWORD(STACK[0x230]) = v438;
  if (v346)
  {
    v441 = v440;
  }

  else
  {
    v441 = v436;
  }

  v442 = STACK[0x388];
  v443 = STACK[0x378];
  if (v346)
  {
    v444 = STACK[0x378];
  }

  else
  {
    v444 = STACK[0x388];
  }

  LODWORD(STACK[0x328]) = v444;
  v445 = STACK[0x4C8];
  if (v346)
  {
    v446 = v442;
  }

  else
  {
    v446 = STACK[0x4C8];
  }

  LODWORD(STACK[0x220]) = v446;
  v447 = STACK[0x4C0];
  if (v346)
  {
    v448 = STACK[0x4C0];
  }

  else
  {
    v448 = v443;
  }

  if (v346)
  {
    v447 = v445;
  }

  LODWORD(STACK[0x378]) = v447;
  v449 = (STACK[0x370] & 2) == 0;
  v450 = STACK[0x228];
  if ((STACK[0x370] & 2) != 0)
  {
    v451 = v351;
  }

  else
  {
    v451 = STACK[0x228];
  }

  LODWORD(STACK[0x3B0]) = v451;
  if (!v449)
  {
    v351 = v450;
  }

  v452 = STACK[0x488];
  if (v449)
  {
    v453 = STACK[0x488];
  }

  else
  {
    v453 = v352;
  }

  LODWORD(STACK[0x3A0]) = v453;
  if (v449)
  {
    v454 = v352;
  }

  else
  {
    v454 = v452;
  }

  LODWORD(STACK[0x3A8]) = v454;
  v455 = STACK[0x258];
  if (v449)
  {
    v456 = v358;
  }

  else
  {
    v456 = STACK[0x258];
  }

  LODWORD(STACK[0x4B0]) = v456;
  if (v449)
  {
    v457 = v455;
  }

  else
  {
    v457 = v358;
  }

  LODWORD(STACK[0x488]) = v457;
  v458 = STACK[0x28C];
  if (v449)
  {
    v459 = STACK[0x28C];
  }

  else
  {
    v459 = STACK[0x288];
  }

  if (v449)
  {
    v458 = STACK[0x288];
  }

  LODWORD(STACK[0x4B8]) = v458;
  v460 = STACK[0x4A0];
  if (v449)
  {
    v461 = v363;
  }

  else
  {
    v461 = STACK[0x4A0];
  }

  LODWORD(STACK[0x498]) = v461;
  if (v449)
  {
    v363 = v460;
  }

  LODWORD(STACK[0x4A8]) = v363;
  v462 = STACK[0x2D4];
  v463 = STACK[0x238];
  if (v449)
  {
    v464 = STACK[0x2D4];
  }

  else
  {
    v464 = STACK[0x238];
  }

  LODWORD(STACK[0x4A0]) = v464;
  if (v449)
  {
    v465 = v463;
  }

  else
  {
    v465 = v462;
  }

  if (v449)
  {
    v466 = v370;
  }

  else
  {
    v466 = v368;
  }

  LODWORD(STACK[0x490]) = v466;
  if (v449)
  {
    v467 = v368;
  }

  else
  {
    v467 = v370;
  }

  LODWORD(STACK[0x480]) = v467;
  if (v449)
  {
    v468 = STACK[0x320];
  }

  else
  {
    v468 = STACK[0x280];
  }

  if (v449)
  {
    v469 = STACK[0x280];
  }

  else
  {
    v469 = STACK[0x320];
  }

  v470 = STACK[0x250];
  if (v449)
  {
    v471 = v378;
  }

  else
  {
    v471 = STACK[0x250];
  }

  LODWORD(STACK[0x468]) = v471;
  if (v449)
  {
    v472 = v470;
  }

  else
  {
    v472 = v378;
  }

  LODWORD(STACK[0x470]) = v472;
  v473 = STACK[0x410];
  v474 = STACK[0x298];
  if (v449)
  {
    v475 = STACK[0x298];
  }

  else
  {
    v475 = STACK[0x410];
  }

  LODWORD(STACK[0x478]) = v475;
  if (v449)
  {
    v476 = v473;
  }

  else
  {
    v476 = v474;
  }

  v477 = STACK[0x2D0];
  if (v449)
  {
    v478 = STACK[0x2D0];
  }

  else
  {
    v478 = v384;
  }

  LODWORD(STACK[0x454]) = v478;
  if (v449)
  {
    v479 = v384;
  }

  else
  {
    v479 = v477;
  }

  LODWORD(STACK[0x460]) = v479;
  v480 = STACK[0x344];
  v481 = STACK[0x278];
  if (v449)
  {
    v482 = STACK[0x344];
  }

  else
  {
    v482 = STACK[0x278];
  }

  LODWORD(STACK[0x458]) = v482;
  if (v449)
  {
    v483 = v481;
  }

  else
  {
    v483 = v480;
  }

  v484 = STACK[0x448];
  if (v449)
  {
    v485 = v386;
  }

  else
  {
    v485 = STACK[0x448];
  }

  LODWORD(STACK[0x418]) = v485;
  if (v449)
  {
    v386 = v484;
  }

  LODWORD(STACK[0x448]) = v386;
  v486 = STACK[0x348];
  v487 = STACK[0x294];
  if (v449)
  {
    v488 = STACK[0x294];
  }

  else
  {
    v488 = STACK[0x348];
  }

  LODWORD(STACK[0x410]) = v488;
  if (v449)
  {
    v489 = v486;
  }

  else
  {
    v489 = v487;
  }

  LODWORD(STACK[0x440]) = v489;
  if (v449)
  {
    v490 = v394;
  }

  else
  {
    v490 = v395;
  }

  LODWORD(STACK[0x428]) = v490;
  if (v449)
  {
    v491 = v395;
  }

  else
  {
    v491 = v394;
  }

  LODWORD(STACK[0x438]) = v491;
  v492 = STACK[0x338];
  if (v449)
  {
    v493 = STACK[0x338];
  }

  else
  {
    v493 = v396;
  }

  LODWORD(STACK[0x430]) = v493;
  if (v449)
  {
    v494 = v396;
  }

  else
  {
    v494 = v492;
  }

  LODWORD(STACK[0x420]) = v494;
  if (v449)
  {
    v495 = v403;
  }

  else
  {
    v495 = v400;
  }

  if (v449)
  {
    v496 = v400;
  }

  else
  {
    v496 = v403;
  }

  LODWORD(STACK[0x3F4]) = v496;
  if (v449)
  {
    v497 = STACK[0x240];
  }

  else
  {
    v497 = STACK[0x290];
  }

  if (v449)
  {
    v498 = STACK[0x290];
  }

  else
  {
    v498 = STACK[0x240];
  }

  v499 = STACK[0x248];
  if (v449)
  {
    v500 = STACK[0x248];
  }

  else
  {
    v500 = v409;
  }

  LODWORD(STACK[0x3F0]) = v500;
  if (v449)
  {
    v501 = v409;
  }

  else
  {
    v501 = v499;
  }

  LODWORD(STACK[0x400]) = v501;
  v502 = STACK[0x408];
  if (v449)
  {
    v503 = v410;
  }

  else
  {
    v503 = STACK[0x408];
  }

  LODWORD(STACK[0x3F8]) = v503;
  if (v449)
  {
    v504 = v502;
  }

  else
  {
    v504 = v410;
  }

  LODWORD(STACK[0x408]) = v504;
  v505 = STACK[0x270];
  if (v449)
  {
    v506 = v416;
  }

  else
  {
    v506 = STACK[0x270];
  }

  LODWORD(STACK[0x3D8]) = v506;
  if (v449)
  {
    v507 = v505;
  }

  else
  {
    v507 = v416;
  }

  LODWORD(STACK[0x3E4]) = v507;
  if (v449)
  {
    v508 = v417;
  }

  else
  {
    v508 = STACK[0x268];
  }

  if (v449)
  {
    v509 = STACK[0x268];
  }

  else
  {
    v509 = v417;
  }

  if (v449)
  {
    v510 = v419;
  }

  else
  {
    v510 = v420;
  }

  LODWORD(STACK[0x3DC]) = v510;
  if (v449)
  {
    v511 = v420;
  }

  else
  {
    v511 = v419;
  }

  LODWORD(STACK[0x3E8]) = v511;
  v512 = STACK[0x2E0];
  v513 = STACK[0x3D4];
  if (v449)
  {
    v514 = STACK[0x2E0];
  }

  else
  {
    v514 = STACK[0x3D4];
  }

  LODWORD(STACK[0x3E0]) = v514;
  if (v449)
  {
    v515 = v513;
  }

  else
  {
    v515 = v512;
  }

  LODWORD(STACK[0x3D4]) = v515;
  if (v449)
  {
    v516 = STACK[0x2DC];
  }

  else
  {
    v516 = v425;
  }

  if (v449)
  {
    v517 = v425;
  }

  else
  {
    v517 = STACK[0x2DC];
  }

  v518 = STACK[0x2F0];
  v519 = STACK[0x260];
  if (v449)
  {
    v520 = STACK[0x260];
  }

  else
  {
    v520 = STACK[0x2F0];
  }

  LODWORD(STACK[0x3B8]) = v520;
  if (v449)
  {
    v521 = v518;
  }

  else
  {
    v521 = v519;
  }

  LODWORD(STACK[0x3CC]) = v521;
  v522 = STACK[0x2D8];
  if (v449)
  {
    v523 = STACK[0x2D8];
  }

  else
  {
    v523 = v432;
  }

  LODWORD(STACK[0x3B4]) = v523;
  if (v449)
  {
    v524 = v432;
  }

  else
  {
    v524 = v522;
  }

  LODWORD(STACK[0x3C8]) = v524;
  v525 = STACK[0x2F8];
  v526 = STACK[0x2E8];
  if (v449)
  {
    v527 = STACK[0x2F8];
  }

  else
  {
    v527 = STACK[0x2E8];
  }

  LODWORD(STACK[0x3D0]) = v527;
  if (v449)
  {
    v528 = v526;
  }

  else
  {
    v528 = v525;
  }

  LODWORD(STACK[0x3C4]) = v528;
  if (v449)
  {
    v529 = v441;
  }

  else
  {
    v529 = v439;
  }

  LODWORD(STACK[0x380]) = v529;
  if (v449)
  {
    v530 = v439;
  }

  else
  {
    v530 = v441;
  }

  LODWORD(STACK[0x390]) = v530;
  v531 = STACK[0x330];
  v532 = STACK[0x230];
  if (v449)
  {
    v533 = STACK[0x230];
  }

  else
  {
    v533 = STACK[0x330];
  }

  LODWORD(STACK[0x398]) = v533;
  if (v449)
  {
    v534 = v531;
  }

  else
  {
    v534 = v532;
  }

  LODWORD(STACK[0x4D0]) = v534;
  v535 = STACK[0x220];
  if (v449)
  {
    v536 = STACK[0x220];
  }

  else
  {
    v536 = v448;
  }

  LODWORD(STACK[0x388]) = v536;
  if (v449)
  {
    v537 = v448;
  }

  else
  {
    v537 = v535;
  }

  LODWORD(STACK[0x4C0]) = v537;
  v538 = STACK[0x328];
  v539 = STACK[0x378];
  if (v449)
  {
    v540 = STACK[0x378];
  }

  else
  {
    v540 = STACK[0x328];
  }

  LODWORD(STACK[0x4C8]) = v540;
  if (!v449)
  {
    v538 = v539;
  }

  LODWORD(STACK[0x378]) = v538;
  v541 = STACK[0x2A0];
  v542 = (LODWORD(STACK[0x2A0]) + LODWORD(STACK[0x2C4]));
  v543 = STACK[0x2B0];
  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v544 = STACK[0x2B0];
  }

  else
  {
    v544 = STACK[0x2BC];
  }

  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v543 = STACK[0x29C];
  }

  v545 = STACK[0x2A4];
  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v546 = STACK[0x2A4];
  }

  else
  {
    v546 = STACK[0x29C];
  }

  if ((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])))
  {
    v545 = STACK[0x2BC];
  }

  if (((LOBYTE(STACK[0x2A0]) + LOBYTE(STACK[0x2C4])) & 2) != 0)
  {
    v547 = v543;
  }

  else
  {
    v547 = v545;
  }

  LODWORD(STACK[0x2D4]) = v351;
  v548 = v742 ^ v547 ^ v351;
  HIDWORD(v550) = *(v339 + 4 * BYTE1(v548));
  LODWORD(v550) = HIDWORD(v550);
  v549 = v550 >> 8;
  if ((v542 & 2) != 0)
  {
    v551 = v546;
  }

  else
  {
    v551 = v544;
  }

  v552 = v737 ^ v551 ^ LODWORD(STACK[0x3A0]);
  v553 = v549 ^ __ROR4__(*(v339 + 4 * v552), 16);
  if ((v542 & 2) != 0)
  {
    v543 = v545;
  }

  v554 = HIDWORD(v734) ^ v543 ^ LODWORD(STACK[0x3B0]);
  v555 = v553 ^ __ROR4__(*(v339 + 4 * HIBYTE(v554)), 24);
  if ((v542 & 2) == 0)
  {
    v544 = v546;
  }

  v556 = HIDWORD(v737) ^ v544 ^ LODWORD(STACK[0x3A8]);
  v557 = HIDWORD(v732) ^ __ROR4__(*(v339 + 4 * BYTE1(v554)), 8) ^ __ROR4__(*(v339 + 4 * (BYTE4(v737) ^ v544 ^ LOBYTE(STACK[0x3A8]))), 16) ^ *(v339 + 4 * BYTE2(v552)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v548)), 24);
  v558 = v732 ^ __ROR4__(*(v339 + 4 * HIBYTE(v552)), 24) ^ *(v339 + 4 * BYTE2(v554)) ^ __ROR4__(*(v339 + 4 * v548), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v556)), 8);
  v559 = HIDWORD(v731) ^ __ROR4__(*(v339 + 4 * BYTE1(v552)), 8) ^ *(v339 + 4 * BYTE2(v548)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v556)), 24) ^ __ROR4__(*(v339 + 4 * v554), 16);
  v560 = LODWORD(STACK[0x370]) + LODWORD(STACK[0x2C8]);
  v561 = v541 + LODWORD(STACK[0x358]);
  v562 = v734 ^ LODWORD(STACK[0x4B0]) ^ (v542 + (v555 ^ *(v339 + 4 * BYTE2(v556))) - v560);
  v563 = *(v339 + 4 * HIBYTE(v562));
  LODWORD(STACK[0x348]) = v459;
  v564 = v558 ^ v561 ^ v542 ^ v459;
  v565 = v557 ^ LODWORD(STACK[0x488]);
  v566 = v731 ^ __ROR4__(v563, 24) ^ __ROR4__(*(v339 + 4 * (v558 ^ v561 ^ v542 ^ v459)), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v565)), 8);
  v567 = v559 ^ LODWORD(STACK[0x4B8]);
  v568 = HIDWORD(v728) ^ __ROR4__(*(v339 + 4 * v565), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v564)), 24) ^ *(v339 + 4 * BYTE2(v562)) ^ __ROR4__(*(v339 + 4 * BYTE1(v567)), 8);
  v569 = v728 ^ __ROR4__(*(v339 + 4 * HIBYTE(v565)), 24) ^ __ROR4__(*(v339 + 4 * v567), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v562)), 8);
  v570 = HIDWORD(v727) ^ __ROR4__(*(v339 + 4 * HIBYTE(v567)), 24) ^ __ROR4__(*(v339 + 4 * v562), 16) ^ *(v339 + 4 * BYTE2(v565)) ^ __ROR4__(*(v339 + 4 * BYTE1(v564)), 8);
  v571 = *(v339 + 4 * BYTE2(v567));
  LODWORD(STACK[0x320]) = v465;
  v572 = v566 ^ v571 ^ v465;
  v573 = v569 ^ *(v339 + 4 * BYTE2(v564)) ^ LODWORD(STACK[0x4A0]);
  v574 = *(v339 + 4 * BYTE2(v572));
  LODWORD(STACK[0x338]) = v469;
  v575 = v570 ^ LODWORD(STACK[0x4A8]);
  v576 = v568 ^ LODWORD(STACK[0x498]);
  v577 = v727 ^ v469 ^ v574 ^ __ROR4__(*(v339 + 4 * BYTE1(v575)), 8) ^ __ROR4__(*(v339 + 4 * v573), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v576)), 24);
  v578 = *(v339 + 4 * HIBYTE(v575));
  v579 = LODWORD(STACK[0x31C]) ^ v757;
  v580 = STACK[0x31C];
  LODWORD(STACK[0x344]) = v468;
  v581 = v579 ^ v749 ^ v468 ^ __ROR4__(v578, 24) ^ *(v339 + 4 * BYTE2(v573)) ^ __ROR4__(*(v339 + 4 * BYTE1(v576)), 8) ^ __ROR4__(*(v339 + 4 * v572), 16);
  v582 = v579 ^ HIDWORD(v726) ^ __ROR4__(*(v339 + 4 * BYTE1(v573)), 8) ^ LODWORD(STACK[0x480]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v572)), 24) ^ *(v339 + 4 * BYTE2(v575)) ^ __ROR4__(*(v339 + 4 * v576), 16);
  v583 = v579 ^ HIDWORD(v748) ^ __ROR4__(*(v339 + 4 * BYTE1(v572)), 8) ^ LODWORD(STACK[0x490]) ^ __ROR4__(*(v339 + 4 * v575), 16);
  v584 = *(v339 + 4 * HIBYTE(v577));
  v585 = v583 ^ __ROR4__(*(v339 + 4 * HIBYTE(v573)), 24);
  LODWORD(STACK[0x330]) = v476;
  v586 = v585 ^ *(v339 + 4 * BYTE2(v576));
  v587 = v756 ^ v758 ^ HIDWORD(a45) ^ v476 ^ __ROR4__(v584, 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v581)), 8) ^ __ROR4__(*(v339 + 4 * (v585 ^ *(v339 + 4 * BYTE2(v576)))), 16);
  v588 = v756 ^ v758 ^ a43 ^ LODWORD(STACK[0x470]) ^ __ROR4__(*(v339 + 4 * v581), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v582)), 8) ^ *(v339 + 4 * BYTE2(v577)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v586)), 24);
  v589 = v756 ^ v758 ^ a44 ^ LODWORD(STACK[0x478]) ^ __ROR4__(*(v339 + 4 * v582), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v581)), 24);
  v590 = v756 ^ v758 ^ v726 ^ LODWORD(STACK[0x468]) ^ __ROR4__(*(v339 + 4 * v577), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v582)), 24);
  v591 = v587 ^ *(v339 + 4 * BYTE2(v582));
  v592 = v590 ^ __ROR4__(*(v339 + 4 * BYTE1(v586)), 8) ^ *(v339 + 4 * BYTE2(v581));
  HIDWORD(v593) = *(v339 + 4 * v591);
  LODWORD(v593) = HIDWORD(v593);
  v594 = v589 ^ __ROR4__(*(v339 + 4 * BYTE1(v577)), 8) ^ *(v339 + 4 * BYTE2(v586));
  v595 = (v593 >> 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v592)), 24) ^ *(v339 + 4 * BYTE2(v594)) ^ __ROR4__(*(v339 + 4 * BYTE1(v588)), 8);
  v596 = *(v339 + 4 * BYTE2(v588));
  LODWORD(STACK[0x328]) = v483;
  v597 = a42 ^ v483 ^ v596 ^ __ROR4__(*(v339 + 4 * BYTE1(v591)), 8) ^ __ROR4__(*(v339 + 4 * v592), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v594)), 24);
  v598 = a40 ^ LODWORD(STACK[0x458]) ^ __ROR4__(*(v339 + 4 * v588), 16) ^ *(v339 + 4 * BYTE2(v592)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v591)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v594)), 8);
  v599 = a39 ^ LODWORD(STACK[0x460]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v588)), 24) ^ __ROR4__(*(v339 + 4 * v594), 16) ^ *(v339 + 4 * BYTE2(v591)) ^ __ROR4__(*(v339 + 4 * BYTE1(v592)), 8);
  v600 = a41 ^ LODWORD(STACK[0x454]) ^ (v595 + v748);
  HIDWORD(v593) = *(v339 + 4 * HIBYTE(v597));
  LODWORD(v593) = HIDWORD(v593);
  v601 = (v593 >> 24) ^ __ROR4__(*(v339 + 4 * (a41 ^ LOBYTE(STACK[0x454]) ^ (v595 + v748))), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v598)), 8);
  v602 = *(v339 + 4 * BYTE2(v598)) ^ __ROR4__(*(v339 + 4 * BYTE1(v600)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v599)), 24) ^ __ROR4__(*(v339 + 4 * v597), 16);
  v603 = *(v339 + 4 * BYTE2(v600)) ^ __ROR4__(*(v339 + 4 * BYTE1(v597)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v598)), 24) ^ __ROR4__(*(v339 + 4 * v599), 16);
  v604 = *(v339 + 4 * HIBYTE(v600));
  LODWORD(STACK[0x358]) = v561;
  v605 = v542 ^ v561 ^ __ROR4__(v604, 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v599)), 8) ^ __ROR4__(*(v339 + 4 * v598), 16);
  v606 = v602 - v542 + v560;
  v607 = a37 ^ LODWORD(STACK[0x448]) ^ v606;
  v608 = *(v339 + 4 * HIBYTE(v607));
  LODWORD(STACK[0x2F0]) = v495;
  v609 = v601 ^ *(v339 + 4 * BYTE2(v599));
  v610 = a36 ^ LODWORD(STACK[0x410]) ^ v603;
  v611 = HIDWORD(a32) ^ v495 ^ __ROR4__(v608, 24) ^ *(v339 + 4 * BYTE2(v610));
  v612 = a35 ^ LODWORD(STACK[0x440]) ^ v609;
  v613 = v605 ^ *(v339 + 4 * BYTE2(v597));
  v614 = a38 ^ LODWORD(STACK[0x418]) ^ v613;
  v615 = v611 ^ __ROR4__(*(v339 + 4 * (a35 ^ LOBYTE(STACK[0x440]) ^ v609)), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v614)), 8);
  v616 = *(v339 + 4 * HIBYTE(v610));
  LODWORD(STACK[0x2E8]) = v497;
  v617 = a31 ^ v497 ^ __ROR4__(v616, 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v612)), 8) ^ *(v339 + 4 * BYTE2(v614)) ^ __ROR4__(*(v339 + 4 * v607), 16);
  v618 = *(v339 + 4 * BYTE2(v607));
  LODWORD(STACK[0x2F8]) = v498;
  v619 = HIDWORD(v709) ^ v498 ^ v618 ^ __ROR4__(*(v339 + 4 * v614), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v612)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v610)), 8);
  v620 = v709 ^ LODWORD(STACK[0x3F4]) ^ __ROR4__(*(v339 + 4 * v610), 16) ^ *(v339 + 4 * BYTE2(v612)) ^ __ROR4__(*(v339 + 4 * BYTE1(v607)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v614)), 24);
  v621 = *(v339 + 4 * BYTE1(v617));
  LODWORD(STACK[0x2E0]) = v509;
  v622 = HIDWORD(v703) ^ v509 ^ __ROR4__(v621, 8) ^ __ROR4__(*(v339 + 4 * v620), 16) ^ *(v339 + 4 * BYTE2(v615)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v619)), 24);
  v623 = *(v339 + 4 * BYTE2(v620));
  v624 = *(v339 + 4 * v615);
  LODWORD(STACK[0x2DC]) = v508;
  v625 = v703 ^ v508 ^ v623 ^ __ROR4__(v624, 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v617)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v619)), 8);
  v626 = HIDWORD(v700) ^ LODWORD(STACK[0x3E4]) ^ *(v339 + 4 * BYTE2(v617)) ^ __ROR4__(*(v339 + 4 * v619), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v620)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v615)), 24);
  v627 = v700 ^ LODWORD(STACK[0x3D8]) ^ *(v339 + 4 * BYTE2(v619)) ^ __ROR4__(*(v339 + 4 * v617), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v615)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v620)), 24);
  v628 = *(v339 + 4 * BYTE1(v625));
  v629 = v756 ^ v580;
  LODWORD(STACK[0x2D8]) = v517;
  v630 = v629 ^ v747 ^ v517 ^ __ROR4__(v628, 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v622)), 24) ^ __ROR4__(*(v339 + 4 * v627), 16) ^ *(v339 + 4 * BYTE2(v626));
  v631 = *(v339 + 4 * v626);
  LODWORD(STACK[0x2D0]) = v516;
  v632 = v629 ^ HIDWORD(v745) ^ v516 ^ __ROR4__(v631, 16) ^ *(v339 + 4 * BYTE2(v627)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v625)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v622)), 8);
  v633 = v629 ^ HIDWORD(v747) ^ LODWORD(STACK[0x3CC]) ^ *(v339 + 4 * BYTE2(v625)) ^ __ROR4__(*(v339 + 4 * BYTE1(v627)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v626)), 24) ^ __ROR4__(*(v339 + 4 * v622), 16);
  v634 = v629 ^ v746 ^ LODWORD(STACK[0x3B8]) ^ __ROR4__(*(v339 + 4 * BYTE1(v626)), 8) ^ __ROR4__(*(v339 + 4 * v625), 16) ^ *(v339 + 4 * BYTE2(v622)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v627)), 24);
  v635 = STACK[0x368];
  v636 = v690 ^ LODWORD(STACK[0x380]) ^ __ROR4__(*(STACK[0x368] + 4 * BYTE2(v632)), 24) ^ __ROR4__(*(STACK[0x368] + 4 * HIBYTE(v633)), 16) ^ *(STACK[0x368] + 4 * BYTE1(v634)) ^ __ROR4__(*(STACK[0x368] + 4 * v630), 8);
  v637 = HIDWORD(v714) ^ LODWORD(STACK[0x428]) ^ v603;
  v638 = HIDWORD(v716) ^ LODWORD(STACK[0x420]) ^ v613;
  v639 = v716 ^ LODWORD(STACK[0x438]) ^ v609;
  v640 = v714 ^ LODWORD(STACK[0x430]) ^ v606;
  v641 = HIDWORD(v707) ^ LODWORD(STACK[0x400]) ^ *(v339 + 4 * BYTE2(v637)) ^ __ROR4__(*(v339 + 4 * BYTE1(v638)), 8) ^ __ROR4__(*(v339 + 4 * (v716 ^ LOBYTE(STACK[0x438]) ^ v609)), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v640)), 24);
  v642 = v707 ^ LODWORD(STACK[0x3F0]) ^ *(v339 + 4 * BYTE2(v639)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v638)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v640)), 8) ^ __ROR4__(*(v339 + 4 * (BYTE4(v714) ^ LOBYTE(STACK[0x428]) ^ v603)), 16);
  v643 = HIDWORD(v705) ^ LODWORD(STACK[0x3F8]) ^ __ROR4__(*(v339 + 4 * (v714 ^ LOBYTE(STACK[0x430]) ^ v606)), 16) ^ *(v339 + 4 * BYTE2(v638)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v637)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v639)), 8);
  v644 = v705 ^ LODWORD(STACK[0x408]) ^ __ROR4__(*(v339 + 4 * (BYTE4(v716) ^ LOBYTE(STACK[0x420]) ^ v613)), 16) ^ *(v339 + 4 * BYTE2(v640)) ^ __ROR4__(*(v339 + 4 * BYTE1(v637)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v639)), 24);
  v645 = HIDWORD(v698) ^ LODWORD(STACK[0x3D4]) ^ *(v339 + 4 * BYTE2(v644)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v642)), 24) ^ __ROR4__(*(v339 + 4 * v643), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v641)), 8);
  v646 = v698 ^ LODWORD(STACK[0x3E8]) ^ *(v339 + 4 * BYTE2(v641)) ^ __ROR4__(*(v339 + 4 * v642), 16) ^ __ROR4__(*(v339 + 4 * HIBYTE(v644)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v643)), 8);
  v647 = HIDWORD(v695) ^ LODWORD(STACK[0x3E0]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v641)), 24) ^ __ROR4__(*(v339 + 4 * v644), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v642)), 8) ^ *(v339 + 4 * BYTE2(v643));
  v648 = v700 ^ LODWORD(STACK[0x3DC]) ^ __ROR4__(*(v339 + 4 * BYTE1(v644)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v643)), 24) ^ __ROR4__(*(v339 + 4 * v641), 16) ^ *(v339 + 4 * BYTE2(v642));
  v649 = *(v339 + 4 * BYTE2(v648)) ^ LODWORD(STACK[0x3C8]) ^ __ROR4__(*(v339 + 4 * HIBYTE(v647)), 24) ^ __ROR4__(*(v339 + 4 * BYTE1(v645)), 8) ^ __ROR4__(*(v339 + 4 * v646), 16);
  v650 = HIDWORD(v687) ^ 0x1FD27171 ^ LODWORD(STACK[0x4D0]) ^ *(STACK[0x368] + 4 * BYTE1(v630)) ^ __ROR4__(*(STACK[0x368] + 4 * v633), 8) ^ __ROR4__(*(STACK[0x368] + 4 * HIBYTE(v632)), 16) ^ __ROR4__(*(STACK[0x368] + 4 * BYTE2(v634)), 24);
  v651 = v629 ^ HIDWORD(v746) ^ LODWORD(STACK[0x3D0]) ^ __ROR4__(*(v339 + 4 * BYTE1(v648)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v646)), 24);
  v652 = v629 ^ v695 ^ LODWORD(STACK[0x3C4]) ^ __ROR4__(*(v339 + 4 * v647), 16) ^ __ROR4__(*(v339 + 4 * BYTE1(v646)), 8) ^ *(v339 + 4 * BYTE2(v645)) ^ __ROR4__(*(v339 + 4 * HIBYTE(v648)), 24);
  v653 = v629 ^ HIDWORD(v693) ^ LODWORD(STACK[0x3B4]) ^ __ROR4__(*(v339 + 4 * v648), 16);
  v654 = v636 & 0x10000;
  if ((v636 & 0x10000 & a88) != 0)
  {
    v654 = -v654;
  }

  if (v560)
  {
    v655 = v636 & 0xFFFEFFFF ^ 0x1FD27171 ^ (v654 + a88);
  }

  else
  {
    v655 = v650;
  }

  v656 = v613 ^ (v603 + 273043163 + (v606 ^ ((v609 ^ 0x65C3EB72) + 1494788820) ^ 0x2AC6E73));
  v657 = v651 ^ *(v339 + 4 * BYTE2(v647));
  v658 = v656 + 731675435;
  v659 = v688 ^ ((HIDWORD(v688) ^ (v649 - (v649 ^ LODWORD(STACK[0x31C])))) + v649);
  v660 = v657 ^ __ROR4__(*(v339 + 4 * v645), 16);
  v661 = v653 ^ *(v339 + 4 * BYTE2(v646)) ^ __ROR4__(*(v339 + 4 * BYTE1(v647)), 8) ^ __ROR4__(*(v339 + 4 * HIBYTE(v645)), 24);
  v662 = HIDWORD(v692) ^ a88 ^ a81;
  v663 = v662 ^ LODWORD(STACK[0x378]) ^ v658 ^ __ROR4__(*(v635 + 4 * v661), 8) ^ __ROR4__(*(v635 + 4 * BYTE2(v659)), 24) ^ __ROR4__(*(v635 + 4 * HIBYTE(v660)), 16) ^ *(v635 + 4 * BYTE1(v652));
  v664 = LODWORD(STACK[0x4C8]);
  v665 = v662 ^ LODWORD(STACK[0x388]) ^ v658 ^ __ROR4__(*(v635 + 4 * BYTE2(v652)), 24) ^ __ROR4__(*(v635 + 4 * HIBYTE(v659)), 16) ^ __ROR4__(*(v635 + 4 * v660), 8) ^ *(v635 + 4 * BYTE1(v661));
  v666 = v662 ^ v664 ^ v658 ^ *(v635 + 4 * BYTE1(v660)) ^ __ROR4__(*(v635 + 4 * (v688 ^ ((BYTE4(v688) ^ (v649 - (v649 ^ LOBYTE(STACK[0x31C])))) + v649))), 8) ^ __ROR4__(*(v635 + 4 * HIBYTE(v652)), 16) ^ __ROR4__(*(v635 + 4 * BYTE2(v661)), 24);
  v667 = HIDWORD(v687) ^ LODWORD(STACK[0x4C0]) ^ v658 ^ __ROR4__(*(v635 + 4 * v652), 8) ^ *(v635 + 4 * BYTE1(v659)) ^ __ROR4__(*(v635 + 4 * HIBYTE(v661)), 16) ^ __ROR4__(*(v635 + 4 * BYTE2(v660)), 24) ^ 0xDCF147A0;
  if (v560)
  {
    v668 = v667;
  }

  else
  {
    v668 = v663;
  }

  if (v560)
  {
    v669 = v665;
  }

  else
  {
    v669 = v666;
  }

  LODWORD(STACK[0x2C8]) = v560;
  if ((v560 & 2) != 0)
  {
    v670 = v668;
  }

  else
  {
    v670 = v669;
  }

  v671 = (((LODWORD(STACK[0x2A8]) ^ 0x26561F64) - 643178340) ^ ((LODWORD(STACK[0x2A8]) ^ 0x92A85673) + 1834461581) ^ ((LODWORD(STACK[0x2A8]) ^ 0xC8A71D52) + 928572078)) - 1450697722;
  v672 = (v671 ^ 0xC0D5356E) & (2 * (v671 & 0xD2D1384F)) ^ v671 & 0xD2D1384F;
  v673 = ((2 * (v671 ^ 0x45750570)) ^ 0x2F487A7E) & (v671 ^ 0x45750570) ^ (2 * (v671 ^ 0x45750570)) & 0x97A43D3E;
  v674 = (v673 ^ 0x700203C) & (4 * v672) ^ v672;
  v675 = ((4 * (v673 ^ 0x90A40501)) ^ 0x5E90F4FC) & (v673 ^ 0x90A40501) ^ (4 * (v673 ^ 0x90A40501)) & 0x97A43D3C;
  v676 = (v675 ^ 0x16803430) & (16 * v674) ^ v674;
  v677 = ((16 * (v675 ^ 0x81240903)) ^ 0x7A43D3F0) & (v675 ^ 0x81240903) ^ (16 * (v675 ^ 0x81240903)) & 0x97A43D30;
  v678 = v676 ^ 0x97A43D3F ^ (v677 ^ 0x12001100) & (v676 << 8);
  v679 = v671 ^ (2 * ((v678 << 16) & 0x17A40000 ^ v678 ^ ((v678 << 16) ^ 0x3D3F0000) & (((v677 ^ 0x85A42C0F) << 8) & 0x17A40000 ^ 0x13800000 ^ (((v677 ^ 0x85A42C0F) << 8) ^ 0x243D0000) & (v677 ^ 0x85A42C0F))));
  v680 = (((v679 ^ 0x2E9EF126) + 2062096558) ^ ((v679 ^ 0xD649802E) - 2109838938) ^ ((v679 ^ 0x2F063339) + 2071059123)) + 559535404;
  v681 = v680 >= LODWORD(STACK[0x2CC]);
  v682 = LODWORD(STACK[0x2AC]) ^ (v680 < 0xA50080E7);
  v683 = !v681;
  if (v682)
  {
    v684 = STACK[0x2AC];
  }

  else
  {
    v684 = v683;
  }

  return (*(STACK[0x4E0] + 8 * ((27 * (v684 ^ 1)) ^ LODWORD(STACK[0x318]))))(v670 ^ v658 ^ -(v670 ^ v658), v664, v635, 533885297, a88, v542, v655, HIDWORD(v687), a9, a10, a11, a12, a13, a14, a15, a16, v686, v687, v688, v690, v691, v692, v693, v695, v698, v700, v703, v705, v707, v709, a31, a32, v714, v716, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v726, v727, v728, v731, v732, v734, v737, v742, v744, v745, v746, v747, v748, v749, v750, v751);
}

void sub_1002C8930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x2C4]) = a6;
  v70 = v66 ^ (((((LODWORD(STACK[0x218]) + 2140179403) & 0x806F7D3F) + 103315559) & v66 ^ (v66 ^ 0xC32336D0) & a18) >> 1) ^ 0xC2333CF9;
  v71 = STACK[0x350];
  v72 = STACK[0x30C];
  v73 = STACK[0x310];
  LODWORD(STACK[0x370]) = ((v70 & a65) << LODWORD(STACK[0x350])) | ((v70 & STACK[0x30C]) >> LODWORD(STACK[0x310]));
  v74 = STACK[0x304];
  LODWORD(STACK[0x2BC]) = (((v67 ^ ((v67 & a66) >> 1)) & STACK[0x304]) << LODWORD(STACK[0x35C])) | (((v67 ^ ((v67 & a66) >> 1)) & STACK[0x308]) >> LODWORD(STACK[0x354]));
  v75 = v69 ^ ((v68 & 0x4B7B9396 ^ v69 & a17) >> 1) ^ 0x21918948;
  LODWORD(STACK[0x2B0]) = ((v75 & v74) << v71) + ((v75 & v72) >> v73);
  JUMPOUT(0x1002C6A78);
}

void sub_1002C8A6C(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v15 = *(a5 + (BYTE1(v13) ^ 0xBCLL));
  HIDWORD(v16) = v15 ^ (a11 - 172106857) & 0xA421EF3 ^ 0xBBBBBBBB;
  LODWORD(v16) = ~v15 << 24;
  LOBYTE(STACK[0x502]) = (v16 >> 31) ^ 0x8F;
  *a7 = *(a3 + (HIBYTE(v14) ^ 0xEALL)) ^ 0x14;
  v17 = *(a4 + (HIBYTE(v12) ^ 0x34));
  LOBYTE(STACK[0x508]) = v17 ^ 0x14 ^ (((32 * v17) ^ 0xDF) + ((16 * v17) ^ 0x10) - 14);
  LOBYTE(STACK[0x50A]) = *(a4 + (BYTE1(v12) ^ 0x23)) ^ (((32 * *(a4 + (BYTE1(v12) ^ 0x23))) ^ 0xDF) + ((16 * *(a4 + (BYTE1(v12) ^ 0x23))) ^ 0x10) - 14) ^ 0x44;
  LOBYTE(STACK[0x504]) = (HIBYTE(a1) - ((a1 >> 23) & 0x54) - 86) ^ 0x7A ^ *(a6 + (HIBYTE(a1) ^ 0xC2));
  v18 = *(a4 + ((((v11 ^ 0x1D855DC8) >> 16) - ((v11 >> 15) & 0xF0) + 120) ^ 0x68));
  LOBYTE(STACK[0x50D]) = v18 ^ 0x85 ^ (((32 * v18) ^ 0xDF) + ((16 * v18) ^ 0x10) - 14);
  LOBYTE(STACK[0x509]) = *(a4 + (BYTE2(v12) ^ 0xB8)) ^ (((32 * *(a4 + (BYTE2(v12) ^ 0xB8))) ^ 0xDF) + ((16 * *(a4 + (BYTE2(v12) ^ 0xB8))) ^ 0x10) - 14) ^ 0x1C;
  LOBYTE(STACK[0x50E]) = *(a4 + (BYTE1(v11) ^ 0xE5)) ^ 0x42 ^ (((32 * *(a4 + (BYTE1(v11) ^ 0xE5))) ^ 0xDF) + ((16 * *(a4 + (BYTE1(v11) ^ 0xE5))) ^ 0x10) - 14);
  LOBYTE(STACK[0x503]) = (v13 - ((2 * v13) & 0x55) - 86) ^ 0xB1 ^ *(a6 + (v13 ^ 0x87));
  LOBYTE(STACK[0x506]) = *(a4 + (BYTE1(a1) ^ 0x22)) ^ 0x90 ^ (((32 * *(a4 + (BYTE1(a1) ^ 0x22))) ^ 0xDF) + ((16 * *(a4 + (BYTE1(a1) ^ 0x22))) ^ 0x10) - 14);
  LOBYTE(STACK[0x50B]) = (v12 - ((2 * v12) & 0x55) - 86) ^ *(a6 + (v12 ^ 0xE9)) ^ 7;
  v19 = *(a5 + (BYTE2(v13) ^ 0x19));
  HIDWORD(v16) = v19 ^ 0x48;
  LODWORD(v16) = ~v19 << 24;
  LOBYTE(STACK[0x501]) = (v16 >> 31) ^ 0x13;
  LOBYTE(v19) = *(a4 + (HIBYTE(v11) ^ 0x7ELL));
  LOBYTE(STACK[0x50C]) = v19 ^ 0xEC ^ (((16 * v19) ^ 0x10) + ((32 * v19) ^ 0xDF) - 14);
  LOBYTE(STACK[0x507]) = *(a3 + (a1 ^ 0x82)) ^ 0xCF;
  LOBYTE(STACK[0x50F]) = ((v11 ^ 0xC8) - ((2 * (v11 ^ 0xC8)) & 0x55) - 86) ^ *(a6 + (v11 ^ 0xB1)) ^ 0xF8;
  LOBYTE(STACK[0x505]) = *(a3 + (BYTE2(a1) ^ 0x56)) ^ 0x33;
  JUMPOUT(0x1002C8D90);
}

uint64_t sub_1002C8E38@<X0>(uint64_t a1@<X8>)
{
  v5 = *(&off_1006B4E30 + v2 - 9476) - 8;
  v6 = *(*(&off_1006B4E30 + (v2 ^ 0x263A)) + (a1 & 0xF) - 12);
  v7 = *(*(&off_1006B4E30 + (v2 ^ 0x24CD)) + (a1 & 0xF) + 4);
  return (*(v4 + 8 * ((185 * (((((-(a1 & 0xF | ((a1 & 0xF) << 6)) ^ *(v3 + a1) ^ v5[a1 & 0xF] ^ v6 ^ v7 ^ ((v2 ^ 0x6C) + 2)) - 35) ^ ((-(a1 & 0xF | ((a1 & 0xF) << 6)) ^ *(v3 + a1) ^ v5[a1 & 0xF] ^ v6 ^ v7 ^ 0x48) - 11) ^ ((-(a1 & 0xF | ((a1 & 0xF) << 6)) ^ *(v3 + a1) ^ v5[a1 & 0xF] ^ v6 ^ v7 ^ 0x28) - 107)) - *(v1 + a1)) == 189)) ^ v2)))();
}

uint64_t sub_1002C8F64()
{
  v7 = (v4 + 865);
  v8 = (v7 - 8631) & -&STACK[0x4E8];
  v9 = (*(v0 + v8) << (v7 + 113)) + ((-(v8 & 0xF | ((v8 & 0xF) << 6)) ^ *(v5 + v8) ^ *(v1 + (v8 & 0xF)) ^ *(v2 + (v8 & 0xF)) ^ *((v8 & 0xF) + v3 + 4)) << 56);
  v10 = v9 + 0x3CE867D4E30B2CD5 - (((v7 - 1918184666) & 0x72550B1B ^ 0x79D0000000000001) & (2 * v9));
  v11 = *(&off_1006B4E30 + v7 - 7470);
  v12 = (*v11)++;
  v13 = v12 & 0x3F;
  v14 = *(&off_1006B4E30 + v7 - 8125) + 8 * v13 - 8;
  if (v13 > 0x35)
  {
    v14 = *(&off_1006B4E30 + (v7 ^ 0x237A)) + 8 * v13 - 440;
  }

  *v14 = v10;
  return (*(v6 + 8 * v7))();
}

uint64_t sub_1002C9150@<X0>(int a1@<W8>)
{
  v3 = ((a1 ^ 0xB0B2425E) - 161785277) ^ ((a1 ^ 0xC72CDE5F) - 2117745084) ^ ((a1 ^ 0x779E9C00) + 829916189);
  v4 = v1 - v3 - 1473442451;
  v5 = (v4 ^ 0x9EBE28A4) & (2 * (v4 & 0x9EBC0AB1)) ^ v4 & 0x9EBC0AB1;
  v6 = ((2 * (v4 ^ 0xA6FE38A4)) ^ 0x7084642A) & (v4 ^ 0xA6FE38A4) ^ (2 * (v4 ^ 0xA6FE38A4)) & 0x38423214;
  v7 = v6 ^ 0x8421215;
  v8 = (v6 ^ 0x30002000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xE108C854) & v7 ^ (4 * v7) & 0x38423214;
  v10 = v8 ^ 0x38423215 ^ (v9 ^ 0x20000010) & (16 * v8);
  v11 = (16 * (v9 ^ 0x18423201)) & 0x38423210 ^ 0x38401205 ^ ((16 * (v9 ^ 0x18423201)) ^ 0x84232150) & (v9 ^ 0x18423201);
  v12 = v4 ^ (2 * ((((v11 << 8) ^ 0x42320000) & v11 ^ (v11 << 8) & 0x38420000) & (((v10 << 8) & 0x38423200 ^ v10 ^ ((v10 << 8) ^ 0x42321500) & v11) << 16) ^ (v10 << 8) & 0x38423200 ^ v10 ^ ((v10 << 8) ^ 0x42321500) & v11));
  v13 = ((a1 + 10117) ^ 0xDDC8A1B1) - v1 + v3;
  v14 = (v13 ^ 0x9B6F4983) & (2 * (v13 & 0xDB4E61AB)) ^ v13 & 0xDB4E61AB;
  v15 = ((2 * (v13 ^ 0xA97F0A83)) ^ 0xE462D650) & (v13 ^ 0xA97F0A83) ^ (2 * (v13 ^ 0xA97F0A83)) & 0x72316B28;
  v16 = v15 ^ 0x12112928;
  v17 = (v15 ^ 0x60200200) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0xC8C5ACA0) & v16 ^ (4 * v16) & 0x72316B28;
  v19 = v17 ^ 0x72316B28 ^ (v18 ^ 0x40012820) & (16 * v17);
  v20 = (16 * (v18 ^ 0x32304308)) & 0x72316B20 ^ 0x50214928 ^ ((16 * (v18 ^ 0x32304308)) ^ 0x2316B280) & (v18 ^ 0x32304308);
  v21 = (v19 << 8) & 0x72316B00 ^ v19 ^ ((v19 << 8) ^ 0x316B2800) & v20;
  v22 = ((v13 ^ (2 * ((v21 << 16) ^ v21 ^ ((v21 << 16) ^ 0x43280000) & ((v20 << 8) & 0x72310000 ^ 0x42100000 ^ ((v20 << 8) ^ 0x316B0000) & v20)))) & v12 & 0x80000000) == 0;
  v23 = a1 - ((a1 + 1254289227) & (2 * a1)) + 627144614;
  return (*(v2 + 8 * ((14427 * ((v23 ^ v22 ^ (a1 - 27607 + (v23 ^ 0xDA9E8859) + 1)) == 627144614)) ^ (a1 + 6530))))();
}

uint64_t sub_1002C9508()
{
  v3 = v0 - 723;
  v4 = v1;
  v5 = *(STACK[0x208] + 8);
  v6 = *(STACK[0x208] + 16);
  v7 = ((v0 - 1674730695) & 0x63D23F4D) + 2956;
  *v5 = v4;
  *v6 = (*(v2 + 8 * ((v0 - 723) ^ 0x148C)))();
  return (*(v2 + 8 * (v3 | (8 * (*v5 != ((v7 ^ 0x6CE1E695) & (2 * *v5)))))))();
}

uint64_t sub_1002C970C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3884 * (((v3 - 3795) | 0x201u) - 929 == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_1002C97E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 10662)) ^ v3)))();
}

uint64_t sub_1002C9818()
{
  (*(v3 + 8 * (v1 ^ 0x254C)))(v2);
  result = v5;
  *(v5 + 24) = v0;
  return result;
}

uint64_t sub_1002C98F8(int *a1, uint64_t a2)
{
  v3 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5950) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D5950) ^ 0x89))] ^ 0x84]) + 250);
  v4 = *(v3 - 4);
  v5 = *(&off_1006B4E30 + (byte_10066CDA0[byte_10064CDF8[(99 * ((dword_1006D53C8 - v4) ^ 0x89)) - 8] ^ 0xCD] ^ (99 * ((dword_1006D53C8 - v4) ^ 0x89))) + 1075);
  v6 = &v8[*v5 ^ v4];
  *(v3 - 4) = (1758147683 * v6) ^ 0xFB29CEEFDABC1789;
  *v5 = 1758147683 * (v6 ^ 0xFB29CEEFDABC1789);
  v9[0] = (784480913 * ((((v9 | 0x32601F02) ^ 0xFFFFFFFE) - (~v9 | 0xCD9FE0FD)) ^ 0xEB029A86)) ^ 0x2F56;
  v10 = a2;
  LOBYTE(v5) = 99 * (*(v3 - 4) ^ 0x89 ^ *v5);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D5950) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D5950) ^ 0x89))] ^ 0x27]) + 693) + 8 * (byte_10062CD84[(aMG[v5 - 8] ^ 0xDC) - 4] ^ v5) + 98836))(v9);
  *a1 = v9[2] ^ 0x572CA21F;
  return 0;
}

void sub_1002C9B10()
{
  v0 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89)) ^ byte_10066CDA0[byte_10064CDF0[(99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89))] ^ 0xCD]) + 158);
  v1 = 99 * ((dword_1006D53C8 - *v0) ^ 0x89);
  v2 = *(&off_1006B4E30 + (byte_10064CEF8[(byte_10062CC88[v1 - 8] ^ 0xCA) - 8] ^ v1) + 888);
  v3 = *v0 - &v8 + *v2;
  *v0 = 1758147683 * (v3 + 0x4D631102543E877);
  *v2 = 1758147683 * (v3 ^ 0xFB29CEEFDABC1789);
  v4 = (99 * (*v0 ^ 0x89 ^ *v2));
  v5 = *(&off_1006B4E30 + ((99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 + dword_1006D54D8) ^ 0x89))] ^ 5]) + 790) - 4;
  v6 = (*&v5[8 * (byte_10066CDA0[byte_10064CDF8[v4 - 8] ^ 0xB] ^ (99 * (*v0 ^ 0x89 ^ *v2))) + 99704])(*(&off_1006B4E30 + (byte_10060CED0[byte_10066CEA8[v4 - 8] ^ 0xBB] ^ (99 * (*v0 ^ 0x89 ^ *v2))) + 259), sub_10016D1E8);
  v7 = 99 * (*v0 ^ 0x89 ^ *v2);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002C9DA8()
{
  v3 = 23958;
  *(v0 + 6784) = dword_1006CCDC4;
  atomic_compare_exchange_strong(dword_1006CCDC4, &v3, 0xA94EFu);
  return (*(v2 + 8 * (((v3 == 23958) * v1) ^ 0xF53u)))();
}

uint64_t sub_1002C9DE8()
{
  v3 = *(v2 + 8 * ((11315 * (**(v0 + 1304) == 0)) ^ 0x40Eu));
  v4 = *(v0 + 1040);
  v1[1306] = v2;
  v1[694] = v4 - 4;
  v1[654] = v4 + 156;
  return v3();
}

uint64_t sub_1002C9E64()
{
  v8 = v0 ^ 0x7FC;
  v9 = v0 ^ 0x7FC ^ (v2 + 1357);
  *v1 = 0;
  v10 = (*(v7 + 8 * (v0 ^ 0x3431u)))(0x100000, 3230639132);
  v11 = *(v3 + 5552);
  v12 = *(v3 + 10448);
  *(v11 + 8) = v10;
  *v4 = 1;
  *(v11 + 160) = 0u;
  *(v11 + 176) = v6;
  *(v11 + 184) = v6;
  *(v11 + 144) = 0x387EF02600000000;
  *(v11 + 152) = 0x18CE01187510FD2ALL;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  return (*(v12 + 8 * (((v10 == 0) * ((v8 - 79257236) & 0xEAF ^ (v5 + v9 + 1026))) | v8)))();
}

uint64_t sub_1002C9F70()
{
  *v1 = 2576747354;
  v5 = v2 == ((v3 + v0 + 36) | 0x59u) - 109;
  return (*(v4 + 8 * (((4 * v5) | (8 * v5)) ^ (v3 + v0 + 471))))();
}

void sub_1002CCDE4()
{
  *(v0 + 148) = 596906280;
  *(v0 + 152) = 0x18CE0118854FB556;
  *(v0 + 160) = 3944793414;
  *(v0 + 168) = 1148259094;
  *(v0 + 176) = 24562510;
  *(v0 + 184) = 1816293146;
  **(v1 + 6784) = 23958;
  sub_1002E1834();
}

uint64_t sub_1002CCE80()
{
  *(v2 + 10432) = v3;
  v5 = *(v2 + 11512);
  *(v2 + 13192) = v5;
  *(v2 + 13204) = *(v2 + 11048);
  *(v2 + 10588) = 0;
  *(v2 + 11928) = 0;
  return (*(v4 + 8 * (((8 * ((((v0 - v1 - 81) & 0xDC ^ (v5 == 0)) & 1) == 0)) & 0xEF | (16 * (((v0 - v1 + 125879727) & 0xF87F37DC ^ ~(v5 == 0)) & 1))) ^ v0)))();
}

uint64_t sub_1002CCEF0()
{
  v1 = *(v0 + 13276);
  v2 = *(v0 + 13264);
  *(v0 + 10208) = v2 + (v1 - 16);
  v3 = (((v1 + 12) ^ (4 - v1) ^ (-71 - v1) ^ (((-71 - v1) ^ 4) - 1)) ^ (((-71 - v1) ^ 0xE) + 5)) & 0xF;
  v4 = (((v3 ^ 0xC68D3852) - 1482899390) ^ ((v3 ^ 0x57284E14) + 909751816) ^ ((v3 ^ 0x91A57643) - 256602543)) - 1628567595;
  v5 = v4 + v1;
  v6 = 2 * (v1 - 20);
  *(v0 + 10272) = v1;
  v7 = v1 - 1234110094 - (v6 & 0x6CE1F30C);
  *(v0 + 10192) = ((v4 + 20) ^ 0xACAFBF5DEF9FD767) + 0x535040A23ACF646CLL + ((2 * (v4 + 20)) & 0x1DF3FAECELL);
  *(v0 + 10184) = ((v1 - 20) ^ 0xADFECBF7) + 1375810569 + (v6 & 0x5BFD97EE);
  v8 = *(v0 + 13252);
  v9 = *(v0 + 13240);
  v10 = v8 - 20;
  *(v0 + 10176) = v9 + (v8 - 16);
  v11 = (((-106 - v8) ^ (v8 + 12) ^ (v8 + 108)) ^ ((((-106 - v8) ^ 0xFB) + 7) ^ (((-106 - v8) ^ 0xF9) + 5))) & 0xF;
  v12 = (((v11 ^ 0x787146BB) - 1488629360) ^ (v11 - 524720331) ^ ((v11 ^ 0x3687FAA9) - 374084194)) + 550234293;
  v13 = (v12 + v8);
  v14 = 2 * (v8 - 20);
  *(v0 + 10256) = v8;
  v15 = v8 - 1234110094 - (v14 & 0x6CE1F30C);
  *(v0 + 10160) = ((v12 + 20) ^ 0xDEF7FFD7EF9BF5E3) + 0x210800283AD345F0 + ((2 * (v12 + 20)) & 0x1DF37EBC6);
  *(v0 + 10152) = (v10 ^ 0x2FEE6D57) - 804154711 + (v14 & 0x5FDCDAAEu);
  v16 = *(v0 + 13228);
  v17 = *(v0 + 13216);
  *(v0 + 10144) = v17 + (v16 - 16);
  v18 = (((((99 - v16) ^ 0xFD) + 14) ^ (99 - v16)) ^ (((99 - v16) ^ 0xAA) + 11)) & 0xF;
  v19 = (((v18 ^ 0x3B6B16B3) + 1862012568) ^ ((v18 ^ 0xC5DABEA2) - 1873959289) ^ ((v18 ^ 0xFEB1A81E) - 1423527877)) - 1435965504 + v16;
  v20 = 2 * (v16 - 20);
  *(v0 + 10248) = v16;
  v21 = v16 - 1234110094 - (v20 & 0x6CE1F30C);
  *(v0 + 10128) = ((v16 - 20) ^ 0xBFEF7DD7) + 1074823721 + (v20 & 0x7FDEFBAE);
  v22 = *(v0 + 13204);
  v23 = (((-112 - v22) ^ (v22 + 12) ^ (((-112 - v22) ^ 8) + 12)) ^ ((((-112 - v22) ^ 0xAA) + 10) ^ (((-112 - v22) ^ 1) + 3))) & 0xF;
  v24 = (((v23 ^ 0x5AF30328) - 1555924935) ^ ((v23 ^ 0x2FD14291) - 698336894) ^ ((v23 ^ 0x752241B5u) - 1936508250)) + 105809103 + v22;
  v25 = 2 * (v22 - 20);
  v26 = v22 - 1234110094 - (v25 & 0x6CE1F30C);
  *(v0 + 10240) = v5;
  *(v0 + 10112) = v5 - 751357895 - ((2 * v5) & 0xA66E6072);
  *(v0 + 10232) = v13;
  *(v0 + 10104) = v13 - 751357895 - ((2 * v13) & 0xA66E6072);
  *(v0 + 10224) = v19;
  *(v0 + 10096) = v19 - 751357895 - ((2 * v19) & 0xA66E6072);
  *(v0 + 10216) = v24;
  *(v0 + 10088) = v24 - 751357895 - ((2 * v24) & 0xA66E6072);
  v27 = *(v0 + 13192);
  *(v0 + 10288) = v22;
  *(v0 + 10080) = v27 + (v22 - 16);
  *(v0 + 10072) = ((v22 - 20) ^ 0x3DEF795F) - 1039105792 + (v25 & 0x7BDEF2BEu) + 1441;
  *(v0 + 10200) = v7;
  v28 = v7 ^ 0xB670F986;
  *(v0 + 10000) = v28 + v2 - 4;
  *(v0 + 10168) = v15;
  v29 = v15 ^ 0xB670F986;
  *(v0 + 9992) = v29 + v9 - 4;
  *(v0 + 10136) = v21;
  v30 = v21 ^ 0xB670F986;
  *(v0 + 9984) = v30 & 0xFFFFFFF8;
  *(v0 + 9976) = -6078 - (v30 & 0xFFFFFFF8);
  *(v0 + 9968) = v30 + v17 - 4;
  *(v0 + 10120) = v26;
  v31 = v26 ^ 0xB670F986;
  *(v0 + 9960) = v31 + v27 - 4;
  *(v0 + 9952) = v28 & 0xFFFFFFF8;
  *(v0 + 9928) = 8 - (v28 & 0xFFFFFFF8);
  *(v0 + 9944) = v29 & 0xFFFFFFF8;
  *(v0 + 9920) = 8 - (v29 & 0xFFFFFFF8);
  *(v0 + 9936) = v31 & 0xFFFFFFF8;
  *(v0 + 9912) = 8 - (v31 & 0xFFFFFFF8);
  *(v0 + 9840) = -83929122;
  *(v0 + 10352) = v2;
  *(v0 + 10416) = v2 + 4;
  *(v0 + 10336) = v9;
  *(v0 + 10400) = v9 + 4;
  *(v0 + 10320) = v17;
  *(v0 + 10384) = v17 + 4;
  *(v0 + 10304) = v27;
  *(v0 + 10368) = v27 + 4;
  *(v0 + 10032) = v28 & 0xFFFFFFE0;
  *(v0 + 9832) = (v7 ^ 0x86) & 0x1F;
  *(v0 + 9824) = (v7 ^ 0x86) & 0x18;
  *(v0 + 9904) = (v7 ^ 0x86) & 7;
  *(v0 + 10024) = v29 & 0xFFFFFFE0;
  *(v0 + 9816) = (v15 ^ 0x86) & 0x1F;
  *(v0 + 9808) = (v15 ^ 0x86) & 0x18;
  *(v0 + 9896) = (v15 ^ 0x86) & 7;
  *(v0 + 10016) = v30 & 0xFFFFFFE0;
  *(v0 + 9800) = (v21 ^ 0x86) & 0x1F;
  *(v0 + 9792) = (v21 ^ 0x86) & 0x18;
  *(v0 + 9888) = (v21 ^ 0x86) & 7;
  *(v0 + 10008) = v31 & 0xFFFFFFE0;
  *(v0 + 9784) = (v26 ^ 0x86) & 0x1F;
  *(v0 + 9776) = (v26 ^ 0x86) & 0x18;
  *(v0 + 9880) = (v26 ^ 0x86) & 7;
  *(v0 + 10064) = v28;
  *(v0 + 9872) = v28 - 8;
  *(v0 + 10056) = v29;
  *(v0 + 9864) = v29 - 8;
  *(v0 + 10048) = v30;
  *(v0 + 9856) = v30 - 8;
  *(v0 + 10040) = v31;
  *(v0 + 9848) = v31 - 8;
  return sub_1002CCF68();
}

uint64_t sub_1002CD054(uint64_t a1, uint64_t a2)
{
  v5 = v2[1296] != 0;
  v2[1651] = v2[1288];
  v6 = v2[1563];
  v2[1563] = v6 + 16;
  v7 = (*(v4 + 8 * (v3 + 11560)))(a2 + v6, 0, 16);
  return (*(v2[1306] + 8 * (((((v3 - 1744044000) | 0x40230388) ^ ((v3 ^ 0x105) - 668009062)) * v5) ^ v3)))(v7);
}

uint64_t sub_1002CD29C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, unsigned int a4@<W7>, int a5@<W8>)
{
  v10 = (((a5 ^ a4) + v8) ^ v5) + a1;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v7 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v6 + 8 * (((v5 + 32 == a3) * v9) ^ a5)))();
}

uint64_t sub_1002CD378()
{
  v6 = (v5 + v4[1231] - v1);
  v7 = (v4[1245] - v1);
  v8 = v4[1239] + v1 == 0;
  v9 = v2 + v0;
  v10 = (v2 + v0 + 1613) | 0x106;
  v11 = v9 + 1896;
  *v6 = *v7;
  v12 = !v8;
  return (*(v3 + 8 * ((v12 * (v10 - 4565)) ^ v11)))();
}

uint64_t sub_1002CD43C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v7 + (a1 + v6 + 661) - 662;
  *(v9 + v11) = *(a6 + v11);
  return (*(v8 + 8 * (((v11 == 0) * v10) ^ (a1 + v6 + 718))))();
}

uint64_t sub_1002CD4BC@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X3>, int a4@<W8>)
{
  v10 = v9 < a3;
  *(v8 + v4 + v5) = 0;
  v11 = v4 + 1;
  if (v10 == v11 > a2)
  {
    v10 = v11 + a3 < v9;
  }

  return (*(v7 + 8 * ((v10 * (((a4 + v6) & a1) - 392)) ^ a4)))();
}

uint64_t sub_1002CD510()
{
  v7 = 122489177 * ((((v6 - 200) | 0x858E2219) - ((v6 - 200) & 0x858E2219)) ^ 0x46E96D03);
  *v1 = v5 - v7 + 11804;
  *(v1 + 24) = *(v2 + 10088) ^ v7;
  *(v1 + 8) = v4;
  *(v1 + 16) = v3;
  (*(v0 + 8 * (v5 ^ 0x3082)))(v6 - 200);
  v8 = *(v6 - 196);
  (*(*(v2 + 10448) + 8 * (v5 ^ 0x315F)))(v4);
  return (*(*(v2 + 10448) + 8 * ((1937 * (v8 == ((v5 - 937229694) | 0x100C0380) + 1356141007)) ^ v5)))(2164393286, 39, 258, 6534);
}

uint64_t sub_1002CF098()
{
  *(v1 + 10432) = v2;
  v4 = v0 + 668016640;
  v5 = (*(v3 + 8 * (v0 + 668018867)))(*(v1 + 13228) + ((v0 + 1938275311) & 0xB4493DEF) - 371, 0x100004077774924);
  v6 = *(v1 + 10448);
  *(v1 + 12664) = v5;
  return (*(v6 + 8 * ((58 * (v5 == 0)) ^ v4)))();
}

uint64_t sub_1002CF148(uint64_t a1)
{
  v6 = 961063711 * ((((2 * (v4 - 200)) | 0xC07AF1AC) - (v4 - 200) + 532842282) ^ 0x91C9B1C9);
  v7 = v4 - 200;
  *(v7 + 24) = *(v1 + 13232) + 8;
  *v7 = a1;
  *(v7 + 12) = v6 + ((v3 ^ 0xD82F06E7) + 1871657897 + ((v3 + 1051475566) & 0xC153D5AF) + 3499) * v2 + 818229821;
  *(v7 + 16) = v3 - v6 + 10961;
  v8 = (*(v5 + 8 * (v3 ^ 0x3066)))(v4 - 200);
  return (*(*(v1 + 10448) + 8 * ((4607 * (*(v4 - 192) == 688134491)) ^ v3)))(v8);
}

uint64_t sub_1002CF23C()
{
  v5 = *(v0 + 10492) - 6813204;
  v6 = v5 < 2140670443;
  v7 = v5 > v1 - 1916325994;
  if (v6 != v1 - 1916325994 < ((v3 + ((v2 + 1210707583) | 0x90050384) + 318) ^ 0x7F9808D5))
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((!v7 | (4 * !v7)) ^ v2)))();
}

uint64_t sub_1002CF2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = (a2 ^ 0x6FEFD5FAABD07C13 ^ (v2 - 5292418) & 0xD87FC7CF) + v6 - 0x6FEFD5FA73FF7B9FLL + ((a2 << ((19 * (v2 ^ 0xC7)) ^ 0x7Au)) & 0xDFDFABF4E7FEF73ELL);
  v9 = -1931008275 * ((-1931008275 * v8) ^ ((-1931008275 * v8) >> 16));
  LODWORD(v9) = (*(*(v3 + 10432) + (v9 >> 24)) ^ *v8 ^ *(v4 + (v9 >> 24) + 2) ^ *(v5 + (v9 >> 24) + 2) ^ (-19 * ((-19 * v8) ^ ((-1931008275 * v8) >> 16))) ^ (77 * ((-1931008275 * ((-1931008275 * v8) ^ ((-1931008275 * v8) >> 16))) >> 24)));
  *(v3 + 10492) = a2 + 1;
  return (*(v7 + 8 * ((85 * (v9 != 13)) ^ v2)))(a1, v6);
}

uint64_t sub_1002CF3D0@<X0>(int a1@<W8>)
{
  v4 = a1 + 890267154;
  v5 = v4 < -1257216499;
  v6 = v4 > v2 - 1019245640;
  if (v2 - 1019245640 < -1257216499 != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * (((2 * ((v6 ^ ((v1 ^ 0xF7) + 115)) & 1)) & 0xFB | (4 * ((v6 ^ ((v1 ^ 0xF7) + 115)) & 1))) ^ v1)))();
}

uint64_t sub_1002CF45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 13040) = *(v6 + 8 * (v3 + 14));
  v7 = *(v4 + 10432);
  *(v4 + 10416) = 15;
  *(v4 + 10400) = 29;
  *(v4 + 10384) = 16;
  *(v4 + 10224) = -92332115;
  *(v4 + 10232) = -550563859;
  *(v4 + 10368) = 27;
  *(v4 + 10256) = 7031;
  *(v4 + 10320) = 1;
  *(v4 + 10352) = 35;
  *(v4 + 10304) = 936398159;
  *(v4 + 10248) = 1476395652;
  *(v4 + 10288) = -1509308681;
  *(v4 + 10336) = 31;
  *(v4 + 10240) = 51;
  *(v4 + 10272) = 2030504280;
  *(v4 + 10432) = -778509309;
  return (*(v6 + 8 * ((((((v3 - 172452249) & 0xA476FFF) - 1447) | 0x11C) - 256) ^ (((v3 - 172452249) & 0xA476FFF) + 5110))))(v4 + 12808, a2, a3, 668019017, v7, v5, 4294960739, 284);
}

uint64_t sub_1002D05BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v13 = v5 ^ v7;
  v14 = -1931008275 * (a5 + a2 + v9 + v13);
  *(a1 - 1 + v13) = *(a3 + ((-1931008275 * (v14 ^ HIWORD(v14))) >> 24)) ^ *(a2 + a5 + v10 + v13) ^ *(v8 + ((-1931008275 * (v14 ^ HIWORD(v14))) >> 24) + 2) ^ *(a4 + ((-1931008275 * (v14 ^ HIWORD(v14))) >> 24) + 2) ^ (-19 * (v14 ^ BYTE2(v14))) ^ (((-1931008275 * (v14 ^ HIWORD(v14))) >> 24) * (v6 + 113));
  return (*(v12 + 8 * (((v13 == 1) * v11) | v6)))();
}

uint64_t sub_1002D0678()
{
  v2 = *(v0 + 11412);
  *(v0 + 11412) = v2 + 4;
  v3 = *(v0 + 10608);
  *(v0 + 13288) = *(v0 + 10840) + 16;
  v2 += 915306508;
  v3 -= 994206286;
  v4 = v2 < (*(v0 + 10416) ^ 0xB68E7808);
  v5 = v2 > v3;
  if (v4 != v3 < -1232177145)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((461 * !v5) ^ 0x1EDC)))();
}

uint64_t sub_1002D0788()
{
  v2 = *(v0 + 11412);
  *(v0 + 11412) = v2 + 1;
  v3 = *(v0 + 10608);
  *(v0 + 13304) = *(v0 + 10840) + 48;
  v4 = (*(v0 + 10400) ^ 0x3C60D7) + v2;
  v3 -= 1905555853;
  v5 = v4 < -2143526712;
  v6 = v4 > v3;
  if (v5 != v3 < -2143526712)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((11 * !v6) ^ 0x1B93)))();
}

uint64_t sub_1002D0898()
{
  v2 = *(v0 + 11412);
  *(v0 + 11412) = v2 + 1;
  v3 = *(v0 + 10608);
  *(v0 + 13312) = *(v0 + 10840) + 64;
  v2 -= 873288570;
  v3 += 1512165935;
  v4 = v2 < 1274195076;
  v5 = v2 > v3;
  if (v4 != v3 < 1274195076)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((469 * v5) ^ 0x22FA)))();
}

uint64_t sub_1002D0998()
{
  v3 = *(v0 + 11412);
  *(v0 + 11412) = v3 + 1;
  v4 = *(v0 + 10608);
  *(v0 + 13320) = *(v0 + 10840) + 80;
  v3 -= 638213791;
  v4 += 1747240714;
  v5 = v3 < 1509269855;
  v6 = v3 > v4;
  if (v5 != v4 < 1509269855)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((2 * (((v1 - 99) ^ v6) & 1)) ^ 0x2261)))();
}

uint64_t sub_1002D272C@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 10608) + 1858695213;
  v6 = (a1 - 526759291 < 1620724354) ^ (v5 < v1 + 1620713039);
  v7 = a1 - 526759291 > v5;
  if (v6)
  {
    v7 = a1 - 526759291 < 1620724354;
  }

  return (*(v4 + 8 * ((v7 * (v2 + (v1 ^ 0xD82F2BBF) + 6)) ^ v1)))();
}

uint64_t sub_1002D27E0()
{
  v2 = *(v0 + 10288) & 0x59F63FEE;
  *(v0 + 11412) += v2 ^ 0x6E2;
  *(v0 + 10872) = (*(v1 + 98808))(*(v0 + 12220), 0x100004077774924);
  v3 = *(v0 + 13320);
  v4 = (*(*(v0 + 10448) + 98808))(16 * *v3, 0x1010040A1D9428BLL);
  v5 = *(v0 + 10448);
  *(v0 + 12744) = v4;
  *(v0 + 13412) = 0;
  *(v0 + 13411) = 0;
  return (*(v5 + 8 * (((*v3 == 0) * (((4067 * (v2 ^ 0x6E5) - 1657911468) & 0x62D18BEF) - 254)) ^ v2)))();
}

uint64_t sub_1002D2AC0()
{
  v4 = *(v2 + 11412) - 2003768020;
  v5 = ((v1 + v0 + 1390) ^ 0xCEEF155F) + *(v2 + 10608);
  v6 = (v4 < 143715624) ^ (v5 < 143715624);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 143715624;
  }

  return (*(v3 + 8 * ((488 * !v7) ^ v0)))();
}

uint64_t sub_1002D2BB0()
{
  *(v0 + 11412) += 4;
  *(v0 + 11656) = (*(v1 + 98808))(4 * *(v0 + 12340), 0x100004052888210);
  v2 = *(v0 + 13336);
  v3 = (*(*(v0 + 10448) + 98808))(16 * *v2, 0x10800409227ACB4);
  v4 = *(v0 + 10448);
  *(v0 + 10512) = v3;
  *(v0 + 13436) = 0;
  *(v0 + 13435) = 0;
  return (*(v4 + 8 * ((10 * (*v2 != 0)) ^ 0x2E47)))();
}

uint64_t sub_1002D2E80@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v6 = v2 ^ (v3 + 1365);
  v7 = *(v4 + 11864);
  v8 = *(v4 + 10608);
  *(v4 + 13440) = a2;
  v9 = *(v4 + 11412) + (v6 ^ 0xBA016408);
  v8 -= 262305493;
  v10 = (v8 < -500276352) ^ (v9 < -500276352);
  v11 = v9 > v8;
  if (v10)
  {
    v11 = v9 < -500276352;
  }

  return (*(v5 + 8 * ((v11 * (5 * (v2 ^ 0x301) - 50)) ^ v2)))(a1, v7);
}

uint64_t sub_1002D3444()
{
  v4 = *(v2 + 11412) + ((v1 + v0 - 1025) ^ 0x1AE9843B);
  v5 = *(v2 + 10608) + 1358276958;
  v6 = (v5 < 1120306099) ^ (v4 < 1120306099);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 1120306099;
  }

  return (*(v3 + 8 * ((v7 * (v0 ^ 0xC69)) ^ v0)))();
}

uint64_t sub_1002D3544()
{
  v4 = (*(v3 + 8 * (v1 ^ 0x2AAC)))(65, 0x100004077774924);
  v5 = *(v0 + 10448);
  *(v0 + 12368) = v4;
  v6 = *(v0 + 11412) + 257832576;
  v7 = *(v0 + 10608) - 1651680278;
  v8 = (v7 < -1889651137) ^ (v6 < -1889651137);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < -1889651137;
  }

  return (*(v5 + 8 * ((115 * (((5 * (v1 ^ (v2 - 53) ^ 0x85)) ^ v9) & 1)) ^ v1)))();
}

uint64_t sub_1002D3758@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = *(v3 + 11864);
  v6 = *(v3 + 10608);
  *(v3 + 13368) = v2;
  v7 = *(v3 + 11412) + ((a2 - 668017247) ^ 0x9B9A43F6);
  v6 -= 773559772;
  v8 = (v6 < -1011530631) ^ (v7 < -1011530631);
  v9 = v7 > v6;
  if (v8)
  {
    v9 = v7 < -1011530631;
  }

  return (*(v4 + 8 * ((998 * (((a2 + 34) ^ v9) & 1)) ^ a2)))(a1, v5);
}

uint64_t sub_1002D3930@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v5 = (v2 - 117447536) & *(v3 + 10232);
  v6 = *(v3 + 11864);
  v7 = *(v3 + 10608);
  *(v3 + 13384) = a2;
  v8 = *(v3 + 11412) + 1662912602;
  v7 -= 246600188;
  v9 = (v7 < -484571047) ^ (v8 < ((v2 - 4856) ^ 0x3B310FC3 ^ v5));
  v10 = v8 > v7;
  if (v9)
  {
    v10 = v8 < ((v2 - 4856) ^ 0x3B310FC3 ^ v5);
  }

  return (*(v4 + 8 * ((19 * !v10) ^ v2)))(a1, v6);
}

uint64_t sub_1002D3AF4()
{
  v3 = *(v1 + 11412) - 1018269935;
  v4 = *(v1 + 10608) + 1367184568;
  v5 = (v4 < 1129213709) ^ (v3 < 1129213709);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 1129213709;
  }

  return (*(v2 + 8 * ((!v6 * (((v0 ^ 0xD82F0DB1) + 668006519) ^ 0x4D)) ^ v0)))();
}

uint64_t sub_1002D3BEC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v5 = *(v3 + 11864);
  v6 = *(v3 + 10608);
  *(v3 + 13400) = a2;
  v7 = ((v2 + 405332795) ^ 0x1829023D) + ((v2 + 405332795) | 0xC0060580) + *(v3 + 11412) + 653342265;
  v6 -= 1924176992;
  v8 = (v6 < 2132819445) ^ (v7 < 2132819445);
  v9 = v7 > v6;
  if (v8)
  {
    v9 = v7 < 2132819445;
  }

  return (*(v4 + 8 * ((13 * v9) ^ v2)))(a1, v5);
}

uint64_t sub_1002D3CFC()
{
  *(v0 + 10588) += 4;
  (*(v1 + 100008))(*(v0 + 11928));
  return sub_1002D784C();
}

uint64_t sub_1002D3D3C()
{
  *(v0 + 10492) += 4;
  v3 = (*(v2 + 100008))(*(v0 + 12664));
  v4 = *(v0 + 10448);
  v5 = *(v0 + 11512);
  v6 = *(v0 + 11048);
  *(v0 + 12848) = *(v4 + 8 * (v1 - 668006273));
  v7 = *(v0 + 5256);
  *(v0 + 12296) = v5;
  *(v0 + 10700) = v6;
  *(v0 + 11120) = v7;
  return (*(v4 + 8 * ((7369 * (*v7 == 0)) ^ 0xC55)))(v3);
}

uint64_t sub_1002D3EFC()
{
  (*(v2 + 8 * (*(v0 + 10432) + 668019017)))(*(v0 + 12920));
  *(v0 + 12104) = *(*(v0 + 10448) + 8 * v1);
  return sub_1002D411C(0xA94EFu);
}

uint64_t sub_1002D3FF8@<X0>(int a1@<W8>)
{
  v3 = a1 + 1726;
  v4 = a1 - 88127860;
  v5 = (v4 - 512716617) & 0xFBFF27ED;
  v6 = (v4 + 2311) & 0xDD6FAF9D;
  v7 = *(v1 + 11512);
  *(v1 + 13216) = v7;
  *(v1 + 13228) = *(v1 + 11048);
  *(v1 + 10492) = 0;
  *(v1 + 12664) = 0;
  return (*(v2 + 8 * ((((v5 ^ 0xFFFFFF3D) + v6) * (v7 == 0)) ^ v3)))();
}

uint64_t sub_1002D4080()
{
  v4 = (*(v3 + 8 * (v2 ^ 0xD82F3759)))(*(v0 + 12664));
  v5 = *(v0 + 10448);
  *(v0 + 11036) = v1;
  return (*(v5 + 8 * (((*(v0 + 11512) == 0) * ((((v2 + 668014732) | 0x146) - 668015058) ^ 0xD82F07A4 ^ (((v2 + 668014732) | 0x146) - 1762703199) & 0x691096FF)) ^ ((v2 + 668014732) | 0x146))))(v4);
}

uint64_t sub_1002D40D0()
{
  *(v0 + 10432) = v1;
  v2 = *(v0 + 13276);
  v3 = *(v0 + 13264);
  *(v0 + 10208) = v3 + (v2 - 16);
  v4 = (((v2 + 12) ^ (4 - v2) ^ (-71 - v2) ^ (((-71 - v2) ^ 4) - 1)) ^ (((-71 - v2) ^ 0xE) + 5)) & 0xF;
  v5 = (((v4 ^ 0xC68D3852) - 1482899390) ^ ((v4 ^ 0x57284E14) + 909751816) ^ ((v4 ^ 0x91A57643) - 256602543)) - 1628567595;
  v6 = v5 + v2;
  v7 = 2 * (v2 - 20);
  *(v0 + 10272) = v2;
  v8 = v2 - 1234110094 - (v7 & 0x6CE1F30C);
  *(v0 + 10192) = ((v5 + 20) ^ 0xACAFBF5DEF9FD767) + 0x535040A23ACF646CLL + ((2 * (v5 + 20)) & 0x1DF3FAECELL);
  *(v0 + 10184) = ((v2 - 20) ^ 0xADFECBF7) + 1375810569 + (v7 & 0x5BFD97EE);
  v9 = *(v0 + 13252);
  v10 = *(v0 + 13240);
  v11 = v9 - 20;
  *(v0 + 10176) = v10 + (v9 - 16);
  v12 = (((-106 - v9) ^ (v9 + 12) ^ (v9 + 108)) ^ ((((-106 - v9) ^ 0xFB) + 7) ^ (((-106 - v9) ^ 0xF9) + 5))) & 0xF;
  v13 = (((v12 ^ 0x787146BB) - 1488629360) ^ (v12 - 524720331) ^ ((v12 ^ 0x3687FAA9) - 374084194)) + 550234293;
  v14 = (v13 + v9);
  v15 = 2 * (v9 - 20);
  *(v0 + 10256) = v9;
  v16 = v9 - 1234110094 - (v15 & 0x6CE1F30C);
  *(v0 + 10160) = ((v13 + 20) ^ 0xDEF7FFD7EF9BF5E3) + 0x210800283AD345F0 + ((2 * (v13 + 20)) & 0x1DF37EBC6);
  *(v0 + 10152) = (v11 ^ 0x2FEE6D57) - 804154711 + (v15 & 0x5FDCDAAEu);
  v17 = *(v0 + 13228);
  v18 = *(v0 + 13216);
  *(v0 + 10144) = v18 + (v17 - 16);
  v19 = (((((99 - v17) ^ 0xFD) + 14) ^ (99 - v17)) ^ (((99 - v17) ^ 0xAA) + 11)) & 0xF;
  v20 = (((v19 ^ 0x3B6B16B3) + 1862012568) ^ ((v19 ^ 0xC5DABEA2) - 1873959289) ^ ((v19 ^ 0xFEB1A81E) - 1423527877)) - 1435965504 + v17;
  v21 = 2 * (v17 - 20);
  *(v0 + 10248) = v17;
  v22 = v17 - 1234110094 - (v21 & 0x6CE1F30C);
  *(v0 + 10128) = ((v17 - 20) ^ 0xBFEF7DD7) + 1074823721 + (v21 & 0x7FDEFBAE);
  v23 = *(v0 + 13204);
  v24 = (((-112 - v23) ^ (v23 + 12) ^ (((-112 - v23) ^ 8) + 12)) ^ ((((-112 - v23) ^ 0xAA) + 10) ^ (((-112 - v23) ^ 1) + 3))) & 0xF;
  v25 = (((v24 ^ 0x5AF30328) - 1555924935) ^ ((v24 ^ 0x2FD14291) - 698336894) ^ ((v24 ^ 0x752241B5u) - 1936508250)) + 105809103 + v23;
  v26 = 2 * (v23 - 20);
  v27 = v23 - 1234110094 - (v26 & 0x6CE1F30C);
  *(v0 + 10240) = v6;
  *(v0 + 10112) = v6 - 751357895 - ((2 * v6) & 0xA66E6072);
  *(v0 + 10232) = v14;
  *(v0 + 10104) = v14 - 751357895 - ((2 * v14) & 0xA66E6072);
  *(v0 + 10224) = v20;
  *(v0 + 10096) = v20 - 751357895 - ((2 * v20) & 0xA66E6072);
  *(v0 + 10216) = v25;
  *(v0 + 10088) = v25 - 751357895 - ((2 * v25) & 0xA66E6072);
  v28 = *(v0 + 13192);
  *(v0 + 10288) = v23;
  *(v0 + 10080) = v28 + (v23 - 16);
  *(v0 + 10072) = ((v23 - 20) ^ 0x3DEF795F) - 1039105792 + (v26 & 0x7BDEF2BEu) + 1441;
  *(v0 + 10200) = v8;
  v29 = v8 ^ 0xB670F986;
  *(v0 + 10000) = v29 + v3 - 4;
  *(v0 + 10168) = v16;
  v30 = v16 ^ 0xB670F986;
  *(v0 + 9992) = v30 + v10 - 4;
  *(v0 + 10136) = v22;
  v31 = v22 ^ 0xB670F986;
  *(v0 + 9984) = v31 & 0xFFFFFFF8;
  *(v0 + 9976) = -6078 - (v31 & 0xFFFFFFF8);
  *(v0 + 9968) = v31 + v18 - 4;
  *(v0 + 10120) = v27;
  v32 = v27 ^ 0xB670F986;
  *(v0 + 9960) = v32 + v28 - 4;
  *(v0 + 9952) = v29 & 0xFFFFFFF8;
  *(v0 + 9928) = 8 - (v29 & 0xFFFFFFF8);
  *(v0 + 9944) = v30 & 0xFFFFFFF8;
  *(v0 + 9920) = 8 - (v30 & 0xFFFFFFF8);
  *(v0 + 9936) = v32 & 0xFFFFFFF8;
  *(v0 + 9912) = 8 - (v32 & 0xFFFFFFF8);
  *(v0 + 9840) = -83929122;
  *(v0 + 10352) = v3;
  *(v0 + 10416) = v3 + 4;
  *(v0 + 10336) = v10;
  *(v0 + 10400) = v10 + 4;
  *(v0 + 10320) = v18;
  *(v0 + 10384) = v18 + 4;
  *(v0 + 10304) = v28;
  *(v0 + 10368) = v28 + 4;
  *(v0 + 10032) = v29 & 0xFFFFFFE0;
  *(v0 + 9832) = (v8 ^ 0x86) & 0x1F;
  *(v0 + 9824) = (v8 ^ 0x86) & 0x18;
  *(v0 + 9904) = (v8 ^ 0x86) & 7;
  *(v0 + 10024) = v30 & 0xFFFFFFE0;
  *(v0 + 9816) = (v16 ^ 0x86) & 0x1F;
  *(v0 + 9808) = (v16 ^ 0x86) & 0x18;
  *(v0 + 9896) = (v16 ^ 0x86) & 7;
  *(v0 + 10016) = v31 & 0xFFFFFFE0;
  *(v0 + 9800) = (v22 ^ 0x86) & 0x1F;
  *(v0 + 9792) = (v22 ^ 0x86) & 0x18;
  *(v0 + 9888) = (v22 ^ 0x86) & 7;
  *(v0 + 10008) = v32 & 0xFFFFFFE0;
  *(v0 + 9784) = (v27 ^ 0x86) & 0x1F;
  *(v0 + 9776) = (v27 ^ 0x86) & 0x18;
  *(v0 + 9880) = (v27 ^ 0x86) & 7;
  *(v0 + 10064) = v29;
  *(v0 + 9872) = v29 - 8;
  *(v0 + 10056) = v30;
  *(v0 + 9864) = v30 - 8;
  *(v0 + 10048) = v31;
  *(v0 + 9856) = v31 - 8;
  *(v0 + 10040) = v32;
  *(v0 + 9848) = v32 - 8;
  return sub_1002CCF68();
}

uint64_t sub_1002D411C@<X0>(unsigned int a1@<W8>)
{
  v6 = 23958;
  atomic_compare_exchange_strong(v3, &v6, a1);
  return (*(v5 + 8 * (((v6 != v1) * ((v4 + 668011676) ^ v2)) ^ (v4 + 668014954))))();
}

uint64_t sub_1002D4388(int a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v10 = v8 - 1;
  *(a3 + v10) = (a7 ^ a2) * (a7 + 17);
  return (*(v9 + 8 * (((v10 == 0) * ((a8 + a1) ^ a4)) ^ a8)))();
}

uint64_t sub_1002D441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = ((v9 ^ 0xE06462B4) + 1310287288) ^ v9 ^ ((v9 ^ 0x96D4E914) + 950660632) ^ ((v9 ^ 0xBFBBFF8F) + 298252429) ^ ((v9 ^ 0x98898D4F ^ (a8 + 20)) + 921996241);
  v11 = ((v10 ^ 0x869AA56E) - 259503291) ^ ((v10 ^ 0x9390916A) - 444432575) ^ ((v10 ^ 0x4488CCF8) + 848962259);
  v12 = (((((a8 + 145) | 0x1902) - 2812732) ^ *(v8 + 10927)) + ((2 * *(v8 + 10927)) & 0xFFBFu) + 2805793) % (663754439 - v11);
  v13 = ((2 * v12) & 0x5E3CFDFE) + (v12 ^ 0xAF1E7EFF) + v11 + 1895817642;
  v15 = v9 == 0xF35BA635182F8EBLL || v13 == 1202616176;
  return (*(*(v8 + 10448) + 8 * ((4 * v15) | (16 * v15) | a8)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1002D45B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  *(v8 + 11080) = a8 - 1;
  *(v11 + a8 - 1) = (v9 ^ a2) * (v9 + 17);
  return (*(*(v8 + 10448) + 8 * (((*(v8 + 11080) == (a7 ^ v10) * v14 + v12) * v13) ^ a7)))(a1);
}

uint64_t sub_1002D4758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8 ^ 0x8BEu;
  v13 = *(v11 + 8);
  v9[1425] = v10;
  v9[1440] = v10;
  v14 = v12 + 0xF35BA635182E4C4 + a8 - v13 + 2307;
  *(v10 + 8) = v14;
  v9[1304] = v14;
  return (*(v9[1306] + 8 * ((92 * ((*(v10 + (((v12 - 2463) - 0xF35BA635182EE6ALL) ^ (v12 + 2291)) + v14 + 8) - 0xF35BA635182F8FDLL) < 0x7FFFFFFFFFFFFFFFLL)) ^ v12)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1002D4A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = (v10 - 1845) | 0x1028u;
  *(v9 + 16) = v7;
  *(a7[2] + 24) = a7[3];
  v15 = a7[1] + *(v12 + 8) - 0xF35BA635182F8FCLL;
  *(v12 + 8) = v15;
  *(v8 + 10432) = v15;
  return (*(v13 + 8 * ((13538 * (((v14 + 1166024663) & 0xBA7FCD96 ^ 0x70CA459CAE7D0692) + *(v11 + (v14 ^ 0xF0CA459CAE7D132CLL) + v15 + 8) > ((v14 + 403370336) | 0xC0240204) - 3626960781)) ^ v14)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1002D4B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  *a7 = *(v7 + 10432);
  v10 = *(v9 + 8);
  v11 = (v8 ^ 0xD82F061A) + v10;
  v12 = v11 - 0xF35BA6429B20088;
  v13 = v11 - 0xF35BA6429B20085;
  if (v12 >= 0)
  {
    v13 = v12;
  }

  return (*(*(v7 + 10448) + 8 * ((7277 * (((((v10 ^ 0xB93D1344) + 390075464) ^ v10 ^ ((v10 ^ 0x615F612B) - 819829207) ^ ((v10 ^ 0x241F67FD) - 1973264129) ^ ((v10 ^ 0xADFFED6E) + 58911342) ^ 0x5182F8FC) - ((*(a3 + (*(v7 + 10924) & 3)) % (((v13 >> 2) - (((271 * (v8 ^ 0x185)) ^ 0x1D49873F) & (2 * (v13 >> 2))) + 245680529) ^ 0xEA4C991) + 39) & 0x1F8) - 16) > 0)) ^ v8)))(a1, a2);
}

uint64_t sub_1002D4C84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = *(a3 + (*(v10 + 10926) & 3)) % v8;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = (((a8 - 1743850649) | 0x40200008u) ^ v9) + v15;
  *(v10 + 10784) = v16;
  *(v12 + v11 + 16 + v16) = ((v10 + 32) ^ a2) * (v10 + 49);
  return (*(v13 + 8 * ((53 * (*(v10 + 10784) == 0)) ^ a8)))(a1);
}

uint64_t sub_1002D4DA4()
{
  v4 = *(v0 + 11376);
  v5 = *(v0 + 10592);
  v6 = 505507193 * ((-798851069 - ((v2 - 200) | 0xD0628003) + ((v2 - 200) | 0x2F9D7FFC)) ^ 0x4416F437);
  v7 = v2 - 200;
  *v7 = v6 + (*(v0 + 12708) ^ 0xB7FDF7EF) + ((2 * *(v0 + 12708)) & 0x6FFBEFDE) + 2140400862;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 8) = v1 - v6 - 5386;
  v8 = (*(v3 + 8 * (v1 ^ 0x2D74u)))(v2 - 200);
  v9 = *(v0 + 10448);
  v10 = *(v2 - 196);
  *(v0 + 11108) = v10 - 168832651;
  return (*(v9 + 8 * (v1 | (4 * (v10 == (((v1 ^ 0x904) - 668011938) ^ 0xD23F2907))))))(v8);
}

uint64_t sub_1002D4F04@<X0>(int a1@<W8>)
{
  v3 = v1[1563];
  v4 = v1[1626];
  v1[1278] = (((a1 - 114) ^ 8) - (v1 - 32)) & 0x18 ^ 8;
  v5 = **(v1[867] + 8);
  v1[1280] = 0;
  v1[1284] = v1 + v3 + 13616;
  v1[1563] = v3 + 32;
  v1[1282] = v5;
  v1[1626] = v4 + 640;
  return (*(v2 + 8 * ((2562 * (v5 == 0)) ^ (a1 + 8846))))(1977538899, 247975, 35, 668019017, 2263125);
}

uint64_t sub_1002D5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5 + (v4 ^ 0xD82F038C) + 668009286 - 3410;
  v6[1304] = v8;
  v6[1626] = v8;
  return (*(v7 + 8 * (v4 | 0xC4)))(a1, a2, a3, a4, v6[1284]);
}

uint64_t sub_1002D50A4()
{
  v4 = 2 * (v0 ^ 0x33F);
  v5 = *(*(v1 + 10592) + 16);
  v6 = (v5 ^ 0xA73F89DE) & (2 * (v5 & 0xC7BF8D9C)) ^ v5 & 0xC7BF8D9C;
  v7 = ((v4 + 1482) ^ (v2 + 1492) ^ 0x11091F58 ^ (2 * (v5 ^ 0x232C81F6))) & (v5 ^ 0x232C81F6) ^ (2 * (v5 ^ 0x232C81F6)) & 0xE4930C6A;
  v8 = v7 ^ 0x2491042A;
  v9 = (v7 ^ 0x3084A) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x924C31A8) & v8 ^ (4 * v8) & 0xE4930C68;
  v11 = v10 & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x64930C42)) ^ 0x4930C6A0) & (v10 ^ 0x64930C42) ^ (16 * (v10 ^ 0x64930C42)) & 0xE4930C60;
  v13 = v11 ^ 0xE4930C6A ^ (v12 ^ 0x40100400) & (v11 << 8);
  return (*(v3 + 8 * ((52 * ((v5 ^ (2 * ((v13 << 16) & 0x64930000 ^ v13 ^ ((v13 << 16) ^ 0xC6A0000) & (((v12 ^ 0xA483084A) << 8) & 0xE4930000 ^ 0x64930000 ^ (((v12 ^ 0xA483084A) << 8) ^ 0x130C0000) & (v12 ^ 0xA483084A))))) >> 5 == 0x34ECAA)) ^ v4)))();
}

uint64_t sub_1002D5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = 9 * (v6 ^ 0x1D4B);
  v11 = *a5 ^ *(*(&off_1006B4E30 + (v10 - 10731)) - 12) ^ *(*(&off_1006B4E30 + (v10 ^ 0x2847)) - 4) ^ *(*(&off_1006B4E30 + (v10 - 11311)) + (v10 ^ 0x2C61) - 4);
  v12 = ((((v10 ^ v8) + (v11 ^ 0x2E) + 58) ^ ((v11 ^ 0x6B) + 11) ^ ((v11 ^ 0x45) + 37)) - *(*(v7 + 8) + (v5 << (v10 ^ 0x62)))) == 98;
  return (*(v9 + 8 * ((v12 | (16 * v12)) ^ v10)))(a1);
}

uint64_t sub_1002D5368@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, int a6@<W8>)
{
  v12 = (a6 ^ 0x10080970) - ((2 * a6) & 0xFFFFFF1F) + 434193603 + (((v9 ^ 0x7E14C1BD) - 1476235150) ^ ((v9 ^ 0x580D89E5) - 1910818774) ^ ((v8 ^ 0xF00FEB83) + (v9 ^ 0x26194858)));
  v13 = (*(v7 + v6) << 48) | ((((v6 & 0xF) * a5) ^ *(a4 + v6) ^ *(a1 + (v6 & 0xF)) ^ *((v6 & 0xF) + a2 + 4) ^ *((v6 & 0xF) + a3 + 6)) << 56) | ((v12 == (v8 ^ 0x1216)) << 33);
  v14 = v13 - ((2 * v13) & 0x79D0000400000000) + 0x3CE867D6E30B2CD5;
  v15 = *(v10 + 8 * ((v8 ^ 0xDF9) - 7006));
  v16 = (*v15)++;
  v17 = v16 & 0x3F;
  if (v17 <= 0x35)
  {
    v18 = (*(v10 + 8 * ((v8 ^ 0xDF9) & 0x63272212)) + 8 * v17 - 8);
  }

  else
  {
    v18 = (8 * v17 + *(v10 + 8 * (v8 ^ 0x10D3)) - 440);
  }

  *v18 = v14;
  return (*(v11 + 8 * ((23 * (v12 != (v8 ^ 0x1216))) ^ v8 ^ 0xDF9)))();
}

uint64_t sub_1002D5538(uint64_t a1, int a2, __int16 a3, uint64_t a4, int a5, uint64_t a6, int a7, __int16 a8)
{
  *(a6 + (v10 * a3 - (((v10 * a2) >> 16) >> 3) * v14)) = v12;
  *(v9 + 4 * (v10 * v8 - (((v10 * a5) >> 16) >> 6) * a8)) = 0;
  return (*(v15 + 8 * (((((v10 - 255) & 0xC0) == v11 + a7) * v13) ^ v11)))(a1);
}

uint64_t sub_1002D5594(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = (v6 + 1478680529) | 0x800C010C;
  *(v7 + 10304) = (8 * (((v8 ^ 0x7680853B) + 316516655) ^ v8 ^ ((v8 ^ 0x664A0C3) + 37326039) ^ ((v8 ^ 0x1FFFF3F9) + 463658989) ^ (((v10 - 1131807137) ^ v8) + 283388415))) ^ 0x3056915D;
  *(v7 + 10384) = -1674584703;
  *(v7 + 10400) = 2052188825;
  *(v7 + 10432) = 1182090452;
  *(v7 + 10320) = 73222054;
  *(v7 + 10368) = -1573177608;
  *(v7 + 10416) = 126118877;
  *(v7 + 10352) = -6981203;
  *(v7 + 10336) = 1775324330;
  return (*(v9 + 8 * ((41 * (v8 - 463655978 >= v10 + 667998394 + 2 * (v10 ^ 0xD82F0831))) | (a4 + v10 - 789))))(a1, a2, a3, 3702499326, *(v7 + 10256), a6, v8);
}

uint64_t sub_1002D57C8@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X5>, int a4@<W8>)
{
  *(v4 + 10232) = v5;
  v7 = a4 ^ 0x2765;
  v8 = *(v4 + 10248);
  *(a3 + (a4 ^ 0x2765u) + v8 * a2 + 951901241) = -48;
  v9 = ((a4 ^ 0x2765) + 1210177211) | 0x900D0608;
  v10 = (((a4 ^ 0x2765) - 29375245) & 0xD9EF17CF ^ 0x3C722B9B) + v8;
  if (v10 <= 0x3F)
  {
    v10 = 63;
  }

  return (*(v6 + 8 * ((56 * ((v9 ^ 0xC38DD466) - v8 + v10 < 2)) ^ v7)))(a1, 35, 668009232);
}

uint64_t sub_1002D5A34(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = v8 + a4 * a2;
  *(a6 + v12 - ((((v12 >> 1) * v10) >> 32) >> 5) * v9) = 80;
  *(a6 + v12 + 35 - (((((v12 + 35) >> 1) * v10) >> 32) >> 5) * v9) = 80;
  return (*(v11 + 8 * ((((v7 & 0xFFFFFFFE) == 2) * (((v6 + 1228744563) & 0xDE93F7BE) - 9585)) ^ (v6 + 668013727))))(a1);
}

void sub_1002D5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = *(v7 + 10304);
  a6[59] = v8 ^ 0xD1 ^ ((v6 - 49) | 0x80);
  a6[24] = BYTE1(v8) ^ 0x5E;
  a6[28] = HIBYTE(v8) ^ 0xBD;
  a6[63] = BYTE2(v8) ^ 0x10;
  *(v7 + 10304) = HIBYTE(v8) ^ 0xED400EE0;
  JUMPOUT(0x1002D5C50);
}

uint64_t sub_1002D5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7)
{
  v14 = v8 + 668013463;
  v15 = a6[(35 - (((35 * v12) >> 16) >> 3) * v10)] << 8;
  v16 = a6[0x46 % ((((v14 - 3823) | v11) ^ 0xC3C) & 0xFEFFu)];
  v17 = a6[(105 - (((105 * v12) >> 16) >> 3) * v10)];
  *v7 = (((((((v15 ^ 0xFFFF8FFF) & ((*a6 << 16) ^ 0x59EA2) | v15 & 0x6100) ^ (a7 + 2050)) & (v16 ^ (v9 - 428)) ^ v16 & 0x59) << 8) ^ 0xCE53B102) & ~v17 | v17 & 0xFFFFFFFD) ^ 0x83B54752;
  return (*(v13 + 8 * v14))(a1);
}

uint64_t sub_1002D5DF4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v11 * a5 - 150;
  v15 = v14 - (((v14 * a1) >> 32) >> 6) * a8;
  v16 = (v10 ^ 0xD3D) * v11;
  v17 = v16 - 1200;
  v18 = v16 - 525;
  v20 = v14 - 278 * (((v14 * a1) >> 32) >> 7);
  v21 = ((v16 - 525) * a1) >> 38;
  v22 = *(v9 + 4 * v15);
  if (v20 >= 0x8B)
  {
    v20 -= 139;
  }

  v23 = v16 - (((v16 * a1) >> 32) >> 6) * a8;
  v19 = *(v9 + 4 * (v11 * a5 - 1125 - ((((v11 * a5 - 1125) * a1) >> 32) >> 6) * a8));
  v24 = (v12 ^ __ROR4__(v22, 17) ^ __ROR4__(v22, 19) ^ (v12 + (*(v9 + 4 * v20) >> 10) - ((*(v9 + 4 * v20) >> 9) & 0x47BA00))) + (v8 ^ __ROR4__(v19, 18) ^ __ROR4__(v19, 7) ^ (v8 + (v19 >> 3) - ((v19 >> 2) & 0x139D719C)));
  *(v9 + 4 * v23) = v24;
  v25 = v24 + *(v9 + 4 * (v18 - v21 * a8));
  *(v9 + 4 * v23) = v25;
  *(v9 + 4 * v23) = v25 + *(v9 + 4 * (v17 - (((v17 * a1) >> 32) >> 6) * a8));
  return (*(v13 + 8 * ((13 * (v11 != 63)) ^ v10)))();
}

uint64_t sub_1002D5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  a6[96] = 1906882147;
  v8 = v6 ^ 0x1109;
  a6[85] = 23953431;
  v9 = *(v7 + 10320) + 1705811649;
  a6[109] = 1168167137;
  a6[43] = -272675062;
  a6[149] = -847732671;
  a6[74] = -1997608701;
  a6[54] = 1005136432;
  v10 = *(v7 + 10336) - 761420088;
  a6[129] = 1824793141;
  a6[131] = -1342835260;
  a6[120] = 1952992846;
  a6[138] = 1514263562;
  a6[140] = -1734977936;
  v11 = *(v7 + 10352) - 1687163169;
  a6[21] = 1359898317;
  a6[151] = -648833562;
  a6[76] = -1282168039;
  a6[25] = 511838147;
  a6[107] = -1026292921;
  a6[65] = -1971977754;
  a6[32] = -1443420394;
  a6[98] = 662258232;
  a6[56] = -1900991156;
  a6[118] = 708509555;
  a6[23] = 125168632;
  a6[47] = 1692668526;
  a6[34] = 1002718782;
  a6[133] = -1910395091;
  a6[144] = -1440100105;
  a6[142] = -944059334;
  a6[67] = -1075221793;
  a6[102] = -380990325;
  a6[87] = -61665741;
  a6[45] = 1647061276;
  a6[155] = -1076753731;
  a6[89] = -312527431;
  a6[36] = 1064218359;
  a6[91] = -637325342;
  a6[100] = 736153049;
  a6[78] = -686742471;
  a6[153] = -560484251;
  a6[122] = 1794093445;
  a6[69] = -1720029792;
  a6[111] = 1171441066;
  a6[60] = 904859770;
  a6[113] = 197515767;
  a6[38] = -296703338;
  a6[135] = 1056971710;
  a6[80] = -1166570221;
  a6[71] = 1281909031;
  a6[93] = 2145784933;
  a6[124] = 828138888;
  a6[29] = -1941493920;
  a6[58] = 2093094854;
  a6[27] = -551291371;
  a6[157] = 1934913217;
  a6[49] = 673334498;
  a6[146] = 1356050725;
  a6[51] = -1468619668;
  a6[104] = -1872951327;
  a6[115] = -1535203718;
  a6[62] = -693024663;
  a6[137] = -567730844;
  a6[82] = 1720733372;
  a6[40] = -1669325690;
  *(v7 + 10288) = v11;
  *(v7 + 10336) = v9;
  *(v7 + 10320) = v10;
  a6[126] = -1140321955;
  return (*(*(v7 + 10448) + 8 * (v8 ^ 0xEF)))(a1);
}

uint64_t sub_1002D6584@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X5>, int a6@<W8>)
{
  v13 = ((2 * *(v6 + 10400)) & 0xAD78CFCC) + (*(v6 + 10400) ^ 0xD6BC67E6) + v8;
  *(v6 + 10384) += a2;
  v14 = *(v6 + 10368) + 403448397;
  v15 = v7 + *(v6 + 10320);
  v16 = a6 + *(v6 + 10336);
  *(v6 + 10416) += a3;
  *(v6 + 10432) += v10;
  *(v6 + 10400) = (__ROR4__(__ROR4__(v13, 4) ^ 0xA4D6113E, 28) ^ 0x64228BF0) + ((2 * v13) & 0x52873034);
  v17 = ((2 * v16) & 0x34A6C27E) + (v16 ^ 0x9A53613F);
  v18 = v15 & 0x184CE633 ^ 0x2D625938 ^ -(v15 & 0x184CE633 ^ 0x2D625938) ^ ((v15 & 0xE7B319CC) - (v15 & 0x184CE633 ^ 0x2D625938 ^ v15 & 0xE7B319CC));
  *(v6 + 10368) = (v14 ^ 0x1205540) + a4 + ((2 * v14) & 0x240AA80) - 422344589;
  *(v6 + 10352) += v11;
  v19 = (((v15 & 0xE7B319CC) - 2059984400 - ((2 * v15) & 0xA660380)) ^ 0x853721F0 ^ v18) + ((2 * v15) & 0x5AC4B270) + 2 * ((v18 ^ 0x3311884) & v15 & 0xE7B319CC ^ v15 & 0x3311884);
  *(v6 + 10336) = v19;
  *(v6 + 10320) = v17;
  if (v9 == 2)
  {
    v20 = *(v6 + 10304);
    *(a5 + 59) = v20 ^ 0x5D;
    v21 = ((((v20 >> 7) & 0xE9F31E ^ 0x47F18EF5) + 762505108) ^ (((v20 >> 7) & 0xE9F31E ^ 0x236F907E) + 1240267033) ^ (((v20 >> 7) & 0xE9F31E ^ 0x64569E97) + 248903666)) + ((((v20 >> 8) ^ 0xEA55183C) - 995988384) ^ (((v20 >> 8) ^ 0x4DDA5171) + 1663902995) ^ (((v20 >> 8) ^ 0x2A16F0CC) + 81888432)) - 1316808865;
    v22 = (v21 ^ 0xBB4CA7A1) & (2 * (v21 & 0xB34D37B4)) ^ v21 & 0xB34D37B4;
    v23 = ((2 * (v21 ^ 0xDD56A2E1)) ^ 0xDC372AAA) & (v21 ^ 0xDD56A2E1) ^ (2 * (v21 ^ 0xDD56A2E1)) & 0x6E1B9554;
    v24 = v23 ^ 0x22089555;
    v25 = (v23 ^ 0x4C110000) & (4 * v22) ^ v22;
    v26 = ((4 * v24) ^ 0xB86E5554) & v24 ^ (4 * v24) & 0x6E1B9554;
    v27 = (v26 ^ 0x280A1540) & (16 * v25) ^ v25;
    v28 = ((16 * (v26 ^ 0x46118001)) ^ 0xE1B95550) & (v26 ^ 0x46118001) ^ (16 * (v26 ^ 0x46118001)) & 0x6E1B9550;
    v29 = v27 ^ 0x6E1B9555 ^ (v28 ^ 0x60191500) & (v27 << 8);
    v30 = v21 ^ (2 * ((v29 << 16) & 0x6E1B0000 ^ v29 ^ ((v29 << 16) ^ 0x15550000) & (((v28 ^ 0xE028005) << 8) & 0x6E1B0000 ^ 0x640A0000 ^ (((v28 ^ 0xE028005) << 8) ^ 0x1B950000) & (v28 ^ 0xE028005))));
    *(a5 + 24) = v30 ^ 0x4E;
    *(a5 + 63) = BYTE1(v30) ^ 0x4D;
    *(a5 + 28) = BYTE2(v30) ^ 8;
    *a5 = 80;
    *(a5 + 35) = 80;
    return (*(v12 + 11872))(a1, 35, 80, 1967, 75);
  }

  else
  {
    if (v9 != 1)
    {
      JUMPOUT(0x1002D56B8);
    }

    v32 = v11 + *(v6 + 10288);
    *(a5 + 54) = 80;
    *(a5 + 42) = 80;
    *a5 = 80;
    *(a5 + 50) = 80;
    *(a5 + 15) = 80;
    *(a5 + 11) = 80;
    *(a5 + 45) = 20560;
    *(a5 + 3) = 80;
    *(a5 + 6) = 20560;
    *(a5 + 14) = 80;
    *(a5 + 49) = 80;
    *(a5 + 18) = 20560;
    *(a5 + 41) = 80;
    *(a5 + 2) = 80;
    *(a5 + 17) = 80;
    *(a5 + 9) = 80;
    *(a5 + 52) = 20560;
    *(a5 + 44) = 80;
    *(a5 + 10) = 80;
    *(a5 + 5) = 80;
    memset((a5 + 21), 80, 18);
    *(a5 + 48) = 80;
    v33 = *(v6 + 10384) + 153098169;
    *(a5 + 40) = 80;
    *(a5 + 1) = 80;
    v34 = *(v6 + 10368);
    memset((a5 + 56), 80, 18);
    v35 = ((2 * v34) & 0x3258EF1A) + (v34 ^ 0x192C778D);
    v36 = ((2 * *(v6 + 10416)) & 0x2FFEDB9C) + (*(v6 + 10416) ^ 0x17FF6DCE);
    v37 = *(v6 + 10400);
    *(a5 + 13) = 80;
    v38 = *(v6 + 10272);
    v38[7] = v35 ^ 0x76;
    v38[3] = (v17 - 63) ^ 0xB0;
    v38[2] = ((v17 - 24895) >> 8) ^ 0x78;
    v38[4] = HIBYTE(v35) ^ 0x69;
    v38[1] = ((v17 + 1705811649) >> 16) ^ 0x85;
    v38[6] = BYTE1(v35) ^ 0x8F;
    v38[11] = (v19 - 56) ^ 0x22;
    v38[5] = BYTE2(v35) ^ 0xF6;
    v38[10] = ((v19 - 22840) >> 8) ^ 0x51;
    v39 = ((-(((2 * v37) & 0xAD78CFCC) + (v37 ^ 0xD6BC67E6)) ^ 0xA2EF9DBC ^ (671339525 - ((((2 * v37) & 0xAD78CFCC) + (v37 ^ 0xD6BC67E6)) ^ 0x2803D405)) ^ (((2 * v37) & 0xAD78CFCC) + (v37 ^ 0xD6BC67E6) - 1561354820 - ((2 * (((2 * v37) & 0xAD78CFCC) + (v37 ^ 0xD6BC67E6))) & 0x45DF3B78))) + 671339525) ^ 0x7686ACB5;
    *v38 = ((v17 + 1705811649) >> 24) ^ 0x5E;
    v38[8] = ((v19 - 761420088) >> 24) ^ 0x41;
    v38[13] = BYTE2(v33) ^ 0x66;
    v38[15] = v33 ^ 0x94;
    v38[9] = ((v19 - 761420088) >> 16) ^ 0x5C;
    v40 = v32 ^ 0x69F68F76;
    v38[21] = (v32 ^ 0x69F68F76u) >> 16;
    v38[22] = (v32 ^ 0x8F76) >> 8;
    v38[14] = BYTE1(v33) ^ 1;
    v38[16] = HIBYTE(v39);
    v38[12] = HIBYTE(v33) ^ 0x29;
    v38[18] = (((-(((2 * v37) & 0xCFCC) + (v37 ^ 0x67E6)) ^ 0x9DBC ^ (-11259 - ((((2 * v37) & 0xCFCC) + (v37 ^ 0x67E6)) ^ 0xD405)) ^ (((2 * v37) & 0xCFCC) + (v37 ^ 0x67E6) - 25156 - ((2 * (((2 * v37) & 0xCFCC) + (v37 ^ 0x67E6))) & 0x3B78))) - 11259) ^ 0xACB5) >> 8;
    v41 = *(v6 + 10432) + 359368773;
    v38[19] = v39;
    v41 ^= 0x29660194u;
    v38[17] = BYTE2(v39);
    v38[24] = (v36 ^ 0x415C5122u) >> 24;
    v38[25] = (v36 ^ 0x415C5122u) >> 16;
    v38[27] = v36 ^ 0x22;
    v42 = (v36 ^ 0x415C5122u) >> 8;
    v38[23] = v40;
    v38[28] = HIBYTE(v41);
    v38[20] = HIBYTE(v40);
    v38[30] = BYTE1(v41);
    v38[31] = v41;
    v38[29] = BYTE2(v41);
    v43 = *(v6 + 13008) - 640;
    v38[26] = v42;
    *(v6 + 10432) = v43;
    *(v6 + 13008) = v43;
    return (*(v12 + 0x2000))(a1, 247975, 35, 668019017);
  }
}

uint64_t sub_1002D6E34@<X0>(int a1@<W3>, int a2@<W8>)
{
  v6 = (v3 + v4) ^ a2;
  *(v2 + 12504) -= 32;
  *(v2 + 11108) = v6 ^ 0x1FC0FD06;
  return (*(v5 + 8 * ((86 * (v6 == ((v3 - 279795727) & 0x387E7FBF) + 532729289)) ^ (a1 + v3 - 1563))))();
}

uint64_t sub_1002D718C()
{
  *(*(v0 + 10928) - 0x7A7BB171048BC8AFLL) = 943747684;
  *(v0 + 11108) = -27608;
  return sub_1002E4E24(*(v0 + 6936));
}

uint64_t sub_1002D7208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 12344) = 0;
  *(v3 + 12504) -= 128;
  return (*(v4 + 8 * ((11177 * (*(v3 + 12604) == 688134491)) ^ 0x354)))(a1, a2, a3, 3626965076);
}

uint64_t sub_1002D72A4()
{
  *(v2 + 11088) = *(*(v2 + 11112) + 120);
  *(v2 + 12832) = 65;
  *(v2 + 12504) = v1 - 64;
  v4 = *(v2 + 11587);
  v5 = (v0 - 11) ^ 0xC1;
  *(v2 + 10432) = v4;
  *(v2 + 10416) = v5;
  return (*(v3 + 8 * (((v4 == v5) * (v0 + 7946)) ^ v0)))();
}

uint64_t sub_1002D7318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 16);
  *(v7 + 10680) = v10;
  *(v7 + 10612) = 0;
  return (*(v9 + 8 * (((v10 > 0) * (((v6 + 1534) ^ 0x1D9E) + 1524)) ^ (v6 + 1534) ^ 0x191A)))(a1, a2, a3, a4, a5, a6, 3606832813);
}

uint64_t sub_1002D735C()
{
  *(v0 + 12320) = 0;
  v2 = *(v0 + 11700) + 1;
  v3 = **(v0 + 11816);
  *(v0 + 11700) = v2;
  return (*(v1 + 8 * ((97 * (v2 < v3)) ^ 0x53F)))();
}

uint64_t sub_1002D73FC()
{
  *(v2 + 12320) = 0;
  *(v2 + 12736) = 0;
  *(v2 + 10948) = 0;
  return (*(v4 + 8 * ((210 * (**(*v3 + 8 * v0) != 0)) ^ v1 ^ 0xD2)))();
}

void sub_1002D74A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[1394] = &a9;
  v13 = (*(v12 + 8 * (v11 + 12372)))(&a9 - ((((4 * (v11 ^ 0x6DF)) ^ 0xE409080062481871) + v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, -1, a4, a5, a6, a7, a8);
  v14 = (*(v10[1306] + 8 * (v11 + 12372)))(v13, *(&off_1006B4E30 + (v11 ^ 0x90)), -1);
  (*(v10[1306] + 8 * (v11 + 12372)))(v14, *(&off_1006B4E30 + (v11 ^ 0x4D1)) - 8, -1);
  v10[1551] = *(v10[1306] + 8 * v11);
  JUMPOUT(0x1002D7B24);
}

uint64_t sub_1002D7670@<X0>(int a1@<W8>)
{
  v4 = a1 + 187;
  v5 = (*(v3 + 8 * (a1 + 668019204)))();
  v6 = *(v1 + 10448);
  *v2 = 0;
  return (*(v6 + 8 * (((16 * (((*(v1 + 12528) == 0) ^ (v4 - 89)) & 1)) & 0xDF | (32 * (((*(v1 + 12528) == 0) ^ (v4 + 668010663)) & 1))) ^ (v4 + 668017555))))(v5);
}

uint64_t sub_1002D7738()
{
  (*(v5 + 8 * (v2 ^ 0xD82F3759)))();
  v6 = *(v0 + 10448);
  *v1 = 0;
  **(v0 + 10792) = 1;
  v7 = *(v0 + 11272);
  v8 = *(v0 + 12928);
  *v8 = **(v7 + 48);
  **(v0 + 11664) = *(*(v7 + 48) + 8);
  *(v0 + 12816) = *(v6 + 8 * (v4 + v2 + 59));
  *(v0 + 11776) = v8;
  *(v0 + 11608) = v3;
  v9 = *(v0 + 12504);
  v10 = v0 + 13616 + v9;
  *(v0 + 11064) = v10;
  *(v0 + 10848) = v10 + 16;
  *(v0 + 12504) = (((v2 ^ 0xD82F07EB) + 797) | 0x2051) + v9 - 9141;
  *(v0 + 10664) = 0;
  *(v0 + 12556) = 0;
  *(v0 + 12536) = 0;
  *(v0 + 12448) = 0;
  *(v0 + 12780) = 0;
  *(v0 + 12684) = 0;
  *(v0 + 11716) = 0;
  v11 = v8[2];
  *(v0 + 10712) = *(v6 + 8 * (v2 ^ 0xD82F07EB));
  return sub_10041A724(v11, v0 + 10664);
}

uint64_t sub_1002D784C()
{
  *(v0 + 11312) = v1;
  v3 = (*(v2 + 100576))(*(v0 + 10880));
  return (*(*(v0 + 10448) + 8 * ((3428 * (((2 * v3) & 0xBEAE3DFE) + (v3 ^ 0xDF571EFF) == -547938561)) ^ 0x11B5)))();
}

uint64_t sub_1002D7BB8(uint64_t a1)
{
  (*(v5 + 8 * (v3 + 12446)))(a1, 0, 2);
  v7 = (*(v1[1306] + 8 * (v3 ^ 0x3160)))(a1);
  *v2 = (v7 - ((2 * v7) & 0xFD09388C) + (v3 ^ 0x6FD) + 2122618276) ^ 0x7E849C46;
  (*(v1[1306] + 8 * (v3 ^ 0x30A2)))(a1, 0, 0);
  v8 = v1[1306];
  v9 = (*v2 ^ 0xDB3FEDFCF79FFE6FLL) + 0x3EF37FC7CFFEF5FALL + ((2 * *v2) & 0x1EF3FFCDELL);
  v1[1528] = *(v8 + 8 * v3);
  v1[1529] = v9;
  v1[1441] = 0;
  return (*(v8 + 8 * (((v9 == 0x1A336DC4C79EF469) * (((v3 ^ 0x6FD) - v4 + 668009949) ^ ((v3 ^ 0x6FD) - 8))) ^ v3 ^ 0x6FD)))();
}

uint64_t sub_1002D7CD0()
{
  v5 = *(v0 + 10624);
  *(v0 + 10416) = v5;
  v6 = v3 - 200;
  *(v6 + 32) = v1;
  *(v6 + 8) = v5 + 96;
  *(v6 + 16) = v5 + 88;
  *v6 = 668013188 - 1932028331 * ((((2 * (v3 - 200)) | 0xE19F1360) - (v3 - 200) + 254834256) ^ 0x24B4E9CC) + v2 + 3446;
  v7 = (*(v4 + 8 * (v2 ^ 0xD82F3688)))(v3 - 200);
  v8 = *(v0 + 10448);
  v9 = *(v3 - 176);
  *(v0 + 11108) = v9 ^ 0xF3CFBB78;
  return (*(v8 + 8 * (((v9 != -204489864) * (v2 + 668006546)) ^ (v2 + 668016348))))(v7);
}

uint64_t sub_1002D7DFC()
{
  (*(v2 + 8 * (v1 + 9776)))(*(*(v0 + 6936) + 8));
  v3 = *(v0 + 10448);
  *(*(v0 + 6936) + 8) = 0;
  return (*(v3 + 8 * (((**(v0 + 10432) == 233 * (v1 ^ 0xA8C) - 9553) * ((v1 ^ 0xA8C) - 23)) ^ v1)))();
}

uint64_t sub_1002D7E64(uint64_t a1)
{
  v4 = *(v1 + 10736);
  *(v4 + 4) = *(a1 + 96);
  *(v1 + 13496) = v4 + 4;
  *(v4 + 48) = *(a1 + 104);
  *(v1 + 13504) = v4 + 48;
  *(v4 + 56) = *(a1 + 112);
  *(v1 + 13512) = v4 + 56;
  return (*(v3 + 8 * ((*(v1 + 12471) * ((v2 - 2077345154) ^ 0x842E76E1 ^ (v2 - 2077345154) & 0x7BD1BC3F ^ 0x3519)) ^ v2)))();
}

uint64_t sub_1002D7EE8()
{
  v5 = *(v0 + 10744);
  v6 = v3 - 200;
  *(v6 + 8) = *(v0 + 10888);
  *(v6 + 24) = v5;
  *(v6 + 16) = (v1 - 2349) ^ (400289179 * ((v3 - 716173423 - 2 * ((v3 - 200) & 0xD5501059)) ^ 0xACF1E34E));
  (*(v4 + 8 * (v1 + 2095)))(v3 - 200);
  v7 = *(v0 + 10448);
  *(v0 + 11108) = *(v3 - 200) - 1852035317;
  v8 = *(v0 + 6936);
  v9 = ((v1 - 9642) | 2u) - 887;
  v10 = (-1931008275 * (v5 + v9)) ^ ((-1931008275 * (v5 + v9)) >> 16);
  *(v2 + v9 + 8) = *(*(&off_1006B4E30 + v1 - 10136) + (v9 | (16 * ((-1931008275 * v10) >> 24))) - 4) ^ *(v5 + v9) ^ (-19 * v10);
  return (*(v7 + 8 * ((124 * (((v1 - 9642) | 2) == 887)) ^ v1)))(v8, &off_1006B4E30, 2363959021);
}

uint64_t sub_1002D8010@<X0>(int a1@<W8>)
{
  v5 = (a1 + 4233) | 0x820;
  v6 = *(v2 + 10888);
  v7 = **(v1 + 16);
  v8 = 961063711 * ((v3 + 2047766479 - 2 * ((v3 - 200) & 0x7A0E7097)) ^ 0xBFAB988);
  v9 = v3 - 200;
  *(v9 + 16) = **(v1 + 8);
  *(v9 + 24) = v6;
  *v9 = (v7 ^ (((v5 + 137288030) ^ 0x82F2C21) - 450171542)) - v8 + ((((v5 + 137288030) | 0xD000050C) - 232312694) & (2 * v7)) + 1541402624;
  *(v9 + 4) = v8 + v5 - 10194;
  v10 = (*(v4 + 8 * (v5 ^ 0x1872)))(v3 - 200);
  return (*(*(v2 + 10448) + 8 * ((13 * (*(v3 - 192) == 168832651)) ^ v5)))(v10);
}

uint64_t sub_1002D815C()
{
  *(v1 + 8) = v3;
  *(v1 + 16) = (v4 - 8592) ^ (784480913 * v2);
  v7 = (*(v6 + 8 * (v4 + 636)))(v5 - 200);
  return (*(*(v0 + 10448) + 8 * (((*v1 == ((v4 - 668018453) ^ 0xF62B7C38)) * ((v4 + 1814570974) & 0x93D7BD9C ^ 0x1411)) ^ v4)))(v7);
}

uint64_t sub_1002D81F0()
{
  v4 = *(v0 + 6936);
  v5 = (*(v3 + 8 * (v2 ^ 0x24C9)))(*(*(v4 + 8) + 8 * v1));
  v6 = *(v0 + 10448);
  *(*(v4 + 8) + 8 * v1) = 0;
  return (*(v6 + 8 * ((16006 * (((v2 - 2423) ^ 0xFFFFFFFFFFFFDC7ALL) + v1 + ((v2 - 1925274157) & 0x72C16F32) < **(v0 + 10432))) ^ v2)))(v5);
}

uint64_t sub_1002D82BC()
{
  v4 = *(v0 + 10888);
  v5 = v2 - 200;
  *(v5 + 8) = (v1 + 1032899468) ^ (1131370337 * ((((v2 - 200) | 0x71FFCED8) - ((v2 - 200) & 0x71FFCED8)) ^ 0x9E9AA5C0));
  *v5 = v4;
  v6 = (*(v3 + 8 * ((v1 - 668006557) ^ 0xD82F36EC)))(v2 - 200);
  return (*(*(v0 + 10448) + 8 * ((23 * (*(v2 - 188) == 1957526833)) | (v1 + 7295))))(v6);
}

uint64_t sub_1002D8390()
{
  v4 = *(v0 + 6936);
  if ((*v2 - 900) < 2 || *v2 == 1000)
  {
    return (*(v3 + 8 * ((5673 * (v1 + 1 < **(v0 + 10432))) ^ 0xAB7)))(v4);
  }

  *(v0 + 11108) = -27207;
  return sub_1002E4E24(v4);
}

uint64_t sub_1002D8920()
{
  *(v2 + 10432) = v3;
  v5 = *(v2 + 12320);
  *(v2 + 13240) = v5;
  *(v2 + 13252) = *(v2 + 12736);
  *(v2 + 11588) = 0;
  *(v2 + 12920) = 0;
  return (*(v4 + 8 * ((14 * ((((v0 - v1 - 3542) ^ (v0 - 9982) ^ (v5 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1002D8984()
{
  v1 = *(v0 + 13276);
  v2 = *(v0 + 13264);
  *(v0 + 10208) = v2 + (v1 - 16);
  v3 = (((v1 + 12) ^ (4 - v1) ^ (-71 - v1) ^ (((-71 - v1) ^ 4) - 1)) ^ (((-71 - v1) ^ 0xE) + 5)) & 0xF;
  v4 = (((v3 ^ 0xC68D3852) - 1482899390) ^ ((v3 ^ 0x57284E14) + 909751816) ^ ((v3 ^ 0x91A57643) - 256602543)) - 1628567595;
  v5 = v4 + v1;
  v6 = 2 * (v1 - 20);
  *(v0 + 10272) = v1;
  v7 = v1 - 1234110094 - (v6 & 0x6CE1F30C);
  *(v0 + 10192) = ((v4 + 20) ^ 0xACAFBF5DEF9FD767) + 0x535040A23ACF646CLL + ((2 * (v4 + 20)) & 0x1DF3FAECELL);
  *(v0 + 10184) = ((v1 - 20) ^ 0xADFECBF7) + 1375810569 + (v6 & 0x5BFD97EE);
  v8 = *(v0 + 13252);
  v9 = *(v0 + 13240);
  v10 = v8 - 20;
  *(v0 + 10176) = v9 + (v8 - 16);
  v11 = (((-106 - v8) ^ (v8 + 12) ^ (v8 + 108)) ^ ((((-106 - v8) ^ 0xFB) + 7) ^ (((-106 - v8) ^ 0xF9) + 5))) & 0xF;
  v12 = (((v11 ^ 0x787146BB) - 1488629360) ^ (v11 - 524720331) ^ ((v11 ^ 0x3687FAA9) - 374084194)) + 550234293;
  v13 = (v12 + v8);
  v14 = 2 * (v8 - 20);
  *(v0 + 10256) = v8;
  v15 = v8 - 1234110094 - (v14 & 0x6CE1F30C);
  *(v0 + 10160) = ((v12 + 20) ^ 0xDEF7FFD7EF9BF5E3) + 0x210800283AD345F0 + ((2 * (v12 + 20)) & 0x1DF37EBC6);
  *(v0 + 10152) = (v10 ^ 0x2FEE6D57) - 804154711 + (v14 & 0x5FDCDAAEu);
  v16 = *(v0 + 13228);
  v17 = *(v0 + 13216);
  *(v0 + 10144) = v17 + (v16 - 16);
  v18 = (((((99 - v16) ^ 0xFD) + 14) ^ (99 - v16)) ^ (((99 - v16) ^ 0xAA) + 11)) & 0xF;
  v19 = (((v18 ^ 0x3B6B16B3) + 1862012568) ^ ((v18 ^ 0xC5DABEA2) - 1873959289) ^ ((v18 ^ 0xFEB1A81E) - 1423527877)) - 1435965504 + v16;
  v20 = 2 * (v16 - 20);
  *(v0 + 10248) = v16;
  v21 = v16 - 1234110094 - (v20 & 0x6CE1F30C);
  *(v0 + 10128) = ((v16 - 20) ^ 0xBFEF7DD7) + 1074823721 + (v20 & 0x7FDEFBAE);
  v22 = *(v0 + 13204);
  v23 = (((-112 - v22) ^ (v22 + 12) ^ (((-112 - v22) ^ 8) + 12)) ^ ((((-112 - v22) ^ 0xAA) + 10) ^ (((-112 - v22) ^ 1) + 3))) & 0xF;
  v24 = (((v23 ^ 0x5AF30328) - 1555924935) ^ ((v23 ^ 0x2FD14291) - 698336894) ^ ((v23 ^ 0x752241B5u) - 1936508250)) + 105809103 + v22;
  v25 = 2 * (v22 - 20);
  v26 = v22 - 1234110094 - (v25 & 0x6CE1F30C);
  *(v0 + 10240) = v5;
  *(v0 + 10112) = v5 - 751357895 - ((2 * v5) & 0xA66E6072);
  *(v0 + 10232) = v13;
  *(v0 + 10104) = v13 - 751357895 - ((2 * v13) & 0xA66E6072);
  *(v0 + 10224) = v19;
  *(v0 + 10096) = v19 - 751357895 - ((2 * v19) & 0xA66E6072);
  *(v0 + 10216) = v24;
  *(v0 + 10088) = v24 - 751357895 - ((2 * v24) & 0xA66E6072);
  v27 = *(v0 + 13192);
  *(v0 + 10288) = v22;
  *(v0 + 10080) = v27 + (v22 - 16);
  *(v0 + 10072) = ((v22 - 20) ^ 0x3DEF795F) - 1039105792 + (v25 & 0x7BDEF2BEu) + 1441;
  *(v0 + 10200) = v7;
  v28 = v7 ^ 0xB670F986;
  *(v0 + 10000) = v28 + v2 - 4;
  *(v0 + 10168) = v15;
  v29 = v15 ^ 0xB670F986;
  *(v0 + 9992) = v29 + v9 - 4;
  *(v0 + 10136) = v21;
  v30 = v21 ^ 0xB670F986;
  *(v0 + 9984) = v30 & 0xFFFFFFF8;
  *(v0 + 9976) = -6078 - (v30 & 0xFFFFFFF8);
  *(v0 + 9968) = v30 + v17 - 4;
  *(v0 + 10120) = v26;
  v31 = v26 ^ 0xB670F986;
  *(v0 + 9960) = v31 + v27 - 4;
  *(v0 + 9952) = v28 & 0xFFFFFFF8;
  *(v0 + 9928) = 8 - (v28 & 0xFFFFFFF8);
  *(v0 + 9944) = v29 & 0xFFFFFFF8;
  *(v0 + 9920) = 8 - (v29 & 0xFFFFFFF8);
  *(v0 + 9936) = v31 & 0xFFFFFFF8;
  *(v0 + 9912) = 8 - (v31 & 0xFFFFFFF8);
  *(v0 + 9840) = -83929122;
  *(v0 + 10352) = v2;
  *(v0 + 10416) = v2 + 4;
  *(v0 + 10336) = v9;
  *(v0 + 10400) = v9 + 4;
  *(v0 + 10320) = v17;
  *(v0 + 10384) = v17 + 4;
  *(v0 + 10304) = v27;
  *(v0 + 10368) = v27 + 4;
  *(v0 + 10032) = v28 & 0xFFFFFFE0;
  *(v0 + 9832) = (v7 ^ 0x86) & 0x1F;
  *(v0 + 9824) = (v7 ^ 0x86) & 0x18;
  *(v0 + 9904) = (v7 ^ 0x86) & 7;
  *(v0 + 10024) = v29 & 0xFFFFFFE0;
  *(v0 + 9816) = (v15 ^ 0x86) & 0x1F;
  *(v0 + 9808) = (v15 ^ 0x86) & 0x18;
  *(v0 + 9896) = (v15 ^ 0x86) & 7;
  *(v0 + 10016) = v30 & 0xFFFFFFE0;
  *(v0 + 9800) = (v21 ^ 0x86) & 0x1F;
  *(v0 + 9792) = (v21 ^ 0x86) & 0x18;
  *(v0 + 9888) = (v21 ^ 0x86) & 7;
  *(v0 + 10008) = v31 & 0xFFFFFFE0;
  *(v0 + 9784) = (v26 ^ 0x86) & 0x1F;
  *(v0 + 9776) = (v26 ^ 0x86) & 0x18;
  *(v0 + 9880) = (v26 ^ 0x86) & 7;
  *(v0 + 10064) = v28;
  *(v0 + 9872) = v28 - 8;
  *(v0 + 10056) = v29;
  *(v0 + 9864) = v29 - 8;
  *(v0 + 10048) = v30;
  *(v0 + 9856) = v30 - 8;
  *(v0 + 10040) = v31;
  *(v0 + 9848) = v31 - 8;
  return sub_1002CCF68();
}

uint64_t sub_1002D89E8()
{
  v3 = *(v1 + 12344);
  *(v1 + 13264) = v3;
  *(v1 + 13276) = *(v1 + 10920);
  *(v1 + 11412) = 0;
  *(v1 + 10704) = 0;
  *(v1 + 12568) = 0;
  *(v1 + 12256) = 0;
  *(v1 + 11336) = 0;
  *(v1 + 12744) = 0;
  *(v1 + 10512) = 0;
  *(v1 + 12624) = 0;
  *(v1 + 11864) = 0;
  *(v1 + 10608) = 1909512789;
  *(v1 + 12368) = 0;
  *(v1 + 12340) = 0;
  *(v1 + 11300) = 0;
  *(v1 + 12220) = 0;
  *(v1 + 11656) = 0;
  *(v1 + 13000) = 0;
  *(v1 + 10872) = 0;
  return (*(v2 + 8 * (((v3 == 0) * (v0 + 667996453 + v0 - 668016662)) ^ v0)))();
}

void sub_1002D92D4()
{
  *(v2 + 10416) = v1;
  *(v2 + 10432) = v0;
  JUMPOUT(0x1002D92E0);
}

void sub_1002D93F8(uint64_t a1)
{
  v11 = *(v3 + 10840);
  v11[1] = a1;
  v11[3] = v5;
  v11[5] = v4;
  v11[7] = v8;
  v11[9] = v7;
  v11[13] = v6;
  v11[11] = v2;
  v11[15] = v1;
  v12 = (*(v10 + 8 * (v9 + 4407)))(128, 0x103004026C18290);
  *(v3 + 10824) = v12;
  (*(v10 + 8 * (v9 ^ 0x2E09u)))(v11, v12, 128);
  *(v3 + 12604) = 688134491;
  *(v3 + 11112) = v12;
  sub_1002D8AF8();
}

uint64_t sub_1002D94D4()
{
  v5 = (v3[1] + 6 * v1);
  *(v2 + 11539) = (((*v5 << ((3 * (v0 ^ 0xCC)) ^ 0x55)) & 0x8E) + (*v5 ^ ((v0 ^ 0xCC) + 8) ^ 0xE3)) ^ 0x80;
  return (*(v4 + 8 * ((8257 * (*(v3[11] + 16 * v5[2] + 8) == *(v3[13] + 16 * v5[3] + 8))) ^ v0)))();
}

uint64_t sub_1002D9568()
{
  v6 = v2 + 6 * v0;
  v7 = *(v6 + 1);
  v8 = v3 + 16 * *(v6 + 5);
  *(v4 + 12712) = *v8;
  *(v4 + 11636) = *(v8 + 8);
  return (*(v5 + 8 * (((v7 == *(v4 + 11495)) * (((v1 - 1350032173) & 0x5077EFDB) + 3501)) ^ v1)))();
}

uint64_t sub_1002D96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v7 + 12504) += 96;
  *(v7 + 11808) = 0x52E39BD4572CA21FLL;
  if (v4)
  {
    v10 = v5 == 476382832;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  return (*(v9 + 8 * ((v11 * (v6 - v8 - 2078)) ^ (v6 + 668010764))))(a1, a2, a3, a4, 0x52E39BD4572CA21FLL);
}

uint64_t sub_1002DA960@<X0>(int a1@<W8>)
{
  v7 = v5 + 13616 + v3;
  *v7 = v1;
  *(v7 + 8) = v2;
  *(v7 + 12) = 0;
  v8 = ((*v1 << ((3 * ((v4 + 33) ^ 0x23)) ^ 0x1C)) & 0xEE) + (*v1 ^ 0x77);
  *(v7 + 12) = 1;
  v10 = (v8 - 126) > 0xF8u && -274924194 - a1 + (v8 - 49) + (((v8 - 49) < 0x46u) << 8) == -274924124;
  return (*(v6 + 8 * (v10 | (2 * v10) | (v4 + 801))))();
}

uint64_t sub_1002DAA48(int a1, __n128 a2)
{
  a2.n128_u32[0] = *v2;
  v5 = *v2 < 1.0 && a2.n128_f32[0] >= 0.0;
  return (*(v3 + 8 * ((v5 * (a1 + 668009688)) ^ (a1 + 668010764))))(a2);
}

uint64_t sub_1002DAAF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = a6 + a2;
  v10 = a2 + 668010764;
  v11 = *(v6 + 4 * v7);
  v13 = v11 < 1.0 && v11 >= 0.0;
  return (*(v8 + 8 * ((v13 * (v9 - 3500)) ^ v10)))();
}

uint64_t sub_1002DB124@<X0>(int a1@<W8>)
{
  v6 = *(v2 + 12792);
  *(v6 + 24) = 5;
  *(v6 + 28) = a1;
  v6 += 24;
  *(v6 + 8) = *(v2 + 12804);
  *(v6 + 16) = 0;
  *(v6 + 24) = v1;
  v7 = v4 - 200;
  *(v7 + 24) = *(v2 + 11856);
  *v7 = (v3 + 136) ^ (1040404627 * ((((v4 - 200) | 0x64084679) - (v4 - 200) + ((v4 - 200) & 0x9BF7B980)) ^ 0xB4E1078B));
  *(v7 + 8) = v6;
  v8 = (*(v5 + 8 * (v3 + 11739)))(v4 - 200);
  return (*(*(v2 + 10448) + 8 * ((3186 * (*(v4 - 184) == ((v3 - 668007368) ^ 0xF12B1ED7))) ^ v3)))(v8);
}

uint64_t sub_1002DB1F8@<X0>(uint64_t a1@<X8>)
{
  v8 = v2 + a1 + 13616;
  v2[1563] = (((v3 + 9628) - 3626971252) ^ (v3 - v5 - 852)) + v1;
  (*(v7 + 8 * (v3 + 11756)))(v8, 16);
  v9 = *v8;
  v10 = v2[432];
  *(v10 + 15) = v8[15];
  v11 = v9 + 1808939459 + (~(2 * v9) | 0xFFFFFE7B);
  v12 = v8[1];
  *(v10 + 11) = *(v8 + 11);
  v13 = v8[10];
  *(v10 + 10) = v13;
  v14 = v8[9];
  *(v10 + 9) = v14;
  v15 = v8[8];
  *(v10 + 8) = v15;
  v16 = v8[7];
  *(v10 + 7) = v16;
  v17 = v8[6];
  *(v10 + 6) = v17;
  v18 = v8[5];
  *(v10 + 5) = v18;
  v19 = v8[4];
  *(v10 + 4) = v19;
  v20 = v8[3];
  *(v10 + 3) = v20;
  *(v10 + 1) = v12;
  v21 = v8[2];
  v22 = (((v12 + 2031294 - ((2 * v12) & 0x76)) << 8) + 490752) ^ 0xA2A5D6B0;
  *(v10 + 2) = v21;
  *v10 = v9;
  *(v8 + 2) = 0x22300000006;
  v23 = v8 + 16;
  v24 = ((v21 - ((2 * v21) & 0x188)) << 16) - 339476480;
  *(v8 + 6) = (v24 & 0xBF1B0000 ^ 0xEBE407C3 ^ (v11 & 0x4040024F ^ 0xBD07EA31 ^ v22 & (v11 ^ 0x942DC631)) & (v24 ^ 0x143BFFFF)) + (v20 << 24);
  *(v8 + 8) = 0;
  *(v8 + 9) = (v16 << 24) | (v17 << 16) | (v18 << 8) | v19;
  v25 = (v13 << 16) | (v14 << 8) | v15 | (v8[11] << 24);
  v26 = v25 - 2 * (v25 & 0x286B7A6B ^ v15 & 2) + 0x941901C286B7A69;
  v27 = (((v8[15] - ((2 * v8[15]) & 0xFFC7u) + 3) << 56) - 0x2000000000000000) ^ 0xE300000000000000 | (((((v8[12] - ((2 * v8[12]) & 0xBCu) + 9226635) << 32) - 0x2D00000000) ^ 0x8CC95E00000000) + (v8[13] << 40) + ((((v8[14] - ((2 * v8[14]) & 0x136u) + 10445) << 48) - 0x32000000000000) ^ 0x289B000000000000));
  *(v8 + 5) = (v27 - ((2 * v27) & 0x7E0158ECE742F064) - 0x40FF53898C5E87D0) & 0x2A04987141AE0C40 ^ 0xAD18742AA8DD59A0 ^ ((v27 - ((2 * v27) & 0x7E0158ECE742F064) - 0x40FF53898C5E87D0) ^ 0x40FF53898C5E87CFLL) & (v26 ^ 0xDCBAF792963A89D6);
  v28 = v6 - 200;
  *(v28 + 24) = v2[1482];
  *(v28 + 8) = v23;
  *v28 = v4 ^ (1040404627 * ((((v6 - 200) ^ 0x251B2623 | 0x4AE01844) + ((v6 - 200) ^ 0x4A800040 | 0xB51FE7BB)) ^ 0xBF726790));
  v29 = (*(v2[1306] + 8 * (v3 ^ 0x327B)))(v6 - 200);
  v30 = v2[1306];
  v31 = *(v6 - 184);
  v2[1563] -= 48;
  return (*(v30 + 8 * ((2832 * (v31 == 688134491)) ^ v3)))(v29);
}

uint64_t sub_1002DB5B0()
{
  v3 = *(v0 + 12832);
  v4 = (*(v2 + 8 * (v1 ^ 0x18CF)))(v3, 0x100004077774924);
  v5 = *(v0 + 10448);
  **(v0 + 2088) = v4;
  v6 = (v3 ^ 0xBFFDF2BB) + ((2 * v3) & 0x7FFBE576) + ((v1 - 570444100) & 0xFA2F27DF) + 594081394;
  return (*(v5 + 8 * ((498 * ((((v6 ^ 0x9B9D6DE4) - 537435485) ^ v6 ^ ((v6 ^ 0xC5B05B56) - 2116398063) ^ ((v6 ^ 0x58727974) + 471365171) ^ ((v6 ^ 0xBDCABF7F) - 106909638)) != 3147165881)) ^ v1)))();
}

uint64_t sub_1002DB7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((994 * (((v3 + 668007804) ^ 0x528) == (v2 & 0xFFFFFFE0))) ^ (v3 + 668015147))))();
}

uint64_t sub_1002DB910()
{
  v3 = *(v0 + 11112);
  *(v0 + 12504) += 64;
  return (*(v2 + 8 * (((((v1 ^ 0xD82F2B20 ^ (v3 == 0)) & 1) == 0) | (4 * (((v1 ^ 0xD82F2B20 ^ (v3 == 0)) & 1) == 0))) ^ (v1 + 668015924))))();
}

uint64_t sub_1002DBC84@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + 13616 + a1;
  v6 = (*(v4 + 8 * (v3 + 1109)))(v2, v5, 128);
  return (*(*(v1 + 10448) + 8 * (((*(v5 + 80) == 0) * (((v3 + 1261765459) & 0xB4CAD36D) - 875)) | v3)))(v6);
}

uint64_t sub_1002DBD2C@<X0>(int a1@<W8>)
{
  v4 = (a1 + 135) | 0x24A;
  (*(v1 + 8 * (a1 + 11612)))(**(v3 + 104));
  (*(*(v2 + 10448) + 8 * (v4 + 10891)))(*(v3 + 24));
  (*(*(v2 + 10448) + 8 * (v4 + 10891)))(*(v3 + 40));
  (*(*(v2 + 10448) + 8 * (v4 ^ 0x369F)))(*(v3 + 56));
  (*(*(v2 + 10448) + 8 * (v4 + 10891)))(*(v3 + 72));
  (*(*(v2 + 10448) + 8 * (v4 ^ 0x369F)))(*(v3 + 104));
  v5 = (*(*(v2 + 10448) + 8 * (v4 ^ 0x369F)))(*(v3 + 120));
  return (*(*(v2 + 10448) + 8 * (((*(v3 + 96) != 0) * (v4 - 1585)) ^ v4)))(v5);
}

void sub_1002DBE74()
{
  v6 = 860 * (v4 ^ 0x640);
  (*(v0 + 8 * v5))(**(v3 + 88));
  (*(*(v1 + 10448) + 8 * (v6 ^ 0x114D)))(*(v3 + 88));
  (*(*(v1 + 10448) + 8 * (v6 ^ 0x114D)))(*(v3 + 8));
  (*(*(v1 + 10448) + 8 * (v6 + 3901)))(v2);
  JUMPOUT(0x1002DBF04);
}

void sub_1002DC1A0(int a1@<W8>)
{
  *(v3 + 16) = a1 - 1;
  v5 = *(v3 + 8);
  v6 = v4 - 200;
  *v6 = 1551518921 * ((-483120109 - ((v4 - 200) | 0xE3342C13) + ((v4 - 200) | 0x1CCBD3EC)) ^ 0x2A0B20EF) + 668006516 + v1 + 1094;
  *(v6 + 8) = v5;
  (*(*(v2 + 10448) + 8 * (v1 + 668019076)))(v4 - 200);
  JUMPOUT(0x1002CCD50);
}

uint64_t sub_1002DC238@<X0>(int a1@<W0>, int a2@<W8>)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return (*(v4 + 8 * (((((a2 == 0) ^ (a1 + 1)) & 1) * ((185 * (a1 ^ 0x29BD)) ^ 0x3C0)) ^ a1)))();
}

uint64_t sub_1002DC2F0()
{
  __asm { FMOV            V0.4S, #1.0 }

  *v0 = 0;
  v0[1] = 0;
  *v1 = _Q0;
  return (*(v5 + 8 * ((103 * (((v3 - v4 + 308) ^ 0x130) == (v2 & 4))) ^ (v3 + 668014624))))();
}

uint64_t sub_1002DC3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF880 ^ (v4 - 327431504) & 0x13842FFF) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((50 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1002DC4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((477 * (v5 == 0)) ^ (v3 + 668009811))))();
}

uint64_t sub_1002DC558@<X0>(int a1@<W8>)
{
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  return (*(v5 + 8 * ((76 * (((a1 == 0) ^ (v4 - 102)) & 1)) ^ v4)))();
}

void sub_1002DC618()
{
  for (i = 0; ; i += 8)
  {
    *(v0 + i) = 0;
  }
}

uint64_t sub_1002DC664()
{
  v6 = 4 * v2;
  *(v0 + v6) = 0;
  *(v1 + v6) = 1065353216;
  return (*(v5 + 8 * ((6921 * (((v4 + 668018353) ^ 0x2E3CLL) + v2 == v3)) ^ (v4 + 668010575))))();
}

void sub_1002DC6C0()
{
  for (i = 0; ; i += 32)
  {
    v2 = (v0 + i);
    *v2 = 0uLL;
    v2[1] = 0uLL;
  }
}

uint64_t sub_1002DC72C@<X0>(int a1@<W8>)
{
  v1[1302] = 0;
  v3 = v1[1563];
  v1[1300] = v1 + v3 + 13616;
  v1[1563] = (((a1 - 5303) | 0x2001u) ^ 0x201FLL) + v3;
  v4 = v1[1395];
  v1[1304] = v4;
  LODWORD(v4) = *(v4 + 40) != 0;
  v1[1393] = 0;
  v1[1450] = 0;
  v1[1496] = 0;
  return (*(v2 + 8 * ((v4 | (2 * v4)) ^ a1)))();
}

uint64_t sub_1002DC7A0()
{
  v5 = (*(v4 + 8 * (v1 ^ 0x1030)))(24, 0x103004013764637);
  v0[1393] = v5;
  v6 = 505507193 * ((2 * ((v3 - 200) & 0x54A8C500) - (v3 - 200) + 727137019) ^ 0x40DCB130);
  v7 = v1 - v6 + 1377019219;
  v8 = v2 - v6 - ((2 * v2) & 0xADCEE8C0) + 1458009184;
  v9 = v3 - 200;
  *v9 = v8;
  *(v9 + 4) = v7;
  v0[1302] = v5;
  *(v9 + 8) = v5;
  (*(v0[1306] + 8 * (v1 ^ 0x112B)))(v3 - 200);
  v10 = v0[1306];
  v11 = *(v0[1304] + 48);
  v12 = *v11;
  v13 = 325024769 * ((~((v3 - 200) | 0xF2B2FFAC57850774) + ((v3 - 200) & 0xF2B2FFAC57850774)) ^ 0xF4359AEFDC1C51A9);
  v14 = v3 - 200;
  *v14 = v13 + v1 + 1844649190;
  *(v14 + 8) = v11 + 2;
  *(v14 + 16) = v13 + (v12 ^ 0x6FEDF72F5DFB77BDLL) + ((v12 << ((v1 + 112) & 0xFC ^ 0x7Du)) & 0xBBF6EF7A) + 0x805B60307516C48;
  *(v14 + 24) = v0[1302];
  v15 = (*(v10 + 8 * (v1 ^ 0x10FE)))(v3 - 200);
  return (*(v0[1306] + 8 * ((55 * (v2 == 1)) ^ v1)))(v15);
}

uint64_t sub_1002DC98C(uint64_t a1, uint64_t a2)
{
  v6 = (v3[1547] + 688 * v2);
  v3[1685] = v6;
  v7 = v3[1395] + 8;
  v3[1280] = v7;
  v3[1686] = v7;
  v8 = *v6;
  if ((v8 - 900) < 2 || v8 == 1000)
  {
    return sub_1002DFE18(a1, a2, v4 - 668006437);
  }

  else
  {
    return (*(v5 + 8 * (v4 - 668006480)))();
  }
}

uint64_t sub_1002DD6B4()
{
  *(v1 + 10400) = -668006520;
  v8 = *v5;
  *(v1 + 12472) = 0x863C7F8C325E541;
  *(*(v3 + 64) + 32 * v8) = *(*(v0 + 16) + 72 * v8);
  v9 = *(v0 + 16) + 72 * v8;
  v10 = *(v3 + 88);
  v11 = *(v3 + 64) + 32 * v8;
  v12 = v6 - 200;
  *(v12 + 24) = v11 + 24;
  *(v12 + 32) = v10;
  *(v12 + 48) = (v4 - 952442912) ^ (961063711 * ((((v6 - 200) | 0xC1235FA0) - ((v6 - 200) & 0xC1235FA0)) ^ 0xB0D796BF));
  v13 = 2239 * (v4 ^ *(v1 + 10400));
  *(v12 + 56) = v1 + 12472;
  *(v12 + 64) = v9 + 40;
  *(v12 + 8) = v11 + 16;
  *(v12 + 16) = 0;
  *(v12 + 72) = *(v1 + 10384);
  *(v12 + 40) = *(v1 + 10416);
  v14 = (*(v7 + 8 * (v4 + 668018999)))(v6 - 200);
  return (*(*(v1 + 10448) + 8 * (((*(v6 - 200) == v2 + v4 + 1583734672) * (v13 - 8951)) ^ (v4 + 668009782))))(v14);
}

uint64_t sub_1002DD8D0@<X0>(uint64_t a1@<X8>)
{
  v9 = *(v2 + 16) + 72 * v6 + 8;
  v10 = v7 - 200;
  v11 = v3[1302];
  *(v10 + 32) = *(v5 + 88);
  *(v10 + 40) = v11;
  *(v10 + 48) = (v4 - 1620452694) ^ (961063711 * ((((v7 - 200) ^ 0xA2441810 | 0x153BC44B) + ((v7 - 200) ^ 0x14218009 | 0xEAC43BB4)) ^ 0xC7915107));
  *(v10 + 56) = v3 + 1559;
  *(v10 + 64) = v9;
  *(v10 + 72) = v3[1298];
  *(v10 + 16) = 0;
  *(v10 + 24) = a1;
  *(v10 + 8) = v1 + 8;
  v12 = (*(v8 + 8 * (v4 + 9217)))(v7 - 200);
  return (*(v3[1306] + 8 * (((*(v7 - 200) == 1583734672) * ((103 * (v4 ^ 0xCB3) + 1455358600) & 0xA940F2FC ^ 0x932)) ^ v4)))(v12);
}

uint64_t sub_1002DDBB0()
{
  v6 = v1 - 3493;
  *(v0 + 10368) = *(v0 + 11968);
  *(v0 + 10400) = *(v0 + 11600);
  *(v0 + 10384) = *(v0 + 11912);
  *(v0 + 10352) = 961063711 * ((v4 - 200) ^ 0x71F4C91F);
  v7 = 4 * (((v1 - 5478) | 0xA4C) ^ 0x7F2);
  v8 = **(v0 + 10368);
  *(v0 + 12472) = 0x863C7F8C325E541;
  *(*(v2 + 80) + 32 * v8) = *(*(v3 + 32) + 72 * v8);
  v9 = *(v3 + 32) + 72 * v8 + 40;
  v10 = *(*(v0 + 10384) + 88);
  v11 = *(v2 + 80) + 32 * v8;
  v12 = v4 - 200;
  *(v12 + 8) = v11 + 16;
  *(v12 + 16) = 0;
  *(v12 + 24) = v11 + 24;
  *(v12 + 32) = v10;
  *(v12 + 48) = (v6 - 1620452694) ^ *(v0 + 10352);
  v13 = *(v0 + 10400);
  *(v12 + 64) = v9;
  *(v12 + 72) = v13;
  *(v12 + 40) = *(v0 + 10416);
  *(v12 + 56) = v0 + 12472;
  v14 = (*(v5 + 8 * (v6 + 9217)))(v4 - 200);
  return (*(*(v0 + 10448) + 8 * ((10286 * (*(v4 - 200) == v7 + 1583725716)) ^ v6)))(v14);
}

uint64_t sub_1002DDD90@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 688150395;
  *(*(v2 + 80) + 32 * v3 + 8) = 0xAD1C642BA8D35DE0;
  return (*(v4 + 8 * ((35 * (((*(*(v2 + 80) + 32 * v3 + 24) == ((v1 + 721) ^ 0x29043A5A)) ^ (v1 - 47)) & 1)) ^ (v1 - 2267))))();
}

uint64_t sub_1002DDE08@<X0>(uint64_t a1@<X8>)
{
  v8 = v2 - 584;
  v9 = (v2 - 1083876366) & 0x409AB7FF;
  v10 = *(v4 + 32) + 72 * v5 + 8;
  v11 = *(v3[1298] + 88);
  v12 = v6 - 200;
  *(v12 + 8) = v1 + 8;
  *(v12 + 16) = 0;
  *(v12 + 56) = v3 + 1559;
  *(v12 + 64) = v10;
  *(v12 + 48) = (v8 - 1620452694) ^ (961063711 * ((1748801265 - ((v6 - 200) | 0x683C96F1) + ((v6 - 200) | 0x97C3690E)) ^ 0xE637A011));
  v13 = v3[1302];
  *(v12 + 32) = v11;
  *(v12 + 40) = v13;
  *(v12 + 72) = v3[1300];
  *(v12 + 24) = a1;
  v14 = (*(v7 + 8 * (v8 + 9217)))(v6 - 200);
  return (*(v3[1306] + 8 * (((*(v6 - 200) == 1583734672) * (v9 + 2833)) ^ v8)))(v14);
}

uint64_t sub_1002DDFA8()
{
  *(v0 + v4 + 8) = 0xAD1C642BA8D35DE0;
  *(*(v3 + 80) + v4 + 24) = 688134594;
  return (*(v6 + 8 * (((v5 + ((v1 ^ 0x1FC9u) + 1027) - 3265 < *(v2 + 24)) * ((4 * (v1 ^ 0x1FC9)) ^ 0x1E39)) ^ v1 ^ 0x91)))();
}

uint64_t sub_1002DE154()
{
  v5 = v3 - 200;
  *v5 = (v2 - 1287) ^ (325024769 * ((v3 - 200) ^ 0x7466A922));
  *(v5 + 8) = v0;
  (*(v4 + 8 * (v2 + 11131)))(v3 - 200);
  (*(v1[1306] + 8 * (v2 ^ 0x3554)))(v1[1393]);
  return (*(v1[1306] + 8 * (((v1[1496] == 0) * (((v2 - 2085850694) & 0x7C53AED7 ^ 0xD82F219F) + 668006584)) | (v2 - 2085850694) & 0x7C53AED7)))();
}

uint64_t sub_1002DE248()
{
  v8 = v6 - 200;
  *v8 = v1;
  *(v8 + 8) = 1040404627 * ((2 * ((v6 - 200) & 0x29F01BA8) - (v6 - 200) + 1443882069) ^ 0x86E6A5A7) + 668019017 + v2 - 271;
  (*(v7 + 8 * (v2 ^ 0xD82F36BC)))(v6 - 200);
  v9 = (*(*(v0 + 10448) + 8 * (v2 + 668019017)))(v1);
  v10 = *(v0 + 10448);
  *(v0 + 12504) -= 16;
  return (*(v10 + 8 * ((5054 * (v3 == (v2 ^ (v4 + 3235) ^ 0x5E65FCEB))) ^ (v5 + v2 + 36))))(v9);
}

uint64_t sub_1002DE328()
{
  v3 = v1[802];
  v1[1443] = *(v3 + 32);
  return (*(v2 + 8 * ((243 * (((v0 - 19967116) & 0x1309FF5) + ((v0 - 3222) ^ 0xFFFFFFFFFFFFFFE9) - *(v3 + 16) + v1[1395] < 0x20)) ^ v0)))();
}

void sub_1002DE394(uint64_t a1@<X8>)
{
  v5 = *(a1 + 89);
  *(v1 + 120) = *(a1 + 105);
  *(v1 + 104) = v5;
  v6 = v3 - 200;
  *v6 = (v2 - 990) ^ (961063711 * ((~((v3 - 200) | 0x28E37FF8) + ((v3 - 200) & 0x28E37FF8)) ^ 0xA6E84918));
  *(v6 + 8) = a1;
  (*(v4 + 8 * (v2 + 6700)))(v3 - 200);
  JUMPOUT(0x1002E0DC8);
}

uint64_t sub_1002DE438@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v2 + v5 + 104) = *(a1 + v5 + 89);
  return (*(v4 + 8 * ((511 * (((v5 == 0) ^ (v3 - 100)) & 1)) ^ v3)))();
}

uint64_t sub_1002DE4F4()
{
  *(*(v2 + 64) + 32 * v0 + 8) = 0xAD1C642BA8D35DE0;
  v4 = *(*(v2 + 64) + 32 * v0 + 24) == ((v1 - 21021178) & 0xD96FAFAE ^ (v1 - 248838912));
  return (*(v3 + 8 * (((2 * v4) | (32 * v4)) ^ v1)))();
}

uint64_t sub_1002DE8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *v10 = v5 - 1;
  v12 = &v10[6 * (v5 - 1)];
  v13 = v12[2];
  *(v7 + 13176) = v12[3];
  *(v7 + 13160) = *(v12 + 2);
  *(v7 + 13172) = v12[6];
  LODWORD(v12) = *(v9 + (v13 + a5) * v8 + 36);
  *(v7 + 13180) = v12;
  return (*(v11 + 8 * (((v12 == (v6 ^ 0x3AC9) + 163446524) * (3 * (v6 ^ 0x1B15) - 718)) ^ v6 ^ 0x3AC9)))(a1, a2, a3);
}

uint64_t sub_1002DE9A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(v5 + 13172);
  if (a4 - 733552548 < ((v4 + 5297) ^ 0x512u) - 257178062 != v7 > 0xF541933)
  {
    v8 = a4 - 733552548 < ((v4 + 5297) ^ 0x512u) - 257178062;
  }

  else
  {
    v8 = v7 - 257169716 < (a4 - 733552548);
  }

  return (*(v6 + 8 * ((41 * !v8) ^ v4)))();
}

uint64_t sub_1002DEB18@<X0>(int a1@<W8>)
{
  v6 = *(v4 + a1 * v3 + 36);
  *(v2 + 13180) = v6;
  v8 = v6 + 104798457 > -1879229386 && v6 + 104798457 < *(v2 + 10416);
  v9 = !v8;
  if (v6 == (v1 ^ 0xD1913CB9 ^ ((v1 - 2145064956) | 0x580A0780)))
  {
    v9 = 1;
  }

  return (*(v5 + 8 * (v1 ^ (32 * v9))))();
}

uint64_t sub_1002DEB9C()
{
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 1801366311;
  }

  return (*(v3 + 8 * (((v4 != v2) * (((v0 + 668015076) | 0x886) ^ 0x2A32)) ^ (v0 + 668007015))))();
}

uint64_t sub_1002DFDA4@<X0>(unsigned int a1@<W8>)
{
  v2 = (*(v1 + 10888) + 688 * a1);
  *(v1 + 13528) = v2;
  v3 = **(v1 + 11040);
  *(v1 + 10240) = v3;
  *(v1 + 13536) = v3;
  v4 = *v2;
  if ((v4 - 900) < 2 || v4 == 1000)
  {
    JUMPOUT(0x1002DFE08);
  }

  return sub_1002E02E8();
}

uint64_t sub_1002DFE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v3 = ((v17 + v15 + 259) | 0xF0u) + 10243;
  v4 = *v14;
  v5 = *v12;
  *(v18 + 13136) = *(v19 + 8 * a3);
  *(v18 + 10368) = v5;
  v6 = v5 - 467364852;
  v7 = *(v18 + 13008);
  v8 = (v18 + 14784 + v7);
  *(v18 + 13184) = v8;
  *(v18 + 13008) = v3 + v7 - 10310;
  *(v18 + 13176) = v6;
  *(v18 + 13160) = v4;
  *(v18 + 13148) = 476382832;
  *(v18 + 13152) = 0;
  *(v18 + 13172) = 0;
  *(v18 + 10336) = v13 + 576970019;
  *(v18 + 13180) = v16 + 1;
  *v8 = 0;
  *(v18 + 10416) = v13 + 257078665;
  *(v18 + 10432) = v13 + 27444366;
  *(v18 + 10248) = v13 + 514262027;
  *(v18 + 10256) = v13 - 1008289290;
  if (*v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v18 + 13180) == v16;
  }

  v10 = v9;
  *(v18 + 10384) = v10;
  return (*(v19 + 8 * ((v10 * ((((((v17 + v15 + 259) | 0xF0) - 93368836) & 0xDDBFB79C) + 668016685) ^ ((((v17 + v15 + 259) | 0xF0) + 589) | 0x2001))) ^ v3)))(a1, a2, 47);
}

uint64_t sub_1002DFE40()
{
  v6 = v1;
  v7 = *(v2 + 10888);
  v8 = 784480913 * ((((v4 - 200) | 0x4F04D40F) + (~(v4 - 200) | 0xB0FB2BF0)) ^ 0x6999AE75);
  v9 = v4 - 200;
  *(v9 + 16) = (v3 - 5955) ^ v8;
  *(v9 + 8) = v7;
  *v9 = (v0 ^ 0xDBDEFED7) - v8 + (((v3 ^ 0x2C09) - 1212287310) & (2 * v0)) + 921544560;
  (*(v5 + 8 * (v3 + 1547)))(v4 - 200);
  v10 = *(v2 + 10736);
  *(v2 + 11019) = *(v10 + 11) ^ 0x68;
  *(v2 + 11018) = *(v10 + 10) ^ 0x30;
  *(v2 + 11017) = *(v10 + 9) ^ 0xBB;
  *(v2 + 11016) = *(v10 + 8) ^ 0x15;
  v11 = *(v2 + 11040);
  *(*v11 + 48) = **(v2 + 12112);
  *v11 = 0;
  v12 = (*(*(v2 + 10448) + 8 * (v3 + 1354)))(272, 0x10B0040E06EBD98);
  v13 = *(v2 + 10448);
  v14 = *(v2 + 6936);
  v15 = *(v2 + 10624);
  *(v12 + 24) = *(v2 + 6416);
  *(v12 + 32) = v14;
  *(v12 + 16) = v15;
  *(v12 + 168) = *v10;
  *(v12 + 172) = **(v2 + 13496);
  v19 = (v12 + 168 - v10) > 0xF && (v12 - *(v6 + 8 * (v3 - 10401)) + 188) > 0xF && (v12 - *(v6 + 8 * (v3 ^ 0x2A40)) + 186) > 0xF && (v12 - *(v6 + 8 * (v3 - 10991)) + 177) > 0xF;
  return (*(v13 + 8 * ((15 * v19) ^ v3)))();
}

uint64_t sub_1002E0030()
{
  v8 = v7 - 871;
  *(v5 + 176) = *(v4 + 8);
  v9 = v7 - 886;
  v10 = *(v1 + 11976);
  *(v5 + 192) = *(v4 + 24);
  *(v5 + 216) = **(v1 + 13504);
  *(v5 + 224) = **(v1 + 13512);
  *(v5 + 228) = *(v4 + 60);
  *(v5 + 240) = *(v4 + 72);
  *(v5 + 248) = *(*(v1 + 12768) - 0x23AD3E16493E458BLL);
  *(v5 + 256) = **(v1 + 11208);
  *(v5 + 264) = *(v4 + 96);
  *(v5 + 200) = *(v4 + 32);
  *(v5 + 208) = *(v4 + 40);
  *(v5 + 232) = **(v1 + 12384);
  *v5 = v6;
  *(v5 + 8) = **(v1 + 10432);
  (*(v0 + 8 * (v8 ^ 0x3294)))(v2, v5 + 40, 128);
  *(v10 + 376) = *(v1 + 11016);
  *(v10 + 380) = 0;
  *(v10 + 384) = 1000 * **(v1 + 11960) + *(*(v1 + 11960) + 8) / 1000;
  *(v10 + 392) = 1000 * **(v1 + 11440) + *(*(v1 + 11440) + 8) / (v9 ^ 0x6E);
  v11 = **(v1 + 12880);
  (*(*(v1 + 10448) + 8 * (v8 ^ 0x3294)))(v10 + 376, v10 + 400, 24);
  (*(*(v1 + 10448) + 8 * (v8 + 11734)))(v3, v11, v2 + 80, v10 + 400, v5);
  return (*(*(v1 + 10448) + 8 * ((*(v1 + 12023) * ((v9 ^ 0xD82F040A) + 668006516 + v9 + 7685 + 2278)) ^ v9)))(*(v1 + 6936));
}

uint64_t sub_1002E02D4()
{
  v3 = *(v1 + 13476) + 1;
  v4 = *(v1 + 6416);
  *(v1 + 13476) = v3;
  return (*(v2 + 8 * ((1015 * (v3 >= *(v4 + 8))) ^ 0x21EB)))();
}

uint64_t sub_1002E0420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (v9 - 10182) | 0x1003u;
  v12 = 0xDCEB3D5DC84FF1E9 - (((v8 ^ 0x70A7A7842F93648CLL) - 0x70A7A7842F93648CLL) ^ ((v8 ^ 0x7043601BAB40AC95) - 0x7043601BAB40AC95) ^ ((v11 ^ 0xADF8A3B42C0085F1) + (v8 ^ 0x52075C4BD3FF6A06)));
  v13 = v12 ^ ((v12 ^ 0xAC0C50C0AB9B7B18) + 0x7C3D760D4B1810F0) ^ ((v12 ^ 0xB64272E19E9707E3) + 0x6673542C7E146C15) ^ ((v12 ^ 0x823F06A4770815BCLL) + 0x520E2069978B7E4CLL) ^ ((v12 ^ 0xB7BFFDB75D78FD4FLL) + 0x678EDB7ABDFB96B9) ^ 0x7D2D42E648503617;
  return (*(v10 + 8 * ((30 * (a5 + (((v13 ^ 0x9E31B5C561D0E905) + a4) ^ ((v13 ^ 0x6D5A81CA818719C1) + a3) ^ ((v13 ^ 0xA188AFDBB77B52DBLL) + 0x5E7750237055A599 + ((v11 + a8) | 0x10070208u))) - 2 < 0xFFFFFFFFFFFFFFFELL)) ^ v11)))();
}

uint64_t sub_1002E07F8()
{
  v5 = v0 + 668013029;
  (*(v4 + 8 * (v0 + 668019017)))();
  v6 = *(v1 + 10448);
  *(v2 + 8) = 0;
  return (*(v6 + 8 * (((*(v2 + 16) == 0) * (v3 + ((v5 - 113256900) & 0xDEEF17DE) + 243)) ^ v5)))();
}

uint64_t sub_1002E09C4()
{
  (*(v4 + 8 * (v2 + 668019017)))();
  v5 = *(v0 + 10448);
  *(v1 + 88) = 0;
  *(v0 + 12760) = *(v5 + 8 * (v3 + v2 + 56));
  return sub_1002E0DD4();
}

uint64_t sub_1002E0D90()
{
  (*(v3 + 8 * (v0 + 4401)))();
  *(*(v1 + 8) + 8 * v2) = 0;
  return sub_1002E0D04(*(v1 + 24));
}