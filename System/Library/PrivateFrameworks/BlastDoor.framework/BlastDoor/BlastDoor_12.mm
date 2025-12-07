unint64_t sub_2140EDC34(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      return 1701869940;
    case 2:
      return 0xD000000000000016;
    case 3:
    case 6:
    case 19:
      return 0xD000000000000012;
    case 4:
      v3 = 11;
      goto LABEL_22;
    case 5:
      return 0x6D654D6465646461;
    case 7:
    case 14:
      return 0xD000000000000017;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x656D616E6B63696ELL;
    case 10:
      return 1802398060;
    case 11:
      return 0x614474726F706572;
    case 12:
      return 0xD000000000000011;
    case 13:
      return 0xD000000000000010;
    case 15:
    case 16:
    case 17:
    case 23:
      v3 = 5;
      goto LABEL_22;
    case 18:
      return 0x4D6465766F6D6572;
    case 20:
      v3 = 13;
      goto LABEL_22;
    case 21:
      return 0xD000000000000010;
    case 22:
      return 0xD000000000000013;
    case 24:
      return 0x65646F4D7661;
    case 25:
      v3 = 10;
LABEL_22:
      result = v3 | 0xD000000000000010;
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    case 27:
      result = 0x79627261654E7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140EDEF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21435FC48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140EDF1C(uint64_t a1)
{
  v2 = sub_2142E781C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140EDF58(uint64_t a1)
{
  v2 = sub_2142E781C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140EDF94(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CE8, &qword_2146F4070);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v73 - v7;
  v9 = v2[3];
  v243 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2142E781C();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v243);
  }

  v135 = v4;
  v136 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v137[0]) = 0;
  v10 = sub_2142E6128();
  sub_2146DA1C8();
  v134 = v10;
  v11 = v138;
  v12 = BYTE4(v138);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CF8, &qword_2146F4078);
  LOBYTE(v137[0]) = 1;
  v14 = v8;
  v15 = sub_2142E7870();
  sub_2146DA1C8();
  v130 = v12;
  v132 = v15;
  v133 = v13;
  v131 = v11;
  v17 = v138;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v137[0]) = 2;
  v19 = sub_2142E1378();
  sub_2146DA1C8();
  v20 = v5;
  v127 = v17;
  v128 = v19;
  v129 = v18;
  LODWORD(v15) = v138;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D10, &qword_2146F4080);
  LOBYTE(v137[0]) = 3;
  v22 = sub_2142E7948();
  sub_2146DA1C8();
  v125 = v22;
  v126 = v21;
  v124 = v15;
  v23 = v138;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v137[0]) = 4;
  v25 = sub_2142E12FC();
  sub_2146DA1C8();
  v120 = v24;
  v121 = v25;
  v26 = v138;
  v122 = v139;
  v123 = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D28, &qword_2146F4088);
  LOBYTE(v137[0]) = 5;
  v28 = sub_2142E7A20();
  sub_2146DA1C8();
  v119 = v28;
  v29 = v138;
  LOBYTE(v137[0]) = 6;
  sub_2146DA1C8();
  v118 = v26;
  v134 = v29;
  LODWORD(v26) = v138;
  v30 = BYTE4(v138);
  LOBYTE(v137[0]) = 7;
  sub_2146DA1C8();
  v117 = v27;
  v116 = v26;
  v31 = v138;
  v32 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D40, &qword_2146F4090);
  LOBYTE(v137[0]) = 8;
  sub_2142E7AF8();
  sub_2146DA1C8();
  v113 = v138;
  v114 = v32;
  LOBYTE(v137[0]) = 9;
  v115 = v20;
  v33 = v14;
  sub_2146DA1C8();
  v111 = v138;
  v112 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D58, &qword_2146F4098);
  v230[439] = 10;
  sub_2142E7BD0();
  sub_2146DA1C8();
  memcpy(v230, v231, 0x1B1uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D70, &qword_2146F40A0);
  v224 = 11;
  sub_2142E7CA8();
  sub_2146DA1C8();
  v221 = v227;
  v222 = v228;
  v223[0] = v229[0];
  *(v223 + 9) = *(v229 + 9);
  v219 = v225;
  v220 = v226;
  LOBYTE(v137[0]) = 12;
  sub_2146DA1C8();
  v110 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D88, &qword_2146F40A8);
  LOBYTE(v137[0]) = 13;
  sub_2142E7D80();
  sub_2146DA1C8();
  v106 = v138;
  v107 = v139;
  v108 = v140;
  v109 = v141;
  LOBYTE(v137[0]) = 14;
  sub_2146DA1C8();
  v104 = v138;
  v105 = v139;
  LOBYTE(v137[0]) = 15;
  sub_2146DA1C8();
  v102 = v138;
  v103 = v139;
  LOBYTE(v137[0]) = 16;
  sub_2146DA1C8();
  LODWORD(v133) = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DA0, &unk_2146F40B0);
  LOBYTE(v137[0]) = 17;
  sub_2142E7E58();
  sub_2146DA1C8();
  v132 = v138;
  LOBYTE(v137[0]) = 18;
  sub_2146DA1C8();
  v101 = v138;
  LOBYTE(v137[0]) = 19;
  sub_2146DA1C8();
  v119 = v138;
  LOBYTE(v137[0]) = 20;
  sub_2146DA1C8();
  v126 = v138;
  LOBYTE(v137[0]) = 21;
  sub_2146DA1C8();
  LODWORD(v125) = v138;
  LOBYTE(v137[0]) = 22;
  sub_2146DA1C8();
  v120 = v138;
  v121 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DB8, &unk_2147598E0);
  v217[911] = 23;
  sub_2142E7F30();
  sub_2146DA1C8();
  memcpy(v217, v218, 0x389uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B30, &qword_2146F3FC0);
  LOBYTE(v137[0]) = 24;
  sub_2142E65D8();
  sub_2146DA1C8();
  LODWORD(v117) = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
  LOBYTE(v137[0]) = 25;
  sub_2142E7FB4();
  sub_2146DA1C8();
  v99 = v138;
  v100 = BYTE4(v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B48, &qword_2146F3FC8);
  LOBYTE(v137[0]) = 26;
  sub_2142E66B0();
  sub_2146DA1C8();
  v98 = v138;
  v216[446] = 27;
  sub_2146DA1C8();
  v129 = 0;
  v75 = v216[447];
  sub_213FB2E54(v230, &v138, &qword_27C905D58, &qword_2146F4098);
  sub_213FB2E54(&v219, &v138, &qword_27C905D70, &qword_2146F40A0);
  sub_2142E8030(v106, v107, v108, v109, sub_213FDCA18);
  sub_213FB2E54(v217, &v138, &qword_27C905DB8, &unk_2147598E0);
  sub_214654964(&v138);
  v128 = v138;
  v34 = v139;
  v35 = v140;
  v36 = v141;
  v97 = v142;
  sub_214654998(v137);
  v92 = v137[0];
  v96 = v137[2];
  v94 = v137[1];
  v95 = v137[3];
  v93 = LOBYTE(v137[4]);
  sub_2146549CC(&v209);
  v87 = v209;
  v91 = v211;
  v89 = v210;
  v90 = v212;
  v88 = v213;
  sub_214654B18(v207);
  v82 = v207[0];
  v86 = v207[2];
  v84 = v207[1];
  v85 = v207[3];
  v83 = v208;
  sub_214654C54(v205);
  v77 = v205[0];
  v80 = v205[2];
  v81 = v205[1];
  v79 = v205[3];
  v78 = v206;
  v216[444] = v130;
  v216[440] = v30;
  memcpy(&v216[7], v230, 0x1B1uLL);
  *(&v215[2] + 7) = v221;
  *(&v215[3] + 7) = v222;
  *(&v215[4] + 7) = v223[0];
  v215[5] = *(v223 + 9);
  *(v215 + 7) = v219;
  *(&v215[1] + 7) = v220;
  memcpy(v232, v217, sizeof(v232));
  v214 = v100;
  v76 = v130;
  v130 = v30;
  v137[0] = v118;
  v137[1] = v122;
  LOBYTE(v209) = v97;
  v138 = 0xD000000000000033;
  v139 = 0x800000021478D420;
  v140 = 0xD00000000000001CLL;
  v141 = 0x800000021478A360;

  v37 = v35;
  v38 = v35;
  v39 = v36;
  sub_213FDC9D0(v38, v36);
  v40 = v34;
  v41 = v129;
  v42 = v128(v137, &v209, &v138);
  v129 = v41;
  if (v41)
  {

LABEL_10:

    sub_213FB2DF4(v230, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v219, &qword_27C905D70, &qword_2146F40A0);
    sub_2142E8030(v106, v107, v108, v109, sub_213FDC6BC);
    sub_213FB2DF4(v217, &qword_27C905DB8, &unk_2147598E0);
    (*(v136 + 8))(v33, v115);

    sub_213FDC6D0(v37, v39);
    goto LABEL_11;
  }

  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    v45 = swift_allocError();
    *v46 = 0xD000000000000033;
    v46[1] = 0x800000021478D420;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    v129 = v45;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(v37, v39);

  sub_213FDC6D0(v37, v39);
  v137[0] = v31;
  v137[1] = v114;
  LOBYTE(v209) = v93;
  v138 = 0xD00000000000002FLL;
  v139 = 0x800000021478D460;
  v140 = 0xD00000000000001CLL;
  v141 = 0x800000021478A360;

  sub_213FDC9D0(v96, v95);
  v43 = v129;
  v44 = v92(v137, &v209, &v138);
  v129 = v43;
  if (v43)
  {

LABEL_17:

    sub_213FB2DF4(v230, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v219, &qword_27C905D70, &qword_2146F40A0);
    sub_2142E8030(v106, v107, v108, v109, sub_213FDC6BC);
    sub_213FB2DF4(v217, &qword_27C905DB8, &unk_2147598E0);
    (*(v136 + 8))(v33, v115);

    sub_213FDC6D0(v96, v95);
    v37 = v118;
    v39 = v122;
    goto LABEL_11;
  }

  if ((v44 & 1) == 0)
  {
    sub_214031C4C();
    v51 = swift_allocError();
    *v52 = 0xD00000000000002FLL;
    v52[1] = 0x800000021478D460;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    v129 = v51;
    swift_willThrow();
    goto LABEL_17;
  }

  v48 = v95;
  v47 = v96;
  sub_213FDC6D0(v96, v95);

  sub_213FDC6D0(v47, v48);
  v137[0] = v111;
  v137[1] = v112;
  LOBYTE(v209) = v88;
  v138 = 0xD000000000000020;
  v139 = 0x800000021478D490;
  v140 = 0xD00000000000001CLL;
  v141 = 0x800000021478A360;

  sub_213FDC9D0(v91, v90);
  v49 = v129;
  v50 = v87(v137, &v209, &v138);
  v129 = v49;
  if (v49)
  {

LABEL_22:

    sub_213FB2DF4(v230, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v219, &qword_27C905D70, &qword_2146F40A0);
    sub_2142E8030(v106, v107, v108, v109, sub_213FDC6BC);
    sub_213FB2DF4(v217, &qword_27C905DB8, &unk_2147598E0);
    (*(v136 + 8))(v33, v115);

    sub_213FDC6D0(v91, v90);
    v37 = v118;
    v39 = v122;
    v95 = v114;
    v96 = v31;
    goto LABEL_11;
  }

  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    v57 = swift_allocError();
    *v58 = 0xD000000000000020;
    v58[1] = 0x800000021478D490;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    v129 = v57;
    swift_willThrow();
    goto LABEL_22;
  }

  v54 = v90;
  v53 = v91;
  sub_213FDC6D0(v91, v90);

  sub_213FDC6D0(v53, v54);
  v137[0] = v104;
  v137[1] = v105;
  LOBYTE(v209) = v83;
  v138 = 0xD00000000000002FLL;
  v139 = 0x800000021478D4C0;
  v140 = 0xD00000000000001CLL;
  v141 = 0x800000021478A360;

  sub_213FDC9D0(v86, v85);
  v55 = v129;
  v56 = v82(v137, &v209, &v138);
  v129 = v55;
  if (v55)
  {

LABEL_28:

    sub_213FB2DF4(v230, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v219, &qword_27C905D70, &qword_2146F40A0);
    sub_2142E8030(v106, v107, v108, v109, sub_213FDC6BC);
    sub_213FB2DF4(v217, &qword_27C905DB8, &unk_2147598E0);
    (*(v136 + 8))(v33, v115);

    sub_213FDC6D0(v86, v85);
    v37 = v118;
    v39 = v122;
    v95 = v114;
    v96 = v31;
    v90 = v112;
    v91 = v111;
    goto LABEL_11;
  }

  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    v63 = swift_allocError();
    *v64 = 0xD00000000000002FLL;
    v64[1] = 0x800000021478D4C0;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    v129 = v63;
    swift_willThrow();
    goto LABEL_28;
  }

  v60 = v85;
  v59 = v86;
  sub_213FDC6D0(v86, v85);

  sub_213FDC6D0(v59, v60);
  v209 = v102;
  v210 = v103;
  LOBYTE(v137[0]) = v78;
  v138 = 0xD00000000000002DLL;
  v139 = 0x800000021478D4F0;
  v140 = 0xD00000000000001CLL;
  v141 = 0x800000021478A360;

  sub_213FDC9D0(v80, v79);
  v61 = v129;
  v62 = v77(&v209, v137, &v138);
  v129 = v61;
  if (v61)
  {
  }

  else
  {
    if (v62)
    {
      v65 = v79;
      sub_213FDC6D0(v80, v79);

      sub_213FB2DF4(v230, &qword_27C905D58, &qword_2146F4098);
      sub_213FB2DF4(&v219, &qword_27C905D70, &qword_2146F40A0);
      v66 = v106;
      v67 = v107;
      v68 = v108;
      sub_2142E8030(v106, v107, v108, v109, sub_213FDC6BC);
      sub_213FB2DF4(v217, &qword_27C905DB8, &unk_2147598E0);
      (*(v136 + 8))(v33, v115);
      v69 = v81;

      sub_213FDC6D0(v80, v65);
      LODWORD(v137[0]) = v131;
      BYTE4(v137[0]) = v76;
      BYTE5(v137[0]) = v127;
      BYTE6(v137[0]) = v124;
      v137[1] = v123;
      v137[2] = v128;
      v73 = v40;
      v137[3] = v40;
      v137[4] = v118;
      v137[5] = v122;
      LOBYTE(v137[6]) = v97;
      *(&v137[6] + 1) = v242[0];
      HIDWORD(v137[6]) = *(v242 + 3);
      v137[7] = v134;
      LODWORD(v137[8]) = v116;
      BYTE4(v137[8]) = v130;
      HIBYTE(v137[8]) = v241;
      *(&v137[8] + 5) = v240;
      v137[9] = v92;
      v137[10] = v94;
      v74 = v31;
      v137[11] = v31;
      v137[12] = v114;
      LOBYTE(v137[13]) = v93;
      *(&v137[13] + 1) = *v239;
      HIDWORD(v137[13]) = *&v239[3];
      v137[14] = v113;
      v137[15] = v87;
      v137[16] = v89;
      v137[17] = v111;
      v137[18] = v112;
      LOBYTE(v137[19]) = v88;
      memcpy(&v137[19] + 1, v216, 0x1B8uLL);
      *(&v137[78] + 1) = v215[2];
      *(&v137[80] + 1) = v215[3];
      *(&v137[82] + 1) = v215[4];
      *(&v137[84] + 1) = v215[5];
      *(&v137[74] + 1) = v215[0];
      *(&v137[76] + 1) = v215[1];
      BYTE1(v137[86]) = v110;
      *(&v137[86] + 2) = v237;
      HIWORD(v137[86]) = v238;
      v137[87] = v66;
      v137[88] = v67;
      v137[89] = v68;
      v137[90] = v109;
      v137[91] = v82;
      v137[92] = v84;
      v137[93] = v104;
      v137[94] = v105;
      LOBYTE(v137[95]) = v83;
      *(&v137[95] + 1) = *v236;
      HIDWORD(v137[95]) = *&v236[3];
      v137[96] = v77;
      v137[97] = v69;
      v137[98] = v102;
      v137[99] = v103;
      LOBYTE(v137[100]) = v78;
      BYTE1(v137[100]) = v133;
      *(&v137[100] + 2) = v234;
      HIWORD(v137[100]) = v235;
      v137[101] = v132;
      v137[102] = v101;
      v137[103] = v119;
      v137[104] = v126;
      LOBYTE(v137[105]) = v125;
      *(&v137[105] + 1) = *v233;
      HIDWORD(v137[105]) = *&v233[3];
      v137[106] = v120;
      v137[107] = v121;
      memcpy(&v137[108], v232, 0x389uLL);
      v70 = v117;
      BYTE1(v137[221]) = v117;
      LODWORD(v66) = v99;
      LOBYTE(v67) = v100;
      HIDWORD(v137[221]) = v99;
      LOBYTE(v137[222]) = v100;
      LOBYTE(v68) = v98;
      BYTE1(v137[222]) = v98;
      LOBYTE(v69) = v75;
      BYTE2(v137[222]) = v75;
      memcpy(v135, v137, 0x6F3uLL);
      sub_2142E809C(v137, &v138);
      __swift_destroy_boxed_opaque_existential_1(v243);
      LODWORD(v138) = v131;
      BYTE4(v138) = v76;
      BYTE5(v138) = v127;
      BYTE6(v138) = v124;
      v139 = v123;
      v140 = v128;
      v141 = v73;
      v142 = v118;
      v143 = v122;
      v144 = v97;
      *v145 = v242[0];
      *&v145[3] = *(v242 + 3);
      v146 = v134;
      v147 = v116;
      v148 = v130;
      v150 = v241;
      v149 = v240;
      v151 = v92;
      v152 = v94;
      v153 = v74;
      v154 = v114;
      v155 = v93;
      *v156 = *v239;
      *&v156[3] = *&v239[3];
      v157 = v113;
      v158 = v87;
      v159 = v89;
      v160 = v111;
      v161 = v112;
      v162 = v88;
      memcpy(v163, v216, sizeof(v163));
      v166 = v215[2];
      v167 = v215[3];
      v168 = v215[4];
      v169 = v215[5];
      v164 = v215[0];
      v165 = v215[1];
      v170 = v110;
      v171 = v237;
      v172 = v238;
      v173 = v106;
      v174 = v107;
      v175 = v108;
      v176 = v109;
      v177 = v82;
      v178 = v84;
      v179 = v104;
      v180 = v105;
      v181 = v83;
      *v182 = *v236;
      *&v182[3] = *&v236[3];
      v183 = v77;
      v184 = v81;
      v185 = v102;
      v186 = v103;
      v187 = v78;
      v188 = v133;
      v189 = v234;
      v190 = v235;
      v191 = v132;
      v192 = v101;
      v193 = v119;
      v194 = v126;
      v195 = v125;
      *v196 = *v233;
      *&v196[3] = *&v233[3];
      v197 = v120;
      v198 = v121;
      memcpy(v199, v232, sizeof(v199));
      v200 = v70;
      v201 = v66;
      v202 = v67;
      v203 = v68;
      v204 = v69;
      return sub_2142E77C8(&v138);
    }

    sub_214031C4C();
    v71 = swift_allocError();
    *v72 = 0xD00000000000002DLL;
    v72[1] = 0x800000021478D4F0;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = 0x800000021478A360;
    v129 = v71;
    swift_willThrow();
  }

  sub_213FB2DF4(v230, &qword_27C905D58, &qword_2146F4098);
  sub_213FB2DF4(&v219, &qword_27C905D70, &qword_2146F40A0);
  sub_2142E8030(v106, v107, v108, v109, sub_213FDC6BC);
  sub_213FB2DF4(v217, &qword_27C905DB8, &unk_2147598E0);
  (*(v136 + 8))(v33, v115);

  sub_213FDC6D0(v80, v79);
  v37 = v118;
  v39 = v122;
  v95 = v114;
  v96 = v31;
  v90 = v112;
  v91 = v111;
  v85 = v105;
  v86 = v104;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v243);
  LODWORD(v138) = v131;
  BYTE4(v138) = v76;
  BYTE5(v138) = v127;
  BYTE6(v138) = v124;
  v139 = v123;
  v140 = v128;
  v141 = v40;
  v142 = v37;
  v143 = v39;
  v144 = v97;
  *v145 = v242[0];
  *&v145[3] = *(v242 + 3);
  v146 = v134;
  v147 = v116;
  v148 = v130;
  v150 = v241;
  v149 = v240;
  v151 = v92;
  v152 = v94;
  v153 = v96;
  v154 = v95;
  v155 = v93;
  *&v156[3] = *&v239[3];
  *v156 = *v239;
  v157 = v113;
  v158 = v87;
  v159 = v89;
  v160 = v91;
  v161 = v90;
  v162 = v88;
  memcpy(v163, v216, sizeof(v163));
  v166 = v215[2];
  v167 = v215[3];
  v168 = v215[4];
  v169 = v215[5];
  v164 = v215[0];
  v165 = v215[1];
  v170 = v110;
  v171 = v237;
  v172 = v238;
  v173 = v106;
  v174 = v107;
  v175 = v108;
  v176 = v109;
  v177 = v82;
  v178 = v84;
  v179 = v86;
  v180 = v85;
  v181 = v83;
  *v182 = *v236;
  *&v182[3] = *&v236[3];
  v183 = v77;
  v184 = v81;
  v185 = v80;
  v186 = v79;
  v187 = v78;
  v188 = v133;
  v189 = v234;
  v190 = v235;
  v191 = v132;
  v192 = v101;
  v193 = v119;
  v194 = v126;
  v195 = v125;
  *v196 = *v233;
  *&v196[3] = *&v233[3];
  v197 = v120;
  v198 = v121;
  memcpy(v199, v232, sizeof(v199));
  v200 = v117;
  v201 = v99;
  v202 = v100;
  v203 = v98;
  v204 = v75;
  return sub_2142E77C8(&v138);
}

uint64_t sub_2140F0564(uint64_t a1)
{
  v96 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DD8, &qword_2146F40C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v73 = *v1;
  LODWORD(v72) = *(v1 + 4);
  LODWORD(v71) = *(v1 + 5);
  LODWORD(v70) = *(v1 + 6);
  v8 = *(v1 + 1);
  v9 = *(v1 + 4);
  v68 = *(v1 + 5);
  v69 = v8;
  v66 = *(v1 + 7);
  v67 = v9;
  LODWORD(v8) = v1[16];
  v64 = *(v1 + 68);
  LODWORD(v65) = v8;
  v10 = *(v1 + 11);
  v62 = *(v1 + 12);
  v63 = v10;
  v11 = *(v1 + 14);
  v12 = *(v1 + 18);
  v60 = *(v1 + 17);
  v61 = v11;
  v59 = v12;
  memcpy(v89, v1 + 40, 0x1B1uLL);
  v13 = *(v1 + 162);
  v92 = *(v1 + 158);
  v93 = v13;
  v94[0] = *(v1 + 166);
  *(v94 + 9) = *(v1 + 673);
  v14 = *(v1 + 154);
  v90 = *(v1 + 150);
  v91 = v14;
  v58 = *(v1 + 689);
  v15 = *(v1 + 87);
  v56 = *(v1 + 88);
  v57 = v15;
  v16 = *(v1 + 89);
  v54 = *(v1 + 90);
  v55 = v16;
  v17 = *(v1 + 94);
  v52 = *(v1 + 93);
  v53 = v17;
  v18 = *(v1 + 99);
  v50 = *(v1 + 98);
  v51 = v18;
  v49 = *(v1 + 801);
  v19 = *(v1 + 102);
  v38 = *(v1 + 101);
  v39 = v19;
  v20 = *(v1 + 104);
  v40 = *(v1 + 103);
  v41 = v20;
  v42 = *(v1 + 840);
  v21 = *(v1 + 106);
  v43 = *(v1 + 107);
  v44 = v21;
  memcpy(v95, v1 + 216, 0x389uLL);
  v22 = v1[443];
  v23 = *(v1 + 1776);
  v45 = *(v1 + 1769);
  v46 = v23;
  v24 = *(v1 + 1777);
  v47 = v22;
  v48 = v24;
  v25 = *(v1 + 1778);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142E781C();
  sub_2146DAA28();
  LODWORD(v78[0]) = v73;
  BYTE4(v78[0]) = v72;
  v77[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v26 = v96;
  sub_2146DA388();
  if (v26)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v73 = v25;
  v96 = v5;
  LOBYTE(v78[0]) = v71;
  v77[0] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CF8, &qword_2146F4078);
  v29 = sub_2142E80F8();
  sub_2146DA388();
  v72 = v29;
  LOBYTE(v78[0]) = v70;
  v77[0] = 2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v31 = sub_2142E1D30();
  sub_2146DA388();
  v70 = v28;
  v71 = v31;
  v78[0] = v69;
  v77[0] = 3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D10, &qword_2146F4080);
  v33 = sub_2142E81D0();
  sub_2146DA388();
  v37 = v33;
  v69 = v32;
  if (v68 == 1 || (v78[0] = v67, v78[1] = v68, v77[0] = 4, v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), v35 = sub_214045AC0(), sub_2146DA388(), v67 = v34, v68 = v35, v78[0] = v66, v77[0] = 5, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D28, &qword_2146F4088), v36 = sub_2142E82A8(), sub_2146DA388(), LODWORD(v78[0]) = v65, BYTE4(v78[0]) = v64, v77[0] = 6, sub_2146DA388(), v66 = v36, v62 == 1) || (v78[0] = v63, v78[1] = v62, v77[0] = 7, sub_2146DA388(), v65 = v30, v78[0] = v61, v77[0] = 8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D40, &qword_2146F4090), sub_2142E8380(), sub_2146DA388(), v59 == 1) || (v78[0] = v60, v78[1] = v59, v77[0] = 9, sub_2146DA388(), memcpy(v88, v89, sizeof(v88)), v87[439] = 10, sub_213FB2E54(v89, v78, &qword_27C905D58, &qword_2146F4098), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D58, &qword_2146F4098), sub_2142E8458(), sub_2146DA388(), memcpy(v87, v88, 0x1B1uLL), sub_213FB2DF4(v87, &qword_27C905D58, &qword_2146F4098), v84 = v92, v85 = v93, v86[0] = v94[0], *(v86 + 9) = *(v94 + 9), v82 = v90, v83 = v91, v81 = 11, sub_213FB2E54(&v90, v78, &qword_27C905D70, &qword_2146F40A0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D70, &qword_2146F40A0), sub_2142E8530(), sub_2146DA388(), v79[2] = v84, v79[3] = v85, *v80 = v86[0], *&v80[9] = *(v86 + 9), v79[0] = v82, v79[1] = v83, sub_213FB2DF4(v79, &qword_27C905D70, &qword_2146F40A0), LOBYTE(v78[0]) = v58, v77[0] = 12, sub_2146DA388(), v78[0] = v57, v78[1] = v56, v78[2] = v55, v78[3] = v54, v77[0] = 13, sub_2142E8030(v57, v56, v55, v54, sub_213FDCA18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D88, &qword_2146F40A8), sub_2142E8608(), sub_2146DA388(), sub_2142E8030(v78[0], v78[1], v78[2], v78[3], sub_213FDC6BC), v53 == 1) || (v78[0] = v52, v78[1] = v53, v77[0] = 14, sub_2146DA388(), v51 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v78[0] = v50;
    v78[1] = v51;
    v77[0] = 15;
    sub_2146DA388();
    LOBYTE(v78[0]) = v49;
    v77[0] = 16;
    sub_2146DA388();
    v78[0] = v38;
    v77[0] = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DA0, &unk_2146F40B0);
    sub_2142E86E0();
    sub_2146DA388();
    v78[0] = v39;
    v77[0] = 18;
    sub_2146DA388();
    v78[0] = v40;
    v77[0] = 19;
    sub_2146DA388();
    v78[0] = v41;
    v77[0] = 20;
    sub_2146DA388();
    LOBYTE(v78[0]) = v42;
    v77[0] = 21;
    sub_2146DA388();
    v78[0] = v44;
    v78[1] = v43;
    v77[0] = 22;
    sub_2146DA388();
    memcpy(v78, v95, 0x389uLL);
    v77[911] = 23;
    sub_213FB2E54(v95, v77, &qword_27C905DB8, &unk_2147598E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DB8, &unk_2147598E0);
    sub_2142E87B8();
    sub_2146DA388();
    memcpy(v77, v78, 0x389uLL);
    sub_213FB2DF4(v77, &qword_27C905DB8, &unk_2147598E0);
    LOBYTE(v74) = v45;
    v76 = 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B30, &qword_2146F3FC0);
    sub_2142E67E4();
    sub_2146DA388();
    v74 = v47;
    v75 = v46;
    v76 = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
    sub_2142E883C();
    sub_2146DA388();
    LOBYTE(v74) = v48;
    v76 = 26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905B48, &qword_2146F3FC8);
    sub_2142E68BC();
    sub_2146DA388();
    LOBYTE(v74) = v73;
    v76 = 27;
    sub_2146DA388();
    return (*(v96 + 8))(0, v4);
  }

  return result;
}

