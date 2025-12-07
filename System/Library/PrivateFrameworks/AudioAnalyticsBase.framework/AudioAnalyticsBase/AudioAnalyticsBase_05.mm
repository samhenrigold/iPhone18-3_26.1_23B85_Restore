uint64_t sub_2239AC4A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64616F6C7265766FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73747469726973;
    }

    else
    {
      v4 = 0x65646F63656D6974;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xED00006575737349;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616870;
    }

    else
    {
      v4 = 0x64616F6C7265766FLL;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x73747469726973;
  if (a2 != 2)
  {
    v8 = 0x65646F63656D6974;
    v7 = 0xED00006575737349;
  }

  if (a2)
  {
    v2 = 0x6573616870;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

uint64_t sub_2239AC5FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74616F6C66;
    }

    else
    {
      v4 = 1819242338;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7630441;
    }

    else
    {
      v4 = 0x676E69727473;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x74616F6C66;
  if (a2 != 2)
  {
    v8 = 1819242338;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 7630441;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

uint64_t sub_2239AC714(uint64_t a1, unsigned __int8 a2)
{
  sub_2239B3228();
}

uint64_t sub_2239AC8B8(uint64_t a1, unsigned __int8 a2)
{
  sub_2239B3228();
}

uint64_t sub_2239ACA28(uint64_t a1, unsigned __int8 a2)
{
  sub_2239B3228();
}

uint64_t sub_2239ACB8C(uint64_t a1, unsigned __int8 a2)
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239ACCC0(uint64_t a1, unsigned __int8 a2)
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239ACE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_223982880(0, v2, 0);
    v3 = v10;
    v5 = a1 + 32;
    do
    {
      ++v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFE8, &qword_2239B5B80);
      swift_dynamicCast();
      v10 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_223982880((v6 > 1), v7 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v7 + 1;
      sub_2239695C0(&v9, v3 + 40 * v7 + 32);
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_2239ACF20(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (qword_281336768 != -1)
    {
      swift_once();
    }

    LOBYTE(v115) = 9;
    sub_22397F28C(a1, qword_2813382B8, &v115);
    if (v3)
    {
      v145 = v3;
LABEL_22:

      return;
    }
  }

  v8 = sub_2239AEB78(v7, sub_2239AEEB0, sub_2239AEEB0);

  if ((a2 & 1) == 0)
  {
    sub_22399F11C(v8);
    if (v3)
    {
      v145 = v3;
LABEL_21:

      goto LABEL_22;
    }
  }

  v10 = sub_2239AEB78(v9, sub_2239AECE8, sub_2239AECE8);
  v145 = v3;

  if (a2)
  {
    v11 = 266;
  }

  else
  {
    v11 = 10;
    v12 = v145;
    sub_22399D854(v10);
    v145 = v12;
    if (v12)
    {

      goto LABEL_21;
    }
  }

  v13 = sub_22399B688(2u, v10);
  v14 = v145;
  v15 = sub_22398A144(v13);
  v145 = v14;
  if (v14)
  {

    goto LABEL_22;
  }

  v16 = v15;
  v72 = a3;

  v17 = sub_22399B88C(1u, v10);
  v83 = (v17 == 2) | v17;
  v18 = sub_22399BA80(3u, v10);
  v80 = sub_22399BC80(4u, v10);
  v81 = v19;
  v76 = sub_22399BC80(5u, v10);
  v78 = v20;
  v84 = sub_22399BC80(6u, v10);
  v22 = v21;
  v75 = sub_22399BC80(7u, v10);
  v24 = v23;
  v25 = sub_22399BE78(8u, v10);
  v73 = v26;

  v144 = BYTE4(v18) & 1;
  v143 = v22 & 1;
  v27 = *&v80;
  v142 = v24 & 1;
  LOBYTE(v136) = v83 & 1;
  if (v81)
  {
    v27 = 0.0;
  }

  v28 = *&v76;
  *(&v136 + 1) = v16;
  LODWORD(v137) = v18;
  if (v78)
  {
    v28 = 3600.0;
  }

  BYTE4(v137) = v144;
  *(&v137 + 1) = v27;
  *&v138 = v28;
  *(&v138 + 1) = v84;
  LOBYTE(v139) = v143;
  *(&v139 + 1) = v75;
  LOBYTE(v140) = v142;
  *(&v140 + 1) = v25;
  v141 = v73;
  v29 = v145;
  v30 = sub_22397BF28(6, v8, v11);
  v145 = v29;
  if (v29)
  {
LABEL_20:
    sub_223973A10(&v136);
    goto LABEL_21;
  }

  v32 = v30;
  v33 = v31;

  v34._countAndFlagsBits = v32;
  v34._object = v33;
  TTRConfig.RadarReproducibility.init(rawValue:)(v34);
  v35 = v115;
  if (v115 == 7)
  {

    sub_223973A10(&v136);

    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_2239B3678();

    v36 = 0x80000002239BAFD0;
    v37 = 0xD000000000000026;
LABEL_25:
    *&v115 = v37;
    *(&v115 + 1) = v36;
    MEMORY[0x223DEE030](v32, v33);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    v38 = v115;
    sub_223973AD8();
    v39 = swift_allocError();
    *v40 = v38;
    *(v40 + 16) = 0;
    v145 = v39;
    swift_willThrow();
    return;
  }

  v41 = v145;
  v42 = sub_22397BF28(7, v8, v11);
  v145 = v41;
  if (v41)
  {
    goto LABEL_20;
  }

  v32 = v42;
  v33 = v43;

  v44._countAndFlagsBits = v32;
  v44._object = v33;
  TTRConfig.RadarClassification.init(rawValue:)(v44);
  v45 = v115;
  if (v115 == 11)
  {

    sub_223973A10(&v136);

    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_2239B3678();

    v36 = 0x80000002239BB000;
    v37 = 0xD000000000000024;
    goto LABEL_25;
  }

  v46 = sub_22399D004(0, v8, v11);
  v47 = v145;
  v48 = sub_22397BF28(1, v8, v11);
  if (v47)
  {
    v145 = v47;
    goto LABEL_20;
  }

  v50 = v49;
  v85 = v48;
  v51 = sub_22397BF28(2, v8, v11);
  v53 = v52;
  *&v82 = sub_22397BF28(3, v8, v11);
  *(&v82 + 1) = v54;
  *&v79 = sub_22397BF28(4, v8, v11);
  *(&v79 + 1) = v55;
  v77 = sub_22397C08C(5, v8, v11);
  v145 = 0;
  *&v74 = sub_22397BF28(8, v8, v11);
  *(&v74 + 1) = v56;
  v145 = 0;
  v57 = sub_22399D0DC(9, v8, v11);

  v58 = v145;
  CommonConfigFields.init(dict:)(a1, &v131);
  v145 = v58;
  if (v58)
  {
    sub_223973A10(&v136);

    goto LABEL_22;
  }

  if (v46 == 2 || (v46 & 1) != 0)
  {
    v106 = v138;
    v107 = v139;
    v108 = v140;
    v104 = v136;
    v105 = v137;
    *&v92[40] = v138;
    *&v92[56] = v139;
    *&v92[72] = v140;
    *&v92[8] = v136;
    v130 = v132;
    *&v86 = v85;
    *(&v86 + 1) = v50;
    *&v87 = v51;
    *(&v87 + 1) = v53;
    v88 = v82;
    v89 = v79;
    *&v90 = v77;
    BYTE8(v90) = v35;
    BYTE9(v90) = v45;
    v91 = v74;
    *v92 = v57;
    *&v92[88] = v141;
    *&v92[24] = v137;
    LOWORD(v93) = v131;
    BYTE2(v93) = v132;
    *(&v93 + 1) = v133;
    v94 = v134;
    v95 = v135;
    v96[0] = v85;
    v96[1] = v50;
    v96[2] = v51;
    v96[3] = v53;
    v97 = v82;
    v98 = v79;
    v99 = v77;
    v100 = v35;
    v101 = v45;
    v102 = v74;
    v109 = v141;
    v103 = v57;
    v110 = v131;
    v111 = v132;
    v112 = v133;
    v113 = v134;
    v114 = v135;
    sub_22398AC40(&v86, &v115);
    sub_2239AF100(v96);
    v127 = v93;
    v128 = v94;
    v129 = v95;
    v123 = *&v92[32];
    v124 = *&v92[48];
    v125 = *&v92[64];
    v126 = *&v92[80];
    v119 = v90;
    v120 = v91;
    v121 = *v92;
    v122 = *&v92[16];
    v115 = v86;
    v116 = v87;
    v117 = v88;
    v118 = v89;
    nullsub_1();
  }

  else
  {
    sub_223973A10(&v136);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v59 = sub_2239B3048();
    __swift_project_value_buffer(v59, qword_2813366C8);

    v60 = sub_2239B3028();
    v61 = sub_2239B34C8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v115 = v63;
      *v62 = 136380675;
      v64 = sub_223973B2C(v85, v50, &v115);

      *(v62 + 4) = v64;
      _os_log_impl(&dword_22395C000, v60, v61, "Instance disabled. { radarTitle=%{private}s }", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x223DEF1D0](v63, -1, -1);
      MEMORY[0x223DEF1D0](v62, -1, -1);
    }

    else
    {
    }

    sub_2239AF130(&v115);
  }

  v65 = v128;
  v72[12] = v127;
  v72[13] = v65;
  v72[14] = v129;
  v66 = v124;
  v72[8] = v123;
  v72[9] = v66;
  v67 = v126;
  v72[10] = v125;
  v72[11] = v67;
  v68 = v120;
  v72[4] = v119;
  v72[5] = v68;
  v69 = v122;
  v72[6] = v121;
  v72[7] = v69;
  v70 = v116;
  *v72 = v115;
  v72[1] = v70;
  v71 = v118;
  v72[2] = v117;
  v72[3] = v71;
}

AudioAnalyticsBase::TTRConfig::RadarReproducibility_optional __swiftcall TTRConfig.RadarReproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

AudioAnalyticsBase::TTRConfig::RadarClassification_optional __swiftcall TTRConfig.RadarClassification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void TTRConfig.init(enabled:radarTitle:radarProblemDescription:radarComponentName:radarComponentVersion:radarComponentIdentifier:radarReproducibility:radarClassification:displayReason:radarKeywords:diagnosticRulesConfig:commonFields:allowUnknownFields:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, char *a12, char *a13, __int128 a14, uint64_t a15, __int128 *a16, unint64_t *a17)
{
  v132 = a3;
  v21 = *a12;
  v22 = *a13;
  v23 = a16[3];
  v130[2] = a16[2];
  v130[3] = v23;
  v130[4] = a16[4];
  v131 = *(a16 + 10);
  v24 = a16[1];
  v130[0] = *a16;
  v130[1] = v24;
  v25 = *a17;
  v26 = a17[1];
  v27 = a17[2];
  v28 = a17[3];
  v29 = a17[4];
  v30 = a17[5];
  v85 = a2;
  if (a1 == 2 || (a1 & 1) != 0)
  {
    if (v26 == 1)
    {
      v74 = v22;
      v75 = v21;
      v78 = a4;
      v80 = a6;
      v83 = a8;
      v31 = sub_223974468(MEMORY[0x277D84F90]);
      CommonConfigFields.init(dict:)(v31, &v122);
      if (v17)
      {

        v32 = a16[3];
        v114 = a16[2];
        v115 = v32;
        v116 = a16[4];
        *&v117 = *(a16 + 10);
        v33 = a16[1];
        v112 = *a16;
        v113 = v33;
        sub_223973A10(&v112);
        return;
      }

      LOWORD(v25) = v122;
      LOBYTE(v34) = v123;
      v26 = v124;
      v27 = v125;
      v28 = v126;
      v29 = v127;
      v30 = v128;
      a8 = v83;
      a2 = v85;
      a4 = v78;
      a6 = v80;
      v21 = v75;
      v22 = v74;
    }

    else
    {
      v34 = (v25 >> 16) & 1;
    }

    v70 = v25;
    *&v77 = v27;
    *(&v77 + 1) = v28;
    *&v82 = v29;
    *(&v82 + 1) = v30;
    v129 = v34;
    *&v87 = a2;
    *(&v87 + 1) = v132;
    *&v88 = a4;
    *(&v88 + 1) = a5;
    v72 = a5;
    v73 = a7;
    *&v89 = a6;
    *(&v89 + 1) = a7;
    *&v90 = a8;
    *(&v90 + 1) = a10;
    *&v91 = a11;
    BYTE8(v91) = v21;
    BYTE9(v91) = v22;
    v92 = a14;
    v43 = a16[1];
    *&v93[8] = *a16;
    *&v93[24] = v43;
    v44 = a16[2];
    v45 = a16[3];
    v46 = a16[4];
    v47 = *(a16 + 10);
    *v93 = a15;
    *&v93[88] = v47;
    *&v93[72] = v46;
    *&v93[56] = v45;
    *&v93[40] = v44;
    LOWORD(v94) = v25;
    v71 = v129;
    BYTE2(v94) = v129;
    *(&v94 + 1) = v26;
    *&v95 = v27;
    *(&v95 + 1) = v28;
    *&v96 = v29;
    *(&v96 + 1) = v30;
    v97 = v87;
    v98 = v88;
    v101 = v91;
    v102 = a14;
    v99 = v89;
    v100 = v90;
    v105 = *&v93[32];
    v106 = *&v93[48];
    v103 = *v93;
    v104 = *&v93[16];
    v110 = v95;
    v111 = v96;
    v108 = *&v93[80];
    v109 = v94;
    v107 = *&v93[64];
    v48 = a8;
    v49 = a6;
    v50 = a4;
    v51 = v21;
    v52 = v22;
    nullsub_1();
    v53 = v95;
    a9[12] = v94;
    a9[13] = v53;
    a9[14] = v111;
    v54 = v106;
    a9[8] = v105;
    a9[9] = v54;
    v55 = v108;
    a9[10] = v107;
    a9[11] = v55;
    v56 = v102;
    a9[4] = v101;
    a9[5] = v56;
    v57 = v104;
    a9[6] = v103;
    a9[7] = v57;
    v58 = v98;
    *a9 = v97;
    a9[1] = v58;
    v59 = v100;
    a9[2] = v99;
    a9[3] = v59;
    v60 = a16[3];
    *&v118[40] = a16[2];
    *&v118[56] = v60;
    *&v118[72] = a16[4];
    v61 = a16[1];
    *&v118[8] = *a16;
    *&v112 = v85;
    *(&v112 + 1) = v132;
    *&v113 = v50;
    *(&v113 + 1) = v72;
    *&v114 = v49;
    *(&v114 + 1) = v73;
    *&v115 = v48;
    *(&v115 + 1) = a10;
    *&v116 = a11;
    BYTE8(v116) = v51;
    BYTE9(v116) = v52;
    v117 = a14;
    v62 = *(a16 + 10);
    *v118 = a15;
    *&v118[88] = v62;
    *&v118[24] = v61;
    LOWORD(v119) = v70;
    BYTE2(v119) = v71;
    *(&v119 + 1) = v26;
    v120 = v77;
    v121 = v82;
    sub_22398AC40(&v87, v86);
    sub_2239AF100(&v112);
  }

  else
  {
    v35 = *a17;
    v76 = a17[2];
    v79 = a17[3];
    v81 = a17[4];
    v84 = a17[5];
    sub_223973A10(v130);

    sub_223973A64(v35, v26, v76, v79, v81, v84);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v36 = sub_2239B3048();
    __swift_project_value_buffer(v36, qword_2813366C8);
    v37 = v132;

    v38 = sub_2239B3028();
    v39 = sub_2239B34C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v112 = v41;
      *v40 = 136380675;
      v42 = sub_223973B2C(v85, v37, &v112);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_22395C000, v38, v39, "Instance disabled. { radarTitle=%{private}s }", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x223DEF1D0](v41, -1, -1);
      MEMORY[0x223DEF1D0](v40, -1, -1);
    }

    else
    {
    }

    sub_2239AF130(&v112);
    v63 = v120;
    a9[12] = v119;
    a9[13] = v63;
    a9[14] = v121;
    v64 = *&v118[48];
    a9[8] = *&v118[32];
    a9[9] = v64;
    v65 = *&v118[80];
    a9[10] = *&v118[64];
    a9[11] = v65;
    v66 = v117;
    a9[4] = v116;
    a9[5] = v66;
    v67 = *&v118[16];
    a9[6] = *v118;
    a9[7] = v67;
    v68 = v113;
    *a9 = v112;
    a9[1] = v68;
    v69 = v115;
    a9[2] = v114;
    a9[3] = v69;
  }
}

