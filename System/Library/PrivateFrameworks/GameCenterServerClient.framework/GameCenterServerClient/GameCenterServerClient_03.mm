void Components.Schemas.GetLeaderboardEntries_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2EE8, &qword_24DE23390);
  OUTLINED_FUNCTION_23();
  v30 = v29;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_138();
  v32 = *(v24 + 4);
  OUTLINED_FUNCTION_1224(*(v24 + 16));
  v44 = *(v24 + 24);
  v43 = *(v24 + 32);
  v42 = *(v24 + 40);
  v41 = *(v24 + 48);
  OUTLINED_FUNCTION_1187();
  memcpy(v33, v34, v35);
  v39 = *(v24 + 144);
  v40 = *(v24 + 152);
  OUTLINED_FUNCTION_173(v28);
  sub_24DDE495C();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D50();
  v46[0] = 0;
  v45[0] = v32;
  sub_24DE22C30();
  if (!v25)
  {
    OUTLINED_FUNCTION_416();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_584();
    sub_24DD7639C(v36, v37, v38, v41);
    sub_24DD87138();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    sub_24DD763E4(v44, v43, v42, v41);
    OUTLINED_FUNCTION_416();
    sub_24DE22C40();
    memcpy(v46, v47, 0x41uLL);
    sub_24DDE73DC(v47);
    sub_24DDE49B0();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    memcpy(v45, v46, 0x41uLL);
    sub_24DDE8DAC(v45, &unk_27F1B2ED8);
    sub_24DDE48CC(v39, v40);
    sub_24DDE4A04();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    sub_24DDE4914(v39, v40);
    OUTLINED_FUNCTION_991(&v46[64]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F08, &qword_24DE23398);
    sub_24DDE4A58();
    OUTLINED_FUNCTION_377();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
  }

  (*(v30 + 8))(v26, v23);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.GetLeaderboardEntries_Response.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v22 = *(v1 + 48);
  v5 = *(v1 + 56);
  v23 = *(v1 + 64);
  v6 = *(v1 + 96);
  v7 = *(v1 + 152);
  v21 = *(v1 + 160);
  v24 = *(v1 + 168);
  if (*(v1 + 4) == 1)
  {
    OUTLINED_FUNCTION_795();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1082();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_6:
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    if (v4)
    {
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_826();
      sub_24DE22AD0();
      if (v22)
      {
LABEL_9:
        OUTLINED_FUNCTION_371();
        sub_24DE22CE0();
        OUTLINED_FUNCTION_1084();
        sub_24DE22AD0();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_795();
      if (v22)
      {
        goto LABEL_9;
      }
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_12:
  if (v23)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v5);
  }

  if (v6 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    __src[0] = *(v1 + 72);
    v8 = *(v1 + 88);
    v9 = *(v1 + 120);
    __src[2] = *(v1 + 104);
    __src[3] = v9;
    LOBYTE(__src[4]) = *(v1 + 136);
    *&__src[1] = v8;
    *(&__src[1] + 1) = v6;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v26 = *(v1 + 72);
    v27 = *(v1 + 88);
    v28 = v6;
    v10 = *(v1 + 120);
    v29 = *(v1 + 104);
    v30 = v10;
    v31 = *(v1 + 136);
    sub_24DDE45CC(&v26, __dst);
    Components.Schemas.Leaderboard_PlayerScore.hash(into:)(a1, v11, v12, v13, v14, v15);
    memcpy(__dst, __src, 0x41uLL);
    sub_24DDE459C(__dst);
  }

  if (v7 == 1)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  if (v7)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1081();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (!v21)
  {
LABEL_24:
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v16 = OUTLINED_FUNCTION_1083();
    sub_24DDE2424(v16, v17);
  }

  if (!v24)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v18 = OUTLINED_FUNCTION_1278();
  return sub_24DDE1418(v18, v19);
}

void Components.Schemas.GetLeaderboardEntries_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F20, &qword_24DE233A0);
  OUTLINED_FUNCTION_27();
  v16 = v15;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_138();
  v105 = 1;
  v102 = 1;
  v18 = v10[3];
  v19 = v10[4];
  OUTLINED_FUNCTION_153(v10);
  sub_24DDE495C();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v11)
  {
    OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_583();
    OUTLINED_FUNCTION_348();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    LODWORD(v81) = 0;
    BYTE4(v81) = v105;
    *(&v81 + 5) = v103;
    HIBYTE(v81) = v104;
    v82 = v14;
    v83 = v16;
    v84 = v12;
    v85 = 1;
    v86 = v19;
    OUTLINED_FUNCTION_979(a10);
    v87 = v102;
    *v88 = *v101;
    *&v88[3] = *&v101[3];
    v89 = v58;
    v90 = v57;
    v91 = v55;
    v92 = v18;
    v93 = v53;
    v94 = v51;
    v95 = v49;
    v96 = 0;
    v97 = v46;
    *v98 = *v100;
    *&v98[3] = *&v100[3];
    OUTLINED_FUNCTION_1045();
    v99 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_662();
    v20 = sub_24DE22B80();
    v45 = v20;
    OUTLINED_FUNCTION_396(v20);
    LOBYTE(v81) = v21;
    OUTLINED_FUNCTION_662();
    v43 = sub_24DE22B40();
    v44 = v22;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_746();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v41 = v13;
    v42 = v81;
    v23 = v83;
    v24 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v24, v25, v26, v27);
    LOBYTE(v81) = 3;
    OUTLINED_FUNCTION_439();
    v106 = v84;
    v40 = v82;
    v62 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v62, v28);
    v71 = 4;
    sub_24DDE4B60();
    OUTLINED_FUNCTION_746();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v30 = v72;
    v29 = v73;
    v39 = v75;
    v54 = v76;
    v56 = v74;
    v50 = v78;
    v52 = v77;
    v48 = v79;
    v47 = v80;
    memset(v66, 0, sizeof(v66));
    v67 = 1;
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    sub_24DDE8DAC(v66, &unk_27F1B2ED8);
    LOBYTE(v63[0]) = 5;
    sub_24DDE4BB4();
    OUTLINED_FUNCTION_746();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v59 = v82;
    v60 = v81;
    v61 = v83;
    v31 = OUTLINED_FUNCTION_98();
    sub_24DDE4914(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F08, &qword_24DE23398);
    OUTLINED_FUNCTION_1085();
    v64 = v33;
    sub_24DDE4C08();
    OUTLINED_FUNCTION_400();
    sub_24DE22B70();
    v34 = OUTLINED_FUNCTION_209();
    v35(v34);
    v36 = v65;
    LODWORD(v63[0]) = v45;
    v38 = v105;
    BYTE4(v63[0]) = v105;
    v63[1] = v43;
    v63[2] = v44;
    v63[3] = v42;
    v63[4] = v40;
    v63[5] = v23;
    v63[6] = v106;
    v63[7] = v62;
    v37 = v102;
    LOBYTE(v63[8]) = v102;
    v63[9] = v30;
    v63[10] = v29;
    v63[11] = v56;
    v63[12] = v39;
    v63[13] = v54;
    v63[14] = v52;
    v63[15] = v50;
    v63[16] = v48;
    LOBYTE(v63[17]) = v47;
    v63[18] = v60;
    v63[19] = v59;
    v63[20] = v61;
    v63[21] = v65;
    memcpy(v41, v63, 0xB0uLL);
    sub_24DDE4CE0(v63, &v81);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    LODWORD(v81) = v45;
    BYTE4(v81) = v38;
    v82 = v43;
    v83 = v44;
    v84 = v42;
    v85 = v40;
    v86 = v23;
    OUTLINED_FUNCTION_979(v106);
    v87 = v37;
    v89 = v30;
    v90 = v29;
    v91 = v56;
    v92 = v39;
    v93 = v54;
    v94 = v52;
    v95 = v50;
    v96 = v48;
    v97 = v47;
    OUTLINED_FUNCTION_1045();
    v99 = v36;
  }

  sub_24DDE4B30(&v81);
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_Response.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

double Components.Schemas.GetLeaderboardEntriesForPlayers_Response.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

__n128 Components.Schemas.GetLeaderboardEntriesForPlayers_Response.metadata.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_605(a1);
  sub_24DDE4914(v2[9], v2[10]);
  result = v4;
  *(v2 + 9) = v4;
  v2[11] = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_Response.results.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

__n128 Components.Schemas.GetLeaderboardEntriesForPlayers_Response.init(status:message:alert:totalEntries:metadata:results:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X3>, uint64_t a3@<X4>, char a4@<W5>, __n128 *a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v24 = *a5;
  v12 = a5[1].n128_u64[0];
  OUTLINED_FUNCTION_917(a1, a7);
  *(a7 + 4) = v13;
  *(a7 + 8) = v14;
  *(a7 + 16) = v15;
  v16 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v16, v17, v18, v19);
  v20 = *a2;
  *(a7 + 40) = a2[1];
  *(a7 + 24) = v20;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4 & 1;
  v21 = OUTLINED_FUNCTION_98();
  sub_24DDE4914(v21, v22);
  result = v24;
  *(a7 + 72) = v24;
  *(a7 + 88) = v12;
  *(a7 + 96) = a6;
  return result;
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntriesForPlayers_Response::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntriesForPlayers_Response.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_932();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntriesForPlayers_Response::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntriesForPlayers_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.GetLeaderboardEntriesForPlayers_Response.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_Response.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_648();
      break;
    case 4:
      result = OUTLINED_FUNCTION_751();
      break;
    case 5:
      result = OUTLINED_FUNCTION_1287();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDAB288@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.GetLeaderboardEntriesForPlayers_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDAB2B8()
{
  sub_24DDE4D18();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDAB2F0()
{
  sub_24DDE4D18();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.GetLeaderboardEntriesForPlayers_Response.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_1006();
  a39 = v40;
  a40 = v41;
  v43 = OUTLINED_FUNCTION_267(v42);
  v46 = *(v44 + 16);
  v47 = *(v44 + 24);
  v49 = *(v44 + 32);
  v48 = *(v44 + 40);
  v51 = *(v44 + 48);
  v50 = *(v44 + 56);
  v52 = *(v44 + 64);
  v53 = *(v44 + 80);
  v155 = *(v44 + 72);
  v54 = *(v44 + 88);
  v55 = *(v44 + 96);
  v56 = *(v45 + 16);
  v58 = *(v45 + 24);
  v57 = *(v45 + 32);
  v60 = *(v45 + 40);
  v59 = *(v45 + 48);
  v61 = *(v45 + 56);
  v62 = *(v45 + 64);
  v64 = *(v45 + 72);
  v63 = *(v45 + 80);
  v66 = *(v45 + 88);
  v65 = *(v45 + 96);
  if (v67)
  {
    if (!*(v45 + 4))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v44 == *v45)
    {
      v68 = *(v45 + 4);
    }

    else
    {
      v68 = 1;
    }

    if (v68)
    {
      goto LABEL_24;
    }
  }

  if (v46)
  {
    if (!v56)
    {
      goto LABEL_24;
    }

    if (v43 != *(v45 + 8) || v46 != v56)
    {
      v142 = v53;
      v144 = v50;
      v150 = v54;
      v152 = *(v45 + 48);
      v137 = *(v45 + 72);
      v139 = *(v45 + 88);
      v70 = v55;
      v71 = *(v45 + 96);
      v146 = *(v45 + 80);
      v72 = v48;
      v148 = *(v45 + 64);
      v135 = v47;
      v73 = *(v45 + 56);
      v74 = sub_24DE22CA0();
      v61 = v73;
      v62 = v148;
      v50 = v144;
      v63 = v146;
      v54 = v150;
      v59 = v152;
      v48 = v72;
      v47 = v135;
      v64 = v137;
      v65 = v71;
      v55 = v70;
      v66 = v139;
      v53 = v142;
      if ((v74 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v56)
  {
    goto LABEL_24;
  }

  if (v49 != 1)
  {
    a24 = v47;
    a25 = v49;
    a26 = v48;
    a27 = v51;
    if (v57 != 1)
    {
      v136 = v55;
      v138 = v61;
      v149 = v62;
      v143 = v52;
      v145 = v50;
      v147 = v63;
      v134 = v65;
      v151 = v54;
      v154 = v59;
      a20 = v58;
      a21 = v57;
      a22 = v60;
      a23 = v59;
      v141 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
      OUTLINED_FUNCTION_445();
      OUTLINED_FUNCTION_907();
      sub_24DD7639C(v96, v97, v98, v99);
      v100 = OUTLINED_FUNCTION_620();
      sub_24DD7639C(v100, v101, v102, v154);
      OUTLINED_FUNCTION_445();
      OUTLINED_FUNCTION_907();
      sub_24DD7639C(v103, v104, v105, v106);

      OUTLINED_FUNCTION_445();
      OUTLINED_FUNCTION_907();
      sub_24DD763E4(v107, v108, v109, v110);
      if ((v141 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    v79 = v59;
    sub_24DD7639C(v47, v49, v48, v51);
    v80 = OUTLINED_FUNCTION_545();
    sub_24DD7639C(v80, v81, v60, v79);
    OUTLINED_FUNCTION_445();
    OUTLINED_FUNCTION_808();
    sub_24DD7639C(v82, v83, v84, v85);

LABEL_23:
    OUTLINED_FUNCTION_445();
    OUTLINED_FUNCTION_808();
    sub_24DD763E4(v89, v90, v91, v92);
    v93 = OUTLINED_FUNCTION_620();
    sub_24DD763E4(v93, v94, v95, v79);
    goto LABEL_24;
  }

  v136 = v55;
  v138 = v61;
  v149 = v62;
  v143 = v52;
  v145 = v50;
  v147 = v63;
  v151 = v54;
  v153 = v59;
  v134 = v65;
  v140 = v48;
  sub_24DD7639C(v47, 1, v48, v51);
  if (v57 != 1)
  {
    v86 = OUTLINED_FUNCTION_620();
    v79 = v153;
    sub_24DD7639C(v86, v87, v88, v153);
    goto LABEL_23;
  }

  v75 = OUTLINED_FUNCTION_545();
  sub_24DD7639C(v75, v76, v60, v153);
  v77 = OUTLINED_FUNCTION_784();
  sub_24DD763E4(v77, v78, v140, v51);
LABEL_26:
  if (v143)
  {
    v111 = v151;
    if (!v149)
    {
      goto LABEL_24;
    }

LABEL_32:
    if (v53 == 1)
    {
      sub_24DDE48CC(v155, 1);
      if (v147 == 1)
      {
        OUTLINED_FUNCTION_572();
        sub_24DDE48CC(v113, v114);
        sub_24DDE4914(v155, 1);
LABEL_40:
        if (v136 && v134)
        {

          v132 = OUTLINED_FUNCTION_370();
          sub_24DD8633C(v132, v133);
        }

        goto LABEL_24;
      }

      OUTLINED_FUNCTION_454();
      sub_24DDE48CC(v121, v122);
    }

    else
    {
      a24 = v155;
      a25 = v53;
      a26 = v111;
      if (v147 != 1)
      {
        a20 = v64;
        a21 = v147;
        a22 = v66;
        v125 = OUTLINED_FUNCTION_676();
        sub_24DDE48CC(v125, v126);
        sub_24DDE48CC(v64, v147);
        v127 = OUTLINED_FUNCTION_676();
        sub_24DDE48CC(v127, v128);
        v129 = static Components.Schemas.Leaderboard_LeaderboardMetadata.== infix(_:_:)(&a24, &a20);

        v130 = OUTLINED_FUNCTION_676();
        sub_24DDE4914(v130, v131);
        if (!v129)
        {
          goto LABEL_24;
        }

        goto LABEL_40;
      }

      v115 = OUTLINED_FUNCTION_676();
      sub_24DDE48CC(v115, v116);
      OUTLINED_FUNCTION_572();
      sub_24DDE48CC(v117, v118);
      v119 = OUTLINED_FUNCTION_676();
      sub_24DDE48CC(v119, v120);
    }

    sub_24DDE4914(v155, v53);
    OUTLINED_FUNCTION_454();
    sub_24DDE4914(v123, v124);
    goto LABEL_24;
  }

  v112 = v149;
  if (v145 != v138)
  {
    v112 = 1;
  }

  v111 = v151;
  if ((v112 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  OUTLINED_FUNCTION_1005();
}

void Components.Schemas.GetLeaderboardEntriesForPlayers_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F48, &qword_24DE233A8);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100();
  v18 = v5[4];
  v19 = v5[3];
  v16 = v5[6];
  v17 = v5[5];
  OUTLINED_FUNCTION_1249();
  v14 = v8;
  v15 = v7;
  OUTLINED_FUNCTION_111();
  sub_24DDE4D18();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_502();
  sub_24DE22C30();
  if (!v20)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_453();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_584();
    sub_24DD7639C(v9, v10, v11, v16);
    sub_24DD87138();
    OUTLINED_FUNCTION_354();
    sub_24DE22C20();
    sub_24DD763E4(v19, v18, v17, v16);
    OUTLINED_FUNCTION_565(3);
    OUTLINED_FUNCTION_453();
    sub_24DE22C40();
    sub_24DDE48CC(v14, v15);
    sub_24DDE4A04();
    OUTLINED_FUNCTION_354();
    sub_24DE22C20();
    sub_24DDE4914(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F08, &qword_24DE23398);
    sub_24DDE4A58();
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_377();
    sub_24DE22C20();
  }

  v12 = OUTLINED_FUNCTION_446();
  v13(v12);
  OUTLINED_FUNCTION_1259();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_885();
  OUTLINED_FUNCTION_192();
  v2 = *(v1 + 16);
  v16 = *(v1 + 32);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  v7 = *(v1 + 96);
  if (v9 == 1)
  {
    sub_24DE22CE0();
    if (v2)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_714();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    v15 = *(v1 + 48);
    sub_24DE22CE0();
    v4 = v15;
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v16 == 1)
  {
    goto LABEL_12;
  }

  sub_24DE22CE0();
  if (v16)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_731();
    sub_24DE22AD0();
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_24DE22CE0();
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  sub_24DE22CE0();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_593();
  sub_24DE22AD0();
  if ((v5 & 1) == 0)
  {
LABEL_10:
    sub_24DE22CE0();
    MEMORY[0x253039750](v3);
    goto LABEL_14;
  }

LABEL_13:
  sub_24DE22CE0();
LABEL_14:
  if (v6 == 1)
  {
    goto LABEL_20;
  }

  sub_24DE22CE0();
  if (v6)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_822();
    sub_24DE22AD0();
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_20:
    sub_24DE22CE0();
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  sub_24DE22CE0();
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_17:
  sub_24DE22CE0();
  v10 = OUTLINED_FUNCTION_386();
  sub_24DDE2424(v10, v11);
  if (!v7)
  {
LABEL_18:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_720();
    return;
  }

LABEL_21:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_407();
  OUTLINED_FUNCTION_720();

  sub_24DDE1418(v12, v13);
}

uint64_t Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hash(into:)(v2);
  return sub_24DE22D10();
}

void Components.Schemas.GetLeaderboardEntriesForPlayers_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F58, &qword_24DE233B0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_91();
  v67 = v13;
  v64 = v13;
  v14 = v5[3];
  v15 = v5[4];
  v43 = v5;
  OUTLINED_FUNCTION_168();
  sub_24DDE4D18();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_484();
    OUTLINED_FUNCTION_583();
    OUTLINED_FUNCTION_235();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    LODWORD(v49) = 0;
    BYTE4(v49) = v67;
    *(&v49 + 5) = v65;
    HIBYTE(v49) = v66;
    v50 = v8;
    v51 = v11;
    v52 = v10;
    v53 = 1;
    v54 = v14;
    v55 = v15;
    v56 = v7;
    v57 = v64;
    *v58 = *v63;
    *&v58[3] = *&v63[3];
    v59 = v44;
    v60 = v40;
    v61 = v42;
    v62 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_534();
    v16 = sub_24DE22B80();
    v39 = v16;
    OUTLINED_FUNCTION_396(v16);
    LOBYTE(v49) = v17;
    OUTLINED_FUNCTION_534();
    v37 = sub_24DE22B40();
    OUTLINED_FUNCTION_816(v18, &v61);
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    v19 = v10;
    v20 = v49;
    v36 = v50;
    v21 = v52;
    v22 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v22, v23, v24, v25);
    LOBYTE(v49) = 3;
    OUTLINED_FUNCTION_436();
    v35 = sub_24DE22B90();
    v34 = v51;
    OUTLINED_FUNCTION_666(v35, v26);
    LOBYTE(v46[0]) = 4;
    sub_24DDE4BB4();
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    v45 = v49;
    v41 = v50;
    OUTLINED_FUNCTION_1224(v51);
    v27 = OUTLINED_FUNCTION_98();
    sub_24DDE4914(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F08, &qword_24DE23398);
    v47 = 5;
    sub_24DDE4C08();
    OUTLINED_FUNCTION_257();
    sub_24DE22B70();
    v29 = OUTLINED_FUNCTION_226();
    v30(v29);
    v31 = v48;
    LODWORD(v46[0]) = v39;
    v33 = v67;
    BYTE4(v46[0]) = v67;
    v46[1] = v37;
    v46[2] = v38;
    v46[3] = v20;
    v46[4] = v50;
    v46[5] = v51;
    v46[6] = v52;
    v46[7] = v35;
    v32 = v64;
    LOBYTE(v46[8]) = v64;
    v46[9] = v49;
    v46[10] = v50;
    v46[11] = v42;
    v46[12] = v48;
    memcpy(v19, v46, 0x68uLL);
    sub_24DDE4D9C(v46, &v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    LODWORD(v49) = v39;
    BYTE4(v49) = v33;
    v50 = v37;
    v51 = v38;
    v52 = v20;
    v53 = v36;
    v54 = v34;
    v55 = v21;
    v56 = v35;
    v57 = v32;
    v59 = v45;
    v60 = v41;
    v61 = v42;
    v62 = v31;
  }

  sub_24DDE4D6C(&v49);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDAC148(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_RequestContent.game.getter()
{
  OUTLINED_FUNCTION_961();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_370();
  v5 = memcpy(v3, v4, 0x59uLL);
  v13 = OUTLINED_FUNCTION_805(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  return sub_24DDE2084(v13, v14);
}

void *Components.Schemas.Game_GetLeaderboardCategories_RequestContent.game.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  sub_24DDE2054(&v6);
  v3 = OUTLINED_FUNCTION_407();
  return memcpy(v3, v4, 0x59uLL);
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_RequestContent.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 96) = v3;
  *(v2 + 104) = v1;
  return result;
}

void *Components.Schemas.Game_GetLeaderboardCategories_RequestContent.init(game:playerId:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x59uLL);
  a4[12] = a2;
  a4[13] = a3;
  return result;
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_RequestContent.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x692D726579616C70;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24DDAC368@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Game_GetLeaderboardCategories_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDAC398()
{
  sub_24DDE4DD4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDAC3D0()
{
  sub_24DDE4DD4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Game_GetLeaderboardCategories_RequestContent.== infix(_:_:)(void *__src, void *a2)
{
  memcpy(v14, __src, 0x59uLL);
  v5 = *(__src + 12);
  v4 = *(__src + 13);
  memcpy(__dst, a2, 0x59uLL);
  v7 = a2[12];
  v6 = a2[13];
  v8 = OUTLINED_FUNCTION_539();
  static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)(v8, v9);
  v11 = v10;
  memcpy(v16, a2, 0x59uLL);
  sub_24DDE2084(v14, v17);
  sub_24DDE2084(__dst, v17);
  sub_24DDE2054(v16);
  memcpy(v17, __src, 0x59uLL);
  sub_24DDE2054(v17);
  if (v11)
  {
    if (v4)
    {
      if (v6)
      {
        if (v5 == v7 && v4 == v6)
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

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

void Components.Schemas.Game_GetLeaderboardCategories_RequestContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F60, &qword_24DE233B8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_524();
  memcpy(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_387(v10, v11);
  sub_24DDE2084(&v16, v15);
  sub_24DDE4DD4();
  OUTLINED_FUNCTION_470();
  sub_24DE22D50();
  OUTLINED_FUNCTION_1088(v15);
  sub_24DDE2E28();
  OUTLINED_FUNCTION_1015();
  OUTLINED_FUNCTION_497();
  sub_24DE22C70();
  memcpy(v14, v15, 0x59uLL);
  sub_24DDE2054(v14);
  if (!v5)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_329();
    sub_24DE22BF0();
  }

  v12 = OUTLINED_FUNCTION_330();
  v13(v12);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_RequestContent.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 104);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(a1);
  if (!v2)
  {
    return OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_260();

  return sub_24DE22AD0();
}

uint64_t Components.Schemas.Game_GetLeaderboardCategories_RequestContent.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v4);
  sub_24DE22CE0();
  if (v2)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  return sub_24DE22D10();
}

void Components.Schemas.Game_GetLeaderboardCategories_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  v25 = v24;
  v33 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F70, &qword_24DE233C0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_255(v25);
  sub_24DDE4DD4();
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    sub_24DDE2FE0();
    OUTLINED_FUNCTION_268();
    sub_24DE22BC0();
    memcpy(v37, v36, sizeof(v37));
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_411();
    v28 = sub_24DE22B40();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_384();
    v32(v31);
    OUTLINED_FUNCTION_1298(v34);
    v34[12] = v28;
    v34[13] = v30;
    memcpy(v33, v34, 0x70uLL);
    sub_24DDE4E28(v34, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_1298(v35);
    v35[12] = v28;
    v35[13] = v30;
    sub_24DDE4E60(v35);
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDAC96C(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Game_GetLeaderboardCategories_RequestContent.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Leaderboard_LeaderboardMetadata.groupId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Leaderboard_LeaderboardMetadata.ImageUrlsPayload.additionalProperties.setter()
{
  result = OUTLINED_FUNCTION_1311();
  *v1 = v0;
  return result;
}

uint64_t sub_24DDACAA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_406();
  return sub_24DE22D40();
}

uint64_t sub_24DDACB1C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_796(a1);
  v9 = OUTLINED_FUNCTION_452(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13);
  sub_24DDE2424(v9, v10);
  return sub_24DE22D10();
}

uint64_t sub_24DDACB94(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_452(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13);
  sub_24DDE2424(v9, v10);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Leaderboard_LeaderboardMetadata.imageUrls.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_LeaderboardMetadata __swiftcall Components.Schemas.Leaderboard_LeaderboardMetadata.init(groupId:imageUrls:)(Swift::String_optional groupId, GameCenterServerClient::Components::Schemas::Leaderboard_LeaderboardMetadata::ImageUrlsPayload_optional imageUrls)
{
  v3 = v2;
  v4 = *imageUrls.value.additionalProperties._rawValue;
  *v2 = groupId;

  v3[1].value._countAndFlagsBits = v4;
  result.imageUrls.value.additionalProperties._rawValue = v7;
  result.groupId.value._object = v6;
  result.groupId.value._countAndFlagsBits = v5;
  result.imageUrls.is_nil = v8;
  return result;
}

uint64_t Components.Schemas.Leaderboard_LeaderboardMetadata.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x72752D6567616D69;
  }

  else
  {
    return 0x64692D70756F7267;
  }
}

uint64_t sub_24DDACCEC@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Leaderboard_LeaderboardMetadata.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDACD1C()
{
  sub_24DDE4E90();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDACD54()
{
  sub_24DDE4E90();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Leaderboard_LeaderboardMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_360(a1);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (v2)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_948();
      swift_bridgeObjectRetain_n();

      v8 = OUTLINED_FUNCTION_407();
      v10 = sub_24DD8A4CC(v8, v9);
      OUTLINED_FUNCTION_948();
      swift_bridgeObjectRelease_n();

      return (v10 & 1) != 0;
    }

LABEL_15:

    return 0;
  }

  if (v4)
  {
    goto LABEL_15;
  }

  return 1;
}

void Components.Schemas.Leaderboard_LeaderboardMetadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_645();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F78, &qword_24DE233C8);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_1173();
  v24 = OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_387(v24, v25);
  sub_24DDE4E90();
  OUTLINED_FUNCTION_425();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_498();
  OUTLINED_FUNCTION_453();
  sub_24DE22BF0();
  if (!v22)
  {
    OUTLINED_FUNCTION_414();
    sub_24DDE4EE4();
    OUTLINED_FUNCTION_757();

    OUTLINED_FUNCTION_376();
    sub_24DE22C20();
  }

  v26 = OUTLINED_FUNCTION_446();
  v27(v26);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Leaderboard_LeaderboardMetadata.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!*(v1 + 8))
  {
    OUTLINED_FUNCTION_887();
    if (v2)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_887();
  }

  OUTLINED_FUNCTION_878();
  OUTLINED_FUNCTION_594();
  sub_24DE22AD0();
  if (!v2)
  {
    return OUTLINED_FUNCTION_887();
  }

LABEL_3:
  OUTLINED_FUNCTION_878();
  v3 = OUTLINED_FUNCTION_446();

  return sub_24DDE2424(v3, v4);
}