uint64_t sub_2140F12D8()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x654B63696C627570;
  }
}

uint64_t sub_2140F131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000214789E10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140F1408(uint64_t a1)
{
  v2 = sub_2142E88B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F1444(uint64_t a1)
{
  v2 = sub_2142E88B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F1480@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905E70, &qword_2146F40D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E88B8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v14 = 0;
    sub_2142E1278();
    sub_2146DA1C8();
    v12 = v13;
    v14 = 1;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = *(&v12 + 1);
    *a2 = v12;
    *(a2 + 8) = v10;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140F167C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905E80, &qword_2146F40D8);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FDCA18(v7, v8);
  sub_2142E88B8();
  sub_2146DAA28();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_213FDCA18(v13, v12);
    sub_2146DA388();
    sub_213FDC6BC(v15, v16);
  }

  return (*(v14 + 8))(v6, v4);
}

void *sub_2140F1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, char a18, char a19, int a20, int a21, char a22, __int16 a23, char a24, char a25, uint64_t (*a26)(void, void, void), uint64_t a27, char a28, char a29, char a30, char a31, int a32, int a33, char a34, int a35, char a36, __int16 a37, char a38, char a39, char a40, uint64_t (*a41)(void, void, void), uint64_t a42, char a43, char a44, char a45, int a46, int a47, char a48)
{
  v49 = MEMORY[0x28223BE20](a1);
  v90 = v50;
  v98 = v51;
  v82 = v52;
  v83 = v53;
  v104 = v54;
  v105 = v55;
  v89 = v56;
  v57 = v49;
  memcpy(v199, v58, sizeof(v199));
  sub_2146552EC(&v108);
  v60 = v108;
  v59 = v109;
  v61 = *v110;
  v84 = *&v110[8];
  v62 = v110[16];
  sub_214655320(&v177);
  v106 = v177;
  v107 = v178;
  v103 = v179;
  v202 = v180;
  v99 = v181;
  sub_21465546C(v175);
  v100 = v175[0];
  v96 = v175[1];
  v97 = v175[2];
  v102 = v175[3];
  v101 = v176;
  sub_2146554A0(v173);
  v92 = v173[0];
  v93 = v173[2];
  v94 = v173[3];
  v95 = v173[1];
  v91 = v174;
  v88 = v57;
  __src[916] = BYTE4(v57) & 1;
  memcpy(&__src[6], a9, 0x389uLL);
  v185 = a22 & 1;
  v184 = a34 & 1;
  v183 = a36 & 1;
  v182 = a48 & 1;
  v85 = BYTE4(v57) & 1;
  v86 = v62;
  v177 = v104;
  v178 = v105;
  LOBYTE(v175[0]) = v62;
  v108 = 0xD000000000000041;
  v109 = 0x800000021478D520;
  *v110 = 0xD00000000000001CLL;
  *&v110[8] = 0x800000021478A360;

  v63 = v61;
  v64 = v61;
  v65 = v84;
  sub_213FDC9D0(v64, v84);
  v87 = v60;
  v66 = v60(&v177, v175, &v108);
  if (v48)
  {
    goto LABEL_5;
  }

  if ((v66 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v70 = 0xD000000000000041;
    v70[1] = 0x800000021478D520;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_5:

    v67 = v59;

    sub_213FDC6D0(v63, v84);
    v71 = v92;
    v68 = v99;
    v72 = v97;
    v73 = v103;
LABEL_6:
    LODWORD(v108) = v88;
    BYTE4(v108) = v85;
    *(&v108 + 5) = v200;
    HIBYTE(v108) = v201;
    v109 = v89;
    memcpy(v110, v199, sizeof(v110));
    v111 = v197;
    v112 = v198;
    v113 = v87;
    v114 = v67;
    v115 = v63;
    v116 = v65;
    v117 = v86;
    *v118 = *v196;
    *&v118[3] = *&v196[3];
    v119 = v106;
    v120 = v107;
    v121 = v73;
    v122 = v202;
    v123 = v68;
    v124 = v90;
    memcpy(v125, __src, 0x38FuLL);
    v125[911] = a10;
    v125[912] = a11;
    v128 = a12;
    v129 = a13;
    v130 = a14;
    v131 = a15;
    v133 = a16;
    v134 = a17;
    v135 = a18;
    v136 = a19;
    v137 = a21;
    v126 = v194;
    *v132 = v193[0];
    v127 = v195;
    *&v132[3] = *(v193 + 3);
    v138 = a22 & 1;
    v139 = a24;
    v140 = a25;
    v141 = v191;
    v142 = v192;
    v143 = v100;
    v144 = v96;
    v145 = v72;
    v146 = v102;
    v147 = v101;
    v148 = a28;
    v149 = a29;
    v150 = a30;
    v151 = a31;
    v152 = v189;
    v153 = v190;
    v154 = a33;
    v155 = a34 & 1;
    v156 = v187;
    v157 = v188;
    v158 = a35;
    v159 = a36 & 1;
    v160 = a38;
    v161 = a39;
    v162 = a40;
    v163 = v71;
    v164 = v95;
    v165 = v93;
    v166 = v94;
    v167 = v91;
    v168 = a43;
    v169 = a44;
    v170 = a45;
    v171 = a47;
    v172 = a48 & 1;
    return sub_2142E890C(&v108);
  }

  sub_213FDC6D0(v63, v84);

  v67 = v59;

  sub_213FDC6D0(v63, v84);
  v177 = v82;
  v178 = v98;
  v68 = v99;
  LOBYTE(v175[0]) = v99;
  v108 = 0xD00000000000003BLL;
  v109 = 0x800000021478D570;
  *v110 = 0xD00000000000001CLL;
  *&v110[8] = 0x800000021478A360;

  sub_213FDC9D0(v103, v202);
  v69 = v106(&v177, v175, &v108);
  if ((v69 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v77 = 0xD00000000000003BLL;
    v77[1] = 0x800000021478D570;
    v77[2] = 0xD00000000000001CLL;
    v77[3] = 0x800000021478A360;
    swift_willThrow();

    v71 = v92;

    v73 = v103;
    sub_213FDC6D0(v103, v202);
    v63 = v104;
    v65 = v105;
    v72 = v97;
    goto LABEL_6;
  }

  v75 = v202;
  sub_213FDC6D0(v103, v202);

  sub_213FDC6D0(v103, v75);
  v177 = a26;
  v178 = a27;
  LOBYTE(v175[0]) = v101;
  v108 = 0xD000000000000041;
  v109 = 0x800000021478D5B0;
  *v110 = 0xD00000000000001CLL;
  *&v110[8] = 0x800000021478A360;

  sub_213FDC9D0(v97, v102);
  v76 = v100(&v177, v175, &v108);
  if ((v76 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v79 = 0xD000000000000041;
    v79[1] = 0x800000021478D5B0;
    v79[2] = 0xD00000000000001CLL;
    v79[3] = 0x800000021478A360;
    swift_willThrow();

    v63 = v104;

    v72 = v97;
    sub_213FDC6D0(v97, v102);
    v65 = v105;
    v73 = v82;
    v202 = v98;
LABEL_13:
    v68 = v99;
    v71 = v92;
    goto LABEL_6;
  }

  sub_213FDC6D0(v97, v102);

  sub_213FDC6D0(v97, v102);
  v177 = a41;
  v178 = a42;
  LOBYTE(v175[0]) = v91;
  v108 = 0xD000000000000040;
  v109 = 0x800000021478D600;
  *v110 = 0xD00000000000001CLL;
  *&v110[8] = 0x800000021478A360;

  sub_213FDC9D0(v93, v94);
  v78 = v92(&v177, v175, &v108);
  v202 = a41;
  if ((v78 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v81 = 0xD000000000000040;
    v81[1] = 0x800000021478D600;
    v81[2] = 0xD00000000000001CLL;
    v81[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v93, v94);
    v63 = v104;
    v65 = v105;
    v73 = v82;
    v202 = v98;
    v72 = a26;
    v102 = a27;
    goto LABEL_13;
  }

  sub_213FDC6D0(v93, v94);

  sub_213FDC6D0(v93, v94);
  *v83 = v57;
  *(v83 + 4) = v85;
  *(v83 + 5) = v200;
  *(v83 + 7) = v201;
  *(v83 + 8) = v89;
  memcpy((v83 + 16), v199, 0x6F3uLL);
  *(v83 + 1795) = v197;
  *(v83 + 1799) = v198;
  *(v83 + 1800) = v87;
  *(v83 + 1808) = v59;
  *(v83 + 1816) = v104;
  *(v83 + 1824) = v105;
  *(v83 + 1832) = v62;
  *(v83 + 1833) = *v196;
  *(v83 + 1836) = *&v196[3];
  *(v83 + 1840) = v106;
  *(v83 + 1848) = v107;
  *(v83 + 1856) = v82;
  *(v83 + 1864) = v98;
  *(v83 + 1872) = v99;
  *(v83 + 1873) = v90;
  result = memcpy((v83 + 1874), __src, 0x38FuLL);
  *(v83 + 2785) = a10;
  *(v83 + 2786) = a11;
  *(v83 + 2792) = a12;
  *(v83 + 2800) = a13;
  *(v83 + 2808) = a14;
  *(v83 + 2816) = a15;
  *(v83 + 2824) = a16;
  *(v83 + 2832) = a17;
  *(v83 + 2833) = a18;
  *(v83 + 2834) = a19;
  *(v83 + 2836) = a21;
  *(v83 + 2787) = v194;
  *(v83 + 2817) = v193[0];
  *(v83 + 2791) = v195;
  *(v83 + 2820) = *(v193 + 3);
  *(v83 + 2840) = a22 & 1;
  *(v83 + 2841) = a24;
  *(v83 + 2842) = a25;
  *(v83 + 2847) = v192;
  *(v83 + 2843) = v191;
  *(v83 + 2848) = v100;
  *(v83 + 2856) = v96;
  *(v83 + 2864) = a26;
  *(v83 + 2872) = a27;
  *(v83 + 2880) = v101;
  *(v83 + 2881) = a28;
  *(v83 + 2882) = a29;
  *(v83 + 2883) = a30;
  *(v83 + 2884) = a31;
  *(v83 + 2887) = v190;
  *(v83 + 2885) = v189;
  *(v83 + 2888) = a33;
  *(v83 + 2892) = a34 & 1;
  v80 = v187;
  *(v83 + 2895) = v188;
  *(v83 + 2893) = v80;
  *(v83 + 2896) = a35;
  *(v83 + 2900) = a36 & 1;
  *(v83 + 2901) = a38;
  *(v83 + 2902) = a39;
  *(v83 + 2903) = a40;
  *(v83 + 2904) = v92;
  *(v83 + 2912) = v95;
  *(v83 + 2920) = v202;
  *(v83 + 2928) = a42;
  *(v83 + 2936) = v91;
  *(v83 + 2937) = a43;
  *(v83 + 2938) = a44;
  *(v83 + 2939) = a45;
  *(v83 + 2940) = a47;
  *(v83 + 2944) = a48 & 1;
  return result;
}

unint64_t sub_2140F2560(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x737265626D656DLL;
      break;
    case 2:
      result = 0x6567617373656DLL;
      break;
    case 3:
    case 19:
    case 22:
      result = 0xD000000000000017;
      break;
    case 4:
    case 31:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7974697669746361;
      break;
    case 7:
      result = 0x6F65646976;
      break;
    case 8:
    case 16:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x77746867694C7369;
      break;
    case 14:
    case 23:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0x616E456F65646976;
      break;
    case 17:
    case 26:
      result = 0xD000000000000021;
      break;
    case 18:
    case 28:
      result = 0xD00000000000001ALL;
      break;
    case 20:
    case 24:
    case 33:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0xD000000000000020;
      break;
    case 25:
      result = 0xD00000000000001ELL;
      break;
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 29:
    case 30:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140F28BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214360540(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140F28E4(uint64_t a1)
{
  v2 = sub_2142E8960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F2920(uint64_t a1)
{
  v2 = sub_2142E8960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F295C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905E88, &unk_2146F40E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = v2[3];
  v212 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2142E8960();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v212);
  }

  v110 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v111[0]) = 0;
  v11 = sub_2142E6128();
  sub_2146DA1C8();
  v107 = v10;
  v108 = v11;
  v109 = v6;
  LODWORD(v10) = v112;
  LODWORD(v11) = BYTE4(v112);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D28, &qword_2146F4088);
  LOBYTE(v111[0]) = 1;
  v13 = sub_2142E7A20();
  sub_2146DA1C8();
  v105 = v12;
  v106 = v13;
  LODWORD(v103) = v11;
  v104 = v10;
  v14 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905E98, &qword_2147738D0);
  v195[1783] = 2;
  sub_2142E89B4();
  sub_2146DA1C8();
  v102 = v14;
  memcpy(v195, v196, 0x6F3uLL);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v111[0]) = 3;
  v16 = sub_2142E12FC();
  sub_2146DA1C8();
  v17 = v112;
  v18 = v113;
  LOBYTE(v111[0]) = 4;
  sub_2146DA1C8();
  v98 = v17;
  v99 = v16;
  v100 = v15;
  v101 = v18;
  v19 = v112;
  v20 = v113;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v111[0]) = 5;
  v22 = sub_2142E1378();
  sub_2146DA1C8();
  v96 = v21;
  v97 = v20;
  v94 = v19;
  v95 = v22;
  LODWORD(v22) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DB8, &unk_2147598E0);
  v193[911] = 6;
  sub_2142E7F30();
  sub_2146DA1C8();
  v93 = v22;
  memcpy(v193, v194, 0x389uLL);
  LOBYTE(v111[0]) = 7;
  sub_2146DA1C8();
  v23 = v112;
  LOBYTE(v111[0]) = 8;
  sub_2146DA1C8();
  v92 = v112;
  LOBYTE(v111[0]) = 9;
  sub_2146DA1C8();
  v90 = v112;
  v91 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CB0, &qword_2146F4050);
  LOBYTE(v111[0]) = 10;
  sub_2142E7610();
  sub_2146DA1C8();
  v89 = v112;
  LOBYTE(v111[0]) = 11;
  sub_2146DA1C8();
  v88 = v112;
  LOBYTE(v111[0]) = 12;
  sub_2146DA1C8();
  v25 = v112;
  LOBYTE(v111[0]) = 13;
  sub_2146DA1C8();
  LODWORD(v106) = v112;
  LOBYTE(v111[0]) = 14;
  sub_2146DA1C8();
  LODWORD(v105) = v112;
  LOBYTE(v111[0]) = 15;
  sub_2146DA1C8();
  v87 = v112;
  LOBYTE(v111[0]) = 16;
  sub_2146DA1C8();
  v85 = v112;
  v86 = BYTE4(v112);
  LOBYTE(v111[0]) = 17;
  sub_2146DA1C8();
  v84 = v112;
  LOBYTE(v111[0]) = 18;
  sub_2146DA1C8();
  v83 = v112;
  LOBYTE(v111[0]) = 19;
  sub_2146DA1C8();
  v81 = v112;
  v82 = v113;
  LOBYTE(v111[0]) = 20;
  sub_2146DA1C8();
  v80 = v112;
  LOBYTE(v111[0]) = 21;
  sub_2146DA1C8();
  v79 = v112;
  LOBYTE(v111[0]) = 22;
  sub_2146DA1C8();
  v78 = v112;
  LOBYTE(v111[0]) = 23;
  sub_2146DA1C8();
  v77 = v112;
  LOBYTE(v111[0]) = 24;
  sub_2146DA1C8();
  v75 = v112;
  v76 = BYTE4(v112);
  LOBYTE(v111[0]) = 25;
  sub_2146DA1C8();
  v73 = v112;
  v74 = BYTE4(v112);
  LOBYTE(v111[0]) = 26;
  sub_2146DA1C8();
  v72 = v112;
  LOBYTE(v111[0]) = 27;
  sub_2146DA1C8();
  v71 = v112;
  LOBYTE(v111[0]) = 28;
  sub_2146DA1C8();
  v70 = v112;
  LOBYTE(v111[0]) = 29;
  sub_2146DA1C8();
  v99 = v112;
  v100 = v113;
  LOBYTE(v111[0]) = 30;
  sub_2146DA1C8();
  v69 = v112;
  LOBYTE(v111[0]) = 31;
  sub_2146DA1C8();
  v68 = v112;
  LOBYTE(v111[0]) = 32;
  sub_2146DA1C8();
  LODWORD(v96) = v112;
  v190[915] = 33;
  sub_2146DA1C8();
  v49 = v191;
  v66 = v192;
  sub_213FB2E54(v195, &v112, &qword_27C905E98, &qword_2147738D0);
  sub_213FB2E54(v193, &v112, &qword_27C905DB8, &unk_2147598E0);
  sub_2146552EC(&v112);
  v95 = v112;
  v26 = v113;
  v108 = *v114;
  v27 = *&v114[8];
  v67 = v114[16];
  sub_214655320(v111);
  v60 = v111[0];
  v63 = v111[2];
  v64 = v111[1];
  v62 = v111[3];
  v61 = LOBYTE(v111[4]);
  sub_21465546C(&v181);
  v52 = v181;
  v57 = v183;
  v58 = v182;
  v56 = v184;
  v53 = v185;
  sub_2146554A0(v179);
  v54 = v179[0];
  v59 = v179[1];
  v50 = v179[2];
  v51 = v179[3];
  v55 = v180;
  v190[912] = v103;
  memcpy(v209, v195, sizeof(v209));
  memcpy(&v190[6], v193, 0x389uLL);
  v189 = v86;
  v188 = v76;
  v187 = v74;
  v186 = v66;
  v48 = v103;
  v111[0] = v98;
  v111[1] = v101;
  LOBYTE(v181) = v67;
  v112 = 0xD000000000000041;
  v47 = 0x800000021478D520;
  v113 = 0x800000021478D520;
  *v114 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;
  *&v114[8] = 0x800000021478A360;

  v107 = v27;
  sub_213FDC9D0(v108, v27);
  v103 = v26;
  if (v95(v111, &v181, &v112))
  {
    v29 = v107;
    v28 = v108;
    sub_213FDC6D0(v108, v107);
    v30 = v65;

    sub_213FDC6D0(v28, v29);
    v111[0] = v94;
    v111[1] = v97;
    LOBYTE(v181) = v61;
    v112 = 0xD00000000000003BLL;
    v113 = 0x800000021478D570;
    *v114 = 0xD00000000000001CLL;
    *&v114[8] = v30;

    sub_213FDC9D0(v63, v62);
    if (v60(v111, &v181, &v112))
    {
      v35 = v62;
      v34 = v63;
      sub_213FDC6D0(v63, v62);

      sub_213FDC6D0(v34, v35);
      v111[0] = v81;
      v111[1] = v82;
      LOBYTE(v181) = v53;
      v112 = 0xD000000000000041;
      v113 = 0x800000021478D5B0;
      *v114 = 0xD00000000000001CLL;
      *&v114[8] = v65;

      sub_213FDC9D0(v57, v56);
      if (v52(v111, &v181, &v112))
      {
        v39 = v56;
        v38 = v57;
        sub_213FDC6D0(v57, v56);

        sub_213FDC6D0(v38, v39);
        v181 = v99;
        v182 = v100;
        LOBYTE(v111[0]) = v55;
        v112 = 0xD000000000000040;
        v113 = 0x800000021478D600;
        *v114 = 0xD00000000000001CLL;
        *&v114[8] = v65;

        sub_213FDC9D0(v50, v51);
        if (v54(&v181, v111, &v112))
        {
          v43 = v50;
          v42 = v51;
          sub_213FDC6D0(v50, v51);

          sub_213FB2DF4(v195, &qword_27C905E98, &qword_2147738D0);
          sub_213FB2DF4(v193, &qword_27C905DB8, &unk_2147598E0);
          (*(v109 + 8))(v8, v5);

          sub_213FDC6D0(v43, v42);
          LODWORD(v111[0]) = v104;
          LOBYTE(v42) = v48;
          BYTE4(v111[0]) = v48;
          *(v111 + 5) = v210;
          HIBYTE(v111[0]) = v211;
          v111[1] = v102;
          memcpy(&v111[2], v209, 0x6F3uLL);
          *(&v111[224] + 3) = v207;
          HIBYTE(v111[224]) = v208;
          v111[225] = v95;
          v111[226] = v103;
          v111[227] = v98;
          v111[228] = v101;
          LOBYTE(v111[229]) = v67;
          *(&v111[229] + 1) = *v206;
          HIDWORD(v111[229]) = *&v206[3];
          v111[230] = v60;
          v111[231] = v64;
          v111[232] = v94;
          v111[233] = v97;
          LOBYTE(v111[234]) = v61;
          BYTE1(v111[234]) = v93;
          memcpy(&v111[234] + 2, v190, 0x38FuLL);
          *(&v111[348] + 3) = v204;
          *(&v111[352] + 1) = *v203;
          *(&v111[355] + 3) = v201;
          *(&v111[360] + 5) = v199;
          *(&v111[361] + 5) = v197;
          HIBYTE(v111[348]) = v205;
          HIDWORD(v111[352]) = *&v203[3];
          HIBYTE(v111[355]) = v202;
          HIBYTE(v111[360]) = v200;
          HIBYTE(v111[361]) = v198;
          BYTE1(v111[348]) = v23;
          BYTE2(v111[348]) = v92;
          v44 = v91;
          v111[349] = v90;
          v111[350] = v91;
          v111[351] = v89;
          LOBYTE(v111[352]) = v88;
          v111[353] = v25;
          LOBYTE(v111[354]) = v106;
          BYTE1(v111[354]) = v105;
          BYTE2(v111[354]) = v87;
          HIDWORD(v111[354]) = v85;
          LOBYTE(v111[355]) = v86;
          BYTE1(v111[355]) = v84;
          BYTE2(v111[355]) = v83;
          v111[356] = v52;
          v111[357] = v58;
          v111[358] = v81;
          v111[359] = v82;
          LOBYTE(v111[360]) = v53;
          BYTE1(v111[360]) = v80;
          BYTE2(v111[360]) = v79;
          BYTE3(v111[360]) = v78;
          BYTE4(v111[360]) = v77;
          LODWORD(v111[361]) = v75;
          BYTE4(v111[361]) = v76;
          LODWORD(v111[362]) = v73;
          BYTE4(v111[362]) = v74;
          BYTE5(v111[362]) = v72;
          BYTE6(v111[362]) = v71;
          HIBYTE(v111[362]) = v70;
          v111[363] = v54;
          v111[364] = v59;
          v111[365] = v99;
          v111[366] = v100;
          LOBYTE(v111[367]) = v55;
          BYTE1(v111[367]) = v69;
          BYTE2(v111[367]) = v68;
          BYTE3(v111[367]) = v96;
          HIDWORD(v111[367]) = v49;
          LOBYTE(v43) = v66;
          LOBYTE(v111[368]) = v66;
          memcpy(v110, v111, 0xB81uLL);
          sub_2142E8A8C(v111, &v112);
          __swift_destroy_boxed_opaque_existential_1(v212);
          LODWORD(v112) = v104;
          BYTE4(v112) = v42;
          *(&v112 + 5) = v210;
          HIBYTE(v112) = v211;
          v113 = v102;
          memcpy(v114, v209, sizeof(v114));
          v115 = v207;
          v116 = v208;
          v117 = v95;
          v118 = v103;
          v119 = v98;
          v120 = v101;
          v121 = v67;
          *v122 = *v206;
          *&v122[3] = *&v206[3];
          v123 = v60;
          v124 = v64;
          v125 = v94;
          v126 = v97;
          v127 = v61;
          v128 = v93;
          memcpy(v129, v190, sizeof(v129));
          v130 = v23;
          v131 = v92;
          v134 = v90;
          v135 = v44;
          v136 = v89;
          v137 = v88;
          v139 = v25;
          v140 = v106;
          v141 = v105;
          v142 = v87;
          v143 = v85;
          v144 = v86;
          v132 = v204;
          *v138 = *v203;
          v133 = v205;
          *&v138[3] = *&v203[3];
          v145 = v84;
          v146 = v83;
          v147 = v201;
          v148 = v202;
          v149 = v52;
          v150 = v58;
          v151 = v81;
          v152 = v82;
          v153 = v53;
          v154 = v80;
          v155 = v79;
          v156 = v78;
          v157 = v77;
          v158 = v199;
          v159 = v200;
          v160 = v75;
          v161 = v76;
          v162 = v197;
          v163 = v198;
          v164 = v73;
          v165 = v74;
          v166 = v72;
          v167 = v71;
          v168 = v70;
          v169 = v54;
          v170 = v59;
          v171 = v99;
          v172 = v100;
          v173 = v55;
          v174 = v69;
          v175 = v68;
          v176 = v96;
          v177 = v49;
          v178 = v43;
          return sub_2142E890C(&v112);
        }

        sub_214031C4C();
        swift_allocError();
        *v45 = 0xD000000000000040;
        v45[1] = 0x800000021478D600;
        v46 = v65;
        v45[2] = 0xD00000000000001CLL;
        v45[3] = v46;
        swift_willThrow();

        sub_213FB2DF4(v195, &qword_27C905E98, &qword_2147738D0);
        sub_213FB2DF4(v193, &qword_27C905DB8, &unk_2147598E0);
        (*(v109 + 8))(v8, v5);

        sub_213FDC6D0(v50, v51);
        v107 = v101;
        v108 = v98;
        v62 = v97;
        v63 = v94;
        v56 = v82;
        v57 = v81;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v40 = 0xD000000000000041;
        v40[1] = 0x800000021478D5B0;
        v41 = v65;
        v40[2] = 0xD00000000000001CLL;
        v40[3] = v41;
        swift_willThrow();

        sub_213FB2DF4(v195, &qword_27C905E98, &qword_2147738D0);
        sub_213FB2DF4(v193, &qword_27C905DB8, &unk_2147598E0);
        (*(v109 + 8))(v8, v5);

        sub_213FDC6D0(v57, v56);
        v107 = v101;
        v108 = v98;
        v62 = v97;
        v63 = v94;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD00000000000003BLL;
      v36[1] = 0x800000021478D570;
      v37 = v65;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v37;
      swift_willThrow();

      sub_213FB2DF4(v195, &qword_27C905E98, &qword_2147738D0);
      sub_213FB2DF4(v193, &qword_27C905DB8, &unk_2147598E0);
      (*(v109 + 8))(v8, v5);

      sub_213FDC6D0(v63, v62);
      v107 = v101;
      v108 = v98;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v31 = v47;
    *v32 = 0xD000000000000041;
    v32[1] = v31;
    v33 = v65;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = v33;
    swift_willThrow();

    sub_213FB2DF4(v195, &qword_27C905E98, &qword_2147738D0);
    sub_213FB2DF4(v193, &qword_27C905DB8, &unk_2147598E0);
    (*(v109 + 8))(v8, v5);

    sub_213FDC6D0(v108, v107);
  }

  __swift_destroy_boxed_opaque_existential_1(v212);
  LODWORD(v112) = v104;
  BYTE4(v112) = v48;
  *(&v112 + 5) = v210;
  HIBYTE(v112) = v211;
  v113 = v102;
  memcpy(v114, v209, sizeof(v114));
  v115 = v207;
  v116 = v208;
  v117 = v95;
  v118 = v103;
  v119 = v108;
  v120 = v107;
  v121 = v67;
  *v122 = *v206;
  *&v122[3] = *&v206[3];
  v123 = v60;
  v124 = v64;
  v125 = v63;
  v126 = v62;
  v127 = v61;
  v128 = v93;
  memcpy(v129, v190, sizeof(v129));
  v130 = v23;
  v131 = v92;
  v134 = v90;
  v135 = v91;
  v136 = v89;
  v137 = v88;
  v139 = v25;
  v140 = v106;
  v141 = v105;
  v142 = v87;
  v143 = v85;
  v144 = v86;
  v132 = v204;
  *v138 = *v203;
  v133 = v205;
  *&v138[3] = *&v203[3];
  v145 = v84;
  v146 = v83;
  v147 = v201;
  v148 = v202;
  v149 = v52;
  v150 = v58;
  v151 = v57;
  v152 = v56;
  v153 = v53;
  v154 = v80;
  v155 = v79;
  v156 = v78;
  v157 = v77;
  v158 = v199;
  v159 = v200;
  v160 = v75;
  v161 = v76;
  v162 = v197;
  v163 = v198;
  v164 = v73;
  v165 = v74;
  v166 = v72;
  v167 = v71;
  v168 = v70;
  v169 = v54;
  v170 = v59;
  v171 = v50;
  v172 = v51;
  v173 = v55;
  v174 = v69;
  v175 = v68;
  v176 = v96;
  v177 = v49;
  v178 = v66;
  return sub_2142E890C(&v112);
}

uint64_t sub_2140F4774(uint64_t a1)
{
  v76 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905EB0, &qword_2146F40F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  LODWORD(v75) = *v1;
  v8 = *(v1 + 4);
  v74 = *(v1 + 8);
  memcpy(v83, (v1 + 16), 0x6F3uLL);
  v9 = *(v1 + 1816);
  v72 = *(v1 + 1824);
  v73 = v9;
  v68 = *(v1 + 1856);
  v71 = *(v1 + 1864);
  v85 = *(v1 + 1873);
  memcpy(v84, (v1 + 1880), 0x389uLL);
  v10 = *(v1 + 2785);
  v66 = *(v1 + 2786);
  v67 = v10;
  v11 = *(v1 + 2800);
  v69 = *(v1 + 2792);
  v70 = v11;
  v65 = *(v1 + 2808);
  v64 = *(v1 + 2816);
  v63 = *(v1 + 2824);
  v12 = *(v1 + 2832);
  v61 = *(v1 + 2833);
  v62 = v12;
  v13 = *(v1 + 2834);
  v59 = *(v1 + 2836);
  v60 = v13;
  v58 = *(v1 + 2840);
  LODWORD(v11) = *(v1 + 2842);
  v36 = *(v1 + 2841);
  v37 = v11;
  v14 = *(v1 + 2864);
  v38 = *(v1 + 2872);
  v39 = v14;
  LODWORD(v11) = *(v1 + 2882);
  v40 = *(v1 + 2881);
  v41 = v11;
  LODWORD(v11) = *(v1 + 2884);
  v42 = *(v1 + 2883);
  v43 = v11;
  LODWORD(v14) = *(v1 + 2888);
  v44 = *(v1 + 2892);
  v45 = v14;
  LODWORD(v14) = *(v1 + 2896);
  v46 = *(v1 + 2900);
  v47 = v14;
  LODWORD(v11) = *(v1 + 2902);
  v48 = *(v1 + 2901);
  v49 = v11;
  v50 = *(v1 + 2903);
  v15 = *(v1 + 2920);
  v51 = *(v1 + 2928);
  v52 = v15;
  LODWORD(v11) = *(v1 + 2938);
  v53 = *(v1 + 2937);
  v54 = v11;
  LODWORD(v15) = *(v1 + 2939);
  v57 = *(v1 + 2940);
  LODWORD(v11) = *(v1 + 2944);
  v55 = v15;
  v56 = v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142E8960();
  sub_2146DAA28();
  LODWORD(v82[0]) = v75;
  BYTE4(v82[0]) = v8;
  v81[0] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  v17 = sub_2142E62D8();
  v18 = v76;
  sub_2146DA388();
  if (v18)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v75 = v17;
  v76 = v16;
  v19 = v72;
  v20 = v73;
  v21 = v71;
  v35 = v5;
  v82[0] = v74;
  v81[0] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905D28, &qword_2146F4088);
  v23 = sub_2142E82A8();
  sub_2146DA388();
  v33 = v23;
  v34 = v22;
  memcpy(v82, v83, 0x6F3uLL);
  v88 = 2;
  v74 = v4;
  sub_213FB2E54(v83, v81, &qword_27C905E98, &qword_2147738D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905E98, &qword_2147738D0);
  sub_2142E8AE8();
  sub_2146DA388();
  v32 = v7;
  memcpy(v81, v82, 0x6F3uLL);
  sub_213FB2DF4(v81, &qword_27C905E98, &qword_2147738D0);
  if (v19 == 1 || (v80[0] = v20, v80[1] = v19, v79[0] = 3, v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), v26 = sub_214045AC0(), sub_2146DA388(), v73 = v26, v21 == 1) || (v80[0] = v68, v80[1] = v21, v79[0] = 4, sub_2146DA388(), v28 = v69, v27 = v70, v72 = v25, LOBYTE(v80[0]) = v85, v79[0] = 5, v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0), v30 = sub_2142E1D30(), sub_2146DA388(), v68 = v30, v71 = v29, memcpy(v80, v84, 0x389uLL), v87 = 6, sub_213FB2E54(v84, v79, &qword_27C905DB8, &unk_2147598E0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DB8, &unk_2147598E0), sub_2142E87B8(), sub_2146DA388(), memcpy(v79, v80, 0x389uLL), sub_213FB2DF4(v79, &qword_27C905DB8, &unk_2147598E0), LOBYTE(v77) = v67, v86 = 7, sub_2146DA388(), LOBYTE(v77) = v66, v86 = 8, sub_2146DA388(), v77 = v28, v78 = v27, v86 = 9, sub_2146DA388(), v77 = v65, v86 = 10, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905CB0, &qword_2146F4050), sub_2142E76F0(), sub_2146DA388(), LOBYTE(v77) = v64, v86 = 11, sub_2146DA388(), v77 = v63, v86 = 12, sub_2146DA388(), LOBYTE(v77) = v62, v86 = 13, sub_2146DA388(), LOBYTE(v77) = v61, v86 = 14, sub_2146DA388(), LOBYTE(v77) = v60, v86 = 15, sub_2146DA388(), LODWORD(v77) = v59, BYTE4(v77) = v58, v86 = 16, sub_2146DA388(), LOBYTE(v77) = v36, v86 = 17, sub_2146DA388(), LOBYTE(v77) = v37, v86 = 18, sub_2146DA388(), v38 == 1) || (v77 = v39, v78 = v38, v86 = 19, sub_2146DA388(), LOBYTE(v77) = v40, v86 = 20, sub_2146DA388(), LOBYTE(v77) = v41, v86 = 21, sub_2146DA388(), LOBYTE(v77) = v42, v86 = 22, sub_2146DA388(), LOBYTE(v77) = v43, v86 = 23, sub_2146DA388(), LODWORD(v77) = v45, BYTE4(v77) = v44, v86 = 24, sub_2146DA388(), LODWORD(v77) = v47, BYTE4(v77) = v46, v86 = 25, sub_2146DA388(), LOBYTE(v77) = v48, v86 = 26, sub_2146DA388(), LOBYTE(v77) = v49, v86 = 27, sub_2146DA388(), LOBYTE(v77) = v50, v86 = 28, sub_2146DA388(), v51 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v77 = v52;
    v78 = v51;
    v86 = 29;
    sub_2146DA388();
    LOBYTE(v77) = v53;
    v86 = 30;
    sub_2146DA388();
    LOBYTE(v77) = v54;
    v86 = 31;
    sub_2146DA388();
    LOBYTE(v77) = v55;
    v86 = 32;
    sub_2146DA388();
    LODWORD(v77) = v57;
    BYTE4(v77) = v56;
    v86 = 33;
    sub_2146DA388();
    return (*(v35 + 8))(v32, v74);
  }

  return result;
}