uint64_t TTRConfig.radarTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRConfig.radarProblemDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TTRConfig.radarComponentName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTRConfig.radarComponentVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TTRConfig.displayReason.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TTRConfig.diagnosticRulesConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10 = *(v1 + 152);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 184);
  v6 = *(v1 + 120);
  v9[0] = *(v1 + 104);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_223969B50(v9, v8);
}

double TTRConfig.commonFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 194);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  *a1 = *(v1 + 192);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

uint64_t sub_2239AE0B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x5279616C70736964;
    if (a1 != 8)
    {
      v6 = 0x79654B7261646172;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 == 5)
    {
      v7 = 0xD000000000000018;
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
    v1 = 0x64656C62616E65;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v3 = v2;
    }

    if (a1)
    {
      v1 = 0x7469547261646172;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_2239AE220(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2239AE0B8(*a1);
  v5 = v4;
  if (v3 == sub_2239AE0B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2239B3958();
  }

  return v8 & 1;
}

uint64_t sub_2239AE2A8()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AE0B8(v1);
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239AE30C(uint64_t a1)
{
  sub_2239AE0B8(*v1);
  sub_2239B3228();
}

uint64_t sub_2239AE360(uint64_t a1)
{
  v2 = *v1;
  sub_2239B3A18();
  sub_2239AE0B8(v2);
  sub_2239B3228();

  return sub_2239B3A78();
}

unint64_t sub_2239AE3C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2239AF49C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2239AE3F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2239AE0B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TTRConfig.RadarReproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x7254746E64694469;
  if (v1 != 5)
  {
    v3 = 0x696C707041746F6ELL;
  }

  v4 = 0x796C65726172;
  if (v1 != 3)
  {
    v4 = 0x656C62616E75;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x737961776C61;
  if (v1 != 1)
  {
    v5 = 0x656D6974656D6F73;
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

uint64_t sub_2239AE530(uint64_t a1)
{
  sub_2239B3228();
}

void sub_2239AE658(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE900000000000079;
  v6 = 0x7254746E64694469;
  if (v2 != 5)
  {
    v6 = 0x696C707041746F6ELL;
    v5 = 0xED0000656C626163;
  }

  v7 = 0x796C65726172;
  if (v2 != 3)
  {
    v7 = 0x656C62616E75;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x737961776C61;
  if (v2 != 1)
  {
    v9 = 0x656D6974656D6F73;
    v8 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t TTRConfig.RadarClassification.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 1701736302;
    v8 = 0xD000000000000011;
    v9 = 0x7265776F70;
    if (v1 != 3)
    {
      v9 = 0x616D726F66726570;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x7974697275636573;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x4E65727574616566;
    v3 = 0x6D65636E61686E65;
    if (v1 != 9)
    {
      v3 = 1802723700;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x6C69626173556975;
    v5 = 0x4273756F69726573;
    if (v1 != 6)
    {
      v5 = 0x677542726568746FLL;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2239AE8D4()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AC714(v3, v1);
  return sub_2239B3A78();
}

uint64_t sub_2239AE924(uint64_t a1)
{
  v2 = *v1;
  sub_2239B3A18();
  sub_2239AC714(v4, v2);
  return sub_2239B3A78();
}

unint64_t sub_2239AE974@<X0>(unint64_t *a1@<X8>)
{
  result = TTRConfig.RadarClassification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2239AE9AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD40, &qword_2239B8C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B46E0;
  *(inited + 32) = sub_2239ACE0C(&unk_2836FC9A0, &type metadata for TTRConfig.TTRKeys);
  *(inited + 40) = sub_2239ACE0C(&unk_2836FB1F0, &type metadata for DiagnosticRulesConfig.DiagnosticConfigKeys);
  *(inited + 48) = sub_2239ACE0C(&unk_2836FB220, &type metadata for CommonKnownFields);
  v1 = _s18AudioAnalyticsBase6ConfigC12collapseKeysyShySSGSaySY_pSS8RawValueSYRts_XPGd_tFZ_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD48, &unk_2239B4D50);
  result = swift_arrayDestroy();
  qword_2813382B8 = v1;
  return result;
}

double sub_2239AEA90@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 194);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  *a1 = *(v1 + 192);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

void *sub_2239AEB78(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_2239AF078(v12, v7, v5, a3);
  result = MEMORY[0x223DEF1D0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_2239AECE8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v26 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_22395E644(*(a3 + 56) + 32 * v13, v25);
    v23[0] = v15;
    v23[1] = v16;
    sub_22395E644(v25, &v24);
    sub_22397F788(v23, &v21);
    swift_bridgeObjectRetain_n();
    v17 = sub_2239B37B8();

    sub_223975758(v23, &qword_27D09FD38, "n_");
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);

    if (v17 <= 8)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_22399088C(v20, a2, v26, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22399088C(v20, a2, v26, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2239AEEB0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v26 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_22395E644(*(a3 + 56) + 32 * v13, v25);
    v23[0] = v15;
    v23[1] = v16;
    sub_22395E644(v25, &v24);
    sub_22397F788(v23, &v21);
    swift_bridgeObjectRetain_n();
    v17 = sub_2239B37B8();

    sub_223975758(v23, &qword_27D09FD38, "n_");
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);

    if (v17 <= 9)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_22399088C(v20, a2, v26, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22399088C(v20, a2, v26, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2239AF078(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

double sub_2239AF130(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2239AF15C()
{
  result = qword_27D0A05B8;
  if (!qword_27D0A05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05B8);
  }

  return result;
}

unint64_t sub_2239AF1E4()
{
  result = qword_27D0A05D0;
  if (!qword_27D0A05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05D0);
  }

  return result;
}

uint64_t sub_2239AF268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_2239AF2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRConfig.RadarClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRConfig.RadarClassification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2239AF49C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2239B37B8();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2239AF4E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 16) || (v9 = sub_223981500(10), (v10 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v9, &v95), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2813366C0 == -1)
    {
LABEL_19:
      v24 = sub_2239B3048();
      __swift_project_value_buffer(v24, qword_2813366C8);
      v25 = sub_2239B3028();
      v26 = sub_2239B34C8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22395C000, v25, v26, "No ttr section found, or malformed.", v27, 2u);
        MEMORY[0x223DEF1D0](v27, -1, -1);
      }

      return 0;
    }

LABEL_46:
    swift_once();
    goto LABEL_19;
  }

  v11 = *&v94[0];
  v12 = *(*&v94[0] + 16);
  if (v12)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v110 = v12 - 1;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        sub_2239ACF20(v16, a4 & 1, &v95);
        if (v4)
        {
        }

        v94[12] = v107;
        v94[13] = v108;
        v94[14] = v109;
        v94[8] = v103;
        v94[9] = v104;
        v94[10] = v105;
        v94[11] = v106;
        v94[4] = v99;
        v94[5] = v100;
        v94[6] = v101;
        v94[7] = v102;
        v94[0] = v95;
        v94[1] = v96;
        v94[2] = v97;
        v94[3] = v98;
        if (sub_2239AFB18(v94) != 1)
        {
          break;
        }

        ++v15;
        v91 = v107;
        v92 = v108;
        v93 = v109;
        v87 = v103;
        v88 = v104;
        v89 = v105;
        v90 = v106;
        v83 = v99;
        v84 = v100;
        v85 = v101;
        v86 = v102;
        v79 = v95;
        v80 = v96;
        v81 = v97;
        v82 = v98;
        sub_223975758(&v79, &qword_27D0A05E8, &qword_2239B8C78);
        if (v12 == v15)
        {
          goto LABEL_25;
        }
      }

      v91 = v107;
      v92 = v108;
      v93 = v109;
      v87 = v103;
      v88 = v104;
      v89 = v105;
      v90 = v106;
      v83 = v99;
      v84 = v100;
      v85 = v101;
      v86 = v102;
      v79 = v95;
      v80 = v96;
      v81 = v97;
      v82 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_223982134(0, *(v14 + 2) + 1, 1, v14);
      }

      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v62 = v18 + 1;
        v21 = v14;
        v22 = *(v14 + 2);
        v23 = sub_223982134((v17 > 1), v18 + 1, 1, v21);
        v18 = v22;
        v19 = v62;
        v14 = v23;
      }

      v13 = v15 + 1;
      v68 = v83;
      v69 = v84;
      v66 = v81;
      v67 = v82;
      v72 = v87;
      v73 = v88;
      v70 = v85;
      v71 = v86;
      v77 = v92;
      v78 = v93;
      v75 = v90;
      v76 = v91;
      v74 = v89;
      v63 = v79;
      v65 = v80;
      *(v14 + 2) = v19;
      v20 = &v14[240 * v18];
      *(v20 + 3) = v65;
      *(v20 + 4) = v66;
      *(v20 + 2) = v63;
      *(v20 + 7) = v69;
      *(v20 + 8) = v70;
      *(v20 + 5) = v67;
      *(v20 + 6) = v68;
      *(v20 + 11) = v73;
      *(v20 + 12) = v74;
      *(v20 + 9) = v71;
      *(v20 + 10) = v72;
      *(v20 + 15) = v77;
      *(v20 + 16) = v78;
      *(v20 + 13) = v75;
      *(v20 + 14) = v76;
    }

    while (v110 != v15);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v29 = *(v14 + 2);
  if (v29)
  {
    v30 = 0;
    v110 = MEMORY[0x277D84F90];
LABEL_27:
    v31 = 240 * v30 + 32;
    v32 = v30;
    while (v32 < *(v14 + 2))
    {
      v33 = *&v14[v31];
      v34 = *&v14[v31 + 32];
      v96 = *&v14[v31 + 16];
      v97 = v34;
      v95 = v33;
      v35 = *&v14[v31 + 48];
      v36 = *&v14[v31 + 64];
      v37 = *&v14[v31 + 96];
      v100 = *&v14[v31 + 80];
      v101 = v37;
      v98 = v35;
      v99 = v36;
      v38 = *&v14[v31 + 112];
      v39 = *&v14[v31 + 128];
      v40 = *&v14[v31 + 160];
      v104 = *&v14[v31 + 144];
      v105 = v40;
      v102 = v38;
      v103 = v39;
      v41 = *&v14[v31 + 176];
      v42 = *&v14[v31 + 192];
      v43 = *&v14[v31 + 224];
      v108 = *&v14[v31 + 208];
      v109 = v43;
      v106 = v41;
      v107 = v42;
      *(&v80 + 1) = &type metadata for TTRConfig;
      *&v81 = &protocol witness table for TTRConfig;
      *&v79 = swift_allocObject();
      memmove((v79 + 16), &v14[v31], 0xF0uLL);
      sub_22398AC40(&v95, v94);
      sub_22398AC40(&v95, v94);
      v44 = sub_223984164(&v79, a2, a3);
      if (v4)
      {

        sub_2239AF100(&v95);
        __swift_destroy_boxed_opaque_existential_0Tm(&v79);
      }

      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(&v79);
      if (v45)
      {
        v46 = v110;
        v64 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_223982970(0, *(v46 + 16) + 1, 1);
          v46 = v64;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v110 = v48 + 1;
          sub_223982970((v47 > 1), v48 + 1, 1);
          v49 = v110;
          v46 = v64;
        }

        v30 = v32 + 1;
        *(v46 + 16) = v49;
        v110 = v46;
        v50 = (v46 + 240 * v48);
        v51 = v95;
        v52 = v97;
        v50[3] = v96;
        v50[4] = v52;
        v50[2] = v51;
        v53 = v98;
        v54 = v99;
        v55 = v101;
        v50[7] = v100;
        v50[8] = v55;
        v50[5] = v53;
        v50[6] = v54;
        v56 = v102;
        v57 = v103;
        v58 = v105;
        v50[11] = v104;
        v50[12] = v58;
        v50[9] = v56;
        v50[10] = v57;
        v59 = v106;
        v60 = v107;
        v61 = v109;
        v50[15] = v108;
        v50[16] = v61;
        v50[13] = v59;
        v50[14] = v60;
        if (v29 - 1 != v32)
        {
          goto LABEL_27;
        }

        goto LABEL_41;
      }

      ++v32;
      sub_2239AF100(&v95);
      v31 += 240;
      if (v29 == v32)
      {
        goto LABEL_41;
      }
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v110 = MEMORY[0x277D84F90];
LABEL_41:

  result = v110;
  if (!*(v110 + 16))
  {

    return 0;
  }

  return result;
}

uint64_t sub_2239AFB18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for TTRConfig.TTRKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRConfig.TTRKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2239AFCB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2239AFD08()
{
  result = qword_27D0A0600;
  if (!qword_27D0A0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0600);
  }

  return result;
}

id static Utilities.generateError(with:code:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0610, &qword_2239B8D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B5BE0;
  *(inited + 32) = sub_2239B3188();
  *(inited + 40) = v7;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v8 = sub_223974EC4(inited);
  swift_setDeallocating();
  sub_2239B1EF0(inited + 32);
  sub_2239AFF30(v8);

  v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v10 = sub_2239B3158();
  v11 = sub_2239B30C8();

  v12 = [v9 initWithDomain:v10 code:a3 userInfo:v11];

  return v12;
}

void sub_2239AFF30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD70, &qword_2239B4D78);
    v2 = sub_2239B3798();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_2239685CC(&v22, v24);
        sub_2239685CC(v24, v25);
        sub_2239685CC(v25, &v23);
        v16 = sub_22396236C(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          sub_2239685CC(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_2239685CC(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_2239B01AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0A0620, &qword_2239B8D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B46E0;
  v3 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  v4 = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277CCA160];
  *(inited + 40) = a1;
  v6 = *v5;
  *(inited + 64) = v4;
  *(inited + 72) = v6;
  v7 = MEMORY[0x277D837D0];
  *(inited + 80) = 0x656C69626F6DLL;
  *(inited + 88) = 0xE600000000000000;
  v8 = *MEMORY[0x277CCA120];
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  *(inited + 144) = v7;
  *(inited + 120) = 0x656C69626F6DLL;
  *(inited + 128) = 0xE600000000000000;
  v9 = v3;
  v10 = v6;
  v11 = v8;
  v12 = sub_223974FD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD08, &qword_2239B8D90);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_2239B02B4()
{
  v0 = sub_2239B3518();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2239B3508();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2239B30B8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_223976FB0();
  sub_2239B3098();
  v7[1] = MEMORY[0x277D84F90];
  sub_223976FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FED8, &qword_2239B52E0);
  sub_223977054();
  sub_2239B3608();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_2239B3548();
  qword_27D0A0608 = result;
  return result;
}