uint64_t Components.Schemas.Leaderboard_LeaderboardMetadata.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_796(a1);
  sub_24DE22CE0();
  if (v2)
  {
    OUTLINED_FUNCTION_540();
    sub_24DE22AD0();
  }

  if (v3)
  {
    v4 = sub_24DE22CE0();
    v12 = OUTLINED_FUNCTION_452(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
    sub_24DDE2424(v12, v13);
  }

  else
  {
    sub_24DE22CE0();
  }

  return sub_24DE22D10();
}

void Components.Schemas.Leaderboard_LeaderboardMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2F90, &qword_24DE233D0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_140();
  v26 = v22[3];
  v27 = v22[4];
  OUTLINED_FUNCTION_250(v22);
  sub_24DDE4E90();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097(v28);
  if (v23)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_405();
    sub_24DE22B40();
    OUTLINED_FUNCTION_1026();
    OUTLINED_FUNCTION_414();
    sub_24DDE4F38();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();
    v29 = OUTLINED_FUNCTION_189();
    v30(v29);

    *v24 = v27;
    v24[1] = v26;
    v24[2] = v31;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDAD260(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1051(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Leaderboard_LeaderboardMetadata.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.GetLeaderboardEntries_RequestContent.game.getter()
{
  OUTLINED_FUNCTION_961();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_370();
  v5 = memcpy(v3, v4, 0x59uLL);
  v11 = OUTLINED_FUNCTION_805(v5, v6, &unk_27F1B2B40, &unk_24DE231D0, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  return sub_24DDE73DC(v11);
}

void *Components.Schemas.GetLeaderboardEntries_RequestContent.game.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  sub_24DDE8DAC(&v6, &unk_27F1B2B40);
  v3 = OUTLINED_FUNCTION_407();
  return memcpy(v3, v4, 0x59uLL);
}

uint64_t Components.Schemas.GetLeaderboardEntries_RequestContent.baseLeaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 96) = v3;
  *(v2 + 104) = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntries_RequestContent.leaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntries_RequestContent.timeScope.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 128) = v3;
  *(v2 + 136) = v1;
  return result;
}

uint64_t Components.Schemas.GetLeaderboardEntries_RequestContent.playerScope.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 144) = v3;
  *(v2 + 152) = v1;
  return result;
}

__n128 Components.Schemas.GetLeaderboardEntries_RequestContent.init(game:baseLeaderboardId:leaderboardId:timeScope:playerScope:count:startingRank:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34, uint64_t a35)
{
  OUTLINED_FUNCTION_596();
  a32 = v36;
  a33 = v37;
  OUTLINED_FUNCTION_978();
  OUTLINED_FUNCTION_602();
  v38 = a35;
  v42 = a34;
  OUTLINED_FUNCTION_1052(xmmword_24DE22F30);
  memcpy(&__dst, v35, 0x59uLL);
  sub_24DDE8DAC(&__dst, &unk_27F1B2B40);
  v39 = OUTLINED_FUNCTION_661();
  memcpy(v39, v40, 0x59uLL);
  OUTLINED_FUNCTION_1245();
  *(v35 + 152) = v42;
  *(v35 + 168) = v38;
  OUTLINED_FUNCTION_585();
  return result;
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntries_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntries_RequestContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::GetLeaderboardEntries_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.GetLeaderboardEntries_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.GetLeaderboardEntries_RequestContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t sub_24DDAD6A0()
{
  result = 1701667175;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_412(19);
      break;
    case 2:
      result = OUTLINED_FUNCTION_34();
      break;
    case 3:
      result = 0x6F63732D656D6974;
      break;
    case 4:
      result = OUTLINED_FUNCTION_754();
      break;
    case 5:
      result = 0x746E756F63;
      break;
    case 6:
      result = 0x676E697472617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDAD7E8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.GetLeaderboardEntries_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDAD818()
{
  sub_24DDE4F8C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDAD850()
{
  sub_24DDE4F8C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.GetLeaderboardEntries_RequestContent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v8, 0x59uLL);
  v10 = v9[12];
  v11 = v9[13];
  v40 = v9[14];
  v41 = v9[15];
  v38 = v9[16];
  v39 = v9[18];
  v42 = v9[17];
  v43 = v9[19];
  OUTLINED_FUNCTION_1316(&v53);
  v13 = v7[12];
  v12 = v7[13];
  v14 = __dst[0];
  v15 = __dst[1];
  v17 = v53;
  v16 = v54;
  if (__dst[1] == 1)
  {
    if (v54 == 1)
    {
      OUTLINED_FUNCTION_1034();
      OUTLINED_FUNCTION_1049();
      OUTLINED_FUNCTION_1304(v18);
      sub_24DDE73DC(__dst);
      sub_24DDE73DC(&v53);
      sub_24DDE8DAC(__src, &unk_27F1B2B40);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v22);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v23);
LABEL_7:
    OUTLINED_FUNCTION_1205();
    OUTLINED_FUNCTION_1304(&__src[16]);
    v49 = v17;
    v50 = v16;
    memcpy(v51, v7 + 2, sizeof(v51));
    sub_24DDE8DAC(__src, &unk_27F1B2B50);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_1034();
  OUTLINED_FUNCTION_1205();
  OUTLINED_FUNCTION_1304(&__src[16]);
  memcpy(v47, __src, 0x59uLL);
  if (v16 == 1)
  {
    memcpy(v46, __src, 0x59uLL);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v19);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v20);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v21);
    sub_24DDE2054(v46);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_941(v46);
  v46[0] = v17;
  v46[1] = v16;
  static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)(v47, v46);
  v25 = v24;
  memcpy(v44, v46, 0x59uLL);
  OUTLINED_FUNCTION_1143(__dst);
  OUTLINED_FUNCTION_1143(&v53);
  OUTLINED_FUNCTION_1143(__src);
  sub_24DDE2054(v44);
  memcpy(v45, v47, 0x59uLL);
  sub_24DDE2054(v45);
  v46[0] = v14;
  v46[1] = v15;
  OUTLINED_FUNCTION_1304(&v46[2]);
  sub_24DDE8DAC(v46, &unk_27F1B2B40);
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v26 = v10 == v13 && v11 == v12;
  if (v26 || (OUTLINED_FUNCTION_370(), OUTLINED_FUNCTION_818(), (sub_24DE22CA0() & 1) != 0))
  {
    if (v41)
    {
      v28 = v42;
      v27 = v43;
      if (!v37)
      {
        goto LABEL_8;
      }

      v29 = v40 == v35 && v41 == v37;
      if (!v29 && (sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v28 = v42;
      v27 = v43;
      if (v37)
      {
        goto LABEL_8;
      }
    }

    if (!v28)
    {
      if (v36)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    if (v36)
    {
      v30 = v38 == v32 && v28 == v36;
      if (v30 || (sub_24DE22CA0() & 1) != 0)
      {
LABEL_33:
        if (v39 != v34 || v27 != v33)
        {
          sub_24DE22CA0();
          OUTLINED_FUNCTION_696();
        }
      }
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.GetLeaderboardEntries_RequestContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2FA0, &qword_24DE233D8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_524();
  memcpy(v27, v28, v29);
  OUTLINED_FUNCTION_387(v25, v25[3]);
  sub_24DDE73DC(&v34);
  sub_24DDE4F8C();
  OUTLINED_FUNCTION_470();
  sub_24DE22D50();
  OUTLINED_FUNCTION_1088(v33);
  sub_24DDE2E28();
  sub_24DE22C20();
  if (v23)
  {
    memcpy(v32, v33, 0x59uLL);
    sub_24DDE8DAC(v32, &unk_27F1B2B40);
  }

  else
  {
    memcpy(v32, v33, 0x59uLL);
    sub_24DDE8DAC(v32, &unk_27F1B2B40);
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_391();
    sub_24DE22C50();
    OUTLINED_FUNCTION_463();
    OUTLINED_FUNCTION_391();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_391();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_391();
    sub_24DE22C50();
    OUTLINED_FUNCTION_497();
    sub_24DE22C90();
    OUTLINED_FUNCTION_497();
    sub_24DE22C90();
  }

  v30 = OUTLINED_FUNCTION_626();
  v31(v30);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.GetLeaderboardEntries_RequestContent.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[15];
  v11 = v1[17];
  v6 = v1[20];
  v5 = v1[21];
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v7 = v1[20];
    v8 = v1[21];
    v9 = *v1;
    memcpy(&__src[2], v1 + 2, 0x49uLL);
    __src[0] = v9;
    __src[1] = v3;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v13[0] = v9;
    v13[1] = v3;
    v5 = v8;
    v6 = v7;
    memcpy(v14, v1 + 2, sizeof(v14));
    sub_24DDE2084(v13, __dst);
    Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(a1);
    memcpy(__dst, __src, 0x59uLL);
    sub_24DDE2054(__dst);
  }

  sub_24DE22AD0();
  if (!v4)
  {
    OUTLINED_FUNCTION_795();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_795();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_826();
  sub_24DE22AD0();
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  OUTLINED_FUNCTION_260();
  sub_24DE22AD0();
LABEL_9:
  OUTLINED_FUNCTION_548();
  sub_24DE22AD0();
  MEMORY[0x253039750](v6);
  return MEMORY[0x253039750](v5);
}

uint64_t sub_24DDAE040(uint64_t a1)
{
  OUTLINED_FUNCTION_588(a1);
  v1(v3);
  return sub_24DE22D10();
}

void Components.Schemas.GetLeaderboardEntries_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2FB0, &qword_24DE233E0);
  OUTLINED_FUNCTION_27();
  v9 = v8;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_140();
  v11 = v5[3];
  v38 = v5;
  OUTLINED_FUNCTION_153(v5);
  sub_24DDE4F8C();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_671();
    OUTLINED_FUNCTION_976();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v45 = 0;
    v46 = 1;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = v9;
    v55 = v11;
    v56 = 0;
    sub_24DDE8DAC(&v45, &unk_27F1B2B40);

    if (v35)
    {
    }
  }

  else
  {
    v68[95] = 0;
    sub_24DDE2FE0();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    v37 = v7;
    v12 = v72;
    v41 = v71;
    v42 = v69;
    v13 = v73;
    v28 = v74;
    v29 = v70;
    v14 = v78;
    v26 = v77;
    v27 = v75;
    v31 = v79;
    v32 = v76;
    v30 = v80;
    *v68 = xmmword_24DE22F30;
    memset(&v68[16], 0, 73);
    sub_24DDE8DAC(v68, &unk_27F1B2B40);
    OUTLINED_FUNCTION_342(1);
    v39 = v13;
    v40 = v12;
    v15 = sub_24DE22BA0();
    v34 = v16;
    OUTLINED_FUNCTION_342(2);
    v17 = sub_24DE22B40();
    v81 = v18;
    OUTLINED_FUNCTION_342(3);
    v19 = sub_24DE22B40();
    v43 = v20;
    OUTLINED_FUNCTION_342(4);
    v36 = sub_24DE22BA0();
    v33 = v21;
    OUTLINED_FUNCTION_342(5);
    v25 = sub_24DE22BE0();
    v67 = 6;
    v22 = sub_24DE22BE0();
    v23 = OUTLINED_FUNCTION_747();
    v24(v23);
    v44[0] = v42;
    v44[1] = v29;
    v44[2] = v41;
    v44[3] = v40;
    v44[4] = v39;
    v44[5] = v28;
    v44[6] = v27;
    v44[7] = v32;
    v44[8] = v26;
    v44[9] = v14;
    v44[10] = v31;
    LOBYTE(v44[11]) = v30;
    v44[12] = v15;
    v44[13] = v34;
    v44[14] = v17;
    v44[15] = v81;
    v44[16] = v19;
    v44[17] = v43;
    v44[18] = v36;
    v44[19] = v33;
    v44[20] = v25;
    v44[21] = v22;
    memcpy(v37, v44, 0xB0uLL);
    sub_24DDE4FE0(v44, &v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v45 = v42;
    v46 = v29;
    v47 = v41;
    v48 = v40;
    v49 = v39;
    v50 = v28;
    v51 = v27;
    v52 = v32;
    v53 = v26;
    v54 = v14;
    v55 = v31;
    v56 = v30;
    v57 = v15;
    v58 = v34;
    v59 = v17;
    v60 = v81;
    v61 = v19;
    v62 = v43;
    v63 = v36;
    v64 = v33;
    v65 = v25;
    v66 = v22;
    sub_24DDE5018(&v45);
  }

  OUTLINED_FUNCTION_1031();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDAE5AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.GetGameAchievements_Request.game.getter()
{
  OUTLINED_FUNCTION_961();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_370();
  v5 = memcpy(v3, v4, 0x59uLL);
  v11 = OUTLINED_FUNCTION_805(v5, v6, &unk_27F1B2B40, &unk_24DE231D0, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  return sub_24DDE73DC(v11);
}

void *Components.Schemas.GetGameAchievements_Request.game.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_524();
  memcpy(v0, v1, v2);
  sub_24DDE5048(&v6);
  v3 = OUTLINED_FUNCTION_407();
  return memcpy(v3, v4, 0x59uLL);
}

void *Components.Schemas.GetGameAchievements_Request.init(game:)@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_986(xmmword_24DE22F30);
  *(a2 + 64) = v3;
  *(a2 + 73) = v3;
  OUTLINED_FUNCTION_524();
  memcpy(v4, v5, v6);
  sub_24DDE5048(&v10);
  v7 = OUTLINED_FUNCTION_407();
  return memcpy(v7, v8, 0x59uLL);
}

void Components.Schemas.GetGameAchievements_Request.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void Components.Schemas.GetGameAchievements_Request.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_24DDAE80C()
{
  sub_24DDE5078();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDAE844()
{
  sub_24DDE5078();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.GetGameAchievements_Request.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_949(&v39);
  OUTLINED_FUNCTION_524();
  v9 = memcpy(v6, v7, v8);
  v17 = v39;
  v18 = v40;
  v20 = v41;
  v19 = v42;
  if (v40 == 1)
  {
    if (v42 == 1)
    {
      OUTLINED_FUNCTION_722(v9, v10, v11, v12, v13, v14, v15, v16, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], *v35, *&v35[8], *&v35[16], *&v35[24], *&v35[32], *&v35[40], *&v35[48], *&v35[56], *&v35[64], *&v35[72], *&v35[80], *&v35[88], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v39, 1, __src[2]);
      OUTLINED_FUNCTION_553();
      sub_24DDE73DC(v21);
      OUTLINED_FUNCTION_553();
      sub_24DDE73DC(v22);
      OUTLINED_FUNCTION_409();
LABEL_9:
      sub_24DDE8DAC(v23, v24);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_489();
    sub_24DDE73DC(v28);
    OUTLINED_FUNCTION_489();
    sub_24DDE73DC(v29);
  }

  else
  {
    OUTLINED_FUNCTION_722(v9, v10, v11, v12, v13, v14, v15, v16, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], *v35, *&v35[8], *&v35[16], *&v35[24], *&v35[32], *&v35[40], *&v35[48], *&v35[56], *&v35[64], *&v35[72], *&v35[80], *&v35[88], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v39, v40, __src[2]);
    memcpy(__dst, __src, 0x59uLL);
    if (v19 != 1)
    {
      OUTLINED_FUNCTION_1002(&v35[16]);
      *v35 = v20;
      *&v35[8] = v19;
      static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)(__dst, v35);
      memcpy(v33, v35, 0x59uLL);
      OUTLINED_FUNCTION_489();
      sub_24DDE73DC(v30);
      OUTLINED_FUNCTION_489();
      sub_24DDE73DC(v31);
      OUTLINED_FUNCTION_489();
      sub_24DDE73DC(v32);
      sub_24DDE2054(v33);
      memcpy(v34, __dst, 0x59uLL);
      sub_24DDE2054(v34);
      *v35 = v17;
      *&v35[8] = v18;
      OUTLINED_FUNCTION_1012(&v35[16]);
      OUTLINED_FUNCTION_540();
      goto LABEL_9;
    }

    memcpy(v35, __src, 0x59uLL);
    OUTLINED_FUNCTION_489();
    sub_24DDE73DC(v25);
    OUTLINED_FUNCTION_489();
    sub_24DDE73DC(v26);
    OUTLINED_FUNCTION_489();
    sub_24DDE73DC(v27);
    sub_24DDE2054(v35);
  }

  __src[0] = v17;
  __src[1] = v18;
  OUTLINED_FUNCTION_1012(&__src[2]);
  __src[12] = v20;
  __src[13] = v19;
  OUTLINED_FUNCTION_1002(&v38);
  sub_24DDE8DAC(__src, &unk_27F1B2B50);
LABEL_10:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.GetGameAchievements_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  OUTLINED_FUNCTION_645();
  v27 = v7;
  v28 = v8;
  OUTLINED_FUNCTION_1256();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2FB8, &qword_24DE233E8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_524();
  memcpy(v12, v13, v14);
  OUTLINED_FUNCTION_255(v10);
  sub_24DDE73DC(v7 - 184);
  sub_24DDE5078();
  OUTLINED_FUNCTION_507();
  sub_24DE22D50();
  OUTLINED_FUNCTION_1088(va1);
  sub_24DDE2E28();
  OUTLINED_FUNCTION_497();
  sub_24DE22C20();
  memcpy(va, va1, 0x59uLL);
  sub_24DDE8DAC(va, &unk_27F1B2B40);
  v15 = OUTLINED_FUNCTION_541();
  v16(v15);
  OUTLINED_FUNCTION_1031();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.GetGameAchievements_Request.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  if (v2 == 1)
  {
    return OUTLINED_FUNCTION_795();
  }

  v4 = *v1;
  memcpy(&v6[2], v1 + 2, 0x49uLL);
  v6[0] = v4;
  v6[1] = v2;
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  v7[0] = v4;
  v7[1] = v2;
  memcpy(v8, v1 + 2, sizeof(v8));
  sub_24DDE2084(v7, __dst);
  v5 = OUTLINED_FUNCTION_643();
  Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v5);
  memcpy(__dst, v6, 0x59uLL);
  return sub_24DDE2054(__dst);
}