uint64_t sub_2140F5448@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 5) = v3;
  return result;
}

uint64_t sub_2140F5460()
{
  if (*v0)
  {
    return 0x616552657661656CLL;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2140F54A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616552657661656CLL && a2 == 0xEB000000006E6F73)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140F5584(uint64_t a1)
{
  v2 = sub_2142E8BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F55C0(uint64_t a1)
{
  v2 = sub_2142E8BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F55FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905EC8, &qword_2146F40F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E8BC0();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v18 = 0;
    sub_2142E6128();
    sub_2146DA1C8();
    v9 = v14;
    v10 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905ED8, &qword_2146F4100);
    v16 = 1;
    sub_2142E8C14();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v17;
    *a2 = v9;
    *(a2 + 4) = v10;
    *(a2 + 5) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140F5800(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905EF0, &qword_2146F4108);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 4);
  HIDWORD(v11) = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E8BC0();
  sub_2146DAA28();
  v13 = v7;
  v14 = v8;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v9 = v12;
  sub_2146DA388();
  if (!v9)
  {
    v16 = BYTE4(v11);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905ED8, &qword_2146F4100);
    sub_2142E8CEC();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2140F5A00@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a7;
  v21 = *a1;
  v22 = *a4;
  v23 = a4[2];
  v24 = a4[1];
  v25 = a4[3];
  v26 = a4[4];
  v27 = a4[5];
  sub_214655A1C(&v33);
  v14 = v33;
  v13 = v34;
  v15 = v36;
  v20 = a8;
  v49[0] = a8;
  v49[1] = a10;
  v16 = v35;
  v28 = v37;
  v51 = v37;
  v33 = 0xD000000000000027;
  v34 = 0x800000021478D650;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;

  sub_213FDC9D0(v16, v15);
  v17 = v14(v49, &v51, &v33);
  if (v29)
  {
  }

  else
  {
    if (v17)
    {
      sub_213FDC6D0(v16, v15);

      result = sub_213FDC6D0(v16, v15);
      *a9 = v21;
      *(a9 + 4) = a2;
      *(a9 + 8) = BYTE4(a2) & 1;
      *(a9 + 9) = a3;
      *(a9 + 16) = v22;
      *(a9 + 24) = v24;
      *(a9 + 32) = v23;
      *(a9 + 40) = v25;
      *(a9 + 48) = v26;
      *(a9 + 56) = v27;
      *(a9 + 64) = a5;
      *(a9 + 65) = a6;
      *(a9 + 66) = v50;
      *(a9 + 72) = v14;
      *(a9 + 80) = v13;
      *(a9 + 88) = v20;
      *(a9 + 96) = a10;
      *(a9 + 104) = v28;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000027;
    v19[1] = 0x800000021478D650;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v16, v15);
  LOBYTE(v33) = v21;
  HIDWORD(v33) = a2;
  LOBYTE(v34) = BYTE4(a2) & 1;
  BYTE1(v34) = a3;
  v35 = v22;
  v36 = v24;
  v37 = v23;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = a5;
  v42 = a6;
  v43 = v50;
  v44 = v14;
  v45 = v13;
  v46 = v16;
  v47 = v15;
  v48 = v28;
  return sub_2142E8DC4(&v33);
}

uint64_t sub_2140F5CB0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 == 4)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v2 = 1701869940;
    v3 = 0x6E61576F746F7270;
    if (v1 != 2)
    {
      v3 = 0x6144657469766E69;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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
}

uint64_t sub_2140F5DC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214360F94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140F5DEC(uint64_t a1)
{
  v2 = sub_2142E8E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F5E28(uint64_t a1)
{
  v2 = sub_2142E8E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F5E64@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F08, &qword_2146F4110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = a1[3];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E8E18();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v10 = v6;
  v62 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F18, &qword_2146F4118);
  LOBYTE(v63) = 0;
  sub_2142E8E6C();
  sub_2146DA1C8();
  v11 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v63) = 1;
  sub_2142E6128();
  sub_2146DA1C8();
  v60 = v11;
  v61 = v69;
  v13 = BYTE4(v69);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v63) = 2;
  sub_2142E1378();
  sub_2146DA1C8();
  v59 = v14;
  v58 = v13;
  LODWORD(v14) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F30, &qword_2146F4120);
  LOBYTE(v63) = 3;
  sub_2142E8F44();
  sub_2146DA1C8();
  v51 = v14;
  v55 = v69;
  v56 = v70;
  v57 = v72;
  v52 = v71;
  v53 = v73;
  v54 = v74;
  LOBYTE(v63) = 4;
  sub_2146DA1C8();
  v15 = v69;
  LOBYTE(v63) = 5;
  sub_2146DA1C8();
  v50 = v15;
  v16 = v69;
  LOBYTE(v63) = 6;
  sub_2146DA1C8();
  LODWORD(v59) = v16;
  LODWORD(v14) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v88 = 7;
  sub_2142E12FC();
  sub_2146DA1C8();
  v46 = v14;
  v17 = v90;
  v47 = v89;
  sub_2142E901C(v55, v56, v52, v57, v53, v54, sub_213FDCA18);
  sub_214655A1C(&v69);
  v18 = v70;
  v19 = v72;
  v48 = v71;
  v49 = v69;
  v87[0] = v47;
  v87[1] = v17;
  v44 = v17;
  v42 = v73;
  LOBYTE(v63) = v73;
  v69 = 0xD000000000000027;
  v70 = 0x800000021478D650;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v43 = v19;
  sub_213FDC9D0(v48, v19);
  v45 = v18;
  v20 = v49(v87, &v63, &v69);
  v41 = v5;
  if (v20)
  {
    sub_213FDC6D0(v48, v43);

    v22 = v55;
    v21 = v56;
    v23 = v52;
    v24 = v57;
    v25 = v53;
    sub_2142E901C(v55, v56, v52, v57, v53, v54, sub_213FDC6BC);
    (*(v10 + 8))(v8, v41);
    v26 = v45;

    sub_213FDC6D0(v48, v43);
    v27 = v60;
    LOBYTE(v63) = v60;
    DWORD1(v63) = v61;
    BYTE8(v63) = v58;
    BYTE9(v63) = v51;
    *&v64 = v22;
    *(&v64 + 1) = v21;
    *&v65 = v23;
    *(&v65 + 1) = v24;
    v28 = v54;
    v66 = __PAIR128__(v54, v25);
    LOBYTE(v67) = v50;
    LOBYTE(v21) = v59;
    BYTE1(v67) = v59;
    BYTE2(v67) = v46;
    *(&v67 + 3) = v91;
    BYTE7(v67) = v92;
    *(&v67 + 1) = v49;
    *&v68[0] = v26;
    *(&v68[0] + 1) = v47;
    *&v68[1] = v44;
    LOBYTE(v26) = v42;
    BYTE8(v68[1]) = v42;
    v29 = v64;
    v30 = v62;
    *v62 = v63;
    v30[1] = v29;
    v31 = v65;
    v32 = v66;
    *(v30 + 89) = *(v68 + 9);
    v33 = v68[0];
    v30[4] = v67;
    v30[5] = v33;
    v30[2] = v31;
    v30[3] = v32;
    sub_2142E90AC(&v63, &v69);
    __swift_destroy_boxed_opaque_existential_1(v97);
    LOBYTE(v69) = v27;
    *(&v69 + 1) = v95;
    BYTE3(v69) = v96;
    HIDWORD(v69) = v61;
    LOBYTE(v70) = v58;
    BYTE1(v70) = v51;
    *(&v70 + 2) = v93;
    HIWORD(v70) = v94;
    v71 = v22;
    v72 = v56;
    v73 = v23;
    v74 = v57;
    v75 = v53;
    v76 = v28;
    v77 = v50;
    v78 = v21;
    v79 = v46;
    v80 = v91;
    v81 = v92;
    v82 = v49;
    v83 = v45;
    v84 = v47;
    v85 = v44;
    v86 = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000027;
    v34[1] = 0x800000021478D650;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    v36 = v52;
    v35 = v53;
    v37 = v54;
    sub_2142E901C(v55, v56, v52, v57, v53, v54, sub_213FDC6BC);
    (*(v10 + 8))(v8, v41);
    v38 = v45;

    v39 = v48;
    v40 = v43;
    sub_213FDC6D0(v48, v43);
    __swift_destroy_boxed_opaque_existential_1(v97);
    LOBYTE(v69) = v60;
    *(&v69 + 1) = v95;
    BYTE3(v69) = v96;
    HIDWORD(v69) = v61;
    LOBYTE(v70) = v58;
    BYTE1(v70) = v51;
    *(&v70 + 2) = v93;
    HIWORD(v70) = v94;
    v71 = v55;
    v72 = v56;
    v73 = v36;
    v74 = v57;
    v75 = v35;
    v76 = v37;
    v77 = v50;
    v78 = v59;
    v79 = v46;
    v81 = v92;
    v80 = v91;
    v82 = v49;
    v83 = v38;
    v84 = v39;
    v85 = v40;
    v86 = v42;
  }

  return sub_2142E8DC4(&v69);
}

uint64_t sub_2140F6778(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F48, &qword_2146F4128);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = *v1;
  v40 = *(v1 + 1);
  v8 = v1[8];
  v31 = v1[9];
  v32 = v8;
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v11 = *(v1 + 5);
  v29 = *(v1 + 4);
  v30 = v10;
  v28 = v11;
  v12 = *(v1 + 7);
  v27 = *(v1 + 6);
  v25 = v9;
  v26 = v12;
  LODWORD(v9) = v1[64];
  v23 = v1[65];
  v24 = v9;
  HIDWORD(v22) = v1[66];
  v13 = *(v1 + 11);
  v14 = *(v1 + 12);
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_2142E8E18();
  sub_2146DAA28();
  LOBYTE(v34) = v7;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F18, &qword_2146F4118);
  sub_2142E9108();
  v19 = v33;
  sub_2146DA388();
  if (v19)
  {
    return (*(v4 + 8))(v6, v18);
  }

  LODWORD(v34) = v40;
  v20 = v31;
  BYTE4(v34) = v32;
  v41 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  sub_2146DA388();
  LOBYTE(v34) = v20;
  v41 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  v34 = v25;
  v35 = v30;
  v36 = v29;
  v37 = v28;
  v38 = v27;
  v39 = v26;
  v41 = 3;
  sub_2142E901C(v25, v30, v29, v28, v27, v26, sub_213FDCA18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F30, &qword_2146F4120);
  sub_2142E91E0();
  sub_2146DA388();
  sub_2142E901C(v34, v35, v36, v37, v38, v39, sub_213FDC6BC);
  LOBYTE(v34) = v24;
  v41 = 4;
  sub_2146DA388();
  LOBYTE(v34) = v23;
  v41 = 5;
  sub_2146DA388();
  LOBYTE(v34) = BYTE4(v22);
  v41 = 6;
  sub_2146DA388();
  if (v14 != 1)
  {
    v34 = v13;
    v35 = v14;
    v41 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v4 + 8))(v6, v18);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140F6C20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_2140F6C30()
{
  v1 = 0x6F6C42616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6F666E496C6C6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x626F6C42656B73;
  }
}

uint64_t sub_2140F6C98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436123C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140F6CC0(uint64_t a1)
{
  v2 = sub_2142E92B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F6CFC(uint64_t a1)
{
  v2 = sub_2142E92B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F6D38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F70, &qword_2146F4130);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E92B8();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v21 = 0;
    sub_2142E1278();
    sub_2146DA1C8();
    v18 = *(&v20 + 1);
    v9 = v20;
    v21 = 1;
    sub_2146DA1C8();
    v16 = v20;
    v17 = v9;
    v10 = *(&v20 + 1);
    v21 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v12 = v20;
    v13 = v10;
    v14 = v19;
    v15 = v18;
    *v19 = v17;
    v14[1] = v15;
    v14[2] = v16;
    v14[3] = v13;
    *(v14 + 2) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140F6FB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F80, &qword_2146F4138);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FDCA18(v8, v7);
  sub_2142E92B8();
  sub_2146DAA28();
  v21 = v8;
  v22 = v7;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  v11 = v20;
  sub_2146DA388();
  sub_213FDC6BC(v21, v22);
  if (!v11)
  {
    v13 = v16;
    v12 = v17;
    v21 = v19;
    v22 = v18;
    v23 = 1;
    sub_213FDCA18(v19, v18);
    sub_2146DA388();
    sub_213FDC6BC(v21, v22);
    v21 = v12;
    v22 = v13;
    v23 = 2;
    sub_213FDCA18(v12, v13);
    sub_2146DA388();
    sub_213FDC6BC(v21, v22);
  }

  return (*(v4 + 8))(v6, v3);
}

int *sub_2140F7210@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  sub_214328704(a1, a9, type metadata accessor for Metadata);
  result = type metadata accessor for ChatSessionClose(0);
  *(a9 + result[5]) = a2;
  *(a9 + result[6]) = a3;
  v19 = (a9 + result[7]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a9 + result[8]);
  *v20 = a6;
  v20[1] = a7;
  v21 = (a9 + result[9]);
  *v21 = a8;
  v21[1] = a10;
  *(a9 + result[10]) = a11;
  return result;
}