id static Utilities.reportingServerQueue.getter()
{
  if (qword_27D09FCA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D0A0608;

  return v1;
}

uint64_t sub_2239B0518()
{
  v0 = sub_2239B2F28();
  __swift_allocate_value_buffer(v0, qword_281336750);
  __swift_project_value_buffer(v0, qword_281336750);
  return sub_2239B2EC8();
}

uint64_t sub_2239B064C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2239B2F28();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_281336748 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_281336750);
  (*(v6 + 16))(v9, v10, v5);
  sub_2239B2EE8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2239B07C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2239B2F28();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2239B0860(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000079 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 2;
  }

  else if (a1 == 1769105779 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 1;
  }

  else if (a1 == 0x736D72616C61 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 4;
  }

  else if (a1 == 0x73636974706168 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 3;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v5 = 0;
    v4 = 0;
  }

  else if (a1 == 0x6F6C41646E617473 && a2 == 0xEA0000000000656ELL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 5;
  }

  else if (a1 == 0x747541646E756F73 && a2 == 0xEF6769666E6F436FLL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 6;
  }

  else if (a1 == 0x6D726F46676E6F6CLL && a2 == 0xED00006F69647541 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BB150 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BB130 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 9;
  }

  else if (a1 == 0x737472656C61 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 10;
  }

  else if (a1 == 1953719668 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 11;
  }

  else if (a1 == 0x6567617355697061 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 12;
  }

  else if (a1 == 0x6F536D6574737973 && a2 == 0xEC00000073646E75 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 13;
  }

  else if (a1 == 0x616E41646E756F73 && a2 == 0xED0000736973796CLL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 14;
  }

  else if (a1 == 0x657275636573 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 15;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {
    v4 = 0;
    v5 = 0xFFFF;
  }

  else
  {
    v7 = sub_2239B3958();
    v4 = v7 ^ 1;
    if (v7)
    {
      v5 = 0xFFFF;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 0xFFFEFFFF | ((v4 & 1) << 16);
}

uint64_t sub_2239B0D94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x636972656E6547 && a2 == 0xE700000000000000;
  if (v3 || (sub_2239B3958() & 1) != 0)
  {
    v5 = 0;
    v6 = 0;
  }

  else if (a1 == 0x7472617453 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 1;
  }

  else if (a1 == 1886352467 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 2;
  }

  else if (a1 == 0x7075746553 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 5;
  }

  else if (a1 == 0x726F727245 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 6;
  }

  else if (a1 == 0x7465446575737349 && a2 == 0xED0000726F746365 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 7;
  }

  else if (a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 0xFFFF;
  }

  else if (a1 == 0x6574617669746341 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 3;
  }

  else if (a1 == 0x6176697463616544 && a2 == 0xEA00000000006574 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 4;
  }

  else if (a1 == 0x766972444944494DLL && a2 == 0xEA00000000007265 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 10;
  }

  else if (a1 == 0x676F4C7265776F50 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 8;
  }

  else if (a1 == 0x6F4C79726F6D654DLL && a2 == 0xE900000000000067 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 19;
  }

  else if (a1 == 0x696E556F69647541 && a2 == 0xEE00656761735574 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 9;
  }

  else if (a1 == 0x7972616D6D7553 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002239BB230 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002239BB210 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 14;
  }

  else if (a1 == 0x7078456F69647541 && a2 == 0xED0000657275736FLL || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 13;
  }

  else if (a1 == 0x694B726F736E6553 && a2 == 0xE900000000000074 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 15;
  }

  else if (a1 == 0x656C706D6953 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 16;
  }

  else if (a1 == 0x6172676F74736948 && a2 == 0xE90000000000006DLL || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 17;
  }

  else if (a1 == 0x6574617453 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 18;
  }

  else if (a1 == 0x6E49646F50726941 && a2 == 0xEA00000000006F66 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 20;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002239BB1F0 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v6 = 0;
    v5 = 22;
  }

  else if (a1 == 0x73676E6974746553 && a2 == 0xEE00657461647055)
  {
    v6 = 0;
    v5 = 23;
  }

  else
  {
    v8 = sub_2239B3958();
    v6 = v8 ^ 1;
    if (v8)
    {
      v5 = 23;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 0xFFFEFFFF | ((v6 & 1) << 16);
}

unint64_t sub_2239B14AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636972656E6547 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 1;
  }

  else if (a1 == 0x64726F636552 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 2;
  }

  else if (a1 == 0x6B63616279616C50 && a2 == 0xE800000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002239BB250 == a2 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 6;
  }

  else if (a1 == 0x7475706E49 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 3;
  }

  else if (a1 == 0x74757074754FLL && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 5;
  }

  else if (a1 == 20297 && a2 == 0xE200000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 7;
  }

  else if (a1 == 0x7075746553 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 8;
  }

  else if (a1 == 0x6552746E65696C43 && a2 == 0xED00007473657571 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 9;
  }

  else if (a1 == 0x6168436574756F52 && a2 == 0xEB0000000065676ELL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 10;
  }

  else if (a1 == 0x726F727245 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 11;
  }

  else if (a1 == 0x74726F7065524F49 && a2 == 0xEB00000000676E69 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 12;
  }

  else if (a1 == 0x616D726F66726550 && a2 == 0xEB0000000065636ELL || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 13;
  }

  else if (a1 == 0x656D756C6F56 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 14;
  }

  else if (a1 == 0x65736E61707845 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 15;
  }

  else if (a1 == 0x6F72506563696F56 && a2 == 0xEE00726F73736563 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 18;
  }

  else if (a1 == 0x48676E6972616548 && a2 == 0xED000068746C6165 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 16;
  }

  else if (a1 == 0x73646F50726941 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 17;
  }

  else if (a1 == 0x6C616974617053 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 20;
  }

  else if (a1 == 0x556F5478694D5056 && a2 == 0xED00006B6E696C70 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 21;
  }

  else if (a1 == 0x6863746157 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 22;
  }

  else if (a1 == 0x636E657265666E49 && a2 == 0xE900000000000065 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 23;
  }

  else if (a1 == 0x6E6172546C6C6143 && a2 == 0xEF6E6F6974616C73 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 24;
  }

  else if (a1 == 0x756F527261456E49 && a2 == 0xEC000000676E6974 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 25;
  }

  else if (a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0xFFFFFFFFLL;
  }

  else if (a1 == 1229211981 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x4000000;
  }

  else if (a1 == 0x6E6F6973736553 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x8000000;
  }

  else if (a1 == 5264196 && a2 == 0xE300000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x10000000;
  }

  else if (a1 == 4997448 && a2 == 0xE300000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x20000000;
  }

  else if (a1 == 0x676E6974756F52 && a2 == 0xE700000000000000 || (sub_2239B3958() & 1) != 0)
  {
    v4 = 0;
    v5 = 0x40000000;
  }

  else if (a1 == 0x786F626C6F6F54 && a2 == 0xE700000000000000)
  {
    v4 = 0;
    v5 = 0x80000000;
  }

  else
  {
    v7 = sub_2239B3958();
    v4 = v7 ^ 1;
    v5 = 0x80000000;
    if ((v7 & 1) == 0)
    {
      v5 = 0;
    }
  }

  return v5 | ((v4 & 1) << 32);
}

unint64_t sub_2239B1DD8(uint64_t a1, uint64_t a2)
{
  sub_22396C8B8();
  if (sub_2239B35E8())
  {
    v4 = sub_2239B35C8();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 40);
      do
      {
        v8 = sub_2239B14AC(*(v7 - 1), *v7);
        if ((v8 & 0x100000000) != 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        v6 |= v9;
        v7 += 2;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    LOBYTE(v11) = v6 == 0;
  }

  else
  {
    v10 = sub_2239B14AC(a1, a2);
    v6 = v10;
    v11 = HIDWORD(v10) & 1;
  }

  return v6 | (v11 << 32);
}

uint64_t sub_2239B1EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0618, &qword_2239B8D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ValueWithChangeIndicator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = 0;
  v8 = *(type metadata accessor for ValueWithChangeIndicator(0, a2, a3, a5) + 36);
  (*(*(a2 - 8) + 56))(&a4[v8], 1, 1, a2);
  v9 = sub_2239B3598();
  v10 = *(*(v9 - 8) + 40);

  return v10(&a4[v8], a1, v9);
}

uint64_t ValueWithChangeIndicator.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2239B3598();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2239B20BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_2239B3598();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, a1);
  v12 = type metadata accessor for ValueWithChangeIndicator(0, v5, v6, v11);
  return ValueWithChangeIndicator.value.setter(v9, v12);
}