uint64_t Components.Schemas.GetGameAchievements_Request.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DE22CC0();
  if (v2 == 1)
  {
    sub_24DE22CE0();
  }

  else
  {
    __src[0] = v1;
    __src[1] = v2;
    OUTLINED_FUNCTION_940(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_24DE22CE0();
    sub_24DDE2084(__src, v6);
    Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v7);
    memcpy(v6, __dst, 0x59uLL);
    sub_24DDE2054(v6);
  }

  return sub_24DE22D10();
}

void Components.Schemas.GetGameAchievements_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2FC8, &qword_24DE233F0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE5078();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (!v6)
  {
    sub_24DDE2FE0();
    OUTLINED_FUNCTION_529();
    sub_24DE22B70();
    v9 = OUTLINED_FUNCTION_230();
    v10(v9);
    memcpy(v7, v11, 0x59uLL);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDAEF00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Leaderboard_ScoreWithPlayerDesc.formattedScoreValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

double sub_24DDAEFD8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 41) = 0u;
  return result;
}

uint64_t Components.Schemas.Leaderboard_ScoreWithPlayerDesc.playerDescriptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>)
{
  v20 = v7[2];
  v21 = v7[3];
  v8 = v7[4];
  v9 = *(v7 + 73);
  *a3 = v20;
  a3[1] = v21;
  a3[2] = v8;
  *(a3 + 41) = v9;
  v10 = OUTLINED_FUNCTION_848(a1, a2, &unk_27F1B2FD0, &unk_24DE233F8, a4, a5, a6, a7, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return sub_24DDE73DC(v10);
}

__n128 Components.Schemas.Leaderboard_ScoreWithPlayerDesc.playerDescriptor.setter(uint64_t a1)
{
  v3 = v1[3];
  v6[0] = v1[2];
  v6[1] = v3;
  v7[0] = v1[4];
  *(v7 + 9) = *(v1 + 73);
  sub_24DDE8DAC(v6, &unk_27F1B2FD0);
  v4 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v4;
  v1[4] = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 73) = result;
  return result;
}

uint64_t Components.Schemas.Leaderboard_ScoreWithPlayerDesc.rank.setter(uint64_t result)
{
  *(v1 + 92) = result;
  *(v1 + 96) = BYTE4(result) & 1;
  return result;
}

__n128 Components.Schemas.Leaderboard_ScoreWithPlayerDesc.init(context:formattedScoreValue:playerDescriptor:rank:scoreValue:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_978();
  v15 = v14;
  *(v14 + 32) = xmmword_24DE22F30;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 73) = 0u;
  *v14 = v16;
  *(v14 + 8) = v17 & 1;
  *(v14 + 16) = v18;
  *(v14 + 24) = v19;
  v24[0] = *(v14 + 64);
  *(v24 + 9) = *(v14 + 73);
  v20 = *(v14 + 48);
  v23[0] = *(v14 + 32);
  v23[1] = v20;
  sub_24DDE8DAC(v23, &unk_27F1B2FD0);
  v21 = *(v12 + 16);
  *(v15 + 32) = *v12;
  *(v15 + 48) = v21;
  *(v15 + 64) = *(v12 + 32);
  result = *(v12 + 41);
  *(v15 + 73) = result;
  *(v15 + 92) = v11;
  *(v15 + 96) = BYTE4(v11) & 1;
  *(v15 + 104) = v10;
  *(v15 + 112) = a8 & 1;
  *(v15 + 120) = a9;
  *(v15 + 128) = a10 & 1;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_ScoreWithPlayerDesc::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_ScoreWithPlayerDesc.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_932();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Leaderboard_ScoreWithPlayerDesc::CodingKeys_optional __swiftcall Components.Schemas.Leaderboard_ScoreWithPlayerDesc.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Leaderboard_ScoreWithPlayerDesc.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DDAF2B8()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_560(17);
      break;
    case 2:
      OUTLINED_FUNCTION_155();
      break;
    case 3:
      OUTLINED_FUNCTION_191();
      break;
    case 4:
      OUTLINED_FUNCTION_275();
      break;
    default:
      return;
  }
}

