void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries.Output.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_655();
  sub_24DE229C0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_66();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries.Output(0);
  OUTLINED_FUNCTION_90();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_615();
  sub_24DD74A90();
  OUTLINED_FUNCTION_464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v10 = OUTLINED_FUNCTION_101();
    v11(v10);
    OUTLINED_FUNCTION_1135();
    MEMORY[0x253039720](v9);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v12);
    OUTLINED_FUNCTION_536();
    v13 = OUTLINED_FUNCTION_330();
    v14(v13);
  }

  else
  {
    memcpy(v17, v6, sizeof(v17));
    OUTLINED_FUNCTION_879();
    sub_24DDE81E4(v17, v18);
    MEMORY[0x253039720](0);
    memcpy(v16, v18, sizeof(v16));
    v15 = OUTLINED_FUNCTION_1267();
    Components.Schemas.GetLeaderboardEntries_Response.hash(into:)(v15);
    sub_24DDE8238(v17);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t sub_24DDD230C()
{
  sub_24DDE8288();

  return sub_24DE22B00();
}

void sub_24DDD2340(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_1329(a1, a2, a3, a4, a5, a6, a7, a8, x8_0);
  *(v22 + 64) = v24;
  *(v22 + 80) = v23;
  *(v22 + 96) = v26;
  *(v22 + 112) = v25;
  *(v22 + 128) = v28;
  *(v22 + 144) = v27;
  *(v22 + 160) = v29;
  *(v22 + 176) = v30;
}

uint64_t sub_24DDD239C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v179 = a1[2];
  v175 = a1[4];
  v181 = a1[5];
  v182 = a1[3];
  v7 = a1[8];
  v177 = a1[7];
  v8 = a1[10];
  v173 = a1[9];
  v10 = a1[11];
  v9 = a1[12];
  v12 = a1[13];
  v11 = a1[14];
  v13 = a1[15];
  v14 = a1[16];
  v15 = a1[17];
  v168 = a1[18];
  v16 = a1[19];
  v165 = a1[20];
  v166 = a1[21];
  v161 = a1[22];
  v17 = a2[1];
  v178 = a2[2];
  v18 = a2[3];
  v174 = a2[4];
  v180 = a2[5];
  v171 = a2[6];
  v176 = a2[7];
  v169 = a2[8];
  v19 = a2[10];
  v172 = a2[9];
  v21 = a2[11];
  v20 = a2[12];
  v23 = a2[13];
  v22 = a2[14];
  v24 = a2[15];
  v25 = a2[16];
  v26 = a2[17];
  v167 = a2[18];
  v28 = a2[19];
  v27 = a2[20];
  v29 = a2[21];
  v164 = a2[22];
  if (v6)
  {
    if (!v17)
    {
      goto LABEL_93;
    }

    v170 = a1[6];
    if (*a1 != *a2 || v6 != v17)
    {
      v147 = a5;
      v154 = a2[19];
      v132 = a2[12];
      v138 = a2[13];
      v31 = a1[19];
      v114 = a2[20];
      v115 = a2[10];
      v32 = a2[21];
      v33 = a1[16];
      v120 = a2[11];
      v125 = a1[11];
      v34 = a1[17];
      v35 = a2[17];
      v36 = a2[16];
      v127 = a1[10];
      v37 = a1[14];
      v142 = a1[12];
      v113 = a1[15];
      v38 = a2[15];
      v144 = a2[14];
      v39 = sub_24DE22CA0();
      v24 = v38;
      v9 = v142;
      v22 = v144;
      v13 = v113;
      v27 = v114;
      v11 = v37;
      v25 = v36;
      v8 = v127;
      v20 = v132;
      v26 = v35;
      v15 = v34;
      v21 = v120;
      v10 = v125;
      v14 = v33;
      v19 = v115;
      v29 = v32;
      a5 = v147;
      v28 = v154;
      v16 = v31;
      v23 = v138;
      if ((v39 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v170 = a1[6];
    if (v17)
    {
      goto LABEL_93;
    }
  }

  if (v182)
  {
    if (!v18)
    {
      goto LABEL_93;
    }

    if (v179 != v178 || v182 != v18)
    {
      v148 = a5;
      v155 = v28;
      v41 = v16;
      v128 = v8;
      v133 = v20;
      v42 = v27;
      v43 = v29;
      v44 = v14;
      v116 = v19;
      v121 = v21;
      v45 = v15;
      v46 = v26;
      v183 = v25;
      v141 = v12;
      v143 = v9;
      v47 = v11;
      v126 = v10;
      v48 = v13;
      v49 = v24;
      v145 = v22;
      v50 = sub_24DE22CA0();
      v24 = v49;
      v12 = v141;
      v13 = v48;
      v11 = v47;
      v9 = v143;
      v22 = v145;
      v25 = v183;
      v26 = v46;
      v19 = v116;
      v15 = v45;
      v21 = v121;
      v10 = v126;
      v14 = v44;
      a5 = v148;
      v28 = v155;
      v29 = v43;
      v27 = v42;
      v8 = v128;
      v20 = v133;
      v16 = v41;
      if ((v50 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_93;
  }

  if (v181)
  {
    v51 = v170;
    if (!v180)
    {
      goto LABEL_93;
    }

    if (v175 != v174 || v181 != v180)
    {
      v149 = a5;
      v156 = v28;
      v53 = v16;
      v129 = v8;
      v134 = v20;
      v54 = v27;
      v55 = v29;
      v56 = v14;
      v117 = v19;
      v122 = v21;
      v57 = v15;
      v58 = v26;
      v184 = v25;
      v9 = v24;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1099();
      v7 = v59;
      v25 = v184;
      v26 = v58;
      v19 = v117;
      v15 = v57;
      v21 = v122;
      v14 = v56;
      a5 = v149;
      v28 = v156;
      v29 = v55;
      v27 = v54;
      v8 = v129;
      v20 = v134;
      v16 = v53;
      if ((v60 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else
  {
    v51 = v170;
    if (v180)
    {
      goto LABEL_93;
    }
  }

  if (v177)
  {
    if (!v176)
    {
      goto LABEL_93;
    }

    if (v51 != v171 || v177 != v176)
    {
      v150 = a5;
      v157 = v28;
      v62 = v16;
      v130 = v8;
      v135 = v20;
      v63 = v27;
      v64 = v29;
      v65 = v14;
      v118 = v19;
      v123 = v21;
      v66 = v15;
      v67 = v26;
      v185 = v25;
      v9 = v24;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1099();
      v7 = v68;
      v25 = v185;
      v26 = v67;
      v19 = v118;
      v15 = v66;
      v21 = v123;
      v14 = v65;
      a5 = v150;
      v28 = v157;
      v29 = v64;
      v27 = v63;
      v8 = v130;
      v20 = v135;
      v16 = v62;
      if ((v69 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else if (v176)
  {
    goto LABEL_93;
  }

  if (v173)
  {
    if (!v172)
    {
      goto LABEL_93;
    }

    if (v7 != v169 || v173 != v172)
    {
      v151 = a5;
      v158 = v28;
      v71 = v16;
      v131 = v8;
      v136 = v20;
      v72 = v27;
      v73 = v29;
      v74 = v14;
      v119 = v19;
      v124 = v21;
      v75 = v15;
      v76 = v26;
      v139 = v23;
      v77 = v25;
      v9 = v24;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1099();
      v25 = v77;
      v23 = v139;
      v26 = v76;
      v19 = v119;
      v15 = v75;
      v21 = v124;
      v14 = v74;
      a5 = v151;
      v28 = v158;
      v29 = v73;
      v27 = v72;
      v8 = v131;
      v20 = v136;
      v16 = v71;
      if ((v78 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else if (v172)
  {
    goto LABEL_93;
  }

  if (v10)
  {
    if (!v21)
    {
      goto LABEL_93;
    }

    if (v8 != v19 || v10 != v21)
    {
      v152 = a5;
      v159 = v28;
      v80 = v16;
      v137 = v20;
      v140 = v23;
      v81 = v27;
      v82 = v29;
      v83 = v14;
      v84 = v15;
      v85 = v26;
      v86 = v25;
      v9 = v24;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1099();
      v25 = v86;
      v23 = v140;
      v26 = v85;
      v15 = v84;
      v14 = v83;
      a5 = v152;
      v28 = v159;
      v29 = v82;
      v27 = v81;
      v20 = v137;
      v16 = v80;
      if ((v87 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_93;
  }

  if (v12)
  {
    if (!v23)
    {
      goto LABEL_93;
    }

    if (v9 != v20 || v12 != v23)
    {
      v153 = a5;
      v160 = v28;
      v89 = v16;
      v90 = v27;
      v91 = v29;
      v92 = v14;
      v93 = v15;
      v94 = v26;
      v95 = v25;
      v96 = v11;
      v97 = v13;
      v9 = v24;
      v146 = v22;
      v98 = sub_24DE22CA0();
      v22 = v146;
      a5 = v153;
      v24 = v9;
      v13 = v97;
      v11 = v96;
      v25 = v95;
      v26 = v94;
      v15 = v93;
      v14 = v92;
      v28 = v160;
      v29 = v91;
      v27 = v90;
      v16 = v89;
      if ((v98 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_93;
  }

  if (v13)
  {
    if (!v24)
    {
      goto LABEL_93;
    }

    if (v11 != v22 || v13 != v24)
    {
      OUTLINED_FUNCTION_810();
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1184();
      if ((v100 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_93;
  }

  if (!v15)
  {
    if (!v26)
    {
      goto LABEL_82;
    }

LABEL_93:
    v111 = 0;
    return v111 & 1;
  }

  if (!v26)
  {
    goto LABEL_93;
  }

  if (v14 != v25 || v15 != v26)
  {
    OUTLINED_FUNCTION_810();
    sub_24DE22CA0();
    OUTLINED_FUNCTION_1184();
    if ((v102 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

LABEL_82:
  if (v168 != v167 || v16 != v28)
  {
    OUTLINED_FUNCTION_810();
    v105 = v104;
    v107 = v106;
    v108 = sub_24DE22CA0();
    v29 = v107;
    v27 = v105;
    a5 = v9;
    if ((v108 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  if (v165 != v27 || v166 != v29)
  {
    OUTLINED_FUNCTION_810();
    v110 = sub_24DE22CA0();
    a5 = v9;
    if ((v110 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  sub_24DD857C4(v161, v164, a3, a4, a5);
  return v111 & 1;
}

void sub_24DDD2AD0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v8 = v1[9];
  v9 = v1[7];
  v5 = v1[11];
  v6 = v1[13];
  v7 = v1[17];
  v10 = v1[15];
  v11 = v1[22];
  if (v1[1])
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_794();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_795();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_6:
  if (v4)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v9)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_826();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1081();
    sub_24DE22AD0();
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_795();
    if (v5)
    {
LABEL_14:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1084();
      sub_24DE22AD0();
      if (v6)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_795();
  if (v6)
  {
LABEL_15:
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1083();
    sub_24DE22AD0();
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_21:
    OUTLINED_FUNCTION_795();
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_22:
    OUTLINED_FUNCTION_795();
    goto LABEL_23;
  }

LABEL_20:
  OUTLINED_FUNCTION_795();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_16:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DE22AD0();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_17:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DE22AD0();
LABEL_23:
  sub_24DE22AD0();
  sub_24DE22AD0();
  sub_24DDE0CC4(a1, v11);
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.headers.getter()
{
  OUTLINED_FUNCTION_942(v4);
  v0 = OUTLINED_FUNCTION_370();
  memcpy(v0, v1, 0xB8uLL);
  return sub_24DD73AD0(v4, v3);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0xB8uLL);
  sub_24DDE82DC(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0xB8uLL);
}

uint64_t static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.Body.== infix(_:_:)(void *a1, void *a2)
{
  sub_24DDE830C(a1, v11);
  sub_24DDE830C(a2, v12);
  sub_24DDE830C(v11, __src);
  sub_24DDE830C(v12, v14);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, v14, sizeof(v9));
  static Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.== infix(_:_:)(__dst, v9, v3, v4, v5, v6);
  return v7 & 1;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.Body.hash(into:)()
{
  sub_24DDE830C(v0, v4);
  sub_24DDE830C(v4, __src);
  OUTLINED_FUNCTION_841();
  memcpy(__dst, __src, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_1206();
  return Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.hash(into:)(v1);
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.Body.hashValue.getter()
{
  sub_24DDE830C(v0, __dst);
  sub_24DE22CC0();
  sub_24DDE830C(__dst, __src);
  MEMORY[0x253039720](0);
  memcpy(v2, __src, sizeof(v2));
  Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.hash(into:)(v3);
  return sub_24DE22D10();
}

uint64_t sub_24DDD2F34(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.Body.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.body.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_1092(v31);
  v3 = memcpy(a1, (v1 + 184), 0x98uLL);
  v9 = OUTLINED_FUNCTION_633(v3, v4, &unk_27F1B2838, &unk_24DE22FF8, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31[0]);
  return sub_24DDE73DC(v9);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.body.setter()
{
  OUTLINED_FUNCTION_1092(v2);
  sub_24DDE8DAC(v2, &unk_27F1B2838);
  return OUTLINED_FUNCTION_839((v0 + 184));
}

BOOL static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_1139(v39);
  memcpy(__dst, (v1 + 184), sizeof(__dst));
  OUTLINED_FUNCTION_942(v41);
  OUTLINED_FUNCTION_1092(__src);
  sub_24DD73AD0(v39, v37);
  sub_24DD73AD0(v41, v37);
  v2 = OUTLINED_FUNCTION_370();
  v4 = static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.Headers.== infix(_:_:)(v2, v3);
  OUTLINED_FUNCTION_942(v43);
  sub_24DDE82DC(v43);
  OUTLINED_FUNCTION_1139(v44);
  sub_24DDE82DC(v44);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  memcpy(v37, __dst, 0x98uLL);
  memcpy(&v37[152], __src, 0x98uLL);
  memcpy(v38, __dst, sizeof(v38));
  OUTLINED_FUNCTION_1075(v38);
  if (v9)
  {
    OUTLINED_FUNCTION_1317(v36);
    OUTLINED_FUNCTION_1075(v36);
    if (v9)
    {
      memcpy(v35, v37, sizeof(v35));
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v5);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v6);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v7, v8);
      return 1;
    }

    goto LABEL_9;
  }

  memcpy(v35, v37, sizeof(v35));
  OUTLINED_FUNCTION_1317(v36);
  OUTLINED_FUNCTION_1075(v36);
  if (v9)
  {
LABEL_9:
    memcpy(v36, v37, sizeof(v36));
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v10);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v11);
    sub_24DDE8DAC(v36, &unk_27F1B3618);
    return 0;
  }

  OUTLINED_FUNCTION_1317(v30);
  OUTLINED_FUNCTION_1317(v31);
  memcpy(v32, v35, sizeof(v32));
  sub_24DDE830C(v32, v33);
  sub_24DDE830C(v31, v34);
  memcpy(v29, v33, sizeof(v29));
  memcpy(v28, v34, sizeof(v28));
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v13);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v14);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v15);
  static Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.== infix(_:_:)(v29, v28, v16, v17, v18, v19);
  v21 = v20;
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v22, v23);
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v24, v25);
  memcpy(v29, v37, sizeof(v29));
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v26, v27);
  return (v21 & 1) != 0;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.hash(into:)(uint64_t a1)
{
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.Headers.hash(into:)(a1);
  OUTLINED_FUNCTION_1092(v7);
  OUTLINED_FUNCTION_1075(v7);
  if (v1)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_1092(v5);
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DDE830C(v5, __src);
  MEMORY[0x253039720](0);
  memcpy(v4, __src, sizeof(v4));
  v2 = OUTLINED_FUNCTION_643();
  return Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.hash(into:)(v2);
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.hashValue.getter()
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.Headers.hash(into:)(v5);
  OUTLINED_FUNCTION_1092(v6);
  OUTLINED_FUNCTION_1075(v6);
  if (v0)
  {
    sub_24DE22CE0();
  }

  else
  {
    OUTLINED_FUNCTION_1092(v3);
    sub_24DE22CE0();
    sub_24DDE830C(v3, __src);
    MEMORY[0x253039720](0);
    memcpy(__dst, __src, sizeof(__dst));
    Components.Schemas.GetLeaderboardEntriesForPlayers_RequestContent.hash(into:)(v5);
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDD3464(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.Ok.Body.json.getter()
{
  OUTLINED_FUNCTION_161();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v33 = v7;
  v32 = v2;
  *v8 = v9;
  *(v8 + 4) = v7;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v8 + 24) = v12;
  *(v8 + 32) = v13;
  *(v8 + 40) = v14;
  *(v8 + 48) = v15;
  *(v8 + 56) = v1;
  *(v8 + 64) = v2;
  *(v8 + 72) = v3;
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  *(v8 + 96) = v6;
  v18 = v9;
  v19 = v7;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v1;
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  return sub_24DDE4D9C(&v18, &v17);
}

uint64_t sub_24DDD354C(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.Ok.Body.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE8320(v1, __dst);
  sub_24DDE8320(__dst, v0);
  return sub_24DDE8334(__dst, &v3);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.Ok.body.setter(void *a1)
{
  sub_24DDE8320(a1, v3);
  sub_24DDE8320(v3, __src);
  memcpy(__dst, v1, sizeof(__dst));
  sub_24DDE836C(__dst);
  return memcpy(v1, __src, 0x68uLL);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  sub_24DDE8320(v1, v2);
  sub_24DDE8320(&v4, __src);
  return memcpy(v0, __src, 0x68uLL);
}

void _s22GameCenterServerClient10OperationsO69PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayersO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_1218();
  OUTLINED_FUNCTION_879();
  OUTLINED_FUNCTION_980();
  OUTLINED_FUNCTION_361(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hash(into:)(v0);
}

uint64_t _s22GameCenterServerClient10OperationsO69PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayersO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_218();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1289();
  LODWORD(v23) = v0;
  *&v9 = OUTLINED_FUNCTION_208(v1, v2, v3, v4, v5, v6, v7, v8, v19).n128_u64[0];
  OUTLINED_FUNCTION_939(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v9);
  return sub_24DE22D10();
}

uint64_t sub_24DDD3810()
{
  OUTLINED_FUNCTION_218();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1289();
  LODWORD(v23) = v0;
  *&v9 = OUTLINED_FUNCTION_208(v1, v2, v3, v4, v5, v6, v7, v8, v19).n128_u64[0];
  OUTLINED_FUNCTION_939(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v9);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.ok.getter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output(v0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_56();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_254();
    sub_24DD74008();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_546();
    memcpy(v2, v3, 0x68uLL);
  }

  OUTLINED_FUNCTION_670();
}

void static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36(v13, v45);
  v15 = MEMORY[0x28223BE20](v14);
  v23 = OUTLINED_FUNCTION_85(v15, v16, v17, v18, v19, v20, v21, v22, v46);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output(v23);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_182();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3620, &qword_24DE23708);
  OUTLINED_FUNCTION_443(v26);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    memcpy(v61, v7, 0x68uLL);
    OUTLINED_FUNCTION_379();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v56, v9, sizeof(v56));
      v58 = BYTE4(v61[0]);
      v57 = v61[8];
      v60 = BYTE4(v56[0]);
      v59 = v56[8];
      LODWORD(v54) = v61[0];
      BYTE4(v54) = BYTE4(v61[0]);
      LOBYTE(v55) = v61[8];
      LODWORD(v52) = v56[0];
      BYTE4(v52) = BYTE4(v56[0]);
      LOBYTE(v53) = v56[8];
      static Components.Schemas.GetLeaderboardEntriesForPlayers_Response.== infix(_:_:)(&v54, &v52, v37, v38, v39, v40, v41, v42, v47, v48, v49, v50, v51, v52, v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v53, v56[9], v56[10], v56[11], v56[12], v54, v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v55, v61[9], v61[10], v61[11], v61[12], v56[0]);
      sub_24DDE836C(v56);
      sub_24DDE836C(v61);
      goto LABEL_11;
    }

    sub_24DDE836C(v61);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3620);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = OUTLINED_FUNCTION_174();
    v36(v35);
    goto LABEL_9;
  }

  v29 = OUTLINED_FUNCTION_19();
  v10(v29);
  v30 = OUTLINED_FUNCTION_172();
  v10(v30);
  OUTLINED_FUNCTION_817();
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v32);
    v33 = OUTLINED_FUNCTION_62();
    v8(v33);
    v34 = OUTLINED_FUNCTION_442();
    v8(v34);
LABEL_11:
    OUTLINED_FUNCTION_254();
    sub_24DD74008();
    goto LABEL_12;
  }

  v43 = OUTLINED_FUNCTION_181();
  v28(v43);
  v44 = OUTLINED_FUNCTION_442();
  v28(v44);
  OUTLINED_FUNCTION_254();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_343();
  sub_24DE229C0();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_546();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v6 = OUTLINED_FUNCTION_67();
    v7(v6);
    OUTLINED_FUNCTION_1010();
    MEMORY[0x253039720](v5);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v8);
    OUTLINED_FUNCTION_447();
    v9 = OUTLINED_FUNCTION_394();
    v10(v9);
  }

  else
  {
    memcpy(v11, v2, 0x68uLL);
    OUTLINED_FUNCTION_841();
    v11[108] = v11[4];
    v11[104] = v11[64];
    MEMORY[0x253039720](0);
    Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hash(into:)(v1);
    sub_24DDE836C(v11);
  }

  OUTLINED_FUNCTION_999();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers.xGkReleaseState.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers.accept.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t sub_24DDD40C4()
{
  sub_24DDE83BC();

  return sub_24DE22B00();
}

BOOL static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Body.== infix(_:_:)()
{
  OUTLINED_FUNCTION_1246();
  v1 = *(v0 + 112);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = *(v2 + 112);
  v36 = v8;
  v35 = v9;
  v38 = v4;
  v37 = v6;
  v10 = *(v0 + 16);
  __src[0] = *v0;
  __src[1] = v10;
  v27 = v11;
  v28 = v8;
  v12 = *(v0 + 64);
  v29 = *(v0 + 48);
  v30 = v12;
  v31 = v13;
  v32 = v9;
  v33 = *(v0 + 96);
  v34 = v1;
  v14 = *(v2 + 16);
  v17[0] = *v2;
  v17[1] = v14;
  v18 = v3;
  v19 = v4;
  v15 = *(v2 + 64);
  v20 = *(v2 + 48);
  v21 = v15;
  v22 = v5;
  v23 = v6;
  v24 = *(v2 + 96);
  v25 = v7;
  return static Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.== infix(_:_:)(__src, v17);
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Body.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 112);
  OUTLINED_FUNCTION_841();
  v4 = OUTLINED_FUNCTION_643();
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v4);
  if (!v2)
  {
    OUTLINED_FUNCTION_795();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    OUTLINED_FUNCTION_795();
    OUTLINED_FUNCTION_1160();
    return;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v5 = OUTLINED_FUNCTION_492();
  sub_24DDE0DB4(v5, v6);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_1160();

  sub_24DE22AD0();
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Body.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, int a32, unsigned __int8 a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  OUTLINED_FUNCTION_1283();
  a44 = v46;
  a45 = v47;
  v48 = v45;
  v49 = *(v45 + 40);
  v50 = *(v48 + 88);
  v51 = *(v48 + 96);
  v52 = *(v48 + 112);
  sub_24DE22CC0();
  a33 = v49;
  a31 = v50;
  MEMORY[0x253039720](0);
  OUTLINED_FUNCTION_811();
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(&a22);
  sub_24DE22CE0();
  if (v51)
  {
    sub_24DDE0DB4(&a22, v51);
  }

  sub_24DE22CE0();
  if (v52)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1280();
}

uint64_t sub_24DDD44D0(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Body.hash(into:)(v2);
  return sub_24DE22D10();
}

double sub_24DDD4510@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.body.getter()
{
  v2 = OUTLINED_FUNCTION_960();
  v3 = *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(v2) + 20);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x78uLL);
  return sub_24DDE73DC(__dst);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.body.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_429();
  v4 = *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(v3) + 20);
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  sub_24DDE8DAC(__dst, &unk_27F1B2840);
  return memcpy((v2 + v4), v1, 0x78uLL);
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.body.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(v1);
  return OUTLINED_FUNCTION_574();
}

BOOL static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_695();
  if ((static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers.== infix(_:_:)(v3, v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(0);
  memcpy(__dst, (v1 + *(v6 + 20)), sizeof(__dst));
  v7 = v2 + *(v6 + 20);
  memcpy(v65, v7, sizeof(v65));
  v8 = __dst[0];
  v9 = __dst[1];
  OUTLINED_FUNCTION_1321(__src);
  v11 = v65[0];
  v10 = v65[1];
  if (v9 != 1)
  {
    OUTLINED_FUNCTION_1205();
    OUTLINED_FUNCTION_1321(&v51);
    if (v10 != 1)
    {
      v47 = v11;
      v48 = v10;
      memcpy(v49, (v7 + 16), sizeof(v49));
      v44 = v53 & 1;
      v43 = v57 & 1;
      v46 = v49[24] & 1;
      v45 = v49[72] & 1;
      v40 = v8;
      v41 = v9;
      *v42 = v51;
      *&v42[16] = v52;
      v42[24] = v53 & 1;
      *&v42[32] = v54;
      *&v42[48] = v55;
      *&v42[64] = v56;
      v42[72] = v57 & 1;
      *&v42[80] = v58;
      *&v42[96] = v59;
      v30[0] = v11;
      v30[1] = v10;
      v31 = *v49;
      v32 = *&v49[16];
      v33 = v49[24] & 1;
      v34 = *&v49[32];
      v35 = *&v49[48];
      v36 = *&v49[64];
      v37 = v49[72] & 1;
      v38 = *&v49[80];
      v39 = *&v49[96];
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v20);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v21);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v22);
      v23 = static Components.Schemas.Leaderboard_GetLeaderboards_RequestContent.== infix(_:_:)(&v40, v30);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v24, v25);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v26, v27);
      v40 = v8;
      v41 = v9;
      memcpy(v42, __src, sizeof(v42));
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v28, v29);
      return v23;
    }

LABEL_6:
    OUTLINED_FUNCTION_1205();
    OUTLINED_FUNCTION_1321(&v51);
    v60 = v11;
    v61 = v10;
    memcpy(v62, (v7 + 16), sizeof(v62));
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v17);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v18);
    sub_24DDE8DAC(v50, &unk_27F1B3638);
    return 0;
  }

  if (v65[1] != 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1049();
  OUTLINED_FUNCTION_1321(v12);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v13);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v14);
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v15, v16);
  return 1;
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1283();
  v5 = v4;
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers.hash(into:)(v4);
  v6 = (v3 + *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(0) + 20));
  if (v6[1] == 1)
  {
    goto LABEL_6;
  }

  v7 = v6[12];
  v8 = v6[14];
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039720](0);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v5);
  if (!v7)
  {
    OUTLINED_FUNCTION_795();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_6:
    OUTLINED_FUNCTION_795();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v9 = OUTLINED_FUNCTION_492();
  sub_24DDE0DB4(v9, v10);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_4:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_826();
  sub_24DE22AD0();
LABEL_7:
  OUTLINED_FUNCTION_1280();
}

void static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28(v10, v39);
  v12 = MEMORY[0x28223BE20](v11);
  v20 = OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17, v18, v19, v40);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Output(v20);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_182();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3640, &qword_24DE23718);
  OUTLINED_FUNCTION_443(v23);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    if (OUTLINED_FUNCTION_210() != 1)
    {
      v34 = OUTLINED_FUNCTION_10();
      static Components.Schemas.Leaderboard_GetLeaderboards_Response.== infix(_:_:)(v34, v35);
      v36 = OUTLINED_FUNCTION_863();
      sub_24DDE8448(v36);
      sub_24DDE8448(v41);
      goto LABEL_11;
    }

    sub_24DDE8448(v41);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3640);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v32 = OUTLINED_FUNCTION_132();
    v33(v32);
    goto LABEL_9;
  }

  v26 = OUTLINED_FUNCTION_12();
  v8(v26);
  v27 = OUTLINED_FUNCTION_131();
  v8(v27);
  OUTLINED_FUNCTION_723();
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v29);
    v30 = OUTLINED_FUNCTION_62();
    v7(v30);
    v31 = OUTLINED_FUNCTION_442();
    v7(v31);
LABEL_11:
    OUTLINED_FUNCTION_413();
    sub_24DD74008();
    goto LABEL_12;
  }

  v37 = OUTLINED_FUNCTION_181();
  v25(v37);
  v38 = OUTLINED_FUNCTION_442();
  v25(v38);
  OUTLINED_FUNCTION_413();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD74588(v18, v19);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE8498(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.Body.== infix(_:_:)()
{
  OUTLINED_FUNCTION_1246();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v32 = v5;
  v31 = v6;
  v34 = v2;
  v33 = v4;
  v8 = v7[1];
  __src[0] = *v7;
  __src[1] = v8;
  v24 = v9;
  v25 = v5;
  v10 = v7[4];
  v26 = v7[3];
  v27 = v10;
  v28 = v11;
  v29 = v6;
  v30 = v7[6];
  v12 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v12;
  v16 = v1;
  v17 = v2;
  v13 = *(v0 + 64);
  v18 = *(v0 + 48);
  v19 = v13;
  v20 = v3;
  v21 = v4;
  v22 = *(v0 + 96);
  return static Components.Schemas.Game_GetLeaderboardCategories_RequestContent.== infix(_:_:)(__src, v15) & 1;
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.Body.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_841();
  v3 = OUTLINED_FUNCTION_643();
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v3);
  if (v2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_1160();

    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
    OUTLINED_FUNCTION_1160();
  }
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.Body.hashValue.getter()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v1 + 88);
  v4 = *(v1 + 104);
  sub_24DE22CC0();
  v8 = v2;
  v7 = v3;
  MEMORY[0x253039720](0);
  OUTLINED_FUNCTION_811();
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v6);
  sub_24DE22CE0();
  if (v4)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDD5438(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.Body.hash(into:)(v2);
  return sub_24DE22D10();
}