uint64_t ValueWithChangeIndicator.value.setter(char *a1, uint64_t a2)
{
  v45 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2239B3598();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v35 - v8;
  v10 = *(v6 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v38 = a2;
  v18 = *(a2 + 36);
  v19 = *(v10 + 16);
  v19(&v35 - v16, &v48[v18], v6);
  v41 = v4;
  v20 = *(v4 + 48);
  v47 = v3;
  v44 = v20;
  LODWORD(v3) = v20(v17, 1, v3);
  v46 = v10;
  v43 = *(v10 + 8);
  v43(v17, v6);
  v21 = v3 == 1;
  v22 = v45;
  if (!v21)
  {
    v36 = v18;
    v19(v15, &v48[v18], v6);
    v23 = TupleTypeMetadata2;
    v24 = *(TupleTypeMetadata2 + 48);
    v19(v9, v22, v6);
    v19(&v9[v24], v15, v6);
    if (v44(v9, 1, v47) == 1)
    {
      v25 = v43;
      v43(v15, v6);
      if (v44(&v9[v24], 1, v47) == 1)
      {
        v25(v9, v6);
        v18 = v36;
        return (*(v46 + 40))(&v48[v18], v22, v6);
      }
    }

    else
    {
      v35 = v15;
      v26 = v39;
      v19(v39, v9, v6);
      if (v44(&v9[v24], 1, v47) != 1)
      {
        v28 = v26;
        v29 = v41;
        v30 = v37;
        v31 = v47;
        (*(v41 + 32))(v37, &v9[v24], v47);
        v32 = sub_2239B3138();
        v33 = *(v29 + 8);
        v33(v30, v31);
        v34 = v43;
        v43(v35, v6);
        v33(v28, v31);
        v34(v9, v6);
        v18 = v36;
        if (v32)
        {
          return (*(v46 + 40))(&v48[v18], v22, v6);
        }

        goto LABEL_8;
      }

      v43(v35, v6);
      (*(v41 + 8))(v26, v47);
    }

    (*(v40 + 8))(v9, v23);
    v18 = v36;
LABEL_8:
    *v48 = 1;
  }

  return (*(v46 + 40))(&v48[v18], v22, v6);
}

void (*ValueWithChangeIndicator.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_2239B3598();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_2239B27BC;
}

void sub_2239B27BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    ValueWithChangeIndicator.value.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ValueWithChangeIndicator.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2239B28AC(uint64_t a1)
{
  result = sub_2239B3598();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2239B292C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 1) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFE)
      {
        v20 = (*(v4 + 48))(&a1[v8 + 1] & ~v8);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        v18 = v17 >= 2;
        v19 = (v17 + 2147483646) & 0x7FFFFFFF;
        if (v18)
        {
          return (v19 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_2239B2AEC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 1) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFE)
  {
    v21 = (&a1[v11 + 1] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 1] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}