unint64_t sub_2140F72E0()
{
  v1 = *v0;
  v2 = 0x617461646174656DLL;
  v3 = 0x61737265766E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x656C646E6168;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656772656D457369;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
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

uint64_t sub_2140F73CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214361360(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140F73F4(uint64_t a1)
{
  v2 = sub_2142E930C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F7430(uint64_t a1)
{
  v2 = sub_2142E930C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F746C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F88, &qword_2146F4140);
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v28 - v8;
  v10 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E930C();
  v11 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v33;
    v13 = v7;
    LOBYTE(v36) = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata, byte_2146FB080);
    v14 = v34;
    v15 = v11;
    sub_2146DA1C8();
    LOBYTE(v36) = 1;
    v38 = sub_2146DA178();
    LOBYTE(v36) = 2;
    v32 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v39 = 3;
    sub_2142E12FC();
    sub_2146DA1C8();
    v17 = v37;
    v31 = v36;
    v39 = 4;
    sub_2146DA1C8();
    v18 = v17;
    v19 = v36;
    v20 = v37;
    LOBYTE(v36) = 5;
    v28 = sub_2146DA168();
    v29 = v19;
    v30 = v21;
    LOBYTE(v36) = 6;
    LOBYTE(v19) = sub_2146DA178();
    (*(v13 + 8))(v15, v14);
    sub_214328704(v6, v12, type metadata accessor for Metadata);
    v22 = type metadata accessor for ChatSessionClose(0);
    *(v12 + v22[5]) = v38 & 1;
    *(v12 + v22[6]) = v32;
    v23 = (v12 + v22[7]);
    *v23 = v31;
    v23[1] = v18;
    v24 = (v12 + v22[8]);
    v25 = v28;
    *v24 = v29;
    v24[1] = v20;
    v26 = (v12 + v22[9]);
    v27 = v30;
    *v26 = v25;
    v26[1] = v27;
    *(v12 + v22[10]) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_2140F78A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905F98, &qword_2146F4148);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E930C();
  sub_2146DAA28();
  LOBYTE(v11) = 0;
  type metadata accessor for Metadata(0);
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata, a1_27);
  sub_2146DA388();
  if (!v2)
  {
    v9 = type metadata accessor for ChatSessionClose(0);
    LOBYTE(v11) = 1;
    sub_2146DA338();
    LOBYTE(v11) = 2;
    sub_2146DA368();
    v11 = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = *(v3 + *(v9 + 32));
    v12 = 4;
    sub_2146DA388();
    LOBYTE(v11) = 5;
    sub_2146DA328();
    LOBYTE(v11) = 6;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2140F7BF4()
{
  if (*v0)
  {
    return 1885956195;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2140F7C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885956195 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140F7CF4(uint64_t a1)
{
  v2 = sub_2142E9360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F7D30(uint64_t a1)
{
  v2 = sub_2142E9360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F7D6C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FA0, &qword_2146F4158);
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9360();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v12 = v16;
    v20 = 0;
    sub_2142E93B4();
    v13 = v17;
    sub_2146DA1C8();
    v18 = v21;
    v19 = 1;
    sub_2142E9408();
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v13);
    v14 = type metadata accessor for MBDChip(0);
    sub_21408AC04(v11, &v12[*(v14 + 20)], &qword_27C903F58, &qword_2146F4150);
    *v12 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140F7FCC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FC8, &qword_2146F4160);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9360();
  sub_2146DAA28();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2142E94BC();
  sub_2146DA388();
  if (!v2)
  {
    type metadata accessor for MBDChip(0);
    v10[13] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
    sub_2142E9510();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

BlastDoor::MBDChipList __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MBDChipList.init(with:replied:)(BlastDoor::MBDChipList with, Swift::Bool replied)
{
  *v2 = with.chipList._rawValue;
  *(v2 + 8) = replied;
  with.replied = replied;
  return with;
}

uint64_t sub_2140F81B4()
{
  if (*v0)
  {
    return 0x6465696C706572;
  }

  else
  {
    return 0x7473694C70696863;
  }
}

uint64_t sub_2140F81F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473694C70696863 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465696C706572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140F82CC(uint64_t a1)
{
  v2 = sub_2142E95C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F8308(uint64_t a1)
{
  v2 = sub_2142E95C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipList.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FE8, &qword_2146F4168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E95C4();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FF8, &qword_2146F4170);
    v12[15] = 0;
    sub_2142E9618();
    sub_2146DA1C8();
    v9 = v13;
    v12[14] = 1;
    v10 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipList.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906008, &qword_2146F4178);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E95C4();

  sub_2146DAA28();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FF8, &qword_2146F4170);
  sub_2142E96CC();
  sub_2146DA388();

  if (!v2)
  {
    v11 = 1;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2140F8708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v86 = a4;
  v12 = sub_2146D8B08();
  v71 = *(v12 - 8);
  v13 = *(v71 + 16);
  v73 = a1;
  v13(a9, a1, v12);
  v14 = type metadata accessor for MBDActionCalendar(0);
  v70 = a2;
  v72 = v12;
  v13(a9 + v14[5], a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  LOBYTE(v82) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 100;
  *(v17 + 24) = v82;
  *(v16 + 16) = sub_21438F518;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v82);
  v18 = v83;
  v19 = v84;
  LOBYTE(v12) = v85;
  sub_2144A2E70(&v78);
  v20 = v79;
  v21 = v80;
  v22 = v81;
  sub_2144A2FBC(v76);
  v23 = v77;
  v24 = a9 + v14[6];
  *v24 = v82;
  *(v24 + 16) = v18;
  *(v24 + 24) = v19;
  *(v24 + 32) = v12;
  v25 = a9 + v14[7];
  *v25 = v78;
  *(v25 + 16) = v20;
  *(v25 + 24) = v21;
  *(v25 + 32) = v22;
  v65 = a9;
  v26 = a9 + v14[8];
  v27 = v76[1];
  *v26 = v76[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v23;
  v28 = *v24;
  v29 = *(v24 + 8);
  v30 = *(v24 + 24);
  v64 = *(v24 + 16);
  v31 = *(v24 + 32);
  *&v78 = a3;
  *(&v78 + 1) = v86;
  v66 = v31;
  LOBYTE(v76[0]) = v31;
  *&v82 = 0xD000000000000017;
  *(&v82 + 1) = 0x800000021478D680;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478A360;

  v32 = v28(&v78, v76, &v82);
  if (v67)
  {

LABEL_6:

    v40 = *(v71 + 8);
    v40(v70, v72);
    v40(v73, v72);

    *v24 = v28;
    *(v24 + 8) = v29;
    *(v24 + 16) = v64;
    *(v24 + 24) = v30;
    *(v24 + 32) = v66;
    return sub_21432887C(v65, type metadata accessor for MBDActionCalendar);
  }

  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000017;
    v39[1] = 0x800000021478D680;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *v24 = v28;
  *(v24 + 8) = v29;
  v33 = v86;
  *(v24 + 16) = a3;
  *(v24 + 24) = v33;
  *(v24 + 32) = v66;
  v35 = *v25;
  v34 = *(v25 + 8);
  v36 = *(v25 + 16);
  v37 = *(v25 + 24);
  LOBYTE(v33) = *(v25 + 32);
  *&v78 = a5;
  *(&v78 + 1) = a6;
  v75 = v33;
  LOBYTE(v76[0]) = v33;
  *&v82 = 0xD000000000000020;
  *(&v82 + 1) = 0x800000021478D6A0;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v86 = v35;
  v38 = v35(&v78, v76, &v82);
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000020;
    v51[1] = 0x800000021478D6A0;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    v52 = *(v71 + 8);
    v52(v70, v72);
    v52(v73, v72);
    v53 = *(v25 + 16);
    v54 = *(v25 + 24);

    sub_213FDC6D0(v53, v54);
    *v25 = v86;
    *(v25 + 8) = v34;
    *(v25 + 16) = v36;
    *(v25 + 24) = v37;
    *(v25 + 32) = v75;
    return sub_21432887C(v65, type metadata accessor for MBDActionCalendar);
  }

  sub_213FDC6D0(v36, v37);

  v42 = *(v25 + 16);
  v43 = *(v25 + 24);

  sub_213FDC6D0(v42, v43);
  *v25 = v86;
  *(v25 + 8) = v34;
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  *(v25 + 32) = v75;
  v44 = *v26;
  v45 = *(v26 + 8);
  v46 = *(v26 + 16);
  v47 = *(v26 + 24);
  v48 = *(v26 + 32);
  *&v78 = a7;
  *(&v78 + 1) = a8;
  v49 = v44;
  LODWORD(v86) = v48;
  LOBYTE(v76[0]) = v48;
  *&v82 = 0xD00000000000001DLL;
  *(&v82 + 1) = 0x800000021478D6D0;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478A360;

  sub_213FDC9D0(v46, v47);
  v50 = v49(&v78, v76, &v82);
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD00000000000001DLL;
    v58[1] = 0x800000021478D6D0;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    v59 = *(v71 + 8);
    v59(v70, v72);
    v59(v73, v72);
    v60 = *(v26 + 16);
    v61 = *(v26 + 24);

    sub_213FDC6D0(v60, v61);
    *v26 = v49;
    *(v26 + 8) = v45;
    *(v26 + 16) = v46;
    *(v26 + 24) = v47;
    *(v26 + 32) = v86;
    return sub_21432887C(v65, type metadata accessor for MBDActionCalendar);
  }

  sub_213FDC6D0(v46, v47);

  v55 = *(v71 + 8);
  v55(v70, v72);
  v55(v73, v72);
  v56 = *(v26 + 16);
  v57 = *(v26 + 24);

  result = sub_213FDC6D0(v56, v57);
  *v26 = v49;
  *(v26 + 8) = v45;
  *(v26 + 16) = a7;
  *(v26 + 24) = a8;
  *(v26 + 32) = v86;
  return result;
}

uint64_t sub_2140F8E68()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x656C746974;
  v4 = 0x72637365446C6163;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6954646E65;
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

uint64_t sub_2140F8F18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143615BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140F8F40(uint64_t a1)
{
  v2 = sub_2142E9780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140F8F7C(uint64_t a1)
{
  v2 = sub_2142E9780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140F8FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v110 = sub_2146D8B08();
  v108 = *(v110 - 8);
  v3 = MEMORY[0x28223BE20](v110);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v91 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906018, &qword_2146F4180);
  v109 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v91 - v9;
  v11 = type metadata accessor for MBDActionCalendar(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2142E9780();
  v15 = v111;
  sub_2146DAA08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v122);
  }

  v16 = v11;
  v111 = v5;
  v106 = v13;
  LOBYTE(v118) = 0;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v17 = v110;
  sub_2146DA1C8();
  v18 = v10;
  LOBYTE(v118) = 1;
  sub_2146DA1C8();
  LOBYTE(v118) = 2;
  v103 = sub_2146DA168();
  v105 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v114) = 3;
  v104 = sub_2142E12FC();
  sub_2146DA1C8();
  v102 = v118;
  LOBYTE(v114) = 4;
  sub_2146DA1C8();
  v99 = v8;
  v101 = *(&v118 + 1);
  v92 = v118;
  v21 = v108;
  v22 = *(v108 + 16);
  v23 = v7;
  v24 = v106;
  v98 = v23;
  v22(v106);
  (v22)(v24 + v16[5], v111, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  LOBYTE(v118) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 100;
  *(v27 + 24) = v118;
  *(v26 + 16) = sub_21438F518;
  *(v26 + 24) = v27;
  *(inited + 32) = v26;
  sub_214042B80(inited, &v118);
  v28 = v119;
  v104 = v120;
  LODWORD(v100) = v121;
  sub_2144A2E70(&v114);
  v29 = v115;
  v30 = v116;
  LODWORD(v97) = v117;
  sub_2144A2FBC(v112);
  v31 = v113;
  v32 = v24 + v16[6];
  *v32 = v118;
  v33 = v104;
  *(v32 + 16) = v28;
  *(v32 + 24) = v33;
  *(v32 + 32) = v100;
  v34 = v24 + v16[7];
  *v34 = v114;
  *(v34 + 16) = v29;
  *(v34 + 24) = v30;
  *(v34 + 32) = v97;
  v35 = v24 + v16[8];
  v36 = v112[1];
  *v35 = v112[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v31;
  v38 = *v32;
  v37 = *(v32 + 8);
  v39 = *(v32 + 24);
  v93 = *(v32 + 16);
  LODWORD(v33) = *(v32 + 32);
  *&v114 = v103;
  *(&v114 + 1) = v105;
  LODWORD(v97) = v33;
  LOBYTE(v112[0]) = v33;
  *&v118 = 0xD000000000000017;
  *(&v118 + 1) = 0x800000021478D680;
  v94 = 0x800000021478D680;
  v119 = 0xD00000000000001CLL;
  v120 = 0x800000021478A360;
  v100 = 0x800000021478A360;
  v95 = v39;

  v96 = v38;
  v40 = v38(&v114, v112, &v118);
  v104 = 0;
  v41 = v94;
  v91 = v35;
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    v51 = swift_allocError();
    *v52 = 0xD000000000000017;
    v52[1] = v41;
    v53 = v100;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = v53;
    v104 = v51;
    swift_willThrow();

    v54 = *(v21 + 8);
    v55 = v110;
    v54(v111, v110);
    v54(v98, v55);
    (*(v109 + 8))(v18, v99);

    *v32 = v96;
    *(v32 + 8) = v37;
    v56 = v95;
    *(v32 + 16) = v93;
    *(v32 + 24) = v56;
    *(v32 + 32) = v97;
LABEL_8:
    v57 = v106;
    __swift_destroy_boxed_opaque_existential_1(v122);
    return sub_21432887C(v57, type metadata accessor for MBDActionCalendar);
  }

  v42 = v100;

  *v32 = v96;
  *(v32 + 8) = v37;
  v43 = v105;
  *(v32 + 16) = v103;
  *(v32 + 24) = v43;
  *(v32 + 32) = v97;
  v45 = *v34;
  v44 = *(v34 + 8);
  v46 = *(v34 + 16);
  v47 = *(v34 + 24);
  LODWORD(v43) = *(v34 + 32);
  v48 = v102;
  v114 = v102;
  LODWORD(v103) = v43;
  LOBYTE(v112[0]) = v43;
  *&v118 = 0xD000000000000020;
  *(&v118 + 1) = 0x800000021478D6A0;
  v95 = 0x800000021478D6A0;
  v119 = 0xD00000000000001CLL;
  v120 = v42;

  v97 = v46;
  v96 = v47;
  sub_213FDC9D0(v46, v47);
  v49 = v104;
  v105 = v45;
  v50 = v45(&v114, v112, &v118);
  v104 = v49;
  if (v49)
  {

LABEL_13:

    v71 = v99;
    v72 = *(v21 + 8);
    v73 = v110;
    v72(v111, v110);
    v72(v98, v73);
    (*(v109 + 8))(v18, v71);
    v74 = *(v34 + 16);
    v75 = *(v34 + 24);

    sub_213FDC6D0(v74, v75);
    *v34 = v105;
    *(v34 + 8) = v44;
    v76 = v96;
    *(v34 + 16) = v97;
    *(v34 + 24) = v76;
    *(v34 + 32) = v103;
    goto LABEL_8;
  }

  v58 = v95;
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    v69 = swift_allocError();
    *v70 = 0xD000000000000020;
    v70[1] = v58;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = v42;
    v104 = v69;
    swift_willThrow();
    goto LABEL_13;
  }

  v94 = v18;
  sub_213FDC6D0(v97, v96);

  v59 = *(v34 + 16);
  v60 = *(v34 + 24);

  sub_213FDC6D0(v59, v60);
  *v34 = v105;
  *(v34 + 8) = v44;
  *(v34 + 16) = v48;
  *(v34 + 32) = v103;
  v62 = *v91;
  v61 = *(v91 + 8);
  v64 = *(v91 + 16);
  v63 = *(v91 + 24);
  v65 = *(v91 + 32);
  *&v114 = v92;
  *(&v114 + 1) = v101;
  LOBYTE(v112[0]) = v65;
  *&v118 = 0xD00000000000001DLL;
  *(&v118 + 1) = 0x800000021478D6D0;
  v119 = 0xD00000000000001CLL;
  v120 = v42;

  v66 = v63;
  sub_213FDC9D0(v64, v63);
  v67 = v104;
  v68 = v62(&v114, v112, &v118);
  v104 = v67;
  if (v67)
  {

LABEL_17:

    v86 = *(v108 + 8);
    v87 = v110;
    v86(v111, v110);
    v86(v98, v87);
    (*(v109 + 8))(v94, v99);
    v88 = v91;
    v89 = *(v91 + 16);
    v90 = *(v91 + 24);

    sub_213FDC6D0(v89, v90);
    *v88 = v62;
    *(v88 + 8) = v61;
    *(v88 + 16) = v64;
    *(v88 + 24) = v66;
    *(v88 + 32) = v65;
    goto LABEL_8;
  }

  if ((v68 & 1) == 0)
  {
    sub_214031C4C();
    v83 = swift_allocError();
    *v84 = 0xD00000000000001DLL;
    v84[1] = 0x800000021478D6D0;
    v85 = v100;
    v84[2] = 0xD00000000000001CLL;
    v84[3] = v85;
    v104 = v83;
    swift_willThrow();
    goto LABEL_17;
  }

  sub_213FDC6D0(v64, v66);

  v77 = *(v108 + 8);
  v78 = v110;
  v77(v111, v110);
  v77(v98, v78);
  (*(v109 + 8))(v94, v99);
  v79 = v91;
  v80 = *(v91 + 16);
  v81 = *(v91 + 24);

  sub_213FDC6D0(v80, v81);
  *v79 = v62;
  *(v79 + 8) = v61;
  v82 = v101;
  *(v79 + 16) = v92;
  *(v79 + 24) = v82;
  *(v79 + 32) = v65;
  sub_214328704(v106, v107, type metadata accessor for MBDActionCalendar);
  return __swift_destroy_boxed_opaque_existential_1(v122);
}