double sub_24DDD5478@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.body.getter()
{
  OUTLINED_FUNCTION_1087();
  memcpy(v2, (v1 + 152), 0x70uLL);
  v3 = memcpy(v0, (v1 + 152), 0x70uLL);
  v9 = OUTLINED_FUNCTION_1030(v3, v4, &unk_27F1B2850, &unk_24DE23018, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  return sub_24DDE73DC(v9);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.body.setter()
{
  OUTLINED_FUNCTION_564();
  memcpy(v1, (v0 + 152), 0x70uLL);
  sub_24DDE8DAC(&v5, &unk_27F1B2850);
  v2 = OUTLINED_FUNCTION_1264();
  return memcpy(v2, v3, 0x70uLL);
}

void static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_839(v73);
  memcpy(__dst, (v2 + 152), sizeof(__dst));
  OUTLINED_FUNCTION_799(v75);
  memcpy(v76, (v3 + 152), sizeof(v76));
  sub_24DD74588(v73, &v66);
  sub_24DD74588(v75, &v66);
  v4 = OUTLINED_FUNCTION_370();
  v6 = static Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.Headers.== infix(_:_:)(v4, v5);
  OUTLINED_FUNCTION_799(v77);
  sub_24DDE8498(v77);
  OUTLINED_FUNCTION_839(v78);
  sub_24DDE8498(v78);
  if (v6)
  {
    v7 = __dst[0];
    v8 = __dst[1];
    v9 = memcpy(__src, &__dst[2], sizeof(__src));
    v17 = v76[0];
    v18 = v76[1];
    if (__dst[1] == 1)
    {
      if (v76[1] == 1)
      {
        v66 = __dst[0];
        v67 = 1;
        OUTLINED_FUNCTION_1293(v9, v10, v11, v12, v13, v14, v15, v16, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55, *(&v55 + 1), v56, v57, *&v58[0], *(&v58[0] + 1), *&v58[1], *(&v58[1] + 1), *&v58[2], *(&v58[2] + 1), *&v58[3], *(&v58[3] + 1), *&v58[4], *(&v58[4] + 1), *&v58[5], *(&v58[5] + 1), v59, v60, v61, v62, v63, v64, *&v65[0], *(&v65[0] + 1), *&v65[1], *(&v65[1] + 1), *&v65[2], *(&v65[2] + 1), *&v65[3]);
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v19);
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v20);
LABEL_9:
        OUTLINED_FUNCTION_592();
        sub_24DDE8DAC(v30, v31);
        goto LABEL_10;
      }
    }

    else
    {
      v66 = __dst[0];
      v67 = __dst[1];
      OUTLINED_FUNCTION_1293(v9, v10, v11, v12, v13, v14, v15, v16, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55, *(&v55 + 1), v56, v57, *&v58[0], *(&v58[0] + 1), *&v58[1], *(&v58[1] + 1), *&v58[2], *(&v58[2] + 1), *&v58[3], *(&v58[3] + 1), *&v58[4], *(&v58[4] + 1), *&v58[5], *(&v58[5] + 1), v59, v60, v61, v62, v63, v64, *&v65[0], *(&v65[0] + 1), *&v65[1], *(&v65[1] + 1), *&v65[2], *(&v65[2] + 1), *&v65[3]);
      if (v18 != 1)
      {
        v63 = v17;
        v64 = v18;
        memcpy(v65, &v76[2], sizeof(v65));
        LOBYTE(v60) = BYTE8(v68[1]) & 1;
        LOBYTE(v59) = BYTE8(v68[4]) & 1;
        LOBYTE(v62) = BYTE8(v65[1]) & 1;
        LOBYTE(v61) = BYTE8(v65[4]) & 1;
        v56 = v7;
        v57 = v8;
        v58[0] = v68[0];
        *&v58[1] = *&v68[1];
        BYTE8(v58[1]) = BYTE8(v68[1]) & 1;
        v58[2] = v68[2];
        v58[3] = v68[3];
        *&v58[4] = *&v68[4];
        BYTE8(v58[4]) = BYTE8(v68[4]) & 1;
        v58[5] = v68[5];
        v46 = v17;
        v47 = v18;
        v48 = v65[0];
        v49 = *&v65[1];
        LOBYTE(v50) = BYTE8(v65[1]) & 1;
        v51 = v65[2];
        v52 = v65[3];
        v53 = *&v65[4];
        LOBYTE(v54) = BYTE8(v65[4]) & 1;
        v55 = v65[5];
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v23);
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v24);
        OUTLINED_FUNCTION_499();
        sub_24DDE73DC(v25);
        static Components.Schemas.Game_GetLeaderboardCategories_RequestContent.== infix(_:_:)(&v56, &v46);
        OUTLINED_FUNCTION_592();
        sub_24DDE8DAC(v26, v27);
        OUTLINED_FUNCTION_592();
        sub_24DDE8DAC(v28, v29);
        v56 = v7;
        v57 = v8;
        memcpy(v58, __src, sizeof(v58));
        goto LABEL_9;
      }
    }

    v66 = v7;
    v67 = v8;
    memcpy(v68, &__dst[2], sizeof(v68));
    v69 = v17;
    v70 = v18;
    memcpy(v71, &v76[2], sizeof(v71));
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v21);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v22);
    sub_24DDE8DAC(&v66, &unk_27F1B3648);
  }

LABEL_10:
  OUTLINED_FUNCTION_999();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.hash(into:)(uint64_t a1, __n128 a2)
{
  OUTLINED_FUNCTION_1240();
  v4 = *(v2 + 256);
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.Headers.hash(into:)(v5);
  OUTLINED_FUNCTION_1054();
  if (v6)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039720](0);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(a1);
  if (!v4)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_260();
  return sub_24DE22AD0();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.hashValue.getter(__n128 a1)
{
  OUTLINED_FUNCTION_1240();
  v2 = *(v1 + 256);
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.Headers.hash(into:)(v5);
  OUTLINED_FUNCTION_1054();
  if (v3 || (sub_24DE22CE0(), MEMORY[0x253039720](0), Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v5), !v2))
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDD5A68(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Input.hash(into:)(v3, v1);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output.Ok.Body.json.getter()
{
  OUTLINED_FUNCTION_161();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  *v4 = v5;
  *(v4 + 4) = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  *(v4 + 48) = v12;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;
  v20 = OUTLINED_FUNCTION_1193(v3, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v5);
  return sub_24DDE4414(v20, v21);
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE8C0C(v1, __dst);
  v2 = sub_24DDE8C0C(__dst, v0);
  v10 = OUTLINED_FUNCTION_1193(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, __dst[0]);
  return sub_24DDE84C8(v10, v11);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output.Ok.body.setter(void *a1)
{
  v2 = sub_24DDE8C0C(a1, v14);
  OUTLINED_FUNCTION_1319(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9]);
  OUTLINED_FUNCTION_943();
  memcpy(v10, v11, v12);
  sub_24DDE8500(v16);
  return memcpy(v1, __src, 0x50uLL);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  v3 = sub_24DDE8C0C(v1, v2);
  OUTLINED_FUNCTION_1319(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return memcpy(v0, __src, 0x50uLL);
}

void _s22GameCenterServerClient10OperationsO62PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategoriesO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_879();
  OUTLINED_FUNCTION_346();
  v0 = OUTLINED_FUNCTION_896();
  Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.hash(into:)(v0);
}

uint64_t _s22GameCenterServerClient10OperationsO62PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategoriesO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_1233();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_926();
  OUTLINED_FUNCTION_81();
  Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.hash(into:)(v0);
  return sub_24DE22D10();
}

uint64_t sub_24DDD5D14()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_1233();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_926();
  OUTLINED_FUNCTION_81();
  Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.hash(into:)(v0);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output.ok.getter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output(v0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_55();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_248();
    sub_24DD74008();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_546();
    memcpy(v2, v3, 0x50uLL);
  }

  OUTLINED_FUNCTION_670();
}

void Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_343();
  sub_24DE229C0();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_42();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_546();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v5 = OUTLINED_FUNCTION_67();
    v6(v5);
    OUTLINED_FUNCTION_1010();
    MEMORY[0x253039720](v4);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v7);
    OUTLINED_FUNCTION_447();
    v8 = OUTLINED_FUNCTION_394();
    v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_943();
    memcpy(v10, v11, v12);
    OUTLINED_FUNCTION_841();
    OUTLINED_FUNCTION_678();
    v13 = OUTLINED_FUNCTION_611();
    Components.Schemas.Game_GetLeaderboardCategories_ResponseContent.hash(into:)(v13);
    sub_24DDE8500(&v14);
  }

  OUTLINED_FUNCTION_999();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkUdid.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.userAgent.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkAppSig.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 32) = v3;
  *(v2 + 40) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkAppStore.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 48) = v3;
  *(v2 + 56) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkBundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 64) = v3;
  *(v2 + 72) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkBundleVersion.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 80) = v3;
  *(v2 + 88) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkHostBundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 96) = v3;
  *(v2 + 104) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkPlatform.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkShortBundleVersion.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 128) = v3;
  *(v2 + 136) = v1;
  return result;
}

uint64_t sub_24DDD66A0()
{
  v0 = OUTLINED_FUNCTION_960();
  v1(v0);
  sub_24DE228B0();
  OUTLINED_FUNCTION_90();
  v2 = OUTLINED_FUNCTION_610();

  return v3(v2);
}

uint64_t sub_24DDD672C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_429();
  v5 = *(v4(v3) + 52);
  sub_24DE228B0();
  OUTLINED_FUNCTION_90();
  v7 = *(v6 + 40);

  return v7(v2 + v5, v1);
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.xGkReleaseState.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t sub_24DDD67F8(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_24DDD684C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_429();
  v5 = *(v4(v3) + 56);

  *(v2 + v5) = v1;
  return result;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.accept.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers(v1);
  return OUTLINED_FUNCTION_574();
}

uint64_t sub_24DDD68CC()
{
  sub_24DDE8550();

  return sub_24DE22B00();
}

uint64_t sub_24DDD6934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(void))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 136) = a15;
  v19 = a18(0);
  v20 = *(v19 + 52);
  sub_24DE228B0();
  OUTLINED_FUNCTION_90();
  result = (*(v21 + 32))(a9 + v20, a16);
  *(a9 + *(v19 + 56)) = a17;
  return result;
}

uint64_t sub_24DDD6A14(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_84;
    }

    v8 = *a1 == *a2 && v6 == v7;
    if (!v8 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v7)
  {
    goto LABEL_84;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_84;
    }

    v11 = a1[2] == a2[2] && v9 == v10;
    if (!v11 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v10)
  {
    goto LABEL_84;
  }

  v12 = a1[5];
  v13 = a2[5];
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_84;
    }

    v14 = a1[4] == a2[4] && v12 == v13;
    if (!v14 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v13)
  {
    goto LABEL_84;
  }

  v15 = a1[7];
  v16 = a2[7];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_84;
    }

    v17 = a1[6] == a2[6] && v15 == v16;
    if (!v17 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v16)
  {
    goto LABEL_84;
  }

  v18 = a1[9];
  v19 = a2[9];
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_84;
    }

    v20 = a1[8] == a2[8] && v18 == v19;
    if (!v20 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v19)
  {
    goto LABEL_84;
  }

  v21 = a1[11];
  v22 = a2[11];
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_84;
    }

    v23 = a1[10] == a2[10] && v21 == v22;
    if (!v23 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v22)
  {
    goto LABEL_84;
  }

  v24 = a1[13];
  v25 = a2[13];
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_84;
    }

    v26 = a1[12] == a2[12] && v24 == v25;
    if (!v26 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v25)
  {
    goto LABEL_84;
  }

  v27 = a1[15];
  v28 = a2[15];
  if (v27)
  {
    if (!v28)
    {
      goto LABEL_84;
    }

    v29 = a1[14] == a2[14] && v27 == v28;
    if (!v29 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (v28)
  {
    goto LABEL_84;
  }

  v30 = a1[17];
  v31 = a2[17];
  if (!v30)
  {
    if (!v31)
    {
      goto LABEL_82;
    }

LABEL_84:
    v38 = 0;
    return v38 & 1;
  }

  if (!v31)
  {
    goto LABEL_84;
  }

  v32 = a1[16] == a2[16] && v30 == v31;
  if (!v32 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_82:
  a3(0);
  if ((sub_24DE228A0() & 1) == 0)
  {
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_363();
  sub_24DD857C4(v33, v34, v35, v36, v37);
  return v38 & 1;
}

void sub_24DDD6CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  if (v5[1])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[3])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[5])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[7])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[9])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[11])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[13])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[15])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  if (v5[17])
  {
    OUTLINED_FUNCTION_964();
    OUTLINED_FUNCTION_618();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_962();
  }

  v7(0);
  sub_24DE228B0();
  sub_24DDE23E0(&unk_27F1B3630);
  OUTLINED_FUNCTION_642();
  sub_24DE22AA0();
  OUTLINED_FUNCTION_595();
  sub_24DDE0CC4(v8, v9);
  OUTLINED_FUNCTION_653();
}

