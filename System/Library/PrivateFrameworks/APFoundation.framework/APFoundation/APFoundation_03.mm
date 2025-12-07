uint64_t sub_1BAEC5C14@<X0>(int a1@<W8>)
{
  v1 = (a1 + 741) | 0x144u;
  v2 = LODWORD(STACK[0x4FC]) == 2;
  STACK[0x458] = v1;
  return (*(STACK[0x6D8] + 8 * ((((v2 ^ (a1 - 1)) & 1) * (v1 ^ 0x5BA)) ^ a1)))();
}

uint64_t sub_1BAEC5DA0@<X0>(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W4>, unsigned __int8 a3@<W5>, unsigned __int8 a4@<W6>, unsigned __int8 a5@<W7>, unsigned __int8 a6@<W8>)
{
  v17 = 388 * (v16 ^ 0x551);
  LODWORD(STACK[0x3C4]) = v17;
  LODWORD(STACK[0x338]) = v17 ^ 0x4BC;
  v18 = *(STACK[0x548] + (v6 ^ 0x5ELL));
  v19 = (((v18 ^ 0x74) + 97) ^ 0x6F) + ((2 * ((v18 ^ 0x74) + 97)) & 0xDF) - ((((2 * v18) ^ 0xE8) - ((4 * v18) & 0x20) + 17) & 0xC2);
  v20 = *(STACK[0x548] + (v17 ^ 0xD0u ^ v14));
  v21 = *(STACK[0x548] + (a1 ^ 0x99));
  v22 = *(STACK[0x548] + (a6 ^ 0xC8));
  v23 = v19 - 111;
  v24 = v16;
  v25 = (2 * (v19 - 111)) & 0x30;
  v26 = *(STACK[0x548] + (v11 ^ 0x2CLL));
  v27 = *(STACK[0x548] + (v7 ^ 0x3DLL));
  v28 = *(STACK[0x548] + (v15 ^ 0xE8));
  v29 = *(STACK[0x548] + (a3 ^ 0x42));
  v30 = *(STACK[0x548] + (a5 ^ 0xD3));
  v31 = *(STACK[0x548] + (v10 ^ 0x75));
  v32 = *(STACK[0x548] + (v12 ^ 0x20));
  v33 = *(STACK[0x548] + (a2 ^ 0x27));
  v34 = v8 ^ 0x32;
  v35 = *(STACK[0x548] + (v9 ^ 0x16));
  v36 = *(STACK[0x548] + v34);
  v37 = *(STACK[0x548] + (v13 ^ 0x4DLL));
  LOBYTE(v34) = *(STACK[0x548] + (a4 ^ 0x6ELL));
  v38 = (v23 - v25 - 104) ^ BYTE1(LODWORD(STACK[0x5C8]));
  v39 = v21 ^ HIBYTE(LODWORD(STACK[0x5C8])) ^ 0xD4;
  v40 = v22 ^ HIWORD(LODWORD(STACK[0x5C8])) ^ 0x98;
  v41 = STACK[0x5F0];
  LODWORD(STACK[0x458]) = *(STACK[0x5F0] + ((LODWORD(STACK[0x5C8]) ^ v20) ^ 0x18u));
  LODWORD(STACK[0x450]) = *(v41 + v40);
  v42 = *(v41 + v39);
  v43 = v27 ^ BYTE1(LODWORD(STACK[0x5D0]));
  v44 = v29 ^ HIBYTE(LODWORD(STACK[0x5D0]));
  v45 = *(v41 + ((v26 ^ HIWORD(LODWORD(STACK[0x5D0]))) ^ 0x22u));
  v46 = *(v41 + (v38 ^ 0xD3u));
  v47 = v30 ^ HIBYTE(LODWORD(STACK[0x5D8]));
  v48 = LODWORD(STACK[0x5D8]) ^ v33;
  v49 = v32 ^ HIWORD(LODWORD(STACK[0x5D8]));
  v50 = v31 ^ BYTE1(LODWORD(STACK[0x5D8]));
  v51 = *(v41 + (v43 ^ 0xC2u));
  LODWORD(STACK[0x448]) = *(v41 + (LODWORD(STACK[0x5D0]) ^ v28 ^ 0x84));
  v52 = *(v41 + (v44 ^ 0xC2u));
  LODWORD(STACK[0x440]) = *(v41 + (v47 ^ 0x7Du));
  v53 = *(v41 + (v48 ^ 0xCCu));
  v54 = LODWORD(STACK[0x5E0]) ^ v36 ^ 0xC6;
  v55 = v34 ^ HIWORD(LODWORD(STACK[0x5E0]));
  v56 = *(v41 + (v49 ^ 0xFAu));
  v57 = *(v41 + (v50 ^ 0xB8u));
  LOBYTE(v34) = v35 ^ BYTE1(LODWORD(STACK[0x5E0])) ^ 0xA7;
  v58 = v37 ^ HIBYTE(LODWORD(STACK[0x5E0])) ^ 0x91;
  LODWORD(STACK[0x43C]) = *(v41 + v34);
  v59 = *(v41 + v58);
  LODWORD(v34) = *(v41 + v54);
  v60 = *(v41 + (v55 ^ 0x70u));
  v61 = (~(2 * v56) & 0xFFFFFFF6) + (v56 ^ 4);
  v62 = (~(2 * v45) & 0xFFFFFFC2) + (v45 ^ 0x1E);
  v63 = v57 + 2 * ~v57;
  v64 = *(STACK[0x6D8] + 8 * ((11 * (LODWORD(STACK[0x4FC]) ^ 1)) ^ v24));
  LODWORD(STACK[0x478]) = v61;
  LODWORD(STACK[0x4F0]) = v61 + 31;
  LODWORD(STACK[0x470]) = v62;
  v65 = STACK[0x450];
  LODWORD(STACK[0x528]) = v62 + 127;
  LODWORD(STACK[0x38C]) = v34;
  v66 = v34 ^ 0x36;
  LODWORD(v34) = STACK[0x440];
  STACK[0x5C8] = v66;
  LODWORD(STACK[0x460]) = v53;
  STACK[0x5D0] = v53 ^ 0xFFFFFF98;
  STACK[0x5E8] = v34 ^ 0x44;
  LODWORD(STACK[0x520]) = (~(2 * v51) & 0xFFFFFFF6) + (v51 ^ 0xFFFFFF84) - 82;
  LODWORD(STACK[0x518]) = v42 + 2 * ~v42 + 42;
  LODWORD(STACK[0x49C]) = (~(2 * v46) & 0xFFFFFFDE) + (v46 ^ 0x10) + 96;
  STACK[0x468] = v52;
  v67 = v52 ^ 0xFFFFFFC9;
  LODWORD(v52) = STACK[0x458];
  STACK[0x5F0] = v67;
  LODWORD(STACK[0x480]) = v63;
  LODWORD(v67) = v63 + 75;
  v68 = STACK[0x448];
  LODWORD(STACK[0x510]) = v67;
  STACK[0x5C0] = v68 ^ 9u;
  STACK[0x5F8] = v52 ^ 0x64;
  STACK[0x5E0] = v65 ^ 0x4Cu;
  LODWORD(STACK[0x4FC]) = v59;
  v69 = v59 ^ 0x71u;
  v70 = STACK[0x43C];
  STACK[0x5B8] = v69;
  LODWORD(STACK[0x548]) = v60 + 2 * ~v60 + 123;
  STACK[0x5D8] = v70 ^ 0x27u;
  return v64();
}

uint64_t sub_1BAEC6268(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = (((((LODWORD(STACK[0x3C4]) - 656) ^ (LODWORD(STACK[0x530]) == LODWORD(STACK[0x500]))) & 1) == 0) * (((LODWORD(STACK[0x3C4]) + 1399290335) & 0xAC98849D) - 1160)) | LODWORD(STACK[0x3C4]);
  LODWORD(STACK[0x370]) = STACK[0x408] ^ 0xFFFFFFD6;
  LODWORD(STACK[0x3C4]) = v8 + v9 - 4;
  LODWORD(STACK[0x380]) = v11 + v17 - 48;
  LODWORD(STACK[0x36C]) = v19 + v18 - 22;
  LODWORD(STACK[0x3F8]) = STACK[0x3F8] ^ 0xFFFFFFAE;
  LODWORD(STACK[0x388]) = STACK[0x3F0] ^ 2;
  LODWORD(STACK[0x384]) = STACK[0x3E8] ^ 0x24;
  LODWORD(STACK[0x3F0]) = a3 + a5 - 28;
  LODWORD(STACK[0x378]) = v13 + a8 - 17;
  v21 = STACK[0x3E0] ^ 0x4F;
  LODWORD(STACK[0x3E8]) = STACK[0x400] ^ 0xFFFFFF9D;
  LODWORD(STACK[0x37C]) = STACK[0x3D8] ^ 0xFFFFFF93;
  v22 = STACK[0x3C8] ^ 0x18;
  v23 = *(STACK[0x6D8] + 8 * v20);
  LODWORD(STACK[0x400]) = STACK[0x3D0] ^ v10;
  LODWORD(STACK[0x3E0]) = v22;
  LODWORD(STACK[0x3D8]) = v15 + v16 + 127;
  LODWORD(STACK[0x374]) = v21;
  LODWORD(STACK[0x408]) = v14 + v12 - 68;
  return v23(a1);
}

uint64_t sub_1BAEC63A0(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = (v74 + 1409);
  STACK[0x530] = v79;
  v80 = ((v79 ^ 0xF200000000000A0ELL) + ((~a6 - ((2 * ~a6) & 0x60u) + 190) << 56)) ^ 0xB000000000000000;
  v81 = ((((v75 + 1) - 2 * ((v75 + 1) & 0xFu) + 21298) << 48) - 0x23000000000000) ^ 0x530F000000000000;
  v82 = (v80 - 0x55A970DD0003A115 - ((2 * v80) & 0x5400000000000000)) ^ 0xAA568F22FFFC5EEBLL | (v81 - 0x40F6C901E49D601 - ((2 * v81) & 0x77E0000000000000)) ^ 0xFBF0936FE1B629FFLL;
  v83 = (((~a4 - ((2 * ~a4) & 0x1A6u) + 6897152) << 40) - 0x2D0000000000) ^ 0x693DD30000000000;
  v84 = (v82 + 0x5236A4B660843FBFLL - ((2 * v82) & 0xA46D496CC1087F7ELL)) ^ 0x5236A4B660843FBFLL | (v83 + 0x2DEDF95F4E379DD8 - ((2 * v83) & 0x98BF20000000000)) ^ 0x2DEDF95F4E379DD8;
  v85 = ((((v73 + 17) - ((2 * (v73 + 17)) & 0x10Cu) - 837373544) << 32) - 0x1200000000) ^ 0xCE16B18600000000;
  v86 = (v84 - 0x3F40262D6D0D587BLL - ((2 * v84) & 0x817FB3A525E54F0ALL)) ^ 0xC0BFD9D292F2A785 | (v85 - 0x60AC64D9A3BF0D31 - ((2 * v85) & 0x3EA7364C00000000)) ^ 0x9F539B265C40F2CFLL;
  v87 = ((((LOBYTE(STACK[0x470]) + 31) - ((2 * (LODWORD(STACK[0x470]) + 31)) & 0x38)) << 24) + 0x7B1501251C000000) ^ 0x7B1501251C000000;
  v88 = (v86 + 0x59065DBE42B29E70 - ((2 * v86) & 0xB20CBB7C85653CE0)) ^ 0x59065DBE42B29E70 | (v87 + 0x6118835315668441 - ((2 * v87) & 0x423106A62A000000)) ^ 0x6118835315668441;
  v89 = ((((a1 - 123) - ((2 * (a1 - 123)) & 0x14ELL)) << 16) - 0x3BE0E8C2FE590000) ^ 0xC41F173D01A70000;
  v90 = (v88 + 0x21EC86D2FE31BAEDLL - ((2 * v88) & 0x43D90DA5FC6375DALL)) ^ 0x21EC86D2FE31BAEDLL | (v89 + 0x3B9CEFB7641239F9 - ((2 * v89) & 0x7739DF6EC8240000)) ^ 0x3B9CEFB7641239F9;
  v91 = v90 - ((2 * v90) & 0x5B72709323F77D2ALL) - 0x5246C7B66E04416BLL;
  v92 = (((~a7 - ((2 * ~a7) & 0xD4)) << 8) - 0x5F229385376E9600) ^ 0xA0DD6C7AC8916A00;
  v93 = v92 - ((2 * v92) & 0x4903858F214C7C00) - 0x5B7E3D386F59C17BLL;
  v94 = (((~v71 - ((2 * ~v71) & 0x17Cu) + 530144980) << 33) - 0x2C00000000) ^ 0x3F32BD7C00000000;
  v95 = ((((LOBYTE(STACK[0x478]) + 5) - ((2 * (LODWORD(STACK[0x478]) + 5)) & 0xBALL)) << 25) + 0x7BC7541EBA000000) ^ 0x7BC7541EBA000000;
  v96 = (2 * (~v76 - ((2 * ~v76) & 0xF2)) - 0x7BC4673ABF2B770ELL) ^ 0x843B98C540D488F2;
  v97 = (v95 + 0x446983DEE7FB872CLL - ((2 * v95) & 0x8D307BDCC000000)) ^ 0x446983DEE7FB872CLL | (v94 - 0x4E9B4BC54B5A55CDLL - ((2 * v94) & 0x62C9687400000000)) ^ 0xB164B43AB4A5AA33;
  v98 = ((((LOBYTE(STACK[0x480]) + 1) - ((2 * (LODWORD(STACK[0x480]) + 1)) & 0x22)) << 17) - 0x45E6593DD9DE0000) ^ 0xBA19A6C226220000;
  v99 = (v97 + 0x5AD630D91715DEB8 - ((2 * v97) & 0x35AC61B22E2BBD70)) ^ 0x5AD630D91715DEB8 | (v98 - 0x5A1B592AF8E84924 - ((2 * v98) & 0x4BC94DAA0E2C0000)) ^ 0xA5E4A6D50717B6DCLL;
  v100 = (((~LOBYTE(STACK[0x460]) - ((2 * ~LODWORD(STACK[0x460])) & 0x30)) << 9) + 0xF7018BCF9043000) ^ 0xF7018BCF9043000;
  v101 = (v99 + 0x5800F0597ABA04DDLL - ((2 * v99) & 0x3001E0B2F57409BALL)) ^ 0x5800F0597ABA04DDLL | (v100 + 0x18C64BF84A91236FLL - ((2 * v100) & 0x318C97F095224400)) ^ 0x18C64BF84A91236FLL;
  v102 = (v101 + 0x47DEA41D6B6F3E58 - ((2 * v101) & 0xFBD483AD6DE7CB0)) ^ 0x47DEA41D6B6F3E58 | (v96 - 0x1C11C77C06B20720 - ((2 * v96) & 0x47DC7107F29BF1C0)) ^ 0xE3EE3883F94DF8E0;
  v103 = v102 - ((2 * v102) & 0x6428AF13270D2640) + 0x7214578993869320;
  v104 = ((v72 - 127) + 0x9778C02DA8DF5FDLL - ((2 * (v72 - 127)) & 0x1FALL)) ^ 0x9778C02DA8DF5FDLL | ((~LOBYTE(STACK[0x38C]) << 16) - 0x388796DB8E5357D1 - ((~LODWORD(STACK[0x38C]) << 17) & 0x1580000)) ^ 0xC778692471ACA82FLL;
  *(&v105 + 1) = v103 ^ 0x1BA555C168FLL;
  *&v105 = v103 ^ 0x89C3940000000000;
  v106 = (((~LOBYTE(STACK[0x4FC]) - ((2 * ~LODWORD(STACK[0x4FC])) & 0x104)) << 8) - 0x55806B41F7A37E00) ^ 0xAA7F94BE085C8200;
  v107.i64[0] = (v106 - ((2 * v106) & 0x5603229B5CDC3200) - 0x14FE6EB25191E63FLL) ^ (v104 - ((2 * v104) & 0x6201B157B4C57148) + 0x7100D8ABDA62B8A4) ^ 0x59124864FAC3798 ^ ((v105 >> 41) - ((2 * (v105 >> 41)) & 0xCE60045D8BAFA38) - 0x798CFFDD13A282E4);
  v107.i64[1] = ((STACK[0x468] ^ v93 ^ 0x938FA8E015D80EFLL ^ v91) + 0x74E581B9866CC733 - ((2 * (STACK[0x468] ^ v93 ^ 0x938FA8E015D80EFLL ^ v91)) & 0xE9CB03730CD98E66)) ^ 0x74E581B9866CC733;
  v108 = (*(v77 + 4 * STACK[0x278]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x278]);
  v109 = (*(v77 + 4 * STACK[0x270]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x270]);
  LODWORD(STACK[0x4FC]) = ((v109 << 16) ^ 0x122F0000) - ((2 * ((v109 << 16) ^ 0x122F0000)) & 0x55A40000);
  v110 = (*(v77 + 4 * STACK[0x268]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x268]);
  LODWORD(STACK[0x4E8]) = ((v110 << 8) ^ 0xC122F00) - 1949314709 + (~(2 * ((v110 << 8) ^ 0xC122F00)) | 0xE8605DFF);
  LODWORD(v103) = (*(v77 + 4 * STACK[0x260]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x260]);
  DWORD1(v105) = v103 ^ 0x2F;
  LODWORD(v105) = v103 ^ 0x460C1200;
  LODWORD(v106) = *(v77 + 4 * STACK[0x258]);
  LODWORD(STACK[0x4EC]) = (v105 >> 8) - ((2 * (v105 >> 8)) & 0x5775A990);
  v111 = (v106 >> 2) & 0x17964D1F ^ v106;
  v112 = (*(v77 + 4 * STACK[0x250]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x250]);
  LODWORD(v103) = *(v77 + 4 * STACK[0x238]);
  LODWORD(STACK[0x500]) = v74;
  v113 = (v103 >> 2) & 0x17964D1F ^ v103;
  LODWORD(STACK[0x4E4]) = ((v113 << 24) ^ 0x2F000000) - ((2 * ((v113 << 24) ^ 0x2F000000)) & 0xB0000000);
  v114 = (*(v77 + 4 * STACK[0x230]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x230]);
  LODWORD(STACK[0x4E0]) = ((v114 << 16) ^ 0x122F0000) - ((2 * ((v114 << 16) ^ 0x122F0000)) & 0xD0FA0000);
  v115 = (*(v77 + 4 * STACK[0x228]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x228]);
  LODWORD(STACK[0x4DC]) = ((v115 << 8) ^ 0xC122F00) - ((2 * ((v115 << 8) ^ 0xC122F00)) & 0xC261A600);
  LODWORD(v104) = (*(v77 + 4 * STACK[0x220]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x220]);
  DWORD1(v105) = v104 ^ 0xC122F;
  LODWORD(v105) = v104 ^ 0x46000000;
  v116 = (v105 >> 24) + 570696892 + (~(2 * (v105 >> 24)) | 0xBBF7B689);
  v117 = (*(v77 + 4 * STACK[0x210]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x210]);
  v118 = (*(v77 + 4 * STACK[0x208]) >> 2) & 0x17964D1F ^ *(v77 + 4 * STACK[0x208]);
  LODWORD(v104) = (STACK[0x590] & 1 ^ 0xFFFFFFFB) + 2 * (STACK[0x590] & 1);
  v119 = (((v104 + 5) & LOBYTE(STACK[0x204])) - ((2 * ((v104 + 5) & LOBYTE(STACK[0x204]))) & 0xAA)) == 0;
  v120 = v104 + 63;
  v121 = 53 - v104;
  if (v119)
  {
    v121 = v120;
  }

  v122 = (a71 ^ LODWORD(STACK[0x558]) ^ 0xFFFFFF8F) + (~(2 * (a71 ^ LODWORD(STACK[0x558]) ^ 0xFFFFFF8F)) | 0xFFFFFFE1);
  v123 = (LODWORD(STACK[0x554]) ^ a70 ^ 0x32) - 2 * ((LODWORD(STACK[0x554]) ^ a70 ^ 0x32) & 0x36 ^ (LODWORD(STACK[0x554]) ^ a70) & 4);
  LODWORD(STACK[0x590]) = STACK[0x590] & 0xFFFFFFFE ^ 0x6A ^ (LODWORD(STACK[0x200]) + v121 - ((2 * (LODWORD(STACK[0x200]) + v121)) & 0xFFFFFFD4) + 106);
  v124 = LODWORD(STACK[0x5A4]) ^ a69;
  LODWORD(STACK[0x59C]) = 5;
  v125 = (v124 ^ 0xFFFFFFF8) - 2 * ((v124 ^ 0xFFFFFFF8) & 0x7D ^ v124 & 5);
  v126 = (a68 ^ LODWORD(STACK[0x564]) ^ 0x4D) - ((2 * (a68 ^ LODWORD(STACK[0x564]) ^ 0x4D)) & 0xFFFFFF9A);
  v127 = LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x364]);
  HIDWORD(v129) = v127 ^ 0x3C;
  LODWORD(v129) = (v127 ^ 0x40) << 24;
  v128 = v129 >> 30;
  v130 = (LODWORD(STACK[0x56C]) ^ a67 ^ 0xFFFFFFC6) - 2 * ((LODWORD(STACK[0x56C]) ^ a67 ^ 0xFFFFFFC6) & 0x47 ^ (LODWORD(STACK[0x56C]) ^ a67) & 1);
  HIDWORD(v129) = v128 + 18;
  LODWORD(v129) = ((v128 + 18 - ((2 * v128) & 0x24)) ^ 0xA0) << 24;
  v131 = (LODWORD(STACK[0x5A8]) ^ a66 ^ 0xFFFFFFDC) - 2 * ((LODWORD(STACK[0x5A8]) ^ a66 ^ 0xFFFFFFDC) & 0x5D ^ (LODWORD(STACK[0x5A8]) ^ a66) & 1);
  v132 = (LODWORD(STACK[0x5A0]) ^ a65 ^ 0xFFFFFFF6) - 2 * ((LODWORD(STACK[0x5A0]) ^ a65 ^ 0xFFFFFFF6) & 0x77 ^ (LODWORD(STACK[0x5A0]) ^ a65) & 1);
  LODWORD(STACK[0x4EC]) = *(v77 + 4 * STACK[0x248]) ^ HIWORD(v111) ^ (*(v77 + 4 * STACK[0x248]) >> 2) & 0x17964D1F ^ HIBYTE(v112) ^ (((v111 << 16) ^ 0x122F0000) - ((2 * ((v111 << 16) ^ 0x122F0000)) & 0xFE140000) + 2131380070) ^ (LODWORD(STACK[0x4EC]) - 1413819192) ^ (((v112 << 8) ^ 0xC122F00) - ((2 * ((v112 << 8) ^ 0xC122F00)) & 0x4A7F2E00) - 1522559118) ^ 0x83CD5282;
  v133 = *(v77 + 4 * STACK[0x280]) ^ (*(v77 + 4 * STACK[0x280]) >> 2) & 0x17964D1F ^ (v108 >> 8) ^ HIWORD(v109) ^ HIBYTE(v110) ^ (2136361588 - ((v108 << 24) ^ 0x2F000000)) ^ (LODWORD(STACK[0x4FC]) - 1429042475) ^ LODWORD(STACK[0x4E8]);
  v134 = STACK[0x6D8];
  v135 = *(v77 + 4 * STACK[0x218]) ^ (*(v77 + 4 * STACK[0x218]) >> 2) & 0x17964D1F ^ (v117 >> 8) ^ HIWORD(v118);
  v136 = vandq_s8(v107, xmmword_1BAF9DED0);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(v107, vaddq_s64(v136, v136)), xmmword_1BAF9DED0), xmmword_1BAF9DED0);
  v138 = vandq_s8(v137, v78);
  *&STACK[0x390] = vaddq_s8(vsubq_s8(v137, vaddq_s8(v138, v138)), v78);
  v139 = *(v77 + 4 * STACK[0x240]);
  v140 = LODWORD(STACK[0x4E4]) + 1483994975;
  v141 = LODWORD(STACK[0x4E0]) - 394421839;
  v142 = LODWORD(STACK[0x4DC]) + 1630589828;
  LODWORD(STACK[0x5AC]) ^= LODWORD(STACK[0x368]) ^ 0xFFFFFF9B;
  LODWORD(STACK[0x558]) = v122 - 112;
  LODWORD(STACK[0x578]) ^= LODWORD(STACK[0x350]) ^ 0xFFFFFFF6;
  LODWORD(STACK[0x554]) = v123 + 50;
  LODWORD(STACK[0x5A4]) = v125 - 8;
  LODWORD(STACK[0x564]) = v126 + 77;
  LODWORD(STACK[0x5B0]) ^= LODWORD(STACK[0x344]) ^ 0x67;
  LODWORD(STACK[0x584]) ^= LODWORD(STACK[0x33C]) ^ 0xFFFFFFC9;
  LODWORD(STACK[0x56C]) = v130 - 58;
  LODWORD(STACK[0x570]) ^= LODWORD(STACK[0x340]) ^ 0xFFFFFFD8;
  LODWORD(STACK[0x5A8]) = v131 - 36;
  LODWORD(STACK[0x5A0]) = v132 - 10;
  LODWORD(STACK[0x5B4]) ^= LODWORD(STACK[0x34C]) ^ 0x36;
  LODWORD(STACK[0x588]) ^= LODWORD(STACK[0x348]) ^ 0xFFFFFF8E;
  LODWORD(STACK[0x4A8]) = v133 ^ 0x1B8C6D58;
  LODWORD(STACK[0x4C4]) = v135 ^ (((v117 << 24) ^ 0x2F000000) + 1886673801 + (~(2 * ((v117 << 24) ^ 0x2F000000)) | 0x1FFFFFFF)) ^ v116 ^ (((v118 << 16) ^ 0x122F0000) - ((2 * ((v118 << 16) ^ 0x122F0000)) & 0x64800000) - 1304363017) ^ 0x8EA97587;
  LODWORD(STACK[0x4E4]) = v139 ^ (v139 >> 2) & 0x17964D1F ^ (v113 >> 8) ^ HIWORD(v114) ^ HIBYTE(v115) ^ v140 ^ v141 ^ v142 ^ 0x573EF41C;
  LODWORD(STACK[0x568]) = ((v129 >> 26) - ((2 * (v129 >> 26)) & 0x48) - 92) ^ 0xFFFFFFCF;
  v143 = *(v134 + 8 * SLODWORD(STACK[0x500]));
  LODWORD(STACK[0x4FC]) = 2;
  LODWORD(STACK[0x4A0]) = STACK[0x528];
  LODWORD(STACK[0x4A4]) = STACK[0x5D0];
  LODWORD(STACK[0x4AC]) = STACK[0x5C8];
  LODWORD(STACK[0x4B0]) = STACK[0x5B8];
  LODWORD(STACK[0x4B4]) = STACK[0x5D8];
  LODWORD(STACK[0x4B8]) = STACK[0x520];
  LODWORD(STACK[0x4BC]) = STACK[0x5E8];
  LODWORD(STACK[0x4C0]) = STACK[0x548];
  LODWORD(STACK[0x4C8]) = STACK[0x510];
  LODWORD(STACK[0x4CC]) = STACK[0x49C];
  LODWORD(STACK[0x4D0]) = STACK[0x5F8];
  LODWORD(STACK[0x4D4]) = STACK[0x518];
  LODWORD(STACK[0x4D8]) = STACK[0x4F0];
  LODWORD(STACK[0x4DC]) = STACK[0x5E0];
  LODWORD(STACK[0x4E0]) = STACK[0x5C0];
  LODWORD(STACK[0x4E8]) = STACK[0x5F0];
  return v143();
}

uint64_t sub_1BAEC7280@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  LODWORD(STACK[0x4FC]) = 0;
  v3 = (a3 + 365080202) | 0x4A2C0100;
  v4 = LODWORD(STACK[0x554]) ^ a2 ^ a1 ^ 0x40u;
  v5 = v3 >= 0x5D8F96BC;
  v6 = v3 ^ 0x5FEEB025;
  v7 = !v5;
  return (*(STACK[0x6D8] + 8 * (v6 ^ (855 * v7))))(v4);
}

uint64_t sub_1BAEC7408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  v53 = *(STACK[0x6D8] + 8 * (LODWORD(STACK[0x338]) + 863));
  LODWORD(STACK[0x438]) = STACK[0x56C];
  LODWORD(STACK[0x434]) = STACK[0x588];
  LODWORD(STACK[0x3F0]) = STACK[0x528];
  v54 = STACK[0x5F0];
  LODWORD(STACK[0x3F8]) = STACK[0x5F0];
  v55 = STACK[0x5B8];
  LODWORD(STACK[0x260]) = STACK[0x5B8];
  v56 = STACK[0x49C];
  LODWORD(STACK[0x280]) = STACK[0x49C];
  v57 = STACK[0x5C8];
  LODWORD(STACK[0x270]) = STACK[0x5C8];
  LODWORD(STACK[0x428]) = STACK[0x590];
  LODWORD(STACK[0x3C4]) = STACK[0x518];
  LODWORD(STACK[0x424]) = STACK[0x568];
  LODWORD(STACK[0x430]) = STACK[0x554];
  v58 = STACK[0x5E0];
  LODWORD(STACK[0x388]) = STACK[0x5E0];
  LODWORD(STACK[0x420]) = STACK[0x570];
  LODWORD(STACK[0x268]) = v54;
  v59 = STACK[0x5C0];
  LODWORD(STACK[0x278]) = STACK[0x5C0];
  LODWORD(STACK[0x400]) = STACK[0x5D0];
  LODWORD(STACK[0x42C]) = STACK[0x564];
  v60 = STACK[0x5E8];
  LODWORD(STACK[0x3E8]) = STACK[0x5E8];
  LODWORD(STACK[0x380]) = v56;
  LODWORD(STACK[0x418]) = STACK[0x584];
  LODWORD(STACK[0x384]) = v59;
  LODWORD(STACK[0x3E0]) = v55;
  LODWORD(STACK[0x480]) = a53;
  LODWORD(STACK[0x414]) = STACK[0x578];
  LODWORD(STACK[0x258]) = v58;
  LODWORD(STACK[0x250]) = v60;
  LODWORD(STACK[0x41C]) = STACK[0x558];
  LODWORD(STACK[0x374]) = v57;
  LODWORD(STACK[0x370]) = STACK[0x5F8];
  LODWORD(STACK[0x37C]) = STACK[0x5D8];
  LODWORD(STACK[0x378]) = STACK[0x510];
  LODWORD(STACK[0x36C]) = STACK[0x520];
  LODWORD(STACK[0x3D8]) = STACK[0x548];
  LODWORD(STACK[0x478]) = STACK[0x4F0];
  return v53();
}

uint64_t sub_1BAEC8350(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, __int16 a26, char a27, __int16 a28, char a29, __int16 a30, char a31, __int16 a32, char a33, __int16 a34, char a35, __int16 a36, char a37, __int16 a38, char a39, int a40, char a41, int a42, char a43, __int16 a44, char a45, __int16 a46, char a47, __int16 a48, char a49, __int16 a50, char a51)
{
  v55 = STACK[0x5E0] ^ a25;
  v56 = STACK[0x5F0] ^ a29;
  v57 = STACK[0x5C0] ^ a31;
  v58 = STACK[0x5D8] ^ a39;
  v59 = ((v54 + ((v51 - 122) & 0xAC) + 85) ^ (a45 - 41)) - ((2 * ((v54 + ((v51 - 122) & 0xAC) + 85) ^ (a45 - 41))) & 0xB4);
  v60 = ((LODWORD(STACK[0x470]) + 31) ^ (a42 - 96)) - ((2 * ((LODWORD(STACK[0x470]) + 31) ^ (a42 - 96))) & 0xE0) + 112;
  v61 = STACK[0x5E8] ^ a35;
  v63 = ((LODWORD(STACK[0x478]) + 5) ^ (a40 - 26)) - ((2 * ((LODWORD(STACK[0x478]) + 5) ^ (a40 - 26))) & 0x2E) - 105;
  v64 = ((LOBYTE(STACK[0x480]) + 1) ^ (a51 - 74)) - ((2 * ((LOBYTE(STACK[0x480]) + 1) ^ (a51 - 74))) & 0xC) + 6;
  v65 = STACK[0x5D0] ^ a41;
  v66 = STACK[0x5C8] ^ a27;
  v67 = STACK[0x490];
  *(v67 - 0x3C9A58F048D25695) = (v59 - 38) ^ 0xDA;
  *(v67 - 0x3C9A58F048D25691) = (((a1 - 123) ^ (a49 - 41)) - ((2 * ((a1 - 123) ^ (a49 - 41))) & 0xE0) + 112) ^ 0x70;
  *STACK[0x330] = a43 ^ a6 ^ 0x64;
  *(v67 - 0x3C9A58F048D25694) = v55;
  *(v67 - 0x3C9A58F048D2568FLL) = v56;
  *(v67 - 0x3C9A58F048D25693) = (((v53 + 17) ^ (a33 - 79)) - ((2 * ((v53 + 17) ^ (a33 - 79))) & 0x78) + 60) ^ 0x3C;
  *(v67 - 0x3C9A58F048D2568BLL) = v65;
  *(v67 - 0x3C9A58F048D25692) = v60 ^ 0x70;
  *(v67 - 0x3C9A58F048D25690) = v57;
  *(v67 - 0x3C9A58F048D25689) = v66;
  *(v67 - 0x3C9A58F048D2568CLL) = v64 ^ 6;
  *(v67 - 0x3C9A58F048D25687) = (((v52 - 127) ^ (a47 - 122)) - ((2 * ((v52 - 127) ^ (a47 - 122))) & 0xDD) + 110) ^ 0x6E;
  *(v67 - 0x3C9A58F048D25688) = a37 ^ LODWORD(STACK[0x4FC]) ^ 0x71;
  *(v67 - 0x3C9A58F048D2568ALL) = v58;
  *STACK[0x328] = v61;
  *(v67 - 0x3C9A58F048D2568DLL) = v63 ^ 0x97;
  v68 = LODWORD(STACK[0x354]) + 1972357983;
  v69 = (a19 < 0xCDE3A1FD) ^ (v68 < 0xCDE3A1FD);
  v70 = v68 < a19;
  if (v69)
  {
    v70 = a19 < 0xCDE3A1FD;
  }

  return (*(STACK[0x6D8] + 8 * (v51 ^ (248 * !v70))))();
}

uint64_t sub_1BAEC9330(__n128 a1)
{
  v2 = *(STACK[0x6D8] + 8 * v1);
  *&STACK[0x500] = a1;
  return v2();
}

uint64_t sub_1BAEC94C8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X5>, char a3@<W8>, int8x16_t a4@<Q2>)
{
  v15 = veorq_s8(v12, v9);
  v16 = vandq_s8(v15, v10);
  v17 = vsubq_s64(v15, vaddq_s64(v16, v16));
  v18 = veorq_s8(v11, v9);
  v19 = vaddq_s64(v17, v10);
  v20 = veorq_s8(vandq_s8(v18, v13), vandq_s8(v11, v14));
  _Q1 = 0uLL;
  __asm { AESD            V29.16B, V1.16B }

  v27 = vaddq_s64(vsubq_s64(v18, vaddq_s64(v20, v20)), *&STACK[0x670]);
  __asm { AESE            V29.16B, V1.16B }

  v29 = vmull_p64(((v19.i64[1] ^ v7) + v8 - (((v19.i64[1] ^ v7) << (a3 + 39)) & v6)) ^ v8, ((v27.i64[1] ^ a1) + a2 - 2 * ((v27.i64[1] ^ a1) & (a2 + 32) ^ v27.i8[8] & 0x20)) ^ a2);
  v30 = vandq_s8(v29, a4);
  _Q24 = veorq_s8(vaddq_s8(vsubq_s8(v29, vaddq_s8(v30, v30)), a4), a4);
  __asm
  {
    AESD            V28.16B, V24.16B
    AESE            V28.16B, V1.16B
  }

  return (*(STACK[0x6D8] + 8 * ((3203 * (v4 & 1)) ^ v5)))();
}

uint64_t sub_1BAEC9914(__n128 a1, __n128 a2)
{
  v3 = *(STACK[0x6D8] + 8 * (((LODWORD(STACK[0x488]) == ((v2 + 1413875162) & 0xFC ^ 0xE4)) * ((v2 + 2037687994) & 0x868B5E7B ^ 0x190)) ^ v2));
  LODWORD(STACK[0x48C]) = 111;
  LODWORD(STACK[0x488]) = 72;
  return v3(a1, a2, *&STACK[0x530]);
}

uint64_t sub_1BAEC9994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{
  v39 = 114 * (v38 ^ 0x60Du);
  v40 = *(STACK[0x6D8] + 8 * (((v39 - 612) * (a38 == 76)) ^ v38));
  LODWORD(STACK[0x4E8]) = 236;
  LODWORD(STACK[0x4E0]) = 217;
  LODWORD(STACK[0x4DC]) = 74;
  LODWORD(STACK[0x4EC]) = -881814635;
  LODWORD(STACK[0x4E4]) = -832653873;
  LODWORD(STACK[0x4D8]) = 56;
  LODWORD(STACK[0x4D4]) = 177;
  LODWORD(STACK[0x4D0]) = 122;
  LODWORD(STACK[0x4CC]) = 127;
  LODWORD(STACK[0x4C8]) = 39;
  LODWORD(STACK[0x4C0]) = 3;
  LODWORD(STACK[0x4C4]) = 1394355802;
  LODWORD(STACK[0x4BC]) = 254;
  LODWORD(STACK[0x4B8]) = 14;
  LODWORD(STACK[0x4B4]) = 38;
  LODWORD(STACK[0x4B0]) = 125;
  LODWORD(STACK[0x4AC]) = 55;
  LODWORD(STACK[0x48C]) = 111;
  LODWORD(STACK[0x4A8]) = 103985993;
  LODWORD(STACK[0x4A4]) = 54;
  LODWORD(STACK[0x488]) = 72;
  LODWORD(STACK[0x4A0]) = 66;
  return v40(v39, a2, a3, a4, a5, a6, LODWORD(STACK[0x4F0]), LODWORD(STACK[0x528]), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1BAEC9AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x490];
  *(v69 - 0x3C9A58F048D25696) = ((HIBYTE(v68) ^ 0xE3) - ((2 * (HIBYTE(v68) ^ 0xE3)) & 0xB4) - 38) ^ 0xDA;
  *(v69 - 0x3C9A58F048D25694) = BYTE13(v68) ^ 0x77;
  *(v69 - 0x3C9A58F048D25695) = ((BYTE14(v68) ^ ((v67 + 21) | 0x8C) ^ 0x73) - ((2 * (BYTE14(v68) ^ ((v67 + 21) | 0x8C) ^ 0x73)) & 0x60) - 80) ^ 0xB0;
  *(v69 - 0x3C9A58F048D25692) = ((BYTE11(v68) ^ 0x5E) - ((2 * (BYTE11(v68) ^ 0x5E)) & 0x9F) - 49) ^ 0xCF;
  *(v69 - 0x3C9A58F048D25693) = ((BYTE12(v68) ^ 0x21) + ((2 * BYTE12(v68)) & 0xF3 ^ 0xBD) - 6) ^ 0xF9;
  *(v69 - 0x3C9A58F048D25690) = BYTE9(v68) ^ 0x11;
  *(v69 - 0x3C9A58F048D25691) = ((BYTE10(v68) ^ 0x92) - ((2 * (BYTE10(v68) ^ 0x92)) & 0xEF) - 9) ^ 0xF7;
  *(v69 - 0x3C9A58F048D2568FLL) = ((BYTE8(v68) ^ 0xCE) - ((2 * (BYTE8(v68) ^ 0xCE)) & 0xBF) - 33) ^ 0xDF;
  *(v69 - 0x3C9A58F048D2568ELL) = ((BYTE7(v68) ^ 0x64) - ((2 * (BYTE7(v68) ^ 0x64)) & 0xE7) - 13) ^ 0xF3;
  *(v69 - 0x3C9A58F048D2568CLL) = ((BYTE5(v68) ^ 0x74) - ((2 * (BYTE5(v68) ^ 0x74)) & 0xD6) + 107) ^ 0x6B;
  *(v69 - 0x3C9A58F048D2568BLL) = ((BYTE4(v68) ^ 0x1A) - ((2 * (BYTE4(v68) ^ 0x1A)) & 0x5E) - 81) ^ 0xAF;
  *(v69 - 0x3C9A58F048D2568DLL) = BYTE6(v68) ^ 0xE8;
  *(v69 - 0x3C9A58F048D25689) = (BYTE2(v68) ^ 0xB0) + ((2 * BYTE2(v68)) ^ 0x9E) - 127;
  *(v69 - 0x3C9A58F048D2568ALL) = ((BYTE3(v68) ^ 0x18) - 2 * ((BYTE3(v68) ^ 0x18) & 0x1F ^ BYTE3(v68) & 3) + 28) ^ 0x1C;
  *(v69 - 0x3C9A58F048D25688) = (((BYTE1(v68) ^ 0x99) - 2 * ((BYTE1(v68) ^ 0x99) & 7 ^ BYTE1(v68) & 2) + 13) ^ 5) - 8;
  *(v69 - 0x3C9A58F048D25687) = ((v68 ^ 0xE7) - ((2 * (v68 ^ 0xE7)) & 0x99) + 76) ^ 0x4C;
  v70 = *(STACK[0x6D8] + 8 * v67);
  LODWORD(STACK[0x48C]) = 111;
  LODWORD(STACK[0x488]) = 72;
  LODWORD(STACK[0x4A0]) = STACK[0x470];
  LODWORD(STACK[0x4A4]) = STACK[0x468];
  LODWORD(STACK[0x4A8]) = STACK[0x460];
  LODWORD(STACK[0x4AC]) = STACK[0x458];
  LODWORD(STACK[0x4B0]) = STACK[0x450];
  LODWORD(STACK[0x4B4]) = STACK[0x448];
  LODWORD(STACK[0x4B8]) = STACK[0x440];
  LODWORD(STACK[0x4BC]) = STACK[0x43C];
  LODWORD(STACK[0x4C4]) = STACK[0x3D0];
  LODWORD(STACK[0x4C0]) = STACK[0x3C8];
  LODWORD(STACK[0x4C8]) = STACK[0x38C];
  LODWORD(STACK[0x4CC]) = STACK[0x338];
  LODWORD(STACK[0x4D0]) = STACK[0x330];
  LODWORD(STACK[0x4D4]) = STACK[0x328];
  LODWORD(STACK[0x4D8]) = STACK[0x320];
  LODWORD(STACK[0x4E4]) = STACK[0x204];
  LODWORD(STACK[0x4EC]) = STACK[0x200];
  LODWORD(STACK[0x4DC]) = a67;
  LODWORD(STACK[0x4E0]) = a66;
  LODWORD(STACK[0x4E8]) = a65;
  return v70();
}

uint64_t sub_1BAEC9EA0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v68 = (a1 - 724341634);
  *(&v69 + 1) = (v68 + v64 + 1425606618 - ((2 * (v64 + 1425606618)) & 0xDDCF5C4C) + 437534460) & 0xF8 ^ 0x20;
  *&v69 = (v68 + v64 - 0x5574E18FAB06F826 - ((2 * (v64 - 0x5574E18FAB06F826)) & 0xB1D9A0A7DDCF5C4CLL) + 0x58ECD0531A143EFCLL) ^ 0x58ECD053EEE7AE00;
  v70 = (((8 * (v64 - 38 - ((2 * (v64 - 38)) & (a1 - 74))) - 120) ^ 0x88) - ((2 * ((8 * (v64 - 38 - ((2 * (v64 - 38)) & (a1 - 74))) - 120) ^ 0x88)) & 0x10) + 14) & 0x38;
  v71 = ((2 * (v69 >> 8)) & 0xD1F5BDF07FBFDFBELL) + ((v69 >> 8) ^ 0xEFFADEF83FDFEFDFLL);
  v72 = v71 - ((2 * v71 + 0x511E1E813561B5ELL) & 0x47635036F8CBE9E6) + 0x663A990F861102A2;
  *(&v69 + 1) = (v71 - ((2 * v71 + 324410206) & 0xF8CBE9E6) - 2045705566) ^ 0xED;
  *&v69 = v72 ^ 0x3FF4F1E53E97B300;
  v73 = (v72 ^ 0xABEA8E8772C05F9CLL) + ((v69 >> 8) ^ 0x4E634B77FFD517F3) + ((2 * (v69 >> 8)) & 0x9CC696EFFFAA2FE6) - 0x4E634B77FFD517F3;
  v74 = v73 - ((2 * v73) & 0x7E88F81D82D71E68) - 0x40BB83F13E9470CCLL;
  *(&v69 + 1) = v72 ^ 0xBEA8E8772C05F9CLL;
  *&v69 = v72 ^ 0xBFFFFFFFFFFFFFFFLL;
  v75 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0x416270A3C57D57D2) - 0x5F4EC7AE1D415417;
  *(&v69 + 1) = v74 ^ 0xE8;
  *&v69 = v74 ^ 0x5E717CA159DB4F00;
  v76 = (v74 ^ v75 ^ 0xFEC044F0BB65E401) + ((v69 >> 8) ^ 0xDAAFFDFF7FFEB753) + ((2 * (v69 >> 8)) & 0xB55FFBFEFFFD6EA6) + 0x25500200800148ADLL;
  v77 = v76 - ((2 * v76) & 0x5A885CEA7EC6D7ELL) - 0x7D2BBD18AC09C941;
  *(&v69 + 1) = v74 ^ v75 ^ 0x1EC044F0BB65E401;
  *&v69 = v74 ^ ~v75;
  v78 = v77 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0x45068B1BBF753AE8) + 0x2283458DDFBA9D74);
  v79 = ((((v77 << 56) ^ 0x8D00000000000000) + 0x39827E20EC6B72CCLL - ((2 * ((v77 << 56) ^ 0x8D00000000000000)) & 0x7200000000000000)) ^ 0x39827E20EC6B72CCLL) + (v78 ^ 0xA4C72268BFF54EF9);
  v80 = ((v77 >> 8) ^ 0x864467E5604FD3) + (v79 ^ 0xFFFBFFE7F9BE3FDLL) + ((2 * v79) & 0x1FFF7FFCFF37C7FALL) - 0xFFFBFFE7F9BE3FDLL;
  v81 = v80 - ((2 * v80) & 0x843ACD670889BC1ALL) + 0x421D66B38444DE0DLL;
  *(&v69 + 1) = v78 ^ 0x4C72268BFF54EF9;
  *&v69 = v78 ^ 0xBFFFFFFFFFFFFFFFLL;
  v82 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0x8E114C055E523070) + 0x4708A602AF291838;
  *(&v69 + 1) = v81 ^ 0x8A;
  *&v69 = v81 ^ 0xBF011380AB3BD200;
  v83 = (v81 ^ v82 ^ 0xF809B5820412CAB2) + ((v69 >> 8) ^ 0xFB755DBF4BFFFF67) + ((2 * (v69 >> 8)) & 0xF6EABB7E97FFFECELL) + 0x48AA240B4000099;
  v84 = v83 - ((2 * v83) & 0x819E1CD868877770) + 0x40CF0E6C3443BBB8;
  *(&v69 + 1) = v81 ^ v82 ^ 0x1809B5820412CAB2;
  *&v69 = v81 ^ ~v82;
  v85 = v84 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0xB5C5F93BB52D4CC6) - 0x251D03622569599DLL);
  LOBYTE(v82) = ((v69 >> 61) - ((2 * (v69 >> 61)) & 0xC6) + 99) & 8;
  v86 = (((v85 ^ 0x9A2DF2F1EED51DDBLL) - 0x3EA44F6D6362770) ^ 0xFD7AFFF7369DE4F2) + ((2 * ((v85 ^ 0x9A2DF2F1EED51DDBLL) - 0x3EA44F6D6362770)) & 0xFAF5FFEE6D3BC9E4) + 0x2850008C9621B0FLL + ((((2 * v85) ^ 0x345BE5E3DDAA3BB6) - ((2 * ((2 * v85) ^ 0x345BE5E3DDAA3BB6)) & 0x4D6EE1E5BD9084D0) - 0x59488F0D2137BD97) & 0xF82B76125393B120 ^ 0x5FDC8FEDAD7FFFDFLL);
  v87 = ((2 * v86) & 0x87FDBFF755FF6BFELL) + (v86 ^ 0x43FEDFFBAAFFB5FFLL);
  v88 = ((v84 ^ 0xBCDAB5651D8A6328) >> v82) + 0x1C287BE14230D390 - ((2 * ((v84 ^ 0xBCDAB5651D8A6328) >> v82)) & 0x3850F7C28461A720);
  v89 = v87 - 0x43FEDFFBAAFFB5FFLL + ((((v84 << 56) ^ 0x2800000000000000) - ((2 * ((v84 << 56) ^ 0x2800000000000000)) & 0xDA00000000000000) - 0x1297BDE74C999565) ^ 0x24658FFB365728BALL ^ (((v88 ^ 0x1C287BE14230D390) >> (v82 ^ 8u)) - ((2 * ((v88 ^ 0x1C287BE14230D390) >> (v82 ^ 8u))) & 0x921B9BC70A628442) - 0x36F2321C7ACEBDDFLL));
  v90 = v89 - 0x68877FAC79359D64 + (~(2 * v89) | 0xD10EFF58F26B3AC9);
  *(&v69 + 1) = v87 + 0x1C01200455004A01;
  *&v69 = v87 - 0x43FEDFFBAAFFB5FFLL;
  v91 = v90 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0x95A662C526B4B7F4) - 0x352CCE9D6CA5A406);
  *(&v69 + 1) = v90 ^ 0x54;
  *&v69 = v90 ^ 0xDCFFE9017298AC00;
  v92 = (v91 ^ 0x162CD863E1C2F7AELL) + ((v69 >> 8) ^ 0xFFFFFEFCDDFF5EFELL) + ((2 * (v69 >> 8)) & 0xFFFFFDF9BBFEBDFCLL) + 0x1032200A102;
  *(&v69 + 1) = v91 ^ 0x162CD863E1C2F7AELL;
  *&v69 = v91;
  v93 = v92 - ((2 * v92) & 0x95F12FA84FEAA6DELL) + 0x4AF897D427F5536FLL;
  v94 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0x72FF31A7CD2AFEA8) + 0x397F98D3E6957F54;
  *(&v69 + 1) = v93 ^ 0xC9;
  *&v69 = v93 ^ 0x82F14947956FCF00;
  v95 = (v94 ^ 0xBB8ED19473FAB09DLL ^ v93) + ((v69 >> 8) ^ 0x98DC7CFF7DE575FFLL) + ((2 * (v69 >> 8)) & 0x31B8F9FEFBCAEBFELL) + 0x67238300821A8A01;
  v96 = ((v95 - ((2 * v95) & 0xE8F3642A1ED84848) + 0x7479B2150F6C2424) ^ 0x90A957AF2D126884) >> (v70 ^ 8u);
  v97 = v96 + 0x4340908BBA217E88 - ((2 * v96) & 0x868121177442FD10);
  v98 = v64 - 0x5574E18FAB06F81ELL - ((2 * (v64 - 0x5574E18FAB06F81ELL)) & 0xF49444E55763135ELL) + 0x7A4A2272ABB189AFLL;
  v99 = ((((v98 << 56) ^ 0xAF00000000000000) - (((v98 << 56) ^ 0xAF00000000000000) >> 58 << 59) + 0x7CBA0A720C16E3A0) & 0xF800000000000000 | (v98 >> 8)) ^ 0x787A4A2272ABB189;
  v100 = (v99 - 0x99BA71074EF7D7FLL - ((2 * v99) & 0xE0C8B1DF16210502)) ^ 0xF66458EF8B108281;
  v101 = v100 - ((2 * v100 + 0x65079FD89315FB1CLL) & 0xA6797C80172739B4) - 0x7A3F71D3AAE16598;
  *(&v69 + 1) = v101 ^ 0xC4;
  *&v69 = v101 ^ 0x4F79E7BE4961DB00;
  v102 = (v101 ^ 0xDB6798DC053637B5) + ((v69 >> 8) ^ 0x7FF7F7EF357DB4DFLL) + ((2 * (v69 >> 8)) & 0xFFEFEFDE6AFB69BELL) - 0x7FF7F7EF357DB4DFLL;
  v103 = v102 - ((2 * v102) & 0x99E197EDB9B0FB8ALL) + 0x4CF0CBF6DCD87DC5;
  *(&v69 + 1) = v101 ^ 0x1B6798DC053637B5;
  *&v69 = v101 ^ 0xC000000000000000;
  v104 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0xEF59EC5306FACFEALL) + 0x77ACF629837D67F5;
  *(&v69 + 1) = v103 ^ 0x19;
  *&v69 = v103 ^ 0xADC5CB594468BD00;
  v105 = v103 ^ v104;
  v106 = (v105 ^ 0xDA693D70C715DAECLL) + ((v69 >> 8) ^ 0x3FFDB75F5EAFEAFDLL) + ((2 * (v69 >> 8)) & 0x7FFB6EBEBD5FD5FALL) - 0x3FFDB75F5EAFEAFDLL;
  v107 = v106 - ((2 * v106) & 0x44EFC7BA4C3C68B0) + 0x2277E3DD261E3458;
  *(&v69 + 1) = v105 ^ 0x1A693D70C715DAECLL;
  *&v69 = v105 ^ 0xC000000000000000;
  v108 = v107 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0x1EE8B111F82B032CLL) - 0x708BA77703EA7E6ALL);
  v109 = (((v108 ^ 0xA9939E57E9B250FCLL) + ((v107 >> 8) ^ 0x26E7C6DF15A7D1)) ^ 0xDA9A0FFFF77E777BLL) + ((2 * ((v108 ^ 0xA9939E57E9B250FCLL) + ((v107 >> 8) ^ 0x26E7C6DF15A7D1))) & 0xB5341FFFEEFCEEF6) + ((((v107 << 56) ^ 0x6A00000000000000) + 0x341492D61A8839C9 - ((2 * ((v107 << 56) ^ 0x6A00000000000000)) & 0x6800000000000000)) ^ 0x341492D61A8839C9) + 0x2565F00008818885;
  v110 = v109 - ((2 * v109) & 0x20CE89712713CACCLL) + 0x106744B89389E566;
  *(&v69 + 1) = v108 ^ 0x9939E57E9B250FCLL;
  *&v69 = v108 ^ 0xBFFFFFFFFFFFFFFFLL;
  v111 = v110 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0x9EBBF5C579ACC268) - 0x30A2051D43299ECCLL);
  *(&v69 + 1) = v110 ^ 0xFFFFFFE1;
  *&v69 = v110 ^ 0xED7B318BBCF6E900;
  v112 = (v111 ^ 0x2226CB69002088D5) + ((v69 >> 8) ^ 0xFFDFEF3AB573CFCDLL) + ((2 * (v69 >> 8)) & 0xFFBFDE756AE79F9ALL) + 0x2010C54A8C3033;
  v113 = v112 - ((2 * v112) & 0x9FEDBE3D50B0BBDCLL) + 0x4FF6DF1EA8585DEELL;
  *(&v69 + 1) = v111 ^ 0x226CB69002088D5;
  *&v69 = v111 ^ 0x2000000000000000;
  v114 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0xEE769B1597221C1ALL) - 0x8C4B275346EF1F3;
  *(&v69 + 1) = v113 ^ 0x7E;
  *&v69 = v113 ^ 0xB3E3641781918500;
  v115 = v113 ^ v114;
  v116 = (v115 ^ 0x44D8299D4A008B73) + ((v69 >> 8) ^ 0x7E7ABBF1F2F5FFFFLL) + ((2 * (v69 >> 8)) & 0xFCF577E3E5EBFFFELL) - 0x7E7ABBF1F2F5FFFFLL;
  v117 = v116 - ((2 * v116) & 0x773F939B62EDDF2) - 0x7C46036324E89107;
  *(&v69 + 1) = v115 ^ 0x4D8299D4A008B73;
  *&v69 = v115 ^ 0x4000000000000000;
  v118 = v117 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0x8D990F62F24A051ELL) + 0x46CC87B17925028FLL);
  *(&v69 + 1) = v117 ^ 0x36;
  *&v69 = v117 ^ 0xC83E95CE2F45A000;
  v119 = (v118 ^ 0x8EF2127F5660A2B9) + ((v69 >> 8) ^ 0x38DFF6DFFD9F9BDBLL) + ((2 * (v69 >> 8)) & 0x71BFEDBFFB3F37B6) - 0x38DFF6DFFD9F9BDBLL;
  v120 = v119 - ((2 * v119) & 0x42946BC2633075D4) + 0x214A35E131983AEALL;
  *(&v69 + 1) = v118 ^ 0xEF2127F5660A2B9;
  *&v69 = v118 ^ 0x8000000000000000;
  v121 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0x48971D6A0F523A74) + 0x244B8EB507A91D3ALL;
  *(&v69 + 1) = v120 ^ 0x4C;
  *&v69 = v120 ^ 0xE943EB728302A600;
  v122 = (v121 ^ 0xCD0865C784ABBB76 ^ v120) + ((v69 >> 8) ^ 0xFBFBDD1EAE7F7FDDLL) + ((2 * (v69 >> 8)) & 0xF7F7BA3D5CFEFFBALL) + 0x40422E151808023;
  v123 = (v122 - ((2 * v122) & 0x29C9168A76766E9ELL) + 0x14E48B453B3B374FLL) ^ 0xF0346EFF19457BEFLL;
  v124 = (v123 >> (v70 ^ 8u)) + 0x38499A04FCF3C3F6 - ((2 * (v123 >> (v70 ^ 8u))) & 0x70933409F9E787ECLL);
  LOBYTE(v88) = v70 ^ 0x32;
  v125 = ((((v123 << (v70 ^ 0x32u)) - ((2 * (v123 << (v70 ^ 0x32u))) & 0x3136DCD711F24C8)) << 6) - 0x1D924651DC1B6700) ^ 0xE26DB9AE23E49900;
  v126 = ((v125 - 0x4EE819F23D876DC2 - ((2 * v125) & 0x622FCC1B84F12400)) ^ 0xB117E60DC278923ELL) + (v97 ^ 0x4340908BBA217E88);
  v127 = v64 - 0x5574E18FAB06F816 - ((2 * (v64 - 0x5574E18FAB06F816)) & 0x5D3C09279717A884) - 0x5161FB6C34742BBELL;
  v128 = ((((v127 << 56) ^ 0x4200000000000000) - ((2 * ((v127 << 56) ^ 0x4200000000000000)) & 0xAC00000000000000) + 0x5682F7A49FBC2B12) & 0xF800000000000000 | (v127 >> 8)) ^ 0x50AE9E0493CB8BD4;
  v129 = (v128 - 0x4B0F3B59ED014FEBLL - 2 * (v128 & 0x30F0C4A612FEB037 ^ (v127 >> 8) & 0x22)) ^ 0xB4F0C4A612FEB015;
  v130 = v129 - ((2 * v129 + 0x65079FD89315FB1CLL) & 0x5325FED1E6AEB6B2) - 0x23E930AAC31DA719;
  *(&v69 + 1) = (v129 - ((2 * v129 - 1827276004) & 0xE6AEB6B2) + 1021466855) ^ 0x47;
  *&v69 = v130 ^ 0xB5D7A696B1A51C00;
  v131 = v126 - ((2 * v126) & 0xC38B6912B1E5890) + 0x61C5B48958F2C48;
  v132 = (v130 ^ 0x21C9D9F4FDF2F036) + ((v69 >> 8) ^ 0x13F7B92EBEEF3B3DLL) + ((2 * (v69 >> 8)) & 0x27EF725D7DDE767ALL) - 0x13F7B92EBEEF3B3DLL;
  v133 = v132 - ((2 * v132) & 0x5E01C20FECBED4A8) - 0x50FF1EF809A095ACLL;
  *(&v69 + 1) = v130 ^ 0x1C9D9F4FDF2F036;
  *&v69 = v130 ^ 0x2000000000000000;
  v134 = v133 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0xC21420BA86227E50) - 0x1EF5EFA2BCEEC0D8);
  *(&v69 + 1) = v133 ^ 0x88888888;
  *&v69 = v133 ^ 0x4E35E1A86EEFAA00;
  v135 = (v134 ^ 0xAF3FF1F52DFE95A0) + ((v69 >> 8) ^ 0xFFDDFF78DF7E7DBFLL) + ((2 * (v69 >> 8)) & 0xFFBBFEF1BEFCFB7ELL) + 0x22008720818241;
  v136 = v135 - ((2 * v135) & 0xE57C15C9643BC9A0) - 0xD41F51B4DE21B30;
  *(&v69 + 1) = v134 ^ 0xF3FF1F52DFE95A0;
  *&v69 = v134 ^ 0xBFFFFFFFFFFFFFFFLL;
  v137 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0x50410A698563FF7ALL) + 0x28208534C2B1FFBDLL;
  *(&v69 + 1) = v136 ^ 0xE2;
  *&v69 = v136 ^ 0xF62E2FE681A40100;
  v138 = v136 ^ v137;
  v139 = (v138 ^ 0xDE0EAAD24315FE5FLL) + ((v69 >> 8) ^ 0xBCFB1F976FFD7EF7) + ((2 * (v69 >> 8)) & 0x79F63F2EDFFAFDEELL) + 0x4304E06890028109;
  v140 = v139 - ((2 * v139) & 0x65AA9314AA7E773ELL) + 0x32D5498A553F3B9FLL;
  *(&v69 + 1) = v138 ^ 0x1E0EAAD24315FE5FLL;
  *&v69 = v138 ^ 0xC000000000000000;
  v141 = v140 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0xDD17C6DA112BEAB0) - 0x11741C92F76A0AA8);
  *(&v69 + 1) = v141 ^ 0x5EAAE75DAACEC7;
  *&v69 = v141 ^ 0xDC00000000000000;
  v142 = (v69 >> 56) - ((2 * (v69 >> 56)) & 0x245F4864D774F972) + 0x122FA4326BBA7CB9;
  *(&v69 + 1) = v142 ^ 0x41;
  *&v69 = v142 ^ 0x94659EAF3866E300;
  v143 = (v69 >> 8) - ((2 * (v69 >> 8)) & 0x40904FF5392D7604) - 0x5FB7D805636944FELL;
  *(&v69 + 1) = v140 ^ 0x18;
  *&v69 = v140 ^ 0xCFC93CB97A403700;
  v144 = ((v69 >> 8) ^ 0x35BB7DC7BAFBEFFFLL) + ((2 * (v69 >> 8)) & 0x6B76FB8F75F7DFFELL) - 0x35BB7DC7BAFBEFFFLL + (v143 ^ 0xA5D218F32EBA6B1ALL);
  *(&v69 + 1) = v143 ^ 0x5D218F32EBA6B1ALL;
  *&v69 = v143 ^ 0xBFFFFFFFFFFFFFFFLL;
  v145 = v144 - ((2 * v144) & 0xA2239578CB20EE8) - 0x7AEEE35439A6F88CLL;
  v146 = v145 ^ ((v69 >> 61) - 0x58AE637AF22AEB44 + (~(2 * (v69 >> 61)) | 0xB15CC6F5E455D689));
  *(&v69 + 1) = v145 ^ 0xE4;
  *&v69 = v145 ^ 0x7904A7A2EF90DF00;
  v147 = (v146 ^ 0xDE553B27E245CB5FLL) + ((v69 >> 8) ^ 0x6FF3ED9E6F7FDBF3) + ((2 * (v69 >> 8)) & 0xDFE7DB3CDEFFB7E6) - 0x6FF3ED9E6F7FDBF3;
  v148 = v147 - ((2 * v147) & 0x89386711EB219E96) - 0x3B63CC770A6F30B5;
  *(&v69 + 1) = v146 ^ 0x1E553B27E245CB5FLL;
  *&v69 = v146 ^ 0xC000000000000000;
  v149 = v148 ^ ((v69 >> 61) - ((2 * (v69 >> 61)) & 0xF29E8C209CDA42C6) - 0x6B0B9EFB192DE9DLL);
  v150 = ((((v148 << 56) ^ 0x8400000000000000) + 0x201958EC51E0A157 - ((v148 << 57) & 0x4000000000000000)) ^ 0x201958EC51E0A157) + (v149 ^ 0x76541CCA4FAF20E7);
  v151 = ((v148 >> 8) ^ 0x8F1B5ADA01C201) + (v150 ^ 0x7F9FFED7BFB7F3DFLL) + ((2 * v150) & 0xFF3FFDAF7F6FE7BELL) - 0x7F9FFED7BFB7F3DFLL;
  v152 = v151 - ((2 * v151) & 0x7B3D88E0B1AE954ELL) + 0x3D9EC47058D74AA7;
  *(&v69 + 1) = v149 ^ 0x16541CCA4FAF20E7;
  *&v69 = v149 ^ 0x6000000000000000;
  v153 = (v69 >> 61) - ((2 * (v69 >> 61)) & 0x8CC1B44F1B3213F0) - 0x399F25D87266F608;
  *(&v69 + 1) = v152 ^ 1;
  *&v69 = v152 ^ 0xF5971AE3EA4DD600;
  v154 = (v153 ^ 0x33F7C0C467D4DFF9 ^ v152) + ((v69 >> 8) ^ 0x7FFFD77F9FABD7DFLL) + ((2 * (v69 >> 8)) & 0xFFFFAEFF3F57AFBELL) - 0x7FFFD77F9FABD7DFLL;
  LODWORD(STACK[0x564]) = HIDWORD(v131) ^ 5;
  v155 = ((v154 - ((2 * v154) & 0x7881C2F0F28A1CDCLL) - 0x43BF1E8786BAF192) ^ 0xBC9004C25B3B42CELL) << v88;
  LODWORD(STACK[0x590]) = (v131 >> 16) ^ 0x45;
  LODWORD(STACK[0x554]) = (v131 >> 8) ^ 0x1E;
  v156 = (((v155 - ((2 * v155) & 0x168B4EEC705D988)) << 6) + 0x2D169DD8E0BB3140) ^ 0x2D169DD8E0BB3140;
  v157 = ((v156 - 0x6EAD2D0171815147 - ((2 * v156) & 0x22A5A5FD1CFD5D00)) ^ 0x9152D2FE8E7EAEB9) + (v124 ^ 0x38499A04FCF3C3F6);
  v158 = v157 - ((2 * v157) & 0x64C93FA8725F7B40) - 0x4D9B602BC6D04260;
  LODWORD(STACK[0x558]) = (v131 >> 24) ^ 0x1A;
  LODWORD(STACK[0x584]) = (v158 >> 40) ^ 0x3A;
  LODWORD(STACK[0x568]) = v124 ^ 0x31;
  LODWORD(STACK[0x578]) = HIWORD(v131) ^ 0x69;
  LODWORD(STACK[0x570]) = HIDWORD(v158) ^ 0xFFFFFFC0;
  LODWORD(STACK[0x588]) = HIWORD(v158) ^ 8;
  LODWORD(STACK[0x56C]) = (v158 >> 16) ^ 0xFFFFFFE9;
  v159 = *(STACK[0x6D8] + 8 * ((62 * v63) ^ (a1 + 748)));
  LODWORD(STACK[0x368]) = v65;
  LODWORD(a61) = v62;
  LODWORD(STACK[0x364]) = v66;
  HIDWORD(a60) = v67;
  LODWORD(STACK[0x4F0]) = a7;
  LODWORD(a56) = v97 ^ 0xFFFFFFF9;
  HIDWORD(a55) = HIBYTE(v158) ^ 0x44;
  return v159(v64 - 0x5574E18FAB06F81ELL, (v158 >> 8) ^ 0x61, (v131 >> 40) ^ 0xFFFFFFA3, 0x33F7C0C467D4DFF9, (v158 >> 24) ^ 0xFFFFFF86, v97 ^ 0xFFFFFFF9, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1BAECB9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  LODWORD(STACK[0x528]) = a8;
  v22 = a21 < 0x36B7EADF;
  STACK[0x490] += 16;
  v23 = STACK[0x354];
  STACK[0x358] += 16;
  v24 = v23 - 563867101 + 271 * (v21 ^ 0x579);
  v25 = v22 ^ (v24 < 0x36B7EADF);
  v26 = v24 < a21;
  if (!v25)
  {
    v22 = v26;
  }

  return (*(STACK[0x6D8] + 8 * ((250 * v22) ^ v21)))(a1, a2, a3);
}

uint64_t sub_1BAECBA94@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  v10 = vdupq_n_s64(0x258B503E354880D7uLL);
  v10.i64[0] = ((v6 + 0x19CFF9FFE55286EELL) ^ 0x9FFFEF99E7F6BDDFLL) + 0x6000106618094221 + ((a5 ^ 0x3FFFDF33CFED79A1) & (2 * (v6 + 0x19CFF9FFE55286EELL)));
  v11 = vandq_s8(v10, xmmword_1BAF9DEB0);
  v12 = veorq_s8(vaddq_s64(vsubq_s64(v10, vaddq_s64(v11, v11)), xmmword_1BAF9DEB0), xmmword_1BAF9DEB0);
  v13 = *(STACK[0x6D8] + 8 * a5);
  LODWORD(STACK[0x480]) = 55;
  LODWORD(STACK[0x4FC]) = 2;
  v14 = vandq_s8(v12, xmmword_1BAF9DEC0);
  LODWORD(STACK[0x488]) = 73;
  LODWORD(STACK[0x438]) = STACK[0x56C];
  LODWORD(STACK[0x470]) = STACK[0x4A0];
  LODWORD(STACK[0x434]) = STACK[0x588];
  LODWORD(STACK[0x468]) = STACK[0x4A4];
  LODWORD(STACK[0x460]) = STACK[0x4A8];
  LODWORD(STACK[0x5B4]) = v7;
  LODWORD(STACK[0x458]) = STACK[0x4AC];
  LODWORD(STACK[0x450]) = STACK[0x4B0];
  LODWORD(STACK[0x448]) = STACK[0x4B4];
  LODWORD(STACK[0x440]) = STACK[0x4B8];
  LODWORD(STACK[0x43C]) = STACK[0x4BC];
  LODWORD(STACK[0x3D0]) = STACK[0x4C4];
  LODWORD(STACK[0x354]) = v5;
  LODWORD(STACK[0x3C8]) = STACK[0x4C0];
  LODWORD(STACK[0x38C]) = STACK[0x4C8];
  LODWORD(STACK[0x338]) = STACK[0x4CC];
  LODWORD(STACK[0x330]) = STACK[0x4D0];
  LODWORD(STACK[0x328]) = STACK[0x4D4];
  LODWORD(STACK[0x320]) = STACK[0x4D8];
  LODWORD(STACK[0x204]) = STACK[0x4E4];
  LODWORD(STACK[0x200]) = STACK[0x4EC];
  LODWORD(STACK[0x428]) = STACK[0x590];
  LODWORD(STACK[0x424]) = STACK[0x568];
  LODWORD(STACK[0x430]) = STACK[0x554];
  LODWORD(STACK[0x420]) = STACK[0x570];
  LODWORD(STACK[0x42C]) = STACK[0x564];
  LODWORD(STACK[0x5B0]) = a3;
  LODWORD(STACK[0x418]) = STACK[0x584];
  LODWORD(STACK[0x414]) = STACK[0x578];
  LODWORD(STACK[0x5A4]) = a2;
  LODWORD(STACK[0x5A8]) = a1;
  LODWORD(STACK[0x41C]) = STACK[0x558];
  LODWORD(STACK[0x5AC]) = a4;
  LODWORD(STACK[0x5A0]) = v8;
  return v13(veorq_s8(v9, veorq_s8(vaddq_s8(vsubq_s8(v12, vaddq_s8(v14, v14)), xmmword_1BAF9DEC0), xmmword_1BAF9DEC0)));
}

uint64_t sub_1BAECBC8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, uint64_t a58, uint64_t a59, int a60, int a61, int a62, int a63)
{
  v75 = HIDWORD(a38) + 99 * a42;
  LODWORD(STACK[0x4EC]) = v73 + 1151;
  HIDWORD(a38) = v75 + v73 + 1151 - 175;
  v76 = a56 + 53 * HIDWORD(a38);
  v77 = a52 - 125 * v76;
  v78 = a41 + 25 * v77;
  v79 = a55 - 107 * v78;
  v80 = a39 + 27 * (v79 + 29871725);
  v81 = a51 - 103 * v80;
  v82 = a40 - 33 * (v81 + 20178936);
  v83 = a57 + 111 * v82;
  v84 = a53 + 75 * v83;
  v85 = a58 - 49 * (v84 + 1929052246);
  LODWORD(STACK[0x5E8]) = v85;
  v86 = a73 - 75 * (v85 + 312375);
  LODWORD(STACK[0x5E0]) = v86;
  v87 = a71 + 97 * (v86 + 11025);
  LODWORD(STACK[0x5F8]) = v87;
  v88 = a72 - 105 * (v87 + 552900);
  LODWORD(STACK[0x5F0]) = v88;
  v89 = a54 + 81 * (v88 - 1242570);
  v90 = (LODWORD(STACK[0x368]) ^ 0xFFFFFF9B) - 81 * v89 - 41251154;
  v91 = v90 - ((2 * v90) & 0x36) - 101;
  LODWORD(STACK[0x368]) = v91;
  v158 = a62 + ((-86 * (v91 ^ 0xFFFFFF9B)) & 0xFFFFFFBF) + ((-43 * (v91 ^ 0xFFFFFF9B)) ^ 0x5F) - 95;
  v159 = (a70 ^ 0xFFFFFFB3) - 45 * v158 + 53 - ((2 * ((a70 ^ 0xFFFFFFB3) - 45 * v158 + 53)) & 0x66) - 77;
  v157 = a61 - 57 * (a68 - 53 * (a65 + ((58 * (v159 ^ 0xFFFFFFB3)) & 0xFFFFFFAC) + ((29 * (v159 ^ 0xFFFFFFB3)) ^ 0x56) - 86) + 91) + 96;
  v92 = (LODWORD(STACK[0x350]) ^ 0xFFFFFFF6) + 99 * v157 + 37 - ((2 * ((LODWORD(STACK[0x350]) ^ 0xFFFFFFF6) + 99 * v157 + 37)) & 0xFFFFFFEC) - 10;
  LODWORD(STACK[0x350]) = v92;
  v93 = (LODWORD(STACK[0x34C]) ^ 0x36) + ((-46 * (v92 ^ 0xFFFFFFF6)) & 0xFFFFFFAA) + ((-23 * (v92 ^ 0xFFFFFFF6)) ^ 0xFFFFFFD5) + 43;
  v94 = v93 - ((2 * v93) & 0x6C) + 54;
  LODWORD(STACK[0x34C]) = v94;
  v95 = (LODWORD(STACK[0x364]) ^ 0xFFFFFFBB) + 4 * ((5 * (v94 ^ 0x36u)) >> 1) + ((5 * (v94 ^ 0x36)) ^ 0x7E) - 126;
  v96 = v95 - ((2 * v95) & 0x76) - 69;
  LODWORD(STACK[0x364]) = v96;
  v97 = a66 + 33 * (a69 + ((-106 * (v96 ^ 0xFFFFFFBB)) & 0xFFFFFFFC) + ((75 * (v96 ^ 0xFFFFFFBB)) ^ 0xFFFFFFFE) + 2);
  LODWORD(STACK[0x5D8]) = v97;
  v98 = (LODWORD(STACK[0x344]) ^ 0x67) + 13 * v97 - 1108;
  v99 = v98 - ((2 * v98) & 0xFFFFFFCF) + 103;
  LODWORD(STACK[0x344]) = v99;
  v100 = (LODWORD(STACK[0x340]) ^ 0xFFFFFFD8) + ((-58 * (v99 ^ 0x67)) & 0xFFFFFFF3) + ((-29 * (v99 ^ 0x67)) ^ 0xFFFFFFF9) + 7;
  v101 = v100 - ((2 * v100) & 0xFFFFFFB0) - 40;
  LODWORD(STACK[0x340]) = v101;
  v102 = (LODWORD(STACK[0x33C]) ^ 0xFFFFFFC9) + ((110 * (v101 ^ 0xFFFFFFD8)) & 0xFFFFFFCF) + ((-73 * (v101 ^ 0xFFFFFFD8)) ^ 0xFFFFFFE7) + 25;
  v103 = v102 - ((2 * v102) & 0xFFFFFF92) - 55;
  v104 = LODWORD(STACK[0x348]) ^ 0xFFFFFF8E;
  LODWORD(STACK[0x33C]) = v103;
  v105 = v104 - 18 * (v103 ^ 0xFFFFFFC9) + ((-9 * (v103 ^ 0xFFFFFFC9)) ^ 0x7F) - 127;
  v106 = v105 - ((2 * v105) & 0x1C) - 114;
  LODWORD(STACK[0x348]) = v106;
  v107 = a42 - 63 * (a67 + 10 * (v106 ^ 0xFFFFFF8E) + ((5 * (v106 ^ 0xFFFFFF8E)) ^ 0x7F) - 127);
  v108 = veorq_s8(v74, *&STACK[0x530]);
  v109 = (v107 - 65) ^ (v108.u8[15] - ((2 * v108.u8[15]) & 0x40) - 96);
  LODWORD(STACK[0x5D0]) = (v109 ^ 0xFFFFFFA0) - ((2 * v109) & 0x36);
  v110 = (v108.u8[14] - ((2 * v108.u8[14]) & 0xFFF4) + 122) ^ (v75 + 58);
  LODWORD(STACK[0x5C8]) = (v110 ^ 0x45) + ((2 * (v110 & 0x3F)) ^ 0x74);
  v111 = (v76 - 4) ^ (((v108.u8[13] - 2 * (v108.i8[13] & 1) + 7) ^ 1) - 6);
  LODWORD(STACK[0x5C0]) = v111 - ((2 * v111) & 0x66);
  v112 = (v77 - 11036) ^ (v108.u8[12] + (~(2 * v108.u8[12]) | 0xFFFFFF87) - 67);
  LODWORD(STACK[0x5B8]) = (v112 ^ 0x53) + ((2 * v112) & 0xFFFFFFDF ^ 0x58);
  v113 = (v78 - 279088) ^ (v108.u8[11] - 2 * (v108.i8[11] & 7) - 121);
  LODWORD(STACK[0x548]) = (v113 ^ 0x74) + ((2 * v113) & 0xFFFFFFE7 ^ 6);
  v114 = (v79 + 29864352) ^ (v108.u8[10] - ((2 * v108.u8[10]) & 0xFFFB) - 3);
  v115 = (v114 ^ 0xFFFFFF86) + ((2 * v114) & 0xFFFFFFF7 ^ 0xFFFFFFF2);
  v116 = (v80 - 196008) ^ (v108.u8[9] - ((2 * v108.u8[9]) & 0x64) + 50);
  v117 = (v116 ^ 0x32) - 2 * ((v116 ^ 0x32) & 0x7E ^ v116 & 8);
  v118 = (v81 + 20187427) ^ (v108.u8[8] - ((2 * v108.u8[8]) & 0x12) + 9);
  v119 = (v118 ^ 9) - ((2 * v118) & 0x6C);
  v120 = (v108.u8[7] - ((2 * v108.u8[7]) & 0x4E) - 89) ^ (v82 - 284158) ^ 0xFFFFFFA7;
  v121 = v120 + (~(2 * v120) | 0xFFFFFF89);
  v122 = (v83 - 31545500) ^ (v108.u8[6] - 2 * (v108.i8[6] & 7) - 121);
  v123 = (v122 ^ 0xFFFFFFFC) + ((2 * v122) & 0xFFFFFFF7 ^ 6);
  v124 = (v84 + 1929045782) ^ (v108.u8[5] - 4 * (v108.u8[5] >> 1) - 2);
  v125 = (v124 ^ a2) + (~(2 * v124) & 0xFFFFFFD4);
  v126 = (v108.u8[3] - ((2 * v108.u8[3]) & 0x2A) + 21) ^ (LODWORD(STACK[0x5E0]) + 16735) ^ 0x15;
  v127 = (v108.u8[4] - ((2 * v108.u8[4]) & 0xFFDC) - 18) ^ (LODWORD(STACK[0x5E8]) + 312336) ^ 0xFFFFFFEE;
  v128 = v127 - ((2 * v127) & 0xFFFFFFCF);
  v129 = (v89 + 509106) ^ (v108.u8[0] - ((2 * v108.u8[0]) & 0x70) + 56);
  v130 = (v108.u8[1] - ((2 * v108.u8[1]) & 0x18) - 116) ^ (LODWORD(STACK[0x5F0]) - 1236378) ^ 0xFFFFFF8C;
  v131 = (v108.u8[2] - ((2 * v108.u8[2]) & 0x5A) - 83) ^ (LODWORD(STACK[0x5F8]) + 564818) ^ 0xFFFFFFAD;
  LODWORD(v156) = v76 + 59;
  LODWORD(v154) = v77 - 11020;
  LODWORD(v148) = v78 - 279228;
  HIDWORD(v155) = v79 + 29864464;
  LODWORD(v147) = v80 - 195999;
  HIDWORD(v153) = v81 + 20187544;
  HIDWORD(v147) = v82 - 284043;
  HIDWORD(v156) = v83 - 31545634;
  HIDWORD(v154) = v84 + 1929045836;
  LODWORD(a58) = LODWORD(STACK[0x5E8]) + 312128;
  v132 = (LODWORD(STACK[0x5F0]) - 1236286);
  LODWORD(v155) = v89 + 509232;
  HIDWORD(v148) = v107 + 6;
  v133 = (LODWORD(STACK[0x5D0]) - 101);
  v134 = (LODWORD(STACK[0x5C8]) - 22);
  v135 = (LODWORD(STACK[0x5C0]) - 77);
  v136 = (LODWORD(STACK[0x5B8]) + 96);
  v137 = LODWORD(STACK[0x548]) + 109;
  v138 = v115 - 82;
  v139 = (v117 - 10);
  v140 = (v119 + 54);
  v141 = v121 - 68;
  v142 = v126 + (~(2 * v126) | 0x4Fu) - 39;
  v143 = v128 + 103;
  v144 = v131 - ((2 * v131) & 0xFFFFFF92) - 55;
  v145 = *(STACK[0x6D8] + 8 * v73);
  LODWORD(STACK[0x48C]) = 112;
  LODWORD(STACK[0x49C]) = v136;
  STACK[0x5B8] = v130 - ((2 * v130) & 0x1C) - 114;
  HIDWORD(v149) = v130 - ((2 * v130) & 0x1C) - 114;
  STACK[0x5C0] = v139;
  STACK[0x5C8] = v144;
  LODWORD(STACK[0x520]) = v138;
  LODWORD(v150) = v115 - 82;
  HIDWORD(v151) = (v129 ^ 0x47) + ((2 * v129) ^ 0x70) - 5;
  LODWORD(STACK[0x548]) = HIDWORD(v151);
  STACK[0x5F0] = v140;
  LODWORD(v152) = v135;
  STACK[0x5E0] = v135;
  LODWORD(STACK[0x518]) = v134;
  LODWORD(v151) = v141;
  STACK[0x5E8] = v141;
  LODWORD(v153) = v137;
  LODWORD(STACK[0x528]) = v137;
  STACK[0x5D8] = v142;
  LODWORD(STACK[0x510]) = v125 + 96;
  HIDWORD(v152) = v125 + 96;
  STACK[0x5F8] = v133;
  LODWORD(v149) = v123 - 97;
  LODWORD(STACK[0x478]) = v123 - 97;
  HIDWORD(v150) = v143;
  STACK[0x5D0] = v143;
  return v145(v135, v133, v132, v139, v125, v136, v138, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, v147, v148, v149, __PAIR64__(v144, v140), __PAIR64__(v134, v142), v150, v151, __PAIR64__(v133, v139), v152, v153, v154, v155, v156, a58);
}

uint64_t sub_1BAECCD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (LODWORD(STACK[0x59C]) == (v5 - 54))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return (*(STACK[0x6D8] + 8 * ((v6 * (v5 ^ 0x859)) ^ v5)))(a1, a2, a3, a4, 4);
}

void sub_1BAECCDA4(uint64_t a1)
{
  v1 = *(a1 + 8) + 385730383 * ((a1 & 0xFD420E3F | ~(a1 | 0xFD420E3F)) ^ 0x7B2C9A11);
  v2 = *(&off_1E7F1D8C0 + (v1 ^ 0x1EA));
  v3 = *(v2 + 8 * ((106 * ((*(v2 + 8 * (v1 + 2227)))(*(&off_1E7F1D8C0 + v1 - 387) - 4, 0, 0) != 0)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1BAECCE54()
{
  (*(v2 + 8 * (v1 + 2302)))(v0, *(v3 + 8 * (v1 ^ 0x1E3)) - 4);
  v4 = (*(v2 + 8 * (v1 ^ 0xB0B)))(v0);
  return (*(v2 + 8 * v1))(v4);
}

void sub_1BAECCEB4(uint64_t a1)
{
  v1 = *(a1 + 40) + 1440463559 * (((a1 | 0x83444DFA) - a1 + (a1 & 0x7CBBB205)) ^ 0xE05BFB47);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1BAECCFD0(uint64_t a1, uint64_t a2, int a3)
{
  LOBYTE(STACK[0xA40]) = *v3;
  LOBYTE(STACK[0xA41]) = v3[1];
  LOBYTE(STACK[0xA42]) = v3[2];
  LOBYTE(STACK[0xA43]) = v3[3];
  LOBYTE(STACK[0xA44]) = v3[4];
  LOBYTE(STACK[0xA45]) = v3[5];
  LOBYTE(STACK[0xA46]) = v3[6];
  LOBYTE(STACK[0xA47]) = v3[7];
  LOBYTE(STACK[0xA48]) = v3[8];
  LOBYTE(STACK[0xA49]) = v3[9];
  LOBYTE(STACK[0xA4A]) = v3[10];
  LOBYTE(STACK[0xA4B]) = v3[11];
  LOBYTE(STACK[0xA4C]) = v3[12];
  LOBYTE(STACK[0xA4D]) = v3[13];
  LOBYTE(STACK[0xA4E]) = v3[14];
  LOBYTE(STACK[0xA4F]) = v3[15];
  STACK[0xA30] = *v3;
  STACK[0xA38] = *(v3 + 1);
  return (*(STACK[0x828] + 8 * a3))(a1);
}

uint64_t sub_1BAECD090()
{
  if (v0)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0x828] + 8 * ((((v4 ^ v2) & 1) * ((v2 - 443) ^ 0x624)) ^ v2)))();
}

uint64_t sub_1BAECD0C8()
{
  v3 = (v1 ^ v0) - ((2 * (v1 ^ v0) + 1162492882) & 0xD7ACE902) - 1904504214;
  v4 = v2 ^ 0xF0C;
  v6 = v3 == -338267007 || (v3 & 0xF) != (((v4 - 705) | 2) ^ 0x62B);
  return (*(STACK[0x828] + 8 * ((v6 * (((v4 - 578451182) & 0x227A6FEF) - 10)) ^ v4)))();
}

uint64_t sub_1BAECD15C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if (v3)
  {
    v4 = v2 == a2;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0x828] + 8 * (((a1 ^ 0x7C1 ^ (((a1 - 1820311419) | 0x4000188) + 1753203109)) * v5) ^ a1)))();
}

uint64_t sub_1BAECD1B8()
{
  STACK[0x568] = v0 + 0x232B1D46A457C4D9;
  *&STACK[0x730] = xmmword_1BAF9DF90;
  *&STACK[0x3B0] = xmmword_1BAF9DFA0;
  *&STACK[0x350] = xmmword_1BAF9DFB0;
  *&STACK[0x800] = xmmword_1BAF9DFC0;
  *&STACK[0x7F0] = xmmword_1BAF9DFD0;
  *&STACK[0x7E0] = xmmword_1BAF9DFE0;
  *&STACK[0x7D0] = xmmword_1BAF9DFF0;
  *&STACK[0x3A0] = xmmword_1BAF9E000;
  *&STACK[0x390] = xmmword_1BAF9E010;
  *&STACK[0x7C0] = xmmword_1BAF9E020;
  *&STACK[0x7B0] = xmmword_1BAF9E030;
  *&STACK[0x380] = xmmword_1BAF9E160;
  *&STACK[0x370] = xmmword_1BAF9E170;
  *&STACK[0x7A0] = xmmword_1BAF9E180;
  *&STACK[0x360] = xmmword_1BAF9E190;
  *&STACK[0x790] = xmmword_1BAF9E1A0;
  *&STACK[0x340] = xmmword_1BAF9E1B0;
  *&STACK[0x780] = xmmword_1BAF9E1C0;
  *&STACK[0x330] = xmmword_1BAF9E1D0;
  *&STACK[0x770] = xmmword_1BAF9E1E0;
  *&STACK[0x320] = xmmword_1BAF9E1F0;
  *&STACK[0x760] = xmmword_1BAF9E200;
  *&STACK[0x750] = xmmword_1BAF9E220;
  *&STACK[0x740] = xmmword_1BAF9E230;
  *&STACK[0x720] = xmmword_1BAF9E240;
  *&STACK[0x310] = xmmword_1BAF9E250;
  STACK[0x810] = *(STACK[0x828] + 8 * ((2484 * (v2 == 3667512)) ^ (v1 + v2 + 462)));
  STACK[0x520] = &STACK[0x930];
  STACK[0x5F0] = 3006909345;
  STACK[0x5C8] = 3006909345;
  *&STACK[0x300] = xmmword_1BAF9E040;
  *&STACK[0x2F0] = xmmword_1BAF9E150;
  *&STACK[0x2E0] = xmmword_1BAF9E050;
  *&STACK[0x2D0] = xmmword_1BAF9E060;
  *&STACK[0x700] = xmmword_1BAF9E070;
  *&STACK[0x2C0] = xmmword_1BAF9E080;
  *&STACK[0x2B0] = xmmword_1BAF9E090;
  *&STACK[0x2A0] = xmmword_1BAF9E0A0;
  *&STACK[0x6F0] = xmmword_1BAF9E0B0;
  *&STACK[0x6E0] = xmmword_1BAF9DE80;
  *&STACK[0x6D0] = xmmword_1BAF9E0C0;
  *&STACK[0x6C0] = xmmword_1BAF9E0D0;
  *&STACK[0x6B0] = xmmword_1BAF9E140;
  *&STACK[0x6A0] = xmmword_1BAF9E0E0;
  *&STACK[0x690] = xmmword_1BAF9E0F0;
  *&STACK[0x290] = xmmword_1BAF9E100;
  *&STACK[0x280] = xmmword_1BAF9E110;
  *&STACK[0x270] = xmmword_1BAF9E120;
  *&STACK[0x260] = xmmword_1BAF9E130;
  STACK[0x620] = &xmmword_1BAF9E000;
  STACK[0x5C0] = 1078097378;
  STACK[0x5F8] = 1078097378;
  STACK[0x5B8] = 1078097378;
  *&STACK[0x3D0] = xmmword_1BAF9DF00;
  return (STACK[0x810])(0);
}

uint64_t sub_1BAECD984(char a1, int a2, char a3, unsigned __int8 a4, uint64_t a5, char a6, uint64_t a7, unsigned __int8 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, __int16 a59, char a60, __int16 a61, char a62, __int16 a63)
{
  LODWORD(STACK[0x570]) = v89;
  LODWORD(STACK[0x598]) = a2;
  LODWORD(STACK[0x5A8]) = v77;
  v90 = v78 ^ 0x11 ^ *(v85 - 0x61D6899A4B5379D7);
  v91 = v90 + 881795817 - ((2 * v90) & 0x1D2);
  LODWORD(STACK[0x670]) = v91;
  v92 = *(&off_1E7F1D8C0 + a2 - 2107) - 12;
  LOBYTE(v90) = *&v92[8 * (v91 ^ 0x348F236C)] ^ a60 ^ *(v85 - 0x61D6899A4B5379D6);
  LODWORD(STACK[0x44C]) = (a2 - 1936) | 0x30;
  v93 = ((((a2 + 112) | 0x30) ^ 0x65 ^ v90) + ((2 * (v90 & 0x3F)) ^ 0x54) + 65);
  STACK[0x438] = 2 * v93;
  STACK[0x440] = v93;
  v94 = (*(v85 - 0x61D6899A4B5379D5) - 1025953767 - ((2 * *(v85 - 0x61D6899A4B5379D5)) & 0xFF8F) + 430) ^ (*&v92[8 * ((v93 - 0x3D5389D1F7FEFF5BLL - ((2 * v93) & 0x40) + 123) ^ 0xC2AC762E080100A5)] ^ v86);
  LODWORD(STACK[0x618]) = v94;
  LOBYTE(v90) = *&v92[8 * (v94 ^ 0xC2D93019)] ^ v79 ^ *(v85 - 0x61D6899A4B5379D4);
  v95 = ((v90 ^ 0x99) + ((2 * v90) & 0xF7 ^ 0xC4) + 5);
  STACK[0x450] = 2 * v95;
  STACK[0x458] = v95;
  v96 = v88 ^ 0xA7 ^ *(v85 - 0x61D6899A4B5379D3);
  v97 = (v96 + 1682346181 - ((2 * v96) & 0x18A)) ^ *&v92[8 * ((v95 + 0x26F2DAFFC5B3410 - ((2 * v95) & 0x20)) ^ 0x26F2DAFFC5B3595)];
  LODWORD(STACK[0x710]) = v97;
  LODWORD(v93) = (*(v85 - 0x61D6899A4B5379D2) - 504896328 - ((2 * *(v85 - 0x61D6899A4B5379D2)) & 0x170)) ^ (*&v92[8 * (v97 ^ 0x644691A4)] ^ v84);
  LODWORD(STACK[0x810]) = v93;
  v98 = v83 ^ *(v85 - 0x61D6899A4B5379D1);
  v99 = ((v98 ^ 0x94) - ((2 * v98) & 0xD4) - 1761585558) ^ *&v92[8 * (v93 ^ 0xE1E7E500)];
  v100 = ((2 * v99) & 0xE008E7E ^ 0xE008E46) + (v99 ^ 0x58B930DC);
  v101 = (*(v85 - 0x61D6899A4B5379D0) - 148762060 + (~(2 * *(v85 - 0x61D6899A4B5379D0)) | 0xFFFFFF13) + 67) ^ (*&v92[8 * v100 + 0x18234C608 + 8 * ((v100 + (v99 ^ 0x68FFA8F4) - ((2 * (v100 + (v99 ^ 0x68FFA8F4)) + 1619865988) & 0x91042952) - 121066133) ^ 0x377DEB59)] ^ v80);
  LODWORD(STACK[0x600]) = v101;
  v102 = (*(v85 - 0x61D6899A4B5379CFLL) + 1696320664 - ((2 * *(v85 - 0x61D6899A4B5379CFLL)) & 0x13A) + 5) ^ (*&v92[8 * (v101 ^ 0xF72213B1)] ^ v82);
  LODWORD(STACK[0x5E0]) = v102;
  v103 = v81 ^ 0x47 ^ *(v85 - 0x61D6899A4B5379CELL);
  v104 = (v103 + 1574015537 - ((2 * v103) & 0xA0) + 287) ^ *&v92[8 * (v102 ^ 0x651BCD1D)];
  LODWORD(STACK[0x5A0]) = v104;
  v105 = (*(v85 - 0x61D6899A4B5379CDLL) - 23356693 - ((2 * *(v85 - 0x61D6899A4B5379CDLL)) & 0x1F4) + 271) ^ (*&v92[8 * (v104 ^ 0x5DD19231)] ^ a3);
  LODWORD(v93) = (*(v85 - 0x61D6899A4B5379CCLL) + 1197191301 - ((2 * *(v85 - 0x61D6899A4B5379CCLL)) & 0x128) + 15) ^ (*&v92[8 * (v105 ^ 0xFE9B9AEB)] ^ a1);
  v106 = a8 ^ *(v85 - 0x61D6899A4B5379CBLL);
  LODWORD(v95) = ((v106 ^ 0x86) - 1687518711 - ((2 * v106) & 0x12)) ^ *&v92[8 * (v93 ^ 0x475BB100)];
  LODWORD(STACK[0x684]) = v95;
  v107 = a4 ^ 0x5B ^ *(v85 - 0x61D6899A4B5379CALL);
  LODWORD(v95) = (v107 + 38474290 - ((2 * v107) & 0xA6) + 289) ^ *&v92[8 * (v95 ^ 0x9B6A8368)];
  v108 = v76 ^ 0xD4 ^ *(v85 - 0x61D6899A4B5379C9);
  v109 = (v108 + 685841540 - ((2 * v108) & 0x108)) ^ *&v92[8 * (v95 ^ 0x24B1232)];
  LOBYTE(v108) = *&v92[8 * (v109 ^ 0x28E11DE5)] ^ a58 ^ 9;
  LOBYTE(v108) = ((v108 | *(v85 - 0x61D6899A4B5379C8)) - ((2 * (v108 | *(v85 - 0x61D6899A4B5379C8))) & 8) + 4) ^ v108 & *(v85 - 0x61D6899A4B5379C8);
  v110 = ((v108 ^ 0x97) + ((2 * v108) & 0x26) + 109);
  STACK[0x250] = 2 * v110;
  STACK[0x258] = v110;
  v111 = (*&v92[8 * ((v110 - 0x160146564D29ADF0 - ((2 * v110) & 0x12A) + 389) ^ 0xE9FEB9A9B2D65210)] ^ a62) ^ 3u;
  STACK[0x468] = 2 * v111;
  STACK[0x478] = v111;
  v112 = (*&v92[8 * ((v111 - 0x3B0DF4550A831382 - ((2 * v111) & 0xFC)) ^ 0xC4F20BAAF57CEDFBLL)] ^ a64) ^ 0xF1u;
  STACK[0x460] = 2 * v112;
  v113 = (*&v92[8 * ((v112 + 0x40B918B18A8D2629 - ((2 * v112) & 0x158) + 387) ^ 0x40B918B18A8D2629)] ^ a65) ^ 0x8Fu;
  STACK[0x470] = 2 * v113;
  STACK[0x490] = v113;
  v114 = (*&v92[8 * ((v113 + 0xDD3501FC9E2F051 - ((2 * v113) & 0x1A8) + 387) ^ 0xDD3501FC9E2F051)] ^ a6) ^ 0x4Bu;
  STACK[0x498] = 2 * v114;
  STACK[0x4A0] = v114;
  v115 = (*&v92[8 * ((v114 + 0x3EF768208320EAC7 - ((2 * v114) & 0xFFFFFFFFFFFFFF8FLL)) ^ 0x3EF768208320EB42)] ^ v87) ^ 0x20u;
  STACK[0x480] = 2 * v115;
  STACK[0x488] = v115;
  v116 = (*&v92[8 * ((v115 - 0x637E806189384FBCLL - ((2 * v115) & 0xFFFFFFFFFFFFFF83) + 381) ^ 0x9C817F9E76C7B044)] ^ a66) ^ 0x73u;
  STACK[0x4C0] = 2 * v116;
  STACK[0x4D8] = v116;
  v117 = (*&v92[8 * ((v116 + 0x22A0B35A710382BLL - ((2 * v116) & 0x15C) + 387) ^ 0x22A0B35A710382BLL)] ^ a67) ^ 6u;
  STACK[0x4B8] = 2 * v117;
  STACK[0x4D0] = v117;
  v118 = (*&v92[8 * ((v117 + 0x26281E6FF3915C11 - ((2 * v117) & 0x128) + 387) ^ 0x26281E6FF3915C11)] ^ a68) ^ 0xFDu;
  STACK[0x4C8] = 2 * v118;
  STACK[0x4E0] = v118;
  v119 = (*&v92[8 * ((v118 - 0x4848858CADA061A4 + (~(2 * v118) | 0x1FFFFFFFFFFFFF49)) ^ 0xB7B77A73525F9FDELL)] ^ a69) ^ 0xEu;
  STACK[0x4F0] = 2 * v119;
  STACK[0x500] = v119;
  v120 = (*&v92[8 * ((v119 + 0xDEE3ED975960645 - ((2 * v119) & 0x8A)) ^ 0xDEE3ED9759607C0)] ^ a70) ^ 0x88u;
  STACK[0x4A8] = 2 * v120;
  STACK[0x4B0] = v120;
  v121 = (*&v92[8 * ((v120 - 0x2B1D0A281C63F93DLL - ((2 * v120) & 0xFFFFFFFFFFFFFF87)) ^ 0xD4E2F5D7E39C0746)] ^ a71) ^ 0xBCu;
  STACK[0x508] = 2 * v121;
  STACK[0x518] = v121;
  v122 = (*&v92[8 * ((v121 - 0x4B5A55D5858FDB73 - ((2 * v121) & 0x11A)) ^ 0xB4A5AA2A7A702508)] ^ a72) ^ 0x56u;
  STACK[0x528] = 2 * v122;
  STACK[0x530] = v122;
  v123 = (*&v92[8 * ((v122 + 0x2A33E30C7E68F69FLL - ((2 * v122) & 0xFFFFFFFFFFFFFF3FLL)) ^ 0x2A33E30C7E68F71ALL)] ^ a73) ^ 0xECu;
  STACK[0x4E8] = 2 * v123;
  STACK[0x4F8] = v123;
  v124 = (*&v92[8 * ((v123 + 0x338D05DA8F7AB6E1 - ((2 * v123) & 0xFFFFFFFFFFFFFFC3)) ^ 0x338D05DA8F7AB764)] ^ a74) ^ 0xC8u;
  STACK[0x538] = 2 * v124;
  STACK[0x540] = v124;
  v125 = (*&v92[8 * ((v124 + 0x578015D9387DBCB5 - ((2 * v124) & 0x60) + 123) ^ 0x578015D9387DBCB5)] ^ a75) ^ 0xC6u;
  STACK[0x548] = 2 * v125;
  STACK[0x550] = v125;
  v126 = (*&v92[8 * ((v125 - 0x2BB022501321C388 - ((2 * v125) & 0xF0)) ^ 0xD44FDDAFECDE3DFDLL)] ^ a76) ^ 0xFBu;
  STACK[0x558] = 2 * v126;
  STACK[0x560] = v126;
  STACK[0x3E8] = v92;
  v127 = *(STACK[0x828] + 8 * (((((STACK[0x570] & 1) == 0) << 6) & 0x7F | (((STACK[0x570] & 1) == 0) << 7)) ^ LODWORD(STACK[0x598])));
  LODWORD(STACK[0x670]) = v99;
  LODWORD(STACK[0x434]) = v95;
  LODWORD(STACK[0x570]) = v109;
  return v127(v93 ^ 0x76AFF70, v105, v105 ^ 0x2BF87C1E, v95 ^ 0xDEBC24EC);
}

uint64_t sub_1BAECE58C@<X0>(unsigned int a1@<W8>, int8x16_t a2@<Q1>, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int8 *a15, unsigned __int8 *a16, unsigned __int8 *a17, unsigned __int8 *a18, unsigned __int8 *a19, _BYTE *a20, unsigned __int8 *a21, unsigned __int8 *a22, unsigned __int8 *a23, unsigned __int8 *a24)
{
  v27 = (((STACK[0x478] - (STACK[0x468] & 0x82) + 103) << (((v24 + 28) & 0xAFu) - 115)) - 0x2600000000000000) ^ 0x4100000000000000;
  v28 = v27 - ((2 * v27) & 0xD400000000000000);
  v29 = 0xFFFFFFFF00000000;
  if (a1 >= 0x76FA5FA3)
  {
    v29 = 0;
  }

  v30 = v25 + 1996119971 + v29 - a1;
  v31 = (((v26 - (STACK[0x460] & 0x120) + 40393) << 48) - 0x39000000000000) ^ 0x9D90000000000000;
  v32 = (v28 + 0x6A045D9E50D3E970) ^ 0x6A045D9E50D3E970 | (v31 - ((2 * v31) & 0x2922000000000000) - 0x2B6E8BA8BE8DD5B2) ^ 0xD491745741722A4ELL;
  v33 = (((STACK[0x490] - (STACK[0x470] & 0x78) + 12668793) << 40) - 0x3D0000000000) ^ 0xC14F3C0000000000;
  v34 = (v32 - ((2 * v32) & 0x9CE01007119901BALL) - 0x318FF7FC77337F23) ^ 0xCE70080388CC80DDLL | (v33 - ((2 * v33) & 0x7B8A4A0000000000) - 0x23ADADDAC0C2029) ^ 0xFDC5252253F3DFD7;
  v35 = (((STACK[0x488] - (STACK[0x480] & 0x10A)) << 24) + 0x7733EC2085000000) ^ 0x7733EC2085000000;
  v36 = (((STACK[0x4A0] - (STACK[0x498] & 0x48) - 446560685) << 32) - 0x2F00000000) ^ 0xE562062400000000;
  v37 = (v34 - ((2 * v34) & 0x85F03077F9986146) + 0x42F8183BFCCC30A3) ^ 0x42F8183BFCCC30A3 | (v36 - ((2 * v36) & 0x3C4DEB1800000000) + 0x5E26F58C6255AAA1) ^ 0x5E26F58C6255AAA1;
  v38 = (v37 - ((2 * v37) & 0x30270DB32EB192C0) + 0x181386D99758C960) ^ 0x181386D99758C960 | (v35 - ((2 * v35) & 0x35B35198D2000000) + 0x5AD9A8CC695CAE8ELL) ^ 0x5AD9A8CC695CAE8ELL;
  v39 = (((STACK[0x4D0] - (STACK[0x4B8] & 0xDA)) << 8) + 0x7B36D3608D5B6D00) ^ 0x7B36D3608D5B6D00;
  v40 = (((STACK[0x4D8] - (STACK[0x4C0] & 0x182)) << 16) - 0xE7589F8F33F0000) ^ 0xF18A76070CC10000;
  v41 = (v38 - ((2 * v38) & 0x694950BA6F3C1E4ALL) - 0x4B5B57A2C861F0DBLL) ^ 0xB4A4A85D379E0F25 | (v40 - ((2 * v40) & 0x2A9B507D6FD40000) - 0x2AB257C14815441FLL) ^ 0xD54DA83EB7EABBE1;
  v42 = (v39 - ((2 * v39) & 0x42BF3330EF094000) - 0x1EA06667887B5F92) ^ (v41 - ((2 * v41) & 0xEECA24508BDDE3E2) + 0x7765122845EEF1F1) ^ (STACK[0x4E0] - (STACK[0x4C8] & 0x98) - 0x7662F5AAC7D17FB4);
  v43 = (((STACK[0x4B0] - (STACK[0x4A8] & 0xF8) + 6799) << 48) - 0x13000000000000) ^ 0x1A7C000000000000;
  v44 = (((STACK[0x500] - (STACK[0x4F0] & 0x3C) + 65) << 56) - 0x2300000000000000) ^ 0x1E00000000000000;
  v45 = (v43 - ((2 * v43) & 0x31D8000000000000) - 0x2713499FC96EC0AALL) ^ 0xD8ECB66036913F56 | (v44 - ((2 * v44) & 0x6800000000000000) + 0x34106CF73B268D2ALL) ^ 0x34106CF73B268D2ALL;
  v46 = (((STACK[0x4F8] - (STACK[0x4E8] & 0x1F6)) << 24) + 0x8BE1A1DFB000000) ^ 0x8BE1A1DFB000000;
  v47 = (((STACK[0x518] - (STACK[0x508] & 0x122) + 14547114) << 40) - 0x190000000000) ^ 0xDDF8910000000000;
  v48 = (v45 - ((2 * v45) & 0x35868945418D730) - 0x7E53CBB5D5F39468) ^ 0x81AC344A2A0C6B98 | (v47 - ((2 * v47) & 0x7D8B040000000000) + 0x7EC582E39FF8C518) ^ 0x7EC582E39FF8C518;
  v49 = (((STACK[0x530] - (STACK[0x528] & 0x4C) + 549977137) << 32) - 0xB00000000) ^ 0x20C7FC2600000000;
  v50 = (v48 - ((2 * v48) & 0xFFC7468D9DB12B8ELL) + 0x7FE3A346CED895C7) ^ 0x7FE3A346CED895C7 | (v49 - ((2 * v49) & 0x4A343DE200000000) + 0x251A1EF12692E47FLL) ^ 0x251A1EF12692E47FLL;
  v51 = (v50 - ((2 * v50) & 0x63CF2906720439B6) + 0x31E7948339021CDBLL) ^ 0x31E7948339021CDBLL | (v46 - ((2 * v46) & 0xE6C223858000000) - 0x78C9EEE3D35BCE26) ^ 0x8736111C2CA431DALL;
  v52 = (((STACK[0x540] - (STACK[0x538] & 0x72)) << 16) - 0x6DFF6E78EFC70000) ^ 0x9200918710390000;
  v53 = (v51 - ((2 * v51) & 0xCA72C6DECCB1072ELL) + 0x6539636F66588397) ^ 0x6539636F66588397 | (v52 - ((2 * v52) & 0x328FBC782B0C0000) + 0x5947DE3C158661FBLL) ^ 0x5947DE3C158661FBLL;
  v54 = (((STACK[0x550] - (STACK[0x548] & 0x118)) << 8) - 0x162BB3928D37400) ^ 0xFE9D44C6D72C8C00;
  LODWORD(STACK[0x5B4]) = *a24 - ((2 * *a24) & 0xFF98) + 76;
  v55 = (v54 - ((2 * v54) & 0x44656EE205C7200) + 0x42232B77102E39DELL) ^ (v53 - ((2 * v53) & 0xD1AFB5C9AD63D9ECLL) - 0x1728251B294E130ALL) ^ (STACK[0x560] - (STACK[0x558] & 0xF0) - 0x12306B2605A82888);
  LODWORD(STACK[0x590]) = *a23 - ((2 * *a23) & 0xFFE3) + 113;
  LODWORD(STACK[0x580]) = *a12 - ((2 * *a12) & 0x36) - 101;
  v56.i64[0] = (v55 ^ 0xCA4C8DA34545A928) + 0x40001454201201 + ((2 * v55) & 0xFF7FFFD757BFDBFELL ^ 0x6B66E491553489AELL);
  v56.i64[1] = v42 ^ 0xC1B2E5E208FD1EE9;
  v57 = vandq_s8(v56, a3);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(v56, vaddq_s64(v57, v57)), a3), a3);
  v59 = vandq_s8(v58, a2);
  *&STACK[0x3C0] = vaddq_s8(vsubq_s8(v58, vaddq_s8(v59, v59)), a2);
  LODWORD(STACK[0x514]) = *a16 - ((2 * *a16) & 0x6A) + 53;
  LODWORD(STACK[0x688]) = *a10 - ((2 * *a10) & 0x42) + 33;
  LODWORD(STACK[0x578]) = *a22 + (~(2 * *a22) | 0x7D) - 62;
  LODWORD(STACK[0x5D8]) = *a19 - ((2 * *a19) & 0x50) + 40;
  STACK[0x5C8] = *a21 + (~(2 * *a21) | 0xFFFFFF8B) + 59;
  LODWORD(STACK[0x58C]) = *a20 - 2 * (*a20 & 0x1F) - 97;
  v60 = *a14 - ((2 * *a14) & 0xFF9Fu) - 49;
  STACK[0x5F0] = *a18 - ((2 * *a18) & 0xFFA8u) - 44;
  LODWORD(STACK[0x5D0]) = *a11 - ((2 * *a11) & 0x58) + 44;
  STACK[0x620] = *a15 - ((2 * *a15) & 0xFFDCu) + 110;
  LODWORD(STACK[0x668]) = *a17 - ((2 * *a17) & 0xFFB2) - 39;
  STACK[0x5B8] = *a13 - ((2 * *a13) & 0xFFD0u) - 24;
  return (*(STACK[0x828] + 8 * v24))(v30, v60);
}

uint64_t sub_1BAECEFEC(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v9 = (a1 - 0x61D6899A4B5379D7);
  STACK[0x810] = 11 * (a6 ^ 0xCCu);
  v10 = (8 * (a1 + 41) - ((16 * (a1 + 41)) & 0x20) + 23) & (11 * (a6 ^ 0xCC) - 53) ^ 0x10;
  *(&v11 + 1) = (a1 - 233250775 - ((2 * (a1 - 1263761879)) & 0x7AD8B418) + 12) & 0xF8 ^ 8u;
  *&v11 = (a1 + 0x3B651856F218E029 - ((2 * (a1 - 0x61D6899A4B5379D7)) & 0x3A7743E27AD8B418) + 12) ^ 0x9D3BA1F13D6C5A00;
  v12 = ((2 * (v11 >> 8)) & 0xF0FBFDFE6E7BEBFCLL) + ((v11 >> 8) ^ 0xFF7DFEFF373DF5FELL);
  v13 = v12 - ((2 * v12 + 0x68E970A9D0D60F68) & 0x8C29585D17232E8CLL);
  v14 = v13 - 0x5769B7C8C036106;
  *(&v11 + 1) = (v13 + 1945935610) ^ 0x89u;
  *&v11 = (v13 - 0x5769B7C8C036106) ^ 0x1E31208F64D3EC00;
  v15 = v11 >> 8;
  *(&v11 + 1) = (v13 - 0x5769B7C8C036106) ^ 0x1A49A2F9994011CLL;
  *&v11 = v13 + 0x7A89648373FC9EFALL;
  v16 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x13DCA5EA3620CEC6) - 0x7611AD0AE4EF989DLL;
  v17 = (v14 ^ 0x81A49A2F9994011CLL) + (v15 ^ 0xFF3FEFEF5EFF7BFFLL) + ((2 * v15) & 0xFE7FDFDEBDFEF7FELL) + 0xC01010A1008401;
  v18 = v17 - ((2 * v17) & 0x339641B6FA1D6B1ALL) - 0x6634DF2482F14A73;
  *(&v11 + 1) = v18 ^ 0xF8;
  *&v11 = v18 ^ 0x61212670B673F600;
  v19 = v11 >> 8;
  *(&v11 + 1) = v18 ^ v16 ^ 0x8CF7485AD63919BLL;
  *&v11 = v18 ^ ~v16;
  v20 = (v18 ^ v16 ^ 0xE8CF7485AD63919BLL) + (v19 ^ 0x76FFFEBEFF4F3E6FLL) + ((2 * v19) & 0xEDFFFD7DFE9E7CDELL) - 0x76FFFEBEFF4F3E6FLL;
  v21 = v20 - ((2 * v20) & 0xE6B398366B56C526) - 0xCA633E4CA549D6DLL;
  v22 = v21 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0x499E67AB5678C092) + 0x24CF33D5AB3C6049);
  *(&v11 + 1) = v21 ^ 0x93;
  *&v11 = v21 ^ 0x3C2A344A1E6FCB00;
  v23 = (v11 >> 8) - ((2 * (v11 >> 8)) & 0x8C32702E4C755E0ALL) + 0x46193817263AAF05;
  *(&v11 + 1) = v22 ^ 0x18E5079FB553AB66;
  *&v11 = v22;
  v24 = (v23 ^ 0xFA193817263AAF05) + *(&v11 + 1) - ((2 * ((v23 ^ 0xFA193817263AAF05) + *(&v11 + 1))) & 0x62B198E8B55A8AEALL);
  v25 = (v24 - 0x4EA7338BA552BA8BLL) ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0x778DD6DEF1DBDB32) - 0x4439149087121267);
  *(&v11 + 1) = (-1521304950 - v24);
  *&v11 = (v24 - 0x4EA7338BA552BA8BLL) ^ 0x28BB12E33FBCD000;
  v26 = (v25 ^ 0x937DF98C47513D66) + ((v11 >> 8) ^ 0x65FFF5EFBA7AD955) + ((2 * (v11 >> 8)) & 0xCBFFEBDF74F5B2AALL);
  v27 = (2 * v26 + 0x340014208B0A4D56) & 0xC201C1C68C904300;
  v26 -= 0x4FF150C7432B7D5;
  *(&v11 + 1) = v25 ^ 0x137DF98C47513D66;
  *&v11 = v25 ^ 0x8000000000000000;
  v28 = v26 - v27;
  v29 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x9922D9D1D323D578) + 0x4C916CE8E991EABCLL;
  v30 = (v28 ^ v29 ^ 0xE44922030419AD09) + ((v28 >> 8) ^ 0xA8D84EEBED8847);
  v32 = (v30 ^ 0x7EFD5FFFF37ABFEALL) + ((((v26 << 56) ^ 0xB500000000000000) - 0x52B032AC8C4F8567 + (~(2 * ((v26 << 56) ^ 0xB500000000000000)) | 0xA5FFFFFFFFFFFFFFLL) + 1) ^ 0xAD4FCD5373B07A99) + ((2 * v30) & 0xFDFABFFFE6F57FD4) - 0x7EFD5FFFF37ABFEALL;
  v33 = v32 - ((2 * v32) & 0x1DBF96AC9114327ELL) + 0xEDFCB56488A193FLL;
  *(&v11 + 1) = v28 ^ v29 ^ 0x44922030419AD09;
  *&v11 = v28 ^ ~v29;
  v34 = v33 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0xD752F9E47206E9CALL) - 0x1456830DC6FC8B1BLL);
  *(&v11 + 1) = v33 ^ 0x6A;
  *&v11 = v33 ^ 0x6AC5CF7049CA9A00;
  v35 = (v34 ^ 0x816CB38270C9EE8FLL) + ((v11 >> 8) ^ 0xFEFF58FF32FBF4FFLL) + ((2 * (v11 >> 8)) & 0xFDFEB1FE65F7E9FELL) + 0x100A700CD040B01;
  v36 = v35 - ((2 * v35) & 0xA9ACDA9F4850DECELL) + 0x54D66D4FA4286F67;
  *(&v11 + 1) = v34 ^ 0x16CB38270C9EE8FLL;
  *&v11 = v34 ^ 0x8000000000000000;
  v37 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x99F660D54AEFB136) + 0x4CFB306AA577D89BLL;
  *(&v11 + 1) = v36 ^ 0xCE;
  *&v11 = v36 ^ 0x2B42AFE5CAB3B200;
  v38 = (v37 ^ 0x67B99F8F6FC46A55 ^ v36) + ((v11 >> 8) ^ 0xFF8BF3E9FAFFF8FFLL) + ((2 * (v11 >> 8)) & 0xFF17E7D3F5FFF1FELL) + 0x740C1605000701;
  v39 = v38 - ((2 * v38) & 0xF815676D3E81AAAALL) - 0x3F54C4960BF2AABLL;
  v40 = (a1 - 0x61D6899A4B5379CFLL);
  v41 = a1 - 0x61D6899A4B5379CFLL - ((2 * (a1 - 0x61D6899A4B5379CFLL)) & 0xB37F57CFF6649F22) - 0x2640541804CDB06FLL;
  v42 = ((v39 ^ 0x8158A16BE29E4568) >> v10) + 0x3EF01F11976DAC72 - ((2 * ((v39 ^ 0x8158A16BE29E4568) >> v10)) & 0x7DE03E232EDB58E4);
  v43 = ((((v41 << 56) ^ 0x9100000000000000) - ((v41 << 57) & 0x8400000000000000) + 0x426C00CB7CE07198) & 0xF800000000000000 | (v41 >> 8)) ^ 0x40D9BFABE7FB324FLL;
  v44 = (v43 + 0x1A3713ED037E519ELL - 2 * (v43 & 0x183713ED037E51BELL ^ (v41 >> 8) & 0x20)) ^ 0x1A3713ED037E519ELL;
  v45 = v44 - ((2 * v44 + 0x67E56EA83F51FB64) & 0x4E40CD317FBEC9EALL);
  *(&v11 + 1) = (v45 - 544709977) ^ 0x3Au;
  *&v11 = (v45 - 0x24ECE21320779D59) ^ 0x7F05EA39509D1F00;
  v46 = ((v45 - 0x24ECE21320779D59) ^ 0xE0905099ADDAF2AFLL) + ((v11 >> 8) ^ 0x5C6BD7B9DFDEAFE7) + ((2 * (v11 >> 8)) & 0xB8D7AF73BFBD5FCELL) - 0x5C6BD7B9DFDEAFE7;
  v47 = v46 - ((2 * v46) & 0xB5F86EC76F0A9210) + 0x5AFC3763B7854908;
  *(&v11 + 1) = (v45 - 0x24ECE21320779D59) ^ 0x905099ADDAF2AFLL;
  *&v11 = 0x24ECE21320779D58 - v45;
  v48 = v47 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0xCA4809C7F82A715ALL) - 0x1ADBFB1C03EAC753);
  *(&v11 + 1) = v47 ^ 0x7D;
  *&v11 = v47 ^ 0xA21631C87CF80A00;
  v49 = (v48 ^ 0x4732352B80ED32D0) + ((v11 >> 8) ^ 0xDFFEFEAD7B3EF3FFLL) + ((2 * (v11 >> 8)) & 0xBFFDFD5AF67DE7FELL) + 0x2001015284C10C01;
  v50 = v49 - ((2 * v49) & 0xD8A843417B9E48B6) - 0x13ABDE5F4230DBA5;
  *(&v11 + 1) = v48 ^ 0x732352B80ED32D0;
  *&v11 = v48 ^ 0x4000000000000000;
  v51 = v50 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0x7B9F230DF38F68F0) - 0x42306E7906384B88);
  *(&v11 + 1) = v50 ^ 0xFFFFFFE7;
  *&v11 = v50 ^ 0x2327D9F1960B8D00;
  v52 = (v51 ^ 0x9EE848776FCC399FLL) + ((v11 >> 8) ^ 0xDEFFFB31AAFB67FBLL) + ((2 * (v11 >> 8)) & 0xBDFFF66355F6CFF6) + 0x210004CE55049805;
  v53 = v52 - ((2 * v52) & 0x21BE809B767CA11ELL) + 0x10DF404DBB3E508FLL;
  *(&v11 + 1) = v51 ^ 0x1EE848776FCC399FLL;
  *&v11 = v51 ^ 0x8000000000000000;
  v54 = v53 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0xCBFBC3874CF6AD9ALL) - 0x1A021E3C5984A933);
  *(&v11 + 1) = v53 ^ 5;
  *&v11 = v53 ^ 0x893C9EDADE2FC500;
  v55 = (v54 ^ 0x6CC17F19785493C8) + ((v11 >> 8) ^ 0xFDA3F8FBFFDBE6B5) + ((2 * (v11 >> 8)) & 0xFB47F1F7FFB7CD6ALL) + 0x25C07040024194BLL;
  v56 = v55 - ((2 * v55) & 0x7047B8FD07EE4436) - 0x47DC23817C08DDE5;
  *(&v11 + 1) = v54 ^ 0xCC17F19785493C8;
  *&v11 = v54 ^ 0x6000000000000000;
  v57 = v56 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0x74E2BFDBB992713ELL) + 0x3A715FEDDCC9389FLL);
  *(&v11 + 1) = v56 ^ 0x2E;
  *&v11 = v56 ^ 0x71FB727628374400;
  v58 = (v57 ^ 0x4B8A2D9BF4FE7CB1) + ((v11 >> 8) ^ 0x7BFDF6FE8BCEFD5CLL) + ((2 * (v11 >> 8)) & 0xF7FBEDFD179DFAB8) - 0x7BFDF6FE8BCEFD5CLL;
  v59 = v58 - ((2 * v58) & 0x8B693069809FFBF4) + 0x45B49834C04FFDFALL;
  *(&v11 + 1) = v57 ^ 0xB8A2D9BF4FE7CB1;
  *&v11 = v57 ^ 0x4000000000000000;
  v60 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x997E620E2F8D71A6) - 0x3340CEF8E839472DLL;
  *(&v11 + 1) = v59 ^ 0xAF;
  *&v11 = v59 ^ 0x21AE9C12C10F7E00;
  v61 = (v59 ^ v60 ^ 0xED11AD15D6C9C67CLL) + ((v11 >> 8) ^ 0x1753BFDD7EFFEFFLL) + ((2 * (v11 >> 8)) & 0x2EA77FBAFDFFDFELL) - 0x1753BFDD7EFFEFFLL;
  v62 = v61 - ((2 * v61) & 0x19DDED9921E97C40) - 0x731109336F0B41E0;
  *(&v11 + 1) = v59 ^ v60 ^ 0xD11AD15D6C9C67CLL;
  *&v11 = v59 ^ ~v60;
  v63 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x3D8CFD85857E4020) - 0x6139813D3D40DFF0;
  *(&v11 + 1) = v62 ^ 0x89;
  *&v11 = v62 ^ 0xF37A3466FE6F6300;
  v64 = (v63 ^ 0x6DBC4AA43CD04399 ^ v62) + ((v11 >> 8) ^ 0xA5DE7CBBDBEBFFFELL) + ((2 * (v11 >> 8)) & 0x4BBCF977B7D7FFFCLL) + 0x5A21834424140002;
  v65 = (v64 - ((2 * v64) & 0xBFF67665DA040318) - 0x2004C4CD12FDFE74) ^ 0xA2A929EF90DC91B1;
  v66 = (v65 >> v10) - 0x13D02B934946C9AALL - ((2 * (v65 >> v10)) & 0xD85FA8D96D726CACLL);
  v10 = 59 - v10;
  v67 = (32 * ((v65 << v10) - ((2 * (v65 << v10)) & 0x3A94C24845DDF20)) - 0x456B3DB7BA220D20) ^ 0xBA94C24845DDF2E0;
  v68 = a1 - 0x61D6899A4B5379C7 - ((2 * (a1 - 0x61D6899A4B5379C7)) & 0x1BFB4425E7BCFEB6) + 0xDFDA212F3DE7F5BLL;
  v69 = ((v67 + 0x1D180EA12D049A38 - ((2 * v67) & 0x3A301D425A093440)) ^ 0x1D180EA12D049A38) + (v42 ^ 0x3EF01F11976DAC72);
  v70 = v69 - ((2 * v69) & 0x6F21473EBA587B82);
  v71 = ((((v68 << 56) ^ 0x5B00000000000000) - ((2 * ((v68 << 56) ^ 0x5B00000000000000)) & 0xAAAAAAAAAAAAAAAALL) + 0x55B6B5C9F9F045C1) & 0xF800000000000000 | (v68 >> 8)) ^ 0x500DFDA212F3DE7FLL;
  v72 = (v71 + 0x5A1F0580DACB01BCLL - ((2 * v71) & 0xB03E0B01B5960378)) ^ 0x5A1F0580DACB01BCLL;
  v73 = v72 - 2 * ((v72 + 0x33F2B7541FA8FDB2) & 0x7DC1CA00C4C31E75 ^ v71 & 1) + 0x31B48154E46C1C26;
  *(&v11 + 1) = v73 ^ 0xBBBBBBBB;
  *&v11 = v73 ^ 0x25E446A12B816500;
  v74 = (v73 ^ 0xBA71FC01D6C6882ELL) + ((v11 >> 8) ^ 0x61BFB7B67D73DF3FLL) + ((2 * (v11 >> 8)) & 0xC37F6F6CFAE7BE7ELL) - 0x61BFB7B67D73DF3FLL;
  v75 = v74 - ((2 * v74) & 0xF666A8D4B09D4D3CLL) + 0x7B33546A584EA69ELL;
  *(&v11 + 1) = v73 ^ 0x1A71FC01D6C6882ELL;
  *&v11 = v73 ^ 0xBFFFFFFFFFFFFFFFLL;
  v76 = v75 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0x3D9BD42CFB8B846ELL) + 0x1ECDEA167DC5C237);
  *(&v11 + 1) = v75 ^ 0xEB;
  *&v11 = v75 ^ 0x83D952C19333E500;
  v77 = (v76 ^ 0x9D14B8D7EEF627DCLL) + ((v11 >> 8) ^ 0xFF57E2EDFDEEFEFFLL) + ((2 * (v11 >> 8)) & 0xFEAFC5DBFBDDFDFELL) + 0xA81D1202110101;
  v78 = v77 - ((2 * v77) & 0xF7F16A488A21741CLL) - 0x4074ADBBAEF45F2;
  *(&v11 + 1) = v76 ^ 0x1D14B8D7EEF627DCLL;
  *&v11 = v76 ^ 0x8000000000000000;
  v79 = v78 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0x4642C2551D8B06FALL) - 0x5CDE9ED5713A7C83);
  *(&v11 + 1) = v78 ^ 0xB2;
  *&v11 = v78 ^ 0x348B4D756ED41300;
  v80 = (v79 ^ 0x97AA2C5FE01190CFLL) + ((v11 >> 8) ^ 0x37BFDF787BDF7D93) + ((2 * (v11 >> 8)) & 0x6F7FBEF0F7BEFB26) - 0x37BFDF787BDF7D93;
  v81 = v80 - ((2 * v80) & 0xECB47388AA08ED6CLL) + 0x765A39C4550476B6;
  *(&v11 + 1) = v81 ^ 0x3C;
  *&v11 = v81 ^ 0xEFB9E7533015E300;
  v82 = v11 >> 8;
  v70 -= 0x486F5C60A2D3C23FLL;
  *(&v11 + 1) = v79 ^ 0x17AA2C5FE01190CFLL;
  *&v11 = v79 ^ 0x8000000000000000;
  v83 = v81 ^ ((v11 >> 61) - ((2 * (v11 >> 61)) & 0xC78F7F6B2F88A380) - 0x1C38404A683BAE40);
  v84 = (v83 ^ 0xC7E58E6A7D1B2FCLL) + (v82 ^ 0x6EF5E1F3ABFDADFFLL) + ((2 * v82) & 0xDDEBC3E757FB5BFELL) - 0x6EF5E1F3ABFDADFFLL;
  v85 = v84 - ((2 * v84) & 0x6BB56CF08DAFC26ELL) + 0x35DAB67846D7E137;
  *(&v11 + 1) = v83 ^ 0xC7E58E6A7D1B2FCLL;
  *&v11 = v83;
  v86 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x37103893829D2D1ELL) + 0x1B881C49C14E968FLL;
  *(&v11 + 1) = v85 ^ 2;
  *&v11 = v85 ^ 0xFC021870ED178700;
  v87 = (v85 ^ v86 ^ 0xE78A04392C59118DLL) + ((v11 >> 8) ^ 0x9EBFCFFFFE1FFEBFLL) + ((2 * (v11 >> 8)) & 0x3D7F9FFFFC3FFD7ELL) + 0x6140300001E00141;
  v88 = v87 - ((2 * v87) & 0x2E6C0E5C220852D0) - 0x68C9F8D1EEFBD698;
  *(&v11 + 1) = v85 ^ v86 ^ 0x78A04392C59118DLL;
  *&v11 = v85 ^ ~v86;
  v89 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x9A1481DB511C2880) + 0x4D0A40EDA88E1440;
  *(&v11 + 1) = v88 ^ 0x3D;
  *&v11 = v88 ^ 0xF32C03081044AA00;
  v90 = v88 ^ v89;
  v91 = (v90 ^ 0xBE2643E5B8CABE7DLL) + ((v11 >> 8) ^ 0xFDFED5F4FFCF6F76) + ((2 * (v11 >> 8)) & 0xFBFDABE9FF9EDEECLL) + 0x2012A0B0030908ALL;
  v92 = v91 - ((2 * v91) & 0x91C34A0FCF6832CELL) - 0x371E5AF8184BE699;
  *(&v11 + 1) = v90 ^ 0x1E2643E5B8CABE7DLL;
  *&v11 = v90 ^ 0xBFFFFFFFFFFFFFFFLL;
  v93 = (v11 >> 61) - ((2 * (v11 >> 61)) & 0x1895BC4EB64A7AF0) + 0xC4ADE275B253D78;
  LODWORD(STACK[0x20C]) = v42 ^ 0x31;
  LODWORD(STACK[0x208]) = (v70 >> 8) ^ 0xFFFFFFC2;
  *(&v11 + 1) = v92 ^ 0xCE;
  *&v11 = v92 ^ 0xB77567AD892FC400;
  v94 = (v93 ^ 0xC33FB98AD20AF9B6 ^ v92) + ((v11 >> 8) ^ 0xFF9FDFFFDDFB5EF3) + ((2 * (v11 >> 8)) & 0xFF3FBFFFBBF6BDE6) + 0x6020002204A10DLL;
  v95 = ((v94 - ((2 * v94) & 0x4BD072B9F76C7592) - 0x5A17C6A30449C537) ^ 0xA0BA2B818668AAF4) << v10;
  v96 = (32 * (v95 - ((2 * v95) & 0x1EE901B9FEAA7A0)) - 0x6116FE4601558560) ^ 0x9EE901B9FEAA7AA0;
  LODWORD(STACK[0x204]) = HIDWORD(v70) ^ 0x2E;
  v97 = ((v96 + 0x2FFD99B416467480 - ((2 * v96) & 0x5FFB33682C8CE900)) ^ 0x2FFD99B416467480) + (v66 ^ 0xEC2FD46CB6B93656);
  LODWORD(v42) = *(a1 - 0x61D6899A4B5379D6);
  LODWORD(STACK[0x200]) = ((v97 - ((2 * v97) & 0x7712E5D1C6794EELL) - 0x7C4768D171CC3589) >> 40) ^ 0x25;
  LODWORD(v66) = *(a1 - 0x61D6899A4B5379D5);
  STACK[0x5A0] = *v9 ^ LODWORD(STACK[0x58C]);
  STACK[0x5A8] = *(a1 - 0x61D6899A4B5379D3) ^ LODWORD(STACK[0x578]);
  STACK[0x670] = *(a1 - 0x61D6899A4B5379D2) ^ LODWORD(STACK[0x580]);
  STACK[0x598] = v42 ^ LODWORD(STACK[0x590]);
  LODWORD(STACK[0x5B4]) ^= *(a1 - 0x61D6899A4B5379D4);
  STACK[0x5C8] = *(a1 - 0x61D6899A4B5379D0) ^ STACK[0x5C8];
  LODWORD(STACK[0x514]) ^= v66;
  LODWORD(STACK[0x600]) = *(a1 - 0x61D6899A4B5379D1) ^ LODWORD(STACK[0x5D8]);
  STACK[0x620] = *v40 ^ STACK[0x620];
  STACK[0x5B8] = *(a1 - 0x61D6899A4B5379CBLL) ^ STACK[0x5B8];
  STACK[0x5C0] = *(a1 - 0x61D6899A4B5379CALL) ^ a8;
  STACK[0x618] = *(a1 - 0x61D6899A4B5379CELL) ^ LODWORD(STACK[0x668]);
  v98 = *(STACK[0x828] + 8 * a6);
  LODWORD(STACK[0x684]) = 1;
  return v98((v70 >> 24) ^ 0xFFFFFFE8, a2, a3, a4, v8);
}

uint64_t sub_1BAED0A80(__n128 _Q0, int8x16_t a2, double a3, int8x16_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, int64x2_t a17, int8x16_t a40, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int64x2_t a18, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t _D0, uint64_t a41, int8x16_t a42)
{
  v49 = STACK[0x44C];
  v50 = ((((2 * LODWORD(STACK[0x44C])) ^ 0x79A) + 420080019) ^ v42) - ((2 * ((((2 * LODWORD(STACK[0x44C])) ^ 0x79A) + 420080019) ^ v42)) & 0xB8);
  v51 = (v43 ^ 0x475BB085) - ((2 * (v43 ^ 0x475BB085)) & 0x2A3FE40u);
  v52 = (a10 ^ 0x651BCC98) - 2 * ((a10 ^ 0x651BCC98) & 1);
  v53 = (((v45 - (STACK[0x460] & 0x36) + 64317) << 48) - 0x22000000000000) ^ 0xFB1B000000000000;
  v54 = (((STACK[0x478] - (STACK[0x468] & 0x8E) + 2) << 56) - 0x3B00000000000000) ^ 0xC700000000000000;
  v55 = (v53 - ((2 * v53) & 0x606060606060606) - 0x7CFC129D7A07B5C9) ^ 0x8303ED6285F84A37 | (v54 - ((2 * v54) & 0x600000000000000) - 0x7C1D115A32DB6B03) ^ 0x83E2EEA5CD2494FDLL;
  v56 = (((STACK[0x490] - (STACK[0x470] & 0x1A4) + 3316200) << 40) - 0x160000000000) ^ 0x3299D20000000000;
  v57 = (v55 - ((2 * v55) & 0x6D33EAA840B08F9CLL) + 0x3699F554205847CELL) ^ 0x3699F554205847CELL | (v56 - ((2 * v56) & 0x1CA14C0000000000) + 0xE50A6EE8135B168) ^ 0xE50A6EE8135B168;
  v58 = (((STACK[0x488] - (STACK[0x480] & 0x1A6)) << 24) - 0x5517E52E2D000000) ^ 0xAAE81AD1D3000000;
  v59 = (((STACK[0x4A0] - (STACK[0x498] & 0x12A) + 2112276148) << 32) - 0x1F00000000) ^ 0x7DE6C69500000000;
  v60 = (v57 - ((2 * v57) & 0xAE777F8647659C50) + 0x573BBFC323B2CE28) ^ 0x573BBFC323B2CE28 | (v59 - ((2 * v59) & 0x71AEC1000000000) - 0x3C7289F76BFD467FLL) ^ 0xC38D76089402B981;
  v61 = (v60 - ((2 * v60) & 0x1090679A477578B0) - 0x77B7CC32DC4543A8) ^ 0x884833CD23BABC58 | (v58 - ((2 * v58) & 0x29D0D2B67A000000) + 0x54E8695B3D135A10) ^ 0x54E8695B3D135A10;
  v62 = (((STACK[0x4D8] - (STACK[0x4C0] & 0x13E)) << 16) + 0x37BF073B5F9F0000) ^ 0x37BF073B5F9F0000;
  v63 = (v61 - ((2 * v61) & 0xD892B6E47776FC90) - 0x13B6A48DC44481B8) ^ 0xEC495B723BBB7E48 | (v62 - ((2 * v62) & 0x431A21E8E9220000) - 0x5E72EF0B8B6E1143) ^ 0xA18D10F47491EEBDLL;
  v64 = (((STACK[0x4D0] - (STACK[0x4B8] & 0x80)) << 8) - 0x2187C099B8A6C000) ^ 0xDE783F6647594000;
  v65 = v64 - ((2 * v64) & 0x7F45F4A338C26600);
  v66 = (((STACK[0x4B0] - (STACK[0x4A8] & 0x1A6) + 35555) << 48) - 0x10000000000000) ^ 0x8AD3000000000000;
  v67 = (((STACK[0x500] - (STACK[0x4F0] & 0xDC) + 253) << 56) - 0xF00000000000000) ^ 0xEE00000000000000;
  v68 = (v66 - ((2 * v66) & 0x73BE000000000000) + 0x39DF3DA4B9F3B298) ^ 0x39DF3DA4B9F3B298 | (v67 - ((2 * v67) & 0xF7FFFFFFFFFFFFFFLL) - 0x4E996DE2121E277) ^ 0xFB166921DEDE1D89;
  v69 = (((STACK[0x518] - (STACK[0x508] & 0x190) + 15658751) << 40) - 0x370000000000) ^ 0xEEEEC80000000000;
  v70 = (v68 - ((2 * v68) & 0x21B634FDAF4DA1ALL) + 0x10DB1A7ED7A6D0DLL) ^ 0x10DB1A7ED7A6D0DLL | (v69 - ((2 * v69) & 0xBE7460000000000) + 0x5F3A342AD93722BLL) ^ 0x5F3A342AD93722BLL;
  v71 = (((STACK[0x530] - (STACK[0x528] & 0x198) + 1796642057) << 32) - 0x3D00000000) ^ 0x6B1694CC00000000;
  v72 = (v70 - ((2 * v70) & 0x9DBCC93EDBE50C88) - 0x31219B60920D79BCLL) ^ 0xCEDE649F6DF28644 | (v71 - ((2 * v71) & 0x6A5523FA00000000) + 0x752A91FD0236C690) ^ 0x752A91FD0236C690;
  v73 = (((STACK[0x4F8] - (STACK[0x4E8] & 0x2C)) << 24) + 0x74BC53BD16000000) ^ 0x74BC53BD16000000;
  v74 = (v72 - ((2 * v72) & 0xA31B1676E6764B9CLL) + 0x518D8B3B733B25CELL) ^ 0x518D8B3B733B25CELL | (v73 - ((2 * v73) & 0x573CB421C8000000) + 0x2B9E5A10E487D377) ^ 0x2B9E5A10E487D377;
  v75 = (((STACK[0x540] - (STACK[0x538] & 0x58)) << 16) + 0x2E75D0E5DC2C0000) ^ 0x2E75D0E5DC2C0000;
  v76 = (v74 - ((2 * v74) & 0xF7E5669A69FB6834) + 0x7BF2B34D34FDB41ALL) ^ 0x7BF2B34D34FDB41ALL | (v75 - ((2 * v75) & 0x6DBD1A5655700000) + 0x36DE8D2B2AB83418) ^ 0x36DE8D2B2AB83418;
  v77 = (((STACK[0x550] - (STACK[0x548] & 0x2A)) << 8) + 0x7CF3DA26D7CF1500) ^ 0x7CF3DA26D7CF1500;
  v78.i64[0] = (STACK[0x560] - (STACK[0x558] & 0x70) - 0x7C0CCA4A36379CC8) ^ (v77 - ((2 * v77) & 0x421C56F8BA8C2200) + 0x610E2B7C5D461199) ^ (v76 - ((2 * v76) & 0xF70C3BF615C8C28CLL) - 0x479E204F51B9EBALL) ^ 0x197B03329E6A13E7;
  v78.i64[1] = (STACK[0x4E0] - (STACK[0x4C8] & 0xCE) + 0x56C151A9C0874E67) ^ (v65 - 0x405D05AE639ECC83) ^ (v63 - ((2 * v63) & 0xFC660BF2000F9CE0) - 0x1CCFA06FFF83190) ^ 0x1750AE015CE1B36ALL;
  v79 = (((STACK[0x440] - (STACK[0x438] & 0x18A) + 24555) << 48) - 0x26000000000000) ^ 0x5FC5000000000000;
  v80 = (((v50 + 230) << 56) - 0xA00000000000000) ^ 0xDC00000000000000;
  v81 = (v80 - ((2 * v80) & 0x4A00000000000000) - 0x5ACDF30B267EE139) ^ 0xA5320CF4D9811EC7 | (v79 - ((2 * v79) & 0x768000000000000) + 0x3B4FA9E41743DD6) ^ 0x3B4FA9E41743DD6;
  v82 = ((((v44 ^ 0xC2D9319C) - ((2 * (v44 ^ 0xC2D9319C)) & 0x4B574C) + 2468815) << 40) - 0x290000000000) ^ 0x25ABA60000000000;
  v83 = (v81 - ((2 * v81) & 0x38D0A5BE79CC0218) - 0x6397AD20C319FEF4) ^ 0x9C6852DF3CE6010CLL | (v82 - ((2 * v82) & 0x19C2AE0000000000) + 0xCE15745C91973EBLL) ^ 0xCE15745C91973EBLL;
  v84 = (((STACK[0x458] - (STACK[0x450] & 0x74) + 561450851) << 32) - 0x2900000000) ^ 0x21770F3A00000000;
  v85 = (v83 - ((2 * v83) & 0x30CCEC07F03B0C46) + 0x18667603F81D8623) ^ 0x18667603F81D8623 | (v84 - ((2 * v84) & 0x598F858600000000) - 0x13383D3CBD7CF3C6) ^ 0xECC7C2C342830C3ALL;
  v86 = (((LODWORD(STACK[0x710]) << 24) ^ 0x21000000) - ((2 * ((LODWORD(STACK[0x710]) << 24) ^ 0x21000000)) & 0xE6000000) + 1930744433) ^ 0x7314D271;
  v87 = (v85 - ((2 * v85) & 0x69B776AF1AC8DDE2) - 0x4B2444A8729B910FLL) ^ 0xB4DBBB578D646EF1 | (v86 - ((2 * v86) & 0x107782E96) - 0x30C30B387C43E8B5) ^ 0xCF3CF4C783BC174BLL;
  v88 = (((LODWORD(STACK[0x810]) << 16) ^ 0xE4850000) - ((2 * ((LODWORD(STACK[0x810]) << 16) ^ 0xE4850000)) & 0x67580000) + 1940704429) ^ 0x73ACCCAD;
  v89 = (v87 - ((2 * v87) & 0x8B4053596F88EEDALL) - 0x3A5FD653483B8893) ^ 0xC5A029ACB7C4776DLL | (v88 - ((2 * v88) & 0xD675FA80) - 0x3428D23F14C502C0) ^ 0xCBD72DC0EB3AFD40;
  v90 = (((LODWORD(STACK[0x670]) << 8) ^ 0x568E00) - ((2 * ((LODWORD(STACK[0x670]) << 8) ^ 0x568E00)) & 0x951E400) - 995560925) ^ 0xC4A8F223;
  v91 = ((((v47 ^ 0x5DD193B4) - ((2 * (v47 ^ 0x5DD193B4)) & 0x127Eu) + 2420) << 48) - 0x35000000000000) ^ 0x93F000000000000;
  v92 = (v91 - ((2 * v91) & 0xD68000000000000) + 0x6B4C04653739AC4) ^ 0x6B4C04653739AC4 | ((((((v52 + 192) << 56) - 0x3F00000000000000) ^ 0x8100000000000000) - 0x7A41567B2FF201BLL + (~(2 * (((v52 + 192) << 56) - 0x3F00000000000000)) | 0xFFFFFFFFFFFFFFFLL)) | 1) ^ 0xF85BEA984D00DFE5;
  v93 = ((((a6 ^ 0xFE9B9B6E) - ((2 * (a6 ^ 0xFE9B9B6E)) & 0x5EF614) + 3111727) << 40) - 0x250000000000) ^ 0x2F7B0A0000000000;
  v94 = (v92 - ((2 * v92) & 0xB7FF2B4F31A72CFCLL) - 0x24006A58672C6982) ^ 0xDBFF95A798D3967ELL | (v93 - ((2 * v93) & 0x6291D60000000000) + 0x3148EB27BA56878BLL) ^ 0x3148EB27BA56878BLL;
  v95 = (((v51 + 22150956) << 32) - 0xC00000000) ^ 0x151FF2000000000;
  v96 = (v94 - ((2 * v94) & 0x8D76972B3A010244) + 0x46BB4B959D008122) ^ 0x46BB4B959D008122 | (v95 - ((2 * v95) & 0x317C9AC400000000) + 0x58BE4D62E1CD4179) ^ 0x58BE4D62E1CD4179;
  v97 = (((LODWORD(STACK[0x684]) << 24) ^ 0xED000000) - ((2 * ((LODWORD(STACK[0x684]) << 24) ^ 0xED000000)) & 0xB6000000) - 612748418) ^ 0xDB7A337E;
  v98 = (v96 - ((2 * v96) & 0xC84AC448CA530E6ALL) + 0x6425622465298735) ^ 0x6425622465298735 | (v97 - ((2 * v97) & 0x1D49D1B64) - 0x2CB067D915B1724ELL) ^ 0xD34F9826EA4E8DB2;
  v99 = (((LODWORD(STACK[0x434]) << 16) ^ 0x13B70000) - ((2 * ((LODWORD(STACK[0x434]) << 16) ^ 0x13B70000)) & 0x4CE40000) + 1718782245) ^ 0x66728925u;
  v100 = (v98 - ((2 * v98) & 0x59A0472F0CB27ED4) - 0x532FDC6879A6C096) ^ 0xACD0239786593F6ALL | (v99 - ((2 * v99) & 0xD49509A2) - 0x18D998E195B57B2FLL) ^ 0xE726671E6A4A84D1;
  v101 = (((LODWORD(STACK[0x570]) << 8) ^ 0xE11C6000) - ((2 * ((LODWORD(STACK[0x570]) << 8) ^ 0xE11C6000)) & 0x2EE42800) + 1467094110) ^ 0x5772145E;
  v102 = ((((LOBYTE(STACK[0x590]) ^ 0x71) - ((2 * (LODWORD(STACK[0x590]) ^ 0x71)) & 0x22u) + 38990) << 48) - 0x3D000000000000) ^ 0x9811000000000000;
  v103 = ((v46 ^ 0xF7221234) - ((2 * (v46 ^ 0xF7221234)) & 0xDBCEDB60) - 0x2EFF9D1312189250) ^ (v90 - ((2 * v90) & 0xAA7CCE72) - 0x5EFD3E12AAC198C7) ^ 0x8CE111E8192F834BLL ^ (v89 - ((2 * v89) & 0xF9C765D343ED1384) - 0x31C4D165E09763ELL);
  v104.i64[0] = (v101 - ((2 * v101) & 0x2AB138B2) - 0x2DBB9F01EAA763A7) ^ (v100 - ((2 * v100) & 0xF6A584BE5DAB0B8ALL) + 0x7B52C25F2ED585C5) ^ 0x907C99B088312920 ^ (STACK[0x258] - (STACK[0x250] & 0x178) + 0x396A3B11B3BC30BCLL);
  v104.i64[1] = (v103 - ((2 * v103) & 0xD2B97449E9F87EECLL) - 0x16A345DB0B03C08ALL) ^ 0xE95CBA24F4FC3F76;
  v105 = ((((LODWORD(STACK[0x58C]) ^ 0xFFFFFF9F) - ((2 * (LODWORD(STACK[0x58C]) ^ 0xFFFFFF9F)) & 0xC8) + 143) << 56) - 0x2B00000000000000) ^ 0x6400000000000000;
  v106 = ((((LODWORD(STACK[0x5B4]) ^ 0x4C) - ((2 * LODWORD(STACK[0x5B4])) & 0x64u) - 199491227) << 32) - 0x3300000000) ^ 0xF41C013200000000;
  v107 = (v102 - ((2 * v102) & 0x6586000000000000) - 0xD3C54679B0A82E3) ^ 0xF2C3AB9864F57D1DLL | (v106 - ((2 * v106) & 0x4F80EA400000000) + 0x427C075288210373) ^ 0x427C075288210373;
  v108 = (v107 - ((2 * v107) & 0xC61BC2F95D778ADCLL) + 0x630DE17CAEBBC56ELL) ^ 0x630DE17CAEBBC56ELL | (v105 - ((2 * v105) & 0x1E00000000000000) - 0x70D976096101C88DLL) ^ 0x8F2689F69EFE3773;
  v109 = ((((LOBYTE(STACK[0x514]) ^ 0x35) - ((2 * (LODWORD(STACK[0x514]) ^ 0x35)) & 0x18Cu) + 894934) << 40) - 0x100000000000) ^ 0xDA7C60000000000;
  v110 = (v108 - ((2 * v108) & 0xE6F43488F94B0972) - 0xC85E5BB835A7B47) ^ 0xF37A1A447CA584B9 | (v109 - ((2 * v109) & 0x476C40000000000) + 0x23B62089BC06A12) ^ 0x23B62089BC06A12;
  v111 = ((((LOBYTE(STACK[0x578]) ^ 0xC1u) - ((2 * (LODWORD(STACK[0x578]) ^ 0xC1u)) & 0x138)) << 24) + 0x153805E39C000000) ^ 0x153805E39C000000;
  v112 = (v110 - ((2 * v110) & 0xA1165CE0345D952ALL) - 0x2F74D18FE5D1356BLL) ^ 0xD08B2E701A2ECA95 | (v111 - ((2 * v111) & 0x234AF224FA000000) - 0x6E5A86ED82B509C2) ^ 0x91A579127D4AF63ELL;
  v113 = ((((LOBYTE(STACK[0x580]) ^ 0x9Bu) - ((2 * (LODWORD(STACK[0x580]) ^ 0x9Bu)) & 0x1F6)) << 16) - 0x762E8A8A05050000) ^ 0x89D17575FAFB0000;
  v114 = (v112 - ((2 * v112) & 0x6022DE7A78B25AELL) - 0x7CFEE90C2C3A6D29) ^ 0x830116F3D3C592D7 | (v113 - ((2 * v113) & 0x76E26BA520EE0000) + 0x3B7135D2907732EDLL) ^ 0x3B7135D2907732EDLL;
  v115 = ((((LOBYTE(STACK[0x5D8]) ^ 0x28u) - ((2 * (LODWORD(STACK[0x5D8]) ^ 0x28u)) & 0x15ALL)) << 8) + 0x480B35BF1745AD00) ^ 0x480B35BF1745AD00;
  v116 = ((((STACK[0x620] ^ 0x6E) - ((2 * (STACK[0x620] ^ 0x6E)) & 0x3A) + 203) << 56) - 0x2E00000000000000) ^ 0x9D00000000000000;
  v117 = ((((LOBYTE(STACK[0x668]) ^ 0xD9) - ((2 * (LODWORD(STACK[0x668]) ^ 0xFFFFFFD9)) & 0x1CA) + 31774) << 48) - 0x39000000000000) ^ 0x7BE5000000000000;
  v118 = (v116 - ((2 * v116) & 0x1A00000000000000) + 0xDBAC0ECAA223F69) ^ 0xDBAC0ECAA223F69 | (v117 - ((2 * v117) & 0x27EA000000000000) - 0x2C0AB340D54DCCEDLL) ^ 0xD3F54CBF2AB23313;
  v119 = ((((STACK[0x5F0] ^ 0xD4) - ((2 * (STACK[0x5F0] ^ 0xFFFFFFD4)) & 0xBC) + 7525505) << 40) - 0x230000000000) ^ 0x72D45E0000000000;
  v120 = (v118 - ((2 * v118) & 0x3C3C154C66B5DA68) + 0x1E1E0AA6335AED34) ^ 0x1E1E0AA6335AED34 | (v119 - ((2 * v119) & 0x60830E0000000000) - 0xFBE787E4621A5CCLL) ^ 0xF0418781B9DE5A34;
  v121 = ((((LOBYTE(STACK[0x5D0]) ^ 0x2C) - ((2 * (LODWORD(STACK[0x5D0]) ^ 0x2C)) & 0x118u) - 879287907) << 32) - 0x1100000000) ^ 0xCB97218C00000000;
  v122 = ((((STACK[0x5B8] ^ 0xE8u) - ((2 * (STACK[0x5B8] ^ 0xE8)) & 0x5ELL)) << 24) - 0x2DE80ADDD1000000) ^ 0xD217F5222F000000;
  v123 = ((((STACK[0x5C0] ^ 2u) - ((2 * STACK[0x5C0]) & 0x88)) << 16) + 0x15A88799C3440000) ^ 0x15A88799C3440000;
  v124 = (v120 - ((2 * v120) & 0x9D4626BBB148CC18) + 0x4EA3135DD8A4660CLL) ^ 0x4EA3135DD8A4660CLL | (v121 - ((2 * v121) & 0x4CC2676600000000) + 0x666133B3113D44DALL) ^ 0x666133B3113D44DALL;
  v125 = (v122 - ((2 * v122) & 0x7A441E5970000000) + 0x7D220F2CB8798BB6) ^ 0x7D220F2CB8798BB6 | (v124 - ((2 * v124) & 0x14F12E119E233D52) + 0xA789708CF119EA9) ^ 0xA789708CF119EA9;
  v126 = (v125 - ((2 * v125) & 0x7824172AA1ADA2FELL) + 0x3C120B9550D6D17FLL) ^ 0x3C120B9550D6D17FLL | (v123 - ((2 * v123) & 0x21396AC62A660000) + 0x109CB5631533D8D7) ^ 0x109CB5631533D8D7;
  v127 = ((((STACK[0x5F8] ^ 0xCFu) - ((2 * (STACK[0x5F8] ^ 0xCF)) & 0x14ALL)) << 8) - 0x7220DEFDD1D75B00) ^ 0x8DDF21022E28A500;
  v128 = ((LODWORD(STACK[0x688]) ^ 0x21u) - ((2 * LODWORD(STACK[0x688])) & 0x19CLL) - 0x682C09E5F3821332) ^ (v127 - ((2 * v127) & 0x5003E5D3FB329400) + 0x2801F2E9FD994A1ALL) ^ 0x53CB527350BAA895 ^ (v126 - ((2 * v126) & 0xD832AD0142BC1C82) - 0x13E6A97F5EA1F1BFLL);
  v129 = ((STACK[0x5C8] ^ 0x3Au) - ((2 * (STACK[0x5C8] ^ 0x3A)) & 0x12) + 0x137D816D8EB86909) ^ (v115 - ((2 * v115) & 0x46BF7BCB320A6C00) + 0x235FBDE599053606) ^ (v114 - ((2 * v114) & 0xCC51C51559E878FCLL) + 0x6628E28AACF43C7ELL);
  v130.i64[0] = (v128 - ((2 * v128) & 0x9DFE5BE5DFDB547ALL) - 0x3100D20D101255C3) ^ 0xCEFF2DF2EFEDAA3DLL;
  v130.i64[1] = (v129 ^ 0xA1BD41FC46FE689ELL) + 0x84860010248F411 + ((2 * v129) & 0xEF6F3FFDFB6E17DELL ^ 0xAC053C05720206C2);
  v131 = vandq_s8(v78, a18);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(v78, vaddq_s64(v131, v131)), a18), a18);
  v133 = vandq_s8(v132, xmmword_1BAF9DF20);
  _Q23 = veorq_s8(vaddq_s8(vsubq_s8(v132, vaddq_s8(v133, v133)), xmmword_1BAF9DF20), xmmword_1BAF9DF20);
  __asm
  {
    AESE            V10.16B, V23.16B
    AESMC           V10.16B, V10.16B
    AESIMC          V8.16B, V10.16B
  }

  *&STACK[0x3C0] = veorq_s8(_Q23, *&STACK[0x3C0]);
  __asm { AESD            V8.16B, V0.16B }

  v143 = vandq_s8(_Q8, a2);
  v144 = vandq_s8(_Q8, a42);
  *&STACK[0x710] = v48;
  v145 = vandq_s8(v104, xmmword_1BAF9DF40);
  *&STACK[0x600] = vaddq_s8(vsubq_s8(_Q8, vaddq_s8(v143, v143)), a2);
  v150 = vaddq_s8(vsubq_s8(_Q8, vaddq_s8(v144, v144)), a42);
  v146 = vandq_s8(v130, xmmword_1BAF9DF60);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(v104, vaddq_s64(v145, v145)), xmmword_1BAF9DF40), veorq_s8(vaddq_s64(vsubq_s64(v130, vaddq_s64(v146, v146)), xmmword_1BAF9DF60), xmmword_1BAF9DF70));
  v148 = vandq_s8(v147, xmmword_1BAF9DF80);
  *&STACK[0x670] = veorq_s8(veorq_s8(a4, xmmword_1BAF9DF80), vaddq_s8(vsubq_s8(v147, vaddq_s8(v148, v148)), xmmword_1BAF9DF80));
  return (*(STACK[0x828] + 8 * v49))(0x666133B3113D44DALL, 0x7D220F2CB8798BB6, 0x109CB5631533D8D7, 0x610E2B7C5D461199, v51, 44, 0x362560FF284F1AF0, a12, a13, a14, a15, a16, a18.i64[0], a18.i64[1], a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v150.i64[0], v150.i64[1], _D0, a41, a42.i64[0]);
}

uint64_t sub_1BAED23AC@<X0>(int a1@<W8>, __n128 a2@<Q2>)
{
  v2 = a1 ^ 0x50;
  v3 = *(STACK[0x828] + 8 * a1);
  *&STACK[0x810] = a2;
  LODWORD(STACK[0x618]) = v2;
  return v3();
}

uint64_t sub_1BAED23D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x684]) = v7;
  *&STACK[0x5E0] = v9;
  return (*(STACK[0x828] + 8 * (v8 - 507)))(a1, 0x4F8E3D5E19D56AFFLL, a3, a4, 0xA8B1BB3BBE15441DLL, 0xB6AF293C815FC432, a7, 0x939EE044FF48D81CLL, *&STACK[0x2C0], *&STACK[0x270], *&STACK[0x330], *&STACK[0x370], *&STACK[0x380]);
}

uint64_t sub_1BAED24CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q7>)
{
  v33 = veorq_s8(v30, v31);
  v34 = vandq_s8(v33, *&STACK[0x730]);
  v35 = vaddq_s64(vsubq_s64(v33, vaddq_s64(v34, v34)), *&STACK[0x730]);
  v36 = v35.i64[1] ^ v12;
  v37 = veorq_s8(v21, v31);
  v38 = vandq_s8(v37, v23);
  v39 = vaddq_s64(vsubq_s64(v37, vaddq_s64(v38, v38)), v23);
  v40 = 2 * (v39.i64[1] ^ 0xD4C9B76A82AAF195);
  v41 = ((v21.i64[0] ^ a4) - 2 * ((v21.i64[0] ^ a4) & 0x44184F397842D5AELL ^ v21.i8[0] & 6) - 0x3BE7B0C687BD2A58) ^ 0x3348E3845EBB388CLL ^ ((v39.i64[1] ^ 0xD4C9B76A82AAF195) - (v40 & 0xEEA1597A4DF3DA48) - 0x8AF5342D90612DCLL);
  v42 = (v30.i64[0] ^ a4) - (v8 & (2 * (v30.i64[0] ^ a4)));
  v43 = vmull_p64((v36 + v14 - ((2 * v36) & 0x57CC30CB07B8E3B8)) ^ v14, ((v39.i64[1] ^ 0xD4C9B76A82AAF195) + v19 - (v40 & 0xD5027ADF3636DDC4)) ^ v19);
  v44 = vandq_s8(v43, v32);
  v45 = vmlaq_s8(*&STACK[0x7F0], veorq_s8(vaddq_s8(vsubq_s8(v43, vaddq_s8(v44, v44)), v32), v32), *&STACK[0x800]);
  v46 = vextq_s8(v45, v45, 0xDuLL);
  v47 = vextq_s8(vmlaq_s8(*&STACK[0x7D0], v46, *&STACK[0x7E0]), v22, 3uLL);
  v48 = vandq_s8(v47, v28);
  v49 = vsubq_s8(v47, vaddq_s8(v48, v48));
  v50 = vmlaq_s8(*&STACK[0x7B0], v46, *&STACK[0x7C0]);
  v51 = vaddq_s8(v49, v28);
  v52 = vextq_s8(v22, v50, 3uLL);
  v53 = vandq_s8(v52, v26);
  v54 = veorq_s8(v51, vaddq_s8(vsubq_s8(v52, vaddq_s8(v53, v53)), v26));
  v55 = (v42 + v10) ^ v9 ^ (v36 - ((2 * v36) & 0x9D21CD7919333542) - 0x316F19437366655FLL);
  v53.i64[0] = (v41 + v16 - ((2 * v41) & 0xBD36958BD53EC46)) ^ v16;
  v56 = (v54.i64[1] ^ a2) + v17 - (a3 & (2 * (v54.i64[1] ^ a2)));
  v57 = vmull_p64(((v35.i64[0] ^ 0x804DF6F191CDC660) + v20 - 2 * ((v35.i64[0] ^ 0x804DF6F191CDC660) & (v20 + 2) ^ v35.i8[0] & 2)) ^ v20, ((v39.i64[0] ^ 0x9652BA324F54DEC9) + v18 - 2 * ((v39.i64[0] ^ 0x9652BA324F54DEC9) & 0x7193A3171B5D78B7 ^ v39.i8[0] & 2)) ^ v18);
  v58 = vandq_s8(v57, v29);
  v59 = vsubq_s8(v57, vaddq_s8(v58, v58));
  v60 = vmull_p64(v53.u64[0], (v55 + v15 - (a5 & (2 * v55))) ^ v15);
  v61 = vandq_s8(v60, v24);
  v62 = vmull_p64(((v56 ^ v17) + v13 - 2 * ((v56 ^ v17) & a1 ^ v56 & 2)) ^ v13, 0x87uLL);
  v63 = vandq_s8(v62, v27);
  v64 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(vaddq_s8(vsubq_s8(v60, vaddq_s8(v61, v61)), v24), vaddq_s8(v59, v29)), v54), *&STACK[0x700]), vaddq_s8(vsubq_s8(v62, vaddq_s8(v63, v63)), v27));
  v65 = vandq_s8(v64, a7);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v64, vaddq_s64(v65, v65)), a7), a7);
  v67 = vextq_s8(v66, v66, 8uLL);
  v68 = vandq_s8(v67, v25);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v67, vaddq_s64(v68, v68)), v25), v25);
  v70 = vandq_s8(v69, a8);
  _Q17 = veorq_s8(veorq_s8(v54, *&STACK[0x6D0]), vaddq_s8(vsubq_s8(v69, vaddq_s8(v70, v70)), a8));
  __asm
  {
    AESIMC          V17.16B, V17.16B
    AESIMC          V17.16B, V17.16B
    AESIMC          V17.16B, V17.16B
    AESIMC          V17.16B, V17.16B
  }

  return (*(STACK[0x828] + 8 * (a6 | (16 * (v11 & 1)))))();
}

uint64_t sub_1BAED29E0()
{
  v0 = *(STACK[0x828] + 8 * ((LODWORD(STACK[0x618]) + 80) ^ (413 * (STACK[0x684] & 1))));
  *&STACK[0x810] = *&STACK[0x670];
  return v0();
}

uint64_t sub_1BAED2B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v59 = vdupq_n_s64(0x258B503E354880D7uLL);
  v59.i64[0] = v55 + 0x3DD1692DCB92DC1BLL + (v54 - 329);
  v60 = vandq_s8(v59, xmmword_1BAF9E260);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(v59, vaddq_s64(v60, v60)), xmmword_1BAF9E260), xmmword_1BAF9E260);
  v62 = vandq_s8(v61, xmmword_1BAF9E270);
  *&STACK[0x670] = veorq_s8(v58, veorq_s8(vaddq_s8(vsubq_s8(v61, vaddq_s8(v62, v62)), xmmword_1BAF9E270), xmmword_1BAF9E280));
  v63 = *(STACK[0x828] + 8 * (v54 - 1747));
  HIDWORD(a54) = 14;
  LODWORD(STACK[0x5A8]) = v56;
  return v63(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v57);
}

uint64_t sub_1BAED2BA4@<X0>(unsigned int a1@<W8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, unsigned __int8 *a16, uint64_t a17, unsigned __int8 *a18, unsigned __int8 *a19, unsigned __int8 *a20, uint64_t a21, unsigned __int8 *a22, _BYTE *a23, unsigned __int8 *a24, unsigned __int8 *a25, unsigned __int8 *a26, unsigned __int8 *a27)
{
  LODWORD(STACK[0x684]) = 0;
  v28 = *a19;
  v29 = *a20;
  v30 = *a18;
  v31 = *a22;
  v32 = *a24 - ((2 * *a24) & 0x74);
  v33 = *a15 - ((2 * *a15) & 0x36);
  STACK[0x810] = (a1 + 889) | 0x49;
  v34 = *a27 - ((*a27 << (((a1 + 121) | 0x49) - 108)) & 0xFFFFFF98);
  v35 = v28 - ((2 * v28) & 0x6A);
  v36 = *a26 - ((2 * *a26) & 0xFFE3);
  v37 = *a12 - ((2 * *a12) & 4);
  v38 = *a23 - 2 * (*a23 & 0x1F);
  v39 = *a25 + (~(2 * *a25) | 0x7D);
  v40 = *a16 - ((2 * *a16) & 0xFFD0);
  STACK[0x5C8] = (v32 + 58);
  STACK[0x670] = (v33 - 101);
  LODWORD(STACK[0x5B4]) = v34 + 76;
  LODWORD(STACK[0x514]) = v35 + 53;
  STACK[0x598] = (v36 + 113);
  STACK[0x618] = v29 - ((2 * v29) & 0xFFFFFFB2) - 39;
  STACK[0x620] = v30 - ((2 * v30) & 0xFFFFFFDC) + 110;
  LODWORD(STACK[0x600]) = v31 - ((2 * v31) & 0x50) + 40;
  STACK[0x5C0] = (v37 + 2);
  STACK[0x5A0] = (v38 - 97);
  STACK[0x5A8] = (v39 - 62);
  STACK[0x5B8] = (v40 - 24);
  return (*(STACK[0x828] + 8 * a1))(LODWORD(STACK[0x214]), a2, a3, a4, v27);
}

uint64_t sub_1BAED2D9C(int a1, double a2, double a3, int8x16_t a4, __n128 a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int64x2_t a39, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int64x2_t a40, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t _120, uint64_t a50)
{
  LODWORD(STACK[0x710]) = (a1 ^ (((2 * STACK[0x810]) ^ 0xA24) + 76)) - ((2 * (a1 ^ (((2 * STACK[0x810]) ^ 0xA24) + 76)) + 2) & 0x52) - 86;
  v52 = veorq_s8(a4, *&STACK[0x3D0]);
  v53 = vandq_s8(v52, a40);
  v54 = vaddq_s64(vsubq_s64(v52, vaddq_s64(v53, v53)), a40);
  v55 = (v54.i64[0] ^ 0x84209A32A15D56E3) - 2 * ((v54.i64[0] ^ 0x84209A32A15D56E3) & 0x5615300234DB7BFLL ^ v54.i8[0] & 0x18) - 0x7A9EACFFDCB24859;
  v56 = (v54.i64[1] ^ 0x38BDF397FF981F64) - ((2 * (v54.i64[1] ^ 0x38BDF397FF981F64)) & 0x200A6C260C48587ELL) + 0x1005361306242C3FLL;
  LODWORD(STACK[0x258]) = HIBYTE(v56) ^ 0xFFFFFF99;
  LODWORD(STACK[0x250]) = HIWORD(v56) ^ 0x13;
  LODWORD(STACK[0x24C]) = (v56 >> 40) ^ 0xFFFFFFDE;
  LODWORD(STACK[0x248]) = (v56 >> 16) ^ 0x29;
  LODWORD(STACK[0x244]) = (v56 >> 24) ^ 0xFFFFFFB8;
  LODWORD(STACK[0x240]) = v56 ^ 0x7F;
  LODWORD(STACK[0x23C]) = HIDWORD(v56) ^ 0xFFFFFFA5;
  LODWORD(STACK[0x238]) = (v56 >> 8) ^ 0x18;
  LODWORD(STACK[0x234]) = HIBYTE(v55) ^ 0xFFFFFFD1;
  LODWORD(STACK[0x230]) = HIWORD(v55) ^ 0x4A;
  LODWORD(STACK[0x688]) = (a5.n128_u8[15] ^ 0xFFFFFF93) - 2 * ((a5.n128_u8[15] ^ 0xFFFFFF93) & 7 ^ a5.n128_u8[15] & 4);
  LODWORD(STACK[0x22C]) = HIDWORD(v55) ^ 0xFFFFFFBC;
  LODWORD(STACK[0x228]) = (v55 >> 40) ^ 0x1D;
  LODWORD(STACK[0x224]) = (v55 >> 24) ^ 0xFFFFFF81;
  LODWORD(STACK[0x220]) = (v55 >> 8) ^ 0x7D;
  LODWORD(STACK[0x21C]) = (v55 >> 16) ^ 0x29;
  LODWORD(STACK[0x218]) = ((v54.i32[0] ^ 0xA15D56E3) - 2 * ((v54.i32[0] ^ 0xA15D56E3) & 0x234DB7BF ^ v54.i8[0] & 0x18) + 592295847) ^ 0xFFFFFFB2;
  HIDWORD(v65) = (a5.n128_u8[12] ^ v50) - 2 * ((a5.n128_u8[12] ^ v50) & 0x69 ^ a5.n128_u8[12] & 8) + 97;
  LODWORD(v65) = (a5.n128_u8[14] ^ 0x66) - ((2 * a5.n128_u8[14]) & 0x22) - 111;
  HIDWORD(v64) = (a5.n128_u8[13] ^ 0xFFFFFFC5) - ((2 * (a5.n128_u8[13] ^ 0xFFFFFFC5)) & 0xFFFFFF98) + 76;
  LODWORD(v64) = (a5.n128_u8[11] ^ 0xFFFFFFC3) - ((2 * (a5.n128_u8[11] ^ 0xFFFFFFC3)) & 0xFFFFFFDA) + 109;
  HIDWORD(v63) = (a5.n128_u8[10] ^ 0xFFFFFFF7) - ((2 * (a5.n128_u8[10] ^ 0xFFFFFFF7)) & 0xFFFFFFBA) - 35;
  LODWORD(v63) = (a5.n128_u8[8] ^ 0xFFFFFFFE) - ((2 * (a5.n128_u8[8] ^ 0xFFFFFFFE)) & 0xFFFFFFF7) + 123;
  HIDWORD(v62) = (a5.n128_u8[9] ^ 0x28) - ((2 * (a5.n128_u8[9] ^ 0x28)) & 0x74) + 58;
  LODWORD(v62) = (a5.n128_u8[6] ^ a7) - ((2 * a5.n128_u8[6]) & 0x34) - 102;
  HIDWORD(v61) = (a5.n128_u8[5] ^ 0x60) - ((2 * a5.n128_u8[5]) & 0x3C) + 30;
  LODWORD(v61) = (a5.n128_u8[1] ^ 0x1A) - 2 * (a5.n128_u8[1] & 1) + 1;
  HIDWORD(v60) = ((2 * (a5.n128_u8[4] & 0x63 ^ (v51 | ~a5.n128_u8[4]))) ^ 0xFFFFFFC3) - a5.n128_u8[4] + 97;
  LODWORD(v60) = (a5.n128_u8[3] ^ 0x28) - ((2 * a5.n128_u8[3]) & 0xFF87) - 61;
  HIDWORD(v59) = (a5.n128_u8[2] ^ 0x4F) + (~(2 * (a5.n128_u8[2] ^ 0x4F)) | 0xFFFFFFF7) - 123;
  v57 = *(STACK[0x828] + 8 * STACK[0x810]);
  LODWORD(v59) = (a5.n128_u8[0] ^ 0xFFFFFFF0) - 2 * ((a5.n128_u8[0] ^ 0xFFFFFFF0) & 0x6F ^ a5.n128_u8[0] & 4) + 107;
  LODWORD(STACK[0x214]) = a1;
  LODWORD(STACK[0x210]) = a1 ^ LODWORD(STACK[0x710]) ^ 0xFFFFFF95;
  HIDWORD(a50) = a5.n128_u8[7];
  return v57(LODWORD(STACK[0x424]), LODWORD(STACK[0x420]), LODWORD(STACK[0x414]), LODWORD(STACK[0x410]), LODWORD(STACK[0x40C]), LODWORD(STACK[0x3FC]), LODWORD(STACK[0x3F4]), 1, 0, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a40.i64[0], a40.i64[1], a42, a43, a44, a45, a46, a47, a48, a49, _120, a50, v59, v60, v61, v62, v63, v64, v65);
}

uint64_t sub_1BAED31B4(int a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  STACK[0x5F0] = v20;
  STACK[0x5F8] = v15;
  STACK[0x5E0] = v19;
  v21 = *(STACK[0x828] + 8 * v8);
  LODWORD(STACK[0x560]) = v8 ^ 0xA27;
  LODWORD(STACK[0x434]) = a8;
  LODWORD(STACK[0x710]) = a8;
  LODWORD(STACK[0x688]) = v9;
  LODWORD(STACK[0x668]) = v10;
  LODWORD(STACK[0x810]) = v11;
  LODWORD(STACK[0x558]) = v13;
  LODWORD(STACK[0x58C]) = a1;
  LODWORD(STACK[0x590]) = v12;
  LODWORD(STACK[0x5D0]) = a3;
  LODWORD(STACK[0x5D8]) = a2;
  LODWORD(STACK[0x578]) = a4;
  LODWORD(STACK[0x550]) = a5;
  LODWORD(STACK[0x548]) = a6;
  LODWORD(STACK[0x540]) = v16;
  LODWORD(STACK[0x580]) = v17;
  LODWORD(STACK[0x538]) = v18;
  LODWORD(STACK[0x530]) = v14;
  return v21();
}

uint64_t sub_1BAED3258(int a1, int a2, int a3, int a4, unsigned __int8 a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x710]) = 0;
  v17 = v8;
  v18 = v8 ^ 0x2E8;
  LODWORD(STACK[0x5B8]) = v17;
  LODWORD(STACK[0x518]) = 259 * v18;
  LODWORD(STACK[0x5E0]) = 259 * v18 + (a8 ^ 0x20) + (a8 ^ 0x61) - ((2 * ((a8 ^ 0x20) + (a8 ^ 0x61))) & 0x34);
  LODWORD(STACK[0x5C8]) = (v15 ^ 0xFFFFFF93) + (v15 ^ 0xFFFFFFD2) - ((2 * ((v15 ^ 0xFFFFFF93) + (v15 ^ 0xFFFFFFD2))) & 0x1C);
  LODWORD(STACK[0x5D0]) = (a1 ^ 0xFFFFFFC1) + a1 - 128 - ((2 * ((a1 ^ 0xFFFFFFC1) + a1 - 128)) & 0xFFFFFFDA);
  v19 = STACK[0x668];
  v20 = (STACK[0x668] ^ 0xFFFFFFA8) + (STACK[0x668] ^ 0xFFFFFFE9);
  LODWORD(STACK[0x5B4]) = v20 - ((2 * v20) & 0x58);
  LODWORD(STACK[0x600]) = (v14 ^ 0x14) + (v14 ^ 0x55) + (((v14 ^ 0x14) + (v14 ^ 0x55u)) >> 6 << 7);
  LODWORD(STACK[0x5A0]) = (v13 ^ 0x51) + (v13 ^ 0x10) - ((2 * ((v13 ^ 0x51) + (v13 ^ 0x10))) & 0x6E);
  v21 = STACK[0x5D8];
  v22 = *(STACK[0x5D8] + (v9 ^ 0xC7)) ^ ((v9 ^ 0x55) + (v9 ^ 0x14) - ((2 * ((v9 ^ 0x55) + (v9 ^ 0x14))) & 0xFFFFFFAA) - 43);
  LODWORD(STACK[0x5F8]) = (a6 ^ 0xFFFFFFC6) + (a6 ^ 0xFFFFFF87) - ((2 * ((a6 ^ 0xFFFFFFC6) + (a6 ^ 0xFFFFFF87))) & 0x7C);
  LODWORD(STACK[0x5C0]) = (a2 ^ 0x54) + (a2 ^ 0x15) - ((2 * ((a2 ^ 0x54) + (a2 ^ 0x15))) & 0xFFFFFFD4);
  LODWORD(STACK[0x618]) = (a7 ^ 0xFFFFFF8A) + (a7 ^ 0xFFFFFFCB) - ((2 * ((a7 ^ 0xFFFFFF8A) + (a7 ^ 0xFFFFFFCB))) & 0x7A);
  v23 = (a5 ^ 1) + (a5 ^ 0x40) - ((2 * ((a5 ^ 1) + (a5 ^ 0x40))) & 0xC8);
  LODWORD(STACK[0x5F0]) = (a3 ^ 0xFFFFFFC1) + a3 - 128 - 16 * (((a3 ^ 0xFFFFFFC1) + a3 - 128) >> 3);
  LODWORD(STACK[0x5A8]) = (a4 ^ 0x5C) + (a4 ^ 0x1D) - ((2 * ((a4 ^ 0x5C) + (a4 ^ 0x1D))) & 0xFFFFFFE3);
  LODWORD(STACK[0x620]) = (v16 ^ 0xFFFFFFBE) + ~v16;
  LODWORD(STACK[0x560]) = v18 + 2263;
  v24 = *(v21 + (((v18 - 41) ^ v15) ^ 0x99u));
  v25 = *(v21 + (a8 ^ 0xB2));
  v26 = a1 ^ 0x53;
  v27 = a3;
  v28 = a2;
  v29 = v16;
  v30 = *(v21 + v26);
  v31 = *(v21 + (v19 ^ 0x7BLL));
  v32 = v13 ^ 0x82;
  v33 = *(v21 + (v14 ^ 0xC7));
  v34 = *(v21 + v32);
  v35 = *(v21 + (a6 ^ 0x15));
  LOBYTE(v32) = *(v21 + (v28 ^ 0x87));
  v36 = *(v21 + (a7 ^ 0x18));
  v37 = *(v21 + (a5 ^ 0xD2));
  LOBYTE(v19) = *(v21 + (v27 ^ 0x53));
  v38 = *(v21 + (a4 ^ 0x8FLL));
  LODWORD(STACK[0x598]) = *(v21 + (v12 ^ 0xC0));
  LODWORD(STACK[0x668]) = *(v21 + (v29 ^ 0x6DLL));
  v39 = STACK[0x810];
  LODWORD(STACK[0x5D8]) = *(v21 + (STACK[0x810] ^ 0xA0));
  v40 = (v39 ^ 0x73) + (v39 ^ 0x32) - ((2 * ((v39 ^ 0x73) + (v39 ^ 0x32))) & 0x20);
  LODWORD(v26) = ((2 * (v22 ^ 0xC7)) & 0x19E) + (v22 ^ 0xE5F12F08);
  LODWORD(v21) = (BYTE1(v10) ^ v22 ^ 0xDA ^ 0x8A709760) - ((2 * ((v10 >> 8) ^ v22 ^ 0xDA)) & 0x13E) + v26 + 1;
  LODWORD(v26) = v26 + 437178417 + (BYTE1(v10) ^ ((BYTE1(v10) ^ 0xFFFFFFE2) - ((2 * (BYTE1(v10) ^ 0xFFFFFFE2) + 2) & 0x3D2491E2) + 512903410) ^ 0x3D695382 ^ (v21 - ((2 * v21 + 524054944) & 0x47F636DC) - 1281797058));
  v41 = *(&off_1E7F1D8C0 + v17 - 734) - 8;
  v42 = v41[((LODWORD(STACK[0x5E0]) + 20) ^ HIBYTE(v11) ^ v25) ^ 0xDF];
  v43 = v42 - ((2 * v42 + 76) & 0xFFFFFFDF);
  v44 = v41[((LODWORD(STACK[0x5C8]) - 114) ^ BYTE2(v11) ^ v24 ^ 0x2F)];
  v45 = v44 - ((2 * v44 + 76) & 0xFFFFFFBF);
  v46 = v41[((LODWORD(STACK[0x5D0]) - 19) ^ BYTE1(v11) ^ v30 ^ 0xB0)];
  v47 = v41[(v11 ^ (LODWORD(STACK[0x5B4]) + 44) ^ v31 ^ 0x3D)];
  v48 = v46 - ((2 * v46 + 76) & 0x66);
  v49 = v47 - ((2 * v47 + 76) & 0xFFFFFF96);
  v50 = v41[((LODWORD(STACK[0x600]) - 64) ^ HIBYTE(v10) ^ v33 ^ 0xB6)];
  v51 = v41[((LODWORD(STACK[0x5A0]) - 73) ^ BYTE2(v10) ^ v34 ^ 0xD9)];
  LODWORD(v26) = v41[(v26 - 968795172 - ((2 * v26) & 0x8C82B7DE) + 19) ^ 0xC6415BDC];
  v52 = v51 - ((2 * v51 + 76) & 0xFFFFFF9F);
  v53 = STACK[0x670];
  v54 = v41[(v10 ^ (LODWORD(STACK[0x5F8]) - 66) ^ v35 ^ 0x12)];
  v55 = v41[((LODWORD(STACK[0x5C0]) + 106) ^ HIWORD(LODWORD(STACK[0x670])) ^ v32) ^ 0xCF];
  v56 = v41[(LODWORD(STACK[0x670]) ^ (v23 - 28) ^ v37 ^ 0xA)];
  v57 = LODWORD(STACK[0x618]) + 61;
  LOBYTE(v39) = LODWORD(STACK[0x5F0]) + 120;
  v58 = LODWORD(STACK[0x5A8]) + 113;
  v43 += 21;
  LODWORD(STACK[0x618]) = v45 - 123;
  v59 = v49 + 113;
  v60 = v52 - 11;
  v61 = v26 - ((2 * v26 + 12) & 0x36) + 65;
  v62 = v56 - ((2 * v56 + 76) & 0x7A) - 29;
  LODWORD(v26) = v41[(v39 ^ HIBYTE(v53) ^ v19 ^ 0x56)];
  v63 = v26 - ((2 * v26 + 76) & 0xFFFFFFC8) + 10;
  LODWORD(v26) = v41[(v57 ^ BYTE1(v53) ^ v36) ^ 0xDF];
  v64 = v26 - ((2 * v26 + 76) & 0xFFFFFF9A) + 115;
  LODWORD(v26) = v41[(LODWORD(STACK[0x688]) ^ v58 ^ v38) ^ 0x3F];
  LODWORD(v19) = v41[((v40 - 112) ^ BYTE1(LODWORD(STACK[0x688])) ^ LODWORD(STACK[0x5D8]) ^ 0xA0)];
  LODWORD(v39) = v41[(LODWORD(STACK[0x620]) ^ HIWORD(LODWORD(STACK[0x688])) ^ LODWORD(STACK[0x668]) ^ 0x90)];
  LODWORD(STACK[0x670]) = v48 - 39;
  v65 = (v48 - 39) ^ 0x6E;
  LODWORD(STACK[0x600]) = v43;
  LODWORD(STACK[0x5A0]) = v59;
  LODWORD(STACK[0x5A8]) = v63;
  v66 = (v39 - ((2 * v39 + 76) & 0x58) - 46) ^ 0xFFFFFF8B;
  v67 = v62 ^ 0xFFFFFF81;
  v68 = v55 - ((2 * v55 + 76) & 0xFFFFFFCA) + 11;
  v69 = (v19 - ((2 * v19 + 76) & 0x62) + 87) ^ 0xFFFFFFF8;
  v70 = *(STACK[0x828] + 8 * (LODWORD(STACK[0x5B8]) | (4 * ((STACK[0x684] & 1) == 0)) & 0xEF | (16 * ((STACK[0x684] & 1) == 0))));
  v71 = v60 ^ 0xFFFFFFBC;
  v72 = STACK[0x618];
  STACK[0x568] = STACK[0x570] + 16;
  STACK[0x5F0] = v67;
  LODWORD(STACK[0x810]) = v67;
  LODWORD(STACK[0x558]) = v68 ^ 0x63;
  LODWORD(STACK[0x590]) = v72 ^ 0xFFFFFFC6;
  LODWORD(STACK[0x5D8]) = v61 ^ 0xFFFFFFDB;
  LODWORD(STACK[0x688]) = v69;
  STACK[0x5E0] = v69;
  LODWORD(STACK[0x668]) = v64 ^ 0x7C;
  LODWORD(STACK[0x58C]) = v43 ^ 0xFFFFFF98;
  LODWORD(STACK[0x550]) = v65;
  LODWORD(STACK[0x548]) = v54 - 2 * ((v54 + 38) & 0x53 ^ v54 & 1) - 8;
  LODWORD(STACK[0x540]) = v59 ^ 0xFFFFFFEF;
  STACK[0x5F8] = v66;
  LODWORD(STACK[0x538]) = v66;
  LODWORD(STACK[0x5D0]) = v63 ^ 0x20;
  LODWORD(STACK[0x530]) = (v26 + ((50 - 2 * v26) | 0xFFFFFFC5) + 68) ^ 0x1D;
  LODWORD(STACK[0x684]) = 1;
  LODWORD(STACK[0x580]) = v71;
  LODWORD(STACK[0x578]) = (v50 - ((2 * v50 + 76) & 0x58) - 46) ^ 0xFFFFFF85;
  return v70(v68);
}

uint64_t sub_1BAED3B28(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0x5C0]) = v10;
  STACK[0x670] = a6;
  STACK[0x5A8] = v16;
  LODWORD(STACK[0x600]) = v8;
  STACK[0x620] = a8;
  STACK[0x618] = v17;
  v19 = STACK[0x560];
  v20 = (LODWORD(STACK[0x560]) - 219580636) & 0xD16834E;
  LODWORD(STACK[0x514]) = (LODWORD(STACK[0x560]) + 672917125) & 0xD7E413ED;
  LODWORD(STACK[0x518]) = v20;
  v21 = (v11 ^ 0x4C) - 941860322 - ((v20 ^ 0x27C) & (2 * (v11 ^ 0x4C)));
  v22 = (a2 ^ 0xE8) + 994656845 - ((2 * (a2 ^ 0xE8)) & 0x198);
  v23 = v18;
  STACK[0x5B8] = a2;
  v24 = (a2 ^ ((a4 ^ 2) - (a4 ^ a2 ^ v14) - ((2 * ((a4 ^ 2) - (a4 ^ a2 ^ v14))) & 0xFFFFFF8C) - 58) ^ ((a2 ^ 0x17) + ((-4 - 2 * (a2 ^ 0x17)) | 9) - 3) ^ 0xFFFFFFD5) + (a4 ^ 2);
  v25 = v12;
  v26 = (v12 ^ 0x37) - ((2 * (v12 ^ 0x37)) & 0x128) + 1441156500;
  v27 = ((v26 & 0x6D ^ 0x104) - 1186098186 + ((2 * v26) & 0xCA ^ 0xFFFFFDF7)) ^ 0x465DC8E7 ^ ((v26 & 0x692 ^ 0x5FD) - ((2 * (v26 & 0x692 ^ 0x5FD)) & 0x7F4) - 15705094);
  v28 = ((v8 ^ 0x28) + 816442587 - ((2 * (v8 ^ 0x28)) & 0x1B6)) ^ 0x30A9ED58;
  v29 = (v9 ^ 0x3D) - 378463446 - ((2 * (v9 ^ 0x3D)) & 0x8E) + 29;
  v30 = (v29 & 0xEFF ^ 0xB47) - ((2 * (v29 & 0xEFF ^ 0xB47)) & 0x3A0);
  v31 = (782364066 - (v29 ^ 0xE9711B2A) - ((730 - 2 * (v29 ^ 0xE9711B2A)) & 0x5D43D86A)) ^ (v30 - 858172976) ^ 0xDFA9C0E8 ^ (((v30 - 858172976) ^ 0x3326AE2F) - ((2 * ((v30 - 858172976) ^ 0x3326AE2F) + 2) & 0x7BA2FA1A) + 1037139214);
  v32 = v31 + 136531806 - ((2 * v31 + 730) & 0x10469F6C);
  v33 = STACK[0x5F8];
  v34 = STACK[0x5F0];
  v35 = a8 ^ STACK[0x5F8] ^ STACK[0x5F0] ^ v15;
  LODWORD(STACK[0x5B4]) = v11;
  v36 = STACK[0x5E0];
  v37 = v35 ^ v11 ^ v8 ^ STACK[0x5E0];
  STACK[0x5C8] = v9;
  STACK[0x5A0] = v13;
  v38 = v37 ^ v17 ^ v9 ^ v13 ^ v23;
  v39 = STACK[0x3E8];
  v40 = *(STACK[0x3E8] + 8 * (((v13 ^ (((v19 - 123) & 0xED) + 83)) + 26935869 - ((2 * (v13 ^ (((v19 + 672917125) & 0xD7E413ED) + 83))) & 0x7A)) ^ 0x19B03B8));
  v41 = STACK[0x670];
  v42 = v38 ^ STACK[0x670] ^ v16 ^ (v24 - ((2 * v24) & 0xFFFFFF8A) + 69);
  STACK[0x598] = v15;
  v43 = v40 ^ *(v39 + 8 * (v15 ^ 0xF5u));
  LODWORD(STACK[0x3F4]) = STACK[0x5C0];
  LODWORD(STACK[0x3F8]) = STACK[0x530];
  LODWORD(STACK[0x400]) = STACK[0x538];
  LODWORD(STACK[0x404]) = STACK[0x580];
  LODWORD(STACK[0x408]) = STACK[0x540];
  LODWORD(STACK[0x3FC]) = STACK[0x548];
  LODWORD(STACK[0x40C]) = STACK[0x550];
  LODWORD(STACK[0x410]) = STACK[0x578];
  LODWORD(STACK[0x420]) = STACK[0x5D8];
  LODWORD(STACK[0x414]) = STACK[0x5D0];
  LODWORD(STACK[0x428]) = STACK[0x590];
  LODWORD(STACK[0x424]) = STACK[0x58C];
  LODWORD(STACK[0x418]) = STACK[0x558];
  LODWORD(STACK[0x41C]) = STACK[0x810];
  LODWORD(STACK[0x42C]) = STACK[0x668];
  LODWORD(STACK[0x430]) = STACK[0x688];
  v44 = *(v39 + 8 * ((v21 + 378) ^ 0xC7DC5A1E));
  v45 = STACK[0x710];
  v46 = *(v39 + 8 * (v41 ^ 0x1Bu));
  LODWORD(v41) = v22 + 383;
  LODWORD(v44) = v42 ^ v43 ^ v44;
  v47 = *(v39 + 8 * ((v32 + 453) ^ 0x8234F5Eu));
  v48 = *(v39 + 8 * (a8 ^ 0xEBu));
  v49 = *(v39 + 8 * (v17 ^ 0x5Du));
  LODWORD(v44) = v44 ^ *(v39 + 8 * (((v16 ^ 0xC1) - 1400232415 - ((2 * (v16 ^ 0xC1)) & 0x140) + 383) ^ 0xAC8A2621)) ^ *(v39 + 8 * v27);
  v50 = *(v39 + 8 * (v34 ^ 0x53u));
  LODWORD(v46) = v46 ^ *(v39 + 8 * v28);
  v51 = *(v39 + 8 * (v23 ^ 0xAAu));
  v52 = *(v39 + 8 * (v41 ^ 0x3B49424D));
  STACK[0x570] = STACK[0x568];
  STACK[0x5C0] = a4;
  LODWORD(v49) = v44 ^ v46 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ *(v39 + 8 * (a4 ^ 0x82u)) ^ *(v39 + 8 * (v33 ^ 0x4Cu)) ^ *(v39 + 8 * (v36 ^ 0xA3u)) ^ v47;
  v53 = *(&off_1E7F1D8C0 + (v19 ^ 0x8BB)) - 12;
  STACK[0x5D8] = v53;
  LODWORD(STACK[0x58C]) = ((v49 ^ v25 ^ 0x7E) + (v49 ^ v25 ^ 0x3F) - ((2 * ((v49 ^ v25 ^ 0x7E) + (v49 ^ v25 ^ 0x3F))) & 0xFFFFFFAC) - 42) ^ v53[(v49 ^ v25) ^ 0xECLL];
  LODWORD(STACK[0x528]) = v45;
  v54 = STACK[0x684];
  LODWORD(STACK[0x438]) = v45 & STACK[0x684];
  return (*(STACK[0x828] + 8 * ((46 * ((v45 & v54 & 1) == 0)) ^ v19)))();
}

uint64_t sub_1BAED4210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v7 = STACK[0x518];
  STACK[0x5D0] = a6 ^ 0xFFFFFF91;
  STACK[0x710] = a6 ^ v6;
  STACK[0x688] = a6 ^ 0x38;
  STACK[0x810] = a6 ^ 0x42;
  return (*(a1 + 8 * v7))();
}

uint64_t sub_1BAED42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = STACK[0x514];
  STACK[0x810] = a6 ^ 0x34u;
  STACK[0x688] = a6 ^ 0xFFFFFF90;
  STACK[0x5D0] = a6 ^ 0x4Eu;
  v7 = *(a1 + 8 * v6);
  STACK[0x710] = a6 ^ 0xFFFFFF8C;
  return v7();
}

uint64_t sub_1BAED4334(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  STACK[0x580] = v10;
  STACK[0x668] = a6 ^ a2;
  STACK[0x578] = v6 - v7;
  return (*(a1 + 8 * (((((v8 ^ 0x5BA) - 495) ^ (v8 + 112)) * (v9 & ~a4)) ^ v8)))();
}

uint64_t sub_1BAED439C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x5D0] = a68 ^ STACK[0x5D0] ^ 0xFFFFFFAF;
  STACK[0x810] = a67 ^ STACK[0x810] ^ 0xFFFFFF89;
  STACK[0x710] = a65 ^ STACK[0x710] ^ 0xFFFFFFF8;
  STACK[0x688] = a66 ^ STACK[0x688] ^ a2;
  return (*(a1 + 8 * (a3 - 639)))();
}

uint64_t sub_1BAED44F8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x5D0] = LODWORD(STACK[0x63C]) ^ STACK[0x5D0] ^ 0x2B;
  STACK[0x810] = LODWORD(STACK[0x64C]) ^ STACK[0x810] ^ 0xFFFFFFA2;
  STACK[0x710] = LODWORD(STACK[0x640]) ^ STACK[0x710] ^ 0xFFFFFFBC;
  STACK[0x688] = LODWORD(STACK[0x638]) ^ STACK[0x688] ^ 0xFFFFFFCA;
  return (*(a1 + 8 * (a2 - 639)))();
}

uint64_t sub_1BAED4628(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, unint64_t a6, int a7)
{
  STACK[0x4C8] = v15;
  STACK[0x538] = v14;
  LODWORD(STACK[0x568]) = a7;
  STACK[0x590] = a6;
  LODWORD(STACK[0x4A0]) = (v9 ^ 0x61) + (v9 ^ 0x20) + ((a7 + 1536) ^ 0x2F) - ((2 * ((v9 ^ 0x61) + (v9 ^ 0x20))) & 0x5E);
  LODWORD(STACK[0x488]) = (a3 ^ 0x79) + (a3 ^ 0x38) - ((2 * ((a3 ^ 0x79) + (a3 ^ 0x38))) & 0x46);
  v17 = v12;
  v18 = STACK[0x5D8];
  STACK[0x4B0] = v8;
  LODWORD(STACK[0x4A8]) = (v8 ^ 0xFFFFFFD8) + (v8 ^ 0xFFFFFF99) - ((2 * ((v8 ^ 0xFFFFFFD8) + (v8 ^ 0xFFFFFF99))) & 0x64);
  STACK[0x4D8] = v10;
  LODWORD(STACK[0x4C0]) = (v10 ^ 0x6C) + (v10 ^ 0x2D) - ((2 * ((v10 ^ 0x6C) + (v10 ^ 0x2D))) & 0x52);
  LODWORD(STACK[0x4E8]) = (v15 ^ 0x28) + (v15 ^ 0x69) + (~(2 * ((v15 ^ 0x28) + (v15 ^ 0x69))) | 0x7F);
  STACK[0x4D0] = v13;
  LODWORD(STACK[0x4B8]) = (v13 ^ 0x63) + (v13 ^ 0x22) - ((2 * ((v13 ^ 0x63) + (v13 ^ 0x22))) & 0x66);
  STACK[0x530] = v7;
  LODWORD(STACK[0x514]) = (v7 ^ 0x35) + (v7 ^ 0x74) - ((2 * ((v7 ^ 0x35) + (v7 ^ 0x74))) & 0xFFFFFFDA);
  STACK[0x4F8] = a5;
  LODWORD(STACK[0x4F0]) = (a5 ^ 0xFFFFFFBD) + (a5 ^ 0xFFFFFFFC) - ((2 * ((a5 ^ 0xFFFFFFBD) + (a5 ^ 0xFFFFFFFC))) & 0x7C);
  v19 = (STACK[0x5D0] ^ 0x77) + (STACK[0x5D0] ^ 0x36);
  LODWORD(STACK[0x4E0]) = v19 - ((2 * v19) & 0xFFFFFFBA);
  STACK[0x508] = v17;
  LODWORD(STACK[0x500]) = (v17 ^ 0x64) + (v17 ^ 0x25) - ((2 * ((v17 ^ 0x64) + (v17 ^ 0x25))) & 0xFFFFFFBA);
  v20 = (STACK[0x710] ^ 0xFFFFFF9D) + (STACK[0x710] ^ 0xFFFFFFDC);
  LODWORD(STACK[0x518]) = v20 - ((2 * v20) & 0x62);
  v21 = (STACK[0x810] ^ 0x21) + (STACK[0x810] ^ 0x60);
  LODWORD(STACK[0x540]) = v21 + (~(2 * v21) | 0xD);
  STACK[0x550] = v16;
  LODWORD(STACK[0x548]) = (v16 ^ 0xFFFFFFE0) + (v16 ^ 0xFFFFFFA1) - ((2 * ((v16 ^ 0xFFFFFFE0) + (v16 ^ 0xFFFFFFA1))) & 0x58);
  v22 = (STACK[0x688] ^ 0x2C) + (STACK[0x688] ^ 0x6D);
  LODWORD(STACK[0x560]) = v22 - ((2 * v22) & 0x50);
  LODWORD(STACK[0x558]) = (v14 ^ 0xFFFFFF98) + (v14 ^ 0xFFFFFFD9) - ((2 * ((v14 ^ 0xFFFFFF98) + (v14 ^ 0xFFFFFFD9))) & 0x54);
  LODWORD(v17) = STACK[0x5B4];
  LODWORD(STACK[0x450]) = STACK[0x5B4] & 0xD3 ^ ((STACK[0x5B4] & 0x2C ^ 0xFFFFFFDB) - ((2 * LODWORD(STACK[0x5B4])) & 0x40) - 96);
  v23 = (STACK[0x5A8] ^ 0xFFFFFFC5) + (STACK[0x5A8] ^ 0xFFFFFF84);
  LODWORD(STACK[0x440]) = v23 - 2 * (v23 & 7);
  v24 = (STACK[0x670] ^ 0xFFFFFFDE) + (STACK[0x670] ^ 0xFFFFFF9F);
  LODWORD(STACK[0x460]) = v24 - 2 * (v24 & 0x3F);
  v25 = (LODWORD(STACK[0x600]) ^ 0x6D) + (LODWORD(STACK[0x600]) ^ 0x2C);
  LODWORD(STACK[0x44C]) = v25 - ((2 * v25) & 0xFFFFFFD0);
  v26 = (STACK[0x5C8] ^ 0x7F) + (STACK[0x5C8] ^ 0x3E);
  LODWORD(STACK[0x478]) = v26 - ((2 * v26) & 0x26);
  v27 = v11;
  v28 = (STACK[0x620] ^ 0x2B) + (STACK[0x620] ^ 0x6A);
  LODWORD(STACK[0x468]) = v28 - ((2 * v28) & 0x16);
  v29 = (STACK[0x618] ^ 0xFFFFFF9C) + (STACK[0x618] ^ 0xFFFFFFDD);
  LODWORD(STACK[0x458]) = v29 - ((2 * v29) & 0xFFFFFFA0);
  v30 = (STACK[0x5F0] ^ 0xFFFFFFD0) + (STACK[0x5F0] ^ 0xFFFFFF91);
  LODWORD(STACK[0x470]) = v30 - ((2 * v30) & 0xFFFFFFDA);
  v31 = (STACK[0x580] ^ 0x28) + (STACK[0x580] ^ 0x69);
  LODWORD(STACK[0x480]) = v31 - ((2 * v31) & 0x38);
  v32 = STACK[0x5B8];
  v33 = (STACK[0x5B8] ^ 0xFFFFFFAD) + (STACK[0x5B8] ^ 0xFFFFFFEC);
  LODWORD(STACK[0x490]) = v33 - ((2 * v33) & 0xFFFFFFAE);
  v34 = STACK[0x5C0];
  v35 = (STACK[0x5C0] ^ 0x47) + (STACK[0x5C0] ^ 6);
  LODWORD(STACK[0x498]) = v35 - ((2 * v35) & 0x2A);
  v36 = STACK[0x5F8];
  v37 = (STACK[0x5F8] ^ 0xFFFFFF8A) + (STACK[0x5F8] ^ 0xFFFFFFCB);
  LODWORD(STACK[0x5B4]) = v37 - ((2 * v37) & 0xFFFFFF9C);
  v38 = STACK[0x5E0];
  v39 = (STACK[0x5E0] ^ 0x64) + (STACK[0x5E0] ^ 0x25);
  v40 = v39 - ((2 * v39) & 0x6A);
  v41 = ((v17 ^ 0x48) + (v17 ^ 9) - 8 * (((v17 ^ 0x48) + (v17 ^ 9)) >> 2) + 124) ^ (LODWORD(STACK[0x4A8]) - 78) ^ *(v18 + (STACK[0x4B0] ^ 0x4ALL)) ^ *(v18 + (LODWORD(STACK[0x450]) ^ 0xFFFFFFE0)) ^ 0xCE;
  v42 = (((v41 + 8482220 - ((2 * v41) & 0x5A)) << 8) + 1016064) ^ 0x817D2D00;
  LODWORD(STACK[0x5A0]) = v42 - 264568043 - ((2 * v42) & 0x60760600);
  v43 = (((((LOBYTE(STACK[0x490]) - 41) ^ (LOBYTE(STACK[0x540]) - 6) ^ *(v18 + (STACK[0x810] ^ 0xF2)) ^ *(v18 + (v32 ^ 0x3FLL)) ^ 0x2E) - ((2 * ((LODWORD(STACK[0x490]) - 41) ^ (LODWORD(STACK[0x540]) - 6) ^ *(v18 + (STACK[0x810] ^ 0xF2)) ^ *(v18 + (v32 ^ 0x3FLL)) ^ 0x2E)) & 0x6C)) << 16) - 818544640) ^ 0xCF360000;
  v44 = (((((LOBYTE(STACK[0x498]) + 21) ^ (LOBYTE(STACK[0x548]) - 84) ^ *(v18 + (STACK[0x550] ^ 0x72)) ^ *(v18 + (v34 ^ 0xD5)) ^ 0xB9) - ((2 * ((LODWORD(STACK[0x498]) + 21) ^ (LODWORD(STACK[0x548]) - 84) ^ *(v18 + (STACK[0x550] ^ 0x72)) ^ *(v18 + (v34 ^ 0xD5)) ^ 0xB9)) & 0x1AA)) << 8) - 1921657600) ^ 0x8D75D500;
  v45 = (v44 - 2012818924 - ((2 * v44) & 0x100DA400)) ^ 0x8806D214 | (v43 - 1088587206 - ((2 * v43) & 0x7E3A0000)) ^ 0xBF1D7A3A;
  v46 = (v40 - 75) ^ (LODWORD(STACK[0x558]) + 42) ^ *(v18 + (STACK[0x538] ^ 0xALL)) ^ *(v18 + (v38 ^ 0xF6)) ^ 0x9F;
  v47 = (((v46 - ((2 * v46) & 0xB8)) << 24) + 1543503872) ^ 0x5C000000;
  v48 = (LODWORD(STACK[0x5B4]) - 50) ^ (LODWORD(STACK[0x560]) + 40) ^ *(v18 + (STACK[0x688] ^ 0xBELL)) ^ *(v18 + (v36 ^ 0x18)) ^ 0xE6;
  v49 = (v45 - 609245583 - ((2 * v45) & 0xB75F4CE2)) ^ 0xDBAFA671 | (v48 - 1880688719 - ((2 * v48) & 0x162)) ^ 0x8FE6F7B1;
  v50 = (v49 - 761825655 - ((2 * v49) & 0xA52EED12)) ^ 0xD2977689 | (v47 - 961777807 - ((2 * v47) & 0x8C000000)) ^ 0xC6AC6F71;
  return (*(STACK[0x828] + 8 * SLODWORD(STACK[0x568])))(v50 + 1735944317, ((STACK[0x58C] & 7 ^ 6) + 1907050827 - 2 * ((STACK[0x58C] & 7 ^ 6) & 3)) ^ 0x71AB494Bu, v27, (2 * v50) & 0xCEF0D0FA, ((LODWORD(STACK[0x58C]) >> 3) ^ 8) - ((LODWORD(STACK[0x58C]) >> 2) & 6) + 1873142883, (a7 + 1536) ^ 0xA57u, 1216922276);
}

uint64_t sub_1BAED55A4@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W4>, int a4@<W5>, unsigned int a5@<W6>, int a6@<W8>)
{
  v17 = ((v10 ^ (8 * a5)) + ((5 * a4) ^ v15) - (v11 & (2 * (v10 ^ (8 * a5))))) ^ (v15 + 435) | a1;
  *(v16 + 8 * (a3 ^ a5 ^ v13)) = v6 ^ *(a2 + 8 * ((v7 + v17 - (v12 & (2 * v17)) + 381) ^ v7)) ^ v9;
  return (*(STACK[0x828] + 8 * (a6 ^ (8 * (((v14 + (a5 ^ v14) - ((2 * (a5 ^ v14) + 2) & v8) + 1) ^ (v14 - 36)) < 0x40)))))();
}

uint64_t sub_1BAEE5B8C()
{
  v0 = STACK[0x5C8];
  v1 = STACK[0x5C8] ^ 0x27;
  v2 = (STACK[0x5C8] - 1534348547) & 0x5B744FEF;
  v3 = (STACK[0x528] & 1) == 0;
  v4 = STACK[0x664];
  if ((STACK[0x528] & 1) == 0)
  {
    v4 = -66;
  }

  LODWORD(STACK[0x664]) = v4;
  v5 = STACK[0x660];
  if (v3)
  {
    v5 = 22;
  }

  LODWORD(STACK[0x660]) = v5;
  v6 = STACK[0x65C];
  if (v3)
  {
    v6 = 84;
  }

  LODWORD(STACK[0x65C]) = v6;
  v7 = STACK[0x658];
  if (v3)
  {
    v7 = 64;
  }

  LODWORD(STACK[0x658]) = v7;
  v8 = STACK[0x654];
  if (v3)
  {
    v8 = 13;
  }

  LODWORD(STACK[0x654]) = v8;
  v9 = STACK[0x650];
  if (v3)
  {
    v9 = 52;
  }

  LODWORD(STACK[0x650]) = v9;
  v10 = STACK[0x648];
  if (v3)
  {
    v10 = 21;
  }

  LODWORD(STACK[0x648]) = v10;
  v11 = STACK[0x64C];
  if (v3)
  {
    v11 = -94;
  }

  LODWORD(STACK[0x64C]) = v11;
  v12 = STACK[0x644];
  if (v3)
  {
    v12 = -24;
  }

  LODWORD(STACK[0x644]) = v12;
  v13 = STACK[0x640];
  if (v3)
  {
    v13 = -68;
  }

  LODWORD(STACK[0x640]) = v13;
  v14 = STACK[0x63C];
  if (v3)
  {
    v14 = 43;
  }

  LODWORD(STACK[0x63C]) = v14;
  v15 = STACK[0x638];
  if (v3)
  {
    v15 = -54;
  }

  LODWORD(STACK[0x638]) = v15;
  v16 = STACK[0x634];
  if (v3)
  {
    v16 = 78;
  }

  LODWORD(STACK[0x634]) = v16;
  v17 = STACK[0x630];
  if (v3)
  {
    v17 = 100;
  }

  LODWORD(STACK[0x630]) = v17;
  v18 = STACK[0x628];
  if (v3)
  {
    v18 = -119;
  }

  LODWORD(STACK[0x628]) = v18;
  v19 = STACK[0x62C];
  if (v3)
  {
    v19 = -74;
  }

  LODWORD(STACK[0x62C]) = v19;
  return (*(STACK[0x828] + 8 * (((v1 ^ 0x272 ^ v2) * (STACK[0x684] & 1)) ^ v0)))();
}

uint64_t sub_1BAEE5D94@<X0>(int a1@<W6>, int a2@<W8>)
{
  LODWORD(STACK[0x710]) = v4 - 711;
  v17 = STACK[0x590];
  v18 = STACK[0x590] ^ 0xFFFFFF89;
  STACK[0x810] = STACK[0x590] ^ 0xFFFFFFE5;
  STACK[0x668] = v17 ^ 0x2A;
  v19 = *(STACK[0x828] + 8 * v4);
  LODWORD(STACK[0x62C]) = v7;
  LODWORD(STACK[0x628]) = v6;
  LODWORD(STACK[0x630]) = v9;
  LODWORD(STACK[0x634]) = v10;
  LODWORD(STACK[0x638]) = v11;
  LODWORD(STACK[0x63C]) = v13;
  LODWORD(STACK[0x640]) = v12;
  LODWORD(STACK[0x644]) = v14;
  LODWORD(STACK[0x64C]) = v15;
  LODWORD(STACK[0x648]) = v16;
  LODWORD(STACK[0x650]) = a2;
  LODWORD(STACK[0x654]) = v2;
  LODWORD(STACK[0x658]) = v3;
  LODWORD(STACK[0x65C]) = a1;
  LODWORD(STACK[0x660]) = v5;
  LODWORD(STACK[0x664]) = v8;
  return v19(v17 ^ 0xFFFFFF95, v18, v17 ^ 0x32, v17 ^ 0x77, v17 ^ 0xD, v17 ^ 0xFFFFFFE0);
}

uint64_t sub_1BAEE5E6C()
{
  v1 = STACK[0x590];
  v2 = STACK[0x590] ^ 0xFFFFFF99;
  v3 = STACK[0x590] ^ 0xFFFFFF80;
  v4 = STACK[0x590] ^ 0xFFFFFFE2;
  STACK[0x810] = STACK[0x590] ^ 0xFFFFFFE3;
  return (*(STACK[0x828] + 8 * v0))(v4, v2, v3, v1 ^ 0x5B, v1 ^ 0x44, v1 ^ 0x1E);
}

uint64_t sub_1BAEE5F54()
{
  LODWORD(STACK[0x670]) = LODWORD(STACK[0x620]) - 177149424;
  LODWORD(STACK[0x688]) = LODWORD(STACK[0x618]) + 503710482;
  return (*(v1 + 8 * ((63 * ((((373 * (v0 ^ 0x11D)) ^ LODWORD(STACK[0x684])) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1BAEE5FD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = a1 ^ LODWORD(STACK[0x644]) ^ (((v8 - 119) | 0x242u) - 2);
  v11 = LODWORD(STACK[0x658]) ^ a6 ^ 0x40u;
  v12 = LODWORD(STACK[0x628]) ^ a8 ^ 0xFFFFFF89;
  STACK[0x668] = LODWORD(STACK[0x62C]) ^ STACK[0x668] ^ 0xFFFFFFB6;
  v13 = LODWORD(STACK[0x634]) ^ a5 ^ 0x4Eu;
  v14 = LODWORD(STACK[0x64C]) ^ a4 ^ 0xFFFFFFA2;
  v15 = LODWORD(STACK[0x65C]) ^ a2 ^ 0x54u;
  v16 = LODWORD(STACK[0x640]) ^ a3 ^ 0xFFFFFFBC;
  v17 = LODWORD(STACK[0x63C]) ^ a7 ^ 0x2Bu;
  STACK[0x810] = LODWORD(STACK[0x648]) ^ STACK[0x810] ^ 0x15;
  return (*(v9 + 8 * v8))(v10, v15, v16, v14, v13, v11, v17, v12);
}

uint64_t sub_1BAEE60F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0x514]) = v10;
  LODWORD(STACK[0x5B4]) = v9;
  STACK[0x620] = a8;
  STACK[0x5B8] = a2;
  STACK[0x5C0] = a4;
  STACK[0x5C8] = v8;
  return (*(STACK[0x828] + 8 * ((55 * ((STACK[0x434] & 1) == 0)) ^ LODWORD(STACK[0x518]))))(a1);
}

uint64_t sub_1BAEE61B0@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, int a47, int a48, int a49, uint64_t a50, int a51, int a52, int a53, int a54, unsigned int a55, int a56, int a57, int a58, int a59)
{
  v69 = STACK[0x570];
  *(v69 - 0x232B1D46A457C4D8) = v64 ^ 0xB7;
  *(v69 - 0x232B1D46A457C4D3) = v63 ^ 0xF3;
  *(v69 - 0x232B1D46A457C4D1) = v66 ^ 0xD;
  *(v69 - 0x232B1D46A457C4D7) = a5 ^ 0x5B;
  *(v69 - 0x232B1D46A457C4D9) = v60 ^ 7;
  *(v69 - 0x232B1D46A457C4D6) = v68 ^ ((v59 + 28) | 0xB8) ^ 0x5D;
  *(v69 - 0x232B1D46A457C4D4) = a3 ^ 0x27;
  *(v69 - 0x232B1D46A457C4CFLL) = v65 ^ 0x55;
  *(v69 - 0x232B1D46A457C4D5) = a1 ^ 0x44;
  *(v69 - 0x232B1D46A457C4D2) = STACK[0x5C8] ^ 0x3A;
  *(v69 - 0x232B1D46A457C4CDLL) = a2 ^ 0xF5;
  *(v69 - 0x232B1D46A457C4CALL) = a4 ^ 0xD9;
  *(v69 - 0x232B1D46A457C4CBLL) = a6 ^ 0x44;
  *(v69 - 0x232B1D46A457C4D0) = v67 ^ 0xA5;
  STACK[0x568] = v69 - 16;
  *(v69 - 0x232B1D46A457C4CCLL) = a7 ^ 0x1F;
  STACK[0x5A0] = a59 ^ LODWORD(STACK[0x424]) ^ 3u;
  *(v69 - 0x232B1D46A457C4CELL) = v61 ^ 0xC;
  STACK[0x598] = a57 ^ LODWORD(STACK[0x428]) ^ 0xFFFFFF91;
  LODWORD(STACK[0x514]) = a56 ^ LODWORD(STACK[0x40C]) ^ 0x4C;
  LODWORD(STACK[0x5B4]) = a58 ^ LODWORD(STACK[0x408]) ^ 0x61;
  STACK[0x5A8] = a55 ^ LODWORD(STACK[0x410]) ^ v62;
  STACK[0x670] = a54 ^ LODWORD(STACK[0x404]) ^ 0xFFFFFFDD;
  STACK[0x5C8] = a53 ^ LODWORD(STACK[0x3FC]) ^ 0x7Bu;
  LODWORD(STACK[0x600]) = a52 ^ LODWORD(STACK[0x420]) ^ 0x3A;
  STACK[0x618] = a51 ^ LODWORD(STACK[0x42C]) ^ 0xFFFFFF9A;
  STACK[0x620] = a46 ^ LODWORD(STACK[0x418]) ^ 0x36u;
  STACK[0x5B8] = a49 ^ LODWORD(STACK[0x3F8]) ^ 0xFFFFFFC3;
  STACK[0x5C0] = a48 ^ LODWORD(STACK[0x3F4]) ^ 0xFFFFFF84;
  v70 = *(STACK[0x828] + 8 * (v59 - 445));
  LODWORD(STACK[0x684]) = 1;
  return v70();
}

uint64_t sub_1BAEE64E8@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  *(a55 - 0x6E6F5D080FB715A2) = v56 ^ (v55 - 43) & 0x3F ^ 0x38;
  *(a55 - 0x6E6F5D080FB715A1) = v59 ^ 0xB7;
  *(a55 - 0x6E6F5D080FB715A0) = a5 ^ 0x5B;
  *(a55 - 0x6E6F5D080FB7159FLL) = v63 ^ 0xA3;
  *(a55 - 0x6E6F5D080FB7159BLL) = STACK[0x5C8] ^ 0x3A;
  *(a55 - 0x6E6F5D080FB7159CLL) = v58 ^ 0xF3;
  *(a55 - 0x6E6F5D080FB7159ELL) = a1 ^ 0x44;
  *(a55 - 0x6E6F5D080FB71599) = v62 ^ 0xA5;
  *(a55 - 0x6E6F5D080FB71593) = a4 ^ 0xD9;
  *(a55 - 0x6E6F5D080FB7159DLL) = a3 ^ 0x27;
  *(a55 - 0x6E6F5D080FB71598) = v60 ^ 0x55;
  *(a55 - 0x6E6F5D080FB71595) = a7 ^ 0x1F;
  *(a55 - 0x6E6F5D080FB7159ALL) = v61 ^ 0xD;
  *(a55 - 0x6E6F5D080FB71596) = a2 ^ 0xF5;
  *(a55 - 0x6E6F5D080FB71597) = v57 ^ 0xC;
  *(a55 - 0x6E6F5D080FB71594) = a6 ^ 0x44;
  v64 = *(STACK[0x828] + 8 * (v55 + 321));
  STACK[0x568] = STACK[0x570];
  return v64();
}

uint64_t sub_1BAEE66F8@<X0>(char a1@<W0>, char a2@<W2>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v23 = 2 * (v13 ^ 0x704);
  v24 = STACK[0x570];
  *(v24 - 0x232B1D46A457C4D4) = v23 ^ a2 ^ 0x7B;
  *(v24 - 0x232B1D46A457C4D3) = v16 ^ 0xF3;
  *(v24 - 0x232B1D46A457C4D8) = v17 ^ 0xB7;
  *(v24 - 0x232B1D46A457C4D5) = v21 ^ 0x44;
  *(v24 - 0x232B1D46A457C4D6) = v22 ^ 0xA3;
  *(v24 - 0x232B1D46A457C4D7) = a4 ^ 0x5B;
  *(v24 - 0x232B1D46A457C4D9) = v14 ^ 7;
  *(v24 - 0x232B1D46A457C4D2) = STACK[0x5C8] ^ 0x3A;
  *(v24 - 0x232B1D46A457C4CALL) = v18 ^ 0xD9;
  *(v24 - 0x232B1D46A457C4CELL) = v15 ^ 0xC;
  *(v24 - 0x232B1D46A457C4CCLL) = a6 ^ 0x1F;
  *(v24 - 0x232B1D46A457C4CFLL) = v19 ^ 0x55;
  *(v24 - 0x232B1D46A457C4D1) = a1 ^ 0xD;
  *(v24 - 0x232B1D46A457C4D0) = v20 ^ 0xA5;
  *(v24 - 0x232B1D46A457C4CBLL) = a5 ^ 0x44;
  *(v24 - 0x232B1D46A457C4CDLL) = a3 ^ 0xF5;
  return (*(STACK[0x828] + 8 * v23))(a13);
}

uint64_t sub_1BAEE6A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  LODWORD(v67) = 0;
  STACK[0x4F0] = &a46 + v55;
  STACK[0x4F8] = &a39 + v55;
  STACK[0x500] = &a44 + v55;
  STACK[0x508] = &a19 + v56 + 4;
  STACK[0x510] = &a31 + v57;
  STACK[0x518] = &a34 + v56 + 4;
  STACK[0x520] = &STACK[0x3C8021C360C63564];
  STACK[0x528] = &a49 + v57;
  STACK[0x530] = &a28 + v57;
  STACK[0x538] = &a34 + 4;
  HIDWORD(a34) = 0;
  HIDWORD(v67) = v58;
  STACK[0x540] = &a54;
  a54 = 0;
  STACK[0x548] = &a49;
  a49 = a7;
  STACK[0x550] = &a28;
  a28 = a7;
  if (v54)
  {
    v63 = a3 == 0;
  }

  else
  {
    v63 = 1;
  }

  v65 = v63 || a4 == 0;
  LODWORD(STACK[0x20C]) = a2;
  return (*(v61 + 8 * ((52 * ((v65 ^ (v62 - v59 - 97)) & 1)) | (v60 + v62 + 480))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a1, a11, a12, a13, a14, v67, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_1BAEE6B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  LODWORD(a12) = v61 - 217398559 - ((2 * v61) & 0xE61585C2);
  *(v65 - 108) = v64 + 407104343 * ((v65 - 112) ^ 0x42914BA8) + 1644605905;
  (*(v62 + 8 * (v64 ^ 0xBFE)))(v65 - 112, a2, a3, a4, a5, a6, a7, a8);
  *(v65 - 232) = 0xCAA3BA6C7260CB45;
  *(v65 - 224) = -94595479;
  *(v65 - 216) = 0;
  *(v65 - 208) = 1468950634;
  *(v65 - 204) = 393756733;
  *(v65 - 200) = 841466050;
  *(v65 - 196) = 1175544574;
  *(v65 - 192) = 0xCAA3BA6C7260CB45;
  *(v65 - 184) = a12;
  *(v65 - 176) = 0;
  *(v65 - 168) = 206507310;
  *(v65 - 164) = 393756733;
  *(v65 - 160) = 841466050;
  *(v65 - 156) = 1175544574;
  *(v65 - 152) = 0xCAA3BA6C7260CB45;
  *(v65 - 144) = -217398559;
  *(v65 - 136) = a6;
  *(v65 - 128) = 618280359;
  *(v65 - 124) = 393756735;
  *(v65 - 120) = ((2 * v63) & 0x645FEB7C) + (v63 ^ 0x322FF5BE) + (((v64 + 495) | 3) ^ (v64 - 538894));
  *(v65 - 116) = 1175544574;
  STACK[0x558] = v65 + 0x4FE34AC4955B2F8ALL;
  v67 = (*(v62 + 8 * (v64 ^ 0xB23)))(128);
  STACK[0x560] = v67 + 0x4BCC923D0A7CA640;
  return (*(v62 + 8 * ((102 * (v67 != 0)) ^ v64)))(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a4, a3, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v67 + 0x4BCC923D0A7CA640, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_1BAEE6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = (*(v55 + 8 * (v56 + 2273)))(112, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x568] = v57;
  return (*(v55 + 8 * (((v57 == 0) * (((v56 - 6) ^ 0x19) + ((v56 + 264034750) & 0xF04327AE) - 1126)) ^ (v56 - 6))))(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v57 + 0xE81173800FA8871, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAEE6DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x518] = &a27 + v67;
  STACK[0x520] = &a65 + v67;
  STACK[0x528] = &a51 + v67;
  STACK[0x530] = &a44 + v68;
  STACK[0x538] = &STACK[0x731B2333505620CC];
  STACK[0x540] = &a45 + v68;
  STACK[0x548] = &a63 + v68;
  LODWORD(STACK[0x9F4]) = 0;
  HIDWORD(a32) = v69;
  STACK[0x550] = &a26;
  a26 = 0;
  LODWORD(STACK[0x4EC]) = v66 + v70 - (((31 * (v74 ^ (v71 + 16))) ^ 0xFC0839CE) & (2 * v66));
  STACK[0x558] = &a45;
  a45 = a7;
  STACK[0x560] = &a63;
  a63 = a7;
  if (v66)
  {
    v75 = a6 == 0;
  }

  else
  {
    v75 = 1;
  }

  v76 = v75 || a3 == 0;
  a66 = a2;
  v78 = !v76 && a4 != 0;
  return (*(v73 + 8 * ((v72 + v74 + 526) ^ v78)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BAEE6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  *(v58 - 108) = v55 + 407104343 * ((v58 - 1664785792 - 2 * ((v58 - 112) & 0x9CC562F0)) ^ 0xDE542958) + 1644605100;
  v68 = a6;
  (*(v56 + 8 * (v55 + 1433)))(v58 - 112, a2, a3, a4, a5, a6, a7, a8);
  *(v58 - 232) = 0x3D21D251C7894B02;
  *(v58 - 224) = -490509647;
  *(v58 - 216) = 0;
  *(v58 - 208) = 1400970856;
  *(v58 - 204) = 1697246677;
  *(v58 - 200) = 506473162;
  *(v58 - 196) = 343397491;
  *(v58 - 192) = 0x3D21D251C7894B02;
  *(v58 - 184) = STACK[0x4EC];
  *(v58 - 176) = 0;
  *(v58 - 168) = 138527532;
  *(v58 - 164) = 1697246677;
  *(v58 - 160) = 506473162;
  *(v58 - 156) = 343397491;
  *(v58 - 152) = 0x3D21D251C7894B02;
  *(v58 - 144) = 2114199024;
  *(v58 - 136) = v68;
  LODWORD(v68) = (v55 - 1008357091) & 0x3C1A4BBF;
  *(v58 - 128) = 550300581;
  *(v58 - 124) = -176638301;
  *(v58 - 120) = (v57 ^ 0x5E3B7FCF) - 1074484489 + ((v57 << ((v55 + 29) & 0xBF ^ 0xA2)) & 0xF9E);
  *(v58 - 116) = 343397491;
  STACK[0x568] = v58 + 0x267DF3F0128AD15BLL;
  LODWORD(STACK[0x9F8]) = 0;
  v59 = (*(v56 + 8 * (v55 ^ 0xE44)))(128);
  STACK[0x570] = v59 + 0x4BCC923D0A7CA640;
  STACK[0x230] = 0x4BCC923D0A7CA640;
  return (*(v56 + 8 * (((v59 != 0) * ((v55 - 339) ^ 0x35C)) ^ v55)))(v59, v60, v61, 345984147, v62, v63, v64, v65, a9, a1, a11, v68, a4, a3, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v59 + 0x4BCC923D0A7CA640, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAEE7104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  HIDWORD(a11) = 157 * (a12 ^ 0x1AE);
  v43 = (*(v42 + 8 * (a12 + 2271)))(112, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x578] = v43;
  STACK[0x210] = STACK[0x570];
  HIDWORD(a41) = v41;
  return (*(v42 + 8 * (((v43 == 0) * ((HIDWORD(a11) - 1412) ^ (67 * (a12 ^ 0x1AB)))) ^ a12)))(v43, v44, v45, 345984147, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_1BAEE7198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = STACK[0x578];
  *v55 = 0x551AB9ED161FA3A6;
  qmemcpy((v55 + 72), "EhMFEhMFp/", 10);
  *(v55 + 8) = 5911;
  *(v55 + 10) = 23;
  *(v55 + 11) = 5911;
  *(v55 + 13) = 23;
  *(v55 + 14) = 5911;
  *(v55 + 16) = 23;
  *(v55 + 17) = 5911;
  *(v55 + 19) = 23;
  *(v55 + 20) = 5911;
  *(v55 + 22) = 23;
  *(v55 + 23) = 5911;
  *(v55 + 25) = 23;
  v56 = STACK[0x578];
  v57 = STACK[0x578];
  *(v56 + 26) = 5911;
  *(v56 + 28) = 23;
  *(v57 + 29) = 5911;
  *(v57 + 31) = 23;
  v58 = STACK[0x578];
  v59 = STACK[0x578];
  *(v58 + 32) = 5911;
  *(v58 + 34) = 23;
  *(v59 + 35) = 5911;
  *(v59 + 37) = 23;
  v60 = STACK[0x578];
  v61 = STACK[0x578];
  *(v60 + 38) = 5911;
  *(v60 + 40) = 23;
  *(v61 + 41) = 5911;
  *(v61 + 43) = 23;
  v62 = STACK[0x578];
  v63 = STACK[0x578];
  *(v62 + 44) = 5911;
  *(v62 + 46) = 23;
  *(v63 + 47) = 5911;
  *(v63 + 49) = 23;
  v64 = STACK[0x578];
  v65 = STACK[0x578];
  *(v64 + 50) = 5911;
  *(v64 + 52) = 23;
  *(v65 + 53) = 5911;
  *(v65 + 55) = 23;
  v66 = STACK[0x578];
  v67 = STACK[0x578];
  *(v66 + 56) = 5911;
  *(v66 + 58) = 23;
  *(v67 + 59) = 5911;
  *(v67 + 61) = 23;
  v68 = STACK[0x578];
  v69 = STACK[0x578];
  *(v68 + 62) = 5911;
  *(v68 + 64) = 23;
  *(v69 + 65) = 5911;
  *(v69 + 67) = 23;
  v70 = STACK[0x578];
  v71 = STACK[0x578];
  *(v70 + 68) = 5911;
  *(v70 + 70) = 23;
  *(v71 + 71) = 23;
  STACK[0x580] = a49;
  STACK[0x588] = a49 - 0xE81173800FA881DLL;
  *(a49 - 0xE81173800FA881DLL) = 0x17171717952CBA78;
  STACK[0x590] = a49 - 0xE81173800FA8809;
  *(a49 - 0xE81173800FA8809) = 114237931;
  STACK[0x598] = a49 - 0xE81173800FA8819;
  STACK[0x5A0] = a49 - 0xE81173800FA8818;
  STACK[0x5A8] = a49 - 0xE81173800FA8817;
  STACK[0x5B0] = a49 - 0xE81173800FA8816;
  STACK[0x5B8] = a49 - 0xE81173800FA8815;
  *(a49 - 0xE81173800FA8815) = 5911;
  STACK[0x5C0] = a49 - 0xE81173800FA8814;
  STACK[0x5C8] = a49 - 0xE81173800FA8813;
  *(a49 - 0xE81173800FA8813) = 5911;
  STACK[0x5D0] = a49 - 0xE81173800FA8812;
  v72 = STACK[0x580];
  v73 = STACK[0x580];
  v74 = (STACK[0x580] - 0xE81173800FA8811);
  STACK[0x5D8] = v74;
  *v74 = 5911;
  STACK[0x5E0] = v72 - 0xE81173800FA8810;
  STACK[0x5E8] = v73 - 0xE81173800FA880FLL;
  *(v73 - 0xE81173800FA880FLL) = 5911;
  STACK[0x5F0] = v73 - 0xE81173800FA880ELL;
  v75 = STACK[0x580];
  v76 = STACK[0x580];
  v77 = (STACK[0x580] - 0xE81173800FA880DLL);
  STACK[0x5F8] = v77;
  *v77 = 5911;
  STACK[0x600] = v75 - 0xE81173800FA880CLL;
  STACK[0x608] = v76 - 0xE81173800FA880BLL;
  *(v76 - 0xE81173800FA880BLL) = 5911;
  STACK[0x610] = v76 - 0xE81173800FA880ALL;
  v78 = STACK[0x580];
  v79 = (STACK[0x580] - 0xE81173800FA8805);
  STACK[0x618] = v79;
  *v79 = 75;
  v81 = v78 != v52 && a36 != 0x4BCC923D0A7CA640;
  STACK[0x620] = a36;
  HIDWORD(a52) = a4;
  return (*(v54 + 8 * ((v81 * (v53 - 1505 + ((v53 - 1505) ^ 0x55D) + 1697)) ^ v53)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1BAEE7538@<X0>(int a1@<W8>)
{
  v2 = STACK[0x580];
  v3 = STACK[0x580];
  v4 = STACK[0x620];
  v5 = STACK[0x620];
  *(v4 - 0x4BCC923D0A7CA630) = *(STACK[0x580] - 0xE81173800FA8871);
  *(v4 - 0x4BCC923D0A7CA5E8) = *(v2 - 0xE81173800FA8829);
  *(v4 - 0x4BCC923D0A7CA5E4) = *(v2 - 0xE81173800FA8825);
  *(v4 - 0x4BCC923D0A7CA5E0) = *(v2 - 0xE81173800FA8821);
  *(v4 - 0x4BCC923D0A7CA5DFLL) = *(v2 - 0xE81173800FA8820);
  *(v4 - 0x4BCC923D0A7CA5C8) = *STACK[0x590];
  *(v4 - 0x4BCC923D0A7CA5DCLL) = *STACK[0x588];
  STACK[0x7B0] = v2 - 0xE81173800FA8871;
  STACK[0x7B8] = v2 - 0xE81173800FA8829;
  *(v5 - 0x4BCC923D0A7CA5C4) = *STACK[0x618] & ((a1 - 78) & 0x5D ^ 0x7C) | 0x28;
  STACK[0x7C0] = v3 - 0xE81173800FA8869;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEE7A70()
{
  v2 = STACK[0x570];
  v3 = STACK[0x570];
  v4 = STACK[0x610];
  v5 = STACK[0x610];
  *(v4 - 0x4BCC923D0A7CA630) = *(STACK[0x570] - 0xE81173800FA8871);
  *(v4 - 0x4BCC923D0A7CA5E8) = *(v2 - 0xE81173800FA8829);
  *(v4 - 0x4BCC923D0A7CA5E4) = *(v2 - 0xE81173800FA8825);
  *(v4 - 0x4BCC923D0A7CA5E0) = *(v2 - 0xE81173800FA8821);
  *(v4 - 0x4BCC923D0A7CA5DFLL) = *(v2 - 0xE81173800FA8820);
  *(v4 - 0x4BCC923D0A7CA5C8) = *STACK[0x580];
  *(v4 - 0x4BCC923D0A7CA5DCLL) = *STACK[0x578];
  STACK[0x7B0] = v2 - 0xE81173800FA8871;
  STACK[0x7B8] = v2 - 0xE81173800FA8829;
  *(v5 - 0x4BCC923D0A7CA5C4) = v1 - 45 + (*STACK[0x608] & 1) - 45;
  STACK[0x7C0] = v3 - 0xE81173800FA8869;
  return (*(v0 + 8 * (v1 + 1475)))();
}

uint64_t sub_1BAEE7BE8()
{
  STACK[0x7C8] = v0 - 0x4BCC923D0A7CA628;
  STACK[0x2F8] = 888267148;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1BAEE7DDC()
{
  STACK[0x2F8] = v0;
  STACK[0x7D0] = STACK[0x570] - 0xE81173800FA8849;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_1BAEE7E18()
{
  STACK[0x2F8] = v0;
  STACK[0x7D0] = STACK[0x580] - 0xE81173800FA8849;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_1BAEE7E58@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  STACK[0x7D8] = v9 - 0x4BCC923D0A7CA608;
  STACK[0x300] = a2;
  return (*(v12 + 8 * v10))(STACK[0x7D0], a9, ((v10 + 1074922984) | 0xA000010A) ^ (v11 + 3), a1, 0xFFFFFFFFLL, a2 - 32);
}

uint64_t sub_1BAEE7F14@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W4>, uint64_t a5@<X8>)
{
  v14 = a5 - 888267117;
  *(v9 + v14) = *((v14 & 0xF) + v7 + 5) ^ *(v6 + (v14 & 0xF)) ^ (127 * (v14 & 0xF)) ^ *((v14 & 0xF) + v8 + 4) ^ (v5 + ((*(a1 + v14) ^ 0x44) - ((a4 ^ (2 * *(a1 + v14))) & 0x88)) * ((-45 * (v10 ^ (v11 + 1))) ^ 0x40));
  return (*(v13 + 8 * ((v12 + v10 + 1080) ^ (((a2 == a3) << 6) | ((a2 == a3) << 7)))))();
}

uint64_t sub_1BAEE7FEC@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x610];
  v4 = STACK[0x610];
  *(v3 - 0x4BCC923D0A7CA5C9) = *STACK[0x600];
  *(v3 - 0x4BCC923D0A7CA5CALL) = *STACK[0x5F8];
  *(v3 - 0x4BCC923D0A7CA5CBLL) = *STACK[0x5F0];
  *(v3 - 0x4BCC923D0A7CA5CCLL) = *STACK[0x5E8];
  *(v3 - 0x4BCC923D0A7CA5CDLL) = *STACK[0x5E0];
  *(v3 - 0x4BCC923D0A7CA5CELL) = *STACK[0x5D8];
  *(v4 - 0x4BCC923D0A7CA5CFLL) = *STACK[0x5D0];
  *(v4 - 0x4BCC923D0A7CA5D0) = *STACK[0x5C8];
  v5 = STACK[0x610];
  v6 = STACK[0x610];
  *(v5 - 0x4BCC923D0A7CA5D1) = *STACK[0x5C0];
  *(v5 - 0x4BCC923D0A7CA5D2) = *STACK[0x5B8];
  *(v6 - 0x4BCC923D0A7CA5D3) = *STACK[0x5B0];
  *(v6 - 0x4BCC923D0A7CA5D4) = *STACK[0x5A8];
  v7 = STACK[0x610];
  v8 = STACK[0x610];
  *(v7 - 0x4BCC923D0A7CA5D5) = *STACK[0x5A0];
  *(v7 - 0x4BCC923D0A7CA5D6) = *STACK[0x598];
  STACK[0x300] = a1;
  *(v8 - 0x4BCC923D0A7CA5D7) = *STACK[0x590];
  *(v8 - 0x4BCC923D0A7CA5D8) = *STACK[0x588];
  v9 = *(STACK[0x570] - 0xE81173800FA886DLL);
  v10 = (STACK[0x610] - 0x4BCC923D0A7CA62CLL);
  STACK[0x7E0] = v10;
  *v10 = v9;
  v11 = v9 != ((((v1 + 879) ^ 0x2C0) + 1427815298) ^ (4 * ((v1 + 879) ^ 0x2C0)));
  return (*(v2 + 8 * (((2 * v11) | (16 * v11)) ^ (v1 + 879))))();
}

uint64_t sub_1BAEE8254@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x620];
  v4 = STACK[0x620];
  *(v3 - 0x4BCC923D0A7CA5C9) = *STACK[0x610];
  *(v3 - 0x4BCC923D0A7CA5CALL) = *STACK[0x608];
  *(v3 - 0x4BCC923D0A7CA5CBLL) = *STACK[0x600];
  *(v3 - 0x4BCC923D0A7CA5CCLL) = *STACK[0x5F8];
  *(v3 - 0x4BCC923D0A7CA5CDLL) = *STACK[0x5F0];
  *(v3 - 0x4BCC923D0A7CA5CELL) = *STACK[0x5E8];
  *(v4 - 0x4BCC923D0A7CA5CFLL) = *STACK[0x5E0];
  *(v4 - 0x4BCC923D0A7CA5D0) = *STACK[0x5D8];
  v5 = STACK[0x620];
  v6 = STACK[0x620];
  *(v5 - 0x4BCC923D0A7CA5D1) = *STACK[0x5D0];
  *(v5 - 0x4BCC923D0A7CA5D2) = *STACK[0x5C8];
  *(v6 - 0x4BCC923D0A7CA5D3) = *STACK[0x5C0];
  *(v6 - 0x4BCC923D0A7CA5D4) = *STACK[0x5B8];
  v7 = STACK[0x620];
  v8 = STACK[0x620];
  *(v7 - 0x4BCC923D0A7CA5D5) = *STACK[0x5B0];
  *(v7 - 0x4BCC923D0A7CA5D6) = *STACK[0x5A8];
  STACK[0x300] = a1;
  *(v8 - 0x4BCC923D0A7CA5D7) = *STACK[0x5A0];
  *(v8 - 0x4BCC923D0A7CA5D8) = *STACK[0x598];
  v9 = *(STACK[0x580] - 0xE81173800FA886DLL);
  v10 = (STACK[0x620] - 0x4BCC923D0A7CA62CLL);
  STACK[0x7E0] = v10;
  *v10 = v9;
  return (*(v2 + 8 * (((v1 + 29) ^ (v9 == (v1 ^ 0x614) + 1427813553)) & 1 | v1)))();
}

uint64_t sub_1BAEE86AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = (*(v33 + 8 * (v34 + 279)))(16, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x628] = v35;
  STACK[0x210] = STACK[0x620];
  return (*(v33 + 8 * (((v35 == 0) * (((v34 ^ 0xBA7) - 180) ^ 0x2F2)) ^ v34)))(v35, v36, v37, 345984147, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1BAEE870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v44 = STACK[0x628];
  v45 = STACK[0x628] + 0xF2C67B766E067CBLL;
  v46 = STACK[0x620];
  v47 = (STACK[0x620] - 0x4BCC923D0A7CA638);
  *v44 = 0x785FEF64C8799D66;
  v44[1] = 0x785FEF64C8799D66;
  *v47 = v45;
  STACK[0x630] = v47;
  STACK[0x638] = v46 - 0x4BCC923D0A7CA640;
  STACK[0x210] = v46;
  HIDWORD(a41) = a4;
  return (*(v43 + 8 * (((v46 == 0x4BCC923D0A7CA640) * ((((v42 - 170847595) & 0xA2EEFDE) - 828) ^ v41)) ^ v42)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_1BAEE87B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = (*(v33 + 8 * (v34 + 1346)))(16, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x640] = v35;
  STACK[0x210] = STACK[0x620];
  return (*(v33 + 8 * (((v35 == 0) * ((134 * (v34 ^ 0x544)) ^ 0x20B)) | v34)))(v35, v36, v37, 345984147, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1BAEE8814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  v44 = STACK[0x210];
  LODWORD(STACK[0xA00]) = a42;
  STACK[0x218] = v44;
  return (*(v43 + 8 * v42))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEE8844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = (*(v56 + 8 * (v55 + 1040)))(16, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x618] = v57;
  return (*(v56 + 8 * (((v57 == 0) * (17 * (v55 ^ 0x65C) - 773)) | v55)))(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAEE88A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = STACK[0x618];
  v65 = STACK[0x618] + 0xF2C67B766E067CBLL;
  v66 = STACK[0x610];
  STACK[0x620] = STACK[0x610] - 0x4BCC923D0A7CA638;
  *v64 = 0x785FEF64C8799D66;
  v64[1] = 0x785FEF64C8799D66;
  *(v66 - 0x4BCC923D0A7CA638) = v65;
  STACK[0x628] = v66 - 0x4BCC923D0A7CA640;
  return (*(v63 + 8 * (((v66 == 0x4BCC923D0A7CA640) * ((((v62 ^ 0xE28) - 1860553819) & 0x6EE5C70E) - 735)) ^ v62 ^ 0xE28)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, v66);
}

uint64_t sub_1BAEE8948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = (*(v56 + 8 * ((v55 + 1870) ^ 0xDEu)))(16, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x630] = v57;
  return (*(v56 + 8 * ((v57 == 0) ^ (v55 + 1870))))(v57, v58, v59, 345984147, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAEE899C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = STACK[0x630];
  v66 = STACK[0x630] + 0xF2C67B766E067CBLL;
  *v65 = 0x785FEF64C8799D66;
  v65[1] = 0x785FEF64C8799D66;
  *STACK[0x628] = v66;
  return (*(v63 + 8 * ((((v62 + v61 - 857 - 1793) ^ (v61 - 155991661) & 0xE95E3D7A ^ 0xC) * (v64 == 232)) | (v61 - 857))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, STACK[0x610]);
}

uint64_t sub_1BAEE8A28@<X0>(int a1@<W8>)
{
  v3 = v1 + a1 - 16;
  LODWORD(STACK[0x30C]) = v3;
  return (*(v2 + 8 * (v3 ^ 0x23A)))();
}

uint64_t sub_1BAEE8A58()
{
  v4 = STACK[0x640];
  v5 = STACK[0x640] + 0xF2C67B766E067CBLL;
  *v4 = 0x785FEF64C8799D66;
  v4[1] = 0x785FEF64C8799D66;
  *STACK[0x638] = v5;
  STACK[0x200] = STACK[0x620];
  return (*(v2 + 8 * ((((((v1 + (v0 ^ 0xA08) - 2062) ^ (v3 == 232)) & 1) == 0) | (4 * ((((v1 + (v0 ^ 0xA08) - 2062) ^ (v3 == 232)) & 1) == 0))) ^ v0 ^ 0xA08)))();
}

uint64_t sub_1BAEE8BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  STACK[0x310] = v45;
  LODWORD(STACK[0x318]) = v46;
  v51 = *(v49 + 8 * SLODWORD(STACK[0x30C]));
  LODWORD(STACK[0x31C]) = 1340145045;
  LODWORD(STACK[0x320]) = 1340145045;
  LODWORD(STACK[0x324]) = 833120169;
  STACK[0x340] = v51;
  LODWORD(STACK[0x34C]) = a4;
  return (*(v49 + 8 * (((a9 - v47 + 119) * (v50 == 232)) ^ (v48 + a9 + 787))))(a1, a2, a3);
}

uint64_t sub_1BAEE8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = v62 ^ (v63 - 122);
  v67 = v64 + v62;
  v68 = *(a62 - 0x4BCC923D0A7CA638);
  v70 = *(v65 + 8 * (v67 + 30));
  STACK[0x210] = v70;
  STACK[0x218] = v68;
  STACK[0x220] = STACK[0x508];
  LODWORD(STACK[0x228]) = 663117484;
  return (*(v65 + 8 * ((3799 * ((v66 ^ 0xF554B904 | (v67 + 30)) < 0x58A2571F)) ^ (v67 + 1406))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v70);
}

uint64_t sub_1BAEE8D4C()
{
  v3 = v0 ^ 0x327;
  *(v2 - 104) = (v0 ^ 0x327) - 2138855791 * ((2 * ((v2 - 112) & 0x330A1D70) - (v2 - 112) + 1291182729) ^ 0x4343DA08) + 2199;
  v4 = (*(v1 + 8 * (v0 ^ 0x9AF)))(v2 - 112);
  return (*(v1 + 8 * (v3 ^ 0x2FB)))(v4);
}

uint64_t sub_1BAEE8FF0()
{
  v5 = STACK[0x530];
  v6 = STACK[0x638];
  STACK[0xA08] = *(v2 + 8 * v0);
  STACK[0xA18] = v6;
  STACK[0xA28] = v5;
  *(v4 - 112) = &STACK[0xA08];
  *(v4 - 104) = -1310139384 - 385730383 * ((-1693075441 - ((v4 - 112) | 0x9B15B80F) + ((v4 - 112) | 0x64EA47F0)) ^ 0x1D7B2C21) + v0;
  v7 = (*(v2 + 8 * (v0 + 2472)))(v4 - 112);
  return (*(v2 + 8 * (v0 ^ 0x348 ^ ((*(v4 - 100) == v3) * ((((v0 + 518) | 0x10) ^ (v1 - 587)) + ((v0 + 537004103) | 0xC0100048))))))(v7);
}

uint64_t sub_1BAEE9144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *(STACK[0x640] - 0x4BCC923D0A7CA638);
  v28 = *(v25 + 8 * v24);
  STACK[0x210] = v28;
  STACK[0x218] = v26;
  STACK[0x220] = STACK[0x518];
  LODWORD(STACK[0x228]) = -1126274981;
  return (*(v25 + 8 * ((((v24 + 83424216) & 0xFB070D87) + 1078) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v28);
}

uint64_t sub_1BAEE91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *(a18 - 0x4BCC923D0A7CA640);
  v28 = *(v25 + 8 * v24);
  STACK[0x210] = v28;
  STACK[0x218] = v26;
  STACK[0x220] = STACK[0x518];
  LODWORD(STACK[0x228]) = -1126274981;
  return (*(v25 + 8 * ((v24 ^ 0x55E) + v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v28);
}

uint64_t sub_1BAEE923C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LODWORD(STACK[0x664]) = STACK[0x228];
  STACK[0x668] = STACK[0x220];
  v41 = STACK[0x218];
  STACK[0x670] = STACK[0x218];
  v42 = STACK[0x210];
  STACK[0x678] = STACK[0x210];
  STACK[0x258] = v42;
  LODWORD(STACK[0x260]) = a4;
  return (*(v40 + 8 * (((v41 == 0xF2C67B766E067CBLL) * (v38 + a9 + ((a9 - 65) ^ (v39 - 114)) - 386)) | a9)))(a1, a2, a3);
}

uint64_t sub_1BAEE92D8()
{
  v4 = STACK[0x668] == 0x7A8B6A3A466696C5;
  STACK[0x258] = STACK[0x678];
  return (*(v3 + 8 * (((((v0 ^ 0xAD ^ v4) & 1) == 0) * (v2 + ((v1 + v0 - 385) | 0x40) + 11)) ^ v0)))();
}

uint64_t sub_1BAEE9338@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x274]) = 1596595047;
  STACK[0x278] = STACK[0x500];
  LODWORD(STACK[0x284]) = STACK[0x664];
  STACK[0x288] = STACK[0x670];
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEE9538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  LODWORD(STACK[0x264]) = a9;
  STACK[0x268] = v47;
  v51 = *v47;
  STACK[0x6A8] = v51;
  LODWORD(STACK[0x2EC]) = a4;
  return (*(v49 + 8 * (((49 * (v46 ^ (v48 - 15))) ^ (v51 == 0xF2C67B766E067CBLL)) & 1 | (v50 + v46 + 315))))(a1, a2, a3);
}

uint64_t sub_1BAEE95C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = STACK[0x6A8] != 0xF2C67B766E067CBLL;
  LODWORD(STACK[0x2E8]) = a4;
  return (*(v44 + 8 * ((v45 * ((v43 ^ 0x409) + 509)) ^ v43)))(a1, a2, a3);
}

uint64_t sub_1BAEE9638@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x274]) = 124585149;
  STACK[0x278] = STACK[0x4F0];
  LODWORD(STACK[0x284]) = 618280359;
  STACK[0x288] = STACK[0x6A8];
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEE9678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, unint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, __int16 a57, uint64_t a58, uint64_t a59, unint64_t a60, unint64_t a61, uint64_t a62, unint64_t a63)
{
  v65 = STACK[0x288];
  v66 = STACK[0x284];
  v67 = STACK[0x278];
  LODWORD(STACK[0x6B0]) = STACK[0x274];
  v69 = v65 == 0xF2C67B766E067CBLL || v67 == 0x378EC5834F7A6EC4;
  LOBYTE(STACK[0x6B7]) = v69;
  STACK[0x6B8] = v65 - 0xF2C67B766E067CBLL;
  STACK[0x6C0] = &a46;
  STACK[0x6C8] = a24;
  STACK[0x6D0] = &a44;
  STACK[0x6D8] = a38;
  LODWORD(STACK[0x6E4]) = v66 + ((v63 + 464) ^ 0xCF0FEC0A);
  STACK[0x6E8] = v67 - 0x378EC5834F7A6EC4;
  v70 = a63;
  v71 = a60;
  v72 = a61;
  LOWORD(STACK[0x3C6]) = a57;
  STACK[0x3C8] = a20;
  STACK[0x3D0] = v72;
  STACK[0x3D8] = v71;
  STACK[0x3E0] = a36;
  STACK[0x3E8] = v70;
  STACK[0x3F0] = a43;
  return (*(v64 + 8 * v63))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEE9934@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2F0] = a1;
  STACK[0x798] = a1;
  return (*(v2 + 8 * ((52 * ((((v1 + v3 + 1064) ^ (a1 == 0x5128F3C4919EC5A8)) & 1) == 0)) ^ (v1 + v3 + 634))))();
}

uint64_t sub_1BAEE9984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = (STACK[0x798] - 0x5128F3C4919EC5A8);
  STACK[0x7A0] = v36;
  v37 = *v36;
  STACK[0x7A8] = *v36;
  return (*(v35 + 8 * (((v37 == 0x4BCC923D0A7CA640) * (((((v34 | 0x384) - 535824226) | 0x20900) + 10) ^ ((v34 | 0x384) - 38345297) & 0xE25B1BEE)) ^ (v34 | 0x384))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v37);
}

uint64_t sub_1BAEE9B14@<X0>(int a1@<W8>)
{
  v3 = *STACK[0x540];
  STACK[0x658] = v3;
  LODWORD(STACK[0x20C]) = STACK[0x654];
  return (*(v2 + 8 * (((v3 == 0) * (((a1 - 145541198) & 0xFEBEFFFF) + (a1 ^ (v1 + 510) ^ 0xE9FFCFC7))) ^ a1)))();
}

uint64_t sub_1BAEE9B74()
{
  v3 = v1 + v0;
  v4 = (*(v2 + 8 * (v1 ^ 0xF612331E)))(STACK[0x658]);
  LODWORD(STACK[0x20C]) = STACK[0x654];
  return (*(v2 + 8 * ((430 * (v1 != v3 + 1484279308)) ^ (v1 + 166577847))))(v4);
}

uint64_t sub_1BAEE9BF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = LODWORD(STACK[0x96C]) != a4 - 13;
  LODWORD(STACK[0x254]) = a4 - 13;
  return (*(v5 + 8 * ((v6 * (19 * (v4 ^ 0x21F) - 295)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_1BAEE9C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *STACK[0x6D0];
  v31 = *(v30 - 0x785FEF64C8799D4ELL);
  LODWORD(v30) = *(v30 - 0x785FEF64C8799D56);
  STACK[0x680] = v31;
  LODWORD(STACK[0x68C]) = v30;
  LODWORD(STACK[0x254]) = a4;
  return (*(v29 + 8 * (((v31 == 0) * ((2 * v28) ^ 0x11A5)) ^ v28)))(a1, a2, a3);
}

uint64_t sub_1BAEE9CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v53 = (LODWORD(STACK[0x68C]) | ((LODWORD(STACK[0x68C]) < 0x2393FBE8) << 32)) + (((v51 ^ 0x13A4) - 203) ^ v51 ^ 0x11D1u ^ 0x4BA3C9E041438DD2);
  STACK[0x690] = v53;
  LODWORD(v53) = v53 - STACK[0x6D8] + 0x175AD48151B9BAC1 < 0xFFFFFFFFFFFFFFF6;
  LODWORD(STACK[0x254]) = a4 - 4;
  return (*(v52 + 8 * ((1106 * v53) ^ v51 ^ 0x13A4)))(a1, a2, a3);
}

uint64_t sub_1BAEE9D7C()
{
  v2 = STACK[0x6D8];
  v3 = ((v0 + 1634) ^ 0xF51C865252EDADC4) + STACK[0x6D8];
  LOWORD(STACK[0x296]) = STACK[0x9A6];
  STACK[0x298] = STACK[0x998];
  STACK[0x2A0] = v2;
  STACK[0x2A8] = STACK[0x690];
  v4 = STACK[0x680];
  STACK[0x2B0] = STACK[0x680];
  STACK[0x2B8] = STACK[0x978];
  STACK[0x2C0] = STACK[0x970];
  STACK[0x2C8] = v4;
  STACK[0x2D0] = v3;
  STACK[0x2D8] = v1 + 8 * v0;
  return (*(v1 + 8 * (v0 + 277)))();
}

uint64_t sub_1BAEE9E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = v55 + v57 + 68;
  HIWORD(a55) = STACK[0x9F2];
  LOWORD(STACK[0x22C]) = STACK[0x9F2];
  LOWORD(STACK[0x22E]) = HIWORD(a55);
  STACK[0x230] = STACK[0x710];
  STACK[0x238] = STACK[0x760];
  STACK[0x240] = v56 + 8 * v58;
  return (*(v56 + 8 * ((((v55 + v57 + 505) | 0x4C4) - 916) ^ v58)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAEE9E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = (LODWORD(STACK[0x9EC]) ^ v51) + STACK[0x720];
  STACK[0x698] = v53 + 10;
  v53 -= 0x62FE9E60C285C3D0;
  v54 = v53 < ((v52 - v48 + 321) ^ 0xF40B7E80uLL);
  v55 = v53 > STACK[0x740];
  if ((LOBYTE(STACK[0x74F]) ^ v54))
  {
    v55 = v54;
  }

  LODWORD(STACK[0x254]) = 345984143;
  return (*(v50 + 8 * ((v55 * (v49 + v52 - 20)) ^ (v49 + v52 + 1556))))(a1, a2, a3);
}

uint64_t sub_1BAEEA024()
{
  v2 = (STACK[0x738] ^ 0xDB9F75B479FEEEBELL) + 0x7C7BAEFF8F7FFFF8 + ((2 * STACK[0x738]) & 0xB73EEB68F3FDDD7CLL);
  LOWORD(STACK[0x22C]) = STACK[0x9EA];
  LOWORD(STACK[0x22E]) = 32544;
  STACK[0x230] = STACK[0x710];
  STACK[0x238] = v2;
  STACK[0x240] = v1 + 8 * v0;
  return (*(v1 + 8 * ((1392 * (v0 - 882152426 < (v0 ^ 0x76025EF2u))) ^ (v0 + 697))))();
}

uint64_t sub_1BAEEA150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, __int16 a57, unint64_t a58)
{
  HIDWORD(a29) = STACK[0x9EC];
  STACK[0x248] = a58;
  LOWORD(STACK[0x252]) = a57;
  return (*(v59 + 8 * (v58 + v60 + 881)))(a1, a2, a3, 345984147, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1BAEEA1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(a46 - 0x7A8B6A3A466696C5) = (v48 + 17 * (v46 ^ 0x62B) - 323) ^ a30;
  LODWORD(STACK[0x254]) = v49;
  return (*(v47 + 8 * v46))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEA228@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = STACK[0x254];
  STACK[0x258] = a18;
  LODWORD(STACK[0x260]) = v19;
  return (*(v18 + 8 * a1))();
}

uint64_t sub_1BAEEA258(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = LODWORD(STACK[0x96C]) == ((v4 + 1578) ^ (a4 - 1863));
  LODWORD(STACK[0x2E8]) = a4 - 13;
  return (*(v5 + 8 * ((v6 * ((v4 ^ 0x240) + 2418)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_1BAEEA2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v37 = *STACK[0x6C0];
  v38 = *(v37 - 0x785FEF64C8799D4ELL);
  STACK[0x6F0] = v38;
  LODWORD(STACK[0x6FC]) = *(v37 - 0x785FEF64C8799D56);
  LODWORD(STACK[0x2E8]) = a4;
  return (*(v36 + 8 * (((v38 == 0) * (((a9 + 1464) | 0x8A) + ((a9 + 607) ^ 0xFFFFF3B8))) ^ a9)))(a1, a2, a3);
}

uint64_t sub_1BAEEA35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v55 = (LODWORD(STACK[0x6FC]) | ((LODWORD(STACK[0x6FC]) < 0x2393FBE8) << 32)) + 0x6436B9CA6DC29010 - STACK[0x6C8] - 0x51B3BE26D4E20E4FLL < (17 * (v53 ^ 0x5E0u)) - 129;
  LODWORD(STACK[0x2E8]) = a4 - 4;
  return (*(v54 + 8 * ((570 * v55) ^ v53)))(a1, a2, a3);
}

uint64_t sub_1BAEEA3E8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x6C8];
  v3 = STACK[0x6C8] + 0x459829104D0A7103;
  LOWORD(STACK[0x296]) = STACK[0x9A6];
  STACK[0x298] = STACK[0x998];
  STACK[0x2A0] = STACK[0x990];
  STACK[0x2A8] = STACK[0x988];
  STACK[0x2B0] = STACK[0x980];
  STACK[0x2B8] = v2;
  v4 = STACK[0x6F0];
  STACK[0x2C0] = STACK[0x6F0];
  STACK[0x2C8] = v4;
  STACK[0x2D0] = v3;
  STACK[0x2D8] = v1 + 8 * a1;
  return (*(v1 + 8 * (((a1 + 1638) ^ 0x7C4) + a1)))();
}

uint64_t sub_1BAEEA468()
{
  v2 = STACK[0x2B8];
  v3 = STACK[0x2B8] - 0x1282FBA3BC747DAFLL;
  STACK[0x700] = STACK[0x2C0];
  STACK[0x708] = v2;
  v4 = STACK[0x2A0];
  v5 = STACK[0x2A0] - 0x62FE9E61B6914399;
  v6 = STACK[0x2A0] - 0x62FE9E61B6914393;
  v7 = STACK[0x2A8];
  v8 = STACK[0x2A8] - 0x4BA3C9DF70CC090FLL;
  STACK[0x710] = STACK[0x2B0];
  STACK[0x718] = v7;
  STACK[0x720] = v4;
  STACK[0x728] = STACK[0x298];
  STACK[0x730] = (v3 ^ 0x7FBF5FFD57B4DFDDLL) - 0x1136448C1430C048 + ((2 * v3) & 0xFF7EBFFAAF69BFBALL);
  STACK[0x738] = v6;
  STACK[0x740] = v8;
  LOBYTE(STACK[0x74F]) = v8 < ((v0 - 1610612115) | 0x40120020u) + 335115865;
  STACK[0x750] = (v5 ^ 0xEFD93F73E3E4FFF7) + 0x7EAFDBFD5F9F1F9ELL + ((2 * v5) & 0xDFB27EE7C7C9FFEELL);
  STACK[0x758] = ((v3 + 2) ^ 0x5AFFBCB76D7FEEF7) - 0x2E4980364010041 + ((2 * (v3 + 2)) & 0xB5FF796EDAFFDDEELL);
  STACK[0x760] = ((v5 + 2) ^ 0xF87F36F69FFEEFF7) + 0x5F9BEDBD697FFEBFLL + ((2 * (v5 + 2)) & 0xF0FE6DED3FFDDFEELL);
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1BAEEA64C@<X0>(uint64_t (**a1)(void)@<X8>)
{
  v7 = v1 + v3 - 0x581B24B4097EEEB6;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((0x4D7C3013B6750271 - v8) & 0x75530549AD230FB7) + v8 + 0x3283CFEC498AFD8ELL - ((v8 + 0x3283CFEC498AFD8ELL) & 0x73530549AD230FB7);
  v10 = __ROR8__(v9 ^ 0x6B165CB7EFD148A9, 8);
  v9 ^= 0xFF0823D5A386A4D8;
  v11 = (0x61C2C849B785CFCLL - ((v10 + v9) | 0x61C2C849B785CFCLL) + ((v10 + v9) | 0xF9E3D37B6487A303)) ^ 0x18D6D3D4FC3763DFLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((0x4B1F1F932A2D1FFALL - (v13 + v12) + ((2 * (v13 + v12)) & 0x69C1C0D9ABA5C00ALL)) ^ 0x4F8F3A911994FAC8, 8);
  v15 = (0x4B1F1F932A2D1FFALL - (v13 + v12) + ((2 * (v13 + v12)) & 0x69C1C0D9ABA5C00ALL)) ^ 0x4F8F3A911994FAC8 ^ __ROR8__(v12, 61);
  v16 = (v14 + v15) ^ 0xFD1C75332F7F0C87;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0xCBE1CE2C6D636054 - (v18 + v17) + ((2 * (v18 + v17)) | 0x683C63A725393F58)) ^ 0xC80B8ADABB55473CLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0x4E57CE6D5C1D29D7 - ((v21 + v20) | 0x4E57CE6D5C1D29D7) + ((v21 + v20) | 0xB1A83192A3E2D628)) ^ 0xFA2F58C057B018E7;
  v23 = v22 ^ __ROR8__(v20, 61);
  STACK[0x4D8] = v1;
  LOWORD(STACK[0x9E8]) = v4;
  LOWORD(STACK[0x9EA]) = v2;
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xC809DE93B29A9CA6;
  v25 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v7 & 7u))) ^ *v7;
  v27 = -2 - (((0x4D7C3013B6750271 - v25) | 0x80ECD30D5A457A12) + ((v25 + 0x3283CFEC498AFD8ELL) | 0x7F132CF2A5BA85EDLL));
  v28 = v27 ^ 0x9CA98AF318B73D0CLL;
  v27 ^= 0x8B7F59154E0D17DuLL;
  v29 = (__ROR8__(v28, 8) + v27) ^ 0xE13500AF98B0C0DCLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x490250233B9E532;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xFD1C75332F7F0C87;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0x373962A3D245E58FLL - (v35 + v34) + ((2 * (v35 + v34)) & 0x918D3AB85B7434E0)) ^ 0xCB2CD9AAFB8C3D1FLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x4B876952F452CECFLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xC809DE93B29A9CA6;
  LODWORD(v39) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v7 + 1) & 7))) ^ *(v7 + 1);
  v41 = (__ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + 0x3283CFEC498AFD8ELL) & 0xF9FFFFFFFFFFFFFFLL;
  v42 = v41 ^ 0x1E4559FE42F2471ELL;
  v41 ^= 0x8A5B269C0EA5AB6FLL;
  v43 = __ROR8__(v42, 8);
  v44 = (v43 + v41 - 0x3592BDC24AC3A162 - ((2 * (v43 + v41)) & 0x94DA847B6A78BD3CLL)) ^ 0x2B5842922D8C9E42;
  v45 = v44 ^ __ROR8__(v41, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x490250233B9E532;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (0xD516FC9FFA2F48A0 - (v48 + v47) + (v6 & (2 * (v48 + v47)))) ^ 0x280A89ACD5504427;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFC15BB0929C9D890;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x4B876952F452CECFLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xC809DE93B29A9CA6;
  v56 = (((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v7 + 2) & 7))) ^ *(v7 + 2);
  v57 = *(v7 + 3);
  v7 += 3;
  v58 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = -2 - (((0x4D7C3013B6750271 - v58) | 0x8667B3E936086AC9) + ((v58 + 0x3283CFEC498AFD8ELL) | 0x79984C16C9F79536));
  v60 = v59 ^ 0x9A22EA1774FA2DD7;
  v59 ^= 0xE3C957538ADC1A6uLL;
  v61 = (__ROR8__(v60, 8) + v59) ^ 0xE13500AF98B0C0DCLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x490250233B9E532;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = __ROR8__((0x1380784254EB2752 - ((v65 + v64) | 0x1380784254EB2752) + ((v65 + v64) | 0xEC7F87BDAB14D8ADLL)) ^ 0x1163F28E846BD42ALL, 8);
  v67 = (0x1380784254EB2752 - ((v65 + v64) | 0x1380784254EB2752) + ((v65 + v64) | 0xEC7F87BDAB14D8ADLL)) ^ 0x1163F28E846BD42ALL ^ __ROR8__(v64, 61);
  v68 = (0x487919B9114A733ELL - (v66 + v67) + ((2 * (v66 + v67)) & 0x6F0DCC8DDD6B1982)) ^ 0xB46CA2B03883ABAELL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x4B876952F452CECFLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xC809DE93B29A9CA6;
  LODWORD(v7) = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v7 & 7u))) ^ v57;
  v73 = (v39 << 16) | (v26 << 24) | (v56 << 8) | v7;
  LODWORD(STACK[0x9EC]) = v73 + v5 - 2 * (v73 & 0xB6B97F ^ v7 & 8);
  return (*a1)();
}

uint64_t sub_1BAEEACCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (LODWORD(STACK[0x9EC]) ^ LODWORD(STACK[0x6E4])) == v6;
  LOWORD(STACK[0x436]) = STACK[0x9EA];
  v10 = STACK[0x728];
  STACK[0x438] = STACK[0x728];
  STACK[0x440] = STACK[0x720];
  STACK[0x448] = STACK[0x718];
  STACK[0x450] = STACK[0x710];
  STACK[0x458] = STACK[0x708];
  STACK[0x460] = STACK[0x700];
  LODWORD(STACK[0x46C]) = v8;
  STACK[0x470] = v10;
  return (*(v5 + 8 * (((((v4 + v7 - 1) ^ v9) & 1) * ((v7 ^ (v3 + 393)) - 871)) ^ (v4 + v7 + 1084))))(a1, a2, a3, 345984147);
}

uint64_t sub_1BAEEAD5C()
{
  v2 = STACK[0x728];
  LOWORD(STACK[0x3FE]) = STACK[0x9EA];
  STACK[0x400] = STACK[0x720];
  STACK[0x408] = STACK[0x718];
  STACK[0x410] = STACK[0x710];
  STACK[0x418] = STACK[0x708];
  STACK[0x420] = STACK[0x700];
  STACK[0x428] = v2 - 0x785FEF64C8799D66;
  return (*(v1 + 8 * (v0 + 888)))();
}

uint64_t sub_1BAEEADF4@<X0>(int a1@<W8>)
{
  v3 = STACK[0x4E0] + v1 - 0x6E891B7143841F95;
  v4 = *v3;
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = ((v5 + 0x3283CFEC498AFD8ELL) | 0xFDF193CE63C9B16ELL) - ((v5 + 0x3283CFEC498AFD8ELL) | 0x20E6C319C364E91) + 0x20E6C319C364E91;
  v7 = v6 ^ 0xE1B4CA30213BF670;
  v6 ^= 0x75AAB5526D6C1A01uLL;
  v8 = (__ROR8__(v7, 8) + v6) ^ 0xE13500AF98B0C0DCLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x490250233B9E532;
  v11 = __ROR8__(v10, 8);
  v12 = v10 ^ __ROR8__(v9, 61);
  v13 = (0xD67BB062A74EED24 - (v11 + v12) + ((2 * (v11 + v12)) & 0x53089F3AB16225B6)) ^ 0x2B67C5518831E1A3;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - 0x5FBCB7822015D543 - ((2 * (v15 + v14)) & 0x408690FBBFD4557ALL)) ^ 0x5C56F374F623F22DLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((v18 + v17 + 0x5103047BB117CA82 - ((2 * (v18 + v17)) & 0xA20608F7622F9504)) ^ 0x1A846D294545044DLL, 8);
  v20 = (v18 + v17 + 0x5103047BB117CA82 - ((2 * (v18 + v17)) & 0xA20608F7622F9504)) ^ 0x1A846D294545044DLL ^ __ROR8__(v17, 61);
  v21 = ((__ROR8__((v19 + v20) ^ 0xC809DE93B29A9CA6, 8) + ((v19 + v20) ^ 0xC809DE93B29A9CA6 ^ __ROR8__(v20, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v3 & 7u));
  v22 = *++v3;
  v23 = v21 ^ v4;
  v24 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((0xCD7C3013B6750271 - v24) & 0xACFE31F5BB036B84) + v24 + 0x3283CFEC498AFD8ELL - ((v24 + 0x3283CFEC498AFD8ELL) & 0xAAFE31F5BB036B84);
  v26 = v25 ^ 0xB2BB680BF9F12C9ALL;
  v25 ^= 0x26A51769B5A6C0EBuLL;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__((((v27 + v25) & 0x12BED15EDE5DCB03 ^ 0x90C0469859C301) + ((v27 + v25) ^ 0xD36E3319672418BALL) - (((v27 + v25) ^ 0xD36E3319672418BALL) & 0x12BED15EDE5DCB03)) ^ 0x20E5E2E821C91365, 8);
  v29 = (((v27 + v25) & 0x12BED15EDE5DCB03 ^ 0x90C0469859C301) + ((v27 + v25) ^ 0xD36E3319672418BALL) - (((v27 + v25) ^ 0xD36E3319672418BALL) & 0x12BED15EDE5DCB03)) ^ 0x20E5E2E821C91365 ^ __ROR8__(v25, 61);
  v30 = (0x9AA019683D8A184ELL - (v28 + v29) + ((2 * (v28 + v29)) & 0xCABFCD2F84EBCF62)) ^ 0x9E303C6A0E33FD7CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xFD1C75332F7F0C87;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 + 0x26D9F58DB71E387BLL - ((2 * (v34 + v33)) & 0x4DB3EB1B6E3C70F6)) ^ 0xDACC4E849ED7E0EBLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x4B876952F452CECFLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xC809DE93B29A9CA6;
  LOBYTE(v3) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v3 & 7u))) ^ v22;
  LOWORD(STACK[0x9F2]) = (v3 | (v23 << 8)) - 2 * ((v3 & 0x5F | (v23 << 8) & 0x685F) ^ v3 & 8) - 6057;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1BAEEB208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v61 = v58 + v60 + 100;
  HIWORD(a57) = STACK[0x9F2];
  LOWORD(STACK[0x22C]) = STACK[0x9EA];
  LOWORD(STACK[0x22E]) = STACK[0x9E8];
  STACK[0x230] = STACK[0x700];
  STACK[0x238] = STACK[0x758];
  STACK[0x240] = v59 + 8 * v61;
  return (*(v59 + 8 * (v61 ^ 0x574 ^ (251 * (v60 ^ (v57 + 5))))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1BAEEB268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x768] = a61 - 0x1282FBA3BC747DA9;
  v66 = (LODWORD(STACK[0x9EC]) ^ v63) + a61;
  STACK[0x770] = v66 + 10;
  v66 -= 0x1282FBA2EBEEF91ALL;
  v67 = v66 < 0xD085848F;
  v68 = v66 > a60 - 0x6436B9C9C0D10769;
  if (a60 - 0x6436B9C9C0D10769 < (7 * (v64 ^ (v61 - 348))) + 3498408645u != v67)
  {
    v68 = v67;
  }

  LODWORD(STACK[0x2E8]) = 345984143;
  return (*(v62 + 8 * (((2 * v68) | (4 * v68)) ^ (v65 + v64 + 360))))(a1, a2, a3);
}

uint64_t sub_1BAEEB344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x2E8];
  *(STACK[0x520] - 0x3C8021C360C633FCLL) = 0;
  LODWORD(STACK[0x2EC]) = v9;
  return (*(v7 + 8 * v8))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1BAEEB4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = LOWORD(STACK[0x77E]) == 47244;
  LODWORD(STACK[0x2E8]) = a4 - 12;
  return (*(v17 + 8 * ((v18 * ((a9 + 1036097102) & 0xC23E6FDA ^ 0xEE4)) ^ a9)))(a1, a2, a3);
}

uint64_t sub_1BAEEB550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52)
{
  STACK[0x780] = a52;
  LODWORD(STACK[0x2E8]) = a4 - 2;
  return (*(v52 + 8 * ((55 * ((((((a9 + 1183) | 0x18A) - 1950) ^ (a52 == 0)) & 1) == 0)) ^ (a9 + 815))))(a1, a2, a3);
}

uint64_t sub_1BAEEB5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  v20 = (*(v18 + 8 * (v17 + 2134)))((v17 + 1427) ^ (v16 + 1361) ^ a16, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x788] = v20;
  LODWORD(STACK[0x2E8]) = v19;
  return (*(v18 + 8 * ((101 * (((v20 == 0) ^ (v17 - 1)) & 1)) ^ v17)))();
}

uint64_t sub_1BAEEB624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v18 = ((((v16 + 537917569) | 0xC002092A) - 1599819763) ^ a16) - ((2 * ((((v16 + 537917569) | 0xC002092A) - 1599819763) ^ a16)) & 0x4B145DA4) + 629812946;
  v19 = (v18 ^ 0x7A33D31B) - 1107349824 + (((v16 - 1949) | 0x485) ^ 0xB105D27 ^ (2 * v18) & 0xBF73FB92);
  LODWORD(STACK[0x790]) = v19;
  return (*(v17 + 8 * ((125 * (v19 != 498674825)) ^ v16)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEB7B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v18 = (v11 + v16);
  v19 = __ROR8__((v17 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v19 + a3) ^ a2;
  v21 = __ROR8__((v19 + a3) ^ ((v14 + a7 - 1189) + v8), 8);
  v22 = (0x81F25595AB208B1ALL - (v21 + v20) + ((2 * (v21 + v20)) | 0xFC1B54D4A9BEE9CCLL)) ^ 0x9F38AAC5CC6FB43ALL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a4;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (a6 - ((v26 + v25) | a6) + ((v26 + v25) | 0xEA0891CE035606B1)) ^ a5;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (0x786DC38855154C40 - (v29 + v28) + (v13 & (2 * (v29 + v28)))) ^ 0x847878817CDC94D0;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) & v12 ^ 0x8A81072F436C2241) + ((v32 + v31) ^ 0x3172E8D0BC90C0AELL) - (((v32 + v31) ^ 0x3172E8D0BC90C0AELL) & v12)) ^ 0xE136266DBFBEAC04 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__((((v32 + v31) & v12 ^ 0x8A81072F436C2241) + ((v32 + v31) ^ 0x3172E8D0BC90C0AELL) - (((v32 + v31) ^ 0x3172E8D0BC90C0AELL) & v12)) ^ 0xE136266DBFBEAC04, 8) + v33) ^ a1;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  *(v7 + v18) = (((v10 - ((v36 + v35) | v10) + ((v36 + v35) | 0x2774BE880686A81DLL)) ^ 0xC3A45B3224F8E4BDLL) >> (8 * ((v17 + v11 + v16) & 7))) ^ *(v17 + v18);
  return (*(v15 + 8 * (((v11 + v16 == 0) * v9) ^ a7)))();
}

uint64_t sub_1BAEEB9A4()
{
  *(STACK[0x520] - 0x3C8021C360C633FCLL) = STACK[0x788];
  LODWORD(STACK[0x2EC]) = v3;
  return (*(v2 + 8 * (v1 + v0 + 935)))();
}

uint64_t sub_1BAEEBA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  STACK[0x4B8] = v18;
  STACK[0x9A8] = v18;
  v21 = *(v20 + 8 * v17);
  STACK[0x9B0] = v21;
  STACK[0x4D0] = v21;
  return (*(v20 + 8 * ((v18 == 0) ^ (v19 + a9 + 1384))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, v21);
}

uint64_t sub_1BAEEBA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = *STACK[0x9A8];
  STACK[0x9B8] = v34;
  STACK[0x4D0] = STACK[0x9B0];
  return (*(v33 + 8 * (((v34 != 0xF2C67B766E067CBLL) * ((((a9 + 1957190981) & 0xAB459FFD) + 517) ^ (((a9 + 1957190981) & 0xAB459FFD) + 583))) ^ (a9 + 1957190981) & 0xAB459FFD)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v34);
}

uint64_t sub_1BAEEBAB8@<X0>(int a1@<W8>)
{
  v4 = STACK[0x9B8];
  v5 = *(STACK[0x9B8] - 0xF2C67B766E067CBLL);
  STACK[0x9C0] = v5;
  STACK[0x4C8] = v4;
  return (*(v2 + 8 * (((v5 == 0x785FEF64C8799D66) * (((a1 - v3 - 185) ^ (v1 + 891)) - 1335)) ^ a1)))();
}

uint64_t sub_1BAEEBD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = STACK[0x324];
  LODWORD(STACK[0x7EC]) = STACK[0x324];
  v22 = STACK[0x320];
  LODWORD(STACK[0x7F0]) = STACK[0x320];
  LODWORD(STACK[0x7F4]) = STACK[0x31C];
  v21 -= 165834727;
  v23 = ((v18 + 250) ^ 0x421) + v22 - 672861296;
  v24 = (v21 < 0x27C5F7C2) ^ (v23 < 0x27C5F7C2);
  v25 = v21 < v23;
  if (v24)
  {
    v25 = v23 < 0x27C5F7C2;
  }

  LODWORD(STACK[0x33C]) = v20;
  return (*(v19 + 8 * ((1609 * v25) ^ v18)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BAEEBDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  v57 = LODWORD(STACK[0x7EC]);
  v58 = (v57 | ((v57 < 0x31A867A9) << 32)) - 833120169;
  STACK[0x7F8] = v58;
  v58 *= 40;
  STACK[0x800] = a40 + v58;
  STACK[0x808] = a40 - 0x4FE34AC4955B3072;
  LODWORD(v58) = *(a40 - 0x4FE34AC4955B3072 + v58 + 36) - a53 == -544148693;
  LODWORD(STACK[0x328]) = STACK[0x7F4];
  LODWORD(STACK[0x32C]) = v57;
  return (*(v55 + 8 * ((v58 * (v56 + ((v53 - 158) ^ (v54 + 1536)) + 1544)) ^ v53)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEBF5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  STACK[0x810] = a48;
  LODWORD(STACK[0x33C]) = a4;
  return (*(v49 + 8 * (((a48 == 0xF2C67B766E067CBLL) * (v48 ^ 0x4E3 ^ (v48 - 1627769296) & 0x6105C579)) ^ v48)))(a1, a2, a3);
}

uint64_t sub_1BAEEBFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(STACK[0x800] - 0x4FE34AC4955B3072);
  v28 = *(STACK[0x808] + 40 * STACK[0x7F8] + 24);
  v30 = *(v26 + 8 * v25);
  LODWORD(STACK[0x350]) = -217398559;
  LODWORD(STACK[0x354]) = 841466054;
  LODWORD(STACK[0x358]) = v28;
  LOWORD(STACK[0x35E]) = 17816;
  STACK[0x360] = v27;
  STACK[0x368] = 0x27DB1ED5A73C4037;
  STACK[0x370] = STACK[0x810];
  return (*(v26 + 8 * (v25 + ((v25 - 85) | 0xE2) - 17)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v30);
}

uint64_t sub_1BAEEC0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  LODWORD(STACK[0x3AC]) = v37;
  LODWORD(STACK[0x3B0]) = v36;
  LODWORD(STACK[0x3B4]) = v35;
  STACK[0x918] = a9;
  LODWORD(STACK[0x924]) = v35;
  LODWORD(STACK[0x928]) = v36;
  STACK[0x3B8] = *(v39 + 8 * v37);
  LODWORD(STACK[0x3C0]) = a4;
  return (*(v39 + 8 * (((a9 == 0xF2C67B766E067CBLL) * (((v40 - 1951) | 0x26) + ((v40 - v41 + 73) ^ (v38 + 11)))) ^ v40)))(a1, a2, a3);
}

uint64_t sub_1BAEEC150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = *(v26 + 8 * v25);
  LODWORD(STACK[0x350]) = STACK[0x924];
  LODWORD(STACK[0x354]) = 841466050;
  LODWORD(STACK[0x358]) = STACK[0x928];
  LOWORD(STACK[0x35E]) = 22122;
  STACK[0x360] = 0xCAA3BA6C7260CB45;
  STACK[0x368] = 0x27DB1ED5A73C4037;
  STACK[0x370] = STACK[0x918];
  return (*(v26 + 8 * (v25 + ((v25 + 47) | 0x80) + 17)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v28);
}

uint64_t sub_1BAEEC1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = STACK[0x370];
  STACK[0x830] = STACK[0x368];
  STACK[0x838] = STACK[0x360];
  LOWORD(STACK[0x842]) = STACK[0x35E];
  LODWORD(STACK[0x844]) = STACK[0x358];
  v32 = STACK[0x354];
  LODWORD(STACK[0x848]) = STACK[0x354];
  LODWORD(STACK[0x84C]) = STACK[0x350];
  LODWORD(STACK[0x3A8]) = a4;
  v34 = v31 == 0xF2C67B766E067CBLL || v32 + ((a9 + 988) ^ 0xCDD83B80) > 0xFFFFFFF5;
  return (*(v30 + 8 * ((13 * v34) ^ a9)))(a1, a2, a3);
}

uint64_t sub_1BAEEC258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = (*(v17 + 8 * (v16 + 1472)))(32, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x850] = v18;
  STACK[0x858] = &a16;
  a16 = v18 + 0x785FEF64C8799D66;
  LODWORD(STACK[0x3A4]) = 345984145;
  return (*(v17 + 8 * (((v18 == 0) * ((v16 ^ 0x7F3) - 767)) ^ v16)))(v18, v19, v20, 345984147, v21, v22, v23, v24);
}

uint64_t sub_1BAEEC2CC()
{
  v3 = STACK[0x850];
  *v3 = 0x785FEF64C8799D66;
  *(v3 + 8) = 0x785FEF64C8799D66;
  v4 = STACK[0x848];
  *(v3 + 16) = LODWORD(STACK[0x848]) - 244565196;
  v5 = (*(v1 + 8 * (v0 + 1873)))(v4 + ((v0 - 1360541062) & 0x51183AFF ^ 0xCDD837E7));
  *(v3 + 24) = v5;
  STACK[0x860] = v3 + 24;
  LODWORD(STACK[0x3A4]) = v2;
  return (*(v1 + 8 * (((v5 == 0) * (v0 ^ 0x337)) ^ v0)))();
}

uint64_t sub_1BAEEC368(uint64_t a1)
{
  v3 = STACK[0x842];
  LOBYTE(STACK[0x86E]) = HIBYTE(LOWORD(STACK[0x842]));
  LOBYTE(STACK[0x86F]) = v3;
  v4 = STACK[0x848];
  LODWORD(STACK[0x870]) = 2 * LODWORD(STACK[0x848]);
  LODWORD(STACK[0x874]) = v4 - ((2 * v4 - 1682932092) & ((v1 ^ 0x31B) - 1617550942)) + 497242152;
  LOBYTE(STACK[0x87B]) = v4 == 841466050;
  LODWORD(STACK[0x87C]) = LODWORD(STACK[0x84C]) ^ 0xBCC1D207;
  return (*(v2 + 8 * (v1 ^ 0x31B | 0x294)))(a1);
}

uint64_t sub_1BAEEC4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *v10;
  v19 = *v10 + 4;
  v20 = (__ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8) + a6) & 0xF9FFFFFFFFFFFFFFLL;
  v21 = v20 ^ 0x1E4559FE42F2471ELL;
  v20 ^= 0x8A5B269C0EA5AB6FLL;
  v22 = (__ROR8__(v21, 8) + v20) ^ v12;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v9;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a8;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v16;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (0xAAAAC5CD54BD710BLL - (v31 + v32) + ((2 * (v31 + v32)) & 0xAAAA746556851DE8)) ^ 0x62A31B5EE627EDADLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  *(v18 + 4) = v8 ^ (((0x9D53D2A7B86C6D68 - (v35 + v34) + ((2 * (v35 + v34)) | 0xC5585AB08F272530)) ^ 0x867CC8E265EDDE38) >> (8 * (v19 & 7u))) ^ 0xC1;
  v36 = __ROR8__((v18 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = (v36 + a6) ^ 0x885B269C0EA5AB6FLL;
  v38 = (__ROR8__((v36 + a6) ^ 0x1C4559FE42F2471ELL, 8) + v37) ^ v12;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v9;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v42 + v41 - 0x2A91452BD53FE520 - ((2 * (v42 + v41)) & 0xAADD75A8558035C0)) ^ 0x2872CFE705BF1667;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v16;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (0x964AD0183F74BFF6 - ((v49 + v48) | 0x964AD0183F74BFF6) + ((v49 + v48) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v18 + 5) = v17 ^ (((__ROR8__(v50, 8) + (v50 ^ __ROR8__(v48, 61))) ^ v11) >> (8 * ((v18 + 5) & 7)));
  STACK[0x378] = 0x1E06D87D68ADC51DLL;
  return (*(v14 + 8 * ((2988 * (v13 + v15 == -632747011)) ^ (v13 + v15 + 1639))))(0x885B269C0EA5AB6FLL, a2, v15, a4, a5);
}

uint64_t sub_1BAEEC76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W8>)
{
  LODWORD(STACK[0x384]) = v6;
  LODWORD(STACK[0x388]) = a4;
  return (*(v5 + 8 * (v4 + a3 + 670)))(a1, a2, STACK[0x378]);
}

uint64_t sub_1BAEEC78C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v9 = *v5 + a1 - 0x1E06D87D68ADC517;
  v10 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = ((v10 + a2) | 0x7E054FB39FC80770) - ((v10 + a2) | 0x81FAB04C6037F88FLL) - 0x7E054FB39FC80771;
  v12 = __ROR8__(v11 ^ 0x6240164DDD3A406ELL, 8);
  v11 ^= 0xF65E692F916DAC1FLL;
  v13 = (v12 + v11) ^ 0xE13500AF98B0C0DCLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x490250233B9E532;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ a4;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = *(v6 + 8 * a5);
  v20 = (__ROR8__(v17, 8) + v18) ^ a3;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v8;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xC809DE93B29A9CA6;
  v25 = __ROR8__((v9 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *v9 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v9 & 7u))) ^ HIBYTE(v7) ^ 0x4F;
  v26 = ((0x4D7C3013B6750271 - v25) & 0x7C0A1F12C3784FEDLL) + v25 + a2 - ((v25 + a2) & 0x7A0A1F12C3784FEDLL);
  v27 = v26 ^ 0x624F46EC818A08F3;
  v26 ^= 0xF651398ECDDDE482;
  v28 = __ROR8__(v27, 8);
  v29 = (0x74F472E448216F49 - ((v28 + v26) | 0x74F472E448216F49) + ((v28 + v26) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v30 = v29 ^ __ROR8__(v26, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0x5D587E53351E1BD7 - ((v31 + v30) | 0x5D587E53351E1BD7) + ((v31 + v30) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (0xFE5951FB672C4BC9 - ((v34 + v33) | 0xFE5951FB672C4BC9) + ((v34 + v33) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - 0x6F28D7BF2B2B02F1 - ((2 * (v37 + v36)) & 0x21AE5081A9A9FA1ELL)) ^ 0x6CC29349FD1D259FLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - 0x68143AAC23A6A19DLL - ((2 * (v40 + v39)) & 0x2FD78AA7B8B2BCC6)) ^ 0xDC6CAC01280B90ACLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xC809DE93B29A9CA6;
  *(v9 + 1) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v9 + 1) & 7))) ^ BYTE2(v7) ^ 0xCB;
  v44 = __ROR8__((v9 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = v44 + 0x6AB9967E9EC7E503 - ((2 * v44 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL);
  v46 = v45 ^ 0x24709F6C17CEA06BLL;
  v45 ^= 0xB06EE00E5B994C1ALL;
  v47 = __ROR8__(v46, 8);
  v48 = (0xBDAE503A387EAFC1 - (v47 + v45) + ((2 * (v47 + v45)) | 0x84A35F8B8F02A07ELL)) ^ 0xA364AF6A5F3190E3;
  v49 = v48 ^ __ROR8__(v45, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (0x528E42823A47F978 - (v50 + v49) + ((2 * (v50 + v49)) | 0x5AE37AFB8B700D10)) ^ 0xA9E1987FF601E3BALL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (0xAFCDD74745C3D614 - (v53 + v52) + ((2 * (v53 + v52)) | 0xA0645171747853D8)) ^ 0xAD2E5D8B9543256BLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (0x9F82B478FE4E36CBLL - (v56 + v55) + ((2 * (v56 + v55)) & 0xC0FA970E03639268)) ^ 0x63970F71D787EE5BLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (0xE072E29E6EF7C0DBLL - (v59 + v58) + ((2 * (v59 + v58)) & 0x3F1A3AC322107E48)) ^ 0xABF58BCC9AA50E14;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (0xAF664B3BAC6B979BLL - (v62 + v61) + ((2 * (v62 + v61)) | 0xA1336988A728D0CALL)) ^ 0x98906A57E10EF4C3;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  *(v9 + 2) = (((0x7C4FE0556218D93DLL - ((v65 + v64) | 0x7C4FE0556218D93DLL) + ((v65 + v64) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v9 + 2) & 7))) ^ BYTE1(v7) ^ 0x10;
  v66 = __ROR8__((v9 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v67 = v66 + 0x6271E77BE8951CBLL - ((2 * v66 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL);
  v68 = v67 ^ 0xCFE61775360C1323;
  v67 ^= 0x5BF868177A5BFF52uLL;
  v69 = __ROR8__(v68, 8);
  v70 = __ROR8__((0xE73D1027B3969B0BLL - (v69 + v67) + ((2 * (v69 + v67)) & 0x3185DFB098D2C9E8)) ^ 0x60810882B265BD7, 8);
  v71 = (0xE73D1027B3969B0BLL - (v69 + v67) + ((2 * (v69 + v67)) & 0x3185DFB098D2C9E8)) ^ 0x60810882B265BD7 ^ __ROR8__(v67, 61);
  v72 = (v70 + v71) ^ 0x490250233B9E532;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (0x42C5569356D8FE22 - ((v74 + v73) | 0x42C5569356D8FE22) + ((v74 + v73) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (0x91F090D5486CA88BLL - (v77 + v76) + ((2 * (v77 + v76)) & 0xDC1EDE556F26AEE8)) ^ 0x6DE52BDC61A5701BLL;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x4B876952F452CECFLL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xC809DE93B29A9CA6;
  *(v9 + 3) = v7 ^ 0xE6 ^ (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v81, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v9 + 3) & 7)));
  LODWORD(STACK[0x4EC]) = a5;
  return v19();
}

uint64_t sub_1BAEED108()
{
  v2 = *(STACK[0x808] + 40 * STACK[0x7F8] + 16);
  STACK[0x818] = v2;
  LODWORD(STACK[0x330]) = STACK[0x7F4];
  LODWORD(STACK[0x334]) = STACK[0x7F0];
  LODWORD(STACK[0x338]) = STACK[0x7EC];
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 2282) | 0x600) ^ (v0 - 168952404) & 0xA11FB33 ^ 0x46F)) ^ v0)))();
}

uint64_t sub_1BAEED180(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  STACK[0x820] = a48;
  LODWORD(STACK[0x33C]) = a4;
  return (*(v49 + 8 * (((a48 == 0xF2C67B766E067CBLL) * (v48 - 1827 + ((v48 - 1827) ^ 0x2C7) - 512)) ^ v48)))(a1, a2, a3);
}

uint64_t sub_1BAEED1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = STACK[0x808] + 40 * STACK[0x7F8];
  v28 = *(v27 + 32);
  v29 = STACK[0x818] + 0x27DB1ED5A73C4037;
  LODWORD(v27) = *(v27 + 24);
  v31 = *(v26 + 8 * v25);
  LODWORD(STACK[0x350]) = -217398559;
  LODWORD(STACK[0x354]) = v28;
  LODWORD(STACK[0x358]) = v27;
  LOWORD(STACK[0x35E]) = -28218;
  STACK[0x360] = 0xCAA3BA6C7260CB45;
  STACK[0x368] = v29;
  STACK[0x370] = STACK[0x820];
  return (*(v26 + 8 * (v25 + ((v25 + 1064600225) & 0xC08B7DFE) + 2)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v31);
}

uint64_t sub_1BAEED2B8(uint64_t a1)
{
  STACK[0x880] = *(*STACK[0x858] - 0x785FEF64C8799D4ELL);
  v3 = LODWORD(STACK[0x848]) - ((LODWORD(STACK[0x870]) + 464551556) & 0x3D017008) + 1817769798;
  v4 = (v3 ^ 0xCD1D07D1) - 1074792449 + (((6 * (((v1 + 1073872173) | 0xA0100862) ^ 0xE01209B5)) ^ 0xA73B7A90) & (2 * v3) ^ 0x25017008);
  LODWORD(STACK[0x88C]) = v4;
  return (*(v2 + 8 * ((62 * (v4 != 328054740)) ^ v1)))(a1, 0x490250233B9E532);
}

uint64_t sub_1BAEED3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x890] = STACK[0x830] - 0x27DB1ED5A73C4037;
  LODWORD(STACK[0x38C]) = STACK[0x88C];
  return (*(v4 + 8 * v3))(0x501A719F6969C05FLL, a2, a3, 0x1A10D85A16CC1CF5, 0x2C25ABD97A9C3C9, 0x210581206080015);
}

uint64_t sub_1BAEED4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v20 = (a7 - 1) + v19 + ((a7 - 1 < v8) << 32) - 0x1F2098F882682B2CLL;
  v21 = v20 + v17 + 10;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8) + v12;
  v23 = __ROR8__(v22 ^ v10, 8);
  v24 = v22 ^ v16;
  v25 = (((v23 + v24) & a4 ^ a6) + ((v23 + v24) & 0xE5EF27A5E933E30ALL ^ 0xE1E7020009110301) - 1) ^ a5;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a2;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v18;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v14;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v11;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = (((v34 + v35) & a1 ^ 0x4002101C61218051) + ((v34 + v35) ^ 0xBCDD6DA31CDC648ELL) - (((v34 + v35) ^ 0xBCDD6DA31CDC648ELL) & a1)) ^ 0x24CEC2AFC72F3877;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *v21 = (((0xB8B20ECE3E35896CLL - (v38 + v37) + ((2 * (v38 + v37)) & 0x8E9BE2638394ED26)) ^ 0x5C62EB741C4BC5CCLL) >> (8 * (v21 & 7u))) ^ *(a8 + v20);
  return (*(v15 + 8 * (((v8 + 1 == a7) * v13) ^ v9)))();
}

uint64_t sub_1BAEED6DC@<X0>(int a1@<W3>, int a2@<W8>)
{
  v3 = LODWORD(STACK[0x848]) == ((a2 + 28) | 0x88) + 841465067;
  LODWORD(STACK[0x3A4]) = a1 - 4;
  return (*(v2 + 8 * ((1058 * v3) ^ a2)))();
}

uint64_t sub_1BAEED728()
{
  v2 = *(*STACK[0x858] - 0x785FEF64C8799D4ELL);
  v3 = __ROR8__((v2 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = STACK[0x838];
  v5 = ((v3 + 0x3283CFEC498AFD8ELL) | 0x8EF30571B3E03BF9) - ((v3 + 0x3283CFEC498AFD8ELL) | ((v0 ^ 0xE0120AB1) + 0x710CFA8D6C0DBA9CLL)) + 0x710CFA8E4C1FC406;
  v6 = __ROR8__(v5 ^ 0x92B65C8FF1127CE7, 8);
  v5 ^= 0x6A823EDBD459096uLL;
  v7 = (v6 + v5) ^ 0xE13500AF98B0C0DCLL;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x490250233B9E532;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((v11 + v10) | 0x6257A18AC6AFEA71) - ((v11 + v10) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xFC15BB0929C9D890;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x73433184586818C6) - (v16 + v15) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0x2E6D9124F850C1CLL) - (v19 + v18) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v2[10] = (((((v22 + v21) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v22 + v21) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v2 + 10) & 7u))) ^ HIBYTE(STACK[0x838]) ^ 0xCA;
  v23 = __ROR8__((v2 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((v23 + 0x3283CFEC498AFD8ELL) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v23 + 0x3283CFEC498AFD8ELL) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v25 = v24 ^ 0x5BE668DB5A344230;
  v24 ^= 0xCFF817B91663AE41;
  v26 = (__ROR8__(v25, 8) + v24) ^ 0xE13500AF98B0C0DCLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x490250233B9E532;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xFD1C75332F7F0C87;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v32 + v31 - ((2 * (v32 + v31)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL, 8);
  v34 = (v32 + v31 - ((2 * (v32 + v31)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL ^ __ROR8__(v31, 61);
  v35 = (v33 + v34 - ((2 * (v33 + v34)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xFED65BFA7285710) - (v37 + v36) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v2[11] = (((((v40 + v39) | 0x21983AC56B0BB129) - ((v40 + v39) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v2 + 11) & 7u))) ^ LOWORD(STACK[0x83E]) ^ 0xA3;
  v41 = __ROR8__((v2 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = -2 - (((0xD7C3013B6750271 - v41) | 0xEFC9086FACD320D4) + ((v41 + 0x3283CFEC498AFD8ELL) | 0x1036F790532CDF2BLL));
  v43 = v42 ^ 0xF38C5191EE2167CALL;
  v42 ^= 0x67922EF3A2768BBBuLL;
  v44 = (__ROR8__(v43, 8) + v42) ^ 0xE13500AF98B0C0DCLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) & 0xA44BB63E2DDF8B52) - (v46 + v45) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xFD1C75332F7F0C87;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFC15BB0929C9D890;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (((v52 + v53) | 0xD2E383F95083B686) - ((v52 + v53) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xC809DE93B29A9CA6;
  v2[12] = (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 12) & 7u))) ^ BYTE5(v4) ^ 0xBA;
  v57 = __ROR8__((v2 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v58 = ((2 * (v57 + 0x3283CFEC498AFD8ELL)) | 0xA4234159906F106ALL) - (v57 + 0x3283CFEC498AFD8ELL) + 0x2DEE5F5337C877CBLL;
  v59 = v58 ^ 0xCE54F9528AC5CF2BLL;
  v58 ^= 0x5A4A8630C692235AuLL;
  v60 = __ROR8__(v59, 8);
  v61 = (((v60 + v58) | 0xD738201BC43E983BLL) - ((v60 + v58) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v62 = v61 ^ __ROR8__(v58, 61);
  v63 = __ROR8__(v61, 8);
  v64 = __ROR8__((((v63 + v62) ^ 0x70783716B7118F26) - ((2 * ((v63 + v62) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL, 8);
  v65 = (((v63 + v62) ^ 0x70783716B7118F26) - ((2 * ((v63 + v62) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL ^ __ROR8__(v62, 61);
  v66 = (v64 + v65) ^ 0xFD1C75332F7F0C87;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (v68 + v67 - ((2 * (v68 + v67)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x4B876952F452CECFLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xC809DE93B29A9CA6;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  LODWORD(v64) = STACK[0x838];
  v2[13] = (((v75 + v74 - ((2 * (v75 + v74)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v2 + 13) & 7u))) ^ LODWORD(STACK[0x83C]) ^ 0x6C;
  v76 = __ROR8__((v2 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = (0xCD7C3013B6750271 - v76) & 0xF050E761A6289A68 | (v76 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v78 = v77 ^ 0xEE15BE9FE4DADD76;
  v77 ^= 0x7A0BC1FDA88D3107uLL;
  v79 = (__ROR8__(v78, 8) + v77) ^ 0xE13500AF98B0C0DCLL;
  v80 = __ROR8__(v79, 8);
  v81 = v79 ^ __ROR8__(v77, 61);
  v82 = (((v80 + v81) | 0x349C4C6A3E574525) - ((v80 + v81) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xFD1C75332F7F0C87;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xFC15BB0929C9D890;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x4B876952F452CECFLL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) | 0x749128A0D39CA49CLL) - (v90 + v89) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v2[14] = (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v89, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 14) & 7u))) ^ LODWORD(STACK[0x83B]) ^ 0x72;
  v92 = __ROR8__((v2 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v93 = (0x57C3013B6750271 - v92) & 0x5D98955B3706B30 | (v92 + 0x3283CFEC498AFD8ELL) & 0xFA2676AA4C8F94CFLL;
  v94 = v93 ^ 0x199CD0ABF1822C2ELL;
  v93 ^= 0x8D82AFC9BDD5C05FLL;
  v95 = (__ROR8__(v94, 8) + v93) ^ 0xE13500AF98B0C0DCLL;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((2 * (v97 + v96)) | 0x86D73428622BDA3ALL) - (v97 + v96) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0xFD1C75332F7F0C87;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) & 0x407F7AAF3D2F06C8) - (v102 + v101) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x4B876952F452CECFLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xC809DE93B29A9CA6;
  v2[15] = (((__ROR8__(v107, 8) + (v107 ^ __ROR8__(v106, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 15) & 7u))) ^ LODWORD(STACK[0x83A]) ^ 0x60;
  v108 = __ROR8__((v2 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v109 = ((2 * v108 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v108 + 0x5649FDBD14324CA8;
  v110 = v109 ^ 0x948894571F4F0D28;
  v109 ^= 0x96EB355318E159uLL;
  v111 = __ROR8__(v110, 8);
  v112 = (((2 * (v111 + v109)) & 0xA1738BF9A2E70742) - (v111 + v109) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v113 = v112 ^ __ROR8__(v109, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x490250233B9E532;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((2 * (v116 + v115)) & 0x2D730DB5B3BDACF8) - (v116 + v115) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((2 * (v119 + v118)) | 0x4D17F792C6A75DEALL) - (v119 + v118) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = __ROR8__(v120, 8);
  v123 = __ROR8__((((2 * (v122 + v121)) & 0x305CE5312BE34172) - (v122 + v121) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189, 8);
  v124 = (((2 * (v122 + v121)) & 0x305CE5312BE34172) - (v122 + v121) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189 ^ __ROR8__(v121, 61);
  v125 = (v123 + v124) ^ 0xC809DE93B29A9CA6;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v2[16] = (((v127 + v126 - ((2 * (v127 + v126)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CLL) >> (8 * ((v2 + 16) & 7u))) ^ LODWORD(STACK[0x839]) ^ 0xCB;
  v128 = __ROR8__((v2 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = ((2 * ((v128 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v128 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v130 = v129 ^ 0xD9CC90F52308FB19;
  v129 ^= 0x4DD2EF976F5F1768uLL;
  v131 = __ROR8__(v130, 8);
  v132 = __ROR8__((((2 * (v131 + v129)) | 0xC93FF3953A26D81ALL) - (v131 + v129) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1, 8);
  v133 = (((2 * (v131 + v129)) | 0xC93FF3953A26D81ALL) - (v131 + v129) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1 ^ __ROR8__(v129, 61);
  v134 = (v132 + v133) ^ 0x490250233B9E532;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0xFD1C75332F7F0C87;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (((2 * (v138 + v137)) | 0x9AD9A558F1F83E32) - (v138 + v137) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x4B876952F452CECFLL;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (v143 + v142 - ((2 * (v143 + v142)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v2[17] = (((__ROR8__(v144, 8) + (v144 ^ __ROR8__(v142, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 17) & 7u))) ^ v64 ^ 0x45;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1BAEEE658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  LODWORD(STACK[0x274]) = -1286893550;
  STACK[0x278] = STACK[0x4F8];
  LODWORD(STACK[0x284]) = STACK[0x844];
  STACK[0x288] = a33;
  return (*(v34 + 8 * (v33 + a4 + 462)))(a1, a2, a3, 345984147);
}

uint64_t sub_1BAEEE6E4()
{
  v4 = LODWORD(STACK[0x914]) == v3 + ((v0 + v2 + 97) | 0x200) - 641;
  LODWORD(STACK[0x33C]) = STACK[0x914];
  return (*(v1 + 8 * ((3842 * v4) ^ (v2 + 535690820))))();
}

uint64_t sub_1BAEEE744()
{
  v4 = LODWORD(STACK[0x92C]) == (((v2 + 535689366) | 0x81) ^ (v3 + 639));
  LODWORD(STACK[0x33C]) = STACK[0x92C];
  return (*(v1 + 8 * ((v4 * ((v2 + 980350965) & 0xE57EFFFF ^ 0x80F)) ^ (v0 + v2 + 359))))();
}

uint64_t sub_1BAEEE7A8()
{
  v4 = LODWORD(STACK[0x914]) == v3;
  LODWORD(STACK[0x33C]) = STACK[0x914];
  return (*(v1 + 8 * ((216 * ((v4 ^ (v2 + 23)) & 1)) ^ (v0 + v2 + 319))))();
}

uint64_t sub_1BAEEE804@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  v24 = STACK[0x33C];
  STACK[0x340] = a23;
  LODWORD(STACK[0x34C]) = v24;
  return (*(v23 + 8 * a1))();
}

uint64_t sub_1BAEEE834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  LODWORD(STACK[0x328]) = 1340145045;
  LODWORD(STACK[0x32C]) = a19;
  return (*(v21 + 8 * (v20 + v19 + 1664)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEE85C()
{
  v3 = STACK[0x32C];
  v4 = STACK[0x328];
  LODWORD(STACK[0x330]) = STACK[0x328];
  LODWORD(STACK[0x334]) = v4;
  LODWORD(STACK[0x338]) = v3;
  return (*(v1 + 8 * (v2 + v0 + 37)))();
}

uint64_t sub_1BAEEE89C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x334];
  v3 = ((23 * (a1 ^ 0x322)) ^ 0x186) + LODWORD(STACK[0x338]);
  LODWORD(STACK[0x31C]) = STACK[0x330];
  LODWORD(STACK[0x320]) = v2;
  LODWORD(STACK[0x324]) = v3;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEEE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  STACK[0x898] = a37;
  STACK[0x8A0] = a37 - 0xF2C67B766E067C3;
  v39 = *(a37 - 0xF2C67B766E067C3);
  STACK[0x8A8] = v39;
  return (*(v38 + 8 * (((v39 == 0x785FEF64C8799D66) * (v37 + 1754 + v37 + 233 - 1980)) ^ (v37 + 2416))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEE988()
{
  *STACK[0x8A0] = v1;
  *(STACK[0x898] - 0xF2C67B766E067CBLL) = v1;
  LODWORD(STACK[0x3A8]) = v3;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1BAEEE9B8@<X0>(int a1@<W8>)
{
  *(STACK[0x8A8] - 0x785FEF64C8799D66) = v1;
  v4 = STACK[0x8A0];
  *(v1 - 0x785FEF64C8799D5ELL) = *STACK[0x8A0];
  *v4 = v1;
  LODWORD(STACK[0x3A8]) = v3;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1BAEEEA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = a39;
  v42 = *(a39 - 0x785FEF64C8799D5ELL);
  STACK[0x8B0] = &a39;
  STACK[0x8B8] = v42;
  STACK[0x8C0] = a16;
  STACK[0x8C8] = a16 - 0x785FEF64C8799D5ELL;
  *(a16 - 0x785FEF64C8799D5ELL) = v42;
  v43 = *(v41 - 0x785FEF64C8799D66);
  STACK[0x8D0] = a16 - 0x785FEF64C8799D66;
  *(a16 - 0x785FEF64C8799D66) = v43;
  STACK[0x390] = v43;
  return (*(v40 + 8 * (((v42 == 0x785FEF64C8799D66) * ((v39 ^ 0xEF6) + v39 - 1527 - 2205)) ^ v39)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEEAF8@<X0>(int a1@<W8>)
{
  v4 = STACK[0x390];
  STACK[0x8D8] = STACK[0x390];
  return (*(v3 + 8 * (((v4 == 0x785FEF64C8799D66) * ((a1 ^ v1) + 265 + 818 * (a1 ^ v1) - 1088)) ^ (v2 + a1 + 180))))();
}

uint64_t sub_1BAEEECCC@<X0>(int a1@<W8>)
{
  STACK[0x8E8] = v1;
  LODWORD(STACK[0x3A8]) = v4;
  return (*(v3 + 8 * (((((a1 - 1647) | 0x335) ^ (v2 + 326) ^ (a1 - 493479682) & 0xFD7BE9FA) * (v1 != 0x785FEF64C8799D66)) ^ a1)))();
}

uint64_t sub_1BAEEED30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55)
{
  v58 = (*(v56 + 8 * (v55 + 1897)))(STACK[0x8E8] - 0x785FEF64C8799D66, a2, a3, a4, a5, a6, a7, a8);
  *STACK[0x8B0] = 0x785FEF64C8799D66;
  LODWORD(STACK[0x3A4]) = a55;
  LODWORD(STACK[0x3A8]) = v57;
  return (*(v56 + 8 * (((a55 == ((v55 - 62989757) & 0xE3D32BEF ^ 0xB72146F)) * (((v55 - 693) | 0x829) - 704)) ^ v55)))(v58);
}

uint64_t sub_1BAEEEDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  LODWORD(STACK[0x8F4]) = STACK[0x3A4];
  STACK[0x8F8] = a16;
  STACK[0x900] = a16 - 0x785FEF64C8799D4ELL;
  v18 = *(a16 - 0x785FEF64C8799D4ELL);
  STACK[0x908] = v18;
  return (*(v16 + 8 * ((26 * (v18 != 0)) ^ v17)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEEE40()
{
  v3 = STACK[0x8F8] == 0x785FEF64C8799D66;
  LODWORD(STACK[0x3A8]) = STACK[0x8F4];
  return (*(v1 + 8 * ((v3 * (((v0 - 535823836) | 0x20968) ^ (v2 - 34))) ^ v0)))();
}

uint64_t sub_1BAEEEE9C()
{
  v2 = v0 - 1267;
  v3 = (*(v1 + 8 * (v2 ^ 0xA4B)))(STACK[0x8F8] - 0x785FEF64C8799D66);
  LODWORD(STACK[0x3A8]) = STACK[0x8F4];
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_1BAEEEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, unint64_t a42)
{
  STACK[0x3B8] = a42;
  LODWORD(STACK[0x3C0]) = STACK[0x914];
  return (*(v43 + 8 * (v42 + v44 + 1124)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEEF4C@<X0>(int a1@<W3>, int a2@<W8>)
{
  v3 = STACK[0x3F0];
  v4 = STACK[0x3E8];
  v5 = STACK[0x3E0];
  v6 = STACK[0x3D8];
  v7 = STACK[0x3D0];
  v8 = STACK[0x3C8];
  v9 = STACK[0x3C6];
  LOWORD(STACK[0x3FE]) = STACK[0x3C6];
  STACK[0x400] = v7;
  STACK[0x408] = v6;
  STACK[0x410] = v5;
  STACK[0x418] = v4;
  STACK[0x420] = v3;
  STACK[0x428] = STACK[0x6B8];
  LOWORD(STACK[0x47E]) = v9;
  STACK[0x480] = v8;
  STACK[0x488] = v7;
  STACK[0x490] = v6;
  STACK[0x498] = v5;
  STACK[0x4A0] = v4;
  STACK[0x4A8] = v3;
  LODWORD(STACK[0x4B4]) = a1;
  return (*(v2 + 8 * ((LOBYTE(STACK[0x6B7]) * (((5 * (a2 ^ 0x2FB)) ^ 0xFFFFF8F1) + 97 * (a2 ^ 0x39D))) ^ a2)))();
}

uint64_t sub_1BAEEEFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = STACK[0x428];
  STACK[0x930] = STACK[0x420];
  STACK[0x938] = STACK[0x418];
  v15 = STACK[0x410];
  STACK[0x940] = STACK[0x410];
  v16 = STACK[0x408];
  STACK[0x948] = STACK[0x408];
  v17 = STACK[0x400];
  STACK[0x950] = STACK[0x400];
  v18 = STACK[0x3FE];
  LOWORD(STACK[0x95E]) = STACK[0x3FE];
  v19 = *v14;
  STACK[0x960] = v19;
  LOWORD(STACK[0x436]) = v18;
  STACK[0x438] = v19;
  STACK[0x440] = v17;
  STACK[0x448] = v16;
  STACK[0x450] = v15;
  STACK[0x458] = STACK[0x938];
  STACK[0x460] = STACK[0x930];
  LODWORD(STACK[0x46C]) = a4 - 13;
  STACK[0x470] = 0x785FEF64C8799D66;
  return (*(v13 + 8 * (((v19 == 0x785FEF64C8799D66) * (((v12 - 1518) | 0x29A) - 432)) ^ v12)))(a1, a2, a3);
}

uint64_t sub_1BAEEF094@<X0>(int a1@<W8>)
{
  v2 = STACK[0x46C];
  v3 = STACK[0x460];
  v4 = STACK[0x458];
  v5 = STACK[0x450];
  v6 = STACK[0x448];
  v7 = STACK[0x440];
  v8 = STACK[0x438];
  v9 = STACK[0x436];
  *STACK[0x6E8] = STACK[0x470];
  LOWORD(STACK[0x47E]) = v9;
  STACK[0x480] = v8;
  STACK[0x488] = v7;
  STACK[0x490] = v6;
  STACK[0x498] = v5;
  STACK[0x4A0] = v4;
  STACK[0x4A8] = v3;
  LODWORD(STACK[0x4B4]) = v2;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEEF0F8()
{
  LODWORD(STACK[0x96C]) = STACK[0x4B4];
  STACK[0x970] = STACK[0x4A8];
  v2 = STACK[0x4A0];
  STACK[0x978] = STACK[0x4A0];
  v3 = STACK[0x498];
  STACK[0x980] = STACK[0x498];
  v4 = STACK[0x490];
  STACK[0x988] = STACK[0x490];
  v5 = STACK[0x488];
  STACK[0x990] = STACK[0x488];
  v6 = STACK[0x480];
  STACK[0x998] = STACK[0x480];
  v7 = STACK[0x47E];
  LOWORD(STACK[0x9A6]) = STACK[0x47E];
  LOWORD(STACK[0x3C6]) = v7;
  STACK[0x3C8] = v6;
  STACK[0x3D0] = v5;
  STACK[0x3D8] = v4;
  STACK[0x3E0] = v3;
  STACK[0x3E8] = v2;
  STACK[0x3F0] = STACK[0x970];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1BAEEF268()
{
  v2 = STACK[0x960];
  v3 = *(STACK[0x960] - 0x785FEF64C8799D4ELL);
  LOWORD(STACK[0x296]) = STACK[0x95E];
  STACK[0x298] = v2;
  STACK[0x2A0] = STACK[0x950];
  STACK[0x2A8] = STACK[0x948];
  STACK[0x2B0] = STACK[0x940];
  STACK[0x2B8] = STACK[0x938];
  STACK[0x2C0] = STACK[0x930];
  STACK[0x2C8] = v3;
  STACK[0x2D0] = 0x581B24B4097EEEB6;
  STACK[0x2D8] = v1 + 8 * (v0 - 1689);
  return (*(v1 + 8 * ((403 * (((v0 - 1689) ^ 0x6572484Fu) > 0x421E9B5B)) ^ (((v0 - 1689) ^ 0xFFFFFFFB) + v0 - 1689))))();
}

uint64_t sub_1BAEEF35C()
{
  v4 = STACK[0x4C0];
  v5 = (STACK[0x4C0] - 0x785FEF64C8799D66);
  STACK[0x9C8] = v5;
  STACK[0x9D0] = *v5;
  STACK[0x9D8] = v4 - 0x785FEF64C8799D4ELL;
  v6 = *(v4 - 0x785FEF64C8799D4ELL);
  STACK[0x9E0] = v6;
  return (*(v2 + 8 * (((v6 == 0) * ((37 * (v3 ^ (v0 - 26)) - 1272) ^ v3 ^ (v0 + 30))) ^ (v1 + v3 + 1292))))();
}

uint64_t sub_1BAEEF3E4()
{
  v3 = (*(v2 + 8 * (v0 + 2484)))(STACK[0x9C8]);
  v4 = STACK[0x9D0] != 0x785FEF64C8799D66;
  STACK[0x4C0] = STACK[0x9D0];
  return (*(v2 + 8 * ((v4 * (v0 - v1 + 1438233812 + ((v0 - 549531149) & 0xEAF56FFE))) ^ v0)))(v3);
}

uint64_t sub_1BAEEF4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v19 = (*(v18 + 8 * (v17 + 1303)))(STACK[0x4C8] - 0xF2C67B766E067CBLL, a2, a3, a4, a5, a6, a7, a8);
  *STACK[0x9A8] = 0xF2C67B766E067CBLL;
  STACK[0x4D0] = a17;
  return (*(v18 + 8 * v17))(v19);
}

uint64_t sub_1BAEEF5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(STACK[0x2EC]) = v60;
  v65 = *(v63 + 8 * SLODWORD(STACK[0x2E8]));
  LODWORD(STACK[0x30C]) = 1525096887;
  LODWORD(STACK[0x318]) = 1525096887;
  LODWORD(STACK[0x31C]) = 313522895;
  STACK[0x3B8] = v65;
  LODWORD(STACK[0x338]) = a4;
  return (*(v63 + 8 * (((a9 ^ (v61 - 290) ^ 0x127) * (v64 != 232)) ^ (v62 + a9 + 691))))(a1, a2, a3);
}

uint64_t sub_1BAEEF740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v57 = STACK[0x6A4];
  LODWORD(STACK[0xA00]) = STACK[0x6A4];
  STACK[0x218] = a36;
  STACK[0x220] = a36;
  return (*(v55 + 8 * (((((v54 + 616) | 0x46) ^ ((v54 - 535) | 0x40) ^ 0x2DE) * (v57 == v56)) ^ v54)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1BAEEF794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *(v38 - 104) = v36 - 2138855791 * ((v38 + 1345427492 - 2 * ((v38 - 112) & 0x50319894)) ^ 0x5F87A015) + 1968;
  v39 = (*(v37 + 8 * (v36 ^ 0xBB1)))(v38 - 112, a2, a3, a4, a5, a6, a7, a8);
  v40 = (v36 - 1285822775) & 0x4CA41F36 ^ *(v38 - 112) ^ 0x8DBC0D54;
  v41 = *(a36 - 0x4BCC923D0A7CA638);
  LODWORD(STACK[0xA04]) = v40;
  LODWORD(STACK[0x3A4]) = 156741423;
  LODWORD(STACK[0x3A8]) = v40;
  LODWORD(STACK[0x3AC]) = 595137706;
  STACK[0x420] = v41;
  return (*(v37 + 8 * v36))(v39);
}

uint64_t sub_1BAEEF8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(STACK[0xA00]) = v56;
  STACK[0x220] = a37;
  return (*(v55 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAEEF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  LODWORD(STACK[0xA00]) = a53;
  STACK[0x218] = a36;
  return (*(v54 + 8 * v53))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEF990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = STACK[0x220];
  *STACK[0x558] = STACK[0x220];
  STACK[0x230] = v65;
  return (*(v64 + 8 * v63))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1BAEEFA0C()
{
  v4 = STACK[0x548];
  v5 = STACK[0x648];
  STACK[0xA08] = *(v1 + 8 * v0);
  STACK[0xA18] = v5;
  STACK[0xA28] = v4;
  *(v3 - 104) = -1310139384 - 385730383 * ((((2 * (v3 - 112)) | 0x5A173720) - (v3 - 112) + 1391748208) ^ 0xD49AF041) + v0;
  *(v3 - 112) = &STACK[0xA08];
  v6 = (*(v1 + 8 * (v0 + 2472)))(v3 - 112);
  return (*(v1 + 8 * ((1264 * (*(v3 - 100) == v2)) ^ (v0 + ((v0 - 159) ^ 0x578) - 684))))(v6);
}

uint64_t sub_1BAEEFC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _1B0, void _1B8, void _1C0, void _1C8)
{
  LODWORD(STACK[0x664]) = a65;
  v67 = STACK[0x278];
  STACK[0x678] = STACK[0x278];
  v68 = STACK[0x258];
  LODWORD(STACK[0x9FC]) = v66;
  STACK[0x2B0] = v68;
  LODWORD(STACK[0x20C]) = a4;
  return (*(v65 + 8 * (((v67 == 0xF2C67B766E067CBLL) * ((((a9 + 1612848705) | 0x405D002) + 2078938653) ^ (a9 - 11032961) & 0xE0BA5D7B)) ^ a9)))(a1, a2, a3);
}

uint64_t sub_1BAEEFD0C()
{
  LODWORD(STACK[0x254]) = 2027328543;
  STACK[0x2C8] = STACK[0x528];
  LODWORD(STACK[0x260]) = STACK[0x664];
  STACK[0x2D8] = STACK[0x678];
  return (*(v1 + 8 * (v0 ^ 0x6427F199 ^ (1651 * (v0 < ((v0 + 978222401) ^ 0xB5D546BB))))))();
}

uint64_t sub_1BAEEFD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, char a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46, unint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, __int16 a57, uint64_t a58, uint64_t a59, unint64_t a60, unint64_t a61, uint64_t a62, unint64_t a63)
{
  v65 = STACK[0x2D8];
  v66 = STACK[0x260];
  v67 = STACK[0x2C8];
  LODWORD(STACK[0x6B0]) = STACK[0x254];
  v69 = v65 == 0xF2C67B766E067CBLL || v67 == 0x5481260E1BA2568BLL;
  LOBYTE(STACK[0x6B7]) = v69;
  STACK[0x6B8] = v65 - 0xF2C67B766E067CBLL;
  STACK[0x6C0] = &a27;
  STACK[0x6C8] = a24;
  STACK[0x6D0] = &a51;
  STACK[0x6D8] = a38;
  LODWORD(STACK[0x6E4]) = v66 + (v63 ^ 0x4D6B4967);
  STACK[0x6E8] = v67 - 0x5481260E1BA2568BLL;
  v71 = a46;
  v70 = a47;
  v72 = a63;
  v73 = a28;
  v74 = a60;
  v75 = a61;
  LOWORD(STACK[0x3C6]) = a57;
  STACK[0x428] = v71;
  STACK[0x3D0] = v75;
  STACK[0x3D8] = v74;
  STACK[0x438] = v73;
  STACK[0x3E8] = v72;
  STACK[0x450] = v70;
  return (*(v64 + 8 * (v63 ^ 0x9E76765C ^ (3015 * (v63 < 0x75AB821F)))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEEFFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  LODWORD(STACK[0x228]) = v30;
  STACK[0x2C0] = v31;
  v34 = *v31;
  STACK[0x6A8] = v34;
  LODWORD(STACK[0x284]) = a4;
  return (*(v33 + 8 * (((v34 != 0xF2C67B766E067CBLL) * (v32 + a9 + 88)) ^ (v32 + a9 + 531))))(a1, a2, a3);
}

uint64_t sub_1BAEF0090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = STACK[0x6A8] == 0xF2C67B766E067CBLL;
  LODWORD(STACK[0x274]) = a4;
  return (*(v26 + 8 * (((((v25 - 14) ^ v27) & 1) * ((v25 + 1575737150) & 0xA21422BB ^ 0x271)) ^ v25)))(a1, a2, a3);
}

uint64_t sub_1BAEF0120@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x254]) = -1646355007;
  STACK[0x2C8] = STACK[0x518];
  LODWORD(STACK[0x260]) = 550300581;
  STACK[0x2D8] = STACK[0x6A8];
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEF0224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x240] = v65;
  LODWORD(STACK[0x2E4]) = a65;
  return (*(v67 + 8 * v66))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF02B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v56 = (STACK[0x798] - 0x5128F3C4919EC5A8);
  STACK[0x7A0] = v56;
  v57 = *v56;
  STACK[0x7A8] = *v56;
  return (*(v55 + 8 * ((60 * (((a9 - v54 - 56 + a9 - 78 + 1) ^ (v57 == 0x4BCC923D0A7CA640)) & 1)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v57);
}

uint64_t sub_1BAEF0698()
{
  v2 = STACK[0x6D8];
  LOWORD(STACK[0x296]) = STACK[0x9A6];
  v3 = ((v0 - 235) ^ 0x2F76D1775F068A37) + v2;
  STACK[0x2F0] = STACK[0x998];
  STACK[0x2A0] = v2;
  STACK[0x2A8] = STACK[0x690];
  v4 = STACK[0x680];
  STACK[0x310] = STACK[0x680];
  STACK[0x2B8] = STACK[0x978];
  STACK[0x340] = STACK[0x970];
  STACK[0x368] = v4;
  STACK[0x2D0] = v3;
  STACK[0x370] = v1 + 8 * (v0 - 235);
  return (*(v1 + 8 * (v0 + 432)))();
}

uint64_t sub_1BAEF073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = v56 + v58 + 16;
  HIWORD(a55) = STACK[0x9F2];
  LOWORD(STACK[0x22C]) = STACK[0x9F2];
  LOWORD(STACK[0x22E]) = HIWORD(a55);
  STACK[0x288] = STACK[0x710];
  STACK[0x238] = STACK[0x760];
  STACK[0x298] = v57 + 8 * v59;
  return (*(v57 + 8 * ((v58 ^ (v55 + 1056)) + v59 - 273)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAEF0854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  STACK[0x248] = STACK[0x698];
  LOWORD(STACK[0x252]) = STACK[0x9E8];
  return (*(v17 + 8 * ((127 * (((v15 ^ (v16 + 622) ^ (a15 == 1)) & 1) == 0)) ^ v15)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF0A44()
{
  v2 = ((2 * STACK[0x738]) & 0xFFBF7B6D3EFFFDECLL) - 0x27C4990296011040 + ((((v0 + 1010) | 0x40u) + 0x7FDFBDB69F7FFA14) ^ STACK[0x738]);
  LOWORD(STACK[0x22C]) = STACK[0x9EA];
  LOWORD(STACK[0x22E]) = 32544;
  STACK[0x288] = STACK[0x710];
  STACK[0x238] = v2;
  STACK[0x298] = v1 + 8 * v0;
  return (*(v1 + 8 * (v0 + 849)))();
}

uint64_t sub_1BAEF0AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, __int16 a57, unint64_t a58)
{
  LODWORD(STACK[0x9FC]) = STACK[0x9EC];
  STACK[0x248] = a58;
  LOWORD(STACK[0x252]) = a57;
  return (*(v59 + 8 * (v58 + v60 + 1093)))(a1, a2, a3, 345984147, a5, a6, a7, a8);
}

uint64_t sub_1BAEF0BDC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x2B0] = a33;
  LODWORD(STACK[0x20C]) = a65;
  return (*(v65 + 8 * a1))();
}

uint64_t sub_1BAEF0C0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = LODWORD(STACK[0x96C]) != a4 + ((v4 - 1630708648) & 0x6132A1F1) - 493;
  LODWORD(STACK[0x274]) = a4 - 13;
  return (*(v5 + 8 * ((v6 * ((v4 + 278052577) & 0xEF6D3FBB ^ 0x205)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_1BAEF0CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v41 = *STACK[0x6C0];
  v42 = *(v41 - 0x785FEF64C8799D4ELL);
  STACK[0x6F0] = v42;
  LODWORD(STACK[0x6FC]) = *(v41 - 0x785FEF64C8799D56);
  LODWORD(STACK[0x274]) = a4;
  return (*(v40 + 8 * ((43 * (v42 != 0)) ^ a9)))(a1, a2, a3);
}

uint64_t sub_1BAEF0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v55 = LODWORD(STACK[0x6FC]) + ((v54 - 234133432) & 0xDF497B7) + ((LODWORD(STACK[0x6FC]) < ((59 * ((v54 + 355) ^ 0x395)) ^ 0x2393FB59u)) << 32) + 0x2CC1E8E1055559DFLL - STACK[0x6C8] + 0x2082C70C99295446 < 0xFFFFFFFFFFFFFFF6;
  LODWORD(STACK[0x274]) = a4 - 4;
  return (*(v53 + 8 * ((1714 * v55) ^ (v54 + 355))))(a1, a2, a3);
}

uint64_t sub_1BAEF0E14@<X0>(int a1@<W8>)
{
  v2 = STACK[0x6C8];
  v3 = STACK[0x6C8] + 0xAD674C6476C426CLL;
  LOWORD(STACK[0x296]) = STACK[0x9A6];
  STACK[0x2F0] = STACK[0x998];
  STACK[0x2A0] = STACK[0x990];
  STACK[0x2A8] = STACK[0x988];
  STACK[0x310] = STACK[0x980];
  STACK[0x2B8] = v2;
  v4 = STACK[0x6F0];
  STACK[0x340] = STACK[0x6F0];
  STACK[0x368] = v4;
  STACK[0x2D0] = v3;
  STACK[0x370] = v1 + 8 * a1;
  return (*(v1 + 8 * ((a1 + 835) ^ a1)))();
}

uint64_t sub_1BAEF0E90()
{
  v3 = STACK[0x2B8];
  v4 = STACK[0x2B8] - 0x4D44AFEDC212AC46;
  STACK[0x700] = STACK[0x340];
  STACK[0x708] = v3;
  v5 = STACK[0x2A0];
  v6 = STACK[0x2A0] - 0x28A4533CAA786415;
  v7 = STACK[0x2A0] - 0x28A4533CAA78640FLL;
  v8 = STACK[0x2A8];
  v9 = STACK[0x2A8] - 0xA700876A7D21594;
  STACK[0x710] = STACK[0x310];
  STACK[0x718] = v8;
  STACK[0x720] = v5;
  STACK[0x728] = STACK[0x2F0];
  STACK[0x730] = (v4 ^ 0x7FB93F75D3D63F9DLL) + ((2 * v4) & 0xFF727EEBA7AC7F3ALL) + ((v1 + v0 - 1248) ^ 0xEECFDBFB8FBFD692);
  STACK[0x738] = v7;
  STACK[0x740] = v9;
  LOBYTE(STACK[0x74F]) = v9 < 0x7F7B3C3;
  STACK[0x750] = (v6 ^ 0x6EAF3B7F7FE59FF5) - 0x26200E3C618060 + ((2 * v6) & 0xDD5E76FEFFCB3FEALL);
  STACK[0x758] = ((v4 + 2) ^ 0x5A1B67BD297EFFF7) - 0x200430920001141 + ((2 * (v4 + 2)) & 0xB436CF7A52FDFFEELL);
  STACK[0x760] = ((v6 + 2) ^ 0x7C1B35BF297EEFBFLL) - 0x2400110B20000109 + ((2 * (v6 + 2)) & 0xF8366B7E52FDDF7ELL);
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1BAEF1060@<X0>(uint64_t (**a1)(void)@<X8>)
{
  v7 = v2 + v1 - 0x581B24B4097EEEB6;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((0x4D7C3013B6750271 - v8) & 0x75530549AD230FB7) + v8 + 0x3283CFEC498AFD8ELL - ((v8 + 0x3283CFEC498AFD8ELL) & 0x73530549AD230FB7);
  v10 = __ROR8__(v9 ^ 0x6B165CB7EFD148A9, 8);
  v9 ^= 0xFF0823D5A386A4D8;
  v11 = (0x61C2C849B785CFCLL - ((v10 + v9) | 0x61C2C849B785CFCLL) + ((v10 + v9) | 0xF9E3D37B6487A303)) ^ 0x18D6D3D4FC3763DFLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (0x4B1F1F932A2D1FFALL - (v13 + v12) + ((2 * (v13 + v12)) & 0x69C1C0D9ABA5C00ALL)) ^ 0x4F8F3A911994FAC8;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xFD1C75332F7F0C87;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((0xCBE1CE2C6D636054 - (v18 + v17) + ((2 * (v18 + v17)) | 0x683C63A725393F58)) ^ 0xC80B8ADABB55473CLL, 8);
  v20 = (0xCBE1CE2C6D636054 - (v18 + v17) + ((2 * (v18 + v17)) | 0x683C63A725393F58)) ^ 0xC80B8ADABB55473CLL ^ __ROR8__(v17, 61);
  v21 = (0x4E57CE6D5C1D29D7 - ((v19 + v20) | 0x4E57CE6D5C1D29D7) + ((v19 + v20) | 0xB1A83192A3E2D628)) ^ 0xFA2F58C057B018E7;
  v22 = v21 ^ __ROR8__(v20, 61);
  STACK[0x500] = v2;
  LOWORD(STACK[0x9E8]) = v4;
  LOWORD(STACK[0x9EA]) = v3;
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xC809DE93B29A9CA6;
  LODWORD(v22) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v7 & 7u))) ^ *v7;
  v24 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = -2 - (((0x4D7C3013B6750271 - v24) | 0x80ECD30D5A457A12) + ((v24 + 0x3283CFEC498AFD8ELL) | 0x7F132CF2A5BA85EDLL));
  v26 = v25 ^ 0x9CA98AF318B73D0CLL;
  v25 ^= 0x8B7F59154E0D17DuLL;
  v27 = (__ROR8__(v26, 8) + v25) ^ 0xE13500AF98B0C0DCLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x490250233B9E532;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xFD1C75332F7F0C87;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (0x373962A3D245E58FLL - (v33 + v32) + ((2 * (v33 + v32)) & 0x918D3AB85B7434E0)) ^ 0xCB2CD9AAFB8C3D1FLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x4B876952F452CECFLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xC809DE93B29A9CA6;
  v39 = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v7 + 1) & 7))) ^ *(v7 + 1);
  LODWORD(v37) = *(v7 + 2);
  v40 = (__ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + 0x3283CFEC498AFD8ELL) & 0xF9FFFFFFFFFFFFFFLL;
  v41 = v40 ^ 0x1E4559FE42F2471ELL;
  v40 ^= 0x8A5B269C0EA5AB6FLL;
  v42 = __ROR8__(v41, 8);
  v43 = (v42 + v40 - 0x3592BDC24AC3A162 - ((2 * (v42 + v40)) & 0x94DA847B6A78BD3CLL)) ^ 0x2B5842922D8C9E42;
  v44 = v43 ^ __ROR8__(v40, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x490250233B9E532;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (0xD516FC9FFA2F48A0 - (v47 + v46) + (v6 & (2 * (v47 + v46)))) ^ 0x280A89ACD5504427;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xFC15BB0929C9D890;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x4B876952F452CECFLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xC809DE93B29A9CA6;
  v55 = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v53, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v7 + 2) & 7)));
  v56 = *(v7 + 3);
  v7 += 3;
  v57 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v58 = v55 ^ v37;
  v59 = -2 - (((0x4D7C3013B6750271 - v57) | 0x8667B3E936086AC9) + ((v57 + 0x3283CFEC498AFD8ELL) | 0x79984C16C9F79536));
  v60 = v59 ^ 0x9A22EA1774FA2DD7;
  v59 ^= 0xE3C957538ADC1A6uLL;
  v61 = (__ROR8__(v60, 8) + v59) ^ 0xE13500AF98B0C0DCLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x490250233B9E532;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (0x1380784254EB2752 - ((v65 + v64) | 0x1380784254EB2752) + ((v65 + v64) | 0xEC7F87BDAB14D8ADLL)) ^ 0x1163F28E846BD42ALL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (0x487919B9114A733ELL - (v68 + v67) + ((2 * (v68 + v67)) & 0x6F0DCC8DDD6B1982)) ^ 0xB46CA2B03883ABAELL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x4B876952F452CECFLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xC809DE93B29A9CA6;
  LODWORD(v7) = (((__ROR8__(v73, 8) + (v73 ^ __ROR8__(v72, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v7 & 7u))) ^ v56;
  LODWORD(v22) = (v39 << 16) | (v22 << 24) | (v58 << 8) | v7;
  LODWORD(STACK[0x9EC]) = v22 + v5 - 2 * (v22 & 0xB6B97F ^ v7 & 8);
  STACK[0x508] = a1;
  return (*a1)();
}

uint64_t sub_1BAEF16E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (LODWORD(STACK[0x9EC]) ^ LODWORD(STACK[0x6E4])) == v6 + (v7 ^ (v3 + 1353)) - 2011;
  LOWORD(STACK[0x436]) = STACK[0x9EA];
  v10 = STACK[0x728];
  STACK[0x498] = STACK[0x728];
  STACK[0x440] = STACK[0x720];
  STACK[0x448] = STACK[0x718];
  STACK[0x4A8] = STACK[0x710];
  STACK[0x458] = STACK[0x708];
  STACK[0x4B8] = STACK[0x700];
  LODWORD(STACK[0x3C0]) = v8;
  STACK[0x4C0] = v10;
  return (*(v5 + 8 * ((v9 * ((v7 + 99075044) & 0x1A0637FB ^ 0x539)) ^ (v4 + v7 + 1798))))(a1, a2, a3, 345984147);
}

uint64_t sub_1BAEF178C()
{
  v2 = STACK[0x728] - 0x785FEF64C8799D66;
  LOWORD(STACK[0x3FE]) = STACK[0x9EA];
  STACK[0x400] = STACK[0x720];
  STACK[0x408] = STACK[0x718];
  STACK[0x460] = STACK[0x710];
  STACK[0x418] = STACK[0x708];
  STACK[0x470] = STACK[0x700];
  STACK[0x480] = v2;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1BAEF1814@<X0>(int a1@<W8>)
{
  v3 = STACK[0x510] + v1 - 0x6E891B7143841F95;
  v4 = *v3;
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = ((v5 + 0x3283CFEC498AFD8ELL) | 0xFDF193CE63C9B16ELL) - ((v5 + 0x3283CFEC498AFD8ELL) | 0x20E6C319C364E91) + 0x20E6C319C364E91;
  v7 = v6 ^ 0xE1B4CA30213BF670;
  v6 ^= 0x75AAB5526D6C1A01uLL;
  v8 = (__ROR8__(v7, 8) + v6) ^ 0xE13500AF98B0C0DCLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x490250233B9E532;
  v11 = __ROR8__(v10, 8);
  v12 = v10 ^ __ROR8__(v9, 61);
  v13 = (0xD67BB062A74EED24 - (v11 + v12) + ((2 * (v11 + v12)) & 0x53089F3AB16225B6)) ^ 0x2B67C5518831E1A3;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - 0x5FBCB7822015D543 - ((2 * (v15 + v14)) & 0x408690FBBFD4557ALL)) ^ 0x5C56F374F623F22DLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((v18 + v17 + 0x5103047BB117CA82 - ((2 * (v18 + v17)) & 0xA20608F7622F9504)) ^ 0x1A846D294545044DLL, 8);
  v20 = (v18 + v17 + 0x5103047BB117CA82 - ((2 * (v18 + v17)) & 0xA20608F7622F9504)) ^ 0x1A846D294545044DLL ^ __ROR8__(v17, 61);
  v21 = ((__ROR8__((v19 + v20) ^ 0xC809DE93B29A9CA6, 8) + ((v19 + v20) ^ 0xC809DE93B29A9CA6 ^ __ROR8__(v20, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v3 & 7u));
  v22 = *++v3;
  v23 = v21 ^ v4;
  v24 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((0xCD7C3013B6750271 - v24) & 0xACFE31F5BB036B84) + v24 + 0x3283CFEC498AFD8ELL - ((v24 + 0x3283CFEC498AFD8ELL) & 0xAAFE31F5BB036B84);
  v26 = v25 ^ 0xB2BB680BF9F12C9ALL;
  v25 ^= 0x26A51769B5A6C0EBuLL;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__((((v27 + v25) & 0x12BED15EDE5DCB03 ^ 0x90C0469859C301) + ((v27 + v25) ^ 0xD36E3319672418BALL) - (((v27 + v25) ^ 0xD36E3319672418BALL) & 0x12BED15EDE5DCB03)) ^ 0x20E5E2E821C91365, 8);
  v29 = (((v27 + v25) & 0x12BED15EDE5DCB03 ^ 0x90C0469859C301) + ((v27 + v25) ^ 0xD36E3319672418BALL) - (((v27 + v25) ^ 0xD36E3319672418BALL) & 0x12BED15EDE5DCB03)) ^ 0x20E5E2E821C91365 ^ __ROR8__(v25, 61);
  v30 = (0x9AA019683D8A184ELL - (v28 + v29) + ((2 * (v28 + v29)) & 0xCABFCD2F84EBCF62)) ^ 0x9E303C6A0E33FD7CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xFD1C75332F7F0C87;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 + 0x26D9F58DB71E387BLL - ((2 * (v34 + v33)) & 0x4DB3EB1B6E3C70F6)) ^ 0xDACC4E849ED7E0EBLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x4B876952F452CECFLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xC809DE93B29A9CA6;
  LOBYTE(v3) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v3 & 7u))) ^ v22;
  LOWORD(STACK[0x9F2]) = (v3 | (v23 << 8)) - 2 * ((v3 & 0x5F | (v23 << 8) & 0x685F) ^ v3 & 8) - 6057;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1BAEF1C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = v57 + v59 + 99;
  HIWORD(a57) = STACK[0x9F2];
  LOWORD(STACK[0x22C]) = STACK[0x9EA];
  LOWORD(STACK[0x22E]) = STACK[0x9E8];
  STACK[0x288] = STACK[0x700];
  STACK[0x238] = STACK[0x758];
  STACK[0x298] = v58 + 8 * v60;
  return (*(v58 + 8 * (((v59 - 410573703) & 0x3866D6FE ^ 0x79C) + v60)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1BAEF1C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x768] = a61 - 0x4D44AFEDC212AC40;
  v66 = (LODWORD(STACK[0x9EC]) ^ v64) + a61;
  STACK[0x770] = v66 + 10;
  v67 = (v62 + v65 + 531) - 0x4D44AFEDAD9BAB33 + v66;
  v68 = v67 < 0x14770340;
  v69 = v67 > a60 - 0x2CC1E8E1147254BALL;
  if ((a60 - 0x2CC1E8E1147254BALL) < 0x14770340 != v68)
  {
    v69 = v68;
  }

  LODWORD(STACK[0x274]) = 345984143;
  return (*(v63 + 8 * ((v69 * ((v65 ^ (v61 + 864)) - 1431)) ^ (v62 + v65 + 1413))))(a1, a2, a3);
}

uint64_t sub_1BAEF1D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = STACK[0x274];
  *(STACK[0x538] - 0x731B233350562044) = 0;
  HIDWORD(a32) = -2135508617;
  LODWORD(STACK[0x284]) = v34;
  return (*(v32 + 8 * v33))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1BAEF1F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = LOWORD(STACK[0x77E]) == ((a9 - 50664605) & 0x1B3F ^ 0xB2B5);
  LODWORD(STACK[0x274]) = a4 - 12;
  return (*(v24 + 8 * ((v25 * (a9 + 622)) ^ a9)))(a1, a2, a3);
}

uint64_t sub_1BAEF1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  STACK[0x780] = a33;
  LODWORD(STACK[0x274]) = a4 - 2;
  return (*(v34 + 8 * (((((a33 == 0) ^ ((v33 & 0x3F ^ 0x2B) + 1)) & 1) * ((v33 & 0x3051B3F) - 2520)) ^ v33 & 0x3051B3F)))(a1, a2, a3);
}

uint64_t sub_1BAEF1FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, unsigned int a33)
{
  v37 = (*(v35 + 8 * (v34 ^ 0x290)))(v34 ^ 0xA21 ^ (v33 + 461) ^ a33, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x788] = v37;
  LODWORD(STACK[0x274]) = v36;
  return (*(v35 + 8 * (((v37 == 0) * ((v34 + 1203463937) & 0x84494FF ^ 0x421)) ^ v34)))();
}

uint64_t sub_1BAEF2034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v36 = (a33 ^ 0x80B6BE30 ^ ((v33 + 815) | 5)) - (((a33 ^ 0x80B6BE30 ^ ((v33 + 815) | 5)) << ((v33 + 87) ^ (v34 + 3))) & 0x4B145DA4) + 629812946;
  v37 = (v36 ^ 0x7A33D31B) - 1107349824 + ((2 * v36) & 0xBF73FB92 ^ 0xB105980);
  LODWORD(STACK[0x790]) = v37;
  return (*(v35 + 8 * ((112 * (v37 != 498674825)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF21C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (v12 + v14);
  v20 = __ROR8__((v18 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 + a2) ^ ((v17 ^ (v15 + 1563)) + v9);
  v22 = __ROR8__((v20 + a2) ^ a3, 8);
  v23 = (0x81F25595AB208B1ALL - (v22 + v21) + ((2 * (v22 + v21)) | 0xFC1B54D4A9BEE9CCLL)) ^ 0x9F38AAC5CC6FB43ALL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a4;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (a7 - ((v27 + v26) | a7) + ((v27 + v26) | 0xEA0891CE035606B1)) ^ a6;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (0x786DC38855154C40 - (v30 + v29) + (a8 & (2 * (v30 + v29)))) ^ 0x847878817CDC94D0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) & v13 ^ 0x8A81072F436C2241) + ((v33 + v32) ^ 0x3172E8D0BC90C0AELL) - (((v33 + v32) ^ 0x3172E8D0BC90C0AELL) & v13)) ^ 0xE136266DBFBEAC04 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__((((v33 + v32) & v13 ^ 0x8A81072F436C2241) + ((v33 + v32) ^ 0x3172E8D0BC90C0AELL) - (((v33 + v32) ^ 0x3172E8D0BC90C0AELL) & v13)) ^ 0xE136266DBFBEAC04, 8) + v34) ^ a1;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *(v8 + v19) = (((v11 - ((v37 + v36) | v11) + ((v37 + v36) | 0x2774BE880686A81DLL)) ^ 0xC3A45B3224F8E4BDLL) >> (8 * ((v18 + v12 + v14) & 7))) ^ *(v18 + v19);
  return (*(v16 + 8 * (((v12 + v14 != 0) * v10) ^ v17)))();
}

uint64_t sub_1BAEF23BC@<X0>(int a1@<W8>)
{
  *(STACK[0x538] - 0x731B233350562044) = STACK[0x788];
  LODWORD(STACK[0x284]) = v3;
  return (*(v2 + 8 * (v1 + a1 + 531)))();
}

uint64_t sub_1BAEF2430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x4B4]) = v62;
  STACK[0x9A8] = v63;
  v66 = *(v65 + 8 * v62);
  STACK[0x9B0] = v66;
  STACK[0x4F8] = v66;
  return (*(v65 + 8 * (((v63 == 0) * (((v64 + a9 - 2017) ^ (v64 + 1605)) - 1724)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, v66);
}

uint64_t sub_1BAEF2478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v52 = *STACK[0x9A8];
  STACK[0x9B8] = v52;
  STACK[0x4F8] = STACK[0x9B0];
  return (*(v51 + 8 * (((((v52 == 0xF2C67B766E067CBLL) ^ (((v49 + 67) ^ (v50 - 8)) + 1)) & 1) * (((v49 - 1469) | 0x840) ^ 0x886)) ^ v49)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v52);
}

uint64_t sub_1BAEF24E4@<X0>(int a1@<W8>)
{
  v4 = STACK[0x9B8];
  v5 = *(STACK[0x9B8] - 0xF2C67B766E067CBLL);
  STACK[0x9C0] = v5;
  STACK[0x4F0] = v4;
  return (*(v3 + 8 * (((v5 == 0x785FEF64C8799D66) * (v2 + (a1 ^ (v1 - 2376)) - 9)) ^ a1)))();
}

uint64_t sub_1BAEF26B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = STACK[0x31C];
  LODWORD(STACK[0x7EC]) = STACK[0x31C];
  v22 = STACK[0x318];
  LODWORD(STACK[0x7F0]) = STACK[0x318];
  LODWORD(STACK[0x7F4]) = STACK[0x30C];
  v23 = ((v18 + 2064288481) ^ 0xAD9A9A7E) + v21;
  v24 = v22 + ((v18 - 450680749) & 0x1ADCDF9F ^ 0x8E58E691);
  v25 = (v23 < 0xE9401142) ^ (v24 < 0xE9401142);
  v26 = v23 < v24;
  if (v25)
  {
    v26 = v24 < 0xE9401142;
  }

  LODWORD(STACK[0x334]) = v20;
  return (*(v19 + 8 * ((974 * v26) ^ v18)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BAEF275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = LODWORD(STACK[0x7EC]);
  v68 = (v67 | ((v67 < 0x12AFFACF) << 32)) - 313522895;
  STACK[0x7F8] = v68;
  v68 *= 40;
  STACK[0x800] = a65 + v68;
  STACK[0x808] = a65 - 0x267DF3F0128AD243;
  LODWORD(v68) = *(a65 - 0x267DF3F0128AD243 + v68 + 36) - a30 + 1906691969 == (((2 * (v65 ^ 0xB2C) - 1126) | 0x602) ^ 0x8980DC0);
  LODWORD(STACK[0x320]) = STACK[0x7F4];
  LODWORD(STACK[0x324]) = v67;
  return (*(v66 + 8 * ((100 * v68) ^ v65)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF2974()
{
  v2 = *(STACK[0x808] + 40 * STACK[0x7F8] + 16);
  STACK[0x818] = v2;
  LODWORD(STACK[0x328]) = STACK[0x7F4];
  LODWORD(STACK[0x32C]) = STACK[0x7F0];
  LODWORD(STACK[0x330]) = STACK[0x7EC];
  return (*(v1 + 8 * ((((((v0 - 2165) ^ (v2 == 0)) & 1) == 0) * ((v0 - 1821) ^ 0x2D5)) ^ v0)))();
}

uint64_t sub_1BAEF29DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  STACK[0x820] = a53;
  LODWORD(STACK[0x334]) = a4;
  return (*(v54 + 8 * (((a53 == 0xF2C67B766E067CBLL) * ((((v53 | 0x276) + 2012244413) & 0x880F92FF) + 1853)) ^ (v53 | 0x276))))(a1, a2, a3);
}

uint64_t sub_1BAEF2A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v49 = STACK[0x808] + 40 * STACK[0x7F8];
  v50 = *(v49 + 32);
  v51 = STACK[0x818] + 0x27DB1ED5A73C4037;
  LODWORD(v49) = *(v49 + 24);
  v53 = *(v48 + 8 * v47);
  LODWORD(STACK[0x33C]) = 2114199024;
  LODWORD(STACK[0x34C]) = v50;
  STACK[0x3C8] = STACK[0x820];
  STACK[0x360] = 0x3D21D251C7894B02;
  STACK[0x3E0] = v51;
  LODWORD(STACK[0x350]) = v49;
  LOWORD(STACK[0x35E]) = -14549;
  return (*(v48 + 8 * ((2034 * ((v47 + 1112923120 + v47 + 758) > 0xFD3335C8)) ^ (v47 + 503))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, v53);
}

uint64_t sub_1BAEF2B60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  STACK[0x810] = a53;
  LODWORD(STACK[0x334]) = a4;
  return (*(v54 + 8 * (((a53 == 0xF2C67B766E067CBLL) * ((((v53 + 2135880866) & 0xFBBB8CFD) - 2064288681) ^ (v53 - 2555))) ^ v53)))(a1, a2, a3);
}

uint64_t sub_1BAEF2BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v49 = *(STACK[0x800] - 0x267DF3F0128AD243);
  v50 = *(STACK[0x808] + 40 * STACK[0x7F8] + 24);
  v52 = *(v48 + 8 * v47);
  LODWORD(STACK[0x33C]) = 2114199024;
  LODWORD(STACK[0x34C]) = 506473166;
  STACK[0x3C8] = STACK[0x810];
  STACK[0x360] = v49;
  STACK[0x3E0] = 0x27DB1ED5A73C4037;
  LODWORD(STACK[0x350]) = v50;
  LOWORD(STACK[0x35E]) = -1323;
  return (*(v48 + 8 * (v47 + v47 + 823 - 369)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, v52);
}

uint64_t sub_1BAEF2CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  v55 = STACK[0x808] + 40 * STACK[0x7F8];
  v56 = *(v55 + 24);
  LODWORD(v55) = *(v55 + 8);
  HIDWORD(a23) = v56;
  LODWORD(STACK[0xA04]) = v55;
  HIDWORD(a19) = 1460823850;
  LODWORD(STACK[0x3A4]) = 1460823850;
  LODWORD(STACK[0x3A8]) = v55;
  LODWORD(STACK[0x3AC]) = v56;
  STACK[0x420] = a53;
  return (*(v54 + 8 * (v53 ^ 0x43863B94 ^ (824 * (v53 == ((v53 - 1480878952) & 0x14BE37F3) + 223330455)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a53);
}

uint64_t sub_1BAEF2D50()
{
  v3 = LODWORD(STACK[0x8F4]) != (v2 ^ 0xE0120075) - 346024986;
  LODWORD(STACK[0x334]) = STACK[0x8F4];
  return (*(v1 + 8 * ((v3 * (v2 + 535688867)) ^ (v0 + v2 + 257))))();
}

uint64_t sub_1BAEF2DC8()
{
  v3 = LODWORD(STACK[0x928]) == (v0 ^ 0x559 ^ (v2 - 171));
  LODWORD(STACK[0x334]) = STACK[0x928];
  return (*(v1 + 8 * ((v3 * ((v0 ^ 0x7B0A880B) - 2064285639)) ^ v0)))();
}

uint64_t sub_1BAEF2E78()
{
  v3 = LODWORD(STACK[0x8F4]) != (((v2 + 1509423770) | 0x41008809) ^ 0x906A9108);
  LODWORD(STACK[0x334]) = STACK[0x8F4];
  return (*(v1 + 8 * ((v3 * (((v2 - 18329163) & 0x2105ADFF) - 2322)) ^ (v0 + v2 + 257))))();
}

uint64_t sub_1BAEF2F04@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{
  v25 = STACK[0x334];
  STACK[0x3B8] = a24;
  LODWORD(STACK[0x338]) = v25;
  return (*(v24 + 8 * ((a1 - 1528599645 + ((a1 - 990544579) | 0xA0120020)) ^ (969 * (a1 < 0xCF3CD8DD)))))();
}

uint64_t sub_1BAEF2F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  LODWORD(STACK[0x320]) = 1525096887;
  LODWORD(STACK[0x324]) = a19;
  return (*(v20 + 8 * v19))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF2F9C()
{
  v2 = STACK[0x324];
  v3 = STACK[0x320];
  LODWORD(STACK[0x328]) = STACK[0x320];
  LODWORD(STACK[0x32C]) = v3;
  LODWORD(STACK[0x330]) = v2;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1BAEF2FD4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x32C];
  v3 = (a1 ^ 0x3F4) + LODWORD(STACK[0x330]) - 299;
  LODWORD(STACK[0x30C]) = STACK[0x328];
  LODWORD(STACK[0x318]) = v2;
  LODWORD(STACK[0x31C]) = v3;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEF3008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  LOWORD(STACK[0x842]) = STACK[0x35E];
  LODWORD(STACK[0x844]) = STACK[0x350];
  STACK[0x830] = STACK[0x3E0];
  STACK[0x838] = STACK[0x360];
  v29 = STACK[0x3C8];
  v30 = STACK[0x34C];
  LODWORD(STACK[0x848]) = STACK[0x34C];
  LODWORD(STACK[0x84C]) = STACK[0x33C];
  v32 = v29 != 0xF2C67B766E067CBLL && 507 * (a9 ^ 0x3AAu) + v30 - 506474679 < 0xFFFFFFF6;
  LODWORD(STACK[0x38C]) = a4;
  return (*(v28 + 8 * ((1422 * v32) ^ a9)))(a1, a2, a3);
}

uint64_t sub_1BAEF3098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = (*(v25 + 8 * (v26 + 1169)))(32, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x850] = v27;
  STACK[0x858] = &a25;
  a25 = v27 + 0x785FEF64C8799D66;
  LODWORD(STACK[0x388]) = 345984145;
  return (*(v25 + 8 * ((14 * ((((v26 + 632) ^ 0xE5 ^ (v27 == 0)) & 1) == 0)) | v26)))(v27, v28, v29, 345984147, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1BAEF3118()
{
  v3 = STACK[0x850];
  *v3 = 0x785FEF64C8799D66;
  *(v3 + 8) = 0x785FEF64C8799D66;
  v4 = STACK[0x848];
  *(v3 + 16) = LODWORD(STACK[0x848]) + 90427692;
  v5 = (*(v1 + 8 * (v0 + 537)))(v4 - 506474679 + ((v0 + 35) ^ 0x8DEu) + 1449);
  *(v3 + 24) = v5;
  STACK[0x860] = v3 + 24;
  LODWORD(STACK[0x388]) = v2;
  return (*(v1 + 8 * ((240 * (v5 == 0)) ^ v0)))();
}

uint64_t sub_1BAEF31B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LOWORD(STACK[0x842]) + 12950 + ((2 * ((LOWORD(STACK[0x842]) + 2480) & (v6 ^ (v4 - 48) ^ 0x2186) ^ (LOWORD(STACK[0x842]) | 0x7FF7))) ^ 0x13);
  LOBYTE(STACK[0x86E]) = HIBYTE(v7);
  LOBYTE(STACK[0x86F]) = v7;
  v8 = STACK[0x848];
  LODWORD(STACK[0x870]) = LODWORD(STACK[0x848]) - 2 * ((LODWORD(STACK[0x848]) + 1641010490) & 0x4FCB10E7 ^ STACK[0x848] & 1) + 832235040;
  LOBYTE(STACK[0x87B]) = v8 == 506473162;
  LODWORD(STACK[0x874]) = LODWORD(STACK[0x84C]) ^ 0x31CF0D16;
  return (*(v5 + 8 * (v6 ^ 0x43C)))(0xFC15BB0929C9D890, 0xE4D0E5BA227E4CA0, 0xE13500AF98B0C0DCLL, a4, v7 ^ 0xE5u);
}

uint64_t sub_1BAEF3344(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *v8;
  v17 = *v8 + 4;
  v18 = (__ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8) + v10) & 0xF9FFFFFFFFFFFFFFLL;
  v19 = v18 ^ 0x1E4559FE42F2471ELL;
  v18 ^= 0x8A5B269C0EA5AB6FLL;
  v20 = (__ROR8__(v19, 8) + v18) ^ a3;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v11;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a8;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a1;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v9;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (0xAAAAC5CD54BD710BLL - (v30 + v29) + ((2 * (v30 + v29)) & 0xAAAA746556851DE8)) ^ 0x62A31B5EE627EDADLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  *(v16 + 4) = v15 ^ (((0x9D53D2A7B86C6D68 - (v33 + v32) + ((2 * (v33 + v32)) | 0xC5585AB08F272530)) ^ 0x867CC8E265EDDE38) >> (8 * (v17 & 7u)));
  v34 = __ROR8__((v16 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = (v34 + v10) ^ 0x885B269C0EA5AB6FLL;
  v36 = (__ROR8__((v34 + v10) ^ 0x1C4559FE42F2471ELL, 8) + v35) ^ a3;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v11;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - 0x2A91452BD53FE520 - ((2 * (v40 + v39)) & 0xAADD75A8558035C0)) ^ 0x2872CFE705BF1667;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a1;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v9;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (0x964AD0183F74BFF6 - ((v47 + v46) | 0x964AD0183F74BFF6) + ((v47 + v46) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v16 + 5) = a5 ^ (((__ROR8__(v48, 8) + (v48 ^ __ROR8__(v46, 61))) ^ a2) >> (8 * ((v16 + 5) & 7)));
  STACK[0x378] = 0x1E06D87D68ADC51DLL;
  return (*(v13 + 8 * ((v12 + v14 + 51) ^ 0x993)))();
}

uint64_t sub_1BAEF35E4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x354]) = a1;
  LODWORD(STACK[0x358]) = v4;
  return (*(v3 + 8 * (v2 + v1 + 1102)))();
}

uint64_t sub_1BAEF3604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, int a5@<W8>)
{
  v14 = *v5 + v9 - 0x1E06D87D68ADC517;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = ((v15 + v7) | 0x7E054FB39FC80770) - ((v15 + v7) | 0x81FAB04C6037F88FLL) - 0x7E054FB39FC80771;
  v17 = __ROR8__(v16 ^ 0x6240164DDD3A406ELL, 8);
  v16 ^= 0xF65E692F916DAC1FLL;
  v18 = (v17 + v16) ^ a3;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v8;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a4;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = *(v11 + 8 * v13);
  v25 = (__ROR8__(v22, 8) + v23) ^ a1;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v6;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xC809DE93B29A9CA6;
  *v14 = (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61))) ^ a2) >> (8 * (v14 & 7u))) ^ HIBYTE(a5) ^ v10;
  v30 = __ROR8__((v14 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = ((0x4D7C3013B6750271 - v30) & 0x7C0A1F12C3784FEDLL) + v30 + v7 - ((v30 + v7) & 0x7A0A1F12C3784FEDLL);
  v32 = v31 ^ 0x624F46EC818A08F3;
  v31 ^= 0xF651398ECDDDE482;
  v33 = __ROR8__(v32, 8);
  v34 = (0x74F472E448216F49 - ((v33 + v31) | 0x74F472E448216F49) + ((v33 + v31) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (0x5D587E53351E1BD7 - ((v36 + v35) | 0x5D587E53351E1BD7) + ((v36 + v35) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0xFE5951FB672C4BC9 - ((v39 + v38) | 0xFE5951FB672C4BC9) + ((v39 + v38) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v42 + v41 - 0x6F28D7BF2B2B02F1 - ((2 * (v42 + v41)) & 0x21AE5081A9A9FA1ELL)) ^ 0x6CC29349FD1D259FLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = __ROR8__((v45 + v44 - 0x68143AAC23A6A19DLL - ((2 * (v45 + v44)) & 0x2FD78AA7B8B2BCC6)) ^ 0xDC6CAC01280B90ACLL, 8);
  v47 = (v45 + v44 - 0x68143AAC23A6A19DLL - ((2 * (v45 + v44)) & 0x2FD78AA7B8B2BCC6)) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v44, 61);
  *(v14 + 1) = (((__ROR8__((v46 + v47) ^ 0xC809DE93B29A9CA6, 8) + ((v46 + v47) ^ 0xC809DE93B29A9CA6 ^ __ROR8__(v47, 61))) ^ a2) >> (8 * ((v14 + 1) & 7))) ^ BYTE2(a5) ^ v12;
  v48 = __ROR8__((v14 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = v48 + 0x6AB9967E9EC7E503 - ((2 * v48 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL);
  v50 = __ROR8__(v49 ^ 0x24709F6C17CEA06BLL, 8);
  v49 ^= 0xB06EE00E5B994C1ALL;
  v51 = (0xBDAE503A387EAFC1 - (v50 + v49) + ((2 * (v50 + v49)) | 0x84A35F8B8F02A07ELL)) ^ 0xA364AF6A5F3190E3;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (0x528E42823A47F978 - (v53 + v52) + ((2 * (v53 + v52)) | 0x5AE37AFB8B700D10)) ^ 0xA9E1987FF601E3BALL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((0xAFCDD74745C3D614 - (v56 + v55) + ((2 * (v56 + v55)) | 0xA0645171747853D8)) ^ 0xAD2E5D8B9543256BLL, 8);
  v58 = (0xAFCDD74745C3D614 - (v56 + v55) + ((2 * (v56 + v55)) | 0xA0645171747853D8)) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v55, 61);
  v59 = (0x9F82B478FE4E36CBLL - (v57 + v58) + ((2 * (v57 + v58)) & 0xC0FA970E03639268)) ^ 0x63970F71D787EE5BLL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (0xE072E29E6EF7C0DBLL - (v61 + v60) + ((2 * (v61 + v60)) & 0x3F1A3AC322107E48)) ^ 0xABF58BCC9AA50E14;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (0xAF664B3BAC6B979BLL - (v64 + v63) + ((2 * (v64 + v63)) | 0xA1336988A728D0CALL)) ^ 0x98906A57E10EF4C3;
  v66 = __ROR8__(v65, 8);
  v67 = __ROR8__(v63, 61);
  *(v14 + 2) = (((0x7C4FE0556218D93DLL - ((v66 + (v65 ^ v67)) | 0x7C4FE0556218D93DLL) + ((v66 + (v65 ^ v67)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v14 + 2) & 7))) ^ BYTE1(a5) ^ 0x10;
  v68 = __ROR8__((v14 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = v68 + 0x6271E77BE8951CBLL - ((2 * v68 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL);
  v70 = v69 ^ 0xCFE61775360C1323;
  v69 ^= 0x5BF868177A5BFF52uLL;
  v71 = __ROR8__(v70, 8);
  v72 = (0xE73D1027B3969B0BLL - (v71 + v69) + ((2 * (v71 + v69)) & 0x3185DFB098D2C9E8)) ^ 0x60810882B265BD7;
  v73 = v72 ^ __ROR8__(v69, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ v8;
  v75 = __ROR8__(v74, 8);
  v76 = v74 ^ __ROR8__(v73, 61);
  v77 = (0x42C5569356D8FE22 - ((v75 + v76) | 0x42C5569356D8FE22) + ((v75 + v76) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (0x91F090D5486CA88BLL - (v79 + v78) + ((2 * (v79 + v78)) & 0xDC1EDE556F26AEE8)) ^ 0x6DE52BDC61A5701BLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v6;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xC809DE93B29A9CA6;
  *(v14 + 3) = a5 ^ 0xE6 ^ (((__ROR8__(v84, 8) + (v84 ^ __ROR8__(v83, 61))) ^ a2) >> (8 * ((v14 + 3) & 7)));
  return v24();
}

uint64_t sub_1BAEF3FE4(uint64_t a1)
{
  STACK[0x880] = *(*STACK[0x858] - 0x785FEF64C8799D4ELL);
  v3 = LODWORD(STACK[0x848]) - ((2 * LODWORD(STACK[0x848]) + 60795508) & 0x3D017008) - 2142204610;
  v4 = (v3 ^ 0xCD1D07D1) - 1074792449 + (((v1 - 856) ^ 0x47297324 ^ (v1 - 480522194) & 0xFCB62FFF) & (2 * v3) ^ 0x25017008);
  LODWORD(STACK[0x87C]) = v4;
  return (*(v2 + 8 * ((122 * (v4 == 328054740)) ^ v1)))(a1, 0x4B876952F452CECFLL, 0x3283CFEC498AFD8ELL, 0x490250233B9E532);
}

uint64_t sub_1BAEF4104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x890] = STACK[0x830] - 0x27DB1ED5A73C4037;
  LODWORD(STACK[0x384]) = STACK[0x87C];
  return (*(v6 + 8 * v5))(0x501A719F6969C05FLL, a2, a3, a4, a5, 0x2C25ABD97A9C3C9, 0x210581206080015);
}

uint64_t sub_1BAEF4198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v18 = (v13 - 1) + ((v14 + v9 - 1506) ^ 0x1F2098F88EC87A32) + ((v13 - 1 < v8) << 32) - 0x1F2098F882682B2CLL;
  v19 = __ROR8__((v18 + v17 + 10) & 0xFFFFFFFFFFFFFFF8, 8) + a3;
  v20 = __ROR8__(v19 ^ v11, 8);
  v21 = v19 ^ v10;
  v22 = (((v20 + v21) & 0x1A10D85A16CC1CF5 ^ a6) + ((v20 + v21) & 0xE5EF27A5E933E30ALL ^ 0xE1E7020009110301) - 1) ^ a5;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a4;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v12;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v16;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a2;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (((v31 + v32) & a1 ^ 0x4002101C61218051) + ((v31 + v32) ^ 0xBCDD6DA31CDC648ELL) - (((v31 + v32) ^ 0xBCDD6DA31CDC648ELL) & a1)) ^ 0x24CEC2AFC72F3877;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  *(v18 + v17 + 10) = (((0xB8B20ECE3E35896CLL - (v35 + v34) + ((2 * (v35 + v34)) & 0x8E9BE2638394ED26)) ^ 0x5C62EB741C4BC5CCLL) >> (8 * ((v18 + v17 + 10) & 7))) ^ *(a7 + v18);
  return (*(v15 + 8 * (((v8 + 1 == v13) * a8) ^ v9)))();
}

uint64_t sub_1BAEF43D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = ((LODWORD(STACK[0x848]) - v4) | (v4 - LODWORD(STACK[0x848]))) >> ((((v4 + 16) & 0xAD) - 77) ^ 0x20);
  LODWORD(STACK[0x388]) = a4 - 4;
  return (*(v5 + 8 * ((1819 * ((v6 & 1) == 0)) ^ (v4 - 506472897))))(a1, a2, a3);
}

uint64_t sub_1BAEF4444()
{
  v2 = *(*STACK[0x858] - 0x785FEF64C8799D4ELL);
  v3 = 0x18EEA685B7DF836DLL * STACK[0x838] - ((0x31DD4D0B6FBF06DALL * STACK[0x838] + 0x48CC1A408D6144CLL) & 0x2C65C7A2CEED3AA6) + 0x787944A36BE1A779;
  v4 = __ROR8__((v2 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = ((((v0 - 1073739517) | 0x20120028u) + 0x3283CFEB6978F424 + v4) | 0x8EF30571B3E03BF9) - ((((v0 - 1073739517) | 0x20120028u) + 0x3283CFEB6978F424 + v4) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v6 = v5 ^ 0x92B65C8FF1127CE7;
  v5 ^= 0x6A823EDBD459096uLL;
  v7 = (__ROR8__(v6, 8) + v5) ^ 0xE13500AF98B0C0DCLL;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x490250233B9E532;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((v11 + v10) | 0x6257A18AC6AFEA71) - ((v11 + v10) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xFC15BB0929C9D890;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((((2 * (v16 + v15)) | 0x73433184586818C6) - (v16 + v15) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL, 8);
  v18 = (((2 * (v16 + v15)) | 0x73433184586818C6) - (v16 + v15) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL ^ __ROR8__(v15, 61);
  v19 = (((2 * (v17 + v18)) & 0x2E6D9124F850C1CLL) - (v17 + v18) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v2[10] = (((((v21 + v20) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v21 + v20) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v2 + 10) & 7u))) ^ HIBYTE(v3) ^ 0x16;
  v22 = __ROR8__((v2 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((v22 + 0x3283CFEC498AFD8ELL) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v22 + 0x3283CFEC498AFD8ELL) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v24 = v23 ^ 0x5BE668DB5A344230;
  v23 ^= 0xCFF817B91663AE41;
  v25 = (__ROR8__(v24, 8) + v23) ^ 0xE13500AF98B0C0DCLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x490250233B9E532;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xFD1C75332F7F0C87;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xFED65BFA7285710) - (v37 + v36) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v2[11] = (((((v40 + v39) | 0x21983AC56B0BB129) - ((v40 + v39) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v2 + 11) & 7u))) ^ BYTE6(v3) ^ 0x32;
  v41 = __ROR8__((v2 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = -2 - (((0xD7C3013B6750271 - v41) | 0xEFC9086FACD320D4) + ((v41 + 0x3283CFEC498AFD8ELL) | 0x1036F790532CDF2BLL));
  v43 = v42 ^ 0xF38C5191EE2167CALL;
  v42 ^= 0x67922EF3A2768BBBuLL;
  v44 = (__ROR8__(v43, 8) + v42) ^ 0xE13500AF98B0C0DCLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = __ROR8__((((2 * (v46 + v45)) & 0xA44BB63E2DDF8B52) - (v46 + v45) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64, 8);
  v48 = (((2 * (v46 + v45)) & 0xA44BB63E2DDF8B52) - (v46 + v45) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64 ^ __ROR8__(v45, 61);
  v49 = (v47 + v48) ^ 0xFD1C75332F7F0C87;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFC15BB0929C9D890;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((v53 + v52) | 0xD2E383F95083B686) - ((v53 + v52) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xC809DE93B29A9CA6;
  v2[12] = (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 12) & 7u))) ^ BYTE5(v3) ^ 0xE3;
  v57 = __ROR8__((v2 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v58 = ((2 * (v57 + 0x3283CFEC498AFD8ELL)) | 0xA4234159906F106ALL) - (v57 + 0x3283CFEC498AFD8ELL) + 0x2DEE5F5337C877CBLL;
  v59 = v58 ^ 0xCE54F9528AC5CF2BLL;
  v58 ^= 0x5A4A8630C692235AuLL;
  v60 = __ROR8__(v59, 8);
  v61 = (((v60 + v58) | 0xD738201BC43E983BLL) - ((v60 + v58) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v62 = v61 ^ __ROR8__(v58, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) ^ 0x70783716B7118F26) - ((2 * ((v63 + v62) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xFD1C75332F7F0C87;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (v68 + v67 - ((2 * (v68 + v67)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x4B876952F452CECFLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xC809DE93B29A9CA6;
  v74 = __ROR8__(v73, 8);
  v75 = __ROR8__(v72, 61);
  v76 = (((v74 + (v73 ^ v75) - ((2 * (v74 + (v73 ^ v75))) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v2 + 13) & 7u))) ^ BYTE4(v3) ^ 0xD1;
  v77 = __ROR8__((v2 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v2[13] = v76;
  v78 = (0xCD7C3013B6750271 - v77) & 0xF050E761A6289A68 | (v77 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v79 = v78 ^ 0xEE15BE9FE4DADD76;
  v78 ^= 0x7A0BC1FDA88D3107uLL;
  v80 = (__ROR8__(v79, 8) + v78) ^ 0xE13500AF98B0C0DCLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((v82 + v81) | 0x349C4C6A3E574525) - ((v82 + v81) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xFD1C75332F7F0C87;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xFC15BB0929C9D890;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x4B876952F452CECFLL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) | 0x749128A0D39CA49CLL) - (v91 + v90) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v2[14] = (((__ROR8__(v92, 8) + (v92 ^ __ROR8__(v90, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 14) & 7u))) ^ BYTE3(v3) ^ 0x67;
  v93 = __ROR8__((v2 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = (0x57C3013B6750271 - v93) & 0x5D98955B3706B30 | (v93 + 0x3283CFEC498AFD8ELL) & 0xFA2676AA4C8F94CFLL;
  v95 = v94 ^ 0x199CD0ABF1822C2ELL;
  v94 ^= 0x8D82AFC9BDD5C05FLL;
  v96 = (__ROR8__(v95, 8) + v94) ^ 0xE13500AF98B0C0DCLL;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((2 * (v98 + v97)) | 0x86D73428622BDA3ALL) - (v98 + v97) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xFD1C75332F7F0C87;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) & 0x407F7AAF3D2F06C8) - (v103 + v102) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x4B876952F452CECFLL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0xC809DE93B29A9CA6;
  v2[15] = (((__ROR8__(v108, 8) + (v108 ^ __ROR8__(v107, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 15) & 7u))) ^ BYTE2(v3) ^ 0x76;
  v109 = __ROR8__((v2 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v110 = ((2 * v109 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v109 + 0x5649FDBD14324CA8;
  v111 = v110 ^ 0x948894571F4F0D28;
  v110 ^= 0x96EB355318E159uLL;
  v112 = __ROR8__(v111, 8);
  v113 = (((2 * (v112 + v110)) & 0xA1738BF9A2E70742) - (v112 + v110) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v114 = v113 ^ __ROR8__(v110, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x490250233B9E532;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (((2 * (v117 + v116)) & 0x2D730DB5B3BDACF8) - (v117 + v116) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (((2 * (v120 + v119)) | 0x4D17F792C6A75DEALL) - (v120 + v119) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = __ROR8__(v121, 8);
  v124 = __ROR8__((((2 * (v123 + v122)) & 0x305CE5312BE34172) - (v123 + v122) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189, 8);
  v125 = (((2 * (v123 + v122)) & 0x305CE5312BE34172) - (v123 + v122) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189 ^ __ROR8__(v122, 61);
  v126 = (v124 + v125) ^ 0xC809DE93B29A9CA6;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v2[16] = (((v128 + v127 - ((2 * (v128 + v127)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CLL) >> (8 * ((v2 + 16) & 7u))) ^ BYTE1(v3) ^ 0x9D;
  v129 = __ROR8__((v2 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v130 = ((2 * ((v129 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v129 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v131 = v130 ^ 0xD9CC90F52308FB19;
  v130 ^= 0x4DD2EF976F5F1768uLL;
  v132 = __ROR8__(v131, 8);
  v133 = __ROR8__((((2 * (v132 + v130)) | 0xC93FF3953A26D81ALL) - (v132 + v130) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1, 8);
  v134 = (((2 * (v132 + v130)) | 0xC93FF3953A26D81ALL) - (v132 + v130) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1 ^ __ROR8__(v130, 61);
  v135 = (v133 + v134) ^ 0x490250233B9E532;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0xFD1C75332F7F0C87;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = __ROR8__(v137, 8);
  v140 = (((2 * (v139 + v138)) | 0x9AD9A558F1F83E32) - (v139 + v138) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x4B876952F452CECFLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v2[17] = (((__ROR8__(v145, 8) + (v145 ^ __ROR8__(v143, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v2 + 17) & 7u))) ^ v3 ^ 0x53;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1BAEF53CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31)
{
  LODWORD(STACK[0x254]) = -1956996880;
  STACK[0x2C8] = STACK[0x520];
  LODWORD(STACK[0x260]) = STACK[0x844];
  STACK[0x2D8] = a31;
  return (*(v32 + 8 * (v31 + a4 + 523)))(a1, a2, a3, 345984147);
}

uint64_t sub_1BAEF54D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  STACK[0x898] = a35;
  STACK[0x8A0] = a35 - 0xF2C67B766E067C3;
  v37 = *(a35 - 0xF2C67B766E067C3);
  STACK[0x8A8] = v37;
  return (*(v36 + 8 * (((v37 == 0x785FEF64C8799D66) * ((v35 - 408444914) & 0x18585BF7 ^ 0x1BA)) ^ v35)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF5558@<X0>(unsigned int a1@<W8>)
{
  *STACK[0x8A0] = v1;
  *(STACK[0x898] - 0xF2C67B766E067CBLL) = v1;
  LODWORD(STACK[0x38C]) = v3;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1BAEF5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8B0] = &a65;
  v67 = a65;
  v68 = *(a65 - 0x785FEF64C8799D5ELL);
  STACK[0x8B8] = v68;
  STACK[0x8C0] = a25;
  STACK[0x8C8] = a25 - 0x785FEF64C8799D5ELL;
  *(a25 - 0x785FEF64C8799D5ELL) = v68;
  v69 = *(v67 - 0x785FEF64C8799D66);
  STACK[0x8D0] = a25 - 0x785FEF64C8799D66;
  *(a25 - 0x785FEF64C8799D66) = v69;
  STACK[0x3F0] = v69;
  return (*(v66 + 8 * (((v68 == 0x785FEF64C8799D66) * (((v65 ^ 0xE0120F7D) + 535691127) ^ 0x927)) ^ v65)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF5730@<X0>(int a1@<W8>)
{
  v3 = STACK[0x3F0];
  STACK[0x8D8] = STACK[0x3F0];
  return (*(v2 + 8 * ((((((a1 - 44338555) & 0x2292851B) + 254) ^ (a1 + 370082444) & 0x9DEF7DF) * (v3 == 0x785FEF64C8799D66)) ^ (v1 + a1 + 180))))();
}

uint64_t sub_1BAEF5994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v18 = (*(v17 + 8 * (v15 ^ 0x9E2)))(STACK[0x8E0], a2, a3, a4, a5, a6, a7, a8);
  *(*STACK[0x8B0] - 0x785FEF64C8799D4ELL) = 0;
  return (*(v17 + 8 * (v15 ^ (16 * ((((v15 + 1611660736) ^ 0x80020868 ^ (a15 == (((v15 + 1611660736) | 0x80020868) ^ (v16 + 3)))) & 1) == 0)))))(v18);
}

uint64_t sub_1BAEF5A38()
{
  v4 = STACK[0x410];
  STACK[0x8E8] = STACK[0x410];
  LODWORD(STACK[0x38C]) = v2;
  return (*(v1 + 8 * (((v4 != 0x785FEF64C8799D66) * (((v0 + v3 + 225) | 0xC) ^ 0x24F)) ^ (v0 + v3 + 458))))();
}

uint64_t sub_1BAEF5A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35)
{
  v38 = (*(v36 + 8 * (v35 + 2451)))(STACK[0x8E8] - 0x785FEF64C8799D66, a2, a3, a4, a5, a6, a7, a8);
  *STACK[0x8B0] = 0x785FEF64C8799D66;
  LODWORD(STACK[0x388]) = a35;
  LODWORD(STACK[0x38C]) = v37;
  return (*(v36 + 8 * (((a35 == (((v35 - 536737707) | 0x100008) ^ 0xB72146F)) * (((v35 - 133) | 0x804) + 358)) ^ v35)))(v38);
}

uint64_t sub_1BAEF5B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25)
{
  LODWORD(STACK[0x88C]) = STACK[0x388];
  STACK[0x8F8] = a25;
  STACK[0x900] = a25 - 0x785FEF64C8799D4ELL;
  v27 = *(a25 - 0x785FEF64C8799D4ELL);
  STACK[0x908] = v27;
  return (*(v26 + 8 * (((((v25 - 1) ^ (v27 == 0)) & 1) * (v25 ^ 0x8B1)) ^ v25)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF5BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v17 = (*(v16 + 8 * (v15 + 1610)))(STACK[0x908], a2, a3, a4, a5, a6, a7, a8);
  *STACK[0x900] = 0;
  return (*(v16 + 8 * (((a15 == 1) * (((((2 * v15) ^ 0xD72) - 853) | 0x120) - 926)) ^ v15)))(v17);
}

uint64_t sub_1BAEF5C0C()
{
  v4 = STACK[0x8F8] == 0x785FEF64C8799D66;
  LODWORD(STACK[0x38C]) = STACK[0x88C];
  return (*(v1 + 8 * ((99 * ((((v0 + (v3 ^ (v2 + 347)) + 420) ^ v4) & 1) == 0)) ^ v3)))();
}

uint64_t sub_1BAEF5C6C()
{
  v2 = (*(v1 + 8 * (v0 + 2268)))(STACK[0x8F8] - 0x785FEF64C8799D66);
  LODWORD(STACK[0x38C]) = STACK[0x88C];
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1BAEF5CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  LODWORD(STACK[0x3B0]) = a20;
  LODWORD(STACK[0x3B4]) = STACK[0x8F4];
  return (*(v21 + 8 * (v20 + v22 + 594)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF5D08@<X0>(unsigned int a1@<W8>)
{
  *(STACK[0x8A8] - 0x785FEF64C8799D66) = v1;
  v4 = STACK[0x8A0];
  *(v1 - 0x785FEF64C8799D5ELL) = *STACK[0x8A0];
  *v4 = v1;
  LODWORD(STACK[0x38C]) = v3;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1BAEF5D50(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = STACK[0x420];
  STACK[0x918] = STACK[0x420];
  LODWORD(STACK[0x914]) = STACK[0x3AC];
  LODWORD(STACK[0x924]) = STACK[0x3A8];
  LODWORD(STACK[0x3B0]) = STACK[0x3A4];
  LODWORD(STACK[0x3B4]) = a4;
  return (*(v5 + 8 * (((v6 != 0xF2C67B766E067CBLL) * (((v4 - 1676) | 0x1B) - 106)) ^ v4)))(a1, a2, a3);
}

uint64_t sub_1BAEF5DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = *(v48 + 8 * v47);
  LODWORD(STACK[0x33C]) = STACK[0x924];
  LODWORD(STACK[0x34C]) = 506473162;
  STACK[0x3C8] = STACK[0x918];
  STACK[0x360] = 0x3D21D251C7894B02;
  STACK[0x3E0] = 0x27DB1ED5A73C4037;
  LODWORD(STACK[0x350]) = STACK[0x914];
  LOWORD(STACK[0x35E]) = 3527;
  return (*(v48 + 8 * ((v47 + 406) ^ v47)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, v50);
}

uint64_t sub_1BAEF5E2C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x928]) = STACK[0x3B4];
  LODWORD(STACK[0x92C]) = STACK[0x3B0];
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEF5F14@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  v34 = STACK[0xA04];
  LODWORD(STACK[0x3A4]) = STACK[0x92C];
  LODWORD(STACK[0x3A8]) = v34;
  LODWORD(STACK[0x3AC]) = a17;
  STACK[0x420] = a33;
  return (*(v33 + 8 * a1))();
}

uint64_t sub_1BAEF5F60@<X0>(int a1@<W3>, int a2@<W8>)
{
  v3 = STACK[0x450];
  v4 = STACK[0x3E8];
  v5 = STACK[0x438];
  v6 = STACK[0x3D8];
  v7 = STACK[0x3D0];
  v8 = STACK[0x428];
  v9 = STACK[0x3C6];
  LOWORD(STACK[0x3FE]) = STACK[0x3C6];
  STACK[0x400] = v7;
  STACK[0x408] = v6;
  STACK[0x460] = v5;
  STACK[0x418] = v4;
  STACK[0x470] = v3;
  STACK[0x480] = STACK[0x6B8];
  LOWORD(STACK[0x47E]) = v9;
  STACK[0x4C8] = v8;
  STACK[0x488] = v7;
  STACK[0x490] = v6;
  STACK[0x4D0] = v5;
  STACK[0x4A0] = v4;
  STACK[0x4D8] = v3;
  LODWORD(STACK[0x46C]) = a1;
  return (*(v2 + 8 * ((LOBYTE(STACK[0x6B7]) * (3 * (((a2 - 1290) | 0x2B0) ^ 0x1A9) + 785)) ^ a2)))();
}

uint64_t sub_1BAEF5FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = STACK[0x480];
  STACK[0x930] = STACK[0x470];
  STACK[0x938] = STACK[0x418];
  v41 = STACK[0x460];
  STACK[0x940] = STACK[0x460];
  v42 = STACK[0x408];
  STACK[0x948] = STACK[0x408];
  v43 = STACK[0x400];
  STACK[0x950] = STACK[0x400];
  v44 = STACK[0x3FE];
  LOWORD(STACK[0x95E]) = STACK[0x3FE];
  v45 = *v40;
  STACK[0x960] = v45;
  LOWORD(STACK[0x436]) = v44;
  STACK[0x498] = v45;
  STACK[0x440] = v43;
  STACK[0x448] = v42;
  STACK[0x4A8] = v41;
  STACK[0x458] = STACK[0x938];
  STACK[0x4B8] = STACK[0x930];
  LODWORD(STACK[0x3C0]) = a4 - 13;
  STACK[0x4C0] = 0x785FEF64C8799D66;
  return (*(v39 + 8 * (((v45 == 0x785FEF64C8799D66) * ((((v38 - 2031487629) & 0x791600F7) + 1894) ^ (v38 - 560))) ^ v38)))(a1, a2, a3);
}

uint64_t sub_1BAEF60B0@<X0>(int a1@<W8>)
{
  v2 = STACK[0x3C0];
  v3 = STACK[0x4B8];
  v4 = STACK[0x458];
  v5 = STACK[0x4A8];
  v6 = STACK[0x448];
  v7 = STACK[0x440];
  v8 = STACK[0x498];
  v9 = STACK[0x436];
  *STACK[0x6E8] = STACK[0x4C0];
  LOWORD(STACK[0x47E]) = v9;
  STACK[0x4C8] = v8;
  STACK[0x488] = v7;
  STACK[0x490] = v6;
  STACK[0x4D0] = v5;
  STACK[0x4A0] = v4;
  STACK[0x4D8] = v3;
  LODWORD(STACK[0x46C]) = v2;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1BAEF610C()
{
  LODWORD(STACK[0x96C]) = STACK[0x46C];
  STACK[0x970] = STACK[0x4D8];
  v2 = STACK[0x4A0];
  STACK[0x978] = STACK[0x4A0];
  v3 = STACK[0x4D0];
  STACK[0x980] = STACK[0x4D0];
  v4 = STACK[0x490];
  STACK[0x988] = STACK[0x490];
  v5 = STACK[0x488];
  STACK[0x990] = STACK[0x488];
  v6 = STACK[0x4C8];
  STACK[0x998] = STACK[0x4C8];
  v7 = STACK[0x47E];
  LOWORD(STACK[0x9A6]) = STACK[0x47E];
  LOWORD(STACK[0x3C6]) = v7;
  STACK[0x428] = v6;
  STACK[0x3D0] = v5;
  STACK[0x3D8] = v4;
  STACK[0x438] = v3;
  STACK[0x3E8] = v2;
  STACK[0x450] = STACK[0x970];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1BAEF62A4()
{
  v2 = STACK[0x960];
  v3 = *(STACK[0x960] - 0x785FEF64C8799D4ELL);
  LOWORD(STACK[0x296]) = STACK[0x95E];
  STACK[0x2F0] = v2;
  STACK[0x2A0] = STACK[0x950];
  STACK[0x2A8] = STACK[0x948];
  STACK[0x310] = STACK[0x940];
  STACK[0x2B8] = STACK[0x938];
  STACK[0x340] = STACK[0x930];
  STACK[0x368] = v3;
  STACK[0x2D0] = 0x581B24B4097EEEB6;
  STACK[0x370] = v1 + 8 * v0;
  return (*(v1 + 8 * (v0 + v0 + 1132 - 531)))();
}

uint64_t sub_1BAEF637C()
{
  v4 = STACK[0x4E0];
  v5 = (STACK[0x4E0] - 0x785FEF64C8799D66);
  STACK[0x9C8] = v5;
  STACK[0x9D0] = *v5;
  STACK[0x9D8] = v4 - 0x785FEF64C8799D4ELL;
  v6 = *(v4 - 0x785FEF64C8799D4ELL);
  STACK[0x9E0] = v6;
  return (*(v3 + 8 * (((v6 == 0) * (((v0 ^ (v1 + 470)) + 736) ^ 0x55A)) ^ (v2 + v0 + 1292))))();
}

uint64_t sub_1BAEF63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v17 = (*(v16 + 8 * (v15 + 1388)))(STACK[0x9E0], a2, a3, a4, a5, a6, a7, a8);
  *STACK[0x9D8] = 0;
  return (*(v16 + 8 * (((a15 == 1) * (((2 * v15) ^ 0x83C) - 413)) ^ v15)))(v17);
}

uint64_t sub_1BAEF6448()
{
  v3 = (*(v1 + 8 * (v2 + 2124)))(STACK[0x9C8]);
  v4 = STACK[0x9D0] == 0x785FEF64C8799D66;
  STACK[0x4E0] = STACK[0x9D0];
  return (*(v1 + 8 * ((v4 * ((v2 - 323515990) & 0xF35A7D6B ^ (v0 - 24))) ^ v2)))(v3);
}

uint64_t sub_1BAEF64E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62)
{
  v66 = (*(v64 + 8 * (v65 + v62 + 679)))(STACK[0x4F0] - 0xF2C67B766E067CBLL, a2, a3, a4, a5, a6, a7, a8);
  *STACK[0x9A8] = 0xF2C67B766E067CBLL;
  STACK[0x4F8] = a62;
  return (*(v64 + 8 * (v63 + v62 + 960)))(v66);
}

void sub_1BAEF655C()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36EF0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * (dword_1EBC36EF0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x31]) - 1);
  v1 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - *v0) ^ 0x88))] ^ 0x2F] ^ (127 * ((dword_1EBC36FA0 - *v0) ^ 0x88))) - 1);
  v2 = (*v1 + *v0) ^ &v5;
  v3 = (2140301951 * v2) ^ 0x3D3AC77DA7219688;
  v4 = 2140301951 * (v2 ^ 0x3D3AC77DA7219688);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v4) = 127 * ((v4 + *v0) ^ 0x88);
  **(&off_1E7F1D8C0 + (v4 ^ byte_1BAF9DAE0[byte_1BAF9CAF0[v4] ^ 0x2F]) + 54) = 792205614;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1BAEF671C(uint64_t (**a1)(uint64_t *a1), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _BYTE *a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  v50 = v24;
  v48 = v23;
  unk_1EBC3A820 = 0xD4AD9910E031EBC0;
  unk_1EBC3A840 = 0x85B3B5F517D7C101;
  qword_1EBC3A7B8 = 0;
  qword_1EBC3A7E8 = 0;
  v29 = &qword_1EBC3A7C0;
  v49 = v25;
  do
  {
    if (!qword_1EBC3A848)
    {
      if (atomic_exchange(dword_1EBC3A830, 1u))
      {
        v30 = 1;
        while (dword_1EBC3A830[0] || atomic_exchange(dword_1EBC3A830, 1u))
        {
          if ((v30 & 0x3F) == 0)
          {
            a1 = (*(v26 + 21192))(a1, a2, a3, a4, a5, a6, a7, a8);
          }

          ++v30;
        }
      }

      if (!qword_1EBC3A848)
      {
        a1 = (*(v26 + 21592))(29, a2, a3, a4, a5, a6, a7, a8);
        qword_1EBC3A850 = a1;
        xmmword_1EBC3A858 = xmmword_1BAF9E2C0;
        qword_1EBC3A868 = 0x200000;
        dword_1EBC3A870 = 7;
        a23 = &a23 ^ 0x55555558;
        qword_1EBC3A848 = &a23 ^ 0x55555558;
      }

      atomic_store(0, dword_1EBC3A830);
    }

    if (qword_1EBC3A850 == -1040)
    {
      *v29 = 0;
LABEL_28:
      v46 = -1;
      return (*(v26 + 8 * ((79 * ((((v46 ^ 0xAFFC5F2F) + 2134620671 + ((2 * v46) & 0x5FF8BE5E) == 792205614) ^ 0xE5) & 1)) ^ 0x58Bu)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, v48, 0x10000, 0x40000, a13, &a23 ^ 0x55555558, a15, v49, &qword_1EBC3A850, v50, a19, a20, &unk_1EBC3A7D0, a22, a23);
    }

    v31 = (2 * xmmword_1EBC3A858 - 1) & -xmmword_1EBC3A858;
    a1 = (*(v26 + 8 * ((((*a20 ^ v28 ^ *v50) * v27) ^ *(a19 + (*(v25 + ((*a20 ^ v28 ^ *v50) * v27)) ^ 0x2Fu))) + 2619)))(0, v31, 3, 4098, 0xFFFFFFFFLL, 0, a7, a8);
    if (a1 == -1)
    {
      v34 = 0;
    }

    else
    {
      if (((a1 + 2) & 0xF) != 0)
      {
        v32 = -(a1 + 16) & 0xFLL;
      }

      else
      {
        v32 = 0;
      }

      v33 = a1 + v32;
      v34 = a1 + v32 + 16;
      v35 = (*a20 ^ v28 ^ *v50) * v27;
      v36 = a1;
      (*(v26 + 8 * ((byte_1BAF9A674[(byte_1BAF98F6C[v35 - 12] ^ 0x72) - 4] ^ v35) + 2451)))(v34, 0, 960);
      *(v33 + 225) = 0;
      *(v33 + 1) = 963;
      *(v33 + 5) = v36;
      *(v33 + 113) = v36;
      *(v33 + 110) = v31;
      *(v33 + 109) = v31;
      *(v33 + 114) = v31;
      v37 = qword_1EBC3A848;
      *(v33 + 9) = 4095;
      *(v33 + 10) = v37;
      v38 = v28;
      v39 = dword_1EBC3A870 | 4;
      a1 = (*(v26 + 21560))(v33 + 936, 0, 16);
      *(v33 + 224) = v39;
      v28 = v38;
      *(v33 + 14) = v33 + 88;
      *(v33 + 13) = v33 + 88;
      *(v33 + 16) = v33 + 104;
      *(v33 + 15) = v33 + 104;
      *(v33 + 17) = v33 + 120;
      *(v33 + 18) = v33 + 120;
      *(v33 + 20) = v33 + 136;
      *(v33 + 19) = v33 + 136;
      *(v33 + 22) = v33 + 152;
      *(v33 + 21) = v33 + 152;
      *(v33 + 23) = v33 + 168;
      *(v33 + 24) = v33 + 168;
      *(v33 + 26) = v33 + 184;
      *(v33 + 25) = v33 + 184;
      *(v33 + 28) = v33 + 200;
      *(v33 + 27) = v33 + 200;
      *(v33 + 29) = v33 + 216;
      *(v33 + 30) = v33 + 216;
      *(v33 + 32) = v33 + 232;
      *(v33 + 31) = v33 + 232;
      *(v33 + 33) = v33 + 248;
      *(v33 + 34) = v33 + 248;
      *(v33 + 36) = v33 + 264;
      *(v33 + 35) = v33 + 264;
      *(v33 + 38) = v33 + 280;
      *(v33 + 37) = v33 + 280;
      *(v33 + 40) = v33 + 296;
      *(v33 + 39) = v33 + 296;
      *(v33 + 42) = v33 + 312;
      *(v33 + 41) = v33 + 312;
      *(v33 + 44) = v33 + 328;
      *(v33 + 43) = v33 + 328;
      *(v33 + 46) = v33 + 344;
      *(v33 + 45) = v33 + 344;
      *(v33 + 47) = v33 + 360;
      *(v33 + 48) = v33 + 360;
      *(v33 + 49) = v33 + 376;
      *(v33 + 50) = v33 + 376;
      *(v33 + 51) = v33 + 392;
      *(v33 + 52) = v33 + 392;
      *(v33 + 53) = v33 + 408;
      *(v33 + 54) = v33 + 408;
      *(v33 + 55) = v33 + 424;
      *(v33 + 56) = v33 + 424;
      *(v33 + 57) = v33 + 440;
      *(v33 + 58) = v33 + 440;
      *(v33 + 59) = v33 + 456;
      *(v33 + 60) = v33 + 456;
      *(v33 + 61) = v33 + 472;
      *(v33 + 62) = v33 + 472;
      *(v33 + 63) = v33 + 488;
      *(v33 + 64) = v33 + 488;
      *(v33 + 65) = v33 + 504;
      *(v33 + 66) = v33 + 504;
      *(v33 + 67) = v33 + 520;
      *(v33 + 68) = v33 + 520;
      *(v33 + 69) = v33 + 536;
      *(v33 + 70) = v33 + 536;
      *(v33 + 71) = v33 + 552;
      *(v33 + 72) = v33 + 552;
      *(v33 + 73) = v33 + 568;
      *(v33 + 75) = v33 + 584;
      *(v33 + 76) = v33 + 584;
      *(v33 + 74) = v33 + 568;
      v40 = &v34[*(v33 + 1) & 0xFFFFFFFFFFFFFFF8];
      v41 = v40 - 16;
      v42 = v36 + v31;
      v27 = 127;
      if ((v40 & 0xF) != 0)
      {
        v43 = -v40 & 0xFLL;
      }

      else
      {
        v43 = 0;
      }

      v44 = &v41[v43];
      v45 = v42 - v41 - v43 - 80;
      *(v33 + 7) = v44;
      *(v33 + 4) = v45;
      *(v44 + 1) = v45 | 1;
      *&v44[v45 + 8] = 80;
      *(v33 + 8) = qword_1EBC3A868;
      *(v33 + 232) = 1;
      *(v33 + 224) |= 2u;
      v25 = v49;
    }

    *v29 = v34;
    if (!v34)
    {
      goto LABEL_28;
    }

    ++v29;
  }

  while (v29 < &unk_1EBC3A7D0);
  a1 = (*(v26 + 8 * (((((*v50 - *a20) ^ v28) * v27) ^ *(a19 + (*(v25 + (((*v50 - *a20) ^ v28) * v27)) ^ 0x2Du))) + 2478)))(128);
  **(&off_1E7F1D8C0 + (((*a20 ^ v28 ^ *v50) * v27) ^ *(a19 + (*(v25 + ((*a20 ^ v28 ^ *v50) * v27)) ^ 0x2Fu))) - 17) = a1;
  if (a1)
  {
    v46 = 0;
    *a1 = sub_1BAEFD37C;
    a1[1] = sub_1BAEFD2B4;
    a1[2] = sub_1BAEFD290;
    a1[3] = sub_1BAEFD120;
    a1[4] = sub_1BAEFC464;
    a1[5] = sub_1BAEFC418;
    a1[6] = sub_1BAEFC3D4;
    a1[7] = sub_1BAEFC204;
    a1[8] = sub_1BAEFC074;
    a1[9] = sub_1BAEFBF9C;
    a1[10] = sub_1BAEFBF68;
    a1[11] = sub_1BAEFBDF4;
    a1[12] = sub_1BAEFB9F4;
    a1[13] = sub_1BAEFB5C0;
    a1[14] = sub_1BAEFB15C;
    a1[15] = sub_1BAEFAAC8;
  }

  else
  {
    v46 = -1;
  }

  return (*(v26 + 8 * ((79 * ((((v46 ^ 0xAFFC5F2F) + 2134620671 + ((2 * v46) & 0x5FF8BE5E) == 792205614) ^ 0xE5) & 1)) ^ 0x58Bu)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, v48, 0x10000, 0x40000, a13, &a23 ^ 0x55555558, a15, v49, &qword_1EBC3A850, v50, a19, a20, &unk_1EBC3A7D0, a22, a23);
}

uint64_t sub_1BAEF6E10()
{
  v5 = v0 ^ (v2 + 3311);
  v6 = (v0 + 1196904779) & 0xBB9753F7;
  v7 = v0 + v1;
  v8 = v0 + v1 + 1385;
  v9 = (*(v3 + 8 * (v0 ^ v2)))(512);
  **(v4 + 8 * v7) = v9;
  return (*(v3 + 8 * (((v9 == 0) * ((v6 ^ 0x705) + v5)) ^ v8)))();
}

uint64_t sub_1BAEF6EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, unsigned int a27)
{
  a27 = v29 - (((&a25 | 0xE5F5890E) - &a25 + (&a25 & 0x1A0A76F0)) ^ 0xEA43B18F) * v28 + 781;
  v33 = (*(v30 + 8 * (v29 + 1262)))(&a25, a2, a3, a4, a5, a6, a7, a8);
  *(*v31 + v32 + v27) ^= a25 ^ 0xF3B817B4;
  return (*(v30 + 8 * ((((v32 + 4 + v27) < 0x200) * ((v29 + 1610496072) & 0xFBEBF774 ^ 0x5BEA350B)) ^ v29)))(v33);
}

uint64_t sub_1BAEF6F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26)
{
  v32 = (v30 - 1542075724) | 0xC0;
  v33 = v30 - 1542075041;
  v34 = *v29;
  if ((((v30 - 1542075041) ^ v32 ^ 0x228) & *v29) != 0 || (v35 = *(v31 + 8 * (v30 - 1542075719)), v37 = *(v35 - 4), v36 = (v35 - 4), v37))
  {
    *a15 = v26 + 1;
    return (*(v28 + 8 * v32))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    *v36 = v34;
    **(v31 + 8 * (v33 & 0xF8E38550)) = 255;
    *v34 |= ~v34[*v34 & 0x3ELL] << 16;
    v34[4] |= ((v30 + 186980935) & 0x98F0B5FA ^ 0xFFFFFA4D ^ v34[v34[4] & 0x3ELL]) << (((v30 + 111) & 0xBB) + 117);
    v34[8] |= ~v34[v34[8] & 0x3ELL] << 16;
    v34[12] |= ~v34[v34[12] & 0x3ELL] << 16;
    v34[16] |= ~v34[v34[16] & 0x3ELL] << 16;
    v34[20] |= ~v34[v34[20] & 0x3ELL] << 16;
    v34[24] |= ~v34[v34[24] & 0x3ELL] << 16;
    v34[28] |= ~v34[v34[28] & 0x3ELL] << 16;
    v34[32] |= ~v34[v34[32] & 0x3ELL] << 16;
    v34[36] |= ~v34[v34[36] & 0x3ELL] << 16;
    v34[40] |= ~v34[v34[40] & 0x3ELL] << 16;
    v34[44] |= ~v34[v34[44] & 0x3ELL] << 16;
    v34[48] |= ~v34[v34[48] & 0x3ELL] << 16;
    v34[52] |= ~v34[v34[52] & 0x3ELL] << 16;
    v34[56] |= ~v34[v34[56] & 0x3ELL] << 16;
    v34[60] |= ~v34[v34[60] & 0x3ELL] << 16;
    a26 = v33 - ((&a25 & 0x1D70D3DE | ~(&a25 | 0x1D70D3DE)) ^ 0xED3914A0) * v27 + 1521;
    v38 = (*(v28 + 8 * (v30 - 1542073039)))(&a25, a2, a3, a4, a5, a6, a7, a8);
    return (*(v28 + 8 * ((2732 * (*(*(v31 + 8 * (v33 & 0xCD2E3415)) - 4) == -17958193)) ^ v33)))(v38);
  }
}

uint64_t sub_1BAEF752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = v7 + v8;
  qword_1EBC3A7B0 = *(v11 + 32) + v9 - *(a2 + 24);
  return (*(v10 + 8 * (((*(v11 + 40) >= ((a7 + 145028187) & 0xF75B0ABB ^ 0x88BuLL)) * (((a7 - 2426) | 0x2C5) ^ 0x2D0)) ^ (a7 + 34))))(a1);
}

uint64_t sub_1BAEF75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = qword_1EBC3A818 - 2 * ((qword_1EBC3A818 + ((v22 - 2137) | 0x29u) + 0x1FFFFFFFFFFFFF85) & 0x16DCBAE2379431FELL ^ qword_1EBC3A818 & 2) - 0x6923451DC86BCE14;
  v25 = ((((((v22 - 448849572) & 0x1AC0DEEC) + 0x3F69234439) ^ HIDWORD(v24)) + 1) >> 32) & 0x20;
  v26 = v24 ^ 0x96DCBAE2379431FCLL;
  v27 = ((v24 ^ 0x96DCBAE2379431FCLL) >> v25) - ((2 * ((v24 ^ 0x96DCBAE2379431FCLL) >> v25)) & 0x16A3E1437CB2C1C8) + 0xB51F0A1BE5960E4;
  v28 = (((v27 ^ 0x1BE590000) + 0x1FFFFF0000) >> 32) & 0x10;
  v29 = ((v27 ^ 0xB51F0A1BE5960E4) << v28) + 2481963979519040000 + (~(2 * ((v27 ^ 0xB51F0A1BE5960E4) << v28)) | 0xBB1C95D23EE7CBFFLL) + 1;
  v30 = (((v29 ^ 0x6E0000000) + 0xFFF000000) >> 32) & 8;
  v31 = v28 | v30;
  v32 = ((v29 ^ 0x2271B516E08C1A00) << v30) - 0x42B3D892DABA3BE4 + (~(2 * ((v29 ^ 0x2271B516E08C1A00) << v30)) | 0x8567B125B57477C7) + 1;
  v33 = (((v32 ^ 0x520000000) + 0x7F0000000) >> 32) & 4;
  v34 = v31 | v33;
  v35 = ((v32 ^ 0xBD4C276D2545C41CLL) << v33) - ((2 * ((v32 ^ 0xBD4C276D2545C41CLL) << v33)) & 0x3B94BC26FB986876) + 0x1DCA5E137DCC343BLL;
  v36 = (((v35 ^ 0x340000000) + 0x3C0000000) >> 32) & 2;
  LODWORD(v35) = ((v35 ^ 0x7DCC343B) << v36) >> 30;
  v37 = v25 - v34 - v36 + (~(v35 >> 1) & v35);
  v38 = ((2 * ((v37 + 14) >> 63)) ^ 2) & 0xFFFFFFFFFFFFFFFELL | ((v37 + 14) >> 63);
  if ((v37 - 32) >= -46)
  {
    v39 = 15;
  }

  else
  {
    v39 = v37 + 44;
  }

  **(&off_1E7F1D8C0 + (v22 ^ 0x8DA)) = (0xC734DE5F901B2605 << (v37 + 29)) + (v38 + 0x38CB21A06FE4D9FALL) * ((1 << (v37 + 29)) - 0x8000) - 0x22884131AAAEF1C0;
  v40 = ((1 << (v39 - v38 + 16 * v38 - 30)) ^ 0xBF365EBFF3F5FFBFLL) + ((2 << (v39 - v38 + 16 * v38 - 30)) & 0x7E6CBD7FE7EBFF7ELL);
  v41 = a21 & (v26 - v40 - 0x40C9A1400C0A0041) & 0xFFFFFFFFFFFFF000;
  *(*(&off_1E7F1D8C0 + v22 - 2167) - 4) = v41 ^ 0x9F73E45F17249C37;
  qword_1EBC3A7B0 = (v41 + qword_1EBC3A7B0) ^ 0x7A3119C4C28143AELL;
  qword_1EBC3A818 = (v40 + 0x40C9A1400C0A0040) ^ 0x6378A02ED3ECB81ALL;
  return (*(v23 + 8 * ((53 * v21) ^ v22)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAEF7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, unint64_t a27)
{
  v30 = 663017543 * ((-2 - ((~&a25 | 0xC220D012EACC02A9) + (&a25 | 0x3DDF2FED1533FD56))) ^ 0xDBACB0D1B7DC5F8DLL);
  v31 = *(v29 + 8 * v28) - v30;
  a26 = *(v27 + 8 * (v28 - 76)) - 4;
  a27 = v31;
  a25 = v28 - v30 + 1231722861;
  v32 = (*(v29 + 8 * (v28 ^ 0xAD9)))(&a25, a2, a3, a4, a5, a6, a7, a8);
  return (*(v29 + 8 * (v28 ^ 0xFD115B2E ^ v28 ^ 0xFD115BCA)))(v32);
}

uint64_t sub_1BAEF7A88(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36FC0) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 + dword_1EBC36FC0) ^ 0x88))] ^ 0x66]) + 39);
  v3 = *(v2 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A774[(byte_1BAF99064[(127 * ((dword_1EBC36FA0 + v3) ^ 0x88)) - 4] ^ 0x4E) - 4] ^ (127 * ((dword_1EBC36FA0 + v3) ^ 0x88))) - 57);
  v5 = &v13[*v4 ^ v3];
  v6 = 2140301951 * v5 - 0x2DAA06A0DC720288;
  v7 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = 127 * (*(v2 - 4) ^ 0x88 ^ v7);
  v8 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36FC0) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36FC0) ^ 0x88))] ^ 0xBE]) - 46);
  v9 = (*(v8 + 8 * ((byte_1BAF9A474[(byte_1BAF98C60[v7] ^ 0x20) - 4] ^ v7) + 2503)))(a2);
  v10 = 127 * ((*v4 - *(v2 - 4)) ^ 0x88);
  v11 = *(v8 + 8 * ((byte_1BAF9A674[(byte_1BAF98F6C[v10 - 12] ^ 0xBE) - 4] ^ v10) + 2615));

  return v11(v9);
}

void *sub_1BAEF7C70(unint64_t a1)
{
  v1 = 0x3D3AC77DA7219688;
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36F58) ^ 0x88)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((dword_1EBC36FA0 + dword_1EBC36F58) ^ 0x88))] ^ 0xF9]) - 181);
  v4 = *(v2 - 4);
  v3 = (v2 - 4);
  v5 = *(&off_1E7F1D8C0 + ((127 * (v4 ^ dword_1EBC36FA0 ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * (v4 ^ dword_1EBC36FA0 ^ 0x88))] ^ 0x20]) - 113);
  v6 = (*v5 - v4) ^ &v255;
  v7 = 2140301951 * v6 + 0x3D3AC77DA7219688;
  v8 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  *v3 = v7;
  *v5 = v8;
  LOBYTE(v8) = 127 * (*v3 ^ 0x88 ^ v8);
  v9 = *(&off_1E7F1D8C0 + (byte_1BAF9A770[byte_1BAF99060[v8] ^ 0x4E] ^ v8) - 21);
  LODWORD(v7) = (*v9)++;
  v10 = v7 & 1;
  v254 = v5;
  LODWORD(v7) = 2140301951 * ((*v5 + *v3) ^ 0xA7219688);
  v11 = *(*(&off_1E7F1D8C0 + (byte_1BAF9A570[byte_1BAF98D60[v7] ^ 0xF9] ^ v7) - 166) + v10);
  if (!v11)
  {
    return 0;
  }

  v253 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F58 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * (dword_1EBC36F58 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x20]) - 74);
  if ((*(v11 + 880) & 2) != 0 && atomic_exchange((v11 + 884), 1u))
  {
    v13 = 1;
    while (*(v11 + 884) || atomic_exchange((v11 + 884), 1u))
    {
      if ((v13 & 0x3F) == 0)
      {
        v14 = v1;
        (*(v253 + 8 * (((127 * ((*v254 + *v3) ^ v1)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v254 + *v3) ^ v1))] ^ 0x11]) + 2604)))();
        v1 = v14;
      }

      ++v13;
    }
  }

  v15 = (*(&off_1E7F1D8C0 + (byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((*v254 - *v3) ^ v1))] ^ 0x31] ^ (127 * ((*v254 - *v3) ^ v1))) - 5) - 8);
  if (a1 <= 0xE0)
  {
    v16 = (a1 + 31) & 0x1F0;
    if (a1 < 0xF)
    {
      v16 = 32;
    }

    v17 = v16 >> 3;
    v18 = *v11;
    v19 = *v11 >> (v16 >> 3);
    if ((v19 & 3) != 0)
    {
      v20 = ((*v11 >> (v16 >> 3)) & 1 | v17) ^ 1;
      v21 = v11 + 8 * (2 * v20);
      v22 = v21 + 72;
      v23 = *(v21 + 88);
      v24 = v23[2];
      if (v22 == v24)
      {
        *v11 = v18 & ~(1 << v20);
      }

      else
      {
        *(v24 + 24) = v22;
        *(v22 + 16) = v24;
      }

      v23[1] = (8 * (v20 & 0x3F)) | 3;
      v42 = &v23[v20];
      v42[1] |= 1uLL;
      *v42 = *v15 ^ v11;
      goto LABEL_93;
    }

    if (v16 > *(v11 + 8))
    {
      if (v19)
      {
        v29 = (v19 << v17) & ((2 << v17) | -(2 << v17));
        v30 = (v29 - 1) & ~v29;
        v31 = (v30 >> 12) & 0x10;
        v32 = v30 >> v31;
        v33 = v31 & 0xFFFFFFF0 | (v32 >> 5) & 0xF;
        v34 = v32 >> ((v32 >> 5) & 8);
        v35 = v33 & 0xFFFFFFF8 | (v34 >> 2) & 7;
        v36 = v34 >> ((v34 >> 2) & 4);
        v37 = (v35 & 0xFFFFFFFC | (v36 >> 1) & 2 | (v36 >> ((v36 >> 1) & 2) >> 1) & 1) + (v36 >> ((v36 >> 1) & 2) >> (((v36 >> ((v36 >> 1) & 2)) & 2) != 0));
        v38 = v11 + 16 * v37;
        v39 = v38 + 72;
        v40 = *(v38 + 88);
        v41 = *(v40 + 16);
        if (v39 == v41)
        {
          *v11 = v18 & ~(1 << v37);
        }

        else
        {
          *(v41 + 24) = v39;
          *(v39 + 16) = v41;
        }

        v132 = 8 * v37;
        v73 = v132 - v16;
        if (v132 - v16 <= 0x1F)
        {
          *(v40 + 8) = v132 | 3;
          v133 = (v40 + v132);
LABEL_218:
          v133[1] |= 1uLL;
          *v133 = *v15 ^ v11;
          result = (v40 + 16);
          goto LABEL_94;
        }

        *(v40 + 8) = v16 | 3;
        v134 = (v40 + v16);
        *v134 = *v15 ^ v11;
        v134[1] = v73 | 1;
        goto LABEL_220;
      }

      v65 = *(v11 + 4);
      if (v65)
      {
        v66 = (v65 - 1) & ~v65;
        v67 = (v66 >> 12) & 0x10;
        v68 = v66 >> v67;
        v69 = v67 & 0xFFFFFFF0 | (v68 >> 5) & 0xF;
        v70 = v68 >> ((v68 >> 5) & 8);
        v71 = v69 & 0xFFFFFFF8 | (v70 >> 2) & 7;
        v72 = v70 >> ((v70 >> 2) & 4);
        v40 = *(v11 + 8 * ((v71 & 0xFFFFFFFC | (v72 >> 1) & 2 | (v72 >> ((v72 >> 1) & 2) >> 1) & 1) + (v72 >> ((v72 >> 1) & 2) >> (((v72 >> ((v72 >> 1) & 2)) & 2) != 0))) + 600);
        v73 = (*(v40 + 8) & 0xFFFFFFFFFFFFFFF8) - v16;
        v74 = 32;
        if (!*(v40 + 32))
        {
          v74 = 40;
        }

        for (i = *(v40 + v74); i; i = *(i + v76))
        {
          if ((*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v16 < v73)
          {
            v40 = i;
            v73 = (*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v16;
          }

          if (*(i + 32))
          {
            v76 = 32;
          }

          else
          {
            v76 = 40;
          }
        }

        v77 = *(v40 + 48);
        v78 = *(v40 + 24);
        if (v78 == v40)
        {
          v152 = (v40 + 40);
          v153 = *(v40 + 40);
          if (v153 || (v152 = (v40 + 32), (v153 = *(v40 + 32)) != 0))
          {
            do
            {
              do
              {
                v154 = v152;
                v78 = v153;
                v152 = v153 + 5;
                v153 = v153[5];
              }

              while (v153);
              v152 = v78 + 4;
              v153 = v78[4];
            }

            while (v153);
            *v154 = 0;
            if (!v77)
            {
              goto LABEL_216;
            }
          }

          else
          {
            v78 = 0;
            if (!v77)
            {
              goto LABEL_216;
            }
          }
        }

        else
        {
          v79 = *(v40 + 16);
          *(v79 + 24) = v78;
          v78[2] = v79;
          if (!v77)
          {
            goto LABEL_216;
          }
        }

        v155 = v11 + 8 * *(v40 + 56);
        if (v40 == *(v155 + 600))
        {
          *(v155 + 600) = v78;
          if (!v78)
          {
            *(v11 + 4) &= ~(1 << *(v40 + 56));
LABEL_216:
            if (v73 <= 0x1F)
            {
              v182 = v73 + v16;
              *(v40 + 8) = v182 | 3;
              v133 = (v40 + v182);
              goto LABEL_218;
            }

            *(v40 + 8) = v16 | 3;
            *(v40 + v16) = *v15 ^ v11;
            v134 = (v40 + v16);
            v134[1] = v73 | 1;
LABEL_220:
            *(v134 + v73) = v73;
            v183 = *(v11 + 8);
            if (v183)
            {
              v184 = *(v11 + 32);
              v185 = v183 >> 3;
              v186 = v11 + ((2 * v183) & 0x7FFFFFFF0) + 72;
              v187 = 1 << v185;
              if ((*v11 & v187) != 0)
              {
                v188 = *(v186 + 16);
              }

              else
              {
                *v11 |= v187;
                v188 = v186;
              }

              *(v186 + 16) = v184;
              *(v188 + 24) = v184;
              *(v184 + 16) = v188;
              *(v184 + 24) = v186;
            }

            *(v11 + 8) = v73;
            *(v11 + 32) = v134;
            result = (v40 + 16);
            goto LABEL_94;
          }
        }

        else
        {
          v156 = 40;
          if (*(v77 + 32) == v40)
          {
            v156 = 32;
          }

          *(v77 + v156) = v78;
          if (!v78)
          {
            goto LABEL_216;
          }
        }

        v78[6] = v77;
        v163 = *(v40 + 32);
        if (v163)
        {
          v78[4] = v163;
          *(v163 + 48) = v78;
        }

        v164 = *(v40 + 40);
        if (v164)
        {
          v78[5] = v164;
          *(v164 + 48) = v78;
        }

        goto LABEL_216;
      }
    }

    goto LABEL_71;
  }

  if (a1 > 0xFFFFFFFFFFFFFF7FLL)
  {
    v16 = -1;
    goto LABEL_71;
  }

  v16 = (a1 + 31) & 0xFFFFFFFFFFFFFFF0;
  v26 = *(v11 + 4);
  v267 = (v11 + 4);
  if (v26)
  {
    v27 = -v16;
    if (a1 <= 0xFFFFE0)
    {
      v43 = (a1 + 31) >> 8;
      v44 = ((v43 + 1048320) >> 16) & 8;
      LODWORD(v43) = v43 << v44;
      LODWORD(v43) = (v43 << (((v43 + 520192) >> 16) & 4) << ((((v43 << (((v43 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v43 + 520192) >> 16) & 4 | v44 | (((v43 << (((v43 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
      v28 = ((v16 >> (v43 + 21)) & 1 | (2 * v43)) + 28;
    }

    else
    {
      v28 = 31;
    }

    v45 = *(v11 + 8 * v28 + 600);
    if (v45)
    {
      v46 = 0;
      v47 = 0;
      v48 = 57 - (v28 >> 1);
      if (v28 == 31)
      {
        LOBYTE(v48) = 0;
      }

      v49 = v16 << v48;
      while (1)
      {
        v52 = (v45[1] & 0xFFFFFFFFFFFFFFF8) - v16;
        if (v52 < v27)
        {
          v46 = v45;
          v27 = (v45[1] & 0xFFFFFFFFFFFFFFF8) - v16;
          if (!v52)
          {
            break;
          }
        }

        v50 = v45[5];
        v45 = v45[(v49 >> 63) + 4];
        if (v50 != v45 && v50 != 0)
        {
          v47 = v50;
        }

        v49 *= 2;
        if (!v45)
        {
          goto LABEL_43;
        }
      }

      v46 = v45;
    }

    else
    {
      v46 = 0;
      v47 = 0;
LABEL_43:
      if (!(v47 | v46))
      {
        v53 = ((2 << v28) | -(2 << v28)) & v26;
        if (!v53)
        {
          goto LABEL_71;
        }

        v46 = 0;
        v54 = (v53 - 1) & ~v53;
        v55 = (v54 >> 12) & 0x10;
        v56 = v54 >> v55;
        v57 = v55 & 0xFFFFFFF0 | (v56 >> 5) & 0xF;
        v58 = v56 >> ((v56 >> 5) & 8);
        v59 = v57 & 0xFFFFFFF8 | (v58 >> 2) & 7;
        v60 = v58 >> ((v58 >> 2) & 4);
        v47 = *(v11 + 8 * ((v59 & 0xFFFFFFFC | (v60 >> 1) & 2 | (v60 >> ((v60 >> 1) & 2) >> 1) & 1) + (v60 >> ((v60 >> 1) & 2) >> (((v60 >> ((v60 >> 1) & 2)) & 2) != 0))) + 600);
      }

      v45 = v47;
      if (!v47)
      {
LABEL_53:
        v269 = v27;
        v268 = v46;
        if (!v46 || v269 >= *(v11 + 8) - v16)
        {
          goto LABEL_71;
        }

        v270 = v268 + v16;
        v62 = v268[6];
        v63 = v268[3];
        if (v63 == v268)
        {
          v135 = v268 + 5;
          v136 = v268[5];
          if (v136 || (v135 = v268 + 4, (v136 = v268[4]) != 0))
          {
            do
            {
              do
              {
                v137 = v135;
                v63 = v136;
                v135 = v136 + 5;
                v136 = v136[5];
              }

              while (v136);
              v135 = v63 + 4;
              v136 = v63[4];
            }

            while (v136);
            *v137 = 0;
            if (!v62)
            {
              goto LABEL_199;
            }
          }

          else
          {
            v63 = 0;
            if (!v62)
            {
              goto LABEL_199;
            }
          }
        }

        else
        {
          v64 = v268[2];
          *(v64 + 24) = v63;
          v63[2] = v64;
          if (!v62)
          {
            goto LABEL_199;
          }
        }

        v138 = v268;
        v139 = v11 + 8 * *(v268 + 14);
        if (v268 == *(v139 + 600))
        {
          *(v139 + 600) = v63;
          if (!v63)
          {
            *v267 &= ~(1 << *(v138 + 14));
LABEL_199:
            if (v269 > 0x1F)
            {
              v171 = v268;
              v268[1] = v16 | 3;
              *(v171 + v16) = *v15 ^ v11;
              v172 = v269;
              v173 = v270;
              *(v270 + 8) = v269 | 1;
              *(v173 + v172) = v172;
              if (v172 > 0xFF)
              {
                v256 = 31;
                if (!(v172 >> 24))
                {
                  v178 = (((v269 >> 8) + 1048320) >> 16) & 8;
                  v179 = (v269 >> 8) << v178;
                  v180 = (v179 << (((v179 + 520192) >> 16) & 4) << ((((v179 << (((v179 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v179 + 520192) >> 16) & 4 | v178 | (((v179 << (((v179 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                  v256 = ((v269 >> (v180 + 21)) & 1 | (2 * v180)) + 28;
                }

                v257 = v256;
                v258 = v11 + 8 * v256 + 600;
                *(v270 + 56) = v256;
                __asm { BRAA            X8, X17 }
              }

              v174 = v172 >> 3;
              v175 = v11 + 16 * (v172 >> 3) + 72;
              v176 = 1 << v174;
              if ((v176 & *v11) != 0)
              {
                v177 = *(v175 + 16);
              }

              else
              {
                *v11 |= v176;
                v177 = v175;
              }

              v181 = v270;
              *(v175 + 16) = v270;
              *(v177 + 24) = v181;
              *(v181 + 16) = v177;
              *(v181 + 24) = v175;
            }

            else
            {
              v168 = v269 + v16;
              v169 = v268;
              v268[1] = v168 | 3;
              v170 = (v169 + v168);
              v170[1] |= 1uLL;
              *v170 = *v15 ^ v11;
            }

            v23 = v268;
            goto LABEL_93;
          }
        }

        else
        {
          v140 = 40;
          if (*(v62 + 32) == v268)
          {
            v140 = 32;
          }

          *(v62 + v140) = v63;
          if (!v63)
          {
            goto LABEL_199;
          }
        }

        v63[6] = v62;
        v141 = v268[4];
        if (v141)
        {
          v63[4] = v141;
          *(v141 + 48) = v63;
        }

        v142 = v268[5];
        if (v142)
        {
          v63[5] = v142;
          *(v142 + 48) = v63;
        }

        goto LABEL_199;
      }
    }

    do
    {
      if ((v45[1] & 0xFFFFFFFFFFFFFFF8) - v16 < v27)
      {
        v46 = v45;
        v27 = (v45[1] & 0xFFFFFFFFFFFFFFF8) - v16;
      }

      if (v45[4])
      {
        v61 = 4;
      }

      else
      {
        v61 = 5;
      }

      v45 = v45[v61];
    }

    while (v45);
    goto LABEL_53;
  }

LABEL_71:
  v271 = v16;
  v80 = *(v11 + 8);
  if (v16 <= v80)
  {
    v86 = v80 - v271;
    v23 = *(v11 + 32);
    if (v80 - v271 < 0x20)
    {
      *(v11 + 8) = 0;
      *(v11 + 32) = 0;
      v23[1] = v80 | 3;
      *(v23 + v80 + 8) |= 1uLL;
    }

    else
    {
      v80 = v271;
      v87 = v23 + v271;
      *(v11 + 32) = v23 + v271;
      *(v11 + 8) = v86;
      *(v87 + 1) = v86 | 1;
      *&v87[v86] = v86;
      v23[1] = v80 | 3;
    }

    *(v23 + v80) = *v15 ^ v11;
    goto LABEL_93;
  }

  v81 = *(v11 + 16);
  v272 = (v11 + 16);
  if (v271 < v81)
  {
    v82 = v271;
    v83 = v81 - v271;
    *v272 = v83;
    v84 = *(v11 + 40);
    v85 = (v84 + v82);
    *(v11 + 40) = v84 + v82;
    v85[1] = v83 | 1;
    *(v84 + 8) = v82 | 3;
    *v85 = *v15 ^ v11;
    result = (v84 + 16);
    goto LABEL_94;
  }

  if (v81)
  {
    if ((*(v11 + 880) & 1) != 0 && v15[3] <= v271)
    {
      v88 = (v15[1] + v271 + 62) & -v15[1];
      v89 = *(v11 + 872);
      if (!v89 || (v90 = *(v11 + 856), v90 + v88 > v90) && v90 + v88 <= v89)
      {
        if (v88 > v271)
        {
          v91 = v1;
          v92 = (*(v253 + 8 * (((127 * (*v3 ^ v1 ^ *v254)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v3 ^ v1 ^ *v254))] ^ 0x4E]) + 2563)))(0, (v15[1] + v271 + 62) & -v15[1], 3, 4098, 0xFFFFFFFFLL, 0);
          LOBYTE(v1) = v91;
          if (v92 != -1)
          {
            v93 = -(v92 + 16) & 0xFLL;
            if (((v92 + 16) & 0xF) == 0)
            {
              v93 = 0;
            }

            v23 = (v92 + v93);
            *v23 = v93;
            v23[1] = v88 - v93 - 32;
            v94 = (v92 + v88 - 32);
            *v94 = *v15 ^ v11;
            v94[1] = 11;
            *(v88 + v92 - 16) = 0;
            v95 = *(v11 + 24);
            if (!v95 || v92 < v95)
            {
              *(v11 + 24) = v92;
            }

            v96 = *(v11 + 856) + v88;
            *(v11 + 856) = v96;
            if (v96 > *(v11 + 864))
            {
              *(v11 + 864) = v96;
            }

            goto LABEL_93;
          }
        }
      }
    }
  }

  result = 0;
  v97 = (v15[2] + v271 + 95) & -v15[2];
  if (v97 > v271)
  {
    v98 = *(v11 + 872);
    if (!v98 || (result = 0, v99 = *(v11 + 856), v99 + v97 > v99) && v99 + v97 <= v98)
    {
      v100 = v1;
      v101 = (*(v253 + 8 * ((byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v3 ^ v1 ^ *v254))] ^ 0x6B] ^ (127 * (*v3 ^ v1 ^ *v254))) + 2506)))(0, (v15[2] + v271 + 95) & -v15[2], 3, 4098, 0xFFFFFFFFLL, 0);
      v102 = v100;
      v103 = v101 != -1;
      if (v101 == -1)
      {
        v104 = 0;
      }

      else
      {
        v104 = v97;
      }

      if (v101 == -1)
      {
LABEL_322:
        v252 = (*(v253 + 8 * (((127 * ((*v254 - *v3) ^ v100)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((*v254 - *v3) ^ v100))] ^ 0xF9]) + 2538)))();
        result = 0;
        *v252 = 12;
        goto LABEL_94;
      }

      v105 = *(v11 + 856) + v97;
      *(v11 + 856) = v105;
      if (v105 > *(v11 + 864))
      {
        *(v11 + 864) = v105;
      }

      v106 = *(v11 + 40);
      v273 = (v11 + 40);
      if (!v106)
      {
        v143 = *(v11 + 24);
        if (!v143 || v101 < v143)
        {
          *(v11 + 24) = v101;
        }

        *(v11 + 888) = v101;
        *(v11 + 896) = v97;
        *(v11 + 912) = v103;
        v144 = *v15;
        *(v11 + 56) = 4095;
        *(v11 + 64) = v144;
        *(v11 + 96) = v11 + 72;
        *(v11 + 88) = v11 + 72;
        *(v11 + 112) = v11 + 88;
        *(v11 + 104) = v11 + 88;
        *(v11 + 128) = v11 + 104;
        *(v11 + 120) = v11 + 104;
        *(v11 + 144) = v11 + 120;
        *(v11 + 136) = v11 + 120;
        *(v11 + 160) = v11 + 136;
        *(v11 + 152) = v11 + 136;
        *(v11 + 176) = v11 + 152;
        *(v11 + 168) = v11 + 152;
        *(v11 + 192) = v11 + 168;
        *(v11 + 184) = v11 + 168;
        *(v11 + 208) = v11 + 184;
        *(v11 + 200) = v11 + 184;
        *(v11 + 224) = v11 + 200;
        *(v11 + 216) = v11 + 200;
        *(v11 + 240) = v11 + 216;
        *(v11 + 232) = v11 + 216;
        *(v11 + 248) = v11 + 232;
        *(v11 + 256) = v11 + 232;
        *(v11 + 264) = v11 + 248;
        *(v11 + 272) = v11 + 248;
        *(v11 + 280) = v11 + 264;
        *(v11 + 288) = v11 + 264;
        *(v11 + 296) = v11 + 280;
        *(v11 + 304) = v11 + 280;
        *(v11 + 312) = v11 + 296;
        *(v11 + 320) = v11 + 296;
        *(v11 + 328) = v11 + 312;
        *(v11 + 336) = v11 + 312;
        *(v11 + 344) = v11 + 328;
        *(v11 + 352) = v11 + 328;
        *(v11 + 360) = v11 + 344;
        *(v11 + 368) = v11 + 344;
        *(v11 + 376) = v11 + 360;
        *(v11 + 384) = v11 + 360;
        *(v11 + 392) = v11 + 376;
        *(v11 + 400) = v11 + 376;
        *(v11 + 408) = v11 + 392;
        *(v11 + 416) = v11 + 392;
        *(v11 + 424) = v11 + 408;
        *(v11 + 432) = v11 + 408;
        *(v11 + 440) = v11 + 424;
        *(v11 + 448) = v11 + 424;
        *(v11 + 456) = v11 + 440;
        *(v11 + 464) = v11 + 440;
        *(v11 + 472) = v11 + 456;
        *(v11 + 480) = v11 + 456;
        *(v11 + 488) = v11 + 472;
        *(v11 + 504) = v11 + 488;
        *(v11 + 512) = v11 + 488;
        *(v11 + 496) = v11 + 472;
        *(v11 + 528) = v11 + 504;
        *(v11 + 520) = v11 + 504;
        *(v11 + 544) = v11 + 520;
        *(v11 + 536) = v11 + 520;
        *(v11 + 560) = v11 + 536;
        *(v11 + 552) = v11 + 536;
        *(v11 + 576) = v11 + 552;
        *(v11 + 568) = v11 + 552;
        *(v11 + 592) = v11 + 568;
        *(v11 + 584) = v11 + 568;
        v145 = v11 + (*(v11 - 8) & 0xFFFFFFFFFFFFFFF8);
        v146 = v145 - 16;
        if ((v145 & 0xF) != 0)
        {
          v147 = -v145 & 0xFLL;
        }

        else
        {
          v147 = 0;
        }

        v148 = v146 + v147;
        v149 = v101 + v97 - v146 - v147 - 80;
        v150 = v272;
        *v273 = v148;
        *v150 = v149;
        *(v148 + 8) = v149 | 1;
        v151 = (v148 + v149);
        goto LABEL_188;
      }

      v107 = *(v11 + 888);
      v108 = *(v11 + 896);
      if (v101 == v107 + v108 && v106 < v101 && v106 >= v107)
      {
        v158 = *(v11 + 912);
        if ((v158 & 1) != 0 && (v158 & 8) == 0)
        {
          *(v11 + 896) = v108 + v97;
          v159 = v272;
          if (((v106 + 2) & 0xF) != 0)
          {
            v160 = -(v106 + 16) & 0xFLL;
          }

          else
          {
            v160 = 0;
          }

          v161 = v106 + v160;
          v162 = v97 - v160 + *v272;
          *v273 = v161;
          *v159 = v162;
          *(v161 + 1) = v162 | 1;
          v151 = &v161[v162];
LABEL_188:
          *(v151 + 1) = 80;
          *(v11 + 48) = v15[4];
          goto LABEL_320;
        }
      }

      v109 = (v11 + 888);
      if (v101 < *(v11 + 24))
      {
        *(v11 + 24) = v101;
      }

      v110 = *v109;
      v111 = (v11 + 888);
      if (*v109 == v101 + v97)
      {
        v112 = *(v11 + 912);
        v111 = (v11 + 888);
        if (v112)
        {
          v111 = (v11 + 888);
          if ((v112 & 8) == 0)
          {
            *v109 = v101;
            *(v11 + 896) += v97;
            if (((v101 + 16) & 0xF) != 0)
            {
              v113 = -(v101 + 16) & 0xFLL;
            }

            else
            {
              v113 = 0;
            }

            v114 = v101 + v113;
            if (((v110 + 16) & 0xF) != 0)
            {
              v115 = -(v110 + 16) & 0xFLL;
            }

            else
            {
              v115 = 0;
            }

            v116 = v110 + v115;
            v117 = v271;
            v274 = v114;
            v275 = v114 + v271;
            v118 = v110 + v115 - v114 - v271;
            *(v114 + 8) = v271 | 3;
            *(v114 + v117) = *v15 ^ v11;
            if (v116 == *v273)
            {
              v198 = v273;
              v199 = *v272 + v118;
              *v272 = v199;
              v200 = v275;
              *v198 = v275;
              *(v200 + 8) = v199 | 1;
            }

            else
            {
              if (v116 != *(v11 + 32))
              {
                v119 = *(v116 + 8);
                if ((v119 & 3) != 1)
                {
LABEL_274:
                  v276 = v118;
                  *(v116 + 8) = v119 & 0xFFFFFFFFFFFFFFFELL;
                  v213 = v275;
                  *(v275 + 8) = v118 | 1;
                  *(v213 + v118) = v118;
                  if (v118 > 0xFF)
                  {
                    v259 = 31;
                    if (!(v118 >> 24))
                    {
                      v218 = (((v276 >> 8) + 1048320) >> 16) & 8;
                      v219 = (v276 >> 8) << v218;
                      v220 = (v219 << (((v219 + 520192) >> 16) & 4) << ((((v219 << (((v219 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v219 + 520192) >> 16) & 4 | v218 | (((v219 << (((v219 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                      v259 = ((v276 >> (v220 + 21)) & 1 | (2 * v220)) + 28;
                    }

                    v260 = v259;
                    v221 = v11 + 8 * v259 + 600;
                    *(v275 + 56) = v259;
                    v261 = v221;
                    v262 = v11 + 4;
                    __asm { BRAA            X8, X17 }
                  }

                  v214 = v118 >> 3;
                  v215 = v11 + 16 * (v118 >> 3) + 72;
                  v216 = 1 << v214;
                  if ((v216 & *v11) != 0)
                  {
                    v217 = *(v215 + 16);
                  }

                  else
                  {
                    *v11 |= v216;
                    v217 = v215;
                  }

                  v222 = v275;
                  *(v215 + 16) = v275;
                  *(v217 + 24) = v222;
                  *(v222 + 16) = v217;
                  *(v222 + 24) = v215;
                  goto LABEL_319;
                }

                v120 = v119 & 0xFFFFFFFFFFFFFFF8;
                if (v119 <= 0xFF)
                {
                  v121 = *(v116 + 16);
                  v122 = *(v116 + 24);
                  if (v122 == v121)
                  {
                    *v11 &= ~(1 << (v119 >> 3));
                  }

                  else
                  {
                    *(v121 + 24) = v122;
                    *(v122 + 16) = v121;
                  }

                  goto LABEL_273;
                }

                v203 = *(v116 + 48);
                v204 = *(v116 + 24);
                if (v204 == v116)
                {
                  v206 = (v116 + 40);
                  v207 = *(v116 + 40);
                  if (v207 || (v206 = (v116 + 32), (v207 = *(v116 + 32)) != 0))
                  {
                    do
                    {
                      do
                      {
                        v208 = v206;
                        v204 = v207;
                        v206 = v207 + 5;
                        v207 = v207[5];
                      }

                      while (v207);
                      v206 = v204 + 4;
                      v207 = v204[4];
                    }

                    while (v207);
                    *v208 = 0;
                  }

                  else
                  {
                    v204 = 0;
                  }

                  v102 = v100;
                }

                else
                {
                  v205 = *(v116 + 16);
                  *(v205 + 24) = v204;
                  v204[2] = v205;
                }

                if (!v203)
                {
                  goto LABEL_273;
                }

                v209 = v11 + 8 * *(v116 + 56);
                if (v116 == *(v209 + 600))
                {
                  *(v209 + 600) = v204;
                  if (!v204)
                  {
                    *(v11 + 4) &= ~(1 << *(v116 + 56));
LABEL_273:
                    v116 += v120;
                    v118 += v120;
                    v119 = *(v116 + 8);
                    goto LABEL_274;
                  }
                }

                else
                {
                  v210 = 40;
                  if (*(v203 + 32) == v116)
                  {
                    v210 = 32;
                  }

                  *(v203 + v210) = v204;
                  if (!v204)
                  {
                    goto LABEL_273;
                  }
                }

                v204[6] = v203;
                v211 = *(v116 + 32);
                if (v211)
                {
                  v204[4] = v211;
                  *(v211 + 48) = v204;
                }

                v212 = *(v116 + 40);
                v102 = v100;
                if (v212)
                {
                  v204[5] = v212;
                  *(v212 + 48) = v204;
                }

                goto LABEL_273;
              }

              v201 = *(v11 + 8) + v118;
              *(v11 + 8) = v201;
              v202 = v275;
              *(v11 + 32) = v275;
              *(v202 + 8) = v201 | 1;
              *(v202 + v201) = v201;
            }

LABEL_319:
            v23 = v274;
LABEL_93:
            result = v23 + 2;
            goto LABEL_94;
          }
        }
      }

      while (1)
      {
        if (*v111 <= v106)
        {
          v123 = *v111 + v111[1];
          if (v123 > v106)
          {
            break;
          }
        }

        v111 = v111[2];
      }

      if (((v123 - 79) & 0xF) != 0)
      {
        v124 = (79 - v123) & 0xFLL;
      }

      else
      {
        v124 = 0;
      }

      v125 = (v123 + v124 - 95);
      if (v125 < v106 + 4)
      {
        v125 = v106;
      }

      v126 = v125 + 2;
      if (((v101 + 16) & 0xF) != 0)
      {
        v127 = -(v101 + 16) & 0xFLL;
      }

      else
      {
        v127 = 0;
      }

      v128 = v104 - v127;
      v129 = v101 + v127;
      v128 -= 80;
      *v273 = v129;
      *v272 = v128;
      *(v129 + 8) = v128 | 1;
      *(v129 + v128 + 8) = 80;
      *(v11 + 48) = v15[4];
      v125[1] = 51;
      v125[6] = *v15 ^ v11;
      if (((v126 ^ v109) & 7) != 0)
      {
        v130 = 0;
        do
        {
          v131 = &v126[v130 * 8];
          *v131 = v109[v130];
          v131[1] = BYTE1(v109[v130]);
          v131[2] = BYTE2(v109[v130]);
          v131[3] = BYTE3(v109[v130]);
          v131[4] = BYTE4(v109[v130]);
          v131[5] = BYTE5(v109[v130]);
          v131[6] = BYTE6(v109[v130]);
          v131[7] = HIBYTE(v109[v130++]);
        }

        while ((v130 * 8) != 32);
LABEL_308:
        *v109 = v101;
        *(v11 + 896) = v104;
        *(v11 + 912) = v103;
        v238 = v125 + 7;
        *(v11 + 904) = v126;
        do
        {
          *v238++ = 11;
        }

        while (v238 < v123);
        v239 = v125 - v106;
        if (v125 != v106)
        {
          v277 = v106;
          v278 = v125 - v106;
          v125[1] &= ~1uLL;
          v106[1] = v239 | 1;
          *v125 = v239;
          if (v239 > 0xFF)
          {
            v263 = 31;
            if (!(v239 >> 24))
            {
              v243 = (((v278 >> 8) + 1048320) >> 16) & 8;
              v244 = (v278 >> 8) << v243;
              v245 = (v244 << (((v244 + 520192) >> 16) & 4) << ((((v244 << (((v244 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v244 + 520192) >> 16) & 4 | v243 | (((v244 << (((v244 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
              v263 = ((v278 >> (v245 + 21)) & 1 | (2 * v245)) + 28;
            }

            v264 = v263;
            v246 = v11 + 8 * v263 + 600;
            *(v277 + 14) = v263;
            v265 = v246;
            v266 = v11 + 4;
            __asm { BRAA            X8, X17 }
          }

          v240 = v11 + 16 * (v239 >> 3) + 72;
          v241 = 1 << (v239 >> 3);
          if ((v241 & *v11) != 0)
          {
            v242 = *(v11 + 16 * (v239 >> 3) + 88);
          }

          else
          {
            *v11 |= v241;
            v242 = v11 + 16 * (v239 >> 3) + 72;
          }

          v247 = v277;
          *(v240 + 16) = v277;
          *(v242 + 24) = v247;
          v247[2] = v242;
          v247[3] = v240;
        }

LABEL_320:
        if (*v272 > v271)
        {
          v248 = v271;
          v249 = *v272 - v271;
          *v272 = v249;
          v250 = *v273;
          v251 = (*v273 + v248);
          *v273 = v251;
          v251[1] = v249 | 1;
          *(v250 + 8) = v248 | 3;
          *v251 = *v15 ^ v11;
          result = (v250 + 16);
          goto LABEL_94;
        }

        goto LABEL_322;
      }

      v165 = -v109 & 7;
      v166 = (v11 + 888);
      v167 = (v125 + 2);
      if ((-v109 & 7u) <= 3)
      {
        if ((-v109 & 7u) <= 1)
        {
          if (!v165)
          {
LABEL_238:
            v195 = 32 - v165;
            if (v195 >= 8)
            {
              v196 = v195 >> 3;
              v197 = ((v195 >> 3) + 7) >> 3;
              if (v195 >> 3 > 3)
              {
                if (v195 >> 3 <= 5)
                {
                  if (v196 == 4)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_286;
                }

                if (v196 == 6)
                {
                  goto LABEL_285;
                }

                goto LABEL_284;
              }

              if (v195 >> 3 > 1)
              {
                if (v196 == 2)
                {
                  goto LABEL_289;
                }

                goto LABEL_288;
              }

              if (v196)
              {
                goto LABEL_290;
              }

              do
              {
                v223 = *v166;
                v166 += 8;
                *v167 = v223;
                v167 += 8;
LABEL_284:
                v224 = *v166;
                v166 += 8;
                *v167 = v224;
                v167 += 8;
LABEL_285:
                v225 = *v166;
                v166 += 8;
                *v167 = v225;
                v167 += 8;
LABEL_286:
                v226 = *v166;
                v166 += 8;
                *v167 = v226;
                v167 += 8;
LABEL_287:
                v227 = *v166;
                v166 += 8;
                *v167 = v227;
                v167 += 8;
LABEL_288:
                v228 = *v166;
                v166 += 8;
                *v167 = v228;
                v167 += 8;
LABEL_289:
                v229 = *v166;
                v166 += 8;
                *v167 = v229;
                v167 += 8;
LABEL_290:
                v230 = *v166;
                v166 += 8;
                *v167 = v230;
                v167 += 8;
                --v197;
              }

              while (v197);
            }

            v231 = v195 & 7;
            if (v231 <= 3)
            {
              if (v231 <= 1)
              {
                if (!v231)
                {
                  goto LABEL_308;
                }

                goto LABEL_307;
              }

              if (v231 == 2)
              {
LABEL_306:
                v237 = *v166++;
                *v167++ = v237;
LABEL_307:
                *v167 = *v166;
                goto LABEL_308;
              }

LABEL_305:
              v236 = *v166++;
              *v167++ = v236;
              goto LABEL_306;
            }

            if (v231 > 5)
            {
              if (v231 != 6)
              {
                v232 = *v166++;
                *v167++ = v232;
              }

              v233 = *v166++;
              *v167++ = v233;
            }

            else if (v231 == 4)
            {
              goto LABEL_304;
            }

            v234 = *v166++;
            *v167++ = v234;
LABEL_304:
            v235 = *v166++;
            *v167++ = v235;
            goto LABEL_305;
          }

LABEL_237:
          v194 = *v166++;
          *v167++ = v194;
          goto LABEL_238;
        }

        if (v165 == 2)
        {
LABEL_236:
          v193 = *v166++;
          *v167++ = v193;
          goto LABEL_237;
        }

LABEL_235:
        v192 = *v166++;
        *v167++ = v192;
        goto LABEL_236;
      }

      if ((-v109 & 7u) > 5)
      {
        if (v165 != 6)
        {
          v166 = (v11 + 889);
          *v126 = *v109;
          v167 = v125 + 17;
        }

        v189 = *v166++;
        *v167++ = v189;
      }

      else if (v165 == 4)
      {
        goto LABEL_234;
      }

      v190 = *v166++;
      *v167++ = v190;
LABEL_234:
      v191 = *v166++;
      *v167++ = v191;
      goto LABEL_235;
    }
  }

LABEL_94:
  if ((*(v11 + 880) & 2) != 0)
  {
    atomic_store(0, (v11 + 884));
  }

  return result;
}

uint64_t sub_1BAEF9AB8(uint64_t result)
{
  v1 = *(&off_1E7F1D8C0 + (byte_1BAF9A670[byte_1BAF98F60[(127 * (dword_1EBC37028 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xBE] ^ (127 * (dword_1EBC37028 ^ 0x88 ^ dword_1EBC36FA0))) - 57);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + v3) ^ 0x88))] ^ 0x4F] ^ (127 * ((dword_1EBC36FA0 + v3) ^ 0x88))) - 29);
  v5 = (*v4 ^ v3) - &v88;
  *v2 = 2140301951 * (v5 - 0x3D3AC77DA7219688);
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  if (!result)
  {
    return result;
  }

  v6 = (result - 16);
  v86 = (*(&off_1E7F1D8C0 + ((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x72]) - 233) - 8);
  v7 = *v86 ^ *(result - 16 + (*(result - 8) & 0xFFFFFFFFFFFFFFF8));
  v87 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37028) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC37028) ^ 0x88))] ^ 0xBE]) - 46);
  if ((*(v7 + 0x370) & 2) != 0 && atomic_exchange((v7 + 884), 1u))
  {
    v8 = 1;
    while (*(v7 + 884) || atomic_exchange((v7 + 884), 1u))
    {
      if ((v8 & 0x3F) == 0)
      {
        result = (*(v87 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x20]) + 2491)))();
      }

      ++v8;
    }
  }

  v9 = v6;
  v10 = v6[1];
  v11 = v10 & 0xFFFFFFFFFFFFFFF8;
  v12 = v6 + (v10 & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 1) == 0)
  {
    v13 = *v6;
    if ((v10 & 2) == 0)
    {
      v14 = v11 + v13 + 32;
      v15 = 127 * ((*v4 - *v2) ^ 0x88);
      result = (*(v87 + 8 * ((byte_1BAF98E68[(byte_1BAF9D9E4[v15 - 4] ^ 0x30) - 8] ^ v15) + 2608)))(v6 - v13, v14);
      if (!result)
      {
        *(v7 + 856) -= v14;
      }

      goto LABEL_106;
    }

    v9 = (v6 - v13);
    v11 += v13;
    if ((v6 - v13) != *(v7 + 32))
    {
      if (v13 <= 0xFF)
      {
        v16 = v9[2];
        v17 = v9[3];
        if (v17 == v16)
        {
          *v7 &= ~(1 << (v13 >> 3));
        }

        else
        {
          *(v16 + 24) = v17;
          *(v17 + 16) = v16;
        }

        goto LABEL_20;
      }

      v39 = v9[6];
      v40 = v9[3];
      if (v40 == v9)
      {
        v45 = v9 + 5;
        v46 = v9[5];
        if (v46 || (v45 = v9 + 4, (v46 = v9[4]) != 0))
        {
          do
          {
            do
            {
              v47 = v45;
              v40 = v46;
              v45 = v46 + 5;
              v46 = v46[5];
            }

            while (v46);
            v45 = v40 + 4;
            v46 = v40[4];
          }

          while (v46);
          *v47 = 0;
          if (!v39)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v40 = 0;
          if (!v39)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v41 = v9[2];
        *(v41 + 24) = v40;
        v40[2] = v41;
        if (!v39)
        {
          goto LABEL_20;
        }
      }

      v48 = v7 + 8 * *(v9 + 14);
      if (v9 == *(v48 + 600))
      {
        *(v48 + 600) = v40;
        if (!v40)
        {
          *(v7 + 4) &= ~(1 << *(v9 + 14));
          goto LABEL_20;
        }
      }

      else
      {
        v49 = 40;
        if (*(v39 + 32) == v9)
        {
          v49 = 32;
        }

        *(v39 + v49) = v40;
        if (!v40)
        {
          goto LABEL_20;
        }
      }

      v40[6] = v39;
      v55 = v9[4];
      if (v55)
      {
        v40[4] = v55;
        *(v55 + 48) = v40;
      }

      v56 = v9[5];
      if (v56)
      {
        v40[5] = v56;
        *(v56 + 48) = v40;
      }

      goto LABEL_20;
    }

    if ((~*(v12 + 2) & 3) == 0)
    {
      *(v7 + 8) = v11;
      *(v12 + 1) &= ~1uLL;
LABEL_46:
      v9[1] = v11 | 1;
      *(v9 + v11) = v11;
      goto LABEL_106;
    }
  }

LABEL_20:
  v18 = *(v12 + 1);
  if ((v18 & 2) != 0)
  {
    *(v12 + 1) = v18 & 0xFFFFFFFFFFFFFFFELL;
    v9[1] = v11 | 1;
    *(v9 + v11) = v11;
LABEL_27:
    v97 = v11;
    if (v11 > 0xFF)
    {
      v89 = 31;
      if (!(v11 >> 24))
      {
        v25 = (((v97 >> 8) + 1048320) >> 16) & 8;
        v26 = (v97 >> 8) << v25;
        v27 = (v26 << (((v26 + 520192) >> 16) & 4) << ((((v26 << (((v26 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v26 + 520192) >> 16) & 4 | v25 | (((v26 << (((v26 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
        v89 = ((v97 >> (v27 + 21)) & 1 | (2 * v27)) + 28;
      }

      v90 = v89;
      v28 = v7 + 8 * v89 + 600;
      *(v9 + 14) = v89;
      v91 = v28;
      v92 = v7 + 4;
      __asm { BRAA            X8, X17 }
    }

    v21 = v11 >> 3;
    v22 = v7 + 16 * (v11 >> 3) + 72;
    v23 = 1 << v21;
    if ((v23 & *v7) != 0)
    {
      v24 = *(v22 + 16);
    }

    else
    {
      *v7 |= v23;
      v24 = v22;
    }

    *(v22 + 16) = v9;
    *(v24 + 24) = v9;
    v9[2] = v24;
    v9[3] = v22;
    goto LABEL_106;
  }

  if (v12 == *(v7 + 40))
  {
    v29 = (v7 + 16);
    v30 = *(v7 + 16) + v11;
    *(v7 + 16) = v30;
    *(v7 + 40) = v9;
    v9[1] = v30 | 1;
    if (v9 == *(v7 + 32))
    {
      *(v7 + 32) = 0;
      *(v7 + 8) = 0;
    }

    if (v30 <= *(v7 + 48))
    {
      goto LABEL_106;
    }

    v31 = *(v7 + 40);
    if (!v31)
    {
      goto LABEL_106;
    }

    if (*v29 >= 0x51uLL)
    {
      v32 = ((*v29 + v86[2] - 81) / v86[2] - 1) * v86[2];
      v33 = v7 + 888;
      v34 = (v7 + 888);
      do
      {
        if (*v34 <= v31 && *v34 + v34[1] > v31)
        {
          break;
        }

        v34 = v34[2];
      }

      while (v34);
      if ((v34[3] & 9) == 1)
      {
        v35 = v34[1];
        v36 = v35 - v32;
        if (v35 >= v32)
        {
          v37 = *v34;
          v38 = *v34 + v35;
          while (v33 < v37 || v33 >= v38)
          {
            v33 = *(v33 + 16);
            if (!v33)
            {
              result = (*(v87 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x4F]) + 2665)))(v37 + v36, ((*v29 + v86[2] - 81) / v86[2] - 1) * v86[2]);
              if (v32)
              {
                if (result)
                {
                  v32 = 0;
                }

                else
                {
                  v34[1] -= v32;
                  *(v7 + 856) -= v32;
                  v59 = *(v7 + 40);
                  if (((v59 + 16) & 0xF) != 0)
                  {
                    v60 = -(v59 + 16) & 0xFLL;
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v61 = v59 + v60;
                  v62 = *(v7 + 16) - v32 - v60;
                  *(v7 + 40) = v61;
                  *(v7 + 16) = v62;
                  *(v61 + 8) = v62 | 1;
                  *(v61 + v62 + 8) = 80;
                  *(v7 + 48) = v86[4];
                }
              }

              goto LABEL_111;
            }
          }
        }
      }
    }

    v32 = 0;
LABEL_111:
    v100 = (v7 + 16);
    v99 = 1;
    v98 = v32;
    v63 = *(v7 + 904);
    if (!v63 || (*(v63 + 24) & 9) != 1 || ((result = *v63, v64 = *(v63 + 8), v65 = *(v63 + 16), v66 = *v63 + 16, (v66 & 0xF) != 0) ? (v67 = -v66 & 0xFLL) : (v67 = 0), (v101 = result + v67, v68 = *(result + v67 + 8), v102 = v68 & 0xFFFFFFFFFFFFFFF8, (v68 & 3) != 1) || v101 + v102 < result + v64 - 80))
    {
      v64 = 0;
LABEL_139:
      *(v7 + 56) = 4095;
      v80 = v99 == 1 && v98 == -v64;
      if (v80 && *v100 > *(v7 + 48))
      {
        *(v7 + 48) = -1;
      }

      goto LABEL_106;
    }

    if (v101 == *(v7 + 32))
    {
      *(v7 + 32) = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      v69 = *(v101 + 48);
      v70 = *(v101 + 24);
      if (v70 == v101)
      {
        v72 = (v101 + 40);
        v73 = *(v101 + 40);
        if (v73 || (v70 = 0, v72 = (v101 + 32), (v73 = *(v101 + 32)) != 0))
        {
          do
          {
            do
            {
              v74 = v72;
              v70 = v73;
              v72 = v73 + 5;
              v73 = v73[5];
            }

            while (v73);
            v72 = v70 + 4;
            v73 = v70[4];
          }

          while (v73);
          *v74 = 0;
        }
      }

      else
      {
        v71 = *(v101 + 16);
        *(v71 + 24) = v70;
        v70[2] = v71;
      }

      if (!v69)
      {
        goto LABEL_145;
      }

      v75 = v101;
      v76 = v7 + 8 * *(v101 + 56);
      if (v101 != *(v76 + 600))
      {
        v77 = 40;
        if (*(v69 + 32) == v101)
        {
          v77 = 32;
        }

        *(v69 + v77) = v70;
        if (!v70)
        {
          goto LABEL_145;
        }

        goto LABEL_134;
      }

      *(v76 + 600) = v70;
      if (v70)
      {
LABEL_134:
        v70[6] = v69;
        v78 = *(v101 + 32);
        if (v78)
        {
          v70[4] = v78;
          *(v78 + 48) = v70;
        }

        v79 = *(v101 + 40);
        if (v79)
        {
          v70[5] = v79;
          *(v79 + 48) = v70;
        }

        goto LABEL_145;
      }

      *(v7 + 4) &= ~(1 << *(v75 + 56));
    }

LABEL_145:
    v81 = 127 * ((*v4 + *v2) ^ 0x88);
    result = (*(v87 + 8 * ((byte_1BAF9DAE8[(byte_1BAF9CAF8[v81 - 8] ^ 0x2D) - 8] ^ v81) + 2494)))();
    if (result)
    {
      v93 = 0;
      if (v68 >= 0x100)
      {
        v93 = 31;
        if (!(v68 >> 24))
        {
          v82 = (((v68 >> 8) + 1048320) >> 16) & 8;
          v83 = (v68 >> 8) << v82;
          v84 = (v83 << (((v83 + 520192) >> 16) & 4) << ((((v83 << (((v83 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v83 + 520192) >> 16) & 4 | v82 | (((v83 << (((v83 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
          v93 = ((v102 >> (v84 + 21)) & 1 | (2 * v84)) + 28;
        }
      }

      v94 = v93;
      v85 = v7 + 8 * v93 + 600;
      *(v101 + 56) = v93;
      v95 = v85;
      v96 = v7 + 4;
      __asm { BRAA            X8, X17 }
    }

    *(v7 + 856) -= v64;
    *(v7 + 904) = v65;
    goto LABEL_139;
  }

  if (v12 == *(v7 + 32))
  {
    v11 += *(v7 + 8);
    *(v7 + 8) = v11;
    *(v7 + 32) = v9;
    goto LABEL_46;
  }

  v11 += v18 & 0xFFFFFFFFFFFFFFF8;
  if (v18 <= 0xFF)
  {
    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    if (v19 == v20)
    {
      *v7 &= ~(1 << (v18 >> 3));
    }

    else
    {
      *(v20 + 24) = v19;
      *(v19 + 16) = v20;
    }

    goto LABEL_93;
  }

  v42 = *(v12 + 6);
  v43 = *(v12 + 3);
  if (v43 == v12)
  {
    v50 = v12 + 40;
    v51 = *(v12 + 5);
    if (v51 || (v50 = v12 + 32, (v51 = *(v12 + 4)) != 0))
    {
      do
      {
        do
        {
          v52 = v50;
          v43 = v51;
          v50 = v51 + 5;
          v51 = v51[5];
        }

        while (v51);
        v50 = v43 + 32;
        v51 = *(v43 + 4);
      }

      while (v51);
      *v52 = 0;
      if (!v42)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v43 = 0;
      if (!v42)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v44 = *(v12 + 2);
    *(v44 + 24) = v43;
    *(v43 + 2) = v44;
    if (!v42)
    {
      goto LABEL_93;
    }
  }

  v53 = v7 + 8 * *(v12 + 14);
  if (v12 == *(v53 + 600))
  {
    *(v53 + 600) = v43;
    if (!v43)
    {
      *(v7 + 4) &= ~(1 << *(v12 + 14));
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  v54 = 40;
  if (*(v42 + 32) == v12)
  {
    v54 = 32;
  }

  *(v42 + v54) = v43;
  if (v43)
  {
LABEL_87:
    *(v43 + 6) = v42;
    v57 = *(v12 + 4);
    if (v57)
    {
      *(v43 + 4) = v57;
      *(v57 + 48) = v43;
    }

    v58 = *(v12 + 5);
    if (v58)
    {
      *(v43 + 5) = v58;
      *(v58 + 48) = v43;
    }
  }

LABEL_93:
  v9[1] = v11 | 1;
  *(v9 + v11) = v11;
  if (v9 != *(v7 + 32))
  {
    goto LABEL_27;
  }

  *(v7 + 8) = v11;
LABEL_106:
  if ((*(v7 + 880) & 2) != 0)
  {
    atomic_store(0, (v7 + 884));
  }

  return result;
}

void sub_1BAEFA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25, void *a26, int *a27)
{
  v39 = *a27;
  v28 = *a27;
  *(v27 - 140) = 1 << a25;
  if (((1 << a25) & v28) != 0)
  {
    v29 = *a26;
    if (a25 == 31)
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      v30 = 57 - (a25 >> 1);
    }

    v31 = *(v27 - 96) << v30;
    while (1)
    {
      v32 = v29;
      if ((v29[1] & 0xFFFFFFFFFFFFFFF8) == *(v27 - 96))
      {
        break;
      }

      v33 = &v29[v31 >> 63];
      v35 = v33[4];
      v34 = v33 + 4;
      v29 = v35;
      v31 *= 2;
      if (!v35)
      {
        v36 = *(v27 - 104);
        *v34 = v36;
        goto LABEL_10;
      }
    }

    v37 = v29[2];
    v38 = *(v27 - 104);
    *(v37 + 24) = v38;
    v32[2] = v38;
    v38[2] = v37;
    v38[3] = v32;
    v38[6] = 0;
  }

  else
  {
    *a27 = *(v27 - 140) | v39;
    v32 = a26;
    v36 = *(v27 - 104);
    *a26 = v36;
LABEL_10:
    v36[6] = v32;
    v36[2] = v36;
    v36[3] = v36;
  }

  JUMPOUT(0x1BAEFA678);
}

void *sub_1BAEFAAC8(void *result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88))] ^ 0x72]) - 192);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88))] ^ 0x6B] ^ (127 * ((dword_1EBC36FA0 - v3) ^ 0x88))) - 114);
  v5 = &v10[*v4 ^ v3];
  *v2 = (2140301951 * v5) ^ 0x3D3AC77DA7219688;
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  if (result)
  {
    v6 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 - dword_1EBC36ED8) ^ 0x88))] ^ 0x11]) + 39);
    v7 = result;
    (*(v6 + 8 * ((byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x66] ^ (127 * (*v2 ^ 0x88 ^ *v4))) + 2541)))(*result);
    (*(v6 + 8 * ((byte_1BAF9A570[byte_1BAF98D60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0xF9] ^ (127 * (*v2 ^ 0x88 ^ *v4))) + 2343)))(v7[2]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x2F]) + 2512)))(v7[4]);
    (*(v6 + 8 * ((byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x4F] ^ (127 * (*v2 ^ 0x88 ^ *v4))) + 2484)))(v7[6]);
    v8 = 127 * ((*v4 - *v2) ^ 0x88);
    (*(v6 + 8 * ((byte_1BAF98E68[(byte_1BAF9D9E4[v8 - 4] ^ 0x30) - 8] ^ v8) + 2427)))(v7[8]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x2F]) + 2512)))(v7[10]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0xF9]) + 2343)))(v7[12]);
    (*(v6 + 8 * (((127 * ((*v4 - *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 - *v2) ^ 0x88))] ^ 0x2F]) + 2512)))(v7[14]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0xC0]) + 2485)))(v7[16]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x2F]) + 2512)))(v7[18]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0xBE]) + 2428)))(v7[20]);
    (*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x4F]) + 2484)))(v7[22]);
    (*(v6 + 8 * ((byte_1BAF9A474[(byte_1BAF98C60[(127 * ((*v4 - *v2) ^ 0x88))] ^ 0x27) - 4] ^ (127 * ((*v4 - *v2) ^ 0x88))) + 2370)))(v7[24]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x72]) + 2314)))(v7[26]);
    (*(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x2D]) + 2313)))(v7[28]);
    (*(v6 + 8 * (((127 * ((*v4 - *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 - *v2) ^ 0x88))] ^ 0x2D]) + 2313)))(v7[30]);
    v9 = *(v6 + 8 * (((127 * ((*v4 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x6B]) + 2399));

    return v9(v7);
  }

  return result;
}

void *sub_1BAEFB15C(void *result, unsigned __int8 *a2, int a3, char a4)
{
  v4 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC37048) ^ 0x88)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((dword_1EBC36FA0 + dword_1EBC37048) ^ 0x88))] ^ 0x30]) - 44);
  v6 = *(v4 - 4);
  v5 = (v4 - 4);
  v7 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - v6) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - v6) ^ 0x88))] ^ 0x27]) - 143);
  v8 = (*v7 + v6) ^ &v15;
  *v5 = 2140301951 * v8 - 0x2DAA06A0DC720288;
  *v7 = 2140301951 * (v8 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v10 = a3;
    v14 = result;
    do
    {
      v12 = *a2++;
      v13 = 127 * ((*v7 - *v5) ^ 0x88);
      (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37048) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC37048) ^ 0x88))] ^ 0x20]) - 74) + (byte_1BAF9DAE8[(byte_1BAF9CAF8[v13 - 8] ^ 0x2F) - 8] ^ v13) + 2672))(*(*result + 16 * (a4 & 0xF)), 0, *(*result + 16 * (a4 & 0xF) + 8), v12);
      result = v14;
      ++a4;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1BAEFB35C(uint64_t result, unsigned int a2, int a3, char a4)
{
  v4 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x4E]) - 41);
  v5 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + *v4) ^ 0x88))] ^ 0x2F] ^ (127 * ((dword_1EBC36FA0 + *v4) ^ 0x88))) - 1);
  v6 = (*v5 - *v4) ^ &v17;
  *v4 = (2140301951 * v6) ^ 0x3D3AC77DA7219688;
  *v5 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v7 = &v16 ^ a2;
    v8 = v7 ^ a4;
    v9 = v7 + a4;
    if (a4)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    if (*(result + a2) != 1)
    {
      if (*(result + a2))
      {
        v10 = 0;
      }
    }

    v15 = 2 * a2;
    v11 = (a3 - 1);
    v12 = 127 * ((*v5 + *v4) ^ 0x88);
    v13 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36F70 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x4E]) - 18);
    v14 = result;
    (*(v13 + 8 * ((byte_1BAF9A57C[(byte_1BAF98D6C[v12 - 12] ^ 0xF9) - 12] ^ v12) + 2503)))();
    return (*(v13 + 8 * (((127 * (*v4 ^ 0x88 ^ *v5)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v4 ^ 0x88 ^ *v5))] ^ 0x6B]) + 2559)))(v14, v15 + 2, v11, v10);
  }

  else
  {
    *(result + a2) = a4;
  }

  return result;
}

uint64_t sub_1BAEFB5C0(uint64_t result, _BYTE *a2, int a3, char a4)
{
  v4 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC37070) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC37070) ^ 0x88))] ^ 0xC0]) + 2);
  v5 = *(&off_1E7F1D8C0 + (byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((dword_1EBC36FA0 - *v4) ^ 0x88))] ^ 0x30] ^ (127 * ((dword_1EBC36FA0 - *v4) ^ 0x88))) - 86);
  v6 = (*v5 + *v4) ^ &v12;
  *v4 = 2140301951 * v6 - 0x3D3AC77DA7219688;
  *v5 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v8 = v5;
    v9 = result;
    do
    {
      v10 = a3;
      v11 = a2;
      *a2 = (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC37070 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (dword_1EBC37070 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xC0]) + 11) + ((127 * (*v4 ^ 0x88 ^ *v5)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * (*v4 ^ 0x88 ^ *v5))] ^ 0x30]) + 2588))(*(result + 16 * (a4 & 0xF)), 0, *(result + 16 * (a4 & 0xF) + 8));
      a2 = v11 + 1;
      v5 = v8;
      result = v9;
      ++a4;
      a3 = v10 - 1;
    }

    while (v10 != 1);
  }

  return result;
}

uint64_t sub_1BAEFB794(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36FA8 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (dword_1EBC36FA8 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xBE]) - 41);
  v5 = *(v3 - 4);
  v4 = (v3 - 4);
  v6 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[(127 * (v5 ^ dword_1EBC36FA0 ^ 0x88)) - 8] ^ 0x2D) - 8] ^ (127 * (v5 ^ dword_1EBC36FA0 ^ 0x88))) - 200);
  v7 = (*v6 ^ v5) - &v17;
  *v4 = 2140301951 * v7 - 0x2DAA06A0DC720288;
  *v6 = 2140301951 * (v7 ^ 0x3D3AC77DA7219688);
  if (a3)
  {
    v16 = 2 * a2;
    v8 = (a3 - 1);
    v9 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36FA8) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + dword_1EBC36FA8) ^ 0x88))] ^ 0x4E]) - 18);
    v15 = (*(v9 + 8 * ((byte_1BAF9A770[byte_1BAF99060[(127 * ((*v6 + *v4) ^ 0x88))] ^ 0x4F] ^ (127 * ((*v6 + *v4) ^ 0x88))) + 2645)))(a1, (2 * a2) | 1, v8);
    v12 = (*(v9 + 8 * (((127 * (*v4 ^ 0x88 ^ *v6)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v4 ^ 0x88 ^ *v6))] ^ 0x12]) + 2503)))(a1, v16 + 2, v8);
    if (*(a1 + a2) == 1)
    {
      return (v12 + v15);
    }

    else if (!*(a1 + a2))
    {
      return (v12 ^ v15);
    }
  }

  else
  {
    return *(a1 + a2);
  }

  return v13;
}

uint64_t sub_1BAEFB9F4(uint64_t *a1)
{
  v1 = a1;
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36FB0) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36FB0) ^ 0x88))] ^ 0x66]) + 45);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ dword_1EBC36FA0 ^ 0x88))] ^ 0x6B] ^ (127 * (*v2 ^ dword_1EBC36FA0 ^ 0x88))) - 114);
  v4 = (*v3 + *v2) ^ &v23;
  *v2 = 2140301951 * (v4 - 0x3D3AC77DA7219688);
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36FB0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36FB0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x12]) - 132);
  v22 = *(v5 + 21640) ^ a1;
  v6 = 127 * ((*v3 - *v2) ^ 0x88);
  v7 = (*(v5 + 8 * ((byte_1BAF9A57C[(byte_1BAF98D6C[v6 - 12] ^ 0xF9) - 12] ^ v6) + 2508)))(256);
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v21 = v1;
    *v1 = v7;
    v10 = v7 + 2;
    for (i = 1; ; ++i)
    {
      v12 = v10 + v9 + v22 * &v22;
      v22 = v12;
      v13 = (v8 + v9);
      *(v8 + v9 + 8) = v12 & 3;
      v14 = (v10 + v9) & 3;
      v15 = (*(v5 + 8 * (((127 * ((*v3 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v3 + *v2) ^ 0x88))] ^ 0xC0]) + 2650)))(~(-2 << ((v8 + 2 + v9) & 3)));
      if (!v15)
      {
        break;
      }

      if (v14)
      {
        *v15 = ((v12 * v12) ^ 1) & 1;
        if (v14 != 1)
        {
          v16 = (((v12 * v12) ^ 1) * ((v12 * v12) ^ 1)) ^ 1;
          v15[1] = v16 & 1;
          v17 = (v16 * v16) ^ 1;
          v15[2] = v17 & 1;
          if (v14 != 2)
          {
            v18 = (v17 & 1) == 0;
            v15[3] = v18;
            v15[4] = !v18;
            v15[5] = v18;
            v15[6] = !v18;
          }
        }
      }

      *(v8 + v9) = v15;
      v9 += 16;
      if (v9 == 256)
      {
        return 0;
      }
    }

    *v13 = 0;
    v1 = v21;
    do
    {
      if (*v13)
      {
        (*(v5 + 8 * (((127 * ((*v3 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v3 - *v2) ^ 0x88))] ^ 0x12]) + 2342)))();
      }

      v13 -= 2;
    }

    while (i-- > 1);
  }

  (*(v5 + 8 * (((127 * (*v2 ^ 0x88 ^ *v3)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v3))] ^ 0x4F]) + 2484)))(v8);
  *v1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_1BAEFBDF4(uint64_t result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0xBE]) - 84);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - v3) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88))] ^ 0x20]) - 113);
  v5 = 2140301951 * (&v7[*v4 - v3] ^ 0x3D3AC77DA7219688);
  *v2 = v5;
  *v4 = v5;
  if (result)
  {
    v6 = 127 * ((*v4 + *v2) ^ 0x88);
    return (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (dword_1EBC37040 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x6B]) - 75) + (byte_1BAF9A474[(byte_1BAF98C60[v6] ^ 0x20) - 4] ^ v6) + 2400))();
  }

  return result;
}

void *sub_1BAEFBF68(void *result, char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *result | 1;
    v5 = *result + v4 * a4;
    do
    {
      v6 = *a2++;
      *(*result + (v5 & 0xF)) = v6;
      v5 += v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

double sub_1BAEFBF9C(unint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a1 | 1;
    v5 = a1 + a4 * (a1 | 1);
    if (a3 < 8 || a1 > 1 || a3 - 1 > 0xF || (~(a4 + a1) & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - ((a4 + a1) & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      v8 = (a1 + (v5 & 0xF));
      for (i = a2 + 2; ; i += 4)
      {
        v10 = v8[1];
        *(i - 1) = *v8;
        *i = v10;
      }
    }

    v6 = a3 & 0x18;
    result = *(a1 + (v5 & 0xF));
    *a2 = result;
    if (v6 != 8)
    {
      result = *(a1 + (v5 & 0xF ^ 8));
      a2[1] = result;
    }

    if (v6 != a3)
    {
      v5 += v6 * v4;
      a2 = (a2 + v6);
      a3 -= v6;
      do
      {
LABEL_3:
        *a2 = *(a1 + (v5 & 0xF));
        a2 = (a2 + 1);
        v5 += v4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_1BAEFC074(uint64_t *a1)
{
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36F68) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - dword_1EBC36F68) ^ 0x88))] ^ 0x6B]) - 143);
  v3 = 127 * ((dword_1EBC36FA0 - *v2) ^ 0x88);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A774[(byte_1BAF99064[v3 - 4] ^ 0x12) - 4] ^ v3) - 171);
  v5 = &v11[*v4 - *v2];
  v6 = 2140301951 * v5 - 0x3D3AC77DA7219688;
  v7 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  *v2 = v6;
  *v4 = v7;
  LOBYTE(v4) = 127 * (*v2 ^ 0x88 ^ v7);
  v8 = (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36F68) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC36F68) ^ 0x88))] ^ 0xC0]) + 11) + (byte_1BAF9DAE8[(byte_1BAF9CAF8[v4 - 8] ^ 0x2F) - 8] ^ v4) + 2677))(16);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v9;
  return result;
}

void *sub_1BAEFC204(void *result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36ED0) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36ED0) ^ 0x88))] ^ 0x66]) + 25);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A774[(byte_1BAF99064[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88)) - 4] ^ 0x23) - 4] ^ (127 * ((dword_1EBC36FA0 - v3) ^ 0x88))) - 142);
  v5 = v3 - &v8 + *v4;
  *v2 = 2140301951 * v5 - 0x2DAA06A0DC720288;
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  if (result)
  {
    do
    {
      v6 = *result;
      v7 = 127 * (*v2 ^ 0x88 ^ *v4);
      (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC36ED0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36ED0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x12]) - 132) + (byte_1BAF9A674[(byte_1BAF98F6C[v7 - 12] ^ 0x66) - 4] ^ v7) + 2541))();
      result = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *sub_1BAEFC3D4(uint64_t *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      v5 = *v5;
      v6 = v5[1];
      if (v6)
      {
        v7 = v6 == a4;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (!v6)
    {
      v5[1] = a4;
    }

    *(v5 + 16) = v4;
    ++a2;
    ++a4;
  }

  return result;
}

uint64_t *sub_1BAEFC418(uint64_t *result, _BYTE *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = result[1];
    if (v4)
    {
      v5 = v4 == a4;
    }

    else
    {
      v5 = 1;
    }

    v6 = result;
    if (!v5)
    {
      v6 = result;
      do
      {
        v6 = *v6;
        v7 = v6[1];
        if (v7)
        {
          v8 = v7 == a4;
        }

        else
        {
          v8 = 1;
        }
      }

      while (!v8);
    }

    *a2++ = *(v6 + 16);
    ++a4;
  }

  return result;
}

uint64_t sub_1BAEFC464(uint64_t *a1)
{
  v2 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC37030 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC37030 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x23]) - 132);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + *v2) ^ 0x88))] ^ 0x2F] ^ (127 * ((dword_1EBC36FA0 + *v2) ^ 0x88))) - 1);
  v4 = 2140301951 * (&v40[*v2 + *v3] ^ 0x3D3AC77DA7219688);
  *v2 = v4;
  v39 = v3;
  *v3 = v4;
  LOBYTE(v4) = 127 * ((v4 - *v2) ^ 0x88);
  v38 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37030) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC37030) ^ 0x88))] ^ 0x27]) - 104);
  v5 = (*(v38 + 8 * ((byte_1BAF98E60[byte_1BAF9D9E0[v4] ^ 0x31] ^ v4) + 2707)))(24);
  if (v5
    && (v6 = v5, *a1 = v5, v7 = 127 * ((*v39 - *v2) ^ 0x88), (*(v38 + 8 * ((byte_1BAF9A770[byte_1BAF99060[v7] ^ 0x12] ^ v7) + 2479)))(), (v8 = (*(v38 + 8 * ((byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x27] ^ (127 * ((*v39 - *v2) ^ 0x88))) + 2535)))(24)) != 0)
    && (v9 = v8, *v6 = v8, (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x12]) + 2479)))(), (v10 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x4F]) + 2649)))(24)) != 0)
    && (v11 = v10, *v9 = v10, (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x11]) + 2650)))(), (v12 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x2D]) + 2478)))(24)) != 0)
    && (v13 = v12, *v11 = v12, (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x20]) + 2537)))(), (v14 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x4F]) + 2649)))(24)) != 0)
    && (v15 = v14, *v13 = v14, (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x23]) + 2508)))(), (v16 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x4F]) + 2649)))(24)) != 0)
    && (v17 = v16, *v15 = v16, (*(v38 + 8 * ((byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xBE] ^ (127 * (*v2 ^ 0x88 ^ *v39))) + 2565)))(), (v18 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xBE]) + 2593)))(24)) != 0)
    && (v19 = v18, *v17 = v18, (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x27]) + 2507)))(), (v20 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x2D]) + 2478)))(24)) != 0)
    && (v21 = v20, *v19 = v20, (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x11]) + 2650)))(), (v22 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x11]) + 2678)))(24)) != 0)
    && (v23 = v22, *v21 = v22, (*(v38 + 8 * ((byte_1BAF9A570[byte_1BAF98D60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0xF9] ^ (127 * ((*v39 - *v2) ^ 0x88))) + 2480)))(), (v24 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x20]) + 2565)))(24)) != 0)
    && (v25 = v24, *v23 = v24, (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xF9]) + 2480)))(), (v26 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x30]) + 2592)))(24)) != 0)
    && (v27 = v26, *v25 = v26, (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x66]) + 2678)))(), (v28 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0xF9]) + 2508)))(24)) != 0)
    && (v29 = v28, *v27 = v28, (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x12]) + 2479)))(), (v30 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x2D]) + 2478)))(24)) != 0)
    && (v31 = v30, *v29 = v30, (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x20]) + 2537)))(), (v32 = (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF98E60[byte_1BAF9D9E0[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x31]) + 2707)))(24)) != 0)
    && (v33 = v32, *v31 = v32, (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x20]) + 2537)))(), (v34 = (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0x66]) + 2706)))(24)) != 0)
    && (v35 = v34, *v33 = v34, (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0x11]) + 2650)))(), (v36 = (*(v38 + 8 * (((127 * ((*v39 - *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v39 - *v2) ^ 0x88))] ^ 0xC0]) + 2650)))(24)) != 0))
  {
    *v35 = v36;
    (*(v38 + 8 * (((127 * (*v2 ^ 0x88 ^ *v39)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (*v2 ^ 0x88 ^ *v39))] ^ 0xC0]) + 2622)))();
    return 0;
  }

  else
  {
    (*(v38 + 8 * (((127 * ((*v39 + *v2) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v39 + *v2) ^ 0x88))] ^ 0x2F]) + 2666)))(*a1);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1BAEFD120(uint64_t result)
{
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36FB8) ^ 0x88)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((dword_1EBC36FA0 - dword_1EBC36FB8) ^ 0x88))] ^ 0xF9]) - 137);
  v3 = *(v1 - 4);
  v2 = (v1 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[(127 * (v3 ^ dword_1EBC36FA0 ^ 0x88)) - 8] ^ 0xC0) - 8] ^ (127 * (v3 ^ dword_1EBC36FA0 ^ 0x88))) - 28);
  v5 = 2140301951 * (&v7[*v4 ^ v3] ^ 0x3D3AC77DA7219688);
  *v2 = v5;
  *v4 = v5;
  if (result)
  {
    v6 = 127 * ((*v4 - *v2) ^ 0x88);
    return (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36FB8) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + dword_1EBC36FB8) ^ 0x88))] ^ 0x4E]) - 18) + (byte_1BAF9A474[(byte_1BAF98C60[v6] ^ 0x20) - 4] ^ v6) + 2400))();
  }

  return result;
}

void *sub_1BAEFD290(void *result, char *a2, int a3, uint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(*result + (a4++ & 0xF)) = v4;
  }

  return result;
}

double sub_1BAEFD2B4(uint64_t a1, double *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 < 8 || a3 - 1 > 0xF || (~a4 & 0xFu) < ((a3 - 1) & 0xFu) || a2 - a1 - (a4 & 0xF) < 0x20)
    {
      goto LABEL_3;
    }

    if (a3 >= 0x20)
    {
      for (i = a2 + 2; ; i += 4)
      {
        v7 = (a1 + (a4 & 0xF));
        v8 = v7[1];
        *(i - 1) = *v7;
        *i = v8;
        a4 += 32;
      }
    }

    v4 = a3 & 0x18;
    result = *(a1 + (a4 & 0xF));
    *a2 = result;
    if (v4 != 8)
    {
      result = *(a1 + ((a4 + 8) & 0xF));
      a2[1] = result;
    }

    if (v4 != a3)
    {
      a4 += v4;
      a2 = (a2 + v4);
      a3 -= v4;
      do
      {
LABEL_3:
        *a2 = *(a1 + (a4 & 0xF));
        a2 = (a2 + 1);
        ++a4;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_1BAEFD37C(uint64_t *a1)
{
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88))] ^ 0x2D]) - 187);
  v3 = *(v2 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[(127 * ((dword_1EBC36FA0 - v3) ^ 0x88)) - 8] ^ 0x2F) - 8] ^ (127 * ((dword_1EBC36FA0 - v3) ^ 0x88))) - 1);
  v5 = &v11[*v4 - v3];
  v6 = 2140301951 * v5 - 0x3D3AC77DA7219688;
  v7 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  *(v2 - 4) = v6;
  *v4 = v7;
  v8 = (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC36EE8) ^ 0x88))] ^ 0x20]) - 74) + (byte_1BAF9A474[(byte_1BAF98C60[(127 * ((v7 - *(v2 - 4)) ^ 0x88))] ^ 0x20) - 4] ^ (127 * ((v7 - *(v2 - 4)) ^ 0x88))) + 2565))(16);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1BAEFD514()
{
  v0 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36F60) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC36F60) ^ 0x88))] ^ 0x2F]) + 39);
  v1 = 127 * ((dword_1EBC36FA0 - *v0) ^ 0x88);
  v2 = *(&off_1E7F1D8C0 + (byte_1BAF98E68[(byte_1BAF9D9E4[v1 - 4] ^ 0x31) - 8] ^ v1) + 29);
  v3 = &v7[*v2 - *v0];
  v4 = 2140301951 * v3 - 0x2DAA06A0DC720288;
  v5 = 2140301951 * (v3 ^ 0x3D3AC77DA7219688);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = 127 * ((v5 - *v0) ^ 0x88);
  return (*(*(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F60 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36F60 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x23]) - 103) + (byte_1BAF9DAE8[(byte_1BAF9CAF8[v2 - 8] ^ 0x2F) - 8] ^ v2) + 2677))();
}

uint64_t sub_1BAEFD680()
{
  v0 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88))] ^ 0x27]) - 160);
  v1 = 127 * ((dword_1EBC36FA0 + *v0) ^ 0x88);
  v2 = *(&off_1E7F1D8C0 + (byte_1BAF98E68[(byte_1BAF9D9E4[v1 - 4] ^ 0x30) - 8] ^ v1) - 86);
  v3 = &v7[*v2 - *v0];
  v4 = 2140301951 * v3 + 0x3D3AC77DA7219688;
  v5 = 2140301951 * (v3 ^ 0x3D3AC77DA7219688);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = 127 * ((v5 + *v0) ^ 0x88);
  return (*(*(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC37068) ^ 0x88))] ^ 0xBE]) - 46) + (byte_1BAF9A774[(byte_1BAF99064[v2 - 4] ^ 0x4F) - 4] ^ v2) + 2484))();
}

_BYTE *sub_1BAEFD7E8(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_1BAEFD95C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BAEFD9A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAEFD9BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAEFDB70(uint64_t a1)
{
  v1 = objc_alloc(objc_opt_class());
  qword_1EDBA4BB8 = objc_msgSend_initWithName_poolSize_numberToStash_setupCompletion_(v1, v2, @"pcd_default_pool", 2, 2, &unk_1F38F4780);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAEFDBC8(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_INFO, "Finished pcd_default pool manager setup with state %ld", &v4, 0xCu);
  }
}

void sub_1BAEFDE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAEFDEAC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__poolManagerStateChangedTo_(WeakRetained, v3, a2, v4);
}

void sub_1BAEFE314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAEFE338(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__poolManagerStateChangedTo_(WeakRetained, v3, a2, v4);
}

void sub_1BAEFE500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAEFE524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAEFE53C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1BAEFF068(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_ERROR, "Received error for rotate. %{public}@", &v4, 0xCu);
  }
}

uint64_t sub_1BAEFF31C()
{
  v0 = [APUnfairLock alloc];
  qword_1EDBA41C8 = objc_msgSend_initWithOptions_(v0, v1, 1, v2);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF010F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAF01124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF0113C(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_msgSend_valid(v3, v4, v5, v6))
  {
    v10 = objc_msgSend_responseBody(v3, v7, v8, v9);

    v14 = objc_msgSend_responseBody(v3, v11, v12, v13);
    v21 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v15, v16, v17);
    if (!v14)
    {
      goto LABEL_13;
    }

    v22 = objc_msgSend_lock(*(a1 + 32), v18, v19, v20);
    objc_msgSend_lock(v22, v23, v24, v25);
    if (v10)
    {
      v66 = 0;
      v27 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v26, v14, 0, &v66);
      v28 = v66;

      v21 = v27;
    }

    else
    {
      v28 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setServerData_(*(a1 + 32), v37, v21, v39);
    }

    objc_msgSend_unlock(v22, v37, v38, v39);

    if (v28)
    {
      v40 = APLogForCategory(0x2FuLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v68 = v14;
        v69 = 2114;
        v70 = v28;
        _os_log_impl(&dword_1BADC1000, v40, OS_LOG_TYPE_ERROR, "Received error deserializing response body: %{public}@. Error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
LABEL_13:
      v41 = [APStorageManager alloc];
      v44 = objc_msgSend_initWithPathPrefix_(v41, v42, @"s/s", v43);
      v40 = v44;
      v46 = *(a1 + 40);
      if (v10)
      {
        v65 = 0;
        objc_msgSend_storeObject_atPath_error_(v44, v45, v21, v46, &v65);
        v28 = v65;
      }

      else
      {
        v64 = 0;
        v49 = objc_msgSend_fileExistsAtPath_error_(v44, v45, v46, &v64);
        v50 = v64;
        v28 = v50;
        if (v49)
        {
          v51 = *(a1 + 40);
          v63 = v50;
          objc_msgSend_removeObjectAtPath_error_(v40, v47, v51, &v63);
          v52 = v63;

          v28 = v52;
        }
      }

      objc_msgSend_setDidFetchFromServer_(*(a1 + 32), v47, 1, v48);
      if (v28)
      {
        v56 = APLogForCategory(0x2FuLL);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v68 = v14;
          v69 = 2114;
          v70 = v28;
          _os_log_impl(&dword_1BADC1000, v56, OS_LOG_TYPE_ERROR, "Received error deserializing response body: %{public}@. Error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v56 = objc_msgSend_now(MEMORY[0x1E695DF00], v53, v54, v55);
        objc_msgSend_setLastUpdate_(*(a1 + 32), v57, v56, v58);
      }
    }

    v59 = APLogForCategory(0x2FuLL);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v60 = *(a1 + 48);
      *buf = 138478083;
      v68 = v60;
      v69 = 2114;
      v70 = v21;
      _os_log_impl(&dword_1BADC1000, v59, OS_LOG_TYPE_INFO, "Received response from '%{private}@'. Data: %{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v14 = APLogForCategory(0x2FuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v32 = *(a1 + 48);
    v33 = objc_msgSend_responseStatusCode(v3, v29, v30, v31);
    v28 = objc_msgSend_responseError(v3, v34, v35, v36);
    *buf = 138478339;
    v68 = v32;
    v69 = 2048;
    v70 = v33;
    v71 = 2114;
    v72 = v28;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "Received error requesting from: %{private}@. Status Code: %ld Error: %{public}@", buf, 0x20u);
LABEL_25:
  }

  v61 = *(*(a1 + 56) + 8);
  v62 = *(v61 + 40);
  *(v61 + 40) = 0;
}

uLong sub_1BAF02690(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_dataUsingEncoding_(a1, a2, 4, a4);
  v5 = v4;
  v9 = objc_msgSend_bytes(v5, v6, v7, v8);
  v13 = objc_msgSend_length(v4, v10, v11, v12);
  v14 = crc32(0, v9, v13);

  return v14;
}

uint64_t sub_1BAF02F00(uint64_t a1, void *a2, void *a3)
{
  v26 = 0;
  v4 = *MEMORY[0x1E695DC30];
  v5 = a3;
  objc_msgSend_getResourceValue_forKey_error_(a2, v6, &v26, v4, 0);
  v25 = 0;
  v7 = v26;
  objc_msgSend_getResourceValue_forKey_error_(v5, v8, &v25, v4, 0);

  v9 = v25;
  v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v10, @".plist", &stru_1F38FD5F0);
  v15 = objc_msgSend_integerValue(v11, v12, v13, v14);

  v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v9, v16, @".plist", &stru_1F38FD5F0);

  v21 = objc_msgSend_integerValue(v17, v18, v19, v20);
  v22 = -1;
  if (v15 >= v21)
  {
    v22 = 1;
  }

  if (v15 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  return v23;
}

uint64_t sub_1BAF03228()
{
  v0 = [APUnfairLock alloc];
  qword_1EDBA4138 = objc_msgSend_initWithOptions_(v0, v1, 1, v2);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF03BD8(uint64_t a1, const char *a2)
{
  qword_1EDBA41D0 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x1E696AD18], a2, 0, 5);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF04D90(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_invalidateSessionAndCancelTasks_(v4, v5, *(a1 + 32), v6);
  v7 = APLogForCategory(0x22uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_name(v4, v8, v9, v10);
    v12 = v11;
    v13 = ".";
    if (*(a1 + 32))
    {
      v13 = " and all pending tasks are canceled.";
    }

    v14 = 138543618;
    v15 = v11;
    v16 = 2082;
    v17 = v13;
    _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_INFO, "Service %{public}@ is invalidated%{public}s", &v14, 0x16u);
  }
}

id sub_1BAF054E8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1BAF055B8;
  v13[3] = &unk_1E7F1CC70;
  v14 = v4;
  v5 = v4;
  v8 = objc_msgSend_indexesOfObjectsPassingTest_(a1, v6, v13, v7);
  v11 = objc_msgSend_objectsAtIndexes_(a1, v9, v8, v10);

  return v11;
}

void sub_1BAF05744(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v23, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_cancel(*(*(&v17 + 1) + 8 * v11++), v6, v7, v8);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v17, v23, 16);
    }

    while (v9);
  }

  v12 = APLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = objc_msgSend_count(v3, v13, v14, v15);
    *buf = 134217984;
    v22 = v16;
    _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_INFO, "%lu tasks are canceled.", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1BAF05C48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [APHTTPResponse alloc];
  v11 = objc_msgSend__initWithResponseData_URLResponse_error_(v9, v10, v13, v7, v8);
  if (*(a1 + 32))
  {
    v12 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))();
    objc_autoreleasePoolPop(v12);
  }
}

void sub_1BAF06090(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    v5 = objc_alloc(MEMORY[0x1E696AC68]);
    v9 = objc_msgSend_URL(*(a1 + 40), v6, v7, v8);
    v13 = objc_msgSend_integerValue(*(a1 + 32), v10, v11, v12);
    v26 = objc_msgSend_initWithURL_statusCode_HTTPVersion_headerFields_(v5, v14, v9, v13, 0, 0);
  }

  else
  {
    v26 = 0;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A978];
    v18 = objc_msgSend_integerValue(v15, a2, a3, a4);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, v17, v18, 0);
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_msgSend_completionHandler(*(a1 + 40), a2, a3, a4);
  v22 = [APHTTPResponse alloc];
  v24 = objc_msgSend__initWithResponseData_URLResponse_error_(v22, v23, 0, v26, v20);
  if (v21)
  {
    v25 = objc_autoreleasePoolPush();
    (v21)[2](v21, v24);
    objc_autoreleasePoolPop(v25);
  }
}

id sub_1BAF06428(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v5, v10, v9, v11);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = sub_1BAF06520;
  v25 = &unk_1E7F1CD28;
  v26 = v12;
  v27 = v4;
  v13 = v4;
  v14 = v12;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, &v22, v16);
  v20 = objc_msgSend_copy(v14, v17, v18, v19, v22, v23, v24, v25);

  return v20;
}

void sub_1BAF06520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(v1, v2, v4, v3);
}

id sub_1BAF0657C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v5, v10, v9, v11);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = sub_1BAF06670;
  v25 = &unk_1E7F1CD50;
  v26 = v12;
  v27 = v4;
  v13 = v12;
  v14 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, &v22, v16);
  v20 = objc_msgSend_copy(v13, v17, v18, v19, v22, v23, v24, v25);

  return v20;
}

uint64_t sub_1BAF06670(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2, v3);
  }

  return MEMORY[0x1EEE66BB8]();
}

id sub_1BAF08890(uint64_t a1)
{
  if (qword_1EDBA4150 != -1)
  {
    sub_1BAF8DE40();
  }

  v2 = qword_1EDBA4158;

  return v2;
}

void sub_1BAF088D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], a2, @"en_US_POSIX", a4);
  v6 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x1E695DFE8], v4, @"UTC", v5);
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = qword_1EDBA4158;
  qword_1EDBA4158 = v7;

  objc_msgSend_setDateFormat_(qword_1EDBA4158, v9, @"yyyy-MM-dd'T'HH:mm':00Z'", v10);
  objc_msgSend_setLocale_(qword_1EDBA4158, v11, v15, v12);
  objc_msgSend_setTimeZone_(qword_1EDBA4158, v13, v6, v14);
}

id sub_1BAF09684(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (objc_msgSend__validatePayload_(*(a1 + 40), v3, v2, v4))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1BAF0993C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v51 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v42, v50, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v43;
    v15 = 0x1E696A000uLL;
    *&v12 = 138478083;
    v40 = v12;
    v41 = v7;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKey_(v7, v10, v17, v11, v40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_msgSend_stringValue(v17, v19, v20, v21);
LABEL_10:
          v23 = v22;
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v17;
          goto LABEL_10;
        }

        v24 = APLogForCategory(0x1DuLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1BADC1000, v24, OS_LOG_TYPE_ERROR, "Warning: Unable to recognize the key", buf, 2u);
        }

        v23 = @"UNKNOWN_KEY";
LABEL_14:
        if (objc_opt_respondsToSelector())
        {
          v27 = objc_msgSend_jsonRepresentationWithOptions_(v18, v25, v4, v26);
          objc_msgSend_setObject_forKey_(v6, v28, v27, v23);
        }

        else
        {
          v27 = APLogForCategory(0x1DuLL);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v29 = objc_opt_class();
            NSStringFromClass(v29);
            v30 = v13;
            v31 = v15;
            v32 = v14;
            v33 = v4;
            v35 = v34 = v6;
            *buf = v40;
            v47 = v35;
            v48 = 2113;
            v49 = v18;
            _os_log_impl(&dword_1BADC1000, v27, OS_LOG_TYPE_ERROR, "ERROR: Unable to serialize the object into JSON. Please file a radar against PEP Advertising | 1.0.\n%{private}@ (%{private}@)", buf, 0x16u);

            v6 = v34;
            v4 = v33;
            v14 = v32;
            v15 = v31;
            v13 = v30;
            v7 = v41;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v42, v50, 16);
    }

    while (v13);
  }

  v38 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v36, v6, v37);

  return v38;
}

id sub_1BAF09C30(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_jsonRepresentationWithOptions_(a1, v6, a3, v7);
  v18 = 0;
  v10 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v9, v8, a3 & 0xF, &v18);
  v11 = v18;
  if (v11)
  {
    v12 = APLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_msgSend_localizedDescription(v11, v13, v14, v15);
      *buf = 138478083;
      v20 = v16;
      v21 = 2113;
      v22 = v8;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "Error serializing dictionary into JSON (%{private}@):\n%{private}@", buf, 0x16u);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

__CFString *sub_1BAF09E94(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_jsonDataWithOptions_(a1, a2, a3, a4);
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_msgSend_initWithData_encoding_(v5, v6, v4, 4);
  }

  else
  {
    v7 = @"{}";
  }

  return v7;
}

uint64_t sub_1BAF0A618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 40), v5, v5, v6);
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF0A67C(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v8 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), v5, a3, v6);
  if (v8)
  {
    objc_msgSend_setObject_forKey_(*(a1 + 40), v7, v8, v9);
  }
}

uint64_t sub_1BAF0A6F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 40), v5, v5, v6);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF0A754(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__JSONObjectWithObject_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 40), v5, v5, v6);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF0B220(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_lock(*(a1 + 32), a2, a3, a4);
  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24))
  {
    v9 = *(a1 + 32);

    return objc_msgSend_unlock(v9, v5, v6, v7);
  }

  else
  {
    *(v8 + 24) = 1;
    objc_msgSend_unlock(*(a1 + 32), v5, v6, v7);
    v11 = *(*(a1 + 40) + 16);

    return v11();
  }
}

uint64_t sub_1BAF0B2AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_lock(*(a1 + 32), a2, a3, a4);
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24))
  {
    v9 = *(a1 + 32);

    return objc_msgSend_unlock(v9, v5, v6, v7);
  }

  else
  {
    *(v8 + 24) = 1;
    objc_msgSend_unlock(*(a1 + 32), v5, v6, v7);
    objc_msgSend_setState_(*(a1 + 40), v11, 18006, v12);
    v13 = *(a1 + 48);
    v17 = objc_msgSend_state(*(a1 + 40), v14, v15, v16);
    v18 = *(v13 + 16);

    return v18(v13, v17);
  }
}