uint64_t sub_2140F9D60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906028, &qword_2146F4188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9780();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for MBDActionCalendar(0);
  LOBYTE(v15) = 1;
  sub_2146DA388();
  if (*(v3 + v9[6] + 24))
  {
    LOBYTE(v15) = 2;

    sub_2146DA328();

    v11 = v3 + v9[7];
    v12 = *(v11 + 24);
    if (v12 != 1)
    {
      v15 = *(v11 + 16);
      v16 = v12;
      v17 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v13 = v3 + v9[8];
      v14 = *(v13 + 24);
      if (v14 != 1)
      {
        v15 = *(v13 + 16);
        v16 = v14;
        v17 = 4;
        sub_2146DA388();
        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140FA0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21403281C;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD000000000000021;
  v17 = 0x800000021478D6F0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000021;
    v13[1] = 0x800000021478D6F0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2140FA2F0(uint64_t a1)
{
  v2 = sub_2142E97D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FA32C(uint64_t a1)
{
  v2 = sub_2142E97D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FA368@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906030, &qword_2146F4190);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E97D4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v25 = a2;
  v29 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21403281C;
  *(v14 + 24) = 0;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v31);
  v16 = v31;
  v15 = v32;
  v30[0] = v29;
  v30[1] = v12;
  v27 = v34;
  v28 = v12;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000021;
  v32 = 0x800000021478D6F0;
  v26 = 0x800000021478D6F0;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v17 = v16;
  v18 = v16(v30, &v37, &v31);
  v19 = v36;
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    v20 = v25;
    *v25 = v24;
    v20[1] = v15;
    v21 = v28;
    v20[2] = v29;
    v20[3] = v21;
    *(v20 + 32) = v19;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v22 = v26;
  *v23 = 0xD000000000000021;
  v23[1] = v22;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140FA740@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214543678(&v30);
  v9 = v30;
  v8 = v31;
  v10 = v32;
  v11 = v33;
  *v41 = *v35;
  *&v41[3] = *&v35[3];
  v25 = v37;
  v26 = v36;
  v20 = v38;
  v21 = v39;
  v27 = v40;
  v28 = a1;
  v29 = a2;
  v22 = v34;
  v42 = v34;
  v30 = 0xD000000000000020;
  v31 = 0x800000021478D720;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v23 = v9;
  v12 = v9(&v28, &v42, &v30);
  if (v5)
  {

LABEL_6:
    v13 = v21;
LABEL_7:

    v30 = v23;
    v31 = v8;
    v32 = v10;
    v33 = v11;
    v34 = v22;
    *v35 = *v41;
    *&v35[3] = *&v41[3];
    v36 = v26;
    v37 = v25;
    v38 = v20;
    v39 = v13;
    v40 = v27;
    return sub_2142E9828(&v30);
  }

  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000020;
    v15[1] = 0x800000021478D720;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v28 = a3;
  v29 = a4;
  v42 = v27;
  v30 = 0xD000000000000019;
  v31 = 0x800000021478D750;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;
  v13 = v21;

  v14 = v26(&v28, &v42, &v30);
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000019;
    v17[1] = 0x800000021478D750;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a2;
    v10 = a1;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a5 = v23;
  *(a5 + 8) = v8;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = v22;
  *(a5 + 33) = *v41;
  *(a5 + 36) = *&v41[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v25;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v27;
  return result;
}

uint64_t sub_2140FAAD0(uint64_t a1)
{
  v2 = sub_2142E987C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FAB0C(uint64_t a1)
{
  v2 = sub_2142E987C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FAB48@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906048, &qword_2146F41A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E987C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v54) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v48 = a2;
  v12 = v9;
  v65 = 1;
  v36 = sub_2146DA168();
  v43 = v14;
  v67 = v12;
  sub_214543678(&v54);
  v16 = v54;
  v15 = v55;
  v17 = v57;
  v37 = v56;
  v66[0] = *v59;
  *(v66 + 3) = *&v59[3];
  v44 = v60;
  v47 = v61;
  v38 = v62;
  v46 = v63;
  v45 = v64;
  *&v49 = v67;
  v40 = v11;
  *(&v49 + 1) = v11;
  v41 = v58;
  LOBYTE(v53[0]) = v58;
  v54 = 0xD000000000000020;
  v55 = 0x800000021478D720;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;
  v39 = v17;

  v42 = v16;
  v18 = v16(&v49, v53, &v54);
  v19 = v39;
  v35 = v15;
  if (v18)
  {
    v37 = 0;

    v53[0] = v36;
    v53[1] = v43;
    LOBYTE(v49) = v45;
    v54 = 0xD000000000000019;
    v55 = 0x800000021478D750;
    v56 = 0xD00000000000001CLL;
    v57 = 0x800000021478A360;

    v20 = v37;
    v21 = v44(v53, &v49, &v54);
    if (v20)
    {

      v19 = v40;
    }

    else
    {
      v19 = v40;
      if (v21)
      {

        (*(v6 + 8))(v8, v5);

        v24 = v47;

        v25 = v42;
        *&v49 = v42;
        v26 = v35;
        *(&v49 + 1) = v35;
        *&v50 = v67;
        *(&v50 + 1) = v19;
        v27 = v41;
        LOBYTE(v51) = v41;
        *(&v51 + 1) = v66[0];
        DWORD1(v51) = *(v66 + 3);
        v28 = v44;
        *(&v51 + 1) = v44;
        *v52 = v24;
        *&v52[8] = v36;
        *&v52[16] = v43;
        v29 = v45;
        v52[24] = v45;
        v30 = v49;
        v31 = v48;
        *(v48 + 57) = *&v52[9];
        v32 = v50;
        v33 = *v52;
        v31[2] = v51;
        v31[3] = v33;
        *v31 = v30;
        v31[1] = v32;
        sub_2142E98D0(&v49, &v54);
        __swift_destroy_boxed_opaque_existential_1(a1);
        v54 = v25;
        v55 = v26;
        v56 = v67;
        v57 = v19;
        v58 = v27;
        *v59 = v66[0];
        *&v59[3] = *(v66 + 3);
        v60 = v28;
        v61 = v24;
        v62 = v36;
        v63 = v43;
        v64 = v29;
        return sub_2142E9828(&v54);
      }

      sub_214031C4C();
      swift_allocError();
      *v34 = 0xD000000000000019;
      v34[1] = 0x800000021478D750;
      v34[2] = 0xD00000000000001CLL;
      v34[3] = 0x800000021478A360;
      swift_willThrow();
    }

    v23 = v35;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000020;
    v22[1] = 0x800000021478D720;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = v35;
    v67 = v37;
  }

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v54 = v42;
  v55 = v23;
  v56 = v67;
  v57 = v19;
  v58 = v41;
  *v59 = v66[0];
  *&v59[3] = *(v66 + 3);
  v60 = v44;
  v61 = v47;
  v62 = v38;
  v63 = v46;
  v64 = v45;
  return sub_2142E9828(&v54);
}

uint64_t sub_2140FB28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21403281C;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD000000000000021;
  v17 = 0x800000021478D770;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000021;
    v13[1] = 0x800000021478D770;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2140FB488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2140FB514(uint64_t a1)
{
  v2 = sub_2142E992C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FB550(uint64_t a1)
{
  v2 = sub_2142E992C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FB58C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906060, &qword_2146F41B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E992C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v25 = a2;
  v29 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21403281C;
  *(v14 + 24) = 0;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v31);
  v16 = v31;
  v15 = v32;
  v30[0] = v29;
  v30[1] = v12;
  v27 = v34;
  v28 = v12;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000021;
  v32 = 0x800000021478D770;
  v26 = 0x800000021478D770;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v17 = v16;
  v18 = v16(v30, &v37, &v31);
  v19 = v36;
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v8, v5);

    v20 = v25;
    *v25 = v24;
    v20[1] = v15;
    v21 = v28;
    v20[2] = v29;
    v20[3] = v21;
    *(v20 + 32) = v19;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v22 = v26;
  *v23 = 0xD000000000000021;
  v23[1] = v22;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140FB980(uint64_t a1)
{
  v2 = sub_2142E9980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FB9BC(uint64_t a1)
{
  v2 = sub_2142E9980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FB9F8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906078, &qword_2146F41C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9980();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142E99D4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140FBB64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906090, &qword_2146F41C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9980();
  sub_2146DAA28();
  v10 = v7;
  sub_2142E9A28();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2140FBCE0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  sub_214680E74(&v48);
  v13 = v48;
  v12 = v49;
  v14 = v51;
  v33 = v50;
  v66[0] = *v53;
  *(v66 + 3) = *&v53[3];
  v43 = v56;
  v44 = v54;
  v41 = v55;
  v42 = v57;
  v68 = v58;
  v65[0] = *v59;
  *(v65 + 3) = *&v59[3];
  v37 = v61;
  v38 = v60;
  v39 = v63;
  v40 = v62;
  v35 = v64;
  v46 = a1;
  v47 = a2;
  v67 = v52;
  v45 = v52;
  v48 = 0xD000000000000021;
  v49 = 0x800000021478D7A0;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;

  v36 = v13;
  v15 = v13(&v46, &v45, &v48);
  if (v8)
  {

    v16 = v38;
LABEL_6:
    v17 = v12;
    v18 = v42;

    a1 = v33;
    v21 = v35;
    v22 = v37;
    v23 = v43;
LABEL_7:
    v48 = v36;
    v49 = v17;
    v50 = a1;
    v51 = v14;
    v52 = v67;
    *v53 = v66[0];
    *&v53[3] = *(v66 + 3);
    v54 = v44;
    v55 = v41;
    v56 = v23;
    v57 = v18;
    v58 = v68;
    *v59 = v65[0];
    *&v59[3] = *(v65 + 3);
    v60 = v16;
    v61 = v22;
    v62 = v40;
    v63 = v39;
    v64 = v21;
    return sub_2142E9A7C(&v48);
  }

  v28 = a2;
  v29 = a6;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000021;
    v20[1] = 0x800000021478D7A0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v16 = v38;
    goto LABEL_6;
  }

  v17 = v12;

  v46 = a3;
  v47 = a4;
  v18 = a4;
  v45 = v68;
  v48 = 0xD000000000000021;
  v49 = 0x800000021478D7D0;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;

  sub_213FDC9D0(v43, v42);
  v19 = v44(&v46, &v45, &v48);
  v21 = v35;
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000021;
    v26[1] = 0x800000021478D7D0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v37;
    v16 = v38;

    v18 = v42;
    v23 = v43;
    sub_213FDC6D0(v43, v42);
    v14 = v28;
    goto LABEL_7;
  }

  sub_213FDC6D0(v43, v42);

  sub_213FDC6D0(v43, v42);
  v46 = a5;
  v47 = v29;
  v45 = v35;
  v48 = 0xD00000000000001DLL;
  v49 = 0x800000021478D800;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;
  v22 = v37;

  sub_213FDC9D0(v40, v39);
  v25 = v38(&v46, &v45, &v48);
  v16 = v38;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000001DLL;
    v27[1] = 0x800000021478D800;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v12;

    sub_213FDC6D0(v40, v39);
    v14 = v28;
    v23 = a3;
    goto LABEL_7;
  }

  sub_213FDC6D0(v40, v39);

  result = sub_213FDC6D0(v40, v39);
  *a7 = v36;
  *(a7 + 8) = v12;
  *(a7 + 16) = a1;
  *(a7 + 24) = v28;
  *(a7 + 32) = v67;
  *(a7 + 33) = v66[0];
  *(a7 + 36) = *(v66 + 3);
  *(a7 + 40) = v44;
  *(a7 + 48) = v41;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = v68;
  *(a7 + 73) = v65[0];
  *(a7 + 76) = *(v65 + 3);
  *(a7 + 80) = v38;
  *(a7 + 88) = v37;
  *(a7 + 96) = a5;
  *(a7 + 104) = v29;
  *(a7 + 112) = v35;
  return result;
}

uint64_t sub_2140FC298()
{
  v1 = 0x6B6361626C6C6166;
  if (*v0 != 1)
  {
    v1 = 0x7463656A627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_2140FC304@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436177C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140FC32C(uint64_t a1)
{
  v2 = sub_2142E9AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FC368(uint64_t a1)
{
  v2 = sub_2142E9AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FC3A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060A0, &qword_2146F41D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142E9AD0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v70 = v6;
  LOBYTE(v80) = 0;
  *&v69 = sub_2146DA168();
  *(&v69 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v71) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = v80;
  v68 = v81;
  v97 = 2;
  sub_2146DA1C8();
  v51 = v11;
  v50 = v98;
  v56 = v99;
  sub_214680E74(&v80);
  v14 = v80;
  v13 = v81;
  v15 = v83;
  v52 = v82;
  v101[0] = *v85;
  *(v101 + 3) = *&v85[3];
  v67 = v87;
  v63 = v89;
  v64 = v86;
  v66 = v90;
  v100[0] = *v91;
  *(v100 + 3) = *&v91[3];
  v61 = v93;
  v62 = v88;
  v57 = v92;
  v58 = v94;
  v59 = v95;
  v60 = v96;
  v71 = v69;
  v55 = v84;
  LOBYTE(v79[0]) = v84;
  v80 = 0xD000000000000021;
  v81 = 0x800000021478D7A0;
  v82 = 0xD00000000000001CLL;
  v83 = 0x800000021478A360;
  v53 = v15;

  v65 = v13;
  v54 = v14;
  v16 = v14(&v71, v79, &v80);
  v17 = v68;
  if (v16)
  {

    *&v71 = v51;
    *(&v71 + 1) = v17;
    LOBYTE(v79[0]) = v66;
    v80 = 0xD000000000000021;
    v81 = 0x800000021478D7D0;
    v82 = 0xD00000000000001CLL;
    v83 = 0x800000021478A360;

    sub_213FDC9D0(v62, v63);
    v18 = v64(&v71, v79, &v80);
    v53 = 0x800000021478A360;
    v27 = v60;
    if (v18)
    {
      v29 = v62;
      v28 = v63;
      v52 = 0;
      sub_213FDC6D0(v62, v63);
      v30 = v53;

      sub_213FDC6D0(v29, v28);
      v79[0] = v50;
      v79[1] = v56;
      LOBYTE(v71) = v27;
      v80 = 0xD00000000000001DLL;
      v81 = 0x800000021478D800;
      v82 = 0xD00000000000001CLL;
      v83 = v30;

      sub_213FDC9D0(v58, v59);
      v31 = v52;
      v32 = v57(v79, &v71, &v80);
      if (v31)
      {

        v25 = v51;
      }

      else
      {
        v25 = v51;
        if (v32)
        {
          v36 = v58;
          v35 = v59;
          sub_213FDC6D0(v58, v59);

          (*(v70 + 8))(v8, v5);
          v37 = v61;

          sub_213FDC6D0(v36, v35);
          v38 = v64;
          *&v71 = v54;
          *(&v71 + 1) = v65;
          v39 = *(&v69 + 1);
          v72 = v69;
          LOBYTE(v73) = v55;
          *(&v73 + 1) = v101[0];
          DWORD1(v73) = *(v101 + 3);
          *(&v73 + 1) = v64;
          *&v74 = v67;
          *(&v74 + 1) = v25;
          *&v75 = v68;
          BYTE8(v75) = v66;
          *(&v75 + 9) = v100[0];
          HIDWORD(v75) = *(v100 + 3);
          v40 = v57;
          *&v76 = v57;
          *(&v76 + 1) = v37;
          *&v77 = v50;
          *(&v77 + 1) = v56;
          LOBYTE(v37) = v60;
          v78 = v60;
          v41 = v75;
          v42 = v76;
          v43 = v77;
          *(a2 + 112) = v60;
          *(a2 + 80) = v42;
          *(a2 + 96) = v43;
          v44 = v71;
          v45 = v72;
          v46 = v73;
          *(a2 + 48) = v74;
          *(a2 + 64) = v41;
          *(a2 + 16) = v45;
          *(a2 + 32) = v46;
          *a2 = v44;
          sub_2142E9B24(&v71, &v80);
          __swift_destroy_boxed_opaque_existential_1(v102);
          v80 = v54;
          v81 = v65;
          v82 = v69;
          v83 = v39;
          v84 = v55;
          *v85 = v101[0];
          *&v85[3] = *(v101 + 3);
          v86 = v38;
          v87 = v67;
          v88 = v25;
          v89 = v68;
          v90 = v66;
          *v91 = v100[0];
          *&v91[3] = *(v100 + 3);
          v92 = v40;
          v93 = v61;
          v94 = v50;
          v95 = v56;
          v96 = v37;
          return sub_2142E9A7C(&v80);
        }

        sub_214031C4C();
        swift_allocError();
        *v47 = 0xD00000000000001DLL;
        v47[1] = 0x800000021478D800;
        v48 = v53;
        v47[2] = 0xD00000000000001CLL;
        v47[3] = v48;
        swift_willThrow();
      }

      (*(v70 + 8))(v8, v5);

      sub_213FDC6D0(v58, v59);
      v20 = *(&v69 + 1);
      v22 = v69;
      v26 = v68;
      v21 = v65;
      v23 = v60;
      v24 = v57;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v33 = 0xD000000000000021;
      v33[1] = 0x800000021478D7D0;
      v34 = v53;
      v33[2] = 0xD00000000000001CLL;
      v33[3] = v34;
      swift_willThrow();

      v24 = v57;
      (*(v70 + 8))(v8, v5);

      v25 = v62;
      v26 = v63;
      sub_213FDC6D0(v62, v63);
      v20 = *(&v69 + 1);
      v22 = v69;
      v21 = v65;
      v23 = v60;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000021;
    v19[1] = 0x800000021478D7A0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v20 = v53;

    (*(v70 + 8))(v8, v5);

    v21 = v65;

    v22 = v52;
    v23 = v60;
    v24 = v57;
    v25 = v62;
    v26 = v63;
  }

  __swift_destroy_boxed_opaque_existential_1(v102);
  v80 = v54;
  v81 = v21;
  v82 = v22;
  v83 = v20;
  v84 = v55;
  *v85 = v101[0];
  *&v85[3] = *(v101 + 3);
  v86 = v64;
  v87 = v67;
  v88 = v25;
  v89 = v26;
  v90 = v66;
  *v91 = v100[0];
  *&v91[3] = *(v100 + 3);
  v92 = v24;
  v93 = v61;
  v94 = v58;
  v95 = v59;
  v96 = v23;
  return sub_2142E9A7C(&v80);
}

uint64_t sub_2140FCC84(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060B0, &qword_2146F41D8);
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = v1[3];
  v8 = v1[7];
  v14 = v1[8];
  v15 = v8;
  v9 = v1[12];
  v12 = v1[13];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9AD0();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_7;
  }

  LOBYTE(v17) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v16 + 8))(v6, v4);
  }

  if (v14 == 1 || (v17 = v15, v18 = v14, v19 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v12 == 1))
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = v13;
    v18 = v12;
    v19 = 2;
    sub_2146DA388();
    return (*(v16 + 8))(v6, v4);
  }

  return result;
}

uint64_t sub_2140FCF38@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214620F9C(&v34);
  v10 = v34;
  v9 = v35;
  v11 = v37;
  v23 = v36;
  *v45 = *v39;
  *&v45[3] = *&v39[3];
  v27 = v40;
  v28 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v44;
  v32 = a1;
  v33 = a2;
  v26 = v38;
  v46 = v38;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D820;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v29 = v9;
  v25 = v10;
  v12 = v10(&v32, &v46, &v34);
  if (v5)
  {

LABEL_6:

    v15 = v27;
    v17 = v29;

    a1 = v23;
    v13 = v24;
LABEL_7:
    v34 = v25;
    v35 = v17;
    v36 = a1;
    v37 = v11;
    v38 = v26;
    *v39 = *v45;
    *&v39[3] = *&v45[3];
    v40 = v15;
    v41 = v28;
    v42 = v30;
    v43 = v31;
    v44 = v13;
    return sub_2142E9B80(&v34);
  }

  v20 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    v16[1] = 0x800000021478D820;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v32 = a3;
  v33 = a4;
  v13 = v24;
  v46 = v24;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D840;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v14 = v27(&v32, &v46, &v34);
  v15 = v27;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001ELL;
    v19[1] = 0x800000021478D840;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v29;

    sub_213FDC6D0(v30, v31);
    v11 = v20;
    goto LABEL_7;
  }

  sub_213FDC6D0(v30, v31);

  result = sub_213FDC6D0(v30, v31);
  *a5 = v10;
  *(a5 + 8) = v29;
  *(a5 + 16) = a1;
  *(a5 + 24) = v20;
  *(a5 + 32) = v26;
  *(a5 + 33) = *v45;
  *(a5 + 36) = *&v45[3];
  *(a5 + 40) = v27;
  *(a5 + 48) = v28;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_2140FD2D4(uint64_t a1)
{
  v2 = sub_2142E9BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FD310(uint64_t a1)
{
  v2 = sub_2142E9BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FD34C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060B8, &qword_2146F41E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9BD4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v60) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v70[7] = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v43 = v71;
  v49 = v72;
  sub_214620F9C(&v60);
  v14 = v61;
  v74 = v60;
  v15 = v63;
  v44 = v62;
  *v73 = *v65;
  *&v73[3] = *&v65[3];
  v48 = v66;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v50 = v70[0];
  v42 = v12;
  *&v55 = v12;
  *(&v55 + 1) = v11;
  v47 = v64;
  LOBYTE(v59[0]) = v64;
  v60 = 0xD00000000000001ELL;
  v61 = 0x800000021478D820;
  v45 = 0x800000021478D820;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;
  v46 = v15;

  v51 = v14;
  v16 = v74(&v55, v59, &v60);
  v17 = v45;
  v41 = 0x800000021478A360;
  v40 = v11;
  if (v16)
  {
    v18 = v41;

    v59[0] = v43;
    v59[1] = v49;
    LOBYTE(v55) = v50;
    v60 = 0xD00000000000001ELL;
    v61 = 0x800000021478D840;
    v62 = 0xD00000000000001CLL;
    v63 = v18;

    sub_213FDC9D0(v53, v54);
    v19 = v48;
    v20 = v48(v59, &v55, &v60);
    v21 = v19;
    if (v20)
    {
      sub_213FDC6D0(v53, v54);

      (*(v6 + 8))(v8, v5);
      v28 = v52;

      sub_213FDC6D0(v53, v54);
      v29 = v74;
      *&v55 = v74;
      *(&v55 + 1) = v51;
      *&v56 = v42;
      v30 = v40;
      *(&v56 + 1) = v40;
      v31 = v47;
      LOBYTE(v57) = v47;
      *(&v57 + 1) = *v73;
      DWORD1(v57) = *&v73[3];
      *(&v57 + 1) = v19;
      *v58 = v28;
      v32 = v49;
      *&v58[8] = v43;
      *&v58[16] = v49;
      v33 = v50;
      v58[24] = v50;
      v34 = v55;
      v35 = v56;
      *(a2 + 57) = *&v58[9];
      v36 = *v58;
      a2[2] = v57;
      a2[3] = v36;
      *a2 = v34;
      a2[1] = v35;
      sub_2142E9C28(&v55, &v60);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v60 = v29;
      v61 = v51;
      v62 = v42;
      v63 = v30;
      v64 = v31;
      *v65 = *v73;
      *&v65[3] = *&v73[3];
      v66 = v48;
      v67 = v28;
      v68 = v43;
      v69 = v32;
      v70[0] = v33;
      return sub_2142E9B80(&v60);
    }

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001ELL;
    v37[1] = 0x800000021478D840;
    v38 = v41;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v53, v54);
    v24 = v40;
    v25 = v51;
    v26 = &v68;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD00000000000001ELL;
    v22[1] = v17;
    v23 = v41;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    v21 = v48;
    v24 = v46;
    (*(v6 + 8))(v8, v5);

    v25 = v51;

    v26 = v70;
  }

  v27 = *(v26 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v60 = v74;
  v61 = v25;
  v62 = v27;
  v63 = v24;
  v64 = v47;
  *v65 = *v73;
  *&v65[3] = *&v73[3];
  v66 = v21;
  v67 = v52;
  v68 = v53;
  v69 = v54;
  v70[0] = v50;
  return sub_2142E9B80(&v60);
}

uint64_t sub_2140FDAFC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2146D6C10(&v34);
  v10 = v34;
  v9 = v35;
  v11 = v37;
  v23 = v36;
  *v45 = *v39;
  *&v45[3] = *&v39[3];
  v27 = v40;
  v28 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v44;
  v32 = a1;
  v33 = a2;
  v26 = v38;
  v46 = v38;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D860;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v29 = v9;
  v25 = v10;
  v12 = v10(&v32, &v46, &v34);
  if (v5)
  {

LABEL_6:

    v15 = v27;
    v17 = v29;

    a1 = v23;
    v13 = v24;
LABEL_7:
    v34 = v25;
    v35 = v17;
    v36 = a1;
    v37 = v11;
    v38 = v26;
    *v39 = *v45;
    *&v39[3] = *&v45[3];
    v40 = v15;
    v41 = v28;
    v42 = v30;
    v43 = v31;
    v44 = v13;
    return sub_2142E9C84(&v34);
  }

  v20 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    v16[1] = 0x800000021478D860;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v32 = a3;
  v33 = a4;
  v13 = v24;
  v46 = v24;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D880;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v14 = v27(&v32, &v46, &v34);
  v15 = v27;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001ELL;
    v19[1] = 0x800000021478D880;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v29;

    sub_213FDC6D0(v30, v31);
    v11 = v20;
    goto LABEL_7;
  }

  sub_213FDC6D0(v30, v31);

  result = sub_213FDC6D0(v30, v31);
  *a5 = v10;
  *(a5 + 8) = v29;
  *(a5 + 16) = a1;
  *(a5 + 24) = v20;
  *(a5 + 32) = v26;
  *(a5 + 33) = *v45;
  *(a5 + 36) = *&v45[3];
  *(a5 + 40) = v27;
  *(a5 + 48) = v28;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_2140FDE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000006C7255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2140FDF7C(uint64_t a1)
{
  v2 = sub_2142E9CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FDFB8(uint64_t a1)
{
  v2 = sub_2142E9CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FDFF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060D0, &qword_2146F41F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9CD8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v60) = 0;
  v9 = sub_2146DA168();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v70[7] = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v43 = v71;
  v49 = v72;
  sub_2146D6C10(&v60);
  v14 = v61;
  v74 = v60;
  v15 = v63;
  v44 = v62;
  *v73 = *v65;
  *&v73[3] = *&v65[3];
  v48 = v66;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v50 = v70[0];
  v42 = v12;
  *&v55 = v12;
  *(&v55 + 1) = v11;
  v47 = v64;
  LOBYTE(v59[0]) = v64;
  v60 = 0xD00000000000001ELL;
  v61 = 0x800000021478D860;
  v45 = 0x800000021478D860;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;
  v46 = v15;

  v51 = v14;
  v16 = v74(&v55, v59, &v60);
  v17 = v45;
  v41 = 0x800000021478A360;
  v40 = v11;
  if (v16)
  {
    v18 = v41;

    v59[0] = v43;
    v59[1] = v49;
    LOBYTE(v55) = v50;
    v60 = 0xD00000000000001ELL;
    v61 = 0x800000021478D880;
    v62 = 0xD00000000000001CLL;
    v63 = v18;

    sub_213FDC9D0(v53, v54);
    v19 = v48;
    v20 = v48(v59, &v55, &v60);
    v21 = v19;
    if (v20)
    {
      sub_213FDC6D0(v53, v54);

      (*(v6 + 8))(v8, v5);
      v28 = v52;

      sub_213FDC6D0(v53, v54);
      v29 = v74;
      *&v55 = v74;
      *(&v55 + 1) = v51;
      *&v56 = v42;
      v30 = v40;
      *(&v56 + 1) = v40;
      v31 = v47;
      LOBYTE(v57) = v47;
      *(&v57 + 1) = *v73;
      DWORD1(v57) = *&v73[3];
      *(&v57 + 1) = v19;
      *v58 = v28;
      v32 = v49;
      *&v58[8] = v43;
      *&v58[16] = v49;
      v33 = v50;
      v58[24] = v50;
      v34 = v55;
      v35 = v56;
      *(a2 + 57) = *&v58[9];
      v36 = *v58;
      a2[2] = v57;
      a2[3] = v36;
      *a2 = v34;
      a2[1] = v35;
      sub_2142E9D2C(&v55, &v60);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v60 = v29;
      v61 = v51;
      v62 = v42;
      v63 = v30;
      v64 = v31;
      *v65 = *v73;
      *&v65[3] = *&v73[3];
      v66 = v48;
      v67 = v28;
      v68 = v43;
      v69 = v32;
      v70[0] = v33;
      return sub_2142E9C84(&v60);
    }

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001ELL;
    v37[1] = 0x800000021478D880;
    v38 = v41;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    (*(v6 + 8))(v8, v5);

    sub_213FDC6D0(v53, v54);
    v24 = v40;
    v25 = v51;
    v26 = &v68;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD00000000000001ELL;
    v22[1] = v17;
    v23 = v41;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    v21 = v48;
    v24 = v46;
    (*(v6 + 8))(v8, v5);

    v25 = v51;

    v26 = v70;
  }

  v27 = *(v26 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v60 = v74;
  v61 = v25;
  v62 = v27;
  v63 = v24;
  v64 = v47;
  *v65 = *v73;
  *&v65[3] = *&v73[3];
  v66 = v21;
  v67 = v52;
  v68 = v53;
  v69 = v54;
  v70[0] = v50;
  return sub_2142E9C84(&v60);
}

uint64_t sub_2140FE774(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[8];
  v18 = v5[7];
  v19 = v11;
  v17 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  if (!v12)
  {
    goto LABEL_7;
  }

  LOBYTE(v22) = 0;

  v14 = v20;
  sub_2146DA328();
  if (v14)
  {
    (*(v21 + 8))(v10, v8);
  }

  if (v17 == 1)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v22 = v18;
    v23 = v17;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v21 + 8))(v10, v8);
  }

  return result;
}