uint64_t static Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Body.== infix(_:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v16) = *(a2 + 88);
  v8 = OUTLINED_FUNCTION_805(a1, a2, a3, a4, a5, a6, a7, a8, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), *(a2 + 80), v16, *a1);
  static Components.Schemas.GetGameAchievements_Request.== infix(_:_:)(v8, v9, v10, v11, v12, v13);
  return v14 & 1;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Body.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[8];
  v14 = v1[9];
  v15 = v1[7];
  v13 = v1[10];
  v12 = *(v1 + 88);
  OUTLINED_FUNCTION_841();
  if (v3 == 1)
  {
    return OUTLINED_FUNCTION_795();
  }

  __src[0] = v4;
  __src[1] = v3;
  __src[2] = v5;
  __src[3] = v6;
  __src[4] = v7;
  __src[5] = v8;
  __src[6] = v9;
  __src[7] = v15;
  __src[8] = v10;
  __src[9] = v14;
  __src[10] = v13;
  LOBYTE(__src[11]) = v12;
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v17[0] = v4;
  v17[1] = v3;
  v17[2] = v5;
  v17[3] = v6;
  v17[4] = v7;
  v17[5] = v8;
  v17[6] = v9;
  v17[7] = v15;
  v17[8] = v10;
  v17[9] = v14;
  v17[10] = v13;
  v18 = v12;
  sub_24DDE85FC(v17, __dst);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(a1);
  memcpy(__dst, __src, 0x59uLL);
  return sub_24DDE2054(__dst);
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Body.hashValue.getter()
{
  v7 = *(v0 + 64);
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_24DE22CC0();
  v3 = *(v0 + 16);
  __src[0] = *v0;
  __src[1] = v3;
  v4 = *(v0 + 48);
  __src[2] = *(v0 + 32);
  __src[3] = v4;
  __src[4] = v7;
  *&__src[5] = v1;
  BYTE8(__src[5]) = v2;
  MEMORY[0x253039720](0);
  OUTLINED_FUNCTION_1054();
  if (v5)
  {
    sub_24DE22CE0();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_24DE22CE0();
    sub_24DDE85FC(__src, v9);
    Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v10);
    memcpy(v9, __dst, 0x59uLL);
    sub_24DDE2054(v9);
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDD71E0(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Body.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.body.getter()
{
  v2 = OUTLINED_FUNCTION_960();
  v3 = *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(v2) + 20);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  v4 = memcpy(v0, (v1 + v3), 0x59uLL);
  v10 = OUTLINED_FUNCTION_805(v4, v5, &unk_27F1B2858, &unk_24DE23028, v6, v7, v8, v9, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, __dst[0]);
  return sub_24DDE73DC(v10);
}

void *Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.body.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_429();
  v3 = *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(v2) + 20);
  memcpy(v5, (v1 + v3), 0x59uLL);
  sub_24DDE8DAC(v5, &unk_27F1B2858);
  return OUTLINED_FUNCTION_949((v1 + v3));
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.body.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_429();
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(v1);
  return OUTLINED_FUNCTION_574();
}

BOOL static Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_695();
  if ((static Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.== infix(_:_:)(v1, v2, v3) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(0);
  OUTLINED_FUNCTION_949(v80);
  OUTLINED_FUNCTION_524();
  memcpy(v4, v5, v6);
  v7 = v80[0];
  v8 = v80[1];
  v9 = OUTLINED_FUNCTION_1012(__src);
  v18 = v80[12];
  v17 = v81;
  if (v8 != 2)
  {
    OUTLINED_FUNCTION_722(v9, v10, v11, v12, v13, v14, v15, v16, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, v62, *v63, *&v63[8], *&v63[16], *&v63[24], *&v63[32], *&v63[40], *&v63[48], *&v63[56], *&v63[64], *&v63[72], v64, v65, v66, *(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71, v7, v8, *&v73[0]);
    if (v17 != 2)
    {
      v64 = v18;
      v65 = v17;
      OUTLINED_FUNCTION_940(&v64);
      v61 = v7;
      v62 = v8;
      *v63 = v73[0];
      *&v63[16] = v73[1];
      *&v63[32] = v73[2];
      *&v63[48] = v73[3];
      *&v63[64] = v74;
      v63[72] = v75;
      v53 = v18;
      v54 = v17;
      v55 = v66;
      v56 = v67;
      v57 = v68;
      v58 = v69;
      v59 = v70;
      LOBYTE(v60) = v71;
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v26);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v27);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v28);
      static Components.Schemas.GetGameAchievements_Request.== infix(_:_:)(&v61, &v53, v29, v30, v31, v32);
      v34 = v33;
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v35, v36);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v37, v38);
      v61 = v7;
      v62 = v8;
      memcpy(v63, __src, 0x49uLL);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v39, v40);
      return (v34 & 1) != 0;
    }

LABEL_6:
    v72[0] = v7;
    v72[1] = v8;
    OUTLINED_FUNCTION_1012(v73);
    v76 = v18;
    v77 = v17;
    OUTLINED_FUNCTION_1002(&v78);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v23);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v24);
    sub_24DDE8DAC(v72, &unk_27F1B3660);
    return 0;
  }

  if (v81 != 2)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_722(v9, v10, v11, v12, v13, v14, v15, v16, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, v62, *v63, *&v63[8], *&v63[16], *&v63[24], *&v63[32], *&v63[40], *&v63[48], *&v63[56], *&v63[64], *&v63[72], v64, v65, v66, *(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71, v7, 2, *&v73[0]);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v19);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v20);
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v21, v22);
  return 1;
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.hash(into:)(uint64_t a1)
{
  Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers.hash(into:)(a1);
  v3 = (v1 + *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(0) + 20));
  v4 = v3[1];
  if (v4 == 2)
  {
    return OUTLINED_FUNCTION_795();
  }

  v5 = *v3;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[6];
  v17 = v3[5];
  v18 = v3[7];
  v15 = v3[9];
  v16 = v3[8];
  v10 = v3[10];
  v11 = *(v3 + 88);
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039720](0);
  if (v4 == 1)
  {
    return OUTLINED_FUNCTION_795();
  }

  __src[0] = v5;
  __src[1] = v4;
  __src[2] = v6;
  __src[3] = v7;
  __src[4] = v8;
  __src[5] = v17;
  __src[6] = v9;
  __src[7] = v18;
  __src[8] = v16;
  __src[9] = v15;
  __src[10] = v10;
  LOBYTE(__src[11]) = v11;
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_507();
  sub_24DDE8634(v13, v14);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(a1);
  memcpy(__dst, __src, 0x59uLL);
  return sub_24DDE2054(__dst);
}

void static Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28(v10, v39);
  v12 = MEMORY[0x28223BE20](v11);
  v20 = OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17, v18, v19, v40);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Output(v20);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_182();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3668, &qword_24DE23738);
  OUTLINED_FUNCTION_443(v23);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    if (OUTLINED_FUNCTION_210() != 1)
    {
      v34 = OUTLINED_FUNCTION_10();
      static Components.Schemas.GetGameAchievements_Response.== infix(_:_:)(v34, v35);
      v36 = OUTLINED_FUNCTION_863();
      sub_24DDE86D4(v36);
      sub_24DDE86D4(v41);
      goto LABEL_11;
    }

    sub_24DDE86D4(v41);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3668);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v32 = OUTLINED_FUNCTION_132();
    v33(v32);
    goto LABEL_9;
  }

  v26 = OUTLINED_FUNCTION_12();
  v8(v26);
  v27 = OUTLINED_FUNCTION_131();
  v8(v27);
  OUTLINED_FUNCTION_723();
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v29);
    v30 = OUTLINED_FUNCTION_62();
    v7(v30);
    v31 = OUTLINED_FUNCTION_442();
    v7(v31);
LABEL_11:
    OUTLINED_FUNCTION_413();
    sub_24DD74008();
    goto LABEL_12;
  }

  v37 = OUTLINED_FUNCTION_181();
  v25(v37);
  v38 = OUTLINED_FUNCTION_442();
  v25(v38);
  OUTLINED_FUNCTION_413();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.AcceptableContentType.rawValue.getter()
{
  OUTLINED_FUNCTION_1040();

  return OUTLINED_FUNCTION_370();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD75030(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE8724(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.Body.== infix(_:_:)(void *a1, void *a2)
{
  sub_24DDE8754(a1, v55);
  sub_24DDE8754(a2, v56);
  sub_24DDE8754(v55, __src);
  sub_24DDE8754(v56, v58);
  v3 = memcpy(__dst, __src, sizeof(__dst));
  v11 = OUTLINED_FUNCTION_1266(v3, v4, v5, v6, v7, v8, v9, v10, v29);
  v13 = memcpy(v11, v12, 0xBEuLL);
  v21 = OUTLINED_FUNCTION_1252(v13, v14, v15, v16, v17, v18, v19, v20, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, __dst[0]);
  static Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.== infix(_:_:)(v21, v22, v23, v24, v25, v26);
  return v27 & 1;
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.Body.hash(into:)()
{
  sub_24DDE8754(v0, __dst);
  sub_24DDE8754(__dst, __src);
  OUTLINED_FUNCTION_841();
  memcpy(v3, __src, sizeof(v3));
  v1 = OUTLINED_FUNCTION_643();
  return Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hash(into:)(v1);
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.Body.hashValue.getter()
{
  sub_24DDE8754(v0, v4);
  sub_24DE22CC0();
  sub_24DDE8754(v4, __src);
  MEMORY[0x253039720](0);
  memcpy(__dst, __src, sizeof(__dst));
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hash(into:)(v3);
  return sub_24DE22D10();
}

uint64_t sub_24DDD7FB8(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.Body.hash(into:)();
  return sub_24DE22D10();
}

void *sub_24DDD7FF8()
{
  OUTLINED_FUNCTION_1086();
  sub_24DD75028(v0);
  v1 = OUTLINED_FUNCTION_1065();
  return memcpy(v1, v2, 0xBEuLL);
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.body.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_1094(v4);
  memcpy(a1, (v1 + 152), 0xBEuLL);
  return sub_24DDE73DC(v4);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.body.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_1094(v0);
  sub_24DDE8DAC(&v4, &unk_27F1B2868);
  v1 = OUTLINED_FUNCTION_1264();
  return memcpy(v1, v2, 0xBEuLL);
}

BOOL static Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_839(v42);
  memcpy(__dst, (v1 + 152), sizeof(__dst));
  OUTLINED_FUNCTION_799(v44);
  OUTLINED_FUNCTION_1094(__src);
  sub_24DD75030(v42, v40);
  sub_24DD75030(v44, v40);
  v2 = OUTLINED_FUNCTION_370();
  v4 = static Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.Headers.== infix(_:_:)(v2, v3);
  OUTLINED_FUNCTION_799(v46);
  sub_24DDE8724(v46);
  OUTLINED_FUNCTION_839(v47);
  sub_24DDE8724(v47);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  memcpy(v40, __dst, 0xBEuLL);
  memcpy(&v40[192], __src, 0xBEuLL);
  memcpy(v41, __dst, 0xBEuLL);
  if (sub_24DDE8768(v41) != 1)
  {
    v11 = OUTLINED_FUNCTION_1186();
    memcpy(v11, v12, 0xBEuLL);
    OUTLINED_FUNCTION_1308(v39);
    if (sub_24DDE8768(v39) != 1)
    {
      OUTLINED_FUNCTION_1308(v33);
      OUTLINED_FUNCTION_1308(v34);
      memcpy(v35, v38, 0xBEuLL);
      sub_24DDE8754(v35, v36);
      sub_24DDE8754(v34, v37);
      memcpy(v32, v36, 0xBEuLL);
      memcpy(v31, v37, 0xBEuLL);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v16);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v17);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v18);
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.== infix(_:_:)(v32, v31, v19, v20, v21, v22);
      v24 = v23;
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v25, v26);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v27, v28);
      memcpy(v32, v40, 0xBEuLL);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v29, v30);
      return (v24 & 1) != 0;
    }

LABEL_6:
    memcpy(v39, v40, 0x17EuLL);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v13);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v14);
    sub_24DDE8DAC(v39, &unk_27F1B3670);
    return 0;
  }

  OUTLINED_FUNCTION_1308(v39);
  if (sub_24DDE8768(v39) != 1)
  {
    goto LABEL_6;
  }

  v5 = OUTLINED_FUNCTION_1186();
  memcpy(v5, v6, 0xBEuLL);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v7);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v8);
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v9, v10);
  return 1;
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.hash(into:)(uint64_t a1)
{
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.Headers.hash(into:)(a1);
  OUTLINED_FUNCTION_1094(v6);
  if (sub_24DDE8768(v6) == 1)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_1094(v4);
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DDE8754(v4, __src);
  MEMORY[0x253039720](0);
  memcpy(v3, __src, sizeof(v3));
  v2 = OUTLINED_FUNCTION_643();
  return Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hash(into:)(v2);
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.hashValue.getter()
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.Headers.hash(into:)(v4);
  OUTLINED_FUNCTION_1094(v5);
  if (sub_24DDE8768(v5) == 1)
  {
    sub_24DE22CE0();
  }

  else
  {
    OUTLINED_FUNCTION_1094(v2);
    sub_24DE22CE0();
    sub_24DDE8754(v2, __src);
    MEMORY[0x253039720](0);
    memcpy(__dst, __src, sizeof(__dst));
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Request.hash(into:)(v4);
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDD84F4(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDD86AC(uint64_t a1)
{
  OUTLINED_FUNCTION_957();
  v5 = v4;
  v3(v2, v8);
  v3(v8, __src);
  OUTLINED_FUNCTION_1322();
  memcpy(v7, __src, sizeof(v7));
  return v1(v5);
}

uint64_t sub_24DDD872C(uint64_t a1)
{
  OUTLINED_FUNCTION_372();
  v3(v2, v7);
  sub_24DE22CC0();
  v3(v7, __src);
  MEMORY[0x253039720](0);
  memcpy(__dst, __src, sizeof(__dst));
  v1(v6);
  return sub_24DE22D10();
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36(v12, v38);
  v14 = MEMORY[0x28223BE20](v13);
  v22 = OUTLINED_FUNCTION_85(v14, v15, v16, v17, v18, v19, v20, v21, v39);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output(v22);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_182();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3678, &qword_24DE23748);
  OUTLINED_FUNCTION_443(v25);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    memcpy(v43, v7, 0x139uLL);
    OUTLINED_FUNCTION_379();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v41, v9, 0x139uLL);
      OUTLINED_FUNCTION_1043();
      memcpy(v40, v42, 0x139uLL);
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.== infix(_:_:)();
      sub_24DDE87B8(v41);
      sub_24DDE87B8(v43);
      goto LABEL_11;
    }

    sub_24DDE87B8(v43);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3678);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = OUTLINED_FUNCTION_174();
    v35(v34);
    goto LABEL_9;
  }

  v28 = OUTLINED_FUNCTION_19();
  v10(v28);
  v29 = OUTLINED_FUNCTION_172();
  v10(v29);
  OUTLINED_FUNCTION_817();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v31);
    v32 = OUTLINED_FUNCTION_62();
    v8(v32);
    v33 = OUTLINED_FUNCTION_442();
    v8(v33);
