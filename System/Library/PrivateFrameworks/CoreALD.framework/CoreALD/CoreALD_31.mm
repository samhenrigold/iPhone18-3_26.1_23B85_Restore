uint64_t sub_244AD25BC()
{
  LODWORD(STACK[0x25C8]) = v2;
  v3 = (v2 - 50408488) & 0xF7DFBFA;
  v4 = (v2 - 9711) | 0x4C08;
  v5 = v0;
  v6 = v0 & 0xFFFFFFF3 ^ 0xD09BFBFD;
  LODWORD(STACK[0x25B8]) = v6;
  v7 = STACK[0x2048];
  LOBYTE(v6) = *(STACK[0x2048] + v6);
  LODWORD(STACK[0x1ED0]) = v3;
  LODWORD(STACK[0x21C8]) = v4;
  v8 = *(STACK[0x2850] + (((v3 ^ v6 ^ 0xCF) + (v4 ^ 0x10)) ^ 0x68));
  v9 = STACK[0x2850];
  HIDWORD(v11) = v8 ^ 0x1D;
  LODWORD(v11) = v8 << 24;
  v10 = v11 >> 31;
  HIDWORD(v11) = v10 ^ 1;
  LODWORD(v11) = (v10 ^ 0xFFFFFFE7) << 24;
  v12 = v11 >> 26;
  v13 = v0 & 0xFFFFFFF5 ^ 0xD09BFBFB;
  LODWORD(STACK[0x25B0]) = v13;
  v14 = STACK[0x2078];
  v15 = *(STACK[0x2078] + (*(v7 + v13) ^ 0x8FLL));
  HIDWORD(v11) = v15 ^ 5;
  LODWORD(v11) = (v15 ^ 0x80) << 24;
  v16 = (v5 & 0xFFFFFFF4 ^ 0xA7B976D70B70A40ELL) + 0x584689282414A00BLL + ((2 * (v5 & 0xFFFFFFF4 ^ 0xD09BFBFB)) & 0x1B7D6BFEALL);
  STACK[0x25C0] = v16;
  v17 = STACK[0x2070];
  v18 = STACK[0x2068];
  LODWORD(v16) = (LODWORD(STACK[0x2068]) - 99 * *(STACK[0x2070] + (*(v7 + v16) ^ 0xDALL))) | (((v11 >> 29) ^ 0xCE) << 8);
  v19 = v5 & 0xFFFFFFF7 ^ 0xD09BFBF9;
  LODWORD(STACK[0x2598]) = v19;
  v20 = *(v9 + (((*(v7 + v19) ^ 0xD1) - 34) ^ 0x68));
  HIDWORD(v11) = v20 ^ 0x1D;
  LODWORD(v11) = v20 << 24;
  v21 = v11 >> 31;
  HIDWORD(v11) = v21 ^ 1;
  LODWORD(v11) = (v21 ^ 0xFFFFFFE7) << 24;
  v22 = v16 | (((v18 - 99 * *(v17 + ((v11 >> 26) ^ 0x7CLL))) ^ 0xC2) << 24);
  LODWORD(v16) = v5 & 0xFFFFFFFA ^ 0xD09BFBF5;
  LODWORD(STACK[0x2518]) = v16;
  LODWORD(v16) = *(v9 + (((*(v7 + v16) ^ 0x47) - 34) ^ 0x68));
  v23 = v9;
  HIDWORD(v11) = v16 ^ 0x1D;
  LODWORD(v11) = v16 << 24;
  LODWORD(v16) = v11 >> 31;
  HIDWORD(v11) = v16 ^ 1;
  LODWORD(v11) = (v16 ^ 0xFFFFFFE7) << 24;
  LODWORD(v9) = *(v14 + ((((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * ((v11 >> 26) ^ 0x36)) ^ 0x9DLL))) ^ 0x8C) - 37) ^ 0xB1));
  v24 = (v5 & 0xFFFFFFF9 ^ 0xB7FDFBF16EE69609) + 0x4802040E41829202 + ((2 * (v5 & 0xFFFFFFF9 ^ 0xD09BFBF7)) & 0x17CFADBFCLL);
  STACK[0x2538] = v24;
  HIDWORD(v11) = v9 ^ 5;
  LODWORD(v11) = (v9 ^ 0x80) << 24;
  v25 = (((v18 - 99 * *(v17 + (*(v7 + v24) ^ 0x90))) ^ 0xB4) << 8) | (((v11 >> 29) ^ 0x5B) << 16);
  v26 = v5 & 0xFFFFFFF2 ^ 0xD09BFBFD;
  LODWORD(STACK[0x2508]) = v26;
  v27 = v18 - 99 * *(v17 + (*(v7 + v26) ^ 0x44));
  HIDWORD(v11) = v27 ^ 0xFFFFFFF7;
  LODWORD(v11) = (v27 ^ 0x40) << 24;
  v28 = STACK[0x2870];
  v29 = ((*(STACK[0x2858] + ((((v18 - 99 * *(v17 + (v12 ^ 0xEALL))) ^ 0xAC) + 71) ^ 0x39)) ^ 0x17) << 24) | (((*(STACK[0x2870] + ((v11 >> 30) ^ 0x29)) ^ 0xC4) - 73) << 16);
  v30 = (v5 & 0xFFFFFFF0 ^ 0x7FE997B42F6205D0) - 0x7FE997B4FFF9FE2FLL + ((2 * (v5 & 0xFFFFFFF0 ^ 0xD09BFBFF)) & 0x1FFF3FC5ELL);
  STACK[0x2470] = v30;
  v31 = (v5 & 0xFFFFFFFE ^ 0xFBFDBB963F6352DELL) + 0x4024469100756D1 + ((2 * (v5 & 0xFFFFFFFE ^ 0xD09BFBF1)) & 0x1DFF1525ELL);
  STACK[0x2458] = v31;
  v32 = v29 & 0xFFFFFF00 | (v18 - 99 * *(v17 + (*(v7 + v30) ^ 0x14)));
  v33 = v5 ^ 0xD09BFBF1;
  STACK[0x2510] = v33;
  v34 = (v5 ^ 0x9FD3FFDE3F700723) + 0x602C00211014032ELL + ((2 * v33) & 0x1DFD7F9A4);
  STACK[0x2478] = v34;
  v35 = STACK[0x2860];
  HIDWORD(v11) = *(STACK[0x2860] + (((*(v7 + v34) ^ 0x47) - 34) ^ 0x5DLL));
  LODWORD(v11) = (HIDWORD(v11) ^ 0xFFFFFF9F) << 24;
  LODWORD(v34) = v11 >> 28;
  HIDWORD(v11) = ~v34;
  LODWORD(v11) = (v34 ^ 0x40) << 24;
  LODWORD(v34) = *(v14 + ((v11 >> 26) ^ 0x5ALL));
  HIDWORD(v11) = v34 ^ 5;
  LODWORD(v11) = (v34 ^ 0x80) << 24;
  LOBYTE(v34) = v11 >> 29;
  v36 = v5 & 0xFFFFFFFB ^ 0xD09BFBF5;
  LODWORD(STACK[0x2488]) = v36;
  v37 = -99 * *(v17 + (*(v7 + v36) ^ 0xFLL));
  HIDWORD(v11) = (v37 + 35) ^ 0x2C;
  LODWORD(v11) = (v37 << 24) - 1560281088;
  v38 = v5 & 0xFFFFFFFC ^ 0xD09BFBF3;
  LODWORD(STACK[0x2448]) = v38;
  LOBYTE(v38) = (v18 - 99 * *(v17 + (*(v7 + v38) ^ 0xF0))) ^ 0x31;
  LODWORD(v24) = v38 | (((v18 - 99 * *(v17 + (*(v7 + v31) ^ 0xELL))) ^ 0x66) << 16);
  LODWORD(v30) = *(v28 + ((v11 >> 30) ^ 0x29));
  LODWORD(v31) = v5 & 0xFFFFFFF8 ^ 0xD09BFBF7;
  LODWORD(STACK[0x2440]) = v31;
  LODWORD(v16) = v25 | ((((v30 ^ 0xC4) - 73) ^ 0x1D) << 24);
  v39 = *(v14 + (*(v7 + v31) ^ 0xD4));
  HIDWORD(v11) = v39 ^ 5;
  LODWORD(v11) = (v39 ^ 0x80) << 24;
  LODWORD(v16) = v16 & 0xFFFFFF00 | (v11 >> 29);
  v40 = (v5 & 0xFFFFFFF6 ^ 0x1E7BFFDFB6772C53) - 0x1E7BFFDF66ECD7AALL + ((2 * (v5 & 0xFFFFFFF6 ^ 0xD09BFBF9)) & 0xCDD9AF54);
  STACK[0x2468] = v40;
  v41 = *(v14 + (*(v7 + v40) ^ 0xF4));
  HIDWORD(v11) = v41 ^ 5;
  LODWORD(v11) = (v41 ^ 0x80) << 24;
  v42 = *(v35 + ((((v11 >> 29) ^ 0x46) - 34) ^ 0x5DLL));
  HIDWORD(v11) = v42;
  LODWORD(v11) = (v42 ^ 0xFFFFFF9F) << 24;
  v43 = v11 >> 28;
  HIDWORD(v11) = ~v43;
  LODWORD(v11) = (v43 ^ 0x40) << 24;
  LODWORD(STACK[0x2460]) = v5;
  LODWORD(v40) = v5 & 0xFFFFFFF1 ^ 0xD09BFBFF;
  LODWORD(STACK[0x2438]) = v40;
  v44 = v22 & 0xFF00FFFF | ((v11 >> 26) << 16);
  v45 = v32 & 0xFFFF00FF | (((v18 - 99 * *(v17 + (*(v7 + v40) ^ 0xBDLL))) ^ 0x65) << 8);
  v46 = (v5 & 0xFFFFFFFD ^ 0x3F7AFAFF6C661C1ALL) - 0x3F7AFAFFBCFDE7E9 + ((2 * (v5 & 0xFFFFFFFD ^ 0xD09BFBF3)) & 0x179FBCFD2);
  STACK[0x2450] = v46;
  v47 = *(v23 + (((*(v7 + v46) ^ 0x47) - 34) ^ 0x68));
  HIDWORD(v11) = v47 ^ 0x1D;
  LODWORD(v11) = v47 << 24;
  v48 = v11 >> 31;
  HIDWORD(v11) = v48 ^ 1;
  LODWORD(v11) = (v48 ^ 0xFFFFFFE7) << 24;
  v49 = ((*(STACK[0x2800] + (((v34 ^ 0xF3) + 71) ^ 0xF9)) ^ 0xA) << 24) | (((v18 - 99 * *(v17 + ((v11 >> 26) ^ 0x8ELL))) ^ 0x14) << 8) | v24;
  v50 = (v49 + 431675244 - 2 * (v49 & 0x19BAD76D ^ v38 & 1)) ^ 0x19BAD76C;
  v51 = STACK[0x2838];
  v52 = STACK[0x2878];
  v53 = STACK[0x27D0];
  LODWORD(v16) = v16 ^ 0xAF ^ (2 * ((v16 ^ 0xAF) & LODWORD(STACK[0x27B0])));
  v54 = v44 ^ 0xA5 ^ (2 * ((v44 ^ 0xA5) & STACK[0x27B8]));
  v55 = STACK[0x2810];
  v56 = v45 ^ 0xBC ^ (2 * ((v45 ^ 0xBC) & STACK[0x27B0]));
  v57 = LODWORD(STACK[0x26D8]) ^ 0xF8298D4D ^ ((((v50 ^ (2 * (v50 & STACK[0x27B0]))) & STACK[0x27D0]) >> STACK[0x2880]) + (((v50 ^ (2 * (v50 & STACK[0x27B0]))) & STACK[0x2838]) << STACK[0x2878]));
  v58 = (((v54 & STACK[0x27E0]) >> STACK[0x2810]) | ((v54 & STACK[0x27D8]) << STACK[0x2878])) ^ LODWORD(STACK[0x26F0]);
  v59 = (((v16 & STACK[0x27D0]) >> STACK[0x2880]) | ((v16 & STACK[0x2838]) << STACK[0x2818])) ^ LODWORD(STACK[0x2788]);
  LODWORD(STACK[0x22E0]) = v59;
  LODWORD(v28) = (((v56 & v53) >> v55) + ((v56 & v51) << v52)) ^ LODWORD(STACK[0x26E0]);
  v60 = LODWORD(STACK[0x2738]) ^ 0xB746467A;
  v61 = STACK[0x2790];
  v62 = STACK[0x2790];
  LODWORD(STACK[0x2790]) = STACK[0x2790];
  LODWORD(STACK[0x26D8]) = v57;
  v63 = -723547967 * (v57 ^ (v60 - (v61 ^ 0x45C1F58A) - 84095532 - ((2 * (v60 - (v61 ^ 0x45C1F58A))) & 0xF5F99BA8)));
  v64 = v63 - HIWORD(v63) - ((v63 - HIWORD(v63)) >> 8);
  LODWORD(STACK[0x26F0]) = v28 ^ 0x4E5AC920;
  v65 = (v64 - 84095532 - ((2 * v64) & 0xF5F99BA8)) ^ v28 ^ 0x4E5AC920;
  v66 = 2146092607 * v65 - ((2144701566 * v65) & 0x66323BD4) + 857284074;
  v67 = (v66 ^ HIWORD(v66) ^ 0x33192EF3) - (((v66 ^ HIWORD(v66)) >> 8) ^ 0x33192E) + (v58 ^ 0x2E773B78);
  v68 = 1006029713 * v67 - ((938317602 * v67) & 0x2F58F5B2) + 397179609;
  LODWORD(v24) = v59 ^ 0xBA6C2CC1;
  LODWORD(STACK[0x2258]) = v59 ^ 0xBA6C2CC1;
  v69 = 794685981 * ((v68 ^ HIWORD(v68) ^ 0xD9132667 ^ ((((v68 ^ HIWORD(v68)) >> 8) ^ 0x17AC6D) - ((2 * (((v68 ^ HIWORD(v68)) >> 8) ^ 0x17AC6D)) & 0x17E9624) - 826324206)) - (v59 ^ 0xBA6C2CC1));
  LODWORD(v46) = v69 - HIWORD(v69) + ((v69 - HIWORD(v69)) >> 8);
  LODWORD(STACK[0x2390]) = v46;
  v70 = v46 - 514823944;
  v71 = ((2 * (v70 - LODWORD(STACK[0x26D0]))) & 0xCB5F636A) + ((v70 - LODWORD(STACK[0x26D0])) ^ 0xE5AFB1B5);
  v72 = STACK[0x2678];
  v73 = STACK[0x2648];
  LODWORD(v28) = (LODWORD(STACK[0x2648]) ^ 0xB746467A) + (LODWORD(STACK[0x2678]) ^ 0xD9D97F9D) + (v28 ^ 0xB4A604F4);
  LODWORD(STACK[0x2248]) = -1084335117 * v28;
  LODWORD(STACK[0x2240]) = 2126297062 * v28;
  LODWORD(v28) = -1084335117 * v28 - ((2126297062 * v28) & 0xC1C5A624) + 1625477906;
  LODWORD(v28) = v28 ^ WORD1(v28) ^ 0x8B8E5739 ^ ((((v28 ^ WORD1(v28)) >> 8) ^ 0x60E2B3) - ((2 * (((v28 ^ WORD1(v28)) >> 8) ^ 0x60E2B3)) & 0xD9C992) - 345185079);
  LODWORD(v28) = 1382709021 * ((v28 - 84095532 - ((2 * v28) & 0xF5F99BA8)) ^ v57);
  LODWORD(v28) = 983704133 * (v28 + WORD1(v28) + v24 + ((v28 + WORD1(v28)) >> 8));
  LODWORD(v28) = v28 - WORD1(v28) + ((v28 - WORD1(v28)) >> 8);
  v58 ^= 0xD48BF6AC;
  LODWORD(STACK[0x26D0]) = v58;
  v74 = (v28 - 84095532 - ((2 * v28) & 0xF5F99BA8)) ^ v58;
  v75 = 24921811 * v74 - ((49843622 * v74) & 0x4D7DE96C) + 650048694;
  v76 = (((v75 ^ HIWORD(v75)) >> 8) ^ 0x26BED2) + (v75 ^ HIWORD(v75) ^ 0x26BED208);
  LODWORD(STACK[0x2308]) = v76;
  LODWORD(v28) = ((2 * v76) & 0x7FFE0CB2) + (v76 ^ 0x3FFF0659);
  v77 = v28;
  LODWORD(STACK[0x22B0]) = v28;
  v78 = v28 - v71 - 2134343658 + ((-1264670394 - 2 * (v28 - v71)) | 0x49D0568D);
  v79 = (v78 ^ 0xDB17D4B9) - v71;
  v80 = v79 - v71;
  v79 -= 441470539;
  v81 = (v79 & 1) == 0;
  v82 = v79;
  LODWORD(STACK[0x22A8]) = v79;
  v83 = STACK[0x2658];
  v84 = STACK[0x2708];
  if (v81)
  {
    v85 = STACK[0x2708];
  }

  else
  {
    v85 = STACK[0x2658];
  }

  LODWORD(STACK[0x22E8]) = v85;
  if (v81)
  {
    v86 = v83;
  }

  else
  {
    v86 = v72;
  }

  LODWORD(STACK[0x2298]) = v86;
  v87 = STACK[0x2630];
  if (v81)
  {
    v88 = STACK[0x2630];
  }

  else
  {
    v88 = v84;
  }

  LODWORD(STACK[0x22A0]) = v88;
  if (v81)
  {
    v89 = v72;
  }

  else
  {
    v89 = v87;
  }

  LODWORD(STACK[0x2708]) = v89;
  v90 = STACK[0x2618];
  if (v81)
  {
    v91 = STACK[0x25E8];
  }

  else
  {
    v91 = STACK[0x2618];
  }

  if (v81)
  {
    v92 = STACK[0x2628];
  }

  else
  {
    v90 = STACK[0x2610];
    v92 = STACK[0x25E8];
  }

  if (v81)
  {
    v93 = STACK[0x2610];
  }

  else
  {
    v93 = STACK[0x2628];
  }

  LODWORD(STACK[0x21C0]) = v70;
  v94 = 8 * v70 - ((16 * v70) & 0xCC4E30);
  LODWORD(STACK[0x22F8]) = v94;
  v95 = 8 * v70 - 204350990;
  LODWORD(STACK[0x2318]) = v95;
  v96 = 8 * v70 - ((16 * v70) & 0x548A2B70) + 709170600;
  LODWORD(STACK[0x2288]) = v96;
  v97 = (v95 ^ 0xD) + 1;
  v98 = v80 + 82;
  v99 = STACK[0x27A0];
  if (!v81)
  {
    v99 = STACK[0x2768];
  }

  LODWORD(STACK[0x2290]) = v99;
  if (v81)
  {
    v100 = v62;
  }

  else
  {
    v100 = STACK[0x2770];
  }

  LODWORD(STACK[0x2630]) = v100;
  v101 = STACK[0x26A0];
  v102 = STACK[0x2388];
  if ((v80 + 82))
  {
    v103 = STACK[0x26A0];
  }

  else
  {
    v103 = STACK[0x2388];
  }

  LODWORD(STACK[0x2328]) = v103;
  v104 = STACK[0x2748];
  v105 = STACK[0x2720];
  if (v98)
  {
    v106 = STACK[0x2748];
  }

  else
  {
    v106 = STACK[0x2720];
  }

  LODWORD(STACK[0x2330]) = v106;
  if ((v98 & 2) != 0)
  {
    v107 = v106;
  }

  else
  {
    v107 = v103;
  }

  v108 = v96 & 0x18;
  LODWORD(STACK[0x26E0]) = v96 & 0x18;
  v109 = v96 & 0x18 ^ 8;
  v110 = ((v107 ^ 0xE6CC3758) << (v108 ^ 8)) ^ 0xE6CC3758 ^ ((v107 ^ 0xE6CC3758) >> (v97 & 0x18));
  LODWORD(STACK[0x21A8]) = v107;
  if ((v97 & 0x18) == 0)
  {
    v110 = v107;
  }

  LODWORD(STACK[0x22D0]) = v110;
  v111 = (v82 & 2) == 0;
  if ((v82 & 2) != 0)
  {
    v112 = v92;
  }

  else
  {
    v112 = v90;
  }

  if ((v82 & 2) != 0)
  {
    v113 = v91;
  }

  else
  {
    v90 = v92;
    v113 = v93;
  }

  if ((v82 & 2) != 0)
  {
    v114 = v93;
  }

  else
  {
    v114 = v91;
  }

  v115 = 2140788967 - v94;
  if (v111)
  {
    v116 = v100;
  }

  else
  {
    v116 = v99;
  }

  if (v111)
  {
    v117 = v89;
  }

  else
  {
    v117 = v85;
  }

  if (v111)
  {
    v118 = v86;
  }

  else
  {
    v118 = v88;
  }

  v119 = v115 & 0x18;
  v120 = ((v90 ^ 0xD7877C69) >> (v97 & 0x18)) ^ 0xD7877C69 ^ ((v90 ^ 0xD7877C69) << (v115 & 0x18));
  LODWORD(STACK[0x2628]) = v90;
  if ((v97 & 0x18) == 0)
  {
    v120 = v90;
  }

  LODWORD(STACK[0x2380]) = v120;
  v121 = STACK[0x2640];
  v122 = STACK[0x25E0];
  if (v76)
  {
    v123 = STACK[0x2640];
  }

  else
  {
    v123 = STACK[0x25E0];
  }

  LODWORD(STACK[0x2270]) = v123;
  if ((v76 & 1) == 0)
  {
    v122 = v73;
  }

  v124 = STACK[0x2738];
  if (v76)
  {
    v125 = v73;
  }

  else
  {
    v125 = STACK[0x2738];
  }

  LODWORD(STACK[0x2278]) = v125;
  if ((v76 & 1) == 0)
  {
    v124 = v121;
  }

  v126 = v77 - 1;
  LODWORD(STACK[0x2260]) = v77 - 1;
  if (v76)
  {
    v127 = STACK[0x2730];
  }

  else
  {
    v127 = STACK[0x2750];
  }

  LODWORD(STACK[0x22B8]) = v127;
  if (v76)
  {
    v128 = STACK[0x2728];
  }

  else
  {
    v128 = STACK[0x2780];
  }

  LODWORD(STACK[0x22C8]) = v128;
  v129 = (v126 & 2) == 0;
  if ((v126 & 2) != 0)
  {
    v130 = v125;
  }

  else
  {
    v130 = v123;
  }

  if ((v126 & 2) != 0)
  {
    v132 = v124;
  }

  else
  {
    v132 = v122;
  }

  if (v129)
  {
    v133 = v124;
  }

  else
  {
    v133 = v122;
  }

  v131 = ((v130 ^ 0xB746467A) << v109) + ((v130 ^ 0xB746467A) >> (v97 & 0x18));
  v134 = v131 - 1220131206 - ((2 * v131) & 0x6E8C8CF4);
  if (!v129)
  {
    v128 = v127;
  }

  v135 = ((v133 ^ 0xB746467A) << v109) ^ ((v133 ^ 0xB746467A) >> (v97 & 0x18)) ^ 0xB746467A;
  v136 = ((v132 ^ 0xB746467A) << v119) ^ 0xB746467A ^ ((v132 ^ 0xB746467A) >> (v97 & 0x18));
  LODWORD(STACK[0x2640]) = v133;
  if ((v97 & 0x18) == 0)
  {
    v135 = v133;
  }

  LODWORD(STACK[0x2338]) = v135;
  LODWORD(STACK[0x2648]) = v132;
  if ((v97 & 0x18) == 0)
  {
    v136 = v132;
  }

  LODWORD(STACK[0x2340]) = v136;
  LODWORD(STACK[0x25E0]) = v130;
  if ((v97 & 0x18) == 0)
  {
    v134 = v130;
  }

  LODWORD(STACK[0x2348]) = v134;
  if (v98)
  {
    v137 = v105;
  }

  else
  {
    v137 = v101;
  }

  LODWORD(STACK[0x2738]) = v137;
  if (v98)
  {
    v138 = v102;
  }

  else
  {
    v138 = v104;
  }

  v139 = STACK[0x2718];
  v140 = STACK[0x2370];
  if (v98)
  {
    v141 = STACK[0x2718];
  }

  else
  {
    v141 = STACK[0x2370];
  }

  v142 = STACK[0x2668];
  v143 = STACK[0x2660];
  if (v98)
  {
    v144 = STACK[0x2668];
  }

  else
  {
    v144 = STACK[0x2660];
  }

  if ((v98 & 2) != 0)
  {
    v145 = v138;
  }

  else
  {
    v145 = v137;
  }

  if ((v98 & 2) != 0)
  {
    v146 = v144;
  }

  else
  {
    v146 = v141;
  }

  v147 = ((v118 ^ 0xD9D97F9D) >> (v97 & 0x18)) | ((v118 ^ 0xD9D97F9D) << v109);
  v148 = ((v117 ^ 0xD9D97F9D) >> (v97 & 0x18)) ^ 0xD9D97F9D ^ ((v117 ^ 0xD9D97F9D) << v119);
  v149 = v147 - 640057443 - ((2 * v147) & 0xB3B2FF3A);
  LODWORD(STACK[0x2678]) = v117;
  if ((v97 & 0x18) == 0)
  {
    v148 = v117;
  }

  LODWORD(STACK[0x2310]) = v148;
  LODWORD(STACK[0x21A0]) = v146;
  if ((v97 & 0x18) != 0)
  {
    v150 = ((v146 ^ 0xCD33192A) >> (v97 & 0x18)) ^ 0xCD33192A ^ ((v146 ^ 0xCD33192A) << v109);
  }

  else
  {
    v150 = v146;
  }

  LODWORD(STACK[0x2320]) = v150;
  v151 = ((v145 ^ 0xE6CC3758) << v119) + ((v145 ^ 0xE6CC3758) >> (v97 & 0x18));
  v152 = ((v128 ^ 0x2DC1D112) << v109) ^ ((v128 ^ 0x2DC1D112) >> (v97 & 0x18)) ^ 0x2DC1D112;
  v153 = v151 - 422824104 - ((2 * v151) & 0xCD986EB0);
  LODWORD(STACK[0x2198]) = v128;
  if ((v97 & 0x18) == 0)
  {
    v152 = v128;
  }

  LODWORD(STACK[0x22D8]) = v152;
  LODWORD(STACK[0x2658]) = v118;
  if ((v97 & 0x18) == 0)
  {
    v149 = v118;
  }

  LODWORD(STACK[0x2300]) = v149;
  v154 = v97 & 0x18;
  v155 = ((v116 ^ 0x45C1F58A) >> (v97 & 0x18)) ^ 0x45C1F58A ^ ((v116 ^ 0x45C1F58A) << v109);
  v156 = ((v112 ^ 0xD7877C69) >> (v97 & 0x18)) + ((v112 ^ 0xD7877C69) << v119);
  v157 = v156 - 678986647 - ((2 * v156) & 0xAF0EF8D2);
  v158 = ((v113 ^ 0xD7877C69) << v109) + ((v113 ^ 0xD7877C69) >> (v97 & 0x18));
  v159 = v158 - 678986647 - ((2 * v158) & 0xAF0EF8D2);
  LODWORD(STACK[0x21B0]) = v116;
  if ((v97 & 0x18) == 0)
  {
    v155 = v116;
  }

  LODWORD(STACK[0x2280]) = v155;
  LODWORD(STACK[0x26A0]) = v145;
  if ((v97 & 0x18) != 0)
  {
    v160 = v153;
  }

  else
  {
    v160 = v145;
  }

  LODWORD(STACK[0x22C0]) = v160;
  v161 = STACK[0x26E0];
  LODWORD(STACK[0x2610]) = v113;
  if (v161 == 8)
  {
    v162 = v113;
  }

  else
  {
    v162 = v159;
  }

  LODWORD(STACK[0x2368]) = v162;
  v163 = v115;
  LODWORD(STACK[0x2618]) = v112;
  if ((v115 & 0x18) != 0)
  {
    v164 = v157;
  }

  else
  {
    v164 = v112;
  }

  LODWORD(STACK[0x2388]) = v164;
  v165 = STACK[0x2650];
  v166 = STACK[0x2360];
  if (v78)
  {
    v167 = STACK[0x2360];
  }

  else
  {
    v167 = STACK[0x2650];
  }

  LODWORD(STACK[0x2230]) = v167;
  v168 = STACK[0x2758];
  v169 = STACK[0x2638];
  if (v78)
  {
    v170 = STACK[0x2638];
  }

  else
  {
    v170 = STACK[0x2758];
  }

  LODWORD(STACK[0x2238]) = v170;
  if ((v78 & 2) == 0)
  {
    v170 = v167;
  }

  v171 = v163 & 0x18;
  v81 = (v163 & 0x18) == 0;
  v172 = v163;
  v173 = ((v170 ^ 0xD8D339F6) << (v163 & 0x18)) ^ 0xD8D339F6 ^ ((v170 ^ 0xD8D339F6) >> v154);
  LODWORD(STACK[0x20D0]) = v170;
  if (!v81)
  {
    v170 = v173;
  }

  LODWORD(STACK[0x22F0]) = v170;
  if (v98)
  {
    v174 = v143;
  }

  else
  {
    v174 = v139;
  }

  if (v98)
  {
    v175 = v140;
  }

  else
  {
    v175 = v142;
  }

  if ((v98 & 2) != 0)
  {
    v177 = v141;
  }

  else
  {
    v177 = v144;
  }

  v176 = ((v114 ^ 0xD7877C69) >> v154) + ((v114 ^ 0xD7877C69) << v109);
  v178 = v176 - 678986647 - ((2 * v176) & 0xAF0EF8D2);
  LODWORD(STACK[0x25E8]) = v114;
  if (v161 == 8)
  {
    v178 = v114;
  }

  LODWORD(STACK[0x2370]) = v178;
  v179 = STACK[0x2670];
  v180 = STACK[0x2378];
  if (v78)
  {
    v181 = STACK[0x2378];
  }

  else
  {
    v181 = STACK[0x2670];
  }

  v182 = STACK[0x26A8];
  v183 = STACK[0x2700];
  if (v78)
  {
    v184 = STACK[0x26A8];
  }

  else
  {
    v184 = STACK[0x2700];
  }

  if ((v78 & 2) != 0)
  {
    v185 = v184;
  }

  else
  {
    v185 = v181;
  }

  v186 = STACK[0x2330];
  if ((v98 & 2) != 0)
  {
    v186 = STACK[0x2328];
  }

  LODWORD(STACK[0x2720]) = v186;
  v187 = STACK[0x2738];
  if ((v98 & 2) == 0)
  {
    v187 = v138;
  }

  LODWORD(STACK[0x2748]) = v187;
  if ((v98 & 2) != 0)
  {
    v188 = v174;
  }

  else
  {
    v188 = v175;
  }

  if ((v98 & 2) == 0)
  {
    v175 = v174;
  }

  LODWORD(STACK[0x2718]) = v175;
  v189 = (STACK[0x2308] & 1) == 0;
  v190 = STACK[0x26C0];
  v191 = STACK[0x26B8];
  if (STACK[0x2308])
  {
    v192 = STACK[0x26B8];
  }

  else
  {
    v192 = STACK[0x26C0];
  }

  v193 = STACK[0x26B0];
  if ((STACK[0x2308] & 1) == 0)
  {
    v190 = STACK[0x26B0];
  }

  LODWORD(STACK[0x2250]) = v190;
  v194 = STACK[0x26C8];
  if (!v189)
  {
    v191 = STACK[0x26C8];
  }

  LODWORD(STACK[0x26B8]) = v191;
  if (!v189)
  {
    v194 = v193;
  }

  v195 = STACK[0x2730];
  if (!v189)
  {
    v195 = STACK[0x2780];
  }

  LODWORD(STACK[0x2730]) = v195;
  v196 = STACK[0x2750];
  if (v189)
  {
    v196 = STACK[0x2728];
  }

  LODWORD(STACK[0x2750]) = v196;
  v197 = STACK[0x2260];
  if ((STACK[0x2260] & 2) != 0)
  {
    v198 = v194;
  }

  else
  {
    v198 = v192;
  }

  if ((v197 & 2) != 0)
  {
    v199 = v192;
  }

  else
  {
    v199 = v194;
  }

  if ((v197 & 2) != 0)
  {
    v200 = STACK[0x2270];
  }

  else
  {
    v200 = STACK[0x2278];
  }

  v201 = v97 & 0x18;
  LODWORD(STACK[0x2098]) = v185;
  if ((v97 & 0x18) != 0)
  {
    v185 = ((v185 ^ 0x2A99FC2F) >> (v97 & 0x18)) ^ 0x2A99FC2F ^ ((v185 ^ 0x2A99FC2F) << v171);
  }

  LODWORD(STACK[0x2268]) = v185;
  v202 = ((v200 ^ 0xB746467A) << (v172 & 0x18)) + ((v200 ^ 0xB746467A) >> v201);
  v203 = v202 - 1220131206 - ((2 * v202) & 0x6E8C8CF4);
  LODWORD(STACK[0x2668]) = v188;
  if ((v172 & 0x18) != 0)
  {
    v204 = ((v188 ^ 0xCD33192A) >> v201) ^ 0xCD33192A ^ ((v188 ^ 0xCD33192A) << (v172 & 0x18));
  }

  else
  {
    v204 = v188;
  }

  LODWORD(STACK[0x2328]) = v204;
  LODWORD(STACK[0x2660]) = v177;
  if ((v172 & 0x18) != 0)
  {
    v205 = ((v177 ^ 0xCD33192A) >> v201) ^ 0xCD33192A ^ ((v177 ^ 0xCD33192A) << (v172 & 0x18));
  }

  else
  {
    v205 = v177;
  }

  LODWORD(STACK[0x2308]) = v205;
  LODWORD(STACK[0x2738]) = v200;
  if ((v172 & 0x18) != 0)
  {
    v206 = v203;
  }

  else
  {
    v206 = v200;
  }

  LODWORD(STACK[0x2330]) = v206;
  v207 = STACK[0x27A0];
  if ((STACK[0x22A8] & 1) == 0)
  {
    v207 = STACK[0x2770];
  }

  v208 = STACK[0x2768];
  if (STACK[0x22A8])
  {
    v208 = STACK[0x2790];
  }

  v209 = (STACK[0x22A8] & 2) == 0;
  v210 = STACK[0x2630];
  if ((STACK[0x22A8] & 2) == 0)
  {
    v210 = STACK[0x2290];
  }

  LODWORD(STACK[0x27A0]) = v210;
  if (v209)
  {
    v211 = v207;
  }

  else
  {
    v211 = v208;
  }

  if (v209)
  {
    v212 = v208;
  }

  else
  {
    v212 = v207;
  }

  if (v209)
  {
    v213 = STACK[0x22A0];
  }

  else
  {
    v213 = STACK[0x2298];
  }

  v215 = STACK[0x2708];
  if (v209)
  {
    v215 = STACK[0x22E8];
  }

  LODWORD(STACK[0x2708]) = v215;
  v214 = ((v213 ^ 0xD9D97F9D) << (v172 & 0x18)) | ((v213 ^ 0xD9D97F9D) >> v201);
  v216 = v214 - 640057443 - ((2 * v214) & 0xB3B2FF3A);
  v217 = v172 & 0x18;
  LODWORD(STACK[0x2630]) = v213;
  if ((v172 & 0x18) != 0)
  {
    v218 = v216;
  }

  else
  {
    v218 = v213;
  }

  LODWORD(STACK[0x22E8]) = v218;
  if (v78)
  {
    v219 = v179;
  }

  else
  {
    v219 = v182;
  }

  if (v78)
  {
    v220 = v183;
  }

  else
  {
    v220 = v180;
  }

  if (v78)
  {
    v221 = v168;
  }

  else
  {
    v221 = v166;
  }

  if (v78)
  {
    v222 = v165;
  }

  else
  {
    v222 = v169;
  }

  v223 = STACK[0x2680];
  if (v78)
  {
    v224 = STACK[0x2740];
  }

  else
  {
    v224 = STACK[0x2680];
  }

  if (v78)
  {
    v225 = STACK[0x2798];
  }

  else
  {
    v223 = STACK[0x2760];
    v225 = STACK[0x2740];
  }

  if (v78)
  {
    v226 = STACK[0x2760];
  }

  else
  {
    v226 = STACK[0x2798];
  }

  v227 = LODWORD(STACK[0x22E0]) ^ 0x4090E115;
  LODWORD(STACK[0x21F8]) = v227;
  v228 = LODWORD(STACK[0x22B0]) - 893452289;
  LODWORD(STACK[0x2218]) = v228;
  v229 = v228 + LODWORD(STACK[0x26E8]);
  LODWORD(STACK[0x2780]) = v229;
  if ((v78 & 2) != 0)
  {
    v230 = v224;
  }

  else
  {
    v230 = v226;
  }

  LODWORD(STACK[0x2760]) = v230;
  v231 = (v229 & 1) == 0;
  v232 = v229 - 1;
  LODWORD(STACK[0x21E8]) = v229 - 1;
  if ((v229 & 1) == 0)
  {
    v227 = STACK[0x26D0];
  }

  LODWORD(STACK[0x21F0]) = v227;
  v233 = STACK[0x26F0];
  if (v231)
  {
    v233 = STACK[0x26D8];
  }

  LODWORD(STACK[0x2200]) = v233;
  if ((v232 & 2) != 0)
  {
    v233 = v227;
  }

  LODWORD(STACK[0x2220]) = v233;
  v234 = (v78 & 2) == 0;
  if ((v78 & 2) != 0)
  {
    v235 = v219;
  }

  else
  {
    v235 = v220;
  }

  LODWORD(STACK[0x2700]) = v235;
  if ((v78 & 2) != 0)
  {
    v236 = v220;
  }

  else
  {
    v236 = v219;
  }

  if ((v78 & 2) != 0)
  {
    v237 = v181;
  }

  else
  {
    v237 = v184;
  }

  if (v234)
  {
    v238 = STACK[0x2238];
  }

  else
  {
    v238 = STACK[0x2230];
  }

  if (v234)
  {
    v239 = v222;
  }

  else
  {
    v239 = v221;
  }

  if (v234)
  {
    v240 = v221;
  }

  else
  {
    v240 = v222;
  }

  LODWORD(STACK[0x2758]) = v240;
  if (v234)
  {
    v241 = v224;
  }

  else
  {
    v241 = v226;
  }

  LODWORD(STACK[0x2740]) = v241;
  if (v234)
  {
    v243 = v223;
  }

  else
  {
    v243 = v225;
  }

  if (v234)
  {
    v244 = v225;
  }

  else
  {
    v244 = v223;
  }

  LODWORD(STACK[0x2798]) = v244;
  v242 = ((v236 ^ 0x2A99FC2Fu) >> v201) + ((v236 ^ 0x2A99FC2F) << v217);
  v245 = v242 + 714734639 - ((2 * v242) & 0x5533F85E);
  LODWORD(STACK[0x2350]) = v97;
  v246 = ((v199 ^ 0x84A0796C) << v217) + ((v199 ^ 0x84A0796C) >> (v97 & 0x18));
  v247 = ((v198 ^ 0x84A0796C) << v109) ^ ((v198 ^ 0x84A0796C) >> (v97 & 0x18)) ^ 0x84A0796C;
  v248 = v246 - 2069857940 - ((2 * v246) & 0x940F2D8);
  LODWORD(STACK[0x26C0]) = v198;
  if ((v97 & 0x18) == 0)
  {
    v247 = v198;
  }

  LODWORD(STACK[0x2210]) = v247;
  LODWORD(STACK[0x2670]) = v236;
  if ((v97 & 0x18) == 0)
  {
    v245 = v236;
  }

  LODWORD(STACK[0x2230]) = v245;
  v249 = v97 & 0x18;
  LODWORD(STACK[0x26C8]) = v199;
  if ((v97 & 0x18) != 0)
  {
    v250 = v248;
  }

  else
  {
    v250 = v199;
  }

  LODWORD(STACK[0x2208]) = v250;
  v251 = (v197 & 2) == 0;
  if ((v197 & 2) != 0)
  {
    v252 = STACK[0x2250];
  }

  else
  {
    v252 = STACK[0x26B8];
  }

  if ((v197 & 2) != 0)
  {
    v253 = STACK[0x26B8];
  }

  else
  {
    v253 = STACK[0x2250];
  }

  if (v251)
  {
    v254 = STACK[0x22B8];
  }

  else
  {
    v254 = STACK[0x22C8];
  }

  if (v251)
  {
    v256 = STACK[0x2730];
  }

  else
  {
    v256 = STACK[0x2750];
  }

  if (v251)
  {
    v257 = STACK[0x2750];
  }

  else
  {
    v257 = STACK[0x2730];
  }

  v255 = ((v239 ^ 0xD8D339F6) << v217) + ((v239 ^ 0xD8D339F6) >> v249);
  v258 = v255 - 657245706 - ((2 * v255) & 0xB1A673EC);
  v259 = ((v257 ^ 0x2DC1D112) << (v172 & 0x18)) | ((v257 ^ 0x2DC1D112u) >> v249);
  v260 = v259 + 767676690 - ((2 * v259) & 0x5B83A224);
  LODWORD(STACK[0x2650]) = v239;
  if ((v172 & 0x18) == 0)
  {
    v258 = v239;
  }

  LODWORD(STACK[0x22C8]) = v258;
  v261 = STACK[0x2748];
  v262 = ((v261 ^ 0xE6CC3758) >> v249) + ((v261 ^ 0xE6CC3758) << (v172 & 0x18));
  v263 = ((v254 ^ 0x2DC1D112) << (v172 & 0x18)) ^ 0x2DC1D112 ^ ((v254 ^ 0x2DC1D112) >> v249);
  v264 = v262 - 422824104 - ((2 * v262) & 0xCD986EB0);
  LODWORD(STACK[0x2750]) = v254;
  if ((v172 & 0x18) == 0)
  {
    v263 = v254;
  }

  LODWORD(STACK[0x22A8]) = v263;
  LODWORD(STACK[0x2728]) = v257;
  if ((v172 & 0x18) != 0)
  {
    v265 = v260;
  }

  else
  {
    v265 = v257;
  }

  LODWORD(STACK[0x22B0]) = v265;
  v266 = ((v212 ^ 0x45C1F58A) >> v249) | ((v212 ^ 0x45C1F58A) << (v172 & 0x18));
  v267 = v266 + 1170339210 - ((2 * v266) & 0x8B83EB14);
  if ((v172 & 0x18) != 0)
  {
    v268 = v264;
  }

  else
  {
    v268 = v261;
  }

  LODWORD(STACK[0x2290]) = v268;
  LODWORD(STACK[0x2358]) = v172;
  v269 = v97 & 0x18;
  v270 = ((v211 ^ 0x45C1F58A) << (v172 & 0x18)) ^ 0x45C1F58A ^ ((v211 ^ 0x45C1F58A) >> v249);
  LODWORD(STACK[0x2770]) = v211;
  if ((v172 & 0x18) == 0)
  {
    v270 = v211;
  }

  LODWORD(STACK[0x2260]) = v270;
  LODWORD(STACK[0x2768]) = v212;
  if ((v172 & 0x18) == 0)
  {
    v267 = v212;
  }

  LODWORD(STACK[0x2270]) = v267;
  v271 = STACK[0x26E0];
  LODWORD(STACK[0x26A8]) = v237;
  if (v271 == 8)
  {
    v272 = v237;
  }

  else
  {
    v272 = ((v237 ^ 0x2A99FC2F) >> v249) ^ 0x2A99FC2F ^ ((v237 ^ 0x2A99FC2F) << v109);
  }

  LODWORD(STACK[0x2228]) = v272;
  LODWORD(STACK[0x2790]) = v172 & 0x18;
  v273 = ((v252 ^ 0x84A0796C) << (v172 & 0x18)) ^ 0x84A0796C ^ ((v252 ^ 0x84A0796C) >> v249);
  v274 = STACK[0x2718];
  v275 = ((v274 ^ 0xCD33192A) >> v249) | ((v274 ^ 0xCD33192A) << v109);
  v276 = v275 - 852289238 - ((2 * v275) & 0x9A663254);
  v277 = STACK[0x2318] & 0x18;
  LODWORD(STACK[0x21D8]) = v277;
  v278 = LODWORD(STACK[0x22F8]) - 2140788960;
  LODWORD(STACK[0x21D0]) = v278;
  LODWORD(STACK[0x26B8]) = v252;
  if ((v172 & 0x18) == 0)
  {
    v273 = v252;
  }

  LODWORD(STACK[0x21E0]) = v273;
  v279 = v277 ^ 0x10;
  v280 = v278 & 0x18;
  v281 = ((v243 ^ 0x8FF8F710) << (v277 ^ 0x10)) ^ 0x8FF8F710 ^ ((v243 ^ 0x8FF8F710) >> (v278 & 0x18));
  v282 = STACK[0x2708];
  v283 = ((v282 ^ 0xD9D97F9D) << v109) | ((v282 ^ 0xD9D97F9D) >> v249);
  v284 = v283 - 640057443 - ((2 * v283) & 0xB3B2FF3A);
  v285 = ((v238 ^ 0xD8D339F6) << v109) + ((v238 ^ 0xD8D339F6) >> v249);
  v286 = v285 - 657245706 - ((2 * v285) & 0xB1A673EC);
  v287 = STACK[0x2758];
  v288 = ((v287 ^ 0xD8D339F6) >> v269) + ((v287 ^ 0xD8D339F6) << v109);
  v289 = v288 - 657245706 - ((2 * v288) & 0xB1A673EC);
  v290 = ((v256 ^ 0x2DC1D112) << v109) | ((v256 ^ 0x2DC1D112u) >> v269);
  v291 = v290 + 767676690 - ((2 * v290) & 0x5B83A224);
  v292 = STACK[0x2700];
  v293 = ((v292 ^ 0x2A99FC2Fu) >> v269) + ((v292 ^ 0x2A99FC2F) << v109);
  v294 = STACK[0x27A0];
  v295 = STACK[0x2720];
  LODWORD(STACK[0x2788]) = v109;
  v296 = ((v295 ^ 0xE6CC3758) >> v269) ^ 0xE6CC3758 ^ ((v295 ^ 0xE6CC3758) << v109);
  v297 = v293 + 714734639 - ((2 * v293) & 0x5533F85E);
  LODWORD(STACK[0x2680]) = v243;
  if ((v278 & 0x18) == 0)
  {
    v281 = v243;
  }

  LODWORD(STACK[0x2318]) = v281;
  if (v271 == 8)
  {
    v298 = v274;
  }

  else
  {
    v298 = v276;
  }

  LODWORD(STACK[0x22F8]) = v298;
  if (v271 == 8)
  {
    v299 = v282;
  }

  else
  {
    v299 = v284;
  }

  LODWORD(STACK[0x22E0]) = v299;
  LODWORD(STACK[0x2638]) = v238;
  if (v271 == 8)
  {
    v300 = v238;
  }

  else
  {
    v300 = v286;
  }

  LODWORD(STACK[0x22B8]) = v300;
  if (v271 == 8)
  {
    v301 = v287;
  }

  else
  {
    v301 = v289;
  }

  LODWORD(STACK[0x22A0]) = v301;
  if (v271 == 8)
  {
    v302 = v294;
  }

  else
  {
    v302 = ((v294 ^ 0x45C1F58A) >> v269) ^ 0x45C1F58A ^ ((v294 ^ 0x45C1F58A) << v109);
  }

  LODWORD(STACK[0x2238]) = v302;
  if (v271 == 8)
  {
    v296 = v295;
  }

  LODWORD(STACK[0x2278]) = v296;
  LODWORD(STACK[0x2730]) = v256;
  if (v271 == 8)
  {
    v303 = v256;
  }

  else
  {
    v303 = v291;
  }

  LODWORD(STACK[0x2298]) = v303;
  v304 = v269;
  v305 = (LODWORD(STACK[0x2288]) ^ 0x17) + 1;
  LODWORD(STACK[0x26B0]) = v253;
  if (v271 == 8)
  {
    v306 = v253;
  }

  else
  {
    v306 = ((v253 ^ 0x84A0796C) << v109) ^ ((v253 ^ 0x84A0796C) >> v269) ^ 0x84A0796C;
  }

  if (v271 == 8)
  {
    v307 = v292;
  }

  else
  {
    v307 = v297;
  }

  v308 = STACK[0x2740];
  v309 = ((v308 ^ 0x8FF8F710) << v279) | ((v308 ^ 0x8FF8F710) >> (v305 & 0x18));
  v310 = v279;
  v311 = v309 - 1879509232 - ((2 * v309) & 0x1FF1EE20);
  if ((v305 & 0x18) != 0)
  {
    v312 = ((LODWORD(STACK[0x2760]) ^ 0x8FF8F710) >> (v305 & 0x18)) ^ 0x8FF8F710 ^ ((LODWORD(STACK[0x2760]) ^ 0x8FF8F710) << v279);
  }

  else
  {
    v312 = STACK[0x2760];
  }

  LODWORD(STACK[0x2378]) = v312;
  if ((v305 & 0x18) == 0)
  {
    v311 = v308;
  }

  LODWORD(STACK[0x2360]) = v311;
  v313 = STACK[0x2780];
  v314 = STACK[0x26D8];
  v315 = STACK[0x21F8];
  if (STACK[0x2780])
  {
    v315 = STACK[0x26D8];
  }

  v316 = STACK[0x26D0];
  if (v313)
  {
    v317 = STACK[0x26D0];
  }

  else
  {
    v317 = STACK[0x26F0];
  }

  v318 = STACK[0x21F0];
  if ((STACK[0x21E8] & 2) != 0)
  {
    v318 = STACK[0x2200];
    v319 = v317;
  }

  else
  {
    v319 = v315;
  }

  if ((STACK[0x21E8] & 2) != 0)
  {
    v321 = v315;
  }

  else
  {
    v321 = v317;
  }

  LODWORD(STACK[0x26E0]) = v305 & 0x18;
  if ((v305 & 0x18) != 0)
  {
    v320 = ((v319 ^ 0xFAFCCDD4) >> (v305 & 0x18)) + ((v319 ^ 0xFAFCCDD4) << v310);
    v319 = v320 - 84095532 - ((2 * v320) & 0xF5F99BA8);
  }

  v322 = ((v318 ^ 0xFAFCCDD4) >> v280) | ((v318 ^ 0xFAFCCDD4) << v310);
  v323 = v322 - 84095532 - ((2 * v322) & 0xF5F99BA8);
  v324 = STACK[0x21D0];
  v325 = STACK[0x21D0] & 0x18;
  if (!v325)
  {
    v323 = v318;
  }

  v326 = LODWORD(STACK[0x2248]) - (STACK[0x2240] & 0xCC528AE0) - 433502864;
  v327 = v326 ^ HIWORD(v326) ^ 0x3C886A4F ^ ((((v326 ^ HIWORD(v326)) >> 8) ^ 0xE629A3) - 2 * ((((v326 ^ HIWORD(v326)) >> 8) ^ 0xE629A3) & 0xA1C91E ^ ((v326 ^ HIWORD(v326)) >> 8) & 8) - 626931434);
  v328 = 1382709021 * ((v327 - 84095532 - ((2 * v327) & 0xF5F99BA8)) ^ v314);
  v329 = 983704133 * (v328 + HIWORD(v328) + LODWORD(STACK[0x2258]) + ((v328 + HIWORD(v328)) >> 8)) - ((983704133 * (v328 + HIWORD(v328) + LODWORD(STACK[0x2258]) + ((v328 + HIWORD(v328)) >> 8))) >> 16);
  v330 = (v329 + (v329 >> 8) - 84095532 - ((2 * (v329 + (v329 >> 8))) & 0xF5F99BA8)) ^ v316;
  v331 = (~(49843622 * v330) | 0x598B436F) + 24921811 * v330 + 1396334153;
  v332 = (v331 ^ HIWORD(v331) ^ 0x533A0D72) + LODWORD(STACK[0x26F8]) + (((v331 ^ HIWORD(v331)) >> 8) ^ 0x533A0D);
  LODWORD(STACK[0x26F8]) = v332;
  LODWORD(STACK[0x26F0]) = LODWORD(STACK[0x2218]) + LODWORD(STACK[0x25D8]);
  v333 = ((v321 ^ 0xFAFCCDD4) << v310) ^ 0xFAFCCDD4 ^ ((v321 ^ 0xFAFCCDD4) >> (v305 & 0x18));
  v334 = STACK[0x2220];
  v335 = v324 & 0x18;
  LODWORD(STACK[0x2288]) = v325;
  v336 = v310;
  v337 = ((v334 ^ 0xFAFCCDD4) >> (v324 & 0x18)) | ((v334 ^ 0xFAFCCDD4) << v310);
  v338 = v337 - 84095532 - ((2 * v337) & 0xF5F99BA8);
  v339 = LODWORD(STACK[0x21D8]) == 16;
  if (LODWORD(STACK[0x21D8]) == 16)
  {
    v333 = v321;
    v338 = v334;
  }

  v340 = LODWORD(STACK[0x2028]) ^ LODWORD(STACK[0x21E0]) ^ v333;
  v341 = LODWORD(STACK[0x2020]) ^ v306 ^ v319;
  v342 = LODWORD(STACK[0x2018]) ^ LODWORD(STACK[0x2208]) ^ v338;
  v343 = LODWORD(STACK[0x2010]) ^ LODWORD(STACK[0x2210]) ^ v323;
  v344 = *(&STACK[0x10ED0] + ((LOBYTE(STACK[0x2028]) ^ LOBYTE(STACK[0x21E0]) ^ v333) ^ 0x3Eu));
  HIDWORD(v346) = v344 ^ 0x32FF;
  LODWORD(v346) = v344 ^ 0x1E440000;
  v345 = v346 >> 16;
  v347 = *(&STACK[0x10ED0] + (v343 ^ 0x3Eu));
  HIDWORD(v346) = v347 ^ 0x32FF;
  LODWORD(v346) = v347 ^ 0x1E440000;
  v348 = v346 >> 16;
  v349 = (v340 ^ 0x6B27DB3Eu) - ((2 * (v340 ^ 0x6B27DB3Eu)) & 0x528AF20A) + 0x3910DDEF29457905;
  v350 = *(&STACK[0x10ED0] + ((4 * (v349 >> 24)) ^ 0xE44377BCA4));
  HIDWORD(v346) = v350 ^ 0x4432FF;
  LODWORD(v346) = v350 ^ 0x1E000000;
  v351 = v346 >> 24;
  v352 = STACK[0x2698];
  v353 = *(&STACK[0x10ED0] + ((*(STACK[0x2698] + (((v341 >> 6) & 0xFC | (v341 >> 14)) ^ 0x23)) ^ 0x22) - 73));
  HIDWORD(v346) = ~v353;
  LODWORD(v346) = v353 ^ 0x1E443200;
  v354 = (v342 ^ 0x6B27DB3E) - ((2 * (v342 ^ 0x6B27DB3E)) & 0x9E4030D6) - 0x4F4F1F65B0DFE795;
  v355 = v351 ^ *(&STACK[0x10ED0] + (BYTE2(v354) ^ 0x20)) ^ (v348 + 507785983 - ((2 * v348) & 0x3C8865FE)) ^ (v346 >> 8);
  v356 = (v343 ^ 0x6B27DB3Eu) - ((2 * (v343 ^ 0x6B27DB3Eu)) & 0xCE0C063ALL) + 0x730C86ED6706031DLL;
  v357 = *(&STACK[0x10ED0] + (BYTE1(v356) ^ 3));
  HIDWORD(v346) = ~v357;
  LODWORD(v346) = v357 ^ 0x1E443200;
  v358 = (v345 + 507785983 - ((2 * v345) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v341) ^ 0x27u)) ^ (v346 >> 8);
  v359 = *(&STACK[0x10ED0] + ((4 * (v354 >> 24)) ^ 0x2C2C382693CLL));
  HIDWORD(v346) = v359 ^ 0x4432FF;
  LODWORD(v346) = v359 ^ 0x1E000000;
  LODWORD(STACK[0x2250]) = v336;
  v360 = (v358 ^ (v346 >> 24)) - v336 + LODWORD(STACK[0x2790]);
  v361 = LODWORD(STACK[0x2008]) ^ LODWORD(STACK[0x2228]) ^ (v360 + 714734639 - ((2 * v360) & 0x5533F85E));
  LODWORD(STACK[0x25D8]) = v313 + 28990614;
  v362 = v313;
  v363 = v313 + 28990614 + v355 - v332;
  v364 = v304;
  LODWORD(STACK[0x26E8]) = v304;
  v365 = LODWORD(STACK[0x2000]) ^ LODWORD(STACK[0x2230]) ^ (v363 - v304 + v335 + 714734639 - ((2 * (v363 - v304 + v335)) & 0x5533F85E));
  v366 = ((2 * v365) & 0x997DFAFE ^ 0x874DA0C) + (v365 ^ 0x59C592F9);
  LODWORD(STACK[0x26D8]) = v366;
  v367 = *(&STACK[0x10ED0] + (v342 ^ 0x3Eu));
  HIDWORD(v346) = v367 ^ 0x32FF;
  LODWORD(v346) = v367 ^ 0x1E440000;
  v368 = v346 >> 16;
  v369 = *(&STACK[0x10ED0] + ((*(v352 + (((v341 >> 22) & 0xFC | (v341 >> 30)) ^ 0xE1)) ^ 0x22) - 73));
  HIDWORD(v346) = v369 ^ 0x4432FF;
  LODWORD(v346) = v369 ^ 0x1E000000;
  v370 = (v346 >> 24) ^ v368;
  v371 = *(&STACK[0x10ED0] + (BYTE1(v349) ^ 0x79));
  HIDWORD(v346) = ~v371;
  LODWORD(v346) = v371 ^ 0x1E443200;
  v372 = (v346 >> 8) ^ *(&STACK[0x10ED0] + (BYTE2(v356) ^ 6)) ^ (v370 + 507785983 - ((2 * v370) & 0x3C8865FE));
  LODWORD(v349) = LODWORD(STACK[0x1FF8]) ^ v307 ^ (v372 + 714734639 - ((2 * v372) & 0x5533F85E));
  v373 = (v349 ^ 0x157B6F86) - ((2 * (v349 ^ 0x157B6F86)) & 0x30A3F8E6) + 0x77E1B5BD1851FC73;
  v374 = *(&STACK[0x10ED0] + ((4 * (v373 >> 24)) ^ 0x1DF86D6F460));
  HIDWORD(v346) = v374 ^ 0x4432FF;
  LODWORD(v346) = v374 ^ 0x1E000000;
  v375 = v346 >> 24;
  v376 = *(&STACK[0x10ED0] + (v361 ^ 0x86u));
  HIDWORD(v346) = v376 ^ 0x32FF;
  LODWORD(v346) = v376 ^ 0x1E440000;
  v377 = v346 >> 16;
  v378 = v366 - 1287585151 - ((2 * (v366 - 1287585151)) & 0xD6F5E812) - 0x1DCBF95F94850BF7;
  v379 = *(&STACK[0x10ED0] + (BYTE1(v378) ^ 0xF4));
  HIDWORD(v346) = ~v379;
  LODWORD(v346) = v379 ^ 0x1E443200;
  v380 = v346 >> 8;
  v381 = *(&STACK[0x10ED0] + ((*(v352 + (((v342 >> 6) & 0xFC | (v342 >> 14)) ^ 0x23)) ^ 0x22) - 73));
  HIDWORD(v346) = ~v381;
  LODWORD(v346) = v381 ^ 0x1E443200;
  v382 = v346 >> 8;
  LODWORD(v354) = *(&STACK[0x10ED0] + (v341 ^ 0x3Eu));
  HIDWORD(v346) = v354 ^ 0x32FF;
  LODWORD(v346) = v354 ^ 0x1E440000;
  LODWORD(v356) = *(&STACK[0x10ED0] + ((4 * (v356 >> 24)) ^ 0x1CC321BB59CLL));
  LODWORD(v354) = (v346 >> 16) + 507785983 - ((2 * (v346 >> 16)) & 0x3C8865FE);
  HIDWORD(v346) = v356 ^ 0x4432FF;
  LODWORD(v346) = v356 ^ 0x1E000000;
  v383 = STACK[0x2858];
  v384 = v382 ^ *(&STACK[0x10ED0] + (*(STACK[0x2858] + (((BYTE2(v340) ^ 0x27) + 71) ^ 0x39)) ^ 0x79)) ^ (v346 >> 24) ^ v354;
  v385 = LODWORD(STACK[0x26F0]) - 209216238;
  LODWORD(STACK[0x26D0]) = v385;
  v386 = LODWORD(STACK[0x1FF0]) ^ v336 ^ v364 ^ LODWORD(STACK[0x2788]) ^ LODWORD(STACK[0x26E0]) ^ LODWORD(STACK[0x2268]) ^ (v385 + v384 - v362 + 714734639 - ((2 * (v385 + v384 - v362)) & 0x5533F85E));
  v387 = (v386 ^ 0x157B6F86u) - ((2 * (v386 ^ 0x157B6F86u)) & 0x1AD706FB8) + 0x238D286AD6B837DCLL;
  v388 = v377 ^ v375 ^ *(&STACK[0x10ED0] + (BYTE2(v387) ^ 0xB8)) ^ (v380 + 507785983 - ((2 * v380) & 0x3C8865FE));
  v389 = LODWORD(STACK[0x1FE8]) ^ LODWORD(STACK[0x2280]) ^ (v388 + 1170339210 - ((2 * v388) & 0x8B83EB14));
  v390 = *(&STACK[0x10ED0] + ((4 * (v378 >> 24)) ^ 0x388D01A81ACLL));
  HIDWORD(v346) = v390 ^ 0x4432FF;
  LODWORD(v346) = v390 ^ 0x1E000000;
  v391 = v346 >> 24;
  v392 = *(&STACK[0x10ED0] + (v386 ^ 0x86u));
  HIDWORD(v346) = v392 ^ 0x32FF;
  LODWORD(v346) = v392 ^ 0x1E440000;
  v393 = v346 >> 16;
  LODWORD(v354) = *(&STACK[0x10ED0] + (BYTE1(v373) ^ 0xFCLL));
  HIDWORD(v346) = ~v354;
  LODWORD(v346) = v354 ^ 0x1E443200;
  v394 = (v361 ^ 0x157B6F86u) - ((2 * (v361 ^ 0x157B6F86u)) & 0x19502CCB6) - 0x2592EE62357E99A5;
  v395 = ((v393 ^ (v346 >> 8) ^ v391) + 507785983 - ((2 * (v393 ^ (v346 >> 8) ^ v391)) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v394) ^ 0x81));
  v396 = LODWORD(STACK[0x1FE0]) ^ LODWORD(STACK[0x2238]) ^ (v395 + 1170339210 - ((2 * v395) & 0x8B83EB14));
  v397 = *(&STACK[0x10ED0] + ((LODWORD(STACK[0x1FE0]) ^ LOBYTE(STACK[0x2238]) ^ (v395 - 118 - ((2 * v395) & 0x14))) ^ 0x86u));
  HIDWORD(v346) = v397 ^ 0x32FF;
  LODWORD(v346) = v397 ^ 0x1E440000;
  v398 = v346 >> 16;
  HIDWORD(v346) = *(STACK[0x2860] + (((BYTE1(v361) ^ 0x6F) - 34) ^ 0x5DLL));
  LODWORD(v346) = (HIDWORD(v346) ^ 0xFFFFFF9F) << 24;
  v399 = v346 >> 28;
  HIDWORD(v346) = ~v399;
  LODWORD(v346) = (v399 ^ 0x40) << 24;
  v400 = *(&STACK[0x10ED0] + (v346 >> 26));
  HIDWORD(v346) = ~v400;
  LODWORD(v346) = v400 ^ 0x1E443200;
  v401 = v346 >> 8;
  v402 = *(&STACK[0x10ED0] + (v349 ^ 0x86u));
  HIDWORD(v346) = v402 ^ 0x32FF;
  LODWORD(v346) = v402 ^ 0x1E440000;
  v403 = v346 >> 16;
  LODWORD(v354) = *(&STACK[0x10ED0] + ((4 * (v387 >> 24)) ^ 0x8E34A1AB58));
  HIDWORD(v346) = v354 ^ 0x4432FF;
  LODWORD(v346) = v354 ^ 0x1E000000;
  v404 = v401 ^ *(&STACK[0x10ED0] + (BYTE2(v378) ^ 0x7ALL)) ^ (((v346 >> 24) ^ v403) + 507785983 - ((2 * ((v346 >> 24) ^ v403)) & 0x3C8865FE));
  v405 = LODWORD(STACK[0x1FD8]) ^ LODWORD(STACK[0x2260]) ^ (v404 + 1170339210 - ((2 * v404) & 0x8B83EB14));
  v406 = (v405 ^ 0x157B6F86) - ((2 * (v405 ^ 0x157B6F86)) & 0x123D2A36CLL) + 0x1129C74D91E951B6;
  v407 = *(&STACK[0x10ED0] + (BYTE1(v406) ^ 0x51));
  HIDWORD(v346) = ~v407;
  LODWORD(v346) = v407 ^ 0x1E443200;
  LODWORD(v354) = *(&STACK[0x10ED0] + ((4 * (v394 >> 24)) ^ 0x369B4467728));
  v408 = (v346 >> 8) ^ v398;
  HIDWORD(v346) = v354 ^ 0x4432FF;
  LODWORD(v346) = v354 ^ 0x1E000000;
  LODWORD(v354) = v346 >> 24;
  v409 = *(&STACK[0x10ED0] + (*(v383 + ((LODWORD(STACK[0x26D8]) - 56) ^ 0x39)) ^ 0x79));
  HIDWORD(v346) = v409 ^ 0x32FF;
  LODWORD(v346) = v409 ^ 0x1E440000;
  v410 = v346 >> 16;
  LODWORD(v387) = *(&STACK[0x10ED0] + (BYTE1(v387) ^ 0x37));
  HIDWORD(v346) = ~v387;
  LODWORD(v346) = v387 ^ 0x1E443200;
  LODWORD(v394) = *(&STACK[0x10ED0] + (BYTE2(v373) ^ 0x51));
  LODWORD(STACK[0x26D8]) = 507785984;
  v411 = v410 ^ v394 ^ (v354 + 507785984 + ~((2 * v354) & 0x3C8865FE)) ^ (v346 >> 8);
  LODWORD(v394) = LODWORD(STACK[0x1FD0]) ^ LODWORD(STACK[0x2270]) ^ (v411 + 1170339210 - ((2 * v411) & 0x8B83EB14));
  v412 = (v394 ^ 0x157B6F86) - ((2 * (v394 ^ 0x157B6F86)) & 0xCD42F3C) - 0x285B973AF995E862;
  v413 = *(&STACK[0x10ED0] + ((4 * (v412 >> 24)) ^ 0x35E91A31418));
  HIDWORD(v346) = v413 ^ 0x4432FF;
  LODWORD(v346) = v413 ^ 0x1E000000;
  v414 = (v389 ^ 0x157B6F86) - ((2 * (v389 ^ 0x157B6F86)) & 0x108C1424ALL) + 0x3AEC6F28460A125;
  v415 = (v408 + 507785983 - ((2 * v408) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v414) ^ 0x60)) ^ (v346 >> 24);
  v416 = (v396 ^ 0x157B6F86) - ((2 * (v396 ^ 0x157B6F86)) & 0x732F34F6) - 0x4A966EA2C6686585;
  v417 = *(&STACK[0x10ED0] + (BYTE1(v416) ^ 0x9ALL));
  HIDWORD(v346) = ~v417;
  LODWORD(v346) = v417 ^ 0x1E443200;
  v418 = v346 >> 8;
  v419 = *(&STACK[0x10ED0] + (v394 ^ 0x86u));
  HIDWORD(v346) = v419 ^ 0x32FF;
  LODWORD(v346) = v419 ^ 0x1E440000;
  v420 = *(&STACK[0x10ED0] + ((4 * (v414 >> 24)) ^ 0xEBB1BCA10));
  v421 = (v346 >> 16) + 507785983 - ((2 * (v346 >> 16)) & 0x3C8865FE);
  HIDWORD(v346) = v420 ^ 0x4432FF;
  LODWORD(v346) = v420 ^ 0x1E000000;
  v422 = v418 ^ *(&STACK[0x10ED0] + ((*(v352 + (((v405 >> 14) & 0xFC | (v405 >> 22) & 3) ^ 0xA1)) ^ 0x22) - 73)) ^ (v346 >> 24) ^ v421;
  LODWORD(v394) = LODWORD(STACK[0x1FC0]) ^ LODWORD(STACK[0x2290]) ^ (v422 - 422824104 - ((2 * v422) & 0xCD986EB0));
  v423 = *(&STACK[0x10ED0] + ((LODWORD(STACK[0x1FC0]) ^ LOBYTE(STACK[0x2290]) ^ (v422 + 88 - ((2 * v422) & 0xB0))) ^ 0x86u));
  HIDWORD(v346) = v423 ^ 0x32FF;
  LODWORD(v346) = v423 ^ 0x1E440000;
  v424 = v346 >> 16;
  v425 = *(&STACK[0x10ED0] + (BYTE1(v412) ^ 0x17));
  HIDWORD(v346) = ~v425;
  LODWORD(v346) = v425 ^ 0x1E443200;
  v426 = v346 >> 8;
  v427 = *(&STACK[0x10ED0] + (v389 ^ 0x86u));
  v428 = LODWORD(STACK[0x1FC8]) ^ LODWORD(STACK[0x2278]) ^ (v415 - 422824104 - ((2 * v415) & 0xCD986EB0));
  HIDWORD(v346) = v427 ^ 0x32FF;
  LODWORD(v346) = v427 ^ 0x1E440000;
  v429 = v346 >> 16;
  v430 = (v396 >> 14) & 0xFC | (v396 >> 22) & 3;
  v431 = *(&STACK[0x10ED0] + ((4 * (v406 >> 24)) ^ 0x44A71D3644));
  HIDWORD(v346) = v431 ^ 0x4432FF;
  LODWORD(v346) = v431 ^ 0x1E000000;
  v432 = *(&STACK[0x10ED0] + ((*(v352 + (v430 ^ 0xA1)) ^ 0x22) - 73)) ^ v426 ^ (v429 + 507785983 - ((2 * v429) & 0x3C8865FE)) ^ (v346 >> 24);
  v433 = LODWORD(STACK[0x1FB8]) ^ LODWORD(STACK[0x22D0]) ^ (v432 - 422824104 - ((2 * v432) & 0xCD986EB0));
  v434 = (v433 ^ 0x157B6F86) + 0x3AF749C39D23C6FLL + (~(2 * (v433 ^ 0x157B6F86)) | 0xFFFFFFFF8C5B8723);
  v435 = *(&STACK[0x10ED0] + ((v434 >> 22) & 0xEBDD27FFCLL ^ 0xEBDD270E4));
  HIDWORD(v346) = v435 ^ 0x4432FF;
  LODWORD(v346) = v435 ^ 0x1E000000;
  LODWORD(v430) = v346 >> 24;
  v436 = *(&STACK[0x10ED0] + (v405 ^ 0x86u));
  HIDWORD(v346) = v436 ^ 0x32FF;
  LODWORD(v346) = v436 ^ 0x1E440000;
  v437 = v346 >> 16;
  v438 = *(&STACK[0x10ED0] + ((4 * (v416 >> 24)) ^ 0x2D5A64574E4));
  HIDWORD(v346) = v438 ^ 0x4432FF;
  LODWORD(v346) = v438 ^ 0x1E000000;
  v439 = v346 >> 24;
  LODWORD(v414) = *(&STACK[0x10ED0] + (BYTE1(v414) ^ 0xA1));
  HIDWORD(v346) = ~v414;
  LODWORD(v346) = v414 ^ 0x1E443200;
  v440 = *(&STACK[0x10ED0] + (BYTE2(v412) ^ 0x6ALL)) ^ v437 ^ (((v346 >> 8) ^ v439) + 507785983 - ((2 * ((v346 >> 8) ^ v439)) & 0x3C8865FE));
  v441 = (v440 - 422824104 - ((2 * v440) & 0xCD986EB0)) ^ LODWORD(STACK[0x2060]) ^ LODWORD(STACK[0x22C0]);
  v442 = LODWORD(STACK[0x1FB0]) ^ (v441 - ((2 * v441) & 0x6329488) + 51989060);
  v443 = LODWORD(STACK[0x1FA8]) ^ (v442 - ((2 * v442) & 0x77457CFC) + 1000521342);
  LODWORD(v406) = LODWORD(STACK[0x1FA0]) ^ (v443 - ((2 * v443) & 0x577C5678) + 733883196);
  v444 = (v428 ^ 0x157B6F86) - ((2 * (v428 ^ 0x157B6F86)) & 0x1720420FCLL) - 0x2B86FD46FDEF82;
  v445 = *(&STACK[0x10ED0] + (BYTE1(v444) ^ 0x10));
  HIDWORD(v346) = ~v445;
  LODWORD(v346) = v445 ^ 0x1E443200;
  v446 = (v406 ^ 0x16D23FDD) - ((2 * (v406 ^ 0x16D23FDD)) & 0xD78DBEF2) - 0xCA9A64994392087;
  v447 = v424 ^ v430 ^ ((v346 >> 8) + 507785983 - ((2 * (v346 >> 8)) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v446) ^ 0xC6));
  v448 = LODWORD(STACK[0x2298]) ^ (v447 + 767676690 - ((2 * v447) & 0x5B83A224));
  v449 = LODWORD(STACK[0x2710]) ^ LODWORD(STACK[0x2164]);
  LODWORD(v412) = v449 ^ (v448 + 360411014 - ((2 * v448) & 0x2AF6DF0C));
  v450 = (v412 ^ 0x5DF699CF) - ((2 * (v412 ^ 0x5DF699CF)) & 0x3A8FDB4C) - 0x25F71E10E2B8125ALL;
  v451 = *(&STACK[0x10ED0] + (BYTE1(v450) ^ 0xEDLL));
  HIDWORD(v346) = ~v451;
  LODWORD(v346) = v451 ^ 0x1E443200;
  v452 = v346 >> 8;
  v453 = (v394 ^ 0x157B6F86) - ((2 * (v394 ^ 0x157B6F86)) & 0x7C665CE6) - 0x1778C2EAC1CCD18DLL;
  v454 = *(&STACK[0x10ED0] + ((4 * (v453 >> 24)) ^ 0x3A21CF454F8));
  HIDWORD(v346) = v454 ^ 0x4432FF;
  LODWORD(v346) = v454 ^ 0x1E000000;
  v455 = v346 >> 24;
  LODWORD(v394) = *(&STACK[0x10ED0] + (BYTE1(v446) ^ 0xDFLL));
  HIDWORD(v346) = ~v394;
  LODWORD(v346) = v394 ^ 0x1E443200;
  LODWORD(v394) = v346 >> 8;
  v456 = *(&STACK[0x10ED0] + (v428 ^ 0x86u));
  HIDWORD(v346) = v456 ^ 0x32FF;
  LODWORD(v346) = v456 ^ 0x1E440000;
  v457 = ((v394 ^ v455 ^ (v346 >> 16)) + 507785983 - ((2 * (v394 ^ v455 ^ (v346 >> 16))) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v434) ^ 0xD2));
  v458 = LODWORD(STACK[0x1F98]) ^ LODWORD(STACK[0x22A8]) ^ (v457 + 767676690 - ((2 * v457) & 0x5B83A224));
  v459 = *(&STACK[0x10ED0] + (v433 ^ 0x86u));
  HIDWORD(v346) = v459 ^ 0x32FF;
  LODWORD(v346) = v459 ^ 0x1E440000;
  v460 = (v346 >> 16) + 507785983 - ((2 * (v346 >> 16)) & 0x3C8865FE);
  v461 = *(&STACK[0x10ED0] + (BYTE1(v453) ^ 0x2ELL));
  HIDWORD(v346) = ~v461;
  LODWORD(v346) = v461 ^ 0x1E443200;
  v462 = v346 >> 8;
  LODWORD(v394) = *(&STACK[0x10ED0] + ((4 * (v446 >> 24)) ^ 0x3CD5966D9ACLL));
  HIDWORD(v346) = v394 ^ 0x4432FF;
  LODWORD(v346) = v394 ^ 0x1E000000;
  v463 = v462 ^ *(&STACK[0x10ED0] + (BYTE2(v444) ^ 2)) ^ v460 ^ (v346 >> 24);
  LODWORD(v394) = LODWORD(STACK[0x1F90]) ^ LODWORD(STACK[0x22D8]) ^ (v463 + 767676690 - ((2 * v463) & 0x5B83A224));
  v464 = *(&STACK[0x10ED0] + ((LODWORD(STACK[0x1F90]) ^ LOBYTE(STACK[0x22D8]) ^ (v463 + 18 - ((2 * v463) & 0x24))) ^ 0x86u));
  HIDWORD(v346) = v464 ^ 0x32FF;
  LODWORD(v346) = v464 ^ 0x1E440000;
  v465 = v346 >> 16;
  v466 = *(&STACK[0x10ED0] + (v406 ^ 0xDDu));
  HIDWORD(v346) = v466 ^ 0x32FF;
  LODWORD(v346) = v466 ^ 0x1E440000;
  v467 = v346 >> 16;
  LODWORD(v444) = *(&STACK[0x10ED0] + ((4 * (v444 >> 24)) ^ 0x3FF51E40AE4));
  HIDWORD(v346) = v444 ^ 0x4432FF;
  LODWORD(v346) = v444 ^ 0x1E000000;
  LODWORD(v406) = v346 >> 24;
  LODWORD(v446) = v452 + 507785983 - ((2 * v452) & 0x3C8865FE);
  v468 = (v458 ^ 0x157B6F86u) - ((2 * (v458 ^ 0x157B6F86u)) & 0x1324C7B88) + 0x17658F4A99263DC4;
  LODWORD(v434) = *(&STACK[0x10ED0] + (BYTE1(v434) ^ 0x3CLL));
  HIDWORD(v346) = ~v434;
  LODWORD(v346) = v434 ^ 0x1E443200;
  LODWORD(v434) = ((v406 ^ (v346 >> 8) ^ v467) + 507785983 - ((2 * (v406 ^ (v346 >> 8) ^ v467)) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v453) ^ 0x33));
  LODWORD(v434) = (v434 + 767676690 - ((2 * v434) & 0x5B83A224)) ^ LODWORD(STACK[0x22B0]);
  v469 = v449 ^ (v434 + 360411014 - ((2 * v434) & 0x2AF6DF0C));
  v470 = (v469 ^ 0x5DF699CFu) - ((2 * (v469 ^ 0x5DF699CFu)) & 0x18BF74F8) + 0x24F2F9D60C5FBA7CLL;
  LODWORD(v434) = *(&STACK[0x10ED0] + ((4 * (v470 >> 24)) ^ 0x93CBE75830));
  HIDWORD(v346) = v434 ^ 0x4432FF;
  LODWORD(v346) = v434 ^ 0x1E000000;
  LODWORD(v434) = v446 ^ *(&STACK[0x10ED0] + (BYTE2(v468) ^ 0x26)) ^ v465 ^ (v346 >> 24);
  LODWORD(v434) = LODWORD(STACK[0x1F88]) ^ LODWORD(STACK[0x22A0]) ^ (v434 - 657245706 - ((2 * v434) & 0xB1A673EC));
  v471 = (v434 ^ 0x157B6F86) - ((2 * (v434 ^ 0x157B6F86)) & 0x1CE76E00CLL) + 0x70D92287E73B7006;
  v472 = *(&STACK[0x10ED0] + (BYTE1(v471) ^ 0x70));
  HIDWORD(v346) = ~v472;
  LODWORD(v346) = v472 ^ 0x1E443200;
  LODWORD(v446) = v346 >> 8;
  v473 = *(&STACK[0x10ED0] + ((4 * (v450 >> 24)) ^ 0x3682387BC74));
  HIDWORD(v346) = v473 ^ 0x4432FF;
  LODWORD(v346) = v473 ^ 0x1E000000;
  v474 = v346 >> 24;
  v475 = *(&STACK[0x10ED0] + (BYTE1(v470) ^ 0xBALL));
  HIDWORD(v346) = ~v475;
  LODWORD(v346) = v475 ^ 0x1E443200;
  v476 = v346 >> 8;
  v477 = STACK[0x2250];
  v478 = STACK[0x2288];
  LODWORD(STACK[0x22D8]) = ((LODWORD(STACK[0x2798]) ^ 0x8FF8F710) << LODWORD(STACK[0x2250])) + ((LODWORD(STACK[0x2798]) ^ 0x8FF8F710) >> LODWORD(STACK[0x2288]));
  v479 = *(&STACK[0x10ED0] + (v458 ^ 0x86u));
  HIDWORD(v346) = v479 ^ 0x32FF;
  LODWORD(v346) = v479 ^ 0x1E440000;
  v480 = (v394 ^ 0x157B6F86) - ((2 * (v394 ^ 0x157B6F86)) & 0xC022F1B6) + 0x8FAA7F4601178DBLL;
  v481 = ((v476 ^ (v346 >> 16) ^ v474) + 507785983 - ((2 * (v476 ^ (v346 >> 16) ^ v474)) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v480) ^ 0x11));
  v482 = LODWORD(STACK[0x1F80]) ^ LODWORD(STACK[0x22C8]) ^ (v481 - 657245706 - ((2 * v481) & 0xB1A673EC));
  v483 = (v482 ^ 0x157B6F86) - ((2 * (v482 ^ 0x157B6F86)) & 0x133BDF32CLL) - 0x373277AF6621066ALL;
  v484 = *(&STACK[0x10ED0] + ((4 * (v483 >> 24)) ^ 0x32336214264));
  HIDWORD(v346) = v484 ^ 0x4432FF;
  LODWORD(v346) = v484 ^ 0x1E000000;
  v485 = v346 >> 24;
  LODWORD(v394) = *(&STACK[0x10ED0] + (BYTE1(v468) ^ 0x3DLL));
  HIDWORD(v346) = ~v394;
  LODWORD(v346) = v394 ^ 0x1E443200;
  LODWORD(v446) = v485 ^ v446;
  v486 = (v346 >> 8) + 507785983 - ((2 * (v346 >> 8)) & 0x3C8865FE);
  LODWORD(v412) = *(&STACK[0x10ED0] + (v412 ^ 0xCFu));
  HIDWORD(v346) = v412 ^ 0x32FF;
  LODWORD(v346) = v412 ^ 0x1E440000;
  LODWORD(v412) = v346 >> 16;
  LODWORD(v394) = *(&STACK[0x10ED0] + ((4 * (v480 >> 24)) ^ 0x23EA9FD180));
  HIDWORD(v346) = v394 ^ 0x4432FF;
  LODWORD(v346) = v394 ^ 0x1E000000;
  v487 = v412 ^ *(&STACK[0x10ED0] + (BYTE2(v470) ^ 0x5FLL)) ^ (v346 >> 24) ^ v486;
  LODWORD(v394) = LODWORD(STACK[0x1F78]) ^ LODWORD(STACK[0x22B8]) ^ (v487 - 657245706 - ((2 * v487) & 0xB1A673EC));
  v488 = *(&STACK[0x10ED0] + ((4 * (v468 >> 24)) ^ 0x5D963D2A64));
  HIDWORD(v346) = v488 ^ 0x4432FF;
  LODWORD(v346) = v488 ^ 0x1E000000;
  v489 = v346 >> 24;
  LODWORD(v412) = *(&STACK[0x10ED0] + (v469 ^ 0xCFu));
  HIDWORD(v346) = v412 ^ 0x32FF;
  LODWORD(v346) = v412 ^ 0x1E440000;
  LODWORD(v412) = v346 >> 16;
  LODWORD(v470) = *(&STACK[0x10ED0] + (BYTE1(v480) ^ 0x78));
  HIDWORD(v346) = ~v470;
  LODWORD(v346) = v470 ^ 0x1E443200;
  v490 = (*(&STACK[0x10ED0] + (BYTE2(v450) ^ 0x47)) ^ v412 ^ ((v346 >> 8) + 507785983 - ((2 * (v346 >> 8)) & 0x3C8865FE)) ^ v489) + LODWORD(STACK[0x2040]);
  v491 = LODWORD(STACK[0x1F70]) ^ LODWORD(STACK[0x22F0]) ^ (v490 - 657245706 - ((2 * v490) & 0xB1A673EC));
  LODWORD(v450) = *(&STACK[0x10ED0] + (v491 ^ 0x86u));
  HIDWORD(v346) = v450 ^ 0x32FF;
  LODWORD(v346) = v450 ^ 0x1E440000;
  v492 = (v394 ^ 0x157B6F86) - ((2 * (v394 ^ 0x157B6F86)) & 0x1532B7CD4) + 0x5B459337A995BE6ALL;
  v493 = LODWORD(STACK[0x25D8]) - LODWORD(STACK[0x26F8]) - v477 + LODWORD(STACK[0x2790]) + ((v446 + 507785983 - ((2 * v446) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (BYTE2(v492) ^ 0x95)) ^ (v346 >> 16));
  LODWORD(v450) = *(&STACK[0x10ED0] + ((4 * (v471 >> 24)) ^ 0x1C3648A1F9CLL));
  HIDWORD(v346) = v450 ^ 0x4432FF;
  LODWORD(v346) = v450 ^ 0x1E000000;
  LODWORD(v450) = v346 >> 24;
  LODWORD(v412) = *(&STACK[0x10ED0] + (BYTE1(v483) ^ 0xF9));
  HIDWORD(v346) = ~v412;
  LODWORD(v346) = v412 ^ 0x1E443200;
  LODWORD(v412) = (v346 >> 8) + 507785983 - ((2 * (v346 >> 8)) & 0x3C8865FE);
  LODWORD(v470) = *(&STACK[0x10ED0] + (v394 ^ 0x86u));
  HIDWORD(v346) = v470 ^ 0x32FF;
  LODWORD(v346) = v470 ^ 0x1E440000;
  v494 = (v491 ^ 0x157B6F86) - ((2 * (v491 ^ 0x157B6F86)) & 0xC250D43CLL) - 0x2B85A5CC9ED795E2;
  v495 = v450 ^ *(&STACK[0x10ED0] + (BYTE2(v494) ^ 0x28)) ^ (v346 >> 16) ^ v412;
  LODWORD(v412) = LODWORD(STACK[0x1F60]) ^ LODWORD(STACK[0x2300]) ^ (v495 - 640057443 - ((2 * v495) & 0xB3B2FF3A));
  v496 = STACK[0x2850];
  LODWORD(v450) = *(STACK[0x2850] + (((BYTE2(v412) ^ 0x7B) - 34) ^ 0x68));
  LODWORD(v471) = LODWORD(STACK[0x1F68]) ^ LODWORD(STACK[0x22E8]) ^ (v493 - 640057443 - ((2 * v493) & 0xB3B2FF3A));
  HIDWORD(v346) = v450 ^ 0x1D;
  LODWORD(v346) = v450 << 24;
  v497 = v346 >> 31;
  HIDWORD(v346) = v497 ^ 1;
  LODWORD(v346) = (v497 ^ 0xFFFFFFE7) << 24;
  LOBYTE(v497) = v346 >> 26;
  v498 = *(&STACK[0x10ED0] + (v471 ^ 0x86u));
  HIDWORD(v346) = v498 ^ 0x32FF;
  LODWORD(v346) = v498 ^ 0x1E440000;
  LODWORD(v470) = v346 >> 16;
  v499 = STACK[0x2860];
  HIDWORD(v346) = *(STACK[0x2860] + (((BYTE1(v394) ^ 0x6F) - 34) ^ 0x5DLL));
  LODWORD(v346) = (HIDWORD(v346) ^ 0xFFFFFF9F) << 24;
  v500 = v346 >> 28;
  HIDWORD(v346) = ~v500;
  LODWORD(v346) = (v500 ^ 0x40) << 24;
  v501 = *(&STACK[0x10ED0] + (v346 >> 26));
  HIDWORD(v346) = ~v501;
  LODWORD(v346) = v501 ^ 0x1E443200;
  v502 = v346 >> 8;
  LODWORD(v450) = *(&STACK[0x10ED0] + (v434 ^ 0x86u));
  HIDWORD(v346) = v450 ^ 0x32FF;
  LODWORD(v346) = v450 ^ 0x1E440000;
  LODWORD(v446) = *(&STACK[0x10ED0] + ((4 * (v494 >> 24)) ^ 0x351E968CD84));
  LODWORD(v450) = (v346 >> 16) + 507785983 - ((2 * (v346 >> 16)) & 0x3C8865FE);
  HIDWORD(v346) = v446 ^ 0x4432FF;
  LODWORD(v346) = v446 ^ 0x1E000000;
  v503 = v502 ^ *(&STACK[0x10ED0] + (BYTE2(v483) ^ 0xDELL)) ^ (v346 >> 24) ^ v450;
  LODWORD(v450) = v503 - (v478 + LODWORD(STACK[0x26E0])) + 2 * LODWORD(STACK[0x26E8]);
  LODWORD(v450) = LODWORD(STACK[0x1F58]) ^ LODWORD(STACK[0x2310]) ^ (v450 - 640057443 - 2 * (v450 & 0x59D97F9F ^ v503 & 2));
  v504 = (v450 ^ 0x157B6F86) - ((2 * (v450 ^ 0x157B6F86)) & 0xAC30AC6ELL) - 0x2BB9B8D8A9E7A9C9;
  v505 = *(&STACK[0x10ED0] + (BYTE1(v504) ^ 0x56));
  HIDWORD(v346) = ~v505;
  LODWORD(v346) = v505 ^ 0x1E443200;
  v506 = v346 >> 8;
  v507 = *(&STACK[0x10ED0] + (v482 ^ 0x86u));
  HIDWORD(v346) = v507 ^ 0x32FF;
  LODWORD(v346) = v507 ^ 0x1E440000;
  v508 = v346 >> 16;
  LODWORD(v394) = *(&STACK[0x10ED0] + (BYTE1(v494) ^ 0x6ALL));
  HIDWORD(v346) = ~v394;
  LODWORD(v346) = v394 ^ 0x1E443200;
  LODWORD(v394) = v346 >> 8;
  LODWORD(v492) = *(&STACK[0x10ED0] + ((4 * (v492 >> 24)) ^ 0x16D164CDEA4));
  HIDWORD(v346) = v492 ^ 0x4432FF;
  LODWORD(v346) = v492 ^ 0x1E000000;
  v509 = STACK[0x2858];
  LODWORD(v434) = LODWORD(STACK[0x26D0]) - LODWORD(STACK[0x2780]) + (v394 ^ v508 ^ *(&STACK[0x10ED0] + (*(STACK[0x2858] + (((BYTE2(v434) ^ 0x7B) + 71) ^ 0x39)) ^ 0x79)) ^ ((v346 >> 24) + 507785983 - ((2 * (v346 >> 24)) & 0x3C8865FE)));
  v510 = LODWORD(STACK[0x1F50]) ^ LODWORD(STACK[0x22E0]) ^ (v434 - 640057443 - ((2 * v434) & 0xB3B2FF3A));
  v511 = (v510 ^ 0x157B6F86u) - ((2 * (v510 ^ 0x157B6F86u)) & 0x17C9B61ECLL) + 0x5A2E2CDABE4DB0F6;
  LODWORD(v434) = *(&STACK[0x10ED0] + ((4 * (v511 >> 24)) ^ 0x168B8B36AF8));
  HIDWORD(v346) = v434 ^ 0x4432FF;
  LODWORD(v346) = v434 ^ 0x1E000000;
  LODWORD(v434) = ((v506 ^ v470 ^ (v346 >> 24)) + 507785983 - ((2 * (v506 ^ v470 ^ (v346 >> 24))) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + v497);
  LODWORD(v434) = LODWORD(STACK[0x1F48]) ^ LODWORD(STACK[0x2308]) ^ (v434 - 852289238 - ((2 * v434) & 0x9A663254));
  v512 = *(&STACK[0x10ED0] + (v434 ^ 0x86u));
  HIDWORD(v346) = v512 ^ 0x32FF;
  LODWORD(v346) = v512 ^ 0x1E440000;
  LODWORD(v470) = v346 >> 16;
  v513 = *(&STACK[0x10ED0] + ((4 * (v504 >> 24)) ^ 0x351191C9D58));
  LODWORD(STACK[0x26E0]) = LODWORD(STACK[0x22D8]) - 1879509232 - ((2 * LODWORD(STACK[0x22D8])) & 0x1FF1EE20);
  HIDWORD(v346) = v513 ^ 0x4432FF;
  LODWORD(v346) = v513 ^ 0x1E000000;
  v514 = v346 >> 24;
  LODWORD(v412) = LODWORD(STACK[0x2788]) ^ v477 ^ v412;
  v515 = *(&STACK[0x10ED0] + (BYTE1(v511) ^ 0xB0));
  HIDWORD(v346) = ~v515;
  LODWORD(v346) = v515 ^ 0x1E443200;
  v516 = (v471 ^ 0x157B6F86) - ((2 * (v471 ^ 0x157B6F86)) & 0xD409E4FELL);
  LODWORD(v471) = *(&STACK[0x10ED0] + (v412 ^ 0x86u));
  v517 = (v346 >> 8) + 507785983 - ((2 * (v346 >> 8)) & 0x3C8865FE);
  HIDWORD(v346) = v471 ^ 0x32FF;
  LODWORD(v346) = v471 ^ 0x1E440000;
  v516 -= 0x7938E9DB95FB0D81;
  v518 = v514 ^ *(&STACK[0x10ED0] + (BYTE2(v516) ^ 4)) ^ (v346 >> 16) ^ v517;
  v519 = LODWORD(STACK[0x1F40]) ^ LODWORD(STACK[0x2320]) ^ (v518 - 852289238 - ((2 * v518) & 0x9A663254));
  LODWORD(v470) = (v470 + 507785983 - ((2 * v470) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + ((((v519 ^ 0x157B6F86) + 899254798 + (~(2 * (v519 ^ 0x157B6F86)) | 0x94CCEBE5)) >> 16) ^ 0x99));
  HIDWORD(v346) = *(v499 + (((BYTE2(v510) ^ 0x7B) - 34) ^ 0x5DLL));
  LODWORD(v346) = (HIDWORD(v346) ^ 0xFFFFFF9F) << 24;
  LODWORD(v511) = v346 >> 28;
  HIDWORD(v346) = ~v511;
  LODWORD(v346) = (v511 ^ 0x40) << 24;
  LOBYTE(v511) = v346 >> 26;
  LODWORD(v471) = *(&STACK[0x10ED0] + ((4 * (v516 >> 24)) ^ 0x21B1C5891A8));
  HIDWORD(v346) = v471 ^ 0x4432FF;
  LODWORD(v346) = v471 ^ 0x1E000000;
  LODWORD(v471) = v346 >> 24;
  LODWORD(v394) = *(&STACK[0x10ED0] + (v450 ^ 0x86u));
  HIDWORD(v346) = v394 ^ 0x32FF;
  LODWORD(v346) = v394 ^ 0x1E440000;
  LODWORD(v471) = ((v346 >> 16) ^ v471) + 507785983 - ((2 * ((v346 >> 16) ^ v471)) & 0x3C8865FE);
  v520 = (v412 ^ 0x157B6F86) - ((2 * (v412 ^ 0x157B6F86)) & 0x6D7398FC) - 0x52B684CEC9463382;
  LODWORD(v412) = *(&STACK[0x10ED0] + (BYTE1(v520) ^ 0xCCLL));
  HIDWORD(v346) = ~v412;
  LODWORD(v346) = v412 ^ 0x1E443200;
  LODWORD(v412) = (v346 >> 8) ^ v471 ^ *(&STACK[0x10ED0] + v511);
  LODWORD(v511) = LODWORD(STACK[0x1F38]) ^ LODWORD(STACK[0x22F8]) ^ (v412 - 852289238 - ((2 * v412) & 0x9A663254));
  v521 = (v511 ^ 0x157B6F86) - ((2 * (v511 ^ 0x157B6F86)) & 0x94D6C55ALL) + 0xA927BCA4A6B62ADLL;
  LODWORD(v471) = *(&STACK[0x10ED0] + (BYTE1(v521) ^ 0x62));
  HIDWORD(v346) = ~v471;
  LODWORD(v346) = v471 ^ 0x1E443200;
  LODWORD(v471) = v346 >> 8;
  LODWORD(v520) = *(&STACK[0x10ED0] + ((4 * (v520 >> 24)) ^ 0x2B525ECC4D8));
  HIDWORD(v346) = v520 ^ 0x4432FF;
  LODWORD(v346) = v520 ^ 0x1E000000;
  LODWORD(v520) = v346 >> 24;
  v522 = *(&STACK[0x10ED0] + (v510 ^ 0x86u));
  LODWORD(v446) = v470 - 1220131206 - ((2 * v470) & 0x6E8C8CF4);
  HIDWORD(v346) = v522 ^ 0x32FF;
  LODWORD(v346) = v522 ^ 0x1E440000;
  v523 = (v346 >> 16) ^ v520;
  LODWORD(v516) = *(&STACK[0x10ED0] + (BYTE1(v516) ^ 0xF2));
  HIDWORD(v346) = ~v516;
  LODWORD(v346) = v516 ^ 0x1E443200;
  LODWORD(v450) = ((v523 ^ (v346 >> 8)) + 507785983 - ((2 * (v523 ^ (v346 >> 8))) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (*(v509 + (((BYTE2(v450) ^ 0x7B) + 71) ^ 0x39)) ^ 0x79));
  LODWORD(v450) = LODWORD(STACK[0x1F30]) ^ LODWORD(STACK[0x2328]) ^ (v450 - 852289238 - ((2 * v450) & 0x9A663254));
  v524 = (v450 ^ 0x157B6F86) - ((2 * (v450 ^ 0x157B6F86)) & 0x16137C316) - 0x35E456484F641E75;
  v525 = *(&STACK[0x10ED0] + ((4 * (v524 >> 24)) ^ 0x3286EA6DEC0));
  HIDWORD(v346) = v525 ^ 0x4432FF;
  LODWORD(v346) = v525 ^ 0x1E000000;
  v526 = LODWORD(STACK[0x1F28]) ^ LODWORD(STACK[0x2330]) ^ v471 ^ (v346 >> 24) ^ v446;
  LODWORD(v516) = *(&STACK[0x10ED0] + (v511 ^ 0x86u));
  HIDWORD(v346) = v516 ^ 0x32FF;
  LODWORD(v346) = v516 ^ 0x1E440000;
  LODWORD(v516) = v346 >> 16;
  v527 = (v434 ^ 0x157B6F86) - 0x79B662DC65157A04 + (~(2 * (v434 ^ 0x157B6F86)) | 0xFFFFFFFECA2AF409);
  LODWORD(v471) = *(&STACK[0x10ED0] + ((v527 >> 22) & 0x2192674FFFCLL ^ 0x21926748E68));
  HIDWORD(v346) = v471 ^ 0x4432FF;
  LODWORD(v346) = v471 ^ 0x1E000000;
  LODWORD(v471) = (v346 >> 24) + 507785983 - ((2 * (v346 >> 24)) & 0x3C8865FE);
  v528 = *(&STACK[0x10ED0] + ((((v519 ^ 0x6F86) - 30194 + (~(2 * (v519 ^ 0x6F86)) | 0xEBE5)) >> 8) ^ 0x8ALL));
  HIDWORD(v346) = ~v528;
  LODWORD(v346) = v528 ^ 0x1E443200;
  v529 = *(&STACK[0x10ED0] + (BYTE2(v524) ^ 0x9BLL)) ^ LODWORD(STACK[0x2058]) ^ v516 ^ (v346 >> 8) ^ v471;
  LODWORD(v471) = *(v496 + (((BYTE1(v526) ^ 0x6F) - 34) ^ 0x68));
  HIDWORD(v346) = v471 ^ 0x1D;
  LODWORD(v346) = v471 << 24;
  LODWORD(v516) = v346 >> 31;
  v530 = LODWORD(STACK[0x2338]) ^ LODWORD(STACK[0x2710]) ^ (v529 - 1220131206 - ((2 * v529) & 0x6E8C8CF4));
  HIDWORD(v346) = v516 ^ 1;
  LODWORD(v346) = (v516 ^ 0xFFFFFFE7) << 24;
  v531 = v346 >> 26;
  LODWORD(v450) = *(&STACK[0x10ED0] + (v450 ^ 0x86u));
  HIDWORD(v346) = v450 ^ 0x32FF;
  LODWORD(v346) = v450 ^ 0x1E440000;
  LODWORD(v450) = v346 >> 16;
  LODWORD(v527) = *(&STACK[0x10ED0] + (BYTE1(v527) ^ 0x85));
  HIDWORD(v346) = ~v527;
  LODWORD(v346) = v527 ^ 0x1E443200;
  LODWORD(v527) = (v346 >> 8) + 507785983 - ((2 * (v346 >> 8)) & 0x3C8865FE);
  LODWORD(v471) = *(&STACK[0x10ED0] + ((*(STACK[0x2870] + (((v519 >> 22) & 0xFC | (v519 >> 30)) ^ 0x7DLL)) ^ 0xC4) - 73));
  HIDWORD(v346) = v471 ^ 0x4432FF;
  LODWORD(v346) = v471 ^ 0x1E000000;
  LODWORD(v450) = v450 ^ *(&STACK[0x10ED0] + (BYTE2(v521) ^ 0x6BLL)) ^ v527 ^ (v346 >> 24);
  v532 = LODWORD(STACK[0x1F20]) ^ LODWORD(STACK[0x2340]) ^ (v450 - 1220131206 - ((2 * v450) & 0x6E8C8CF4));
  v533 = (v532 ^ 0x157B6F86u) - ((2 * (v532 ^ 0x157B6F86u)) & 0x191D10D4CLL) + 0x16BFFB7C8E886A6;
  LODWORD(v471) = *(&STACK[0x10ED0] + (BYTE1(v533) ^ 0x86));
  HIDWORD(v346) = ~v471;
  LODWORD(v346) = v471 ^ 0x1E443200;
  LODWORD(v471) = v346 >> 8;
  v534 = *(&STACK[0x10ED0] + (v519 ^ 0x86u));
  HIDWORD(v346) = v534 ^ 0x32FF;
  LODWORD(v346) = v534 ^ 0x1E440000;
  v535 = v346 >> 16;
  LODWORD(v521) = *(&STACK[0x10ED0] + ((4 * (v521 >> 24)) ^ 0x2A49EF2928));
  HIDWORD(v346) = v521 ^ 0x4432FF;
  LODWORD(v346) = v521 ^ 0x1E000000;
  LODWORD(v521) = v346 >> 24;
  LODWORD(v524) = *(&STACK[0x10ED0] + (BYTE1(v524) ^ 0xE1));
  HIDWORD(v346) = ~v524;
  LODWORD(v346) = v524 ^ 0x1E443200;
  LODWORD(v434) = v535 ^ (v346 >> 8) ^ (v521 + 507785983 - ((2 * v521) & 0x3C8865FE)) ^ *(&STACK[0x10ED0] + (*(v509 + (((BYTE2(v434) ^ 0x7B) + 71) ^ 0x39)) ^ 0x79));
  v536 = LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x2348]);
  v537 = v536 ^ (v434 - 1220131206 - ((2 * v434) & 0x6E8C8CF4));
  LODWORD(v434) = *(&STACK[0x10ED0] + ((v536 ^ (v434 + 122 - ((2 * v434) & 0xF4))) ^ 0x86u));
  HIDWORD(v346) = v434 ^ 0x32FF;
  LODWORD(v346) = v434 ^ 0x1E440000;
  v538 = (v526 ^ 0x157B6F86u) - ((2 * (v526 ^ 0x157B6F86u)) & 0x13E043654) + 0x1055B07F9F021B2ALL;
  LODWORD(v520) = v471 + 507785983 - ((2 * v471) & 0x3C8865FE);
  LODWORD(v434) = *(&STACK[0x10ED0] + (BYTE2(v538) ^ 2)) ^ (v346 >> 16);
  v539 = (v530 ^ 0x157B6F86u) - ((2 * (v530 ^ 0x157B6F86u)) & 0xE0068AAALL) - 0x23A680028FFCBAABLL;
  LODWORD(v521) = *(&STACK[0x10ED0] + ((4 * (v539 >> 24)) ^ 0x37165FFF5C0));
  HIDWORD(v346) = v521 ^ 0x4432FF;
  LODWORD(v346) = v521 ^ 0x1E000000;
  LODWORD(v434) = LODWORD(STACK[0x1F10]) ^ LODWORD(STACK[0x2318]) ^ ((v520 ^ v434 ^ (v346 >> 24)) - 1879509232 - ((2 * (v520 ^ v434 ^ (v346 >> 24))) & 0x1FF1EE20));
  v540 = ((2 * v434) & 0xBBD5F7D6 ^ 0x2AD4D704) + (v434 ^ 0xC891946D);
  v541 = *(&STACK[0x10ED0] + (v526 ^ 0x86u));
  HIDWORD(v346) = v541 ^ 0x32FF;
  LODWORD(v346) = v541 ^ 0x1E440000;
  v542 = v346 >> 16;
  LODWORD(v520) = *(&STACK[0x10ED0] + (BYTE1(v539) ^ 0x45));
  HIDWORD(v346) = ~v520;
  LODWORD(v346) = v520 ^ 0x1E443200;
  LODWORD(v446) = *(&STACK[0x10ED0] + ((4 * (v533 >> 24)) ^ 0x5AFFEDF20));
  v543 = (v346 >> 8) ^ v542;
  HIDWORD(v346) = v446 ^ 0x4432FF;
  LODWORD(v346) = v446 ^ 0x1E000000;
  LODWORD(v496) = (v543 ^ (v346 >> 24)) + LODWORD(STACK[0x26D8]) + ~((2 * (v543 ^ (v346 >> 24))) & 0x3C8865FE);
  v544 = (v537 ^ 0x157B6F86) - ((2 * (v537 ^ 0x157B6F86)) & 0x496D07A0) + 0x571D5E2024B683D0;
  LODWORD(v434) = v496 ^ *(&STACK[0x10ED0] + (BYTE2(v544) ^ 0xB6));
  v545 = v434 - 1879509232 - ((2 * v434) & 0x1FF1EE20);
  v546 = STACK[0x26E0];
  if (v339)
  {
    v546 = STACK[0x2798];
  }

  v547 = *(&STACK[0x10ED0] + v531);
  v548 = LODWORD(STACK[0x1F08]) ^ v546 ^ v545;
  HIDWORD(v549) = ~v547;
  LODWORD(v549) = v547 ^ 0x1E443200;
  v550 = (v549 >> 8) + 507785983 - ((2 * (v549 >> 8)) & 0x3C8865FE);
  v551 = *(&STACK[0x10ED0] + (v532 ^ 0x86u));
  HIDWORD(v549) = v551 ^ 0x32FF;
  LODWORD(v549) = v551 ^ 0x1E440000;
  v552 = *(&STACK[0x10ED0] + ((4 * (v544 >> 24)) ^ 0x15C75788090));
  v553 = *(&STACK[0x10ED0] + (BYTE2(v539) ^ 3)) ^ (v549 >> 16);
  HIDWORD(v549) = v552 ^ 0x4432FF;
  LODWORD(v549) = v552 ^ 0x1E000000;
  v554 = v553 ^ (v549 >> 24) ^ v550;
  v555 = v509;
  v556 = *(&STACK[0x11870] + (*(v509 + ((v540 + 92) ^ 0x39)) ^ 0x79));
  HIDWORD(v549) = v556 ^ 0x36;
  LODWORD(v549) = v556 ^ 0xACBDA600;
  v557 = v549 >> 8;
  v558 = *(&STACK[0x10ED0] + ((LOBYTE(STACK[0x2338]) ^ LOBYTE(STACK[0x2710]) ^ (v529 + 122 - ((2 * v529) & 0xF4))) ^ 0x86u));
  HIDWORD(v549) = v558 ^ 0x32FF;
  LODWORD(v549) = v558 ^ 0x1E440000;
  v559 = v549 >> 16;
  v560 = *(&STACK[0x10ED0] + ((4 * (v538 >> 24)) ^ 0x4156C1FE7CLL));
  v561 = LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x2360]) ^ (v554 - 1879509232 - ((2 * v554) & 0x1FF1EE20));
  HIDWORD(v549) = v560 ^ 0x4432FF;
  LODWORD(v549) = v560 ^ 0x1E000000;
  v562 = v549 >> 24;
  v563 = *(&STACK[0x10ED0] + ((*(STACK[0x2870] + (((v537 >> 6) & 0xFC | (v537 >> 14)) ^ 0x94)) ^ 0xC4) - 73));
  HIDWORD(v549) = ~v563;
  LODWORD(v549) = v563 ^ 0x1E443200;
  v564 = v562 ^ v559 ^ *(&STACK[0x10ED0] + (BYTE2(v533) ^ 0xE8)) ^ ((v549 >> 8) + 507785983 - ((2 * (v549 >> 8)) & 0x3C8865FE));
  v565 = LODWORD(STACK[0x1EF0]) ^ LODWORD(STACK[0x2378]) ^ (v564 - 1879509232 - ((2 * v564) & 0x1FF1EE20));
  v566 = (v565 ^ 0x157B6F86u) - ((2 * (v565 ^ 0x157B6F86u)) & 0x1B0824542) - 0x5BE7203C27BEDD5FLL;
  v567 = *(&STACK[0x11870] + ((4 * (v566 >> 24)) ^ 0x290637F0F60));
  HIDWORD(v549) = v567 ^ 0xA636;
  LODWORD(v549) = v567 ^ 0xACBD0000;
  v568 = ((v549 >> 16) ^ v557) - 1396857290 - ((2 * ((v549 >> 16) ^ v557)) & 0x597B4C6C);
  v569 = (v561 ^ 0x157B6F86) - ((2 * (v561 ^ 0x157B6F86)) & 0xBD0E3956) - 561570645;
  HIDWORD(v549) = *(STACK[0x2860] + (((BYTE2(v548) ^ 0x7B) - 34) ^ 0x5DLL));
  LODWORD(v549) = (HIDWORD(v549) ^ 0xFFFFFF9F) << 24;
  v570 = v549 >> 28;
  HIDWORD(v549) = ~v570;
  LODWORD(v549) = (v570 ^ 0x40) << 24;
  v571 = *(&STACK[0x11870] + (v549 >> 26));
  v572 = v568 ^ *(&STACK[0x11870] + (BYTE1(v569) ^ 0x1CLL)) ^ (*(v555 + (((HIBYTE(v571) ^ 0xAC) + 71) ^ 0x39)) ^ 0x79 | (v571 << 8));
  v573 = LODWORD(STACK[0x1EE8]) ^ LODWORD(STACK[0x2380]) ^ ((v572 ^ 0xBDA63600) - 678986647 - 2 * ((v572 ^ 0xBDA63600) & 0x57877C79 ^ v572 & 0x10));
  v574 = ((v573 ^ 0x157B6F86) >> LODWORD(STACK[0x2790])) | ((v573 ^ 0x157B6F86) << LODWORD(STACK[0x26E8]));
  v575 = v574 - 1766215347 - ((2 * v574) & 0x2D73629A);
  v576 = STACK[0x2350];
  v577 = v573 ^ 0x83C2DECB;
  if ((STACK[0x2350] & 0x18) != 0)
  {
    v578 = v575;
  }

  else
  {
    v578 = v577;
  }

  v579 = (v540 + 571802645) - ((2 * (v540 + 571802645)) & 0x1CE7B1A5CLL) + 0x4819568AE73D8D2ELL;
  v580 = *(&STACK[0x11870] + ((4 * (v579 >> 24)) ^ 0x120655A2B9CLL));
  HIDWORD(v582) = v580 ^ 0xA636;
  LODWORD(v582) = v580 ^ 0xACBD0000;
  v581 = v582 >> 16;
  v583 = *(&STACK[0x11870] + (v561 ^ 0x86u));
  HIDWORD(v582) = v583 ^ 0x36;
  LODWORD(v582) = v583 ^ 0xACBDA600;
  v584 = v582 >> 8;
  v585 = *(&STACK[0x11870] + (BYTE2(v566) ^ 0x41));
  HIDWORD(v582) = v585 ^ 0xBDA636;
  LODWORD(v582) = v585 ^ 0xAC000000;
  v586 = (v548 ^ 0x157B6F86u) - ((2 * (v548 ^ 0x157B6F86u)) & 0xCC3E0664) - 0x5ED8B53899E0FCCELL;
  v587 = *(&STACK[0x11870] + (BYTE1(v586) ^ 3)) ^ v584 ^ (v582 >> 24) ^ (v581 - 1396857290 - ((2 * v581) & 0x597B4C6C));
  v588 = *(&STACK[0x11870] + (BYTE2(v569) ^ 0x87));
  HIDWORD(v582) = v588 ^ 0xBDA636;
  LODWORD(v582) = v588 ^ 0xAC000000;
  v589 = v582 >> 24;
  v590 = LODWORD(STACK[0x1EE0]) ^ LODWORD(STACK[0x2368]) ^ (v587 - 678986647 - ((2 * v587) & 0xAF0EF8D2));
  v591 = ((v590 ^ 0x157B6F86) << (v576 & 0x18)) ^ 0x96B9B14D ^ ((v590 ^ 0x157B6F86) >> LODWORD(STACK[0x2788]));
  v592 = v590 ^ 0x83C2DECB;
  if ((v576 & 0x18) != 0)
  {
    v592 = v591;
  }

  v593 = *(&STACK[0x11870] + ((4 * (v586 >> 24)) ^ 0x2849D2B1D98));
  HIDWORD(v595) = v593 ^ 0xA636;
  LODWORD(v595) = v593 ^ 0xACBD0000;
  v594 = v595 >> 16;
  v596 = *(&STACK[0x11870] + ((LOBYTE(STACK[0x1EF0]) ^ LOBYTE(STACK[0x2378]) ^ (v564 + 16 - ((2 * v564) & 0x20))) ^ 0x86u));
  HIDWORD(v595) = v596 ^ 0x36;
  LODWORD(v595) = v596 ^ 0xACBDA600;
  v597 = *(&STACK[0x11870] + (BYTE1(v579) ^ 0x8DLL)) ^ (v595 >> 8) ^ v594 ^ (v589 - 1396857290 - ((2 * v589) & 0x597B4C6C));
  v598 = LODWORD(STACK[0x1ED8]) ^ LODWORD(STACK[0x2370]) ^ (v597 - 678986647 - ((2 * v597) & 0xAF0EF8D2));
  v599 = ((v598 ^ 0x157B6F86) << (v576 & 0x18)) + ((v598 ^ 0x157B6F86) >> LODWORD(STACK[0x2788]));
  v600 = v599 - 1766215347 - ((2 * v599) & 0x2D73629A);
  HIDWORD(v595) = *(STACK[0x2860] + (((HIBYTE(v561) ^ 0x15) - 34) ^ 0x5DLL));
  LODWORD(v595) = (HIDWORD(v595) ^ 0xFFFFFF9F) << 24;
  v601 = v595 >> 28;
  HIDWORD(v595) = ~v601;
  LODWORD(v595) = (v601 ^ 0x40) << 24;
  v602 = *(&STACK[0x11870] + (v595 >> 26));
  HIDWORD(v595) = v602 ^ 0xA636;
  LODWORD(v595) = v602 ^ 0xACBD0000;
  v603 = v595 >> 16;
  v604 = *(&STACK[0x11870] + (v548 ^ 0x86u));
  HIDWORD(v595) = v604 ^ 0x36;
  LODWORD(v595) = v604 ^ 0xACBDA600;
  v605 = *(&STACK[0x11870] + (BYTE2(v579) ^ 0x3DLL));
  v606 = (v595 >> 8) ^ v603;
  v607 = *(STACK[0x2858] + (((HIBYTE(v605) ^ 0xAC) + 71) ^ 0x39)) ^ 0x79 | (v605 << 8);
  v608 = v598 ^ 0x83C2DECB;
  if ((v576 & 0x18) != 0)
  {
    v608 = v600;
  }

  v609 = *(&STACK[0x11870] + (BYTE1(v566) ^ 0x22)) ^ LODWORD(STACK[0x2050]) ^ v607 ^ (v606 - 1396857290 - ((2 * v606) & 0x597B4C6C));
  v610 = LODWORD(STACK[0x2388]) ^ LODWORD(STACK[0x2710]) ^ ((v609 ^ 0xBDA63600) - 678986647 - 2 * ((v609 ^ 0xBDA63600) & 0x57877C7B ^ v609 & 0x12));
  v611 = ((v610 ^ 0x157B6F86) >> LODWORD(STACK[0x2790])) | ((v610 ^ 0x157B6F86) << (v576 & 0x18));
  v612 = v611 - 1766215347 - ((2 * v611) & 0x2D73629A);
  v613 = v610 ^ 0x83C2DECB;
  if ((STACK[0x2358] & 0x18) != 0)
  {
    v613 = v612;
  }

  v614 = STACK[0x26F0];
  if (STACK[0x26F0])
  {
    v615 = v608;
  }

  else
  {
    v615 = v578;
  }

  if (v614)
  {
    v616 = v613;
  }

  else
  {
    v616 = v608;
  }

  if (v614)
  {
    v617 = v578;
  }

  else
  {
    v617 = v592;
  }

  if (v614)
  {
    v618 = v592;
  }

  else
  {
    v618 = v613;
  }

  v619 = v614 - 2 * LODWORD(STACK[0x2390]) + 1;
  v620 = (v619 & 2) == 0;
  if ((v619 & 2) != 0)
  {
    v621 = v616;
  }

  else
  {
    v621 = v617;
  }

  v622 = *(STACK[0x2830] + ((111 * (BYTE2(v621) ^ 0xB9)) ^ 0x9DLL));
  if (v620)
  {
    v623 = v618;
  }

  else
  {
    v623 = v615;
  }

  v624 = *(STACK[0x2850] + (((HIBYTE(v623) ^ 0x96) - 34) ^ 0x68));
  v625 = STACK[0x2038];
  *(v625 + STACK[0x2470]) = v621 ^ 0x1C;
  *(v625 + LODWORD(STACK[0x2508])) = ((LOBYTE(STACK[0x27F8]) + 115 * v622) ^ 0x8C) - ((2 * ((LOBYTE(STACK[0x27F8]) + 115 * v622) ^ 0x8C) - 74) & 0xA2) + 44;
  if (!v620)
  {
    v615 = v618;
  }

  *(v625 + LODWORD(STACK[0x2448])) = v615 ^ 0x1C;
  if (!v620)
  {
    v616 = v617;
  }

  *(v625 + LODWORD(STACK[0x2440])) = v616 ^ 0x1C;
  v626 = (v615 ^ 0x96B9B14D) - ((2 * (v615 ^ 0x96B9B14D)) & 0x8FED0734) - 940145766;
  *(v625 + STACK[0x2458]) = (BYTE2(v626) ^ 0xF6) - ((2 * (BYTE2(v626) ^ 0xF6)) & 0xA2) + 81;
  *(v625 + STACK[0x2478]) = (HIBYTE(v626) ^ 0xC7) - ((2 * (HIBYTE(v626) ^ 0xC7)) & 0xA2) + 81;
  v627 = (v616 ^ 0x96B9B14D) - ((2 * (v616 ^ 0x96B9B14D)) & 0x818C1532) - 1060762983;
  *(v625 + LODWORD(STACK[0x2518])) = (BYTE2(v627) ^ 0xC6) - ((2 * (BYTE2(v627) ^ 0xC6)) & 0xA2) + 81;
  v628 = (v621 ^ 0x96B9B14D) - ((2 * (v621 ^ 0x96B9B14D)) & 0x7FD135A0) - 1075275056;
  *(v625 + LODWORD(STACK[0x2438])) = (BYTE1(v628) ^ 0x9A) - ((2 * (BYTE1(v628) ^ 0x9A)) & 0xA2) + 81;
  *(v625 + LODWORD(STACK[0x25B8])) = (HIBYTE(v628) ^ 0xBF) - ((2 * (HIBYTE(v628) ^ 0xBF)) & 0xA2) + 81;
  v629 = (v623 ^ 0x96B9B14D) - ((2 * (v623 ^ 0x96B9B14D)) & 0xF8EB84E4) - 59391374;
  *(v625 + LODWORD(STACK[0x25B0])) = (BYTE1(v629) ^ 0xC2) - 2 * ((BYTE1(v629) ^ 0xC2) & 0x59 ^ BYTE1(v629) & 8) + 81;
  *(v625 + LODWORD(STACK[0x2488])) = (HIBYTE(v627) ^ 0xC0) - 2 * ((HIBYTE(v627) ^ 0xC0) & 0x57 ^ HIBYTE(v627) & 6) + 81;
  HIDWORD(v631) = v624 ^ 0x1D;
  LODWORD(v631) = v624 << 24;
  v630 = v631 >> 31;
  HIDWORD(v631) = v630 ^ 1;
  LODWORD(v631) = (v630 ^ 0xFFFFFFE7) << 24;
  *(v625 + LODWORD(STACK[0x2598])) = (v631 >> 26) - ((2 * (v631 >> 26)) & 0xA2) + 81;
  *(v625 + STACK[0x2538]) = (BYTE1(v627) ^ 0xA) - ((2 * BYTE1(v627)) & 0xA2) + 81;
  *(v625 + STACK[0x2468]) = (BYTE2(v629) ^ 0x75) - ((2 * (BYTE2(v629) ^ 0x75)) & 0xA2) + 81;
  *(v625 + STACK[0x2450]) = (BYTE1(v626) ^ 0x83) - ((2 * (BYTE1(v626) ^ 0x83)) & 0xA2) + 81;
  *(v625 + STACK[0x25C0]) = v623 ^ 0x1C;
  return (*(v1 + 8 * ((15 * (((STACK[0x2510] - 795083775 - 2 * ((STACK[0x2510] + 16) & 0x509BFBF9 ^ STACK[0x2460] & 8)) ^ 0xD09BFBF1) < LODWORD(STACK[0x2030]))) ^ LODWORD(STACK[0x25C8]))))();
}

uint64_t sub_244AD6CAC@<X0>(int a1@<W3>, int a2@<W8>)
{
  v6 = STACK[0x21C8];
  LODWORD(STACK[0x25D8]) = a1 - 180225624;
  LODWORD(STACK[0x26E8]) = LODWORD(STACK[0x2780]) + (v6 ^ 0x667B) - 180236045;
  v7 = STACK[0x2778];
  LODWORD(STACK[0x26E0]) = LODWORD(STACK[0x2778]) ^ a2 ^ 0x7E5D3CDB;
  v8 = STACK[0x2090];
  LODWORD(STACK[0x26D8]) = LODWORD(STACK[0x2090]) ^ v2 ^ 0x6627B674;
  LODWORD(STACK[0x26F0]) = v8 ^ v3 ^ 0x4A85CD95;
  LODWORD(STACK[0x2788]) = v7 ^ v4 ^ 0x709714EE;
  v9 = *(v5 + 8 * v6);
  LODWORD(STACK[0x2388]) = STACK[0x21A8];
  LODWORD(STACK[0x2780]) = STACK[0x2198];
  LODWORD(STACK[0x2360]) = STACK[0x20D0];
  LODWORD(STACK[0x26D0]) = STACK[0x21C0];
  LODWORD(STACK[0x2378]) = STACK[0x2098];
  LODWORD(STACK[0x2790]) = STACK[0x21B0];
  LODWORD(STACK[0x2370]) = STACK[0x21A0];
  return v9();
}

uint64_t sub_244AD6D80()
{
  v1 = STACK[0x1ED0];
  v2 = (LODWORD(STACK[0x1ED0]) - 209516342) | 0x8A8;
  LODWORD(STACK[0x2798]) = v2;
  LODWORD(STACK[0x27A0]) = (v2 ^ 0x905) & STACK[0x1D74] ^ 0x14;
  return (*(v0 + 8 * (v1 ^ 0xC7CF016 ^ (658 * (v1 < 0xBDDBCFA7)))))();
}

uint64_t sub_244AD6E2C()
{
  v3 = STACK[0x2798];
  v4 = *(*(&off_278E1E490 + LODWORD(STACK[0x2798]) - 857) + (v1 ^ 0x56E6DA8Eu) - 3);
  HIDWORD(v5) = LODWORD(STACK[0x2798]) ^ 0x24 ^ v4;
  LODWORD(v5) = v4 ^ 0x897C3A00;
  v6 = (v5 >> 9) ^ 0x2AE48A7F ^ (2 * (((v5 >> 9) ^ 0x2AE48A7F) & LODWORD(STACK[0x27B8])));
  v7 = STACK[0x2878];
  v8 = ((v6 & STACK[0x27D8]) << STACK[0x2878]) | ((v6 & STACK[0x27D0]) >> STACK[0x2810]);
  v9 = (2 * v8) & 0x88DB38A6;
  v10 = v8 - 999449517;
  v11 = v1 ^ 0x56E6DAD0;
  v12 = v1 ^ (2 * ((v1 ^ 0x56E6DAD0) & STACK[0x27B8]));
  v13 = v10 - v9;
  v14 = STACK[0x2818];
  v15 = (v12 ^ 0x56E6DAD0u) << STACK[0x2818];
  v16 = v12 ^ 0xD0u;
  v17 = (v16 & STACK[0x27A0]) >> STACK[0x2810];
  LODWORD(v15) = (v17 + v15 - 1030928115 - ((2 * (v17 + v15)) & 0x851A921A)) ^ LODWORD(STACK[0x24D4]);
  *(&STACK[0x9680] + ((v15 - ((2 * v15) & 0x5A) - 83) ^ LODWORD(STACK[0x24D0]))) = LODWORD(STACK[0x2134]) ^ LODWORD(STACK[0x1E98]) ^ 0xA2A285F4 ^ v13;
  v18 = *(STACK[0x25D0] + 2 * (v1 ^ 0x56E6DAECu)) ^ 0xB7D4;
  v19 = (v18 + 1267669942 - ((2 * v18) & 0x376C)) ^ 0x4B8F1BB6;
  v20 = (((v19 ^ (2 * (v19 & v0))) & STACK[0x2838]) << v7) + (((v19 ^ (2 * (v19 & v0))) & STACK[0x27E0]) >> STACK[0x2880]);
  *(&STACK[0x5870] + (LOBYTE(STACK[0x2778]) ^ 0x62u ^ (((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * ((((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (v16 << v14)) ^ 0x9DLL))) ^ 0x8C) - 37) | v17)) ^ 0x9DLL))) ^ 0x8C) - 37))) = LODWORD(STACK[0x24E0]) ^ LODWORD(STACK[0x24E8]) ^ 0xEC378E28 ^ (v20 - 1579847176 - ((2 * v20) & 0x43AAE3F0));
  return (*(v2 + 8 * ((1014 * (((v11 + 1457969872 - ((2 * v11 + 2) & 0xADCDB5A0) + 1) ^ 0x56E6DA00) < 0x100)) ^ v3)))();
}

uint64_t sub_244AD70BC@<X0>(char a1@<W8>)
{
  v6 = LODWORD(STACK[0x1CB0]) ^ 0xDE;
  v7 = v6 | STACK[0x2840] & 0xFFFF0000 ^ 0x677A0000 | LODWORD(STACK[0x1D58]);
  v8 = v7 + 1661833526 - 2 * (v7 & 0x630D913F ^ v6 & 9);
  LODWORD(STACK[0x2768]) = v8;
  v9 = LODWORD(STACK[0x1CB8]) + ((a1 - 73) << 16);
  v10 = v9 - 341994308 - 2 * (v9 & 0x6B9D94BE ^ STACK[0x1EA8] & 2);
  LODWORD(STACK[0x2770]) = v10;
  v11 = STACK[0x1EC0];
  v12 = STACK[0x2878];
  v13 = STACK[0x2810];
  v14 = (((LODWORD(STACK[0x1D78]) ^ 0x6594004) & (STACK[0x1EC0] & 0x8AB9A246 ^ 0x4F65D161)) << v12) | (((LODWORD(STACK[0x1D74]) ^ 0x87C90104) & (STACK[0x1EC0] & 0x8AB9A246 ^ 0x4F65D161)) >> STACK[0x2810]);
  v15 = v14 + 294162670 - ((2 * v14) & 0x231121DC);
  v16 = STACK[0x1EC8];
  v17 = STACK[0x2880];
  v18 = STACK[0x2818];
  v19 = (((STACK[0x1EC8] & 0x24B9A246 ^ 0xB6F4D161) & (LODWORD(STACK[0x1D60]) ^ 0x1029E244)) << STACK[0x2818]) | (((STACK[0x1EC8] & 0x24B9A246 ^ 0xB6F4D161) & (LODWORD(STACK[0x1D70]) ^ 0x94F1C004)) >> STACK[0x2880]);
  v20 = LODWORD(STACK[0x1D50]) + 1802332662 - 2 * (STACK[0x1D50] & 0x6B6D69FE ^ STACK[0x1DF4] & 8);
  LODWORD(STACK[0x2780]) = v20;
  v21 = (v20 ^ 0x6B6D69F6u) - ((2 * (v20 ^ 0x6B6D69F6u)) & 0x13B17712ELL) - 0x53CD973C62744769;
  v22 = *(&STACK[0x5870] + (BYTE2(v21) ^ 0x8BLL));
  HIDWORD(v23) = v22 ^ 0x76B2;
  LODWORD(v23) = v22 ^ 0x11A00000;
  v24 = *(&STACK[0x5870] + STACK[0x1D48]) ^ (v19 + 295728818 - ((2 * v19) & 0x2340ED64)) ^ (v23 >> 16);
  v25 = *(&STACK[0x5870] + (BYTE1(v21) ^ 0xB8));
  HIDWORD(v23) = v25 ^ 0xA076B2;
  LODWORD(v23) = v25 ^ 0x11111111;
  v26 = v23 >> 24;
  LODWORD(v21) = *(&STACK[0x5870] + ((4 * (v21 >> 24)) ^ 0x2B0C9A30E74));
  v27 = STACK[0x1EB8];
  HIDWORD(v23) = v21 ^ 0xB2;
  LODWORD(v23) = v21 ^ LODWORD(STACK[0x1EB8]);
  v28 = STACK[0x1E98];
  v29 = ((v24 ^ v26 ^ (v23 >> 8)) - 230758901 - ((2 * (v24 ^ v26 ^ (v23 >> 8))) & 0xE47DCC16)) ^ LODWORD(STACK[0x1E98]);
  LODWORD(STACK[0x328]) = v15;
  v30 = v8 ^ v15 ^ (v29 + 1661833526 - ((2 * v29) & 0xC61B226C));
  v31 = STACK[0x2134];
  LODWORD(STACK[0x26F8]) = v30;
  v32 = STACK[0x24D4];
  v33 = STACK[0x24D0];
  LODWORD(STACK[0x2840]) = LODWORD(STACK[0x24D0]) ^ LODWORD(STACK[0x24D4]);
  v34 = v33 ^ v32 ^ ((v31 ^ 0xD5E50CBD ^ v30) + 818286253 - ((2 * (v31 ^ 0xD5E50CBD ^ v30)) & 0x618C1D5A));
  LODWORD(v21) = (v31 ^ 0x6E0D55E ^ v34) - 1065885486 - ((2 * (v31 ^ 0x6E0D55E ^ v34)) & 0x80EFC1A4);
  v35 = v10 ^ LODWORD(STACK[0x2848]) ^ v34;
  v36 = LODWORD(STACK[0x2848]) ^ v28 ^ v21;
  LODWORD(STACK[0x26E8]) = v36;
  LODWORD(v21) = v2 ^ ((v20 ^ 0x820A5495 ^ v35) - 999449517 - ((2 * (v20 ^ 0x820A5495 ^ v35)) & 0x88DB38A6));
  LODWORD(STACK[0x2790]) = v2;
  v37 = v16;
  v38 = v16 & 0x1A66A37E ^ 0x71150ED;
  v39 = LODWORD(STACK[0x1E80]) ^ v31 ^ v35;
  LODWORD(STACK[0x26E0]) = v39;
  v40 = STACK[0x2838];
  v41 = (v21 ^ 0xF23EE60B) - ((2 * (v21 ^ 0xF23EE60B)) & 0xDD6D9F0) - 0x6048A24F9149308;
  v42 = ((v38 & STACK[0x27D8]) << v18) ^ ((v38 & STACK[0x27D0]) >> v17) ^ ((((v11 & 0x9866A37E ^ 0xC45350D5) & STACK[0x2838]) << v12) | (((v11 & 0x9866A37E ^ 0xC45350D5) & STACK[0x27E0]) >> v13));
  v43 = BYTE2(v41) ^ 0xEBLL;
  STACK[0x2788] = v43;
  LODWORD(v43) = *(&STACK[0x5870] + v43);
  HIDWORD(v23) = v43 ^ 0x76B2;
  LODWORD(v23) = v43 ^ 0x11A00000;
  v44 = (4 * (v41 >> 24)) ^ 0x3E7EDD76C18;
  STACK[0x2718] = v44;
  v45 = *(&STACK[0x5870] + v44);
  v46 = (v23 >> 16) ^ v42;
  HIDWORD(v23) = v45 ^ 0xB2;
  LODWORD(v23) = v45 ^ v27;
  v47 = v46 ^ (v23 >> 8);
  v48 = BYTE1(v41) ^ 0x6CLL;
  STACK[0x2708] = v48;
  LODWORD(v48) = *(&STACK[0x5870] + v48);
  HIDWORD(v23) = v48 ^ 0xA076B2;
  LODWORD(v23) = v48 ^ 0x11111111;
  v49 = 4 * ((v21 ^ 0x27D7AB2B7FC3FD37) + ((2 * (v21 ^ 0xBu)) & 0x78)) + 0x60A1535200F00B10;
  STACK[0x2710] = v49;
  v50 = ((v47 ^ (v23 >> 24)) + 295728818 - ((2 * (v47 ^ (v23 >> 24))) & 0x2340ED64)) ^ *(&STACK[0x5870] + v49);
  v51 = (v50 - 999449517 - ((2 * v50) & 0x88DB38A6)) ^ v31;
  LODWORD(v49) = ((v31 ^ v33 ^ 0xF4AB92FE) - 230758901 - ((2 * (v31 ^ v33 ^ 0xF4AB92FE)) & 0xE47DCC16)) ^ v28;
  v52 = (v51 - 230758901 - ((2 * v51) & 0xE47DCC16)) ^ v30;
  v53 = v32;
  LODWORD(v41) = (v49 - 1030928115 - ((2 * v49) & 0x851A921A)) ^ v32 ^ v52;
  v54 = v31 ^ 0xF3D914E0 ^ v52;
  LODWORD(v49) = v36 ^ 0x4F9768A4 ^ ((v31 ^ 0x27DBEAB6 ^ v41) - ((2 * (v31 ^ 0x27DBEAB6 ^ v41)) & 0x7B531D5E) - 1112961361);
  LODWORD(v49) = (v49 - 230758901 - ((2 * v49) & 0xE47DCC16)) ^ v28;
  LODWORD(v49) = (v49 - 1579847176 - ((2 * v49) & 0x43AAE3F0)) ^ LODWORD(STACK[0x24E0]);
  v55 = STACK[0x24E8];
  v56 = LODWORD(STACK[0x24E8]) ^ v39 ^ 0x4921C114 ^ (v49 - ((2 * v49) & 0x94AE1E9A) - 900264115);
  LODWORD(v49) = v36 ^ 0x4F9768A4 ^ v41;
  LODWORD(STACK[0x2368]) = v49;
  LODWORD(v21) = ((v21 ^ 0xFA91E91 ^ v56) - 1030928115 - ((2 * (v21 ^ 0xFA91E91 ^ v56)) & 0x851A921A)) ^ v53;
  LODWORD(v21) = (v21 + 818286253 - ((2 * v21) & 0x618C1D5A)) ^ v33;
  LODWORD(v18) = v33;
  v57 = STACK[0x2878];
  LODWORD(v41) = (((v37 & 0x4AE14968 ^ 0x2FD0A5F4) & v40) << STACK[0x2878]) + (((v37 & 0x4AE14968 ^ 0x2FD0A5F4) & (LODWORD(STACK[0x1D74]) ^ 0x7C10914u)) >> v17);
  LODWORD(v17) = STACK[0x1EC0];
  v58 = STACK[0x2818];
  v59 = STACK[0x2810];
  v60 = (((v17 & 0xECE14968 ^ 0x3A11ADDC) & (LODWORD(STACK[0x1D70]) ^ 0x94F1C88C)) >> STACK[0x2810]) | (((LODWORD(STACK[0x1D78]) ^ 0x26514004) & (v17 & 0xECE14968 ^ 0x3A11ADDC)) << STACK[0x2818]);
  v61 = v2 ^ (v21 - 999449517 - ((2 * v21) & 0x88DB38A6));
  v62 = (v61 ^ 0xF23EE60B) - ((2 * (v61 ^ 0xF23EE60B)) & 0x1BB8D3A30) + 0x5C150797DDC69D18;
  v63 = (4 * (v62 >> 24)) ^ 0x170541E5F74;
  STACK[0x2380] = v63;
  v64 = *(&STACK[0x5870] + v63);
  HIDWORD(v23) = v64 ^ 0xB2;
  LODWORD(v23) = v64 ^ v27;
  v65 = v23 >> 8;
  v66 = BYTE2(v62) ^ 0xC6;
  STACK[0x2760] = v66;
  v67 = *(&STACK[0x5870] + v66);
  HIDWORD(v23) = v67 ^ 0x76B2;
  LODWORD(v23) = v67 ^ 0x11A00000;
  v68 = v23 >> 16;
  v69 = BYTE1(v62) ^ 0x9DLL;
  STACK[0x2378] = v69;
  LODWORD(v69) = *(&STACK[0x5870] + v69);
  HIDWORD(v23) = v69 ^ 0xA076B2;
  LODWORD(v23) = v69 ^ 0x11111111;
  v70 = v61;
  LODWORD(STACK[0x2360]) = v61;
  LODWORD(v69) = v41 ^ v60 ^ v68 ^ v65 ^ (v23 >> 24) ^ *(&STACK[0x5870] + ((*(STACK[0x2698] + (((v61 >> 6) | (4 * (v61 & 0x3Fu))) ^ 0x60)) ^ 0x22) - 73));
  LODWORD(STACK[0x2358]) = v54 ^ v28;
  LODWORD(v41) = ((v69 ^ v54 ^ v28 ^ 0x379C6EEF) - 999449517 - ((2 * (v69 ^ v54 ^ v28 ^ 0x379C6EEF)) & 0x88DB38A6)) ^ v31;
  LODWORD(v41) = (v41 - 230758901 - ((2 * v41) & 0xE47DCC16)) ^ v28;
  LODWORD(v41) = v49 ^ 0x6AFC8BD0 ^ (v41 - ((2 * v41) & 0x69C6E734) + 887321498);
  v71 = v54 ^ v69;
  LODWORD(STACK[0x26D8]) = v54 ^ v69;
  LODWORD(v66) = v41 - 1030928115 - ((2 * v41) & 0x851A921A);
  v72 = v56 ^ LODWORD(STACK[0x2088]);
  LODWORD(STACK[0x2370]) = v72;
  LODWORD(v69) = (v55 ^ 0x36537A58 ^ v72) - ((2 * (v55 ^ 0x36537A58 ^ v72)) & 0xFAC20F80);
  LODWORD(STACK[0x2738]) = v28 ^ v18;
  LODWORD(v49) = ((v28 ^ v18 ^ 0xC2F8E8A6) - 999449517 - ((2 * (v28 ^ v18 ^ 0xC2F8E8A6)) & 0x88DB38A6)) ^ v31;
  v73 = STACK[0x1D60];
  LOBYTE(v65) = v57;
  LODWORD(v41) = (((v17 & 0x95F1B646 ^ 0xCE89DF61) & (LODWORD(STACK[0x1D60]) ^ 0x1029EE44u)) << v57) ^ (((v17 & 0x95F1B646 ^ 0xCE89DF61) & STACK[0x27E0]) >> v59);
  v74 = v37;
  v75 = STACK[0x27D8];
  v76 = STACK[0x2880];
  LODWORD(v41) = ((((v37 & 0xEDF1B646 ^ 0x5A58CB61) & STACK[0x1CC0]) >> STACK[0x2880]) + (((v37 & 0xEDF1B646 ^ 0x5A58CB61) & STACK[0x27D8]) << v58)) ^ v41;
  v77 = LODWORD(STACK[0x2840]) ^ v66;
  LODWORD(v69) = LODWORD(STACK[0x24E0]) ^ (v69 + 2103510976) ^ 0xB5CB1246 ^ v77;
  LODWORD(v49) = v69 ^ (v49 - ((2 * v49) & 0xB372D5A6) + 1505323731) ^ v70;
  v78 = v49 ^ LODWORD(STACK[0x24D4]);
  v79 = (v78 ^ 0x30B3AF06u) - ((2 * (v78 ^ 0x30B3AF06u)) & 0x41A53072) - 0x10FE219EDF2D67C7;
  v80 = BYTE1(v79) ^ 0x98;
  STACK[0x2700] = v80;
  v81 = *(&STACK[0x5870] + v80);
  HIDWORD(v23) = v81 ^ 0xA076B2;
  LODWORD(v23) = v81 ^ 0x11111111;
  v82 = BYTE2(v79) ^ 0xD2;
  STACK[0x2630] = v82;
  v83 = *(&STACK[0x5870] + v82);
  LODWORD(v41) = v41 ^ (v23 >> 24);
  HIDWORD(v23) = v83 ^ 0x76B2;
  LODWORD(v23) = v83 ^ 0x11A00000;
  v84 = (4 * (v79 >> 24)) ^ 0x3BC07798480;
  STACK[0x26C0] = v84;
  LODWORD(v79) = *(&STACK[0x5870] + v84);
  LODWORD(v41) = (v41 ^ (v23 >> 16)) + 295728818 - ((2 * (v41 ^ (v23 >> 16))) & 0x2340ED64);
  v85 = STACK[0x1EB8];
  HIDWORD(v23) = v79 ^ 0xB2;
  LODWORD(v23) = v79 ^ LODWORD(STACK[0x1EB8]);
  v86 = 4 * ((v78 ^ 0x3EA7DFFEAAF71FF1) + ((2 * (v78 ^ 6u)) & 0xFFFFFFFFFFFFFFEFLL)) + 0x560800554238024;
  STACK[0x26F0] = v86;
  v87 = (v23 >> 8) ^ *(&STACK[0x5870] + v86) ^ v71 ^ v41;
  v88 = STACK[0x1D74];
  LODWORD(v86) = v17;
  LODWORD(v41) = ((v75 & (v17 & 0x66AEF808 ^ 0xF57F740C)) << v65) + (((LODWORD(STACK[0x1D74]) ^ 0x97C90804) & (v17 & 0x66AEF808 ^ 0xF57F740C)) >> v59);
  v89 = STACK[0x1D70];
  LODWORD(v79) = v74 & 0x28AEF808 ^ 0x3CFD6C04;
  v90 = v79 & (LODWORD(STACK[0x1D70]) ^ 0x14F1C80C);
  LOBYTE(v17) = v76;
  v91 = (v79 & (v73 ^ 0x1029EC04)) << v58;
  LOBYTE(v73) = v58;
  LODWORD(v90) = (v90 >> v76) + v91;
  v92 = v18;
  v93 = v77 ^ LODWORD(STACK[0x2088]);
  LODWORD(STACK[0x26B8]) = v93;
  LODWORD(v75) = v69 ^ v31;
  LODWORD(v69) = v69 ^ v31 ^ v28;
  LODWORD(STACK[0x2678]) = v69;
  LODWORD(STACK[0x25E8]) = v87;
  LODWORD(v91) = v93 ^ v87;
  LODWORD(v49) = v93 ^ v87 ^ v69 ^ ((v92 ^ 0xC2F8E8A6 ^ v49) - ((2 * (v92 ^ 0xC2F8E8A6 ^ v49)) & 0xDFD42116) + 1877610635) ^ 0x13DEE6EB;
  v94 = (v49 ^ v28 ^ 0x22D7FCF1) - ((2 * (v49 ^ v28 ^ 0x22D7FCF1)) & 0x6DFF6576) + 0x38A6B1C136FFB2BBLL;
  v95 = ~(((v49 ^ v28 ^ 0x22D7FCF1) - ((2 * (v49 ^ v28 ^ 0x22D7FCF1)) & 0x6DFF6576) + 922727099) >> 16);
  STACK[0x2758] = v95;
  LODWORD(v76) = *(&STACK[0x5870] + v95);
  HIDWORD(v23) = v76 ^ 0x76B2;
  LODWORD(v23) = v76 ^ 0x11A00000;
  STACK[0x2610] = v94;
  v96 = (4 * (v94 >> 24)) ^ 0xE29AC704D8;
  STACK[0x25D0] = v96;
  LODWORD(v58) = *(&STACK[0x5870] + v96);
  LODWORD(v90) = (v23 >> 16) ^ v90;
  v97 = v85;
  HIDWORD(v23) = v58 ^ 0xB2;
  LODWORD(v23) = v58 ^ v85;
  LODWORD(v58) = *(&STACK[0x5870] + ((((v49 ^ v28 ^ 0xFCF1) - ((2 * (v49 ^ v28 ^ 0xFCF1)) & 0x6576) - 19781) >> 8) ^ 0xB2));
  LODWORD(v90) = (v90 ^ (v23 >> 8)) + 295728818 - ((2 * (v90 ^ (v23 >> 8))) & 0x2340ED64);
  HIDWORD(v23) = v58 ^ 0xA076B2;
  LODWORD(v23) = v58 ^ 0x11111111;
  v98 = 4 * (((v49 ^ v28) ^ 0x2F5FBFABF7EDEE4ELL) + ((2 * ((v49 ^ v28) ^ 0xF1u)) & 0xFFFFFFFFFFFFFF7FLL)) + 0x4281015020484504;
  STACK[0x25D8] = v98;
  LODWORD(v94) = *(&STACK[0x5870] + v98) ^ v41 ^ (v23 >> 24) ^ v87 ^ v90;
  LODWORD(STACK[0x2470]) = v94;
  LODWORD(v90) = v75 ^ v91 ^ 0x6A127CC8;
  LODWORD(STACK[0x25C8]) = v90;
  LODWORD(v98) = v91 ^ 0x6A127CC8 ^ LODWORD(STACK[0x2778]);
  LODWORD(STACK[0x25E0]) = v98;
  LODWORD(v75) = v94 ^ v31;
  LODWORD(v98) = v94 ^ v31 ^ LODWORD(STACK[0x2090]) ^ v98;
  LODWORD(v41) = v98 ^ v28 ^ v90;
  LODWORD(v59) = v98;
  LODWORD(STACK[0x2330]) = v98;
  v99 = STACK[0x24E0];
  LODWORD(v90) = (v99 ^ 0x61F9BB06 ^ v41) - 40372070 - ((2 * (v99 ^ 0x61F9BB06 ^ v41)) & 0xFB2FF134);
  LODWORD(v18) = STACK[0x24E8];
  LODWORD(v41) = ((v18 ^ 0x3DBB3264 ^ v41) - 999449517 - ((2 * (v18 ^ 0x3DBB3264 ^ v41)) & 0x88DB38A6)) ^ v31;
  LODWORD(v49) = (v41 - ((2 * v41) & 0xA1D235F4) - 790029574) ^ LODWORD(STACK[0x24E8]) ^ v49;
  LODWORD(v90) = (v90 ^ v18) - 999449517 - ((2 * (v90 ^ v18)) & 0x88DB38A6);
  v100 = (v49 ^ 0xFD97F89A) - ((2 * (v49 ^ 0xFD97F89A)) & 0x1A412E214) + 0x348AE180D209710ALL;
  LODWORD(v41) = *(&STACK[0x5870] + (*(STACK[0x2858] + ((((((v49 ^ 0xFD97F89A) - ((2 * (v49 ^ 0xFD97F89A)) & 0xA412E214) - 771133174) >> 16) ^ 9) + 71) ^ 0x39)) ^ 0x79));
  HIDWORD(v23) = v41 ^ 0x76B2;
  LODWORD(v23) = v41 ^ 0x11A00000;
  v101 = v88;
  v102 = STACK[0x2810];
  LODWORD(v91) = (((v88 ^ 0x93C90114) & (v86 & 0x12EEC2AE ^ 0x8B1F61FD)) >> STACK[0x2810]) + (((LODWORD(STACK[0x1D78]) ^ 0x25B4004) & (v86 & 0x12EEC2AE ^ 0x8B1F61FD)) << v73);
  v103 = STACK[0x1EC8];
  v104 = STACK[0x1EC8] & 0xC0EEC2AE ^ 0x60DD61D5;
  LODWORD(v18) = v89;
  LOBYTE(v88) = v17;
  v105 = (v104 & (v89 ^ 0x80F1C08C)) >> v17;
  v106 = STACK[0x2838];
  v107 = STACK[0x2878];
  LODWORD(v41) = (v105 | ((v104 & STACK[0x2838]) << STACK[0x2878])) ^ v91 ^ (v23 >> 16);
  STACK[0x2750] = v100;
  v108 = BYTE1(v100) ^ 0x71;
  STACK[0x2340] = v108;
  v109 = *(&STACK[0x5870] + v108);
  HIDWORD(v23) = v109 ^ 0xA076B2;
  LODWORD(v23) = v109 ^ 0x11111111;
  v110 = v23 >> 24;
  v111 = (4 * (v100 >> 24)) ^ 0xD22B860348;
  STACK[0x2350] = v111;
  LODWORD(v58) = *(&STACK[0x5870] + v111);
  HIDWORD(v23) = v58 ^ 0xB2;
  LODWORD(v23) = v58 ^ v97;
  v112 = 4 * ((v49 ^ 0x2B5BB6FC78BFFF57) + ((2 * (v49 ^ 0x9Au)) & 0x19A)) + 0x5291240E1D0000CCLL;
  STACK[0x2338] = v112;
  LODWORD(v100) = v110 ^ *(&STACK[0x5870] + v112) ^ (v23 >> 8) ^ v75 ^ (v41 + 295728818 - ((2 * v41) & 0x2340ED64));
  LODWORD(v75) = v100 ^ LODWORD(STACK[0x1DF8]);
  LODWORD(STACK[0x2720]) = v100;
  LODWORD(v105) = ((v75 ^ 0x72FC1E9) + 818286253 - 2 * ((v75 ^ 0x72FC1E9) & 0x30C60EBD ^ v75 & 0x10)) ^ v92 ^ v59;
  LODWORD(v112) = LODWORD(STACK[0x2790]) ^ v90;
  LODWORD(STACK[0x2348]) = v112;
  v113 = STACK[0x2088];
  LODWORD(v49) = ((v113 ^ 0xCBC482C2 ^ v49) - 1579847176 - ((2 * (v113 ^ 0xCBC482C2 ^ v49)) & 0x43AAE3F0)) ^ v99;
  LODWORD(v59) = v86;
  LODWORD(v90) = v86 & 0xDE36AD34 ^ 0x212B5BBA;
  v114 = v90 & (v18 ^ 0x9531C88C);
  LOBYTE(v18) = v88;
  LODWORD(v90) = ((STACK[0x1E68] & v90) << v107) | (v114 >> v88);
  LODWORD(v41) = v101;
  LOBYTE(v88) = v73;
  LODWORD(v75) = LODWORD(STACK[0x2840]) ^ ((v105 ^ v112 ^ 0xF4DDBCA7) - 1030928115 - ((2 * (v105 ^ v112 ^ 0xF4DDBCA7)) & 0x851A921A));
  LODWORD(v86) = v75 ^ LODWORD(STACK[0x24E8]) ^ (v49 - ((2 * v49) & 0x8D7ADABC) + 1186819422);
  v115 = (v86 ^ 0x8BEC9B69) - ((2 * (v86 ^ 0x8BEC9B69)) & 0x1890AA70CLL) + 0x4EB69EB9C4855386;
  v116 = BYTE1(v115) ^ 0x53;
  STACK[0x2628] = v116;
  v117 = *(&STACK[0x5870] + v116);
  HIDWORD(v23) = v117 ^ 0xA076B2;
  LODWORD(v23) = v117 ^ 0x11111111;
  LODWORD(v114) = (v23 >> 24) ^ (((v103 & 0x636AD34 ^ 0x539578A) & v106) << v73) ^ (((v103 & 0x636AD34 ^ 0x539578A) & (v101 ^ 0x7090914u)) >> v102) ^ v90;
  v118 = (4 * (v115 >> 24)) ^ 0x13ADA7AE710;
  STACK[0x25C0] = v118;
  v119 = *(&STACK[0x5870] + v118);
  HIDWORD(v23) = v119 ^ 0xB2;
  LODWORD(v23) = v119 ^ v97;
  LODWORD(v114) = v114 ^ (v23 >> 8);
  v120 = BYTE2(v115) ^ 0x85;
  STACK[0x2748] = v120;
  LODWORD(v115) = *(&STACK[0x5870] + v120);
  HIDWORD(v23) = v115 ^ 0x76B2;
  LODWORD(v23) = v115 ^ 0x11A00000;
  LODWORD(v90) = v86;
  LODWORD(STACK[0x25B8]) = v86;
  LODWORD(v100) = v100 ^ *(&STACK[0x5870] + ((*(STACK[0x2870] + (((v86 >> 6) | (4 * (v86 & 0x3F))) ^ 0x8CLL)) ^ 0xC4) - 73)) ^ ((v114 ^ (v23 >> 16)) + 295728818 - ((2 * (v114 ^ (v23 >> 16))) & 0x2340ED64));
  LODWORD(STACK[0x2598]) = v105 ^ v113;
  LODWORD(v58) = v100 ^ LODWORD(STACK[0x2090]);
  LODWORD(STACK[0x26D0]) = v100;
  LODWORD(STACK[0x25B0]) = v75 ^ v113;
  LODWORD(v75) = ((v58 ^ v105 ^ v113 ^ 0xC33473E3) - ((2 * (v58 ^ v105 ^ v113 ^ 0xC33473E3)) & 0x578EBA7A) - 1412997827) ^ v75 ^ v113 ^ 0xAD5229C8;
  LODWORD(v75) = v3 ^ (v75 - 1579847176 - ((2 * v75) & 0x43AAE3F0));
  LODWORD(v115) = v31;
  LODWORD(v75) = (((((v75 ^ 0xFD97F89A) - (v31 ^ 0x39FA64C9 ^ v75)) ^ ((v31 ^ 0x3B9263AC) + 1)) - 999449517 - ((2 * (((v75 ^ 0xFD97F89A) - (v31 ^ 0x39FA64C9 ^ v75)) ^ ((v31 ^ 0x3B9263AC) + 1))) & 0x88DB38A6)) ^ v31) + (v75 ^ 0xFD97F89A);
  LODWORD(v75) = v75 - 457073860 - ((2 * v75) & 0xC9833678);
  LODWORD(v86) = v105 ^ v58;
  LODWORD(STACK[0x22E0]) = v105 ^ v58;
  LODWORD(v114) = STACK[0x1E98];
  LODWORD(v105) = v75 ^ ((v114 ^ 0x79D27D62 ^ v90) - 457073860 - ((2 * (v114 ^ 0x79D27D62 ^ v90)) & 0xC9833678));
  LOBYTE(v101) = v107;
  v121 = STACK[0x27E0];
  v122 = (((v59 & 0x42FE18A4 ^ 0xE30704F2) & (LODWORD(STACK[0x1D60]) ^ 0x290C54u)) << v107) | (((v59 & 0x42FE18A4 ^ 0xE30704F2) & STACK[0x27E0]) >> v18);
  v123 = STACK[0x1EC8];
  LODWORD(v107) = STACK[0x1D78];
  LODWORD(v90) = v41;
  LOBYTE(v18) = v102;
  v124 = (((v123 & 0xF4FE18A4 ^ 0xDED51CD2) & (LODWORD(STACK[0x1D78]) ^ 0x265B0004)) << v73) | (((v123 & 0xF4FE18A4 ^ 0xDED51CD2) & (v41 ^ 0x96C90814)) >> v102);
  LODWORD(v58) = v3 ^ (v105 - 40372070 - ((2 * v105) & 0xFB2FF134));
  v125 = (v58 ^ 0xA1D571F8) - ((2 * (v58 ^ 0xA1D571F8)) & 0x541EBD18) - 0x49B25663D5F0A174;
  v126 = BYTE1(v125) ^ 0x5ELL;
  STACK[0x22B8] = v126;
  v127 = *(&STACK[0x5870] + v126);
  HIDWORD(v23) = v127 ^ 0xA076B2;
  LODWORD(v23) = v127 ^ 0x11111111;
  v128 = (v23 >> 24) ^ v124 ^ v122;
  v129 = BYTE2(v125) ^ 0xFLL;
  STACK[0x2740] = v129;
  v130 = *(&STACK[0x5870] + v129);
  HIDWORD(v23) = v130 ^ 0x76B2;
  LODWORD(v23) = v130 ^ 0x11A00000;
  v131 = (v128 ^ (v23 >> 16)) + 295728818 - ((2 * (v128 ^ (v23 >> 16))) & 0x2340ED64);
  v132 = (4 * (v125 >> 24)) ^ 0x2D936A670A8;
  STACK[0x2298] = v132;
  LODWORD(v125) = *(&STACK[0x5870] + v132);
  LODWORD(v102) = STACK[0x1EB8];
  HIDWORD(v23) = v125 ^ 0xB2;
  LODWORD(v23) = v125 ^ LODWORD(STACK[0x1EB8]);
  v133 = 4 * ((v58 ^ 0x2FE7DDFFF4FEDEC7) + 2 * ((v58 ^ 0xF8u) & 0x3FLL)) + 0x406088002C048704;
  STACK[0x2290] = v133;
  v134 = (v23 >> 8) ^ *(&STACK[0x5870] + v133) ^ v100 ^ v131;
  LODWORD(STACK[0x22B0]) = v86 ^ 0xA4B0B330;
  LODWORD(v100) = STACK[0x24D4];
  v135 = v134 ^ LODWORD(STACK[0x24D4]) ^ v86 ^ 0xA4B0B330;
  v136 = LODWORD(STACK[0x2738]) ^ ((v135 ^ v115 ^ 0x56F87B62) - 230758901 - 2 * ((v135 ^ v115 ^ 0x56F87B62) & 0x723EE61F ^ (v135 ^ v115) & 0x14));
  LODWORD(STACK[0x2458]) = v136;
  v137 = STACK[0x24D0];
  LODWORD(v125) = v114;
  LODWORD(v75) = v75 ^ v114;
  LODWORD(STACK[0x22D8]) = v75;
  LODWORD(v75) = v75 ^ ((v137 ^ 0xA253E99C ^ v135) + 385842487 - ((2 * (v137 ^ 0xA253E99C ^ v135)) & 0x2DFEFA6E));
  LODWORD(v75) = (v75 - 999449517 - ((2 * v75) & 0x88DB38A6)) ^ v115;
  LODWORD(v133) = v3 ^ (v75 - 1579847176 - ((2 * v75) & 0x43AAE3F0));
  LODWORD(v106) = ((v125 ^ 0x53EB97F3 ^ v58) + 818286253 - ((2 * (v125 ^ 0x53EB97F3 ^ v58)) & 0x618C1D5A)) ^ v137;
  LODWORD(v114) = v115;
  LODWORD(v106) = (v106 - 999449517 - ((2 * v106) & 0x88DB38A6)) ^ v115;
  LODWORD(STACK[0x2510]) = v133 ^ 0x29224C71;
  LODWORD(v106) = (v106 - ((2 * v106) & 0xA96B69D6) - 726289173) ^ v133 ^ 0x29224C71;
  LODWORD(v58) = v115 ^ v100 ^ (v106 - 1030928115 - ((2 * v106) & 0x851A921A));
  LODWORD(v41) = v123;
  LODWORD(v106) = v123 & 0xAA19AAA6 ^ 0xFF04D5D1;
  LODWORD(v86) = v90;
  v138 = v106 & (v90 ^ 0x97090914);
  v139 = STACK[0x2880];
  v140 = STACK[0x1EC0];
  LODWORD(v138) = (((v107 ^ 0x20194004) & (STACK[0x1EC0] & 0xB019AAA6 ^ 0xD815DDF1)) << v101) ^ (((STACK[0x1EC0] & 0xB019AAA6 ^ 0xD815DDF1) & v121) >> v18) ^ ((v138 >> STACK[0x2880]) | ((v106 & STACK[0x2838]) << v88));
  v141 = (v58 ^ 0xC46D9C53) - ((2 * (v58 ^ 0xC46D9C53)) & 0x291B943A) + 0x253B48D9148DCA1DLL;
  STACK[0x2488] = ((2 * (v141 >> 24)) & 0x1291BADA ^ 0x1291B208) + ((v141 >> 24) ^ 0xA7F6BA7DF2A62479);
  LODWORD(v59) = *(&STACK[0x5870] + (*(STACK[0x2800] + ((((2 * BYTE3(v141)) & 0xDA ^ 8) + (BYTE3(v141) ^ 0x79) - 38) ^ 0xF9)) ^ 0xALL));
  HIDWORD(v23) = v59 ^ 0xB2;
  LODWORD(v23) = v59 ^ v102;
  LODWORD(v59) = v23 >> 8;
  BYTE2(v18) = BYTE2(v141);
  STACK[0x2478] = v141;
  v142 = *(&STACK[0x5870] + (BYTE1(v141) ^ 0xCALL));
  HIDWORD(v23) = v142 ^ 0xA076B2;
  LODWORD(v23) = v142 ^ 0x11111111;
  v143 = 4 * ((v58 ^ 0x35779EEDFFBF73E4) + ((2 * (v58 ^ 0x53u)) & 0x16E)) + 0x2A21844801023124;
  STACK[0x2460] = v143;
  LODWORD(v141) = *(&STACK[0x5870] + v143) ^ (v138 + 295728818 - ((2 * v138) & 0x2340ED64)) ^ (v23 >> 24);
  v144 = BYTE2(v18) ^ 0x8DLL;
  STACK[0x2738] = v144;
  LODWORD(v107) = *(&STACK[0x5870] + v144);
  HIDWORD(v23) = v107 ^ 0x76B2;
  LODWORD(v23) = v107 ^ 0x11A00000;
  LODWORD(v138) = v141 ^ v134 ^ (v23 >> 16) ^ v59;
  LODWORD(v107) = v125 ^ 0x36537A58 ^ v58;
  LODWORD(v58) = LODWORD(STACK[0x24E0]) ^ ((LODWORD(STACK[0x24E8]) ^ 0xCD51F637 ^ v136) + 1828328736 - ((2 * (LODWORD(STACK[0x24E8]) ^ 0xCD51F637 ^ v136)) & 0xD9F42C96) + 299) ^ 0x6D3502FC ^ v138;
  LODWORD(v141) = v58 ^ ((LODWORD(STACK[0x2090]) ^ 0x75A1AB ^ v125) - ((2 * (LODWORD(STACK[0x2090]) ^ 0x75A1AB ^ v125)) & 0x8DBB08C4) - 958561182) ^ v133;
  LODWORD(v133) = v141 ^ (v107 - ((2 * v107) & 0x88877BDC) + 1145290222) ^ 0xDEDCB0EE;
  LODWORD(v133) = (v133 - 1579847176 - ((2 * v133) & 0x43AAE3F0)) ^ LODWORD(STACK[0x24E0]);
  LODWORD(v144) = v114 ^ LODWORD(STACK[0x24E8]) ^ (v133 - 999449517 - ((2 * v133) & 0x88DB38A6));
  LODWORD(v133) = v41 & 0x7B987B7C ^ 0x17442CEE;
  LODWORD(v41) = STACK[0x1EB0];
  LODWORD(v107) = (((v140 & 0xC3987B7C ^ 0xA3D434D6) & v121) >> v18) ^ (((v140 & 0xC3987B7C ^ 0xA3D434D6) & (LODWORD(STACK[0x1D60]) ^ 0x86E54)) << v88);
  LODWORD(STACK[0x2730]) = v144;
  v145 = (v144 ^ 0x1DD6FD66EF35E9A0) + ((2 * (v144 ^ 0x9Au)) & 0x74);
  LODWORD(v18) = v107 + 295728818 - ((2 * v107) & 0x2340ED64);
  v146 = (v144 ^ 0xFD97F89A) - ((2 * (v144 ^ 0xFD97F89A)) & 0x1B790D1D6) + 0x53476C0ADBC868EBLL;
  v147 = BYTE1(v146) ^ v4;
  STACK[0x2300] = v147;
  LODWORD(v121) = *(&STACK[0x5870] + v147);
  HIDWORD(v23) = v121 ^ 0xA076B2;
  LODWORD(v23) = v121 ^ 0x11111111;
  LODWORD(v121) = v23 >> 24;
  v148 = (4 * (v146 >> 24)) ^ 0x14D1DB02B6CLL;
  STACK[0x22F8] = v148;
  v149 = *(&STACK[0x5870] + v148);
  HIDWORD(v23) = v149 ^ 0xB2;
  LODWORD(v23) = v149 ^ v102;
  LODWORD(v100) = v23 >> 8;
  v150 = BYTE2(v146) ^ 0xC8;
  STACK[0x2728] = v150;
  LODWORD(v146) = *(&STACK[0x5870] + v150);
  HIDWORD(v23) = v146 ^ 0x76B2;
  LODWORD(v23) = v146 ^ 0x11A00000;
  v151 = 4 * v145 - 0x775BF59BBCD7A4E8;
  STACK[0x22F0] = v151;
  LODWORD(v133) = ((v133 & v41) << v101) ^ ((v133 & (v86 ^ 0x17C80914)) >> v139) ^ v18 ^ *(&STACK[0x5870] + v151);
  LODWORD(v41) = STACK[0x2088];
  LODWORD(STACK[0x22C0]) = LODWORD(STACK[0x26D0]) ^ LODWORD(STACK[0x2088]);
  v152 = v134 ^ v41;
  LODWORD(STACK[0x22C8]) = v58 ^ v41;
  v153 = LODWORD(STACK[0x2720]) ^ v41;
  LODWORD(STACK[0x22E8]) = v141 ^ v41;
  LODWORD(STACK[0x22D0]) = v138 ^ v41;
  LODWORD(v141) = v133 ^ v138 ^ v121 ^ v100 ^ (v23 >> 16);
  LODWORD(STACK[0x2618]) = v141;
  LODWORD(STACK[0x2720]) = LODWORD(STACK[0x2840]) ^ 0x841E7DB8 ^ ((v58 ^ v41 ^ v141 ^ 0x96491F17) - 1030928115 - 2 * ((v58 ^ v41 ^ v141 ^ 0x96491F17) & 0x428D492D ^ (v58 ^ v41 ^ v141) & 0x20));
  v154 = (LODWORD(STACK[0x26E0]) ^ 0x8376CE59) - ((2 * (LODWORD(STACK[0x26E0]) ^ 0x8376CE59)) & 0x1866A69F6);
  LODWORD(v139) = STACK[0x26E8];
  LODWORD(v100) = LODWORD(STACK[0x26F8]) ^ v125;
  v155 = (v100 ^ 0xE3B676E5) - ((2 * (v100 ^ 0xE3B676E5)) & 0xFC5B7860);
  LODWORD(v41) = *(&STACK[0x9680] + (LODWORD(STACK[0x26E0]) ^ 0x59u));
  HIDWORD(v23) = v41 ^ 0x63FF;
  LODWORD(v23) = v41 ^ 0x509C0000;
  LODWORD(v121) = v23 >> 16;
  v156 = (v139 ^ 0xF23EE60B) - ((2 * (v139 ^ 0xF23EE60B)) & 0xF914A172) + 0x652760E87C8A50B9;
  STACK[0x26A8] = v156;
  LODWORD(v133) = *(&STACK[0x9680] + (BYTE1(v156) ^ 0x50));
  HIDWORD(v23) = ~v133;
  LODWORD(v23) = v133 ^ 0x509C6300;
  LODWORD(v133) = v23 >> 8;
  LODWORD(v41) = *(&STACK[0x9680] + STACK[0x2708]);
  HIDWORD(v23) = ~v41;
  LODWORD(v23) = v41 ^ 0x509C6300;
  LODWORD(v41) = v23 >> 8;
  v157 = v154 - 0x5B8F63123CCACB05;
  STACK[0x26D0] = v154 - 0x5B8F63123CCACB05;
  LODWORD(v154) = *(&STACK[0x9680] + (((v154 + 13563) >> 8) ^ 0x34));
  HIDWORD(v23) = ~v154;
  LODWORD(v23) = v154 ^ 0x509C6300;
  LODWORD(v121) = (v23 >> 8) ^ v121;
  LODWORD(v154) = *(&STACK[0x9680] + (v100 ^ 0xE5u));
  HIDWORD(v23) = v154 ^ 0x63FF;
  LODWORD(v23) = v154 ^ 0x509C0000;
  LODWORD(v154) = v23 >> 16;
  LODWORD(v100) = *(&STACK[0x9680] + (v139 ^ 0xBu));
  HIDWORD(v23) = v100 ^ 0x63FF;
  LODWORD(v23) = v100 ^ 0x509C0000;
  LODWORD(v133) = (v23 >> 16) ^ v133;
  LOWORD(v88) = v155 - 17360;
  STACK[0x2660] = v155 - 0x6CA84C0881D243D0;
  LODWORD(v100) = *(&STACK[0x9680] + ((4 * ((v155 - 0x6CA84C0881D243D0) >> 24)) ^ 0x24D5ECFDDF8));
  HIDWORD(v23) = v100 ^ 0x9C63FF;
  LODWORD(v23) = v100 ^ 0x50000000;
  LODWORD(v100) = (v23 >> 24) ^ v154;
  v158 = *(&STACK[0x9680] + STACK[0x2718]);
  LODWORD(STACK[0x2708]) = v121 + 1352426495 - ((2 * v121) & 0xA138C7FE);
  HIDWORD(v23) = v158 ^ 0x9C63FF;
  LODWORD(v23) = v158 ^ 0x50000000;
  LODWORD(v155) = v23 >> 24;
  LODWORD(STACK[0x26A0]) = v100 + 1352426495 - ((2 * v100) & 0xA138C7FE);
  LODWORD(v121) = *(&STACK[0x9680] + STACK[0x2710]);
  LODWORD(STACK[0x26E0]) = v133 + 1352426495 - ((2 * v133) & 0xA138C7FE);
  HIDWORD(v23) = v121 ^ 0x63FF;
  LODWORD(v23) = v121 ^ 0x509C0000;
  LODWORD(STACK[0x26F8]) = (v155 ^ v41 ^ (v23 >> 16)) + 1352426495 - ((2 * (v155 ^ v41 ^ (v23 >> 16))) & 0xA138C7FE);
  LODWORD(v133) = *(&STACK[0x9680] + ((4 * (v157 >> 24)) ^ 0x291C273B70CLL));
  HIDWORD(v23) = v133 ^ 0x9C63FF;
  LODWORD(v23) = v133 ^ 0x50000000;
  LODWORD(STACK[0x26C8]) = v23 >> 24;
  LODWORD(v133) = *(&STACK[0x9680] + (BYTE1(v88) ^ 0xBCLL));
  HIDWORD(v23) = ~v133;
  LODWORD(v23) = v133 ^ 0x509C6300;
  LODWORD(STACK[0x2658]) = v23 >> 8;
  LODWORD(v133) = *(&STACK[0x9680] + ((4 * (((v139 ^ 0xF23EE60B) - ((2 * (v139 ^ 0xF23EE60B)) & 0xF914A172uLL) + 0x652760E87C8A50B9) >> 24)) ^ 0x1949D83A1F0));
  HIDWORD(v23) = v133 ^ 0x9C63FF;
  LODWORD(v23) = v133 ^ 0x50000000;
  LODWORD(STACK[0x26B0]) = v23 >> 24;
  LODWORD(v133) = *(&STACK[0x9680] + STACK[0x26C0]);
  HIDWORD(v23) = v133 ^ 0x9C63FF;
  LODWORD(v23) = v133 ^ 0x50000000;
  LODWORD(v133) = v23 >> 24;
  LODWORD(v102) = STACK[0x26B8];
  LODWORD(v41) = *(&STACK[0x9680] + (LODWORD(STACK[0x26B8]) ^ 0xF5u));
  HIDWORD(v23) = v41 ^ 0x63FF;
  LODWORD(v23) = v41 ^ 0x509C0000;
  LODWORD(v41) = v23 >> 16;
  LODWORD(v106) = STACK[0x2678];
  v159 = STACK[0x2800];
  LODWORD(v155) = LODWORD(STACK[0x26D8]) ^ v125;
  LODWORD(v100) = *(&STACK[0x9680] + (*(STACK[0x2800] + (((LODWORD(STACK[0x2678]) ^ 0x8B) + 71) ^ 0xF9)) ^ 0xALL));
  HIDWORD(v23) = v100 ^ 0x63FF;
  LODWORD(v23) = v100 ^ 0x509C0000;
  LODWORD(v100) = v23 >> 16;
  v160 = (v155 ^ 0x379C6EEF) - ((2 * (v155 ^ 0x379C6EEF)) & 0x162963F60) + 0x6CC3BCBEB14B1FB0;
  STACK[0x2670] = v160;
  LODWORD(v121) = *(&STACK[0x9680] + ((4 * (v160 >> 24)) ^ 0x1B30EF2FAC4));
  HIDWORD(v23) = v121 ^ 0x9C63FF;
  LODWORD(v23) = v121 ^ 0x50000000;
  LODWORD(STACK[0x2248]) = v133 + 1352426495 - ((2 * v133) & 0xA138C7FE);
  LODWORD(STACK[0x26B8]) = (v23 >> 24) + 1352426495 - ((2 * (v23 >> 24)) & 0xA138C7FE);
  v161 = (v102 ^ 0x69574F5) - ((2 * (v102 ^ 0x69574F5)) & 0xB000AF6CLL) - 0x77A1DD1CA7FFA84ALL;
  STACK[0x2648] = v161;
  LODWORD(v133) = *(&STACK[0x9680] + (BYTE1(v161) ^ 0x57));
  HIDWORD(v23) = ~v133;
  LODWORD(v23) = v133 ^ 0x509C6300;
  LODWORD(v41) = (v23 >> 8) ^ v41;
  v162 = STACK[0x2698];
  LODWORD(v133) = *(&STACK[0x9680] + ((*(STACK[0x2698] + (((v106 >> 22) & 0xFC | (v106 >> 30)) ^ 0xF1)) ^ 0x22) - 73));
  HIDWORD(v23) = v133 ^ 0x9C63FF;
  LODWORD(v23) = v133 ^ 0x50000000;
  LODWORD(v133) = (v23 >> 24) ^ v100;
  LODWORD(v100) = *(&STACK[0x9680] + (BYTE1(v160) ^ 0x1FLL));
  HIDWORD(v23) = ~v100;
  LODWORD(v23) = v100 ^ 0x509C6300;
  LODWORD(STACK[0x2668]) = v23 >> 8;
  STACK[0x2680] = (v106 >> 14) & 0xFC | (v106 >> 22) & 3;
  LODWORD(v100) = *(&STACK[0x9680] + (BYTE1(v106) ^ 0x10u));
  HIDWORD(v23) = ~v100;
  LODWORD(v23) = v100 ^ 0x509C6300;
  LODWORD(STACK[0x2678]) = v23 >> 8;
  LODWORD(v100) = *(&STACK[0x9680] + STACK[0x2700]);
  HIDWORD(v23) = ~v100;
  LODWORD(v23) = v100 ^ 0x509C6300;
  LODWORD(STACK[0x2230]) = v23 >> 8;
  LODWORD(v100) = *(&STACK[0x9680] + ((4 * (v161 >> 24)) ^ 0x221788B8D60));
  HIDWORD(v23) = v100 ^ 0x9C63FF;
  LODWORD(v23) = v100 ^ 0x50000000;
  LODWORD(STACK[0x2640]) = v23 >> 24;
  LODWORD(STACK[0x2650]) = v133 + 1352426495 - ((2 * v133) & 0xA138C7FE);
  LODWORD(v133) = *(&STACK[0x9680] + (v155 ^ 0xEFu));
  HIDWORD(v23) = v133 ^ 0x63FF;
  LODWORD(v23) = v133 ^ 0x509C0000;
  LODWORD(STACK[0x2638]) = v23 >> 16;
  LODWORD(v133) = *(&STACK[0x9680] + STACK[0x26F0]);
  HIDWORD(v23) = v133 ^ 0x63FF;
  LODWORD(v23) = v133 ^ 0x509C0000;
  LODWORD(STACK[0x2228]) = v23 >> 16;
  LODWORD(v133) = *(&STACK[0x9680] + STACK[0x2628]);
  HIDWORD(v23) = ~v133;
  LODWORD(v23) = v133 ^ 0x509C6300;
  LODWORD(v100) = v23 >> 8;
  LODWORD(v114) = STACK[0x2598];
  v163 = STACK[0x2858];
  v164 = *(STACK[0x2858] + (((HIBYTE(LODWORD(STACK[0x2598])) ^ 0x30) + 71) ^ 0x39));
  LODWORD(STACK[0x2628]) = v41 + 1352426495 - ((2 * v41) & 0xA138C7FE);
  LODWORD(v133) = *(&STACK[0x9680] + (v164 ^ 0x79));
  LODWORD(STACK[0x2250]) = v153;
  HIDWORD(v23) = v133 ^ 0x9C63FF;
  LODWORD(v23) = v133 ^ 0x50000000;
  LODWORD(v164) = v23 >> 24;
  v165 = (v153 ^ 0x379C6EEFu) - ((2 * (v153 ^ 0x379C6EEFu)) & 0x12EFAE416) + 0x27CD8CAB977D720BLL;
  LODWORD(v41) = *(&STACK[0x9680] + ((4 * (v165 >> 24)) ^ 0x9F3632AE5CLL));
  HIDWORD(v23) = v41 ^ 0x9C63FF;
  LODWORD(v23) = v41 ^ 0x50000000;
  LODWORD(v41) = v23 >> 24;
  LODWORD(v155) = *(&STACK[0x9680] + STACK[0x25C0]);
  LODWORD(v106) = STACK[0x25B0];
  HIDWORD(v23) = v155 ^ 0x9C63FF;
  LODWORD(v23) = v155 ^ 0x50000000;
  LODWORD(STACK[0x2718]) = v23 >> 24;
  LODWORD(v155) = *(&STACK[0x9680] + ((*(v162 + (((v114 >> 6) | (4 * (v114 & 0x3F))) ^ 0x9FLL)) ^ 0x22) - 73));
  HIDWORD(v23) = v155 ^ 0x63FF;
  LODWORD(v23) = v155 ^ 0x509C0000;
  LODWORD(STACK[0x2710]) = v100 + 1352426495 - ((2 * v100) & 0xA138C7FE);
  v166 = (v114 ^ 0x30B020F4) - ((2 * (v114 ^ 0x30B020F4)) & 0xBBFE3BC4) + 0x13DF9D705DFF1DE2;
  STACK[0x2280] = v166;
  LODWORD(v166) = *(&STACK[0x9680] + (BYTE1(v166) ^ v5));
  LODWORD(v100) = (v23 >> 16) ^ v164;
  HIDWORD(v23) = ~v166;
  LODWORD(v23) = v166 ^ 0x509C6300;
  LODWORD(v166) = v100 ^ (v23 >> 8);
  v167 = (v106 ^ 0x69574F5) - ((2 * (v106 ^ 0x69574F5)) & 0x13BBD7B08) - 0x2D4AFB366221427CLL;
  STACK[0x26F0] = v167;
  LODWORD(v100) = *(&STACK[0x9680] + ((4 * (v167 >> 24)) ^ 0x34AD4132674));
  HIDWORD(v23) = v100 ^ 0x9C63FF;
  LODWORD(v23) = v100 ^ 0x50000000;
  LODWORD(STACK[0x2700]) = (v23 >> 24) + 1352426495 - ((2 * (v23 >> 24)) & 0xA138C7FE);
  LODWORD(v100) = *(&STACK[0x9680] + (BYTE1(v167) ^ 0xBDLL));
  HIDWORD(v23) = ~v100;
  LODWORD(v23) = v100 ^ 0x509C6300;
  LODWORD(STACK[0x26E8]) = v23 >> 8;
  LODWORD(v100) = *(&STACK[0x9680] + (v106 ^ 0xF5u));
  HIDWORD(v23) = v100 ^ 0x63FF;
  LODWORD(v23) = v100 ^ 0x509C0000;
  LODWORD(STACK[0x26D8]) = v23 >> 16;
  LODWORD(STACK[0x2270]) = v166 + 1352426495 - ((2 * v166) & 0xA138C7FE);
  LODWORD(v166) = *(&STACK[0x9680] + (LODWORD(STACK[0x25B8]) ^ 0x69u));
  HIDWORD(v23) = v166 ^ 0x63FF;
  LODWORD(v23) = v166 ^ 0x509C0000;
  LODWORD(STACK[0x26C0]) = v23 >> 16;
  LODWORD(STACK[0x2268]) = v41 + 1352426495 - ((2 * v41) & 0xA138C7FE);
  LODWORD(v166) = *(&STACK[0x9680] + (v153 ^ 0xEFu));
  HIDWORD(v23) = v166 ^ 0x63FF;
  LODWORD(v23) = v166 ^ 0x509C0000;
  LODWORD(STACK[0x2260]) = v23 >> 16;
  LODWORD(v165) = *(&STACK[0x9680] + (BYTE1(v165) ^ 0x72));
  HIDWORD(v23) = ~v165;
  LODWORD(v23) = v165 ^ 0x509C6300;
  LODWORD(STACK[0x2258]) = v23 >> 8;
  LODWORD(v155) = STACK[0x25C8];
  LODWORD(v165) = *(&STACK[0x9680] + (LODWORD(STACK[0x25C8]) ^ 0x59u));
  HIDWORD(v23) = v165 ^ 0x63FF;
  LODWORD(v23) = v165 ^ 0x509C0000;
  LODWORD(v100) = v23 >> 16;
  LODWORD(v41) = LODWORD(STACK[0x25E0]) ^ v125;
  LODWORD(v165) = *(&STACK[0x9680] + ((LOBYTE(STACK[0x25E0]) ^ v125) ^ 0xB0u));
  HIDWORD(v23) = v165 ^ 0x63FF;
  LODWORD(v23) = v165 ^ 0x509C0000;
  LODWORD(v167) = v23 >> 16;
  LODWORD(v165) = LODWORD(STACK[0x25E8]) ^ v125;
  v168 = (v165 ^ 0x379C6EEF) - ((2 * (v165 ^ 0x379C6EEF)) & 0x85F265F8) - 0x61CFCFF8BD06CD04;
  v169 = v168;
  STACK[0x25B0] = v168;
  LODWORD(v166) = *(&STACK[0x9680] + (BYTE1(v168) ^ 0x32));
  HIDWORD(v23) = ~v166;
  LODWORD(v23) = v166 ^ 0x509C6300;
  LODWORD(v166) = v23 >> 8;
  v170 = (v155 ^ 0x34F17659) - ((2 * (v155 ^ 0x34F17659)) & 0x89D5518ALL) + 0x311BE10B44EAA8C5;
  STACK[0x25E0] = v170;
  LODWORD(v168) = *(&STACK[0x9680] + ((4 * (v170 >> 24)) ^ 0xC46F842D10));
  HIDWORD(v23) = v168 ^ 0x9C63FF;
  LODWORD(v23) = v168 ^ 0x50000000;
  LODWORD(v100) = (v23 >> 24) ^ v100;
  LODWORD(v168) = *(&STACK[0x9680] + (*(v159 + (((BYTE1(STACK[0x2610]) ^ 0xB2) + 71) ^ 0xF9)) ^ 0xALL));
  HIDWORD(v23) = ~v168;
  LODWORD(v23) = v168 ^ 0x509C6300;
  LODWORD(v168) = v23 >> 8;
  LODWORD(STACK[0x25E8]) = v167 + 1352426495 - ((2 * v167) & 0xA138C7FE);
  LODWORD(STACK[0x2610]) = v100 + 1352426495 - ((2 * v100) & 0xA138C7FE);
  LODWORD(v100) = *(&STACK[0x9680] + STACK[0x25D8]);
  HIDWORD(v23) = v100 ^ 0x63FF;
  LODWORD(v23) = v100 ^ 0x509C0000;
  LODWORD(v100) = v23 >> 16;
  LODWORD(v165) = *(&STACK[0x9680] + (v165 ^ 0xEFu));
  HIDWORD(v23) = v165 ^ 0x63FF;
  LODWORD(v23) = v165 ^ 0x509C0000;
  LODWORD(STACK[0x25C0]) = v23 >> 16;
  LODWORD(v165) = *(&STACK[0x9680] + ((4 * (v169 >> 24)) ^ 0x278C0C01D08));
  HIDWORD(v23) = v165 ^ 0x9C63FF;
  LODWORD(v23) = v165 ^ 0x50000000;
  LODWORD(STACK[0x25B8]) = v23 >> 24;
  LODWORD(v167) = *(&STACK[0x9680] + (BYTE1(v170) ^ 0xA8));
  LODWORD(v165) = v100 ^ v168;
  HIDWORD(v23) = ~v167;
  LODWORD(v23) = v167 ^ 0x509C6300;
  LODWORD(STACK[0x25D8]) = v23 >> 8;
  v171 = (v41 ^ 0x759EFB0) - ((2 * (v41 ^ 0x759EFB0)) & 0x1175E975ALL) + 0x12048BDD8BAF4BADLL;
  STACK[0x2538] = v171;
  LODWORD(v41) = *(&STACK[0x9680] + ((4 * (v171 >> 24)) ^ 0x48122F762CLL));
  HIDWORD(v23) = v41 ^ 0x9C63FF;
  LODWORD(v23) = v41 ^ 0x50000000;
  LODWORD(STACK[0x2598]) = v23 >> 24;
  LODWORD(v41) = *(&STACK[0x9680] + (BYTE1(v171) ^ 0x4BLL));
  HIDWORD(v23) = ~v41;
  LODWORD(v23) = v41 ^ 0x509C6300;
  LODWORD(STACK[0x2518]) = v23 >> 8;
  LODWORD(v41) = *(&STACK[0x9680] + STACK[0x25D0]);
  HIDWORD(v23) = v41 ^ 0x9C63FF;
  LODWORD(v23) = v41 ^ 0x50000000;
  LODWORD(STACK[0x25C8]) = v23 >> 24;
  LODWORD(STACK[0x2508]) = v166 + 1352426495 - ((2 * v166) & 0xA138C7FE);
  LODWORD(v58) = STACK[0x2458];
  LODWORD(v166) = LODWORD(STACK[0x2510]) ^ v125;
  v172 = (v58 ^ 0x30C60EAD) - ((2 * (v58 ^ 0x30C60EAD)) & 0xA1204772) + 0x79F90A65509023B9;
  STACK[0x2440] = v172;
  LODWORD(v41) = *(&STACK[0x9680] + ((4 * (v172 >> 24)) ^ 0x1E7E4299540));
  HIDWORD(v23) = v41 ^ 0x9C63FF;
  LODWORD(v23) = v41 ^ 0x50000000;
  LODWORD(v171) = v23 >> 24;
  v173 = (v166 ^ 0x268B52E0) - ((2 * (v166 ^ 0x268B52E0)) & 0x1C04E7E54) - 0x6A5988E31FD8C0D6;
  STACK[0x2278] = v173;
  LODWORD(v173) = *(&STACK[0x9680] + (BYTE1(v173) ^ 0x3FLL));
  HIDWORD(v23) = ~v173;
  LODWORD(v23) = v173 ^ 0x509C6300;
  LODWORD(v173) = v23 >> 8;
  LODWORD(v168) = *(&STACK[0x9680] + STACK[0x2488] + 0x180945A736110293);
  HIDWORD(v23) = v168 ^ 0x9C63FF;
  LODWORD(v23) = v168 ^ 0x50000000;
  LODWORD(v168) = v23 >> 24;
  v174 = (v152 ^ 0x379C6EEF) - ((2 * (v152 ^ 0x379C6EEF)) & 0x950D5A86) + 0x1550A1314A86AD43;
  STACK[0x25D0] = v174;
  LODWORD(v100) = *(&STACK[0x9680] + ((4 * (v174 >> 24)) ^ 0x554284C528));
  HIDWORD(v23) = v100 ^ 0x9C63FF;
  LODWORD(v23) = v100 ^ 0x50000000;
  LODWORD(v100) = v23 >> 24;
  v175 = *(v163 + (((BYTE1(STACK[0x2478]) ^ 0xCA) + 71) ^ 0x39));
  LODWORD(STACK[0x2450]) = v165 + 1352426495 - ((2 * v165) & 0xA138C7FE);
  LODWORD(v175) = *(&STACK[0x9680] + (v175 ^ 0x79));
  LODWORD(STACK[0x2488]) = v168 + 1352426495 - ((2 * v168) & 0xA138C7FE);
  HIDWORD(v23) = ~v175;
  LODWORD(v23) = v175 ^ 0x509C6300;
  LODWORD(STACK[0x2478]) = v23 >> 8;
  LODWORD(v165) = *(&STACK[0x9680] + ((*(STACK[0x2870] + (((v152 >> 6) & 0xFC | (v152 >> 14)) ^ 0x90)) ^ 0xC4) - 73));
  LODWORD(STACK[0x2510]) = v171 + 1352426495 - ((2 * v171) & 0xA138C7FE);
  HIDWORD(v23) = ~v165;
  LODWORD(v23) = v165 ^ 0x509C6300;
  v176 = (v166 >> 22) & 0xFC | (v166 >> 30);
  LODWORD(v166) = *(&STACK[0x9680] + (v166 ^ 0xE0u));
  LODWORD(v165) = (v23 >> 8) ^ v100;
  HIDWORD(v23) = v166 ^ 0x63FF;
  LODWORD(v23) = v166 ^ 0x509C0000;
  LODWORD(v166) = (v23 >> 16) ^ v173;
  LODWORD(v173) = *(&STACK[0x9680] + (v152 ^ 0xEFu));
  HIDWORD(v23) = v173 ^ 0x63FF;
  LODWORD(v23) = v173 ^ 0x509C0000;
  LODWORD(STACK[0x2468]) = v23 >> 16;
  LODWORD(v173) = *(&STACK[0x9680] + (v58 ^ 0xADu));
  HIDWORD(v23) = v173 ^ 0x63FF;
  LODWORD(v23) = v173 ^ 0x509C0000;
  LODWORD(STACK[0x2458]) = v23 >> 16;
  LODWORD(v173) = *(&STACK[0x9680] + STACK[0x2460]);
  HIDWORD(v23) = v173 ^ 0x63FF;
  LODWORD(v23) = v173 ^ 0x509C0000;
  LODWORD(STACK[0x2448]) = v23 >> 16;
  LODWORD(STACK[0x2240]) = v166 + 1352426495 - ((2 * v166) & 0xA138C7FE);
  LOBYTE(v166) = *(v162 + (v176 ^ 0xD4));
  LODWORD(STACK[0x2460]) = v165 + 1352426495 - ((2 * v165) & 0xA138C7FE);
  LODWORD(v165) = *(&STACK[0x9680] + ((v166 ^ 0x22) - 73));
  HIDWORD(v23) = v165 ^ 0x9C63FF;
  LODWORD(v23) = v165 ^ 0x50000000;
  LODWORD(STACK[0x2238]) = v23 >> 24;
  LODWORD(v165) = *(&STACK[0x9680] + ((((v58 ^ 0xEAD) - ((2 * (v58 ^ 0xEAD)) & 0x4772) + 9145) >> 8) ^ 0x23));
  HIDWORD(v23) = ~v165;
  LODWORD(v23) = v165 ^ 0x509C6300;
  LODWORD(STACK[0x2438]) = v23 >> 8;
  LODWORD(v165) = LODWORD(STACK[0x2470]) ^ v125;
  LODWORD(v173) = *(&STACK[0x9680] + ((LOBYTE(STACK[0x2470]) ^ v125) ^ 0xEFu));
  HIDWORD(v23) = v173 ^ 0x63FF;
  LODWORD(v23) = v173 ^ 0x509C0000;
  LODWORD(v173) = v23 >> 16;
  v177 = (v165 ^ 0x379C6EEF) - ((2 * (v165 ^ 0x379C6EEF)) & 0x150983964) - 0x5A4640757B3E34ELL;
  STACK[0x2390] = v177;
  LODWORD(v177) = *(&STACK[0x9680] + ((4 * (v177 >> 24)) ^ 0x3E96E6FE2A0));
  HIDWORD(v23) = v177 ^ 0x9C63FF;
  LODWORD(v23) = v177 ^ 0x50000000;
  LODWORD(v165) = *(&STACK[0x9680] + (*(v163 + (((BYTE1(v165) ^ 0x6E) + 71) ^ 0x39)) ^ 0x79));
  LODWORD(v177) = (v23 >> 24) ^ v173;
  HIDWORD(v23) = ~v165;
  LODWORD(v23) = v165 ^ 0x509C6300;
  LODWORD(STACK[0x2388]) = (v177 ^ (v23 >> 8)) + 1352426495 - ((2 * (v177 ^ (v23 >> 8))) & 0xA138C7FE);
  LODWORD(v165) = *(&STACK[0x9680] + STACK[0x2340]);
  HIDWORD(v23) = ~v165;
  LODWORD(v23) = v165 ^ 0x509C6300;
  LODWORD(v165) = v23 >> 8;
  LODWORD(v177) = *(&STACK[0x9680] + STACK[0x2338]);
  HIDWORD(v23) = v177 ^ 0x63FF;
  LODWORD(v23) = v177 ^ 0x509C0000;
  LODWORD(STACK[0x2470]) = ((v23 >> 16) ^ v165) + 1352426495 - ((2 * ((v23 >> 16) ^ v165)) & 0xA138C7FE);
  LODWORD(v165) = LODWORD(STACK[0x2330]) ^ LODWORD(STACK[0x2134]);
  v178 = (v165 ^ 0xC28EC6FF) - ((2 * (v165 ^ 0xC28EC6FF)) & 0x1A6678E2ELL);
  LODWORD(v165) = *(&STACK[0x9680] + ~v165);
  HIDWORD(v23) = v165 ^ 0x63FF;
  LODWORD(v23) = v165 ^ 0x509C0000;
  v179 = v178 - 0x437B41052CCC38E9;
  LODWORD(v173) = ((v23 >> 16) + 1352426495 - ((2 * (v23 >> 16)) & 0xA138C7FE)) ^ *(&STACK[0x9680] + (((v178 - 751581417) >> 16) ^ 0x33));
  v180 = STACK[0x2348];
  v181 = STACK[0x2808];
  LODWORD(v178) = *(&STACK[0x9680] + ((*(STACK[0x2808] + ((111 * (BYTE1(LODWORD(STACK[0x2348])) ^ 0xE6)) ^ 0x6ELL)) ^ 0x21) - 37));
  HIDWORD(v23) = ~v178;
  LODWORD(v23) = v178 ^ 0x509C6300;
  LODWORD(v168) = v23 >> 8;
  LODWORD(v176) = STACK[0x2358];
  v182 = (v176 ^ 0x263C185D) - ((2 * (v176 ^ 0x263C185D)) & 0x175BF93BELL) - 0x641F837E45203621;
  STACK[0x2340] = v182;
  LODWORD(v178) = *(&STACK[0x9680] + (BYTE1(v182) ^ 0xC9));
  HIDWORD(v23) = ~v178;
  LODWORD(v23) = v178 ^ 0x509C6300;
  LODWORD(v178) = v23 >> 8;
  LODWORD(v100) = *(&STACK[0x9680] + (v176 ^ 0x5Du));
  HIDWORD(v23) = v100 ^ 0x63FF;
  LODWORD(v23) = v100 ^ 0x509C0000;
  LODWORD(v100) = v23 >> 16;
  LODWORD(v176) = *(&STACK[0x9680] + ((4 * (v182 >> 24)) ^ 0x26F81F206E8));
  HIDWORD(v23) = v176 ^ 0x9C63FF;
  LODWORD(v23) = v176 ^ 0x50000000;
  LODWORD(STACK[0x2328]) = (v100 ^ v178 ^ (v23 >> 24)) + 1352426495 - ((2 * (v100 ^ v178 ^ (v23 >> 24))) & 0xA138C7FE);
  LODWORD(v176) = STACK[0x2368];
  v183 = (v176 ^ 0x5E1FF84A) - ((2 * (v176 ^ 0x5E1FF84A)) & 0x3511DFF4) - 0x76A97BA0E5771006;
  STACK[0x2318] = v183;
  LODWORD(v178) = *(&STACK[0x9680] + ((4 * (v183 >> 24)) ^ 0x2255A117C68));
  HIDWORD(v23) = v178 ^ 0x9C63FF;
  LODWORD(v23) = v178 ^ 0x50000000;
  LODWORD(STACK[0x2338]) = v23 >> 24;
  LODWORD(v178) = *(&STACK[0x9680] + (v176 ^ 0x4Au));
  HIDWORD(v23) = v178 ^ 0x63FF;
  LODWORD(v23) = v178 ^ 0x509C0000;
  LODWORD(v178) = v23 >> 16;
  LODWORD(v100) = *(&STACK[0x9680] + (BYTE1(v183) ^ 0xEFLL));
  HIDWORD(v23) = ~v100;
  LODWORD(v23) = v100 ^ 0x509C6300;
  LODWORD(STACK[0x2310]) = ((v23 >> 8) ^ v178) + 1352426495 - ((2 * ((v23 >> 8) ^ v178)) & 0xA138C7FE);
  LODWORD(v178) = *(&STACK[0x9680] + STACK[0x2378]);
  HIDWORD(v23) = ~v178;
  LODWORD(v23) = v178 ^ 0x509C6300;
  LODWORD(STACK[0x2330]) = v23 >> 8;
  LODWORD(STACK[0x2320]) = ((*(v181 + ((111 * (HIBYTE(*(&STACK[0x9680] + STACK[0x2380])) ^ 0x50)) ^ 0x6ELL)) ^ 0x21) - 37) | (*(&STACK[0x9680] + STACK[0x2380]) << 8);
  LODWORD(v178) = *(&STACK[0x9680] + (LODWORD(STACK[0x2360]) ^ 0xBu));
  HIDWORD(v23) = v178 ^ 0x63FF;
  LODWORD(v23) = v178 ^ 0x509C0000;
  LODWORD(STACK[0x2308]) = (v23 >> 16) + 1352426495 - ((2 * (v23 >> 16)) & 0xA138C7FE);
  v184 = (LODWORD(STACK[0x2370]) ^ 0xCBC482C2) - ((2 * (LODWORD(STACK[0x2370]) ^ 0xCBC482C2)) & 0x150FA2E8ELL) - 0x4DE1B1725782E8B9;
  LODWORD(v100) = *(&STACK[0x9680] + (BYTE1(v184) ^ 0x17));
  HIDWORD(v23) = ~v100;
  LODWORD(v23) = v100 ^ 0x509C6300;
  LODWORD(v100) = v23 >> 8;
  LODWORD(v176) = *(&STACK[0x9680] + (LODWORD(STACK[0x2370]) ^ 0xC2u));
  HIDWORD(v23) = v176 ^ 0x63FF;
  LODWORD(v23) = v176 ^ 0x509C0000;
  LODWORD(v176) = v23 >> 16;
  LODWORD(v114) = *(&STACK[0x9680] + ((4 * (v184 >> 24)) ^ 0x2C8793A36A0));
  HIDWORD(v23) = v114 ^ 0x9C63FF;
  LODWORD(v23) = v114 ^ 0x50000000;
  LODWORD(v100) = v176 ^ v100 ^ (v23 >> 24);
  LODWORD(v176) = *(&STACK[0x9680] + STACK[0x2350]);
  HIDWORD(v23) = v176 ^ 0x9C63FF;
  LODWORD(v23) = v176 ^ 0x50000000;
  LODWORD(STACK[0x2380]) = v23 >> 24;
  LODWORD(v114) = *(&STACK[0x9680] + (BYTE1(v179) ^ 0xC7));
  v185 = v100 + 1352426495 - ((2 * v100) & 0xA138C7FE);
  HIDWORD(v23) = ~v114;
  LODWORD(v23) = v114 ^ 0x509C6300;
  LODWORD(v173) = v173 ^ (v23 >> 8);
  LODWORD(v100) = *(&STACK[0x9680] + (v180 ^ 0xBu));
  HIDWORD(v23) = v100 ^ 0x63FF;
  LODWORD(v23) = v100 ^ 0x509C0000;
  LODWORD(STACK[0x2378]) = ((v23 >> 16) ^ v168) + 1352426495 - ((2 * ((v23 >> 16) ^ v168)) & 0xA138C7FE);
  LODWORD(v179) = *(&STACK[0x9680] + ((4 * (v179 >> 24)) ^ 0x2F212FBEB4CLL));
  HIDWORD(v23) = v179 ^ 0x9C63FF;
  LODWORD(v23) = v179 ^ 0x50000000;
  LODWORD(v179) = (v23 >> 24) + 196250221 - ((2 * (v23 >> 24)) & 0x176514DA);
  LODWORD(v100) = (v173 - (v173 ^ 0xBB28A6D ^ v179)) ^ ((v179 ^ 0xF44D7592) + 1);
  LODWORD(v179) = (v100 + 196250221 - ((2 * v100) & 0x176514DA)) ^ v179;
  v186 = (v180 ^ 0xF23EE60B) - ((2 * (v180 ^ 0xF23EE60B)) & 0x21D513A0) - 0x6D4299BBEF157630;
  STACK[0x2370] = v186;
  LODWORD(v100) = *(&STACK[0x9680] + ((4 * (v186 >> 24)) ^ 0x24AF5991040));
  HIDWORD(v23) = v100 ^ 0x9C63FF;
  LODWORD(v23) = v100 ^ 0x50000000;
  LODWORD(STACK[0x2368]) = v23 >> 24;
  LODWORD(STACK[0x2348]) = v179 + v173;
  v187 = STACK[0x22D0];
  LODWORD(v186) = STACK[0x22C8];
  LODWORD(v176) = STACK[0x22E8];
  LODWORD(v168) = *(&STACK[0x9680] + (LODWORD(STACK[0x22E8]) ^ 0x58u));
  v188 = (v186 ^ 0x97860BA0) - ((2 * (v186 ^ 0x97860BA0)) & 0x1A754BF40);
  HIDWORD(v23) = v168 ^ 0x63FF;
  LODWORD(v23) = v168 ^ 0x509C0000;
  LODWORD(v168) = v23 >> 16;
  LODWORD(STACK[0x2840]) = LODWORD(STACK[0x1E80]) ^ 0x21560060 ^ LODWORD(STACK[0x22E8]);
  LODWORD(v173) = *(&STACK[0x9680] + ((*(v162 + (((4 * (v186 & 0x3F)) | (v186 >> 6)) ^ 0xCE)) ^ 0x22) - 73));
  HIDWORD(v23) = v173 ^ 0x63FF;
  LODWORD(v23) = v173 ^ 0x509C0000;
  LODWORD(STACK[0x2218]) = (v23 >> 16) + 1352426495 - ((2 * (v23 >> 16)) & 0xA138C7FE);
  v189 = (v176 ^ 0xACCC7758) - ((2 * (v176 ^ 0xACCC7758)) & 0xE36C99C) + 0x262DE10071B64CELL;
  STACK[0x2360] = v189;
  LODWORD(v173) = *(&STACK[0x9680] + (BYTE1(v189) ^ 0x64));
  HIDWORD(v23) = ~v173;
  LODWORD(v23) = v173 ^ 0x509C6300;
  LODWORD(v173) = v23 >> 8;
  LODWORD(v175) = *(&STACK[0x9680] + STACK[0x2300]);
  HIDWORD(v23) = ~v175;
  LODWORD(v23) = v175 ^ 0x509C6300;
  LODWORD(v175) = v23 >> 8;
  LODWORD(v114) = *(&STACK[0x9680] + STACK[0x22F0]);
  LODWORD(v173) = v173 ^ v168;
  HIDWORD(v23) = v114 ^ 0x63FF;
  LODWORD(v23) = v114 ^ 0x509C0000;
  LODWORD(v168) = (v23 >> 16) ^ v175;
  v190 = v188 + 0x7FE9E1F2D3AA5FA0;
  STACK[0x2048] = v188 + 0x7FE9E1F2D3AA5FA0;
  LODWORD(v188) = *(&STACK[0x9680] + (((v188 + 24480) >> 8) ^ 0x5FLL));
  HIDWORD(v23) = ~v188;
  LODWORD(v23) = v188 ^ 0x509C6300;
  LODWORD(STACK[0x2200]) = v23 >> 8;
  v191 = (v187 ^ 0x379C6EEFu) - ((2 * (v187 ^ 0x379C6EEFu)) & 0x1033A735CLL) - 0x33ED6C747E62C652;
  STACK[0x22F0] = v191;
  LODWORD(v179) = *(&STACK[0x9680] + (BYTE1(v191) ^ 0x39));
  HIDWORD(v23) = ~v179;
  LODWORD(v23) = v179 ^ 0x509C6300;
  LODWORD(STACK[0x2300]) = (v23 >> 8) + 1352426495 - ((2 * (v23 >> 8)) & 0xA138C7FE);
  LODWORD(v179) = *(&STACK[0x9680] + STACK[0x22F8]);
  HIDWORD(v23) = v179 ^ 0x9C63FF;
  LODWORD(v23) = v179 ^ 0x50000000;
  LODWORD(v191) = v168 ^ (v23 >> 24);
  LODWORD(v179) = *(&STACK[0x9680] + ((4 * (v189 >> 24)) ^ 0x98B78401CLL));
  HIDWORD(v23) = v179 ^ 0x9C63FF;
  LODWORD(v23) = v179 ^ 0x50000000;
  LODWORD(v179) = v173 ^ (v23 >> 24);
  LODWORD(v173) = *(&STACK[0x9680] + ((4 * (((v187 ^ 0x379C6EEFu) - ((2 * (v187 ^ 0x379C6EEFu)) & 0x1033A735CuLL) - 0x33ED6C747E62C652) >> 24)) ^ 0x3304A4E2E04));
  HIDWORD(v23) = v173 ^ 0x9C63FF;
  LODWORD(v23) = v173 ^ 0x50000000;
  LODWORD(STACK[0x22E8]) = v23 >> 24;
  LODWORD(STACK[0x2358]) = v179 + 1352426495 - ((2 * v179) & 0xA138C7FE);
  LODWORD(v173) = *(&STACK[0x9680] + ((4 * (v190 >> 24)) ^ 0x1FFA787CB4CLL));
  LODWORD(v179) = (((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (BYTE3(v173) ^ 0x50)) ^ 0x9DLL))) ^ 0x8C) - 37) | (v173 << 8);
  LODWORD(v173) = *(&STACK[0x9680] + (v187 ^ 0xEFu));
  HIDWORD(v23) = v173 ^ 0x63FF;
  LODWORD(v23) = v173 ^ 0x509C0000;
  LODWORD(STACK[0x22D0]) = v23 >> 16;
  LODWORD(v114) = STACK[0x22E0];
  LODWORD(v168) = *(STACK[0x2860] + (((HIWORD(LODWORD(STACK[0x22E0])) ^ 0x67) - 34) ^ 0x5DLL));
  LODWORD(STACK[0x2350]) = v191 + 1352426495 - ((2 * v191) & 0xA138C7FE);
  HIDWORD(v23) = v168;
  LODWORD(v23) = (v168 ^ 0xFFFFFF9F) << 24;
  LODWORD(v173) = v23 >> 28;
  HIDWORD(v23) = ~v173;
  LODWORD(v23) = (v173 ^ 0x40) << 24;
  STACK[0x22F8] = (v23 >> 26);
  LODWORD(v159) = STACK[0x22D8];
  v192 = (v159 ^ 0x16FF7D37) - ((2 * (v159 ^ 0x16FF7D37)) & 0x15CDD6B3CLL) - 0x3E36354051914A62;
  STACK[0x22A0] = v192;
  LODWORD(v173) = *(&STACK[0x9680] + (BYTE1(v192) ^ 0xB5));
  HIDWORD(v23) = ~v173;
  LODWORD(v23) = v173 ^ 0x509C6300;
  LODWORD(v173) = v23 >> 8;
  v193 = (v114 ^ 0xF56709BB) - ((2 * (v114 ^ 0xF56709BB)) & 0x1F0BF9A4) + 0x1C9948B60F85FCD2;
  LODWORD(v168) = *(&STACK[0x9680] + ((4 * (v193 >> 24)) ^ 0x726522D83CLL));
  HIDWORD(v23) = v168 ^ 0x9C63FF;
  LODWORD(v23) = v168 ^ 0x50000000;
  v194 = STACK[0x22C0];
  LODWORD(STACK[0x22E0]) = (v23 >> 24) + 1352426495 - ((2 * (v23 >> 24)) & 0xA138C7FE);
  LODWORD(v168) = *(&STACK[0x9680] + (v159 ^ 0x37u));
  HIDWORD(v23) = v168 ^ 0x63FF;
  LODWORD(v23) = v168 ^ 0x509C0000;
  LODWORD(v168) = v23 >> 16;
  LODWORD(v193) = *(&STACK[0x9680] + (BYTE1(v193) ^ 0xFCLL));
  HIDWORD(v23) = ~v193;
  LODWORD(v23) = v193 ^ 0x509C6300;
  LODWORD(STACK[0x22C8]) = v23 >> 8;
  LODWORD(v193) = *(&STACK[0x9680] + (v194 ^ 0xEFu));
  LODWORD(v173) = v168 ^ v173;
  HIDWORD(v23) = v193 ^ 0x63FF;
  LODWORD(v23) = v193 ^ 0x509C0000;
  LODWORD(v193) = v23 >> 16;
  v195 = (v194 ^ 0x379C6EEFu) - ((2 * (v194 ^ 0x379C6EEFu)) & 0xC0B893E2) - 0x62B5E9F49FA3B60FLL;
  STACK[0x22C0] = v195;
  LODWORD(v168) = *(&STACK[0x9680] + ((4 * (v195 >> 24)) ^ 0x27528582D80));
  HIDWORD(v23) = v168 ^ 0x9C63FF;
  LODWORD(v23) = v168 ^ 0x50000000;
  LODWORD(STACK[0x22D8]) = v23 >> 24;
  LODWORD(v168) = *(&STACK[0x9680] + STACK[0x22B8]);
  HIDWORD(v23) = ~v168;
  LODWORD(v23) = v168 ^ 0x509C6300;
  LODWORD(v168) = v23 >> 8;
  LODWORD(v175) = *(&STACK[0x9680] + (LODWORD(STACK[0x22B0]) ^ 0x8Bu));
  HIDWORD(v23) = v175 ^ 0x63FF;
  LODWORD(v23) = v175 ^ 0x509C0000;
  LODWORD(STACK[0x22A8]) = v23 >> 16;
  LODWORD(v175) = *(&STACK[0x9680] + ((((v194 ^ 0x6EEF) - ((2 * (v194 ^ 0x6EEF)) & 0x93E2) + 18929) >> 8) ^ 0x49));
  HIDWORD(v23) = ~v175;
  LODWORD(v23) = v175 ^ 0x509C6300;
  LODWORD(STACK[0x22B8]) = v23 >> 8;
  LODWORD(v114) = *(&STACK[0x9680] + ((4 * (((v159 ^ 0x16FF7D37) - ((2 * (v159 ^ 0x16FF7D37)) & 0x15CDD6B3CuLL) - 0x3E36354051914A62) >> 24)) ^ 0x307272AFEB8));
  LODWORD(STACK[0x22B0]) = v193 + 1352426495 - ((2 * v193) & 0xA138C7FE);
  HIDWORD(v23) = v114 ^ 0x9C63FF;
  LODWORD(v23) = v114 ^ 0x50000000;
  LODWORD(v173) = v173 ^ (v23 >> 24);
  LODWORD(v193) = *(&STACK[0x9680] + STACK[0x2298]);
  HIDWORD(v23) = v193 ^ 0x9C63FF;
  LODWORD(v23) = v193 ^ 0x50000000;
  LODWORD(v193) = (v23 >> 24) ^ v168;
  LODWORD(STACK[0x2298]) = v173 + 1352426495 - ((2 * v173) & 0xA138C7FE);
  LODWORD(v173) = *(&STACK[0x9680] + STACK[0x2290]);
  HIDWORD(v23) = v173 ^ 0x63FF;
  LODWORD(v23) = v173 ^ 0x509C0000;
  LODWORD(STACK[0x2290]) = v23 >> 16;
  LODWORD(STACK[0x2288]) = v193 + 1352426495 - ((2 * v193) & 0xA138C7FE);
  v196 = STACK[0x1EC0];
  LODWORD(v162) = STACK[0x1D78];
  LODWORD(v138) = STACK[0x1D74];
  LODWORD(v125) = STACK[0x1EC8];
  LODWORD(v58) = STACK[0x1D70];
  LODWORD(v145) = STACK[0x1D60];
  v197 = STACK[0x2878];
  v198 = STACK[0x2818];
  v199 = STACK[0x2880];
  v200 = STACK[0x2810];
  LODWORD(v154) = (((LODWORD(STACK[0x1D78]) ^ 0x26184004) & (v196 & 0x2C10BAE8 ^ 0x9A18559C)) << STACK[0x2878]) ^ (((v125 & 0xAE92386A ^ 0xF9CB0C77) & (LODWORD(STACK[0x1D60]) ^ 0x10092C54u)) << STACK[0x2818]) ^ (((LODWORD(STACK[0x1D74]) ^ 0x96080914) & (v196 & 0x2C10BAE8 ^ 0x9A18559C)) >> STACK[0x2880]) ^ (((v125 & 0xAE92386A ^ 0xF9CB0C77) & (LODWORD(STACK[0x1D70]) ^ 0x95D1080C)) >> STACK[0x2810]);
  LODWORD(STACK[0x2208]) = v154 + 1661833526 - ((2 * v154) & 0xC61B226C);
  v201 = STACK[0x27D8];
  LODWORD(STACK[0x2220]) = (((v125 & 0xCE0BFF1C ^ 0xE90FEE9E) & (v58 ^ 0x8501C88C)) >> v199) ^ (((v125 & 0xCE0BFF1C ^ 0xE90FEE9E) & STACK[0x27D8]) << v198);
  LODWORD(v173) = v196 & 0x4C897D9E ^ 0xEA4DB345;
  v202 = v173 & (v145 ^ 0x9EE54);
  LOBYTE(v193) = v200;
  v203 = ((v138 ^ 0x86C90914) & v173) >> v200;
  LOBYTE(v200) = v197;
  LODWORD(STACK[0x2210]) = (v202 << v197) + v203;
  LODWORD(v202) = v125 & 0xC7A73B48 ^ 0xE5718CE4;
  v204 = STACK[0x27E0];
  v205 = (v202 & (v145 ^ 0x21AE44)) << v197;
  LOBYTE(v197) = v193;
  LODWORD(v202) = (((v202 & STACK[0x27E0]) >> v193) | v205) ^ (((STACK[0x1CC8] & (v196 & 0x4525B9CA ^ 0xE6B3D52F)) << v198) + (((v138 ^ 0x87810904) & (v196 & 0x4525B9CA ^ 0xE6B3D52F)) >> v199));
  LODWORD(STACK[0x21F0]) = v202 - 341994308 - ((2 * v202) & 0xD73B2978);
  v206 = STACK[0x2838];
  v207 = STACK[0x27D0];
  LODWORD(v202) = ((((v125 & 0x65ED6EE4 ^ 0x165EB7B2) & STACK[0x27D0]) >> v193) + (((v125 & 0x65ED6EE4 ^ 0x165EB7B2) & STACK[0x2838]) << v198)) ^ (((v201 & (v196 & 0xE76FEC66 ^ 0x35DEFA51)) << v200) | (((v196 & 0xE76FEC66 ^ 0x35DEFA51) & STACK[0x1E08]) >> v199));
  LODWORD(STACK[0x21C8]) = v202 + 1802332662 - ((2 * v202) & 0xD6DAD3EC);
  LODWORD(STACK[0x21E0]) = (((v196 & 0x1F5A2912 ^ 0x81F51D8B) & (v58 ^ 0x95F10888)) >> v193) + (((v196 & 0x1F5A2912 ^ 0x81F51D8B) & (v145 ^ 0x10292C10)) << v198);
  LODWORD(STACK[0x21D8]) = (((v125 & 0x5712615A ^ 0xAD8B31FF) & v207) >> v199) + (((v125 & 0x5712615A ^ 0xAD8B31FF) & STACK[0x1E68]) << v200);
  LODWORD(STACK[0x21F8]) = ((((v125 & 0x3D71D424 ^ 0x3298FA12) & v201) << v198) | (((v125 & 0x3D71D424 ^ 0x3298FA12) & v204) >> v193)) ^ ((((v196 & 0x75399C6C ^ 0x7EA5C25E) & v206) << v200) | (((v138 ^ 0x17890814) & (v196 & 0x75399C6C ^ 0x7EA5C25E)) >> v199));
  LODWORD(STACK[0x21E8]) = (((v196 & 0x2CD3FBB6 ^ 0x1A38F479) & v206) << v200) ^ (((v196 & 0x2CD3FBB6 ^ 0x1A38F479) & (v58 ^ 0x14F1C88C)) >> v199);
  LODWORD(STACK[0x21D0]) = (((v125 & 0x649BB3FE ^ 0x16C7C82D) & v201) << v198) + (((v125 & 0x649BB3FE ^ 0x16C7C82D) & STACK[0x1E58]) >> v193);
  LODWORD(STACK[0x21C0]) = (((v196 & 0xBB426DFA ^ 0x57E13B17) & (v58 ^ 0x95E1488C)) >> v199) ^ (((v196 & 0xBB426DFA ^ 0x57E13B17) & (v145 ^ 0x10216E54)) << v198);
  LODWORD(STACK[0x21B0]) = (((v125 & 0xF30A25B2 ^ 0x5B8F134B) & (v162 ^ 0x220B0000)) << v200) + (((v125 & 0xF30A25B2 ^ 0x5B8F134B) & v207) >> v193);
  LODWORD(STACK[0x21A8]) = (((v138 ^ 0x14C90114) & (v196 & 0x58D22758 ^ 0x643916E4)) >> v199) + (((v196 & 0x58D22758 ^ 0x643916E4) & (v145 ^ 0x10292654)) << v198);
  LODWORD(STACK[0x2198]) = (((v125 & 0x3CB6433C ^ 0x32F9208E) & v204) >> v193) | (((v125 & 0x3CB6433C ^ 0x32F9208E) & v201) << v200);
  LODWORD(v169) = v201;
  LODWORD(STACK[0x21A0]) = (((v125 & 0x84CEE122 ^ 0xC6ED7193) & (v138 ^ 0x86C90110)) >> v199) ^ (((v125 & 0x84CEE122 ^ 0xC6ED7193) & v201) << v200);
  LODWORD(STACK[0x20D0]) = (((v196 & 0xE0AA8546 ^ 0xB07D47E1) & v204) >> v193) + (((v196 & 0xE0AA8546 ^ 0xB07D47E1) & (v145 ^ 0x1029C644)) << v198);
  LODWORD(STACK[0x2098]) = (((v125 & 0xFD793CFC ^ 0xD2948EAE) & v206) << v200) ^ (((v125 & 0xFD793CFC ^ 0xD2948EAE) & (v138 ^ 0x97C90814)) >> v193) ^ ((((v162 ^ 0x41B4004) & (v196 & 0x991D5898 ^ 0xC497A4C4)) << v198) + (((v196 & 0x991D5898 ^ 0xC497A4C4) & (v58 ^ 0x9591C88C)) >> v199)) ^ *(&STACK[0x9680] + (BYTE2(v184) ^ 0x7DLL)) ^ v185;
  v208 = v204;
  LODWORD(STACK[0x2088]) = (((v138 ^ 0x87410910) & (v196 & 0xCA627150 ^ 0xAF5139E8)) >> v193) ^ (((v196 & 0xCA627150 ^ 0xAF5139E8) & (v145 ^ 0x216850)) << v198) ^ ((((v125 & 0xAE061534 ^ 0xF9011B8A) & (v162 ^ 0x26030004)) << v200) | (((v125 & 0xAE061534 ^ 0xF9011B8A) & v204) >> v199));
  LODWORD(STACK[0x2060]) = (((v162 ^ 0x2504000) & (v196 & 0x83A0B2C0 ^ 0xC3F059A0)) << v198) + (((v196 & 0x83A0B2C0 ^ 0xC3F059A0) & v204) >> v199);
  LODWORD(v201) = v145;
  LODWORD(STACK[0x2058]) = (((v125 & 0xB09381F2 ^ 0x78CBC12B) & v207) >> v193) ^ (((v125 & 0xB09381F2 ^ 0x78CBC12B) & (v145 ^ 0x1009C050)) << v200);
  LODWORD(STACK[0x2050]) = (((v138 ^ 0x87C90900) & (v196 & 0x8FB34AC0 ^ 0x49E8ADA0)) >> v199) + (((v196 & 0x8FB34AC0 ^ 0x49E8ADA0) & (v145 ^ 0x29EE40)) << v198);
  LODWORD(v159) = v58;
  LODWORD(STACK[0x2040]) = (((v125 & 0xBC8079F2 ^ 0xF2C02D2B) & v169) << v200) | (((v125 & 0xBC8079F2 ^ 0xF2C02D2B) & (v58 ^ 0x94C04888)) >> v193);
  LODWORD(STACK[0x2038]) = (((v196 & 0x902D0AC ^ 0x8C8168FE) & v206) << v200) ^ (((v196 & 0x902D0AC ^ 0x8C8168FE) & (v58 ^ 0x8581C88C)) >> v193) ^ ((((v125 & 0x3A31E39E ^ 0x3738F05D) & v207) >> v199) | (((v125 & 0x3A31E39E ^ 0x3738F05D) & (v162 ^ 0x26194004)) << v198));
  LODWORD(v58) = v207;
  LODWORD(STACK[0x2030]) = (((v125 & 0x8560A826 ^ 0xC6905411) & v206) << v198) ^ (((v125 & 0x8560A826 ^ 0xC6905411) & v207) >> v193) ^ (((v169 & (v196 & 0xB6539B14 ^ 0x5D78C48A)) << v200) + (((v196 & 0xB6539B14 ^ 0x5D78C48A) & (v159 ^ 0x9571C88C)) >> v199)) ^ *(&STACK[0x9680] + STACK[0x2630]) ^ LODWORD(STACK[0x2230]) ^ LODWORD(STACK[0x2228]) ^ LODWORD(STACK[0x2248]);
  LODWORD(STACK[0x2028]) = (((v162 ^ 0x22194000) & (v196 & 0x7311C0F2 ^ 0x7B99E09B)) << v198) | (((v196 & 0x7311C0F2 ^ 0x7B99E09B) & v204) >> v199);
  LODWORD(STACK[0x2020]) = (((v125 & 0x4A28F9CA ^ 0xAF3C6D27) & v206) << v200) + (((v125 & 0x4A28F9CA ^ 0xAF3C6D27) & v207) >> v193);
  LODWORD(STACK[0x2018]) = (((v196 & 0x123C233E ^ 0x8B2610B5) & v206) << v198) + (((v196 & 0x123C233E ^ 0x8B2610B5) & (v159 ^ 0x9130008C)) >> v199);
  LODWORD(STACK[0x2008]) = (((v125 & 0x2B051A06 ^ 0x3F829D01) & v169) << v200) + (((v125 & 0x2B051A06 ^ 0x3F829D01) & v207) >> v193);
  LODWORD(STACK[0x2010]) = (((v196 & 0xD2AB77AC ^ 0x2B7CBE7E) & v206) << v200) + (((v138 ^ 0x93C90914) & (v196 & 0xD2AB77AC ^ 0x2B7CBE7E)) >> v193);
  LODWORD(STACK[0x1FF8]) = (((v125 & 0xEB924E94 ^ 0xDF4B27DA) & v169) << v198) ^ (((v125 & 0xEB924E94 ^ 0xDF4B27DA) & (v159 ^ 0x95D1488C)) >> v199);
  LODWORD(v202) = v125 & 0x75102AB6 ^ 0x1E8815C9;
  STACK[0x2000] = v202 & (v138 ^ 0x17880914);
  LODWORD(STACK[0x1FF0]) = (((v162 ^ 0x26190004) & (v196 & 0x4C29138E ^ 0xEA3D884D)) << v200) ^ ((v202 & (v145 ^ 0x10082E54)) << v198) ^ (((v196 & 0x4C29138E ^ 0xEA3D884D) & (v159 ^ 0x8431888C)) >> v199);
  LODWORD(STACK[0x1FE0]) = (((v196 & 0x58B1B2A ^ 0x6CC84BF) & v206) << v200) ^ (((v196 & 0x58B1B2A ^ 0x6CC84BF) & v204) >> v193) ^ ((((v125 & 0x9D1383B2 ^ 0x428BC04B) & (v162 ^ 0x61B4000)) << v198) | (((v125 & 0x9D1383B2 ^ 0x428BC04B) & v207) >> v199));
  LODWORD(STACK[0x1FE8]) = ((STACK[0x1E78] & (v196 & 0xA6CDBEDA ^ 0x552FD3A7)) << v200) + (((v196 & 0xA6CDBEDA ^ 0x552FD3A7) & (v159 ^ 0x95E1C88C)) >> v199);
  LODWORD(STACK[0x1FD8]) = (((v125 & 0x3E552642 ^ 0x312A9363) & (v138 ^ 0x17490100)) >> v193) | (((v125 & 0x3E552642 ^ 0x312A9363) & (v145 ^ 0x1029A640)) << v198);
  LODWORD(STACK[0x2630]) = (((v162 ^ 0x6434000) & (v196 & 0x8BC6F672 ^ 0xCFA37F5B)) << v198) + (((v138 ^ 0x87C10910) & (v196 & 0x8BC6F672 ^ 0xCFA37F5B)) >> v199);
  LODWORD(STACK[0x2248]) = (((v125 & 0x135E6EEA ^ 0x8BA537B7) & (v145 ^ 0x10296E54)) << v200) | (((v125 & 0x135E6EEA ^ 0x8BA537B7) & (v159 ^ 0x91F1488C)) >> v193);
  LODWORD(STACK[0x2230]) = (((v196 & 0x6C83C538 ^ 0x7A40E7B4) & v204) >> v193) + ((STACK[0x1E10] & (v196 & 0x6C83C538 ^ 0x7A40E7B4)) << v198);
  LODWORD(STACK[0x2228]) = (((v125 & 0xF41B5DA0 ^ 0x5E07BF50) & (v138 ^ 0x96090910)) >> v199) | (((v125 & 0xF41B5DA0 ^ 0x5E07BF50) & (v145 ^ 0x1009EE50)) << v200);
  LODWORD(v170) = ((((v125 & 0xAE3DACFE ^ 0xF936D6AD) & v206) << v200) + (((v125 & 0xAE3DACFE ^ 0xF936D6AD) & v204) >> v199)) ^ (((STACK[0x1E00] & (v196 & 0xFA69F8AA ^ 0xB75DF4FF)) >> v193) | (((v162 ^ 0x26594004) & (v196 & 0xFA69F8AA ^ 0xB75DF4FF)) << v198)) ^ LODWORD(STACK[0x2268]) ^ LODWORD(STACK[0x2260]) ^ *(&STACK[0x9680] + ((*(v181 + ((111 * (HIWORD(LODWORD(STACK[0x2250])) ^ 0x9C)) ^ 0x6ELL)) ^ 0x21) - 37)) ^ LODWORD(STACK[0x2258]);
  LODWORD(STACK[0x1F40]) = v170;
  LODWORD(STACK[0x2270]) ^= ((((v125 & 0x25298F5E ^ 0xB6BCC6FD) & (v159 ^ 0x95B1C88C)) >> v193) + (((v125 & 0x25298F5E ^ 0xB6BCC6FD) & v169) << v200)) ^ (((v138 ^ 0x91C90904) & (v196 & 0x717DDB0A ^ 0xF8C7E48F)) >> v199) ^ (((v196 & 0x717DDB0A ^ 0xF8C7E48F) & (v145 ^ 0x1029EE04)) << v198) ^ *(&STACK[0x9680] + ~WORD1(STACK[0x2280]));
  LODWORD(STACK[0x2268]) = (((v196 & 0x6A49FCE2 ^ 0xFF6DF293) & v206) << v200) ^ (((v138 ^ 0x97490810) & (v196 & 0x6A49FCE2 ^ 0xFF6DF293)) >> v199);
  LODWORD(STACK[0x2260]) = (((v125 & 0x3E1DA8B6 ^ 0xB106D4C9) & v204) >> v193) + (((v125 & 0x3E1DA8B6 ^ 0xB106D4C9) & v169) << v198);
  LODWORD(STACK[0x2258]) = (((v125 & 0x6F62A518 ^ 0x9993539C) & v169) << v200) ^ (((v125 & 0x6F62A518 ^ 0x9993539C) & v204) >> v193);
  LODWORD(STACK[0x2250]) = (((v138 ^ 0x97890904) & (v196 & 0x3B36F14C ^ 0x97AB79EE)) >> v199) + (((v196 & 0x3B36F14C ^ 0x97AB79EE) & (v145 ^ 0x1029E844)) << v198);
  LODWORD(v202) = v196 & 0xB4508ACE ^ 0xDE784DAD;
  STACK[0x1FD0] = STACK[0x1EB0] & v202;
  STACK[0x1FC8] = (v138 ^ 0x96480904) & v202;
  LODWORD(STACK[0x1FC0]) = (((v125 & 0xD337EDA8 ^ 0x6BB9F754) & v204) >> v193) + (((v125 & 0xD337EDA8 ^ 0x6BB9F754) & v206) << v200);
  LODWORD(STACK[0x1FB8]) = (((v138 ^ 0x90480914) & (v196 & 0xD06CF27E ^ 0x285E7955)) >> v199) ^ (((v196 & 0xD06CF27E ^ 0x285E7955) & (v145 ^ 0x1028EA54)) << v198) ^ ((((v125 & 0xB70B9518 ^ 0xFD8FDB9C) & (v159 ^ 0x9581C88C)) >> v193) | (((v125 & 0xB70B9518 ^ 0xFD8FDB9C) & v169) << v200));
  LODWORD(STACK[0x1FB0]) = (((v125 & 0x389CB208 ^ 0x34C64904) & v207) >> v193) + (((v125 & 0x389CB208 ^ 0x34C64904) & v206) << v200);
  LODWORD(STACK[0x1FA8]) = ((v169 & (v196 & 0x5FFBD56E ^ 0xE184EFDD)) << v198) + (((v196 & 0x5FFBD56E ^ 0xE184EFDD) & v204) >> v199);
  LODWORD(STACK[0x1FA0]) = (((v196 & 0x1BC46114 ^ 0x87A2318A) & (v145 ^ 0x10206014)) << v200) + (((v196 & 0x1BC46114 ^ 0x87A2318A) & v204) >> v193);
  LOBYTE(v145) = v198;
  LODWORD(STACK[0x1F98]) = (((v125 & 0x7CA30672 ^ 0x12F3836B) & (v138 ^ 0x16C10110)) >> v199) | (((v125 & 0x7CA30672 ^ 0x12F3836B) & (v162 ^ 0x26530000)) << v198);
  LODWORD(STACK[0x1F90]) = (((v196 & 0xB2CD0C3E ^ 0xDB2F8A35) & v204) >> v193) + (((v162 ^ 0x224B0004) & (v196 & 0xB2CD0C3E ^ 0xDB2F8A35)) << v198);
  LODWORD(STACK[0x1F88]) = (((v125 & 0x1669A89A ^ 0x8D1CD4DF) & v206) << v200) ^ (((v125 & 0x1669A89A ^ 0x8D1CD4DF) & v207) >> v199);
  LODWORD(STACK[0x1F80]) = (((v125 & 0x5CBCACAA ^ 0x22F656D7) & v169) << v200) + (((v125 & 0x5CBCACAA ^ 0x22F656D7) & v207) >> v193);
  LODWORD(STACK[0x1F78]) = (((v196 & 0xF818080E ^ 0x34140C0D) & (v201 ^ 0x10080C04)) << v198) + (((v196 & 0xF818080E ^ 0x34140C0D) & v204) >> v199);
  LODWORD(STACK[0x1F70]) = *(&STACK[0x9680] + (BYTE2(STACK[0x2278]) ^ 0x27)) ^ ((((v125 & 0x4AEA1D96 ^ 0x2FDF1F59) & v206) << v200) | (((v125 & 0x4AEA1D96 ^ 0x2FDF1F59) & (v159 ^ 0x5F1088C)) >> v199)) ^ ((((v138 ^ 0x97490910) & (v196 & 0xEE4EB932 ^ 0x396F55BB)) >> v193) | (((v162 ^ 0x264B4000) & (v196 & 0xEE4EB932 ^ 0x396F55BB)) << v198)) ^ LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2238]);
  LODWORD(STACK[0x1F68]) = (((v196 & 0x506B20A8 ^ 0x685C90FC) & (v201 ^ 0x1029A054)) << v198) ^ (((v196 & 0x506B20A8 ^ 0x685C90FC) & (v159 ^ 0x1071808C)) >> v199) ^ ((((v125 & 0xF4CF840C ^ 0x5EEDC206) & v169) << v200) | (((v125 & 0xF4CF840C ^ 0x5EEDC206) & (v138 ^ 0x96C90004)) >> v193));
  LODWORD(STACK[0x1F60]) = (((v125 & 0x28B26C14 ^ 0x3CFB361A) & (v138 ^ 0x14C90814)) >> v193) + (((v125 & 0x28B26C14 ^ 0x3CFB361A) & v169) << v200);
  LODWORD(STACK[0x1F58]) = (((v196 & 0xF963BDC4 ^ 0xB4D0D322) & v204) >> v199) + (((v196 & 0xF963BDC4 ^ 0xB4D0D322) & v206) << v198);
  LODWORD(v146) = ((((v125 & 0x16FD5AA4 ^ 0xDD6BDD2) & v206) << v200) + (((v125 & 0x16FD5AA4 ^ 0xDD6BDD2) & STACK[0x1E20]) >> v199)) ^ ((((v196 & 0xC72C8B74 ^ 0xA5BE4CDA) & v204) >> v193) + (((v162 ^ 0x261A4004) & (v196 & 0xC72C8B74 ^ 0xA5BE4CDA)) << v198)) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2048]) ^ 0xAALL)) ^ LODWORD(STACK[0x2200]) ^ LODWORD(STACK[0x2218]) ^ v179;
  LODWORD(STACK[0x1F38]) = v146;
  LODWORD(STACK[0x2240]) = (((v196 & 0x6913A60C ^ 0x7C98D70E) & v204) >> v193) ^ (((v162 ^ 0x241B4004) & (v196 & 0x6913A60C ^ 0x7C98D70E)) << v198) ^ ((((v125 & 0xB8C277DC ^ 0xF4E32A3E) & (v138 ^ 0x94C10914)) >> v199) | (((v125 & 0xB8C277DC ^ 0xF4E32A3E) & v206) << v200));
  LODWORD(STACK[0x2238]) = (((v196 & 0x4FD65DE ^ 0x607B725) & (v159 ^ 0x4F1C08C)) >> v193) ^ (((v162 ^ 0x65B4004) & (v196 & 0x4FD65DE ^ 0x607B725)) << v198);
  LODWORD(STACK[0x2218]) = (((v125 & 0xD52CB40E ^ 0xEEBE4A05) & (v138 ^ 0x97880804)) >> v199) + (((v125 & 0xD52CB40E ^ 0xEEBE4A05) & (v201 ^ 0x1028EE04)) << v200);
  LODWORD(v202) = ((((v125 & 0x77AA0708 ^ 0x1D7F0284) & v169) << v198) + (((v125 & 0x77AA0708 ^ 0x1D7F0284) & (v138 ^ 0x17C90104)) >> v199)) ^ ((((v196 & 0xFC218C82 ^ 0xB231CAC3) & (v201 ^ 0x1021CE40)) << v200) + (((v196 & 0xFC218C82 ^ 0xB231CAC3) & v204) >> v193));
  LODWORD(v202) = (v202 - ((2 * v202) & 0x53DD2670) - 1443982536) ^ 0xA821878F ^ LODWORD(STACK[0x2618]);
  LODWORD(v207) = STACK[0x2134];
  LODWORD(v202) = (v202 - 999449517 - ((2 * v202) & 0x88DB38A6)) ^ LODWORD(STACK[0x2134]);
  LODWORD(STACK[0x2618]) = v202 - 230758901 - ((2 * v202) & 0xE47DCC16);
  LODWORD(STACK[0x2200]) = (((v125 & 0x2CFCBF28 ^ 0xBAD64E94) & v206) << v198) ^ (((v125 & 0x2CFCBF28 ^ 0xBAD64E94) & (v138 ^ 0x96C80914)) >> v199) ^ ((((v162 ^ 0x265B0000) & (v196 & 0xA77734A2 ^ 0x55CA9EF3)) << v200) | (((v196 & 0xA77734A2 ^ 0x55CA9EF3) & (v159 ^ 0x95F18880)) >> v193));
  LODWORD(v202) = (((v125 & 0xB5F63278 ^ 0x7E59096C) & v206) << v200) ^ (((v125 & 0xB5F63278 ^ 0x7E59096C) & v58) >> v193) ^ ((((v162 ^ 0x265B4000) & (v196 & 0x3E7DB9F2 ^ 0x9147D51B)) << v198) | (((v196 & 0x3E7DB9F2 ^ 0x9147D51B) & v204) >> v199));
  LODWORD(v202) = LODWORD(STACK[0x2840]) ^ (v202 + 602282065 - ((2 * v202) & 0x47CC30A2));
  LODWORD(v202) = (v202 - 999449517 - ((2 * v202) & 0x88DB38A6)) ^ v207;
  LODWORD(STACK[0x1F50]) = v202 - 1260883179 - ((2 * v202) & 0x69B0E62A);
  LODWORD(STACK[0x1F48]) = ((((v125 & 0x2C1D12B8 ^ 0x3A0699CC) & v58) >> v193) | (((v125 & 0x2C1D12B8 ^ 0x3A0699CC) & v206) << v200)) ^ ((((v162 ^ 0x265B4000) & (v196 & 0xA7969932 ^ 0xD5DB45BB)) << v198) | (((v196 & 0xA7969932 ^ 0xD5DB45BB) & (v159 ^ 0x95D1C888)) >> v199));
  LODWORD(v202) = 16843009 * ((v146 ^ v170) + 90) + 270669566 - ((33686018 * ((v146 ^ v170) + 90)) & 0x20442DFC);
  LODWORD(STACK[0x2048]) = v202;
  LODWORD(v202) = v202 ^ 0x102216FE;
  LODWORD(v207) = v202 ^ (2 * (v202 & LODWORD(STACK[0x27B8])));
  v209 = ((v207 & v58) - 0x1341B255E4534721 - ((2 * (v207 & v58)) & 0x375971BE)) ^ 0xECBE4DAA1BACB8DFLL;
  STACK[0x1F30] = v209;
  LODWORD(v138) = (v209 >> v199) - 822887548 - ((2 * (v209 >> v199)) & 0x9DE77708);
  v210 = ((v207 & v169) - ((2 * (v207 & v169)) & 0x152016EA4) - 0x647AEDD956FF48AELL) ^ 0xA900B752;
  LODWORD(v175) = (v210 << v200) + 516109499 - ((2 * (v210 << v200)) & 0x3D866976);
  LODWORD(v209) = LODWORD(STACK[0x2208]) ^ LODWORD(STACK[0x2768]) ^ 0x5C171FD4;
  LODWORD(STACK[0x1F00]) = v175 ^ 0x1EC334BB;
  LODWORD(STACK[0x1F10]) = v138 ^ 0xCEF3BB84;
  LODWORD(STACK[0x2208]) = v209 ^ ((v175 ^ 0x1EC334BB) + (v138 ^ 0xCEF3BB84));
  LODWORD(v209) = v202 ^ (2 * (v202 & LODWORD(STACK[0x27B0])));
  v211 = v209 & v206;
  STACK[0x2280] = v211;
  v212 = (v211 - ((2 * v211) & 0x16293A0C6) - 0x52D0CFBA4EB62F9DLL) ^ 0xB149D063;
  LODWORD(v181) = (v212 << v198) - 1906971976 - ((2 * (v212 << v198)) & 0x1CABD570);
  v213 = ((v209 & v208) - 0x5D98E88D5DE3B1FBLL - ((2 * (v209 & v208)) & 0x144389C0ALL)) ^ 0xA2671772A21C4E05;
  STACK[0x1F28] = v213;
  LODWORD(v125) = (v213 >> v197) - 1770463977 - ((2 * (v213 >> v197)) & 0x2CF1BA2E);
  LODWORD(v213) = (v212 << v200) - 1006720206 - ((2 * (v212 << v200)) & 0x87FD5664);
  LODWORD(STACK[0x1F18]) = v213;
  LODWORD(v212) = LODWORD(STACK[0x2210]) ^ LODWORD(STACK[0x2220]) ^ LODWORD(STACK[0x2848]) ^ 0x9C60FF06;
  LODWORD(STACK[0x2210]) = v125 ^ 0x9678DD17;
  LODWORD(STACK[0x1F08]) = v181 ^ 0x8E55EAB8;
  LODWORD(STACK[0x2848]) = v212 ^ ((v125 ^ 0x9678DD17) + (v181 ^ 0x8E55EAB8));
  LODWORD(STACK[0x2768]) = LODWORD(STACK[0x21F0]) ^ LODWORD(STACK[0x2770]);
  LODWORD(v170) = (v210 << v198) + 315664496 - ((2 * (v210 << v198)) & 0x25A150E0);
  LODWORD(v193) = LODWORD(STACK[0x21C8]) ^ LODWORD(STACK[0x2780]);
  LODWORD(v210) = (v209 & v169) - 1333992762 - ((2 * (v209 & v169)) & 0x60F9C58C);
  LODWORD(v159) = ((v210 ^ 0xB07CE2C6) << v198) - ((2 * ((v210 ^ 0xB07CE2C6) << v198)) & 0x38C5769C);
  v214 = v209 & v58;
  STACK[0x2278] = v214;
  v215 = (v214 - 0x39E938645B706622 - ((2 * v214) & 0x1491F33BCLL)) ^ 0xC616C79BA48F99DELL;
  LODWORD(v198) = (v215 >> v197) - 1657147874 - ((2 * (v215 >> v197)) & 0x3A73DC3C);
  LODWORD(v209) = LODWORD(STACK[0x21E0]) ^ 0xBBB9CD53 ^ LODWORD(STACK[0x21D8]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2660]) ^ 0x2DLL)) ^ LODWORD(STACK[0x2658]) ^ LODWORD(STACK[0x26A0]);
  LODWORD(v204) = v159 - 1671251122;
  LODWORD(v159) = (v159 - 1671251122) ^ 0x9C62BB4E;
  LODWORD(STACK[0x2220]) = v159;
  LODWORD(STACK[0x26A0]) = v209 ^ (v159 | v198 ^ 0x9D39EE1E);
  LODWORD(v209) = (v207 & v206) + 854291884 - ((2 * (v207 & v206)) & 0x65D6EB58);
  v216 = ((v207 & v208) - 0x6F024D649515EAEFLL - ((2 * (v207 & v208)) & 0xD5D42A22)) ^ 0x90FDB29B6AEA1511;
  LODWORD(v162) = (v216 >> v199) - 948086759 - ((2 * (v216 >> v199)) & 0x8EFAB032);
  LODWORD(STACK[0x2660]) = v162;
  LODWORD(v159) = (((v209 ^ 0x32EB75AC) << v200) ^ 0xBFD4F7B3) + 1076561997 + ((2 * ((v209 ^ 0x32EB75AC) << v200)) & 0x7FA9EF66);
  LODWORD(v207) = v162 ^ 0xC77D5819;
  v217 = LODWORD(STACK[0x21F8]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x26A8]) ^ 0x8ALL)) ^ LODWORD(STACK[0x26B0]) ^ LODWORD(STACK[0x26E0]);
  LODWORD(v169) = LODWORD(STACK[0x21E8]) ^ LODWORD(STACK[0x21D0]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x26D0]) ^ 0x35)) ^ LODWORD(STACK[0x26C8]) ^ LODWORD(STACK[0x2708]);
  LODWORD(STACK[0x26D0]) = LODWORD(STACK[0x21C0]) ^ LODWORD(STACK[0x21B0]) ^ *(&STACK[0x9680] + STACK[0x2788]) ^ LODWORD(STACK[0x26F8]);
  LODWORD(STACK[0x2788]) = LODWORD(STACK[0x21A8]) ^ 0x30E8A813 ^ LODWORD(STACK[0x2198]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2340]) ^ 0xDFLL)) ^ LODWORD(STACK[0x2328]) ^ (v198 ^ 0x9D39EE1E | v213 ^ 0xC3FEAB32);
  LODWORD(STACK[0x1F20]) = v138;
  LODWORD(STACK[0x26F8]) = v193 ^ v138 ^ v170;
  LODWORD(v193) = v170 ^ 0x12D0A870;
  LODWORD(STACK[0x2708]) = (v170 ^ 0x12D0A870 | v162 ^ 0xC77D5819) - ((2 * (v170 ^ 0x12D0A870 | v162 ^ 0xC77D5819)) & 0xF5FC8280);
  LODWORD(STACK[0x26C8]) = LODWORD(STACK[0x20D0]) ^ LODWORD(STACK[0x21A0]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2318]) ^ 0x88)) ^ LODWORD(STACK[0x2338]) ^ LODWORD(STACK[0x2310]);
  LODWORD(v170) = (v216 >> v197) + 2141238378 - ((2 * (v216 >> v197)) & 0xFF4168D4);
  LODWORD(v212) = STACK[0x2098];
  LODWORD(STACK[0x26E0]) = v169 ^ v138 ^ v175;
  LODWORD(STACK[0x26B0]) = (v212 + 516109499 - ((2 * v212) & 0x3D866976)) ^ v170 ^ v175;
  LODWORD(v169) = (v215 >> v199) - 552278605 - ((2 * (v215 >> v199)) & 0xBE29CB66);
  LODWORD(v213) = LODWORD(STACK[0x2088]) ^ *(&STACK[0x9680] + STACK[0x2760]) ^ LODWORD(STACK[0x2330]) ^ LODWORD(STACK[0x2308]) ^ LODWORD(STACK[0x2320]);
  LODWORD(v175) = STACK[0x1F00];
  LODWORD(STACK[0x2780]) = LODWORD(STACK[0x2060]) ^ 0xEF12BFBC ^ LODWORD(STACK[0x2058]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2670]) ^ 0x4BLL)) ^ LODWORD(STACK[0x2668]) ^ LODWORD(STACK[0x2638]) ^ LODWORD(STACK[0x26B8]) ^ ((v162 ^ 0xC77D5819) + LODWORD(STACK[0x1F00]));
  LODWORD(v58) = LODWORD(STACK[0x2050]) ^ LODWORD(STACK[0x2040]) ^ *(&STACK[0x9680] + BYTE2(STACK[0x2648])) ^ LODWORD(STACK[0x2640]) ^ LODWORD(STACK[0x2628]);
  LODWORD(v215) = LODWORD(STACK[0x2038]) ^ 0x6CFCDAE3 ^ LODWORD(STACK[0x2678]) ^ *(&STACK[0x9680] + ((*(STACK[0x2870] + (STACK[0x2680] ^ 0x82)) ^ 0xC4) - 73)) ^ LODWORD(STACK[0x2650]);
  LODWORD(v162) = (v162 ^ 0xC77D5819) + v159 - ((2 * ((v162 ^ 0xC77D5819) + v159)) & 0x7DCCABE) - 2081528481;
  LODWORD(STACK[0x2668]) = v217 ^ 0x3857A80C ^ v162;
  LODWORD(STACK[0x26B8]) = v215 ^ v162;
  LODWORD(v215) = LODWORD(STACK[0x2030]) - ((2 * LODWORD(STACK[0x2030])) & 0xBC68B184);
  LODWORD(v138) = STACK[0x1F10];
  LODWORD(STACK[0x2770]) = LODWORD(STACK[0x2028]) ^ 0xD941370C ^ LODWORD(STACK[0x2020]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x25B0]) ^ 0xF9)) ^ LODWORD(STACK[0x25C0]) ^ LODWORD(STACK[0x25B8]) ^ LODWORD(STACK[0x2508]) ^ (LODWORD(STACK[0x1F10]) + v159);
  LODWORD(v162) = LODWORD(STACK[0x2018]) ^ LODWORD(STACK[0x2008]) ^ LODWORD(STACK[0x25E8]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2538]) ^ 0xAFLL)) ^ LODWORD(STACK[0x2518]) ^ LODWORD(STACK[0x2598]);
  LODWORD(STACK[0x2628]) = LODWORD(STACK[0x2768]) ^ v125;
  LODWORD(STACK[0x26A8]) = v213 ^ v169 ^ v181;
  LODWORD(STACK[0x2680]) = v58 ^ v198 ^ v181;
  LODWORD(v206) = v181 ^ v125;
  LODWORD(STACK[0x2670]) = v162 ^ v204 ^ v125;
  LODWORD(v125) = v175;
  LODWORD(STACK[0x2678]) = LODWORD(STACK[0x2010]) ^ 0xD941370C ^ LODWORD(STACK[0x1FF8]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x25E0]) ^ 0xEALL)) ^ LODWORD(STACK[0x25D8]) ^ LODWORD(STACK[0x2610]) ^ (v175 | v207);
  LODWORD(v181) = STACK[0x1F08];
  LODWORD(STACK[0x2768]) = LODWORD(STACK[0x1FF0]) ^ (STACK[0x2000] >> v197) ^ 0xD941370C ^ *(&STACK[0x9680] + STACK[0x2758]) ^ LODWORD(STACK[0x25C8]) ^ LODWORD(STACK[0x2450]) ^ ((v198 ^ 0x9D39EE1E) + LODWORD(STACK[0x1F08]));
  LODWORD(v207) = ((v210 ^ 0xB07CE2C6) << v200) - 991418547 - ((2 * ((v210 ^ 0xB07CE2C6) << v200)) & 0x89D04E9A);
  LODWORD(STACK[0x2648]) = (LODWORD(STACK[0x2210]) | v207 ^ 0xC4E8274D) + 159409371 - ((2 * (LODWORD(STACK[0x2210]) | v207 ^ 0xC4E8274D)) & 0x1300C9B6);
  LODWORD(STACK[0x2640]) = LODWORD(STACK[0x1FE0]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2390]) ^ 0x4CLL)) ^ LODWORD(STACK[0x2388]);
  LODWORD(v175) = ((v209 ^ 0x32EB75AC) << v145) - ((2 * ((v209 ^ 0x32EB75AC) << v145)) & 0x5D48C252) + 782524713;
  LODWORD(STACK[0x2658]) = LODWORD(STACK[0x1FE8]) ^ 0x4D45518 ^ LODWORD(STACK[0x1FD8]) ^ LODWORD(STACK[0x2348]) ^ ((v175 ^ 0x2EA46129) + v138);
  LODWORD(v216) = v170 ^ 0x7FA0B46A;
  LODWORD(STACK[0x2760]) = LODWORD(STACK[0x1F58]) ^ 0x8D1CBA8B ^ LODWORD(STACK[0x1F60]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x22F0]) ^ 0x9DLL)) ^ LODWORD(STACK[0x22E8]) ^ LODWORD(STACK[0x22D0]) ^ LODWORD(STACK[0x2300]) ^ (v193 | v170 ^ 0x7FA0B46A);
  LODWORD(v210) = LODWORD(STACK[0x1F68]) ^ *(&STACK[0x9680] + STACK[0x2738]) ^ LODWORD(STACK[0x2488]) ^ LODWORD(STACK[0x2448]) ^ LODWORD(STACK[0x2478]);
  LODWORD(v193) = v159 ^ (LODWORD(STACK[0x1F70]) + 2141238378 - ((2 * LODWORD(STACK[0x1F70])) & 0xFF4168D4)) ^ v170;
  LODWORD(STACK[0x2650]) = v193 - 296188948 - ((2 * v193) & 0xDCB107D8);
  LODWORD(STACK[0x2758]) = LODWORD(STACK[0x1F78]) ^ 0xEE5883EC ^ LODWORD(STACK[0x1F80]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2440]) ^ 0x90)) ^ LODWORD(STACK[0x2458]) ^ LODWORD(STACK[0x2438]) ^ LODWORD(STACK[0x2510]) ^ (v169 ^ 0xDF14E5B3 | LODWORD(STACK[0x2220]));
  LODWORD(STACK[0x2738]) = LODWORD(STACK[0x1F90]) ^ 0xEE5883EC ^ LODWORD(STACK[0x1F88]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x25D0]) ^ 0x86)) ^ LODWORD(STACK[0x2468]) ^ LODWORD(STACK[0x2460]) ^ ((v170 ^ 0x7FA0B46A) + v159);
  LODWORD(STACK[0x2740]) = LODWORD(STACK[0x1FA0]) ^ 0xF6E7064C ^ LODWORD(STACK[0x1F98]) ^ *(&STACK[0x9680] + STACK[0x2740]) ^ LODWORD(STACK[0x2290]) ^ LODWORD(STACK[0x2288]) ^ (v170 ^ 0x7FA0B46A | v125);
  LODWORD(STACK[0x2638]) = LODWORD(STACK[0x1FA8]) ^ 0xF6E7064C ^ LODWORD(STACK[0x1FB0]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x22A0]) ^ 0x6ELL)) ^ LODWORD(STACK[0x2298]) ^ (v181 | v169 ^ 0xDF14E5B3);
  v218 = LODWORD(STACK[0x1FB8]) ^ 0xF6E7064C ^ LODWORD(STACK[0x22E0]) ^ LODWORD(STACK[0x22C8]) ^ LODWORD(STACK[0x22A8]) ^ *(&STACK[0x9680] + STACK[0x22F8]) ^ (v159 + (STACK[0x1F30] >> v197));
  LODWORD(v201) = (v215 + 1580488898) ^ v204;
  LODWORD(v159) = v210 ^ v204;
  v219 = (STACK[0x1FD0] << v145) ^ 0xF6E7064C ^ (STACK[0x1FC8] >> v199) ^ LODWORD(STACK[0x1FC0]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x22C0]) ^ 0x5CLL)) ^ LODWORD(STACK[0x22B0]) ^ LODWORD(STACK[0x22B8]) ^ LODWORD(STACK[0x22D8]) ^ ((STACK[0x1F28] >> v199) - ((2 * (STACK[0x1F28] >> v199)) & 0x38C5769C) - 1671251122) ^ v204;
  v220 = LODWORD(STACK[0x2250]) ^ 0x59927407 ^ LODWORD(STACK[0x2258]) ^ *(&STACK[0x9680] + STACK[0x2748]) ^ LODWORD(STACK[0x2718]) ^ LODWORD(STACK[0x26C0]) ^ LODWORD(STACK[0x2710]) ^ ((v207 ^ 0xC4E8274D) + (v198 ^ 0x9D39EE1E));
  v221 = LODWORD(STACK[0x2268]) ^ LODWORD(STACK[0x2260]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x26F0]) ^ 0xDELL)) ^ LODWORD(STACK[0x26E8]) ^ LODWORD(STACK[0x26D8]) ^ LODWORD(STACK[0x2700]) ^ v175 ^ LODWORD(STACK[0x2660]);
  v222 = v201 ^ v198;
  LODWORD(v214) = (LODWORD(STACK[0x2270]) - 1006720206 - ((2 * LODWORD(STACK[0x2270])) & 0x87FD5664)) ^ v198;
  LODWORD(v200) = STACK[0x1F18];
  LODWORD(v210) = LODWORD(STACK[0x2628]) ^ LODWORD(STACK[0x1F18]);
  LODWORD(STACK[0x2748]) = LODWORD(STACK[0x1F38]) ^ v169 ^ LODWORD(STACK[0x1F18]);
  v223 = v214 ^ v200;
  LODWORD(v199) = LODWORD(STACK[0x2708]) - 84000448;
  LODWORD(STACK[0x2710]) = LODWORD(STACK[0x26C8]) ^ 0xCA16E953 ^ v199;
  v224 = LODWORD(STACK[0x1F40]) ^ 0xA36C3547 ^ v199;
  LODWORD(STACK[0x2708]) = LODWORD(STACK[0x2230]) ^ 0x4D45518 ^ LODWORD(STACK[0x2228]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2750]) ^ 9)) ^ LODWORD(STACK[0x2380]) ^ LODWORD(STACK[0x2470]) ^ (v216 + (v175 ^ 0x2EA46129));
  LODWORD(STACK[0x2750]) = LODWORD(STACK[0x2630]) ^ 0x4D45518 ^ LODWORD(STACK[0x2248]) ^ *(&STACK[0x9680] + (BYTE2(STACK[0x2370]) ^ 0xEALL)) ^ LODWORD(STACK[0x2368]) ^ LODWORD(STACK[0x2378]) ^ (v207 ^ 0xC4E8274D | v169 ^ 0xDF14E5B3);
  v225 = *(&STACK[0x9680] + (BYTE2(STACK[0x2360]) ^ 0x1BLL)) ^ LODWORD(STACK[0x2240]) ^ LODWORD(STACK[0x2358]) ^ (v125 | v138);
  v226 = LODWORD(STACK[0x26D0]) ^ 0xA394FAFC ^ v206;
  LODWORD(STACK[0x2700]) = LODWORD(STACK[0x2238]) ^ LODWORD(STACK[0x2218]) ^ *(&STACK[0x9680] + STACK[0x2728]) ^ LODWORD(STACK[0x2350]) ^ 0x95318D24 ^ v206;
  LODWORD(v206) = STACK[0x1E98];
  v227 = LODWORD(STACK[0x2618]) ^ LODWORD(STACK[0x1E98]);
  LODWORD(STACK[0x2728]) = v159 ^ v169;
  v228 = (v227 - 991418547 - ((2 * v227) & 0x89D04E9A)) ^ v207 ^ 0xFAE52458 ^ v169;
  LODWORD(v213) = (((v175 ^ 0x2EA46129 | v216) ^ LODWORD(STACK[0x2200])) - 1260883179 - ((2 * ((v175 ^ 0x2EA46129 | v216) ^ LODWORD(STACK[0x2200]))) & 0x69B0E62A)) ^ LODWORD(STACK[0x2720]);
  v229 = LODWORD(STACK[0x2790]) ^ (v213 - 999449517 - ((2 * v213) & 0x88DB38A6));
  v230 = LODWORD(STACK[0x2640]) ^ 0xD5431C3 ^ LODWORD(STACK[0x2648]);
  v231 = LODWORD(STACK[0x1F50]) ^ LODWORD(STACK[0x2720]) ^ LODWORD(STACK[0x2648]);
  LODWORD(v213) = LODWORD(STACK[0x1F20]) ^ (LODWORD(STACK[0x1F48]) - 822887548 - ((2 * LODWORD(STACK[0x1F48])) & 0x9DE77708));
  LODWORD(v213) = (v213 - ((2 * v213) & 0x5D48C252) + 782524713) ^ v175;
  LODWORD(v213) = (v213 + 602282065 - ((2 * v213) & 0x47CC30A2)) ^ LODWORD(STACK[0x2840]);
  LODWORD(v213) = (v213 - 1260883179 - ((2 * v213) & 0x69B0E62A)) ^ LODWORD(STACK[0x2720]);
  LODWORD(v213) = (v213 - 230758901 - ((2 * v213) & 0xE47DCC16)) ^ v206;
  LODWORD(v213) = (v213 - 999449517 - ((2 * v213) & 0x88DB38A6)) ^ LODWORD(STACK[0x2134]);
  LODWORD(v213) = (v213 - 1030928115 - ((2 * v213) & 0x851A921A)) ^ LODWORD(STACK[0x24D4]);
  LODWORD(v213) = (v213 + 818286253 - ((2 * v213) & 0x618C1D5A)) ^ LODWORD(STACK[0x24D0]);
  v232 = v206 ^ LODWORD(STACK[0x2730]) ^ 0xD8663971 ^ (v213 - 230758901 - ((2 * v213) & 0xE47DCC16));
  v233 = (v229 ^ 0xDC119F4) + (v231 ^ 0x98064DB) - v225;
  v234 = v210 ^ 0x99169F1;
  v235 = LODWORD(STACK[0x26F8]) ^ 0x80340C20;
  v236 = STACK[0x2208];
  v237 = STACK[0x2848];
  if (v233)
  {
    v238 = STACK[0x2848];
  }

  else
  {
    v238 = STACK[0x2208];
  }

  LODWORD(STACK[0x2840]) = v238;
  if (v233)
  {
    v239 = v236;
  }

  else
  {
    v239 = v235;
  }

  LODWORD(STACK[0x26F8]) = v239;
  if (v233)
  {
    v240 = v234;
  }

  else
  {
    v240 = v237;
  }

  LODWORD(STACK[0x26F0]) = v240;
  if (v233)
  {
    v241 = v235;
  }

  else
  {
    v241 = v234;
  }

  LODWORD(STACK[0x26D8]) = v241;
  v242 = LODWORD(STACK[0x26E0]) ^ 0x6B89426C;
  if (v233)
  {
    v243 = v226;
  }

  else
  {
    v243 = LODWORD(STACK[0x26E0]) ^ 0x6B89426C;
  }

  LODWORD(STACK[0x26E8]) = v243;
  v244 = STACK[0x2668];
  if (v233)
  {
    v245 = v242;
  }

  else
  {
    v245 = STACK[0x2668];
  }

  LODWORD(STACK[0x26D0]) = v245;
  v246 = STACK[0x26A0];
  if (v233)
  {
    v247 = STACK[0x26A0];
  }

  else
  {
    v247 = v226;
  }

  LODWORD(STACK[0x26C8]) = v247;
  if (v233)
  {
    v248 = v244;
  }

  else
  {
    v248 = v246;
  }

  LODWORD(STACK[0x26E0]) = v248;
  if (v233)
  {
    v249 = v223 ^ 0xC4AB9A19;
  }

  else
  {
    v249 = v224;
  }

  LODWORD(STACK[0x2668]) = v249;
  if (v233)
  {
    v250 = v224;
  }

  else
  {
    v250 = v220;
  }

  if ((v233 & 1) == 0)
  {
    v220 = v221 ^ 0xB04B4D37;
  }

  LODWORD(STACK[0x2660]) = v220;
  if (v233)
  {
    v251 = v221 ^ 0xB04B4D37;
  }

  else
  {
    v251 = v223 ^ 0xC4AB9A19;
  }

  if (v233)
  {
    v252 = v218;
  }

  else
  {
    v252 = v219;
  }

  if (v233)
  {
    v253 = v219;
  }

  else
  {
    v253 = STACK[0x2740];
  }

  if (v233)
  {
    v254 = STACK[0x2638];
  }

  else
  {
    v254 = v218;
  }

  if (v233)
  {
    v255 = STACK[0x2740];
  }

  else
  {
    v255 = STACK[0x2638];
  }

  if (v233)
  {
    v256 = v231 ^ 0x2C71A530;
  }

  else
  {
    v256 = v229 ^ 0xD7CF27E0;
  }

  if (v233)
  {
    v257 = v229 ^ 0xD7CF27E0;
  }

  else
  {
    v257 = v228;
  }

  if (v233)
  {
    v258 = v232;
  }

  else
  {
    v258 = v231 ^ 0x2C71A530;
  }

  if (v233)
  {
    v259 = v228;
  }

  else
  {
    v259 = v232;
  }

  v260 = LODWORD(STACK[0x26B0]) ^ 0x4F481C79;
  v261 = LODWORD(STACK[0x26A8]) ^ 0xFDCA5818;
  v262 = LODWORD(STACK[0x2680]) ^ 0xFC7EBB1A;
  v263 = v222 ^ 0xB07DB22E;
  v264 = LODWORD(STACK[0x2670]) ^ 0xD35B5155;
  v265 = LODWORD(STACK[0x2748]) ^ 0xD950B0A;
  v266 = LODWORD(STACK[0x2728]) ^ 0xAD2EDD11;
  v267 = v225 ^ 0x8D1CBA8B;
  v268 = STACK[0x26B8];
  LODWORD(STACK[0x2460]) = v262;
  if (v233)
  {
    v269 = v268;
  }

  else
  {
    v269 = v262;
  }

  if (v233)
  {
    v268 = v263;
  }

  LODWORD(STACK[0x25E8]) = v268;
  if (v233)
  {
    v263 = STACK[0x2780];
    v270 = v264;
  }

  else
  {
    v270 = STACK[0x2770];
  }

  v271 = STACK[0x2678];
  if (v233)
  {
    v264 = STACK[0x2678];
  }

  LODWORD(STACK[0x25D8]) = v264;
  if (v233)
  {
    v272 = STACK[0x2768];
  }

  else
  {
    v272 = v271;
  }

  v273 = STACK[0x2658];
  v274 = STACK[0x2750];
  if (v233)
  {
    v275 = STACK[0x2750];
  }

  else
  {
    v275 = STACK[0x2658];
  }

  LODWORD(STACK[0x25D0]) = v275;
  LODWORD(STACK[0x2678]) = v230;
  if (v233)
  {
    v276 = v273;
  }

  else
  {
    v276 = v230;
  }

  v277 = STACK[0x2708];
  if ((v233 & 1) == 0)
  {
    v277 = v274;
  }

  v278 = STACK[0x2650];
  if (v233)
  {
    v279 = STACK[0x2650];
  }

  else
  {
    v279 = STACK[0x2758];
  }

  if (v233)
  {
    v278 = v266;
  }

  LODWORD(STACK[0x2618]) = v278;
  if (v233)
  {
    v266 = STACK[0x2738];
  }

  v280 = STACK[0x2700];
  if (v233)
  {
    v281 = v267;
  }

  else
  {
    v280 = v267;
    v281 = v265;
  }

  LODWORD(STACK[0x2610]) = v281;
  if ((v233 & 1) == 0)
  {
    v265 = STACK[0x2760];
  }

  v282 = STACK[0x2710];
  LODWORD(STACK[0x2518]) = v260;
  if (v233)
  {
    v283 = v260;
  }

  else
  {
    v283 = v282;
  }

  v284 = STACK[0x2788];
  LODWORD(STACK[0x2478]) = v261;
  if (v233)
  {
    v285 = v284;
  }

  else
  {
    v285 = v261;
  }

  LODWORD(STACK[0x2848]) = v233 - ((2 * v233 - 1461705620) & 0xD1A90AE2) - 1119578201;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v286 = v269;
  }

  else
  {
    v286 = v263;
  }

  LODWORD(STACK[0x26A0]) = v286;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) == 0)
  {
    v263 = v269;
  }

  LODWORD(STACK[0x2680]) = v263;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v287 = v280;
  }

  else
  {
    v287 = v265;
  }

  LODWORD(STACK[0x2748]) = v287;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v288 = v265;
  }

  else
  {
    v288 = v280;
  }

  LODWORD(STACK[0x2510]) = v288;
  v289 = LODWORD(STACK[0x2798]) ^ 0x31F6;
  LODWORD(STACK[0x2670]) = v233;
  v290 = STACK[0x26F8];
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) == 0)
  {
    v290 = STACK[0x26F0];
  }

  LODWORD(STACK[0x25E0]) = v290;
  v291 = STACK[0x2840];
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) == 0)
  {
    v291 = STACK[0x26D8];
  }

  LODWORD(STACK[0x25B8]) = v291;
  v292 = STACK[0x26E8];
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v292 = STACK[0x26E0];
  }

  LODWORD(STACK[0x26B8]) = v292;
  v293 = STACK[0x26D0];
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) == 0)
  {
    v293 = STACK[0x26C8];
  }

  LODWORD(STACK[0x2718]) = v293;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v294 = v285;
  }

  else
  {
    v294 = v283;
  }

  LODWORD(STACK[0x2720]) = v294;
  LODWORD(STACK[0x25C8]) = v270;
  LODWORD(STACK[0x25B0]) = v272;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v295 = v272;
  }

  else
  {
    v295 = v270;
  }

  LODWORD(STACK[0x2728]) = v295;
  LODWORD(STACK[0x2598]) = v276;
  LODWORD(STACK[0x2468]) = v277;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v296 = v277;
  }

  else
  {
    v296 = v276;
  }

  LODWORD(STACK[0x2470]) = v296;
  LODWORD(STACK[0x2650]) = v250;
  LODWORD(STACK[0x2648]) = v251;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v297 = v251;
  }

  else
  {
    v297 = v250;
  }

  LODWORD(STACK[0x26B0]) = v297;
  LODWORD(STACK[0x2658]) = v252;
  LODWORD(STACK[0x2638]) = v255;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v298 = v255;
  }

  else
  {
    v298 = v252;
  }

  LODWORD(STACK[0x2488]) = v298;
  LODWORD(STACK[0x2640]) = v253;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v299 = v254;
  }

  else
  {
    v299 = v253;
  }

  LODWORD(STACK[0x2508]) = v299;
  LODWORD(STACK[0x25C0]) = v279;
  LODWORD(STACK[0x2538]) = v266;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v300 = v266;
  }

  else
  {
    v300 = v279;
  }

  LODWORD(STACK[0x2730]) = v300;
  LODWORD(STACK[0x2630]) = v257;
  LODWORD(STACK[0x2628]) = v258;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v301 = v258;
  }

  else
  {
    v301 = v257;
  }

  LODWORD(STACK[0x26A8]) = v301;
  LODWORD(STACK[0x2798]) = v256;
  LODWORD(STACK[0x2750]) = v259;
  if (((v233 - ((2 * v233 + 108) & 0xE2) - 89) & 2) != 0)
  {
    v302 = v256;
  }

  else
  {
    v302 = v259;
  }

  LODWORD(STACK[0x26C0]) = v302;
  v303 = *(v1 + 8 * v289);
  LODWORD(STACK[0x2740]) = (v289 - 1648251409) & 0x623E3A1D;
  return v303();
}

uint64_t sub_244ADD080(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v13 = (((a2 ^ (2 * ((a2 ^ 0xF335415C) & v12)) ^ 0x5C) & STACK[0x27A0]) >> STACK[0x2880]) + ((a2 ^ (2 * ((a2 ^ 0xF335415C) & v12)) ^ 0xF335415C) << STACK[0x2878]);
  HIDWORD(v15) = *(STACK[0x2860] + ((((v13 - ((v13 << v11) & 0x1A) + 13) ^ LODWORD(STACK[0x24D4])) - 34) ^ 0x5DLL));
  LODWORD(v15) = (HIDWORD(v15) ^ 0xFFFFFF9F) << 24;
  v14 = v15 >> 28;
  HIDWORD(v15) = ~v14;
  LODWORD(v15) = (v14 ^ 0x40) << 24;
  v16 = *(*(&off_278E1E490 + v7) + (a2 ^ 0xF3354141) - 1);
  v17 = v16 ^ (2 * ((v16 ^ 0x180CD7E8) & STACK[0x27B0])) ^ 0x980CD7E8;
  v18 = ((v17 & STACK[0x27E0]) >> STACK[0x2880]) + ((v17 & STACK[0x2838]) << STACK[0x2818]);
  v19 = LODWORD(STACK[0x24D0]) ^ 0xADu ^ (v15 >> 26);
  *(&STACK[0x133D0] + v19) = a6 ^ (v18 + a4 - 2 * (v18 & a7));
  v20 = (*(*(&off_278E1E490 + v9) + (a2 ^ 0xF3354172) - 4) - 32597) ^ 0x4AE;
  v21 = (v20 - 445443787 - ((2 * v20) & 0x226A)) ^ LODWORD(STACK[0x23A8]);
  *(&STACK[0xEF40] + v19) = LODWORD(STACK[0x23B0]) ^ LODWORD(STACK[0x2134]) ^ 0x12C8692 ^ (v21 - 1742807206 - ((2 * v21) & 0x303DBEB4));
  return (*(v10 + 8 * ((38 * ((((a2 ^ 0xF335415C) - 214613668 - ((2 * (a2 ^ 0xF335415C) + 2) & 0xE66A82B8) + 1) ^ 0xF3354100) > 0xFF)) ^ v8)))();
}

uint64_t sub_244ADD26C@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x2790]) = v2 - a2;
  v6 = STACK[0x2788];
  if (STACK[0x2670])
  {
    v6 = STACK[0x2710];
  }

  v7 = STACK[0x2518];
  if (STACK[0x2670])
  {
    v7 = STACK[0x2478];
    v8 = STACK[0x2460];
  }

  else
  {
    v8 = STACK[0x2780];
  }

  if (STACK[0x2670])
  {
    v9 = STACK[0x2770];
  }

  else
  {
    v9 = STACK[0x2768];
  }

  if (STACK[0x2670])
  {
    v10 = STACK[0x2678];
  }

  else
  {
    v10 = STACK[0x2708];
  }

  if (STACK[0x2670])
  {
    v11 = STACK[0x2758];
  }

  else
  {
    v11 = STACK[0x2738];
  }

  if (STACK[0x2670])
  {
    v12 = STACK[0x2760];
  }

  else
  {
    v12 = STACK[0x2700];
  }

  v13 = (STACK[0x2848] & 2) == 0;
  v14 = STACK[0x2840];
  if ((STACK[0x2848] & 2) != 0)
  {
    v14 = STACK[0x26D8];
  }

  LODWORD(STACK[0x2518]) = v14;
  v15 = STACK[0x26F8];
  if (!v13)
  {
    v15 = STACK[0x26F0];
  }

  LODWORD(STACK[0x2478]) = v15;
  if (v13)
  {
    v16 = STACK[0x26D0];
  }

  else
  {
    v16 = STACK[0x26C8];
  }

  LODWORD(STACK[0x2378]) = v16;
  v17 = STACK[0x26E8];
  if (v13)
  {
    v17 = STACK[0x26E0];
  }

  LODWORD(STACK[0x2448]) = v17;
  if (v13)
  {
    v18 = v3;
  }

  else
  {
    v18 = a1;
  }

  if (v13)
  {
    v19 = STACK[0x25B0];
  }

  else
  {
    v19 = STACK[0x25C8];
  }

  LODWORD(STACK[0x2388]) = v19;
  v20 = STACK[0x2598];
  if (v13)
  {
    v20 = STACK[0x2468];
  }

  LODWORD(STACK[0x2468]) = v20;
  if (v13)
  {
    v21 = STACK[0x2648];
  }

  else
  {
    v21 = STACK[0x2650];
  }

  LODWORD(STACK[0x2780]) = v21;
  if (v13)
  {
    v22 = v4;
  }

  else
  {
    v22 = STACK[0x2640];
  }

  LODWORD(STACK[0x2438]) = v22;
  v23 = STACK[0x2658];
  if (v13)
  {
    v23 = STACK[0x2638];
    v24 = STACK[0x2538];
  }

  else
  {
    v24 = STACK[0x25C0];
  }

  LODWORD(STACK[0x2770]) = v24;
  if (v13)
  {
    v25 = STACK[0x2628];
  }

  else
  {
    v25 = STACK[0x2630];
  }

  if (v13)
  {
    v26 = v6;
  }

  else
  {
    v26 = v7;
  }

  LODWORD(STACK[0x2380]) = v26;
  if (v13)
  {
    v6 = v7;
  }

  LODWORD(STACK[0x2450]) = v6;
  if (v13)
  {
    v27 = v8;
  }

  else
  {
    v27 = STACK[0x25E8];
  }

  if (v13)
  {
    v28 = STACK[0x25E8];
  }

  else
  {
    v28 = v8;
  }

  v29 = STACK[0x25D8];
  if (v13)
  {
    v30 = STACK[0x25D8];
  }

  else
  {
    v30 = v9;
  }

  if (v13)
  {
    v29 = v9;
  }

  LODWORD(STACK[0x2708]) = v29;
  v31 = STACK[0x25D0];
  if (v13)
  {
    v32 = STACK[0x25D0];
  }

  else
  {
    v32 = v10;
  }

  LODWORD(STACK[0x2458]) = v32;
  if (v13)
  {
    v33 = v10;
  }

  else
  {
    v33 = v31;
  }

  v34 = STACK[0x2668];
  v35 = STACK[0x2660];
  if (v13)
  {
    v36 = STACK[0x2668];
  }

  else
  {
    v36 = STACK[0x2660];
  }

  LODWORD(STACK[0x2710]) = v36;
  if (v13)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  LODWORD(STACK[0x27A0]) = v37;
  if (v13)
  {
    v38 = v11;
  }

  else
  {
    v38 = STACK[0x2618];
  }

  if (v13)
  {
    v39 = STACK[0x2618];
  }

  else
  {
    v39 = v11;
  }

  v40 = STACK[0x2610];
  if (v13)
  {
    v41 = STACK[0x2610];
  }

  else
  {
    v41 = v12;
  }

  LODWORD(STACK[0x2840]) = v41;
  if (v13)
  {
    v40 = v12;
  }

  LODWORD(STACK[0x2460]) = v40;
  v42 = STACK[0x26A0];
  v43 = LODWORD(STACK[0x2740]) ^ 0x3D3;
  LODWORD(STACK[0x2098]) = v43;
  v44 = ((v42 ^ v28) - ((2 * (v42 ^ v28)) & 0xDE257F78) + v43 - 283993102) ^ v27;
  v45 = STACK[0x26B8];
  v46 = (v44 - 1145451181 - ((2 * v44) & 0x77739AA6)) ^ LODWORD(STACK[0x26B8]);
  v47 = (v46 + 820553747 - ((2 * v46) & 0x61D15026)) ^ v18;
  v48 = STACK[0x2680];
  v49 = (v47 - 283983940 - ((2 * v47) & 0xDE257F78)) ^ LODWORD(STACK[0x2680]);
  v50 = (v49 - 650037492 - ((2 * v49) & 0xB2826E18)) ^ v30;
  v51 = (v50 + 1502770183 - ((2 * v50) & 0xB324E80E)) ^ v21;
  v52 = (v51 + 81024280 - ((2 * v51) & 0x9A8AA30)) ^ v33;
  v53 = STACK[0x26B0];
  v54 = (v52 + 1502770183 - ((2 * v52) & 0xB324E80E)) ^ LODWORD(STACK[0x26B0]);
  v55 = (v54 - 296188948 - ((2 * v54) & 0xDCB107D8)) ^ v38;
  v56 = (v55 - 152631732 - ((2 * v55) & 0xEDCE0C98)) ^ v23;
  v57 = (v56 - 296188948 - ((2 * v56) & 0xDCB107D8)) ^ v24;
  v58 = (v57 - 296188948 - ((2 * v57) & 0xDCB107D8)) ^ v39;
  v59 = STACK[0x26A8];
  v60 = (v58 + 636600811 - ((2 * v58) & 0x4BE383D6)) ^ LODWORD(STACK[0x26A8]);
  LODWORD(STACK[0x25C0]) = v25 ^ v41 ^ (v60 - 1927497077 - ((2 * v60) & 0x1A397516));
  v61 = STACK[0x2090];
  v62 = LODWORD(STACK[0x2090]) ^ 0x38FBAB9E ^ v27;
  v63 = STACK[0x2778];
  v64 = LODWORD(STACK[0x2778]) ^ 0x96F2655C ^ v48;
  v65 = LODWORD(STACK[0x2778]) ^ 0x96F2655C ^ v42;
  v66 = LODWORD(STACK[0x2090]) ^ 0x60B240C6 ^ v38;
  LODWORD(STACK[0x2700]) = LODWORD(STACK[0x2090]) ^ 0x60B240C6 ^ v39;
  LODWORD(STACK[0x26F8]) = v61 ^ 0xB267EDBD ^ v59;
  if (v13)
  {
    v67 = STACK[0x2798];
  }

  else
  {
    v67 = STACK[0x2750];
  }

  LODWORD(STACK[0x2318]) = LODWORD(STACK[0x24E0]) ^ LODWORD(STACK[0x24E8]) ^ 0x1C6E237F ^ v67;
  v68 = v63 ^ 0x1C6E237F ^ v25;
  LODWORD(STACK[0x2738]) = LODWORD(STACK[0x24D0]) ^ LODWORD(STACK[0x24D4]) ^ LODWORD(STACK[0x26C0]);
  LODWORD(STACK[0x25D0]) = v18 ^ v63;
  LODWORD(STACK[0x25D8]) = v28 ^ v61;
  v69 = v61 ^ 0x7E19448;
  v70 = v61 ^ 0x7E19448 ^ v33;
  LODWORD(STACK[0x26D8]) = v70;
  v71 = ((v28 ^ v61 ^ v18 ^ v63 ^ 0x71F3D96D) - 243366160 - ((2 * (v28 ^ v61 ^ v18 ^ v63 ^ 0x71F3D96D)) & 0xE2FD0DE0)) ^ v70;
  v72 = v63 ^ 0xC626631A ^ v26;
  LODWORD(STACK[0x2630]) = v72;
  v73 = (v71 - 1433648533 - ((2 * v71) & 0x551884D6)) ^ v72;
  v74 = v61 ^ 0xF1C3537C ^ v30;
  v75 = v61 ^ 0xF1C3537C ^ v19;
  LODWORD(STACK[0x26D0]) = v75;
  v76 = (v73 - 624352304 - ((2 * v73) & 0xB59247A0)) ^ v75;
  LODWORD(STACK[0x26A8]) = v74;
  v77 = (v76 - 624352304 - ((2 * v76) & 0xB59247A0)) ^ v74;
  v78 = v61 ^ 0x9E947244 ^ v23;
  v79 = v61 ^ 0x9E947244 ^ v22;
  LODWORD(STACK[0x26C0]) = v79;
  v80 = (v77 - 1707592792 - ((2 * v77) & 0x34706750)) ^ v79;
  v81 = v61 ^ 0x6B52AEC8;
  v82 = v61;
  v83 = v61 ^ 0x6B52AEC8 ^ v45;
  LODWORD(STACK[0x2788]) = v81 ^ v16;
  v84 = (v80 + 580920379 - ((2 * v80) & 0x45404876)) ^ v81 ^ v16;
  LODWORD(STACK[0x26E8]) = v65;
  v85 = (v84 + 631395202 - ((2 * v84) & 0x4B44A704)) ^ v65;
  v86 = v63 ^ 0xC55B600A ^ LODWORD(STACK[0x2718]);
  LODWORD(STACK[0x2618]) = v86;
  v87 = (v85 + 580920379 - ((2 * v85) & 0x45404876)) ^ v86;
  v88 = v82 ^ 0x682FADD8 ^ LODWORD(STACK[0x2720]);
  LODWORD(STACK[0x26B8]) = v88;
  v89 = (v87 - 1433648533 - ((2 * v87) & 0x551884D6)) ^ v88;
  v90 = v63 ^ 0x5FCA9DBE ^ LODWORD(STACK[0x2708]);
  LODWORD(STACK[0x2650]) = v90;
  v91 = (v89 - 624352304 - ((2 * v89) & 0xB59247A0)) ^ v90;
  v92 = v63 ^ 0xA6F77E66 ^ v53;
  v93 = v63 ^ 0xA6F77E66 ^ LODWORD(STACK[0x2710]);
  LODWORD(STACK[0x26B0]) = v93;
  v94 = (v91 - 1557691645 - ((2 * v91) & 0x464F0606)) ^ v93;
  LODWORD(STACK[0x26F0]) = v62;
  v95 = (v94 + 631395202 - ((2 * v94) & 0x4B44A704)) ^ v62;
  v96 = v63 ^ 0x5FCA9DBE ^ LODWORD(STACK[0x2728]);
  LODWORD(STACK[0x2678]) = v96;
  v97 = (v95 - 624352304 - ((2 * v95) & 0xB59247A0)) ^ v96;
  v98 = STACK[0x2448];
  v99 = v63 ^ 0xC55B600A ^ LODWORD(STACK[0x2448]);
  LODWORD(STACK[0x26A0]) = v99;
  v100 = (v97 + 580920379 - ((2 * v97) & 0x45404876)) ^ v99;
  v101 = v82 ^ 0x8FEB0A4 ^ LODWORD(STACK[0x2780]);
  v102 = v82 ^ 0x8FEB0A4 ^ LODWORD(STACK[0x27A0]);
  LODWORD(STACK[0x2680]) = v102;
  v103 = (v100 - 1557691645 - ((2 * v100) & 0x464F0606)) ^ v102;
  LODWORD(STACK[0x2758]) = v83;
  v104 = (v103 + 580920379 - ((2 * v103) & 0x45404876)) ^ v83;
  LODWORD(STACK[0x2628]) = v64;
  v105 = (v104 + 631395202 - ((2 * v104) & 0x4B44A704)) ^ v64;
  v106 = STACK[0x2450];
  v107 = v82 ^ 0x682FADD8 ^ LODWORD(STACK[0x2450]);
  LODWORD(STACK[0x2660]) = v107;
  v108 = (v105 - 1433648533 - ((2 * v105) & 0x551884D6)) ^ v107;
  v109 = v63 ^ 0xCEBB8E04 ^ LODWORD(STACK[0x2770]);
  v110 = v63 ^ 0xCEBB8E04 ^ LODWORD(STACK[0x2730]);
  LODWORD(STACK[0x2668]) = v110;
  v111 = (v108 + 2090960010 - ((2 * v108) & 0xF9430914)) ^ v110;
  v112 = STACK[0x2458];
  LODWORD(STACK[0x2770]) = v69 ^ LODWORD(STACK[0x2458]);
  v113 = (v111 - 243366160 - ((2 * v111) & 0xE2FD0DE0)) ^ v69 ^ v112;
  v114 = STACK[0x2470];
  v115 = v63 ^ 0xA9E85A8A ^ LODWORD(STACK[0x2470]);
  LODWORD(STACK[0x2658]) = v115;
  LODWORD(STACK[0x26E0]) = v66;
  v116 = (((v113 - 243366160 - ((2 * v113) & 0xE2FD0DE0)) ^ v115) + 2090960010 - ((2 * ((v113 - 243366160 - ((2 * v113) & 0xE2FD0DE0)) ^ v115)) & 0xF9430914)) ^ v66;
  v117 = STACK[0x2508];
  v118 = v63 ^ 0x309DBC86 ^ LODWORD(STACK[0x2508]);
  LODWORD(STACK[0x2648]) = v118;
  v119 = (v116 - 1707592792 - ((2 * v116) & 0x34706750)) ^ v118;
  v120 = v82 ^ 0x92797145;
  v121 = v82 ^ 0x92797145 ^ LODWORD(STACK[0x2748]);
  LODWORD(STACK[0x2610]) = v121;
  v122 = (v119 - 315716498 - ((2 * v119) & 0xDA5D18DC)) ^ v121;
  v123 = v63 ^ 0x3C70BF87 ^ LODWORD(STACK[0x2840]);
  v124 = STACK[0x2510];
  v125 = v63 ^ 0x3C70BF87 ^ LODWORD(STACK[0x2510]);
  LODWORD(STACK[0x2768]) = v125;
  v126 = (v122 - 315716498 - ((2 * v122) & 0xDA5D18DC)) ^ v125;
  LODWORD(STACK[0x2780]) = v109;
  v127 = (v126 + 2090960010 - ((2 * v126) & 0xF9430914)) ^ v109;
  v128 = STACK[0x2488];
  LODWORD(STACK[0x2598]) = v63 ^ 0x309DBC86 ^ LODWORD(STACK[0x2488]);
  v129 = (v127 - 1707592792 - ((2 * v127) & 0x34706750)) ^ v63 ^ 0x309DBC86 ^ v128;
  LODWORD(STACK[0x2640]) = v68;
  v130 = (v129 + 1709009910 - ((2 * v129) & 0xCBBAD7EC)) ^ v68;
  LODWORD(STACK[0x26C8]) = v78;
  v131 = (v130 - 1707592792 - ((2 * v130) & 0x34706750)) ^ v78;
  LODWORD(STACK[0x2840]) = v92;
  v132 = (v131 - 1557691645 - ((2 * v131) & 0x464F0606)) ^ v92;
  v133 = (v132 + 2090960010 - ((2 * v132) & 0xF9430914)) ^ LODWORD(STACK[0x2700]);
  v134 = (v133 + 1709009910 - ((2 * v133) & 0xCBBAD7EC)) ^ LODWORD(STACK[0x26F8]);
  LODWORD(STACK[0x25E8]) = v123;
  v135 = (v134 - 315716498 - ((2 * v134) & 0xDA5D18DC)) ^ v123;
  v136 = STACK[0x2460];
  LODWORD(STACK[0x2760]) = v120 ^ LODWORD(STACK[0x2460]);
  v137 = (v135 - 315716498 - ((2 * v135) & 0xDA5D18DC)) ^ v120 ^ v136;
  LODWORD(STACK[0x2670]) = v101;
  v138 = (v137 - 1557691645 - ((2 * v137) & 0x464F0606)) ^ v101;
  v139 = v138 + 1709009910 - ((2 * v138) & 0xCBBAD7EC);
  v140 = (STACK[0x27D8] - ((2 * STACK[0x27D8]) & 0x2E5AAF9C) + 0x7CB879D2172D57CELL) ^ 0x172D57CE;
  STACK[0x2538] = v140;
  v141 = STACK[0x2818];
  v142 = (v140 << v141) - 1231752831 - ((2 * (v140 << v141)) & 0x6D29E302);
  v143 = STACK[0x2318];
  v144 = STACK[0x2468];
  LODWORD(v140) = v63 ^ 0xA9E85A8A ^ LODWORD(STACK[0x2468]);
  LODWORD(STACK[0x2638]) = v140;
  LODWORD(STACK[0x25B0]) = LODWORD(STACK[0x2738]) ^ v140 ^ ((v139 ^ v143) - 243366160 - ((2 * (v139 ^ v143)) & 0xE2FD0DE0));
  v145 = STACK[0x27E0] + 0x785D0B249A74B773 - ((2 * STACK[0x27E0]) & 0x134E96EE6);
  v146 = (STACK[0x27D0] - 0x1AD46FCB5C169648 - ((2 * STACK[0x27D0]) & 0x147D2D370)) ^ 0xE52B9034A3E969B8;
  STACK[0x2390] = v146;
  v147 = STACK[0x2810];
  LODWORD(STACK[0x2440]) = (v146 >> STACK[0x2810]) - 754520896 - ((2 * (v146 >> STACK[0x2810])) & 0xA60DD980);
  v148 = (STACK[0x2838] - ((2 * STACK[0x2838]) & 0xF2966282) + 0x6179B1CF794B3141) ^ 0x794B3141;
  STACK[0x25C8] = v148;
  v149 = STACK[0x2878];
  v150 = (v148 << v149) + 1251473880 - ((2 * (v148 << v149)) & 0x952FF3B0);
  v151 = STACK[0x2880];
  v152 = (STACK[0x2278] >> STACK[0x2880]) ^ (STACK[0x2280] << v141);
  v153 = v152 - 110202242 - ((2 * v152) & 0xF2DCE4FC);
  v154 = ((v98 ^ LODWORD(STACK[0x2378])) - 1145451181 - ((2 * (v98 ^ LODWORD(STACK[0x2378]))) & 0x77739AA6)) ^ LODWORD(STACK[0x2718]);
  v155 = (v154 + 820553747 - ((2 * v154) & 0x61D15026)) ^ LODWORD(STACK[0x2380]);
  v156 = (v155 + 820553747 - ((2 * v155) & 0x61D15026)) ^ LODWORD(STACK[0x2720]);
  v157 = (v156 + 820553747 - ((2 * v156) & 0x61D15026)) ^ v106;
  v158 = (v157 - 650037492 - ((2 * v157) & 0xB2826E18)) ^ LODWORD(STACK[0x2728]);
  v159 = (v158 - 650037492 - ((2 * v158) & 0xB2826E18)) ^ LODWORD(STACK[0x2388]);
  v160 = (v159 - 650037492 - ((2 * v159) & 0xB2826E18)) ^ LODWORD(STACK[0x2708]);
  v161 = (v160 + 81024280 - ((2 * v160) & 0x9A8AA30)) ^ v114;
  LODWORD(v148) = (v161 + 81024280 - ((2 * v161) & 0x9A8AA30)) ^ v112;
  LODWORD(v148) = (v148 + 81024280 - ((2 * v148) & 0x9A8AA30)) ^ v144;
  LODWORD(v148) = (v148 + 1502770183 - ((2 * v148) & 0xB324E80E)) ^ LODWORD(STACK[0x2710]);
  LODWORD(v148) = (v148 + 1502770183 - ((2 * v148) & 0xB324E80E)) ^ LODWORD(STACK[0x27A0]);
  LODWORD(v148) = (v148 - 152631732 - ((2 * v148) & 0xEDCE0C98)) ^ v128;
  LODWORD(v148) = (v148 - 152631732 - ((2 * v148) & 0xEDCE0C98)) ^ LODWORD(STACK[0x2438]);
  LODWORD(v148) = (v148 - 152631732 - ((2 * v148) & 0xEDCE0C98)) ^ v117;
  LODWORD(v148) = (v148 - 296188948 - ((2 * v148) & 0xDCB107D8)) ^ LODWORD(STACK[0x2730]);
  LODWORD(v148) = (v148 - 1927497077 - ((2 * v148) & 0x1A397516)) ^ LODWORD(STACK[0x2748]);
  LODWORD(v148) = (v148 - 1927497077 - ((2 * v148) & 0x1A397516)) ^ v124;
  LODWORD(v148) = (v148 - 1927497077 - ((2 * v148) & 0x1A397516)) ^ v136;
  v162 = STACK[0x2070];
  v163 = STACK[0x2068];
  v164 = STACK[0x2850];
  v165 = *(STACK[0x2850] + ((((LODWORD(STACK[0x2068]) - 99 * *(STACK[0x2070] + (LOBYTE(STACK[0xD6EC]) ^ 0x14))) ^ 0xAC) - 34) ^ 0x68));
  HIDWORD(v167) = v165 ^ 0x1D;
  LODWORD(v167) = v165 << 24;
  v166 = v167 >> 31;
  HIDWORD(v167) = v166 ^ 1;
  LODWORD(v167) = (v166 ^ 0xFFFFFFE7) << 24;
  v168 = v167 >> 26;
  v169 = STACK[0x2078];
  v170 = *(STACK[0x2078] + (LOBYTE(STACK[0xD6EF]) ^ 0x10));
  HIDWORD(v167) = v170 ^ 5;
  LODWORD(v167) = (v170 ^ 0x80) << 24;
  LOBYTE(v136) = v167 >> 29;
  v171 = LOBYTE(STACK[0xD6E9]);
  HIDWORD(v167) = v171 ^ 7;
  LODWORD(v167) = (v171 ^ 0x40) << 24;
  LODWORD(STACK[0x2710]) = LODWORD(STACK[0x2750]) ^ LODWORD(STACK[0x2798]) ^ (v148 + 636600811 - ((2 * v148) & 0x4BE383D6));
  v172 = STACK[0x2698];
  LODWORD(v148) = *(v164 + ((((v163 - 99 * *(v162 + (((*(STACK[0x2698] + ((v167 >> 30) ^ 0x4CLL)) ^ 0x22) - 73) ^ 0x69))) ^ 0x8F) - 34) ^ 0x68));
  HIDWORD(v167) = v148 ^ 0x1D;
  LODWORD(v167) = v148 << 24;
  LODWORD(v148) = v167 >> 31;
  HIDWORD(v167) = v148 ^ 1;
  LODWORD(v167) = (v148 ^ 0xFFFFFFE7) << 24;
  LODWORD(STACK[0x2720]) = v167 >> 26;
  LODWORD(STACK[0x2748]) = v136 ^ 0x87 | ((v168 ^ 0x10) << 24);
  v173 = v142 ^ 0xB694F181;
  v174 = v145 ^ 0x785D0B249A74B773;
  v175 = STACK[0x27B0];
  v176 = LODWORD(STACK[0x1EC8]) ^ 0x2EAA11D2;
  v177 = (LODWORD(STACK[0x1EC8]) ^ 0x2EAA11D0) & (LODWORD(STACK[0x4C4]) ^ 0x175508E8);
  v178 = LODWORD(STACK[0x4C4]) ^ 0x75508E9;
  LODWORD(STACK[0x2060]) = v178;
  v179 = (4 * v177) & v176;
  LODWORD(STACK[0x2088]) = v176;
  LODWORD(STACK[0x2058]) = v179;
  v180 = LODWORD(STACK[0x25B8]) ^ 0x5C171FD4;
  LODWORD(v148) = v150 ^ 0x4A97F9D8;
  LODWORD(STACK[0x2730]) = v150 ^ 0x4A97F9D8;
  v181 = STACK[0x2390] >> v151;
  STACK[0x2038] = v181;
  v182 = ((v180 & (v150 ^ 0x4A97F9D8u)) >> v149) ^ ((v180 & v181) << v151);
  v183 = STACK[0x27B8];
  v184 = (v182 - ((2 * v182) & 0xA28BEB9E) - 783944241) ^ (2 * (((v182 - ((2 * v182) & 0xA28BEB9E) - 783944241) ^ 0x5145F5CF) & STACK[0x27B8]));
  v185 = STACK[0x1EC0];
  v186 = (LODWORD(STACK[0x1EC0]) ^ 0x4E790DEA) & (4 * ((v184 ^ 0x1145F5CF) & STACK[0x27B8])) ^ v184;
  v187 = LODWORD(STACK[0x4F4]) ^ 0x73C86F5;
  LODWORD(v145) = (4 * ((v185 ^ 0xE790DE8) & (LODWORD(STACK[0x4F4]) ^ 0x273C86F4))) & (v185 ^ 0x4E790DEA);
  LODWORD(STACK[0x27A0]) = v186 ^ 0x5AF58421 ^ v145 & (16 * ((v186 ^ 0x145F5CF) & v187));
  v188 = LODWORD(STACK[0x25E0]) ^ 0x5C171FD4;
  v189 = (v188 & v148) >> v149;
  LODWORD(v148) = LODWORD(STACK[0x2440]) ^ 0xD306ECC0;
  LODWORD(STACK[0x2050]) = v148;
  v190 = v189 + ((v188 & v148) << v147);
  v191 = (v190 + 1297298740 - ((2 * v190) & 0x9AA66A68)) ^ (2 * (((v190 + 1297298740 - ((2 * v190) & 0x9AA66A68)) ^ 0x4D533534) & v175));
  v192 = v176 & (4 * ((v191 ^ 0xD533534) & v175)) ^ v191;
  LODWORD(STACK[0x2798]) = v192 ^ 0xC6E344DA ^ v179 & (16 * ((v192 ^ 0xD533534) & v178));
  v193 = LODWORD(STACK[0x2518]) ^ 0x5C171FD4;
  LODWORD(STACK[0x2040]) = v173;
  STACK[0x2728] = v174 >> v151;
  LODWORD(v148) = ((v193 & v173) >> v141) + ((v193 & (v174 >> v151)) << v151);
  LODWORD(v148) = (v148 + 335836180 - ((2 * v148) & 0x2808E828)) ^ (2 * (((v148 + 335836180 - ((2 * v148) & 0x2808E828)) ^ 0x14047414) & v183));
  LODWORD(STACK[0x2030]) = v185 ^ 0x4E790DEA;
  LODWORD(v148) = (v185 ^ 0x4E790DEA) & (4 * ((v148 ^ 0x14047414) & v183)) ^ v148;
  LODWORD(STACK[0x2028]) = v187;
  LODWORD(STACK[0x2020]) = v145;
  LODWORD(STACK[0x2750]) = v148 ^ 0x9FB405FA ^ v145 & (16 * ((v148 ^ 0x4047414) & v187));
  LODWORD(v148) = (((v163 - 99 * *(v162 + (LOBYTE(STACK[0xD6EA]) ^ 0x66))) ^ 0x5F) << 8) | (LODWORD(STACK[0x2720]) << 16);
  v194 = LOBYTE(STACK[0xD6EB]);
  HIDWORD(v167) = v194 ^ 7;
  LODWORD(v167) = (v194 ^ 0x40) << 24;
  v195 = *(v169 + (((*(v172 + ((v167 >> 30) ^ 0x4CLL)) ^ 0x22) - 73) ^ 0x3ELL));
  HIDWORD(v167) = v195 ^ 5;
  LODWORD(v167) = (v195 ^ 0x80) << 24;
  LOBYTE(v195) = v167 >> 29;
  v196 = *(v169 + (LOBYTE(STACK[0xD6E4]) ^ 0x23));
  HIDWORD(v167) = v196 ^ 5;
  LODWORD(v167) = (v196 ^ 0x80) << 24;
  v197 = v167 >> 29;
  LODWORD(v189) = LOBYTE(STACK[0xD6E7]);
  HIDWORD(v167) = v189 ^ 0xFFFFFFF7;
  LODWORD(v167) = (v189 ^ 0x80) << 24;
  LODWORD(v189) = *(v169 + (((*(v172 + ((v167 >> 30) ^ 0x4CLL)) ^ 0x22) - 73) ^ 0xB1));
  HIDWORD(v167) = v189 ^ 5;
  LODWORD(v167) = (v189 ^ 0x80) << 24;
  v198 = (v167 >> 29) | ((v197 ^ 0x93) << 24);
  LODWORD(v189) = *(v169 + (LOBYTE(STACK[0xD6EE]) ^ 0x14));
  HIDWORD(v167) = v189 ^ 5;
  LODWORD(v167) = (v189 ^ 0x80) << 24;
  LODWORD(v189) = *(STACK[0x2860] + ((((v167 >> 29) ^ 0x98) - 34) ^ 0x5DLL));
  HIDWORD(v167) = v189;
  LODWORD(v167) = (v189 ^ 0xFFFFFF9F) << 24;
  LODWORD(v189) = v167 >> 28;
  HIDWORD(v167) = ~v189;
  LODWORD(v167) = (v189 ^ 0x40) << 24;
  LOBYTE(v189) = v167 >> 26;
  LODWORD(v181) = *(v169 + (LOBYTE(STACK[0xD6E5]) ^ 0x78));
  HIDWORD(v167) = v181 ^ 5;
  LODWORD(v167) = (v181 ^ 0x80) << 24;
  LODWORD(v181) = *(STACK[0x2860] + ((((v167 >> 29) ^ 0xF2) - 34) ^ 0x5DLL));
  HIDWORD(v167) = v181;
  LODWORD(v167) = (v181 ^ 0xFFFFFF9F) << 24;
  LODWORD(v181) = v167 >> 28;
  HIDWORD(v167) = ~v181;
  LODWORD(v167) = (v181 ^ 0x40) << 24;
  LOBYTE(v181) = v167 >> 26;
  v199 = *(v169 + (LOBYTE(STACK[0xD6E0]) ^ 0x21));
  HIDWORD(v167) = v199 ^ 5;
  LODWORD(v167) = (v199 ^ 0x80) << 24;
  v200 = v198 & 0xFF00FFFF | (v181 << 16);
  LOBYTE(v181) = *(STACK[0x2830] + ((111 * ((v163 - 99 * *(v162 + (LOBYTE(STACK[0xD6E2]) ^ 0x3ELL))) ^ 0xAC)) ^ 0x9DLL));
  LODWORD(STACK[0x2748]) = STACK[0x2748] & 0xFF0000FF | (v189 << 8) | (((v163 - 99 * *(v162 + (LOBYTE(STACK[0xD6ED]) ^ 0x2DLL))) ^ 0x99) << 16);
  LODWORD(v189) = (((((LODWORD(STACK[0x27F8]) + 115 * v181) ^ 0x8C) - 37) ^ 0x84) << 8) | (((v167 >> 29) ^ 0x52) << 24);
  LODWORD(v181) = LOBYTE(STACK[0xD6E6]);
  HIDWORD(v167) = v181 ^ 9;
  LODWORD(v167) = v181 << 24;
  LODWORD(v181) = *(v169 + (((*(STACK[0x2870] + ((v167 >> 30) ^ 0x29)) ^ 0xC4) - 73) ^ 0xB1));
  HIDWORD(v167) = v181 ^ 5;
  LODWORD(v167) = (v181 ^ 0x80) << 24;
  LODWORD(STACK[0x2720]) = v200 | ((*(STACK[0x2858] + ((((v167 >> 29) ^ 0xC5) + 71) ^ 0x39)) ^ 0x79) << 8);
  v201 = *(v169 + (LOBYTE(STACK[0xD6E1]) ^ 0x91));
  HIDWORD(v167) = v201 ^ 5;
  LODWORD(v167) = (v201 ^ 0x80) << 24;
  LODWORD(v189) = v189 & 0xFF00FF00 | (((v167 >> 29) ^ 0x47) << 16) | (v163 - 99 * *(v162 + (LOBYTE(STACK[0xD6E3]) ^ 0xF3))) ^ 0x27;
  LODWORD(STACK[0x25E0]) = v189 + 1648751130 - 2 * (v189 & 0x6245F21E ^ ((v163 - 99 * *(v162 + (LOBYTE(STACK[0xD6E3]) ^ 0xF3))) ^ 0x27) & 4);
  v202 = *(STACK[0x2800] + (((v195 ^ 0x87) + 71) ^ 0xF9)) ^ 0xA8;
  LODWORD(v148) = v148 | (((v163 - 99 * *(v162 + (LOBYTE(STACK[0xD6E8]) ^ 0x63))) ^ 0xDB) << 24) | v202;
  LODWORD(STACK[0x2718]) = v148 - 2 * (v148 & 0x6C1F18AA ^ v202 & 8);
  LODWORD(v148) = v185 & 0x8B8B8B8A ^ 0xCFCCCC4F;
  v203 = STACK[0x27E0];
  v204 = STACK[0x1D78];
  v205 = (((v204 ^ 0x64B4004) & v148) - ((2 * ((v204 ^ 0x64B4004) & v148)) & 0x197121302) - 0x231C1660446C65FLL) ^ 0xFBB939A1;
  LODWORD(v162) = STACK[0x1EC8];
  v206 = STACK[0x27D0];
  v207 = STACK[0x2838];
  LODWORD(STACK[0x2708]) = (((STACK[0x1EC8] & 0x8B8B8B8A ^ 0xCF4FC447) & STACK[0x27D0]) >> v147) ^ (((STACK[0x1EC8] & 0x8B8B8B8A ^ 0xCF4FC447) & STACK[0x2838]) << v141);
  v208 = (((v148 & v203) >> v151) + 508429385 - ((2 * ((v148 & v203) >> v151)) & 0x3C9C0892)) ^ 0x1E4E0449;
  LODWORD(v189) = ((v205 << v149) + 1352336446 - ((2 * (v205 << v149)) & 0xA136087C)) ^ 0x509B043E;
  LODWORD(STACK[0x2510]) = v189 + v208;
  LODWORD(STACK[0x2518]) = v189 | v208;
  LODWORD(STACK[0x2508]) = (v205 << v141) ^ ((STACK[0x1E30] & v148) >> v147);
  LODWORD(v169) = STACK[0x1D60];
  LODWORD(v172) = STACK[0x1D70];
  LODWORD(STACK[0x2488]) = (((v185 & 0xD1D1D1D0 ^ 0xA8B9E928) & (LODWORD(STACK[0x1D60]) ^ 0x1029E850)) << v141) + (((v185 & 0xD1D1D1D0 ^ 0xA8B9E928) & (LODWORD(STACK[0x1D70]) ^ 0x91F1C888)) >> v151);
  LODWORD(v148) = v162 & 0xD1D1D1D0 ^ 0xE868F938;
  v209 = (((v148 & STACK[0x1E18]) >> v147) - 2099847805 - ((2 * ((v148 & STACK[0x1E18]) >> v147)) & 0x5ADBB06)) ^ 0x82D6DD83;
  LODWORD(STACK[0x2478]) = v209 + ((v148 & v207) << v141);
  LODWORD(v148) = (((v148 & (v204 ^ 0x20594000)) << v149) + 458268195 - ((2 * ((v148 & (v204 ^ 0x20594000)) << v149)) & 0x36A13C46)) ^ 0x1B509E23;
  LODWORD(STACK[0x2470]) = v209 + v148;
  LODWORD(STACK[0x2468]) = v209 | v148;
  LODWORD(v148) = ((v185 & 0xA4A4A4A4 ^ 0x567256F2) + 185922828 - ((2 * (v185 & 0xA4A4A4A4 ^ 0x567256F2)) & 0x429E808)) ^ 0xB14F50C;
  v210 = ((v148 & v203) - 0x36FF48B8B212AC0DLL - ((2 * (v148 & v203)) & 0x9BDAA7E6)) ^ 0xC900B7474DED53F3;
  LODWORD(STACK[0x2070]) = (v210 >> v151) | ((v148 & v207) << v141);
  v211 = STACK[0x27D8];
  LODWORD(STACK[0x2460]) = (v210 >> v147) ^ ((v148 & STACK[0x27D8]) << v149);
  LODWORD(v148) = ((v162 & 0xA4A4A4A4 ^ 0x76F252D2) - 1685281680 - ((2 * (v162 & 0xA4A4A4A4 ^ 0x76F252D2)) & 0x250948E0)) ^ 0x9B8CA470;
  v212 = ((v148 & v206) + 0x23B593A9B02BD9DELL - ((2 * (v148 & v206)) & 0x16057B3BCLL)) ^ 0x23B593A9B02BD9DELL;
  v213 = ((v148 & v207) - ((2 * (v148 & v207)) & 0x472CA038) - 0x474B2869DC69AFE4) ^ 0x2396501C;
  LODWORD(STACK[0x2458]) = (v212 >> v151) ^ (v213 << v141);
  LODWORD(STACK[0x2450]) = (v213 << v149) | (v212 >> v147);
  LODWORD(v213) = v185 & 0x67676766 ^ 0xF5D2B6D1;
  v214 = ((v213 & v207) - ((2 * (v213 & v207)) & 0x60E8A366) - 0x42638ECEC78BA645) ^ 0x387459BB;
  v215 = STACK[0x1D74];
  LODWORD(STACK[0x2448]) = (v214 << v149) + (((LODWORD(STACK[0x1D74]) ^ 0x97C10114) & v213) >> v147);
  v216 = STACK[0x25C0];
  LODWORD(v145) = STACK[0x25B0];
  v217 = STACK[0x2710];
  LODWORD(STACK[0x2438]) = (LODWORD(STACK[0x2710]) ^ 0xAF7F9038) + (LODWORD(STACK[0x25B0]) ^ LODWORD(STACK[0x25C0]) ^ 0x873AE98C);
  LODWORD(STACK[0x2440]) = (((v162 & 0x67676766 ^ 0x9591B2F1) & v211) << v149) | (((v162 & 0x67676766 ^ 0x9591B2F1) & (v215 ^ 0x97C10114)) >> v151);
  v218 = ((v213 & (v172 ^ 0x95F1C084)) + 0x26DAD88431DCD98ELL - ((2 * (v213 & (v172 ^ 0x95F1C084))) & 0x63A9A30C)) ^ 0x26DAD88431DCD98ELL;
  LODWORD(STACK[0x2390]) = (v218 >> v151) ^ ((STACK[0x1E60] & v213) << v141);
  LODWORD(STACK[0x2388]) = (v218 >> v147) + (v214 << v141);
  LODWORD(v213) = (LODWORD(STACK[0x1E40]) + 1263213930 - (STACK[0x1E38] & 0x949438D4)) ^ 0x4B4B1D6A;
  LODWORD(v218) = ((v213 & v203) >> v151) - ((2 * ((v213 & v203) >> v151)) & 0x1851F494);
  LODWORD(STACK[0x2380]) = ((v213 & v206) >> v147) | ((v213 & v207) << v149);
  v219 = ((v213 & v211) - ((2 * (v213 & v211)) & 0x18A2186B8) + 0x414C95DAC510C35CLL) ^ 0xC510C35CLL;
  LODWORD(v214) = (v218 + 204012106) ^ 0xC28FA4A;
  LODWORD(STACK[0x2378]) = (v219 << v141) | v214;
  LODWORD(STACK[0x2370]) = v214 | (v219 << v149);
  LODWORD(STACK[0x2368]) = STACK[0x1E28] ^ (STACK[0x1E48] << v141);
  LODWORD(STACK[0x2360]) = (v145 ^ 0xD7BA864B) - (v216 ^ v217);
  LODWORD(v219) = v185 & 0x98989898 ^ 0x445444C4;
  v220 = ((v219 & (v169 ^ 0x1008CC54)) - ((2 * (v219 & (v169 ^ 0x1008CC54))) & 0x129801920) + 0x390560D295C32CB1) ^ 0x95C32CB1;
  LODWORD(v214) = (((v215 ^ 0x94C80814) & v219) >> v147) | (v220 << v141);
  LODWORD(STACK[0x2710]) = v214 + 1305552634 - ((2 * v214) & 0x9BA24DF4);
  LODWORD(STACK[0x2358]) = (((v162 & 0x98989898 ^ 0x44C45CDC) & v203) >> v151) | (((v162 & 0x98989898 ^ 0x44C45CDC) & (v204 ^ 0x4584004u)) << v149);
  LODWORD(STACK[0x2350]) = (v220 << v149) + ((v219 & v203) >> v147);
  LODWORD(v220) = v162 & 0x39393938 ^ 0xB4B48D8C;
  LODWORD(STACK[0x2348]) = ((v220 & (v172 ^ 0x95B1888C)) >> v151) + ((v220 & v207) << v141);
  LODWORD(v219) = STACK[0x1E50];
  LODWORD(STACK[0x2340]) = (((v185 & 0x39393938 ^ 0x94A595B4) & v207) << v149) + (((v185 & 0x39393938 ^ 0x94A595B4) & v203) >> v151);
  v221 = ((v220 & v219) + 0x9302CC837A86C79 - ((2 * (v220 & v219)) & 0x6B505870)) ^ 0x9302CC837A86C79;
  LODWORD(v220) = (((v220 & v211) << v141) ^ 0xEBFB7DCF) + 335836180 + ((2 * ((v220 & v211) << v141)) & 0xD7F6FB9E) + 3613;
  LODWORD(STACK[0x2338]) = (v221 >> v151) + v220;
  LODWORD(STACK[0x2068]) = (v221 >> v147) + v220;
  LODWORD(v214) = v185 & 0x33333332 ^ 0x9BA898BB;
  LODWORD(v221) = v162 & 0x33333332 ^ 0xBBBB888B;
  LODWORD(v206) = ((v221 & (v215 ^ 0x93890910)) >> v147) - 1283547523 - ((2 * ((v221 & (v215 ^ 0x93890910)) >> v147)) & 0x66FD3CFA);
  v222 = ((v221 & (v169 ^ 0x1029AA10)) << v141) - 373383618 - ((2 * ((v221 & (v169 ^ 0x1029AA10)) << v141)) & 0xD37D3C7C);
  LODWORD(STACK[0x2330]) = (v206 ^ 0xB37E9E7D) + (v222 ^ 0xE9BE9E3E);
  LODWORD(v218) = (((v204 ^ 0x221B0000) & v214) << v149) - ((2 * (((v204 ^ 0x221B0000) & v214) << v149)) & 0xCDFF0C64) - 419461582;
  LODWORD(STACK[0x2320]) = v218 ^ (((v214 & (v172 ^ 0x91B18888)) >> v151) - 419461582 - ((2 * ((v214 & (v172 ^ 0x91B18888)) >> v151)) & 0xCDFF0C64));
  LODWORD(STACK[0x2328]) = v218 ^ ((((v215 ^ 0x93890910) & v214) >> v147) - 419461582 - ((2 * (((v215 ^ 0x93890910) & v214) >> v147)) & 0xCDFF0C64));
  LODWORD(v214) = v185 & 0x64646464 ^ 0x76523652;
  LODWORD(v189) = ((((v204 ^ 0x26524004) & v214) << v149) ^ 0x7FFEFDF8) - 2147417592 + ((2 * (((v204 ^ 0x26524004) & v214) << v149)) & 0xFFFDFBF0);
  v223 = (((v162 & 0x64646464 ^ 0x16123272) & (v204 ^ 0x26524004u)) << v141) | (((v162 & 0x64646464 ^ 0x16123272) & (v172 ^ 0x14704004)) >> v151);
  v224 = v214 & (v172 ^ 0x14704004);
  v225 = v214 & (v169 ^ 0x10206654);
  v226 = (((v215 ^ 0x16400014) & v214) + 0x3E9341849C203F66 - ((2 * ((v215 ^ 0x16400014) & v214)) & 0x28406CCC)) ^ 0x3E9341849C203F66;
  v227 = (v226 >> v147) ^ (v225 << v149);
  LODWORD(v174) = v189 + (v224 >> v151);
  LODWORD(v145) = v189 + (v226 >> v151);
  LODWORD(v226) = ((v162 & 0x48484848 ^ 0x2C2C2464) + 539202786 + ((2 * (v162 & 0x48484848 ^ 0x2C2C2464)) & 0x80 ^ 0xBFBFF7BF) + 1) ^ 0x202394E2;
  v228 = ((v226 & v207) - ((2 * (v226 & v207)) & 0x169700F90) - 0x2FA9DF6C4B47F838) ^ 0xB4B807C8;
  v229 = (v228 << v141) + ((v226 & v203) >> v147);
  LODWORD(v221) = ((v185 & 0x48484848 ^ 0x6C6C2C6C) - 1398622889 - ((2 * (v185 & 0x48484848 ^ 0x6C6C2C6C)) & 0x58404888)) ^ 0xACA2B557;
  LODWORD(v220) = ((v221 & v203) >> v147) - ((2 * ((v221 & v203) >> v147)) & 0xD8AABBC4) - 329949726;
  LODWORD(v189) = v220 ^ 0xEC555DE2 | ((v221 & v211) << v141);
  LODWORD(v224) = (v228 << v149) ^ ((v226 & STACK[0x27D0]) >> v151);
  LODWORD(STACK[0x2018]) = v220 ^ (((v221 & v207) << v141) - 329949726 - ((2 * ((v221 & v207) << v141)) & 0xD8AABBC4));
  LODWORD(v203) = STACK[0x2090];
  LODWORD(v221) = ((STACK[0x2730] & (v203 ^ 0xF24B47A0)) >> v149) | ((STACK[0x2050] & (v203 ^ 0xF24B47A0)) << v147);
  LODWORD(v221) = (v221 + 1553359229 - ((2 * v221) & 0xB92CC2FA)) ^ (2 * (((v221 + 1553359229 - ((2 * v221) & 0xB92CC2FA)) ^ 0x5C96617D) & LODWORD(STACK[0x27B0])));
  LODWORD(v221) = LODWORD(STACK[0x2088]) & (4 * ((v221 ^ 0x1C96617D) & LODWORD(STACK[0x27B0]))) ^ v221;
  LODWORD(STACK[0x2010]) = v221 ^ 0xAB7519E6 ^ LODWORD(STACK[0x2058]) & (16 * ((v221 ^ 0xC96617D) & LODWORD(STACK[0x2060])));
  LODWORD(v207) = STACK[0x2728] - 764660469 - ((2 * STACK[0x2728]) & 0xA4D86A16);
  LODWORD(v162) = (STACK[0x25C8] << v141) + 2080212583 - ((2 * (STACK[0x25C8] << v141)) & 0xF7FB0CCE);
  HIDWORD(v167) = LODWORD(STACK[0x2134]) ^ 0x938112;
  LODWORD(v167) = LODWORD(STACK[0x2134]) ^ 0xA5000000;
  LODWORD(v221) = v167 >> 24;
  HIDWORD(v167) = LODWORD(STACK[0x2134]) ^ 0x8112;
  LODWORD(v167) = LODWORD(STACK[0x2134]) ^ 0xA5930000;
  LODWORD(v220) = v167 >> 16;
  LODWORD(v228) = LODWORD(STACK[0x2134]) ^ 0xB19250EC;
  LODWORD(v167) = __ROR4__(v228, 8);
  LODWORD(STACK[0x2008]) = v220 ^ v228 ^ ((v221 ^ v167 ^ 0xFE1401D1) - ((2 * (v221 ^ v167 ^ 0xFE1401D1)) & 0x2803A3FC) + 335663614);
  LODWORD(STACK[0x2000]) = v222 ^ v206;
  LODWORD(STACK[0x25D0]) ^= 0xC626631A;
  LODWORD(STACK[0x25D8]) ^= 0x38FBAB9Eu;
  LODWORD(STACK[0x25C8]) = LODWORD(STACK[0x2738]) ^ 0xB267EDBD;
  LODWORD(STACK[0x25B8]) = LODWORD(STACK[0x2748]) ^ 0xD090AB10;
  LODWORD(STACK[0x25B0]) = LODWORD(STACK[0x2720]) ^ 0xC39B408A;
  LODWORD(STACK[0x25C0]) = LODWORD(STACK[0x2718]) - 333506398;
  STACK[0x1FF8] = STACK[0x2898] - 0x6434497BACB1A4A1;
  LODWORD(STACK[0x1FF0]) = 1355895845 * LODWORD(STACK[0x2438]) + 1355895845;
  LODWORD(STACK[0x1FE8]) = 1178596821 * LODWORD(STACK[0x2360]);
  LODWORD(STACK[0x1FE0]) = v207 ^ 0xD26C350B;
  LODWORD(STACK[0x1FD8]) = v162 ^ 0x7BFD8667;
  STACK[0x1FD0] = STACK[0x2538] << v149;
  STACK[0x1FC8] = STACK[0x28E0] - 0x4DBF7CD8CD2951E1;
  STACK[0x1FC0] = STACK[0x2928] - 0x39CE2A58EF18D71BLL;
  v230 = *(v5 + 8 * LODWORD(STACK[0x2740]));
  LODWORD(STACK[0x1FB8]) = v153 ^ LODWORD(STACK[0x2510]);
  LODWORD(STACK[0x1FB0]) = v153 ^ LODWORD(STACK[0x2708]);
  LODWORD(STACK[0x1FA8]) = v153 ^ LODWORD(STACK[0x2518]);
  LODWORD(STACK[0x1FA0]) = v153 ^ LODWORD(STACK[0x2508]);
  LODWORD(STACK[0x1F98]) = v153 ^ LODWORD(STACK[0x2488]);
  LODWORD(STACK[0x1F90]) = v153 ^ LODWORD(STACK[0x2478]);
  LODWORD(STACK[0x1F88]) = v153 ^ LODWORD(STACK[0x2470]);
  LODWORD(STACK[0x1F80]) = v153 ^ LODWORD(STACK[0x2468]);
  LODWORD(STACK[0x1F78]) = v153 ^ LODWORD(STACK[0x2460]);
  LODWORD(STACK[0x1F70]) = v153 ^ LODWORD(STACK[0x2458]);
  LODWORD(STACK[0x1F68]) = v153 ^ LODWORD(STACK[0x2450]);
  LODWORD(STACK[0x1F60]) = v153 ^ LODWORD(STACK[0x2448]);
  LODWORD(STACK[0x1F58]) = v153 ^ LODWORD(STACK[0x2440]);
  LODWORD(STACK[0x1F50]) = v153 ^ LODWORD(STACK[0x2390]);
  LODWORD(STACK[0x1F48]) = v153 ^ LODWORD(STACK[0x2388]);
  LODWORD(STACK[0x1F40]) = v153 ^ LODWORD(STACK[0x2378]);
  LODWORD(STACK[0x1F38]) = v153 ^ LODWORD(STACK[0x2380]);
  LODWORD(STACK[0x1F30]) = v153 ^ LODWORD(STACK[0x2370]);
  LODWORD(STACK[0x1F28]) = v153 ^ LODWORD(STACK[0x2368]);
  LODWORD(STACK[0x1F20]) = v153 ^ LODWORD(STACK[0x2710]);
  LODWORD(STACK[0x1F18]) = v153 ^ LODWORD(STACK[0x2358]);
  LODWORD(STACK[0x1F10]) = v153 ^ LODWORD(STACK[0x2350]);
  LODWORD(STACK[0x1F08]) = v153 ^ LODWORD(STACK[0x2348]);
  LODWORD(STACK[0x1F00]) = v153 ^ LODWORD(STACK[0x2338]);
  LODWORD(STACK[0x1EF0]) = v153 ^ LODWORD(STACK[0x2340]);
  LODWORD(STACK[0x1EE8]) = v153 ^ LODWORD(STACK[0x2320]);
  LODWORD(STACK[0x1EE0]) = v153 ^ LODWORD(STACK[0x2330]);
  LODWORD(STACK[0x1ED8]) = v153 ^ LODWORD(STACK[0x2328]);
  LODWORD(STACK[0x1ED0]) = v153 ^ v174;
  LODWORD(STACK[0x1EC8]) = v153 ^ v223;
  LODWORD(STACK[0x1EC0]) = v153 ^ v227;
  LODWORD(STACK[0x1EB8]) = v153 ^ v145;
  LODWORD(STACK[0x1EB0]) = v153 ^ v229;
  LODWORD(STACK[0x1EA8]) = v153 ^ v189;
  LODWORD(STACK[0x2078]) = v153;
  LODWORD(STACK[0x1E80]) = v153 ^ v224;
  LODWORD(STACK[0x2090]) = v203 ^ 0x81924395;
  LODWORD(STACK[0x1E78]) = LODWORD(STACK[0x2778]) ^ 0x2F9B8D57;
  LODWORD(v220) = STACK[0x2924];
  LODWORD(STACK[0x1E48]) = STACK[0x2924];
  LODWORD(STACK[0x1E70]) = v220 - 375419374;
  LODWORD(STACK[0x2838]) = -1325537573;
  LODWORD(v226) = STACK[0x2098];
  LODWORD(STACK[0x1E68]) = LODWORD(STACK[0x2098]) ^ 0x23C8;
  LODWORD(STACK[0x1E60]) = v226 ^ 0x2596;
  LODWORD(STACK[0x1E58]) = v226 - 8815;
  LODWORD(STACK[0x2778]) = STACK[0x2848];
  return v230();
}

uint64_t sub_244ADF5E8@<X0>(unsigned int a1@<W8>)
{
  v5 = (a1 & 0xFFFFFFF1 ^ 0x5FFD8BFFE721B172) - 0x5FFD8BFFFFC5BFFDLL + ((2 * (a1 & 0xFFFFFFF1 ^ 0x18E40E8F)) & 0x1FF8B7FFALL);
  STACK[0x2370] = v5;
  v6 = a1 & 0xFFFFFFF0 ^ 0x18E40E8F;
  STACK[0x2348] = v6;
  v7 = a1 & 0xFFFFFFFC ^ 0x18E40E83;
  STACK[0x2478] = v7;
  v8 = (a1 & 0xFFFFFFFC ^ 0xCE5A5DEDF43BE070) + 0x31A5A2121320110DLL + ((2 * v7) & 0x1D9BFDDE6);
  STACK[0x2468] = v8;
  v9 = (a1 & 0xFFFFFFF2 ^ 0x6DADCFFFD309E071) - 0x6DADCFFFCBEDEEFCLL + ((2 * (a1 & 0xFFFFFFF2 ^ 0x18E40E8D)) & 0x197DBDDF8);
  STACK[0x2440] = v9;
  v10 = (a1 & 0xFFFFFFFB ^ 0xF9C57F3FE7BBC53ELL) + 0x63A80C000A03445 + ((2 * (a1 & 0xFFFFFFFB ^ 0x18E40E85)) & 0x1FEBF9776);
  STACK[0x2388] = v10;
  v11 = (a1 & 0xFFFFFFFD ^ 0x7C4FFF7BE85AE34BLL) - 0x7C4FFF7BF0BEEDC8 + ((2 * (a1 & 0xFFFFFFFD ^ 0x18E40E83)) & 0x1E17DDB90);
  STACK[0x2740] = v11;
  v12 = a1 ^ 0x18E40E81;
  STACK[0x2538] = v12;
  v13 = (a1 ^ 0x3FFF3FBBEED8A17DLL) - 0x3FFF3FBBF63CAFFCLL + ((2 * v12) & 0x1EC795FF8);
  STACK[0x2360] = v13;
  v14 = 2560 * LODWORD(STACK[0x1E68]);
  LODWORD(STACK[0x1E50]) = v14;
  v15 = a1 & (v14 ^ 0xFFFFEBFA) ^ 0x18E40E85;
  STACK[0x2368] = v15;
  v16 = (a1 & 0xFFFFFFF8 ^ 0x3FA7DAFDF719D178) - 0x3FA7DAFDEFFDDFFFLL + ((2 * (a1 & 0xFFFFFFF8 ^ 0x18E40E87)) & 0x1DFFBBFFELL);
  STACK[0x2748] = v16;
  v17 = (a1 & 0xFFFFFFF7 ^ 0x5FDFDFF7F35FC124) - 0x5FDFDFF7EBBBCFADLL + ((2 * (a1 & 0xFFFFFFF7 ^ 0x18E40E89)) & 0x1D7779F5ALL);
  STACK[0x2380] = v17;
  v18 = a1 & 0xFFFFFFF9 ^ 0x18E40E87;
  v19 = STACK[0x1FF8];
  v20 = ((*(v19 + v15) ^ 0x51) << 16) | ((*(v19 + v10) ^ 0x51) << 24);
  STACK[0x2518] = v18;
  v21 = (a1 & 0xFFFFFFF9 ^ 0xBD7FE9BF6E0BD190) + 0x42801640891020E9 + ((2 * v18) & 0xEDDFBE2E);
  STACK[0x2450] = v21;
  v22 = a1 & 0xFFFFFFF5 ^ 0x18E40E8B;
  STACK[0x2488] = v22;
  v23 = (2 * v22) & 0x1E9AEC5D6;
  LODWORD(v22) = *(v19 + v21);
  v24 = (a1 & 0xFFFFFFF5 ^ 0x5F52CEDFEC336C60) - 0x5F52CEDFF4D762EBLL + v23;
  STACK[0x2390] = v24;
  LODWORD(v12) = *(v19 + v16);
  LODWORD(STACK[0x22C8]) = v12;
  v25 = (v20 | ((v22 ^ 0x51) << 8) | v12 ^ 0x51) + 1943602229 - 2 * ((v20 | ((v22 ^ 0x51) << 8) | v12 ^ 0x51) & 0x73D9043D ^ (v12 ^ 0x51) & 8);
  v26 = a1 & 0xFFFFFFF3 ^ 0x18E40E8D;
  STACK[0x2378] = v26;
  v27 = (a1 & 0xFFFFFFF3 ^ 0x9EECFDDEDD1BFD7CLL) + 0x611302213A000C0FLL + ((2 * v26) & 0x18BFFE7E2);
  STACK[0x2508] = v27;
  v28 = a1 & 0xFFFFFFF6 ^ 0x18E40E89;
  STACK[0x2510] = v28;
  v29 = (a1 & 0xFFFFFFF6 ^ 0xFFD13F83CF19A87CLL) + 0x2EC07C2802590BLL + ((2 * v28) & 0x1AFFB4DEALL);
  STACK[0x2448] = v29;
  v30 = ((*(v19 + v9) ^ 0x51) << 16) | ((*(v19 + v27) ^ 0x51) << 24);
  v31 = ((*(v19 + v24) ^ 0x51) << 8) | (((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (*(v19 + v17) ^ 0x51)) ^ 0x9DLL))) ^ 0x8C) << 24);
  LODWORD(v27) = *(v19 + v6) ^ 0x51;
  LODWORD(STACK[0x2230]) = v27;
  v32 = v30 | v27 | ((*(v19 + v5) ^ 0x51) << 8);
  v33 = v31 | ((*(v19 + v29) ^ 0x51) << 16);
  v34 = a1 & 0xFFFFFFF4 ^ 0x18E40E8B;
  STACK[0x2358] = v34;
  LODWORD(v34) = *(v19 + v34);
  LODWORD(STACK[0x2228]) = v34;
  LODWORD(v9) = v32 + 1943602229 - ((2 * v32) & 0xE7B2086A);
  v35 = (v33 | v34 ^ 0x51) - 620756992;
  v36 = v35 & 0x73D90437 ^ (v34 ^ 0x51) & 2;
  v37 = a1 & 0xFFFFFFFE ^ 0x18E40E81;
  STACK[0x2350] = v37;
  v38 = (a1 & 0xFFFFFFFE ^ 0xFEFFFDEBF602A17ALL) + 0x100021411195005 + ((2 * v37) & 0x1DDCD5FF6);
  STACK[0x2460] = v38;
  v39 = ((*(v19 + v13) ^ 0x51) << 24) | (((*(STACK[0x2808] + ((111 * (*(v19 + v38) ^ 0x51)) ^ 0x6ELL)) ^ 0x21) - 37) << 16);
  LODWORD(v37) = *(v19 + v8) ^ 0x51;
  LODWORD(STACK[0x2218]) = v37;
  LODWORD(v38) = v39 | v37 | ((*(v19 + v11) ^ 0x51) << 8);
  v40 = v38 + 1943602229 - ((2 * v38) & 0xE7B2086A);
  LODWORD(v29) = v35 + 1943602229 - 2 * v36;
  v41 = STACK[0x2638];
  v42 = STACK[0x2840];
  LODWORD(v13) = STACK[0x2840];
  LODWORD(STACK[0x2840]) = STACK[0x2840];
  LODWORD(v38) = v40 ^ ((v41 ^ v42 ^ 0x525905F3) + 1943602229 - ((2 * (v41 ^ v42 ^ 0x525905F3)) & 0xE7B2086A));
  LODWORD(v38) = 204612087 * v38 - ((409224174 * v38) & 0xD3239714) + 1771162506;
  LODWORD(v38) = v38 ^ WORD1(v38);
  v43 = (((v38 >> 8) ^ 0x6991A2) + 1943602229 - ((2 * ((v38 >> 8) ^ 0x6991A2)) & 0x1B2086A)) ^ v29;
  LODWORD(v8) = v29;
  LODWORD(v38) = v38 ^ 0x3463A111 ^ (v43 - ((2 * v43) & 0xBBE40614) + 1576141578);
  LODWORD(v38) = 821377079 * v38 - ((1642754158 * v38) & 0xB004F3B6) + 1476557275;
  LODWORD(v38) = (((v38 ^ WORD1(v38)) >> 8) ^ 0x580221) + (v38 ^ WORD1(v38) ^ 0x580221D9);
  LODWORD(v38) = -1456646215 * ((v38 + 1943602229 - ((2 * v38) & 0xE7B2086A)) ^ v25);
  LODWORD(v38) = v38 - WORD1(v38) + 1537307614 - ((2 * (v38 - WORD1(v38))) & 0xB742E7BC);
  LODWORD(v38) = (((v38 >> 8) ^ 0x5BA173) + 1537307614 - ((2 * ((v38 >> 8) ^ 0x5BA173)) & 0x142E7BC)) ^ v38;
  LODWORD(v38) = (v38 + 1943602229 - ((2 * v38) & 0xE7B2086A)) ^ v9;
  LODWORD(v38) = -2101027079 * v38 + 215879806 - ((92913138 * v38) & 0x19BC3940) + 3106;
  LODWORD(v38) = (((v38 ^ WORD1(v38)) >> 8) ^ 0xCDE10) + (v38 ^ WORD1(v38) ^ 0xCDE107E);
  LODWORD(STACK[0x2720]) = v40;
  v44 = ((v13 ^ 0xD0FE8736 ^ v40) - 243366160 - ((2 * (v13 ^ 0xD0FE8736 ^ v40)) & 0xE2FD0DE0)) ^ v41;
  v45 = 204612087 * v44 - ((409224174 * v44) & 0xBA7E3222) + 1564416273;
  v46 = v45 ^ HIWORD(v45) ^ 0x581108FD ^ ((((v45 ^ HIWORD(v45)) >> 8) ^ 0x5D3F44) - 2 * ((((v45 ^ HIWORD(v45)) >> 8) ^ 0x5D3F44) & 0x2E4CDB ^ ((v45 ^ HIWORD(v45)) >> 8) & 8) + 86920403);
  v47 = (v46 + 1943602229 - ((2 * v46) & 0xE7B2086A)) ^ v29;
  LODWORD(STACK[0x2730]) = v29;
  v48 = ((2 * v38) & 0x6DDFEBFE) + (v38 ^ 0xB6EFF5FF);
  LODWORD(v38) = 821377079 * v47 - ((1642754158 * v47) & 0x81EC8CE4) + 1089881714;
  LODWORD(v38) = (((v38 ^ WORD1(v38)) >> 8) ^ 0x40F606) + (v38 ^ WORD1(v38) ^ 0x40F60684);
  LODWORD(STACK[0x2728]) = v25;
  LODWORD(v38) = -1456646215 * ((v38 + 1943602229 - ((2 * v38) & 0xE7B2086A)) ^ v25);
  LODWORD(v38) = v38 - WORD1(v38) + 309290730 - ((2 * (v38 - WORD1(v38))) & 0x24DECDD4);
  LODWORD(v38) = (((v38 >> 8) ^ 0x126F66) + 309290730 - ((2 * ((v38 >> 8) ^ 0x126F66)) & 0xDECDD4)) ^ v38;
  LODWORD(STACK[0x2738]) = v9;
  LODWORD(v38) = (v38 + 1943602229 - ((2 * v38) & 0xE7B2086A)) ^ v9;
  v49 = STACK[0x2758];
  v50 = 1858517329 * ((LODWORD(STACK[0x2758]) ^ 0x22A0243B) + (LODWORD(STACK[0x2780]) ^ 0x835E7B75) + (v25 ^ 0x8C26FBCA) + 2);
  v51 = v50 + HIWORD(v50) + 1460243958 - ((2 * (v50 + HIWORD(v50))) & 0xAE131BEC);
  v52 = ((((v51 >> 8) ^ 0x57098D) + 1460243958 - ((2 * ((v51 >> 8) ^ 0x57098D)) & 0x131BEC)) ^ v51) - (v9 ^ 0x73D90435);
  v53 = 313113841 * v52 - ((626227682 * v52) & 0x393D495E) - 1667324753;
  v54 = (v40 ^ 0x8C26FBCA) + (v53 ^ HIWORD(v53) ^ 0x9C9E3831) + (((v53 ^ HIWORD(v53)) >> 8) ^ 0xFF6361C7) + 2;
  v55 = 638669545 * v54 - ((203597266 * v54) & 0xF3B8460) + 127779376;
  LODWORD(v38) = -2101027079 * v38 - ((92913138 * v38) & 0xAB90EA10) - 708283128;
  v56 = (((v38 ^ WORD1(v38)) >> 8) ^ 0xD5C8A0) + (v38 ^ WORD1(v38) ^ 0xD5C8A0C0);
  LODWORD(v38) = -482772883 * ((v55 ^ HIWORD(v55) ^ 0x311DA2BB ^ ((((v55 ^ HIWORD(v55)) >> 8) ^ 0x79DC5) - ((2 * (((v55 ^ HIWORD(v55)) >> 8) ^ 0x79DC5)) & 0x100CE2C) + 914384662)) + (v8 ^ 0x73D90435));
  v57 = v38 - WORD1(v38) - ((2 * (v38 - WORD1(v38))) & 0x5CF52B96) + 779785675;
  v58 = v48 - v1 + 1870085822;
  LODWORD(STACK[0x21E8]) = v57;
  LODWORD(STACK[0x21F0]) = v57 >> 8;
  v59 = (v57 >> 8) ^ v57;
  LODWORD(STACK[0x21E0]) = v59 ^ 0x2E54EF5E;
  v60 = v58 + (v59 ^ 0x2E54EF5E);
  v61 = ((v60 - 34) ^ 0xDE) + v58;
  v62 = v58 - 56 + v61;
  v63 = STACK[0x2628];
  v64 = STACK[0x25D8];
  if (v62)
  {
    v65 = STACK[0x25D8];
  }

  else
  {
    v65 = STACK[0x2628];
  }

  LODWORD(STACK[0x2318]) = v65;
  if ((v62 & 1) == 0)
  {
    v63 = STACK[0x26F0];
  }

  v66 = STACK[0x26E8];
  if (v62)
  {
    v67 = STACK[0x26F0];
  }

  else
  {
    v67 = STACK[0x26E8];
  }

  LODWORD(STACK[0x27D0]) = v67;
  if ((v62 & 1) == 0)
  {
    v66 = v64;
  }

  if ((v62 & 2) != 0)
  {
    v68 = v66;
  }

  else
  {
    v68 = v63;
  }

  if ((v62 & 2) != 0)
  {
    v69 = v63;
  }

  else
  {
    v69 = v66;
  }

  LODWORD(STACK[0x2340]) = v56 ^ 0xC3FDFFFF;
  v70 = ((2 * v56) & 0x87FBFFFE) + (v56 ^ 0xC3FDFFFF);
  LODWORD(STACK[0x2710]) = v70;
  LODWORD(STACK[0x27D8]) = v48;
  v71 = 8 * v48 - 1524402757;
  LODWORD(STACK[0x2708]) = v71;
  v72 = (v71 ^ 0xC) + 1;
  if ((v62 & 2) != 0)
  {
    v73 = v65;
  }

  else
  {
    v73 = v67;
  }

  v74 = 8 * v70 - 1126143607;
  v75 = v74 & 0x18;
  LODWORD(STACK[0x25D8]) = v69;
  if ((v74 & 0x18) != 0)
  {
    v76 = ((v69 ^ 0x25A25382) << ((8 * v70 - 119) & 0x18)) ^ 0x25A25382 ^ ((v69 ^ 0x25A25382) >> (v72 & 0x18));
  }

  else
  {
    v76 = v69;
  }

  LODWORD(STACK[0x22F8]) = v76;
  v77 = v72 & 0x18;
  v78 = 8 * v48 - ((16 * v48 - 1862230000) & 0xF1ECAF30);
  LODWORD(STACK[0x27E0]) = v78;
  LODWORD(STACK[0x26F0]) = v68;
  if ((v72 & 0x18) != 0)
  {
    v79 = ((v68 ^ 0x25A25382) << v75) ^ 0x25A25382 ^ ((v68 ^ 0x25A25382) >> (v72 & 0x18));
  }

  else
  {
    v79 = v68;
  }

  LODWORD(STACK[0x2310]) = v79;
  if (v61)
  {
    v80 = STACK[0x26D0];
  }

  else
  {
    v80 = STACK[0x26A8];
  }

  v81 = STACK[0x2650];
  if (v61)
  {
    v82 = STACK[0x2650];
  }

  else
  {
    v82 = STACK[0x26D0];
  }

  if (v61)
  {
    v81 = STACK[0x2678];
    v83 = STACK[0x26A8];
  }

  else
  {
    v83 = STACK[0x2678];
  }

  if (v61)
  {
    v84 = STACK[0x27A0];
  }

  else
  {
    v84 = STACK[0x2798];
  }

  LODWORD(STACK[0x22D0]) = v84;
  LODWORD(STACK[0x22A0]) = v3;
  if (v61)
  {
    v85 = STACK[0x2750];
  }

  else
  {
    v85 = v3;
  }

  LODWORD(STACK[0x2628]) = v85;
  v86 = -1098295204 - v78;
  if ((v61 & 2) != 0)
  {
    v87 = v83;
  }

  else
  {
    v87 = v82;
  }

  if ((v61 & 2) != 0)
  {
    v85 = v84;
  }

  LODWORD(STACK[0x2470]) = v85;
  v88 = ((v73 ^ 0x25A25382) >> v77) + ((v73 ^ 0x25A25382) << (v86 & 0x18)) + 631395202 - ((2 * (((v73 ^ 0x25A25382) >> v77) + ((v73 ^ 0x25A25382) << (v86 & 0x18)))) & 0x4B44A704);
  v89 = v86;
  v90 = ((v85 ^ 0x8BB071EE) >> v77) + ((v85 ^ 0x8BB071EE) << (v86 & 0x18));
  LODWORD(STACK[0x26E8]) = v73;
  if ((v86 & 0x18) != 0)
  {
    v91 = v88;
  }

  else
  {
    v91 = v73;
  }

  LODWORD(STACK[0x22E0]) = v91;
  if ((v61 & 2) != 0)
  {
    v92 = v82;
  }

  else
  {
    v92 = v83;
  }

  v93 = v90 - 1951370770 - ((2 * v90) & 0x1760E3DC);
  v94 = v72;
  if ((v72 & 0x18) == 0)
  {
    v93 = v85;
  }

  LODWORD(STACK[0x2338]) = v93;
  v95 = STACK[0x2640];
  if (v59)
  {
    v96 = STACK[0x2640];
  }

  else
  {
    v96 = v4;
  }

  LODWORD(STACK[0x2238]) = v96;
  v97 = STACK[0x26F8];
  v98 = STACK[0x25C8];
  if (v59)
  {
    v99 = STACK[0x26F8];
  }

  else
  {
    v99 = STACK[0x25C8];
  }

  LODWORD(STACK[0x2268]) = v99;
  if ((v59 & 2) != 0)
  {
    v99 = v96;
  }

  v100 = v72 & 0x18;
  LODWORD(STACK[0x2458]) = v99;
  v101 = ((v99 ^ 0x65DD6BF6) >> (v72 & 0x18)) ^ 0x65DD6BF6 ^ ((v99 ^ 0x65DD6BF6) << v75);
  v102 = ((v87 ^ 0xDAC923D0) >> (v72 & 0x18)) + ((v87 ^ 0xDAC923D0) << v75);
  v103 = v102 - 624352304 - ((2 * v102) & 0xB59247A0);
  if ((v72 & 0x18) == 0)
  {
    v101 = v99;
  }

  LODWORD(STACK[0x21D8]) = v101;
  LODWORD(STACK[0x26D0]) = v87;
  if ((v74 & 0x18) != 0)
  {
    v87 = v103;
  }

  LODWORD(STACK[0x22C0]) = v87;
  v104 = v89;
  LODWORD(STACK[0x2718]) = v89;
  LODWORD(STACK[0x2678]) = v92;
  if ((v89 & 0x18) != 0)
  {
    v105 = ((v92 ^ 0xDAC923D0) >> v100) ^ 0xDAC923D0 ^ ((v92 ^ 0xDAC923D0) << (v89 & 0x18));
  }

  else
  {
    v105 = v92;
  }

  LODWORD(STACK[0x22B0]) = v105;
  if ((v61 & 2) != 0)
  {
    v106 = v81;
  }

  else
  {
    v106 = v80;
  }

  v107 = ((v106 ^ 0xDAC923D0) << (v89 & 0x18)) + ((v106 ^ 0xDAC923D0) >> v100);
  if ((v61 & 2) != 0)
  {
    v108 = v80;
  }

  else
  {
    v108 = v81;
  }

  v109 = v107 - 624352304 - ((2 * v107) & 0xB59247A0);
  v110 = v104 & 0x18;
  LODWORD(STACK[0x26A8]) = v106;
  if ((v104 & 0x18) == 0)
  {
    v109 = v106;
  }

  LODWORD(STACK[0x22B8]) = v109;
  v111 = STACK[0x2610];
  v112 = STACK[0x25E8];
  if (v60)
  {
    v113 = STACK[0x25E8];
  }

  else
  {
    v113 = STACK[0x2610];
  }

  LODWORD(STACK[0x21C0]) = v113;
  v114 = STACK[0x2768];
  if (v60)
  {
    v115 = STACK[0x2768];
  }

  else
  {
    v115 = v112;
  }

  LODWORD(STACK[0x21A0]) = v115;
  v116 = STACK[0x2760];
  if (v60)
  {
    v117 = STACK[0x2760];
  }

  else
  {
    v117 = v114;
  }

  LODWORD(STACK[0x22E8]) = v117;
  if (v60)
  {
    v118 = v111;
  }

  else
  {
    v118 = v116;
  }

  LODWORD(STACK[0x2260]) = v118;
  v119 = STACK[0x2770];
  if (v60)
  {
    v120 = v41;
  }

  else
  {
    v120 = STACK[0x2770];
  }

  if (v60)
  {
    v121 = STACK[0x26D8];
  }

  else
  {
    v121 = v41;
  }

  if (v60)
  {
    v122 = STACK[0x2658];
  }

  else
  {
    v119 = STACK[0x2658];
    v122 = STACK[0x26D8];
  }

  v123 = STACK[0x2788];
  if (v60)
  {
    v124 = v49;
  }

  else
  {
    v124 = STACK[0x2788];
  }

  LODWORD(STACK[0x25E8]) = v124;
  v125 = STACK[0x26A0];
  if (v60)
  {
    v126 = v123;
  }

  else
  {
    v126 = STACK[0x26A0];
  }

  LODWORD(STACK[0x2198]) = v126;
  v127 = STACK[0x2618];
  if ((v60 & 1) == 0)
  {
    v125 = STACK[0x2618];
  }

  LODWORD(STACK[0x2610]) = v125;
  if (v60)
  {
    v128 = v127;
  }

  else
  {
    v128 = v49;
  }

  LODWORD(STACK[0x2618]) = v128;
  v129 = 1 - v60;
  LODWORD(STACK[0x2758]) = v129;
  v130 = (v129 & 2) == 0;
  if ((v129 & 2) != 0)
  {
    v131 = v119;
  }

  else
  {
    v131 = v121;
  }

  if ((v129 & 2) != 0)
  {
    v132 = v121;
  }

  else
  {
    v132 = v119;
  }

  if ((v129 & 2) != 0)
  {
    v133 = v120;
  }

  else
  {
    v133 = v122;
  }

  if (v130)
  {
    v134 = v120;
  }

  else
  {
    v134 = v122;
  }

  LODWORD(STACK[0x2770]) = v134;
  if (v130)
  {
    v135 = v117;
  }

  else
  {
    v135 = v113;
  }

  LODWORD(STACK[0x2768]) = v135;
  if (v130)
  {
    v136 = v118;
  }

  else
  {
    v136 = v115;
  }

  LODWORD(STACK[0x2760]) = v136;
  if (v130)
  {
    v137 = v126;
  }

  else
  {
    v137 = v128;
  }

  if (v130)
  {
    v138 = v124;
  }

  else
  {
    v138 = v125;
  }

  LODWORD(STACK[0x2788]) = v138;
  LODWORD(STACK[0x26D8]) = v133;
  if ((v74 & 0x18) != 0)
  {
    v133 = ((v133 ^ 0xF17E86F0) << (v74 & 0x18)) ^ ((v133 ^ 0xF17E86F0) >> v100) ^ 0xF17E86F0;
  }

  LODWORD(STACK[0x2298]) = v133;
  LODWORD(STACK[0x2220]) = v59;
  if (v59)
  {
    v139 = v98;
  }

  else
  {
    v139 = v95;
  }

  LODWORD(STACK[0x2200]) = v139;
  if (v59)
  {
    v140 = v4;
  }

  else
  {
    v140 = v97;
  }

  LODWORD(STACK[0x2208]) = v140;
  v141 = STACK[0x26B0];
  v142 = STACK[0x2840];
  if (v59)
  {
    v143 = STACK[0x26B0];
  }

  else
  {
    v143 = STACK[0x2840];
  }

  LODWORD(STACK[0x2210]) = v143;
  if (v59)
  {
    v144 = STACK[0x2670];
  }

  else
  {
    v142 = STACK[0x2680];
    v144 = v141;
  }

  if (v59)
  {
    v145 = STACK[0x2680];
  }

  else
  {
    v145 = STACK[0x2670];
  }

  LODWORD(STACK[0x25C8]) = v145;
  v146 = STACK[0x2660];
  if (v59)
  {
    v147 = STACK[0x2660];
  }

  else
  {
    v147 = STACK[0x26B8];
  }

  v148 = STACK[0x2630];
  if (v59)
  {
    v149 = STACK[0x26B8];
  }

  else
  {
    v149 = STACK[0x2630];
  }

  LODWORD(STACK[0x2640]) = v149;
  v150 = STACK[0x25D0];
  if (v59)
  {
    v151 = v148;
  }

  else
  {
    v151 = STACK[0x25D0];
  }

  if ((v59 & 1) == 0)
  {
    v150 = v146;
  }

  LODWORD(STACK[0x2840]) = v150;
  if ((v59 & 2) != 0)
  {
    v152 = v144;
  }

  else
  {
    v152 = v142;
  }

  if ((v59 & 2) != 0)
  {
    v153 = v142;
  }

  else
  {
    v153 = v144;
  }

  if ((v59 & 2) != 0)
  {
    v154 = v151;
  }

  else
  {
    v154 = v147;
  }

  if ((v59 & 2) != 0)
  {
    v155 = v147;
  }

  else
  {
    v155 = v151;
  }

  v156 = ((v153 ^ 0xA3278303) << (v74 & 0x18)) + ((v153 ^ 0xA3278303) >> v100);
  v157 = v156 - 1557691645 - ((2 * v156) & 0x464F0606);
  if ((v59 & 2) != 0)
  {
    v158 = v140;
  }

  else
  {
    v158 = v139;
  }

  if ((v59 & 2) != 0)
  {
    v159 = v145;
  }

  else
  {
    v159 = v143;
  }

  if ((v59 & 2) == 0)
  {
    v150 = v149;
  }

  LODWORD(STACK[0x2680]) = v153;
  if ((v74 & 0x18) == 0)
  {
    v157 = v153;
  }

  LODWORD(STACK[0x2278]) = v157;
  v160 = STACK[0x26C0];
  v161 = STACK[0x2598];
  if (v62)
  {
    v162 = STACK[0x26C0];
  }

  else
  {
    v162 = STACK[0x2598];
  }

  v163 = STACK[0x26C8];
  v164 = STACK[0x2648];
  if (v62)
  {
    v165 = STACK[0x2648];
  }

  else
  {
    v165 = STACK[0x26C8];
  }

  if ((v62 & 2) != 0)
  {
    v166 = v165;
  }

  else
  {
    v166 = v162;
  }

  v167 = v74 & 0x18;
  LODWORD(STACK[0x2438]) = v166;
  v168 = ((v166 ^ 0x9A3833A8) << (v74 & 0x18)) ^ 0x9A3833A8 ^ ((v166 ^ 0x9A3833A8) >> v100);
  v169 = ((v150 ^ 0xAA8C426B) << (v74 & 0x18)) + ((v150 ^ 0xAA8C426B) >> v100);
  v170 = STACK[0x2708] & 0x18;
  LODWORD(STACK[0x21C8]) = v170;
  v171 = (v74 ^ 0x1E) + 1;
  LODWORD(STACK[0x22D8]) = v171;
  if ((v74 & 0x18) == 0)
  {
    v168 = v166;
  }

  LODWORD(STACK[0x2258]) = v168;
  LODWORD(STACK[0x2708]) = v170 ^ 0x10;
  LODWORD(STACK[0x2250]) = v171 & 0x18;
  v172 = ((v137 ^ 0x22A0243B) << (v170 ^ 0x10)) ^ 0x22A0243B ^ ((v137 ^ 0x22A0243B) >> (v171 & 0x18));
  LODWORD(STACK[0x26A0]) = v137;
  if ((v171 & 0x18) == 0)
  {
    v172 = v137;
  }

  LODWORD(STACK[0x2328]) = v172;
  v173 = ((v154 ^ 0xAA8C426B) << v167) + ((v154 ^ 0xAA8C426B) >> (v94 & 0x18));
  v174 = v169 - 1433648533 - ((2 * v169) & 0x551884D6);
  v175 = v173 - 1433648533 - ((2 * v173) & 0x551884D6);
  LODWORD(STACK[0x2660]) = v150;
  if ((v94 & 0x18) == 0)
  {
    v174 = v150;
  }

  LODWORD(STACK[0x2308]) = v174;
  LODWORD(STACK[0x25D0]) = v154;
  if ((v94 & 0x18) == 0)
  {
    v175 = v154;
  }

  LODWORD(STACK[0x2300]) = v175;
  v177 = ((v108 ^ 0xDAC923D0) << v167) | ((v108 ^ 0xDAC923D0) >> (v94 & 0x18));
  v176 = ((v155 ^ 0xAA8C426B) << v110) | ((v155 ^ 0xAA8C426B) >> (v94 & 0x18));
  v178 = v176 - 1433648533 - ((2 * v176) & 0x551884D6);
  v179 = v177 - 624352304 - ((2 * v177) & 0xB59247A0);
  LODWORD(STACK[0x26B8]) = v155;
  if ((v94 & 0x18) == 0)
  {
    v178 = v155;
  }

  LODWORD(STACK[0x22F0]) = v178;
  LODWORD(STACK[0x2650]) = v108;
  if ((v94 & 0x18) == 0)
  {
    v179 = v108;
  }

  LODWORD(STACK[0x22A8]) = v179;
  v181 = ((v132 ^ 0xF17E86F0) << v167) + ((v132 ^ 0xF17E86F0) >> (v94 & 0x18));
  v180 = ((v131 ^ 0xF17E86F0) << v110) | ((v131 ^ 0xF17E86F0) >> (v94 & 0x18));
  v182 = v180 - 243366160 - ((2 * v180) & 0xE2FD0DE0);
  v183 = v181 - 243366160 - ((2 * v181) & 0xE2FD0DE0);
  LODWORD(STACK[0x2638]) = v131;
  if ((v94 & 0x18) == 0)
  {
    v182 = v131;
  }

  LODWORD(STACK[0x2290]) = v182;
  v184 = ((v152 ^ 0xA3278303) << v110) | ((v152 ^ 0xA3278303) >> (v94 & 0x18));
  v185 = v184 - 1557691645 - ((2 * v184) & 0x464F0606);
  LODWORD(STACK[0x2658]) = v132;
  if ((v94 & 0x18) == 0)
  {
    v183 = v132;
  }

  LODWORD(STACK[0x2288]) = v183;
  v186 = v94 & 0x18;
  v187 = ((v158 ^ 0x65DD6BF6) >> (v94 & 0x18)) ^ 0x65DD6BF6 ^ ((v158 ^ 0x65DD6BF6) << v167);
  LODWORD(STACK[0x26F8]) = v158;
  if ((v94 & 0x18) == 0)
  {
    v187 = v158;
  }

  LODWORD(STACK[0x21A8]) = v187;
  LODWORD(STACK[0x26B0]) = v152;
  if ((v94 & 0x18) != 0)
  {
    v188 = v185;
  }

  else
  {
    v188 = v152;
  }

  LODWORD(STACK[0x2270]) = v188;
  if (v62)
  {
    v189 = v163;
  }

  else
  {
    v189 = v160;
  }

  if (v62)
  {
    v190 = v161;
  }

  else
  {
    v190 = v164;
  }

  if ((v62 & 2) != 0)
  {
    v191 = v162;
  }

  else
  {
    v191 = v165;
  }

  if ((v62 & 2) != 0)
  {
    v192 = v189;
  }

  else
  {
    v192 = v190;
  }

  if ((v62 & 2) != 0)
  {
    v193 = v190;
  }

  else
  {
    v193 = v189;
  }

  if ((v62 & 2) != 0)
  {
    v195 = STACK[0x27D0];
  }

  else
  {
    v195 = STACK[0x2318];
  }

  v196 = ((v159 ^ 0xA3278303) >> v186) ^ 0xA3278303 ^ ((v159 ^ 0xA3278303) << (v74 & 0x18));
  v194 = ((v191 ^ 0x9A3833A8) << v167) + ((v191 ^ 0x9A3833A8) >> v186);
  v197 = v194 - 1707592792 - ((2 * v194) & 0x34706750);
  LODWORD(STACK[0x2670]) = v159;
  if ((v74 & 0x18) == 0)
  {
    v196 = v159;
  }

  LODWORD(STACK[0x2248]) = v196;
  LODWORD(STACK[0x26C8]) = v191;
  if ((v74 & 0x18) == 0)
  {
    v197 = v191;
  }

  LODWORD(STACK[0x2240]) = v197;
  v198 = STACK[0x26E0];
  v199 = STACK[0x2668];
  if (v61)
  {
    v200 = STACK[0x2668];
  }

  else
  {
    v200 = STACK[0x26E0];
  }

  v201 = STACK[0x2700];
  if (v61)
  {
    v199 = STACK[0x2700];
    v201 = STACK[0x2780];
  }

  else
  {
    v198 = STACK[0x2780];
  }

  v202 = STACK[0x2798];
  if ((v61 & 1) == 0)
  {
    v202 = STACK[0x2750];
  }

  v203 = STACK[0x27A0];
  if (v61)
  {
    v203 = STACK[0x22A0];
  }

  v204 = (v61 & 2) == 0;
  if ((v61 & 2) != 0)
  {
    v205 = v201;
  }

  else
  {
    v205 = v200;
  }

  if ((v61 & 2) != 0)
  {
    v206 = v200;
  }

  else
  {
    v206 = v201;
  }

  if (v204)
  {
    v207 = v199;
  }

  else
  {
    v207 = v198;
  }

  if (v204)
  {
    v208 = v198;
  }

  else
  {
    v208 = v199;
  }

  v209 = STACK[0x2628];
  if (v204)
  {
    v209 = STACK[0x22D0];
  }

  LODWORD(STACK[0x2798]) = v209;
  v210 = STACK[0x2770];
  v211 = ((v210 ^ 0xF17E86F0) >> v186) + ((v210 ^ 0xF17E86F0) << v110);
  v212 = v211 - 243366160 - ((2 * v211) & 0xE2FD0DE0);
  if (v204)
  {
    v213 = v203;
  }

  else
  {
    v213 = v202;
  }

  LODWORD(STACK[0x27A0]) = v213;
  if (v204)
  {
    v214 = v202;
  }

  else
  {
    v214 = v203;
  }

  v215 = STACK[0x2718];
  v216 = STACK[0x2718] & 0x18;
  if ((STACK[0x2718] & 0x18) == 0)
  {
    v212 = v210;
  }

  LODWORD(STACK[0x2280]) = v212;
  if ((STACK[0x2220] & 2) != 0)
  {
    v217 = STACK[0x2200];
  }

  else
  {
    v217 = STACK[0x2208];
  }

  if ((STACK[0x2220] & 2) != 0)
  {
    v218 = STACK[0x2210];
  }

  else
  {
    v218 = STACK[0x25C8];
  }

  if ((STACK[0x2220] & 2) != 0)
  {
    v219 = STACK[0x2268];
  }

  else
  {
    v219 = STACK[0x2238];
  }

  if ((STACK[0x2220] & 2) != 0)
  {
    v221 = STACK[0x2640];
  }

  else
  {
    v221 = STACK[0x2840];
  }

  v220 = ((v218 ^ 0xA3278303) << v216) | ((v218 ^ 0xA3278303) >> v186);
  v222 = v220 - 1557691645 - ((2 * v220) & 0x464F0606);
  v223 = ((v192 ^ 0x9A3833A8) << (v215 & 0x18)) | ((v192 ^ 0x9A3833A8) >> v186);
  v224 = v223 - 1707592792 - ((2 * v223) & 0x34706750);
  LODWORD(STACK[0x2840]) = v218;
  if ((v215 & 0x18) == 0)
  {
    v222 = v218;
  }

  LODWORD(STACK[0x2268]) = v222;
  v225 = ((v195 ^ 0x25A25382) << (v215 & 0x18)) | ((v195 ^ 0x25A25382u) >> v186);
  v226 = v225 + 631395202 - ((2 * v225) & 0x4B44A704);
  LODWORD(STACK[0x2648]) = v192;
  if ((v215 & 0x18) == 0)
  {
    v224 = v192;
  }

  LODWORD(STACK[0x2238]) = v224;
  v227 = ((v221 ^ 0xAA8C426B) << (v215 & 0x18)) | ((v221 ^ 0xAA8C426B) >> v186);
  v228 = v227 - 1433648533 - ((2 * v227) & 0x551884D6);
  LODWORD(STACK[0x2628]) = v195;
  if ((v215 & 0x18) == 0)
  {
    v226 = v195;
  }

  LODWORD(STACK[0x22A0]) = v226;
  v230 = v215 & 0x18;
  v229 = (v215 & 0x18) == 0;
  v231 = v215;
  v232 = STACK[0x2760];
  v233 = ((v232 ^ 0xED2E8C6E) << (v215 & 0x18)) + ((v232 ^ 0xED2E8C6E) >> v186);
  v234 = STACK[0x2768];
  v235 = ((v234 ^ 0xED2E8C6E) << (v215 & 0x18)) ^ 0xED2E8C6E ^ ((v234 ^ 0xED2E8C6E) >> v186);
  v236 = ((v207 ^ 0x7CA1848A) >> v186) ^ 0x7CA1848A ^ ((v207 ^ 0x7CA1848A) << (v215 & 0x18));
  v237 = ((v208 ^ 0x7CA1848A) >> v186) ^ 0x7CA1848A ^ ((v208 ^ 0x7CA1848A) << v230);
  v238 = v233 - 315716498 - ((2 * v233) & 0xDA5D18DC);
  LODWORD(STACK[0x2668]) = v207;
  if (v229)
  {
    v236 = v207;
  }

  LODWORD(STACK[0x2208]) = v236;
  if (v229)
  {
    v235 = v234;
  }

  LODWORD(STACK[0x21D0]) = v235;
  LODWORD(STACK[0x2780]) = v208;
  if (v229)
  {
    v237 = v208;
  }

  LODWORD(STACK[0x2210]) = v237;
  LODWORD(STACK[0x2630]) = v221;
  if (v229)
  {
    v239 = v221;
  }

  else
  {
    v239 = v228;
  }

  LODWORD(STACK[0x22D0]) = v239;
  v240 = ((v217 ^ 0x65DD6BF6) << (v231 & 0x18)) + ((v217 ^ 0x65DD6BF6) >> v186);
  v241 = v240 + 1709009910 - ((2 * v240) & 0xCBBAD7EC);
  if ((v231 & 0x18) != 0)
  {
    v242 = v238;
  }

  else
  {
    v242 = v232;
  }

  LODWORD(STACK[0x21B0]) = v242;
  LODWORD(STACK[0x27D0]) = v231 & 0x18;
  v243 = ((v193 ^ 0x9A3833A8) << (v231 & 0x18)) | ((v193 ^ 0x9A3833A8) >> v186);
  v244 = v243 - 1707592792 - ((2 * v243) & 0x34706750);
  LODWORD(STACK[0x2640]) = v217;
  if ((v231 & 0x18) == 0)
  {
    v241 = v217;
  }

  LODWORD(STACK[0x20D0]) = v241;
  v245 = ((v206 ^ 0x7CA1848A) >> (v94 & 0x18)) | ((v206 ^ 0x7CA1848A) << (v74 & 0x18));
  v246 = v245 + 2090960010 - ((2 * v245) & 0xF9430914);
  LODWORD(STACK[0x26C0]) = v193;
  if ((v94 & 0x18) == 0)
  {
    v244 = v193;
  }

  LODWORD(STACK[0x2220]) = v244;
  LODWORD(STACK[0x2320]) = v94;
  v247 = ((v219 ^ 0x65DD6BF6) << (v231 & 0x18)) | ((v219 ^ 0x65DD6BF6) >> (v94 & 0x18));
  v248 = v247 + 1709009910 - ((2 * v247) & 0xCBBAD7EC);
  LODWORD(STACK[0x2700]) = v206;
  if ((v94 & 0x18) != 0)
  {
    v249 = v246;
  }

  else
  {
    v249 = v206;
  }

  LODWORD(STACK[0x2200]) = v249;
  v250 = v94 & 0x18;
  LODWORD(STACK[0x25C8]) = v219;
  if ((v94 & 0x18) != 0)
  {
    v251 = v248;
  }

  else
  {
    v251 = v219;
  }

  v252 = ((v205 ^ 0x7CA1848A) >> v250) + ((v205 ^ 0x7CA1848A) << (v74 & 0x18));
  v253 = ((v214 ^ 0x8BB071EE) >> v250) ^ 0x8BB071EE ^ ((v214 ^ 0x8BB071EE) << (v74 & 0x18));
  v254 = v252 + 2090960010 - ((2 * v252) & 0xF9430914);
  LODWORD(STACK[0x2750]) = v214;
  if ((v74 & 0x18) == 0)
  {
    v253 = v214;
  }

  LODWORD(STACK[0x2318]) = v253;
  LODWORD(STACK[0x26E0]) = v205;
  if ((v74 & 0x18) != 0)
  {
    v255 = v254;
  }

  else
  {
    v255 = v205;
  }

  LODWORD(STACK[0x21F8]) = v255;
  v256 = (STACK[0x2758] & 2) == 0;
  if ((STACK[0x2758] & 2) != 0)
  {
    v257 = STACK[0x22E8];
  }

  else
  {
    v257 = STACK[0x21C0];
  }

  if ((STACK[0x2758] & 2) != 0)
  {
    v258 = STACK[0x2260];
  }

  else
  {
    v258 = STACK[0x21A0];
  }

  if ((STACK[0x2758] & 2) != 0)
  {
    v259 = STACK[0x2198];
  }

  else
  {
    v259 = STACK[0x2618];
  }

  LODWORD(STACK[0x2758]) = v259;
  if (v256)
  {
    v261 = STACK[0x2610];
  }

  else
  {
    v261 = STACK[0x25E8];
  }

  v260 = ((v257 ^ 0xED2E8C6E) << (v74 & 0x18)) | ((v257 ^ 0xED2E8C6E) >> v250);
  v262 = v260 - 315716498 - ((2 * v260) & 0xDA5D18DC);
  LODWORD(STACK[0x2330]) = v74;
  v263 = ((v258 ^ 0xED2E8C6E) << (v74 & 0x18)) + ((v258 ^ 0xED2E8C6E) >> v250);
  v264 = v263 - 315716498 - ((2 * v263) & 0xDA5D18DC);
  v265 = LODWORD(STACK[0x27E0]) + 1098295240;
  LODWORD(STACK[0x2610]) = v257;
  if ((v74 & 0x18) != 0)
  {
    v266 = v262;
  }

  else
  {
    v266 = v257;
  }

  LODWORD(STACK[0x21C0]) = v266;
  LODWORD(STACK[0x27E0]) = v74 & 0x18;
  LODWORD(STACK[0x25E8]) = v258;
  if ((v74 & 0x18) != 0)
  {
    v267 = v264;
  }

  else
  {
    v267 = v258;
  }

  LODWORD(STACK[0x21A0]) = v267;
  v268 = STACK[0x2708];
  v269 = ((v261 ^ 0x22A0243B) << LODWORD(STACK[0x2708])) + ((v261 ^ 0x22A0243Bu) >> (v265 & 0x18));
  v270 = v269 + 580920379 - ((2 * v269) & 0x45404876);
  v271 = STACK[0x21E0];
  v272 = LODWORD(STACK[0x21E0]) + (LODWORD(STACK[0x2848]) ^ 0x68D48571);
  v273 = v272 + 1758758257 - ((2 * v272) & 0xD1A90AE2);
  LODWORD(STACK[0x2848]) = v273;
  LODWORD(STACK[0x2618]) = v261;
  if ((v265 & 0x18) == 0)
  {
    v270 = v261;
  }

  LODWORD(STACK[0x22E8]) = v270;
  v274 = (v272 & 1) == 0;
  if (v272)
  {
    v275 = STACK[0x2730];
  }

  else
  {
    v275 = STACK[0x2728];
  }

  v276 = STACK[0x2738];
  if (v274)
  {
    v277 = STACK[0x2738];
  }

  else
  {
    v277 = STACK[0x2720];
  }

  if (v274)
  {
    v276 = STACK[0x2730];
    v278 = STACK[0x2720];
  }

  else
  {
    v278 = STACK[0x2728];
  }

  if (((v273 + 28) & 2) != 0)
  {
    v279 = v277;
  }

  else
  {
    v279 = v275;
  }

  if (((v273 + 28) & 2) == 0)
  {
    v275 = v277;
  }

  v280 = ((v275 ^ 0x73D90435) >> (v265 & 0x18)) | ((v275 ^ 0x73D90435) << v268);
  v281 = v280 + 1943602229 - ((2 * v280) & 0xE7B2086A);
  if (((v273 + 28) & 2) != 0)
  {
    v282 = v278;
  }

  else
  {
    v282 = v276;
  }

  if ((v265 & 0x18) != 0)
  {
    v275 = v281;
  }

  v284 = v265 & 0x18;
  if ((v265 & 0x18) != 0)
  {
    v283 = ((v279 ^ 0x73D90435) >> (v265 & 0x18)) + ((v279 ^ 0x73D90435) << v268);
    v279 = v283 + 1943602229 - ((2 * v283) & 0xE7B2086A);
  }

  v285 = ((LODWORD(STACK[0x2788]) ^ 0x22A0243Bu) >> LODWORD(STACK[0x2250])) + ((LODWORD(STACK[0x2788]) ^ 0x22A0243B) << v268);
  v286 = v285 + 580920379 - ((2 * v285) & 0x45404876);
  v287 = STACK[0x22D8] & 0x18;
  if (!v287)
  {
    v286 = STACK[0x2788];
  }

  LODWORD(STACK[0x22D8]) = v286;
  if (((v273 + 28) & 2) == 0)
  {
    v276 = v278;
  }

  v288 = LODWORD(STACK[0x2230]) + (LODWORD(STACK[0x2228]) ^ 0xAE) + (((LOBYTE(STACK[0x2838]) ^ 0xE9) - LOBYTE(STACK[0x2218]) - ((2 * ((LOBYTE(STACK[0x2838]) ^ 0xE9) - LOBYTE(STACK[0x2218])) + 116) & 0xA2) + 11) ^ LODWORD(STACK[0x22C8]) ^ 0x65);
  v289 = v271 + (LODWORD(STACK[0x2790]) ^ 0x21745068);
  v290 = ((STACK[0x21F0] & 0xE26068 ^ STACK[0x21E8] & 0x57E26068 | STACK[0x21F0] & 0x1D9F97 ^ STACK[0x21E8] & 0xA81D9F97) ^ 0x2E54EF5E) + (LODWORD(STACK[0x2778]) ^ 0x68D48571);
  v291 = LODWORD(STACK[0x1FB8]) ^ LODWORD(STACK[0x21D8]) ^ v279;
  LODWORD(STACK[0x2838]) = 16843009 * (v288 + 1) + 934709225 - ((33686018 * (v288 + 1)) & 0x6F6D0FD2);
  LODWORD(STACK[0x2598]) = v289;
  v292 = v289 + 561270888 - ((2 * v289) & 0x42E8A0D0);
  LODWORD(STACK[0x2790]) = v292;
  v293 = v290 + 1758758257 - ((2 * v290) & 0xD1A90AE2);
  LODWORD(STACK[0x2778]) = v293;
  v294 = (v291 ^ 0xEF6A1DBD) - ((2 * (v291 ^ 0xEF6A1DBD)) & 0x16745BE28);
  v295 = ((v282 ^ 0x73D90435) >> v287) + ((v282 ^ 0x73D90435) << v268);
  v296 = (v276 ^ 0x73D90435) << v268;
  v297 = v268;
  v298 = v287;
  LODWORD(STACK[0x2250]) = v287;
  v299 = ((v276 ^ 0x73D90435) >> v287) + v296;
  v300 = v295 + 1943602229 - ((2 * v295) & 0xE7B2086A);
  LODWORD(STACK[0x2260]) = v284;
  v301 = ((v259 ^ 0x22A0243B) << v297) | ((v259 ^ 0x22A0243Bu) >> v284);
  LODWORD(STACK[0x22C8]) = v301 + 580920379 - ((2 * v301) & 0x45404876);
  if (LODWORD(STACK[0x21C8]) != 16)
  {
    v282 = v300;
  }

  v302 = LODWORD(STACK[0x1FB0]) ^ LODWORD(STACK[0x20D0]) ^ v282;
  if (LODWORD(STACK[0x21C8]) == 16)
  {
    v303 = v276;
  }

  else
  {
    v303 = v299 + 1943602229 - ((2 * v299) & 0xE7B2086A);
  }

  v304 = v294 - 1281171692;
  v305 = *(&STACK[0x133D0] + ((4 * ((v294 + 0x5310D68DB3A2DF14) >> 24)) ^ 0x14C435A36CCLL));
  HIDWORD(v307) = v305 ^ 0xC4A2C1;
  LODWORD(v307) = v305 ^ 0xFE000000;
  v306 = v307 >> 24;
  v308 = LODWORD(STACK[0x1FA8]) ^ LODWORD(STACK[0x21A8]) ^ v303;
  v309 = LODWORD(STACK[0x1FA0]) ^ v275;
  v310 = v309 ^ v251;
  v311 = *(&STACK[0x133D0] + (v302 ^ 0xBDu));
  HIDWORD(v307) = v311 ^ 0xA2C1;
  LODWORD(v307) = v311 ^ 0xFEC40000;
  v312 = v307 >> 16;
  v313 = (v309 ^ v251 ^ 0xEF6A1DBD) - ((2 * (v309 ^ v251 ^ 0xEF6A1DBD)) & 0x55AF5DEA) - 1428705547;
  v314 = *(&STACK[0x133D0] + (BYTE1(v313) ^ 0xAELL));
  HIDWORD(v307) = v314 ^ 0xFFFFFFC1;
  LODWORD(v307) = v314 ^ 0xFEC4A200;
  v315 = (v308 ^ 0xEF6A1DBD) - ((2 * (v308 ^ 0xEF6A1DBD)) & 0x18A104026) + 0x549DF52BC5082013;
  v316 = v306 ^ *(&STACK[0x133D0] + (BYTE2(v315) ^ 8)) ^ (v307 >> 8) ^ (v312 - 20667711 - ((2 * v312) & 0xFD894582));
  v317 = v292 ^ (v316 + 561270888 - ((2 * v316) & 0x42E8A0D0));
  v318 = *(&STACK[0x133D0] + ((*(STACK[0x2698] + ((((v309 ^ v251) >> 22) & 0xFC | ((v309 ^ ~v251) >> 30)) ^ 0xF0)) ^ 0x22) - 73));
  HIDWORD(v307) = v318 ^ 0xC4A2C1;
  LODWORD(v307) = v318 ^ 0xFE000000;
  v319 = v307 >> 24;
  v320 = *(&STACK[0x133D0] + (v308 ^ 0xBDu));
  HIDWORD(v307) = v320 ^ 0xA2C1;
  LODWORD(v307) = v320 ^ 0xFEC40000;
  v321 = v307 >> 16;
  v322 = *(&STACK[0x133D0] + (BYTE1(v304) ^ 0xDFLL));
  HIDWORD(v307) = v322 ^ 0xFFFFFFC1;
  LODWORD(v307) = v322 ^ 0xFEC4A200;
  v323 = v321 ^ (v307 >> 8) ^ v319;
  v324 = (v302 ^ 0xEF6A1DBD) - ((2 * (v302 ^ 0xEF6A1DBD)) & 0x36BC3A86) - 0x79B44049E4A1E2BDLL;
  v325 = v297;
  v326 = ((v323 - 20667711 - ((2 * v323) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v324) ^ 0x5ELL))) - v297 + v284 - 2 * v250;
  v327 = ((v317 + 1758758257 - ((2 * v317) & 0xD1A90AE2)) ^ LODWORD(STACK[0x2848])) + LODWORD(STACK[0x27D8]) - LODWORD(STACK[0x2710]) + 219023872;
  v328 = v326 + LODWORD(STACK[0x27E0]) + v298;
  v329 = *(&STACK[0x133D0] + ((4 * (v324 >> 24)) ^ 0x2192EFED86CLL));
  HIDWORD(v307) = v329 ^ 0xC4A2C1;
  LODWORD(v307) = v329 ^ 0xFE000000;
  v330 = v307 >> 24;
  v331 = LODWORD(STACK[0x1F98]) ^ LODWORD(STACK[0x21A0]) ^ (v327 - 315716498 - ((2 * v327) & 0xDA5D18DC));
  v332 = *(&STACK[0x133D0] + (BYTE1(v315) ^ 0x20));
  v333 = v328 - 315716498 - ((2 * v328) & 0xDA5D18DC);
  HIDWORD(v307) = v332 ^ 0xFFFFFFC1;
  LODWORD(v307) = v332 ^ 0xFEC4A200;
  v334 = v307 >> 8;
  v335 = LODWORD(STACK[0x1F90]) ^ LODWORD(STACK[0x21B0]) ^ v333;
  v336 = *(&STACK[0x133D0] + (v310 ^ 0xBDu));
  HIDWORD(v307) = v336 ^ 0xA2C1;
  LODWORD(v307) = v336 ^ 0xFEC40000;
  v337 = (((v334 ^ (v307 >> 16) ^ v330) - 20667711 - ((2 * (v334 ^ (v307 >> 16) ^ v330)) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v304) ^ 0xA2))) + (LODWORD(STACK[0x2848]) ^ 0x68D48571) + (v293 ^ 0x972B7A8E) + 1;
  LODWORD(v315) = *(&STACK[0x133D0] + ((4 * (v315 >> 24)) ^ 0x15277D4AF14));
  HIDWORD(v307) = v315 ^ 0xC4A2C1;
  LODWORD(v307) = v315 ^ 0xFE000000;
  LODWORD(v315) = v307 >> 24;
  v338 = LODWORD(STACK[0x1F88]) ^ LODWORD(STACK[0x21D0]) ^ (v337 - 315716498 - ((2 * v337) & 0xDA5D18DC));
  LODWORD(v324) = *(&STACK[0x133D0] + (BYTE1(v324) ^ 0x1DLL));
  HIDWORD(v307) = v324 ^ 0xFFFFFFC1;
  LODWORD(v307) = v324 ^ 0xFEC4A200;
  LODWORD(v324) = v307 >> 8;
  v339 = *(&STACK[0x133D0] + (v291 ^ 0xBDu));
  HIDWORD(v307) = v339 ^ 0xA2C1;
  LODWORD(v307) = v339 ^ 0xFEC40000;
  v340 = v307 >> 16;
  v341 = *(&STACK[0x133D0] + (HIBYTE(v335) ^ 0xF9));
  HIDWORD(v307) = v341 ^ 0xC4A2C1;
  LODWORD(v307) = v341 ^ 0xFE000000;
  v342 = v307 >> 24;
  LODWORD(v324) = v325 + (((v324 ^ v340 ^ v315) - 20667711 - ((2 * (v324 ^ v340 ^ v315)) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v313) ^ 0xD7))) - LODWORD(STACK[0x27D0]);
  v343 = v324 - 315716498 - ((2 * v324) & 0xDA5D18DC);
  v344 = (v331 ^ 0xF96E727E) - ((2 * (v331 ^ 0xF96E727E)) & 0x75C82A5E) - 0x17999E67C51BEAD1;
  LODWORD(v324) = *(&STACK[0x133D0] + (BYTE1(v344) ^ 0x15));
  HIDWORD(v307) = v324 ^ 0xFFFFFFC1;
  LODWORD(v307) = v324 ^ 0xFEC4A200;
  LODWORD(v324) = v307 >> 8;
  v345 = LODWORD(STACK[0x1F80]) ^ LODWORD(STACK[0x21C0]) ^ v343;
  v346 = (v345 ^ 0xF96E727E) - ((2 * (v345 ^ 0xF96E727E)) & 0x1CC545B7CLL) - 0xC7C7F119D5D242;
  v347 = *(&STACK[0x133D0] + (BYTE1(v346) ^ 0x2DLL));
  HIDWORD(v307) = v347 ^ 0xFFFFFFC1;
  LODWORD(v307) = v347 ^ 0xFEC4A200;
  v348 = v307 >> 8;
  v349 = *(&STACK[0x133D0] + (v335 ^ 0x7Eu));
  HIDWORD(v307) = v349 ^ 0xA2C1;
  LODWORD(v307) = v349 ^ 0xFEC40000;
  v350 = v307 >> 16;
  v351 = *(STACK[0x2850] + (((BYTE1(v335) ^ 0x72) - 34) ^ 0x68));
  v352 = v342 - 20667711 - ((2 * v342) & 0xFD894582);
  HIDWORD(v307) = v351 ^ 0x1D;
  LODWORD(v307) = v351 << 24;
  v353 = v307 >> 31;
  HIDWORD(v307) = v353 ^ 1;
  LODWORD(v307) = (v353 ^ 0xFFFFFFE7) << 24;
  LOBYTE(v353) = v307 >> 26;
  v354 = *(&STACK[0x133D0] + ((4 * (v344 >> 24)) ^ 0x3A1998660E8));
  HIDWORD(v307) = v354 ^ 0xC4A2C1;
  LODWORD(v307) = v354 ^ 0xFE000000;
  v355 = v307 >> 24;
  v356 = *(&STACK[0x133D0] + (v331 ^ 0x7Eu));
  HIDWORD(v307) = v356 ^ 0xA2C1;
  LODWORD(v307) = v356 ^ 0xFEC40000;
  v357 = v307 >> 16;
  LODWORD(v346) = *(&STACK[0x133D0] + ((4 * (v346 >> 24)) ^ 0x3FCE0E03B98));
  v358 = v350 ^ v348;
  HIDWORD(v307) = v346 ^ 0xC4A2C1;
  LODWORD(v307) = v346 ^ 0xFE000000;
  LODWORD(v346) = v307 >> 24;
  v359 = *(&STACK[0x133D0] + v353);
  HIDWORD(v307) = v359 ^ 0xFFFFFFC1;
  LODWORD(v307) = v359 ^ 0xFEC4A200;
  v360 = v307 >> 8;
  v361 = *(STACK[0x2850] + (((BYTE2(v335) ^ 0x6E) - 34) ^ 0x68));
  HIDWORD(v307) = v361 ^ 0x1D;
  LODWORD(v307) = v361 << 24;
  v362 = v307 >> 31;
  v363 = (v338 ^ 0xF96E727E) - ((2 * (v338 ^ 0xF96E727E)) & 0x1B99C75FCLL) - 0x14E5129E2331C502;
  v364 = *(&STACK[0x133D0] + ((4 * (v363 >> 24)) ^ 0x3AC6BB58770));
  v365 = *(STACK[0x2858] + (((HIBYTE(v364) ^ 0xFE) + 71) ^ 0x39)) ^ 0xDD | (v364 << 8);
  HIDWORD(v307) = v362 ^ 1;
  LODWORD(v307) = (v362 ^ 0xFFFFFFE7) << 24;
  LOBYTE(v364) = v307 >> 26;
  v366 = *(&STACK[0x133D0] + (v338 ^ 0x7Eu));
  HIDWORD(v307) = v366 ^ 0xA2C1;
  LODWORD(v307) = v366 ^ 0xFEC40000;
  v367 = ((v355 ^ v360) - 20667711 - ((2 * (v355 ^ v360)) & 0xFD894582)) ^ *(&STACK[0x133D0] + (((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (BYTE2(v345) ^ 0x6E)) ^ 0x9DLL))) ^ 0x8C) - 37)) ^ (v307 >> 16);
  v368 = (v358 ^ v365 ^ 0xC4A2C100) - 20667711 - 2 * ((v358 ^ v365 ^ 0xC4A2C100) & 0x7EC4A2DF ^ (v358 ^ v365) & 0x1E);
  v369 = *(&STACK[0x133D0] + (BYTE1(v363) ^ 0x3ALL));
  HIDWORD(v307) = v369 ^ 0xFFFFFFC1;
  LODWORD(v307) = v369 ^ 0xFEC4A200;
  LODWORD(v344) = *(&STACK[0x133D0] + (BYTE2(v344) ^ 0xE4)) ^ v368;
  v370 = *(&STACK[0x133D0] + (v345 ^ 0x7Eu));
  v371 = v357 ^ (v346 - 20667711 - ((2 * v346) & 0xFD894582)) ^ (v307 >> 8);
  HIDWORD(v307) = v370 ^ 0xA2C1;
  LODWORD(v307) = v370 ^ 0xFEC40000;
  v372 = *(&STACK[0x133D0] + v364) ^ v371;
  LODWORD(v324) = *(&STACK[0x133D0] + (BYTE2(v363) ^ 0xCELL)) ^ v352 ^ (v307 >> 16) ^ v324;
  LODWORD(v363) = (v344 + 2090960010 - ((2 * v344) & 0xF9430914)) ^ LODWORD(STACK[0x2070]) ^ LODWORD(STACK[0x2200]);
  LODWORD(v344) = LODWORD(STACK[0x1F78]) ^ LODWORD(STACK[0x2208]) ^ (v367 + 2090960010 - ((2 * v367) & 0xF9430914));
  v373 = LODWORD(STACK[0x1F70]) ^ LODWORD(STACK[0x21F8]) ^ (v372 + 2090960010 - ((2 * v372) & 0xF9430914));
  v374 = STACK[0x2078];
  v375 = (v363 - 110202242 - ((2 * v363) & 0xF2DCE4FC)) ^ LODWORD(STACK[0x2078]);
  v376 = (v375 ^ 0xA4u) - ((2 * (v375 ^ 0xA4u)) & 0xACFF7AC);
  v377 = LODWORD(STACK[0x1F68]) ^ LODWORD(STACK[0x2210]) ^ (v324 + 2090960010 - ((2 * v324) & 0xF9430914));
  v378 = (v377 ^ 0xF96E727E) - ((2 * (v377 ^ 0xF96E727E)) & 0xA3A3AB4CLL);
  LODWORD(v363) = *(&STACK[0x133D0] + (v377 ^ 0x7Eu));
  HIDWORD(v307) = v363 ^ 0xA2C1;
  LODWORD(v307) = v363 ^ 0xFEC40000;
  LODWORD(v363) = v307 >> 16;
  v379 = (v344 ^ 0xF96E727E) - ((2 * (v344 ^ 0xF96E727E)) & 0x19AE52FC8) - 0xD576AD2328D681CLL;
  LODWORD(v346) = *(&STACK[0x133D0] + (BYTE1(v379) ^ 0x97));
  HIDWORD(v307) = v346 ^ 0xFFFFFFC1;
  LODWORD(v307) = v346 ^ 0xFEC4A200;
  LODWORD(v346) = v307 >> 8;
  v380 = *(&STACK[0x133D0] + (v373 ^ 0x7Eu));
  HIDWORD(v307) = v380 ^ 0xA2C1;
  LODWORD(v307) = v380 ^ 0xFEC40000;
  v381 = v307 >> 16;
  v382 = *(&STACK[0x133D0] + (v375 ^ 0xA4u));
  HIDWORD(v307) = v382 ^ 0xA2C1;
  LODWORD(v307) = v382 ^ 0xFEC40000;
  v383 = v307 >> 16;
  v384 = *(&STACK[0x133D0] + (*(STACK[0x2800] + (((BYTE1(v377) ^ 0x72) + 71) ^ 0xF9)) ^ 0xALL));
  HIDWORD(v307) = v384 ^ 0xFFFFFFC1;
  LODWORD(v307) = v384 ^ 0xFEC4A200;
  v385 = v307 >> 8;
  v386 = *(&STACK[0x133D0] + ((4 * (v379 >> 24)) ^ 0x3CAA254B734));
  v387 = v381 ^ v346;
  HIDWORD(v307) = v386 ^ 0xC4A2C1;
  LODWORD(v307) = v386 ^ 0xFE000000;
  v388 = (v373 ^ 0xF96E727E) - ((2 * (v373 ^ 0xF96E727E)) & 0x16995F40ALL) + 0x49F0DEEBB4CAFA05;
  v389 = v383 ^ *(&STACK[0x133D0] + (BYTE2(v388) ^ 0xCALL)) ^ (v385 - 20667711 - ((2 * v385) & 0xFD894582)) ^ (v307 >> 24);
  LODWORD(v346) = *(&STACK[0x133D0] + (BYTE1(v388) ^ 0xFALL));
  HIDWORD(v307) = v346 ^ 0xFFFFFFC1;
  LODWORD(v307) = v346 ^ 0xFEC4A200;
  v390 = (v307 >> 8) ^ v363;
  LODWORD(v363) = LODWORD(STACK[0x1F60]) ^ LODWORD(STACK[0x2220]) ^ (v389 - 1707592792 - ((2 * v389) & 0x34706750));
  v376 -= 0x2E2B24FBFA98042ALL;
  v391 = *(&STACK[0x133D0] + ((4 * (v376 >> 24)) ^ 0x347536C1014));
  HIDWORD(v307) = v391 ^ 0xC4A2C1;
  LODWORD(v307) = v391 ^ 0xFE000000;
  v392 = v390 ^ (v307 >> 24);
  v393 = v378 + 1372706214;
  LODWORD(v378) = *(&STACK[0x133D0] + ((4 * ((v378 + 0x4FA7CF8A51D1D5A6) >> 24)) ^ 0x13E9F3E2944));
  HIDWORD(v307) = v378 ^ 0xC4A2C1;
  LODWORD(v307) = v378 ^ 0xFE000000;
  LODWORD(v379) = ((v392 - 20667711 - ((2 * v392) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v379) ^ 0x72))) + LODWORD(STACK[0x1FF0]);
  LODWORD(v378) = *(&STACK[0x133D0] + (BYTE2(v376) ^ 0x67)) ^ (v307 >> 24) ^ (v387 - 20667711 - ((2 * v387) & 0xFD894582));
  LODWORD(v379) = LODWORD(STACK[0x1F58]) ^ LODWORD(STACK[0x2240]) ^ (v379 - 1707592792 - ((2 * v379) & 0x34706750));
  LODWORD(v378) = LODWORD(STACK[0x1F50]) ^ LODWORD(STACK[0x2238]) ^ (v378 - 1707592792 - ((2 * v378) & 0x34706750));
  LODWORD(v344) = *(&STACK[0x133D0] + (v344 ^ 0x7Eu));
  HIDWORD(v307) = v344 ^ 0xA2C1;
  LODWORD(v307) = v344 ^ 0xFEC40000;
  LODWORD(v344) = v307 >> 16;
  LODWORD(v376) = *(&STACK[0x133D0] + (BYTE1(v376) ^ 0xFBLL));
  HIDWORD(v307) = v376 ^ 0xFFFFFFC1;
  LODWORD(v307) = v376 ^ 0xFEC4A200;
  v394 = v307 >> 8;
  v395 = (v363 ^ 0xF96E727E) - ((2 * (v363 ^ 0xF96E727E)) & 0xB3102816) - 0x15F95CBAA677EBF5;
  LODWORD(v346) = *(&STACK[0x133D0] + ((4 * (v395 >> 24)) ^ 0x3A81A8D1564));
  HIDWORD(v307) = v346 ^ 0xC4A2C1;
  LODWORD(v307) = v346 ^ 0xFE000000;
  LODWORD(v346) = v307 >> 24;
  LODWORD(v388) = *(&STACK[0x133D0] + ((4 * (v388 >> 24)) ^ 0x127C37BAED0));
  HIDWORD(v307) = v388 ^ 0xC4A2C1;
  LODWORD(v307) = v388 ^ 0xFE000000;
  LODWORD(v344) = v344 ^ (v307 >> 24);
  LODWORD(v388) = (v378 ^ 0xF96E727E) - ((2 * (v378 ^ 0xF96E727E)) & 0xFA89FC6C) + 2101673526;
  v396 = *(&STACK[0x133D0] + (BYTE1(v388) ^ 0xFELL));
  HIDWORD(v307) = v396 ^ 0xFFFFFFC1;
  LODWORD(v307) = v396 ^ 0xFEC4A200;
  v397 = v307 >> 8;
  LODWORD(v344) = (v394 ^ v344) - 20667711 - ((2 * (v394 ^ v344)) & 0xFD894582);
  v398 = *(&STACK[0x133D0] + (v379 ^ 0x7Eu));
  HIDWORD(v307) = v398 ^ 0xA2C1;
  LODWORD(v307) = v398 ^ 0xFEC40000;
  LODWORD(v344) = v344 ^ *(&STACK[0x133D0] + (BYTE2(v393) ^ 0xD1));
  v399 = LODWORD(STACK[0x1F48]) ^ LODWORD(STACK[0x2258]) ^ (v344 - 1707592792 - ((2 * v344) & 0x34706750));
  LODWORD(v344) = (v307 >> 16) ^ v346 ^ v397;
  v400 = (v379 ^ 0xF96E727E) - ((2 * (v379 ^ 0xF96E727E)) & 0x18B79EAE6) - 0x4BFE9FD63A430A8DLL;
  LODWORD(v346) = *(&STACK[0x133D0] + ((4 * (v400 >> 24)) ^ 0x2D00580A714));
  HIDWORD(v307) = v346 ^ 0xC4A2C1;
  LODWORD(v307) = v346 ^ 0xFE000000;
  LODWORD(v346) = v307 >> 24;
  v401 = (v399 ^ 0xF96E727E) - ((2 * (v399 ^ 0xF96E727E)) & 0x1487ADCB2) + 0x44C9B207A43D6E59;
  LODWORD(v344) = (v344 - 20667711 - ((2 * v344) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v401) ^ 0x3DLL));
  v402 = *(&STACK[0x133D0] + (BYTE1(v401) ^ 0x6ELL));
  HIDWORD(v307) = v402 ^ 0xFFFFFFC1;
  LODWORD(v307) = v402 ^ 0xFEC4A200;
  v403 = v307 >> 8;
  HIDWORD(v307) = *(STACK[0x2860] + (((BYTE2(v363) ^ 0x6E) - 34) ^ 0x5DLL));
  LODWORD(v307) = (HIDWORD(v307) ^ 0xFFFFFF9F) << 24;
  v404 = v307 >> 28;
  HIDWORD(v307) = ~v404;
  LODWORD(v307) = (v404 ^ 0x40) << 24;
  LOBYTE(v404) = v307 >> 26;
  v405 = *(&STACK[0x133D0] + (v378 ^ 0x7Eu));
  HIDWORD(v307) = v405 ^ 0xA2C1;
  LODWORD(v307) = v405 ^ 0xFEC40000;
  LODWORD(v344) = LODWORD(STACK[0x1F40]) ^ LODWORD(STACK[0x2248]) ^ (v344 - 1557691645 - ((2 * v344) & 0x464F0606));
  LODWORD(v346) = *(&STACK[0x133D0] + v404) ^ v346 ^ v403 ^ ((v307 >> 16) - 20667711 - ((2 * (v307 >> 16)) & 0xFD894582));
  v406 = *(&STACK[0x133D0] + (BYTE1(v400) ^ 0xF5));
  HIDWORD(v307) = v406 ^ 0xFFFFFFC1;
  LODWORD(v307) = v406 ^ 0xFEC4A200;
  v407 = v307 >> 8;
  LODWORD(v363) = *(&STACK[0x133D0] + (v363 ^ 0x7Eu));
  HIDWORD(v307) = v363 ^ 0xA2C1;
  LODWORD(v307) = v363 ^ 0xFEC40000;
  v408 = v307 >> 16;
  LODWORD(v363) = LODWORD(STACK[0x1F38]) ^ LODWORD(STACK[0x2278]) ^ (v346 - 1557691645 - ((2 * v346) & 0x464F0606));
  LODWORD(v401) = *(&STACK[0x133D0] + ((4 * (v401 >> 24)) ^ 0x11326C81E90));
  HIDWORD(v307) = v401 ^ 0xC4A2C1;
  LODWORD(v307) = v401 ^ 0xFE000000;
  v409 = (v408 ^ (v307 >> 24) ^ v407) - 20667711 - ((2 * (v408 ^ (v307 >> 24) ^ v407)) & 0xFD894582);
  LODWORD(v401) = *(&STACK[0x133D0] + ((LOBYTE(STACK[0x1F38]) ^ LOBYTE(STACK[0x2278]) ^ (v346 + 3 - ((2 * v346) & 6))) ^ 0x7Eu));
  HIDWORD(v307) = v401 ^ 0xA2C1;
  LODWORD(v307) = v401 ^ 0xFEC40000;
  LODWORD(v401) = v307 >> 16;
  LODWORD(v395) = *(&STACK[0x133D0] + (BYTE1(v395) ^ 0x14));
  HIDWORD(v307) = v395 ^ 0xFFFFFFC1;
  LODWORD(v307) = v395 ^ 0xFEC4A200;
  LODWORD(v395) = v307 >> 8;
  LODWORD(v388) = v409 ^ *(&STACK[0x133D0] + (BYTE2(v388) ^ 0x44));
  v410 = *(&STACK[0x133D0] + (v399 ^ 0x7Eu));
  HIDWORD(v307) = v410 ^ 0xA2C1;
  LODWORD(v307) = v410 ^ 0xFEC40000;
  v411 = v307 >> 16;
  LODWORD(v378) = *(STACK[0x2850] + (((BYTE3(v378) ^ 0xF9) - 34) ^ 0x68));
  HIDWORD(v307) = v378 ^ 0x1D;
  LODWORD(v307) = v378 << 24;
  LODWORD(v378) = v307 >> 31;
  HIDWORD(v307) = v378 ^ 1;
  LODWORD(v307) = (v378 ^ 0xFFFFFFE7) << 24;
  LODWORD(v378) = *(&STACK[0x133D0] + (v307 >> 26));
  HIDWORD(v307) = v378 ^ 0xC4A2C1;
  LODWORD(v307) = v378 ^ 0xFE000000;
  LODWORD(v395) = v395 ^ (v411 - 20667711 - ((2 * v411) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v400) ^ 0xBCLL)) ^ (v307 >> 24);
  v412 = (v344 ^ 0xF96E727E) - ((2 * (v344 ^ 0xF96E727E)) & 0x528A81A8) + 0x5C23012E294540D4;
  LODWORD(v400) = *(&STACK[0x133D0] + ((4 * (v412 >> 24)) ^ 0x1708C04B8A4));
  HIDWORD(v307) = v400 ^ 0xC4A2C1;
  LODWORD(v307) = v400 ^ 0xFE000000;
  LODWORD(v400) = v307 >> 24;
  LODWORD(v395) = LODWORD(STACK[0x1F28]) ^ LODWORD(STACK[0x2268]) ^ (v395 - 1557691645 - ((2 * v395) & 0x464F0606));
  LODWORD(v388) = LODWORD(STACK[0x1F30]) ^ LODWORD(STACK[0x2270]) ^ (v388 - 1557691645 - ((2 * v388) & 0x464F0606));
  v413 = *(&STACK[0x133D0] + ((*(STACK[0x2698] + (((v395 >> 6) & 0xFC | (v395 >> 14)) ^ 0x85)) ^ 0x22) - 73));
  HIDWORD(v307) = v413 ^ 0xFFFFFFC1;
  LODWORD(v307) = v413 ^ 0xFEC4A200;
  v414 = v307 >> 8;
  LODWORD(v401) = (v401 - 20667711 - ((2 * v401) & 0xFD894582)) ^ v400;
  v415 = (v363 ^ 0xF96E727E) - ((2 * (v363 ^ 0xF96E727E)) & 0x10B2B4CEALL) + 0x6B1482818595A675;
  LODWORD(v363) = *(&STACK[0x133D0] + (BYTE1(v415) ^ 0xA6));
  HIDWORD(v307) = v363 ^ 0xFFFFFFC1;
  LODWORD(v307) = v363 ^ 0xFEC4A200;
  LODWORD(v363) = v307 >> 8;
  LODWORD(v346) = *(&STACK[0x133D0] + (BYTE3(v388) ^ 0xF9));
  HIDWORD(v307) = v346 ^ 0xC4A2C1;
  LODWORD(v307) = v346 ^ 0xFE000000;
  LODWORD(v363) = ((v307 >> 24) ^ v363) - 20667711 - ((2 * ((v307 >> 24) ^ v363)) & 0xFD894582);
  LODWORD(v344) = *(&STACK[0x133D0] + (v344 ^ 0x7Eu));
  HIDWORD(v307) = v344 ^ 0xA2C1;
  LODWORD(v307) = v344 ^ 0xFEC40000;
  v416 = (v395 ^ 0xF96E727E) - ((2 * (v395 ^ 0xF96E727E)) & 0x1E35A9898) + 0x2A1E8DD0F1AD4C4CLL;
  LODWORD(v363) = (v307 >> 16) ^ *(&STACK[0x133D0] + (BYTE2(v416) ^ 0xADLL)) ^ v363;
  LODWORD(v344) = v401 ^ *(&STACK[0x133D0] + (*(STACK[0x2858] + (((BYTE2(v388) ^ 0x6E) + 71) ^ 0x39)) ^ 0x79)) ^ v414;
  v417 = *(&STACK[0x133D0] + ((4 * (v416 >> 24)) ^ 0xA87A3743C4));
  HIDWORD(v307) = v417 ^ 0xC4A2C1;
  LODWORD(v307) = v417 ^ 0xFE000000;
  v418 = v307 >> 24;
  LODWORD(v401) = *(&STACK[0x133D0] + (BYTE1(v412) ^ 0x40));
  HIDWORD(v307) = v401 ^ 0xFFFFFFC1;
  LODWORD(v307) = v401 ^ 0xFEC4A200;
  LODWORD(v401) = v307 >> 8;
  LODWORD(v416) = (v344 + LODWORD(STACK[0x1FE8]) - 243366160 - ((2 * (v344 + LODWORD(STACK[0x1FE8]))) & 0xE2FD0DE0)) ^ LODWORD(STACK[0x2280]);
  LODWORD(v363) = (v363 - 243366160 - ((2 * v363) & 0xE2FD0DE0)) ^ LODWORD(STACK[0x2288]);
  LODWORD(v344) = *(&STACK[0x133D0] + (v388 ^ 0x7Eu));
  HIDWORD(v307) = v344 ^ 0xA2C1;
  LODWORD(v307) = v344 ^ 0xFEC40000;
  LODWORD(v344) = v363 - 110202242 - ((2 * v363) & 0xF2DCE4FC);
  LODWORD(v363) = ((v401 ^ (v307 >> 16) ^ v418) - 20667711 - ((2 * (v401 ^ (v307 >> 16) ^ v418)) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v415) ^ 0x95));
  LODWORD(v363) = LODWORD(STACK[0x1F18]) ^ LODWORD(STACK[0x2298]) ^ (v363 - 243366160 - ((2 * v363) & 0xE2FD0DE0));
  LODWORD(v388) = *(&STACK[0x133D0] + ((*(STACK[0x2808] + ((111 * (BYTE1(v388) ^ 0x72)) ^ 0x6ELL)) ^ 0x21) - 37));
  HIDWORD(v307) = v388 ^ 0xFFFFFFC1;
  LODWORD(v307) = v388 ^ 0xFEC4A200;
  LODWORD(v388) = v307 >> 8;
  LODWORD(v395) = *(&STACK[0x133D0] + (v395 ^ 0x7Eu));
  HIDWORD(v307) = v395 ^ 0xA2C1;
  LODWORD(v307) = v395 ^ 0xFEC40000;
  LODWORD(v395) = v307 >> 16;
  v419 = LODWORD(STACK[0x1F20]) ^ (v416 - 110202242 - ((2 * v416) & 0xF2DCE4FC));
  LODWORD(v415) = *(&STACK[0x133D0] + ((4 * (v415 >> 24)) ^ 0x1AC520A0614));
  HIDWORD(v307) = v415 ^ 0xC4A2C1;
  LODWORD(v307) = v415 ^ 0xFE000000;
  LODWORD(v415) = v395 ^ (v307 >> 24);
  v420 = (v363 ^ 0xF96E727E) - ((2 * (v363 ^ 0xF96E727E)) & 0x1F1C6C12ELL) - 0x4E24DDF6071C9F69;
  LODWORD(v401) = *(&STACK[0x133D0] + (BYTE1(v420) ^ 0x60));
  HIDWORD(v307) = v401 ^ 0xFFFFFFC1;
  LODWORD(v307) = v401 ^ 0xFEC4A200;
  LODWORD(v401) = v307 >> 8;
  LODWORD(v388) = ((v415 ^ v388) - 20667711 - ((2 * (v415 ^ v388)) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v412) ^ 0x45));
  v421 = (v419 ^ 0x4DD126FAu) - ((2 * (v419 ^ 0x4DD126FAu)) & 0x1009315FCLL) - 0x2BB2265A7FB67502;
  LODWORD(v415) = *(&STACK[0x133D0] + ((4 * (v421 >> 24)) ^ 0x35137669600));
  HIDWORD(v307) = v415 ^ 0xC4A2C1;
  LODWORD(v307) = v415 ^ 0xFE000000;
  LODWORD(v415) = v307 >> 24;
  LODWORD(v416) = LODWORD(STACK[0x1F10]) ^ LODWORD(STACK[0x2290]) ^ (v388 - 243366160 - ((2 * v388) & 0xE2FD0DE0));
  LODWORD(v388) = LODWORD(STACK[0x1F20]) ^ v344;
  LODWORD(v344) = *(&STACK[0x133D0] + (v416 ^ 0x7Eu));
  HIDWORD(v307) = v344 ^ 0xA2C1;
  LODWORD(v307) = v344 ^ 0xFEC40000;
  v422 = (v388 ^ 0x4DD126FA) - ((2 * (v388 ^ 0x4DD126FA)) & 0x1CA57B2FALL) + 0x3ECDC4A9E52BD97DLL;
  v423 = *(&STACK[0x133D0] + (v419 ^ 0xFAu));
  LODWORD(v401) = *(&STACK[0x133D0] + (BYTE2(v422) ^ 0x2BLL)) ^ (v401 - 20667711 - ((2 * v401) & 0xFD894582)) ^ (v307 >> 16);
  HIDWORD(v307) = v423 ^ 0xA2C1;
  LODWORD(v307) = v423 ^ 0xFEC40000;
  v424 = v307 >> 16;
  LODWORD(v415) = v401 ^ v415;
  v425 = (v416 ^ 0xF96E727E) - ((2 * (v416 ^ 0xF96E727E)) & 0x3021C304);
  LODWORD(v416) = v415 + 561270888 - ((2 * v415) & 0x42E8A0D0);
  v426 = v425 - 0x84C4F50E7EF1E7ELL;
  LODWORD(v425) = *(&STACK[0x133D0] + (((v425 - 7806) >> 8) ^ 0xE1));
  HIDWORD(v307) = v425 ^ 0xFFFFFFC1;
  LODWORD(v307) = v425 ^ 0xFEC4A200;
  v427 = v307 >> 8;
  LODWORD(v425) = v416 ^ LODWORD(STACK[0x2790]);
  LODWORD(v416) = *(&STACK[0x133D0] + ((4 * (v422 >> 24)) ^ 0xFB3712A794));
  HIDWORD(v307) = v416 ^ 0xC4A2C1;
  LODWORD(v307) = v416 ^ 0xFE000000;
  LODWORD(v425) = LODWORD(STACK[0x27D8]) - LODWORD(STACK[0x2710]) - ((-1758758258 - v425 + ((2 * v425) & 0xD1A90AE2)) ^ LODWORD(STACK[0x2848]));
  v428 = ((v427 ^ v424 ^ (v307 >> 24)) - 20667711 - ((2 * (v427 ^ v424 ^ (v307 >> 24))) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v420) ^ 0xE3));
  LODWORD(v422) = *(&STACK[0x133D0] + (BYTE1(v422) ^ 0xD9));
  HIDWORD(v307) = v422 ^ 0xFFFFFFC1;
  LODWORD(v307) = v422 ^ 0xFEC4A200;
  LODWORD(v422) = v307 >> 8;
  LODWORD(v363) = *(&STACK[0x133D0] + (v363 ^ 0x7Eu));
  HIDWORD(v307) = v363 ^ 0xA2C1;
  LODWORD(v307) = v363 ^ 0xFEC40000;
  v429 = *(&STACK[0x133D0] + ((4 * (v426 >> 24)) ^ 0x3DECEC2BC60));
  LODWORD(v363) = (v307 >> 16) ^ v422;
  HIDWORD(v307) = v429 ^ 0xC4A2C1;
  LODWORD(v307) = v429 ^ 0xFE000000;
  v430 = LODWORD(STACK[0x1F00]) ^ LODWORD(STACK[0x2708]) ^ LODWORD(STACK[0x27D0]) ^ LODWORD(STACK[0x22B0]) ^ (v428 - 624352304 - ((2 * v428) & 0xB59247A0));
  LODWORD(v363) = (v307 >> 24) ^ *(&STACK[0x133D0] + (BYTE2(v421) ^ 0x49)) ^ (v363 - 20667711 - ((2 * v363) & 0xFD894582));
  LODWORD(v422) = LODWORD(STACK[0x1F08]) ^ LODWORD(STACK[0x22B8]) ^ (v425 - ((2 * v425 + 438047742) & 0xB59247A0) - 405328433);
  LODWORD(v363) = LODWORD(STACK[0x1EF0]) ^ LODWORD(STACK[0x22C0]) ^ (v363 - 624352304 - ((2 * v363) & 0xB59247A0));
  v431 = *(&STACK[0x133D0] + ((LOBYTE(STACK[0x2250]) ^ LODWORD(STACK[0x2260]) ^ v363) ^ 0x7Eu));
  HIDWORD(v307) = v431 ^ 0xA2C1;
  LODWORD(v307) = v431 ^ 0xFEC40000;
  LODWORD(v416) = v307 >> 16;
  v432 = *(&STACK[0x133D0] + (v388 ^ 0xFAu));
  HIDWORD(v307) = v432 ^ 0xA2C1;
  LODWORD(v307) = v432 ^ 0xFEC40000;
  v433 = v307 >> 16;
  LODWORD(v420) = *(&STACK[0x133D0] + ((4 * (v420 >> 24)) ^ 0x2C76C8827E0));
  HIDWORD(v307) = v420 ^ 0xC4A2C1;
  LODWORD(v307) = v420 ^ 0xFE000000;
  LODWORD(v420) = v307 >> 24;
  LODWORD(v421) = *(&STACK[0x133D0] + (BYTE1(v421) ^ 0x8ALL));
  HIDWORD(v307) = v421 ^ 0xFFFFFFC1;
  LODWORD(v307) = v421 ^ 0xFEC4A200;
  LODWORD(v421) = v420 ^ (v433 - 20667711 - ((2 * v433) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v426) ^ 0x10)) ^ (v307 >> 8);
  LODWORD(v421) = LODWORD(STACK[0x22A8]) ^ LODWORD(STACK[0x2068]) ^ (v421 - 624352304 - ((2 * v421) & 0xB59247A0));
  LODWORD(v421) = (v421 + 1758758257 - ((2 * v421) & 0xD1A90AE2)) ^ LODWORD(STACK[0x2778]);
  v434 = (v422 ^ 0xF96E727E) - ((2 * (v422 ^ 0xF96E727E)) & 0x14681003ALL) + 0x28E56B1AA340801DLL;
  LODWORD(v388) = *(&STACK[0x133D0] + ((4 * (v434 >> 24)) ^ 0xA395AC6A8CLL));
  HIDWORD(v307) = v388 ^ 0xC4A2C1;
  LODWORD(v307) = v388 ^ 0xFE000000;
  LODWORD(v388) = v307 >> 24;
  LODWORD(v426) = LODWORD(STACK[0x2848]) ^ LODWORD(STACK[0x2078]) ^ LODWORD(STACK[0x2708]) ^ (v421 + 1758758257 - ((2 * v421) & 0xD1A90AE2));
  v435 = (v426 ^ LODWORD(STACK[0x27E0]) ^ 0xF96E727E) - ((2 * (v426 ^ LODWORD(STACK[0x27E0]) ^ 0xF96E727E)) & 0x120D42418) - 0x34B6D9CA6F95EDF4;
  v436 = *(&STACK[0x133D0] + (BYTE1(v435) ^ 0x12));
  HIDWORD(v307) = v436 ^ 0xFFFFFFC1;
  LODWORD(v307) = v436 ^ 0xFEC4A200;
  v437 = (v430 ^ 0xF96E727E) - ((2 * (v430 ^ 0xF96E727E)) & 0x46EF7902) - 0x81F76BDDC88437FLL;
  LODWORD(v435) = *(&STACK[0x133D0] + ((4 * (v435 >> 24)) ^ 0x32D2498D640));
  LODWORD(v416) = *(&STACK[0x133D0] + (BYTE2(v437) ^ 0x77)) ^ (v416 - 20667711 - ((2 * v416) & 0xFD894582)) ^ (v307 >> 8);
  HIDWORD(v307) = v435 ^ 0xC4A2C1;
  LODWORD(v307) = v435 ^ 0xFE000000;
  LODWORD(v435) = v307 >> 24;
  LODWORD(v388) = v416 ^ v388;
  LODWORD(v416) = *(&STACK[0x133D0] + (BYTE1(v434) ^ 0x80));
  HIDWORD(v307) = v416 ^ 0xFFFFFFC1;
  LODWORD(v307) = v416 ^ 0xFEC4A200;
  LODWORD(v416) = v307 >> 8;
  v438 = *(&STACK[0x133D0] + (v430 ^ 0x7Eu));
  HIDWORD(v307) = v438 ^ 0xA2C1;
  LODWORD(v307) = v438 ^ 0xFEC40000;
  v439 = v416 ^ *(&STACK[0x133D0] + ((((LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x2260]) ^ v363 ^ 0xF96E727E) + 237001296 + (~(2 * (LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x2260]) ^ v363 ^ 0xF96E727E)) | 0xE3BF4B61)) >> 16) ^ 0x20)) ^ (v435 - 20667711 - ((2 * v435) & 0xFD894582)) ^ (v307 >> 16);
  LODWORD(v388) = LODWORD(STACK[0x1EE8]) ^ LODWORD(STACK[0x22A0]) ^ (v388 + 631395202 - ((2 * v388) & 0x4B44A704));
  LODWORD(v416) = *(&STACK[0x133D0] + (BYTE1(v437) ^ 0xBCLL));
  HIDWORD(v307) = v416 ^ 0xFFFFFFC1;
  LODWORD(v307) = v416 ^ 0xFEC4A200;
  LODWORD(v416) = v307 >> 8;
  LODWORD(v421) = *(&STACK[0x133D0] + ((v426 ^ LOBYTE(STACK[0x27E0])) ^ 0x7Eu));
  HIDWORD(v307) = v421 ^ 0xA2C1;
  LODWORD(v307) = v421 ^ 0xFEC40000;
  LODWORD(v435) = (v307 >> 16) - 20667711 - ((2 * (v307 >> 16)) & 0xFD894582);
  LODWORD(v421) = LODWORD(STACK[0x1EE0]) ^ LODWORD(STACK[0x22E0]) ^ (v439 + 631395202 - ((2 * v439) & 0x4B44A704));
  v440 = *(&STACK[0x133D0] + ((((LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x2260]) ^ v363 ^ 0xF96E727E) - 0x378634FAF1DFA5B0 + (~(2 * (LODWORD(STACK[0x2250]) ^ LODWORD(STACK[0x2260]) ^ v363 ^ 0xF96E727E)) | 0xFFFFFFFFE3BF4B61)) >> 22) & 0x321E72C1FFCLL ^ 0x321E72C1438));
  HIDWORD(v307) = v440 ^ 0xC4A2C1;
  LODWORD(v307) = v440 ^ 0xFE000000;
  LODWORD(v434) = v416 ^ (v307 >> 24) ^ v435 ^ *(&STACK[0x133D0] + (BYTE2(v434) ^ 0x40));
  LODWORD(v434) = LODWORD(STACK[0x1ED8]) ^ LODWORD(STACK[0x22F8]) ^ (v434 + 631395202 - ((2 * v434) & 0x4B44A704));
  LODWORD(v422) = *(&STACK[0x133D0] + ((LOBYTE(STACK[0x1F08]) ^ LOBYTE(STACK[0x22B8]) ^ (v425 - ((2 * v425 - 2) & 0xA0) - 49)) ^ 0x7Eu));
  HIDWORD(v307) = v422 ^ 0xA2C1;
  LODWORD(v307) = v422 ^ 0xFEC40000;
  LODWORD(v416) = v307 >> 16;
  LODWORD(v422) = *(&STACK[0x133D0] + (v388 ^ 0x7Eu));
  HIDWORD(v307) = v422 ^ 0xA2C1;
  LODWORD(v307) = v422 ^ 0xFEC40000;
  LODWORD(v425) = v307 >> 16;
  HIDWORD(v307) = *(STACK[0x2860] + (((BYTE2(v426) ^ 0x6E) - 34) ^ 0x5DLL));
  LODWORD(v307) = (HIDWORD(v307) ^ 0xFFFFFF9F) << 24;
  LODWORD(v422) = v307 >> 28;
  HIDWORD(v307) = ~v422;
  LODWORD(v307) = (v422 ^ 0x40) << 24;
  LOBYTE(v426) = v307 >> 26;
  LODWORD(v422) = (v434 ^ 0xF96E727E) - ((2 * (v434 ^ 0xF96E727E)) & 0xEA48DB8C) + 1965321670;
  LODWORD(v435) = *(&STACK[0x133D0] + (BYTE1(v422) ^ 0x6DLL));
  HIDWORD(v307) = v435 ^ 0xFFFFFFC1;
  LODWORD(v307) = v435 ^ 0xFEC4A200;
  LODWORD(v435) = v307 >> 8;
  HIDWORD(v307) = *(STACK[0x2860] + (((BYTE1(v363) ^ 0x72) - 34) ^ 0x5DLL));
  LODWORD(v307) = (HIDWORD(v307) ^ 0xFFFFFF9F) << 24;
  LODWORD(v363) = v307 >> 28;
  HIDWORD(v307) = ~v363;
  LODWORD(v307) = (v363 ^ 0x40) << 24;
  LODWORD(v363) = *(&STACK[0x133D0] + (v307 >> 26));
  HIDWORD(v307) = v363 ^ 0xFFFFFFC1;
  LODWORD(v307) = v363 ^ 0xFEC4A200;
  LODWORD(v363) = (v307 >> 8) - 20667711 - ((2 * (v307 >> 8)) & 0xFD894582);
  LODWORD(v437) = *(&STACK[0x133D0] + ((4 * (v437 >> 24)) ^ 0x3DF8225088CLL));
  HIDWORD(v307) = v437 ^ 0xC4A2C1;
  LODWORD(v307) = v437 ^ 0xFE000000;
  LODWORD(v363) = v416 ^ (v307 >> 24) ^ v363 ^ *(&STACK[0x133D0] + v426);
  LODWORD(v363) = (v363 + 631395202 - ((2 * v363) & 0x4B44A704)) ^ LODWORD(STACK[0x2310]);
  LODWORD(v363) = (v363 - 110202242 - ((2 * v363) & 0xF2DCE4FC)) ^ LODWORD(STACK[0x2078]);
  v441 = (v421 ^ 0xF96E727E) - ((2 * (v421 ^ 0xF96E727E)) & 0xCC7F67E4) + 0x6BCC0F2C663FB3F2;
  LODWORD(v425) = *(&STACK[0x133D0] + (BYTE2(v441) ^ 0x3FLL)) ^ v425 ^ (v435 - 20667711 - ((2 * v435) & 0xFD894582));
  LODWORD(v437) = *(&STACK[0x133D0] + (v434 ^ 0x7Eu));
  HIDWORD(v307) = v437 ^ 0xA2C1;
  LODWORD(v307) = v437 ^ 0xFEC40000;
  LODWORD(v416) = v307 >> 16;
  v442 = LODWORD(STACK[0x2000]) ^ (v363 - 1283547523 - ((2 * v363) & 0x66FD3CFA));
  v443 = (v442 ^ 0xE9BE9E3E) - ((2 * (v442 ^ 0xE9BE9E3E)) & 0x86DE6664) - 0x133618BBC90CCCELL;
  LODWORD(v363) = *(&STACK[0x133D0] + ((4 * (v443 >> 24)) ^ 0x3FB3279D10CLL));
  HIDWORD(v307) = v363 ^ 0xC4A2C1;
  LODWORD(v307) = v363 ^ 0xFE000000;
  LODWORD(v435) = v307 >> 24;
  v444 = (v388 ^ 0xF96E727E) - ((2 * (v388 ^ 0xF96E727E)) & 0x78769EF0) + 0x2751FB2E3C3B4F78;
  LODWORD(v388) = *(&STACK[0x133D0] + ((4 * (v444 >> 24)) ^ 0x9D47ECB8F0));
  HIDWORD(v307) = v388 ^ 0xC4A2C1;
  LODWORD(v307) = v388 ^ 0xFE000000;
  LODWORD(v388) = ((v307 >> 24) ^ v416) - 20667711 - ((2 * ((v307 >> 24) ^ v416)) & 0xFD894582);
  LODWORD(v416) = *(&STACK[0x133D0] + (BYTE1(v441) ^ 0xB3));
  HIDWORD(v307) = v416 ^ 0xFFFFFFC1;
  LODWORD(v307) = v416 ^ 0xFEC4A200;
  v445 = *(&STACK[0x133D0] + (BYTE1(v444) ^ 0x4FLL));
  LODWORD(v416) = (v307 >> 8) ^ v388 ^ *(&STACK[0x133D0] + (BYTE2(v443) ^ 0x6FLL));
  HIDWORD(v307) = v445 ^ 0xFFFFFFC1;
  LODWORD(v307) = v445 ^ 0xFEC4A200;
  v446 = v307 >> 8;
  LODWORD(v441) = *(&STACK[0x133D0] + ((4 * (v441 >> 24)) ^ 0x1AF303CB198));
  HIDWORD(v307) = v441 ^ 0xC4A2C1;
  LODWORD(v307) = v441 ^ 0xFE000000;
  LODWORD(v441) = (v307 >> 24) - 20667711 - ((2 * (v307 >> 24)) & 0xFD894582);
  v447 = *(&STACK[0x133D0] + (v442 ^ 0x3Eu));
  HIDWORD(v307) = v447 ^ 0xA2C1;
  LODWORD(v307) = v447 ^ 0xFEC40000;
  LODWORD(v422) = v446 ^ *(&STACK[0x133D0] + (BYTE2(v422) ^ 0x24)) ^ (v307 >> 16);
  LODWORD(v434) = *(&STACK[0x133D0] + ((*(STACK[0x2808] + ((111 * (BYTE3(v434) ^ 0xF9)) ^ 0x6ELL)) ^ 0x21) - 37));
  HIDWORD(v307) = v434 ^ 0xC4A2C1;
  LODWORD(v307) = v434 ^ 0xFE000000;
  LODWORD(v434) = v307 >> 24;
  LODWORD(v443) = *(&STACK[0x133D0] + (BYTE1(v443) ^ 0x33));
  HIDWORD(v307) = v443 ^ 0xFFFFFFC1;
  LODWORD(v307) = v443 ^ 0xFEC4A200;
  LODWORD(v443) = v307 >> 8;
  v448 = LODWORD(STACK[0x1ED0]) ^ LODWORD(STACK[0x22F0]) ^ (v416 - 1433648533 - ((2 * v416) & 0x551884D6));
  LODWORD(v421) = *(&STACK[0x133D0] + (v421 ^ 0x7Eu));
  HIDWORD(v307) = v421 ^ 0xA2C1;
  LODWORD(v307) = v421 ^ 0xFEC40000;
  LODWORD(v421) = *(&STACK[0x133D0] + (BYTE2(v444) ^ 0x3BLL)) ^ (v307 >> 16);
  LODWORD(v444) = ((2 * v448) & 0xE7FCDEAC ^ 0xE2DCC4AC) + (v448 ^ 0xA901D28);
  LODWORD(v421) = v434 ^ v421 ^ (v443 - 20667711 - ((2 * v443) & 0xFD894582));
  LODWORD(v434) = LODWORD(STACK[0x1EC8]) ^ LODWORD(STACK[0x22D0]) ^ ((v425 ^ v435) - 1433648533 - ((2 * (v425 ^ v435)) & 0x551884D6));
  LODWORD(v421) = LODWORD(STACK[0x1EC0]) ^ LODWORD(STACK[0x2308]) ^ (v421 - 1433648533 - ((2 * v421) & 0x551884D6));
  LODWORD(v422) = LODWORD(STACK[0x1EB8]) ^ LODWORD(STACK[0x2300]) ^ ((v422 ^ v441) - 1433648533 - ((2 * (v422 ^ v441)) & 0x551884D6));
  LODWORD(v422) = ((2 * v422) & 0x597EEF28 ^ 0x505CE428) + (v422 ^ 0x55D105EA);
  v449 = (v434 ^ 0xF96E727E) - ((2 * (v434 ^ 0xF96E727E)) & 0x1364246CCLL);
  LODWORD(v434) = *(&STACK[0x133D0] + ((LOBYTE(STACK[0x1EC8]) ^ LOBYTE(STACK[0x22D0]) ^ ((v425 ^ v435) + 107 - ((2 * (v425 ^ v435)) & 0xD6))) ^ 0x7Eu));
  v450 = (v422 + 1396738156) - ((2 * (v422 + 1396738156)) & 0x185D1938);
  HIDWORD(v307) = v434 ^ 0xA2C1;
  LODWORD(v307) = v434 ^ 0xFEC40000;
  LODWORD(v434) = v307 >> 16;
  LOBYTE(v448) = 111 * v444 - 74;
  v451 = (v444 + 201429162) - ((2 * (v444 + 201429162)) & 0x1934219B6) - 0x69DF8919365EF325;
  LODWORD(v388) = *(&STACK[0x133D0] + (BYTE1(v451) ^ 0xCLL));
  HIDWORD(v307) = v388 ^ 0xFFFFFFC1;
  LODWORD(v307) = v388 ^ 0xFEC4A200;
  LODWORD(v388) = v307 >> 8;
  v452 = *(&STACK[0x133D0] + (((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + (v448 ^ 0x9DLL))) ^ 0x8C) - 37));
  HIDWORD(v307) = v452 ^ 0xA2C1;
  LODWORD(v307) = v452 ^ 0xFEC40000;
  LODWORD(v425) = v307 >> 16;
  v453 = *(&STACK[0x133D0] + ((4 * (v451 >> 24)) ^ 0x25881DB9B24));
  HIDWORD(v307) = v453 ^ 0xC4A2C1;
  LODWORD(v307) = v453 ^ 0xFE000000;
  v454 = v307 >> 24;
  LOBYTE(v435) = 111 * v422 - 44;
  v455 = (v421 ^ 0xF96E727E) - ((2 * (v421 ^ 0xF96E727E)) & 0xFBD0D478) - 0x70F7E830821795C4;
  LODWORD(v416) = *(&STACK[0x133D0] + (BYTE1(v455) ^ 0x6ALL));
  v456 = v388 ^ v434;
  HIDWORD(v307) = v416 ^ 0xFFFFFFC1;
  LODWORD(v307) = v416 ^ 0xFEC4A200;
  LODWORD(v416) = v307 >> 8;
  LODWORD(v388) = v450 + 204377244;
  LODWORD(v434) = *(&STACK[0x133D0] + (((v450 - 29540) >> 8) ^ 0x8CLL));
  HIDWORD(v307) = v434 ^ 0xFFFFFFC1;
  LODWORD(v307) = v434 ^ 0xFEC4A200;
  LODWORD(v450) = *(&STACK[0x133D0] + ((4 * ((v450 - 0x44CD9D0BF3D17364) >> 24)) ^ 0x2ECC98BD030));
  v457 = (v307 >> 8) ^ v454;
  HIDWORD(v307) = v450 ^ 0xC4A2C1;
  LODWORD(v307) = v450 ^ 0xFE000000;
  v458 = v307 >> 24;
  v449 -= 0x23CDF9CA64DEDC9ALL;
  LODWORD(v450) = *(&STACK[0x133D0] + (BYTE1(v449) ^ 0x23));
  HIDWORD(v307) = v450 ^ 0xFFFFFFC1;
  LODWORD(v307) = v450 ^ 0xFEC4A200;
  v459 = v307 >> 8;
  LODWORD(v450) = *(&STACK[0x133D0] + ((4 * (v449 >> 24)) ^ 0x370C818D66CLL));
  HIDWORD(v307) = v450 ^ 0xC4A2C1;
  LODWORD(v307) = v450 ^ 0xFE000000;
  LODWORD(v425) = v416 ^ (v307 >> 24) ^ v425;
  LODWORD(v416) = *(&STACK[0x133D0] + ((*(STACK[0x2808] + (v435 ^ 0x6ELL)) ^ 0x21) - 37));
  HIDWORD(v307) = v416 ^ 0xA2C1;
  LODWORD(v307) = v416 ^ 0xFEC40000;
  LODWORD(v416) = (v307 >> 16) ^ v459;
  LODWORD(v421) = *(&STACK[0x133D0] + (v421 ^ 0x7Eu));
  HIDWORD(v307) = v421 ^ 0xA2C1;
  LODWORD(v307) = v421 ^ 0xFEC40000;
  LODWORD(v388) = (v425 - 20667711 - ((2 * v425) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v388) ^ 0x2ELL));
  LODWORD(v421) = *(&STACK[0x133D0] + (BYTE2(v449) ^ 0x21)) ^ (v307 >> 16);
  LODWORD(v449) = *(&STACK[0x133D0] + ((4 * (v455 >> 24)) ^ 0x23C205F3DF4));
  LODWORD(v421) = v421 ^ (v457 - 20667711 - ((2 * v457) & 0xFD894582));
  HIDWORD(v307) = v449 ^ 0xC4A2C1;
  LODWORD(v307) = v449 ^ 0xFE000000;
  v460 = (v416 - 20667711 - ((2 * v416) & 0xFD894582)) ^ *(&STACK[0x133D0] + (BYTE2(v451) ^ 0xA1)) ^ (v307 >> 24);
  v461 = LODWORD(STACK[0x1EB0]) ^ LODWORD(STACK[0x22D8]) ^ (v421 + 580920379 - ((2 * v421) & 0x45404876));
  v462 = v460 + 580920379 - ((2 * v460) & 0x45404876);
  v463 = LODWORD(STACK[0x1EA8]) ^ LODWORD(STACK[0x2328]) ^ (v388 + 580920379 - ((2 * v388) & 0x45404876));
  v464 = STACK[0x2758];
  if (LODWORD(STACK[0x21C8]) != 16)
  {
    v464 = STACK[0x22C8];
  }

  v465 = *(&STACK[0x133D0] + (BYTE2(v455) ^ 0xE8));
  v466 = LODWORD(STACK[0x1E80]) ^ v464 ^ v462;
  LODWORD(STACK[0x2708]) = v466;
  v467 = LODWORD(STACK[0x22E8]) ^ v374 ^ ((v465 ^ LODWORD(STACK[0x2018]) ^ v458 ^ (v456 - 20667711 - ((2 * v456) & 0xFD894582))) + 580920379 - ((2 * (v465 ^ LODWORD(STACK[0x2018]) ^ v458 ^ (v456 - 20667711 - ((2 * v456) & 0xFD894582)))) & 0x45404876));
  v468 = (v466 ^ 0xF96E727E) + 0x4A47C3E48536DDA8 + (~(2 * (v466 ^ 0xF96E727E)) | 0xFFFFFFFEF59244B1);
  v469 = (v467 ^ 0xF96E727E) - ((2 * (v467 ^ 0xF96E727E)) & 0x1B3F5C9B2) + 0x61A0B4A4D9FAE4D9;
  v470 = *(&STACK[0xEF40] + ((4 * (v469 >> 24)) ^ 0x18682D29364));
  HIDWORD(v472) = v470 ^ 0x780;
  LODWORD(v472) = v470 ^ 0xA4BF0000;
  v471 = v472 >> 16;
  STACK[0x2328] = v468;
  v473 = *(&STACK[0xEF40] + (BYTE2(v468) ^ 0x36));
  HIDWORD(v472) = v473 ^ 0xBF0780;
  LODWORD(v472) = v473 ^ 0xA4000000;
  v474 = v471 ^ (v472 >> 24);
  v475 = *(&STACK[0xEF40] + (v463 ^ 0x7Eu));
  HIDWORD(v472) = v475 ^ 0x80;
  LODWORD(v472) = v475 ^ 0xA4BF0700;
  v476 = (v461 ^ 0xF96E727E) - ((2 * (v461 ^ 0xF96E727E)) & 0x46F5ED8) - 0x48D34E36FDC85094;
  v477 = (v474 - 1530986496 + ~((2 * v474) & 0x497E0F00) + 1921) ^ *(&STACK[0xEF40] + (BYTE1(v476) ^ 0xAFLL)) ^ (v472 >> 8);
  v478 = (v477 - 1951370770 - ((2 * v477) & 0x1760E3DC)) ^ LODWORD(STACK[0x2338]);
  v479 = (v463 ^ 0xF96E727E) - ((2 * (v463 ^ 0xF96E727E)) & 0xCC7B6942) + 0x23D4604F663DB4A1;
  v480 = *(&STACK[0xEF40] + ((4 * (v479 >> 24)) ^ 0x8F51813D98));
  HIDWORD(v472) = v480 ^ 0x780;
  LODWORD(v472) = v480 ^ 0xA4BF0000;
  v481 = v472 >> 16;
  v482 = STACK[0x2838];
  v483 = (v478 + 934709225 - ((2 * v478) & 0x6F6D0FD2)) ^ LODWORD(STACK[0x2838]);
  v484 = *(&STACK[0xEF40] + (v461 ^ 0x7Eu));
  HIDWORD(v472) = v484 ^ 0x80;
  LODWORD(v472) = v484 ^ 0xA4BF0700;
  v485 = *(&STACK[0xEF40] + (BYTE1(v468) ^ 0xDDLL)) ^ (v472 >> 8);
  v486 = STACK[0x2048];
  LODWORD(v469) = *(&STACK[0xEF40] + (BYTE2(v469) ^ 0xFALL));
  HIDWORD(v472) = v469 ^ 0xBF0780;
  LODWORD(v472) = v469 ^ 0xA4000000;
  v487 = STACK[0x24D4];
  v488 = (((v483 + 270669566 - ((2 * v483) & 0x20442DFC)) ^ v486) - 1030928115 - ((2 * ((v483 + 270669566 - ((2 * v483) & 0x20442DFC)) ^ v486)) & 0x851A921A)) ^ LODWORD(STACK[0x24D4]);
  v489 = (v481 - 1530984576 - ((2 * v481) & 0x497E0F00)) ^ v485 ^ (v472 >> 24);
  v490 = STACK[0x24D0];
  LODWORD(v469) = (v488 + 818286253 - ((2 * v488) & 0x618C1D5A)) ^ LODWORD(STACK[0x24D0]);
  v491 = (v489 - 1951370770 - ((2 * v489) & 0x1760E3DC)) ^ LODWORD(STACK[0x2318]);
  v492 = (v491 + 934709225 - ((2 * v491) & 0x6F6D0FD2)) ^ LODWORD(STACK[0x2838]);
  v493 = STACK[0x2010];
  v494 = (v469 - 136087397 - ((2 * v469) & 0xEFC6F136)) ^ LODWORD(STACK[0x2010]);
  v495 = STACK[0x2320];
  v496 = STACK[0x2320] & 0x18;
  v497 = STACK[0x27D0];
  v498 = STACK[0x24E0];
  v499 = (v492 - 1579847176 - ((2 * v492) & 0x43AAE3F0)) ^ LODWORD(STACK[0x24E0]);
  if ((STACK[0x2320] & 0x18) != 0)
  {
    v500 = ((v494 ^ 0x41414141u) >> LODWORD(STACK[0x27D0])) ^ 0xB0F5EF40 ^ ((v494 ^ 0x41414141) << (STACK[0x2320] & 0x18));
  }

  else
  {
    v500 = v494 ^ 0xF1B4AE01;
  }

  LODWORD(STACK[0x2710]) = v500;
  v501 = (((v499 - 40372070 - ((2 * v499) & 0xFB2FF134)) ^ LODWORD(STACK[0x24E8])) + 270669566 - ((2 * ((v499 - 40372070 - ((2 * v499) & 0xFB2FF134)) ^ LODWORD(STACK[0x24E8]))) & 0x20442DFC)) ^ v486;
  v502 = (v501 - 136087397 - ((2 * v501) & 0xEFC6F136)) ^ v493;
  v503 = STACK[0x27E0];
  v504 = ((v502 ^ 0x41414141) >> v503) + ((v502 ^ 0x41414141) << v496);
  v505 = v504 - 1326059712 - ((2 * v504) & 0x61EBDE80);
  v506 = v495;
  v507 = ((LODWORD(STACK[0x27A0]) ^ 0x8BB071EE) >> (v495 & 0x18)) | ((LODWORD(STACK[0x27A0]) ^ 0x8BB071EE) << v503);
  v508 = v507 - 1951370770 - ((2 * v507) & 0x1760E3DC);
  v509 = *(&STACK[0xEF40] + (LODWORD(STACK[0x2708]) ^ 0x7Eu));
  HIDWORD(v511) = v509 ^ 0x80;
  LODWORD(v511) = v509 ^ 0xA4BF0700;
  v510 = v511 >> 8;
  v512 = *(&STACK[0xEF40] + (BYTE2(v479) ^ 0x3DLL));
  HIDWORD(v511) = v512 ^ 0xBF0780;
  LODWORD(v511) = v512 ^ 0xA4000000;
  v513 = v511 >> 24;
  v514 = *(&STACK[0xEF40] + ((4 * (v476 >> 24)) ^ 0x2DCB2C72408));
  HIDWORD(v511) = v514 ^ 0x780;
  LODWORD(v511) = v514 ^ 0xA4BF0000;
  v515 = (v510 - 1530984576 - ((2 * v510) & 0x497E0F00)) ^ *(&STACK[0xEF40] + ((*(STACK[0x2870] + (((v467 >> 6) & 0xFC | (v467 >> 14)) ^ 0xE0)) ^ 0xC4) - 73)) ^ (v511 >> 16);
  v516 = v502 ^ 0xF1B4AE01;
  if ((v495 & 0x18) != 0)
  {
    v516 = v505;
  }

  v130 = (v495 & 0x18) == 0;
  v517 = (LODWORD(STACK[0x2798]) ^ 0x8BB071EE) >> (v495 & 0x18);
  v518 = v497;
  v519 = (v515 ^ v513) - 1951370770 - ((2 * (v515 ^ v513)) & 0x1760E3DC);
  v520 = (((LODWORD(STACK[0x2798]) ^ 0x8BB071EE) << v497) | v517) - 1951370770 - ((2 * (((LODWORD(STACK[0x2798]) ^ 0x8BB071EE) << v497) | v517)) & 0x1760E3DC);
  if (v130)
  {
    v508 = STACK[0x27A0];
  }

  v521 = v506 & 0x18;
  if ((v506 & 0x18) == 0)
  {
    v520 = STACK[0x2798];
  }

  v522 = ((v519 ^ v520) + 934709225 - ((2 * (v519 ^ v520)) & 0x6F6D0FD2)) ^ v482;
  v523 = (v522 - 136087397 - ((2 * v522) & 0xEFC6F136)) ^ v493;
  v524 = (v523 + 270669566 - ((2 * v523) & 0x20442DFC)) ^ v486;
  v525 = (v524 - 1030928115 - ((2 * v524) & 0x851A921A)) ^ v487;
  v526 = *(&STACK[0xEF40] + (v467 ^ 0x7Eu));
  HIDWORD(v528) = v526 ^ 0x80;
  LODWORD(v528) = v526 ^ 0xA4BF0700;
  v527 = v528 >> 8;
  v529 = *(&STACK[0xEF40] + ((STACK[0x2328] >> 22) & 0x1291F0F9FFCLL ^ 0x1291F0F9214));
  HIDWORD(v528) = v529 ^ 0x780;
  LODWORD(v528) = v529 ^ 0xA4BF0000;
  v530 = (v525 + 818286253 - ((2 * v525) & 0x618C1D5A)) ^ v490;
  v531 = ((v530 ^ 0x41414141) << v521) | ((v530 ^ 0x41414141u) >> v518);
  v532 = (v527 - 1530984576 - ((2 * v527) & 0x497E0F00)) ^ (v528 >> 16);
  v533 = *(&STACK[0xEF40] + (BYTE2(v476) ^ 0x37));
  HIDWORD(v528) = v533 ^ 0xBF0780;
  LODWORD(v528) = v533 ^ 0xA4000000;
  v534 = *(&STACK[0xEF40] + (BYTE1(v479) ^ 0xB4)) ^ v532 ^ (v528 >> 24);
  v535 = v531 - 1326059712 - ((2 * v531) & 0x61EBDE80);
  v536 = (v534 - 1951370770 - ((2 * v534) & 0x1760E3DC)) ^ v508;
  v537 = v530 ^ 0xF1B4AE01;
  if ((STACK[0x2718] & 0x18) != 0)
  {
    v537 = v535;
  }

  v538 = (v536 + 934709225 - ((2 * v536) & 0x6F6D0FD2)) ^ v482;
  v539 = (v538 - 1579847176 - ((2 * v538) & 0x43AAE3F0)) ^ v498;
  v540 = (v539 + 270669566 - ((2 * v539) & 0x20442DFC)) ^ v486;
  v541 = (v540 - 136087397 - ((2 * v540) & 0xEFC6F136)) ^ v493;
  v542 = (v541 - 40372070 - ((2 * v541) & 0xFB2FF134)) ^ LODWORD(STACK[0x24E8]);
  v543 = ((v542 ^ 0x41414141) << v521) ^ 0xB0F5EF40 ^ ((v542 ^ 0x41414141) >> (STACK[0x2330] & 0x18));
  v544 = v542 ^ 0xF1B4AE01;
  if ((STACK[0x2330] & 0x18) != 0)
  {
    v544 = v543;
  }

  v545 = ((2 * LODWORD(STACK[0x2340])) ^ 2) + LODWORD(STACK[0x2598]);
  v546 = STACK[0x2710];
  if (STACK[0x2598])
  {
    v547 = STACK[0x2710];
  }

  else
  {
    v547 = v516;
  }

  if (STACK[0x2598])
  {
    v546 = v544;
    v548 = v516;
  }

  else
  {
    v548 = v537;
  }

  if (STACK[0x2598])
  {
    v549 = v537;
  }

  else
  {
    v549 = v544;
  }

  if ((v545 & 2) != 0)
  {
    v550 = v546;
  }

  else
  {
    v550 = v548;
  }

  if ((v545 & 2) != 0)
  {
    v551 = v548;
  }

  else
  {
    v551 = v546;
  }

  if ((v545 & 2) != 0)
  {
    v552 = v549;
  }

  else
  {
    v552 = v547;
  }

  if ((v545 & 2) != 0)
  {
    v553 = v547;
  }

  else
  {
    v553 = v549;
  }

  v554 = (v553 ^ 0xB0F5EF40) - ((2 * (v553 ^ 0xB0F5EF40) - 37338798) & 0xCE321A4A) - 436458034;
  v555 = *(&off_278E1E490 + LODWORD(STACK[0x1E60])) - 4;
  v556 = STACK[0x1FC8];
  *(v556 + STACK[0x2748]) = (v555[(((v553 ^ 0x40) - ((2 * (v553 ^ 0x40) + 82) & 0x4A) - 50) ^ v550) ^ 0x2ALL] + 95) ^ 0xC0;
  v557 = (v550 ^ 0xB0F5EF40) - ((2 * (v550 ^ 0xB0F5EF40) + 50188524) & 0x541CD3CE) - 1416801699;
  v558 = v557 ^ v552;
  v559 = v555[((((v550 ^ 0xEF40) - ((2 * (v550 ^ 0xEF40) - 12052) & 0xD3CE) + 21085) ^ v552) >> 8) ^ 0x1DLL] + 95;
  HIDWORD(v560) = v559 ^ 0xFFFFFFF7;
  LODWORD(v560) = (v559 ^ 0x40) << 24;
  v561 = (v551 ^ 0xB0F5EF40) - ((2 * (v551 ^ 0xB0F5EF40) + 53249540) & 0x18DCA378);
  v562 = STACK[0x2698];
  LOBYTE(v559) = *(STACK[0x2698] + ((v560 >> 30) ^ 0x4CLL)) ^ 0x22;
  *(v556 + STACK[0x2740]) = v559 - ((2 * v559 + 46) & 0x3E) - 42;
  v563 = (STACK[0x2348] ^ 0xFBFED76FBEFD7F6DLL) + 0x401289041028093 + ((2 * STACK[0x2348]) & 0x17DFAFEDALL);
  v564 = (STACK[0x2368] ^ 0xD5FFDE57BB47FDDBLL) + 0x2A0021A844B80225 + ((2 * STACK[0x2368]) & 0x1768FFBB6);
  STACK[0x27E0] = v564;
  v565 = (v552 ^ 0xB0F5EF40) - ((2 * (v552 ^ 0xB0F5EF40) + 1244627038) & 0x64CD4F28) + 394160067;
  v566 = v565 ^ v551;
  v567 = (((v552 ^ 0x40) - ((2 * (v552 ^ 0x40) + 94) & 0x28) - 61) ^ v551) ^ 0xACLL;
  v568 = *(&off_278E1E490 + SLODWORD(STACK[0x1E58])) - 4;
  *(v556 + v563) = v568[v567] ^ 0x5B;
  v569 = STACK[0x2800];
  *(v556 + v564) = *(STACK[0x2800] + (((v568[((v554 ^ v550) >> 16)] ^ 0xF4) + 71) ^ 0xF9)) ^ 0xB9;
  LODWORD(v567) = v561 - 570125122;
  v570 = (v561 - 570125122) ^ v553;
  v571 = v568[((v561 - 66) ^ v553) ^ 0x98];
  HIDWORD(v560) = v571 ^ 0x29;
  LODWORD(v560) = (v571 ^ 0x40) << 24;
  LOBYTE(v571) = *(v562 + ((v560 >> 30) ^ 0x4CLL)) ^ 0x22;
  v572 = (STACK[0x2358] ^ 0x5E7ECEEADCFFED7FLL) - 0x5E7ECEEADCFFED7FLL + ((2 * STACK[0x2358]) & 0x1B9FFDAFELL);
  STACK[0x27D0] = v572;
  *(v556 + v572) = v571 - ((2 * v571 + 46) & 0x3E) - 42;
  *(v556 + STACK[0x2350]) = v568[BYTE2(v558) ^ 0x2ELL] ^ 0xA5;
  v573 = STACK[0x2850];
  v574 = *(STACK[0x2850] + (((((v554 ^ v550) >> 24) ^ 0xC5) - 34) ^ 0x68));
  HIDWORD(v560) = v574 ^ 0x1D;
  LODWORD(v560) = v574 << 24;
  v575 = v560 >> 31;
  HIDWORD(v560) = v575 ^ 1;
  LODWORD(v560) = (v575 ^ 0xFFFFFFE7) << 24;
  v576 = STACK[0x2388];
  *(v556 + v576) = v568[(v560 >> 26) ^ 0x19] ^ 0x7E;
  *(v556 + STACK[0x2378]) = v568[HIBYTE(v566) ^ 0x2DLL] ^ 0x47;
  v577 = *(v573 + ((((v555[HIBYTE(v558) ^ 0x54] + 95) ^ 0xF3) - 34) ^ 0x68));
  HIDWORD(v560) = v577 ^ 0x1D;
  LODWORD(v560) = v577 << 24;
  v578 = v560 >> 31;
  HIDWORD(v560) = v578 ^ 1;
  LODWORD(v560) = (v578 ^ 0xFFFFFFE7) << 24;
  v579 = STACK[0x2360];
  *(v556 + v579) = (v560 >> 26) ^ 0xC7;
  v580 = STACK[0x2370];
  *(v556 + v580) = *(STACK[0x2858] + (((v568[BYTE1(v566) ^ 0xDLL] ^ 0xC0) + 71) ^ 0x39)) ^ 0x66;
  v581 = STACK[0x2380];
  *(v556 + v581) = v568[HIBYTE(v570) ^ 0x20] ^ 0x88;
  LOBYTE(v566) = *(v569 + (((v568[BYTE2(v566) ^ 0xB0] ^ 0xF4) + 71) ^ 0xF9)) ^ 0xD8;
  v582 = STACK[0x2440];
  *(v556 + v582) = v566;
  *(v556 + STACK[0x2478]) = v568[v558 ^ 0xE2] ^ 0xFD;
  *(v556 + STACK[0x2390]) = v568[BYTE1(v570) ^ 0x63] ^ 0xE0;
  *(v556 + STACK[0x2448]) = (v555[((*(v562 + (((v570 >> 14) & 0xFC | (v570 >> 22) & 3) ^ 0x1CLL)) ^ 0x22) - 73) ^ 0xE8] + 95) ^ 0x40;
  v583 = v568[((v554 ^ v550) >> 8) ^ 0xF5];
  HIDWORD(v560) = v583 ^ 2;
  LODWORD(v560) = v583 << 24;
  LOBYTE(v583) = *(v562 + ((v560 >> 30) ^ 0x88)) ^ 0x22;
  *(v556 + STACK[0x2450]) = v583 - ((2 * v583 + 46) & 0x3E) - 42;
  v584 = STACK[0x2838];
  v585 = (v584 ^ 0x85D0207D ^ v565) - ((2 * (v584 ^ 0x85D0207D ^ v565)) & 0x8BC834E) + 73286055;
  LODWORD(v556) = STACK[0x2008];
  v586 = LODWORD(STACK[0x25B8]) ^ LODWORD(STACK[0x2008]);
  v587 = (111 * ((v555[(LODWORD(STACK[0x25B8]) ^ LODWORD(STACK[0x2008]) ^ ((v584 ^ 0x7D ^ v565) - ((2 * (v584 ^ 0x7D ^ v565)) & 0x4E) - 89)) ^ 0xE1] + 95) ^ 0xE1)) ^ 0x6ELL;
  v588 = STACK[0x2808];
  v589 = (*(v588 + v587) ^ 0x21) - ((2 * (*(v588 + v587) ^ 0x21) + 54) & 0x64);
  v590 = STACK[0x2838];
  v591 = LODWORD(STACK[0x2838]) ^ LODWORD(STACK[0x2008]);
  v592 = v591 ^ ((v554 ^ LODWORD(STACK[0x25B0]) ^ 0xA4824D51) + 934709225 - 2 * ((v554 ^ LODWORD(STACK[0x25B0]) ^ 0xA4824D51) & 0x37B687ED ^ (v554 ^ LODWORD(STACK[0x25B0])) & 4));
  LODWORD(v587) = *(v573 + (((BYTE2(v592) ^ 0xFD) - 34) ^ 0x68));
  v593 = *(STACK[0x2860] + (((((v586 ^ v585) >> 16) ^ 0xAE) - 34) ^ 0x5DLL));
  v594 = STACK[0x1FC0];
  *(v594 + v563) = v589 + 13;
  LODWORD(v573) = ((LODWORD(STACK[0x25E0]) ^ 0x55F375F3 ^ v590) - ((2 * (LODWORD(STACK[0x25E0]) ^ 0x55F375F3 ^ v590)) & 0x541CD3CE) - 1441895961) ^ v556 ^ v557;
  LODWORD(v563) = v555[((*(v562 + (((v573 >> 14) & 0xFC | (v573 >> 22) & 3) ^ 0x53)) ^ 0x22) - 73) ^ 0xE8];
  HIDWORD(v560) = (v563 + 31) ^ 0x22222222;
  LODWORD(v560) = (v563 << 24) - 553648128;
  v595 = STACK[0x2870];
  *(v594 + STACK[0x2460]) = ((*(STACK[0x2870] + ((v560 >> 30) ^ 0x29)) ^ 0xC4) - 73) ^ 0xDB;
  LODWORD(v563) = v568[v573 ^ 0xADLL];
  HIDWORD(v560) = v563 ^ 0x66666666;
  LODWORD(v560) = (v563 ^ 0x40) << 24;
  LOBYTE(v563) = *(v595 + ((v560 >> 30) ^ 0x29)) ^ 0xC4;
  *(v594 + STACK[0x2468]) = v563 + ((16 - 2 * v563) | 0x9B) - 22;
  *(v594 + v580) = (v555[(((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (((v586 ^ v585) >> 8) ^ 0x22)) ^ 0x9DLL))) ^ 0x8C) - 37) ^ 0xE8] + 95) ^ 0x1E;
  LODWORD(v567) = v591 ^ ((LODWORD(STACK[0x25C0]) ^ 0x6071491E ^ v567) + 934709225 - ((2 * (LODWORD(STACK[0x25C0]) ^ 0x6071491E ^ v567)) & 0x6F6D0FD2));
  *(v594 + v581) = v568[BYTE3(v567) ^ 4] ^ 0xCF;
  *(v594 + v579) = v568[BYTE3(v573) ^ 0x9ALL] ^ 0xE6;
  HIDWORD(v560) = v593;
  LODWORD(v560) = (v593 ^ 0xFFFFFF9F) << 24;
  LODWORD(v563) = v560 >> 28;
  HIDWORD(v560) = ~v563;
  LODWORD(v560) = (v563 ^ 0x40) << 24;
  *(v594 + v582) = (v555[(v560 >> 26) ^ 0x2BLL] + 95) ^ 0xFC;
  *(v594 + v576) = v568[HIBYTE(v592) ^ 0x55] ^ 0x8D;
  *(v594 + STACK[0x2740]) = (v555[BYTE1(v573) ^ 0x80] + 95) ^ 0x9C;
  *(v594 + STACK[0x2488]) = (v555[BYTE1(v567) ^ 0x54] + 95) ^ 0x9E;
  *(v594 + STACK[0x27D0]) = (v555[v567 ^ 0x59] + 95) ^ 0x84;
  HIDWORD(v560) = v587 ^ 0x1D;
  LODWORD(v560) = v587 << 24;
  LODWORD(v580) = v560 >> 31;
  HIDWORD(v560) = v580 ^ 1;
  LODWORD(v560) = (v580 ^ 0xFFFFFFE7) << 24;
  *(v594 + STACK[0x27E0]) = (v555[(v560 >> 26) ^ 0x57] + 95) ^ 0x93;
  HIDWORD(v560) = ((v586 ^ v585) >> 24) ^ 0xAAAAAAAA;
  LODWORD(v560) = v586 ^ ~v585;
  *(v594 + STACK[0x2508]) = v568[((*(v595 + ((v560 >> 30) ^ 0x89)) ^ 0xC4) - 73) ^ 0x19] ^ 0xD;
  *(v594 + STACK[0x2510]) = v568[BYTE2(v567) ^ 0xF3] ^ 0xA;
  *(v594 + STACK[0x2518]) = (v555[((*(v588 + ((111 * (BYTE1(v592) ^ 0x5D)) ^ 0x6ELL)) ^ 0x21) - 37) ^ 0xE8] + 95) ^ 0xC3;
  v596 = v555[v592 ^ 0x4CLL] + 95;
  HIDWORD(v560) = v596 ^ 6;
  LODWORD(v560) = (v596 ^ 0x40) << 24;
  v597 = *(v562 + ((v560 >> 30) ^ 0x4CLL)) ^ 0x22;
  HIDWORD(v560) = (v597 + 55) ^ 0x2B;
  LODWORD(v560) = (72 - v597) << 24;
  LOBYTE(v597) = *(v562 + ((v560 >> 30) ^ 0x4CLL)) ^ 0x22;
  *(v594 + STACK[0x2748]) = v597 - ((2 * v597 + 110) & 0x64) - 23;
  v598 = (((LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2720])) & STACK[0x1FE0]) << STACK[0x2880]) ^ (((LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2720])) & STACK[0x2040]) >> STACK[0x2818]);
  v599 = (v598 + 155881303 - ((2 * v598) & 0x12951EAE)) ^ (2 * (((v598 + 155881303 - ((2 * v598) & 0x12951EAE)) ^ 0x94A8F57) & STACK[0x27B8]));
  v600 = STACK[0x2030] & (4 * ((v599 ^ 0x94A8F57) & STACK[0x27B8])) ^ v599;
  LODWORD(v572) = v600 ^ 0x6B0F7D4D ^ STACK[0x2020] & (16 * ((v600 ^ 0x94A8F57) & STACK[0x2028]));
  v601 = STACK[0x1E78];
  v602 = (((v601 ^ LODWORD(STACK[0x2728])) & STACK[0x1FD8]) >> STACK[0x2818]) ^ (((v601 ^ LODWORD(STACK[0x2728])) & STACK[0x1FE0]) << STACK[0x2880]);
  v603 = v602 - 1438844476 - ((2 * v602) & 0x5479F388);
  LODWORD(v568) = ((2 * ((v603 ^ 0x2A3CF9C4) & STACK[0x27B8]) - 1438844476 - ((4 * ((v603 ^ 0x2A3CF9C4) & STACK[0x27B8])) & 0x5479F388)) ^ v603) & STACK[0x27B8];
  LODWORD(v568) = v603 ^ (2 * (((2 * v568 + 708639172 - ((4 * v568) & 0x5479F388)) ^ v603) & STACK[0x27B8]));
  v604 = (((LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2730])) & STACK[0x1FD0]) >> STACK[0x2878]) + (((LODWORD(STACK[0x2090]) ^ LODWORD(STACK[0x2730])) & STACK[0x2050]) << STACK[0x2810]);
  v605 = (v604 + 1210294947 - ((2 * v604) & 0x90474546)) ^ (2 * (((v604 + 1210294947 - ((2 * v604) & 0x90474546)) ^ 0x4823A2A3) & STACK[0x27B0]));
  LODWORD(v580) = (((v601 ^ LODWORD(STACK[0x2738])) & STACK[0x1FD8]) >> STACK[0x2818]) + (((v601 ^ LODWORD(STACK[0x2738])) & STACK[0x2038]) << STACK[0x2880]);
  v606 = STACK[0x2088] & (4 * ((v605 ^ 0x823A2A3) & STACK[0x27B0])) ^ v605;
  LODWORD(v580) = (v580 + 1127408935 - ((2 * v580) & 0x8665CA4E)) ^ (2 * (((v580 + 1127408935 - ((2 * v580) & 0x8665CA4E)) ^ 0x4332E527) & LODWORD(STACK[0x27B8])));
  LODWORD(v580) = LODWORD(STACK[0x2030]) & (4 * ((v580 ^ 0x332E527) & LODWORD(STACK[0x27B8]))) ^ v580;
  LODWORD(v580) = v580 ^ 0x93A24E7B ^ LODWORD(STACK[0x2020]) & (16 * ((v580 ^ 0x332E527) & LODWORD(STACK[0x2028])));
  LODWORD(v563) = v568 ^ 0x69A7B9B0 ^ STACK[0x2020] & (16 * ((v568 ^ 0xA3CF9C4) & STACK[0x2028]));
  v607 = *(v2 + 8 * ((LODWORD(STACK[0x1E70]) <= ((STACK[0x2538] + 417599105 - ((2 * STACK[0x2538] + 32) & 0x31C81D02) + 16) ^ 0x18E40E81)) ^ LODWORD(STACK[0x2098])));
  LODWORD(STACK[0x25C0]) = v606 ^ 0xA43CBA01 ^ STACK[0x2058] & (16 * ((v606 ^ 0x823A2A3) & STACK[0x2060]));
  LODWORD(STACK[0x25E0]) = v572;
  LODWORD(STACK[0x25B8]) = v580;
  LODWORD(STACK[0x2598]) = STACK[0x2438];
  LODWORD(STACK[0x25B0]) = v563;
  return v607();
}

uint64_t sub_244AE4774()
{
  v1 = STACK[0x1E50];
  v2 = LODWORD(STACK[0x1E48]) - 1132212583;
  LODWORD(STACK[0x2848]) = v2;
  return (*(v0 + 8 * (v1 + 24 * (v2 == -756793209))))();
}

uint64_t sub_244AE47C8@<X0>(int a1@<W8>)
{
  v2 = 3407 * (a1 ^ 0xB49);
  LODWORD(STACK[0x2840]) = v2 - 756800023;
  LODWORD(STACK[0x2880]) = v2 - 1670;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_244AE4834()
{
  v4 = STACK[0x2848];
  LODWORD(STACK[0x2878]) = LODWORD(STACK[0x2848]) < LODWORD(STACK[0x2840]);
  v5 = (v2 | ((v2 < 0x772D81D2) << 32)) - 1999471058;
  v6 = *(v1 + v5);
  v7 = v2 - 1999471056;
  v8 = v7 ^ 0xFF9506F79B5FEDFFLL;
  v9 = (2 * v7) & 0x136BFDBFCLL;
  v10 = ((v2 - 1999471057) ^ 0x7FD7CB41FBEEFFBFLL) - 0x7FD7CB41FBEEFFBFLL + ((2 * (v2 - 1999471057)) & 0x1F7DDFF7ELL);
  v11 = ((v2 - 1999471055) ^ 0x3E3B6BEF7E76FFFFLL) - 0x3E3B6BEF7E76FFFFLL + ((2 * (v2 - 1999471055)) & 0xFCEDFFFELL);
  v12 = *(STACK[0x27C0] + 4 * (*(v1 + v11) ^ 0xD3));
  HIDWORD(v14) = v12 ^ 0x75;
  LODWORD(v14) = v12 ^ 0x32B9CD00;
  v13 = v14 >> 8;
  v15 = v8 + 0x6AF90864A01201 + v9;
  HIDWORD(v14) = (LODWORD(STACK[0x2880]) - 2253) ^ v6 ^ 0x3C;
  LODWORD(v14) = v6 << 24;
  LODWORD(v8) = *(STACK[0x2868] + 4 * (*(STACK[0x2800] + (((*(v1 + v10) ^ 0x7B) + 71) ^ 0xF9)) ^ 0xB9));
  LOBYTE(v6) = *(STACK[0x2698] + ((v14 >> 30) ^ 0x4CLL));
  HIDWORD(v14) = v8 ^ 0x36407E;
  LODWORD(v14) = v8 ^ 0x13000000;
  LODWORD(v8) = v14 >> 24;
  v16 = STACK[0x2830];
  v17 = STACK[0x27F8];
  LODWORD(v9) = 181656765 * *(STACK[0x27A8] + 4 * (*(STACK[0x2858] + (((*(v0 + v10) ^ 0xDB) + 71) ^ 0x39)) ^ 0xD4)) - 2144826383;
  v18 = *(STACK[0x2868] + 4 * ((((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (((v6 ^ 0x22) - 73) ^ 0x86)) ^ 0x9DLL))) ^ 0x8C) - 37) ^ 0xB3u));
  HIDWORD(v14) = v9 ^ 0xB28803;
  LODWORD(v14) = v9 ^ 0xA0000000;
  LODWORD(v9) = v14 >> 24;
  HIDWORD(v14) = v18 ^ 0xF413;
  LODWORD(v14) = v18 ^ 0xFAF50000;
  LODWORD(v11) = (181656765 * *(STACK[0x27A8] + 4 * (*(v0 + v15) ^ 0xF9)) - 2144826383) ^ __ROR4__(*(STACK[0x27C8] + 4 * (*(v0 + v11) ^ 0xB8)), 8) ^ v9;
  LODWORD(v9) = *(STACK[0x27C8] + 4 * ((((LODWORD(STACK[0x27F8]) + 115 * *(STACK[0x2830] + ((111 * (*(v0 + v5) ^ 0xDB)) ^ 0x9DLL))) ^ 0x8C) - 37) ^ 0x36u));
  v19 = (v13 - 1429666360 - ((2 * v13) & 0x55920B90)) ^ *(STACK[0x2868] + 4 * (*(v1 + v15) ^ 0x9CLL)) ^ v8 ^ (v14 >> 16);
  HIDWORD(v14) = v9 ^ 0x4FEA;
  LODWORD(v14) = v9 ^ 0xA8EB0000;
  LODWORD(v11) = v11 ^ (v14 >> 16);
  *(v1 + v5) = HIBYTE(v19) ^ 0xC3;
  *(v0 + v5) = BYTE3(v11) ^ 0x41;
  *(v1 + v10) = BYTE2(v19) ^ 0x65;
  LOBYTE(v5) = (v17 + 115 * *(v16 + ((111 * (BYTE2(v11) ^ 0xDF)) ^ 0x9DLL))) ^ 0x8C;
  *(v0 + v10) = v5 - ((2 * v5 + 54) & 0x64) + 13;
  *(v1 + v15) = BYTE1(v19) ^ 0x11;
  *(v0 + v15) = BYTE1(v11) ^ 0xC2;
  LOBYTE(v5) = (v17 + 115 * *(v16 + ((111 * (v19 ^ 0xA4)) ^ 0x9DLL))) ^ 0x8C;
  v20 = (((v2 - 1999471058) | 3) ^ 0x7F6D3DF34FBDFE1FLL) - 0x7F6D3DF34FBDFE1FLL + ((2 * ((v2 - 1999471058) | 3)) & 0x9F7BFC3ELL);
  *(v1 + v20) = v5 - ((2 * v5 + 54) & 0x3E) - 6;
  *(v0 + v20) = v11 ^ 0x7C;
  if (LODWORD(STACK[0x2878]) != v2 + 1538703033 < 0xD2E44087)
  {
    v21 = STACK[0x2878];
  }

  else
  {
    v21 = v2 + 1538703033 < v4;
  }

  return (*(v3 + 8 * ((3718 * v21) ^ LODWORD(STACK[0x2880]))))();
}

uint64_t sub_244AE4CA0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2848]) = a1 + 1773;
  v2 = STACK[0x28A4];
  LODWORD(STACK[0x11F30]) = 1103313353;
  LODWORD(STACK[0x13AE0]) = 1446834926;
  LODWORD(STACK[0x11F34]) = 1103313353;
  LODWORD(STACK[0x13AE4]) = 1446834926;
  LODWORD(STACK[0x11F38]) = 1103313353;
  LODWORD(STACK[0x13AE8]) = 1446834926;
  LODWORD(STACK[0x11F3C]) = 1103313353;
  LODWORD(STACK[0x2478]) = ((2 * (v2 - 375419374)) & 0xAF9FEB80) + ((v2 - 375419374) & 0xFFFFFFC0 ^ 0xD7CFF5CB) + 2088733687;
  LODWORD(STACK[0x13AEC]) = 1446834926;
  LODWORD(STACK[0x11F40]) = 1103313353;
  LODWORD(STACK[0x13AF0]) = 1446834926;
  LODWORD(STACK[0x11F44]) = 1103313353;
  LODWORD(STACK[0x13AF4]) = 1446834926;
  LODWORD(STACK[0x11F48]) = 1103313353;
  LODWORD(STACK[0x13AF8]) = 1446834926;
  LODWORD(STACK[0x11F4C]) = 1103313353;
  LODWORD(STACK[0x13AFC]) = 1446834926;
  LODWORD(STACK[0x11F50]) = 1103313353;
  LODWORD(STACK[0x13B00]) = 1446834926;
  LODWORD(STACK[0x11F54]) = 1103313353;
  LODWORD(STACK[0x13B04]) = 1446834926;
  LODWORD(STACK[0x11F58]) = 1103313353;
  LODWORD(STACK[0x13B08]) = 1446834926;
  LODWORD(STACK[0x11F5C]) = 1103313353;
  LODWORD(STACK[0x13B0C]) = 1446834926;
  LODWORD(STACK[0x11F60]) = 1103313353;
  LODWORD(STACK[0x13B10]) = 1446834926;
  LODWORD(STACK[0x11F64]) = 1103313353;
  LODWORD(STACK[0x13B14]) = 1446834926;
  LODWORD(STACK[0x11F68]) = 1103313353;
  LODWORD(STACK[0x13B18]) = 1446834926;
  LODWORD(STACK[0x11F6C]) = 1103313353;
  LODWORD(STACK[0x13B1C]) = 1446834926;
  LODWORD(STACK[0x11F70]) = 1103313353;
  LODWORD(STACK[0x13B20]) = 1446834926;
  LODWORD(STACK[0x11F74]) = 1103313353;
  LODWORD(STACK[0x13B24]) = 1446834926;
  LODWORD(STACK[0x11F78]) = 1103313353;
  LODWORD(STACK[0x13B28]) = 1446834926;
  LODWORD(STACK[0x11F7C]) = 1103313353;
  LODWORD(STACK[0x13B2C]) = 1446834926;
  LODWORD(STACK[0x11F80]) = 1103313353;
  LODWORD(STACK[0x13B30]) = 1446834926;
  LODWORD(STACK[0x11F84]) = 1103313353;
  LODWORD(STACK[0x13B34]) = 1446834926;
  LODWORD(STACK[0x11F88]) = 1103313353;
  LODWORD(STACK[0x13B38]) = 1446834926;
  LODWORD(STACK[0x11F8C]) = 1103313353;
  LODWORD(STACK[0x13B3C]) = 1446834926;
  LODWORD(STACK[0x11F90]) = 1103313353;
  LODWORD(STACK[0x13B40]) = 1446834926;
  LODWORD(STACK[0x11F94]) = 1103313353;
  LODWORD(STACK[0x13B44]) = 1446834926;
  LODWORD(STACK[0x11F98]) = 1103313353;
  LODWORD(STACK[0x13B48]) = 1446834926;
  LODWORD(STACK[0x11F9C]) = 1103313353;
  LODWORD(STACK[0x13B4C]) = 1446834926;
  LODWORD(STACK[0x11FA0]) = 1103313353;
  LODWORD(STACK[0x13B50]) = 1446834926;
  LODWORD(STACK[0x11FA4]) = 1103313353;
  LODWORD(STACK[0x13B54]) = 1446834926;
  LODWORD(STACK[0x11FA8]) = 1103313353;
  LODWORD(STACK[0x13B58]) = 1446834926;
  LODWORD(STACK[0x11FAC]) = 1103313353;
  LODWORD(STACK[0x13B5C]) = 1446834926;
  LODWORD(STACK[0x11FB0]) = 1103313353;
  LODWORD(STACK[0x13B60]) = 1446834926;
  LODWORD(STACK[0x11FB4]) = 1103313353;
  LODWORD(STACK[0x13B64]) = 1446834926;
  LODWORD(STACK[0x11FB8]) = 1103313353;
  LODWORD(STACK[0x13B68]) = 1446834926;
  LODWORD(STACK[0x11FBC]) = 1103313353;
  LODWORD(STACK[0x13B6C]) = 1446834926;
  LODWORD(STACK[0x11FC0]) = 1103313353;
  LODWORD(STACK[0x13B70]) = 1446834926;
  LODWORD(STACK[0x11FC4]) = 1103313353;
  LODWORD(STACK[0x13B74]) = 1446834926;
  LODWORD(STACK[0x11FC8]) = 1103313353;
  LODWORD(STACK[0x13B78]) = 1446834926;
  LODWORD(STACK[0x11FCC]) = 1103313353;
  LODWORD(STACK[0x13B7C]) = 1446834926;
  LODWORD(STACK[0x11FD0]) = 1103313353;
  LODWORD(STACK[0x13B80]) = 1446834926;
  LODWORD(STACK[0x11FD4]) = 1103313353;
  LODWORD(STACK[0x13B84]) = 1446834926;
  LODWORD(STACK[0x11FD8]) = 1103313353;
  LODWORD(STACK[0x13B88]) = 1446834926;
  LODWORD(STACK[0x11FDC]) = 1103313353;
  LODWORD(STACK[0x13B8C]) = 1446834926;
  LODWORD(STACK[0x11FE0]) = 1103313353;
  LODWORD(STACK[0x13B90]) = 1446834926;
  LODWORD(STACK[0x11FE4]) = 1103313353;
  LODWORD(STACK[0x13B94]) = 1446834926;
  LODWORD(STACK[0x11FE8]) = 1103313353;
  LODWORD(STACK[0x13B98]) = 1446834926;
  LODWORD(STACK[0x11FEC]) = 1103313353;
  LODWORD(STACK[0x13B9C]) = 1446834926;
  LODWORD(STACK[0x11FF0]) = 1103313353;
  LODWORD(STACK[0x13BA0]) = 1446834926;
  LODWORD(STACK[0x11FF4]) = 1103313353;
  LODWORD(STACK[0x13BA4]) = 1446834926;
  LODWORD(STACK[0x11FF8]) = 1103313353;
  LODWORD(STACK[0x13BA8]) = 1446834926;
  LODWORD(STACK[0x11FFC]) = 1103313353;
  LODWORD(STACK[0x13BAC]) = 1446834926;
  LODWORD(STACK[0x12000]) = 1103313353;
  LODWORD(STACK[0x13BB0]) = 1446834926;
  LODWORD(STACK[0x12004]) = 1103313353;
  LODWORD(STACK[0x13BB4]) = 1446834926;
  LODWORD(STACK[0x12008]) = 1103313353;
  LODWORD(STACK[0x13BB8]) = 1446834926;
  LODWORD(STACK[0x1200C]) = 1103313353;
  LODWORD(STACK[0x13BBC]) = 1446834926;
  LODWORD(STACK[0x12010]) = 1103313353;
  LODWORD(STACK[0x13BC0]) = 1446834926;
  LODWORD(STACK[0x12014]) = 1103313353;
  LODWORD(STACK[0x13BC4]) = 1446834926;
  LODWORD(STACK[0x12018]) = 1103313353;
  LODWORD(STACK[0x13BC8]) = 1446834926;
  LODWORD(STACK[0x1201C]) = 1103313353;
  LODWORD(STACK[0x13BCC]) = 1446834926;
  LODWORD(STACK[0x12020]) = 1103313353;
  LODWORD(STACK[0x13BD0]) = 1446834926;
  LODWORD(STACK[0x12024]) = 1103313353;
  LODWORD(STACK[0x13BD4]) = 1446834926;
  LODWORD(STACK[0x12028]) = 1103313353;
  LODWORD(STACK[0x13BD8]) = 1446834926;
  LODWORD(STACK[0x1202C]) = 1103313353;
  LODWORD(STACK[0x13BDC]) = 1446834926;
  LODWORD(STACK[0x12030]) = 1103313353;
  LODWORD(STACK[0x13BE0]) = 1446834926;
  LODWORD(STACK[0x12034]) = 1103313353;
  LODWORD(STACK[0x13BE4]) = 1446834926;
  LODWORD(STACK[0x12038]) = 1103313353;
  LODWORD(STACK[0x13BE8]) = 1446834926;
  LODWORD(STACK[0x1203C]) = 1103313353;
  LODWORD(STACK[0x13BEC]) = 1446834926;
  LODWORD(STACK[0x12040]) = 1103313353;
  LODWORD(STACK[0x13BF0]) = 1446834926;
  LODWORD(STACK[0x12044]) = 1103313353;
  LODWORD(STACK[0x13BF4]) = 1446834926;
  LODWORD(STACK[0x12048]) = 1103313353;
  LODWORD(STACK[0x13BF8]) = 1446834926;
  LODWORD(STACK[0x1204C]) = 1103313353;
  LODWORD(STACK[0x13BFC]) = 1446834926;
  LODWORD(STACK[0x12050]) = 1103313353;
  LODWORD(STACK[0x13C00]) = 1446834926;
  LODWORD(STACK[0x12054]) = 1103313353;
  LODWORD(STACK[0x13C04]) = 1446834926;
  LODWORD(STACK[0x12058]) = 1103313353;
  LODWORD(STACK[0x13C08]) = 1446834926;
  LODWORD(STACK[0x1205C]) = 1103313353;
  LODWORD(STACK[0x13C0C]) = 1446834926;
  LODWORD(STACK[0x12060]) = 1103313353;
  LODWORD(STACK[0x13C10]) = 1446834926;
  LODWORD(STACK[0x12064]) = 1103313353;
  LODWORD(STACK[0x13C14]) = 1446834926;
  LODWORD(STACK[0x12068]) = 1103313353;
  LODWORD(STACK[0x13C18]) = 1446834926;
  LODWORD(STACK[0x1206C]) = 1103313353;
  LODWORD(STACK[0x13C1C]) = 1446834926;
  LODWORD(STACK[0x12070]) = 1103313353;
  LODWORD(STACK[0x13C20]) = 1446834926;
  LODWORD(STACK[0x12074]) = 1103313353;
  LODWORD(STACK[0x13C24]) = 1446834926;
  LODWORD(STACK[0x12078]) = 1103313353;
  LODWORD(STACK[0x13C28]) = 1446834926;
  LODWORD(STACK[0x1207C]) = 1103313353;
  LODWORD(STACK[0x13C2C]) = 1446834926;
  LODWORD(STACK[0x12080]) = 1103313353;
  LODWORD(STACK[0x13C30]) = 1446834926;
  LODWORD(STACK[0x12084]) = 1103313353;
  LODWORD(STACK[0x13C34]) = 1446834926;
  LODWORD(STACK[0x12088]) = 1103313353;
  LODWORD(STACK[0x13C38]) = 1446834926;
  LODWORD(STACK[0x1208C]) = 1103313353;
  LODWORD(STACK[0x13C3C]) = 1446834926;
  LODWORD(STACK[0x12090]) = 1103313353;
  LODWORD(STACK[0x13C40]) = 1446834926;
  LODWORD(STACK[0x12094]) = 1103313353;
  LODWORD(STACK[0x13C44]) = 1446834926;
  LODWORD(STACK[0x12098]) = 1103313353;
  LODWORD(STACK[0x13C48]) = 1446834926;
  LODWORD(STACK[0x1209C]) = 1103313353;
  LODWORD(STACK[0x13C4C]) = 1446834926;
  LODWORD(STACK[0x120A0]) = 1103313353;
  LODWORD(STACK[0x13C50]) = 1446834926;
  LODWORD(STACK[0x120A4]) = 1103313353;
  LODWORD(STACK[0x13C54]) = 1446834926;
  LODWORD(STACK[0x120A8]) = 1103313353;
  LODWORD(STACK[0x13C58]) = 1446834926;
  LODWORD(STACK[0x120AC]) = 1103313353;
  LODWORD(STACK[0x13C5C]) = 1446834926;
  LODWORD(STACK[0x120B0]) = 1103313353;
  LODWORD(STACK[0x13C60]) = 1446834926;
  LODWORD(STACK[0x120B4]) = 1103313353;
  LODWORD(STACK[0x13C64]) = 1446834926;
  LODWORD(STACK[0x120B8]) = 1103313353;
  LODWORD(STACK[0x13C68]) = 1446834926;
  LODWORD(STACK[0x120BC]) = 1103313353;
  LODWORD(STACK[0x13C6C]) = 1446834926;
  LODWORD(STACK[0x120C0]) = 1103313353;
  LODWORD(STACK[0x13C70]) = 1446834926;
  LODWORD(STACK[0x120C4]) = 1103313353;
  LODWORD(STACK[0x13C74]) = 1446834926;
  LODWORD(STACK[0x120C8]) = 1103313353;
  LODWORD(STACK[0x13C78]) = 1446834926;
  LODWORD(STACK[0x120CC]) = 1103313353;
  LODWORD(STACK[0x13C7C]) = 1446834926;
  LODWORD(STACK[0x120D0]) = 1103313353;
  LODWORD(STACK[0x13C80]) = 1446834926;
  LODWORD(STACK[0x120D4]) = 1103313353;
  LODWORD(STACK[0x13C84]) = 1446834926;
  LODWORD(STACK[0x120D8]) = 1103313353;
  LODWORD(STACK[0x13C88]) = 1446834926;
  LODWORD(STACK[0x120DC]) = 1103313353;
  LODWORD(STACK[0x13C8C]) = 1446834926;
  LODWORD(STACK[0x120E0]) = 1103313353;
  LODWORD(STACK[0x13C90]) = 1446834926;
  LODWORD(STACK[0x120E4]) = 1103313353;
  LODWORD(STACK[0x13C94]) = 1446834926;
  LODWORD(STACK[0x120E8]) = 1103313353;
  LODWORD(STACK[0x13C98]) = 1446834926;
  LODWORD(STACK[0x120EC]) = 1103313353;
  LODWORD(STACK[0x13C9C]) = 1446834926;
  LODWORD(STACK[0x120F0]) = 1103313353;
  LODWORD(STACK[0x13CA0]) = 1446834926;
  LODWORD(STACK[0x120F4]) = 1103313353;
  LODWORD(STACK[0x13CA4]) = 1446834926;
  LODWORD(STACK[0x120F8]) = 1103313353;
  LODWORD(STACK[0x13CA8]) = 1446834926;
  LODWORD(STACK[0x120FC]) = 1103313353;
  LODWORD(STACK[0x13CAC]) = 1446834926;
  LODWORD(STACK[0x12100]) = 1103313353;
  LODWORD(STACK[0x13CB0]) = 1446834926;
  LODWORD(STACK[0x12104]) = 1103313353;
  LODWORD(STACK[0x13CB4]) = 1446834926;
  LODWORD(STACK[0x12108]) = 1103313353;
  LODWORD(STACK[0x13CB8]) = 1446834926;
  LODWORD(STACK[0x1210C]) = 1103313353;
  LODWORD(STACK[0x13CBC]) = 1446834926;
  LODWORD(STACK[0x12110]) = 1103313353;
  LODWORD(STACK[0x13CC0]) = 1446834926;
  LODWORD(STACK[0x12114]) = 1103313353;
  LODWORD(STACK[0x13CC4]) = 1446834926;
  LODWORD(STACK[0x12118]) = 1103313353;
  LODWORD(STACK[0x13CC8]) = 1446834926;
  LODWORD(STACK[0x1211C]) = 1103313353;
  LODWORD(STACK[0x13CCC]) = 1446834926;
  LODWORD(STACK[0x12120]) = 1103313353;
  LODWORD(STACK[0x13CD0]) = 1446834926;
  LODWORD(STACK[0x12124]) = 1103313353;
  LODWORD(STACK[0x13CD4]) = 1446834926;
  LODWORD(STACK[0x12128]) = 1103313353;
  LODWORD(STACK[0x13CD8]) = 1446834926;
  LODWORD(STACK[0x1212C]) = 1103313353;
  LODWORD(STACK[0x13CDC]) = 1446834926;
  LODWORD(STACK[0x12130]) = 1103313353;
  LODWORD(STACK[0x13CE0]) = 1446834926;
  LODWORD(STACK[0x12134]) = 1103313353;
  LODWORD(STACK[0x13CE4]) = 1446834926;
  LODWORD(STACK[0x12138]) = 1103313353;
  LODWORD(STACK[0x13CE8]) = 1446834926;
  LODWORD(STACK[0x1213C]) = 1103313353;
  LODWORD(STACK[0x13CEC]) = 1446834926;
  LODWORD(STACK[0x12140]) = 1103313353;
  LODWORD(STACK[0x13CF0]) = 1446834926;
  LODWORD(STACK[0x12144]) = 1103313353;
  LODWORD(STACK[0x13CF4]) = 1446834926;
  LODWORD(STACK[0x12148]) = 1103313353;
  LODWORD(STACK[0x13CF8]) = 1446834926;
  LODWORD(STACK[0x1214C]) = 1103313353;
  LODWORD(STACK[0x13CFC]) = 1446834926;
  LODWORD(STACK[0x12150]) = 1103313353;
  LODWORD(STACK[0x13D00]) = 1446834926;
  LODWORD(STACK[0x12154]) = 1103313353;
  LODWORD(STACK[0x13D04]) = 1446834926;
  LODWORD(STACK[0x12158]) = 1103313353;
  LODWORD(STACK[0x13D08]) = 1446834926;
  LODWORD(STACK[0x1215C]) = 1103313353;
  LODWORD(STACK[0x13D0C]) = 1446834926;
  LODWORD(STACK[0x12160]) = 1103313353;
  LODWORD(STACK[0x13D10]) = 1446834926;
  LODWORD(STACK[0x12164]) = 1103313353;
  LODWORD(STACK[0x13D14]) = 1446834926;
  LODWORD(STACK[0x12168]) = 1103313353;
  LODWORD(STACK[0x13D18]) = 1446834926;
  LODWORD(STACK[0x1216C]) = 1103313353;
  LODWORD(STACK[0x2880]) = 1350361122;
  LODWORD(STACK[0x13D1C]) = 1446834926;
  return (*(v1 + 8 * a1))((((v2 + 18) << (a1 - 74)) & 0x36) + ((v2 + 18) & 0x3F ^ 0xFA69AF9B) + 2113404798);
}

uint64_t sub_244AE51D4(unsigned int a1)
{
  LODWORD(STACK[0x2840]) = 0;
  LODWORD(STACK[0x2838]) = 0;
  LODWORD(STACK[0x27B8]) = 0;
  LODWORD(STACK[0x2790]) = 0;
  LODWORD(STACK[0x27B0]) = 0;
  LODWORD(STACK[0x27A0]) = 0;
  LODWORD(STACK[0x2788]) = 0;
  LODWORD(STACK[0x2798]) = 0;
  STACK[0x2818] = a1 | ((a1 < 0x7861AF19) << 32);
  v2 = a1 - 2019667737;
  v3 = a1 - 2019667736;
  STACK[0x1CC0] = v3;
  STACK[0x1CB8] = (v3 ^ 0xEEBFFC72FFD356E7) + 0x1140038D002CA919 + ((2 * v3) & 0x1FFA6ADCELL);
  v4 = a1 - 2019667735;
  STACK[0x1CB0] = v4;
  STACK[0x1CA8] = (v4 ^ 0x5FB8F6EFF701BFE7) - 0x5FB8F6EFF701BFE7 + ((2 * v4) & 0x1EE037FCELL);
  v5 = a1 - 2019667734;
  STACK[0x1CA0] = v5;
  STACK[0x1C98] = (v5 ^ 0x5EF5FFDFEFBFE97FLL) - 0x5EF5FFDFEFBFE97FLL + ((2 * v5) & 0x1DF7FD2FELL);
  v6 = a1 - 2019667733;
  STACK[0x1C90] = v6;
  STACK[0x1C88] = (v6 ^ 0xEB98B7FEFD7EFF9DLL) + 0x1467480102810063 + ((2 * v6) & 0x1FAFDFF3ALL);
  v7 = a1 - 2019667732;
  STACK[0x1C80] = v7;
  STACK[0x1C78] = (v7 ^ 0xFE6BFF87F797A9D7) + 0x194007808685629 + ((2 * v7) & 0x1EF2F53AELL);
  v8 = a1 - 2019667729;
  STACK[0x1C70] = v8;
  STACK[0x1C68] = (v8 ^ 0xD777DD3DEEF117BFLL) + 0x288822C2110EE841 + ((2 * v8) & 0x1DDE22F7ELL);
  v9 = a1 - 2019667728;
  STACK[0x1C60] = v9;
  STACK[0x1C58] = (v9 ^ 0xFBFE1B9EAF1EEDBFLL) + 0x401E46150E11241 + ((2 * v9) & 0x15E3DDB7ELL);
  v10 = a1 - 2019667727;
  STACK[0x1C50] = v10;
  STACK[0x1C48] = (v10 ^ 0xFEFE727FD5F93F5BLL) + 0x1018D802A06C0A5 + ((2 * v10) & 0x1ABF27EB6);
  v11 = a1 - 2019667726;
  STACK[0x1C40] = v11;
  STACK[0x1C38] = (v11 ^ 0x16F9A2AF5FFE7FFELL) - 0x16F9A2AF5FFE7FFELL + ((2 * v11) & 0xBFFCFFFC);
  v12 = a1 - 2019667724;
  STACK[0x1C30] = v12;
  STACK[0x1C28] = (v12 ^ 0xF7DFFC6B975BFFFBLL) + 0x820039468A40005 + ((2 * v12) & 0x12EB7FFF6);
  v13 = a1 - 2019667722;
  STACK[0x1C20] = v13;
  STACK[0x1C18] = (v13 ^ 0xDE9FC78ECFE0F274) + 0x21603871301F0D8CLL + ((2 * v13) & 0x19FC1E4E8);
  v14 = a1 - 2019667721;
  STACK[0x1C10] = v14;
  STACK[0x1C08] = (v14 ^ 0x3FFFBFFAF5BB6FFDLL) - 0x3FFFBFFAF5BB6FFDLL + ((2 * v14) & 0x1EB76DFFALL);
  v15 = a1 - 2019667718;
  STACK[0x1C00] = v15;
  STACK[0x1BF8] = (v15 ^ 0xFF27BDFFB4FF7CFDLL) + 0xD842004B008303 + ((2 * v15) & 0x169FEF9FALL);
  v16 = a1 - 2019667717;
  STACK[0x1BF0] = v16;
  STACK[0x1BE8] = (v16 ^ 0x61FFBFEFFEF6ADFFLL) - 0x61FFBFEFFEF6ADFFLL + ((2 * v16) & 0x1FDED5BFELL);
  v17 = a1 - 2019667716;
  STACK[0x1BE0] = v17;
  STACK[0x1BD8] = (v17 ^ 0x2EDFFE7FFFF7FEBFLL) - 0x2EDFFE7FFFF7FEBFLL + ((2 * v17) & 0x1FFEFFD7ELL);
  v18 = a1 - 2019667711;
  STACK[0x1BD0] = v18;
  STACK[0x1BC8] = (v18 ^ 0xDFFF5BF3FFE3C7E9) + 0x2000A40C001C3817 + ((2 * v18) & 0x1FFC78FD2);
  v19 = a1 - 2019667709;
  STACK[0x1BC0] = v19;
  STACK[0x1BB8] = (v19 ^ 0x5BEFEF6DBEFFFE79) - 0x5BEFEF6DBEFFFE79 + ((2 * v19) & 0x17DFFFCF2);
  v20 = a1 - 2019667707;
  STACK[0x1BB0] = v20;
  STACK[0x1BA8] = (v20 ^ 0xB7FEFFFF2BFC3F7ELL) + 0x48010000D403C082 + ((2 * v20) & 0x57F87EFC);
  v21 = a1 - 2019667706;
  STACK[0x1BA0] = v21;
  STACK[0x1B98] = (v21 ^ 0xBDB7E8DF677FFF7DLL) + 0x4248172098800083 + ((2 * v21) & 0xCEFFFEFA);
  v22 = a1 - 2019667705;
  STACK[0x1B90] = v22;
  STACK[0x1B88] = (v22 ^ 0xFA7BFCBDF8EDDCFFLL) + 0x584034207122301 + ((2 * v22) & 0x1F1DBB9FELL);
  v23 = a1 - 2019667704;
  STACK[0x1B80] = v23;
  STACK[0x1B78] = (v23 ^ 0x65BBBFF7ED2A7CFFLL) - 0x65BBBFF7ED2A7CFFLL + ((2 * v23) & 0x1DA54F9FELL);
  v24 = a1 - 2019667703;
  STACK[0x1B70] = v24;
  STACK[0x1B68] = (v24 ^ 0xBFFBB4BBFEBD2FFFLL) + 0x40044B440142D001 + ((2 * v24) & 0x1FD7A5FFELL);
  v25 = a1 - 2019667702;
  STACK[0x1B60] = v25;
  STACK[0x1B58] = (v25 ^ 0xFD2FF91FB53F6FFFLL) + 0x2D006E04AC09001 + ((2 * v25) & 0x16A7EDFFELL);
  v26 = a1 - 2019667699;
  STACK[0x1B50] = v26;
  STACK[0x1B48] = (v26 ^ 0x7DFDEBAFF7EFFFF3) - 0x7DFDEBAFF7EFFFF3 + ((2 * v26) & 0x1EFDFFFE6);
  v27 = a1 - 2019667697;
  STACK[0x1B40] = v27;
  STACK[0x1B38] = (v27 ^ 0xFED6FDAFFBFEE9FALL) + 0x129025004011606 + ((2 * v27) & 0x1F7FDD3F4);
  v28 = a1 - 2019667695;
  STACK[0x1B30] = v28;
  STACK[0x1B28] = (v28 ^ 0xEFFBFEDAFFACF7EBLL) + 0x1004012500530815 + ((2 * v28) & 0x1FF59EFD6);
  v29 = a1 - 2019667693;
  STACK[0x1B20] = v29;
  STACK[0x1B18] = (v29 ^ 0x7FF0FFDBFFDEEFD8) - 0x7FF0FFDBFFDEEFD8 + ((2 * v29) & 0x1FFBDDFB0);
  v30 = a1 - 2019667692;
  STACK[0x1B10] = v30;
  STACK[0x1B08] = (v30 ^ 0x47D5FEFDEFB3B75FLL) - 0x47D5FEFDEFB3B75FLL + ((2 * v30) & 0x1DF676EBELL);
  v31 = a1 - 2019667691;
  STACK[0x1B00] = v31;
  STACK[0x1AF8] = (v31 ^ 0x5D965EFFFFF36BFFLL) - 0x5D965EFFFFF36BFFLL + ((2 * v31) & 0x1FFE6D7FELL);
  v32 = a1 - 2019667690;
  STACK[0x1AF0] = v32;
  STACK[0x1AE8] = (v32 ^ 0x71DD7FDFF1FFDC7FLL) - 0x71DD7FDFF1FFDC7FLL + ((2 * v32) & 0x1E3FFB8FELL);
  v33 = a1 - 2019667688;
  STACK[0x1AE0] = v33;
  STACK[0x1AD8] = (v33 ^ 0x5BDEBFAFFFFFDEF9) - 0x5BDEBFAFFFFFDEF9 + ((2 * v33) & 0x1FFFFBDF2);
  v34 = a1 - 2019667687;
  STACK[0x1AD0] = v34;
  STACK[0x1AC8] = (v34 ^ 0x3BBEEFFDE5BF86FFLL) - 0x3BBEEFFDE5BF86FFLL + ((2 * v34) & 0x1CB7F0DFELL);
  v35 = a1 - 2019667686;
  STACK[0x1AC0] = v35;
  STACK[0x1AB8] = (v35 ^ 0xBEDFFEDFCF6BFF77) + 0x4120012030940089 + ((2 * v35) & 0x19ED7FEEELL);
  v36 = a1 - 2019667683;
  STACK[0x1AB0] = v36;
  STACK[0x1AA8] = (v36 ^ 0x7277E7EEBD17FF3ALL) - 0x7277E7EEBD17FF3ALL + ((2 * v36) & 0x17A2FFE74);
  v37 = a1 - 2019667680;
  STACK[0x1AA0] = v37;
  STACK[0x1A98] = (v37 ^ 0xFFF7CCF59F3FBF7BLL) + 0x8330A60C04085 + ((2 * v37) & 0x13E7F7EF6);
  v38 = a1 - 2019667678;
  STACK[0x1A90] = v38;
  STACK[0x1A88] = (v38 ^ 0xB7FCE7DD7E77FB9BLL) + 0x4803182281880465 + ((2 * v38) & 0xFCEFF736);
  v39 = a1 - 2019667676;
  STACK[0x1A80] = v39;
  STACK[0x1A78] = (v39 ^ 0xDFFFF3AFE7BF25DFLL) + 0x20000C501840DA21 + ((2 * v39) & 0x1CF7E4BBELL);
  v40 = a1 - 2019667675;
  STACK[0x1A70] = v40;
  STACK[0x1A68] = (v40 ^ 0x7EFEEA739FEDFFFBLL) - 0x7EFEEA739FEDFFFBLL + ((2 * v40) & 0x13FDBFFF6);
  v41 = a1 - 2019667673;
  STACK[0x1A60] = v41;
  STACK[0x1A58] = (v41 ^ 0x7EDFB7FFF7EDFF0FLL) - 0x7EDFB7FFF7EDFF0FLL + ((2 * v41) & 0x1EFDBFE1ELL);
  v42 = a1 - 2019667672;
  STACK[0x1A50] = v42;
  STACK[0x1A48] = (v42 ^ 0x6B7F9BECD379FEFFLL) - 0x6B7F9BECD379FEFFLL + ((2 * v42) & 0x1A6F3FDFELL);
  v43 = a1 - 2019667671;
  STACK[0x1A40] = v43;
  STACK[0x1A38] = (v43 ^ 0x3DE3B93FF7AF9DFFLL) - 0x3DE3B93FF7AF9DFFLL + ((2 * v43) & 0x1EF5F3BFELL);
  v44 = a1 - 2019667670;
  STACK[0x1A30] = v44;
  STACK[0x1A28] = (v44 ^ 0xBFEFE7751FBD771DLL) + 0x4010188AE04288E3 + ((2 * v44) & 0x3F7AEE3A);
  v45 = a1 - 2019667667;
  STACK[0x1A20] = v45;
  STACK[0x1A18] = (v45 ^ 0xFDFBE2B5FFF7ED9DLL) + 0x2041D4A00081263 + ((2 * v45) & 0x1FFEFDB3ALL);
  v46 = a1 - 2019667666;
  STACK[0x1A10] = v46;
  STACK[0x1A08] = (v46 ^ 0xEFEDFF4FFEB7FF5ELL) + 0x101200B0014800A2 + ((2 * v46) & 0x1FD6FFEBCLL);
  v47 = a1 - 2019667663;
  STACK[0x1A00] = v47;
  STACK[0x19F8] = (v47 ^ 0xAFE5FD93FEC316A2) + 0x501A026C013CE95ELL + ((2 * v47) & 0x1FD862D44);
  v48 = a1 - 2019667662;
  STACK[0x19F0] = v48;
  STACK[0x19E8] = (v48 ^ 0x7E7F7CDFFDEFFECBLL) - 0x7E7F7CDFFDEFFECBLL + ((2 * v48) & 0x1FBDFFD96);
  v49 = a1 - 2019667661;
  STACK[0x19E0] = v49;
  STACK[0x19D8] = (v49 ^ 0x7FBF7DB35EFADB77) - 0x7FBF7DB35EFADB77 + ((2 * v49) & 0xBDF5B6EE);
  v50 = a1 - 2019667659;
  STACK[0x19D0] = v50;
  STACK[0x19C8] = (v50 ^ 0x7F7FE8CA96A67FF6) - 0x7F7FE8CA96A67FF6 + ((2 * v50) & 0x12D4CFFECLL);
  v51 = a1 - 2019667657;
  STACK[0x19C0] = v51;
  STACK[0x19B8] = (v51 ^ 0xFE973A7CED3BFFEFLL) + 0x168C58312C40011 + ((2 * v51) & 0x1DA77FFDELL);
  v52 = a1 - 2019667655;
  STACK[0x19B0] = v52;
  STACK[0x19A8] = (v52 ^ 0x577BFADDE677FF79) - 0x577BFADDE677FF79 + ((2 * v52) & 0x1CCEFFEF2);
  v53 = a1 - 2019667654;
  STACK[0x19A0] = v53;
  STACK[0x1998] = (v53 ^ 0xF77BBAFCF4D7FF7FLL) + 0x88445030B280081 + ((2 * v53) & 0x1E9AFFEFELL);
  v54 = a1 - 2019667653;
  STACK[0x1990] = v54;
  STACK[0x1988] = (v54 ^ 0x6FFE77FFFE6FF7F7) - 0x6FFE77FFFE6FF7F7 + ((2 * v54) & 0x1FCDFEFEELL);
  v55 = a1 - 2019667650;
  STACK[0x1980] = v55;
  STACK[0x1978] = (v55 ^ 0xFCFF9ED77FFEEFFALL) + 0x300612880011006 + ((2 * v55) & 0xFFFDDFF4);
  v56 = a1 - 2019667649;
  STACK[0x1970] = v56;
  STACK[0x1968] = (v56 ^ 0xFFFD13FDFFD3EDFFLL) + 0x2EC02002C1201 + ((2 * v56) & 0x1FFA7DBFELL);
  v57 = a1 - 2019667648;
  STACK[0x1960] = v57;
  STACK[0x1958] = (v57 ^ 0xFFD7BA7A73B7BB75) + 0x2845858C48448BLL + ((2 * v57) & 0xE76F76EA);
  v58 = a1 - 2019667645;
  STACK[0x1950] = v58;
  STACK[0x1948] = (v58 ^ 0x6FFB5BA7FAEAEF7ELL) - 0x6FFB5BA7FAEAEF7ELL + ((2 * v58) & 0x1F5D5DEFCLL);
  v59 = a1 - 2019667644;
  STACK[0x1940] = v59;
  STACK[0x1938] = (v59 ^ 0x8D7FDD449D9DE54ELL) + 0x728022BB62621AB2 + ((2 * v59) & 0x13B3BCA9CLL);
  v60 = a1 - 2019667642;
  STACK[0x1930] = v60;
  STACK[0x1928] = (v60 ^ 0xECAFFFFC672EFFB7) + 0x1350000398D10049 + ((2 * v60) & 0xCE5DFF6E);
  v61 = a1 - 2019667641;
  STACK[0x1920] = v61;
  STACK[0x1918] = (v61 ^ 0xBFFE586FCFEFFFE3) + 0x4001A7903010001DLL + ((2 * v61) & 0x19FDFFFC6);
  v62 = a1 - 2019667640;
  STACK[0x1910] = v62;
  STACK[0x1908] = (v62 ^ 0x7F7FFE7FB3AFDFBFLL) - 0x7F7FFE7FB3AFDFBFLL + ((2 * v62) & 0x1675FBF7ELL);
  v63 = a1 - 2019667638;
  STACK[0x1900] = v63;
  STACK[0x18F8] = (v63 ^ 0x7EFDA7FEFA2FB7FDLL) - 0x7EFDA7FEFA2FB7FDLL + ((2 * v63) & 0x1F45F6FFALL);
  v64 = a1 - 2019667636;
  STACK[0x18F0] = v64;
  STACK[0x18E8] = (v64 ^ 0x7F9667FFF77ABBF6) - 0x7F9667FFF77ABBF6 + ((2 * v64) & 0x1EEF577ECLL);
  v65 = a1 - 2019667635;
  STACK[0x18E0] = v65;
  STACK[0x18D8] = (v65 ^ 0x2F7A6DBE5EBFFEFFLL) - 0x2F7A6DBE5EBFFEFFLL + ((2 * v65) & 0xBD7FFDFE);
  v66 = a1 - 2019667634;
  STACK[0x18D0] = v66;
  STACK[0x18C8] = (v66 ^ 0x7F57FBEF5B8EE7BDLL) - 0x7F57FBEF5B8EE7BDLL + ((2 * v66) & 0xB71DCF7A);
  v67 = a1 - 2019667633;
  STACK[0x18C0] = v67;
  STACK[0x18B8] = (v67 ^ 0xDFFBFEF4EFEAEDFBLL) + 0x2004010B10151205 + ((2 * v67) & 0x1DFD5DBF6);
  v68 = a1 - 2019667632;
  STACK[0x18B0] = v68;
  STACK[0x18A8] = (v68 ^ 0x5ED563EB7EFD24FBLL) - 0x5ED563EB7EFD24FBLL + ((2 * v68) & 0xFDFA49F6);
  v69 = a1 - 2019667630;
  STACK[0x18A0] = v69;
  STACK[0x1898] = (v69 ^ 0x3F7D90FBED73BDEBLL) - 0x3F7D90FBED73BDEBLL + ((2 * v69) & 0x1DAE77BD6);
  v70 = a1 - 2019667626;
  STACK[0x1890] = v70;
  STACK[0x1888] = (v70 ^ 0x6CDBF3BF5FFEFFDDLL) - 0x6CDBF3BF5FFEFFDDLL + ((2 * v70) & 0xBFFDFFBA);
  v71 = a1 - 2019667625;
  STACK[0x1880] = v71;
  STACK[0x1878] = (v71 ^ 0xC5DDFB7DB9FF9FDFLL) + 0x3A22048246006021 + ((2 * v71) & 0x173FF3FBELL);
  v72 = a1 - 2019667624;
  STACK[0x1870] = v72;
  STACK[0x1868] = (v72 ^ 0xFBEFEFBECFD1F7A7) + 0x4101041302E0859 + ((2 * v72) & 0x19FA3EF4ELL);
  v73 = a1 - 2019667623;
  STACK[0x1860] = v73;
  STACK[0x1858] = (v73 ^ 0xFFFBBBFFBFDBAFDFLL) + 0x4440040245021 + ((2 * v73) & 0x17FB75FBELL);
  v74 = a1 - 2019667622;
  STACK[0x1850] = v74;
  STACK[0x1848] = (v74 ^ 0xBBFDCE6FFDE7FEBFLL) + 0x4402319002180141 + ((2 * v74) & 0x1FBCFFD7ELL);
  v75 = a1 - 2019667621;
  STACK[0x1840] = v75;
  STACK[0x1838] = (v75 ^ 0xFC6FF93E9FEC75F1) + 0x39006C160138A0FLL + ((2 * v75) & 0x13FD8EBE2);
  v76 = a1 - 2019667620;
  STACK[0x1830] = v76;
  STACK[0x1828] = (v76 ^ 0xD5FBF6FF3BFDFC7ELL) + 0x2A040900C4020382 + ((2 * v76) & 0x77FBF8FC);
  v77 = a1 - 2019667619;
  STACK[0x1820] = v77;
  STACK[0x1818] = (v77 ^ 0x7FB65DEFFEFF6FD7) - 0x7FB65DEFFEFF6FD7 + ((2 * v77) & 0x1FDFEDFAELL);
  v78 = a1 - 2019667618;
  STACK[0x1810] = v78;
  STACK[0x1808] = (v78 ^ 0xFFE5FDFE8CDAF73ELL) + 0x1A0201732508C2 + ((2 * v78) & 0x119B5EE7CLL);
  v79 = a1 - 2019667617;
  STACK[0x1800] = v79;
  STACK[0x17F8] = (v79 ^ 0x7FEFFCFDF27E9E9DLL) - 0x7FEFFCFDF27E9E9DLL + ((2 * v79) & 0x1E4FD3D3ALL);
  v80 = a1 - 2019667614;
  STACK[0x17F0] = v80;
  STACK[0x17E8] = (v80 ^ 0x6BFCEFFFFF1F8BE9) - 0x6BFCEFFFFF1F8BE9 + ((2 * v80) & 0xFE3F17D2);
  v81 = a1 - 2019667613;
  STACK[0x17E0] = v81;
  STACK[0x17D8] = (v81 ^ 0xCFFFFF5FFFEFFEDFLL) + 0x300000A000100121 + ((2 * v81) & 0xFFDFFDBE);
  v82 = a1 - 2019667612;
  STACK[0x17D0] = v82;
  STACK[0x17C8] = (v82 ^ 0xF3DDD92FF7A1FEFDLL) + 0xC2226D0085E0103 + ((2 * v82) & 0xEF43FDFA);
  v83 = a1 - 2019667611;
  STACK[0x17C0] = v83;
  STACK[0x17B8] = (v83 ^ 0x7ACFE9DE7F77CEFCLL) - 0x7ACFE9DE7F77CEFCLL + ((2 * v83) & 0xFEEF9DF8);
  v84 = a1 - 2019667609;
  STACK[0x17B0] = v84;
  STACK[0x17A8] = (v84 ^ 0x767EE769FDF7D27BLL) - 0x767EE769FDF7D27BLL + ((2 * v84) & 0xFBEFA4F6);
  v85 = a1 - 2019667607;
  STACK[0x17A0] = v85;
  STACK[0x1798] = (v85 ^ 0x2CDF3F47F68F5DFBLL) - 0x2CDF3F47F68F5DFBLL + ((2 * v85) & 0xED1EBBF6);
  v86 = a1 - 2019667606;
  STACK[0x1790] = v86;
  STACK[0x1788] = (v86 ^ 0x3FFF5D5EB7931E7FLL) - 0x3FFF5D5EB7931E7FLL + ((2 * v86) & 0x6F263CFE);
  v87 = a1 - 2019667604;
  STACK[0x1780] = v87;
  STACK[0x1778] = (v87 ^ 0x3F5C5FF3BF5C9E36) - 0x3F5C5FF3BF5C9E36 + ((2 * v87) & 0x7EB93C6C);
  v88 = a1 - 2019667601;
  STACK[0x1770] = v88;
  STACK[0x1768] = (v88 ^ 0xFFB7F7FCCEAEEFEFLL) + 0x48080331511011 + ((2 * v88) & 0x9D5DDFDE);
  v89 = a1 - 2019667600;
  STACK[0x1760] = v89;
  STACK[0x1758] = (v89 ^ 0xBEFB62F3E4FDF7E1) + 0x41049D0C1B02081FLL + ((2 * v89) & 0xC9FBEFC2);
  v90 = a1 - 2019667599;
  STACK[0x1750] = v90;
  STACK[0x1748] = (v90 ^ 0xFF7F17FFB95D67DFLL) + 0x80E80046A29821 + ((2 * v90) & 0x72BACFBE);
  v91 = a1 - 2019667598;
  STACK[0x1740] = v91;
  STACK[0x1738] = (v91 ^ 0x539FF6DEECFEDFBFLL) - 0x539FF6DEECFEDFBFLL + ((2 * v91) & 0xD9FDBF7E);
  v92 = a1 - 2019667597;
  STACK[0x1730] = v92;
  STACK[0x1728] = (v92 ^ 0x4FEF7DDBFF63ADF7) - 0x4FEF7DDBFF63ADF7 + ((2 * v92) & 0xFEC75BEE);
  v93 = a1 - 2019667596;
  STACK[0x1720] = v93;
  STACK[0x1718] = (v93 ^ 0xFAF65BFAEFCFFEFFLL) + 0x509A40510300101 + ((2 * v93) & 0xDF9FFDFE);
  v94 = a1 - 2019667595;
  STACK[0x1710] = v94;
  STACK[0x1708] = (v94 ^ 0xFAECFFFFDFF1EFFFLL) + 0x5130000200E1001 + ((2 * v94) & 0xBFE3DFFE);
  v95 = a1 - 2019667594;
  STACK[0x1700] = v95;
  STACK[0x16F8] = (v95 ^ 0xDDFDFF395FF4E7F4) + 0x220200C6A00B180CLL + ((2 * v95) & 0xBFE9CFE8);
  v96 = a1 - 2019667593;
  STACK[0x16F0] = v96;
  STACK[0x16E8] = (v96 ^ 0x53F7AE55BBAF9FEFLL) - 0x53F7AE55BBAF9FEFLL + ((2 * v96) & 0x775F3FDE);
  v97 = a1 - 2019667592;
  STACK[0x16E0] = v97;
  STACK[0x16D8] = (v97 ^ 0xB46FEFFFF77B7E7) - 0xB46FEFFFF77B7E7 + ((2 * v97) & 0xFEEF6FCE);
  v98 = a1 - 2019667591;
  STACK[0x16D0] = v98;
  STACK[0x16C8] = (v98 ^ 0x65BBF3FCFBE77FFBLL) - 0x65BBF3FCFBE77FFBLL + ((2 * v98) & 0xF7CEFFF6);
  v99 = a1 - 2019667589;
  STACK[0x16C0] = v99;
  STACK[0x16B8] = (v99 ^ 0x3E9B4BFBD9DFFBFFLL) - 0x3E9B4BFBD9DFFBFFLL + ((2 * v99) & 0xB3BFF7FE);
  v100 = a1 - 2019667588;
  STACK[0x16B0] = v100;
  STACK[0x16A8] = (v100 ^ 0xFFEB7FBBDFFFBBFCLL) + 0x14804420004404 + ((2 * v100) & 0xBFFF77F8);
  v101 = a1 - 2019667587;
  STACK[0x16A0] = v101;
  STACK[0x1698] = (v101 ^ 0xA3CFEF5FFCBFEA87) + 0x5C3010A003401579 + ((2 * v101) & 0xF97FD50E);
  v102 = a1 - 2019667585;
  STACK[0x1690] = v102;
  STACK[0x1688] = (v102 ^ 0xF7F72B7EFBFEE7DFLL) + 0x808D48104011821 + ((2 * v102) & 0xF7FDCFBE);
  v103 = a1 - 2019667583;
  STACK[0x1680] = v103;
  STACK[0x1678] = (v103 ^ 0xF7D3EBDFFB6D6FF7) + 0x82C142004929009 + ((2 * v103) & 0xF6DADFEE);
  v104 = a1 - 2019667582;
  STACK[0x1670] = v104;
  STACK[0x1668] = (v104 ^ 0x7BF7A67D7CDF9E6ELL) - 0x7BF7A67D7CDF9E6ELL + ((2 * v104) & 0xF9BF3CDC);
  v105 = a1 - 2019667581;
  STACK[0x1660] = v105;
  STACK[0x1658] = (v105 ^ 0x7FFBFF3EBCEDFFDALL) - 0x7FFBFF3EBCEDFFDALL + ((2 * v105) & 0x79DBFFB4);
  v106 = a1 - 2019667574;
  STACK[0x1650] = v106;
  STACK[0x1648] = (v106 ^ 0x7DEFAF5D7CEFEDAFLL) - 0x7DEFAF5D7CEFEDAFLL + ((2 * v106) & 0xF9DFDB5E);
  v107 = a1 - 2019667573;
  STACK[0x1640] = v107;
  STACK[0x1638] = (v107 ^ 0x5A3FF5CFDDFFFDCALL) - 0x5A3FF5CFDDFFFDCALL + ((2 * v107) & 0xBBFFFB94);
  v108 = a1 - 2019667572;
  STACK[0x1630] = v108;
  STACK[0x1628] = (v108 ^ 0x7A337F7919EE7DF9) - 0x7A337F7919EE7DF9 + ((2 * v108) & 0x33DCFBF2);
  v109 = a1 - 2019667571;
  STACK[0x1620] = v109;
  STACK[0x1618] = (v109 ^ 0xB576F2F263B7ED1FLL) + 0x4A890D0D9C4812E1 + ((2 * v109) & 0xC76FDA3E);
  v110 = a1 - 2019667569;
  STACK[0x1610] = v110;
  STACK[0x1608] = (v110 ^ 0xFFED4DFFDF77BD3FLL) + 0x12B200208842C1 + ((2 * v110) & 0xBEEF7A7E);
  v111 = a1 - 2019667568;
  STACK[0x1600] = v111;
  STACK[0x15F8] = (v111 ^ 0x79A77AFEFDFF6B93) - 0x79A77AFEFDFF6B93 + ((2 * v111) & 0xFBFED726);
  v112 = a1 - 2019667567;
  STACK[0x15F0] = v112;
  STACK[0x15E8] = (v112 ^ 0x1B97FFFC75DBD4B9) - 0x1B97FFFC75DBD4B9 + ((2 * v112) & 0xEBB7A972);
  v113 = a1 - 2019667566;
  STACK[0x15E0] = v113;
  STACK[0x15D8] = (v113 ^ 0x7ECFFFFFDFEFEC4DLL) - 0x7ECFFFFFDFEFEC4DLL + ((2 * v113) & 0xBFDFD89A);
  v114 = a1 - 2019667565;
  STACK[0x15D0] = v114;
  STACK[0x15C8] = (v114 ^ 0x79FEE8FFFB1F3EBELL) - 0x79FEE8FFFB1F3EBELL + ((2 * v114) & 0xF63E7D7C);
  v115 = a1 - 2019667563;
  STACK[0x15C0] = v115;
  STACK[0x15B8] = (v115 ^ 0x76F77DFF7FFD4A9DLL) - 0x76F77DFF7FFD4A9DLL + ((2 * v115) & 0xFFFA953A);
  v116 = a1 - 2019667559;
  STACK[0x15B0] = v116;
  STACK[0x15A8] = (v116 ^ 0x4F5FF0FFF7CD4BFDLL) - 0x4F5FF0FFF7CD4BFDLL + ((2 * v116) & 0xEF9A97FA);
  v117 = a1 - 2019667557;
  STACK[0x15A0] = v117;
  STACK[0x1598] = (v117 ^ 0x7FFFFFFFB7D3BF37) - 0x7FFFFFFFB7D3BF37 + ((2 * v117) & 0x6FA77E6E);
  v118 = a1 - 2019667556;
  STACK[0x1590] = v118;
  STACK[0x1588] = (v118 ^ 0xFCCEFBEDDFE3BCD7) + 0x3310412201C4329 + ((2 * v118) & 0xBFC779AE);
  v119 = a1 - 2019667555;
  STACK[0x1580] = v119;
  STACK[0x1578] = (v119 ^ 0x731CFFCF6B2DFF66) - 0x731CFFCF6B2DFF66 + ((2 * v119) & 0xD65BFECC);
  v120 = a1 - 2019667554;
  STACK[0x1570] = v120;
  STACK[0x1568] = (v120 ^ 0x5DFFE77FEB7E9E5DLL) - 0x5DFFE77FEB7E9E5DLL + ((2 * v120) & 0xD6FD3CBA);
  v121 = a1 - 2019667553;
  STACK[0x1560] = v121;
  STACK[0x1558] = (v121 ^ 0xBBF7DEEC7BCEFBFFLL) + 0x4408211384310401 + ((2 * v121) & 0xF79DF7FE);
  v122 = a1 - 2019667552;
  STACK[0x1550] = v122;
  STACK[0x1548] = (v122 ^ 0x7D7BFA7F7F7DD3EFLL) - 0x7D7BFA7F7F7DD3EFLL + ((2 * v122) & 0xFEFBA7DE);
  v123 = a1 - 2019667551;
  STACK[0x1540] = v123;
  STACK[0x1538] = (v123 ^ 0x5EF8AA7DFFBEEFFDLL) - 0x5EF8AA7DFFBEEFFDLL + ((2 * v123) & 0xFF7DDFFA);
  v124 = a1 - 2019667549;
  STACK[0x1530] = v124;
  STACK[0x1528] = (v124 ^ 0xEFF3F7FBFEEEFEFCLL) + 0x100C080401110104 + ((2 * v124) & 0xFDDDFDF8);
  v125 = a1 - 2019667548;
  STACK[0x1520] = v125;
  STACK[0x1518] = (v125 ^ 0x7FDB6FB78FFF7EB7) - 0x7FDB6FB78FFF7EB7 + ((2 * v125) & 0x1FFEFD6E);
  v126 = a1 - 2019667547;
  STACK[0x1510] = v126;
  STACK[0x1508] = (v126 ^ 0xF731EDEFF77FB7CBLL) + 0x8CE121008804835 + ((2 * v126) & 0xEEFF6F96);
  v127 = a1 - 2019667545;
  STACK[0x1500] = v127;
  STACK[0x14F8] = (v127 ^ 0x3BF5BFE3612FDFB8) - 0x3BF5BFE3612FDFB8 + ((2 * v127) & 0xC25FBF70);
  v128 = a1 - 2019667542;
  STACK[0x14F0] = v128;
  STACK[0x14E8] = (v128 ^ 0x7EB47DBDEBA5A73ELL) - 0x7EB47DBDEBA5A73ELL + ((2 * v128) & 0xD74B4E7C);
  v129 = a1 - 2019667541;
  STACK[0x14E0] = v129;
  STACK[0x14D8] = (v129 ^ 0xBF6938FDBFFFF7D7) + 0x4096C70240000829 + ((2 * v129) & 0x7FFFEFAE);
  v130 = 2 * a1 + 255631960;
  v131 = a1 - 1723938850;
  v132 = a1 - 1723938850 - ((2 * a1 + 255632216) & 0x2340ED64) + 128;
  LODWORD(STACK[0x4B4]) = v132;
  STACK[0x14D0] = (v132 ^ 0xFFEF9CBFEE8FC949) + 0x10634000D04005 + ((2 * (v132 ^ 0x11A076B2)) & 0xFE5F7FF6);
  v133 = a1 - 2019667538;
  STACK[0x14C8] = v133;
  STACK[0x14C0] = (v133 ^ 0xB37FCFCB72BFDDBFLL) + 0x4C8030348D402241 + ((2 * v133) & 0xE57FBB7E);
  v134 = a1 - 2019667537;
  STACK[0x14B8] = v134;
  STACK[0x14B0] = (v134 ^ 0xA7F5B7F7BFFD3FEFLL) + 0x580A48084002C011 + ((2 * v134) & 0x7FFA7FDE);
  v135 = a1 - 2019667536;
  STACK[0x14A8] = v135;
  STACK[0x14A0] = (v135 ^ 0xBF7A99BAFEBFDEDALL) + 0x4085664501402126 + ((2 * v135) & 0xFD7FBDB4);
  v136 = a1 - 2019667534;
  STACK[0x1498] = v136;
  STACK[0x1490] = (v136 ^ 0xEBFF3FFCFDF0E677) + 0x1400C003020F1989 + ((2 * v136) & 0xFBE1CCEE);
  v137 = a1 - 2019667533;
  STACK[0x1488] = v137;
  STACK[0x1480] = (v137 ^ 0x7FF3C6F7DEEE26FFLL) - 0x7FF3C6F7DEEE26FFLL + ((2 * v137) & 0xBDDC4DFE);
  v138 = a1 - 2019667532;
  STACK[0x1478] = v138;
  STACK[0x1470] = (v138 ^ 0xCB7FF7AFFBF69C7FLL) + 0x3480085004096381 + ((2 * v138) & 0xF7ED38FE);
  v139 = a1 - 2019667530;
  STACK[0x1468] = v139;
  STACK[0x1460] = (v139 ^ 0x7EF5FF1BEFFE76DELL) - 0x7EF5FF1BEFFE76DELL + ((2 * v139) & 0xDFFCEDBC);
  v140 = a1 - 2019667528;
  STACK[0x1458] = v140;
  STACK[0x1450] = (v140 ^ 0xFFF7FDBFB97FFFFBLL) + 0x8024046800005 + ((2 * v140) & 0x72FFFFF6);
  v141 = a1 - 2019667527;
  STACK[0x1448] = v141;
  STACK[0x1440] = (v141 ^ 0xF7FEB28E7BFDB5FALL) + 0x8014D7184024A06 + ((2 * v141) & 0xF7FB6BF4);
  v142 = a1 - 2019667526;
  STACK[0x1438] = v142;
  STACK[0x1430] = (v142 ^ 0xBFD36BFAFB79EECFLL) + 0x402C940504861131 + ((2 * v142) & 0xF6F3DD9E);
  v143 = a1 - 2019667525;
  STACK[0x1428] = v143;
  STACK[0x1420] = (v143 ^ 0xAFA76FFBFEBEE5FFLL) + 0x5058900401411A01 + ((2 * v143) & 0xFD7DCBFE);
  v144 = a1 - 2019667524;
  STACK[0x1418] = v144;
  STACK[0x1410] = (v144 ^ 0x7B97B8EEEFDF97EFLL) - 0x7B97B8EEEFDF97EFLL + ((2 * v144) & 0xDFBF2FDE);
  v145 = a1 - 2019667523;
  STACK[0x1408] = v145;
  STACK[0x1400] = (v145 ^ 0x3FDDDFFFF57DF6F3) - 0x3FDDDFFFF57DF6F3 + ((2 * v145) & 0xEAFBEDE6);
  v146 = a1 - 2019667521;
  STACK[0x13F8] = v146;
  STACK[0x13F0] = (v146 ^ 0x7F76FFFFCD0FFF7FLL) - 0x7F76FFFFCD0FFF7FLL + ((2 * v146) & 0x9A1FFEFE);
  v147 = a1 - 2019667520;
  STACK[0x13E8] = v147;
  STACK[0x13E0] = (v147 ^ 0x3EFFD7FB04F3FBF5) - 0x3EFFD7FB04F3FBF5 + ((2 * v147) & 0x9E7F7EA);
  v148 = a1 - 2019667515;
  STACK[0x13D8] = v148;
  STACK[0x13D0] = (v148 ^ 0x7FEF5D76B7BFFDEFLL) - 0x7FEF5D76B7BFFDEFLL + ((2 * v148) & 0x6F7FFBDE);
  v149 = a1 - 2019667514;
  STACK[0x13C8] = v149;
  STACK[0x13C0] = (v149 ^ 0xEEF7DB7EFFAFCBF1) + 0x110824810050340FLL + ((2 * v149) & 0xFF5F97E2);
  v150 = a1 - 2019667513;
  STACK[0x13B8] = v150;
  STACK[0x13B0] = (v150 ^ 0xECFEB57373F354E6) + 0x13014A8C8C0CAB1ALL + ((2 * v150) & 0xE7E6A9CC);
  v151 = a1 - 2019667512;
  STACK[0x13A8] = v151;
  STACK[0x13A0] = (v151 ^ 0x7FBEFFF271DDEFA6) - 0x7FBEFFF271DDEFA6 + ((2 * v151) & 0xE3BBDF4C);
  v152 = a1 - 2019667510;
  STACK[0x1398] = v152;
  STACK[0x1390] = (v152 ^ 0x7BF577DD67F5778) - 0x7BF577DD67F5778 + ((2 * v152) & 0xACFEAEF0);
  v153 = a1 - 2019667509;
  STACK[0x1388] = v153;
  STACK[0x1380] = (v153 ^ 0xFBFFFFAFFDEEF9EDLL) + 0x400005002110613 + ((2 * v153) & 0xFBDDF3DA);
  v154 = a1 - 2019667508;
  STACK[0x1378] = v154;
  STACK[0x1370] = (v154 ^ 0xF9FB1DBE7BDF7A7FLL) + 0x604E24184208581 + ((2 * v154) & 0xF7BEF4FE);
  v155 = a1 - 2019667507;
  STACK[0x1368] = v155;
  STACK[0x1360] = (v155 ^ 0xF87F6F7FEBF2F7AFLL) + 0x7809080140D0851 + ((2 * v155) & 0xD7E5EF5E);
  v156 = a1 - 2019667506;
  STACK[0x1358] = v156;
  STACK[0x1350] = (v156 ^ 0xBF7F3F95FFEFDAFELL) + 0x4080C06A00102502 + ((2 * v156) & 0xFFDFB5FC);
  v157 = a1 - 2019667505;
  STACK[0x1348] = v157;
  STACK[0x1340] = (v157 ^ 0xEBBFABD2DA71EDFBLL) + 0x1440542D258E1205 + ((2 * v157) & 0xB4E3DBF6);
  v158 = a1 - 2019667504;
  STACK[0x1338] = v158;
  STACK[0x1330] = (v158 ^ 0xF33E7FA3FFEFBBF9) + 0xCC1805C00104407 + ((2 * v158) & 0xFFDF77F2);
  v159 = a1 - 2019667502;
  STACK[0x1328] = v159;
  STACK[0x1320] = (v159 ^ 0x777BFEE970FCE1B5) - 0x777BFEE970FCE1B5 + ((2 * v159) & 0xE1F9C36A);
  v160 = a1 - 2019667501;
  STACK[0x1318] = v160;
  STACK[0x1310] = (v160 ^ 0x6F7FEFFFBFF77A77) - 0x6F7FEFFFBFF77A77 + ((2 * v160) & 0x7FEEF4EE);
  v161 = a1 - 2019667500;
  STACK[0x1308] = v161;
  STACK[0x1300] = (v161 ^ 0xCBEFFDC79EF5F2F5) + 0x34100238610A0D0BLL + ((2 * v161) & 0x3DEBE5EA);
  v162 = a1 - 2019667499;
  STACK[0x12F8] = v162;
  STACK[0x12F0] = (v162 ^ 0xEADFCFFF37DEE5BBLL) + 0x15203000C8211A45 + ((2 * v162) & 0x6FBDCB76);
  v163 = a1 - 2019667498;
  STACK[0x12E8] = v163;
  STACK[0x12E0] = (v163 ^ 0x1FA5D667B16FF7DFLL) - 0x1FA5D667B16FF7DFLL + ((2 * v163) & 0x62DFEFBE);
  v164 = a1 - 1723938850 - ((2 * a1 + 255632302) & 0x2340ED64) + 171;
  LODWORD(STACK[0x4B0]) = v164;
  STACK[0x12D8] = (v164 ^ 0xF9FBF72EC6DFA4D1) + 0x60408D128802D9DLL + ((2 * (v164 ^ 0x11A076B2)) & 0xAEFFA4C6);
  v165 = a1 - 2019667496;
  STACK[0x12D0] = v165;
  STACK[0x12C8] = (v165 ^ 0x6F82ECE9BC76FF7FLL) - 0x6F82ECE9BC76FF7FLL + ((2 * v165) & 0x78EDFEFE);
  v166 = a1 - 2019667495;
  STACK[0x12C0] = v166;
  STACK[0x12B8] = (v166 ^ 0xDE9F6FB99EF9BBFFLL) + 0x2160904661064401 + ((2 * v166) & 0x3DF377FE);
  v167 = a1 - 2019667494;
  STACK[0x12B0] = v167;
  STACK[0x12A8] = (v167 ^ 0xDEE676AFEFFFFD9BLL) + 0x2119895010000265 + ((2 * v167) & 0xDFFFFB36);
  v168 = a1 - 2019667493;
  STACK[0x12A0] = v168;
  STACK[0x1298] = (v168 ^ 0x77FFEA1EB6EC5F7FLL) - 0x77FFEA1EB6EC5F7FLL + ((2 * v168) & 0x6DD8BEFE);
  v169 = a1 - 2019667492;
  STACK[0x1290] = v169;
  STACK[0x1288] = (v169 ^ 0xE7BBDFFA5F4CD3CDLL) + 0x18442005A0B32C33 + ((2 * v169) & 0xBE99A79A);
  v170 = a1 - 2019667490;
  STACK[0x1280] = v170;
  STACK[0x1278] = (v170 ^ 0xFDDF7DFEDFBEFCDELL) + 0x220820120410322 + ((2 * v170) & 0xBF7DF9BC);
  v171 = a1 - 2019667488;
  STACK[0x1270] = v171;
  STACK[0x1268] = (v171 ^ 0xDFFCBD717CF7FBF7) + 0x2003428E83080409 + ((2 * v171) & 0xF9EFF7EE);
  v172 = a1 - 2019667486;
  STACK[0x1260] = v172;
  STACK[0x1258] = (v172 ^ 0x7FBB2E769FF5FD5FLL) - 0x7FBB2E769FF5FD5FLL + ((2 * v172) & 0x3FEBFABE);
  v173 = a1 - 2019667485;
  STACK[0x1250] = v173;
  STACK[0x1248] = (v173 ^ 0xF77FFDDF477B95FCLL) + 0x8800220B8846A04 + ((2 * v173) & 0x8EF72BF8);
  v174 = a1 - 2019667483;
  STACK[0x1240] = v174;
  STACK[0x1238] = (v174 ^ 0xADEFFDFEE17FDF8BLL) + 0x521002011E802075 + ((2 * v174) & 0xC2FFBF16);
  v175 = a1 - 2019667482;
  STACK[0x1230] = v175;
  STACK[0x1228] = (v175 ^ 0x6F7FF4D7BFFFB5E3) - 0x6F7FF4D7BFFFB5E3 + ((2 * v175) & 0x7FFF6BC6);
  v176 = a1 - 2019667481;
  STACK[0x1220] = v176;
  STACK[0x1218] = (v176 ^ 0x4EF31FEFFE79EFF3) - 0x4EF31FEFFE79EFF3 + ((2 * v176) & 0xFCF3DFE6);
  v177 = a1 - 2019667480;
  STACK[0x1210] = v177;
  STACK[0x1208] = (v177 ^ 0xF9FBFFFFFFF9FFE7) + 0x604000000060019 + ((2 * v177) & 0xFFF3FFCE);
  v178 = a1 - 2019667477;
  STACK[0x1200] = v178;
  STACK[0x11F8] = (v178 ^ 0xFEFFF6F7FADFDD9FLL) + 0x100090805202261 + ((2 * v178) & 0xF5BFBB3E);
  v179 = a1 - 2019667476;
  STACK[0x11F0] = v179;
  STACK[0x11E8] = (v179 ^ 0xFF8B4CFFF7EFD47FLL) + 0x74B30008102B81 + ((2 * v179) & 0xEFDFA8FE);
  v180 = a1 - 2019667473;
  STACK[0x11E0] = v180;
  STACK[0x11D8] = (v180 ^ 0x771EFFFFFFFD5DFFLL) - 0x771EFFFFFFFD5DFFLL + ((2 * v180) & 0xFFFABBFE);
  v181 = a1 - 2019667472;
  STACK[0x11D0] = v181;
  STACK[0x11C8] = (v181 ^ 0x73B5FFEDCDE47F8DLL) - 0x73B5FFEDCDE47F8DLL + ((2 * v181) & 0x9BC8FF1A);
  v182 = a1 - 2019667469;
  STACK[0x11C0] = v182;
  STACK[0x11B8] = (v182 ^ 0xDFFF379DEFFE1B7BLL) + 0x2000C8621001E485 + ((2 * v182) & 0xDFFC36F6);
  v183 = a1 - 2019667466;
  STACK[0x11B0] = v183;
  STACK[0x11A8] = (v183 ^ 0x7F5D7F7ADB597F7BLL) - 0x7F5D7F7ADB597F7BLL + ((2 * v183) & 0xB6B2FEF6);
  v184 = a1 - 2019667465;
  STACK[0x11A0] = v184;
  STACK[0x1198] = (v184 ^ 0x7D577D57ADFE16F3) - 0x7D577D57ADFE16F3 + ((2 * v184) & 0x5BFC2DE6);
  v185 = a1 - 2019667463;
  STACK[0x1190] = v185;
  STACK[0x1188] = (v185 ^ 0xBFF53BFEB9DDFDFFLL) + 0x400AC40146220201 + ((2 * v185) & 0x73BBFBFE);
  v186 = a1 - 2019667462;
  STACK[0x1180] = v186;
  STACK[0x1178] = (v186 ^ 0xA556FDAAF6D77F76) + 0x5AA902550928808ALL + ((2 * v186) & 0xEDAEFEEC);
  v187 = a1 - 2019667460;
  STACK[0x1170] = v187;
  STACK[0x1168] = (v187 ^ 0xFDFB6FDF3CF7BBFFLL) + 0x2049020C3084401 + ((2 * v187) & 0x79EF77FE);
  v188 = a1 - 2019667456;
  STACK[0x1160] = v188;
  STACK[0x1158] = (v188 ^ 0xFEAFF02FDFBFEFF3) + 0x1500FD02040100DLL + ((2 * v188) & 0xBF7FDFE6);
  v189 = a1 - 2019667455;
  STACK[0x1150] = v189;
  STACK[0x1148] = (v189 ^ 0xEF1BDBFAFF7BDA64) + 0x10E424050084259CLL + ((2 * v189) & 0xFEF7B4C8);
  v190 = a1 - 2019667453;
  STACK[0x1140] = v190;
  STACK[0x1138] = (v190 ^ 0x3D4D6EF7F25DDFF7) - 0x3D4D6EF7F25DDFF7 + ((2 * v190) & 0xE4BBBFEE);
  v191 = a1 - 2019667452;
  STACK[0x1130] = v191;
  STACK[0x1128] = (v191 ^ 0x5BDFEEFF95BEA6DELL) - 0x5BDFEEFF95BEA6DELL + ((2 * v191) & 0x2B7D4DBC);
  v192 = a1 - 2019667451;
  STACK[0x1120] = v192;
  STACK[0x1118] = (v192 ^ 0xACBFFF07EE5F615ELL) + 0x534000F811A09EA2 + ((2 * v192) & 0xDCBEC2BC);
  v193 = a1 - 2019667450;
  STACK[0x1110] = v193;
  STACK[0x1108] = (v193 ^ 0x1F7EBFBB7FCBE59DLL) - 0x1F7EBFBB7FCBE59DLL + ((2 * v193) & 0xFF97CB3A);
  v194 = a1 - 2019667449;
  STACK[0x1100] = v194;
  STACK[0x10F8] = (v194 ^ 0x773FDBBF5F3CFBCELL) - 0x773FDBBF5F3CFBCELL + ((2 * v194) & 0xBE79F79C);
  v195 = a1 - 2019667448;
  STACK[0x10F0] = v195;
  STACK[0x10E8] = (v195 ^ 0xCE397C6BDDFFCFD9) + 0x31C6839422003027 + ((2 * v195) & 0xBBFF9FB2);
  v196 = a1 - 2019667447;
  STACK[0x10E0] = v196;
  STACK[0x10D8] = (v196 ^ 0x7D76BBE637AFEFD6) - 0x7D76BBE637AFEFD6 + ((2 * v196) & 0x6F5FDFAC);
  v197 = a1 - 2019667445;
  STACK[0x10D0] = v197;
  STACK[0x10C8] = (v197 ^ 0xDBFFBCDF79FD1DB5) + 0x240043208602E24BLL + ((2 * v197) & 0xF3FA3B6A);
  v198 = a1 - 2019667444;
  STACK[0x10C0] = v198;
  STACK[0x10B8] = (v198 ^ 0x7FFFEFF1BF6E7BFELL) - 0x7FFFEFF1BF6E7BFELL + ((2 * v198) & 0x7EDCF7FC);
  v199 = a1 - 2019667443;
  STACK[0x10B0] = v199;
  STACK[0x10A8] = (v199 ^ 0xFECFFBEFF18C6BADLL) + 0x13004100E739453 + ((2 * v199) & 0xE318D75A);
  v200 = a1 - 2019667440;
  STACK[0x10A0] = v200;
  STACK[0x1098] = (v200 ^ 0xE978DEFAF3378FBFLL) + 0x168721050CC87041 + ((2 * v200) & 0xE66F1F7E);
  v201 = a1 - 2019667439;
  STACK[0x1090] = v201;
  STACK[0x1088] = (v201 ^ 0xFFFFB9E7D7E381C6) + 0x4618281C7E3ALL + ((2 * v201) & 0xAFC7038C);
  v202 = a1 - 2019667438;
  STACK[0x1080] = v202;
  STACK[0x1078] = (v202 ^ 0x9E5A8EFD3FFFEDDFLL) + 0x61A57102C0001221 + ((2 * v202) & 0x7FFFDBBE);
  v203 = a1 - 2019667437;
  STACK[0x1070] = v203;
  STACK[0x1068] = (v203 ^ 0xF7DFD757DF55BCEFLL) + 0x82028A820AA4311 + ((2 * v203) & 0xBEAB79DE);
  v204 = a1 - 2019667436;
  STACK[0x1060] = v204;
  STACK[0x1058] = (v204 ^ 0x6EEDDB4FCEBABDFFLL) - 0x6EEDDB4FCEBABDFFLL + ((2 * v204) & 0x9D757BFE);
  v205 = a1 - 1723938850 - ((2 * a1 + 255632426) & 0x2340ED64) + 233;
  LODWORD(STACK[0x4AC]) = v205;
  STACK[0x1050] = (v205 ^ 0x59FDFFFFEE5F485DLL) - 0x59FDFFFFFFFF3EEFLL + ((2 * (v205 ^ 0x11A076B2)) & 0xFFFE7DDELL);
  v206 = a1 - 2019667434;
  STACK[0x1048] = v206;
  STACK[0x1040] = (v206 ^ 0x3AF9CEEFE3DFEFFFLL) - 0x3AF9CEEFE3DFEFFFLL + ((2 * v206) & 0xC7BFDFFE);
  v207 = a1 - 2019667433;
  STACK[0x1038] = v207;
  STACK[0x1030] = (v207 ^ 0xFFEEF7FFEEF6B7EBLL) + 0x11080011094815 + ((2 * v207) & 0xDDED6FD6);
  v208 = a1 - 2019667432;
  STACK[0x1028] = v208;
  STACK[0x1020] = (v208 ^ 0xFA0EFF2B5FFAEFE7) + 0x5F100D4A0051019 + ((2 * v208) & 0xBFF5DFCE);
  v209 = a1 - 2019667431;
  STACK[0x1018] = v209;
  STACK[0x1010] = (v209 ^ 0xDFFFFD67EFEF773FLL) + 0x20000298101088C1 + ((2 * v209) & 0xDFDEEE7E);
  v210 = a1 - 2019667429;
  STACK[0x1008] = v210;
  STACK[0x1000] = (v210 ^ 0x35F8FEDF677DBFF6) - 0x35F8FEDF677DBFF6 + ((2 * v210) & 0xCEFB7FEC);
  v211 = a1 - 2019667427;
  STACK[0xFF8] = v211;
  STACK[0xFF0] = (v211 ^ 0xF4BDC43EEFADE6D6) + 0xB423BC11052192ALL + ((2 * v211) & 0xDF5BCDAC);
  v212 = a1 - 2019667426;
  STACK[0xFE8] = v212;
  STACK[0xFE0] = (v212 ^ 0xF36C9EF65FDFFEDBLL) + 0xC936109A0200125 + ((2 * v212) & 0xBFBFFDB6);
  v213 = a1 - 2019667425;
  STACK[0xFD8] = v213;
  STACK[0xFD0] = (v213 ^ 0x7FCFB9CF69BFFF2FLL) - 0x7FCFB9CF69BFFF2FLL + ((2 * v213) & 0xD37FFE5E);
  v214 = a1 - 2019667421;
  STACK[0xFC8] = v214;
  STACK[0xFC0] = (v214 ^ 0xE7FFDEFEBD3DFCBELL) + 0x1800210142C20342 + ((2 * v214) & 0x7A7BF97C);
  v215 = a1 - 2019667420;
  STACK[0xFB8] = v215;
  STACK[0xFB0] = (v215 ^ 0x3DB7D77979BB7DF7) - 0x3DB7D77979BB7DF7 + ((2 * v215) & 0xF376FBEE);
  v216 = a1 - 2019667419;
  STACK[0xFA8] = v216;
  STACK[0xFA0] = (v216 ^ 0xD7CFFBFE3DF3EBEFLL) + 0x28300401C20C1411 + ((2 * v216) & 0x7BE7D7DE);
  v217 = a1 - 2019667418;
  STACK[0xF98] = v217;
  STACK[0xF90] = (v217 ^ 0x5FD8E6FEFFE7DEDFLL) - 0x5FD8E6FEFFE7DEDFLL + ((2 * v217) & 0xFFCFBDBE);
  v218 = a1 - 2019667417;
  STACK[0xF88] = v218;
  STACK[0xF80] = (v218 ^ 0xFFBEEC7EF81DB7E3) + 0x41138107E2481DLL + ((2 * v218) & 0xF03B6FC6);
  v219 = a1 - 2019667414;
  STACK[0xF78] = v219;
  STACK[0xF70] = (v219 ^ 0x743DD916CFE7DFCBLL) - 0x743DD916CFE7DFCBLL + ((2 * v219) & 0x9FCFBF96);
  v220 = a1 - 2019667413;
  STACK[0xF68] = v220;
  STACK[0xF60] = (v220 ^ 0xF9BF7FDFF7FE7F1ELL) + 0x6408020080180E2 + ((2 * v220) & 0xEFFCFE3C);
  v221 = a1 - 2019667412;
  STACK[0xF58] = v221;
  STACK[0xF50] = (v221 ^ 0xFD9E6E56F9B6FFBFLL) + 0x26191A906490041 + ((2 * v221) & 0xF36DFF7E);
  v222 = a1 - 2019667411;
  STACK[0xF48] = v222;
  STACK[0xF40] = (v222 ^ 0x5F69FFD65FFF7ACELL) - 0x5F69FFD65FFF7ACELL + ((2 * v222) & 0xBFFEF59C);
  v223 = a1 - 2019667410;
  STACK[0xF38] = v223;
  STACK[0xF30] = (v223 ^ 0xFBBBFFFD59F7DDEELL) + 0x4440002A6082212 + ((2 * v223) & 0xB3EFBBDC);
  v224 = a1 - 2019667408;
  STACK[0xF28] = v224;
  STACK[0xF20] = (v224 ^ 0xFFF337EBF7A72F3FLL) + 0xCC8140858D0C1 + ((2 * v224) & 0xEF4E5E7E);
  v225 = a1 - 2019667407;
  STACK[0xF18] = v225;
  STACK[0xF10] = (v225 ^ 0x77F376DEFCFC7FFFLL) - 0x77F376DEFCFC7FFFLL + ((2 * v225) & 0xF9F8FFFE);
  v226 = a1 - 2019667405;
  STACK[0xF08] = v226;
  STACK[0xF00] = (v226 ^ 0xFA7CDEF7FF7EEFABLL) + 0x583210800811055 + ((2 * v226) & 0xFEFDDF56);
  v227 = a1 - 2019667404;
  STACK[0xEF8] = v227;
  STACK[0xEF0] = (v227 ^ 0x57DDFFFB96BFFD6DLL) - 0x57DDFFFB96BFFD6DLL + ((2 * v227) & 0x2D7FFADA);
  v228 = a1 - 2019667403;
  STACK[0xEE8] = v228;
  STACK[0xEE0] = (v228 ^ 0xFFDFFEFC1FBFCFEBLL) + 0x200103E0403015 + ((2 * v228) & 0x3F7F9FD6);
  v229 = a1 - 2019667402;
  STACK[0xED8] = v229;
  STACK[0xED0] = (v229 ^ 0x356F7FEFD8BFFCF7) - 0x356F7FEFD8BFFCF7 + ((2 * v229) & 0xB17FF9EE);
  v230 = a1 - 2019667401;
  STACK[0xEC8] = v230;
  STACK[0xEC0] = (v230 ^ 0x6D7FFDE7EA32B7FFLL) - 0x6D7FFDE7EA32B7FFLL + ((2 * v230) & 0xD4656FFE);
  v231 = a1 - 2019667399;
  STACK[0xEB8] = v231;
  STACK[0xEB0] = (v231 ^ 0xAF7F6FFBBD2FFF27) + 0x5080900442D000D9 + ((2 * v231) & 0x7A5FFE4E);
  v232 = a1 - 2019667396;
  STACK[0xEA8] = v232;
  STACK[0xEA0] = (v232 ^ 0x767FEFD6D5B6CFFFLL) - 0x767FEFD6D5B6CFFFLL + ((2 * v232) & 0xAB6D9FFE);
  v233 = a1 - 2019667395;
  STACK[0xE98] = v233;
  STACK[0xE90] = (v233 ^ 0xABA7E2FFFE971BBDLL) + 0x54581D000168E443 + ((2 * v233) & 0xFD2E377A);
  v234 = a1 - 2019667394;
  STACK[0xE88] = v234;
  STACK[0xE80] = (v234 ^ 0x7F3F5E8B7FFF7EF7) - 0x7F3F5E8B7FFF7EF7 + ((2 * v234) & 0xFFFEFDEE);
  v235 = a1 - 2019667393;
  STACK[0xE78] = v235;
  STACK[0xE70] = (v235 ^ 0xF3FB834FDBC57FBDLL) + 0xC047CB0243A8043 + ((2 * v235) & 0xB78AFF7A);
  v236 = a1 - 2019667391;
  STACK[0xE68] = v236;
  STACK[0xE60] = (v236 ^ 0xFE8FFFFBF6FFABBFLL) + 0x170000409005441 + ((2 * v236) & 0xEDFF577E);
  v237 = a1 - 2019667390;
  STACK[0x2810] = v237;
  STACK[0x2878] = 2 * v237;
  STACK[0xE58] = (v237 ^ 0xB2E3F78DEF539BDELL) + ((2 * v237) & 0xDEA737BC) + 0x4D1C087210AC6422;
  v238 = a1 - 2019667389;
  STACK[0x27D8] = v238;
  STACK[0x27E0] = 2 * v238;
  STACK[0xE50] = (v238 ^ 0xAEF9B7F9FEF1FFEFLL) + ((2 * v238) & 0xFDE3FFDE) + 0x51064806010E0011;
  v239 = a1 - 2019667387;
  STACK[0x2750] = v239;
  STACK[0x2780] = 2 * v239;
  STACK[0xE48] = (v239 ^ 0xBD8ABFF7B3FD1F76) + ((2 * v239) & 0x67FA3EEC) + 0x427540084C02E08ALL;
  v240 = a1 - 2019667385;
  STACK[0x2778] = v240;
  STACK[0x27D0] = 2 * v240;
  STACK[0xE40] = (v240 ^ 0x766FFFFDAED292FBLL) + ((2 * v240) & 0x5DA525F6) - 0x766FFFFDAED292FBLL;
  v241 = a1 - 2019667384;
  STACK[0x2768] = v241;
  STACK[0x2770] = 2 * v241;
  STACK[0xE38] = (v241 ^ 0x7D67DEEBB5FD57CFLL) + ((2 * v241) & 0x6BFAAF9E) - 0x7D67DEEBB5FD57CFLL;
  v242 = a1 - 2019667383;
  STACK[0x2758] = v242;
  STACK[0x2760] = 2 * v242;
  STACK[0xE30] = (v242 ^ 0xF9E67DFBFFBBBFF7) + ((2 * v242) & 0xFF777FEE) + 0x619820400444009;
  v243 = a1 - 2019667381;
  STACK[0xE28] = v243;
  STACK[0xE20] = (v243 ^ 0xDF4AF6DECFC75F9FLL) + 0x20B509213038A061 + ((2 * v243) & 0x9F8EBF3E);
  v244 = a1 - 2019667380;
  STACK[0x2740] = v244;
  STACK[0x2748] = 2 * v244;
  STACK[0xE18] = (v244 ^ 0xFFD97AEE9FF17DFCLL) + ((2 * v244) & 0x3FE2FBF8) + 0x268511600E8204;
  v245 = a1 - 2019667379;
  STACK[0xE10] = v245;
  STACK[0xE08] = (v245 ^ 0xF3FF35C94C2E53EDLL) + 0xC00CA36B3D1AC13 + ((2 * v245) & 0x985CA7DA);
  v246 = a1 - 2019667378;
  STACK[0xE00] = v246;
  STACK[0xDF8] = (v246 ^ 0xCDFCA35E3FFFE9BFLL) + 0x32035CA1C0001641 + ((2 * v246) & 0x7FFFD37E);
  v247 = a1 - 2019667376;
  STACK[0x26C8] = v247;
  STACK[0x26D8] = 2 * v247;
  STACK[0xDF0] = (v247 ^ 0x4FFEEEDCE5D4B3F5) + ((2 * v247) & 0xCBA967EA) - 0x4FFEEEDCE5D4B3F5;
  v248 = a1 - 2019667372;
  STACK[0x2728] = v248;
  STACK[0x2730] = 2 * v248;
  STACK[0xDE8] = (v248 ^ 0xF677EFEFFFDDBFDELL) + ((2 * v248) & 0xFFBB7FBC) + 0x988101000224022;
  v249 = a1 - 2019667371;
  STACK[0x2708] = v249;
  STACK[0x2720] = 2 * v249;
  STACK[0xDE0] = (v249 ^ 0xBD77FE4CDDFC77F1) + ((2 * v249) & 0xBBF8EFE2) + 0x428801B32203880FLL;
  v250 = a1 - 2019667369;
  STACK[0x26F0] = v250;
  STACK[0x26F8] = 2 * v250;
  STACK[0xDD8] = (v250 ^ 0x3BBFE6EBFF547FFELL) + ((2 * v250) & 0xFEA8FFFC) - 0x3BBFE6EBFF547FFELL;
  v251 = a1 - 2019667364;
  STACK[0x2700] = v251;
  STACK[0x2718] = 2 * v251;
  STACK[0xDD0] = (v251 ^ 0xFEDE9F7B774DBBF7) + ((2 * v251) & 0xEE9B77EE) + 0x121608488B24409;
  v252 = a1 - 2019667361;
  STACK[0x2710] = v252;
  STACK[0x2738] = 2 * v252;
  STACK[0xDC8] = (v252 ^ 0xBF3EEBED77FEF60DLL) + ((2 * v252) & 0xEFFDEC1A) + 0x40C11412880109F3;
  v253 = a1 - 2019667360;
  STACK[0xDC0] = v253;
  STACK[0xDB8] = (v253 ^ 0x1F53FCFDFF5BFFF7) - 0x1F53FCFDFF5BFFF7 + ((2 * v253) & 0xFEB7FFEE);
  v254 = a1 - 2019667359;
  STACK[0xDB0] = v254;
  STACK[0xDA8] = (v254 ^ 0xBFFBD5ED7F7D7FAFLL) + 0x40042A1280828051 + ((2 * v254) & 0xFEFAFF5E);
  v255 = a1 - 2019667358;
  STACK[0x26B0] = v255;
  STACK[0x26D0] = 2 * v255;
  STACK[0xDA0] = (v255 ^ 0xEBFFAF7B9EE7D7EELL) + ((2 * v255) & 0x3DCFAFDC) + 0x1400508461182812;
  v256 = a1 - 2019667357;
  STACK[0x26A0] = v256;
  STACK[0x26B8] = 2 * v256;
  STACK[0xD98] = (v256 ^ 0xFFDADFCE679F3E97) + ((2 * v256) & 0xCF3E7D2E) + 0x2520319860C169;
  v257 = a1 - 2019667352;
  STACK[0x2670] = v257;
  STACK[0x26E8] = 2 * v257;
  STACK[0x2378] = a1 - 2019667367;
  STACK[0x2370] = a1 - 2019667365;
  STACK[0xD90] = (v257 ^ 0xC7FFAFCFFEEFF2BFLL) + ((2 * v257) & 0xFDDFE57E) + 0x3800503001100D41;
  v258 = a1 - 2019667350;
  STACK[0xD88] = v258;
  STACK[0xD80] = (v258 ^ 0xFF7F9FE8ABFEECFFLL) + 0x80601754011301 + ((2 * v258) & 0x57FDD9FE);
  v259 = a1 - 2019667349;
  STACK[0x2680] = v259;
  STACK[0x26A8] = 2 * v259;
  STACK[0x2368] = a1 - 2019667370;
  STACK[0xD78] = (v259 ^ 0xB1F7F56FCB9DC6FELL) + ((2 * v259) & 0x973B8DFC) + 0x4E080A9034623902;
  v260 = a1 - 2019667347;
  STACK[0x26C0] = v260;
  STACK[0x26E0] = 2 * v260;
  STACK[0xD70] = (v260 ^ 0xDB53FFFF74FF7BBFLL) + ((2 * v260) & 0xE9FEF77E) + 0x24AC00008B008441;
  v261 = a1 - 2019667346;
  STACK[0xD68] = v261;
  STACK[0xD60] = (v261 ^ 0xFFFD87B0F1FFB7F5) + 0x2784F0E00480BLL + ((2 * v261) & 0xE3FF6FEA);
  v262 = a1 - 2019667345;
  STACK[0x2648] = v262;
  STACK[0x2678] = 2 * v262;
  STACK[0x2360] = a1 - 2019667377;
  STACK[0xD58] = (v262 ^ 0x7EF7EFEA7FFBF3BBLL) + ((2 * v262) & 0xFFF7E776) - 0x7EF7EFEA7FFBF3BBLL;
  v263 = a1 - 2019667344;
  STACK[0x2650] = v263;
  STACK[0x2660] = 2 * v263;
  STACK[0xD50] = (v263 ^ 0xBFFFFEC37FEEBFF8) + ((2 * v263) & 0xFFDD7FF0) + 0x4000013C80114008;
  v264 = a1 - 2019667342;
  STACK[0x2658] = v264;
  STACK[0x2668] = 2 * v264;
  STACK[0xD48] = (v264 ^ 0xEB7FDF6D8EFFAFCDLL) + ((2 * v264) & 0x1DFF5F9A) + 0x1480209271005033;
  v265 = a1 - 2019667340;
  STACK[0xD40] = v265;
  STACK[0xD38] = (v265 ^ 0xF6BE3DFFA776FFFDLL) + 0x941C20058890003 + ((2 * v265) & 0x4EEDFFFA);
  STACK[0x2358] = a1 - 2019667382;
  v266 = a1 - 2019667338;
  STACK[0x2610] = v266;
  STACK[0x2630] = 2 * v266;
  STACK[0xD30] = (v266 ^ 0xF0BBFFEDE7FBDF6FLL) + ((2 * v266) & 0xCFF7BEDE) + 0xF44001218042091;
  v267 = a1 - 2019667336;
  STACK[0x2638] = v267;
  STACK[0x2640] = 2 * v267;
  STACK[0xD28] = (v267 ^ 0xFCFFAF576FFFFDAFLL) + ((2 * v267) & 0xDFFFFB5E) + 0x30050A890000251;
  v268 = a1 - 2019667334;
  STACK[0x2618] = v268;
  STACK[0x2628] = 2 * v268;
  STACK[0xD20] = (v268 ^ 0xB39FFFBE7E5DECCFLL) + ((2 * v268) & 0xFCBBD99E) + 0x4C60004181A21331;
  v269 = a1 - 2019667333;
  STACK[0xD18] = v269;
  STACK[0xD10] = (v269 ^ 0x77FEF87DFB3FF9C7) - 0x77FEF87DFB3FF9C7 + ((2 * v269) & 0xF67FF38E);
  v270 = a1 - 2019667332;
  STACK[0x2350] = a1 - 2019667388;
  STACK[0xD08] = v270;
  STACK[0xD00] = (v270 ^ 0x4C75BED87FDFBF71) - 0x4C75BED87FDFBF71 + ((2 * v270) & 0xFFBF7EE2);
  v271 = a1 - 2019667330;
  STACK[0x25E0] = v271;
  STACK[0x25E8] = 2 * v271;
  STACK[0xCF8] = (v271 ^ 0xFE6DEBBF7F2BEFEFLL) + ((2 * v271) & 0xFE57DFDE) + 0x192144080D41011;
  v272 = a1 - 2019667329;
  STACK[0x25C8] = v272;
  STACK[0x25D8] = 2 * v272;
  STACK[0xCF0] = (v272 ^ 0xD31B97EE5EB3733BLL) + ((2 * v272) & 0xBD66E676) + 0x2CE46811A14C8CC5;
  STACK[0x2348] = a1 - 2019667392;
  v273 = a1 - 2019667326;
  STACK[0x25C0] = v273;
  STACK[0x25D0] = 2 * v273;
  STACK[0xCE8] = (v273 ^ 0x5CD3DFB3FEBFFFFFLL) + ((2 * v273) & 0xFD7FFFFE) - 0x5CD3DFB3FEBFFFFFLL;
  v274 = a1 - 2019667324;
  STACK[0xCE0] = v274;
  STACK[0xCD8] = (v274 ^ 0xEA7BED5F6F571FF9) + 0x158412A090A8E007 + ((2 * v274) & 0xDEAE3FF2);
  v275 = a1 - 2019667323;
  STACK[0xCD0] = v275;
  STACK[0xCC8] = (v275 ^ 0x379F7EFFFBCE4A6FLL) - 0x379F7EFFFBCE4A6FLL + ((2 * v275) & 0xF79C94DE);
  v276 = a1 - 2019667322;
  STACK[0x2538] = v276;
  STACK[0x25B0] = 2 * v276;
  STACK[0x2340] = a1 - 2019667397;
  STACK[0xCC0] = (v276 ^ 0xD7BBF4F1EF93FADCLL) + ((2 * v276) & 0xDF27F5B8) + 0x28440B0E106C0524;
  v277 = a1 - 2019667320;
  STACK[0x2338] = a1 - 2019667398;
  STACK[0xCB8] = v277;
  STACK[0xCB0] = (v277 ^ 0x5BEE5DF7FF79FFF3) - 0x5BEE5DF7FF79FFF3 + ((2 * v277) & 0xFEF3FFE6);
  STACK[0x2330] = a1 - 2019667400;
  v278 = a1 - 2019667319;
  STACK[0x2598] = v278;
  STACK[0x25B8] = 2 * v278;
  STACK[0xCA8] = (v278 ^ 0x72BE90BF7CFFCF5FLL) + ((2 * v278) & 0xF9FF9EBE) - 0x72BE90BF7CFFCF5FLL;
  v279 = a1 - 2019667317;
  STACK[0xCA0] = v279;
  STACK[0xC98] = (v279 ^ 0xFFFBFF77FFFA5D7ELL) + 0x400880005A282 + ((2 * v279) & 0xFFF4BAFC);
  v280 = a1 - 2019667316;
  STACK[0x2510] = v280;
  STACK[0x2518] = 2 * v280;
  STACK[0xC90] = (v280 ^ 0x7D78CDB8BF29A1BFLL) + ((2 * v280) & 0x7E53437E) - 0x7D78CDB8BF29A1BFLL;
  v281 = a1 - 2019667315;
  STACK[0x2488] = v281;
  STACK[0x2508] = 2 * v281;
  STACK[0xC88] = (v281 ^ 0xFFEE7FF9FD72BFE7) + ((2 * v281) & 0xFAE57FCE) + 0x118006028D4019;
  v282 = a1 - 2019667314;
  STACK[0x2468] = v282;
  STACK[0x2470] = 2 * v282;
  STACK[0xC80] = (v282 ^ 0x27EB7FFCD7BBBF7FLL) + ((2 * v282) & 0xAF777EFE) - 0x27EB7FFCD7BBBF7FLL;
  STACK[0x2328] = a1 - 2019667406;
  v283 = a1 - 2019667313;
  STACK[0x2450] = v283;
  STACK[0x2460] = 2 * v283;
  STACK[0xC78] = (v283 ^ 0xFEEDFEF377B6EA77) + ((2 * v283) & 0xEF6DD4EE) + 0x112010C88491589;
  v284 = a1 - 2019667312;
  STACK[0x2448] = v284;
  STACK[0x2458] = 2 * v284;
  STACK[0xC70] = (v284 ^ 0xFFDD377AA2ADFF7FLL) + ((2 * v284) & 0x455BFEFE) + 0x22C8855D520081;
  STACK[0x2320] = a1 - 2019667409;
  v285 = a1 - 2019667311;
  STACK[0x2438] = v285;
  STACK[0x2440] = 2 * v285;
  STACK[0xC68] = (v285 ^ 0x316FFF35BBFDFFFELL) + ((2 * v285) & 0x77FBFFFC) - 0x316FFF35BBFDFFFELL;
  v286 = a1 - 2019667310;
  STACK[0xC60] = v286;
  STACK[0xC58] = (v286 ^ 0xDFD476EBDABF3EB8) + 0x202B89142540C148 + ((2 * v286) & 0xB57E7D70);
  v287 = a1 - 2019667309;
  STACK[0x2388] = v287;
  STACK[0x2390] = 2 * v287;
  STACK[0xC50] = (v287 ^ 0xFC7467CEBFF73DE5) + ((2 * v287) & 0x7FEE7BCA) + 0x38B98314008C21BLL;
  v288 = a1 - 2019667308;
  STACK[0x2060] = v288;
  STACK[0x2380] = 2 * v288;
  STACK[0xC48] = (v288 ^ 0x1BBBFFDF533B6FD9) + ((2 * v288) & 0xA676DFB2) - 0x1BBBFFDF533B6FD9;
  STACK[0x2318] = a1 - 2019667415;
  v289 = a1 - 2019667306;
  STACK[0x2050] = v289;
  STACK[0x2058] = 2 * v289;
  v290 = a1 - 2019667304;
  STACK[0x2040] = v290;
  STACK[0xC40] = (v289 ^ 0x390E5FEDFAD7FFFFLL) + ((2 * v289) & 0xF5AFFFFE) - 0x390E5FEDFAD7FFFFLL;
  v291 = a1 - 2019667305;
  STACK[0x2030] = v291;
  STACK[0x2048] = 2 * v291;
  STACK[0x2310] = a1 - 2019667416;
  STACK[0xC38] = (v291 ^ 0xC4FDB1EB7FDB6FABLL) + ((2 * v291) & 0xFFB6DF56) + 0x3B024E1480249055;
  STACK[0x2038] = 2 * v290;
  STACK[0xC30] = (v290 ^ 0xBCCDA1BFC1ADEE9BLL) + ((2 * v290) & 0x835BDD36) + 0x43325E403E521165;
  v292 = a1 - 2019667303;
  STACK[0xC28] = v292;
  STACK[0xC20] = (v292 ^ 0xBEF1F1F7A3EF7DDFLL) + 0x410E0E085C108221 + ((2 * v292) & 0x47DEFBBE);
  v293 = a1 - 2019667302;
  STACK[0xC18] = v293;
  STACK[0xC10] = (v293 ^ 0x5F5ECDF6BBC77EDELL) - 0x5F5ECDF6BBC77EDELL + ((2 * v293) & 0x778EFDBC);
  STACK[0x2308] = a1 - 2019667423;
  STACK[0x2300] = a1 - 2019667422;
  v294 = a1 - 2019667301;
  STACK[0xC08] = v294;
  v295 = a1 - 2019667298;
  STACK[0x2020] = v295;
  STACK[0xC00] = (v294 ^ 0x26E5DF3EDF7AC5FELL) - 0x26E5DF3EDF7AC5FELL + ((2 * v294) & 0xBEF58BFC);
  v296 = a1 - 2019667300;
  STACK[0x2010] = v296;
  STACK[0x2028] = 2 * v296;
  STACK[0x22F8] = a1 - 2019667424;
  STACK[0xBF8] = (v296 ^ 0xFFF7EFEBDFFFF6D9) + ((2 * v296) & 0xBFFFEDB2) + 0x8101420000927;
  STACK[0x2018] = 2 * v295;
  STACK[0xBF0] = (v295 ^ 0xBBEFF67F77BF7EEFLL) + ((2 * v295) & 0xEF7EFDDE) + 0x4410098088408111;
  v297 = a1 - 2019667297;
  STACK[0xBE8] = v297;
  STACK[0xBE0] = (v297 ^ 0x369B97F7F0AFE5F9) - 0x369B97F7F0AFE5F9 + ((2 * v297) & 0xE15FCBF2);
  STACK[0x22F0] = a1 - 2019667428;
  v298 = a1 - 2019667296;
  STACK[0x2000] = v298;
  STACK[0x2008] = 2 * v298;
  STACK[0x22E8] = a1 - 2019667430;
  STACK[0xBD8] = (v298 ^ 0xFFBEF76FBFBEEFFFLL) + ((2 * v298) & 0x7F7DDFFE) + 0x41089040411001;
  v299 = a1 - 2019667294;
  STACK[0x1FF0] = v299;
  STACK[0x1FF8] = 2 * v299;
  STACK[0xBD0] = (v299 ^ 0x77FBEFB7FABFBFBALL) + ((2 * v299) & 0xF57F7F74) - 0x77FBEFB7FABFBFBALL;
  v300 = 2 * (a1 - 2019667293);
  STACK[0x1FE8] = v300;
  v301 = a1 - 2019667293;
  STACK[0x1FA0] = v301;
  STACK[0xBC8] = (v301 ^ 0x176A48D1AEAEB844) + (v300 & 0x5D5D7088) - 0x176A48D1AEAEB844;
  v302 = a1 - 2019667292;
  STACK[0x1F90] = v302;
  STACK[0x1FB0] = 2 * v302;
  STACK[0xBC0] = (v302 ^ 0x91FBB7D6BDFFEBF9) + ((2 * v302) & 0x7BFFD7F2) + 0x6E04482942001407;
  v303 = a1 - 2019667290;
  STACK[0x1FD0] = v303;
  STACK[0x1FE0] = 2 * v303;
  STACK[0xBB8] = (v303 ^ 0xCF7DB9D3FDF95BDBLL) + ((2 * v303) & 0xFBF2B7B6) + 0x3082462C0206A425;
  v304 = (a1 + 127816360) & 0x11A076B3 ^ a1 & 1;
  v305 = a1 - 2019667287;
  STACK[0x1FC8] = v305;
  STACK[0x1FD8] = 2 * v305;
  STACK[0xBB0] = (v305 ^ 0x6D34DBEB6B4FFB72) + ((2 * v305) & 0xD69FF6E4) - 0x6D34DBEB6B4FFB72;
  v306 = a1 - 2019667286;
  v307 = a1 - 2019667283;
  STACK[0x1F78] = v307;
  STACK[0xBA8] = v306;
  STACK[0xBA0] = (v306 ^ 0x7FC3EF5FFFF7BFEALL) - 0x7FC3EF5FFFF7BFEALL + ((2 * v306) & 0xFFEF7FD4);
  v308 = a1 - 2019667284;
  STACK[0x1F68] = v308;
  STACK[0x1F88] = 2 * v308;
  STACK[0xB98] = (v308 ^ 0xDBAE6BFE5FF77775) + ((2 * v308) & 0xBFEEEEEA) + 0x24519401A008888BLL;
  STACK[0x1F70] = 2 * v307;
  STACK[0xB90] = (v307 ^ 0x6DDFE3FB4EEF57DDLL) + ((2 * v307) & 0x9DDEAFBA) - 0x6DDFE3FB4EEF57DDLL;
  v309 = a1 - 2019667281;
  STACK[0x1FB8] = v309;
  STACK[0x1FC0] = 2 * v309;
  STACK[0x22E0] = a1 - 2019667441;
  STACK[0xB88] = (v309 ^ 0xF9BF38DDB7DFF6FFLL) + ((2 * v309) & 0x6FBFEDFE) + 0x640C72248200901;
  v310 = a1 - 2019667280;
  STACK[0x1F48] = v310;
  STACK[0x1F98] = 2 * v310;
  STACK[0x22D8] = a1 - 2019667442;
  STACK[0xB80] = (v310 ^ 0x53A9AFBEFF5F3BFELL) + ((2 * v310) & 0xFEBE77FC) - 0x53A9AFBEFF5F3BFELL;
  v311 = a1 - 2019667278;
  STACK[0x1F80] = v311;
  STACK[0x1FA8] = 2 * v311;
  STACK[0xB78] = (v311 ^ 0xF7EFDFDFF0E3FE9FLL) + ((2 * v311) & 0xE1C7FD3E) + 0x81020200F1C0161;
  v312 = a1 - 2019667277;
  STACK[0xB70] = v312;
  STACK[0xB68] = (v312 ^ 0x7F9FE52FFBD7FF77) - 0x7F9FE52FFBD7FF77 + ((2 * v312) & 0xF7AFFEEE);
  v313 = a1 - 2019667276;
  STACK[0x1F30] = v313;
  STACK[0x1F60] = 2 * v313;
  STACK[0x22D0] = a1 - 2019667446;
  STACK[0xB60] = (v313 ^ 0xEAFEEFFFDF5DD7C3) + ((2 * v313) & 0xBEBBAF86) + 0x1501100020A2283DLL;
  v314 = a1 - 2019667274;
  STACK[0x1F38] = v314;
  STACK[0x1F58] = 2 * v314;
  STACK[0xB58] = (v314 ^ 0x7F2FC3DF9FF15E5FLL) + ((2 * v314) & 0x3FE2BCBE) - 0x7F2FC3DF9FF15E5FLL;
  v315 = a1 - 2019667273;
  STACK[0x1F40] = 2 * v315;
  STACK[0xB50] = (v315 ^ 0x5DFBFF6777F7EBFBLL) + ((2 * v315) & 0xEFEFD7F6) - 0x5DFBFF6777F7EBFBLL;
  v316 = a1 - 2019667271;
  STACK[0x1F50] = 2 * v316;
  STACK[0xB48] = (v316 ^ 0x7DECF5D3FDEE758FLL) + ((2 * v316) & 0xFBDCEB1ELL) - 0x7DECF5D3FDEE758FLL;
  v317 = a1 - 2019667270;
  STACK[0xB40] = v317;
  STACK[0xB38] = (v317 ^ 0x59F37FEFF0FF6F93) - 0x59F37FEFF0FF6F93 + ((2 * v317) & 0xE1FEDF26);
  v318 = a1 - 2019667268;
  STACK[0x1F28] = 2 * v318;
  STACK[0xB30] = (v318 ^ 0xFA3F6B7BF5FF76FDLL) + ((2 * v318) & 0xEBFEEDFALL) + 0x5C094840A008903;
  v319 = a1 - 2019667267;
  STACK[0x1F20] = 2 * v319;
  STACK[0x22C8] = a1 - 2019667454;
  STACK[0xB28] = (v319 ^ 0x8FE7DA3ED750D79DLL) + ((2 * v319) & 0xAEA1AF3ALL) + 0x701825C128AF2863;
  v320 = a1 - 2019667265;
  STACK[0xB20] = v320;
  STACK[0xB18] = (v320 ^ 0x7942DB7FFDBEFDE3) - 0x7942DB7FFDBEFDE3 + ((2 * v320) & 0xFB7DFBC6);
  STACK[0x22C0] = a1 - 2019667458;
  STACK[0x22B8] = a1 - 2019667457;
  v321 = a1 - 2019667264;
  STACK[0xB10] = v321;
  STACK[0xB08] = (v321 ^ 0x1D7DDDFAFFE3B65DLL) - 0x1D7DDDFAFFE3B65DLL + ((2 * v321) & 0xFFC76CBA);
  STACK[0x22B0] = a1 - 2019667459;
  v322 = a1 - 2019667262;
  STACK[0x1F08] = 2 * v322;
  STACK[0xB00] = (v322 ^ 0xB4DA2FFECFFFB7F9) + ((2 * v322) & 0x9FFF6FF2) + 0x4B25D00130004807;
  STACK[0x22A8] = a1 - 2019667461;
  v323 = a1 - 2019667261;
  STACK[0x1F00] = 2 * v323;
  STACK[0xAF8] = (v323 ^ 0xBD77EF1FE6F9ADFFLL) + ((2 * v323) & 0xCDF35BFELL) + 0x428810E019065201;
  v324 = a1 - 2019667255;
  STACK[0x1F18] = 2 * v324;
  STACK[0xAF0] = (v324 ^ 0x77B5FF3F56C1FF9ELL) + ((2 * v324) & 0xAD83FF3CLL) - 0x77B5FF3F56C1FF9ELL;
  STACK[0x22A0] = a1 - 2019667464;
  v325 = a1 - 2019667254;
  STACK[0x1F10] = 2 * v325;
  STACK[0x2298] = a1 - 2019667467;
  STACK[0xAE8] = (v325 ^ 0x7FBFA3FFD9BDBA77) + ((2 * v325) & 0xB37B74EELL) - 0x7FBFA3FFD9BDBA77;
  v326 = a1 - 2019667253;
  STACK[0x2290] = a1 - 2019667468;
  STACK[0xAE0] = v326;
  STACK[0xAD8] = (v326 ^ 0x679E7FBFAFB9FFBFLL) - 0x679E7FBFAFB9FFBFLL + ((2 * v326) & 0x5F73FF7E);
  v327 = a1 - 2019667252;
  STACK[0x1EF0] = 2 * v327;
  STACK[0x2288] = a1 - 2019667470;
  STACK[0xAD0] = (v327 ^ 0xFF9CE4F767FF9F7ELL) + ((2 * v327) & 0xCFFF3EFCLL) + 0x631B0898006082;
  STACK[0x2280] = a1 - 2019667471;
  v328 = a1 - 2019667251;
  v329 = 2 * v328;
  STACK[0x1EE8] = v329;
  STACK[0xAC8] = (v328 ^ 0x76BEF89EBFE1FFFFLL) + (v329 & 0x7FC3FFFE) - 0x76BEF89EBFE1FFFFLL;
  STACK[0x2278] = (v2 + 263);
  v330 = (v2 + 487);
  STACK[0x1EE0] = 2 * v330;
  STACK[0xAC0] = (v330 ^ 0x5AE6FBFB27967EFFLL) + ((2 * v330) & 0x4F2CFDFE) - 0x5AE6FBFB27967EFFLL;
  STACK[0x2270] = (v2 + 262);
  v331 = (v2 + 488);
  STACK[0x1ED0] = 2 * v331;
  STACK[0xAB8] = (v331 ^ 0xBF7FF7D7BAFDC6E2) + ((2 * v331) & 0x75FB8DC4) + 0x408008284502391ELL;
  v332 = (v2 + 490);
  STACK[0x1ED8] = 2 * v332;
  STACK[0xAB0] = (v332 ^ 0xFD7BDCFD27F0BFD6) + ((2 * v332) & 0x4FE17FAC) + 0x2842302D80F402ALL;
  STACK[0x2268] = (v2 + 259);
  v333 = (v2 + 491);
  STACK[0xAA8] = v333;
  STACK[0xAA0] = (v333 ^ 0x7DB5D1D7F5AFBDBDLL) - 0x7DB5D1D7F5AFBDBDLL + ((2 * v333) & 0xEB5F7B7A);
  STACK[0x2260] = (v2 + 258);
  v334 = v131 - ((v130 + 846) & 0x2340ED64) + 423;
  LODWORD(STACK[0x4A8]) = v334;
  STACK[0xA98] = (v334 ^ 0xD79DFA6BFF9D800DLL) + 0x2862059411C20941 + ((2 * (v334 ^ 0x11A076B2)) & 0xDC7BED7ELL);
  v335 = (v2 + 493);
  STACK[0xA90] = v335;
  STACK[0xA88] = (v335 ^ 0xCFDD5E7FFFF9FBBFLL) + 0x3022A18000060441 + ((2 * v335) & 0xFFF3F77E);
  v336 = (v2 + 495);
  STACK[0xA80] = v336;
  STACK[0xA78] = (v336 ^ 0xF715FEF4E9CDB76FLL) + 0x8EA010B16324891 + ((2 * v336) & 0xD39B6EDE);
  v337 = (v2 + 497);
  STACK[0x1EC0] = 2 * v337;
  STACK[0x2258] = (v2 + 253);
  STACK[0xA70] = (v337 ^ 0xCFFFEBFFDA3FEF7DLL) + ((2 * v337) & 0xB47FDEFALL) + 0x3000140025C01083;
  v338 = (v2 + 499);
  STACK[0x1EB8] = 2 * v338;
  STACK[0xA68] = (v338 ^ 0xCFC9FBDCDAFF7D97) + ((2 * v338) & 0xB5FEFB2ELL) + 0x3036042325008269;
  v339 = (v2 + 500);
  STACK[0x2250] = (v2 + 250);
  STACK[0xA60] = v339;
  STACK[0xA58] = (v339 ^ 0x5EDA276F795EB686) - 0x5EDA276F795EB686 + ((2 * v339) & 0xF2BD6D0C);
  STACK[0x2248] = (v2 + 248);
  v340 = (v2 + 502);
  STACK[0x1EB0] = 2 * v340;
  STACK[0xA50] = (v340 ^ 0xF5C66577ED7574BFLL) + ((2 * v340) & 0xDAEAE97ELL) + 0xA399A88128A8B41;
  STACK[0x2240] = (v2 + 246);
  v341 = (v2 + 503);
  STACK[0x1E80] = 2 * v341;
  STACK[0xA48] = (v341 ^ 0x37FBBF76FE1ADF7) + ((2 * v341) & 0xDFC35BEELL) - 0x37FBBF76FE1ADF7;
  v342 = (v2 + 504);
  STACK[0x1E78] = 2 * v342;
  STACK[0xA40] = (v342 ^ 0x7EF77AFFF5B3DF7FLL) + ((2 * v342) & 0xEB67BEFELL) - 0x7EF77AFFF5B3DF7FLL;
  v343 = (v2 + 508);
  STACK[0x1EA8] = 2 * v343;
  STACK[0xA38] = (v343 ^ 0x1D11B84FD7BDDAE6) + ((2 * v343) & 0xAF7BB5CCLL) - 0x1D11B84FD7BDDAE6;
  v344 = (v2 + 509);
  STACK[0x1E70] = 2 * v344;
  STACK[0xA30] = (v344 ^ 0x58FFEBDEFDBBD7F6) + ((2 * v344) & 0xFB77AFECLL) - 0x58FFEBDEFDBBD7F6;
  LODWORD(STACK[0x1E68]) = v131 - ((v130 + 116) & 0x2340ED64);
  LODWORD(STACK[0x1EC8]) = v131 - 2 * v304;
  LODWORD(STACK[0x4E4]) = v131 - (v130 & 0x2340ED64);
  v345 = STACK[0x217C];
  LODWORD(STACK[0x4A4]) = LODWORD(STACK[0x217C]) + 411153026 + ((120 - LODWORD(STACK[0x217C])) & 0x7F);
  v346 = STACK[0x2750] ^ 0x2EFD3F4F7DD6F8FFLL;
  LODWORD(STACK[0x2750]) = 8 * v345 - ((16 * v345 - 472848528) & 0x94F79A80);
  STACK[0xA28] = (STACK[0x2810] ^ 0xDFF79D5F2FB57FE3) + (STACK[0x2878] & 0x5F6AFFC6) + 0x200862A0D04A801DLL;
  STACK[0xA20] = (STACK[0x27D8] ^ 0x5FCFFEEF5D30EF7ALL) + (STACK[0x27E0] & 0xBA61DEF4) - 0x5FCFFEEF5D30EF7ALL;
  STACK[0xA18] = v346 + (STACK[0x2780] & 0xFBADF1FE) - 0x2EFD3F4F7DD6F8FFLL;
  v347 = (v2 + 351);
  STACK[0xA10] = v347;
  STACK[0xA08] = (v347 ^ 0xFFFF7CEFFEFCA7BDLL) + 0x831001035843 + ((2 * v347) & 0xFDF94F7A);
  STACK[0x2238] = (v2 + 234);
  STACK[0xA00] = (STACK[0x2778] ^ 0xFED2FD5FD7FF5FFDLL) + (STACK[0x27D0] & 0xAFFEBFFA) + 0x12D02A02800A003;
  STACK[0x9F8] = (STACK[0x2768] ^ 0xF7FF27E76ECBF5FDLL) + (STACK[0x2770] & 0xDD97EBFA) + 0x800D81891340A03;
  STACK[0x9F0] = (STACK[0x2758] ^ 0x2F6BEFFFFD5D7EE6) + (STACK[0x2760] & 0xFABAFDCC) - 0x2F6BEFFFFD5D7EE6;
  STACK[0x9E8] = (STACK[0x2740] ^ 0x71F8F7BFADF3FBD7) + (STACK[0x2748] & 0x5BE7F7AE) - 0x71F8F7BFADF3FBD7;
  STACK[0x9E0] = (STACK[0x26C8] ^ 0xB9F7F5BEB6FBBAFCLL) + (STACK[0x26D8] & 0x6DF775F8) + 0x46080A4149044504;
  v348 = (v2 + 362);
  STACK[0x9D8] = v348;
  STACK[0x9D0] = (v348 ^ 0x7FF5F5BB47FF5B37) - 0x7FF5F5BB47FF5B37 + ((2 * v348) & 0x8FFEB66E);
  v349 = (v2 + 363);
  STACK[0x2230] = (v2 + 226);
  STACK[0x9C8] = v349;
  STACK[0x9C0] = (v349 ^ 0x2ADDFE75FDFF96F7) - 0x2ADDFE75FDFF96F7 + ((2 * v349) & 0xFBFF2DEE);
  v350 = (v2 + 364);
  STACK[0x9B8] = v350;
  STACK[0x9B0] = (v350 ^ 0x7FF9F9DDFFFF9FDBLL) - 0x7FF9F9DDFFFF9FDBLL + ((2 * v350) & 0xFFFF3FB6);
  STACK[0x9A8] = (STACK[0x2728] ^ 0xEF33BFE9FF7FFF2) + (STACK[0x2730] & 0x3FEFFFE4) - 0xEF33BFE9FF7FFF2;
  STACK[0x2228] = (v2 + 221);
  STACK[0x9A0] = (STACK[0x2708] ^ 0xFFF7E6EF9BD7FB26) + (STACK[0x2720] & 0x37AFF64C) + 0x81910642804DALL;
  STACK[0x2220] = (v2 + 219);
  STACK[0x2218] = (v2 + 220);
  STACK[0x998] = (STACK[0x26F0] ^ 0x64DDFDDB96BFFFD7) + (STACK[0x26F8] & 0x2D7FFFAE) - 0x64DDFDDB96BFFFD7;
  STACK[0x2210] = (v2 + 218);
  v351 = (v2 + 369);
  STACK[0x990] = v351;
  STACK[0x988] = (v351 ^ 0x21BFEE5FD63BE7BDLL) - 0x21BFEE5FD63BE7BDLL + ((2 * v351) & 0xAC77CF7A);
  STACK[0x2208] = (v2 + 215);
  v352 = (v2 + 371);
  STACK[0x980] = v352;
  STACK[0x978] = (v352 ^ 0xCF7909F6F7F77B6ALL) + 0x3086F60908088496 + ((2 * v352) & 0xEFEEF6D4);
  STACK[0x970] = (STACK[0x2700] ^ 0x7FDFBEFBC7F7EF7FLL) + (STACK[0x2718] & 0x8FEFDEFE) - 0x7FDFBEFBC7F7EF7FLL;
  v353 = STACK[0x2710] ^ 0xEFBF7DFBFFFFFFE6;
  v354 = (v2 + 374);
  STACK[0x968] = v354;
  STACK[0x960] = (v354 ^ 0xFF5F536AFBC6CFC7) + 0xA0AC9504393039 + ((2 * v354) & 0xF78D9F8E);
  v355 = (v2 + 375);
  STACK[0x958] = v355;
  STACK[0x950] = (v355 ^ 0xBFF86FFD5F5FFBE7) + 0x40079002A0A00419 + ((2 * v355) & 0xBEBFF7CE);
  STACK[0x948] = v353 + (STACK[0x2738] & 0xFFFFFFCC) + 0x104082040000001ALL;
  STACK[0x940] = (STACK[0x26B0] ^ 0xBFFFEBB7DCA71F3FLL) + (STACK[0x26D0] & 0xB94E3E7E) + 0x400014482358E0C1;
  STACK[0x2200] = (v2 + 206);
  STACK[0x21F8] = (v2 + 208);
  STACK[0x938] = (STACK[0x26A0] ^ 0x7A7E0BFDB37FB7FFLL) + (STACK[0x26B8] & 0x66FF6FFE) - 0x7A7E0BFDB37FB7FFLL;
  v356 = STACK[0x2670] ^ 0xBDEF767AFFEFF57ELL;
  v357 = (v2 + 381);
  STACK[0x930] = v357;
  STACK[0x928] = (v357 ^ 0xFDD6EEFEBFAFBBDALL) + 0x229110140504426 + ((2 * v357) & 0x7F5F77B4);
  v358 = (v2 + 383);
  STACK[0x920] = v358;
  STACK[0x918] = (v358 ^ 0xE3B7BDE774FE3FFFLL) + 0x1C4842188B01C001 + ((2 * v358) & 0xE9FC7FFE);
  STACK[0x910] = v356 + (STACK[0x26E8] & 0xFFDFEAFC) + 0x4210898500100A82;
  v359 = (v2 + 386);
  STACK[0x908] = v359;
  STACK[0x900] = (v359 ^ 0x5DEEBFFE77FA5FFFLL) - 0x5DEEBFFE77FA5FFFLL + ((2 * v359) & 0xEFF4BFFE);
  STACK[0x21F0] = (v2 + 202);
  STACK[0x8F8] = (STACK[0x2680] ^ 0xF6FFFFBCBDBDF7DFLL) + (STACK[0x26A8] & 0x7B7BEFBE) + 0x900004342420821;
  v360 = STACK[0x2648] ^ 0xFC7BB7EF76EF577FLL;
  v361 = (v2 + 389);
  STACK[0x8F0] = v361;
  STACK[0x8E8] = (v361 ^ 0x7FFDE795CE5ADA5FLL) - 0x7FFDE795CE5ADA5FLL + ((2 * v361) & 0x9CB5B4BE);
  v362 = STACK[0x26C0] ^ 0xB77E6FFB1D56FFFBLL;
  STACK[0x21E8] = (v2 + 198);
  STACK[0x8E0] = v362 + (STACK[0x26E0] & 0x3AADFFF6) + 0x48819004E2A90005;
  STACK[0x8D8] = v360 + (STACK[0x2678] & 0xEDDEAEFE) + 0x38448108910A881;
  STACK[0x8D0] = (STACK[0x2650] ^ 0xDAF79FFD79FFDBFFLL) + (STACK[0x2660] & 0xF3FFB7FE) + 0x2508600286002401;
  STACK[0x21E0] = (v2 + 193);
  STACK[0x21D8] = (v2 + 194);
  v363 = (v2 + 394);
  STACK[0x8C8] = v363;
  STACK[0x8C0] = (v363 ^ 0x3BCBFE65FFFFFF67) - 0x3BCBFE65FFFFFF67 + ((2 * v363) & 0xFFFFFECE);
  STACK[0x21D0] = (v2 + 191);
  STACK[0x8B8] = (STACK[0x2658] ^ 0xFAAFFEBAB7FFDFF7) + (STACK[0x2668] & 0x6FFFBFEE) + 0x550014548002009;
  v364 = (v2 + 396);
  STACK[0x8B0] = v364;
  STACK[0x8A8] = (v364 ^ 0x79BF70FF5EFEE7EDLL) - 0x79BF70FF5EFEE7EDLL + ((2 * v364) & 0xBDFDCFDA);
  v365 = STACK[0x2610] ^ 0x5F7BDDFFDFF39D7FLL;
  v366 = STACK[0x2630] & 0xBFE73AFE;
  STACK[0x21C8] = (v2 + 187);
  STACK[0x8A0] = v365 + v366 - 0x5F7BDDFFDFF39D7FLL;
  v367 = (v2 + 400);
  STACK[0x898] = v367;
  STACK[0x890] = (v367 ^ 0xF7FEEDFABF77B5FFLL) + 0x801120540884A01 + ((2 * v367) & 0x7EEF6BFE);
  STACK[0x888] = (STACK[0x2638] ^ 0x7CBE6BDFEDEF7BFBLL) + (STACK[0x2640] & 0xDBDEF7F6) - 0x7CBE6BDFEDEF7BFBLL;
  STACK[0x880] = (STACK[0x2618] ^ 0x6AF17F79DFF776FELL) + (STACK[0x2628] & 0xBFEEEDFC) - 0x6AF17F79DFF776FELL;
  STACK[0x878] = (STACK[0x25E0] ^ 0x9FF7F716F5DBFEFELL) + (STACK[0x25E8] & 0xEBB7FDFC) + 0x600808E90A240102;
  STACK[0x870] = (STACK[0x25C8] ^ 0xEFD72ADFFFB5DFBDLL) + (STACK[0x25D8] & 0xFF6BBF7A) + 0x1028D520004A2043;
  v368 = (v2 + 409);
  STACK[0x868] = v368;
  STACK[0x860] = (v368 ^ 0xF9256AFDDF5EFDFBLL) + 0x6DA950220A10205 + ((2 * v368) & 0xBEBDFBF6);
  v369 = STACK[0x25C0] ^ 0x5F97F7D5FFBEDE77;
  STACK[0x21C0] = (v2 + 179);
  STACK[0x858] = v369 + (STACK[0x25D0] & 0xFF7DBCEE) - 0x5F97F7D5FFBEDE77;
  STACK[0x21B0] = (v2 + 176);
  STACK[0x21A8] = (v2 + 177);
  v370 = (v2 + 412);
  STACK[0x850] = v370;
  STACK[0x848] = (v370 ^ 0xDE7E9FEFB19DF6CFLL) + 0x218160104E620931 + ((2 * v370) & 0x633BED9E);
  v371 = STACK[0x2538] ^ 0xD6B77AEEFEFFD4DELL;
  STACK[0x21A0] = (v2 + 175);
  STACK[0x840] = v371 + (STACK[0x25B0] & 0xFDFFA9BC) + 0x2948851101002B22;
  STACK[0x2198] = (v2 + 173);
  v372 = (v2 + 419);
  v373 = (v2 + 416);
  STACK[0x830] = v373;
  STACK[0x828] = (v373 ^ 0xFCFBFB8EED76BA6BLL) + 0x304047112894595 + ((2 * v373) & 0xDAED74D6);
  STACK[0x820] = (STACK[0x2598] ^ 0xFDB6FEFEFF9D7F7FLL) + (STACK[0x25B8] & 0xFF3AFEFE) + 0x249010100628081;
  STACK[0x838] = v372;
  STACK[0x818] = (v372 ^ 0x7BEDF7DFFEFF9DEBLL) - 0x7BEDF7DFFEFF9DEBLL + ((2 * v372) & 0xFDFF3BD6);
  STACK[0x810] = (STACK[0x2510] ^ 0x3FFBD5F5FDFF7FADLL) + (STACK[0x2518] & 0xFBFEFF5A) - 0x3FFBD5F5FDFF7FADLL;
  v374 = STACK[0x2488] ^ 0x7F6FFEB77D5D7EC7;
  STACK[0x20D0] = (v2 + 167);
  STACK[0x808] = v374 + (STACK[0x2508] & 0xFABAFD8E) - 0x7F6FFEB77D5D7EC7;
  STACK[0x800] = (STACK[0x2468] ^ 0xD7FEDB5EBDAD1FBFLL) + (STACK[0x2470] & 0x7B5A3F7E) + 0x280124A14252E041;
  v375 = STACK[0x2450] ^ 0x777FEFDFBFDDEF3CLL;
  v376 = STACK[0x2460] & 0x7FBBDE78;
  STACK[0x2098] = (v2 + 160);
  STACK[0x2090] = (v2 + 161);
  STACK[0x2088] = (v2 + 162);
  STACK[0x7F8] = v375 + v376 - 0x777FEFDFBFDDEF3CLL;
  v377 = STACK[0x2448] ^ 0x7F7FAD9F7ABBD7C5;
  v378 = STACK[0x2458] & 0xF577AF8A;
  STACK[0x2078] = (v2 + 158);
  STACK[0x2070] = (v2 + 159);
  STACK[0x7F0] = v377 + v378 - 0x7F7FAD9F7ABBD7C5;
  v379 = STACK[0x2438] ^ 0xD65FBDFFB6FEF3FFLL;
  v380 = (STACK[0x2440] & 0x6DFDE7FE) + 0x29A0420049010C01;
  STACK[0x2068] = (v2 + 157);
  STACK[0x7E8] = v379 + v380;
  STACK[0x7E0] = (STACK[0x2388] ^ 0xFDFFD3CCE7FF3EEBLL) + (STACK[0x2390] & 0xCFFE7DD6) + 0x2002C331800C115;
  STACK[0x7D8] = (STACK[0x2060] ^ 0xE7BD7D5FEFFA1DF7) + (STACK[0x2380] & 0xDFF43BEE) + 0x184282A01005E209;
  STACK[0x2060] = (v2 + 153);
  v381 = (v2 + 430);
  STACK[0x7D0] = v381;
  STACK[0x7C8] = (v381 ^ 0xAFB77BFFBBB867FELL) + 0x5048840044479802 + ((2 * v381) & 0x7770CFFC);
  STACK[0x7C0] = (STACK[0x2050] ^ 0x59FDFD495FBA7B7FLL) + (STACK[0x2058] & 0xBF74F6FE) - 0x59FDFD495FBA7B7FLL;
  STACK[0x7B8] = (STACK[0x2030] ^ 0xF9EB5D95FFFB7AEDLL) + (STACK[0x2048] & 0xFFF6F5DA) + 0x614A26A00048513;
  STACK[0x2058] = (v2 + 151);
  STACK[0x7B0] = (STACK[0x2040] ^ 0x7BCF37EDD7FE9773) + (STACK[0x2038] & 0xAFFD2EE6) - 0x7BCF37EDD7FE9773;
  v382 = STACK[0x2010] ^ 0xC57E7BCFDFEFD53DLL;
  STACK[0x2050] = (v2 + 147);
  STACK[0x7A8] = v382 + (STACK[0x2028] & 0xBFDFAA7A) + 0x3A81843020102AC3;
  STACK[0x7A0] = (STACK[0x2020] ^ 0xFB7DFFB6FFE3FADCLL) + (STACK[0x2018] & 0xFFC7F5B8) + 0x4820049001C0524;
  STACK[0x798] = (STACK[0x2000] ^ 0xFDE3BDFDFF4DFF42) + (STACK[0x2008] & 0xFE9BFE84) + 0x21C420200B200BELL;
  STACK[0x790] = (STACK[0x1FF0] ^ 0xBFFFFAFFF39FDBFALL) + (STACK[0x1FF8] & 0xE73FB7F4) + 0x400005000C602406;
  STACK[0x788] = (STACK[0x1FA0] ^ 0x7CB8FE169FF9FFFELL) + (STACK[0x1FE8] & 0x3FF3FFFC) - 0x7CB8FE169FF9FFFELL;
  STACK[0x780] = (STACK[0x1F90] ^ 0xFFE7FEDCFBFFEBAFLL) + (STACK[0x1FB0] & 0xF7FFD75E) + 0x18012304001451;
  v383 = (v2 + 446);
  STACK[0x778] = v383;
  STACK[0x770] = (v383 ^ 0xF7BBE9FD783DDEFFLL) + 0x844160287C22101 + ((2 * v383) & 0xF07BBDFE);
  v384 = (v2 + 449);
  STACK[0x768] = (STACK[0x1FD0] ^ 0xAED79EFFF76F47DELL) + (STACK[0x1FE0] & 0xEEDE8FBC) + 0x512861000890B822;
  v385 = (v2 + 448);
  STACK[0x760] = v385;
  STACK[0x758] = (v385 ^ 0x5E7DF7BF73A9F67BLL) - 0x5E7DF7BF73A9F67BLL + ((2 * v385) & 0xE753ECF6);
  STACK[0x498] = v384;
  STACK[0x750] = (v384 ^ 0xFF1D54EDBDEBD4EELL) + 0xE2AB1242142B12 + ((2 * v384) & 0x7BD7A9DC);
  STACK[0x748] = (STACK[0x1FC8] ^ 0x7B5EF7F6ECF39B3FLL) + (STACK[0x1FD8] & 0xD9E7367E) - 0x7B5EF7F6ECF39B3FLL;
  STACK[0x2048] = (v2 + 135);
  v386 = (v2 + 452);
  STACK[0x740] = v386;
  STACK[0x738] = (v386 ^ 0x7DFC7BFFFDF7FFF6) - 0x7DFC7BFFFDF7FFF6 + ((2 * v386) & 0xFBEFFFEC);
  STACK[0x2040] = (v2 + 132);
  STACK[0x2038] = (v2 + 134);
  STACK[0x730] = (STACK[0x1F68] ^ 0x67F9F6EFF5FF7EFFLL) + (STACK[0x1F88] & 0xEBFEFDFE) - 0x67F9F6EFF5FF7EFFLL;
  STACK[0x728] = (STACK[0x1F78] ^ 0x577F3F7E6DFE3EEELL) + (STACK[0x1F70] & 0xDBFC7DDC) - 0x577F3F7E6DFE3EEELL;
  v387 = STACK[0x1F48] ^ 0x7BB5BFE5BBDF79DELL;
  STACK[0x2030] = (v2 + 129);
  v388 = (v2 + 455);
  STACK[0x720] = v388;
  STACK[0x718] = (v388 ^ 0xFC6F7C56FF0FDFD7) + 0x39083A900F02029 + ((2 * v388) & 0xFE1FBFAE);
  STACK[0x710] = (STACK[0x1FB8] ^ 0x9EEFDBFFFA5DEB3ELL) + (STACK[0x1FC0] & 0xF4BBD67C) + 0x6110240005A214C2;
  STACK[0x708] = v387 + (STACK[0x1F98] & 0x77BEF3BC) - 0x7BB5BFE5BBDF79DELL;
  STACK[0x490] = (LODWORD(STACK[0x1E68]) + 58) ^ 0x11A076B2u;
  v389 = (v2 + 458);
  STACK[0x700] = v389;
  STACK[0x6F8] = (v389 ^ 0x67B9EFEDCCDBDF2ALL) - 0x67B9EFEDCCDBDF2ALL + ((2 * v389) & 0x99B7BE54);
  STACK[0x6F0] = (STACK[0x1F80] ^ 0x77F7FFDBE7ADAF7FLL) + (STACK[0x1FA8] & 0xCF5B5EFE) - 0x77F7FFDBE7ADAF7FLL;
  STACK[0x6E8] = (STACK[0x1F30] ^ 0xE5FFE3E2DB426EBBLL) + (STACK[0x1F60] & 0xB684DD76) + 0x1A001C1D24BD9145;
  v390 = (v2 + 462);
  STACK[0x2028] = (v2 + 122);
  STACK[0x6E0] = v390;
  STACK[0x6D8] = (v390 ^ 0xE3FD4BD37F9EEF77) + 0x1C02B42C80611089 + ((2 * v390) & 0xFF3DDEEE);
  STACK[0x6D0] = (STACK[0x1F38] ^ 0x7E73FBF6B1FB7FFBLL) + (STACK[0x1F58] & 0x63F6FFF6) - 0x7E73FBF6B1FB7FFBLL;
  STACK[0x2020] = (v2 + 121);
  STACK[0x6C8] = (v315 ^ 0xFEEFEEA7FEFFFF7) + (STACK[0x1F40] & 0xFFDFFFEE) - 0xFEEFEEA7FEFFFF7;
  v391 = (v2 + 465);
  STACK[0x6C0] = v391;
  STACK[0x6B8] = (v391 ^ 0x3DEBB77FDE373FF7) - 0x3DEBB77FDE373FF7 + ((2 * v391) & 0xBC6E7FEE);
  STACK[0x6B0] = (v316 ^ 0xDFD7BFDF37D3A5FFLL) + (STACK[0x1F50] & 0x6FA74BFE) + 0x20284020C82C5A01;
  v392 = (v2 + 468);
  STACK[0x6A8] = v392;
  STACK[0x6A0] = (v392 ^ 0x9EBFBB37FAFB7B7ALL) + 0x614044C805048486 + ((2 * v392) & 0xF5F6F6F4);
  STACK[0x698] = (v318 ^ 0x5BFAEBD58FCBAF9FLL) + (STACK[0x1F28] & 0x1F975F3E) - 0x5BFAEBD58FCBAF9FLL;
  STACK[0x690] = (v319 ^ 0x7B9FFBEF5FEDFDFFLL) + (STACK[0x1F20] & 0xBFDBFBFE) - 0x7B9FFBEF5FEDFDFFLL;
  v393 = (v2 + 471);
  STACK[0x688] = v393;
  STACK[0x680] = (v393 ^ 0x57CFEBEFFED5FB61) - 0x57CFEBEFFED5FB61 + ((2 * v393) & 0xFDABF6C2);
  v394 = (v2 + 474);
  STACK[0x2018] = (v2 + 110);
  STACK[0x678] = v394;
  STACK[0x670] = (v394 ^ 0x71BFBF7F37FBEFDBLL) - 0x71BFBF7F37FBEFDBLL + ((2 * v394) & 0x6FF7DFB6);
  v395 = v322 ^ 0x77AF5B67DE6BFCB5;
  v396 = (STACK[0x1F08] & 0xBCD7F96A) - 0x77AF5B67DE6BFCB5;
  STACK[0x2010] = (v2 + 109);
  STACK[0x668] = v395 + v396;
  STACK[0x660] = (v323 ^ 0xF7ED7FF6FE755FF5) + (STACK[0x1F00] & 0xFCEABFEA) + 0x8128009018AA00BLL;
  STACK[0x2008] = (v2 + 108);
  v397 = (v2 + 477);
  STACK[0x658] = v397;
  STACK[0x650] = (v397 ^ 0xF6BBFAFD9FFF7EDDLL) + 0x944050260008123 + ((2 * v397) & 0x3FFEFDBA);
  STACK[0x2000] = (v2 + 106);
  v398 = (v2 + 478);
  STACK[0x648] = v398;
  STACK[0x640] = (v398 ^ 0xFFFAFFFDAEFB7F8FLL) + 0x5000251048071 + ((2 * v398) & 0x5DF6FF1E);
  v399 = (v2 + 479);
  STACK[0x638] = v399;
  STACK[0x630] = (v399 ^ 0xDB67FAFFFBDCFFFFLL) + 0x2498050004230001 + ((2 * v399) & 0xF7B9FFFE);
  v400 = (v2 + 480);
  STACK[0x628] = v400;
  STACK[0x620] = (v400 ^ 0x2FFF6E6FBFACFEB6) - 0x2FFF6E6FBFACFEB6 + ((2 * v400) & 0x7F59FD6C);
  v401 = STACK[0x1F18] & 0xE9F7F7CE;
  STACK[0x1FF8] = (v2 + 100);
  STACK[0x618] = (v324 ^ 0x75FFED9F74FBFBE7) + v401 - 0x75FFED9F74FBFBE7;
  v402 = (STACK[0x1F10] & 0xEDFF36EA) - 0x3FCFF11E76FF9B75;
  STACK[0x1FF0] = (v2 + 98);
  STACK[0x610] = (v325 ^ 0x3FCFF11E76FF9B75) + v402;
  STACK[0x608] = (v327 ^ 0x8FFEABFF3FDE2AFFLL) + (STACK[0x1EF0] & 0x7FBC55FE) + 0x70015400C021D501;
  STACK[0x600] = (v328 ^ 0xFFFD6F37BEBB573BLL) + (STACK[0x1EE8] & 0x7D76AE76) + 0x290C84144A8C5;
  v403 = STACK[0x1EE0] & 0xEE9FDBDE;
  STACK[0x1FE8] = (v2 + 94);
  STACK[0x5F8] = (v330 ^ 0xDBAF3FFBF74FEDEFLL) + v403 + 0x2450C00408B01211;
  v404 = (STACK[0x1ED0] & 0xDBEE5D64) + 0x101015161208D14ELL;
  STACK[0x1FE0] = (v2 + 91);
  STACK[0x5F0] = (v331 ^ 0xEFEFEAE9EDF72EB2) + v404;
  v405 = (v2 + 489);
  STACK[0x1FD8] = (v2 + 90);
  STACK[0x5E8] = v405;
  STACK[0x5E0] = (v405 ^ 0x5FFFD3779C55FBEDLL) - 0x5FFFD3779C55FBEDLL + ((2 * v405) & 0x38ABF7DA);
  STACK[0x5D8] = (v332 ^ 0x4BFF5DA4BBFD8BFFLL) + (STACK[0x1ED8] & 0x77FB17FE) - 0x4BFF5DA4BBFD8BFFLL;
  STACK[0x5D0] = ((v2 + 492) ^ 0xB6DAFFFBF27F7F6FLL) + 0x492500040D808091 + ((2 * (v2 + 492)) & 0xE4FEFEDELL);
  STACK[0x1FD0] = (v2 + 86);
  v406 = (v2 + 496);
  STACK[0x5C8] = v406;
  STACK[0x5C0] = (v406 ^ 0xFB41FF423F4B70FELL) + 0x4BE00BDC0B48F02 + ((2 * v406) & 0x7E96E1FC);
  STACK[0x1FC8] = (v2 + 85);
  STACK[0x5B8] = (v337 ^ 0xB4EFFFFFBBFDFA3ALL) + (STACK[0x1EC0] & 0x77FBF474) + 0x4B100000440205C6;
  v407 = (v2 + 498);
  STACK[0x5B0] = v407;
  STACK[0x5A8] = (v407 ^ 0x7FF36FC9DF7BFD6ELL) - 0x7FF36FC9DF7BFD6ELL + ((2 * v407) & 0xBEF7FADC);
  v408 = (STACK[0x1EB8] & 0x9FC3EFFA) + 0x1004104EB01E0803;
  STACK[0x1FC0] = (v2 + 81);
  STACK[0x5A0] = (v338 ^ 0xEFFBEFB14FE1F7FDLL) + v408;
  STACK[0x598] = (v340 ^ 0x3B17DFEB7BA47B84) + (STACK[0x1EB0] & 0xF748F708) - 0x3B17DFEB7BA47B84;
  STACK[0x1FB8] = (v2 + 79);
  STACK[0x590] = (v341 ^ 0xF6DDBE73BD8FB8FFLL) + (STACK[0x1E80] & 0x7B1F71FE) + 0x922418C42704701;
  STACK[0x1FB0] = (v2 + 77);
  STACK[0x588] = (v342 ^ 0xFEDFF7EB97CF7DCFLL) + (STACK[0x1E78] & 0x2F9EFB9E) + 0x120081468308231;
  v409 = (v2 + 505);
  STACK[0x580] = v409;
  STACK[0x578] = (v409 ^ 0xDBCB7EDDEBDE17F2) + 0x243481221421E80ELL + ((2 * v409) & 0xD7BC2FE4);
  STACK[0x1FA8] = (v2 + 72);
  STACK[0x1FA0] = (v2 + 73);
  v410 = (v2 + 507);
  STACK[0x570] = v410;
  STACK[0x568] = (v410 ^ 0x2EFEFFF37BFF9EBFLL) - 0x2EFEFFF37BFF9EBFLL + ((2 * v410) & 0xF7FF3D7E);
  STACK[0x560] = (v343 ^ 0x6FF73FDCBD3AFFFALL) + (STACK[0x1EA8] & 0x7A75FFF4) - 0x6FF73FDCBD3AFFFALL;
  STACK[0x558] = (v344 ^ 0x29FE70DEA5FADE2BLL) + (STACK[0x1E70] & 0x4BF5BC56) - 0x29FE70DEA5FADE2BLL;
  STACK[0x1D58] = (v2 + 69);
  v411 = (v2 + 511);
  v412 = (v411 ^ 0x6DBF73B59E3FFFDBLL) - 0x6DBF73B59E3FFFDBLL + ((2 * v411) & 0x3C7FFFB6);
  STACK[0x1F98] = (v2 + 68);
  LODWORD(v332) = STACK[0x2848];
  v413 = (v345 - 1371730313);
  v414 = v413 - ((2 * v413) & 0xD02CC336) - 0x53B03AD197E99E65;
  v415 = (((LODWORD(STACK[0x2848]) + 480) | 0x82u) - 0x53B03AD197E9B2FFLL) ^ v414;
  LODWORD(STACK[0x2878]) = 1;
  STACK[0x2470] = v415;
  STACK[0x1D50] = ((1 - v345) & 7) + 0x1F702711772BA54FLL + v415;
  STACK[0x1F90] = (8 * (v414 & 0x1F)) ^ 0xB1;
  STACK[0x1F88] = (v414 >> 5) ^ 0x27;
  STACK[0x1F80] = (v2 + 63);
  STACK[0x1F78] = (v414 >> 13) ^ 0x87;
  STACK[0x1F70] = (v414 >> 21) ^ 0x99;
  STACK[0x1F68] = (v2 + 58);
  STACK[0x1F60] = (v2 + 60);
  STACK[0x1F58] = (v413 >> 29) ^ 0xD2;
  STACK[0x550] = STACK[0x2818] - 2019667737;
  STACK[0x478] = (LODWORD(STACK[0x1EC8]) + 380) ^ 0x11A076B2u;
  STACK[0x1F50] = (v2 + 56);
  STACK[0x470] = ((v345 & 0x3F) - 34) ^ 0x5DLL;
  LODWORD(STACK[0x54C]) = (1 - v345) & 3;
  LODWORD(v413) = LODWORD(STACK[0x2750]) + 1013203199;
  STACK[0x1F48] = (v2 + 55);
  STACK[0x1F40] = ((BYTE1(v413) ^ 0xCD) - 34) ^ 0x68;
  STACK[0x1F38] = (v2 + 52);
  STACK[0x1F30] = (v2 + 53);
  STACK[0x1F28] = v413 & 0xF8 ^ 0x4D;
  STACK[0x1F20] = BYTE2(v413) ^ 0xDCu;
  STACK[0x1F18] = BYTE3(v413) ^ 0xBA;
  STACK[0x1F10] = (v2 + 48);
  LODWORD(v407) = STACK[0x2478];
  LODWORD(STACK[0x2468]) = 360920260 - LODWORD(STACK[0x2478]);
  v416 = *(v1 + 8 * v332);
  STACK[0x1F08] = (v2 + 41);
  STACK[0x1F00] = (v2 + 43);
  STACK[0x2848] = STACK[0x2570];
  STACK[0x2630] = STACK[0x2690];
  STACK[0x2748] = STACK[0x25F0];
  STACK[0x1EF0] = (v2 + 36);
  STACK[0x1EE8] = (v2 + 37);
  STACK[0x1EE0] = (v2 + 39);
  LODWORD(STACK[0x2388]) = v345 - 221536572;
  LODWORD(STACK[0x1ED8]) = v345 + 429312167;
  LODWORD(STACK[0x2460]) = v407 - 309054965;
  LODWORD(STACK[0x2458]) = v407 + 1844720686;
  STACK[0x1ED0] = (v2 + 6);
  STACK[0x1EC8] = (v2 + 29);
  STACK[0x1EC0] = (v2 + 7);
  STACK[0x1EB8] = (v2 + 22);
  STACK[0x1EB0] = (v2 + 23);
  STACK[0x1EA8] = (v2 + 24);
  STACK[0x1E80] = (v2 + 25);
  STACK[0x1E78] = (v2 + 27);
  STACK[0x1E70] = (v2 + 12);
  STACK[0x1E68] = (v2 + 14);
  STACK[0x1E60] = (v2 + 17);
  STACK[0x1E58] = (v2 + 18);
  STACK[0x1E50] = (v2 + 382);
  STACK[0x1E48] = (v2 + 384);
  STACK[0x1E40] = (v2 + 398);
  STACK[0x1E38] = (v2 + 402);
  STACK[0x1E30] = (v2 + 406);
  STACK[0x1E28] = (v2 + 410);
  STACK[0x1E20] = (v2 + 438);
  STACK[0x1E18] = (v2 + 442);
  STACK[0x1E10] = (v2 + 481);
  STACK[0x1E08] = (v2 + 494);
  STACK[0x1E00] = (v2 + 501);
  STACK[0x1DF8] = (v2 + 506);
  v417 = (v2 + 510);
  STACK[0x468] = LODWORD(STACK[0x4E4]) ^ 0x11A076B2u;
  STACK[0x1D48] = (v2 + 127);
  STACK[0x460] = &STACK[0x12DE0] + v417;
  STACK[0x488] = v411;
  STACK[0x458] = &STACK[0x12DE0] + v411;
  LODWORD(STACK[0x2450]) = v345 + 345463020;
  LODWORD(STACK[0x2380]) = v345 - 717940249;
  LODWORD(STACK[0x1DF4]) = v345 - 182211063;
  LODWORD(STACK[0x2448]) = v407 + 935782621;
  LODWORD(STACK[0x2440]) = -1944687969;
  LODWORD(STACK[0x2438]) = v407 - 609918897;
  STACK[0x538] = (v2 + 197);
  STACK[0x530] = (v2 + 240);
  STACK[0x1CC8] = v2;
  STACK[0x528] = (v2 + 302);
  STACK[0x540] = v417;
  STACK[0x450] = &STACK[0x13180] + v417;
  STACK[0x480] = v412;
  STACK[0x448] = &STACK[0x13180] + v412;
  LODWORD(STACK[0x27D0]) = 1;
  LODWORD(v414) = STACK[0x2580];
  LODWORD(STACK[0x27D8]) = STACK[0x2580];
  LODWORD(STACK[0x27E0]) = v414;
  LODWORD(STACK[0x2778]) = v414;
  return v416();
}

uint64_t sub_244AED4DC@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  LODWORD(STACK[0x2840]) = 0;
  LODWORD(STACK[0x2838]) = 0;
  LODWORD(STACK[0x27B8]) = 0;
  LODWORD(STACK[0x2790]) = 0;
  LODWORD(STACK[0x27B0]) = 0;
  LODWORD(STACK[0x27D8]) = 0;
  LODWORD(STACK[0x2788]) = 0;
  LODWORD(STACK[0x27E0]) = 0;
  LODWORD(STACK[0x2798]) = 0;
  STACK[0x2630] = STACK[0x25E0] ^ 0x5BAF83A0DA8A99BDLL;
  LODWORD(STACK[0x1D24]) = ((2 * v3) & 0x33EF0D5A ^ 0x203015A) + ((((2 * (a2 + 4048)) ^ 0x1C) - 84007578) ^ v3) + 1991835136;
  v4 = *(v2 + 8 * (a2 + 4048));
  LODWORD(STACK[0x2880]) = 1350361129;
  LODWORD(STACK[0x2878]) = 1;
  v5 = STACK[0x2588];
  STACK[0x2690] = STACK[0x2590];
  v6 = STACK[0x25F0];
  LODWORD(STACK[0x2580]) = 1;
  LODWORD(STACK[0x27D0]) = 1;
  LODWORD(STACK[0x27A0]) = 1;
  return v4(v6, a1, v5);
}

uint64_t sub_244AED5A8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X2>, int a3@<W8>)
{
  LODWORD(STACK[0x2778]) = 0;
  v4 = *(v3 + 8 * (a3 - 16050));
  STACK[0x2588] = a2;
  STACK[0x2590] = STACK[0x2690];
  STACK[0x2848] = STACK[0x2570];
  STACK[0x2748] = a1;
  return v4();
}

uint64_t sub_244AED5E0(uint64_t a1, unint64_t a2)
{
  STACK[0x2818] = a2;
  v3 = *STACK[0x2600];
  v4 = *(v3 + 56);
  v5 = (2 * v4) & 0xB3BBF176;
  v6 = STACK[0x2558];
  v7 = *(&off_278E1E490 + (a2 ^ 0x1116));
  v8 = (47 * (*(v7 + (*(STACK[0x2558] + 17) ^ 0x2ELL) + 260) ^ 0xC));
  v9 = *(v3 + 224);
  STACK[0x2780] = (a2 - 734827731) & 0x2BCCD7FF;
  v10 = STACK[0x2550];
  v11 = (v8 << (a2 + 118)) + *(v3 + 238) + (v9 << 8) + (v6[24] << 24) + (*(STACK[0x2550] + 53) << 32);
  v12 = *STACK[0x2548];
  v13 = v12[32];
  v14 = (*(STACK[0x2550] + 112) << 40) | (v13 << 48);
  v15 = STACK[0x2560];
  v16 = *(v3 + 282);
  v17 = (v12[19] << 16) | (*(STACK[0x2560] + 187) << 8) | (*(v3 + 200) << 24) | (v16 << 32);
  v18 = (v12[15] << 40) | (*(STACK[0x2560] + 152) << 48);
  v19 = (*(v3 + 74) | (v6[22] << 8) | (*(STACK[0x2560] + 114) << 16) | (*(STACK[0x2550] + 18) << 32) | (v12[26] << 24) | (v6[1] << 48) | (v12[9] << 40)) ^ (v6[18] << 56);
  v4 ^= 0xD9DDF8BB;
  LODWORD(STACK[0x2810]) = v5 + v4;
  v20 = v18 | (v5 + v4 + 639764293) | (v12[33] << 56);
  v21 = v15[173];
  v22 = (v10[39] << 32) | (v12[16] << 24) | (v15[131] << 48) | (*(v3 + 178) << 16) | (v6[35] << 8) | (v15[46] << 40) | v21 | (v10[77] << 56);
  *(&v23 + 1) = 0x8BCD4B99178B14D9;
  *&v23 = ((v10[37] << 24) | (*(v3 + 387) << 56) | (v12[12] << 32) | (v6[30] << 40) | (v12[24] << 48)) ^ 0x8BCD4B9917000000;
  v24 = v22 + 0x580E758A7EFF1512 - 2 * (v22 & 0x580E758A7EFF153BLL ^ v21 & 0x29);
  v25 = v7 - 4;
  v26 = (v23 >> 24) ^ ((*(v3 + 235) << 40) | (v15[74] << 48)) ^ ((*(v25 + (((v6[34] >> 4) | (16 * v6[34])) ^ 0xECLL)) ^ 0xFFFFFFC3) << 56);
  v27 = (v17 | v10[108]) ^ v20;
  v28 = v24 ^ v27;
  v29 = (2 * (v24 ^ v27)) ^ 0x2467CDF09E8BA46BLL;
  v30 = ((v26 ^ 0x103643AF0F3A7A3) - 0x4E95DEBF7297AD74 + ((2 * v26) & 0x62D442811AD0A518 ^ 0xFDFBBFFEFF3FFAFFLL) + 1) ^ v19;
  v31 = (*(v3 + 244) << 56) - ((*(v3 + 244) << 57) & 0xC3FFFFFFFFFFFFFFLL);
  v32 = ((v14 ^ v11) + ((0x1E5FBB462BF9C134 - v31) & 0x2000000000000000)) ^ (v31 - 0x1E5FBB462BF9C135) & 0xDF00000000000000 ^ v26;
  v33 = (v32 ^ 0xCF7B049918C99F7DLL) & (v27 ^ 0x49453B3DE8318850) ^ v32 & 0x3F7777959CD3CC19;
  v34 = v33 & 0x444729DF8B5F98A4 ^ 0x443009108418800;
  v35 = (v34 & v30) - ((2 * (v34 & v30)) & 0x8002532C101A1048) - 0x25469449A7F2F784;
  v36 = (2 * v35) ^ 0xB572D76CB01A10F8;
  v37 = ((v19 ^ 0xB16A21408D68528CLL) & (v29 + (v28 ^ 0x6DCC1907B0BA2DCALL))) - ((2 * ((v19 ^ 0xB16A21408D68528CLL) & (v29 + (v28 ^ 0x6DCC1907B0BA2DCALL)))) & 0x97F3AD5FEE1CB51ELL);
  v38 = v30 & (v19 ^ 0x4E95DEBF7297AD73);
  v39 = (~(2 * v30) + v30) & (v32 ^ 0x3084FB66E7366082);
  v40 = (2 * (v33 & 0x800000)) ^ 0x1000000 | v33 & 0x800000;
  v41 = v38 ^ v28;
  v42 = v32 ^ (v28 ^ 0x6DCC1907B0BA2DCALL) & (v27 ^ 0x89CDB3578B1DBBB6);
  v43 = v38 ^ v28 ^ v19 ^ v39;
  v44 = (4 * v35) ^ 0x951A51269FCBDE0FLL;
  v45 = ((v40 - 0x800000) & v30) == 0;
  v46 = v40 + 0x180E0F3EF579BDEBLL;
  v47 = 0x180E0F3EF679BDEBLL - v40;
  if (!v45)
  {
    v46 = v47;
  }

  v48 = (v30 & 0xBBB8D62074A0675BLL) - 0x180E0F3EF5F9BDEBLL + v46;
  v49 = (v37 - 0x3406295008F1A571) ^ v27 ^ v42;
  v50 = v33 & 0xBBB8D6207420675BLL ^ 0xB30040010000419 ^ v48 | ((v30 & 0x444729DF8B5F98A4) + v34 + v36 + v44 + 1);
  v51 = v50 - ((2 * v50) & 0x5F969045FF2E4070) + 0x2FCB4822FF972038;
  v52 = v51 ^ v42;
  *(&v53 + 1) = v43;
  *&v53 = ((v43 ^ 0xDCA638473DD27F46) + 0x5E0EF03F7BF0F758 - ((2 * (v43 ^ 0xDCA638473DD27F46)) & 0xBC1DE07EF7E1EEB0)) ^ 0x5E0EF03F7BF0F758;
  v54 = (v53 >> 1) - ((2 * (v53 >> 1)) & 0xE77C19127D3CB606);
  v55 = ((v38 ^ ~v28) << 63) - 0x1D27640C0D77CA0ELL;
  *(&v53 + 1) = (v54 + STACK[0x2528]) ^ 0x6B43E19DED266529;
  *&v53 = 0xC41F376C161A4FCLL - v54;
  v56 = v53 >> 63;
  *(&v53 + 1) = (v51 >> 7) ^ 0x2081;
  *&v53 = (v51 >> 7) ^ 0xDF1238F5CAFF8000;
  v57 = (v53 >> 15) - ((2 * (v53 >> 15)) & 0x58F01410AE12CFD4);
  v58 = v57 - 0x5387F5F7A8F69816;
  v59 = (-1460234219 - v57) & 0x4000000;
  *(&v53 + 1) = v49 ^ 0x6164DA7E44;
  *&v53 = v49 ^ 0x529FB08000000000;
  v60 = (((8 * v49) ^ 0x94FD87014A34E418) + 0x18C642A95C4AF427 - ((2 * ((8 * v49) ^ 0x94FD87014A34E418)) & 0x318C8552B895E840)) ^ 0x18C642A95C4AF427;
  v61 = (v53 >> 39) ^ 0x29B39C58E000000;
  v62 = (v60 & v61) - ((2 * (v60 & v61)) & 0xA69ECE5A03686F58) - 0x2CB098D2FE4BC854;
  v63 = (v52 << 36) ^ (v52 >> 19) ^ ((v52 >> 28) | (v52 << 45)) ^ 0xB8D8414510767889;
  v64 = (v63 - ((2 * v63) & 0x43EE86F138F5F9E8) + 0x21F743789C7AFCF4) ^ v52;
  v65 = v58 & 0xFFFFBFFFFBFFFFFFLL;
  v66 = v61 + v60 + ((2 * v62) ^ 0xA69ECE5A03686F58) + ((4 * v62) ^ 0xB2C2634BF92F214FLL);
  v67 = (0xEC4BBE32F4AB6F95 - v59 + (v65 ^ 0x5387F5F7ACF69815 ^ (0xEC4BBE32F4AB6F95 - v59)) + 1) ^ ((v65 ^ 0x5387F5F7ACF69815) + 1);
  v68 = (v65 ^ 0xFBAE0EEC5A265AFBLL ^ (v67 - ((2 * v67) & 0xAFAC09C8125E7A22) + 0x57D604E4092F3D11)) - v59 - 0x13B441CD0B54906BLL;
  *(&v53 + 1) = v68 ^ 0xD93C;
  *&v53 = v68 ^ 0x2AF663E056F50000;
  v69 = v53 >> 16;
  *(&v53 + 1) = v69 ^ 0x2AF663E056F5;
  *&v53 = v69 ^ 0xD93C000000000000;
  v70 = v66 + 1;
  v71 = (v53 >> 48) - ((2 * (v53 >> 48)) & 0xCF87E9050287C64ELL) + 0x67C3F4828143E327;
  *(&v53 + 1) = v56 ^ 0x363;
  *&v53 = v56 ^ 0x192CEE7A5942BC00;
  v72 = v53 >> 10;
  *(&v53 + 1) = v41 ^ 1;
  *&v53 = v41 ^ 0xB8E5B9E3747EBE40;
  v73 = ((v55 ^ 0xA0889212E20005B2) & ~v41 | 0x4E7069ED1C9C3A41) ^ (v53 >> 6) ^ ((((v41 >> 1) ^ 0x5C72DCF1BA3F5F20) - 2 * (((v41 >> 1) ^ 0x5C72DCF1BA3F5F20) & 0x74642EB5AEC24FFLL ^ (v41 >> 1) & 0x16) - 0x78B9BD14A513DB17) ^ v41 | v55 ^ 0xE2D89BF3F28835F2);
  v74 = v49 ^ (v49 >> 61) ^ v70;
  *(&v53 + 1) = v71 ^ 0x1F4828143E327;
  *&v53 = v71 ^ 0x67C2000000000000;
  v75 = v56 ^ __ROR8__(v56, 17) ^ v72;
  v76 = v74 ^ 0x97880EE8E7C97672 ^ v73;
  v77 = v51 ^ (v51 << 23) ^ ((v51 >> 41) | (v51 << 57)) ^ (v53 >> 49);
  v78 = v77 ^ v75 ^ 0x71FE4F824678C044;
  v79 = v64 ^ v77;
  v80 = (((v75 ^ 0x469D62EC2E7F93C2) & (v76 ^ 0x4B3BD312037EB5E5)) - ((2 * ((v75 ^ 0x469D62EC2E7F93C2) & (v76 ^ 0x4B3BD312037EB5E5))) & 0x8A2F7C119D1FD5E6) - 0x3AE841F73170150DLL) ^ v74 ^ 0x97880EE8E7C97672;
  v81 = v79 ^ (v74 ^ 0xAD604F1FD6B9637ELL) & (v73 ^ 0x71D392E5320EA0E9);
  v82 = (v77 ^ 0x8CEC0597BF2982E3) & (v75 ^ 0xB9629D13D1806C3DLL) ^ v76;
  v83 = v79 ^ 0x5D4BED09140513E3;
  v84 = (v79 ^ 0xA2B412F6EBFAEC1CLL) & (v78 ^ 0x4470D70628D12E9ALL);
  v85 = v83 & (v74 ^ 0x529FB0E029469C81) ^ v78;
  v86 = v81 ^ 0x296A8EAA1A139F7CLL ^ v85;
  v87 = (v80 - ((2 * v80) & 0xC6172BB5C4B031AALL) + 0x630B95DAE25818D5) ^ 0xC1BF872C09A2F4C9 ^ v81;
  v88 = v87 ^ (v87 >> 61);
  v89 = (((8 * v87) ^ 0xF99BADDCBF37E560) + 0x44E48E87F0E50990 - ((2 * ((8 * v87) ^ 0xF99BADDCBF37E560)) & 0x89C91D0FE1CA1320)) ^ 0x44E48E87F0E50990;
  v90 = v89 & (v88 ^ 0x5F3375BB97E6FCAALL);
  v91 = v82 ^ v75 ^ 0x71FE4F824678C044 ^ (v84 - ((2 * v84) & 0x6EC65ADCD00EA70CLL) + 0x37632D6E68075386);
  v92 = ((v86 >> 19) & 0x1760701A749CLL ^ v86 & 0x9F8F3760701A749CLL | (v86 >> 19) & 0x89F8FE58B63 ^ v86 & 0x6070C89F8FE58B63) ^ ((v86 >> 28) | (v86 << 45));
  v93 = v89 + (v88 ^ 0xDF3375BB97E6FCAALL);
  *(&v53 + 1) = v82;
  *&v53 = v82 ^ 0xD9F3E0E7765E3C26;
  v94 = v53 >> 1;
  *(&v53 + 1) = v85 ^ 0x13;
  *&v53 = v85 ^ 0x9EEA77625209BE80;
  v95 = v82 ^ __ROR8__(v82, 6) ^ v94;
  v96 = v93 - 2 * v90;
  v97 = (((v91 & 0xB9129D47A19DEDB5 ^ 0x7FFFEAF85EE75ADELL) - (v91 ^ 0x7DFA886856C558DELL)) ^ (v91 >> 10) & 0x2D62B85E62124ALL | v91 & 0xB9129D47A19DEDB5 ^ 0x39100D02A0856104 ^ (v91 >> 10) & 0x129D47A19DEDB5) ^ 0xC40B814020042;
  v98 = (v97 + 0x3B094A967CB9F560 - ((2 * v97) & 0x7612952CF973EAC0)) ^ 0x3B094A967CB9F560;
  v99 = ((((v91 >> 17) | (v91 << 54)) ^ 0xA5001D8BF5680453) + 0x7017EE81B1077BBCLL - ((2 * (((v91 >> 17) | (v91 << 54)) ^ 0xA5001D8BF5680453)) & 0xE000DD03620EF778)) ^ 0x7017EE81B1077BBCLL;
  v100 = v85 ^ __ROR8__(v85, 41) ^ (v53 >> 7);
  v101 = ((v92 ^ (v86 << 36) ^ 0x370370C3E5D5E104) - 2 * ((v92 ^ (v86 << 36) ^ 0x370370C3E5D5E104) & 0x5E165BCF1575873FLL ^ v92 & 1) - 0x21E9A430EA8A78C2) ^ v100 ^ 0xF1D528720EB34C96;
  v102 = v96 ^ __ROR8__(v87, 39);
  v103 = v102 ^ 0x46F201B8BAB2B7C6;
  v104 = v102 ^ 0x46F201B8BAB2B7C6 ^ v95;
  v105 = (v101 & 0x400000000000 | ((((v101 & 0x400000000000) >> 46) & 1) << 47) | 0xEFBB3B7FFAFB7FDBLL) ^ 0x800000000000;
  v106 = (v98 + v99 - 2 * (v98 & v99)) ^ (v91 << 47);
  v107 = v106 ^ v100 ^ 0xF1D528720EB34C96;
  v108 = (((2 * v101) ^ 0x3F7E7FE3E0BCFBBBLL) + (v101 ^ 0x6040C00E0FA18222)) & (v102 ^ 0x772FCDF959BE66EBLL);
  v109 = v102 & 0x71D2E66C1A6A6C2ALL ^ 0xD0220402400800 ^ (v102 ^ 0x88D03206A6419914) & (v95 ^ 0x3346C908F1ED28FCLL);
  v110 = 0x5CE69CAFC325EB74 - v105;
  if (((v105 + 0x1044848005048025) & v109) == 0)
  {
    v110 = v105 + 0x7D6FA5AFCD2EEBBELL;
  }

  v111 = v108 - (v108 ^ 0xF66B03FEFEDCF65 ^ v107 ^ 0x743AEBF0FA98485BLL) - 0x2DF94E10071DB509 - ((2 * (v108 - (v108 ^ 0xF66B03FEFEDCF65 ^ v107 ^ 0x743AEBF0FA98485BLL))) & 0xA40D63DFF1C495EELL);
  v112 = v111 & 0xFFFEFFFFFFFFFFFFLL;
  v111 &= 0x1000000000000uLL;
  v113 = v109 - (v101 & 0xFFFFBFFFFFFFFFFFLL ^ 0x6040800E0FA18222 ^ (v109 - 0x6D2B212FC82A6B99 + v110));
  *(&v115 + 1) = (v113 - ((2 * v113) & 0x1A1F1BA) - 2133788451) ^ ((v101 ^ 0xF05E7DDD) - ((2 * (v101 ^ 0xF05E7DDD) + 2) & 0xA6865688) - 750572731) ^ 0x393D399;
  *&v115 = (v113 - ((2 * v113) & 0x5F0CE4A501A1F1BALL) - 0x50798DAD7F2F0723) ^ ((v101 ^ 0x9FBF3FF1F05E7DDDLL) - ((2 * (v101 ^ 0x9FBF3FF1F05E7DDDLL) + 2) & 0x8D1798E5A6865688) + 0x468BCC72D3432B45) ^ 0xE90DBE2050000000;
  v114 = v115 >> 27;
  v116 = (v106 ^ 0x5AB5FFFFFFFFFFFFLL) & (v100 ^ 0x2FC373BD1BC6CBA8);
  *(&v115 + 1) = v114 ^ 0x13A834F39FLL;
  *&v115 = v114 ^ 0x6382E30000000000;
  v117 = (v115 >> 37) ^ v101;
  v118 = (v117 & 0x80 ^ 0x7F9FFDCECC243DFDLL) + 2 * (v117 & 0x80);
  v119 = v111 | 0x4FDC1A976F72D65ALL;
  v45 = (v111 & v107) == 0;
  v120 = 0x9FB8352EDEE5ACB4 - (v111 | 0x4FDC1A976F72D65ALL);
  if (v45)
  {
    v120 = v119;
  }

  v121 = (v107 ^ 0x7B5C5BCF1575873ELL) - 0x4FDC1A976F72D65ALL + v120;
  v122 = v117 ^ 0xFD016792F4BD95BALL;
  if (v75 == 0x469D62EC2E7F93C2)
  {
    v122 = -129;
  }

  v123 = v122 & (v117 ^ 0xFD016792F4BD953ALL);
  v124 = (v117 ^ 0x7D016792F4BD953ALL) & v109;
  v125 = (v107 ^ 0x743AEBF0FA98485BLL) & 0x9649AA9C99769468 ^ (v107 ^ 0x84A3A430EA8A78C1) & (v101 ^ 0xF6096A9296D7164ALL);
  v45 = ((v118 - 0x7F9FFDCECC243DFDLL) & v109) == 0;
  v126 = v118 - 0x180C2100040001C4;
  v127 = 0xE733DA9D94487A36 - v118;
  if (v45)
  {
    v127 = v126;
  }

  v128 = v16 & 0x13;
  v129 = (((v107 ^ 0x84A3A430EA8A78C1) + 1) ^ 0xD206B1EFF8E24AF7 ^ v112 ^ v121) + v108 - ((2 * ((((v107 ^ 0x84A3A430EA8A78C1) + 1) ^ 0xD206B1EFF8E24AF7 ^ v112 ^ v121) + v108)) & 0x963B8CC913B80E4ELL) + 0x4B1DC66489DC0727;
  v130 = ((v109 - 0x6793DCCEC8243C39 + v127) ^ v123) + 2 * v124 - ((2 * (((v109 - 0x6793DCCEC8243C39 + v127) ^ v123) + 2 * v124)) & 0x178388D983D80C20) + 0xBC1C46CC1EC0610;
  v131 = v130 ^ v129;
  v132 = v116 ^ v104;
  v133 = (v130 ^ v129 ^ 0x80AEBC0863E39AELL) >> v128 >> (v128 ^ 0x13u);
  v134 = (((v106 ^ 0xA54A000000000000) & (v104 ^ 0x8CB61CDAF7746A04)) - ((2 * ((v106 ^ 0xA54A000000000000) & (v104 ^ 0x8CB61CDAF7746A04))) & 0x63BB9883C619A25ALL) + 0x31DDCC41E30CD12DLL) ^ v103 ^ v130;
  v135 = ((v106 ^ 0xA54A000000000000) - (v106 ^ 0x35430A8010121008 ^ v125)) ^ ((v125 ^ 0x6FF6F57FEFEDEFF7) + 1);
  v136 = ((v125 ^ 0x3713EA33BA55A1A9 ^ (v135 - ((2 * v135) & 0x4E35C167548F6342) - 0x58E51F4C55B84E5FLL)) + (v106 ^ 0xA54A000000000000)) ^ ((v116 ^ v104 ^ 0x7349E325088B95FBLL) - 0x7522A26D9E597A32 + ((2 * (v116 ^ v104)) & 0x15BABB24C34D0B9ALL ^ 0xFB6D7DFFFEFAF46DLL));
  v137 = ((8 * v134) ^ 0xAF33D8A3AC295880) - 0x1C27CB8FE15E216CLL - 2 * (((8 * v134) ^ 0xAF33D8A3AC295880) & 0x63D834701EA1DEB8 ^ (8 * v134) & 0x28);
  v138 = ((v131 >> 28) | (v131 << 45)) ^ (v131 << 36) ^ v133 ^ 0xA4D65AE080AEBC08;
  *(&v139 + 1) = ~v132;
  *&v139 = v132 ^ 0x7243BFE88B053058;
  v140 = ((v137 ^ 0xE3D834701EA1DE94) + (v134 ^ 0xA6909631298ABB1FLL ^ (-(v134 >> 61) - 0x4C8912DAA3F06FF1)) - 2 * ((v137 ^ 0x63D834701EA1DE94) & (v134 ^ 0x15E67B1475852B10))) ^ __ROR8__(v134, 39);
  v141 = v132 ^ __ROR8__(v132, 6) ^ (v139 >> 1);
  v142 = ((v129 >> 7) ^ 0x12E46658C698851) + (v129 ^ 0x972332C634C428D1) - 2 * (((v129 >> 7) ^ 0x12E46658C698851) & (v129 ^ 0x172332C634C428D1));
  v143 = v142 - ((2 * v142) & 0xD04D007601B87424) - 0x17D97FC4FF23C5EELL;
  v144 = v143 ^ (v129 >> 41);
  *(&v139 + 1) = (v140 << 9) ^ 0x39C405B3DE3DALL;
  *&v139 = (v140 << 9) ^ 0x32F8000000000000;
  v145 = v139 >> 51;
  v146 = (((v129 << 57) ^ 0xA200000000000000) - 0x41A8CFDC322BDB2 - ((2 * ((v129 << 57) ^ 0xA200000000000000)) & 0xF7FFFFFFFFFFFFFFLL)) ^ 0xFBE573023CDD424ELL;
  *(&v139 + 1) = v145 ^ 0x1C9D;
  *&v139 = v145 ^ 0xE600019481FB4000;
  v147 = v139 >> 13;
  *(&v139 + 1) = v141 ^ 0xAB11729292498;
  *&v139 = v141 ^ 0x1780000000000000;
  v148 = (v143 ^ 0xE800000000000000) & v146 ^ (v129 << 23) ^ (v144 ^ 0xE826803B0097AB8BLL | v146);
  v149 = (v147 & 0xFFFFFFFFFFFFFE00 | (v140 >> 55)) ^ (v139 >> 55);
  v150 = v136 ^ (v136 << 47) ^ (v136 >> 10) ^ ((v136 >> 17) | (v136 << 54));
  v151 = v148 ^ v131 ^ (v138 - ((2 * v138) & 0xFDC47F25B3F8A6E4) + 0x7EE23F92D9FC5372);
  v152 = ((v149 << 55) ^ 0x7380000000000000) + 0x6C4F83BC4F286FE8 - ((2 * ((v149 << 55) ^ 0x7380000000000000)) & 0xD800000000000000);
  v153 = v148 ^ v150 ^ 0x9D7FD57637315414;
  v154 = (0x5B00E53BA859AD62 - (v152 ^ 0x374F6687E771C28ALL)) ^ ((v152 ^ 0x93B07C43B0D79017) + 1);
  v155 = (((v154 + 0x6C4F83BC4F286FE8 - ((2 * v154) & 0xD89F07789E50DFD0)) ^ v152) + 0x5B00E53BA859AD62) ^ (v149 >> 9);
  v156 = (v148 ^ 0x631A621468800000) & ~v150;
  v157 = (v155 & 0x800000 | ((((v155 & 0x800000) >> 23) & 1) << 24)) ^ 0xF5FBF9EBF6F6E7EFLL;
  v158 = v157 + 0x2FFF3FFCDD4F3B5ELL;
  v159 = (v140 ^ 0x28EB0A56202BCCF6) & (v151 ^ 0xEA0D49B9C8BD9523) ^ v153;
  v160 = (v151 ^ 0x15F2B64637426ADCLL) & (v153 ^ 0x19A489DA04EABEBLL);
  v161 = v157 + 0xA04061409091811;
  v162 = 0x1BF733D4CB3D0B3CLL - v157;
  if ((v161 & (v140 ^ 0xD714F5A9DFD43309)) == 0)
  {
    v162 = v158;
  }

  v163 = v151 ^ v155 & 0xFFFFFFFFFF7FFFFFLL ^ (v155 ^ 0xE53BA859AD62 | v140 ^ 0xD714F5A9DFD43309) ^ 0x9FD0DF6198BD02E4 ^ ((v140 ^ 0xD714F5A9DFD43309) - 0x25FB39E8D446234DLL + v162);
  v164 = v163 ^ v159 ^ 0x337CF18DE77B155DLL;
  v165 = v155 ^ v156;
  v166 = v163 ^ v159 ^ 0x74473B7E5817914ELL;
  v167 = (v160 - 0x62802A89C8CEABECLL - ((2 * v160) & 0x3AFFAAEC6E62A828)) ^ v150 ^ 0x9D7FD57637315414 ^ v165;
  v168 = v140 ^ 0xE5123AEB4D5FEDDCLL ^ (((v155 ^ 0xFFFF1AC457A6529DLL) & v150) - ((2 * ((v155 ^ 0xFFFF1AC457A6529DLL) & v150)) & 0x9BF2617ADAE84254) - 0x3206CF42928BDED6);
  v169 = v163 ^ (v168 - ((2 * v168) & 0x144518380F4D8AB4) - 0x75DD73E3F8593AA6);
  v170 = ((2 * v164) & 0xB48759EEAB5C3430 ^ 0x7BF8EE19D5A7FFDFLL) + v166 - 2 * ((((2 * v164) & 0xB48759EEAB5C3430 ^ 0x7BF8EE19D5A7FFDFLL) + v166 + 0x1A43ACF755AE1A19) & 0x3708BFFFEE71AF26 ^ v164 & 4) - 0x6EB39308BBE036C5;
  v171 = (v167 ^ 0x142BD02F8BB4B3EFLL) - ((2 * (v167 ^ 0x142BD02F8BB4B3EFLL) + 2) & 0x6A17863171A1E0CELL);
  v172 = ((v170 << 36) ^ 0xE71AF22000000000) - 0x2F94842C89DCB33 - ((2 * ((v170 << 36) ^ 0xE71AF22000000000)) & 0xFA0D6F6000000000);
  *(&v174 + 1) = (((2 * v164) & 0xAB5C3430 ^ 0xD5A7FFDF) + v166 - 2 * ((((2 * v164) & 0xAB5C3430 ^ 0xD5A7FFDF) + v166 + 1437473305) & 0xEE71AF26 ^ v164 & 4) + 1142933819) ^ 0x1AF22;
  *&v174 = v170 ^ 0x3708BFFFEE700000;
  v173 = v174 >> 19;
  v175 = (v171 - 0x4AF43CE7472F0F98) ^ v167;
  *(&v174 + 1) = v175 ^ 0x1EDFECC8CC9BBC77;
  *&v174 = v175 ^ 0x4000000000000000;
  v176 = (v174 >> 62) ^ 0x15844B8D97CE4FD8;
  *(&v174 + 1) = ~(v174 >> 62);
  *&v174 = v176;
  v177 = (v167 >> 10) ^ 0x3AF50BF41D12D3;
  v178 = (v177 - (v167 ^ 0xEBEEDADB80565EC3 ^ (v167 >> 10))) ^ 0xC56112E365F393F6 ^ (v174 >> 2);
  *(&v174 + 1) = v159 ^ 0x44444444;
  *&v174 = v159 ^ 0x749166323CCDAD80;
  v179 = v174 >> 7;
  v180 = v170 ^ (v170 >> 28) ^ v173;
  v181 = ((v165 >> 6) ^ (v165 >> 1) | (v165 << 63)) ^ (v165 << 58) ^ 0xDB4B9E839D6E31DLL;
  v182 = (((((v180 ^ 0x3708BFFC9EFA50DCLL) - (v180 ^ 0xCA0E0841A9986411 ^ v172)) ^ ((v172 ^ 0x2F94842C89DCB32) + 1)) - 0x2F94842C89DCB33 - ((2 * (((v180 ^ 0x3708BFFC9EFA50DCLL) - (v180 ^ 0xCA0E0841A9986411 ^ v172)) ^ ((v172 ^ 0x2F94842C89DCB32) + 1))) & 0xFA0D6F7A6EC4699ALL)) ^ v172) + (v180 ^ 0x3708BFFC9EFA50DCLL);
  *(&v174 + 1) = v159 ^ 0x323CCDADC4;
  *&v174 = v159 ^ 0x7491660000000000;
  v183 = v179 ^ v159 ^ (v174 >> 41);
  v184 = ((v167 >> 17) | (v167 << 54)) ^ (v167 << 47) ^ (v178 + v177);
  v185 = v184 ^ 0xC199D1A847BBFFCCLL;
  v186 = v169 ^ *(v25 + ((16 * (v169 >> 61)) ^ 0xAC)) ^ (v169 >> 39) ^ (8 * v169) ^ (v169 << 25);
  v187 = (v181 - ((2 * v181) & 0x6992C64F119E7F42) - 0x4B369CD87730C05FLL) ^ v165 ^ v186;
  v188 = v182 ^ v183;
  v189 = v188 ^ (v187 ^ 0x8EA03894E36019F0) & (v186 ^ 0x9C32F51632C9D7E6);
  v190 = v184 ^ 0xC199D1A847BBFFCCLL ^ v183;
  v191 = (v187 ^ 0x715FC76B1C9FE60FLL) & (v184 ^ 0xE39B1EAFC4615ECBLL);
  v192 = (v184 ^ 0x5DF78A15E817C5DALL) & (v183 ^ 0x749166323CCDADC4);
  v193 = ((v188 ^ 0x749166323CCDADC4) & (v190 ^ 0xE8FF3D8F936197D2)) - ((2 * ((v188 ^ 0x749166323CCDADC4) & (v190 ^ 0xE8FF3D8F936197D2))) & 0xC7234884A0A78BD2) + 0x6391A4425053C5E9;
  v194 = ((2 * ((v188 ^ 0x8B6E99CDC332523BLL) & (v186 ^ 0x63CD0AE9CD362819) ^ v190)) & 0xDF3F6F9FB2CAED7ELL ^ 0xE0104809008C05ALL) + ((v188 ^ 0x8B6E99CDC332523BLL) & (v186 ^ 0x63CD0AE9CD362819) ^ v190 ^ 0x789F75BFB5FB1E92);
  v195 = v187 & 0x41936B45D38964EELL ^ v186 ^ v191;
  *(&v174 + 1) = v195 ^ 0x1E49A8DDBF4C17;
  *&v174 = v195 ^ 0x22C0000000000000;
  v196 = v174 >> 53;
  v197 = v187 ^ v192;
  LOBYTE(v186) = (-105 - v171) & 0x27;
  v198 = v187 ^ v192 ^ v185 ^ v193;
  v199 = (v194 - 0x6F9FB7CFD96576BFLL) ^ (0x6F9FB7CFD96576BFLL - v194) ^ ((v189 ^ 0xA58B5CBC437508AALL) - (v189 ^ 0xA58B5CBC437508AALL ^ (v194 - 0x6F9FB7CFD96576BFLL)));
  *(&v174 + 1) = v196 ^ 0x588;
  *&v174 = v196 ^ 0xB55DEEC0C3170000;
  v200 = (v189 ^ 0x3016F4A65A8B7A9FLL ^ (v199 - ((2 * v199) & 0x2B3B503433FCE46ALL) - 0x6A6257E5E6018DCBLL)) + 2 * (((v199 - ((2 * v199) & 0x2B3B503433FCE46ALL) - 0x6A6257E5E6018DCBLL) ^ 0x159DA81A19FE7235) & (v189 ^ 0x258B5CBC437508AALL));
  v201 = v200 + 0x5F6A77EC93C21AA6 - ((2 * v200) & 0xBED4EFD92784354CLL);
  v202 = (v189 ^ 0x749166323CCDADC4) + ((v174 >> 11) ^ 0xB116ABBDD81862E0) - 2 * ((v189 ^ 0x749166323CCDADC4) & ((v174 >> 11) ^ 0x3116ABBDD81862E0));
  *(&v174 + 1) = (v200 - 1815995738 - ((2 * v200) & 0x2784354C)) ^ 0x21AA6u;
  *&v174 = v201 ^ 0x5F6A77EC93C00000;
  v203 = v174 >> 19;
  v204 = (v202 ^ 0x394F5E6EE5F71695uLL) >> v186 >> (v186 ^ 0x27u);
  v205 = (0x22C2AC3F32C8030FLL - (v198 ^ 0xAC6294ABD1A81AFFLL)) ^ ((v198 ^ 0x715FC76B1C9FE60FLL) + 1);
  v206 = v198 ^ 0x3365AC27C7BA3C09 ^ (v205 - ((2 * v205) & 0x7B8B296649B44BF2) - 0x423A6B4CDB25DA07);
  v207 = ((v197 ^ 0xC839400ED5AA19FFLL) - (v197 ^ 0xAC25E009BF7F1500 ^ (v197 >> 1))) ^ (((v197 >> 1) ^ 0x9BE35FF8952AF300) + 1);
  v208 = v206 - ((2 * v206 + 0x4585587E6590061ELL) & 0xDE02C787933AB5BELL) + 0x11C41002FC655DEELL;
  v209 = ((v208 >> 10) & 0x36785A7A1CC9A8 ^ v208 & 0x82B6785A7A1CC9A8 | (v208 >> 10) & 0x987A585E33657 ^ v208 & 0x7D4987A585E33657) ^ 0xEF3AA39B396F3D89;
  v210 = v209 + 0x73878F71D8F6F3BBLL - ((2 * v209) & 0xE70F1EE3B1EDE776);
  *&v174 = __ROR8__(v201, 28);
  v211 = (v203 ^ v174 ^ 0x3C21AA65F6A77EC9) + 0x5F6A77EC93C21AA6 - ((2 * (v203 ^ v174 ^ 0x3C21AA65F6A77EC9)) & 0xBED4EFD92784354CLL);
  v212 = v194 - 0x6F9FB7CFD96576BFLL >= 0xE8E6ABC71EA92540;
  *(&v174 + 1) = (((v197 >> 1) ^ 0xFB2C3D84 ^ (v207 - ((2 * v207) & 0x23F262F6) - 1845939845)) + (v197 ^ 0xD5AA19FF)) ^ (v197 >> 6) ^ 0x56A867;
  *&v174 = (((v197 >> 1) ^ 0xAADA495FB2C3D84 ^ (v207 - ((2 * v207) & 0xDD62092523F262F6) + 0x6EB1049291F9317BLL)) + (v197 ^ 0xC839400ED5AA19FFLL)) ^ (v197 >> 6) ^ 0x320E5003B000000;
  v213 = v174 >> 24;
  *(&v174 + 1) = v202 ^ 0x194F5E6EE5F71695;
  *&v174 = v202 ^ 0x2000000000000000;
  v214 = v174 >> 61;
  *(&v174 + 1) = (v213 << 24) ^ 0x81DDA098;
  *&v174 = (v213 << 24) ^ ((v197 << 63) | 0x6DA0C38800000000);
  v215 = v174 >> 33;
  if (v194 - 0x6F9FB7CFD96576BFLL >= 0xE8E6ABC71EA92540)
  {
    v216 = 0xB16D437E116C82BLL;
  }

  else
  {
    v216 = 0xF3FD7FFEFFBFED6BLL;
  }

  v217 = ~v197;
  v218 = v210 ^ (((v208 << 54) ^ 0xB7C0000000000000) + 0x73878F71D8F6F3BBLL - ((2 * ((v208 << 54) ^ 0xB7C0000000000000)) & 0xE700000000000000));
  v219 = v210 ^ 0xF71D8F6F3BBLL;
  v220 = v194 + v216;
  if (v212)
  {
    v221 = 0xE8E6ABC71EA92540;
  }

  else
  {
    v221 = 0;
  }

  v222 = v220 + v221 - 0x639D37CED925642ALL;
  *(&v223 + 1) = v215 ^ 0x347F3D2B;
  *&v223 = v215 ^ 0x15EED04C00000000;
  v224 = (v208 >> 17) ^ 0x7780B1E1E4CELL;
  v225 = v219 & v224;
  v226 = v218 + v224;
  v227 = v202 ^ (v202 << 25) ^ v214 ^ v204;
  v228 = ((v208 << 47) ^ 0xAD6F800000000000) - 0x325E7FBDB6374137 - ((2 * ((v208 << 47) ^ 0xAD6F800000000000)) & 0x9B43000000000000);
  v229 = ((v223 >> 31) & 0xFFFFFFFFFF000000 | (v213 >> 40)) ^ (v217 << 58) ^ 0xD11F6FE1AF3AA8AFLL;
  v230 = v226 - 2 * v225 - ((2 * (v226 - 2 * v225)) & 0x1EBB9C081CF9E66ELL) + 0xF5DCE040E7CF337;
  *(&v223 + 1) = v222 ^ 0x5A;
  *&v223 = v222 ^ 0x583DF7125BC06100;
  v231 = 2 * (((v230 ^ 0xF5D800000000000) & (v228 ^ 0xCDA1804249C8BEC9)) - ((2 * ((v230 ^ 0xF5D800000000000) & (v228 ^ 0xCDA1804249C8BEC9))) & 0x54F88C7A0759B3D0)) + 0x54F88C7A0759B3D0;
  v232 = v230 ^ v228;
  v233 = v227 ^ v229 ^ 0xAC88CF52D67685F4;
  v234 = (v232 ^ 0xC2FC4E4647B44DFELL) + (v231 ^ 0x54F88C7A0759B3D0) + (v231 ^ 0xAB077385F8A64C2FLL) + 1;
  v235 = v234 + 0x4969E4DB0A32C61CLL - 2 * (v234 & 0x4969E4DB0A32C61DLL ^ v232 & 1);
  v236 = v222 ^ __ROR8__(v222, 41) ^ (v223 >> 7);
  v237 = v235 ^ v236;
  v238 = (v235 ^ 0xB6961B24F5CD39E3) & (v236 ^ 0xD1101722F6EC7FA1) ^ v233;
  v239 = v201 ^ v236 ^ v211;
  v240 = v227 ^ 0x4F3A9983353241C5;
  v45 = v167 == 0xEBD42FD0744B4C10;
  v241 = v227 ^ v229 ^ 0xB0C5667CCACDBE3ALL;
  v242 = (v235 ^ 0x4969E4DB0A32C61CLL) & (((2 * v233) ^ 0xC764ADA3C6898863) + v241);
  v243 = v238 ^ 0xA34C2CA4B45682FBLL ^ (((v237 ^ 0x67860C0603214642) & (v239 ^ 0xD1101722F6EC7FA1)) - ((2 * ((v237 ^ 0x67860C0603214642) & (v239 ^ 0xD1101722F6EC7FA1))) & 0x7E030B1551DB726ALL) - 0x40FE7A75571246CBLL);
  if (!v45)
  {
    v240 = v229;
  }

  v244 = (v240 ^ 0x5441D63F053AA8AFLL) & v241;
  v245 = v238 ^ (v238 >> 1);
  v246 = v239 ^ v244;
  v247 = v242 - ((2 * v242) & 0x9186146C5CBE9EDCLL) - 0x373CF5C9D1A0B092;
  v248 = v246 ^ v227 ^ v247;
  v249 = v248 ^ (v248 >> 39) ^ ((v246 ^ v227 ^ ~v247) >> 61) ^ (8 * v248);
  *(&v250 + 1) = v249 ^ 0x3B6898D061;
  *&v250 = v249 ^ 0x6C879D4000000000;
  v251 = (v250 >> 38) ^ __ROR8__(v248, 13) & 0xFFF8000003FFFFFFLL;
  *(&v250 + 1) = v251 ^ 0x152C72D;
  *&v250 = v251 ^ 0x1D0BC9C420000000;
  v252 = v250 >> 26;
  v253 = v237 ^ (v239 ^ 0x2EEFE8DD0913805ELL) & (v227 ^ 0xE484B043CFF71695);
  v254 = v253 ^ v246;
  v255 = v253 ^ v246 ^ ((v253 ^ v246) >> 19) ^ ((v253 ^ v246) << 36) ^ ((v253 ^ v246) << 45);
  v256 = (v243 + 0x4969E4DB0A32C61CLL - ((2 * v243) & 0x92D3C9B614658C38)) ^ v235;
  v257 = v255 ^ ((v253 ^ v246) >> 28);
  *(&v250 + 1) = v245 ^ 0x37F4D1;
  *&v250 = v245 ^ 0x7B0701835F000000;
  v6[17] = BYTE2(v257) ^ 0x4C;
  v258 = v253 ^ (v253 << 57);
  v259 = (((v250 >> 24) ^ (((v238 << 58) ^ (~v238 << 63)) >> 24) ^ 0xE9F7327681549BDDLL) << (v13 & 0x18) << (v13 & 0x18 ^ 0x18)) + (((v250 >> 24) >> 40) ^ 0xE9F732);
  *(&v250 + 1) = v256 ^ 0x22A;
  *&v250 = v256 ^ 0x401DA402E3C5E800;
  v260 = v258 & 0x59D59A2BD5147EC4 ^ (v253 >> 7) & 0x1D59A2BD5147EC4;
  v10[53] = BYTE4(v257) ^ 0xC7;
  v15[187] = BYTE1(v252) ^ 0x71;
  *(v3 + 238) = v257 ^ 0xCC;
  v261 = v258 & 0xA62A65D42AEB813BLL ^ (v253 >> 7) & 0x2A65D42AEB813BLL;
  v262 = v259 ^ (v238 >> 6);
  v10[112] = BYTE5(v255) ^ 0xE1;
  *(v3 + 244) = HIBYTE(v255) ^ 0x34;
  *(v3 + 178) = BYTE2(v262) ^ 0xBE;
  v12[19] = BYTE2(v252) ^ 0xF2;
  v263 = v256 ^ __ROR8__(v256, 17) ^ (v250 >> 10);
  *(v3 + 224) = BYTE1(v257) ^ 0x5A;
  v12[32] = BYTE6(v255) ^ 0x8A;
  v6[24] = BYTE3(v257) ^ 0x88;
  v264 = ((v253 ^ 0x83DC0E17F114FBCCLL) << (v227 & 0x17 ^ 0x15) << (v227 & 0x17 ^ 2)) ^ (v253 >> 41) ^ (v260 | v261);
  *(v3 + 200) = BYTE3(v252) ^ 0xEE;
  v15[152] = BYTE6(v252) ^ 0x1E;
  v12[16] = BYTE3(v262) ^ 0x2B;
  *(v3 + 282) = BYTE4(v252) ^ 0x14;
  v12[15] = BYTE5(v252) ^ 0x51;
  v12[33] = ~v252 >> 56;
  v6[35] = BYTE1(v262) ^ 0x9D;
  v10[108] = v252 ^ 0xB;
  v15[46] = BYTE5(v262) ^ 0x43;
  v15[173] = v262 ^ 0xAF;
  v15[131] = BYTE6(v262) ^ 0xC9;
  v10[39] = BYTE4(v262) ^ 0x60;
  LOBYTE(v260) = *(v25 + (((v262 >> 52) & 0xF0 | (~v259 >> 60)) ^ 0xDC));
  v6[18] = HIBYTE(v263) ^ 0xB5;
  v12[12] = BYTE1(v264) ^ 0x3C;
  v6[1] = BYTE6(v263) ^ 8;
  v10[77] = v260 ^ 0xC3;
  v6[22] = BYTE1(v263) ^ 0x9B;
  *(v3 + 74) = v263 ^ 0xC8;
  v10[18] = BYTE4(v263) ^ 0xC;
  v10[37] = v264 ^ 0x3C;
  *(v3 + 235) = BYTE5(v264) ^ 0xB6;
  v12[26] = BYTE3(v263) ^ 0x31;
  v12[24] = BYTE3(v264) ^ 0xDE;
  *(v3 + 387) = BYTE4(v264) ^ 0xB;
  v265 = STACK[0x2818];
  LODWORD(STACK[0x2914]) = LODWORD(STACK[0x2810]) + ((STACK[0x2818] + 9937) ^ 0x7E7E54A4);
  v12[9] = BYTE5(v263) ^ 0x84;
  v6[34] = (v264 ^ 0x1ADBB60BDEB73C3CLL) >> (v254 & 0x38 ^ 0x10u) >> (v254 & 0x38 ^ 0x28u);
  v6[30] = BYTE2(v264) ^ 0xB7;
  LOBYTE(v260) = (v144 & 0xEF ^ 0x9B) - (v144 ^ 0x9B) - ((2 * ((v144 & 0xEF ^ 0x9B) - (v144 ^ 0x9B))) & 0xC4) - 30;
  v15[74] = BYTE6(v264) ^ 0xDB;
  v15[114] = (v263 ^ 0xB508840C31C49BC8) >> (v260 ^ 0xE2u) >> (v260 ^ 0xF2u);
  *(*STACK[0x2600] + 56) = LODWORD(STACK[0x2914]) - 1482451081;
  return (*(v2 + 8 * ((55 * ((STACK[0x2878] & 1) == 0)) ^ v265)))(v257 ^ 0x12339709414E4C92);
}

uint64_t sub_244AF003C(unint64_t a1)
{
  LODWORD(STACK[0x2880]) = 0;
  LODWORD(STACK[0x27D0]) = 0;
  LODWORD(STACK[0x2818]) = 0;
  LODWORD(STACK[0x27D8]) = 0;
  LODWORD(STACK[0x2790]) = 0;
  LODWORD(STACK[0x2750]) = 0;
  LODWORD(STACK[0x2758]) = 0;
  LODWORD(STACK[0x2798]) = 0;
  LODWORD(STACK[0x2760]) = 0;
  LODWORD(STACK[0x2768]) = 0;
  LODWORD(STACK[0x27E0]) = 0;
  LODWORD(STACK[0x27A0]) = 0;
  LODWORD(STACK[0x2770]) = 0;
  LODWORD(STACK[0x2778]) = 0;
  LODWORD(STACK[0x27B0]) = 0;
  LODWORD(STACK[0x2780]) = 0;
  LODWORD(STACK[0x2788]) = 0;
  v3 = *(v2 + 8 * ((((((v1 ^ 0x7728) + 15599016) & 0xFF11FEFE) + (((v1 ^ 0x7728) - 15687) ^ 0xFFFFCA94)) * (STACK[0x2838] & 1)) ^ v1 ^ 0x7728));
  LODWORD(STACK[0x2810]) = 1;
  STACK[0x2570] = STACK[0x2848];
  STACK[0x25F0] = a1;
  LODWORD(STACK[0x27B8]) = 1;
  return v3();
}

uint64_t sub_244AF01D0()
{
  LODWORD(STACK[0x2544]) = LODWORD(STACK[0x2544]) - 22786 + (v0 ^ 0x4704C097);
  v2 = *(v1 + 8 * (v0 ^ 0x47049516 ^ (5423 * (v0 < 0x14DB3955))));
  STACK[0x2570] = STACK[0x2848];
  return v2();
}

uint64_t sub_244AF034C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2788]) = 0;
  v4 = a1 - 6346;
  LODWORD(STACK[0x1DA4]) = ((2 * v3) & 0x7B5EFDFE ^ 0x124671D4) + (v3 ^ 0xB6CC4615) + (v4 ^ 0xFA7F973A);
  STACK[0x25F0] = v1 ^ 0x486CA50690724677;
  v5 = *(v2 + 8 * v4);
  LODWORD(STACK[0x2880]) = 1;
  STACK[0x2570] = STACK[0x2848];
  LODWORD(STACK[0x2810]) = 1;
  LODWORD(STACK[0x27B8]) = 1;
  LODWORD(STACK[0x27D0]) = 1;
  LODWORD(STACK[0x2818]) = 1;
  LODWORD(STACK[0x27D8]) = 1;
  LODWORD(STACK[0x2790]) = 1;
  LODWORD(STACK[0x2750]) = 1;
  LODWORD(STACK[0x2758]) = 1;
  LODWORD(STACK[0x2798]) = 1;
  LODWORD(STACK[0x2760]) = 1;
  LODWORD(STACK[0x2768]) = 1;
  LODWORD(STACK[0x27E0]) = 1;
  LODWORD(STACK[0x27A0]) = 1;
  LODWORD(STACK[0x2770]) = 1;
  LODWORD(STACK[0x2778]) = 1;
  LODWORD(STACK[0x27B0]) = 1;
  LODWORD(STACK[0x2780]) = 1;
  return v5();
}

uint64_t sub_244AF0418(unint64_t a1)
{
  LODWORD(STACK[0x2880]) = 0;
  LODWORD(STACK[0x2810]) = 0;
  LODWORD(STACK[0x27B8]) = 0;
  LODWORD(STACK[0x27D0]) = 0;
  LODWORD(STACK[0x2818]) = 0;
  LODWORD(STACK[0x27D8]) = 0;
  LODWORD(STACK[0x2790]) = 0;
  LODWORD(STACK[0x2750]) = 0;
  LODWORD(STACK[0x2758]) = 0;
  LODWORD(STACK[0x2798]) = 0;
  LODWORD(STACK[0x2760]) = 0;
  LODWORD(STACK[0x2768]) = 0;
  LODWORD(STACK[0x27E0]) = 0;
  LODWORD(STACK[0x27A0]) = 0;
  LODWORD(STACK[0x2770]) = 0;
  LODWORD(STACK[0x2778]) = 0;
  LODWORD(STACK[0x27B0]) = 0;
  LODWORD(STACK[0x2780]) = 0;
  LODWORD(STACK[0x2788]) = 0;
  v3 = *(v2 + 8 * (((((((v1 ^ 0x31F0) + 1397) | 0x2583) + 6999) ^ 0x7BDF) * (STACK[0x2840] & 1)) ^ v1 ^ 0x31F0));
  STACK[0x2570] = STACK[0x2848];
  STACK[0x25F0] = a1;
  return v3();
}

uint64_t sub_244AF0528@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = a2 | 0x21B0;
  STACK[0x25F0] = ((a1 | (STACK[0x2748] << 56)) ^ 0x785A5F320F8B6338) + 0x486CA506CA2D7478 - ((((a1 | (STACK[0x2748] << 56)) ^ 0x785A5F320F8B6338) & 0x486CA506CA2D747BLL ^ (v3 >> 8) & 3) << (v4 + 74));
  return (*(v2 + 8 * v4))();
}