uint64_t sub_2140FE9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214681144(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000014;
  v16 = 0x800000021478D8A0;
  v9 = v6;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000014;
    v12[1] = 0x800000021478D8A0;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2140FEB80(uint64_t a1)
{
  v2 = sub_2142E9D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FEBBC(uint64_t a1)
{
  v2 = sub_2142E9D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FEBF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060E8, &qword_2146F4200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9D88();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_2146DA168();
  v23 = a2;
  v12 = v11;
  v13 = v9;
  sub_214681144(&v29);
  v15 = v29;
  v14 = v30;
  v24 = v13;
  v28[0] = v13;
  v28[1] = v12;
  v26 = v12;
  v27 = v32;
  v34 = v33;
  v35 = v33;
  v29 = 0xD000000000000014;
  v30 = 0x800000021478D8A0;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v25 = v14;
  v16 = v15(v28, &v35, &v29);
  v22 = v15;
  if (v16)
  {

    (*(v6 + 8))(v8, v5);

    v17 = v25;

    v18 = v23;
    *v23 = v22;
    v18[1] = v17;
    v19 = v26;
    v18[2] = v24;
    v18[3] = v19;
    *(v18 + 32) = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v20 = 0xD000000000000014;
  v20[1] = 0x800000021478D8A0;
  v20[2] = 0xD00000000000001CLL;
  v20[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140FEF74@<X0>(char *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = *a1;
  sub_2145384E0(&v30);
  v8 = v30;
  v9 = v31;
  v10 = v33;
  v22 = v32;
  v11 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 200;
  *(v13 + 16) = sub_21438F758;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v43);
  v28 = v44;
  v29 = v43;
  v23 = v45;
  v27 = v46;
  v50 = v11;
  v51 = v47;
  v43 = a2;
  v44 = a3;
  v42 = v11;
  v30 = 0xD000000000000014;
  v31 = 0x800000021478D8C0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v15 = v8(&v43, &v42, &v30);
  if (v26)
  {

LABEL_6:
    a2 = v22;
LABEL_7:

    LOBYTE(v30) = v25;
    *(&v30 + 1) = v49[0];
    HIDWORD(v30) = *(v49 + 3);
    v31 = v8;
    v32 = v9;
    v33 = a2;
    v34 = v10;
    v35 = v50;
    *v36 = *v48;
    *&v36[3] = *&v48[3];
    v37 = v29;
    v38 = v28;
    v39 = v23;
    v40 = v27;
    v41 = v51;
    return sub_2142E9DDC(&v30);
  }

  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000014;
    v17[1] = 0x800000021478D8C0;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v43 = a4;
  v44 = a5;
  v42 = v51;
  v30 = 0xD00000000000001BLL;
  v31 = 0x800000021478D8E0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v16 = v29(&v43, &v42, &v30);
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x800000021478D8E0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = a3;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a6 = v25;
  *(a6 + 8) = v8;
  *(a6 + 16) = v9;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = v50;
  *(a6 + 48) = v29;
  *(a6 + 56) = v28;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  *(a6 + 80) = v51;
  return result;
}

uint64_t sub_2140FF37C()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_2140FF3CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436189C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140FF3F4(uint64_t a1)
{
  v2 = sub_2142E9E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FF430(uint64_t a1)
{
  v2 = sub_2142E9E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FF46C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906100, &qword_2146F4210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9E30();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v56) = 0;
  sub_2142E9E84();
  sub_2146DA1C8();
  v9 = v63;
  LOBYTE(v63) = 1;
  v10 = sub_2146DA168();
  v77 = v12;
  v13 = v10;
  v74[49] = 2;
  v40 = sub_2146DA168();
  v49 = v14;
  v45 = v9;
  sub_2145384E0(&v63);
  v53 = v63;
  v54 = v64;
  v42 = v65;
  v55 = v66;
  v47 = v13;
  v52 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 200;
  *(v16 + 16) = sub_21438F758;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v56);
  v51 = *(&v56 + 1);
  v48 = v56;
  v50 = *(&v57 + 1);
  v43 = v57;
  v46 = v58;
  *&v56 = v47;
  *(&v56 + 1) = v77;
  LOBYTE(v62[0]) = v52;
  v41 = 0xD000000000000014;
  v63 = 0xD000000000000014;
  v64 = 0x800000021478D8C0;
  v44 = 0x800000021478D8C0;
  v65 = 0xD00000000000001CLL;
  v66 = 0x800000021478A360;

  v18 = v53(&v56, v62, &v63);
  v19 = v41;
  v20 = v44;
  v39 = 0x800000021478A360;
  if (v18)
  {
    v21 = v39;

    v62[0] = v40;
    v62[1] = v49;
    LOBYTE(v56) = v46;
    v55 = 0xD00000000000001BLL;
    v63 = 0xD00000000000001BLL;
    v64 = 0x800000021478D8E0;
    v65 = 0xD00000000000001CLL;
    v66 = v21;

    v22 = v48(v62, &v56, &v63);
    v28 = v55;
    if (v22)
    {

      (*(v6 + 8))(v8, v5);

      v29 = v51;

      LOBYTE(v56) = v45;
      *(&v56 + 1) = v53;
      v30 = v54;
      *&v57 = v54;
      v31 = v47;
      *(&v57 + 1) = v47;
      v32 = v77;
      *&v58 = v77;
      v33 = v52;
      BYTE8(v58) = v52;
      *&v59 = v48;
      *(&v59 + 1) = v29;
      *&v60 = v40;
      *(&v60 + 1) = v49;
      v34 = v46;
      v61 = v46;
      *(a2 + 80) = v46;
      v35 = v59;
      *(a2 + 32) = v58;
      *(a2 + 48) = v35;
      *(a2 + 64) = v60;
      v36 = v57;
      *a2 = v56;
      *(a2 + 16) = v36;
      sub_2142E9ED8(&v56, &v63);
      __swift_destroy_boxed_opaque_existential_1(a1);
      LOBYTE(v63) = v45;
      v64 = v53;
      v65 = v30;
      v66 = v31;
      v67 = v32;
      v68 = v33;
      *v69 = *v75;
      *&v69[3] = *&v75[3];
      v70 = v48;
      v71 = v29;
      v72 = v40;
      v73 = v49;
      v74[0] = v34;
      return sub_2142E9DDC(&v63);
    }

    sub_214031C4C();
    swift_allocError();
    *v37 = v28;
    v37[1] = 0x800000021478D8E0;
    v38 = v39;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    v55 = v77;
    v25 = v54;
    v26 = v74;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = v19;
    v23[1] = v20;
    v24 = v39;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = v24;
    swift_willThrow();

    v25 = v54;
    v26 = &v70;
  }

  v27 = *(v26 - 32);
  (*(v6 + 8))(v8, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v63) = v45;
  *(&v63 + 1) = *v76;
  HIDWORD(v63) = *&v76[3];
  v64 = v53;
  v65 = v25;
  v66 = v27;
  v67 = v55;
  v68 = v52;
  *v69 = *v75;
  *&v69[3] = *&v75[3];
  v70 = v48;
  v71 = v51;
  v72 = v43;
  v73 = v50;
  v74[0] = v46;
  return sub_2142E9DDC(&v63);
}

uint64_t sub_2140FFCBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906118, &qword_2146F4218);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v9 = *(v1 + 4);
  v10 = *(v1 + 9);
  v14[1] = *(v1 + 8);
  v14[2] = v8;
  v14[0] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9E30();
  sub_2146DAA28();
  v18 = v7;
  v17 = 0;
  sub_2142E9F34();
  v11 = v14[3];
  sub_2146DA388();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v14[0];
  if (v9 && (v16 = 1, , sub_2146DA328(), , v13))
  {
    v15 = 2;

    sub_2146DA328();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140FFF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x68737550646E6573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214100008(uint64_t a1)
{
  v2 = sub_2142E9F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214100044(uint64_t a1)
{
  v2 = sub_2142E9F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214100170(uint64_t a1)
{
  v2 = sub_2142E9FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141001AC(uint64_t a1)
{
  v2 = sub_2142E9FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141001E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906140, &qword_2146F4230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9FDC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142EA030();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214100354(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906158, &qword_2146F4238);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9FDC();
  sub_2146DAA28();
  v10 = v7;
  sub_2142EA084();
  sub_2146DA388();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2141004D0@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  sub_21464DAC4(&v73);
  v17 = v73;
  v16 = v74;
  v46 = v75;
  v67 = v76;
  v107 = *(&v76 + 3);
  v108 = HIBYTE(v76);
  v68 = v77;
  v110 = v78;
  v47 = v79;
  v61 = v80;
  v69 = v82;
  v105 = v84;
  v104 = v83;
  v62 = v85;
  v64 = v86;
  v65 = v88;
  v66 = v87;
  v63 = v89;
  v103[0] = *v90;
  *(v103 + 3) = *&v90[3];
  v55 = v91;
  v59 = v92;
  v48 = v93;
  v60 = v94;
  v49 = v95;
  *(v102 + 3) = *&v96[3];
  v102[0] = *v96;
  v53 = v98;
  v54 = v97;
  v56 = v99;
  v57 = v100;
  v51 = BYTE2(v76);
  v52 = v101;
  v109 = BYTE1(v76);
  v106 = v81;
  LOBYTE(v71) = a2 & 1;
  v73 = 0xD00000000000001ELL;
  v74 = 0x800000021478D900;
  v70 = a1;
  v72 = BYTE2(v76);
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  v50 = v17;
  v18 = v17(&v70, &v72, &v73);
  if (v12)
  {

LABEL_6:
    v22 = v54;
    v20 = v48;
    v23 = v16;

    a1 = v46;
    v24 = v47;
    v25 = v52;
    v26 = v53;
    v27 = v49;
    v28 = v55;
LABEL_7:
    v73 = v50;
    v74 = v23;
    v75 = a1;
    LOBYTE(v76) = v67;
    BYTE1(v76) = v109;
    BYTE2(v76) = v51;
    *(&v76 + 3) = v107;
    HIBYTE(v76) = v108;
    v77 = v68;
    v78 = v110;
    v79 = v24;
    v80 = v61;
    v81 = v106;
    v82 = v69;
    v83 = v104;
    v84 = v105;
    v85 = v62;
    v86 = v64;
    v87 = v66;
    v88 = v65;
    v89 = v63;
    *v90 = v103[0];
    *&v90[3] = *(v103 + 3);
    v91 = v28;
    v92 = v59;
    v93 = v20;
    v94 = v60;
    v95 = v27;
    *&v96[3] = *(v102 + 3);
    *v96 = v102[0];
    v97 = v22;
    v98 = v26;
    v99 = v56;
    v100 = v57;
    v101 = v25;
    return sub_2142EA0D8(&v73);
  }

  v40 = a8;
  if ((v18 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000001ELL;
    v21[1] = 0x800000021478D900;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v67 = a2 & 1;

  v109 = 0;
  v70 = a3;
  LOBYTE(v71) = a4 & 1;
  v72 = v69;
  v73 = 0xD00000000000001FLL;
  v74 = 0x800000021478D920;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  v19 = v68(&v70, &v72, &v73);
  v20 = v48;
  v27 = v49;
  if ((v19 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001FLL;
    v31[1] = 0x800000021478D920;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
    v26 = v53;
    v22 = v54;
    v28 = v55;

    v25 = v52;
    v23 = v16;
    v24 = v47;
    goto LABEL_7;
  }

  v61 = a4 & 1;

  v106 = 0;
  v70 = a5;
  v71 = a6;
  v72 = v63;
  v73 = 0xD00000000000001BLL;
  v74 = 0x800000021478D940;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  sub_213FDC9D0(v66, v65);
  v30 = v62(&v70, &v72, &v73);
  v28 = v55;
  v25 = v52;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001BLL;
    v33[1] = 0x800000021478D940;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v54;

    sub_213FDC6D0(v66, v65);
    v24 = a3;
LABEL_14:
    v26 = v53;
LABEL_15:
    v23 = v16;
    goto LABEL_7;
  }

  sub_213FDC6D0(v66, v65);

  sub_213FDC6D0(v66, v65);
  v70 = a7;
  v71 = v40;
  v72 = v49;
  v73 = 0xD00000000000001BLL;
  v74 = 0x800000021478D960;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  sub_213FDC9D0(v48, v60);
  v32 = v55(&v70, &v72, &v73);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001BLL;
    v35[1] = 0x800000021478D960;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v54;

    sub_213FDC6D0(v48, v60);
    v24 = a3;
    v65 = a6;
    v66 = a5;
    goto LABEL_14;
  }

  sub_213FDC6D0(v48, v60);

  sub_213FDC6D0(v48, v60);
  v70 = a10;
  v71 = a11;
  v72 = v52;
  v73 = 0xD000000000000021;
  v74 = 0x800000021478D980;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;
  v26 = v53;

  sub_213FDC9D0(v56, v57);
  v34 = v54(&v70, &v72, &v73);
  v22 = v54;
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000021;
    v39[1] = 0x800000021478D980;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v55;

    sub_213FDC6D0(v56, v57);
    v24 = a3;
    v65 = a6;
    v66 = a5;
    v20 = a7;
    v60 = v40;
    goto LABEL_15;
  }

  sub_213FDC6D0(v56, v57);

  result = sub_213FDC6D0(v56, v57);
  v36 = v109;
  v37 = v106;
  *a9 = v50;
  *(a9 + 8) = v16;
  *(a9 + 16) = a1;
  *(a9 + 24) = v67;
  *(a9 + 25) = v36;
  *(a9 + 26) = v51;
  *(a9 + 27) = v107;
  *(a9 + 31) = v108;
  v38 = v110;
  *(a9 + 32) = v68;
  *(a9 + 40) = v38;
  *(a9 + 48) = a3;
  *(a9 + 56) = v61;
  *(a9 + 57) = v37;
  *(a9 + 58) = v69;
  *(a9 + 59) = v104;
  *(a9 + 63) = v105;
  *(a9 + 64) = v62;
  *(a9 + 72) = v64;
  *(a9 + 80) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = v63;
  *(a9 + 97) = v103[0];
  *(a9 + 100) = *(v103 + 3);
  *(a9 + 104) = v55;
  *(a9 + 112) = v59;
  *(a9 + 120) = a7;
  *(a9 + 128) = v40;
  *(a9 + 136) = v49;
  *(a9 + 140) = *(v102 + 3);
  *(a9 + 137) = v102[0];
  *(a9 + 144) = v54;
  *(a9 + 152) = v53;
  *(a9 + 160) = a10;
  *(a9 + 168) = a11;
  *(a9 + 176) = v52;
  return result;
}

uint64_t sub_214100E7C()
{
  v1 = *v0;
  v2 = 0x656475746974616CLL;
  v3 = 0x7972657571;
  v4 = 0x6C6562616CLL;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64757469676E6F6CLL;
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

uint64_t sub_214100F1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143619BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214100F44(uint64_t a1)
{
  v2 = sub_2142EA12C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214100F80(uint64_t a1)
{
  v2 = sub_2142EA12C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214100FBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906168, &qword_2146F4240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA12C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v95) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v93 = a1;
  v94 = v5;
  v9 = v108;
  v10 = v109;
  LOBYTE(v95) = 1;
  v11 = v7;
  sub_2146DA1C8();
  v91 = v9;
  v92 = v10;
  v12 = v108;
  v13 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v95) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v90 = v13;
  v14 = v109;
  v88 = v108;
  v89 = v12;
  LOBYTE(v95) = 3;
  sub_2146DA1C8();
  v86 = v108;
  v87 = v14;
  v15 = v109;
  v136 = 4;
  sub_2146DA1C8();
  v76 = v15;
  v62 = v11;
  v63 = v4;
  v16 = v138;
  v59 = v137;
  sub_21464DAC4(&v108);
  v18 = v108;
  v17 = v109;
  v19 = v110;
  v60 = v111;
  v144 = *(&v111 + 3);
  v145 = HIBYTE(v111);
  v85 = v112;
  v61 = v113;
  v77 = v114;
  v78 = v116;
  v142 = v118;
  v141 = v117;
  v79 = v119;
  v83 = v121;
  v81 = v120;
  v82 = v122;
  v80 = v123;
  v140[0] = *v124;
  *(v140 + 3) = *&v124[3];
  v75 = v126;
  v72 = v127;
  v73 = v125;
  v71 = v128;
  v74 = v129;
  *(v139 + 3) = *&v130[3];
  v139[0] = *v130;
  v70 = v132;
  v67 = v131;
  v68 = v133;
  v69 = v134;
  v65 = BYTE2(v111);
  v66 = v135;
  v146 = BYTE1(v111);
  v143 = v115;
  v108 = 0xD00000000000001ELL;
  v109 = 0x800000021478D900;
  v20 = v91;
  *&v95 = v91;
  BYTE8(v95) = v92;
  LOBYTE(v107[0]) = BYTE2(v111);
  v110 = 0xD00000000000001CLL;
  v111 = 0x800000021478A360;

  v84 = v17;
  v64 = v18;
  v21 = v18(&v95, v107, &v108);
  v58 = v16;
  if ((v21 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000001ELL;
    v24[1] = 0x800000021478D900;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v94 + 8))(v62, v63);
    v25 = v84;

    v20 = v19;
    v26 = v60;
    v22 = v78;
LABEL_7:
    v28 = v71;
    v27 = v72;
    v29 = v61;
    goto LABEL_8;
  }

  v146 = 0;
  *&v95 = v89;
  BYTE8(v95) = v90;
  v22 = v78;
  LOBYTE(v107[0]) = v78;
  v108 = 0xD00000000000001FLL;
  v109 = 0x800000021478D920;
  v110 = 0xD00000000000001CLL;
  v111 = 0x800000021478A360;

  v23 = (v85)(&v95, v107, &v108);
  v30 = v87;
  if ((v23 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001FLL;
    v32[1] = 0x800000021478D920;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v94 + 8))(v62, v63);

    v26 = v92;
    v25 = v84;
    goto LABEL_7;
  }

  v143 = 0;
  *&v95 = v88;
  *(&v95 + 1) = v30;
  LOBYTE(v107[0]) = v80;
  v108 = 0xD00000000000001BLL;
  v109 = 0x800000021478D940;
  v110 = 0xD00000000000001CLL;
  v111 = 0x800000021478A360;

  sub_213FDC9D0(v83, v82);
  v31 = v79(&v95, v107, &v108);
  if (v31)
  {
    v34 = v82;
    v33 = v83;
    sub_213FDC6D0(v83, v82);

    sub_213FDC6D0(v33, v34);
    *&v95 = v86;
    *(&v95 + 1) = v76;
    LOBYTE(v107[0]) = v74;
    v108 = 0xD00000000000001BLL;
    v109 = 0x800000021478D960;
    v110 = 0xD00000000000001CLL;
    v111 = 0x800000021478A360;

    sub_213FDC9D0(v72, v71);
    v35 = v73(&v95, v107, &v108);
    if (v35)
    {
      v38 = v71;
      v37 = v72;
      sub_213FDC6D0(v72, v71);

      sub_213FDC6D0(v37, v38);
      v107[0] = v59;
      v107[1] = v58;
      LOBYTE(v95) = v66;
      v108 = 0xD000000000000021;
      v109 = 0x800000021478D980;
      v110 = 0xD00000000000001CLL;
      v111 = 0x800000021478A360;

      sub_213FDC9D0(v68, v69);
      v39 = v67(v107, &v95, &v108);
      if (v39)
      {
        v42 = v68;
        v41 = v69;
        sub_213FDC6D0(v68, v69);

        (*(v94 + 8))(v62, v63);
        v43 = v70;

        sub_213FDC6D0(v42, v41);
        *&v95 = v64;
        *(&v95 + 1) = v84;
        *&v96 = v91;
        BYTE8(v96) = v92;
        HIDWORD(v103) = *(v139 + 3);
        *(&v103 + 9) = v139[0];
        LODWORD(v94) = v146;
        BYTE9(v96) = v146;
        BYTE10(v96) = v65;
        *(&v96 + 11) = v144;
        HIBYTE(v96) = v145;
        v97 = v85;
        *&v98 = v89;
        BYTE8(v98) = v90;
        HIBYTE(v98) = v142;
        *(&v98 + 11) = v141;
        *(&v101 + 1) = v140[0];
        DWORD1(v101) = *(v140 + 3);
        LOBYTE(v42) = v143;
        BYTE9(v98) = v143;
        LOBYTE(v41) = v78;
        BYTE10(v98) = v78;
        v44 = v81;
        *&v99 = v79;
        *(&v99 + 1) = v81;
        *&v100 = v88;
        *(&v100 + 1) = v87;
        LOBYTE(v101) = v80;
        v45 = v76;
        *(&v101 + 1) = v73;
        *&v102 = v75;
        *(&v102 + 1) = v86;
        *&v103 = v76;
        BYTE8(v103) = v74;
        *&v104 = v67;
        *(&v104 + 1) = v43;
        *&v105 = v59;
        *(&v105 + 1) = v58;
        v46 = v103;
        v47 = v104;
        v48 = v105;
        LOBYTE(v43) = v66;
        v49 = v147;
        *(v147 + 176) = v66;
        v49[9] = v47;
        v49[10] = v48;
        v49[8] = v46;
        v50 = v95;
        v51 = v96;
        v52 = v98;
        v49[2] = v97;
        v49[3] = v52;
        *v49 = v50;
        v49[1] = v51;
        v53 = v99;
        v54 = v100;
        v55 = v102;
        v49[6] = v101;
        v49[7] = v55;
        v49[4] = v53;
        v49[5] = v54;
        v106 = v43;
        sub_2142EA180(&v95, &v108);
        __swift_destroy_boxed_opaque_existential_1(v93);
        v108 = v64;
        v109 = v84;
        v110 = v91;
        LOBYTE(v111) = v92;
        BYTE1(v111) = v94;
        BYTE2(v111) = v65;
        *(&v111 + 3) = v144;
        HIBYTE(v111) = v145;
        v112 = v85;
        v113 = v89;
        v114 = v90;
        v115 = v42;
        v116 = v41;
        v117 = v141;
        v118 = v142;
        v119 = v79;
        v120 = v44;
        v121 = v88;
        v122 = v87;
        v123 = v80;
        *&v124[3] = *(v140 + 3);
        *v124 = v140[0];
        v125 = v73;
        v126 = v75;
        v127 = v86;
        v128 = v45;
        v129 = v74;
        *&v130[3] = *(v139 + 3);
        *v130 = v139[0];
        v131 = v67;
        v132 = v70;
        v133 = v59;
        v134 = v58;
        v135 = v43;
        return sub_2142EA0D8(&v108);
      }

      sub_214031C4C();
      swift_allocError();
      *v56 = 0xD000000000000021;
      v56[1] = 0x800000021478D980;
      v56[2] = 0xD00000000000001CLL;
      v56[3] = 0x800000021478A360;
      swift_willThrow();

      (*(v94 + 8))(v62, v63);

      sub_213FDC6D0(v68, v69);
      v77 = v90;
      v29 = v89;
      v27 = v86;
      v82 = v87;
      v83 = v88;
      v28 = v76;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v40 = 0xD00000000000001BLL;
      v40[1] = 0x800000021478D960;
      v40[2] = 0xD00000000000001CLL;
      v40[3] = 0x800000021478A360;
      swift_willThrow();

      (*(v94 + 8))(v62, v63);

      v28 = v71;
      v27 = v72;
      sub_213FDC6D0(v72, v71);
      v77 = v90;
      v29 = v89;
      v82 = v87;
      v83 = v88;
    }

    v26 = v92;
    v20 = v91;
    v22 = v78;
    v25 = v84;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000001BLL;
    v36[1] = 0x800000021478D940;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v94 + 8))(v62, v63);

    sub_213FDC6D0(v83, v82);
    v29 = v89;
    v77 = v90;
    v26 = v92;
    v20 = v91;
    v22 = v78;
    v25 = v84;
    v28 = v71;
    v27 = v72;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v93);
  v108 = v64;
  v109 = v25;
  v110 = v20;
  LOBYTE(v111) = v26;
  BYTE1(v111) = v146;
  BYTE2(v111) = v65;
  *(&v111 + 3) = v144;
  HIBYTE(v111) = v145;
  v112 = v85;
  v113 = v29;
  v114 = v77;
  v115 = v143;
  v116 = v22;
  v118 = v142;
  v117 = v141;
  v119 = v79;
  v120 = v81;
  v121 = v83;
  v122 = v82;
  v123 = v80;
  *v124 = v140[0];
  *&v124[3] = *(v140 + 3);
  v125 = v73;
  v126 = v75;
  v127 = v27;
  v128 = v28;
  v129 = v74;
  *&v130[3] = *(v139 + 3);
  *v130 = v139[0];
  v131 = v67;
  v132 = v70;
  v133 = v68;
  v134 = v69;
  v135 = v66;
  return sub_2142EA0D8(&v108);
}

uint64_t sub_214101E54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906178, &qword_2146F4248);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v21 = *(v1 + 48);
  v26 = *(v1 + 56);
  v20 = *(v1 + 57);
  v9 = *(v1 + 80);
  v18 = *(v1 + 88);
  v19 = v9;
  v10 = *(v1 + 120);
  v16 = *(v1 + 128);
  v17 = v10;
  v11 = *(v1 + 160);
  v14 = *(v1 + 168);
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA12C();
  sub_2146DAA28();
  if (v8)
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v24 = v6;
  LOBYTE(v25) = v7 & 1;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  v12 = v22;
  sub_2146DA388();
  if (!v12)
  {
    if ((v20 & 1) == 0)
    {
      v24 = v21;
      LOBYTE(v25) = v26 & 1;
      v27 = 1;
      sub_2146DA388();
      if (v18 != 1)
      {
        v24 = v19;
        v25 = v18;
        v27 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        sub_2146DA388();
        if (v16 != 1)
        {
          v24 = v17;
          v25 = v16;
          v27 = 3;
          sub_2146DA388();
          if (v14 != 1)
          {
            v24 = v15;
            v25 = v14;
            v27 = 4;
            sub_2146DA388();
            return (*(v23 + 8))(v5, v3);
          }
        }
      }
    }

    goto LABEL_13;
  }

  return (*(v23 + 8))(v5, v3);
}

uint64_t MBDChipAction.init(with:type:action:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  *a4 = *a1;
  *(a4 + 8) = v6;
  v8 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v8;
  *(a4 + 48) = v7;
  v9 = type metadata accessor for MBDChipAction(0);
  return sub_21408AC04(a3, a4 + *(v9 + 24), &qword_27C906180, &qword_2146F4250);
}