LABEL_11:
    OUTLINED_FUNCTION_413();
    sub_24DD74008();
    goto LABEL_12;
  }

  v36 = OUTLINED_FUNCTION_181();
  v27(v36);
  v37 = OUTLINED_FUNCTION_442();
  v27(v37);
  OUTLINED_FUNCTION_413();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_655();
  sub_24DE229C0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_66();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output(0);
  OUTLINED_FUNCTION_90();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_615();
  sub_24DD74A90();
  OUTLINED_FUNCTION_464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v10 = OUTLINED_FUNCTION_101();
    v11(v10);
    OUTLINED_FUNCTION_1135();
    MEMORY[0x253039720](v9);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v12);
    OUTLINED_FUNCTION_536();
    v13 = OUTLINED_FUNCTION_330();
    v14(v13);
  }

  else
  {
    memcpy(v16, v6, 0x139uLL);
    OUTLINED_FUNCTION_879();
    sub_24DDE8A88(v16, v17);
    MEMORY[0x253039720](0);
    memcpy(v15, v17, sizeof(v15));
    OUTLINED_FUNCTION_1267();
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.hash(into:)();
    sub_24DDE87B8(v16);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD753F4(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE8808(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.Body.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_281(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  OUTLINED_FUNCTION_1017();
  v10 = v8 == v9 && v6 == v7;
  if (v10 || (sub_24DE22CA0() & 1) != 0)
  {
    if (v5)
    {
      if (v1)
      {
        if (v4 == v2 && v5 == v1)
        {
          return 1;
        }

        OUTLINED_FUNCTION_407();
        OUTLINED_FUNCTION_595();
        if (sub_24DE22CA0())
        {
          return 1;
        }
      }
    }

    else if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.Body.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_1322();
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  if (!v2)
  {
    return OUTLINED_FUNCTION_887();
  }

  OUTLINED_FUNCTION_878();
  OUTLINED_FUNCTION_409();

  return sub_24DE22AD0();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.Body.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  OUTLINED_FUNCTION_619();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_965();
  OUTLINED_FUNCTION_519();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v26)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

uint64_t sub_24DDD90D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.body.getter(uint64_t *a1@<X8>)
{
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_24DD7542C(v2, v3, v4, v5);
}

double sub_24DDD9124(uint64_t a1, uint64_t (*a2)(void, void, void, void))
{
  a2(v2[19], v2[20], v2[21], v2[22]);
  *&result = OUTLINED_FUNCTION_368().n128_u64[0];
  return result;
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1297(v81);
  v11 = v9[19];
  v10 = v9[20];
  v12 = v9[21];
  v13 = v9[22];
  OUTLINED_FUNCTION_1137(v82);
  v15 = v7[19];
  v14 = v7[20];
  v16 = v7[21];
  v80 = v7[22];
  sub_24DD753F4(v81, v84);
  sub_24DD753F4(v82, v84);
  v17 = OUTLINED_FUNCTION_408();
  v19 = static Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.Headers.== infix(_:_:)(v17, v18);
  OUTLINED_FUNCTION_1137(v83);
  sub_24DDE8808(v83);
  OUTLINED_FUNCTION_1297(v84);
  sub_24DDE8808(v84);
  if (v19)
  {
    if (v10)
    {
      if (v14)
      {
        v20 = v11 == v15 && v10 == v14;
        if (v20 || (OUTLINED_FUNCTION_818(), (sub_24DE22CA0() & 1) != 0))
        {
          v21 = v80;
          if (!v13)
          {
            v54 = OUTLINED_FUNCTION_748();
            sub_24DD7542C(v54, v55, v56, 0);
            if (!v80)
            {
              v57 = OUTLINED_FUNCTION_339();
              sub_24DD7542C(v57, v58, v59, 0);
              v60 = OUTLINED_FUNCTION_339();
              v63 = 0;
              goto LABEL_28;
            }

LABEL_23:
            v67 = OUTLINED_FUNCTION_339();
            sub_24DD7542C(v67, v68, v69, v21);
            v70 = OUTLINED_FUNCTION_339();
            sub_24DD75940(v70, v71, v72, v21);
            goto LABEL_24;
          }

          if (v80)
          {
            if (v12 != v16 || v13 != v80)
            {
              OUTLINED_FUNCTION_657();
              sub_24DE22CA0();
              OUTLINED_FUNCTION_806();
              sub_24DD7542C(v23, v24, v25, v26);
              v27 = OUTLINED_FUNCTION_339();
              sub_24DD7542C(v27, v28, v29, v80);
              v30 = OUTLINED_FUNCTION_339();
              sub_24DD75940(v30, v31, v32, v80);
LABEL_24:
              OUTLINED_FUNCTION_806();
              goto LABEL_25;
            }

            v73 = OUTLINED_FUNCTION_748();
            sub_24DD7542C(v73, v74, v75, v13);
            OUTLINED_FUNCTION_380();
            OUTLINED_FUNCTION_806();
            sub_24DD7542C(v76, v77, v78, v79);
            OUTLINED_FUNCTION_380();
            OUTLINED_FUNCTION_806();
LABEL_28:
            sub_24DD75940(v60, v61, v62, v63);
            goto LABEL_24;
          }
        }

        else
        {
          v21 = v80;
        }

        v64 = OUTLINED_FUNCTION_748();
        sub_24DD7542C(v64, v65, v66, v13);
        goto LABEL_23;
      }
    }

    else if (!v14)
    {
      OUTLINED_FUNCTION_1195();
      sub_24DD7542C(v48, v49, v50, v51);
      v52 = OUTLINED_FUNCTION_1196();
      sub_24DD7542C(v52, v53, v16, v80);
      OUTLINED_FUNCTION_1195();
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_1195();
    sub_24DD7542C(v33, v34, v35, v36);
    v37 = OUTLINED_FUNCTION_339();
    sub_24DD7542C(v37, v38, v39, v80);
    OUTLINED_FUNCTION_1195();
    sub_24DD75940(v40, v41, v42, v43);
    v44 = OUTLINED_FUNCTION_339();
    v47 = v80;
LABEL_25:
    sub_24DD75940(v44, v45, v46, v47);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.hash(into:)()
{
  OUTLINED_FUNCTION_985();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.Headers.hash(into:)(v2);
  if (!v1)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039720](0);
  OUTLINED_FUNCTION_492();
  sub_24DE22AD0();
  if (!v0)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_260();

  return sub_24DE22AD0();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  a25 = v27;
  a26 = v28;
  v29 = *(v26 + 160);
  v30 = *(v26 + 176);
  OUTLINED_FUNCTION_796(v28);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Input.Headers.hash(into:)(&a10);
  if (v29 && (OUTLINED_FUNCTION_915(), OUTLINED_FUNCTION_965(), OUTLINED_FUNCTION_519(), sub_24DE22AD0(), v30))
  {
    OUTLINED_FUNCTION_915();
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_1119();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.Ok.Body.json.getter()
{
  v1 = OUTLINED_FUNCTION_767();
  sub_24DDE8838(v1, __dst);
  sub_24DDE8838(__dst, __src);
  memcpy(v0, __src, 0x102uLL);
  sub_24DDE8838(__dst, v6);
  return sub_24DDE6F90(v6, &v3);
}

uint64_t sub_24DDD9578(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.Ok.Body.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE8838(v1, __dst);
  sub_24DDE8838(__dst, v0);
  return sub_24DDE884C(__dst, v3);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.Ok.body.setter(void *a1)
{
  sub_24DDE8838(a1, v3);
  sub_24DDE8838(v3, __src);
  memcpy(__dst, v1, 0x102uLL);
  sub_24DDE8884(__dst);
  return memcpy(v1, __src, 0x102uLL);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  sub_24DDE8838(v1, v2);
  sub_24DDE8838(&v4, __src);
  return memcpy(v0, __src, 0x102uLL);
}

uint64_t sub_24DDD96CC(void *a1, void *a2)
{
  sub_24DDE8838(a1, v11);
  sub_24DDE8838(a2, v12);
  sub_24DDE8838(v11, __src);
  sub_24DDE8838(v12, v14);
  memcpy(__dst, __src, 0x102uLL);
  memcpy(v9, v14, 0x102uLL);
  static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.== infix(_:_:)(__dst, v9, v3, v4, v5, v6);
  return v7 & 1;
}

void _s22GameCenterServerClient10OperationsO53PostWebObjectsGKChallengeService_woaWaChallengeDetailO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0()
{
  sub_24DDE8838(v0, v3);
  sub_24DDE8838(v3, __src);
  OUTLINED_FUNCTION_841();
  memcpy(__dst, __src, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_1206();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hash(into:)(v1);
}

uint64_t _s22GameCenterServerClient10OperationsO53PostWebObjectsGKChallengeService_woaWaChallengeDetailO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  sub_24DDE8838(v0, __dst);
  sub_24DE22CC0();
  sub_24DDE8838(__dst, __src);
  MEMORY[0x253039720](0);
  memcpy(v2, __src, sizeof(v2));
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hash(into:)(v3);
  return sub_24DE22D10();
}

uint64_t sub_24DDD982C(uint64_t a1)
{
  sub_24DDE8838(v1, __dst);
  sub_24DE22CC0();
  sub_24DDE8838(__dst, __src);
  MEMORY[0x253039720](0);
  memcpy(v3, __src, sizeof(v3));
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hash(into:)(v4);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.ok.getter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output(v0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_54();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_246();
    sub_24DD74008();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_546();
    memcpy(v2, v3, 0x102uLL);
  }

  OUTLINED_FUNCTION_670();
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36(v12, v42);
  v14 = MEMORY[0x28223BE20](v13);
  v22 = OUTLINED_FUNCTION_85(v14, v15, v16, v17, v18, v19, v20, v21, v43);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output(v22);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_182();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3680, &qword_24DE23750);
  OUTLINED_FUNCTION_443(v25);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    memcpy(v49, v7, 0x102uLL);
    OUTLINED_FUNCTION_379();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v46, v9, 0x102uLL);
      sub_24DDE8838(v49, v47);
      sub_24DDE8838(v46, v48);
      memcpy(v45, v47, 0x102uLL);
      memcpy(v44, v48, 0x102uLL);
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.== infix(_:_:)(v45, v44, v36, v37, v38, v39);
      sub_24DDE8884(v46);
      sub_24DDE8884(v49);
      goto LABEL_11;
    }

    sub_24DDE8884(v49);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3680);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = OUTLINED_FUNCTION_174();
    v35(v34);
    goto LABEL_9;
  }

  v28 = OUTLINED_FUNCTION_19();
  v10(v28);
  v29 = OUTLINED_FUNCTION_172();
  v10(v29);
  OUTLINED_FUNCTION_817();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v31);
    v32 = OUTLINED_FUNCTION_62();
    v8(v32);
    v33 = OUTLINED_FUNCTION_442();
    v8(v33);
LABEL_11:
    OUTLINED_FUNCTION_246();
    sub_24DD74008();
    goto LABEL_12;
  }

  v40 = OUTLINED_FUNCTION_181();
  v27(v40);
  v41 = OUTLINED_FUNCTION_442();
  v27(v41);
  OUTLINED_FUNCTION_246();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  OUTLINED_FUNCTION_659();
  a19 = v45;
  a20 = v46;
  OUTLINED_FUNCTION_1255();
  OUTLINED_FUNCTION_655();
  sub_24DE229C0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_66();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output(0);
  OUTLINED_FUNCTION_90();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_615();
  sub_24DD74A90();
  OUTLINED_FUNCTION_464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = *v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v50 = OUTLINED_FUNCTION_101();
    v51(v50);
    OUTLINED_FUNCTION_1135();
    MEMORY[0x253039720](v49);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v52);
    OUTLINED_FUNCTION_536();
    v53 = OUTLINED_FUNCTION_330();
    v54(v53);
  }

  else
  {
    memcpy(&a43, v43, 0x102uLL);
    OUTLINED_FUNCTION_879();
    sub_24DDE8838(&a43, &STACK[0x218]);
    MEMORY[0x253039720](0);
    memcpy(&a10, &STACK[0x218], 0x102uLL);
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.hash(into:)(v44);
    sub_24DDE8884(&a43);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD75908(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE88D4(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.Body.== infix(_:_:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 16);
  v6 = v2;
  return static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.== infix(_:_:)(v4) & 1;
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.Body.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_438();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  MEMORY[0x253039720](0);
  OUTLINED_FUNCTION_406();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v2)
  {
    OUTLINED_FUNCTION_201();
    sub_24DE22AD0();
  }

  if (v3 != 2)
  {
    sub_24DE22CE0();
  }

  return sub_24DE22CE0();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.Body.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  OUTLINED_FUNCTION_796(v29);
  OUTLINED_FUNCTION_965();
  OUTLINED_FUNCTION_519();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v27)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  if (v28 != 2)
  {
    OUTLINED_FUNCTION_915();
  }

  sub_24DE22CE0();
  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

uint64_t sub_24DDDA1FC(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.Body.hash(into:)(v2);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.body.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 184);
  sub_24DD7542C(v2, v3, v4, v5);
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.body.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_24DD75940(*(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176));
  OUTLINED_FUNCTION_368();
  *(v1 + 184) = v2;
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_839(v56);
  v8 = *(v6 + 152);
  v9 = *(v6 + 160);
  v11 = *(v6 + 168);
  v10 = *(v6 + 176);
  v12 = *(v6 + 184);
  OUTLINED_FUNCTION_799(v57);
  v13 = v7[19];
  v14 = v7[20];
  v52 = v7[21];
  v53 = v7[22];
  sub_24DD75908(v56, v59);
  sub_24DD75908(v57, v59);
  v15 = OUTLINED_FUNCTION_370();
  v17 = static Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.Headers.== infix(_:_:)(v15, v16);
  OUTLINED_FUNCTION_799(v58);
  sub_24DDE88D4(v58);
  OUTLINED_FUNCTION_839(v59);
  sub_24DDE88D4(v59);
  if (v17)
  {
    if (v9)
    {
      if (v14)
      {
        v54[0] = v8;
        v54[1] = v9;
        v54[2] = v11;
        v54[3] = v10;
        v55 = v12;
        static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.== infix(_:_:)(v54);
        OUTLINED_FUNCTION_553();
        sub_24DD7542C(v18, v19, v20, v21);
        v22 = OUTLINED_FUNCTION_457();
        sub_24DD7542C(v22, v23, v52, v53);
        v24 = OUTLINED_FUNCTION_457();
        sub_24DD75940(v24, v25, v52, v53);
        OUTLINED_FUNCTION_553();
        sub_24DD75940(v26, v27, v28, v29);
        goto LABEL_7;
      }
    }

    else if (!v14)
    {
      OUTLINED_FUNCTION_656();
      sub_24DD7542C(v44, v45, v46, v47);
      sub_24DD7542C(v13, 0, v52, v53);
      OUTLINED_FUNCTION_656();
      sub_24DD75940(v48, v49, v50, v51);
      goto LABEL_7;
    }

    v30 = OUTLINED_FUNCTION_393();
    sub_24DD7542C(v30, v31, v11, v10);
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_656();
    sub_24DD7542C(v32, v33, v34, v35);
    OUTLINED_FUNCTION_393();
    OUTLINED_FUNCTION_500();
    sub_24DD75940(v36, v37, v38, v39);
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_656();
    sub_24DD75940(v40, v41, v42, v43);
  }

LABEL_7:
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_985();
  v4 = *(v1 + 184);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.Headers.hash(into:)(v5);
  if (v3)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039720](0);
    OUTLINED_FUNCTION_492();
    sub_24DE22AD0();
    if (v2)
    {
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_260();
      sub_24DE22AD0();
    }

    else
    {
      OUTLINED_FUNCTION_795();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
    }
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_999();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDDA594(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.Ok.Body.json.getter()
{
  v1 = OUTLINED_FUNCTION_767();
  sub_24DDE8904(v1, __dst);
  sub_24DDE8904(__dst, __src);
  memcpy(v0, __src, 0x90uLL);
  sub_24DDE8904(__dst, v6);
  return sub_24DDE5F64(v6, &v3);
}

uint64_t sub_24DDDA654(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.Ok.Body.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE8904(v1, __dst);
  sub_24DDE8904(__dst, v0);
  return sub_24DDE8918(__dst, v3);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.Ok.body.setter(void *a1)
{
  sub_24DDE8904(a1, v3);
  sub_24DDE8904(v3, __src);
  memcpy(__dst, v1, sizeof(__dst));
  sub_24DDE8950(__dst);
  return memcpy(v1, __src, 0x90uLL);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  sub_24DDE8904(v1, v2);
  sub_24DDE8904(&v4, __src);
  return memcpy(v0, __src, 0x90uLL);
}

uint64_t sub_24DDDA7A8(void *a1, void *a2)
{
  sub_24DDE8904(a1, v6);
  sub_24DDE8904(a2, v7);
  sub_24DDE8904(v6, __src);
  sub_24DDE8904(v7, v9);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, v9, sizeof(v4));
  return static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.== infix(_:_:)(__dst) & 1;
}

uint64_t _s22GameCenterServerClient10OperationsO54PostWebObjectsGKChallengeService_woaWaChallengeSummaryO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0()
{
  sub_24DDE8904(v0, __dst);
  sub_24DDE8904(__dst, __src);
  OUTLINED_FUNCTION_841();
  memcpy(v5, __src, sizeof(v5));
  v1 = OUTLINED_FUNCTION_643();
  return Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.hash(into:)(v1, v2, v3);
}

uint64_t _s22GameCenterServerClient10OperationsO54PostWebObjectsGKChallengeService_woaWaChallengeSummaryO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  sub_24DDE8904(v0, v6);
  sub_24DE22CC0();
  sub_24DDE8904(v6, __src);
  MEMORY[0x253039720](0);
  memcpy(__dst, __src, sizeof(__dst));
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.hash(into:)(v5, v1, v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDDA908(uint64_t a1)
{
  sub_24DDE8904(v1, v7);
  sub_24DE22CC0();
  sub_24DDE8904(v7, __src);
  MEMORY[0x253039720](0);
  memcpy(__dst, __src, sizeof(__dst));
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.hash(into:)(v6, v2, v3);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.ok.getter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output(v0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_53();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_245();
    sub_24DD74008();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_546();
    memcpy(v2, v3, 0x90uLL);
  }

  OUTLINED_FUNCTION_670();
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36(v12, v38);
  v14 = MEMORY[0x28223BE20](v13);
  v22 = OUTLINED_FUNCTION_85(v14, v15, v16, v17, v18, v19, v20, v21, v39);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output(v22);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_182();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3688, &qword_24DE23758);
  OUTLINED_FUNCTION_443(v25);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    memcpy(v45, v7, 0x90uLL);
    OUTLINED_FUNCTION_379();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v42, v9, sizeof(v42));
      sub_24DDE8904(v45, v43);
      sub_24DDE8904(v42, v44);
      memcpy(v41, v43, sizeof(v41));
      memcpy(v40, v44, sizeof(v40));
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.== infix(_:_:)(v41);
      sub_24DDE8950(v42);
      sub_24DDE8950(v45);
      goto LABEL_11;
    }

    sub_24DDE8950(v45);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3688);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = OUTLINED_FUNCTION_174();
    v35(v34);
    goto LABEL_9;
  }

  v28 = OUTLINED_FUNCTION_19();
  v10(v28);
  v29 = OUTLINED_FUNCTION_172();
  v10(v29);
  OUTLINED_FUNCTION_817();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v31);
    v32 = OUTLINED_FUNCTION_62();
    v8(v32);
    v33 = OUTLINED_FUNCTION_442();
    v8(v33);
LABEL_11:
    OUTLINED_FUNCTION_245();
    sub_24DD74008();
    goto LABEL_12;
  }

  v36 = OUTLINED_FUNCTION_181();
  v27(v36);
  v37 = OUTLINED_FUNCTION_442();
  v27(v37);
  OUTLINED_FUNCTION_245();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_655();
  sub_24DE229C0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_66();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output(0);
  OUTLINED_FUNCTION_90();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_615();
  sub_24DD74A90();
  OUTLINED_FUNCTION_464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v10 = OUTLINED_FUNCTION_101();
    v11(v10);
    OUTLINED_FUNCTION_1135();
    MEMORY[0x253039720](v9);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v12);
    OUTLINED_FUNCTION_536();
    v13 = OUTLINED_FUNCTION_330();
    v14(v13);
  }

  else
  {
    memcpy(v19, v6, sizeof(v19));
    OUTLINED_FUNCTION_879();
    sub_24DDE8904(v19, v20);
    MEMORY[0x253039720](0);
    memcpy(v18, v20, sizeof(v18));
    v15 = OUTLINED_FUNCTION_1267();
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.hash(into:)(v15, v16, v17);
    sub_24DDE8950(v19);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD75DE0(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE89A0(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.Body.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 6);
  v3 = *(a1 + 28);
  v4 = *(a1 + 29);
  v5 = *a2;
  v6 = *(a2 + 6);
  v7 = *(a2 + 28);
  v8 = *(a2 + 29);
  v16 = *a1;
  v17 = *(a1 + 1);
  v19 = v3;
  v18 = v2;
  v20 = v4;
  v11 = v5;
  v12 = *(a2 + 1);
  v14 = v7;
  v13 = v6;
  v15 = v8;
  static Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.== infix(_:_:)(&v16, &v11);
  return v9 & 1;
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.Body.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  v2 = *(v1 + 28);
  v3 = *(v1 + 24);
  v4 = *(v1 + 29);
  OUTLINED_FUNCTION_879();
  OUTLINED_FUNCTION_729();
  sub_24DE22AD0();
  v5 = OUTLINED_FUNCTION_637();
  sub_24DDE0DB4(v5, v6);
  if (v4 == 1 || (OUTLINED_FUNCTION_963(), ((v3 | (v2 << 32)) & 0x100000000) != 0))
  {
    OUTLINED_FUNCTION_1001();
  }

  else
  {
    OUTLINED_FUNCTION_963();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_999();
}

uint64_t sub_24DDDB2C8(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.Body.hash(into:)(v2);
  return sub_24DE22D10();
}

void sub_24DDDB308(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 22) = 0;
  OUTLINED_FUNCTION_1124(a1);
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.body.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 180);
  v6 = *(v1 + 176);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 28) = v5;
  *(a1 + 24) = v6;
  sub_24DD75E18(v2, v3, v4);
}