uint64_t sub_24DDAF3D8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Leaderboard_ScoreWithPlayerDesc.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDAF408()
{
  sub_24DDE50CC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDAF440()
{
  sub_24DDE50CC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Leaderboard_ScoreWithPlayerDesc.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_695();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = v8[2];
  v12 = *(v6 + 24);
  v13 = *(v6 + 48);
  v64 = *(v6 + 32);
  v65 = v13;
  v66[0] = *(v6 + 64);
  *(v66 + 9) = *(v6 + 73);
  v14 = *v7;
  v15 = *(v7 + 8);
  v16 = v7[2];
  v17 = v7[3];
  v18 = *(v7 + 3);
  v67 = *(v7 + 2);
  v68 = v18;
  v69[0] = *(v7 + 4);
  *(v69 + 9) = *(v7 + 73);
  if (v10)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_8:
    if (v12)
    {
      if (!v17)
      {
        goto LABEL_24;
      }

      v20 = v11 == v16 && v12 == v17;
      if (!v20 && (sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v17)
    {
      goto LABEL_24;
    }

    v21 = *(&v67 + 1);
    if (*(&v64 + 1) == 1)
    {
      if (*(&v67 + 1) == 1)
      {
        *&v57 = v64;
        *(&v57 + 1) = 1;
        v22 = *(v6 + 64);
        v58 = *(v6 + 48);
        v59[0] = v22;
        *(v59 + 9) = *(v6 + 73);
        OUTLINED_FUNCTION_377();
        sub_24DDE73DC(v23);
        OUTLINED_FUNCTION_377();
        sub_24DDE73DC(v24);
        OUTLINED_FUNCTION_444();
        sub_24DDE8DAC(v25, v26);
        goto LABEL_24;
      }

      v29 = v67;
      v30 = *(&v64 + 1);
      v31 = v64;
      OUTLINED_FUNCTION_489();
      sub_24DDE73DC(v35);
      OUTLINED_FUNCTION_489();
      sub_24DDE73DC(v36);
    }

    else
    {
      v57 = v64;
      v27 = *(v6 + 73);
      v28 = *(v6 + 64);
      v58 = *(v6 + 48);
      v59[0] = v28;
      *(v59 + 9) = v27;
      v54 = v64;
      v55 = v58;
      v56[0] = v59[0];
      *(v56 + 9) = v27;
      if (*(&v67 + 1) != 1)
      {
        v39 = *(v7 + 4);
        v52 = *(v7 + 3);
        v53[0] = v39;
        *(v53 + 9) = *(v7 + 73);
        v51 = v67;
        OUTLINED_FUNCTION_969();
        *&v46 = v41;
        *(&v46 + 1) = v40;
        sub_24DDE73DC(v42);
        OUTLINED_FUNCTION_969();
        sub_24DDE73DC(v43);
        OUTLINED_FUNCTION_969();
        sub_24DDE73DC(v44);
        static Components.Schemas.Leaderboard_PlayerDescriptor.== infix(_:_:)(&v54, &v51);
        v47[0] = v51;
        v47[1] = v52;
        v48[0] = v53[0];
        *(v48 + 9) = *(v53 + 9);
        sub_24DDE3F70(v47);
        v49[0] = v54;
        v49[1] = v55;
        v50[0] = v56[0];
        *(v50 + 9) = *(v56 + 9);
        sub_24DDE3F70(v49);
        v51 = v46;
        v45 = *(v6 + 64);
        v52 = *(v6 + 48);
        v53[0] = v45;
        *(v53 + 9) = *(v6 + 73);
        sub_24DDE8DAC(&v51, &unk_27F1B2FD0);
        goto LABEL_24;
      }

      v29 = v67;
      v30 = *(&v64 + 1);
      v31 = v64;
      v51 = v57;
      v52 = v58;
      v53[0] = v59[0];
      *(v53 + 9) = *(v59 + 9);
      OUTLINED_FUNCTION_326();
      sub_24DDE73DC(v32);
      OUTLINED_FUNCTION_326();
      sub_24DDE73DC(v33);
      OUTLINED_FUNCTION_326();
      sub_24DDE73DC(v34);
      sub_24DDE3F70(&v51);
    }

    *&v57 = v31;
    *(&v57 + 1) = v30;
    v37 = *(v6 + 64);
    v58 = *(v6 + 48);
    v59[0] = v37;
    *(v59 + 9) = *(v6 + 73);
    v60 = v29;
    v61 = v21;
    v38 = *(v7 + 4);
    v62 = *(v7 + 3);
    v63[0] = v38;
    *(v63 + 9) = *(v7 + 73);
    sub_24DDE8DAC(&v57, &unk_27F1B2FD8);
    goto LABEL_24;
  }

  if (v9 == v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_24:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Leaderboard_ScoreWithPlayerDesc.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2FE0, &qword_24DE23408);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_100();
  v27 = *(v20 + 48);
  v35 = *(v20 + 32);
  v36 = v27;
  v37[0] = *(v20 + 64);
  *(v37 + 9) = *(v20 + 73);
  OUTLINED_FUNCTION_1224(*(v20 + 120));
  OUTLINED_FUNCTION_153(v25);
  sub_24DDE50CC();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_1125(v28);
  LOBYTE(v32) = 0;
  sub_24DE22C40();
  if (!v21)
  {
    OUTLINED_FUNCTION_514(&a13);
    sub_24DE22BF0();
    v32 = v35;
    v33 = v36;
    v34[0] = v37[0];
    *(v34 + 9) = *(v37 + 9);
    v31[63] = 2;
    sub_24DDE73DC(&v35);
    sub_24DDE5120();
    OUTLINED_FUNCTION_728();
    sub_24DE22C20();
    OUTLINED_FUNCTION_742();
    sub_24DDE8DAC(v31, &unk_27F1B2FD0);
    OUTLINED_FUNCTION_728();
    sub_24DE22C30();
    OUTLINED_FUNCTION_673();
    sub_24DE22C40();
    OUTLINED_FUNCTION_988();
    OUTLINED_FUNCTION_673();
    sub_24DE22C40();
  }

  v29 = OUTLINED_FUNCTION_386();
  v30(v29);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Leaderboard_ScoreWithPlayerDesc.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_597();
  v5 = v4;
  v6 = *v3;
  v7 = v3[3];
  v8 = *(v3 + 96);
  v9 = v3[13];
  v10 = *(v3 + 112);
  v12 = v3[15];
  v11 = *(v3 + 128);
  if (*(v3 + 8) == 1)
  {
    OUTLINED_FUNCTION_795();
    if (v7)
    {
LABEL_3:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_495();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v6);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_6:
  sub_24DDE0BB0(v5);
  if (v8)
  {
    OUTLINED_FUNCTION_795();
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_11:
    OUTLINED_FUNCTION_795();
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_12:
    OUTLINED_FUNCTION_795();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DE22CF0();
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_8:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039750](v9);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_9:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  MEMORY[0x253039750](v12);
LABEL_13:
  OUTLINED_FUNCTION_586();
}

uint64_t Components.Schemas.Leaderboard_ScoreWithPlayerDesc.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Leaderboard_ScoreWithPlayerDesc.hash(into:)(v4, v1, v2);
  return sub_24DE22D10();
}

void Components.Schemas.Leaderboard_ScoreWithPlayerDesc.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_469();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2FF8, &qword_24DE23410);
  OUTLINED_FUNCTION_27();
  v15 = v14;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_140();
  v94 = 1;
  v90 = 1;
  v88 = 1;
  v86 = 1;
  v17 = v10[3];
  v18 = v10[4];
  v47 = v10;
  OUTLINED_FUNCTION_153(v10);
  sub_24DDE50CC();
  OUTLINED_FUNCTION_544();
  sub_24DE22D30();
  if (v12)
  {
    OUTLINED_FUNCTION_607();
    OUTLINED_FUNCTION_1239();
    OUTLINED_FUNCTION_990();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v63 = 0;
    v64 = v94;
    *v65 = *v93;
    *&v65[3] = *&v93[3];
    v66 = v15;
    v67 = v13;
    v68 = a10;
    v69 = v12;
    v70 = v44;
    v71 = v43;
    v72 = v50;
    v73 = v18;
    v74 = v11;
    v75 = v17;
    v77 = v92;
    v76 = v91;
    v78 = v48;
    v79 = v90;
    *v80 = *v89;
    *&v80[3] = *&v89[3];
    v81 = v45;
    v82 = v88;
    *v83 = *v87;
    *&v83[3] = *&v87[3];
    v84 = 0;
    v85 = v86;
  }

  else
  {
    OUTLINED_FUNCTION_411();
    v42 = sub_24DE22B90();
    OUTLINED_FUNCTION_1188(v42, v19);
    LOBYTE(v63) = 1;
    OUTLINED_FUNCTION_411();
    v40 = sub_24DE22B40();
    v41 = v20;
    v54[63] = 2;
    sub_24DDE51A4();
    OUTLINED_FUNCTION_268();
    sub_24DE22B70();
    v36 = v11;
    v95 = v55;
    v37 = v56;
    v22 = v57;
    v21 = v58;
    v23 = v60;
    v51 = v59;
    v39 = v61;
    v38 = v62;
    *v54 = xmmword_24DE22F30;
    memset(&v54[16], 0, 41);
    sub_24DDE8DAC(v54, &unk_27F1B2FD0);
    LOBYTE(v63) = 3;
    OUTLINED_FUNCTION_411();
    v24 = sub_24DE22B80();
    v49 = v24;
    v90 = BYTE4(v24) & 1;
    LOBYTE(v63) = 4;
    OUTLINED_FUNCTION_411();
    v46 = sub_24DE22B90();
    v25 = v23;
    v88 = v26 & 1;
    v53 = 5;
    OUTLINED_FUNCTION_411();
    v27 = sub_24DE22B90();
    v29 = v28;
    v30 = v27;
    v31 = OUTLINED_FUNCTION_384();
    v32(v31);
    v86 = v29 & 1;
    *v52 = v42;
    v35 = v94;
    v52[8] = v94;
    *&v52[16] = v40;
    *&v52[24] = v41;
    *&v52[32] = v95;
    *&v52[40] = v37;
    *&v52[48] = v22;
    *&v52[56] = v21;
    *&v52[64] = v51;
    *&v52[72] = v25;
    *&v52[80] = v39;
    v52[88] = v38;
    *&v52[92] = v49;
    v34 = v90;
    v52[96] = v90;
    *&v52[104] = v46;
    v33 = v88;
    v52[112] = v88;
    *&v52[120] = v30;
    v52[128] = v29 & 1;
    memcpy(v36, v52, 0x81uLL);
    sub_24DDE51F8(v52, &v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v63 = v42;
    v64 = v35;
    v66 = v40;
    v67 = v41;
    v68 = v95;
    v69 = v37;
    v70 = v22;
    v71 = v21;
    v72 = v51;
    v73 = v25;
    v74 = v39;
    v75 = v38;
    v78 = v49;
    v79 = v34;
    v81 = v46;
    v82 = v33;
    v84 = v30;
    v85 = v29 & 1;
  }

  sub_24DDE5174(&v63);
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB020C(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Leaderboard_ScoreWithPlayerDesc.hash(into:)(v4, v1, v2);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_CodeInvite.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_CodeInvite.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_24DDB0398()
{
  sub_24DDE5230();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB03D0()
{
  sub_24DDE5230();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.bundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

void __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.init(playerId:bundleId:getRecentCompletedChallenges:)(GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Request *__return_ptr retstr, Swift::String playerId, Swift::String_optional bundleId, Swift::Bool_optional getRecentCompletedChallenges)
{
  retstr->playerId = playerId;
  retstr->bundleId = bundleId;
  retstr->getRecentCompletedChallenges = getRecentCompletedChallenges;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Request::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.CodingKeys.stringValue.getter()
{
  v1 = 0x692D656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x692D726579616C70;
  }
}

unint64_t sub_24DDB0694@<X0>(unint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB06C4()
{
  sub_24DDE5284();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB06FC()
{
  sub_24DDE5284();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_281(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  OUTLINED_FUNCTION_1017();
  v10 = *(v9 + 32);
  v13 = v11 == v12 && v7 == v8;
  if (!v13 && (sub_24DE22CA0() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v1)
    {
      return 0;
    }

    v14 = v4 == v2 && v5 == v1;
    if (!v14 && (OUTLINED_FUNCTION_369() & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    if (v6 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v1)
  {
    goto LABEL_15;
  }

  return 0;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_645();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3020, &qword_24DE23428);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_250(v24);
  sub_24DDE5284();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_709();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_819();
  sub_24DE22C50();
  if (!v22)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_589();
    OUTLINED_FUNCTION_166();
    sub_24DE22C00();
  }

  v26 = OUTLINED_FUNCTION_180();
  v27(v26);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.hash(into:)()
{
  OUTLINED_FUNCTION_987();
  v2 = *(v0 + 32);
  sub_24DE22AD0();
  if (v1)
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
  }

  if (v2 != 2)
  {
    OUTLINED_FUNCTION_878();
  }

  return sub_24DE22CE0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  OUTLINED_FUNCTION_796(v29);
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

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3030, &qword_24DE23430);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE5284();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    OUTLINED_FUNCTION_578();
    OUTLINED_FUNCTION_310();
    v24 = sub_24DE22BA0();
    v33 = v25;
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_439();
    v26 = sub_24DE22B40();
    v28 = v27;
    v32 = v26;
    OUTLINED_FUNCTION_589();
    OUTLINED_FUNCTION_310();
    v29 = sub_24DE22B50();
    v30 = OUTLINED_FUNCTION_230();
    v31(v30);
    *v22 = v24;
    *(v22 + 8) = v33;
    *(v22 + 16) = v32;
    *(v22 + 24) = v28;
    *(v22 + 32) = v29;

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB0C20(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Request.hash(into:)();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.fromPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_Invited::StatusPayload_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.StatusPayload.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_Invited::StatusPayload_optional sub_24DDB0DDC@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_Invited::StatusPayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.StatusPayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.init(playerId:invitedTimestamp:fromPlayerId:status:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_Invited::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.CodingKeys.stringValue.getter()
{
  result = 0x692D726579616C70;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_412(17);
      break;
    case 2:
      result = OUTLINED_FUNCTION_646();
      break;
    case 3:
      result = 0x737574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDB10B8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB10E8()
{
  sub_24DDE52D8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB1120()
{
  sub_24DDE52D8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  v3 = OUTLINED_FUNCTION_281(v2);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = *(v4 + 40);
  if (v3 == *v4 && *(v5 + 8) == *(v4 + 8))
  {
    if (v6 != v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_24DE22CA0();
    OUTLINED_FUNCTION_696();
    if ((v15 & 1) == 0 || v6 != v11)
    {
      goto LABEL_24;
    }
  }

  v16 = v7 == v10 && v8 == v12;
  if (v16 || (OUTLINED_FUNCTION_440(), OUTLINED_FUNCTION_818(), (sub_24DE22CA0() & 1) != 0))
  {
    if (v9 != 6 && v13 != 6)
    {
      v17 = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(v9);
      v19 = v18;
      if (v17 != Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(v13) || v19 != v20)
      {
        OUTLINED_FUNCTION_674();
        OUTLINED_FUNCTION_858();
        sub_24DE22CA0();
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_999();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_645();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3038, &qword_24DE23438);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_1241();
  OUTLINED_FUNCTION_250(v23);
  sub_24DDE52D8();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_709();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_819();
  sub_24DE22C50();
  if (!v21)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_166();
    sub_24DE22C90();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_135();
    sub_24DE22C50();
    OUTLINED_FUNCTION_843();
    sub_24DDE532C();
    OUTLINED_FUNCTION_166();
    sub_24DE22C20();
  }

  v25 = OUTLINED_FUNCTION_180();
  v26(v25);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_24DE22AD0();
  MEMORY[0x253039750](v2);
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  if (v3 == 6)
  {
    return OUTLINED_FUNCTION_1001();
  }

  OUTLINED_FUNCTION_963();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(v3);
  sub_24DE22AD0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_1161();
  v29 = *(v28 + 16);
  v30 = *(v28 + 40);
  OUTLINED_FUNCTION_796(v31);
  OUTLINED_FUNCTION_540();
  sub_24DE22AD0();
  MEMORY[0x253039750](v29);
  OUTLINED_FUNCTION_495();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v30 != 6)
  {
    v32 = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(v30);
    OUTLINED_FUNCTION_563(v32, v33, v34);
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1159();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3050, &qword_24DE23440);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_153(v19);
  sub_24DDE52D8();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    OUTLINED_FUNCTION_578();
    OUTLINED_FUNCTION_311();
    v24 = sub_24DE22BA0();
    v26 = v25;
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_405();
    v31 = sub_24DE22BE0();
    OUTLINED_FUNCTION_589();
    OUTLINED_FUNCTION_311();
    v30 = sub_24DE22BA0();
    v32 = v27;
    OUTLINED_FUNCTION_843();
    sub_24DDE5380();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    v28 = OUTLINED_FUNCTION_318();
    v29(v28);
    *v22 = v24;
    *(v22 + 8) = v26;
    *(v22 + 16) = v31;
    *(v22 + 24) = v30;
    *(v22 + 32) = v32;
    *(v22 + 40) = BYTE4(a10);

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB177C(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_856(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Invited.hash(into:)(v9);
  return sub_24DE22D10();
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeInvite_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Response.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDB1978@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB19A8()
{
  sub_24DDE53D4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB19E0()
{
  sub_24DDE53D4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3060, &qword_24DE23448);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DDE53D4();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_488();
  sub_24DE22C30();
  if (!v8)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_141();
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3070, &qword_24DE23450);
    sub_24DDE5428();
    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
  }

  v6 = OUTLINED_FUNCTION_180();
  v7(v6);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void sub_24DDB1BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_628();
  v29 = v14;
  OUTLINED_FUNCTION_192();
  v16 = v15[2];
  v17 = v15[4];
  v18 = v15[6];
  v19 = v15[7];
  if (v20 == 1)
  {
    sub_24DE22CE0();
    if (v16)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_464();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v17 == 1)
  {
    goto LABEL_12;
  }

  sub_24DE22CE0();
  if (v17)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_386();
    sub_24DE22AD0();
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_24DE22CE0();
    if (!v19)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  sub_24DE22CE0();
  if (!v18)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_540();
  sub_24DE22AD0();
  if (!v19)
  {
LABEL_10:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_549();
    return;
  }

LABEL_13:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_407();
  OUTLINED_FUNCTION_549();

  v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v29, a11, a12, a13, a14);
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3088, &qword_24DE23458);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_168();
  sub_24DDE53D4();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_93();
    v8 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v8);
    v20[0] = v9;
    OUTLINED_FUNCTION_93();
    v10 = sub_24DE22B40();
    OUTLINED_FUNCTION_776(v10, v11);
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    OUTLINED_FUNCTION_824();
    v12 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3070, &qword_24DE23450);
    OUTLINED_FUNCTION_493();
    sub_24DDE5530();
    OUTLINED_FUNCTION_144();
    v16 = OUTLINED_FUNCTION_124();
    v17(v16);
    v18 = OUTLINED_FUNCTION_14();
    sub_24DDE5608(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_40();
  }

  sub_24DDE5500(v20);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request_TestOption.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request_TestOption.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_24DDB206C()
{
  sub_24DDE5640();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB20A4()
{
  sub_24DDE5640();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void sub_24DDB2164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v8 = v7;
  OUTLINED_FUNCTION_1242();
  v19 = v9;
  v12 = OUTLINED_FUNCTION_632(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  v15 = OUTLINED_FUNCTION_255(v5);
  v8(v15);
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (!v6)
  {
    OUTLINED_FUNCTION_529();
    v16 = sub_24DE22B80();
    v17 = OUTLINED_FUNCTION_532();
    v18(v17);
    *v19 = v16;
    *(v19 + 4) = BYTE4(v16) & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Request.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Request.challengeId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Request.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x676E656C6C616863;
  }

  else
  {
    return 0x692D726579616C70;
  }
}

uint64_t sub_24DDB2474@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB24A4()
{
  sub_24DDE5694();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB24DC()
{
  sub_24DDE5694();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_891();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B30B8, &qword_24DE23470);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_153(v6);
  sub_24DDE5694();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_139();
  sub_24DE22C50();
  if (!v5)
  {
    OUTLINED_FUNCTION_121();
    sub_24DE22C50();
  }

  v8 = OUTLINED_FUNCTION_213();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.inviteCode.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.status.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.alert.getter()
{
  v0 = OUTLINED_FUNCTION_1243();
  *v2 = v0;
  v2[1] = v1;
  v2[2] = v3;
  v2[3] = v4;
  sub_24DD7639C(v0, v1, v3, v4);
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.alert.setter()
{
  v0 = OUTLINED_FUNCTION_1243();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_995().n128_u64[0];
  return result;
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.init(inviteCode:status:message:alert:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = BYTE4(a3) & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  v6 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v6, v7, v8, v9);
  *&result = OUTLINED_FUNCTION_995().n128_u64[0];
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.CodingKeys.stringValue.getter()
{
  result = 0x632D657469766E69;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_834();
      break;
    case 2:
      result = OUTLINED_FUNCTION_16();
      break;
    case 3:
      result = 0x7472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDB294C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB297C()
{
  sub_24DDE56E8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB29B4()
{
  sub_24DDE56E8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B30D0, &qword_24DE23480);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  v16 = *(v5 + 20);
  OUTLINED_FUNCTION_153(v6);
  sub_24DDE56E8();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_1125(v8);
  OUTLINED_FUNCTION_498();
  sub_24DE22C50();
  if (!v15)
  {
    OUTLINED_FUNCTION_635(v16);
    OUTLINED_FUNCTION_166();
    sub_24DE22C30();
    OUTLINED_FUNCTION_565(2);
    OUTLINED_FUNCTION_408();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_629();
    sub_24DD7639C(v9, v10, v11, v12);
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
  }

  v13 = OUTLINED_FUNCTION_180();
  v14(v13);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_438();
  v7 = *(v6 + 20);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  sub_24DE22AD0();
  if (v7 == 1)
  {
    sub_24DE22CE0();
    if (v8)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_386();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v9 == 1)
  {
    goto LABEL_13;
  }

  sub_24DE22CE0();
  if (!v9)
  {
    sub_24DE22CE0();
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_13:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_653();
    return;
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_593();
  sub_24DE22AD0();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_653();

  sub_24DE22AD0();
}

uint64_t sub_24DDB2EBC(uint64_t a1)
{
  OUTLINED_FUNCTION_588(a1);
  v1(v3);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B30E0, &qword_24DE23488);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_153(v24);
  sub_24DDE56E8();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v28 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v28, v29, v30, v31);
  }

  else
  {
    OUTLINED_FUNCTION_1247();
    OUTLINED_FUNCTION_165();
    v32 = sub_24DE22BA0();
    v34 = v33;
    OUTLINED_FUNCTION_861(1);
    OUTLINED_FUNCTION_165();
    v64 = (sub_24DE22B80() >> 32) & 1;
    LOBYTE(v51[0]) = 2;
    OUTLINED_FUNCTION_165();
    v48 = sub_24DE22B40();
    v49 = v35;
    OUTLINED_FUNCTION_598();
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_196();
    sub_24DE22B70();
    v36 = OUTLINED_FUNCTION_117();
    v37(v36);
    v38 = v61;
    v47 = v60;
    v39 = v63;
    v40 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v40, v41, v42, v43);
    OUTLINED_FUNCTION_1270();
    v50[1] = v34;
    OUTLINED_FUNCTION_707();
    LODWORD(v50[2]) = v44;
    BYTE4(v50[2]) = v64;
    v50[3] = v48;
    v50[4] = v49;
    v50[5] = v60;
    v50[6] = v61;
    v45 = v62;
    v50[7] = v62;
    v50[8] = v63;
    memcpy(v26, v50, 0x48uLL);
    sub_24DDE573C(v50, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v51[0] = v32;
    v51[1] = v34;
    OUTLINED_FUNCTION_707();
    v52 = v46;
    v53 = v64;
    v54 = v48;
    v55 = v49;
    v56 = v47;
    v57 = v38;
    v58 = v45;
    v59 = v39;
    sub_24DDE5774(v51);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB31F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeCreate_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24DDB32F4()
{
  sub_24DDE57F4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB332C()
{
  sub_24DDE57F4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreate_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_645();
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3110, &qword_24DE234A8);
  OUTLINED_FUNCTION_27();
  v33 = v32;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_660();
  sub_24DDE57A4(v55);
  memcpy(v54, v55, 0x101uLL);
  OUTLINED_FUNCTION_153(v28);
  sub_24DDE57F4();
  OUTLINED_FUNCTION_658();
  OUTLINED_FUNCTION_617();
  sub_24DE22D30();
  if (v25)
  {
    OUTLINED_FUNCTION_612();
    OUTLINED_FUNCTION_491();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v49 = 0;
    v50 = a12;
    v51 = v26;
    v52 = v30;
    v53 = 0;
    v43 = OUTLINED_FUNCTION_362();
    v44 = v54;
  }

  else
  {
    OUTLINED_FUNCTION_526();
    v35 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v35);
    LOBYTE(v49) = v36;
    OUTLINED_FUNCTION_526();
    sub_24DE22B40();
    v47[0] = 2;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_721(&type metadata for Components.Schemas.Com_apple_gk_data_jackson_Alert);
    v37 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v37, v38, v39, v40);
    OUTLINED_FUNCTION_598();
    sub_24DDE5904();
    OUTLINED_FUNCTION_721(&type metadata for Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse);
    v41 = OUTLINED_FUNCTION_352();
    v42(v41);
    memcpy(v45, v48, 0x101uLL);
    memcpy(v46, v54, 0x101uLL);
    sub_24DDE8DAC(v46, &unk_27F1B30E8);
    OUTLINED_FUNCTION_650();
    memcpy(v30, v47, 0x139uLL);
    sub_24DDE5958(v47, &v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v49 = v26;
    v50 = a10;
    v51 = v33;
    v52 = v31;
    v53 = v28;
    v43 = OUTLINED_FUNCTION_362();
    v44 = v45;
  }

  memcpy(v43, v44, 0x101uLL);
  sub_24DDE58D4(&v49);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Request.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x632D657469766E69;
  }

  else
  {
    return 0x676E656C6C616863;
  }
}

uint64_t sub_24DDB37E0@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB3810()
{
  sub_24DDE5990();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB3848()
{
  sub_24DDE5990();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Request.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_281(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  OUTLINED_FUNCTION_1017();
  v10 = v8 == v9 && v6 == v7;
  if (v10 || (sub_24DE22CA0(), result = OUTLINED_FUNCTION_696(), (v12 & 1) != 0))
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

    return 0;
  }

  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_891();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3120, &qword_24DE234B0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_153(v6);
  sub_24DDE5990();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_139();
  sub_24DE22C50();
  if (!v5)
  {
    OUTLINED_FUNCTION_121();
    sub_24DE22BF0();
  }

  v8 = OUTLINED_FUNCTION_213();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Request.hash(into:)()
{
  OUTLINED_FUNCTION_987();
  sub_24DE22AD0();
  if (!v0)
  {
    return OUTLINED_FUNCTION_887();
  }

  OUTLINED_FUNCTION_878();
  OUTLINED_FUNCTION_409();

  return sub_24DE22AD0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Request.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  OUTLINED_FUNCTION_619();
  sub_24DE22CC0();
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

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3130, &qword_24DE234B8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE5990();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    OUTLINED_FUNCTION_234();
    sub_24DE22BA0();
    OUTLINED_FUNCTION_807();
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_435();
    sub_24DE22B40();
    OUTLINED_FUNCTION_1036();
    v15 = v12;
    v13 = OUTLINED_FUNCTION_379();
    v14(v13);
    *v8 = v10;
    v8[1] = v9;
    v8[2] = v15;
    v8[3] = v6;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

void sub_24DDB3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  OUTLINED_FUNCTION_619();
  sub_24DE22CC0();
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

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.init(rank:playerId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x692D726579616C70;
  }

  else
  {
    return 1802396018;
  }
}

uint64_t sub_24DDB3DC8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB3DF8()
{
  sub_24DDE59E4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB3E30()
{
  sub_24DDE59E4();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_267(a1);
  OUTLINED_FUNCTION_1282();
  if (v6)
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (v8)
    {
      return 0;
    }
  }

  if (v1 == v3 && v2 == v4)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_836(v1, v2);
  }
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3138, &qword_24DE234C0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_255(v7);
  sub_24DDE59E4();
  OUTLINED_FUNCTION_375(&type metadata for Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.CodingKeys);
  OUTLINED_FUNCTION_502();
  sub_24DE22C30();
  if (!v5)
  {
    OUTLINED_FUNCTION_121();
    sub_24DE22C50();
  }

  v9 = OUTLINED_FUNCTION_446();
  v10(v9);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.hash(into:)(uint64_t a1)
{
  if (*(v1 + 4) == 1)
  {
    OUTLINED_FUNCTION_887();
  }

  else
  {
    OUTLINED_FUNCTION_878();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_409();

  return sub_24DE22AD0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  OUTLINED_FUNCTION_796(v26);
  OUTLINED_FUNCTION_1035();
  if (v27)
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_409();
  sub_24DE22AD0();
  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse_ParticipantSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3148, &qword_24DE234C8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE59E4();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    OUTLINED_FUNCTION_336();
    sub_24DE22B80();
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_529();
    v9 = sub_24DE22BA0();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_230();
    v13(v12);
    OUTLINED_FUNCTION_975();
    *(v7 + 8) = v9;
    *(v7 + 16) = v11;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

void sub_24DDB424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  sub_24DE22CC0();
  OUTLINED_FUNCTION_1035();
  if (v26)
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  OUTLINED_FUNCTION_409();
  sub_24DE22AD0();
  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

uint64_t sub_24DDB4330()
{
  sub_24DDE5A38();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB4368()
{
  sub_24DDE5A38();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1176();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3150, &qword_24DE234D0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_1173();
  v7 = OUTLINED_FUNCTION_1070();
  OUTLINED_FUNCTION_255(v7);
  sub_24DDE5A38();
  OUTLINED_FUNCTION_375(&type metadata for Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.CodingKeys);
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_393();
  OUTLINED_FUNCTION_139();
  sub_24DE22BF0();
  if (!v5)
  {
    OUTLINED_FUNCTION_414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3160, &qword_24DE234D8);
    sub_24DDE5A8C();
    OUTLINED_FUNCTION_1063();
    OUTLINED_FUNCTION_179();
    sub_24DE22C70();
  }

  v8 = OUTLINED_FUNCTION_313();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3178, &qword_24DE234E0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE5A38();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    OUTLINED_FUNCTION_234();
    sub_24DE22B40();
    OUTLINED_FUNCTION_807();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3160, &qword_24DE234D8);
    OUTLINED_FUNCTION_414();
    sub_24DDE5B64();
    OUTLINED_FUNCTION_211();
    sub_24DE22BC0();
    v8 = OUTLINED_FUNCTION_106();
    v9(v8);
    OUTLINED_FUNCTION_881();

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_TestOption.overrideChallengeParticipantsLimit.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_TestOption.init(overrideParticipantChallengesLimit:overrideChallengeParticipantsLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 8) = a2;
  *(a3 + 12) = BYTE4(a2) & 1;
  return result;
}

uint64_t sub_24DDB4800()
{
  sub_24DDE5C3C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB4838()
{
  sub_24DDE5C3C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

void sub_24DDB4A40(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  OUTLINED_FUNCTION_1124(a1);
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.completedChallenges.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_24DDE5C90(v2, v3, v4);
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.completedChallenges.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_605(a1);
  sub_24DDE5CD4(v2[8], v2[9], v2[10]);
  result = v4;
  *(v2 + 4) = v4;
  v2[10] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.invites.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  *a1 = v1[12];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.invites.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_977(a1);

  result = v4;
  v1[6] = v4;
  v1[7].n128_u64[0] = v2;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.activeChallenges.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  *a1 = v1[15];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.activeChallenges.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_977(a1);

  result = v4;
  *(v1 + 120) = v4;
  *(v1 + 136) = v2;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.init(status:message:alert:completed:completedChallenges:wins:invites:activeChallenges:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, int a5@<W4>, __int128 *a6@<X5>, int a7@<W6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __n128 *a10)
{
  v14 = *(a6 + 2);
  v28 = *a8;
  v15 = *(a8 + 2);
  v26 = *a6;
  v27 = *a10;
  v16 = a10[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 4) = BYTE4(a1) & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v17 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v17, v18, v19, v20);
  v21 = *a4;
  *(a9 + 40) = a4[1];
  *(a9 + 24) = v21;
  *(a9 + 56) = a5;
  v22 = OUTLINED_FUNCTION_232();
  sub_24DDE5CD4(v22, v23, v24);
  *(a9 + 64) = v26;
  *(a9 + 80) = v14;
  *(a9 + 88) = a7;
  result = v27;
  *(a9 + 96) = v28;
  *(a9 + 112) = v15;
  *(a9 + 120) = v27;
  *(a9 + 136) = v16;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t sub_24DDB4D7C()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = 0x6574656C706D6F63;
      break;
    case 4:
      result = OUTLINED_FUNCTION_559(17);
      break;
    case 5:
      result = 1936615799;
      break;
    case 6:
      result = 0x73657469766E69;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDB4ED0@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB4F04()
{
  sub_24DDE5D18();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB4F3C()
{
  sub_24DDE5D18();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_267(a1);
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  HIDWORD(v165) = *(v2 + 56);
  v8 = *(v2 + 64);
  v167 = *(v2 + 72);
  v166 = *(v2 + 80);
  v9 = *(v2 + 88);
  v10 = *(v2 + 96);
  v11 = *(v2 + 104);
  v12 = *(v2 + 112);
  v13 = *(v2 + 120);
  v14 = *(v2 + 128);
  v160 = *(v2 + 136);
  v15 = *(v3 + 16);
  v16 = *(v3 + 32);
  LODWORD(v165) = *(v3 + 56);
  v17 = *(v3 + 64);
  v164 = *(v3 + 72);
  v18 = *(v3 + 80);
  HIDWORD(v163) = *(v3 + 88);
  v20 = *(v3 + 96);
  v19 = *(v3 + 104);
  v21 = *(v3 + 112);
  v161 = *(v3 + 120);
  v162 = *(v3 + 128);
  v22 = *(v3 + 136);
  if (v23)
  {
    if (!*(v3 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v2 == *v3)
    {
      v24 = *(v3 + 4);
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v15)
    {
      return 0;
    }

    if (v1 != *(v3 + 8) || v4 != v15)
    {
      v152 = *(v3 + 112);
      v154 = v12;
      v144 = *(v3 + 136);
      v146 = v14;
      v140 = v13;
      v26 = v8;
      v148 = v10;
      v150 = *(v3 + 104);
      v27 = v11;
      v157 = v9;
      v158 = *(v3 + 64);
      v28 = sub_24DE22CA0();
      v17 = v158;
      v9 = v157;
      v19 = v150;
      v21 = v152;
      v22 = v144;
      v11 = v27;
      v14 = v146;
      v10 = v148;
      v8 = v26;
      v13 = v140;
      v12 = v154;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5 == 1)
  {
    v137 = v11;
    v138 = v18;
    v159 = v17;
    HIDWORD(v156) = v9;
    v151 = v19;
    v153 = v21;
    v147 = v14;
    v149 = v10;
    v139 = v8;
    v155 = v12;
    v145 = v22;
    v29 = OUTLINED_FUNCTION_624();
    sub_24DD7639C(v29, v30, v6, v7);
    if (v16 == 1)
    {
      v31 = OUTLINED_FUNCTION_299();
      sub_24DD7639C(v31, v32, v33, v34);
      v35 = OUTLINED_FUNCTION_624();
      sub_24DD763E4(v35, v36, v6, v7);
      if (HIDWORD(v165) != v165)
      {
        return 0;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_642();
    OUTLINED_FUNCTION_410();
    sub_24DD7639C(v57, v58, v59, v60);
LABEL_24:
    v61 = OUTLINED_FUNCTION_294();
    sub_24DD763E4(v61, v62, v63, v64);
    OUTLINED_FUNCTION_642();
    OUTLINED_FUNCTION_410();
    sub_24DD763E4(v65, v66, v67, v68);
    return 0;
  }

  if (v16 == 1)
  {
    v45 = OUTLINED_FUNCTION_294();
    sub_24DD7639C(v45, v46, v47, v48);
    v49 = OUTLINED_FUNCTION_299();
    sub_24DD7639C(v49, v50, v51, v52);
    v53 = OUTLINED_FUNCTION_294();
    sub_24DD7639C(v53, v54, v55, v56);

    goto LABEL_24;
  }

  v137 = v11;
  v138 = v18;
  v159 = v17;
  HIDWORD(v156) = v9;
  v151 = v19;
  v153 = v21;
  v147 = v14;
  v149 = v10;
  v139 = v8;
  v155 = v12;
  v145 = v22;
  v142 = OUTLINED_FUNCTION_1172();
  v69 = OUTLINED_FUNCTION_294();
  sub_24DD7639C(v69, v70, v71, v72);
  OUTLINED_FUNCTION_642();
  OUTLINED_FUNCTION_410();
  sub_24DD7639C(v73, v74, v75, v76);
  v77 = OUTLINED_FUNCTION_294();
  sub_24DD7639C(v77, v78, v79, v80);

  v81 = OUTLINED_FUNCTION_294();
  sub_24DD763E4(v81, v82, v83, v84);
  result = 0;
  if ((v142 & 1) == 0 || HIDWORD(v165) != v165)
  {
    return result;
  }

LABEL_29:
  v143 = v20;
  if (!v166)
  {
    v85 = v139;
    sub_24DDE5C90(v139, v167, 0);
    if (!v138)
    {
      sub_24DDE5C90(v159, v164, 0);
      sub_24DDE5CD4(v139, v167, 0);
      v119 = v20;
      if (HIDWORD(v156) != HIDWORD(v163))
      {
        return 0;
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_454();
    sub_24DDE5C90(v93, v94, v95);
LABEL_42:
    sub_24DDE5CD4(v85, v167, v166);
    OUTLINED_FUNCTION_454();
    sub_24DDE5CD4(v102, v103, v104);
    return 0;
  }

  v85 = v139;
  if (!v138)
  {
    OUTLINED_FUNCTION_533();
    sub_24DDE5C90(v96, v97, v98);
    sub_24DDE5C90(v159, v164, 0);
    OUTLINED_FUNCTION_533();
    sub_24DDE5C90(v99, v100, v101);

    goto LABEL_42;
  }

  v141 = v13;
  if (v167)
  {
    if (!v164)
    {
      sub_24DDE5C90(v139, v167, v166);
      v120 = OUTLINED_FUNCTION_1196();
      sub_24DDE5C90(v120, v121, v138);
      v122 = OUTLINED_FUNCTION_729();
      sub_24DDE5C90(v122, v123, v166);
      goto LABEL_50;
    }

    if (v139 != v159 || v167 != v164)
    {
      OUTLINED_FUNCTION_812();
      result = sub_24DE22CA0();
      if ((result & 1) == 0)
      {
        OUTLINED_FUNCTION_1295(result, v38, v39, v40, v41, v42, v43, v44, v137, v138, v139, v13, v20, v145, v147, v149, v151, v153, v155, v156, v159, v160, v161, v162, v163, v164, v165, v166, v167);
        OUTLINED_FUNCTION_454();
        sub_24DDE5C90(v87, v88, v89);
        v90 = OUTLINED_FUNCTION_620();
LABEL_45:
        sub_24DDE5C90(v90, v91, v92);
LABEL_50:
        v118 = 0;
        goto LABEL_51;
      }
    }
  }

  else if (v164)
  {
    v105 = OUTLINED_FUNCTION_1261();
    sub_24DDE5C90(v105, v106, v166);
    OUTLINED_FUNCTION_454();
    sub_24DDE5C90(v107, v108, v109);
    v90 = OUTLINED_FUNCTION_1261();
    v92 = v166;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_1295(result, v38, v39, v40, v41, v42, v43, v44, v137, v138, v139, v13, v20, v145, v147, v149, v151, v153, v155, v156, v159, v160, v161, v162, v163, v164, v165, v166, v167);
  OUTLINED_FUNCTION_454();
  sub_24DDE5C90(v110, v111, v112);
  v113 = OUTLINED_FUNCTION_620();
  sub_24DDE5C90(v113, v114, v115);
  v116 = OUTLINED_FUNCTION_546();
  v118 = sub_24DD86C2C(v116, v117);
LABEL_51:
  OUTLINED_FUNCTION_454();
  sub_24DDE5CD4(v124, v125, v126);

  v127 = OUTLINED_FUNCTION_674();
  sub_24DDE5CD4(v127, v128, v166);
  result = 0;
  if (v118)
  {
    v13 = v141;
    v119 = v143;
    if (HIDWORD(v156) == HIDWORD(v163))
    {
LABEL_53:
      if (v137)
      {
        v129 = v155;
        if (!v151)
        {
          return 0;
        }

        if (v149 != v119 || v137 != v151)
        {
          v131 = sub_24DE22CA0();
          v129 = v155;
          if ((v131 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v129 = v155;
        if (v151)
        {
          return 0;
        }
      }

      v132 = OUTLINED_FUNCTION_1076(v129);
      if (sub_24DD86A1C(v132, v133))
      {
        if (v147)
        {
          if (!v162)
          {
            return 0;
          }

          if (v13 != v161 || v147 != v162)
          {
            OUTLINED_FUNCTION_615();
            if ((sub_24DE22CA0() & 1) == 0)
            {
              return 0;
            }
          }

LABEL_72:

          v136 = sub_24DD8690C(v135, v145);

          return (v136 & 1) != 0;
        }

        if (!v162)
        {
          goto LABEL_72;
        }
      }

      return 0;
    }
  }

  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B31A8, &qword_24DE234F8);
  OUTLINED_FUNCTION_27();
  v11 = v10;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_390();
  v23 = v5[8];
  v24 = v5[9];
  v25 = v5[10];
  v13 = v9;
  v15 = v14;
  OUTLINED_FUNCTION_250(v13);
  sub_24DDE5D18();
  OUTLINED_FUNCTION_851();
  sub_24DE22D50();
  sub_24DE22C30();
  if (v6)
  {
    v22 = *(v11 + 8);
    v20 = v7;
    v21 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_456(1);
    sub_24DE22BF0();
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_630();
    sub_24DD7639C(v16, v17, v18, v19);
    sub_24DD87138();
    OUTLINED_FUNCTION_542();
    OUTLINED_FUNCTION_774();
    sub_24DE22C20();
    OUTLINED_FUNCTION_967();
    OUTLINED_FUNCTION_639(3);
    OUTLINED_FUNCTION_774();
    sub_24DE22C80();
    sub_24DDE5C90(v23, v24, v25);
    sub_24DDE5D6C();
    OUTLINED_FUNCTION_542();
    OUTLINED_FUNCTION_774();
    sub_24DE22C20();
    sub_24DDE5CD4(v23, v24, v25);
    OUTLINED_FUNCTION_639(5);
    OUTLINED_FUNCTION_774();
    sub_24DE22C80();
    sub_24DDE5DC0();
    OUTLINED_FUNCTION_757();

    OUTLINED_FUNCTION_542();
    sub_24DE22C70();

    sub_24DDE5E14();
    OUTLINED_FUNCTION_757();

    OUTLINED_FUNCTION_542();
    sub_24DE22C70();

    v20 = OUTLINED_FUNCTION_935();
  }

  v22(v20, v21);
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_192();
  v4 = v3[2];
  v5 = v3[4];
  v18 = v3[6];
  v19 = v3[9];
  v6 = v3[10];
  v7 = v3[13];
  v8 = v3[16];
  if (v9 != 1)
  {
    OUTLINED_FUNCTION_1163();
    sub_24DE22CF0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24DE22CE0();
    goto LABEL_6;
  }

  sub_24DE22CE0();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_781();
  sub_24DE22AD0();
LABEL_6:
  if (v5 == 1)
  {
    goto LABEL_11;
  }

  sub_24DE22CE0();
  sub_24DE22CE0();
  if (v5)
  {
    OUTLINED_FUNCTION_714();
    sub_24DE22AD0();
  }

  if (!v18)
  {
LABEL_11:
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1073();
    sub_24DE22AD0();
  }

  sub_24DE22CF0();
  if (v6)
  {
    sub_24DE22CE0();
    sub_24DE22CE0();
    if (v19)
    {
      OUTLINED_FUNCTION_1074();
      sub_24DE22AD0();
    }

    v10 = OUTLINED_FUNCTION_593();
    sub_24DDE0ED0(v10, v11);
  }

  else
  {
    sub_24DE22CE0();
  }

  sub_24DE22CF0();
  sub_24DE22CE0();
  if (v7)
  {
    OUTLINED_FUNCTION_822();
    sub_24DE22AD0();
  }

  v12 = OUTLINED_FUNCTION_386();
  sub_24DDE1AAC(v12, v13);
  sub_24DE22CE0();
  if (v8)
  {
    OUTLINED_FUNCTION_868();
    sub_24DE22AD0();
  }

  OUTLINED_FUNCTION_638();
  OUTLINED_FUNCTION_586();

  return sub_24DDE19FC(v14, v15);
}

uint64_t sub_24DDB5AC4(uint64_t a1)
{
  OUTLINED_FUNCTION_588(a1);
  v1(v3);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_469();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B31D0, &qword_24DE23500);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_153(v24);
  sub_24DDE5D18();
  OUTLINED_FUNCTION_658();
  OUTLINED_FUNCTION_617();
  sub_24DE22D30();
  if (v25)
  {
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_929();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);

    OUTLINED_FUNCTION_616();
    OUTLINED_FUNCTION_907();
    sub_24DD763E4(v31, v32, v33, v34);
    OUTLINED_FUNCTION_454();
    sub_24DDE5CD4(v35, v36, v37);
  }

  else
  {
    OUTLINED_FUNCTION_534();
    v28 = sub_24DE22B80();
    v29 = v28;
    OUTLINED_FUNCTION_212(v28);
    LOBYTE(v68) = v30;
    OUTLINED_FUNCTION_534();
    v38 = sub_24DE22B40();
    v63 = v39;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    v60 = v38;
    v66 = v29;
    v40 = v68;
    v41 = v69;
    v61 = v70;
    v62 = v71;
    v42 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v42, v43, v44, v45);
    LOBYTE(v68) = 3;
    OUTLINED_FUNCTION_534();
    v89 = sub_24DE22BD0();
    sub_24DDE5E68();
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    v57 = v26;
    v46 = v69;
    v58 = v70;
    v59 = v68;
    v47 = OUTLINED_FUNCTION_232();
    sub_24DDE5CD4(v47, v48, v49);
    LOBYTE(v68) = 5;
    OUTLINED_FUNCTION_534();
    v56 = sub_24DE22BD0();
    LOBYTE(v67[0]) = 6;
    sub_24DDE5EBC();
    OUTLINED_FUNCTION_224();
    sub_24DE22BC0();
    v55 = v68;
    v64 = v70;
    v65 = v69;
    sub_24DDE5F10();
    OUTLINED_FUNCTION_224();
    sub_24DE22BC0();
    v50 = OUTLINED_FUNCTION_226();
    v51(v50);
    v53 = v87;
    v54 = v86;
    v52 = v88;
    LODWORD(v67[0]) = v66;
    BYTE4(v67[0]) = a11;
    v67[1] = v60;
    v67[2] = v63;
    v67[3] = v40;
    v67[4] = v41;
    v67[5] = v61;
    v67[6] = v62;
    LODWORD(v67[7]) = v89;
    v67[8] = v59;
    v67[9] = v46;
    v67[10] = v58;
    LODWORD(v67[11]) = v56;
    v67[12] = v55;
    v67[13] = v65;
    v67[14] = v64;
    v67[15] = v86;
    v67[16] = v87;
    v67[17] = v88;
    memcpy(v57, v67, 0x90uLL);
    sub_24DDE5F64(v67, &v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    LODWORD(v68) = v66;
    BYTE4(v68) = a11;
    v69 = v60;
    v70 = v63;
    v71 = v40;
    v72 = v41;
    v73 = v61;
    v74 = v62;
    v75 = v89;
    v76 = v59;
    v77 = v46;
    v78 = v58;
    v79 = v56;
    v80 = v55;
    v81 = v65;
    v82 = v64;
    v83 = v54;
    v84 = v53;
    v85 = v52;
    sub_24DDE5F9C(&v68);
  }

  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB5FE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.challengeId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 56) = v3;
  *(v2 + 64) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.challengeVendorId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 72) = v3;
  *(v2 + 80) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.bundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 88) = v3;
  *(v2 + 96) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.bundleIds.setter()
{
  result = OUTLINED_FUNCTION_1312();
  *(v1 + 104) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.creatorPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 152) = v3;
  *(v2 + 160) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.durationCode.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 168) = v3;
  *(v2 + 176) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.leaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 184) = v3;
  *(v2 + 192) = v1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetailResponse::StatePayload_optional sub_24DDB64B8@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetailResponse::StatePayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.StatePayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.cardText.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 224) = v3;
  *(v2 + 232) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.participants.setter(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.invitedPlayers.setter(uint64_t a1)
{

  *(v1 + 248) = a1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_755();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_1325();
  v4 = 0;
  v5 = 2;
  switch(v2)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v4 = 1;
LABEL_3:
      v5 = v4;
      break;
    case 2:
      break;
    case 3:
      v5 = 3;
      break;
    case 4:
      v5 = 4;
      break;
    case 5:
      v5 = 5;
      break;
    case 6:
      v5 = 6;
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    default:
      v5 = 20;
      break;
  }

  *v1 = v5;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_16();
      break;
    case 2:
      OUTLINED_FUNCTION_32();
      break;
    case 3:
      OUTLINED_FUNCTION_130();
      break;
    case 4:
      OUTLINED_FUNCTION_561(17);
      break;
    case 5:
      OUTLINED_FUNCTION_151();
      break;
    case 6:
      OUTLINED_FUNCTION_65();
      break;
    case 7:
      OUTLINED_FUNCTION_102();
      break;
    case 8:
      OUTLINED_FUNCTION_103();
      break;
    case 9:
      OUTLINED_FUNCTION_761(17);
      break;
    case 0xA:
      OUTLINED_FUNCTION_249();
      break;
    case 0xB:
      OUTLINED_FUNCTION_155();
      break;
    case 0xC:
      OUTLINED_FUNCTION_263();
      break;
    case 0xD:
      OUTLINED_FUNCTION_34();
      break;
    case 0xE:
      OUTLINED_FUNCTION_829();
      break;
    case 0xF:
      OUTLINED_FUNCTION_759(17);
      break;
    case 0x10:
      OUTLINED_FUNCTION_664();
      break;
    case 0x11:
      OUTLINED_FUNCTION_663();
      break;
    case 0x12:
      OUTLINED_FUNCTION_649();
      break;
    default:
      return;
  }
}

void sub_24DDB6B78(uint64_t *a1@<X8>)
{
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DDB6BAC()
{
  sub_24DDE5FCC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB6BE4()
{
  sub_24DDE5FCC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_1219(v6);
  v8 = v7[5];
  v163 = v7[4];
  v9 = v7[6];
  v161 = v7[7];
  v160 = v7[8];
  v153 = v7[9];
  v157 = v7[10];
  v155 = v7[11];
  OUTLINED_FUNCTION_591();
  v138 = *(v12 + 160);
  v15 = *(v12 + 176);
  v14 = *(v12 + 184);
  v16 = *(v12 + 208);
  v130 = *(v12 + 216);
  v17 = *(v12 + 232);
  v129 = *(v12 + 224);
  v18 = *(v13 + 16);
  v19 = *(v13 + 24);
  v20 = *(v13 + 32);
  v21 = *(v13 + 40);
  v162 = *(v13 + 48);
  v159 = *(v13 + 56);
  v158 = *(v13 + 64);
  v152 = *(v13 + 72);
  v156 = *(v13 + 80);
  v154 = *(v13 + 96);
  v150 = *(v13 + 104);
  v146 = *(v13 + 112);
  v147 = *(v13 + 120);
  v140 = *(v13 + 128);
  v144 = *(v13 + 136);
  v134 = *(v13 + 140);
  v143 = *(v13 + 144);
  v136 = *(v13 + 152);
  v135 = *(v13 + 160);
  v132 = *(v13 + 168);
  v133 = *(v13 + 176);
  v22 = *(v13 + 192);
  v131 = *(v13 + 184);
  v23 = *(v13 + 200);
  v24 = *(v13 + 208);
  v25 = *(v13 + 216);
  v26 = *(v13 + 224);
  v128 = *(v13 + 232);
  if (v27)
  {
    if (!*(v13 + 4))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v12 == *v13)
    {
      v28 = *(v13 + 4);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_24;
    }
  }

  if (v11)
  {
    if (!v18)
    {
      goto LABEL_24;
    }

    v29 = v10 == *(v13 + 8) && v11 == v18;
    if (!v29)
    {
      v124 = *(v13 + 216);
      v120 = v17;
      v30 = v16;
      v115 = v14;
      v31 = *(v13 + 224);
      v122 = *(v13 + 208);
      v32 = *(v13 + 200);
      v33 = sub_24DE22CA0();
      v23 = v32;
      v24 = v122;
      v25 = v124;
      v26 = v31;
      v14 = v115;
      v16 = v30;
      v17 = v120;
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_24;
  }

  v121 = v23;
  if (v163 == 1)
  {
    v123 = v24;
    v125 = v25;
    v113 = v26;
    v114 = v16;
    OUTLINED_FUNCTION_572();
    sub_24DD7639C(v34, v35, v36, v9);
    if (v20 == 1)
    {
      v37 = OUTLINED_FUNCTION_545();
      sub_24DD7639C(v37, v38, v21, v162);
      OUTLINED_FUNCTION_572();
      sub_24DD763E4(v39, v40, v41, v9);
      goto LABEL_26;
    }

    sub_24DD7639C(v19, v20, v21, v162);
LABEL_23:
    v52 = OUTLINED_FUNCTION_284();
    sub_24DD763E4(v52, v53, v54, v55);
    OUTLINED_FUNCTION_732();
    OUTLINED_FUNCTION_553();
    sub_24DD763E4(v56, v57, v58, v59);
    goto LABEL_24;
  }

  if (v20 == 1)
  {
    v42 = OUTLINED_FUNCTION_284();
    sub_24DD7639C(v42, v43, v44, v45);
    v46 = OUTLINED_FUNCTION_545();
    sub_24DD7639C(v46, v47, v21, v162);
    v48 = OUTLINED_FUNCTION_284();
    sub_24DD7639C(v48, v49, v50, v51);

    goto LABEL_23;
  }

  v123 = v24;
  v125 = v25;
  v113 = v26;
  v114 = v16;
  v117 = OUTLINED_FUNCTION_1172();
  v60 = OUTLINED_FUNCTION_284();
  sub_24DD7639C(v60, v61, v62, v63);
  OUTLINED_FUNCTION_789();
  sub_24DD7639C(v64, v65, v66, v67);
  v68 = OUTLINED_FUNCTION_284();
  sub_24DD7639C(v68, v69, v70, v71);

  v72 = OUTLINED_FUNCTION_284();
  sub_24DD763E4(v72, v73, v74, v75);
  if ((v117 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v76 = v161 == v159 && v160 == v158;
  if (!v76 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v157)
  {
    OUTLINED_FUNCTION_922();
    if (!v156)
    {
      goto LABEL_24;
    }

    if (v153 != v152 || v78 != v156)
    {
      OUTLINED_FUNCTION_766(v153, v78);
      OUTLINED_FUNCTION_480();
      if ((v85 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_922();
    if (v156)
    {
      goto LABEL_24;
    }
  }

  if (v155 != v8 || v77 != v154)
  {
    OUTLINED_FUNCTION_766(v155, v77);
    OUTLINED_FUNCTION_480();
    if ((v87 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v151)
  {
    if (!v150)
    {
      goto LABEL_24;
    }

    v118 = v22;
    v126 = v82;
    v127 = v80;
    v88 = v14;
    v89 = v79;
    sub_24DD85994(v151, v150);
    OUTLINED_FUNCTION_696();
    if ((v90 & 1) == 0)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_1228();
    v79 = v89;
    v14 = v88;
    v82 = v126;
    v80 = v127;
    v81 = v121;
    v83 = v15;
    v22 = v118;
    if (!v29)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v150)
    {
      goto LABEL_24;
    }

    if (v148 != v146 || v149 != v147)
    {
      goto LABEL_24;
    }
  }

  if (v145)
  {
    if (!v144)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v92 = v144;
    if (v141 != v140)
    {
      v92 = 1;
    }

    if (v92)
    {
      goto LABEL_24;
    }
  }

  if (v142)
  {
    if (!v143)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v93 = v143;
    if (v137 != v134)
    {
      v93 = 1;
    }

    if (v93)
    {
      goto LABEL_24;
    }
  }

  if (v139 != v136 || v138 != v135)
  {
    OUTLINED_FUNCTION_766(v139, v138);
    OUTLINED_FUNCTION_480();
    if ((v95 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v83)
  {
    if (!v133)
    {
      goto LABEL_24;
    }

    if (v82 != v132 || v83 != v133)
    {
      v116 = v14;
      v119 = v22;
      v97 = v79;
      v98 = v80;
      v99 = sub_24DE22CA0();
      v81 = v121;
      v80 = v98;
      v79 = v97;
      v14 = v116;
      v22 = v119;
      if ((v99 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v133)
  {
    goto LABEL_24;
  }

  if (v80)
  {
    if (!v22)
    {
      goto LABEL_24;
    }

    if (v14 != v131 || v80 != v22)
    {
      OUTLINED_FUNCTION_947();
      v102 = v101;
      v104 = v103;
      v105 = sub_24DE22CA0();
      v81 = v104;
      v79 = v102;
      if ((v105 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_24;
  }

  if ((sub_24DD7B63C(v79, v81) & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v130)
  {
    v106 = v17;
    if (!v125)
    {
      goto LABEL_24;
    }

LABEL_98:
    if (v106)
    {
      if (!v128)
      {
        goto LABEL_24;
      }

      v108 = v129 == v113 && v106 == v128;
      if (!v108 && (sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v128)
    {
      goto LABEL_24;
    }

    v109 = OUTLINED_FUNCTION_637();
    if (sub_24DD85DD4(v109, v110))
    {
      v111 = OUTLINED_FUNCTION_794();
      sub_24DD85FA8(v111, v112);
    }

    goto LABEL_24;
  }

  v106 = v17;
  v107 = v125;
  if (v114 != v123)
  {
    v107 = 1;
  }

  if ((v107 & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_24:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1256();
  *(v6 - 128) = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B31F0, &qword_24DE23508);
  OUTLINED_FUNCTION_24();
  v10 = v9;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_431();
  *(v6 - 356) = v12;
  OUTLINED_FUNCTION_153(v8);
  sub_24DDE5FCC();
  OUTLINED_FUNCTION_501();
  sub_24DE22D50();
  OUTLINED_FUNCTION_487();
  v13 = *(v6 - 128);
  sub_24DE22C30();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_393();
  }

  else
  {
    v17 = *(v6 - 176);
    v16 = *(v6 - 168);
    v18 = *(v6 - 160);
    v19 = *(v6 - 152);
    *(v6 - 128) = v10;
    OUTLINED_FUNCTION_456(1);
    OUTLINED_FUNCTION_303();
    sub_24DE22BF0();
    *(v6 - 120) = v19;
    *(v6 - 112) = v18;
    *(v6 - 104) = v16;
    *(v6 - 96) = v17;
    OUTLINED_FUNCTION_554();
    sub_24DD7639C(v19, v18, v16, v17);
    sub_24DD87138();
    OUTLINED_FUNCTION_542();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    OUTLINED_FUNCTION_967();
    OUTLINED_FUNCTION_456(3);
    OUTLINED_FUNCTION_303();
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(4);
    OUTLINED_FUNCTION_303();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(5);
    OUTLINED_FUNCTION_303();
    sub_24DE22C50();
    OUTLINED_FUNCTION_516();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v20);
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    OUTLINED_FUNCTION_505();
    OUTLINED_FUNCTION_416();
    sub_24DE22C90();
    OUTLINED_FUNCTION_504();
    OUTLINED_FUNCTION_416();
    sub_24DE22C90();
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_303();
    sub_24DE22C40();
    *(v6 - 120) = 10;
    OUTLINED_FUNCTION_481(v6 - 12);
    OUTLINED_FUNCTION_479(v21);
    OUTLINED_FUNCTION_416();
    sub_24DE22C30();
    OUTLINED_FUNCTION_456(11);
    OUTLINED_FUNCTION_1053();
    OUTLINED_FUNCTION_169();
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(12);
    OUTLINED_FUNCTION_169();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(13);
    OUTLINED_FUNCTION_169();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1022();
    sub_24DDE6020();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_456(15);
    OUTLINED_FUNCTION_415();
    sub_24DE22C40();
    OUTLINED_FUNCTION_456(16);
    OUTLINED_FUNCTION_988();
    OUTLINED_FUNCTION_169();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_860(v6 - 120);
    *(v6 - 68) = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3208, &qword_24DE23510);
    sub_24DDE6074();
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_860(v6 - 112);
    *(v6 - 68) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3220, &qword_24DE23518);
    sub_24DDE614C();
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_639(19);
    OUTLINED_FUNCTION_415();
    sub_24DE22C60();
    OUTLINED_FUNCTION_859();
    v14 = OUTLINED_FUNCTION_380();
  }

  v15(v14);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_192();
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v14 = *(v2 + 104);
  v17 = *(v2 + 112);
  v18 = *(v2 + 120);
  v12 = *(v2 + 128);
  v19 = *(v2 + 136);
  v20 = *(v2 + 144);
  v7 = *(v2 + 176);
  v8 = *(v2 + 192);
  v13 = *(v2 + 208);
  v21 = *(v2 + 216);
  v15 = *(v2 + 240);
  v16 = *(v2 + 248);
  v22 = *(v2 + 232);
  if (v9 == 1)
  {
    sub_24DE22CE0();
    if (v3)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_781();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v4 != 1)
  {
    sub_24DE22CE0();
    if (v4)
    {
      sub_24DE22CE0();
      OUTLINED_FUNCTION_731();
      sub_24DE22AD0();
      if (v5)
      {
LABEL_9:
        sub_24DE22CE0();
        OUTLINED_FUNCTION_714();
        sub_24DE22AD0();
        goto LABEL_12;
      }
    }

    else
    {
      sub_24DE22CE0();
      if (v5)
      {
        goto LABEL_9;
      }
    }
  }

  sub_24DE22CE0();
LABEL_12:
  OUTLINED_FUNCTION_867();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v6)
  {
    sub_24DE22AD0();
  }

  OUTLINED_FUNCTION_464();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v14)
  {
    v10 = OUTLINED_FUNCTION_464();
    sub_24DDE0DB4(v10, v11);
  }

  MEMORY[0x253039750](v17);
  MEMORY[0x253039750](v18);
  sub_24DE22CE0();
  if (!v19)
  {
    MEMORY[0x253039750](v12);
  }

  sub_24DE22CE0();
  if (!v20)
  {
    sub_24DE22CF0();
  }

  sub_24DE22AD0();
  if (v7)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_868();
    sub_24DE22AD0();
    if (v8)
    {
LABEL_22:
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_25;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v8)
    {
      goto LABEL_22;
    }
  }

  sub_24DE22CE0();
LABEL_25:
  sub_24DE22AD0();

  sub_24DE22CE0();
  if (!v21)
  {
    MEMORY[0x253039750](v13);
  }

  sub_24DE22CE0();
  if (v22)
  {
    sub_24DE22AD0();
  }

  sub_24DDE12E4(v1, v15);
  sub_24DDE1100(v1, v16);
  sub_24DE22CE0();
  OUTLINED_FUNCTION_1279();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.hash(into:)(v2);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3238, &qword_24DE23520);
  OUTLINED_FUNCTION_18();
  v9 = v8;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  v11 = v5[3];
  v73 = v5;
  OUTLINED_FUNCTION_173(v5);
  sub_24DDE5FCC();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_159();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);

    OUTLINED_FUNCTION_594();
    OUTLINED_FUNCTION_580();
    sub_24DD763E4(v15, v16, v17, v18);

    if (v11)
    {
    }

    if (v9)
    {
    }

    if (v67)
    {
    }

    if (v69)
    {
    }
  }

  else
  {
    LOBYTE(v78) = 0;
    OUTLINED_FUNCTION_435();
    v12 = sub_24DE22B80();
    v13 = v12;
    OUTLINED_FUNCTION_396(v12);
    OUTLINED_FUNCTION_83(v14);
    v19 = sub_24DE22B40();
    v61 = v20;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_1046();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v68 = v19;
    v70 = v13;
    v59 = v79;
    v60 = v78;
    v21 = v80;
    v22 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v22, v23, v24, v25);
    OUTLINED_FUNCTION_83(3);
    v26 = sub_24DE22BA0();
    v66 = v27;
    OUTLINED_FUNCTION_83(4);
    v57 = sub_24DE22B40();
    v58 = v26;
    v74 = v28;
    OUTLINED_FUNCTION_83(5);
    v56 = sub_24DE22BA0();
    v65 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_1085();
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v30);
    OUTLINED_FUNCTION_1046();
    OUTLINED_FUNCTION_215();
    sub_24DE22B70();
    v72 = v78;
    OUTLINED_FUNCTION_83(7);
    v31 = sub_24DE22BE0();
    v55 = v81;
    OUTLINED_FUNCTION_83(8);
    v54 = sub_24DE22BE0();
    OUTLINED_FUNCTION_83(9);
    v32 = sub_24DE22B90();
    OUTLINED_FUNCTION_666(v32, v33);
    OUTLINED_FUNCTION_83(10);
    v53 = sub_24DE22B80();
    OUTLINED_FUNCTION_1181(v53);
    OUTLINED_FUNCTION_83(11);
    v52 = sub_24DE22BA0();
    v64 = v34;
    OUTLINED_FUNCTION_83(12);
    v51 = sub_24DE22B40();
    v76 = v35;
    OUTLINED_FUNCTION_83(13);
    v50 = sub_24DE22B40();
    v75 = v36;
    sub_24DDE6224();
    OUTLINED_FUNCTION_1046();
    sub_24DE22BC0();
    OUTLINED_FUNCTION_83(15);
    v49 = sub_24DE22B90();
    OUTLINED_FUNCTION_1189(v49, v37);
    OUTLINED_FUNCTION_83(16);
    v48 = sub_24DE22B40();
    v71 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3208, &qword_24DE23510);
    sub_24DDE6278();
    OUTLINED_FUNCTION_1046();
    OUTLINED_FUNCTION_215();
    sub_24DE22BC0();
    v63 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3220, &qword_24DE23518);
    LOBYTE(v77[0]) = 18;
    sub_24DDE6350();
    OUTLINED_FUNCTION_1046();
    OUTLINED_FUNCTION_215();
    sub_24DE22BC0();
    v62 = v78;
    v114 = 19;
    OUTLINED_FUNCTION_435();
    v39 = sub_24DE22BB0();
    v40 = OUTLINED_FUNCTION_106();
    v41(v40);
    LODWORD(v77[0]) = v70;
    v45 = v39 & 1;
    v46 = v125;
    BYTE4(v77[0]) = v125;
    *(v77 + 5) = v123;
    HIBYTE(v77[0]) = v124;
    v77[1] = v68;
    v77[2] = v61;
    v77[3] = v60;
    v77[4] = v59;
    v77[5] = v21;
    v77[6] = v55;
    v77[7] = v58;
    v77[8] = v66;
    v77[9] = v57;
    v77[10] = v74;
    v77[11] = v56;
    v77[12] = v65;
    v77[13] = v72;
    v77[14] = v31;
    v77[15] = v54;
    v77[16] = v32;
    v47 = v122;
    LOBYTE(v77[17]) = v122;
    *(&v77[17] + 1) = v120;
    BYTE3(v77[17]) = v121;
    HIDWORD(v77[17]) = v53;
    *(&v77[18] + 1) = *v118;
    HIDWORD(v77[25]) = *&v117[3];
    *(&v77[25] + 1) = *v117;
    HIDWORD(v77[27]) = *&v115[3];
    *(&v77[27] + 1) = *v115;
    v42 = v119;
    LOBYTE(v77[18]) = v119;
    HIDWORD(v77[18]) = *&v118[3];
    v77[19] = v52;
    v77[20] = v64;
    v77[21] = v51;
    v77[22] = v76;
    v77[23] = v50;
    v77[24] = v75;
    LOBYTE(v77[25]) = 0;
    v77[26] = v49;
    v44 = v116;
    LOBYTE(v77[27]) = v116;
    v77[28] = v48;
    v77[29] = v71;
    v77[30] = v63;
    v77[31] = v62;
    LOBYTE(v77[32]) = v45;
    memcpy(v7, v77, 0x101uLL);
    sub_24DDE589C(v77, &v78);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    LODWORD(v78) = v70;
    BYTE4(v78) = v46;
    v79 = v68;
    v80 = v61;
    v81 = v60;
    v82 = v59;
    *(&v78 + 5) = v123;
    HIBYTE(v78) = v124;
    v83 = v21;
    v84 = v55;
    OUTLINED_FUNCTION_979(v58);
    v85 = v57;
    v86 = v74;
    v87 = v56;
    v88 = v65;
    v89 = v72;
    v90 = v31;
    v91 = v54;
    v92 = v32;
    v93 = v47;
    *(v43 + 137) = v120;
    v94 = v121;
    v95 = v53;
    v96 = v42;
    *(v43 + 145) = *v118;
    v97 = *&v118[3];
    v98 = v52;
    v99 = v64;
    v100 = v51;
    v101 = v76;
    v102 = v50;
    v103 = v75;
    v104 = 0;
    *&v105[3] = *&v117[3];
    *v105 = *v117;
    v106 = v49;
    v107 = v44;
    *&v108[3] = *&v115[3];
    *v108 = *v115;
    v109 = v48;
    v110 = v71;
    v111 = v63;
    v112 = v62;
    v113 = v45;
    sub_24DDE57C4(&v78);
  }

  OUTLINED_FUNCTION_1031();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB844C(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetailResponse.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t sub_24DDB84F0()
{
  sub_24DDE6428();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB8528()
{
  sub_24DDE6428();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummary_Response_Invite.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1176();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3268, &qword_24DE23528);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_1173();
  v7 = OUTLINED_FUNCTION_1070();
  OUTLINED_FUNCTION_255(v7);
  sub_24DDE6428();
  OUTLINED_FUNCTION_375(&type metadata for Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys);
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_393();
  OUTLINED_FUNCTION_139();
  sub_24DE22BF0();
  if (!v5)
  {
    OUTLINED_FUNCTION_414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3278, &qword_24DE23530);
    sub_24DDE647C();
    OUTLINED_FUNCTION_1063();
    OUTLINED_FUNCTION_179();
    sub_24DE22C70();
  }

  v8 = OUTLINED_FUNCTION_313();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummary_Response_Invite.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3290, &qword_24DE23538);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE6428();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    OUTLINED_FUNCTION_234();
    sub_24DE22B40();
    OUTLINED_FUNCTION_807();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3278, &qword_24DE23530);
    OUTLINED_FUNCTION_414();
    sub_24DDE6554();
    OUTLINED_FUNCTION_211();
    sub_24DE22BC0();
    v8 = OUTLINED_FUNCTION_106();
    v9(v8);
    OUTLINED_FUNCTION_881();

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse::StatusPayload_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

void sub_24DDB88D0(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_155();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_1162();
      break;
    default:
      return;
  }
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse::StatusPayload_optional sub_24DDB89D0@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse::StatusPayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_24DDB8A00@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.init(status:playerId:)(GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse::StatusPayload status, Swift::String playerId)
{
  *v2 = status;
  *(v2 + 8) = playerId;
  result.playerId = playerId;
  result.status = status;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x692D726579616C70;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_24DDB8C94@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB8CC4()
{
  sub_24DDE662C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB8CFC()
{
  sub_24DDE662C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v6 = *(v5 + 1);
  v7 = *(v5 + 2);
  v8 = *v5;
  v9 = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(*v2);
  v11 = v10;
  if (v9 == Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(v8) && v11 == v12)
  {
  }

  else
  {
    OUTLINED_FUNCTION_379();
    OUTLINED_FUNCTION_947();
    v14 = sub_24DE22CA0();

    if ((v14 & 1) == 0)
    {
LABEL_15:
      OUTLINED_FUNCTION_999();
      return;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_370();
  OUTLINED_FUNCTION_489();
  OUTLINED_FUNCTION_999();

  sub_24DE22CA0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_891();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B32A8, &qword_24DE23540);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_255(v24);
  sub_24DDE662C();
  OUTLINED_FUNCTION_375(&type metadata for Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.CodingKeys);
  sub_24DDE6680();
  OUTLINED_FUNCTION_197();
  sub_24DE22C70();
  if (!v23)
  {
    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
  }

  v26 = OUTLINED_FUNCTION_446();
  v27(v26);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.hash(into:)()
{
  v1 = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(*v0);
  OUTLINED_FUNCTION_1127(v1, v2);

  OUTLINED_FUNCTION_260();

  return sub_24DE22AD0();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_796(a1);
  v3 = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(v2);
  OUTLINED_FUNCTION_1128(v3, v4, v5);

  OUTLINED_FUNCTION_409();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B32C0, &qword_24DE23548);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_79();
  sub_24DDE662C();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (!v25)
  {
    sub_24DDE66D4();
    sub_24DE22BC0();
    v29 = sub_24DE22BA0();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_465();
    v33(v32, v27);
    *v26 = a14;
    *(v26 + 8) = v29;
    *(v26 + 16) = v31;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_1259();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB9198(uint64_t a1)
{
  v2 = *v1;
  sub_24DE22CC0();
  v3 = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_InviteResponse.StatusPayload.rawValue.getter(v2);
  OUTLINED_FUNCTION_1128(v3, v4, v5);

  OUTLINED_FUNCTION_409();
  sub_24DE22AD0();
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse.result.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse __swiftcall Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse.init(nextUrl:result:)(Swift::String_optional nextUrl, Swift::OpaquePointer result)
{
  *v2 = nextUrl;
  *(v2 + 16) = result;
  v3.nextUrl = nextUrl;
  v3.result = result;
  return v3;
}

uint64_t Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x6C72752D7478656ELL;
  }
}

uint64_t sub_24DDB9324@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB9354()
{
  sub_24DDE6728();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB938C()
{
  sub_24DDE6728();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_24DDB93DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      OUTLINED_FUNCTION_360(a1);
      v5 = v5 && v3 == v4;
      if (v5 || (sub_24DE22CA0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

LABEL_8:
  v6 = OUTLINED_FUNCTION_370();

  return v7(v6);
}

void Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1176();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B32D0, &qword_24DE23550);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_1173();
  v7 = OUTLINED_FUNCTION_1070();
  OUTLINED_FUNCTION_255(v7);
  sub_24DDE6728();
  OUTLINED_FUNCTION_375(&type metadata for Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse.CodingKeys);
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_393();
  OUTLINED_FUNCTION_139();
  sub_24DE22BF0();
  if (!v5)
  {
    OUTLINED_FUNCTION_414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B32E0, &qword_24DE23558);
    sub_24DDE677C();
    OUTLINED_FUNCTION_1063();
    OUTLINED_FUNCTION_179();
    sub_24DE22C70();
  }

  v8 = OUTLINED_FUNCTION_313();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDB95A8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(v2 + 8))
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_594();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
  }

  v3 = OUTLINED_FUNCTION_446();

  return a2(v3);
}

void Components.Schemas.Com_apple_gk_data_common_request_ListResultWithContinuationCom_apple_gk_data_challenge_ChallengeSummaryDetailResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B32F8, &qword_24DE23560);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE6728();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    OUTLINED_FUNCTION_234();
    sub_24DE22B40();
    OUTLINED_FUNCTION_807();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B32E0, &qword_24DE23558);
    OUTLINED_FUNCTION_414();
    sub_24DDE6854();
    OUTLINED_FUNCTION_211();
    sub_24DE22BC0();
    v8 = OUTLINED_FUNCTION_106();
    v9(v8);
    OUTLINED_FUNCTION_881();

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.challengeId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.playerIds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

int *Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.testOption.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 28) = *(result + 4);
  *(v1 + 24) = v2;
  *(v1 + 29) = v3;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.init(challengeId:playerIds:testOption:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 4);
  v7 = *(a4 + 5);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 28) = v6;
  *(a5 + 24) = v5;
  *(a5 + 29) = v7;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeInvite_Request::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.CodingKeys.stringValue.getter()
{
  v1 = 0x692D726579616C70;
  if (*v0 != 1)
  {
    v1 = 0x74706F2D74736574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E656C6C616863;
  }
}

uint64_t sub_24DDB9B00@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDB9B30()
{
  sub_24DDE692C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDB9B68()
{
  sub_24DDE692C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  v3 = OUTLINED_FUNCTION_281(v2);
  v6 = v3 == *v4 && *(v5 + 8) == v4[1];
  if (v6 || (sub_24DE22CA0() & 1) != 0)
  {
    v7 = OUTLINED_FUNCTION_370();
    sub_24DD85994(v7, v8);
  }

  OUTLINED_FUNCTION_999();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3310, &qword_24DE23568);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  v8 = OUTLINED_FUNCTION_1070();
  OUTLINED_FUNCTION_255(v8);
  sub_24DDE692C();
  OUTLINED_FUNCTION_375(&type metadata for Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.CodingKeys);
  OUTLINED_FUNCTION_642();
  OUTLINED_FUNCTION_820();
  sub_24DE22C50();
  if (!v5)
  {
    OUTLINED_FUNCTION_1175();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v9);
    OUTLINED_FUNCTION_920();
    OUTLINED_FUNCTION_190();
    sub_24DE22C70();
    sub_24DDE6980();
    OUTLINED_FUNCTION_920();
    OUTLINED_FUNCTION_376();
    sub_24DE22C20();
  }

  v10 = OUTLINED_FUNCTION_530();
  v11(v10, v6);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 28);
  v3 = *(v1 + 24);
  v4 = *(v1 + 29);
  sub_24DE22AD0();
  v5 = OUTLINED_FUNCTION_729();
  sub_24DDE0DB4(v5, v6);
  if (v4 == 1)
  {
    return OUTLINED_FUNCTION_1001();
  }

  OUTLINED_FUNCTION_963();
  if (((v3 | (v2 << 32)) & 0x100000000) != 0)
  {
    return OUTLINED_FUNCTION_1001();
  }

  OUTLINED_FUNCTION_963();
  return sub_24DE22CF0();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3328, &qword_24DE23570);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_140();
  v26 = v22[3];
  v27 = v22[4];
  OUTLINED_FUNCTION_250(v22);
  sub_24DDE692C();
  OUTLINED_FUNCTION_544();
  OUTLINED_FUNCTION_1097(v28);
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_415();
    sub_24DE22BA0();
    OUTLINED_FUNCTION_1026();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_1175();
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v29);
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_401();
    sub_24DE22BC0();
    sub_24DDE69D4();
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    v30 = OUTLINED_FUNCTION_380();
    v31(v30);
    *v24 = v27;
    *(v24 + 8) = v26;
    *(v24 + 16) = a10;
    *(v24 + 28) = BYTE4(a10);
    *(v24 + 24) = a10;
    *(v24 + 29) = BYTE5(a10);

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDBA184(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1051(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeInvite_Request.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.playerInvite.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.codeInvite.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void sub_24DDBA2A4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 12) = 256;
  *(a1 + 8) = 0;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.testOption.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  v4 = *(result + 13);
  *(v1 + 32) = *result;
  *(v1 + 44) = v3;
  *(v1 + 40) = v2;
  *(v1 + 45) = v4;
  return result;
}

__n128 Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.init(playerInvite:codeInvite:testOption:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a2;
  v11 = *a1;
  v5 = *a3;
  v6 = *(a3 + 2);
  v7 = *(a3 + 12);
  v8 = *(a3 + 13);
  swift_bridgeObjectRelease_n();
  result = v11;
  *a4 = v11;
  *(a4 + 16) = v10;
  *(a4 + 32) = v5;
  *(a4 + 44) = v7;
  *(a4 + 40) = v6;
  *(a4 + 45) = v8;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeAccept_Request::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.CodingKeys.stringValue.getter()
{
  v1 = 0x766E692D65646F63;
  if (*v0 != 1)
  {
    v1 = 0x74706F2D74736574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x692D726579616C70;
  }
}

uint64_t sub_24DDBA474@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBA4A4()
{
  sub_24DDE6A28();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBA4DC()
{
  sub_24DDE6A28();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_885();
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v8 = v3[1];
  v7 = v3[2];
  v9 = v3[3];
  if (!v4)
  {
    if (v8)
    {
      goto LABEL_21;
    }

    if (v6)
    {
LABEL_9:
      if (v9)
      {
        if (v5 != v7 || v6 != v9)
        {
          OUTLINED_FUNCTION_674();
          OUTLINED_FUNCTION_858();
          sub_24DE22CA0();
        }

        goto LABEL_22;
      }

LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    if (!v9)
    {

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v8)
  {
    goto LABEL_21;
  }

  v10 = *v2 == *v3 && v4 == v8;
  if (v10 || (OUTLINED_FUNCTION_947(), (sub_24DE22CA0() & 1) != 0))
  {
    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_22:
  OUTLINED_FUNCTION_720();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3338, &qword_24DE23578);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_100();
  v31 = *(v23 + 44);
  v30 = *(v23 + 40);
  OUTLINED_FUNCTION_255(v26);
  sub_24DDE6A28();

  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_507();
  sub_24DE22D50();
  sub_24DDE6A7C();
  OUTLINED_FUNCTION_502();
  sub_24DE22C20();

  if (!v24)
  {
    sub_24DDE6AD0();
    OUTLINED_FUNCTION_757();

    OUTLINED_FUNCTION_376();
    sub_24DE22C20();

    OUTLINED_FUNCTION_1217(v30 | (v31 << 32));
    OUTLINED_FUNCTION_890();
    sub_24DDE6B24();
    OUTLINED_FUNCTION_197();
    sub_24DE22C20();
  }

  v28 = OUTLINED_FUNCTION_446();
  v29(v28);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_438();
  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  v9 = *(v6 + 44);
  v10 = *(v6 + 40);
  v11 = *(v6 + 45);
  if (*(v6 + 8))
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_386();
    sub_24DE22AD0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v8)
    {
LABEL_3:
      sub_24DE22CE0();

      OUTLINED_FUNCTION_406();
      sub_24DE22AD0();

      if (v11)
      {
        goto LABEL_9;
      }

LABEL_7:
      v12 = v10 | (v9 << 32);
      sub_24DE22CE0();
      if ((v7 & 0x100000000) != 0)
      {
        sub_24DE22CE0();
        if ((v12 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24DE22CE0();
        sub_24DE22CF0();
        if ((v12 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      sub_24DE22CE0();
      sub_24DE22CF0();
      goto LABEL_12;
    }
  }

  sub_24DE22CE0();
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_24DE22CE0();
LABEL_12:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hashValue.getter()
{
  OUTLINED_FUNCTION_706();
  v0 = sub_24DE22CC0();
  v8 = OUTLINED_FUNCTION_856(v0, v1, v2, v3, v4, v5, v6, v7, v15, v16);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)(v8, v9, v10, v11, v12, v13);
  return sub_24DE22D10();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3360, &qword_24DE23580);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_250(v23);
  sub_24DDE6A28();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097(v27);
  if (!v24)
  {
    sub_24DDE6B78();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();

    sub_24DDE6BCC();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();

    OUTLINED_FUNCTION_890();
    sub_24DDE6C20();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();
    v28 = OUTLINED_FUNCTION_189();
    v29(v28);
    *v25 = v30;
    *(v25 + 8) = v31;
    *(v25 + 16) = v30;
    *(v25 + 24) = v31;
    *(v25 + 32) = v30;
    *(v25 + 44) = BYTE4(v31);
    *(v25 + 40) = v31;
    *(v25 + 45) = BYTE5(v31);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DDBABE4()
{
  OUTLINED_FUNCTION_706();
  v0 = sub_24DE22CC0();
  v8 = OUTLINED_FUNCTION_856(v0, v1, v2, v3, v4, v5, v6, v7, v15, v16);
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeAccept_Request.hash(into:)(v8, v9, v10, v11, v12, v13);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.challengeId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.challengeVendorId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.fromPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 32) = v3;
  *(v2 + 40) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.bundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 48) = v3;
  *(v2 + 56) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.bundleIds.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.init(challengeId:challengeVendorId:fromPlayerId:bundleId:bundleIds:invitedTimestamp:)(uint64_t x0_0@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  OUTLINED_FUNCTION_1329(x0_0, a2, a3, a4, a5, a6, a7, a8, a9);
  *(v10 + 64) = v12;
  *(v10 + 72) = v11;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_932();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t sub_24DDBAF00()
{
  result = 0x676E656C6C616863;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_561(17);
      break;
    case 2:
      result = OUTLINED_FUNCTION_646();
      break;
    case 3:
    case 4:
      result = OUTLINED_FUNCTION_65();
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBB028@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBB058()
{
  sub_24DDE6C74();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBB090()
{
  sub_24DDE6C74();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1011();
  OUTLINED_FUNCTION_281(v4);
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v26 = v5[7];
  v27 = v5[6];
  OUTLINED_FUNCTION_1017();
  v14 = v12[4];
  v15 = v12[5];
  v16 = v12[6];
  v17 = v12[7];
  v20 = v18 == v19 && v10 == v11;
  v24 = v12[8];
  v25 = v13;
  if (!v20 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v7)
  {
    if (!v2)
    {
      goto LABEL_28;
    }

    v21 = v6 == v3 && v7 == v2;
    if (!v21 && (OUTLINED_FUNCTION_369() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v2)
  {
    goto LABEL_28;
  }

  v22 = v8 == v14 && v9 == v15;
  if (v22 || (OUTLINED_FUNCTION_393(), OUTLINED_FUNCTION_1179(), (sub_24DE22CA0() & 1) != 0))
  {
    v23 = v27 == v16 && v26 == v17;
    if (v23 || (OUTLINED_FUNCTION_818(), (sub_24DE22CA0() & 1) != 0))
    {
      if (v25 && v24)
      {
        sub_24DD85994(v25, v24);
      }
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_1007();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3380, &qword_24DE23588);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_804();
  OUTLINED_FUNCTION_153(v23);
  sub_24DDE6C74();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_820();
  sub_24DE22C50();
  if (!v20)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_195();
    sub_24DE22C50();
    OUTLINED_FUNCTION_629();
    OUTLINED_FUNCTION_195();
    sub_24DE22C50();
    OUTLINED_FUNCTION_889();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v25);
    OUTLINED_FUNCTION_1063();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
    OUTLINED_FUNCTION_376();
    sub_24DE22C90();
  }

  v26 = OUTLINED_FUNCTION_530();
  v27(v26, v21);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v8 = v7;
  v9 = v6[3];
  v11 = v6[8];
  v10 = v6[9];
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v9)
  {
    OUTLINED_FUNCTION_606();
    sub_24DE22AD0();
  }

  OUTLINED_FUNCTION_495();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_519();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v11)
  {
    sub_24DDE0DB4(v8, v11);
  }

  MEMORY[0x253039750](v10);
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_Invite.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3390, &qword_24DE23590);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  v9 = OUTLINED_FUNCTION_541();
  OUTLINED_FUNCTION_387(v9, v10);
  sub_24DDE6C74();
  OUTLINED_FUNCTION_501();
  sub_24DE22D30();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    OUTLINED_FUNCTION_304();
    v11 = sub_24DE22BA0();
    v32 = v12;
    OUTLINED_FUNCTION_1023(1);
    OUTLINED_FUNCTION_304();
    sub_24DE22B40();
    v14 = v13;
    OUTLINED_FUNCTION_1023(2);
    OUTLINED_FUNCTION_304();
    v30 = sub_24DE22BA0();
    v31 = v15;
    OUTLINED_FUNCTION_1023(3);
    OUTLINED_FUNCTION_304();
    v16 = sub_24DE22BA0();
    v18 = v17;
    v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v19);
    OUTLINED_FUNCTION_782();
    sub_24DE22B70();
    v28 = v11;
    v20 = v34[0];
    OUTLINED_FUNCTION_1016(5);
    OUTLINED_FUNCTION_304();
    v21 = sub_24DE22BE0();
    v22 = OUTLINED_FUNCTION_154();
    v23(v22);
    v33[0] = v28;
    v33[1] = v32;
    OUTLINED_FUNCTION_707();
    v33[2] = v24;
    v33[3] = v14;
    v33[4] = v30;
    v33[5] = v31;
    v33[6] = v29;
    v33[7] = v18;
    v33[8] = v34[0];
    v33[9] = v21;
    v25 = OUTLINED_FUNCTION_1053();
    memcpy(v25, v26, 0x50uLL);
    sub_24DDE6CC8(v33, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v34[0] = v28;
    v34[1] = v32;
    OUTLINED_FUNCTION_707();
    v34[2] = v27;
    v34[3] = v14;
    v34[4] = v30;
    v34[5] = v31;
    v34[6] = v29;
    v34[7] = v18;
    v34[8] = v20;
    v34[9] = v21;
    sub_24DDE6D00(v34);
  }

  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.platform.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.bundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.shortBundleVersion.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 32) = v3;
  *(v2 + 40) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.bundleVersion.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 48) = v3;
  *(v2 + 56) = v1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_jackson_GameBundleDescriptor::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.CodingKeys.stringValue.getter()
{
  result = 0x6D726F6674616C70;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_65();
      break;
    case 2:
      result = OUTLINED_FUNCTION_412(20);
      break;
    case 3:
      result = OUTLINED_FUNCTION_1328();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBBC8C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBBCBC()
{
  sub_24DDE6D30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBBCF4()
{
  sub_24DDE6D30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_628();
  v3 = OUTLINED_FUNCTION_281(v2);
  v6 = v5[2];
  v8 = v5[3];
  v7 = v5[4];
  v9 = v5[5];
  v10 = v5[7];
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  v14 = v4[5];
  v15 = v3 == *v4 && v5[1] == v4[1];
  v16 = v4[7];
  v22 = v4[6];
  v23 = v5[6];
  if (v15 || (sub_24DE22CA0() & 1) != 0)
  {
    v17 = v6 == v11 && v8 == v12;
    if (v17 || (OUTLINED_FUNCTION_457(), OUTLINED_FUNCTION_812(), (sub_24DE22CA0() & 1) != 0))
    {
      v18 = v7 == v13 && v9 == v14;
      if (v18 || (OUTLINED_FUNCTION_495(), (OUTLINED_FUNCTION_1301(v19, v20) & 1) != 0))
      {
        if (v10 && v16 && (v23 != v22 || v10 != v16))
        {
          OUTLINED_FUNCTION_888(v23, v10);
        }
      }
    }
  }

  OUTLINED_FUNCTION_549();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3398, &qword_24DE23598);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_153(v7);
  sub_24DDE6D30();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_1125(v9);
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_498();
  OUTLINED_FUNCTION_819();
  sub_24DE22C50();
  if (!v5)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22C50();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_135();
    sub_24DE22C50();
    OUTLINED_FUNCTION_629();
    OUTLINED_FUNCTION_393();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
  }

  v10 = OUTLINED_FUNCTION_180();
  v11(v10);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  v2 = *(v1 + 56);
  sub_24DE22AD0();
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_727();
  sub_24DE22AD0();
  if (v2)
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_409();
    OUTLINED_FUNCTION_999();

    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
    OUTLINED_FUNCTION_999();
  }
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_597();
  v31 = *(v30 + 56);
  OUTLINED_FUNCTION_796(v32);
  OUTLINED_FUNCTION_519();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_495();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_606();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v31)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_586();
}

void Components.Schemas.Com_apple_gk_data_jackson_GameBundleDescriptor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_312();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B33A8, &qword_24DE235A0);
  OUTLINED_FUNCTION_18();
  v29 = v28;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_250(v23);
  sub_24DDE6D30();
  OUTLINED_FUNCTION_851();
  OUTLINED_FUNCTION_709();
  sub_24DE22D30();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    LOBYTE(v50[0]) = 0;
    OUTLINED_FUNCTION_994();
    v31 = sub_24DE22BA0();
    v45 = v32;
    OUTLINED_FUNCTION_302();
    OUTLINED_FUNCTION_994();
    v33 = sub_24DE22BA0();
    v44 = v34;
    v42 = v33;
    OUTLINED_FUNCTION_634(2);
    v41 = sub_24DE22BA0();
    v43 = v35;
    OUTLINED_FUNCTION_598();
    OUTLINED_FUNCTION_994();
    v36 = sub_24DE22B40();
    v38 = v37;
    (*(v29 + 8))(v27, v26);
    *&v46 = v31;
    *(&v46 + 1) = v45;
    *&v47 = v42;
    *(&v47 + 1) = v44;
    *&v48 = v41;
    *(&v48 + 1) = v43;
    *&v49 = v36;
    *(&v49 + 1) = v38;
    v39 = v47;
    *v25 = v46;
    v25[1] = v39;
    v40 = v49;
    v25[2] = v48;
    v25[3] = v40;
    sub_24DDE6D84(&v46, v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v50[0] = v31;
    v50[1] = v45;
    v50[2] = v42;
    v50[3] = v44;
    v50[4] = v41;
    v50[5] = v43;
    v50[6] = v36;
    v50[7] = v38;
    sub_24DDE6DBC(v50);
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

double Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.challengeId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 56) = v3;
  *(v2 + 64) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.challengeVendorId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 72) = v3;
  *(v2 + 80) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.bundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 88) = v3;
  *(v2 + 96) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.bundleIds.setter()
{
  result = OUTLINED_FUNCTION_1312();
  *(v1 + 104) = v0;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.creatorPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 152) = v3;
  *(v2 + 160) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.durationCode.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 168) = v3;
  *(v2 + 176) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.leaderboardId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 184) = v3;
  *(v2 + 192) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.StatePayload.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x657669746361;
  }
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::StatePayload_optional sub_24DDBC83C@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::StatePayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.StatePayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_24DDBC86C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.StatePayload.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.cardText.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 224) = v3;
  *(v2 + 232) = v1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.participants.setter(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.invitedPlayers.setter(uint64_t a1)
{

  *(v1 + 248) = a1;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::InviteCodeStatusPayload_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_385();
  sub_24DE22B30();
  OUTLINED_FUNCTION_451();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_155();
      break;
    case 2:
      OUTLINED_FUNCTION_1162();
      break;
    case 3:
      OUTLINED_FUNCTION_561(16);
      break;
    default:
      return;
  }
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::InviteCodeStatusPayload_optional sub_24DDBCC28@<W0>(Swift::String *a1@<X0>, GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::InviteCodeStatusPayload_optional *a2@<X8>)
{
  result.value = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_24DDBCC58(uint64_t *a1@<X8>)
{
  Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_755();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_1325();
  v4 = 0;
  v5 = 3;
  switch(v2)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v4 = 1;
      goto LABEL_11;
    case 2:
      v4 = 2;
LABEL_11:
      v5 = v4;
      break;
    case 3:
      break;
    case 4:
      v5 = 4;
      break;
    case 5:
      v5 = 5;
      break;
    case 6:
      v5 = 6;
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    default:
      v5 = 21;
      break;
  }

  *v1 = v5;
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.rawValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = OUTLINED_FUNCTION_130();
      break;
    case 4:
      result = OUTLINED_FUNCTION_68();
      break;
    case 5:
      result = OUTLINED_FUNCTION_151();
      break;
    case 6:
      result = OUTLINED_FUNCTION_65();
      break;
    case 7:
      result = OUTLINED_FUNCTION_102();
      break;
    case 8:
      result = OUTLINED_FUNCTION_103();
      break;
    case 9:
      result = OUTLINED_FUNCTION_322();
      break;
    case 0xA:
      result = OUTLINED_FUNCTION_249();
      break;
    case 0xB:
      result = OUTLINED_FUNCTION_344(18);
      break;
    case 0xC:
      result = OUTLINED_FUNCTION_263();
      break;
    case 0xD:
      result = OUTLINED_FUNCTION_34();
      break;
    case 0xE:
      result = OUTLINED_FUNCTION_829();
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = OUTLINED_FUNCTION_664();
      break;
    case 0x11:
      result = OUTLINED_FUNCTION_663();
      break;
    case 0x12:
      result = OUTLINED_FUNCTION_649();
      break;
    case 0x13:
      result = 0x64657361656C6572;
      break;
    case 0x14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DDBD258@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.CodingKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DDBD28C()
{
  sub_24DDE6DEC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DDBD2C4()
{
  sub_24DDE6DEC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_1219(v6);
  v8 = v7[5];
  v168 = v7[4];
  v9 = v7[6];
  v165 = v7[7];
  v164 = v7[8];
  v156 = v7[9];
  v161 = v7[10];
  v159 = v7[11];
  OUTLINED_FUNCTION_591();
  v141 = *(v12 + 160);
  v134 = *(v12 + 168);
  v14 = *(v12 + 184);
  v136 = *(v12 + 176);
  v15 = *(v12 + 208);
  v130 = *(v12 + 216);
  v16 = *(v12 + 224);
  v128 = *(v12 + 232);
  v129 = *(v12 + 240);
  v127 = *(v12 + 256);
  v17 = *(v12 + 257);
  v18 = *(v13 + 16);
  v20 = *(v13 + 24);
  v19 = *(v13 + 32);
  v166 = *(v13 + 40);
  v167 = *(v13 + 48);
  v163 = *(v13 + 56);
  v162 = *(v13 + 64);
  v155 = *(v13 + 72);
  v160 = *(v13 + 80);
  v158 = *(v13 + 88);
  v157 = *(v13 + 96);
  v153 = *(v13 + 104);
  v149 = *(v13 + 112);
  v150 = *(v13 + 120);
  v143 = *(v13 + 128);
  v147 = *(v13 + 136);
  v137 = *(v13 + 140);
  v146 = *(v13 + 144);
  v139 = *(v13 + 152);
  v138 = *(v13 + 160);
  v132 = *(v13 + 168);
  v135 = *(v13 + 176);
  v131 = *(v13 + 184);
  v133 = *(v13 + 192);
  v21 = *(v13 + 200);
  v22 = *(v13 + 208);
  v23 = *(v13 + 216);
  v25 = *(v13 + 224);
  v24 = *(v13 + 232);
  v26 = *(v13 + 240);
  v27 = *(v13 + 256);
  v28 = *(v13 + 257);
  if (v29)
  {
    if (!*(v13 + 4))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v12 == *v13)
    {
      v30 = *(v13 + 4);
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_24;
    }
  }

  if (v11)
  {
    if (!v18)
    {
      goto LABEL_24;
    }

    v31 = v10 == *(v13 + 8) && v11 == v18;
    if (!v31)
    {
      v125 = v14;
      v115 = *(v13 + 257);
      v117 = v17;
      v112 = *(v13 + 256);
      v32 = v16;
      v33 = v15;
      v119 = *(v13 + 240);
      v121 = *(v13 + 232);
      v114 = *(v13 + 224);
      v111 = *(v13 + 32);
      v123 = *(v13 + 216);
      v34 = *(v13 + 208);
      v35 = sub_24DE22CA0();
      v22 = v34;
      v23 = v123;
      v19 = v111;
      v26 = v119;
      v24 = v121;
      v15 = v33;
      v16 = v32;
      v27 = v112;
      v17 = v117;
      v14 = v125;
      v28 = v115;
      if ((v35 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_24;
  }

  v126 = v14;
  if (v168 == 1)
  {
    v109 = v22;
    v110 = v15;
    v124 = v23;
    v120 = v26;
    v122 = v24;
    v108 = v16;
    v118 = v17;
    v36 = OUTLINED_FUNCTION_624();
    sub_24DD7639C(v36, v37, v8, v9);
    if (v19 == 1)
    {
      v116 = v28;
      v38 = OUTLINED_FUNCTION_1061();
      sub_24DD7639C(v38, v39, v166, v167);
      v40 = OUTLINED_FUNCTION_624();
      sub_24DD763E4(v40, v41, v8, v9);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_1112(v20, v19);
LABEL_23:
    v50 = OUTLINED_FUNCTION_201();
    sub_24DD763E4(v50, v51, v52, v9);
    OUTLINED_FUNCTION_532();
    OUTLINED_FUNCTION_672();
    sub_24DD763E4(v53, v54, v55, v56);
    goto LABEL_24;
  }

  if (v19 == 1)
  {
    v42 = OUTLINED_FUNCTION_201();
    sub_24DD7639C(v42, v43, v44, v9);
    v45 = OUTLINED_FUNCTION_1061();
    OUTLINED_FUNCTION_1112(v45, v46);
    v47 = OUTLINED_FUNCTION_201();
    sub_24DD7639C(v47, v48, v49, v9);

    goto LABEL_23;
  }

  v116 = v28;
  v109 = v22;
  v110 = v15;
  v124 = v23;
  v120 = v26;
  v122 = v24;
  v108 = v16;
  v118 = v17;
  LODWORD(v114) = OUTLINED_FUNCTION_1172();
  v57 = OUTLINED_FUNCTION_201();
  sub_24DD7639C(v57, v58, v59, v9);
  v60 = OUTLINED_FUNCTION_708();
  sub_24DD7639C(v60, v61, v166, v167);
  v62 = OUTLINED_FUNCTION_201();
  sub_24DD7639C(v62, v63, v64, v9);

  v65 = OUTLINED_FUNCTION_201();
  sub_24DD763E4(v65, v66, v67, v9);
  if ((v114 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v68 = v165 == v163 && v164 == v162;
  if (!v68 && (sub_24DE22CA0() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v161)
  {
    OUTLINED_FUNCTION_1024();
    if (!v160)
    {
      goto LABEL_24;
    }

    if (v156 != v155 || v70 != v160)
    {
      OUTLINED_FUNCTION_608();
      v25 = v76;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_337();
      if ((v77 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1024();
    if (v160)
    {
      goto LABEL_24;
    }
  }

  if (v159 != v158 || v69 != v157)
  {
    OUTLINED_FUNCTION_608();
    v25 = v79;
    sub_24DE22CA0();
    OUTLINED_FUNCTION_337();
    if ((v80 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v154)
  {
    if (!v153)
    {
      goto LABEL_24;
    }

    v113 = v73;
    LOBYTE(v20) = v71;
    sub_24DD85994(v154, v153);
    OUTLINED_FUNCTION_696();
    if ((v81 & 1) == 0)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_1228();
    v71 = v20;
    v72 = v126;
    v73 = v113;
    v74 = v21;
    if (!v31)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v153)
    {
      goto LABEL_24;
    }

    if (v151 != v149 || v152 != v150)
    {
      goto LABEL_24;
    }
  }

  if (v148)
  {
    if (!v147)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v83 = v147;
    if (v144 != v143)
    {
      v83 = 1;
    }

    if (v83)
    {
      goto LABEL_24;
    }
  }

  if (v145)
  {
    if (!v146)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v84 = v146;
    if (v140 != v137)
    {
      v84 = 1;
    }

    if (v84)
    {
      goto LABEL_24;
    }
  }

  if (v142 != v139 || v141 != v138)
  {
    OUTLINED_FUNCTION_608();
    v25 = v86;
    sub_24DE22CA0();
    OUTLINED_FUNCTION_337();
    if ((v87 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v136)
  {
    if (!v135)
    {
      goto LABEL_24;
    }

    if (v134 != v132 || v136 != v135)
    {
      OUTLINED_FUNCTION_608();
      v25 = v89;
      sub_24DE22CA0();
      OUTLINED_FUNCTION_337();
      if ((v90 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v135)
  {
    goto LABEL_24;
  }

  if (v73)
  {
    if (!v133)
    {
      goto LABEL_24;
    }

    if (v72 != v131 || v73 != v133)
    {
      OUTLINED_FUNCTION_608();
      v93 = v92;
      v94 = sub_24DE22CA0();
      v74 = v93;
      v71 = v20;
      v25 = v114;
      if ((v94 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v133)
  {
    goto LABEL_24;
  }

  if ((sub_24DD7B63C(v71, v74) & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v130)
  {
    v95 = v27;
    if (!v124)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v95 = v27;
    v96 = v124;
    if (v110 != v109)
    {
      v96 = 1;
    }

    if (v96)
    {
      goto LABEL_24;
    }
  }

  if (v128)
  {
    if (!v122)
    {
      goto LABEL_24;
    }

    v97 = v108 == v25 && v128 == v122;
    if (!v97 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v122)
  {
    goto LABEL_24;
  }

  if (sub_24DD85DD4(v129, v120))
  {
    v98 = OUTLINED_FUNCTION_677();
    sub_24DD85FA8(v98, v99);
    OUTLINED_FUNCTION_696();
    if ((v100 & 1) != 0 && ((v127 ^ v95) & 1) == 0 && v118 != 5 && v116 != 5)
    {
      Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(v118);
      v102 = v101;
      v104 = v103;
      Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.InviteCodeStatusPayload.rawValue.getter(v116);
      if (v102 != v106 || v104 != v105)
      {
        OUTLINED_FUNCTION_674();
        OUTLINED_FUNCTION_858();
        sub_24DE22CA0();
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Com_apple_gk_data_challenge_ChallengeDetail_ChallengeDetailResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1256();
  *(v7 - 128) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B33B0, &qword_24DE235A8);
  OUTLINED_FUNCTION_24();
  v9 = v8;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_431();
  *(v7 - 360) = v11;
  *(v7 - 356) = *(v5 + 257);
  v12 = OUTLINED_FUNCTION_446();
  OUTLINED_FUNCTION_387(v12, v13);
  sub_24DDE6DEC();
  OUTLINED_FUNCTION_501();
  sub_24DE22D50();
  OUTLINED_FUNCTION_487();
  v14 = *(v7 - 128);
  sub_24DE22C30();
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_393();
  }

  else
  {
    v18 = *(v7 - 176);
    v17 = *(v7 - 168);
    v20 = *(v7 - 160);
    v19 = *(v7 - 152);
    *(v7 - 128) = v9;
    OUTLINED_FUNCTION_456(1);
    OUTLINED_FUNCTION_303();
    sub_24DE22BF0();
    *(v7 - 120) = v19;
    *(v7 - 112) = v20;
    *(v7 - 104) = v17;
    *(v7 - 96) = v18;
    OUTLINED_FUNCTION_554();
    OUTLINED_FUNCTION_732();
    OUTLINED_FUNCTION_870();
    sub_24DD7639C(v21, v22, v23, v24);
    sub_24DD87138();
    OUTLINED_FUNCTION_542();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    OUTLINED_FUNCTION_967();
    OUTLINED_FUNCTION_456(3);
    OUTLINED_FUNCTION_303();
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(4);
    OUTLINED_FUNCTION_303();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(5);
    OUTLINED_FUNCTION_303();
    sub_24DE22C50();
    OUTLINED_FUNCTION_516();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v25);
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    OUTLINED_FUNCTION_505();
    OUTLINED_FUNCTION_416();
    sub_24DE22C90();
    OUTLINED_FUNCTION_504();
    OUTLINED_FUNCTION_416();
    sub_24DE22C90();
    OUTLINED_FUNCTION_334();
    OUTLINED_FUNCTION_303();
    sub_24DE22C40();
    *(v7 - 120) = 10;
    OUTLINED_FUNCTION_481(v7 - 12);
    OUTLINED_FUNCTION_479(v26);
    OUTLINED_FUNCTION_416();
    sub_24DE22C30();
    OUTLINED_FUNCTION_456(11);
    OUTLINED_FUNCTION_1053();
    OUTLINED_FUNCTION_169();
    sub_24DE22C50();
    OUTLINED_FUNCTION_456(12);
    OUTLINED_FUNCTION_169();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_456(13);
    OUTLINED_FUNCTION_169();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1022();
    sub_24DDE6E40();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_456(15);
    OUTLINED_FUNCTION_415();
    sub_24DE22C40();
    OUTLINED_FUNCTION_456(16);
    OUTLINED_FUNCTION_988();
    OUTLINED_FUNCTION_169();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_860(v7 - 120);
    *(v7 - 68) = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3208, &qword_24DE23510);
    sub_24DDE6074();
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_860(v7 - 112);
    *(v7 - 68) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3220, &qword_24DE23518);
    sub_24DDE614C();
    OUTLINED_FUNCTION_307();
    OUTLINED_FUNCTION_415();
    sub_24DE22C70();
    OUTLINED_FUNCTION_639(19);
    OUTLINED_FUNCTION_415();
    sub_24DE22C60();
    *(v7 - 120) = *(v7 - 356);
    *(v7 - 68) = 20;
    sub_24DDE6E94();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_415();
    sub_24DE22C20();
    OUTLINED_FUNCTION_859();
    v15 = OUTLINED_FUNCTION_380();
  }

  v16(v15);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}