uint64_t sub_21410223C()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_214102290@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214361B70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141022B8(uint64_t a1)
{
  v2 = sub_2142EA1DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141022F4(uint64_t a1)
{
  v2 = sub_2142EA1DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906188, &qword_2146F4258);
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA1DC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v11 = v6;
    v36 = 0;
    sub_2142EA230();
    sub_2146DA1C8();
    v12 = v31;
    v13 = v33;
    v25 = v32;
    v26 = v30;
    v24 = v34;
    v27 = v35;
    v36 = 1;
    sub_2142EA284();
    sub_2146DA1C8();
    v22 = v12;
    v23 = v13;
    LOBYTE(v12) = v30;
    LOBYTE(v30) = 2;
    sub_2142EA2D8();
    v14 = v29;
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v14);
    v16 = type metadata accessor for MBDChipAction(0);
    v17 = v28;
    sub_21408AC04(v11, v28 + *(v16 + 24), &qword_27C906180, &qword_2146F4250);
    v18 = v22;
    *v17 = v26;
    *(v17 + 8) = v18;
    v19 = v23;
    v20 = v24;
    *(v17 + 16) = v25;
    *(v17 + 24) = v19;
    v21 = v27;
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    *(v17 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061B8, &qword_2146F4260);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA1DC();
  sub_2146DAA28();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[5];
  v15 = *v3;
  v16 = v9;
  v17 = v10;
  v18 = *(v3 + 3);
  v19 = v11;
  v14 = 0;
  sub_2142EA38C();

  sub_2146DA388();

  if (!v2)
  {
    LOBYTE(v15) = *(v3 + 48);
    v14 = 1;
    sub_2142EA3E0();
    sub_2146DA388();
    type metadata accessor for MBDChipAction(0);
    LOBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
    sub_2142EA434();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MBDChipReply.init(with:)(BlastDoor::MBDChipReply *__return_ptr retstr, BlastDoor::MBDChipSuggestion *with)
{
  object = with->displayText._object;
  retstr->suggestion.displayText._countAndFlagsBits = with->displayText._countAndFlagsBits;
  retstr->suggestion.displayText._object = object;
  inReplyToID = with->inReplyToID;
  retstr->suggestion.postback = with->postback;
  retstr->suggestion.inReplyToID = inReplyToID;
}

uint64_t sub_2141028E8(uint64_t a1)
{
  v2 = sub_2142EA4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214102924(uint64_t a1)
{
  v2 = sub_2142EA4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipReply.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061E0, &qword_2146F4268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA4E8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142EA230();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v13[1];
    v10 = v14;
    v11 = v15;
    *a2 = v13[0];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipReply.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061F0, &qword_2146F4270);
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v13 = v1[2];
  v14 = v6;
  v9 = v1[5];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA4E8();

  sub_2146DAA28();
  v16 = v14;
  v17 = v7;
  v18 = v13;
  v19 = v8;
  v20 = v12;
  v21 = v9;
  sub_2142EA38C();
  v10 = v15;
  sub_2146DA388();

  return (*(v3 + 8))(v5, v10);
}

uint64_t sub_214102CB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_214102CC8()
{
  v1 = 0x6B63616274736F70;
  if (*v0 != 1)
  {
    v1 = 0x54796C7065526E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_214102D34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214361C8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214102D5C(uint64_t a1)
{
  v2 = sub_2142EA53C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214102D98(uint64_t a1)
{
  v2 = sub_2142EA53C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214102DD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061F8, &qword_2146F4278);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA53C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v17 = a2;
    v18 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v20 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    v16 = v19;
    v20 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v13 = v19;
    v14 = v17;
    *v17 = v18;
    v14[1] = v11;
    v15 = *(&v16 + 1);
    v14[2] = v16;
    v14[3] = v15;
    *(v14 + 2) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214103044(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906208, &qword_2146F4280);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA53C();
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_2146DA328();
  if (!v9)
  {
    v11 = v14;
    v10 = v15;
    v19 = v17;
    v20 = v16;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v19 = v10;
    v20 = v11;
    v21 = 2;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21410325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, char *a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, unsigned __int8 a25, char *a26)
{
  *&v71 = a1;
  *(&v71 + 1) = a2;
  v79 = a25;
  v28 = *a8;
  v29 = *a10;
  v30 = *a11;
  v31 = *a12;
  v63 = *a13;
  v64 = *a14;
  v66 = *a26;
  v32 = type metadata accessor for CloudKitShareParticipant(0);
  v70 = a5;
  sub_2143287C0(a5, a9 + v32[6], type metadata accessor for CloudKitUserIdentity);
  sub_213FB2E54(a21, a9 + v32[19], &qword_27C9041D8, &qword_2146ED5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21405980C;
  *(v34 + 24) = 0;
  *(inited + 32) = v34;
  sub_214042B80(inited, &v75);
  v35 = v76;
  v36 = v77;
  v37 = v78;
  sub_2144F5110(v73);
  *a9 = v75;
  v38 = v73[1];
  *(a9 + 40) = v73[0];
  v39 = v74;
  *(a9 + 16) = v35;
  *(a9 + 24) = v36;
  *(a9 + 32) = v37;
  *(a9 + 56) = v38;
  *(a9 + 72) = v39;
  *(a9 + v32[7]) = a6;
  *(a9 + v32[8]) = a7;
  *(a9 + v32[9]) = v28;
  *(a9 + v32[10]) = v29;
  *(a9 + v32[11]) = v30;
  *(a9 + v32[12]) = v31;
  *(a9 + v32[13]) = v63;
  *(a9 + v32[14]) = v64;
  v40 = (a9 + v32[15]);
  *v40 = a15;
  v40[1] = a16;
  v41 = (a9 + v32[16]);
  *v41 = a17;
  v41[1] = a18;
  *(a9 + v32[17]) = a19;
  *(a9 + v32[18]) = a20;
  v42 = (a9 + v32[20]);
  *v42 = a22;
  v42[1] = a23;
  *(a9 + v32[21]) = a24;
  *(a9 + v32[22]) = v79;
  *(a9 + v32[23]) = v66;
  v44 = *a9;
  v43 = *(a9 + 8);
  v46 = *(a9 + 16);
  v45 = *(a9 + 24);
  v47 = *(a9 + 32);
  v73[0] = v71;
  v80 = v47;
  *&v75 = 0xD000000000000026;
  *(&v75 + 1) = 0x800000021478D9B0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v48 = v44(v73, &v80, &v75);
  if (v68)
  {

LABEL_6:
    sub_213FB2DF4(a21, &qword_27C9041D8, &qword_2146ED5C0);
    sub_21432887C(v70, type metadata accessor for CloudKitUserIdentity);

    *a9 = v44;
    *(a9 + 8) = v43;
    *(a9 + 16) = v46;
    *(a9 + 24) = v45;
    *(a9 + 32) = v47;
    return sub_21432887C(a9, type metadata accessor for CloudKitShareParticipant);
  }

  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000026;
    v55[1] = 0x800000021478D9B0;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *a9 = v44;
  *(a9 + 8) = v43;
  *(a9 + 16) = v71;
  *(a9 + 32) = v47;
  v50 = *(a9 + 40);
  v49 = *(a9 + 48);
  v51 = *(a9 + 56);
  v52 = *(a9 + 64);
  v53 = *(a9 + 72);
  *&v73[0] = a3;
  *(&v73[0] + 1) = a4;
  v72 = v53;
  v80 = v53;
  *&v75 = 0xD000000000000022;
  *(&v75 + 1) = 0x800000021478D9E0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  sub_213FDC9D0(v51, v52);
  v54 = v50(v73, &v80, &v75);
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD000000000000022;
    v59[1] = 0x800000021478D9E0;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a21, &qword_27C9041D8, &qword_2146ED5C0);
    sub_21432887C(v70, type metadata accessor for CloudKitUserIdentity);
    v60 = *(a9 + 56);
    v61 = *(a9 + 64);

    sub_213FDC6D0(v60, v61);
    *(a9 + 40) = v50;
    *(a9 + 48) = v49;
    *(a9 + 56) = v51;
    *(a9 + 64) = v52;
    *(a9 + 72) = v72;
    return sub_21432887C(a9, type metadata accessor for CloudKitShareParticipant);
  }

  sub_213FDC6D0(v51, v52);

  sub_213FB2DF4(a21, &qword_27C9041D8, &qword_2146ED5C0);
  sub_21432887C(v70, type metadata accessor for CloudKitUserIdentity);
  v57 = *(a9 + 56);
  v58 = *(a9 + 64);

  result = sub_213FDC6D0(v57, v58);
  *(a9 + 40) = v50;
  *(a9 + 48) = v49;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v72;
  return result;
}

unint64_t sub_214103850(char a1)
{
  result = 0x7069636974726170;
  switch(a1)
  {
    case 1:
      result = 0x4972657469766E69;
      break;
    case 2:
      result = 0x6E65644972657375;
      break;
    case 3:
      result = 0x6E65727275437369;
      break;
    case 4:
      result = 0x6D644167724F7369;
      break;
    case 5:
      result = 1701605234;
      break;
    case 6:
    case 13:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x697373696D726570;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x69746365746F7270;
      break;
    case 12:
    case 19:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x6974617469766E69;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214103AB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214361DAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214103AE8(uint64_t a1)
{
  v2 = sub_2142EA590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214103B24(uint64_t a1)
{
  v2 = sub_2142EA590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214103B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  MEMORY[0x28223BE20](v99);
  v100 = &v79[-v3];
  v4 = type metadata accessor for CloudKitUserIdentity(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v79[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906210, &qword_2146F4288);
  v101 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v79[-v8];
  v10 = type metadata accessor for CloudKitShareParticipant(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v79[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142EA590();
  v14 = v103;
  sub_2146DAA08();
  if (v14)
  {
    v103 = v14;
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v96 = v12;
  v97 = v6;
  LOBYTE(v106) = 0;
  v15 = sub_2146DA168();
  v103 = 0;
  v17 = v16;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v104[0]) = 1;
  sub_2142E12FC();
  v19 = v103;
  sub_2146DA1C8();
  v103 = v19;
  v20 = v101;
  if (v19)
  {
    (*(v101 + 8))(v9, v7);
LABEL_7:

    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  *&v95 = v18;
  *(&v95 + 1) = v17;
  v21 = v106;
  LOBYTE(v106) = 2;
  sub_214328930(&qword_27C906220, type metadata accessor for CloudKitUserIdentity, aY_31);
  v22 = v103;
  sub_2146DA1C8();
  if (v22)
  {
    v103 = v22;
    (*(v20 + 8))(v9, v7);

    goto LABEL_7;
  }

  v94 = v21;
  LOBYTE(v106) = 3;
  v110 = sub_2146DA178();
  LOBYTE(v106) = 4;
  v24 = sub_2146DA178();
  v103 = 0;
  v25 = v97;
  v26 = v24;
  LOBYTE(v104[0]) = 5;
  sub_2142EA5E4();
  v27 = v103;
  sub_2146DA1C8();
  v103 = v27;
  if (v27)
  {

    sub_21432887C(v25, type metadata accessor for CloudKitUserIdentity);
    (*(v20 + 8))(v9, v7);
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v28 = v106;
  LOBYTE(v104[0]) = 6;
  sub_2142EA638();
  v29 = v103;
  sub_2146DA1C8();
  v103 = v29;
  if (v29)
  {
LABEL_15:

    sub_21432887C(v97, type metadata accessor for CloudKitUserIdentity);
    (*(v101 + 8))(v9, v7);
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v93 = v28;
  v30 = v106;
  LOBYTE(v104[0]) = 7;
  sub_2142EA68C();
  v31 = v103;
  sub_2146DA1C8();
  if (v31)
  {
    v103 = v31;
    goto LABEL_15;
  }

  v92 = v106;
  LOBYTE(v104[0]) = 8;
  sub_2146DA1C8();
  v103 = 0;
  v90 = v106;
  LOBYTE(v104[0]) = 9;
  v91 = v7;
  v32 = v9;
  sub_2146DA1C8();
  v103 = 0;
  v33 = v106;
  LOBYTE(v104[0]) = 10;
  sub_2146DA1C8();
  v103 = 0;
  v89 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v104[0]) = 11;
  sub_2142E1278();
  v34 = v103;
  sub_2146DA1C8();
  v103 = v34;
  if (v34)
  {

LABEL_18:
    sub_21432887C(v97, type metadata accessor for CloudKitUserIdentity);
    (*(v101 + 8))(v9, v91);
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v87 = *(&v106 + 1);
  v88 = v106;
  LOBYTE(v104[0]) = 12;
  sub_2146DA1C8();
  v103 = 0;
  v86 = v106;
  LOBYTE(v106) = 13;
  v85 = sub_2146DA178();
  v103 = 0;
  LOBYTE(v106) = 14;
  v84 = sub_2146DA178();
  v103 = 0;
  LOBYTE(v106) = 15;
  sub_2142E285C();
  v35 = v103;
  sub_2146DA1C8();
  v103 = v35;
  if (v35)
  {

    sub_213FDC6BC(v86, *(&v86 + 1));
    sub_213FDC6BC(v88, v87);
    goto LABEL_18;
  }

  LOBYTE(v104[0]) = 16;
  sub_2146DA1C8();
  v103 = 0;
  v36 = v106;
  LOBYTE(v106) = 17;
  LODWORD(v99) = sub_2146DA178();
  v103 = 0;
  LOBYTE(v106) = 18;
  v83 = sub_2146DA178();
  v103 = 0;
  LOBYTE(v104[0]) = 19;
  sub_2142EA6E0();
  v37 = v103;
  sub_2146DA1C8();
  v103 = v37;
  if (v37)
  {

    sub_213FDC6BC(v36, *(&v36 + 1));
    sub_213FDC6BC(v86, *(&v86 + 1));
    sub_213FDC6BC(v88, v87);
    sub_213FB2DF4(v100, &qword_27C9041D8, &qword_2146ED5C0);
    goto LABEL_18;
  }

  v82 = v106;
  v38 = v10;
  v39 = *(v10 + 24);
  v40 = v96;
  sub_2143287C0(v97, &v96[v39], type metadata accessor for CloudKitUserIdentity);
  sub_213FB2E54(v100, v40 + v38[19], &qword_27C9041D8, &qword_2146ED5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_214059900;
  *(v42 + 24) = 0;
  *(inited + 32) = v42;
  sub_214042B80(inited, &v106);
  v43 = v107;
  v81 = v108;
  v80 = v109;
  sub_2144F5110(v104);
  *v40 = v106;
  v44 = v104[1];
  *(v40 + 40) = v104[0];
  v45 = v105;
  v46 = v81;
  *(v40 + 16) = v43;
  *(v40 + 24) = v46;
  *(v40 + 32) = v80;
  *(v40 + 56) = v44;
  *(v40 + 72) = v45;
  *(v40 + v38[7]) = v110 & 1;
  *(v40 + v38[8]) = v26 & 1;
  *(v40 + v38[9]) = v93;
  *(v40 + v38[10]) = v30;
  *(v40 + v38[11]) = v92;
  *(v40 + v38[12]) = v90;
  *(v40 + v38[13]) = v33;
  *(v40 + v38[14]) = v89;
  v47 = (v40 + v38[15]);
  v48 = v87;
  *v47 = v88;
  v47[1] = v48;
  v49 = (v40 + v38[16]);
  v50 = *(&v86 + 1);
  *v49 = v86;
  v49[1] = v50;
  *(v40 + v38[17]) = v85 & 1;
  *(v40 + v38[18]) = v84 & 1;
  *(v40 + v38[20]) = v36;
  *(v40 + v38[21]) = v99 & 1;
  *(v40 + v38[22]) = v83 & 1;
  *(v40 + v38[23]) = v82;
  v52 = *v40;
  v51 = *(v40 + 8);
  v54 = *(v40 + 16);
  v53 = *(v40 + 24);
  v55 = *(v40 + 32);
  v104[0] = v95;
  v111 = v55;
  *&v106 = 0xD000000000000026;
  *(&v106 + 1) = 0x800000021478D9B0;
  v107 = 0xD00000000000001CLL;
  v108 = 0x800000021478A360;

  v56 = v103;
  v57 = v52(v104, &v111, &v106);
  v103 = v56;
  if (v56)
  {

LABEL_29:

    sub_213FB2DF4(v100, &qword_27C9041D8, &qword_2146ED5C0);
    sub_21432887C(v97, type metadata accessor for CloudKitUserIdentity);
    (*(v101 + 8))(v32, v91);
    v69 = v96;

    *v69 = v52;
    *(v69 + 8) = v51;
    *(v69 + 16) = v54;
    *(v69 + 24) = v53;
    *(v69 + 32) = v55;
    goto LABEL_30;
  }

  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    v67 = swift_allocError();
    *v68 = 0xD000000000000026;
    v68[1] = 0x800000021478D9B0;
    v68[2] = 0xD00000000000001CLL;
    v68[3] = 0x800000021478A360;
    v103 = v67;
    swift_willThrow();
    goto LABEL_29;
  }

  v58 = v96;

  *v58 = v52;
  *(v58 + 8) = v51;
  v59 = *(&v95 + 1);
  *(v58 + 16) = v95;
  *(v58 + 24) = v59;
  *(v58 + 32) = v55;
  v61 = *(v58 + 40);
  v60 = *(v58 + 48);
  v62 = *(v58 + 56);
  v63 = *(v58 + 64);
  v64 = *(v58 + 72);
  v104[0] = v94;
  v111 = v64;
  *&v106 = 0xD000000000000022;
  *(&v106 + 1) = 0x800000021478D9E0;
  v107 = 0xD00000000000001CLL;
  v108 = 0x800000021478A360;

  sub_213FDC9D0(v62, v63);
  v65 = v103;
  v66 = v61(v104, &v111, &v106);
  v103 = v65;
  if (v65)
  {
  }

  else
  {
    if (v66)
    {
      sub_213FDC6D0(v62, v63);

      sub_213FB2DF4(v100, &qword_27C9041D8, &qword_2146ED5C0);
      sub_21432887C(v97, type metadata accessor for CloudKitUserIdentity);
      (*(v101 + 8))(v32, v91);
      v70 = v96;
      v71 = *(v96 + 7);
      v72 = *(v96 + 8);

      sub_213FDC6D0(v71, v72);
      *(v70 + 40) = v61;
      *(v70 + 48) = v60;
      v73 = *(&v94 + 1);
      *(v70 + 56) = v94;
      *(v70 + 64) = v73;
      *(v70 + 72) = v64;
      sub_214328704(v70, v98, type metadata accessor for CloudKitShareParticipant);
      return __swift_destroy_boxed_opaque_existential_1(v102);
    }

    sub_214031C4C();
    v74 = swift_allocError();
    *v75 = 0xD000000000000022;
    v75[1] = 0x800000021478D9E0;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = 0x800000021478A360;
    v103 = v74;
    swift_willThrow();
  }

  sub_213FB2DF4(v100, &qword_27C9041D8, &qword_2146ED5C0);
  sub_21432887C(v97, type metadata accessor for CloudKitUserIdentity);
  (*(v101 + 8))(v32, v91);
  v76 = v96;
  v77 = *(v96 + 7);
  v78 = *(v96 + 8);

  sub_213FDC6D0(v77, v78);
  *(v76 + 40) = v61;
  *(v76 + 48) = v60;
  *(v76 + 56) = v62;
  *(v76 + 64) = v63;
  *(v76 + 72) = v64;
LABEL_30:
  __swift_destroy_boxed_opaque_existential_1(v102);
  return sub_21432887C(v96, type metadata accessor for CloudKitShareParticipant);
}

uint64_t sub_214104B84(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906248, &unk_2146F4290);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA590();
  sub_2146DAA28();
  if (!v3[3])
  {
    goto LABEL_6;
  }

  LOBYTE(v22) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v10 = v3[8];
  if (v10 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v22 = v3[7];
    v23 = v10;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v11 = type metadata accessor for CloudKitShareParticipant(0);
    LOBYTE(v22) = 2;
    type metadata accessor for CloudKitUserIdentity(0);
    sub_214328930(&qword_27C906250, type metadata accessor for CloudKitUserIdentity, byte_2146F85D8);
    sub_2146DA388();
    LOBYTE(v22) = 3;
    sub_2146DA338();
    LOBYTE(v22) = 4;
    sub_2146DA338();
    LOBYTE(v22) = *(v3 + v11[9]);
    v24 = 5;
    sub_2142EA734();
    sub_2146DA388();
    LOBYTE(v22) = *(v3 + v11[10]);
    v24 = 6;
    v12 = sub_2142EA788();
    sub_2146DA388();
    v21 = v12;
    LOBYTE(v22) = *(v3 + v11[11]);
    v24 = 7;
    v13 = sub_2142EA7DC();
    sub_2146DA388();
    v20 = v13;
    LOBYTE(v22) = *(v3 + v11[12]);
    v24 = 8;
    sub_2146DA388();
    LOBYTE(v22) = *(v3 + v11[13]);
    v24 = 9;
    sub_2146DA388();
    LOBYTE(v22) = *(v3 + v11[14]);
    v24 = 10;
    sub_2146DA388();
    v14 = (v3 + v11[15]);
    v15 = v14[1];
    v22 = *v14;
    v23 = v15;
    v24 = 11;
    sub_213FDCA18(v22, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v22, v23);
    v16 = (v3 + v11[16]);
    v17 = v16[1];
    v22 = *v16;
    v23 = v17;
    v24 = 12;
    sub_213FDCA18(v22, v17);
    sub_2146DA388();
    sub_213FDC6BC(v22, v23);
    LOBYTE(v22) = 13;
    sub_2146DA338();
    LOBYTE(v22) = 14;
    sub_2146DA338();
    v21 = v11[19];
    LOBYTE(v22) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    sub_2142E29C4();
    sub_2146DA388();
    v18 = (v3 + v11[20]);
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v24 = 16;
    sub_213FDCA18(v22, v19);
    sub_2146DA388();
    sub_213FDC6BC(v22, v23);
    LOBYTE(v22) = 17;
    sub_2146DA338();
    LOBYTE(v22) = 18;
    sub_2146DA338();
    LOBYTE(v22) = *(v3 + v11[23]);
    v24 = 19;
    sub_2142EA830();
    sub_2146DA388();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void *sub_2141052B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v20;
  *(a9 + 160) = *(a1 + 160);
  v21 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v21;
  v22 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v22;
  v23 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v23;
  v24 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v24;
  v25 = type metadata accessor for CloudKitUserIdentity(0);
  sub_21408AC04(a2, a9 + v25[5], &qword_27C917510, &unk_214757860);
  result = memcpy((a9 + v25[6]), a3, 0x110uLL);
  *(a9 + v25[7]) = a4;
  v27 = (a9 + v25[8]);
  *v27 = a5;
  v27[1] = a6;
  v28 = (a9 + v25[9]);
  *v28 = a7;
  v28[1] = a8;
  *(a9 + v25[10]) = a10;
  *(a9 + v25[11]) = a11;
  v29 = (a9 + v25[12]);
  *v29 = a12;
  v29[1] = a13;
  *(a9 + v25[13]) = a14;
  return result;
}

unint64_t sub_2141053F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000015;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000016;
    if (a1 != 5)
    {
      v7 = 0x6465686361437369;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6F63655272657375;
    v2 = 0x6E4970756B6F6F6CLL;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x706D6F43656D616ELL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_214105568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214362414(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214105590(uint64_t a1)
{
  v2 = sub_2142EA884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141055CC(uint64_t a1)
{
  v2 = sub_2142EA884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214105608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  MEMORY[0x28223BE20](v4);
  v6 = &v31[-v5];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906278, &qword_2146F42A0);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v31[-v8];
  v10 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EA884();
  v43 = v9;
  sub_2146DAA08();
  if (!v2)
  {
    v11 = v42;
    v41 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
    v61 = 0;
    sub_2142EA8D8();
    sub_2146DA1C8();
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v49[0] = 1;
    sub_2142EA9B0();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917520, &qword_2146F42B0);
    v48[279] = 2;
    sub_2142EAA64();
    sub_2146DA1C8();
    memcpy(v48, v49, 0x110uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    v47 = 3;
    sub_2142E15CC();
    sub_2146DA1C8();
    v40 = v45;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v47 = 4;
    v14 = sub_2142E1278();
    sub_2146DA1C8();
    v38 = v45;
    v39 = v46;
    v47 = 5;
    sub_2146DA1C8();
    v36 = v13;
    v37 = v14;
    v15 = v45;
    v16 = v46;
    LOBYTE(v45) = 6;
    v34 = sub_2146DA178();
    v35 = v15;
    LOBYTE(v45) = 7;
    v32 = sub_2146DA178();
    v33 = v16;
    v47 = 8;
    sub_2146DA1C8();
    v18 = v45;
    v17 = v46;
    LOBYTE(v45) = 9;
    v19 = sub_2146DA1E8();
    (*(v7 + 8))(v43, v44);
    v20 = type metadata accessor for CloudKitUserIdentity(0);
    sub_21408AC04(v41, v11 + v20[5], &qword_27C917510, &unk_214757860);
    v21 = v59;
    *(v11 + 128) = v58;
    *(v11 + 144) = v21;
    *(v11 + 160) = v60;
    v22 = v55;
    *(v11 + 64) = v54;
    *(v11 + 80) = v22;
    v23 = v57;
    *(v11 + 96) = v56;
    *(v11 + 112) = v23;
    v24 = v51;
    *v11 = v50;
    *(v11 + 16) = v24;
    v25 = v53;
    *(v11 + 32) = v52;
    *(v11 + 48) = v25;
    memcpy((v11 + v20[6]), v48, 0x110uLL);
    *(v11 + v20[7]) = v40;
    v26 = (v11 + v20[8]);
    v27 = v39;
    *v26 = v38;
    v26[1] = v27;
    v28 = (v11 + v20[9]);
    v29 = v33;
    *v28 = v35;
    v28[1] = v29;
    *(v11 + v20[10]) = v34 & 1;
    *(v11 + v20[11]) = v32 & 1;
    v30 = (v11 + v20[12]);
    *v30 = v18;
    v30[1] = v17;
    *(v11 + v20[13]) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_214105D28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9062B8, &qword_2146F42B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA884();
  sub_2146DAA28();
  v9 = v3[7];
  v10 = v3[9];
  v57 = v3[8];
  v58 = v10;
  v11 = v3[3];
  v12 = v3[5];
  v53 = v3[4];
  v54 = v12;
  v13 = v3[5];
  v14 = v3[7];
  v55 = v3[6];
  v56 = v14;
  v15 = v3[1];
  v50[0] = *v3;
  v50[1] = v15;
  v16 = v3[3];
  v18 = *v3;
  v17 = v3[1];
  v51 = v3[2];
  v52 = v16;
  v19 = v3[9];
  v47 = v57;
  v48 = v19;
  v43 = v53;
  v44 = v13;
  v46 = v9;
  v45 = v55;
  v39 = v18;
  v40 = v17;
  v59 = *(v3 + 20);
  v49 = *(v3 + 20);
  v42 = v11;
  v41 = v51;
  v63 = 0;
  sub_213FB2E54(v50, v36, &qword_27C917500, &qword_2146F42A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
  sub_2142EAB3C();
  sub_2146DA388();
  if (v2)
  {
    v36[8] = v47;
    v36[9] = v48;
    *&v36[10] = v49;
    v36[4] = v43;
    v36[5] = v44;
    v36[6] = v45;
    v36[7] = v46;
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v36[3] = v42;
    sub_213FB2DF4(v36, &qword_27C917500, &qword_2146F42A8);
  }

  else
  {
    v37[8] = v47;
    v37[9] = v48;
    v38 = v49;
    v37[4] = v43;
    v37[5] = v44;
    v37[6] = v45;
    v37[7] = v46;
    v37[0] = v39;
    v37[1] = v40;
    v37[2] = v41;
    v37[3] = v42;
    sub_213FB2DF4(v37, &qword_27C917500, &qword_2146F42A8);
    v20 = type metadata accessor for CloudKitUserIdentity(0);
    v62 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
    sub_2142EAC14();
    sub_2146DA388();
    v21 = v20[6];
    memcpy(v36, v3 + v21, sizeof(v36));
    memcpy(v35, v3 + v21, sizeof(v35));
    v61 = 2;
    sub_213FB2E54(v36, v34, &qword_27C917520, &qword_2146F42B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917520, &qword_2146F42B0);
    sub_2142EACC8();
    sub_2146DA388();
    memcpy(v34, v35, sizeof(v34));
    sub_213FB2DF4(v34, &qword_27C917520, &qword_2146F42B0);
    v32 = *(v3 + v20[7]);
    v60 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v22 = (v3 + v20[8]);
    v23 = v22[1];
    v32 = *v22;
    v33 = v23;
    v60 = 4;
    sub_213FDCA18(v32, v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v25 = sub_2142E1CAC();
    v31[1] = v24;
    sub_2146DA388();
    sub_213FDC6BC(v32, v33);
    v26 = (v3 + v20[9]);
    v27 = v26[1];
    v32 = *v26;
    v33 = v27;
    v60 = 5;
    sub_213FDCA18(v32, v27);
    sub_2146DA388();
    v31[0] = v25;
    sub_213FDC6BC(v32, v33);
    LOBYTE(v32) = 6;
    sub_2146DA338();
    LOBYTE(v32) = 7;
    sub_2146DA338();
    v29 = (v3 + v20[12]);
    v30 = v29[1];
    v32 = *v29;
    v33 = v30;
    v60 = 8;
    sub_213FDCA18(v32, v30);
    sub_2146DA388();
    sub_213FDC6BC(v32, v33);
    LOBYTE(v32) = 9;
    sub_2146DA3A8();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_214106334@<D0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_213FDCA18(a7, a8);
  sub_2144F5508(&v62);
  v14 = v62;
  v13 = v63;
  v15 = v64;
  v49 = v65;
  v16 = v66;
  sub_2144F553C(&v88);
  v17 = *(a5 + 96);
  *(&v93[7] + 7) = *(a5 + 112);
  v18 = *(a5 + 144);
  *(&v93[8] + 7) = *(a5 + 128);
  *(&v93[9] + 7) = v18;
  v19 = *(a5 + 32);
  *(&v93[3] + 7) = *(a5 + 48);
  v20 = *(a5 + 80);
  *(&v93[4] + 7) = *(a5 + 64);
  *(&v93[5] + 7) = v20;
  *(&v93[6] + 7) = v17;
  v21 = *(a5 + 16);
  *(v93 + 7) = *a5;
  *(&v93[1] + 7) = v21;
  v53 = v89;
  v59 = v88;
  v60 = v90;
  v61 = v91;
  *(&v93[10] + 7) = *(a5 + 160);
  *(&v93[2] + 7) = v19;
  v54 = v92;
  v55 = a6 & 1;
  v88 = a1;
  v89 = a2;
  v56 = v16;
  v87 = v16;
  v62 = 0xD00000000000002BLL;
  v63 = 0x800000021478DA10;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;

  v52 = v15;
  v22 = v15;
  v23 = v49;
  sub_213FDC9D0(v22, v49);
  v24 = v96;
  v57 = v14;
  v25 = v14(&v88, &v87, &v62);
  if (v24)
  {
    v96 = v24;

    v26 = a7;
    v27 = a8;
    v28 = a7;
LABEL_7:
    sub_213FDC6BC(v26, v27);

    v29 = v54;

    v37 = v52;
    sub_213FDC6D0(v52, v49);
    v33 = v28;
    v30 = v53;
    goto LABEL_8;
  }

  v46 = a1;
  v28 = a7;
  v27 = a8;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    v35 = swift_allocError();
    *v36 = 0xD00000000000002BLL;
    v36[1] = 0x800000021478DA10;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    v96 = v35;
    swift_willThrow();

    v26 = a7;
    goto LABEL_7;
  }

  v96 = 0;
  sub_213FDC6D0(v52, v49);

  sub_213FDC6D0(v52, v49);
  v88 = a3;
  v89 = a4;
  v29 = v54;
  v87 = v54;
  v62 = 0xD00000000000002ALL;
  v63 = 0x800000021478DA40;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;
  v30 = v53;

  sub_213FDC9D0(v60, v61);
  v31 = v96;
  v32 = v59(&v88, &v87, &v62);
  if (v31)
  {
    v96 = v31;

    v33 = a7;
    v34 = a7;
  }

  else
  {
    v33 = a7;
    if (v32)
    {
      v96 = 0;
      sub_213FDC6D0(v60, v61);
      sub_213FDC6BC(a7, a8);

      sub_213FDC6D0(v60, v61);
      v39 = v93[6];
      *(a9 + 185) = v93[7];
      v40 = v93[9];
      *(a9 + 201) = v93[8];
      *(a9 + 217) = v40;
      *(a9 + 232) = *(&v93[9] + 15);
      v41 = v93[2];
      *(a9 + 121) = v93[3];
      v42 = v93[5];
      *(a9 + 137) = v93[4];
      *(a9 + 153) = v42;
      *(a9 + 169) = v39;
      result = *v93;
      v43 = v93[1];
      *(a9 + 73) = v93[0];
      *(a9 + 89) = v43;
      *a9 = v57;
      *(a9 + 8) = v13;
      *(a9 + 16) = v46;
      *(a9 + 24) = a2;
      *(a9 + 32) = v16;
      *(a9 + 40) = v59;
      *(a9 + 48) = v53;
      *(a9 + 56) = a3;
      *(a9 + 64) = a4;
      *(a9 + 72) = v54;
      *(a9 + 105) = v41;
      *(a9 + 248) = v55;
      *(a9 + 256) = a7;
      *(a9 + 264) = a8;
      return result;
    }

    sub_214031C4C();
    v44 = swift_allocError();
    *v45 = 0xD00000000000002ALL;
    v45[1] = 0x800000021478DA40;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    v96 = v44;
    swift_willThrow();

    v34 = a7;
  }

  sub_213FDC6BC(v34, a8);

  v37 = v46;

  sub_213FDC6D0(v60, v61);
  v23 = a2;
LABEL_8:
  v62 = v57;
  v63 = v13;
  v64 = v37;
  v65 = v23;
  v66 = v56;
  *v67 = v95[0];
  *&v67[3] = *(v95 + 3);
  v68 = v59;
  v69 = v30;
  v70 = v60;
  v71 = v61;
  v72 = v29;
  v75 = v93[2];
  v74 = v93[1];
  v73 = v93[0];
  v79 = v93[6];
  v78 = v93[5];
  v77 = v93[4];
  v76 = v93[3];
  *&v82[15] = *(&v93[9] + 15);
  *v82 = v93[9];
  v81 = v93[8];
  v80 = v93[7];
  v83 = v55;
  *v84 = v94[0];
  *&v84[3] = *(v94 + 3);
  v85 = v33;
  v86 = v27;
  sub_2142EADA0(&v62);
  return result;
}

uint64_t sub_2141068D4()
{
  v1 = *v0;
  v2 = 0x6464416C69616D65;
  v3 = 0x6F63655272657375;
  v4 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D754E656E6F6870;
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

uint64_t sub_214106994@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21436275C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141069BC(uint64_t a1)
{
  v2 = sub_2142EADF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141069F8(uint64_t a1)
{
  v2 = sub_2142EADF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214106A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9062F0, &qword_2146F42C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = a1[3];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EADF4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v112);
  }

  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v56[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v54 = v6;
  v10 = v58;
  v11 = v59;
  LOBYTE(v56[0]) = 1;
  sub_2146DA1C8();
  v53 = v10;
  v12 = v11;
  v13 = v58;
  v14 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
  v98 = 2;
  sub_2142EA8D8();
  sub_2146DA1C8();
  v96 = v108;
  v97 = v109;
  v91 = v103;
  v92 = v104;
  v94 = v106;
  v95 = v107;
  v93 = v105;
  v87 = v99;
  v88 = v100;
  v89 = v101;
  v90 = v102;
  LOBYTE(v58) = 3;
  LODWORD(v11) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v84 = 4;
  sub_2142E1278();
  sub_2146DA1C8();
  v38 = v13;
  v16 = v85;
  LODWORD(v44) = v11;
  v17 = v86;
  sub_213FB2E54(&v87, &v58, &qword_27C917500, &qword_2146F42A8);
  v42 = v17;
  v43 = v16;
  sub_213FDCA18(v16, v17);
  sub_2144F5508(&v58);
  v18 = v59;
  v51 = v60;
  v52 = v58;
  v50 = v61;
  LODWORD(v13) = v62;
  sub_2144F553C(v56);
  *&v83[119] = v94;
  *&v83[135] = v95;
  *&v83[151] = v96;
  *&v83[55] = v90;
  *&v83[71] = v91;
  *&v83[87] = v92;
  *&v83[103] = v93;
  *&v83[7] = v87;
  *&v83[23] = v88;
  v45 = v56[0];
  v48 = v56[2];
  v49 = v56[1];
  v47 = v56[3];
  v46 = LOBYTE(v56[4]);
  *&v83[167] = v97;
  *&v83[39] = v89;
  v40 = v13;
  v41 = v44 & 1;
  v56[0] = v53;
  v56[1] = v12;
  v39 = v12;
  LOBYTE(v57[0]) = v13;
  v58 = 0xD00000000000002BLL;
  v59 = 0x800000021478DA10;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  sub_213FDC9D0(v51, v50);
  v44 = v18;
  v19 = v52(v56, v57, &v58);
  v37 = 0x800000021478A360;
  if (v19)
  {
    v21 = v50;
    v20 = v51;
    sub_213FDC6D0(v51, v50);
    v39 = 0x800000021478DA10;
    v22 = v37;

    sub_213FDC6D0(v20, v21);
    v57[0] = v38;
    v57[1] = v14;
    LOBYTE(v56[0]) = v46;
    v58 = 0xD00000000000002ALL;
    v59 = 0x800000021478DA40;
    v51 = 0x800000021478DA40;
    v60 = 0xD00000000000001CLL;
    v61 = v22;

    sub_213FDC9D0(v48, v47);
    v23 = v45(v57, v56, &v58);
    v30 = v51;
    if (v23)
    {
      v31 = v47;
      sub_213FDC6D0(v48, v47);

      sub_213FDC6BC(v43, v42);
      sub_213FB2DF4(&v87, &qword_27C917500, &qword_2146F42A8);
      (*(v54 + 8))(v8, v5);

      sub_213FDC6D0(v48, v31);
      *(&v56[23] + 1) = *&v83[112];
      *(&v56[25] + 1) = *&v83[128];
      *(&v56[27] + 1) = *&v83[144];
      *&v56[29] = *&v83[159];
      *(&v56[15] + 1) = *&v83[48];
      *(&v56[17] + 1) = *&v83[64];
      *(&v56[19] + 1) = *&v83[80];
      *(&v56[21] + 1) = *&v83[96];
      *(&v56[9] + 1) = *v83;
      *(&v56[11] + 1) = *&v83[16];
      v32 = v52;
      v33 = v53;
      v34 = v44;
      v56[0] = v52;
      v56[1] = v44;
      v56[2] = v53;
      v56[3] = v12;
      LOBYTE(v31) = v40;
      LOBYTE(v56[4]) = v40;
      v56[5] = v45;
      v56[6] = v49;
      v56[7] = v38;
      v56[8] = v14;
      LOBYTE(v56[9]) = v46;
      *(&v56[13] + 1) = *&v83[32];
      LOBYTE(v56[31]) = v41;
      *(&v56[31] + 1) = *v110;
      HIDWORD(v56[31]) = *&v110[3];
      v56[32] = v43;
      v56[33] = v42;
      memcpy(v55, v56, 0x110uLL);
      sub_2142EAE48(v56, &v58);
      __swift_destroy_boxed_opaque_existential_1(v112);
      v58 = v32;
      v59 = v34;
      v60 = v33;
      v61 = v12;
      v62 = v31;
      *v63 = v111[0];
      *&v63[3] = *(v111 + 3);
      v64 = v45;
      v65 = v49;
      v66 = v38;
      v67 = v14;
      v68 = v46;
      v69 = *v83;
      v70 = *&v83[16];
      v71 = *&v83[32];
      v75 = *&v83[96];
      v74 = *&v83[80];
      v73 = *&v83[64];
      v72 = *&v83[48];
      *&v78[15] = *&v83[159];
      *v78 = *&v83[144];
      v77 = *&v83[128];
      v76 = *&v83[112];
      v79 = v41;
      *v80 = *v110;
      *&v80[3] = *&v110[3];
      v81 = v43;
      v82 = v42;
      return sub_2142EADA0(&v58);
    }

    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000002ALL;
    v35[1] = v30;
    v36 = v37;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = v36;
    swift_willThrow();

    v27 = v42;
    v26 = v43;
    sub_213FDC6BC(v43, v42);
    sub_213FB2DF4(&v87, &qword_27C917500, &qword_2146F42A8);
    (*(v54 + 8))(v8, v5);

    sub_213FDC6D0(v48, v47);
    v29 = v53;
    v28 = v44;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000002BLL;
    v24[1] = 0x800000021478DA10;
    v25 = v37;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v27 = v42;
    v26 = v43;
    sub_213FDC6BC(v43, v42);
    sub_213FB2DF4(&v87, &qword_27C917500, &qword_2146F42A8);
    (*(v54 + 8))(v8, v5);
    v28 = v44;

    v12 = v50;
    v29 = v51;
    sub_213FDC6D0(v51, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v112);
  v58 = v52;
  v59 = v28;
  v60 = v29;
  v61 = v12;
  v62 = v40;
  *v63 = v111[0];
  *&v63[3] = *(v111 + 3);
  v64 = v45;
  v65 = v49;
  v66 = v48;
  v67 = v47;
  v68 = v46;
  v69 = *v83;
  v70 = *&v83[16];
  v71 = *&v83[32];
  v75 = *&v83[96];
  v74 = *&v83[80];
  v73 = *&v83[64];
  v72 = *&v83[48];
  *&v78[15] = *&v83[159];
  *v78 = *&v83[144];
  v77 = *&v83[128];
  v76 = *&v83[112];
  v79 = v41;
  *v80 = *v110;
  *&v80[3] = *&v110[3];
  v81 = v26;
  v82 = v27;
  return sub_2142EADA0(&v58);
}

uint64_t sub_2141073E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906300, &qword_2146F42C8);
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 64);
  v21 = *(v1 + 56);
  v22 = v6;
  v20 = v8;
  v9 = *(v1 + 224);
  v49 = *(v1 + 208);
  v50 = v9;
  v51 = *(v1 + 240);
  v10 = *(v1 + 160);
  v45 = *(v1 + 144);
  v46 = v10;
  v11 = *(v1 + 192);
  v47 = *(v1 + 176);
  v48 = v11;
  v12 = *(v1 + 96);
  v41 = *(v1 + 80);
  v42 = v12;
  v13 = *(v1 + 128);
  v43 = *(v1 + 112);
  v44 = v13;
  v19 = *(v1 + 248);
  v14 = *(v1 + 256);
  v17 = *(v1 + 264);
  v18 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EADF4();
  sub_2146DAA28();
  if (v7 != 1)
  {
    *&v30 = v22;
    *(&v30 + 1) = v7;
    LOBYTE(v27[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v15 = v23;
    sub_2146DA388();
    if (v15)
    {
      return (*(v52 + 8))(v5, v3);
    }

    if (v20 != 1)
    {
      *&v30 = v21;
      *(&v30 + 1) = v20;
      LOBYTE(v27[0]) = 1;
      sub_2146DA388();
      v38 = v49;
      v39 = v50;
      v40 = v51;
      v34 = v45;
      v35 = v46;
      v36 = v47;
      v37 = v48;
      v30 = v41;
      v31 = v42;
      v32 = v43;
      v33 = v44;
      v29 = 2;
      sub_213FB2E54(&v41, v27, &qword_27C917500, &qword_2146F42A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
      sub_2142EAB3C();
      sub_2146DA388();
      v27[7] = v37;
      v27[8] = v38;
      v27[9] = v39;
      v28 = v40;
      v27[4] = v34;
      v27[5] = v35;
      v27[6] = v36;
      v27[0] = v30;
      v27[1] = v31;
      v27[2] = v32;
      v27[3] = v33;
      sub_213FB2DF4(v27, &qword_27C917500, &qword_2146F42A8);
      LOBYTE(v25) = 3;
      sub_2146DA338();
      v25 = v18;
      v26 = v17;
      v24 = 4;
      sub_213FDCA18(v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v25, v26);
      return (*(v52 + 8))(v5, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214107828@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_2144F57F0(&v61);
  v12 = v61;
  v13 = v62;
  v14 = v64;
  v40 = v63;
  v15 = v65;
  sub_2144F5948(&v90);
  v59 = v90;
  v99 = v91;
  v41 = v92;
  v58 = v93;
  v60 = v94;
  sub_2144F5AA0(v88);
  v56 = v88[0];
  v57 = v88[1];
  v42 = v88[2];
  v55 = v88[3];
  v50 = v89;
  sub_2144F5BB4(v86);
  v46 = v86[0];
  v51 = v86[2];
  v52 = v86[3];
  v53 = v86[1];
  v47 = v87;
  v90 = a1;
  v91 = a2;
  v45 = v15;
  LOBYTE(v88[0]) = v15;
  v61 = 0xD00000000000001BLL;
  v62 = 0x800000021478DA70;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v16 = v43;
  v44 = v12;
  v17 = v12(&v90, v88, &v61);
  if (v16)
  {

    v18 = v46;
    v19 = v13;
LABEL_6:
    v20 = v58;

    a1 = v40;
    v24 = v47;
    v22 = v50;
LABEL_7:
    v25 = v55;
    v27 = v41;
    v26 = v42;
LABEL_8:
    v61 = v44;
    v62 = v19;
    v63 = a1;
    v64 = v14;
    v65 = v45;
    *v66 = v98[0];
    *&v66[3] = *(v98 + 3);
    v67 = v59;
    v68 = v99;
    v69 = v27;
    v70 = v20;
    v71 = v60;
    *v72 = *v97;
    *&v72[3] = *&v97[3];
    v73 = v56;
    v74 = v57;
    v75 = v26;
    v76 = v25;
    v77 = v22;
    *&v78[3] = *&v96[3];
    *v78 = *v96;
    v79 = v18;
    v80 = v53;
    v81 = v51;
    v82 = v52;
    v83 = v24;
    *v84 = v95[0];
    *&v84[3] = *(v95 + 3);
    v85 = a10;
    return sub_2142EAEA4(&v61);
  }

  v35 = a2;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD00000000000001BLL;
    v23[1] = 0x800000021478DA70;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v46;
    v19 = v13;
    goto LABEL_6;
  }

  v19 = v13;

  v20 = a4;
  v90 = a3;
  v91 = a4;
  LOBYTE(v88[0]) = v60;
  v61 = 0xD000000000000019;
  v62 = 0x800000021478DA90;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v21 = v59(&v90, v88, &v61);
  v22 = v50;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000019;
    v30[1] = 0x800000021478DA90;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v46;
    v14 = v35;
    v20 = v58;

    v24 = v47;
    goto LABEL_7;
  }

  v90 = a5;
  v91 = a6;
  LOBYTE(v88[0]) = v50;
  v61 = 0xD00000000000001ALL;
  v62 = 0x800000021478DAB0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v29 = v56(&v90, v88, &v61);
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001ALL;
    v32[1] = 0x800000021478DAB0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v46;
    v25 = v55;

    v14 = v35;
    v27 = a3;
    v24 = v47;
    v26 = v42;
    goto LABEL_8;
  }

  v90 = a7;
  v91 = a8;
  v24 = v47;
  LOBYTE(v88[0]) = v47;
  v61 = 0xD000000000000022;
  v62 = 0x800000021478DAD0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  sub_213FDC9D0(v51, v52);
  v31 = v46(&v90, v88, &v61);
  v18 = v46;
  v22 = v50;
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000022;
    v34[1] = 0x800000021478DAD0;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v51, v52);
    v14 = v35;
    v27 = a3;
    v20 = a4;
    v26 = a5;
    v25 = a6;
    goto LABEL_8;
  }

  sub_213FDC6D0(v51, v52);

  result = sub_213FDC6D0(v51, v52);
  *a9 = v44;
  *(a9 + 8) = v13;
  *(a9 + 16) = a1;
  *(a9 + 24) = v35;
  *(a9 + 32) = v45;
  *(a9 + 33) = v98[0];
  *(a9 + 36) = *(v98 + 3);
  v33 = v99;
  *(a9 + 40) = v59;
  *(a9 + 48) = v33;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v60;
  *(a9 + 73) = *v97;
  *(a9 + 76) = *&v97[3];
  *(a9 + 80) = v56;
  *(a9 + 88) = v57;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v50;
  *(a9 + 116) = *&v96[3];
  *(a9 + 113) = *v96;
  *(a9 + 120) = v46;
  *(a9 + 128) = v53;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = v47;
  *(a9 + 156) = *(v95 + 3);
  *(a9 + 153) = v95[0];
  *(a9 + 160) = a10;
  return result;
}

uint64_t sub_214108000()
{
  v1 = *v0;
  v2 = 0x614E64726F636572;
  v3 = 0x6D614E72656E776FLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6573616261746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E656E6F7ALL;
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

uint64_t sub_2141080B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214362924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2141080DC(uint64_t a1)
{
  v2 = sub_2142EAEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214108118(uint64_t a1)
{
  v2 = sub_2142EAEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214108154@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906308, &qword_2146F42D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - v7;
  v9 = a1[3];
  v139 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2142EAEF8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v10 = v6;
  LOBYTE(v104) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v92 = v11;
  LOBYTE(v104) = 1;
  v15 = v5;
  v14 = sub_2146DA168();
  v17 = v16;
  v91 = v14;
  LOBYTE(v104) = 2;
  *&v90 = sub_2146DA168();
  *(&v90 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v93) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v89 = v17;
  v88 = *(&v104 + 1);
  v20 = v104;
  v134 = 4;
  v21 = sub_2146DA1A8();
  v65 = v20;
  v70 = v15;
  v71 = v21;
  sub_2144F57F0(&v104);
  v87 = v104;
  v66 = v105;
  v86 = v106;
  v22 = v107;
  sub_2144F5948(&v93);
  v85 = *(&v93 + 1);
  v79 = v93;
  v83 = *(&v94 + 1);
  v67 = v94;
  v84 = v95;
  sub_2144F5AA0(&v129);
  v80 = v129;
  v82 = v130;
  v68 = v131;
  v78 = v132;
  v81 = v133;
  sub_2144F5BB4(v127);
  v73 = v127[0];
  v75 = v127[2];
  v76 = v127[3];
  v77 = v127[1];
  v74 = v128;
  *&v93 = v92;
  *(&v93 + 1) = v13;
  v72 = v22;
  LOBYTE(v129) = v22;
  *&v104 = 0xD00000000000001BLL;
  *(&v104 + 1) = 0x800000021478DA70;
  v69 = 0x800000021478DA70;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;

  v23 = (v87)(&v93, &v129, &v104);
  v64 = 0x800000021478A360;
  v24 = v89;
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    v30 = v69;
    *v31 = 0xD00000000000001BLL;
    v31[1] = v30;
    v32 = v64;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();

    v29 = v79;

    (*(v10 + 8))(v8, v70);
    v33 = v86;

    v34 = *(&v87 + 1);

    v92 = v66;
    v35 = v68;
    v36 = v83;
LABEL_8:
    v37 = v67;
    v38 = v78;
    goto LABEL_9;
  }

  v25 = v64;
  v66 = 0;

  *&v93 = v91;
  *(&v93 + 1) = v24;
  LOBYTE(v129) = v84;
  *&v104 = 0xD000000000000019;
  *(&v104 + 1) = 0x800000021478DA90;
  v105 = 0xD00000000000001CLL;
  v106 = v25;

  v26 = v66;
  v27 = v79;
  v28 = v79(&v93, &v129, &v104);
  v29 = v27;
  if (v26)
  {

LABEL_15:

    (*(v10 + 8))(v8, v70);
    v36 = v83;

    v33 = v13;
    v34 = *(&v87 + 1);
    v35 = v68;
    goto LABEL_8;
  }

  v66 = 0;
  if ((v28 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000019;
    v42[1] = 0x800000021478DA90;
    v43 = v64;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = v43;
    swift_willThrow();

    goto LABEL_15;
  }

  v39 = v64;

  v93 = v90;
  LOBYTE(v129) = v81;
  v86 = 0xD00000000000001ALL;
  *&v104 = 0xD00000000000001ALL;
  *(&v104 + 1) = 0x800000021478DAB0;
  v105 = 0xD00000000000001CLL;
  v106 = v39;

  v40 = v66;
  v41 = v80(&v93, &v129, &v104);
  if (v40)
  {

LABEL_19:

    (*(v10 + 8))(v8, v70);
    v47 = v78;

    v33 = v13;
    v37 = v91;
    v36 = v89;
    v38 = v47;
    v29 = v79;
    v34 = *(&v87 + 1);
    v35 = v68;
    goto LABEL_9;
  }

  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = v86;
    v46[1] = 0x800000021478DAB0;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v64;
    swift_willThrow();
    goto LABEL_19;
  }

  v44 = v64;

  v129 = v65;
  v130 = v88;
  LOBYTE(v93) = v74;
  *&v104 = 0xD000000000000022;
  *(&v104 + 1) = 0x800000021478DAD0;
  v105 = 0xD00000000000001CLL;
  v106 = v44;

  sub_213FDC9D0(v75, v76);
  v45 = v73(&v129, &v93, &v104);
  if (v45)
  {
    v49 = v75;
    v48 = v76;
    sub_213FDC6D0(v75, v76);

    (*(v10 + 8))(v8, v70);
    v50 = v77;

    sub_213FDC6D0(v49, v48);
    v93 = v87;
    *&v94 = v92;
    *(&v94 + 1) = v13;
    LOBYTE(v95) = v72;
    *(&v95 + 1) = v138[0];
    DWORD1(v95) = *(v138 + 3);
    *(&v95 + 1) = v79;
    *&v96 = v85;
    v52 = v89;
    v51 = v90;
    *(&v96 + 1) = v91;
    *&v97 = v89;
    BYTE8(v97) = v84;
    *(&v97 + 9) = *v137;
    HIDWORD(v97) = *&v137[3];
    *&v98 = v80;
    *(&v98 + 1) = v82;
    v99 = v90;
    LOBYTE(v100) = v81;
    *(&v100 + 1) = *v136;
    DWORD1(v100) = *&v136[3];
    *(&v100 + 1) = v73;
    *&v101 = v50;
    *(&v101 + 1) = v65;
    *&v102 = v88;
    BYTE8(v102) = v74;
    HIDWORD(v102) = *&v135[3];
    *(&v102 + 9) = *v135;
    v53 = v71;
    v103 = v71;
    v54 = v101;
    v55 = v102;
    *(a2 + 160) = v71;
    *(a2 + 128) = v54;
    *(a2 + 144) = v55;
    v56 = v94;
    *a2 = v93;
    *(a2 + 16) = v56;
    v57 = v95;
    v58 = v96;
    v59 = v100;
    *(a2 + 96) = v99;
    *(a2 + 112) = v59;
    v60 = v98;
    *(a2 + 64) = v97;
    *(a2 + 80) = v60;
    *(a2 + 32) = v57;
    *(a2 + 48) = v58;
    sub_2142EAF4C(&v93, &v104);
    __swift_destroy_boxed_opaque_existential_1(v139);
    v104 = v87;
    v105 = v92;
    v106 = v13;
    v107 = v72;
    *v108 = v138[0];
    *&v108[3] = *(v138 + 3);
    v109 = v79;
    v110 = v85;
    v111 = v91;
    v112 = v52;
    v113 = v84;
    *v114 = *v137;
    *&v114[3] = *&v137[3];
    v115 = v80;
    v116 = v82;
    v117 = __PAIR128__(*(&v90 + 1), v51);
    v118 = v81;
    *&v119[3] = *&v136[3];
    *v119 = *v136;
    v120 = v73;
    v121 = v77;
    v122 = v65;
    v123 = v88;
    v124 = v74;
    *&v125[3] = *&v135[3];
    *v125 = *v135;
    v126 = v53;
    return sub_2142EAEA4(&v104);
  }

  sub_214031C4C();
  swift_allocError();
  *v61 = 0xD000000000000022;
  v61[1] = 0x800000021478DAD0;
  v62 = v64;
  v61[2] = 0xD00000000000001CLL;
  v61[3] = v62;
  swift_willThrow();

  (*(v10 + 8))(v8, v70);

  sub_213FDC6D0(v75, v76);
  v33 = v13;
  v38 = *(&v90 + 1);
  v37 = v91;
  v36 = v89;
  v35 = v90;
  v29 = v79;
  v34 = *(&v87 + 1);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v139);
  *&v104 = v87;
  *(&v104 + 1) = v34;
  v105 = v92;
  v106 = v33;
  v107 = v72;
  *v108 = v138[0];
  *&v108[3] = *(v138 + 3);
  v109 = v29;
  v110 = v85;
  v111 = v37;
  v112 = v36;
  v113 = v84;
  *v114 = *v137;
  *&v114[3] = *&v137[3];
  v115 = v80;
  v116 = v82;
  *&v117 = v35;
  *(&v117 + 1) = v38;
  v118 = v81;
  *&v119[3] = *&v136[3];
  *v119 = *v136;
  v120 = v73;
  v121 = v77;
  v122 = v75;
  v123 = v76;
  v124 = v74;
  *&v125[3] = *&v135[3];
  *v125 = *v135;
  v126 = v71;
  return sub_2142EAEA4(&v104);
}