__n128 Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.body.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_605(a1);
  v4 = *(v3 + 24);
  v5 = v2 + 176;
  v6 = *(v3 + 28);
  sub_24DD75E5C(*(v5 - 24), *(v5 - 16), *(v5 - 8));
  result = v8;
  *(v5 - 24) = v8;
  *(v5 - 8) = v1;
  *(v5 + 4) = v6;
  *v5 = v4;
  return result;
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1096(v61);
  v11 = *(v9 + 152);
  v10 = *(v9 + 160);
  v52 = *(v9 + 168);
  v12 = *(v9 + 180);
  v13 = *(v9 + 176);
  memcpy(__dst, v7, sizeof(__dst));
  v14 = *(v7 + 160);
  v50 = *(v7 + 152);
  v51 = *(v7 + 168);
  v15 = *(v7 + 180);
  v16 = *(v7 + 176);
  sub_24DD75DE0(v61, v64);
  sub_24DD75DE0(__dst, v64);
  v17 = OUTLINED_FUNCTION_393();
  v19 = static Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.Headers.== infix(_:_:)(v17, v18);
  memcpy(v63, v7, sizeof(v63));
  sub_24DDE89A0(v63);
  OUTLINED_FUNCTION_1096(v64);
  sub_24DDE89A0(v64);
  if (v19)
  {
    if (v10)
    {
      if (v14)
      {
        v57[0] = v11;
        v57[1] = v10;
        v57[2] = v52;
        v58 = v13;
        v59 = (v13 | (v12 << 32)) >> 32;
        v60 = (((v13 | (v12 << 32)) >> 32) >> 8) & 1;
        v53[0] = v50;
        v53[1] = v14;
        v53[2] = v51;
        v55 = (v16 | (v15 << 32)) >> 32;
        v54 = v16;
        v56 = (((v16 | (v15 << 32)) >> 32) >> 8) & 1;
        static Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.== infix(_:_:)(v57, v53);
        OUTLINED_FUNCTION_406();
        OUTLINED_FUNCTION_789();
        sub_24DD75E18(v20, v21, v22);
        v23 = OUTLINED_FUNCTION_198();
        sub_24DD75E18(v23, v24, v25);
        v26 = OUTLINED_FUNCTION_198();
        sub_24DD75E5C(v26, v27, v28);
        OUTLINED_FUNCTION_406();
        OUTLINED_FUNCTION_789();
        sub_24DD75E5C(v29, v30, v31);
        goto LABEL_7;
      }
    }

    else if (!v14)
    {
      OUTLINED_FUNCTION_1271();
      OUTLINED_FUNCTION_789();
      sub_24DD75E18(v44, v45, v46);
      sub_24DD75E18(v50, 0, v51);
      OUTLINED_FUNCTION_1271();
      OUTLINED_FUNCTION_789();
      sub_24DD75E5C(v47, v48, v49);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_541();
    OUTLINED_FUNCTION_789();
    sub_24DD75E18(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_198();
    sub_24DD75E18(v35, v36, v37);
    OUTLINED_FUNCTION_406();
    OUTLINED_FUNCTION_789();
    sub_24DD75E5C(v38, v39, v40);
    v41 = OUTLINED_FUNCTION_198();
    sub_24DD75E5C(v41, v42, v43);
  }

LABEL_7:
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  v2 = *(v1 + 160);
  v3 = *(v1 + 180);
  v4 = *(v1 + 176);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.Headers.hash(into:)(v5);
  if (!v2 || (v6 = v4 | (v3 << 32), OUTLINED_FUNCTION_371(), sub_24DE22CE0(), MEMORY[0x253039720](0), OUTLINED_FUNCTION_492(), sub_24DE22AD0(), v7 = OUTLINED_FUNCTION_794(), sub_24DDE0DB4(v7, v8), (v6 & 0x10000000000) != 0) || (OUTLINED_FUNCTION_371(), sub_24DE22CE0(), (v6 & 0x100000000) != 0))
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_999();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDDB670(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDDB6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v10 = *v9;
  v12 = *(v9 + 1);
  v13 = *(v9 + 2);
  v14 = *(v9 + 3);
  v15 = *(v9 + 4);
  v16 = *(v9 + 5);
  v17 = *(v9 + 6);
  v18 = *(v9 + 7);
  v11 = *(v9 + 4);
  *a5 = *v9;
  *(a5 + 4) = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  *(a5 + 40) = v16;
  *(a5 + 48) = v17;
  *(a5 + 56) = v18;
  v19 = OUTLINED_FUNCTION_848(a1, a2, a3, a4, a6, a7, a8, a9, v22, v23, v24, v25, v26, v27, v28, v29, v10);
  return v20(v19);
}

uint64_t sub_24DDDB7E4(uint64_t a1)
{
  OUTLINED_FUNCTION_372();
  v4 = v2;
  v6 = v5;
  v3(v4, v25);
  v7 = (v3)(v25, v6);
  v15 = OUTLINED_FUNCTION_848(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22, v23, v24, v25[0]);
  return v1(v15);
}

double sub_24DDDB870(uint64_t a1)
{
  OUTLINED_FUNCTION_957();
  v4 = v3();
  v12 = OUTLINED_FUNCTION_1265(v4, v5, v6, v7, v8, v9, v10, v11, v26);
  (v3)(v12);
  v13 = v2[1];
  v37[0] = *v2;
  v37[1] = v13;
  v14 = v2[3];
  v37[2] = v2[2];
  v37[3] = v14;
  v15 = v1(v37);
  *&result = OUTLINED_FUNCTION_786(v15, v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v24, v36).n128_u64[0];
  return result;
}

double sub_24DDDB910(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v3 = (a2)(a1, v23);
  v11 = OUTLINED_FUNCTION_1265(v3, v4, v5, v6, v7, v8, v9, v10, v23[0]);
  v12 = a2(v11);
  *&result = OUTLINED_FUNCTION_786(v12, v13, v14, v15, v16, v17, v18, v19, v20, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v24, v25, v21, v26).n128_u64[0];
  return result;
}

uint64_t sub_24DDDB970(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 7);
  v4 = *a2;
  v5 = *(a2 + 4);
  v20 = *(a1 + 4);
  v21 = v5;
  v14 = v2;
  v15 = v20;
  v6 = *(a1 + 6);
  v16 = *(a1 + 2);
  v17 = v6;
  v18 = *(a1 + 10);
  v19 = v3;
  v11 = v4;
  v12 = v5;
  v7 = OUTLINED_FUNCTION_1032(a1, a2);
  v13 = v8;
  return v9(&v14, &v11, v7) & 1;
}

uint64_t sub_24DDDBA5C()
{
  v2 = OUTLINED_FUNCTION_854();
  v4 = v3(v2);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_615();
  sub_24DD74A90();
  OUTLINED_FUNCTION_426();
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9[3] = v4;
    __swift_allocate_boxed_opaque_existential_0(v9);
    sub_24DD74A90();
    OUTLINED_FUNCTION_1288();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_406();
    return sub_24DD74008();
  }

  else
  {
    v7 = v0[1];
    *v1 = *v0;
    v1[1] = v7;
    v8 = v0[3];
    v1[2] = v0[2];
    v1[3] = v8;
  }

  return result;
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_28(v10, v39);
  v12 = MEMORY[0x28223BE20](v11);
  v20 = OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17, v18, v19, v40);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Output(v20);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_182();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3690, &qword_24DE23760);
  OUTLINED_FUNCTION_443(v23);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    if (OUTLINED_FUNCTION_210() != 1)
    {
      v34 = OUTLINED_FUNCTION_10();
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Response.== infix(_:_:)(v34, v35);
      v36 = OUTLINED_FUNCTION_863();
      sub_24DDE8A08(v36);
      sub_24DDE8A08(v41);
      goto LABEL_11;
    }

    sub_24DDE8A08(v41);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3690);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v32 = OUTLINED_FUNCTION_132();
    v33(v32);
    goto LABEL_9;
  }

  v26 = OUTLINED_FUNCTION_12();
  v8(v26);
  v27 = OUTLINED_FUNCTION_131();
  v8(v27);
  OUTLINED_FUNCTION_723();
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v29);
    v30 = OUTLINED_FUNCTION_62();
    v7(v30);
    v31 = OUTLINED_FUNCTION_442();
    v7(v31);
LABEL_11:
    OUTLINED_FUNCTION_413();
    sub_24DD74008();
    goto LABEL_12;
  }

  v37 = OUTLINED_FUNCTION_181();
  v25(v37);
  v38 = OUTLINED_FUNCTION_442();
  v25(v38);
  OUTLINED_FUNCTION_413();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void sub_24DDDBE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_938();
  v11 = v10;
  OUTLINED_FUNCTION_429();
  sub_24DE229C0();
  OUTLINED_FUNCTION_20();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_97();
  v17 = v16 - v15;
  v11(0);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_147();
  sub_24DD74A90();
  OUTLINED_FUNCTION_426();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v6;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    (*(v13 + 32))(v17, v6 + *(v20 + 48), v7);
    OUTLINED_FUNCTION_1010();
    MEMORY[0x253039720](v19);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v21);
    OUTLINED_FUNCTION_610();
    sub_24DE22AA0();
    v22 = OUTLINED_FUNCTION_465();
    v23(v22, v7);
  }

  else
  {
    v24 = *(v6 + 1);
    v26[0] = *v6;
    v26[1] = v24;
    v25 = *(v6 + 3);
    v26[2] = *(v6 + 2);
    v26[3] = v25;
    OUTLINED_FUNCTION_841();
    v27 = BYTE4(v26[0]);
    MEMORY[0x253039720](0);
    v9(v5);
    v8(v26);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD76364(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE8A58(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.Body.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 45);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 44);
  v9 = *(a2 + 45);
  v10 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v10;
  v20 = v2;
  v22 = v4;
  v21 = v3;
  v23 = v5;
  v11 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v11;
  v15 = v6;
  v17 = v8;
  v16 = v7;
  v18 = v9;
  static Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.== infix(_:_:)(v19, v14);
  return v12 & 1;
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.Body.hash(into:)()
{
  OUTLINED_FUNCTION_734();
  OUTLINED_FUNCTION_879();
  v0 = OUTLINED_FUNCTION_1275();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)(v0, v1, v2, v3, v4, v5);
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.Body.hashValue.getter()
{
  sub_24DE22CC0();
  MEMORY[0x253039720](0);
  OUTLINED_FUNCTION_811();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)(v6, v0, v1, v2, v3, v4);
  return sub_24DE22D10();
}

uint64_t sub_24DDDC460(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.Body.hash(into:)();
  return sub_24DE22D10();
}

double sub_24DDDC4A0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 38) = 0;
  return result;
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.body.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 196);
  v8 = *(v1 + 192);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 44) = v7;
  *(a1 + 40) = v8;
  sub_24DD7639C(v2, v3, v4, v5);
}

__n128 Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.body.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = v1 + 192;
  sub_24DD763E4(*(v6 - 40), *(v6 - 32), *(v6 - 24), *(v6 - 16));
  result = *a1;
  *(v6 - 24) = *(a1 + 16);
  *(v6 - 40) = result;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v90[0] = v7;
  OUTLINED_FUNCTION_1255();
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_968(v98);
  v12 = *(v11 + 152);
  v13 = *(v11 + 160);
  v81 = *(v11 + 168);
  v85 = *(v11 + 176);
  v86 = *(v11 + 184);
  v14 = *(v11 + 196);
  v15 = *(v11 + 192);
  OUTLINED_FUNCTION_1096(v99);
  v16 = *(v9 + 160);
  v87 = *(v9 + 152);
  v88 = *(v9 + 168);
  v82 = *(v9 + 176);
  v89 = *(v9 + 184);
  v17 = *(v9 + 196);
  v18 = *(v9 + 192);
  sub_24DD76364(v98, v6 - 240);
  sub_24DD76364(v99, v6 - 240);
  v19 = OUTLINED_FUNCTION_616();
  v21 = static Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.Headers.== infix(_:_:)(v19, v20);
  OUTLINED_FUNCTION_1096(v100);
  sub_24DDE8A58(v100);
  OUTLINED_FUNCTION_968((v6 - 240));
  sub_24DDE8A58(v6 - 240);
  if (v21)
  {
    v22 = v15 | (v14 << 32);
    if (v13 == 1)
    {
      if (v16 == 1)
      {
        v23 = OUTLINED_FUNCTION_784();
        OUTLINED_FUNCTION_998(v23, v24, v25, v26, v27, v28, v29, v30, v77, v78, v79, v80, v81, v82, v85);
        sub_24DD7639C(v87, 1, v88, v83);
        OUTLINED_FUNCTION_784();
        OUTLINED_FUNCTION_363();
        sub_24DD763E4(v31, v32, v33, v34);
        goto LABEL_7;
      }
    }

    else if (v16 != 1)
    {
      v94[0] = v12;
      v94[1] = v13;
      v94[2] = v81;
      v94[3] = v85;
      v94[4] = v86;
      v95 = v15;
      v96 = (v15 | (v14 << 32)) >> 32;
      v97 = BYTE5(v22) & 1;
      v90[0] = v87;
      v90[1] = v16;
      v90[2] = v88;
      v90[3] = v82;
      v90[4] = v89;
      v92 = (v18 | (v17 << 32)) >> 32;
      v91 = v18;
      v93 = (((v18 | (v17 << 32)) >> 32) >> 8) & 1;
      v53 = OUTLINED_FUNCTION_279();
      sub_24DD7639C(v53, v54, v55, v56);
      OUTLINED_FUNCTION_594();
      OUTLINED_FUNCTION_1272();
      sub_24DD7639C(v57, v58, v59, v60);
      v61 = OUTLINED_FUNCTION_279();
      sub_24DD7639C(v61, v62, v63, v64);
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.== infix(_:_:)(v94, v90);
      OUTLINED_FUNCTION_1272();
      sub_24DD763E4(v65, v66, v67, v68);
      v69 = OUTLINED_FUNCTION_279();
      sub_24DD763E4(v69, v70, v71, v72);
      v73 = OUTLINED_FUNCTION_279();
      sub_24DD763E4(v73, v74, v75, v76);
      goto LABEL_7;
    }

    v35 = OUTLINED_FUNCTION_732();
    OUTLINED_FUNCTION_998(v35, v36, v37, v38, v39, v40, v41, v42, v77, v78, v22, v16, v81, v82, v85);
    v43 = OUTLINED_FUNCTION_532();
    sub_24DD7639C(v43, v44, v88, v84);
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_363();
    sub_24DD763E4(v45, v46, v47, v48);
    OUTLINED_FUNCTION_474();
    sub_24DD763E4(v49, v50, v51, v52);
  }

LABEL_7:
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1100();
  v2 = v1;
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.Headers.hash(into:)(v1);
  OUTLINED_FUNCTION_1054();
  if (v3)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039720](0);
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)(v2, v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_1098();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.hashValue.getter()
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.Headers.hash(into:)(v7);
  OUTLINED_FUNCTION_1054();
  if (v0)
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    MEMORY[0x253039720](0);
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)(v7, v1, v2, v3, v4, v5);
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDDC928(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDDC9A8@<X0>(void (*a1)(_BYTE *, _BYTE *)@<X0>, uint64_t (*a2)(_BYTE *, uint64_t *)@<X1>, void *a3@<X8>)
{
  v6 = v3;
  a1(v6, v10);
  a1(v10, __src);
  memcpy(a3, __src, 0x139uLL);
  a1(v10, v12);
  return a2(v12, &v9);
}

uint64_t sub_24DDDCAB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t sub_24DDDCB24(uint64_t a1)
{
  OUTLINED_FUNCTION_372();
  v4 = v2;
  v6 = v5;
  v3(v4, v9);
  v3(v9, v6);
  return v1(v9, &v8);
}

void *sub_24DDDCBB4(uint64_t a1)
{
  OUTLINED_FUNCTION_957();
  v3();
  (v3)(&v5, __src);
  memcpy(__dst, v2, 0x139uLL);
  v1(__dst);
  return memcpy(v2, __src, 0x139uLL);
}

void *sub_24DDDCC64@<X0>(_BYTE *a1@<X0>, void (*a2)(_BYTE *, _BYTE *)@<X1>, void *a3@<X8>)
{
  a2(a1, v6);
  a2(v6, __src);
  return memcpy(a3, __src, 0x139uLL);
}

uint64_t sub_24DDDCCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  OUTLINED_FUNCTION_1033();
  v7();
  v4(v5, v12);
  v4(v11, __src);
  v4(v12, v14);
  memcpy(__dst, __src, 0x139uLL);
  memcpy(v9, v14, 0x139uLL);
  return a4(__dst, v9) & 1;
}

uint64_t sub_24DDDCDC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _BYTE *), uint64_t (*a5)(void *))
{
  (a4)(v5, v11, a3);
  sub_24DE22CC0();
  a4(v11, __src);
  MEMORY[0x253039720](0);
  memcpy(__dst, __src, sizeof(__dst));
  a5(v10);
  return sub_24DE22D10();
}

void *sub_24DDDCEB4()
{
  v0 = OUTLINED_FUNCTION_854();
  v2 = v1(v0);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_615();
  sub_24DD74A90();
  OUTLINED_FUNCTION_426();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7[3] = v2;
    __swift_allocate_boxed_opaque_existential_0(v7);
    sub_24DD74A90();
    OUTLINED_FUNCTION_1288();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_406();
    return sub_24DD74008();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_1058();
    return memcpy(v5, v6, 0x139uLL);
  }
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36(v12, v38);
  v14 = MEMORY[0x28223BE20](v13);
  v22 = OUTLINED_FUNCTION_85(v14, v15, v16, v17, v18, v19, v20, v21, v39);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Output(v22);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_182();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3698, &qword_24DE23768);
  OUTLINED_FUNCTION_443(v25);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_269();
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    memcpy(v43, v7, 0x139uLL);
    OUTLINED_FUNCTION_379();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v41, v9, 0x139uLL);
      OUTLINED_FUNCTION_1043();
      memcpy(v40, v42, 0x139uLL);
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.== infix(_:_:)();
      sub_24DDE8AD4(v41);
      sub_24DDE8AD4(v43);
      goto LABEL_11;
    }

    sub_24DDE8AD4(v43);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B3698);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = OUTLINED_FUNCTION_174();
    v35(v34);
    goto LABEL_9;
  }

  v28 = OUTLINED_FUNCTION_19();
  v10(v28);
  v29 = OUTLINED_FUNCTION_172();
  v10(v29);
  OUTLINED_FUNCTION_817();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v31);
    v32 = OUTLINED_FUNCTION_62();
    v8(v32);
    v33 = OUTLINED_FUNCTION_442();
    v8(v33);
LABEL_11:
    OUTLINED_FUNCTION_413();
    sub_24DD74008();
    goto LABEL_12;
  }

  v36 = OUTLINED_FUNCTION_181();
  v27(v36);
  v37 = OUTLINED_FUNCTION_442();
  v27(v37);
  OUTLINED_FUNCTION_413();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Output.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_655();
  sub_24DE229C0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_66();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeAccept.Output(0);
  OUTLINED_FUNCTION_90();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_615();
  sub_24DD74A90();
  OUTLINED_FUNCTION_464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v10 = OUTLINED_FUNCTION_101();
    v11(v10);
    OUTLINED_FUNCTION_1135();
    MEMORY[0x253039720](v9);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v12);
    OUTLINED_FUNCTION_536();
    v13 = OUTLINED_FUNCTION_330();
    v14(v13);
  }

  else
  {
    memcpy(v16, v6, 0x139uLL);
    OUTLINED_FUNCTION_879();
    sub_24DDE8A88(v16, v17);
    MEMORY[0x253039720](0);
    memcpy(v15, v17, sizeof(v15));
    OUTLINED_FUNCTION_1267();
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Response.hash(into:)();
    sub_24DDE8AD4(v16);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD767E8(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE8B24(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t sub_24DDDD6E0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = v2[20];
  v4 = v2[21];
  v5 = v2[22];
  *a2 = v2[19];
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return a1();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output.Ok.Body.json.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v10 = *v9;
  v11 = *(v9 + 4);
  v13 = *(v9 + 16);
  v14 = *(v9 + 24);
  v15 = *(v9 + 32);
  v16 = *(v9 + 40);
  v17 = *(v9 + 48);
  v18 = *(v9 + 56);
  v12 = *(v9 + 8);
  *a5 = *v9;
  *(a5 + 4) = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  *(a5 + 40) = v16;
  *(a5 + 48) = v17;
  *(a5 + 56) = v18;
  v19 = OUTLINED_FUNCTION_848(a1, a2, a3, a4, a6, a7, a8, a9, v22, v23, v24, v25, v26, v27, v28, v29, v10);
  return sub_24DDE7BD4(v19, v20);
}

uint64_t sub_24DDDD87C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE7FE8(v1, v21);
  v2 = sub_24DDE7FE8(v21, v0);
  v10 = OUTLINED_FUNCTION_848(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  return sub_24DDE8B54(v10, v11);
}

double Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output.Ok.body.setter(__int128 *a1)
{
  v2 = sub_24DDE7FE8(a1, &v24);
  v10 = OUTLINED_FUNCTION_1265(v2, v3, v4, v5, v6, v7, v8, v9, v24);
  sub_24DDE7FE8(v10, v11);
  OUTLINED_FUNCTION_937();
  v12 = *(v1 + 48);
  v35 = *(v1 + 32);
  v36 = v12;
  v13 = sub_24DDE8B8C(v34);
  *&result = OUTLINED_FUNCTION_786(v13, v14, v15, v16, v17, v18, v19, v20, v21, v24, *(&v24 + 1), v25, v26, v27, v28, v29, v30, v31, v32, v22, v33).n128_u64[0];
  return result;
}

__n128 Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  v3 = sub_24DDE7FE8(v1, v2);
  v11 = OUTLINED_FUNCTION_1265(v3, v4, v5, v6, v7, v8, v9, v10, v14);
  sub_24DDE7FE8(v11, v12);
  *v0 = v15;
  v0[1] = v16;
  result = v17;
  v0[2] = v17;
  v0[3] = v18;
  return result;
}

uint64_t sub_24DDDD9AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v11) = *a2;
  HIDWORD(v11) = *(a2 + 4);
  LOBYTE(v12) = *(a2 + 8);
  v8 = OUTLINED_FUNCTION_848(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *a1);
  return static Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.== infix(_:_:)(v8, v9) & 1;
}

void _s22GameCenterServerClient10OperationsO52PostWebObjectsGKChallengeService_woaWaChallengeLeaveO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  OUTLINED_FUNCTION_1161();
  OUTLINED_FUNCTION_734();
  OUTLINED_FUNCTION_879();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.hash(into:)(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1159();
}

uint64_t _s22GameCenterServerClient10OperationsO52PostWebObjectsGKChallengeService_woaWaChallengeLeaveO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_955();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1310();
  OUTLINED_FUNCTION_833(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16);
  return sub_24DE22D10();
}

uint64_t sub_24DDDDAF4()
{
  OUTLINED_FUNCTION_955();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1310();
  OUTLINED_FUNCTION_833(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output.ok.getter()
{
  v2 = OUTLINED_FUNCTION_92();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output(v2);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_50();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_243();
    sub_24DD74008();
  }

  else
  {
    v4 = v0[1];
    *v1 = *v0;
    v1[1] = v4;
    v5 = v0[3];
    v1[2] = v0[2];
    v1[3] = v5;
  }

  OUTLINED_FUNCTION_670();
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_28(v11, v40);
  v13 = MEMORY[0x28223BE20](v12);
  v21 = OUTLINED_FUNCTION_63(v13, v14, v15, v16, v17, v18, v19, v20, v41);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output(v21);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_182();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B36A0, &qword_24DE23770);
  OUTLINED_FUNCTION_443(v24);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    if (OUTLINED_FUNCTION_210() != 1)
    {
      v35 = v8[1];
      v54 = *v8;
      v55 = v35;
      v36 = v8[3];
      v56 = v8[2];
      v57 = v36;
      v58 = v62;
      v59 = BYTE8(v54);
      v48[0] = v60[0];
      v49 = v61;
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v53 = v65;
      v42[0] = v54;
      v43 = DWORD1(v54);
      v44 = BYTE8(v54);
      v45 = v55;
      v46 = v56;
      v47 = v36;
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.== infix(_:_:)(v48, v42);
      v37 = OUTLINED_FUNCTION_863();
      sub_24DDE8B8C(v37);
      sub_24DDE8B8C(v60);
      goto LABEL_11;
    }

    sub_24DDE8B8C(v60);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B36A0);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33 = OUTLINED_FUNCTION_132();
    v34(v33);
    goto LABEL_9;
  }

  v27 = OUTLINED_FUNCTION_12();
  v9(v27);
  v28 = OUTLINED_FUNCTION_131();
  v9(v28);
  OUTLINED_FUNCTION_723();
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v30);
    v31 = OUTLINED_FUNCTION_62();
    v7(v31);
    v32 = OUTLINED_FUNCTION_442();
    v7(v32);
LABEL_11:
    OUTLINED_FUNCTION_243();
    sub_24DD74008();
    goto LABEL_12;
  }

  v38 = OUTLINED_FUNCTION_181();
  v26(v38);
  v39 = OUTLINED_FUNCTION_442();
  v26(v39);
  OUTLINED_FUNCTION_243();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_343();
  sub_24DE229C0();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeLeave.Output(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_546();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v6 = OUTLINED_FUNCTION_67();
    v7(v6);
    OUTLINED_FUNCTION_1010();
    MEMORY[0x253039720](v5);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v8);
    OUTLINED_FUNCTION_447();
    v9 = OUTLINED_FUNCTION_394();
    v10(v9);
  }

  else
  {
    v11 = *(v2 + 1);
    v18[0] = *v2;
    v18[1] = v11;
    v12 = *(v2 + 3);
    v18[2] = *(v2 + 2);
    v18[3] = v12;
    OUTLINED_FUNCTION_841();
    v19 = BYTE8(v18[0]);
    MEMORY[0x253039720](0);
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.hash(into:)(v1, v13, v14, v15, v16, v17);
    sub_24DDE8B8C(v18);
  }

  OUTLINED_FUNCTION_999();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD76CB0(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE8BDC(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

uint64_t static Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.Body.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 32);
  v10 = *(a2 + 9);
  v11 = *(a2 + 40);
  v12 = *(a2 + 41);
  v21[0] = *a1;
  v21[1] = v2;
  v22 = *(a1 + 16);
  v23 = v3;
  v25 = v5;
  v24 = v4;
  v26 = v6;
  v15[0] = v7;
  v15[1] = v8;
  v16 = *(a2 + 1);
  v17 = v9;
  v19 = v11;
  v18 = v10;
  v20 = v12;
  static Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.== infix(_:_:)(v21, v15);
  return v13 & 1;
}

__n128 Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.Body.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_841();
  Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hash(into:)(a1);
  return result;
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.Body.hashValue.getter()
{
  sub_24DE22CC0();
  MEMORY[0x253039720](0);
  Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hash(into:)(v1);
  return sub_24DE22D10();
}

uint64_t sub_24DDDE4D8(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.Body.hash(into:)(v2);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.body.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 192);
  sub_24DD7542C(v2, v3, v4, v5);
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.body.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_24DD75940(*(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176));
  OUTLINED_FUNCTION_368();
  *(v1 + 184) = v2;
  *(v1 + 192) = v3;
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1137(v73);
  v10 = *(v9 + 152);
  v11 = *(v9 + 160);
  v13 = *(v9 + 168);
  v12 = *(v9 + 176);
  v14 = *(v9 + 184);
  v15 = *(v9 + 192);
  OUTLINED_FUNCTION_1323(v74);
  v16 = *(v7 + 160);
  v59 = *(v7 + 168);
  v60 = *(v7 + 176);
  *&v61 = *(v7 + 184);
  *(&v61 + 1) = *(v7 + 192);
  v62 = *(v7 + 152);
  sub_24DD76CB0(v73, v76);
  sub_24DD76CB0(v74, v76);
  v17 = static Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.Headers.== infix(_:_:)(v9, v7);
  OUTLINED_FUNCTION_1323(v75);
  sub_24DDE8BDC(v75);
  OUTLINED_FUNCTION_1137(v76);
  sub_24DDE8BDC(v76);
  if (v17)
  {
    if (v11)
    {
      if (v16)
      {
        v68[0] = v10;
        v68[1] = v11;
        v68[2] = v13;
        v68[3] = v12;
        *(&v18 + 1) = v15;
        *&v18 = v14;
        v69 = v14 & 1;
        v70 = HIDWORD(v14);
        v71 = (v18 >> 32) >> 32;
        v72 = BYTE1(v15) & 1;
        v63[0] = v62;
        v63[1] = v16;
        v63[2] = v59;
        v63[3] = v60;
        v64 = v61 & 1;
        v66 = (v61 >> 32) >> 32;
        v65 = DWORD1(v61);
        v67 = BYTE9(v61) & 1;
        sub_24DD7542C(v10, v11, v13, v12);
        OUTLINED_FUNCTION_440();
        OUTLINED_FUNCTION_908();
        sub_24DD7542C(v19, v20, v21, v22);
        v23 = OUTLINED_FUNCTION_621();
        sub_24DD7542C(v23, v24, v25, v26);
        static Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.== infix(_:_:)(v68, v63);
        OUTLINED_FUNCTION_908();
        sub_24DD75940(v27, v28, v29, v30);
        v31 = OUTLINED_FUNCTION_621();
        sub_24DD75940(v31, v32, v33, v34);
        v35 = OUTLINED_FUNCTION_621();
        sub_24DD75940(v35, v36, v37, v38);
        goto LABEL_7;
      }
    }

    else if (!v16)
    {
      OUTLINED_FUNCTION_809();
      sub_24DD7542C(v51, v52, v53, v54);
      sub_24DD7542C(v62, 0, v59, v60);
      OUTLINED_FUNCTION_809();
      sub_24DD75940(v55, v56, v57, v58);
      goto LABEL_7;
    }

    sub_24DD7542C(v10, v11, v13, v12);
    OUTLINED_FUNCTION_908();
    sub_24DD7542C(v39, v40, v41, v42);
    OUTLINED_FUNCTION_681();
    OUTLINED_FUNCTION_595();
    sub_24DD75940(v43, v44, v45, v46);
    OUTLINED_FUNCTION_908();
    sub_24DD75940(v47, v48, v49, v50);
  }

LABEL_7:
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1011();
  v2 = *(v1 + 160);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.Headers.hash(into:)(v3);
  if (v2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039720](0);
    v4 = OUTLINED_FUNCTION_643();
    Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hash(into:)(v4);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_1007();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.hashValue.getter()
{
  v1 = *(v0 + 160);
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.Headers.hash(into:)(v3);
  sub_24DE22CE0();
  if (v1)
  {
    MEMORY[0x253039720](0);
    Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Request.hash(into:)(v3);
  }

  return sub_24DE22D10();
}

uint64_t sub_24DDDE9C0(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Input.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output.Ok.Body.json.getter()
{
  OUTLINED_FUNCTION_161();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  *v4 = v5;
  *(v4 + 4) = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  *(v4 + 48) = v12;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;
  v20 = OUTLINED_FUNCTION_1193(v3, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v5);
  return sub_24DDE7690(v20, v21);
}

uint64_t sub_24DDDEAA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE8C0C(v1, __dst);
  v2 = sub_24DDE8C0C(__dst, v0);
  v10 = OUTLINED_FUNCTION_1193(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, __dst[0]);
  return sub_24DDE8C20(v10, v11);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output.Ok.body.setter(void *a1)
{
  v2 = sub_24DDE8C0C(a1, v14);
  OUTLINED_FUNCTION_1319(v2, v3, v4, v5, v6, v7, v8, v9, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9]);
  OUTLINED_FUNCTION_943();
  memcpy(v10, v11, v12);
  sub_24DDE8C58(v16);
  return memcpy(v1, __src, 0x50uLL);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  v3 = sub_24DDE8C0C(v1, v2);
  OUTLINED_FUNCTION_1319(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return memcpy(v0, __src, 0x50uLL);
}

uint64_t _s22GameCenterServerClient10OperationsO59PostWebObjectsGKChallengeService_woaWaChallengeGetCompletedO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_879();
  OUTLINED_FUNCTION_346();
  v0 = OUTLINED_FUNCTION_896();
  return Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.hash(into:)(v0);
}

uint64_t _s22GameCenterServerClient10OperationsO59PostWebObjectsGKChallengeService_woaWaChallengeGetCompletedO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_1233();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_926();
  OUTLINED_FUNCTION_81();
  Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.hash(into:)(v0);
  return sub_24DE22D10();
}

uint64_t sub_24DDDECA8()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_1233();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_926();
  OUTLINED_FUNCTION_81();
  Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.hash(into:)(v0);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output.ok.getter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output(v0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_48();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_241();
    sub_24DD74008();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_546();
    memcpy(v2, v3, 0x50uLL);
  }

  OUTLINED_FUNCTION_670();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_343();
  sub_24DE229C0();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_42();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeGetCompleted.Output(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_546();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v5 = OUTLINED_FUNCTION_67();
    v6(v5);
    OUTLINED_FUNCTION_1010();
    MEMORY[0x253039720](v4);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v7);
    OUTLINED_FUNCTION_447();
    v8 = OUTLINED_FUNCTION_394();
    v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_943();
    memcpy(v10, v11, v12);
    OUTLINED_FUNCTION_841();
    OUTLINED_FUNCTION_678();
    v13 = OUTLINED_FUNCTION_611();
    Components.Schemas.Com_apple_gk_data_challenge_GetCompletedChallenges_Response.hash(into:)(v13);
    sub_24DDE8C58(&v14);
  }

  OUTLINED_FUNCTION_999();
}

uint64_t sub_24DDDF338(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v138 = a1[2];
  v7 = a1[3];
  v136 = a1[4];
  v8 = a1[6];
  v140 = a1[5];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  v16 = a1[13];
  v15 = a1[14];
  v17 = a1[15];
  v131 = a1[16];
  v132 = a1[17];
  v127 = a1[18];
  v18 = a2[1];
  v137 = a2[2];
  v19 = a2[3];
  v135 = a2[4];
  v139 = a2[5];
  v21 = a2[7];
  v20 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v25 = a2[11];
  v24 = a2[12];
  v26 = a2[13];
  v27 = a2[14];
  v29 = a2[15];
  v28 = a2[16];
  v133 = a2[17];
  v130 = a2[18];
  if (v6)
  {
    if (!v18)
    {
      goto LABEL_82;
    }

    v134 = a2[6];
    if (*a1 != *a2 || v6 != v18)
    {
      v97 = a2[13];
      v98 = a1[12];
      v117 = a1[10];
      v122 = a5;
      v31 = a2[16];
      v86 = a1[14];
      v89 = a2[11];
      v93 = a1[13];
      v95 = a2[14];
      v32 = a1[15];
      v33 = a2[15];
      v105 = a2[8];
      v109 = a2[9];
      v34 = a2[12];
      v100 = a1[7];
      v35 = a1[11];
      v36 = a2[10];
      v113 = a1[8];
      v37 = a1[9];
      v38 = sub_24DE22CA0();
      v11 = v37;
      v9 = v113;
      v12 = v117;
      v22 = v36;
      v20 = v105;
      v13 = v35;
      v14 = v98;
      v10 = v100;
      v24 = v34;
      v23 = v109;
      v29 = v33;
      v25 = v89;
      v16 = v93;
      v17 = v32;
      v15 = v86;
      v28 = v31;
      v27 = v95;
      v26 = v97;
      a5 = v122;
      if ((v38 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
    v134 = a2[6];
    if (v18)
    {
      goto LABEL_82;
    }
  }

  if (v7)
  {
    if (!v19)
    {
      goto LABEL_82;
    }

    if (v138 != v137 || v7 != v19)
    {
      v118 = v12;
      v123 = a5;
      v101 = v10;
      v103 = v8;
      v40 = v28;
      v41 = v15;
      v42 = v17;
      v99 = v14;
      v94 = v16;
      v96 = v27;
      v43 = v29;
      v106 = v20;
      v110 = v23;
      v44 = v24;
      v45 = v13;
      v46 = v25;
      v47 = v22;
      v114 = v9;
      v48 = v11;
      v49 = sub_24DE22CA0();
      v11 = v48;
      v9 = v114;
      v12 = v118;
      v22 = v47;
      v25 = v46;
      v13 = v45;
      v24 = v44;
      v20 = v106;
      v23 = v110;
      v29 = v43;
      v16 = v94;
      v27 = v96;
      v14 = v99;
      v17 = v42;
      v15 = v41;
      v28 = v40;
      v10 = v101;
      v8 = v103;
      a5 = v123;
      if ((v49 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_82;
  }

  if (v140)
  {
    v50 = v134;
    if (!v139)
    {
      goto LABEL_82;
    }

    if (v136 != v135 || v140 != v139)
    {
      v124 = a5;
      v102 = v10;
      v104 = v8;
      v52 = v28;
      v87 = v15;
      v53 = v17;
      v141 = v29;
      v107 = v20;
      v111 = v23;
      v54 = v24;
      v115 = v9;
      v119 = v12;
      v55 = v13;
      v90 = v25;
      v56 = v22;
      v57 = v11;
      v58 = sub_24DE22CA0();
      v50 = v134;
      v29 = v141;
      v11 = v57;
      v22 = v56;
      v15 = v87;
      v25 = v90;
      v13 = v55;
      v23 = v111;
      v9 = v115;
      v12 = v119;
      a5 = v124;
      v24 = v54;
      v17 = v53;
      v10 = v102;
      v28 = v52;
      v8 = v104;
      v20 = v107;
      if ((v58 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
    v50 = v134;
    if (v139)
    {
      goto LABEL_82;
    }
  }

  if (v10)
  {
    if (!v21)
    {
      goto LABEL_82;
    }

    if (v8 != v50 || v10 != v21)
    {
      v125 = a5;
      v60 = v28;
      v88 = v15;
      v61 = v17;
      v142 = v29;
      v108 = v20;
      v112 = v23;
      v62 = v24;
      v116 = v9;
      v120 = v12;
      v63 = v13;
      v91 = v25;
      v64 = v22;
      v65 = v11;
      v66 = sub_24DE22CA0();
      v11 = v65;
      v22 = v64;
      v15 = v88;
      v25 = v91;
      v13 = v63;
      v23 = v112;
      v9 = v116;
      v12 = v120;
      a5 = v125;
      v24 = v62;
      v20 = v108;
      v29 = v142;
      v17 = v61;
      v28 = v60;
      if ((v66 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_82;
  }

  if (v11)
  {
    if (!v23)
    {
      goto LABEL_82;
    }

    if (v9 != v20 || v11 != v23)
    {
      v126 = a5;
      v68 = v28;
      v69 = v15;
      v70 = v17;
      v143 = v29;
      v71 = v24;
      v121 = v12;
      v23 = v13;
      v92 = v25;
      v72 = v22;
      v73 = sub_24DE22CA0();
      v22 = v72;
      v25 = v92;
      v13 = v23;
      v12 = v121;
      a5 = v126;
      v24 = v71;
      v29 = v143;
      v17 = v70;
      v15 = v69;
      v28 = v68;
      if ((v73 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_82;
  }

  if (v13)
  {
    if (!v25)
    {
      goto LABEL_82;
    }

    if (v12 != v22 || v13 != v25)
    {
      OUTLINED_FUNCTION_810();
      OUTLINED_FUNCTION_1210();
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1068();
      if ((v75 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_82;
  }

  if (v16)
  {
    if (!v26)
    {
      goto LABEL_82;
    }

    if (v14 != v24 || v16 != v26)
    {
      OUTLINED_FUNCTION_810();
      OUTLINED_FUNCTION_1210();
      sub_24DE22CA0();
      OUTLINED_FUNCTION_1068();
      if ((v77 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (v26)
  {
    goto LABEL_82;
  }

  if (v17)
  {
    if (!v29)
    {
      goto LABEL_82;
    }

    if (v15 != v27 || v17 != v29)
    {
      OUTLINED_FUNCTION_810();
      v80 = v79;
      v81 = sub_24DE22CA0();
      v28 = v80;
      a5 = v23;
      if ((v81 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (v29)
  {
    goto LABEL_82;
  }

  if (v132)
  {
    if (v133)
    {
      if (v131 == v28 && v132 == v133)
      {
        goto LABEL_80;
      }

      OUTLINED_FUNCTION_810();
      v83 = sub_24DE22CA0();
      a5 = v23;
      if (v83)
      {
        goto LABEL_80;
      }
    }

LABEL_82:
    v84 = 0;
    return v84 & 1;
  }

  if (v133)
  {
    goto LABEL_82;
  }

LABEL_80:
  sub_24DD857C4(v127, v130, a3, a4, a5);
  return v84 & 1;
}

void sub_24DDDF878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_438();
  v5 = v4[3];
  v6 = v4[5];
  v7 = v4[7];
  v8 = v4[9];
  v9 = v4[11];
  v10 = v4[13];
  v11 = v4[17];
  v12 = v4[15];
  v13 = v4[18];
  if (v4[1])
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_386();
    sub_24DE22AD0();
    if (v5)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_407();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  sub_24DE22CE0();
  if (v6)
  {
    OUTLINED_FUNCTION_731();
    sub_24DE22AD0();
  }

  if (v7)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_714();
    sub_24DE22AD0();
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v8)
    {
LABEL_10:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1073();
      sub_24DE22AD0();
      if (v9)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  sub_24DE22CE0();
  if (v9)
  {
LABEL_11:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1074();
    sub_24DE22AD0();
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_24DE22CE0();
  if (v10)
  {
LABEL_12:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1268();
    sub_24DE22AD0();
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_19:
    sub_24DE22CE0();
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_20:
    sub_24DE22CE0();
    goto LABEL_21;
  }

LABEL_18:
  sub_24DE22CE0();
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_13:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_781();
  sub_24DE22AD0();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_14:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_868();
  sub_24DE22AD0();
LABEL_21:
  sub_24DDE0CC4(v3, v13);
  OUTLINED_FUNCTION_585();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Input.headers.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_325(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  v8 = OUTLINED_FUNCTION_370();
  v10 = memcpy(v8, v9, 0x98uLL);
  v18 = OUTLINED_FUNCTION_633(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
  return sub_24DD770AC(v18, v19);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Input.headers.setter()
{
  OUTLINED_FUNCTION_199();
  memcpy(v0, v1, 0x98uLL);
  sub_24DDE8CA8(v5);
  v2 = OUTLINED_FUNCTION_407();
  return memcpy(v2, v3, 0x98uLL);
}

BOOL _s22GameCenterServerClient10OperationsO52PostWebObjectsGKChallengeService_woaWaChallengeLeaveO5InputV4BodyO2eeoiySbAI_AItFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_281(a1);
  OUTLINED_FUNCTION_1019();
  v7 = v7 && v5 == v6;
  result = 0;
  if (v7 || (sub_24DE22CA0() & 1) != 0)
  {
    if (v1 == v3 && v2 == v4)
    {
      return 1;
    }

    OUTLINED_FUNCTION_370();
    OUTLINED_FUNCTION_489();
    if (sub_24DE22CA0())
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s22GameCenterServerClient10OperationsO52PostWebObjectsGKChallengeService_woaWaChallengeLeaveO5InputV4BodyO4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  OUTLINED_FUNCTION_841();
  OUTLINED_FUNCTION_260();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_492();

  return sub_24DE22AD0();
}

void _s22GameCenterServerClient10OperationsO52PostWebObjectsGKChallengeService_woaWaChallengeLeaveO5InputV4BodyO9hashValueSivg_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  OUTLINED_FUNCTION_796(v26);
  OUTLINED_FUNCTION_965();
  OUTLINED_FUNCTION_409();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_519();
  sub_24DE22AD0();
  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void sub_24DDDFCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_659();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_957();
  v12 = v11;
  OUTLINED_FUNCTION_799(v84);
  v14 = v12[19];
  v13 = v12[20];
  v16 = v12[21];
  v15 = v12[22];
  OUTLINED_FUNCTION_1323(v85);
  v17 = v6[20];
  v81 = v6[21];
  v82 = v6[22];
  v83 = v6[19];
  v5(v84, v87);
  v5(v85, v87);
  v18 = OUTLINED_FUNCTION_638();
  v19 = v10(v18);
  OUTLINED_FUNCTION_1323(v86);
  v8(v86);
  OUTLINED_FUNCTION_799(v87);
  v8(v87);
  if (v19)
  {
    if (v13)
    {
      if (v17)
      {
        if (v14 != v83 || v13 != v17)
        {
          OUTLINED_FUNCTION_582();
          OUTLINED_FUNCTION_818();
          if ((sub_24DE22CA0() & 1) == 0)
          {
            OUTLINED_FUNCTION_397();
            sub_24DD770E4(v71, v72, v73, v74);
            v75 = OUTLINED_FUNCTION_445();
            sub_24DD770E4(v75, v76, v81, v82);
            OUTLINED_FUNCTION_445();
            OUTLINED_FUNCTION_668();
            sub_24DD75940(v77, v78, v79, v80);
LABEL_22:
            OUTLINED_FUNCTION_397();
            goto LABEL_23;
          }
        }

        if (v16 == v81 && v15 == v82)
        {
          OUTLINED_FUNCTION_397();
          sub_24DD770E4(v51, v52, v53, v54);
          OUTLINED_FUNCTION_445();
          OUTLINED_FUNCTION_500();
          sub_24DD770E4(v55, v56, v57, v58);
          OUTLINED_FUNCTION_445();
          OUTLINED_FUNCTION_500();
          sub_24DD75940(v59, v60, v61, v62);
        }

        else
        {
          OUTLINED_FUNCTION_674();
          OUTLINED_FUNCTION_947();
          v22 = sub_24DE22CA0();
          OUTLINED_FUNCTION_397();
          sub_24DD770E4(v23, v24, v25, v26);
          OUTLINED_FUNCTION_445();
          OUTLINED_FUNCTION_1028();
          sub_24DD770E4(v27, v28, v29, v30);
          OUTLINED_FUNCTION_445();
          OUTLINED_FUNCTION_1028();
          sub_24DD75940(v31, v32, v33, v34);
          if ((v22 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_582();
        goto LABEL_20;
      }
    }

    else if (!v17)
    {
      OUTLINED_FUNCTION_1271();
      OUTLINED_FUNCTION_500();
      sub_24DD770E4(v63, v64, v65, v66);
      sub_24DD770E4(v83, 0, v81, v82);
      OUTLINED_FUNCTION_1271();
LABEL_20:
      OUTLINED_FUNCTION_500();
      sub_24DD75940(v67, v68, v69, v70);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_397();
    sub_24DD770E4(v35, v36, v37, v38);
    OUTLINED_FUNCTION_445();
    OUTLINED_FUNCTION_693();
    sub_24DD770E4(v39, v40, v41, v42);
    OUTLINED_FUNCTION_397();
    sub_24DD75940(v43, v44, v45, v46);
    OUTLINED_FUNCTION_445();
    OUTLINED_FUNCTION_693();
LABEL_23:
    sub_24DD75940(v47, v48, v49, v50);
  }

LABEL_24:
  OUTLINED_FUNCTION_653();
}

uint64_t sub_24DDDFF08(uint64_t a1)
{
  OUTLINED_FUNCTION_985();
  v2();
  if (!v1)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039720](0);
  OUTLINED_FUNCTION_492();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_260();

  return sub_24DE22AD0();
}

void sub_24DDDFFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *(v26 + 160);
  OUTLINED_FUNCTION_796(v29);
  v30(&a10);
  sub_24DE22CE0();
  if (v31)
  {
    OUTLINED_FUNCTION_965();
    OUTLINED_FUNCTION_519();
    sub_24DE22AD0();
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

uint64_t sub_24DDE004C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.Ok.Body.json.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v23 = *(v1 + 20);
  v5 = v23;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  v14[0] = v2;
  v14[1] = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  return sub_24DDE573C(v14, &v13);
}

uint64_t sub_24DDE0120(uint64_t a1)
{
  sub_24DE22CC0();
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.Ok.Body.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.Ok.body.getter()
{
  v1 = OUTLINED_FUNCTION_715();
  sub_24DDE8CD8(v1, __dst);
  sub_24DDE8CD8(__dst, v0);
  return sub_24DDE8CEC(__dst, &v3);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.Ok.body.setter(void *a1)
{
  sub_24DDE8CD8(a1, v3);
  sub_24DDE8CD8(v3, __src);
  memcpy(__dst, v1, sizeof(__dst));
  sub_24DDE8D24(__dst);
  return memcpy(v1, __src, 0x48uLL);
}

void *Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.Ok.init(body:)()
{
  OUTLINED_FUNCTION_718();
  sub_24DDE8CD8(v1, v2);
  sub_24DDE8CD8(&v4, __src);
  return memcpy(v0, __src, 0x48uLL);
}

uint64_t sub_24DDE026C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a2 + 20);
  v23 = *(a1 + 20);
  v24 = v8;
  v17[0] = v2;
  v17[1] = v3;
  v18 = v4;
  v19 = v23;
  v20 = *(a1 + 3);
  v21 = *(a1 + 5);
  v22 = *(a1 + 7);
  v11[0] = v5;
  v11[1] = v6;
  v12 = v7;
  v13 = v8;
  v9 = *(a2 + 5);
  v14 = *(a2 + 3);
  v15 = v9;
  v16 = *(a2 + 7);
  return static Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.== infix(_:_:)(v17, v11) & 1;
}

void _s22GameCenterServerClient10OperationsO63PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCodeO6OutputO2OkV4BodyO4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  OUTLINED_FUNCTION_1161();
  OUTLINED_FUNCTION_734();
  OUTLINED_FUNCTION_879();
  v1 = OUTLINED_FUNCTION_1275();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.hash(into:)(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1159();
}

uint64_t _s22GameCenterServerClient10OperationsO63PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCodeO6OutputO2OkV4BodyO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_956();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1004();
  OUTLINED_FUNCTION_797(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  return sub_24DE22D10();
}

uint64_t sub_24DDE03CC()
{
  OUTLINED_FUNCTION_956();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1004();
  OUTLINED_FUNCTION_797(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  return sub_24DE22D10();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.ok.getter()
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output(v0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_551();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_912();
    OUTLINED_FUNCTION_46();
    sub_24DD74A90();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_918();
    OUTLINED_FUNCTION_239();
    sub_24DD74008();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_546();
    memcpy(v2, v3, 0x48uLL);
  }

  OUTLINED_FUNCTION_670();
}

void static Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_477();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28(v12, v38);
  v14 = MEMORY[0x28223BE20](v13);
  v22 = OUTLINED_FUNCTION_63(v14, v15, v16, v17, v18, v19, v20, v21, v39);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output(v22);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_182();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B36B0, &qword_24DE23780);
  OUTLINED_FUNCTION_443(v25);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_31();
  sub_24DD74A90();
  OUTLINED_FUNCTION_471();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_406();
    sub_24DD74A90();
    memcpy(v55, v7, 0x48uLL);
    OUTLINED_FUNCTION_379();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v52, v9, sizeof(v52));
      v49 = *&v55[3];
      v50 = *&v55[5];
      v51 = *&v55[7];
      v43 = *&v52[3];
      v53 = BYTE4(v55[2]);
      v54 = BYTE4(v52[2]);
      v46[0] = v55[0];
      v46[1] = v55[1];
      v47 = v55[2];
      v48 = BYTE4(v55[2]);
      v40[0] = v52[0];
      v40[1] = v52[1];
      v41 = v52[2];
      v42 = BYTE4(v52[2]);
      v44 = *&v52[5];
      v45 = *&v52[7];
      static Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.== infix(_:_:)(v46, v40);
      sub_24DDE8D24(v52);
      sub_24DDE8D24(v55);
      goto LABEL_11;
    }

    sub_24DDE8D24(v55);
LABEL_9:
    sub_24DDE8DAC(v6, &qword_27F1B36B0);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_426();
  sub_24DD74A90();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698) + 48);
  OUTLINED_FUNCTION_379();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = OUTLINED_FUNCTION_132();
    v35(v34);
    goto LABEL_9;
  }

  v28 = OUTLINED_FUNCTION_12();
  v10(v28);
  v29 = OUTLINED_FUNCTION_131();
  v10(v29);
  OUTLINED_FUNCTION_723();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_384();
    MEMORY[0x253039400](v31);
    v32 = OUTLINED_FUNCTION_62();
    v8(v32);
    v33 = OUTLINED_FUNCTION_442();
    v8(v33);
LABEL_11:
    OUTLINED_FUNCTION_239();
    sub_24DD74008();
    goto LABEL_12;
  }

  v36 = OUTLINED_FUNCTION_181();
  v27(v36);
  v37 = OUTLINED_FUNCTION_442();
  v27(v37);
  OUTLINED_FUNCTION_239();
  sub_24DD74008();
LABEL_12:
  OUTLINED_FUNCTION_573();
  OUTLINED_FUNCTION_653();
}

void Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_343();
  sub_24DE229C0();
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_42();
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreateInviteCode.Output(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_546();
  sub_24DD74A90();
  OUTLINED_FUNCTION_386();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    v6 = OUTLINED_FUNCTION_67();
    v7(v6);
    OUTLINED_FUNCTION_1010();
    MEMORY[0x253039720](v5);
    OUTLINED_FUNCTION_6();
    sub_24DDE23E0(v8);
    OUTLINED_FUNCTION_447();
    v9 = OUTLINED_FUNCTION_394();
    v10(v9);
  }

  else
  {
    memcpy(v16, v2, 0x48uLL);
    OUTLINED_FUNCTION_841();
    v16[76] = v16[20];
    MEMORY[0x253039720](0);
    Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.hash(into:)(v1, v11, v12, v13, v14, v15);
    sub_24DDE8D24(v16);
  }

  OUTLINED_FUNCTION_999();
}

uint64_t _s22GameCenterServerClient10OperationsO041PostWebObjectsGKGameStatsService_woaWaGetA12AchievementsO21AcceptableContentTypeO8rawValueAGSgSS_tcfC_0(uint64_t a1)
{
  OUTLINED_FUNCTION_569();
  if (sub_24DE22AC0() == 0xD000000000000010 && 0x800000024DE3A040 == v1)
  {

LABEL_8:

    return OUTLINED_FUNCTION_407();
  }

  v3 = OUTLINED_FUNCTION_888(0xD000000000000010, 0x800000024DE3A040);

  if (v3)
  {
    goto LABEL_8;
  }

  return OUTLINED_FUNCTION_407();
}

unint64_t sub_24DDE0A84(uint64_t a1, uint64_t a2)
{
  sub_24DE22CC0();
  sub_24DE22AD0();
  v4 = sub_24DE22D10();

  return sub_24DDE0AFC(a1, a2, v4);
}

unint64_t sub_24DDE0AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24DE22CA0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_24DDE0BB0(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    return sub_24DE22CE0();
  }

  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  sub_24DE22CE0();
  if (v2)
  {
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v3)
    {
LABEL_4:
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_7;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v3)
    {
      goto LABEL_4;
    }
  }

  sub_24DE22CE0();
LABEL_7:
  if (v4 == 1)
  {
    return sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v4)
  {
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v6)
    {
      return sub_24DE22CE0();
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v6)
    {
      return sub_24DE22CE0();
    }
  }

  sub_24DE22CE0();
  return MEMORY[0x253039750](v5);
}

void sub_24DDE0CC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  v3 = v2;
  v4 = *(v2 + 16);
  MEMORY[0x253039720](v4);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_532();
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v5, v6) - 8);
    v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    v10 = OUTLINED_FUNCTION_616();
    sub_24DDFCE60(v10);
    do
    {
      OUTLINED_FUNCTION_519();
      sub_24DE22AA0();
      v8 += v9;
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_999();
}

uint64_t sub_24DDE0DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_24DE22AD0();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DDE0E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      if (*(v5 - 12) == 1)
      {
        sub_24DE22CE0();
      }

      else
      {
        sub_24DE22CE0();
        sub_24DE22CF0();
      }

      sub_24DE22AD0();

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DDE0ED0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253039720](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v9, v6, 0xA9uLL);
      memcpy(__dst, v6, sizeof(__dst));
      sub_24DDE72B8(v9, v10);
      Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.hash(into:)(a1, v7, v8);
      memcpy(v10, __dst, 0xA9uLL);
      result = sub_24DDE72F0(v10);
      v6 += 176;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24DDE0F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {

      sub_24DE22AD0();

      sub_24DE22AD0();

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DDE1100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 3);
      v7 = *v5;

      sub_24DE22AD0();
      MEMORY[0x253039750](v6);
      sub_24DE22AD0();
      sub_24DE22CE0();
      if (v7 != 6)
      {
        sub_24DE22AD0();
      }

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DDE12E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = a2 + 84;
    do
    {
      v6 = *(v5 - 28);
      v7 = *(v5 - 20);
      v8 = *(v5 - 12);
      v9 = *(v5 - 4);

      sub_24DE22AD0();
      if (v6)
      {
        sub_24DE22CE0();
        sub_24DE22AD0();
        if (v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_24DE22CE0();
        if (v8)
        {
LABEL_5:
          sub_24DE22CE0();
          if (!v9)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      sub_24DE22CE0();
      MEMORY[0x253039750](v7);
      if (!v9)
      {
LABEL_9:
        sub_24DE22CE0();
        sub_24DE22CF0();
        goto LABEL_10;
      }

LABEL_6:
      sub_24DE22CE0();
LABEL_10:
      v5 += 56;
      sub_24DE22CF0();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DDE1418(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, 0x81uLL);
      if (LOBYTE(__dst[1]) == 1)
      {
        sub_24DE22CE0();
      }

      else
      {
        v6 = __dst[0];
        sub_24DE22CE0();
        MEMORY[0x253039750](v6);
      }

      if (__dst[3])
      {
        sub_24DE22CE0();
        sub_24DDE51F8(__dst, v14);
        sub_24DE22AD0();
      }

      else
      {
        sub_24DE22CE0();
        sub_24DDE51F8(__dst, v14);
      }

      v7 = __dst[5];
      if (__dst[5] == 1)
      {
        goto LABEL_18;
      }

      v8 = __dst[7];
      v9 = __dst[9];
      v13 = __dst[10];
      v10 = __dst[11];
      sub_24DE22CE0();
      if (v7)
      {
        sub_24DE22CE0();
        sub_24DE22AD0();
        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_24DE22CE0();
        if (v8)
        {
LABEL_12:
          sub_24DE22CE0();
          sub_24DE22AD0();
          goto LABEL_15;
        }
      }

      sub_24DE22CE0();
LABEL_15:
      if (v9 != 1)
      {
        sub_24DE22CE0();
        if (v9)
        {
          sub_24DE22CE0();
          sub_24DE22AD0();
          if ((v10 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_24DE22CE0();
          if ((v10 & 1) == 0)
          {
LABEL_31:
            sub_24DE22CE0();
            MEMORY[0x253039750](v13);
            goto LABEL_19;
          }
        }
      }

LABEL_18:
      sub_24DE22CE0();
LABEL_19:
      if (__dst[12])
      {
        sub_24DE22CE0();
      }

      else
      {
        sub_24DE22CE0();
        sub_24DE22CF0();
      }

      if (LOBYTE(__dst[14]) == 1)
      {
        sub_24DE22CE0();
      }

      else
      {
        v11 = __dst[13];
        sub_24DE22CE0();
        MEMORY[0x253039750](v11);
      }

      if (LOBYTE(__dst[16]) == 1)
      {
        sub_24DE22CE0();
      }

      else
      {
        v12 = __dst[15];
        sub_24DE22CE0();
        MEMORY[0x253039750](v12);
      }

      result = sub_24DDE5174(__dst);
      v5 += 136;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DDE1668(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253039720](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(__src, v6, sizeof(__src));
      sub_24DDE3E38(__dst, v13);
      Components.Schemas.Leaderboard_GetLeaderboards_Result.hash(into:)(a1, v7, v8, v9, v10, v11);
      memcpy(v13, __src, sizeof(v13));
      result = sub_24DDE3E70(v13);
      v6 += 472;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24DDE1718(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      v7 = v5[2];
      v8 = v5[4];
      v9 = v5[6];
      if (*(v5 - 12) == 1)
      {
        sub_24DE22CE0();
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_24DE22CE0();
        sub_24DE22CF0();
        if (!v6)
        {
LABEL_5:
          sub_24DE22CE0();

          if (!v7)
          {
            goto LABEL_6;
          }

          goto LABEL_11;
        }
      }

      sub_24DE22CE0();

      sub_24DE22AD0();
      if (!v7)
      {
LABEL_6:
        sub_24DE22CE0();
        if (!v8)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_24DE22CE0();
      sub_24DE22AD0();
      if (!v8)
      {
LABEL_7:
        sub_24DE22CE0();
        if (v9)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      sub_24DE22CE0();
      sub_24DE22AD0();
      if (v9)
      {
LABEL_13:
        sub_24DE22CE0();
        sub_24DE22AD0();
        goto LABEL_14;
      }

LABEL_8:
      sub_24DE22CE0();
LABEL_14:

      v5 += 9;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DDE1900(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_24DE22CF0();
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_24DDE1950(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x253039720](v4);
  if (v4)
  {
    v5 = *(type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      Components.Schemas.Game_GetLeaderboardCategories_Result.hash(into:)(a1);
      v6 += v7;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_24DDE19FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253039720](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v7, v6, sizeof(v7));
      memcpy(__dst, v6, sizeof(__dst));
      sub_24DDE7374(v7, v8);
      Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.hash(into:)(a1);
      memcpy(v8, __dst, sizeof(v8));
      result = sub_24DDE73AC(v8);
      v6 += 192;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24DDE1AAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253039720](v3);
  v11 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = (a2 + 32 + 80 * v5);
      v7 = v6[3];
      v8 = v6[8];
      v12 = v6[9];

      sub_24DE22AD0();
      sub_24DE22CE0();
      if (v7)
      {
        sub_24DE22AD0();
      }

      sub_24DE22AD0();
      sub_24DE22AD0();
      if (v8)
      {
        sub_24DE22CE0();
        MEMORY[0x253039720](*(v8 + 16));
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = v8 + 40;
          do
          {

            sub_24DE22AD0();

            v10 += 16;
            --v9;
          }

          while (v9);
        }
      }

      else
      {
        sub_24DE22CE0();
      }

      ++v5;
      MEMORY[0x253039750](v12);
    }

    while (v5 != v11);
  }

  return result;
}

uint64_t sub_24DDE1C5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253039720](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v7, v6, sizeof(v7));
      memcpy(__dst, v6, sizeof(__dst));
      sub_24DDE47A8(v7, v8);
      Components.Schemas.GetGameAchievements_Achievement.hash(into:)(a1);
      memcpy(v8, __dst, sizeof(v8));
      result = sub_24DDE47E0(v8);
      v6 += 288;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24DDE1D0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253039720](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v12, v6, 0x26FuLL);
      memcpy(__dst, v6, sizeof(__dst));
      sub_24DDE30DC(v12, v13);
      Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hash(into:)(a1, v7, v8, v9, v10, v11);
      memcpy(v13, __dst, 0x26FuLL);
      result = sub_24DDE2F5C(v13);
      v6 += 624;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24DDE1DBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x253039720](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(__src, v6, sizeof(__src));
      sub_24DD83490(__dst, v8);
      Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.hash(into:)(a1);
      memcpy(v8, __src, sizeof(v8));
      result = sub_24DD83460(v8);
      v6 += 152;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_24DDE1E9C()
{
  result = qword_27F1B2930;
  if (!qword_27F1B2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2930);
  }

  return result;
}

unint64_t sub_24DDE1EF0()
{
  result = qword_27F1B2938;
  if (!qword_27F1B2938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2910, &qword_24DE230B8);
    sub_24DDE1F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2938);
  }

  return result;
}

unint64_t sub_24DDE1F74()
{
  result = qword_27F1B2940;
  if (!qword_27F1B2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2940);
  }

  return result;
}

unint64_t sub_24DDE2000()
{
  result = qword_27F1B2950;
  if (!qword_27F1B2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2950);
  }

  return result;
}

unint64_t sub_24DDE20BC()
{
  result = qword_27F1B2968;
  if (!qword_27F1B2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2968);
  }

  return result;
}

unint64_t sub_24DDE2110(uint64_t a1)
{
  result = OUTLINED_FUNCTION_923(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_1033();
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2970, &qword_24DE230E0);
    result = OUTLINED_FUNCTION_1296(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_24DDE21CC()
{
  result = qword_27F1B2998;
  if (!qword_27F1B2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2998);
  }

  return result;
}

unint64_t sub_24DDE2288()
{
  result = qword_27F1B29B0;
  if (!qword_27F1B29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B29B0);
  }

  return result;
}

unint64_t sub_24DDE238C()
{
  result = qword_27F1B29E0;
  if (!qword_27F1B29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B29E0);
  }

  return result;
}

unint64_t sub_24DDE23E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_923(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_24DDE2424(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x253039720](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_24DE22AD0();

        sub_24DE22AD0();

        result = sub_24DE22D10();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24DDE2584()
{
  result = qword_27F1B2A20;
  if (!qword_27F1B2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A20);
  }

  return result;
}

unint64_t sub_24DDE25D8()
{
  result = qword_27F1B2A28;
  if (!qword_27F1B2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A28);
  }

  return result;
}

unint64_t sub_24DDE262C()
{
  result = qword_27F1B2A30;
  if (!qword_27F1B2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A30);
  }

  return result;
}

unint64_t sub_24DDE2680(uint64_t a1)
{
  result = OUTLINED_FUNCTION_923(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_1033();
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2A38, &qword_24DE23148);
    result = OUTLINED_FUNCTION_1296(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_24DDE2704()
{
  result = qword_27F1B2A50;
  if (!qword_27F1B2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A50);
  }

  return result;
}

unint64_t sub_24DDE2758()
{
  result = qword_27F1B2A58;
  if (!qword_27F1B2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A58);
  }

  return result;
}

void sub_24DDE27E4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 1;
  bzero(a1 + 3, 0x100uLL);
}

uint64_t sub_24DDE27FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_24DDE2820()
{
  result = qword_27F1B2A80;
  if (!qword_27F1B2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A80);
  }

  return result;
}

unint64_t sub_24DDE2874()
{
  result = qword_27F1B2A88;
  if (!qword_27F1B2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A88);
  }

  return result;
}

unint64_t sub_24DDE28F8()
{
  result = qword_27F1B2A98;
  if (!qword_27F1B2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2A98);
  }

  return result;
}

unint64_t sub_24DDE2984()
{
  result = qword_27F1B2AA8;
  if (!qword_27F1B2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2AA8);
  }

  return result;
}

unint64_t sub_24DDE29D8()
{
  result = qword_27F1B2AC0;
  if (!qword_27F1B2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2AC0);
  }

  return result;
}

unint64_t sub_24DDE2A2C()
{
  result = qword_27F1B2AD0;
  if (!qword_27F1B2AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2AC8, &qword_24DE23190);
    sub_24DDE2AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2AD0);
  }

  return result;
}

unint64_t sub_24DDE2AB0()
{
  result = qword_27F1B2AD8;
  if (!qword_27F1B2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2AD8);
  }

  return result;
}

unint64_t sub_24DDE2B04()
{
  result = qword_27F1B2AE8;
  if (!qword_27F1B2AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2AC8, &qword_24DE23190);
    sub_24DDE2B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2AE8);
  }

  return result;
}

unint64_t sub_24DDE2B88()
{
  result = qword_27F1B2AF0;
  if (!qword_27F1B2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2AF0);
  }

  return result;
}

unint64_t sub_24DDE2BDC()
{
  result = qword_27F1B2B00;
  if (!qword_27F1B2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B00);
  }

  return result;
}

unint64_t sub_24DDE2C30()
{
  result = qword_27F1B2B18;
  if (!qword_27F1B2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B18);
  }

  return result;
}

unint64_t sub_24DDE2C84()
{
  result = qword_27F1B2B30;
  if (!qword_27F1B2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B30);
  }

  return result;
}

uint64_t sub_24DDE2CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_24DDE2CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

double sub_24DDE2D00(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 117) = 0;
  return result;
}

uint64_t sub_24DDE2D2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24DDE2D80()
{
  result = qword_27F1B2B68;
  if (!qword_27F1B2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B68);
  }

  return result;
}

unint64_t sub_24DDE2DD4()
{
  result = qword_27F1B2B70;
  if (!qword_27F1B2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B70);
  }

  return result;
}

unint64_t sub_24DDE2E28()
{
  result = qword_27F1B2B78;
  if (!qword_27F1B2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B78);
  }

  return result;
}

unint64_t sub_24DDE2E7C()
{
  result = qword_27F1B2B80;
  if (!qword_27F1B2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B80);
  }

  return result;
}

unint64_t sub_24DDE2ED0()
{
  result = qword_27F1B2B88;
  if (!qword_27F1B2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B88);
  }

  return result;
}

unint64_t sub_24DDE2F8C()
{
  result = qword_27F1B2B98;
  if (!qword_27F1B2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2B98);
  }

  return result;
}

unint64_t sub_24DDE2FE0()
{
  result = qword_27F1B2BA0;
  if (!qword_27F1B2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2BA0);
  }

  return result;
}

unint64_t sub_24DDE3034()
{
  result = qword_27F1B2BA8;
  if (!qword_27F1B2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2BA8);
  }

  return result;
}

unint64_t sub_24DDE3088()
{
  result = qword_27F1B2BB0;
  if (!qword_27F1B2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2BB0);
  }

  return result;
}

unint64_t sub_24DDE3114()
{
  result = qword_27F1B2BC0;
  if (!qword_27F1B2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2BC0);
  }

  return result;
}

unint64_t sub_24DDE3168()
{
  result = qword_27F1B2BD8;
  if (!qword_27F1B2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2BD8);
  }

  return result;
}

unint64_t sub_24DDE3224()
{
  result = qword_27F1B2BF0;
  if (!qword_27F1B2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2BF0);
  }

  return result;
}

unint64_t sub_24DDE3278()
{
  result = qword_27F1B2C00;
  if (!qword_27F1B2C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2BF8, &qword_24DE23228);
    sub_24DDE32FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C00);
  }

  return result;
}

unint64_t sub_24DDE32FC()
{
  result = qword_27F1B2C08;
  if (!qword_27F1B2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C08);
  }

  return result;
}

unint64_t sub_24DDE3380()
{
  result = qword_27F1B2C18;
  if (!qword_27F1B2C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2BF8, &qword_24DE23228);
    sub_24DDE3404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C18);
  }

  return result;
}

unint64_t sub_24DDE3404()
{
  result = qword_27F1B2C20;
  if (!qword_27F1B2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C20);
  }

  return result;
}

uint64_t sub_24DDE3490(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24DDE34E4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24DDE3538()
{
  result = qword_27F1B2C30;
  if (!qword_27F1B2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C30);
  }

  return result;
}

unint64_t sub_24DDE358C()
{
  result = qword_27F1B2C38;
  if (!qword_27F1B2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C38);
  }

  return result;
}

unint64_t sub_24DDE3610()
{
  result = qword_27F1B2C48;
  if (!qword_27F1B2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C48);
  }

  return result;
}

unint64_t sub_24DDE369C()
{
  result = qword_27F1B2C58;
  if (!qword_27F1B2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C58);
  }

  return result;
}

unint64_t sub_24DDE36F0()
{
  result = qword_27F1B2C70;
  if (!qword_27F1B2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C70);
  }

  return result;
}

unint64_t sub_24DDE3744()
{
  result = qword_27F1B2C88;
  if (!qword_27F1B2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2C88);
  }

  return result;
}

unint64_t sub_24DDE3800()
{
  result = qword_27F1B2CA0;
  if (!qword_27F1B2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2CA0);
  }

  return result;
}

unint64_t sub_24DDE38BC()
{
  result = qword_27F1B2CB8;
  if (!qword_27F1B2CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2CB8);
  }

  return result;
}

unint64_t sub_24DDE3910()
{
  result = qword_27F1B2CC8;
  if (!qword_27F1B2CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2CC0, &qword_24DE23290);
    sub_24DDE3994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2CC8);
  }

  return result;
}

unint64_t sub_24DDE3994()
{
  result = qword_27F1B2CD0;
  if (!qword_27F1B2CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2CD0);
  }

  return result;
}

unint64_t sub_24DDE3A18()
{
  result = qword_27F1B2CE0;
  if (!qword_27F1B2CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2CC0, &qword_24DE23290);
    sub_24DDE3A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2CE0);
  }

  return result;
}

unint64_t sub_24DDE3A9C()
{
  result = qword_27F1B2CE8;
  if (!qword_27F1B2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2CE8);
  }

  return result;
}

unint64_t sub_24DDE3B28()
{
  result = qword_27F1B2CF8;
  if (!qword_27F1B2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2CF8);
  }

  return result;
}

double sub_24DDE3BE4(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t sub_24DDE3C08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_24DDE3C5C()
{
  result = qword_27F1B2D20;
  if (!qword_27F1B2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D20);
  }

  return result;
}

unint64_t sub_24DDE3CB0()
{
  result = qword_27F1B2D28;
  if (!qword_27F1B2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D28);
  }

  return result;
}

unint64_t sub_24DDE3D04()
{
  result = qword_27F1B2D30;
  if (!qword_27F1B2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D30);
  }

  return result;
}

unint64_t sub_24DDE3D90()
{
  result = qword_27F1B2D40;
  if (!qword_27F1B2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D40);
  }

  return result;
}

unint64_t sub_24DDE3DE4()
{
  result = qword_27F1B2D48;
  if (!qword_27F1B2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D48);
  }

  return result;
}

uint64_t sub_24DDE3EA0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24DDE3EB4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24DDE3EC8()
{
  result = qword_27F1B2D58;
  if (!qword_27F1B2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D58);
  }

  return result;
}

unint64_t sub_24DDE3F1C()
{
  result = qword_27F1B2D60;
  if (!qword_27F1B2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D60);
  }

  return result;
}

unint64_t sub_24DDE3FA0()
{
  result = qword_27F1B2D70;
  if (!qword_27F1B2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D70);
  }

  return result;
}

unint64_t sub_24DDE402C()
{
  result = qword_27F1B2D80;
  if (!qword_27F1B2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D80);
  }

  return result;
}

unint64_t sub_24DDE4080()
{
  result = qword_27F1B2D98;
  if (!qword_27F1B2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2D98);
  }

  return result;
}

unint64_t sub_24DDE40D4()
{
  result = qword_27F1B2DA8;
  if (!qword_27F1B2DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2DA0, &qword_24DE232F8);
    sub_24DDE4158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2DA8);
  }

  return result;
}

unint64_t sub_24DDE4158()
{
  result = qword_27F1B2DB0;
  if (!qword_27F1B2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2DB0);
  }

  return result;
}

unint64_t sub_24DDE41DC()
{
  result = qword_27F1B2DC0;
  if (!qword_27F1B2DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2DA0, &qword_24DE232F8);
    sub_24DDE4260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2DC0);
  }

  return result;
}

unint64_t sub_24DDE4260()
{
  result = qword_27F1B2DC8;
  if (!qword_27F1B2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2DC8);
  }

  return result;
}

unint64_t sub_24DDE42EC()
{
  result = qword_27F1B2DD8;
  if (!qword_27F1B2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2DD8);
  }

  return result;
}

unint64_t sub_24DDE4390(uint64_t a1)
{
  result = OUTLINED_FUNCTION_923(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2DE0, &qword_24DE23310);
    OUTLINED_FUNCTION_684();
    sub_24DDE23E0(v4);
    OUTLINED_FUNCTION_593();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_24DDE444C(uint64_t a1)
{
  OUTLINED_FUNCTION_569();
  v5 = OUTLINED_FUNCTION_1208(v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_90();
  v7 = OUTLINED_FUNCTION_370();
  v8(v7);
  return v1;
}

unint64_t sub_24DDE44A0()
{
  result = qword_27F1B2E30;
  if (!qword_27F1B2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2E30);
  }

  return result;
}

unint64_t sub_24DDE44F4()
{
  result = qword_27F1B2E60;
  if (!qword_27F1B2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2E60);
  }

  return result;
}

unint64_t sub_24DDE4548()
{
  result = qword_27F1B2E78;
  if (!qword_27F1B2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2E78);
  }

  return result;
}

unint64_t sub_24DDE4604()
{
  result = qword_27F1B2E90;
  if (!qword_27F1B2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2E90);
  }

  return result;
}

unint64_t sub_24DDE4658()
{
  result = qword_27F1B2E98;
  if (!qword_27F1B2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2E98);
  }

  return result;
}

unint64_t sub_24DDE46AC()
{
  result = qword_27F1B2EA0;
  if (!qword_27F1B2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2EA0);
  }

  return result;
}

unint64_t sub_24DDE4700()
{
  result = qword_27F1B2EB0;
  if (!qword_27F1B2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2EB0);
  }

  return result;
}

unint64_t sub_24DDE4754()
{
  result = qword_27F1B2EB8;
  if (!qword_27F1B2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2EB8);
  }

  return result;
}

unint64_t sub_24DDE4810()
{
  result = qword_27F1B2EC8;
  if (!qword_27F1B2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2EC8);
  }

  return result;
}

uint64_t sub_24DDE48CC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24DDE4914(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24DDE495C()
{
  result = qword_27F1B2EF0;
  if (!qword_27F1B2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2EF0);
  }

  return result;
}

unint64_t sub_24DDE49B0()
{
  result = qword_27F1B2EF8;
  if (!qword_27F1B2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2EF8);
  }

  return result;
}

unint64_t sub_24DDE4A04()
{
  result = qword_27F1B2F00;
  if (!qword_27F1B2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F00);
  }

  return result;
}

unint64_t sub_24DDE4A58()
{
  result = qword_27F1B2F10;
  if (!qword_27F1B2F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2F08, &qword_24DE23398);
    sub_24DDE4ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F10);
  }

  return result;
}

unint64_t sub_24DDE4ADC()
{
  result = qword_27F1B2F18;
  if (!qword_27F1B2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F18);
  }

  return result;
}

unint64_t sub_24DDE4B60()
{
  result = qword_27F1B2F28;
  if (!qword_27F1B2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F28);
  }

  return result;
}

unint64_t sub_24DDE4BB4()
{
  result = qword_27F1B2F30;
  if (!qword_27F1B2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F30);
  }

  return result;
}

unint64_t sub_24DDE4C08()
{
  result = qword_27F1B2F38;
  if (!qword_27F1B2F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2F08, &qword_24DE23398);
    sub_24DDE4C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F38);
  }

  return result;
}

unint64_t sub_24DDE4C8C()
{
  result = qword_27F1B2F40;
  if (!qword_27F1B2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F40);
  }

  return result;
}

unint64_t sub_24DDE4D18()
{
  result = qword_27F1B2F50;
  if (!qword_27F1B2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F50);
  }

  return result;
}

unint64_t sub_24DDE4DD4()
{
  result = qword_27F1B2F68;
  if (!qword_27F1B2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F68);
  }

  return result;
}

unint64_t sub_24DDE4E90()
{
  result = qword_27F1B2F80;
  if (!qword_27F1B2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F80);
  }

  return result;
}

unint64_t sub_24DDE4EE4()
{
  result = qword_27F1B2F88;
  if (!qword_27F1B2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F88);
  }

  return result;
}

unint64_t sub_24DDE4F38()
{
  result = qword_27F1B2F98;
  if (!qword_27F1B2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2F98);
  }

  return result;
}

unint64_t sub_24DDE4F8C()
{
  result = qword_27F1B2FA8;
  if (!qword_27F1B2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2FA8);
  }

  return result;
}

unint64_t sub_24DDE5078()
{
  result = qword_27F1B2FC0;
  if (!qword_27F1B2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2FC0);
  }

  return result;
}

unint64_t sub_24DDE50CC()
{
  result = qword_27F1B2FE8;
  if (!qword_27F1B2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2FE8);
  }

  return result;
}

unint64_t sub_24DDE5120()
{
  result = qword_27F1B2FF0;
  if (!qword_27F1B2FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2FF0);
  }

  return result;
}

unint64_t sub_24DDE51A4()
{
  result = qword_27F1B3000;
  if (!qword_27F1B3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3000);
  }

  return result;
}

unint64_t sub_24DDE5230()
{
  result = qword_27F1B3010;
  if (!qword_27F1B3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3010);
  }

  return result;
}

unint64_t sub_24DDE5284()
{
  result = qword_27F1B3028;
  if (!qword_27F1B3028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3028);
  }

  return result;
}

unint64_t sub_24DDE52D8()
{
  result = qword_27F1B3040;
  if (!qword_27F1B3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3040);
  }

  return result;
}

unint64_t sub_24DDE532C()
{
  result = qword_27F1B3048;
  if (!qword_27F1B3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3048);
  }

  return result;
}

unint64_t sub_24DDE5380()
{
  result = qword_27F1B3058;
  if (!qword_27F1B3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3058);
  }

  return result;
}

unint64_t sub_24DDE53D4()
{
  result = qword_27F1B3068;
  if (!qword_27F1B3068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3068);
  }

  return result;
}

unint64_t sub_24DDE5428()
{
  result = qword_27F1B3078;
  if (!qword_27F1B3078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B3070, &qword_24DE23450);
    sub_24DDE54AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3078);
  }

  return result;
}

unint64_t sub_24DDE54AC()
{
  result = qword_27F1B3080;
  if (!qword_27F1B3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3080);
  }

  return result;
}

unint64_t sub_24DDE5530()
{
  result = qword_27F1B3090;
  if (!qword_27F1B3090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B3070, &qword_24DE23450);
    sub_24DDE55B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3090);
  }

  return result;
}

unint64_t sub_24DDE55B4()
{
  result = qword_27F1B3098;
  if (!qword_27F1B3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3098);
  }

  return result;
}

unint64_t sub_24DDE5640()
{
  result = qword_27F1B30A8;
  if (!qword_27F1B30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B30A8);
  }

  return result;
}

unint64_t sub_24DDE5694()
{
  result = qword_27F1B30C0;
  if (!qword_27F1B30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B30C0);
  }

  return result;
}

unint64_t sub_24DDE56E8()
{
  result = qword_27F1B30D8;
  if (!qword_27F1B30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B30D8);
  }

  return result;
}

uint64_t sub_24DDE57AC(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24DDE57F4()
{
  result = qword_27F1B3100;
  if (!qword_27F1B3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3100);
  }

  return result;
}

unint64_t sub_24DDE5848()
{
  result = qword_27F1B3108;
  if (!qword_27F1B3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3108);
  }

  return result;
}

unint64_t sub_24DDE5904()
{
  result = qword_27F1B3118;
  if (!qword_27F1B3118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3118);
  }

  return result;
}

unint64_t sub_24DDE5990()
{
  result = qword_27F1B3128;
  if (!qword_27F1B3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3128);
  }

  return result;
}

unint64_t sub_24DDE59E4()
{
  result = qword_27F1B3140;
  if (!qword_27F1B3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3140);
  }

  return result;
}

unint64_t sub_24DDE5A38()
{
  result = qword_27F1B3158;
  if (!qword_27F1B3158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3158);
  }

  return result;
}

unint64_t sub_24DDE5A8C()
{
  result = qword_27F1B3168;
  if (!qword_27F1B3168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B3160, &qword_24DE234D8);
    sub_24DDE5B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3168);
  }

  return result;
}

unint64_t sub_24DDE5B10()
{
  result = qword_27F1B3170;
  if (!qword_27F1B3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3170);
  }

  return result;
}

unint64_t sub_24DDE5B64()
{
  result = qword_27F1B3180;
  if (!qword_27F1B3180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B3160, &qword_24DE234D8);
    sub_24DDE5BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3180);
  }

  return result;
}

unint64_t sub_24DDE5BE8()
{
  result = qword_27F1B3188;
  if (!qword_27F1B3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3188);
  }

  return result;
}

unint64_t sub_24DDE5C3C()
{
  result = qword_27F1B3198;
  if (!qword_27F1B3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3198);
  }

  return result;
}

uint64_t sub_24DDE5C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24DDE5CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_24DDE5D18()
{
  result = qword_27F1B31B0;
  if (!qword_27F1B31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31B0);
  }

  return result;
}

unint64_t sub_24DDE5D6C()
{
  result = qword_27F1B31B8;
  if (!qword_27F1B31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31B8);
  }

  return result;
}

unint64_t sub_24DDE5DC0()
{
  result = qword_27F1B31C0;
  if (!qword_27F1B31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31C0);
  }

  return result;
}

unint64_t sub_24DDE5E14()
{
  result = qword_27F1B31C8;
  if (!qword_27F1B31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31C8);
  }

  return result;
}

unint64_t sub_24DDE5E68()
{
  result = qword_27F1B31D8;
  if (!qword_27F1B31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31D8);
  }

  return result;
}

unint64_t sub_24DDE5EBC()
{
  result = qword_27F1B31E0;
  if (!qword_27F1B31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31E0);
  }

  return result;
}

unint64_t sub_24DDE5F10()
{
  result = qword_27F1B31E8;
  if (!qword_27F1B31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31E8);
  }

  return result;
}

unint64_t sub_24DDE5FCC()
{
  result = qword_27F1B31F8;
  if (!qword_27F1B31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B31F8);
  }

  return result;
}

unint64_t sub_24DDE6020()
{
  result = qword_27F1B3200;
  if (!qword_27F1B3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3200);
  }

  return result;
}

unint64_t sub_24DDE6074()
{
  result = qword_27F1B3210;
  if (!qword_27F1B3210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B3208, &qword_24DE23510);
    sub_24DDE60F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3210);
  }

  return result;
}

unint64_t sub_24DDE60F8()
{
  result = qword_27F1B3218;
  if (!qword_27F1B3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3218);
  }

  return result;
}

unint64_t sub_24DDE614C()
{
  result = qword_27F1B3228;
  if (!qword_27F1B3228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B3220, &qword_24DE23518);
    sub_24DDE61D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3228);
  }

  return result;
}

unint64_t sub_24DDE61D0()
{
  result = qword_27F1B3230;
  if (!qword_27F1B3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B3230);
  }

  return result;
}