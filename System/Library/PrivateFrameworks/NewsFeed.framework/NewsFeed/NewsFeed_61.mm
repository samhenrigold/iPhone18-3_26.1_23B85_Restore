uint64_t sub_1D60BCE84()
{
  v1 = *(v0 + 6096);
  v2 = *(v0 + 6080);
  sub_1D5B952F8(*(v0 + 6280), *(v0 + 6288));
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v1, type metadata accessor for FormatContentSubgroup);

  v19 = *(v0 + 6208);
  v20 = *(v0 + 6200);
  v22 = *(v0 + 4029);
  v23 = *(v0 + 4030);
  v21 = *(v0 + 4028);
  v18 = *(v0 + 6192);
  v3 = *(v0 + 6184);
  v4 = *(v0 + 6176);
  v5 = *(v0 + 6168);
  v6 = *(v0 + 6136);
  sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
  sub_1D60CBC50(v6, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  *(v0 + 2360) = v5;
  *(v0 + 2368) = v4;
  v7 = *(v0 + 5928);
  *(v0 + 2376) = *(v0 + 5912);
  *(v0 + 2392) = v7;
  *(v0 + 2408) = *(v0 + 5944);
  *(v0 + 2424) = *(v0 + 5960);
  *(v0 + 2432) = v3;
  v8 = *(v0 + 5768);
  *(v0 + 2504) = *(v0 + 5752);
  *(v0 + 2520) = v8;
  *(v0 + 2536) = *(v0 + 5784);
  v9 = *(v0 + 5704);
  *(v0 + 2440) = *(v0 + 5688);
  *(v0 + 2456) = v9;
  v10 = *(v0 + 5736);
  *(v0 + 2472) = *(v0 + 5720);
  *(v0 + 2488) = v10;
  *(v0 + 2552) = *(v0 + 6336);
  *(v0 + 2553) = *(v0 + 6328);
  *(v0 + 2554) = *(v0 + 3842);
  *(v0 + 2555) = *(v0 + 6320);
  *(v0 + 2559) = *(v0 + 6324);
  *(v0 + 2560) = v19;
  *(v0 + 2568) = v18;
  sub_1D5F2B134(v0 + 2360);
  strcpy((v0 + 4768), "builtin:editor");
  *(v0 + 4783) = -18;
  v11 = *(v0 + 6024);
  *(v0 + 4784) = *(v0 + 6008);
  *(v0 + 4800) = v11;
  *(v0 + 4816) = 0;
  *(v0 + 4817) = *(v0 + 3835);
  *(v0 + 4820) = *(v0 + 3838);
  *(v0 + 4824) = v20;
  v12 = *(v0 + 5816);
  *(v0 + 4832) = *(v0 + 5800);
  *(v0 + 4848) = v12;
  v13 = *(v0 + 5848);
  *(v0 + 4864) = *(v0 + 5832);
  v14 = *(v0 + 5864);
  v15 = *(v0 + 5880);
  *(v0 + 4928) = *(v0 + 5896);
  *(v0 + 4912) = v15;
  *(v0 + 4896) = v14;
  *(v0 + 4880) = v13;
  *(v0 + 4944) = v22;
  *(v0 + 4945) = v21;
  *(v0 + 4946) = v23;
  sub_1D5ECF21C(v0 + 4768);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D60BD194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1272) = v3;
  *(v4 + 1264) = a3;
  *(v4 + 1256) = a1;
  sub_1D60CB67C(0);
  *(v4 + 1280) = swift_task_alloc();
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();
  v6 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v4 + 1304) = swift_task_alloc();
  v7 = sub_1D72585BC();
  *(v4 + 1312) = v7;
  *(v4 + 1320) = *(v7 - 8);
  *(v4 + 1328) = swift_task_alloc();
  v8 = type metadata accessor for DebugFormatWorkspace(0);
  *(v4 + 1336) = v8;
  *(v4 + 1344) = *(v8 - 8);
  *(v4 + 1352) = swift_task_alloc();
  *(v4 + 1360) = swift_task_alloc();
  *(v4 + 1368) = swift_task_alloc();
  *(v4 + 1376) = swift_task_alloc();
  *(v4 + 1384) = swift_task_alloc();
  *(v4 + 1392) = type metadata accessor for DebugFormatWorkspaceKind(0);
  *(v4 + 1400) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v6);
  *(v4 + 1408) = swift_task_alloc();
  v9 = *(a2 + 8);
  *(v4 + 1416) = *a2;
  *(v4 + 1424) = v9;
  v10 = *(a2 + 160);
  *(v4 + 1176) = *(a2 + 144);
  *(v4 + 1192) = v10;
  *(v4 + 1207) = *(a2 + 175);
  v11 = *(a2 + 96);
  *(v4 + 1112) = *(a2 + 80);
  *(v4 + 1128) = v11;
  v12 = *(a2 + 128);
  *(v4 + 1144) = *(a2 + 112);
  *(v4 + 1160) = v12;
  v13 = *(a2 + 32);
  *(v4 + 1048) = *(a2 + 16);
  *(v4 + 1064) = v13;
  v14 = *(a2 + 64);
  *(v4 + 1080) = *(a2 + 48);
  *(v4 + 1096) = v14;
  sub_1D726290C();
  *(v4 + 1432) = sub_1D72628FC();
  v16 = sub_1D726285C();
  *(v4 + 1440) = v16;
  *(v4 + 1448) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D60BD48C, v16, v15);
}

void sub_1D60BD48C()
{
  v76 = v0;
  sub_1D60CBBE8(*(v0 + 1256), *(v0 + 1400), type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload >= 2)
  {

    sub_1D60CB770((v0 + 448));
    v7 = *(v0 + 624);
    *(v0 + 816) = *(v0 + 608);
    *(v0 + 832) = v7;
    *(v0 + 848) = *(v0 + 640);
    v8 = *(v0 + 560);
    *(v0 + 752) = *(v0 + 544);
    *(v0 + 768) = v8;
    v9 = *(v0 + 592);
    *(v0 + 784) = *(v0 + 576);
    *(v0 + 800) = v9;
    v10 = *(v0 + 496);
    *(v0 + 688) = *(v0 + 480);
    *(v0 + 704) = v10;
    v11 = *(v0 + 528);
    *(v0 + 720) = *(v0 + 512);
    *(v0 + 736) = v11;
    v12 = *(v0 + 464);
    *(v0 + 656) = *(v0 + 448);
    *(v0 + 672) = v12;

    sub_1D725B32C();

    sub_1D60CF378(v0 + 16);
    v13 = *(v0 + 192);
    v74[10] = *(v0 + 176);
    v74[11] = v13;
    v74[12] = *(v0 + 208);
    v75 = *(v0 + 224);
    v14 = *(v0 + 128);
    v74[6] = *(v0 + 112);
    v74[7] = v14;
    v15 = *(v0 + 160);
    v74[8] = *(v0 + 144);
    v74[9] = v15;
    v16 = *(v0 + 64);
    v74[2] = *(v0 + 48);
    v74[3] = v16;
    v17 = *(v0 + 96);
    v74[4] = *(v0 + 80);
    v74[5] = v17;
    v18 = *(v0 + 32);
    v74[0] = *(v0 + 16);
    v74[1] = v18;
    sub_1D6AA103C(v74);
    v19 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v19;
    *(v0 + 424) = *(v0 + 208);
    v20 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v20;
    v21 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v21;
    v22 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v22;
    v23 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v23;
    v24 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 440) = *(v0 + 224);
    *(v0 + 248) = v24;

    sub_1D725B32C();

    sub_1D6AA1610();

    sub_1D725B31C();

    v25 = *(v0 + 1240);
    v73 = *(v25 + 16);
    if (v73)
    {
      v26 = 0;
      v27 = *(v0 + 1344);
      v72 = *(v0 + 1336);
      v28 = MEMORY[0x1E69E7CC0];
      while (v26 < *(v25 + 16))
      {
        v29 = *(v0 + 1424);
        v30 = *(v0 + 1416);
        v31 = *(v0 + 1384);
        v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v33 = *(v27 + 72);
        sub_1D60CBBE8(v25 + v32 + v33 * v26, v31, type metadata accessor for DebugFormatWorkspace);
        v34 = (v31 + *(v72 + 20));
        v35 = *v34 == v30 && v34[1] == v29;
        if (v35 || (sub_1D72646CC() & 1) != 0)
        {
          sub_1D60CBC50(*(v0 + 1384), type metadata accessor for DebugFormatWorkspace);
        }

        else
        {
          sub_1D60CBDE4(*(v0 + 1384), *(v0 + 1376), type metadata accessor for DebugFormatWorkspace);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v74[0] = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6998988(0, *(v28 + 16) + 1, 1);
            v28 = *&v74[0];
          }

          v38 = *(v28 + 16);
          v37 = *(v28 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D6998988((v37 > 1), v38 + 1, 1);
            v28 = *&v74[0];
          }

          v39 = *(v0 + 1376);
          *(v28 + 16) = v38 + 1;
          sub_1D60CBDE4(v39, v28 + v32 + v38 * v33, type metadata accessor for DebugFormatWorkspace);
        }

        if (v73 == ++v26)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      return;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_25:

    *(v0 + 1248) = v28;

    sub_1D725B32C();
LABEL_26:

LABEL_27:
    v50 = *(v0 + 1344);
    v51 = *(v0 + 1336);
    v52 = *(v0 + 1296);

    sub_1D725B31C();

    if ((*(v50 + 48))(v52, 1, v51))
    {
      v53 = (v0 + 1296);
    }

    else
    {
      v54 = *(v0 + 1424);
      v55 = *(v0 + 1416);
      v56 = *(v0 + 1352);
      v57 = *(v0 + 1336);
      v58 = *(v0 + 1296);
      sub_1D60CBBE8(v58, v56, type metadata accessor for DebugFormatWorkspace);
      sub_1D60CBC50(v58, sub_1D60CB67C);
      v59 = (v56 + *(v57 + 20));
      v60 = *v59;
      v61 = v59[1];

      sub_1D60CBC50(v56, type metadata accessor for DebugFormatWorkspace);
      if (v60 == v55 && v61 == v54)
      {
      }

      else
      {
        v63 = sub_1D72646CC();

        if ((v63 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      sub_1D725B31C();

      v64 = *(v0 + 1216);
      if (*(v64 + 16))
      {
        v65 = *(*(v0 + 1344) + 80);
        sub_1D60CBBE8(v64 + ((v65 + 32) & ~v65), *(v0 + 1288), type metadata accessor for DebugFormatWorkspace);
        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = *(v0 + 1344);
      v68 = *(v0 + 1336);
      v53 = (v0 + 1288);
      v69 = *(v0 + 1288);
      v70 = *(v0 + 1280);

      (*(v67 + 56))(v69, v66, 1, v68);
      sub_1D60CBBE8(v69, v70, sub_1D60CB67C);

      sub_1D725B32C();
    }

    sub_1D60CBC50(*v53, sub_1D60CB67C);
LABEL_41:

    v71 = *(v0 + 8);

    v71();
    return;
  }

  v2 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1304);
  sub_1D6033350(*(v0 + 1400), *(v0 + 1408));
  v5 = sub_1D6A9DC44(v4);
  if ((*(v2 + 48))(v4, 1, v3, v5) == 1)
  {
    v6 = *(v0 + 1304);
    sub_1D60CB820(*(v0 + 1408), &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

    sub_1D60CB820(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_27;
  }

  v40 = *(v0 + 1424);
  v41 = *(v0 + 1416);
  (*(*(v0 + 1320) + 32))(*(v0 + 1328), *(v0 + 1304), *(v0 + 1312));
  *(v0 + 864) = v41;
  *(v0 + 872) = v40;
  v42 = *(v0 + 1192);
  *(v0 + 1008) = *(v0 + 1176);
  *(v0 + 1024) = v42;
  *(v0 + 1039) = *(v0 + 1207);
  v43 = *(v0 + 1128);
  *(v0 + 944) = *(v0 + 1112);
  *(v0 + 960) = v43;
  v44 = *(v0 + 1160);
  *(v0 + 976) = *(v0 + 1144);
  *(v0 + 992) = v44;
  v45 = *(v0 + 1064);
  *(v0 + 880) = *(v0 + 1048);
  *(v0 + 896) = v45;
  v46 = *(v0 + 1096);
  *(v0 + 912) = *(v0 + 1080);
  *(v0 + 928) = v46;
  v47 = swift_task_alloc();
  *(v0 + 1456) = v47;
  *v47 = v0;
  v47[1] = sub_1D60BDC98;
  v48 = *(v0 + 1408);
  v49 = *(v0 + 1328);

  sub_1D60BE45C(v49, (v0 + 864), v48);
}

uint64_t sub_1D60BDC98()
{
  v2 = *v1;
  v3 = *(*v1 + 1408);
  *(*v1 + 1464) = v0;

  sub_1D60CB820(v3, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  v4 = *(v2 + 1448);
  v5 = *(v2 + 1440);
  if (v0)
  {
    v6 = sub_1D60BE31C;
  }

  else
  {
    v6 = sub_1D60BDDF4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

void sub_1D60BDDF4()
{

  sub_1D725B31C();

  v1 = v0[153];
  v40 = *(v1 + 16);
  if (!v40)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v15 = v0[166];
    v16 = v0[165];
    v17 = v0[164];

    v0[154] = v4;

    sub_1D725B32C();

    (*(v16 + 8))(v15, v17);
    v18 = v0[168];
    v19 = v0[167];
    v20 = v0[162];

    sub_1D725B31C();

    if ((*(v18 + 48))(v20, 1, v19))
    {
      v21 = v0 + 162;
    }

    else
    {
      v22 = v0[178];
      v23 = v0[177];
      v24 = v0[169];
      v25 = v0[167];
      v26 = v0[162];
      sub_1D60CBBE8(v26, v24, type metadata accessor for DebugFormatWorkspace);
      sub_1D60CBC50(v26, sub_1D60CB67C);
      v27 = (v24 + *(v25 + 20));
      v28 = *v27;
      v29 = v27[1];

      sub_1D60CBC50(v24, type metadata accessor for DebugFormatWorkspace);
      if (v28 == v23 && v29 == v22)
      {
      }

      else
      {
        v30 = sub_1D72646CC();

        if ((v30 & 1) == 0)
        {
LABEL_28:

          v38 = v0[1];

          v38();
          return;
        }
      }

      sub_1D725B31C();

      v31 = v0[152];
      if (*(v31 + 16))
      {
        v32 = *(v0[168] + 80);
        sub_1D60CBBE8(v31 + ((v32 + 32) & ~v32), v0[161], type metadata accessor for DebugFormatWorkspace);
        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = v0[168];
      v35 = v0[167];
      v21 = v0 + 161;
      v36 = v0[161];
      v37 = v0[160];

      (*(v34 + 56))(v36, v33, 1, v35);
      sub_1D60CBBE8(v36, v37, sub_1D60CB67C);

      sub_1D725B32C();
    }

    sub_1D60CBC50(*v21, sub_1D60CB67C);
    goto LABEL_28;
  }

  v2 = 0;
  v3 = v0[168];
  v39 = v0[167];
  v4 = MEMORY[0x1E69E7CC0];
  while (v2 < *(v1 + 16))
  {
    v5 = v0[178];
    v6 = v0[177];
    v7 = v0[171];
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = *(v3 + 72);
    sub_1D60CBBE8(v1 + v8 + v9 * v2, v7, type metadata accessor for DebugFormatWorkspace);
    v10 = (v7 + *(v39 + 20));
    v11 = *v10 == v6 && v10[1] == v5;
    if (v11 || (sub_1D72646CC() & 1) != 0)
    {
      sub_1D60CBC50(v0[171], type metadata accessor for DebugFormatWorkspace);
    }

    else
    {
      sub_1D60CBDE4(v0[171], v0[170], type metadata accessor for DebugFormatWorkspace);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998988(0, *(v4 + 16) + 1, 1);
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D6998988((v12 > 1), v13 + 1, 1);
      }

      v14 = v0[170];
      *(v4 + 16) = v13 + 1;
      sub_1D60CBDE4(v14, v4 + v8 + v13 * v9, type metadata accessor for DebugFormatWorkspace);
    }

    if (v40 == ++v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1D60BE31C()
{
  v1 = v0[166];
  v2 = v0[165];
  v3 = v0[164];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D60BE45C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v6 = sub_1D72577EC();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v7 = sub_1D7257C7C();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4[11] = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8);
  v4[12] = swift_task_alloc();
  v9 = type metadata accessor for DebugFormatCacheFile(0);
  v4[13] = v9;
  v4[14] = *(v9 - 8);
  v4[15] = swift_task_alloc();
  v10 = sub_1D72585BC();
  v4[16] = v10;
  v4[17] = *(v10 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1D5B54578(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v8);
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  v4[21] = v11;
  v4[22] = v12;
  v4[23] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D60BE758, 0, 0);
}

uint64_t sub_1D60BE758()
{
  v1 = v0[20];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
  v34 = v0[13];
  v35 = v0[9];
  v33 = v0[3];
  sub_1D725849C();
  sub_1D725849C();
  v7 = *(v3 + 8);
  v0[24] = v7;
  v0[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  sub_1D7257BCC();
  v7(v1, v4);
  sub_1D60CB96C(v33, v6, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D5B54578);
  v8 = (*(v5 + 48))(v6, 1, v34);
  v9 = (v35 + 48);
  if (v8 == 1)
  {
    sub_1D60CB820(v0[12], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v10 = *v9;
  }

  else
  {
    v11 = v0[21];
    v12 = v0[8];
    sub_1D60CBDE4(v0[12], v0[15], type metadata accessor for DebugFormatCacheFile);
    v10 = *v9;
    if (!(*v9)(v11, 1, v12))
    {
      sub_1D5B54578(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
      sub_1D7257B5C();
      *(swift_allocObject() + 16) = xmmword_1D7273AE0;
      sub_1D7257B2C();
      sub_1D7257B7C();
    }

    sub_1D60CBC50(v0[15], type metadata accessor for DebugFormatCacheFile);
  }

  v13 = v0[21];
  v14 = v0[8];
  v15 = v10(v13, 1, v14);
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[11];
  if (v15)
  {
    (*(v17 + 56))(v0[11], 1, 1, v0[16]);
LABEL_9:
    sub_1D60CB820(v0[11], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D60CEC74();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    sub_1D60CB820(v0[21], &unk_1EDF43B50, MEMORY[0x1E69681B8]);

    v22 = v0[1];

    return v22();
  }

  v20 = v0[9];
  v19 = v0[10];
  (*(v20 + 16))(v19, v13, v14);
  sub_1D7257BDC();
  (*(v20 + 8))(v19, v14);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    goto LABEL_9;
  }

  v24 = v0[20];
  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[16];
  v28 = v0[7];
  v29 = v0[4];
  (*(v26 + 32))(v25, v0[11], v27);
  (*(v26 + 16))(v24, v25, v27);
  sub_1D72577AC();
  sub_1D725774C();
  v30 = *(v29 + 128);
  v31 = swift_task_alloc();
  *(v31 + 16) = v30;
  *(v31 + 24) = v28;
  sub_1D60CFD84(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0[26] = sub_1D725BBAC();

  v32 = swift_task_alloc();
  v0[27] = v32;
  *v32 = v0;
  v32[1] = sub_1D60BED6C;

  return MEMORY[0x1EEE44EE0](v32);
}

uint64_t sub_1D60BED6C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1D60BEFC8;
  }

  else
  {
    v2 = sub_1D60BEE9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60BEE9C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  (*(v0 + 192))(*(v0 + 144), *(v0 + 128));
  (*(v2 + 8))(v3, v4);
  sub_1D60CB820(v1, &unk_1EDF43B50, MEMORY[0x1E69681B8]);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D60BEFC8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 192))(*(v0 + 144), *(v0 + 128));
  (*(v2 + 8))(v1, v3);
  sub_1D60CB820(*(v0 + 168), &unk_1EDF43B50, MEMORY[0x1E69681B8]);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1D60BF100(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for DebugFormatWorkspaceReference(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725B31C();

  v8 = v34;
  v9 = *(v34 + 16);
  if (v9)
  {
    v31 = a2;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v9, 0);
    v10 = v34;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1D60CBBE8(v11, v7, type metadata accessor for DebugFormatWorkspaceReference);
      v13 = *(v7 + 2);
      v14 = *(v7 + 3);

      sub_1D60CBC50(v7, type metadata accessor for DebugFormatWorkspaceReference);
      v34 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        v10 = v34;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v11 += v12;
      --v9;
    }

    while (v9);

    a2 = v31;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1D5B86020(v10);

  if (*(v18 + 16))
  {
    v19 = v18 + 56;

    v20 = 1;
    v21 = a2;
    v22 = v32;
    while (1)
    {

      sub_1D7264A0C();
      sub_1D72621EC();
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v18 + 32);
      v25 = v23 & ~v24;
      if (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
LABEL_22:

        goto LABEL_24;
      }

      v26 = ~v24;
      while (1)
      {
        v27 = (*(v18 + 48) + 16 * v25);
        v28 = *v27 == v22 && v27[1] == v21;
        if (v28 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      swift_bridgeObjectRelease_n();
      v34 = v32;
      v35 = a2;

      MEMORY[0x1DA6F9910](32, 0xE100000000000000);
      v33 = v20;
      v29 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v29);

      if (__OFADD__(v20++, 1))
      {
        break;
      }

      v22 = v34;
      v21 = v35;
      if (!*(v18 + 16))
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_24:
  }
}

uint64_t sub_1D60BF454(uint64_t a1, uint64_t a2)
{
  v3[551] = v2;
  v3[550] = a2;
  v3[549] = a1;
  sub_1D60CB67C(0);
  v3[552] = swift_task_alloc();
  v3[553] = swift_task_alloc();
  v3[554] = swift_task_alloc();
  v3[555] = type metadata accessor for DebugFormatBindingRequest(0);
  v3[556] = swift_task_alloc();
  v3[557] = type metadata accessor for FormatContentSubgroup(0);
  v3[558] = swift_task_alloc();
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v3[559] = v4;
  v3[560] = *(v4 - 8);
  v3[561] = swift_task_alloc();
  sub_1D60CF280(0);
  v3[562] = swift_task_alloc();
  v3[563] = type metadata accessor for FormatWorkspaceGroup(0);
  v3[564] = swift_task_alloc();
  v3[565] = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC883570, sub_1D60CF310, MEMORY[0x1E69E6720]);
  v3[566] = swift_task_alloc();
  sub_1D726290C();
  v3[567] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v3[568] = v6;
  v3[569] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D60BF6BC, v6, v5);
}

uint64_t sub_1D60BF6BC()
{
  v135 = v0;

  sub_1D725B31C();

  *(v0 + 3376) = *(v0 + 3584);
  *(v0 + 3392) = *(v0 + 3600);
  *(v0 + 3408) = *(v0 + 3616);
  *(v0 + 3424) = *(v0 + 3632);
  *(v0 + 3312) = *(v0 + 3520);
  *(v0 + 3328) = *(v0 + 3536);
  *(v0 + 3344) = *(v0 + 3552);
  *(v0 + 3360) = *(v0 + 3568);
  *(v0 + 3248) = *(v0 + 3456);
  *(v0 + 3264) = *(v0 + 3472);
  *(v0 + 3280) = *(v0 + 3488);
  *(v0 + 3296) = *(v0 + 3504);
  *(v0 + 3232) = *(v0 + 3440);
  *(v0 + 3168) = *(v0 + 3584);
  *(v0 + 3184) = *(v0 + 3600);
  *(v0 + 3200) = *(v0 + 3616);
  *(v0 + 3216) = *(v0 + 3632);
  *(v0 + 3104) = *(v0 + 3520);
  *(v0 + 3120) = *(v0 + 3536);
  *(v0 + 3136) = *(v0 + 3552);
  *(v0 + 3152) = *(v0 + 3568);
  *(v0 + 3040) = *(v0 + 3456);
  *(v0 + 3056) = *(v0 + 3472);
  *(v0 + 3072) = *(v0 + 3488);
  *(v0 + 3088) = *(v0 + 3504);
  *(v0 + 3024) = *(v0 + 3440);
  if (sub_1D5DEA380(v0 + 3024) == 1)
  {
    v1 = *(v0 + 4392);

    sub_1D60CF378(v0 + 1944);
    v2 = *(v0 + 1960);
    *v1 = *(v0 + 1944);
    *(v1 + 16) = v2;
    v3 = *(v0 + 1976);
    v4 = *(v0 + 1992);
    v5 = *(v0 + 2024);
    *(v1 + 64) = *(v0 + 2008);
    *(v1 + 80) = v5;
    *(v1 + 32) = v3;
    *(v1 + 48) = v4;
    v6 = *(v0 + 2040);
    v7 = *(v0 + 2056);
    v8 = *(v0 + 2088);
    *(v1 + 128) = *(v0 + 2072);
    *(v1 + 144) = v8;
    *(v1 + 96) = v6;
    *(v1 + 112) = v7;
    v9 = *(v0 + 2104);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2136);
    *(v1 + 208) = *(v0 + 2152);
    *(v1 + 176) = v10;
    *(v1 + 192) = v11;
    *(v1 + 160) = v9;
    goto LABEL_58;
  }

  v12 = *(v0 + 4528);
  v13 = *(v0 + 3224);
  *(v0 + 4304) = *(v0 + 3104);
  *(v0 + 4312) = 0;
  *(v0 + 4320) = v13;
  *(v0 + 4328) = 0;
  *(v0 + 4336) = 0;
  *(v0 + 4560) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__packages;
  *(v0 + 4568) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__weather;

  sub_1D60C1E5C(v12);
  sub_1D60CF310(0);
  v15 = v14;
  v132 = v0;
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) != 1)
  {
    *(v0 + 4584) = MEMORY[0x1E69E7CC0];
    *(v0 + 4576) = 0;
    v25 = *(v0 + 4528);
    v26 = (v25 + *(v15 + 48));
    v28 = *v26;
    v27 = v26[1];
    v130 = v26[2];
    v133 = v26[3];
    sub_1D60CBDE4(v25, *(v0 + 4520), type metadata accessor for FormatWorkspaceGroup);

    sub_1D725B31C();

    memcpy((v0 + 688), (v0 + 1024), 0x150uLL);
    memcpy((v0 + 1360), (v0 + 1024), 0x150uLL);
    v29 = sub_1D71689D8();
    sub_1D60CEF18(v0 + 688);
    if (v29 >> 62)
    {
      goto LABEL_54;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_55:
    v105 = v0 + 2808;

    v106 = v0;
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v107 = *(v0 + 4520);
    v108 = *(v0 + 4392);
    sub_1D5F5EBA0(0, 0, 0, 0xD000000000000039, 0x80000001D73C93D0);
    sub_1D60CB8FC(v106 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
    sub_1D60CBC50(v107, type metadata accessor for FormatWorkspaceGroup);
    sub_1D60CF378(v105);
    v109 = *(v105 + 16);
    *v108 = *v105;
    *(v108 + 16) = v109;
    v110 = *(v105 + 32);
    v111 = *(v105 + 48);
    v112 = *(v105 + 80);
    *(v108 + 64) = *(v105 + 64);
    *(v108 + 80) = v112;
    *(v108 + 32) = v110;
    *(v108 + 48) = v111;
    v113 = *(v105 + 96);
    v114 = *(v105 + 112);
    v115 = *(v105 + 144);
    *(v108 + 128) = *(v105 + 128);
    *(v108 + 144) = v115;
    *(v108 + 96) = v113;
    *(v108 + 112) = v114;
    v116 = *(v105 + 160);
    v117 = *(v105 + 176);
    v118 = *(v105 + 192);
    *(v108 + 208) = *(v105 + 208);
    *(v108 + 176) = v117;
    *(v108 + 192) = v118;
    *(v108 + 160) = v116;
    v0 = v106;
    goto LABEL_58;
  }

  v16 = *(v0 + 4408);

  swift_beginAccess();
  v17 = *(v16 + 104);
  v125 = (v0 + 3220);
  if (*(v17 + 16))
  {
    v18 = sub_1D5B69D90(*(v0 + 3040), *(v0 + 3048));
    v19 = *(v0 + 4432);
    if (v20)
    {
      v21 = v18;
      v22 = *(v17 + 56);
      v23 = type metadata accessor for DebugFormatWorkspace(0);
      v24 = *(v23 - 8);
      sub_1D60CBBE8(v22 + *(v24 + 72) * v21, v19, type metadata accessor for DebugFormatWorkspace);
      (*(v24 + 56))(v19, 0, 1, v23);
    }

    else
    {
      v48 = type metadata accessor for DebugFormatWorkspace(0);
      (*(*(v48 - 8) + 56))(v19, 1, 1, v48);
    }
  }

  else
  {
    v46 = *(v0 + 4432);
    v47 = type metadata accessor for DebugFormatWorkspace(0);
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  }

  v49 = *(v0 + 4432);
  v50 = *(v0 + 4424);
  v51 = *(v0 + 4416);
  swift_endAccess();
  sub_1D60CBBE8(v49, v50, sub_1D60CB67C);
  sub_1D60CBBE8(v50, v51, sub_1D60CB67C);

  sub_1D725B32C();

  sub_1D60CBC50(v50, sub_1D60CB67C);
  v123 = *(v0 + 3024);
  v52 = *(v0 + 3032);
  v28 = *(v0 + 3096);
  v53 = MEMORY[0x1E69E7CC0];
  v134 = MEMORY[0x1E69E7CC0];
  v29 = *(v28 + 16);
  v124 = v0 + 3040;
  sub_1D5ECF1C0(v0 + 3040, v0 + 3648);
  v122 = v52;

  if (!v29)
  {
    v127 = v53;
    goto LABEL_41;
  }

  v54 = 0;
  v129 = -v29;
  v55 = v28 + 40;
  v127 = MEMORY[0x1E69E7CC0];
  v130 = v28;
  v121 = v28 + 40;
  while (2)
  {
    v27 = (v55 + 16 * v54++);
    while (1)
    {
      if ((v54 - 1) >= *(v28 + 16))
      {
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v30 = sub_1D7263BFC();
          if (!v30)
          {
            goto LABEL_55;
          }

LABEL_9:
          v31 = 0;
          v128 = v0 + 2376;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x1DA6FB460](v31, v29);
            }

            else
            {
              if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_53;
              }

              v32 = *(v29 + 8 * v31 + 32);
            }

            *(v0 + 4592) = v32;
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            v34 = *(v32 + 16);
            v35 = *(v34 + 16) == v28 && *(v34 + 24) == v27;
            if (v35 || (sub_1D72646CC() & 1) != 0)
            {

              v36 = *(v32 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
              v37 = v132;
              swift_beginAccess();
              v38 = *(v36 + 16);
              v39 = *(v38 + 16);

              if (v39)
              {
                v40 = sub_1D5B69D90(v130, v133);
                v131 = *(v132 + 4496);
                if (v41)
                {
                  v42 = v40;
                  v126 = *(v38 + 56);
                  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
                  v44 = v43;
                  v45 = *(v43 - 8);
                  sub_1D5C5DC00(v126 + *(v45 + 72) * v42, v131);

                  (*(v45 + 56))(v131, 0, 1, v44);
                  v37 = v132;
                }

                else
                {

                  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
                  v44 = v80;
                  (*(*(v80 - 8) + 56))(v131, 1, 1, v80);
                }
              }

              else
              {
                v78 = *(v132 + 4496);

                sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
                v44 = v79;
                (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
              }

              v81 = v37;
              v82 = *(v37 + 4496);

              sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
              if ((*(*(v44 - 8) + 48))(v82, 1, v44) == 1)
              {
                v83 = *(v81 + 4496);

                sub_1D60CBC50(v83, sub_1D60CF280);

                if (qword_1EC87D498 != -1)
                {
                  swift_once();
                }

                v84 = *(v81 + 4520);
                v85 = *(v81 + 4392);
                sub_1D5F5EBA0(0, 0, 0, 0xD00000000000003FLL, 0x80000001D73C9350);

                sub_1D60CB8FC(v81 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
                sub_1D60CBC50(v84, type metadata accessor for FormatWorkspaceGroup);
                sub_1D60CF378(v128);
                v86 = *(v128 + 16);
                *v85 = *v128;
                *(v85 + 16) = v86;
                v87 = *(v128 + 32);
                v88 = *(v128 + 48);
                v89 = *(v128 + 80);
                *(v85 + 64) = *(v128 + 64);
                *(v85 + 80) = v89;
                *(v85 + 32) = v87;
                *(v85 + 48) = v88;
                v90 = *(v128 + 96);
                v91 = *(v128 + 112);
                v92 = *(v128 + 144);
                *(v85 + 128) = *(v128 + 128);
                *(v85 + 144) = v92;
                *(v85 + 96) = v90;
                *(v85 + 112) = v91;
                v93 = *(v128 + 160);
                v94 = *(v128 + 176);
                v95 = *(v128 + 192);
                *(v85 + 208) = *(v128 + 208);
                *(v85 + 176) = v94;
                *(v85 + 192) = v95;
                *(v85 + 160) = v93;
                v0 = v81;
                goto LABEL_58;
              }

              v96 = *(v81 + 4520);
              v97 = *(v81 + 4512);
              v98 = *(v81 + 4496);
              *(v81 + 4016) = *v98;
              v99 = v98[3];
              v100 = v98[4];
              v101 = v98[2];
              *(v81 + 4032) = v98[1];
              *(v81 + 4080) = v100;
              *(v81 + 4064) = v99;
              *(v81 + 4048) = v101;
              v102 = v98[7];
              v103 = v98[8];
              v104 = v98[6];
              *(v81 + 4096) = v98[5];
              *(v81 + 4144) = v103;
              *(v81 + 4128) = v102;
              *(v81 + 4112) = v104;
              sub_1D5D65D5C(v81 + 4016, v81 + 4160);
              sub_1D5C5E444(v98);
              sub_1D60CBBE8(v96, v97, type metadata accessor for FormatWorkspaceGroup);
              sub_1D5F588A0(v81 + 1696);
              sub_1D5ECF1C0(v81 + 3040, v81 + 3832);

              return MEMORY[0x1EEE6DFA0](sub_1D60C06B4, 0, 0);
            }

            ++v31;
            v0 = v132;
            if (v33 == v30)
            {
              goto LABEL_55;
            }
          }
        }
      }

      v0 = *v27;
      v133 = *(v27 - 1);
      swift_bridgeObjectRetain_n();

      sub_1D725B31C();

      memcpy((v132 + 16), (v132 + 352), 0x150uLL);
      v29 = *(v132 + 112);

      sub_1D60CEF18(v132 + 16);

      if (*(v29 + 16))
      {
        break;
      }

      swift_bridgeObjectRelease_n();
LABEL_31:

      ++v54;
      v28 = v130;
      v27 += 2;
      if (v129 + v54 == 1)
      {
        goto LABEL_41;
      }
    }

    sub_1D5B69D90(v133, v0);
    v57 = v56;

    if ((v57 & 1) == 0)
    {

      goto LABEL_31;
    }

    MEMORY[0x1DA6F9CE0](v58);
    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v0 = v129 + v54;
    v29 = &v134;
    sub_1D726278C();
    v127 = v134;
    v28 = v130;
    v55 = v121;
    if (v129 + v54)
    {
      continue;
    }

    break;
  }

LABEL_41:
  v0 = v132;
  v59 = *(v132 + 4432);
  v60 = *(v132 + 4392);

  v61 = *(v132 + 3219);
  v62 = *v125;
  sub_1D60CBC50(v59, sub_1D60CB67C);
  sub_1D60CB8FC(v132 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
  v63 = *(v124 + 144);
  *(v132 + 2304) = *(v124 + 128);
  *(v132 + 2320) = v63;
  *(v132 + 2336) = *(v124 + 160);
  v64 = *(v124 + 80);
  *(v132 + 2240) = *(v124 + 64);
  *(v132 + 2256) = v64;
  v65 = *(v124 + 112);
  *(v132 + 2272) = *(v124 + 96);
  *(v132 + 2288) = v65;
  v66 = *(v124 + 16);
  *(v132 + 2176) = *v124;
  *(v132 + 2192) = v66;
  v67 = *(v124 + 48);
  *(v132 + 2208) = *(v124 + 32);
  *(v132 + 2351) = *(v124 + 175);
  *(v132 + 2224) = v67;
  *(v132 + 2160) = v123;
  *(v132 + 2168) = v122;
  *(v132 + 2355) = v61;
  *(v132 + 2356) = v62;
  *(v132 + 2360) = v127;
  *(v132 + 2368) = MEMORY[0x1E69E7CC0];
  nullsub_1();
  v68 = *(v132 + 2176);
  *v60 = *(v132 + 2160);
  *(v60 + 16) = v68;
  v69 = *(v132 + 2192);
  v70 = *(v132 + 2208);
  v71 = *(v132 + 2240);
  *(v60 + 64) = *(v132 + 2224);
  *(v60 + 80) = v71;
  *(v60 + 32) = v69;
  *(v60 + 48) = v70;
  v72 = *(v132 + 2256);
  v73 = *(v132 + 2272);
  v74 = *(v132 + 2304);
  *(v60 + 128) = *(v132 + 2288);
  *(v60 + 144) = v74;
  *(v60 + 96) = v72;
  *(v60 + 112) = v73;
  v75 = *(v132 + 2320);
  v76 = *(v132 + 2336);
  v77 = *(v132 + 2352);
  *(v60 + 208) = *(v132 + 2368);
  *(v60 + 176) = v76;
  *(v60 + 192) = v77;
  *(v60 + 160) = v75;
LABEL_58:

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_1D60C06B4()
{
  v1 = *(v0 + 4576);
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(&unk_1F5111610);
  sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  *(v0 + 4600) = sub_1D72578BC();
  *(v0 + 4608) = v2;
  if (v1)
  {
    v3 = *(v0 + 4512);

    sub_1D5ECF21C(v0 + 3040);
    sub_1D5D68304(v0 + 4016);
    sub_1D60CBC50(v3, type metadata accessor for FormatWorkspaceGroup);

    *(v0 + 4640) = v1;

    v4 = *(v0 + 4552);
    v5 = *(v0 + 4544);

    return MEMORY[0x1EEE6DFA0](sub_1D60C1C40, v5, v4);
  }

  else
  {

    type metadata accessor for FormatJSONDecoder(0);
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F5111638);
    sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
    sub_1D725A69C();
    v6 = *(v0 + 4464);
    v7 = *(v0 + 4448);
    v8 = *(v0 + 4440);

    sub_1D60CBBE8(v6, v7 + v8[5], type metadata accessor for FormatContentSubgroup);

    sub_1D725972C();

    v9 = *(v0 + 3827);
    v10 = *(v0 + 3040);
    v11 = *(v0 + 3056);
    v12 = *(v0 + 3088);
    *(v7 + 32) = *(v0 + 3072);
    *(v7 + 48) = v12;
    *v7 = v10;
    *(v7 + 16) = v11;
    v13 = *(v0 + 3104);
    v14 = *(v0 + 3120);
    v15 = *(v0 + 3152);
    *(v7 + 96) = *(v0 + 3136);
    *(v7 + 112) = v15;
    *(v7 + 64) = v13;
    *(v7 + 80) = v14;
    v16 = *(v0 + 3168);
    v17 = *(v0 + 3184);
    v18 = *(v0 + 3200);
    *(v7 + 175) = *(v0 + 3215);
    *(v7 + 144) = v17;
    *(v7 + 160) = v18;
    *(v7 + 128) = v16;
    *(v7 + v8[6]) = v9;
    v19 = v7 + v8[7];
    v20 = *(v0 + 1696);
    v21 = *(v0 + 1712);
    v22 = *(v0 + 1744);
    *(v19 + 32) = *(v0 + 1728);
    *(v19 + 48) = v22;
    *v19 = v20;
    *(v19 + 16) = v21;
    v23 = *(v0 + 1760);
    v24 = *(v0 + 1776);
    v25 = *(v0 + 1808);
    *(v19 + 96) = *(v0 + 1792);
    *(v19 + 112) = v25;
    *(v19 + 64) = v23;
    *(v19 + 80) = v24;
    v26 = *(v0 + 1824);
    v27 = *(v0 + 1840);
    v28 = *(v0 + 1872);
    *(v19 + 160) = *(v0 + 1856);
    *(v19 + 176) = v28;
    *(v19 + 128) = v26;
    *(v19 + 144) = v27;
    v29 = *(v0 + 1888);
    v30 = *(v0 + 1904);
    v31 = *(v0 + 1920);
    *(v19 + 240) = *(v0 + 1936);
    *(v19 + 208) = v30;
    *(v19 + 224) = v31;
    *(v19 + 192) = v29;
    v32 = swift_task_alloc();
    *(v0 + 4616) = v32;
    *v32 = v0;
    v32[1] = sub_1D60C0A84;
    v33 = *(v0 + 4448);

    return sub_1D7107ACC(v33);
  }
}

uint64_t sub_1D60C0A84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 4624) = v1;

  if (v1)
  {

    sub_1D5D68304(v4 + 4016);
    v5 = sub_1D60C1B5C;
  }

  else
  {
    *(v4 + 4632) = a1;
    v5 = sub_1D60C0BC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D60C0BC0()
{
  v1 = v0[558];
  v2 = v0[556];
  sub_1D5B952F8(v0[575], v0[576]);
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v1, type metadata accessor for FormatContentSubgroup);
  v3 = v0[569];
  v4 = v0[568];

  return MEMORY[0x1EEE6DFA0](sub_1D60C0C6C, v4, v3);
}

uint64_t sub_1D60C0C6C()
{
  v1 = v0;
  v2 = *(v0 + 4632);
  v3 = *(v0 + 4592);
  v4 = *(v0 + 4488);
  v5 = *(v0 + 4472);
  sub_1D60CBDE4(v1[564], v1[561], type metadata accessor for FormatWorkspaceGroup);
  *(v4 + v5[5]) = v2;
  *(v4 + v5[6]) = v3;
  v6 = (v4 + v5[7]);
  v7 = *(v0 + 4144);
  v8 = *(v0 + 4128);
  v9 = *(v0 + 4112);
  v6[5] = *(v0 + 4096);
  v6[6] = v9;
  v6[7] = v8;
  v6[8] = v7;
  v10 = *(v0 + 4080);
  v11 = *(v0 + 4064);
  v12 = *(v0 + 4048);
  v6[1] = *(v0 + 4032);
  v6[2] = v12;
  v6[3] = v11;
  v6[4] = v10;
  *v6 = *(v0 + 4016);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 4584);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_2:
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v120 = sub_1D699164C((v15 > 1), v16 + 1, 1, v14);
  }

  else
  {
    v120 = v14;
  }

  v17 = v1[566];
  v18 = v1[561];
  v19 = v1[560];
  sub_1D60CBC50(v1[565], type metadata accessor for FormatWorkspaceGroup);
  v120[2] = v16 + 1;
  sub_1D60CBDE4(v18, v120 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60C1E5C(v17);
  sub_1D60CF310(0);
  v21 = v20;
  v126 = v1;
  if ((*(*(v20 - 8) + 48))(v17, 1, v20) == 1)
  {
    v22 = v1[551];

    swift_beginAccess();
    v23 = *(v22 + 104);
    if (*(v23 + 16))
    {
      v24 = sub_1D5B69D90(v1[380], v1[381]);
      v25 = v1[554];
      if (v26)
      {
        v27 = v24;
        v28 = *(v23 + 56);
        v29 = type metadata accessor for DebugFormatWorkspace(0);
        v30 = *(v29 - 8);
        sub_1D60CBBE8(v28 + *(v30 + 72) * v27, v25, type metadata accessor for DebugFormatWorkspace);
        (*(v30 + 56))(v25, 0, 1, v29);
      }

      else
      {
        v55 = type metadata accessor for DebugFormatWorkspace(0);
        (*(*(v55 - 8) + 56))(v25, 1, 1, v55);
      }
    }

    else
    {
      v53 = v1[554];
      v54 = type metadata accessor for DebugFormatWorkspace(0);
      (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
    }

    v56 = v1[554];
    v57 = v1[553];
    v58 = v1[552];
    swift_endAccess();
    sub_1D60CBBE8(v56, v57, sub_1D60CB67C);
    sub_1D60CBBE8(v57, v58, sub_1D60CB67C);

    sub_1D725B32C();

    sub_1D60CBC50(v57, sub_1D60CB67C);
    v116 = v1[378];
    v59 = v1[379];
    v60 = v1[387];
    v61 = MEMORY[0x1E69E7CC0];
    v129 = MEMORY[0x1E69E7CC0];
    v62 = *(v60 + 16);
    v118 = v1 + 380;
    sub_1D5ECF1C0((v1 + 380), (v1 + 456));
    v115 = v59;

    if (!v62)
    {
      v119 = v61;
      goto LABEL_44;
    }

    v63 = 0;
    v122 = -v62;
    v64 = v60 + 40;
    v119 = MEMORY[0x1E69E7CC0];
    v125 = v60;
    v114 = v60 + 40;
    while (1)
    {
      v1 = (v64 + 16 * v63++);
      while (1)
      {
        if ((v63 - 1) >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_55;
        }

        v65 = *v1;
        v128 = *(v1 - 1);
        swift_bridgeObjectRetain_n();

        sub_1D725B31C();

        memcpy(v126 + 2, v126 + 44, 0x150uLL);
        v66 = v126[14];

        sub_1D60CEF18((v126 + 2));

        if (*(v66 + 16))
        {
          break;
        }

        swift_bridgeObjectRelease_n();
LABEL_33:

        v60 = v125;
        ++v63;
        v1 += 2;
        if (v122 + v63 == 1)
        {
          v1 = v126;
          goto LABEL_44;
        }
      }

      sub_1D5B69D90(v128, v65);
      v68 = v67;

      if ((v68 & 1) == 0)
      {
        break;
      }

      MEMORY[0x1DA6F9CE0](v69);
      v60 = v125;
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v119 = v129;
      v1 = v126;
      v64 = v114;
      if (!(v122 + v63))
      {
LABEL_44:
        v70 = v1[554];
        v71 = v1[549];

        v72 = *(v1 + 3219);
        v73 = *(v1 + 3220);
        sub_1D60CBC50(v70, sub_1D60CB67C);
        sub_1D60CB8FC((v1 + 404), &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
        v74 = *(v118 + 9);
        *(v1 + 144) = *(v118 + 8);
        *(v1 + 145) = v74;
        *(v1 + 146) = *(v118 + 10);
        v75 = *(v118 + 5);
        *(v1 + 140) = *(v118 + 4);
        *(v1 + 141) = v75;
        v76 = *(v118 + 7);
        *(v1 + 142) = *(v118 + 6);
        *(v1 + 143) = v76;
        v77 = *(v118 + 1);
        *(v1 + 136) = *v118;
        *(v1 + 137) = v77;
        v78 = *(v118 + 3);
        *(v1 + 138) = *(v118 + 2);
        *(v1 + 2351) = *(v118 + 175);
        *(v1 + 139) = v78;
        v1[270] = v116;
        v1[271] = v115;
        *(v1 + 2355) = v72;
        *(v1 + 2356) = v73;
        v1[295] = v119;
        v1[296] = v120;
        nullsub_1();
        v79 = *(v1 + 136);
        *v71 = *(v1 + 135);
        *(v71 + 16) = v79;
        v80 = *(v1 + 137);
        v81 = *(v1 + 138);
        v82 = *(v1 + 140);
        *(v71 + 64) = *(v1 + 139);
        *(v71 + 80) = v82;
        *(v71 + 32) = v80;
        *(v71 + 48) = v81;
        v83 = *(v1 + 141);
        v84 = *(v1 + 142);
        v85 = *(v1 + 144);
        *(v71 + 128) = *(v1 + 143);
        *(v71 + 144) = v85;
        *(v71 + 96) = v83;
        *(v71 + 112) = v84;
        v86 = *(v1 + 145);
        v87 = *(v1 + 146);
        v88 = *(v1 + 147);
        v89 = v1[296];
        goto LABEL_64;
      }
    }

    goto LABEL_33;
  }

  v31 = v1[578];
  v1[573] = v120;
  v1[572] = v31;
  v32 = v1[566];
  v33 = (v32 + *(v21 + 48));
  v35 = *v33;
  v34 = v33[1];
  v36 = v33[2];
  v127 = v33[3];
  sub_1D60CBDE4(v32, v1[565], type metadata accessor for FormatWorkspaceGroup);

  sub_1D725B31C();

  memcpy(v1 + 86, v1 + 128, 0x150uLL);
  memcpy(v1 + 170, v1 + 128, 0x150uLL);
  v37 = sub_1D71689D8();
  sub_1D60CEF18((v1 + 86));
  v123 = v36;
  if (v37 >> 62)
  {
    v38 = sub_1D7263BFC();
    if (!v38)
    {
LABEL_60:
      v40 = (v1 + 351);

      if (qword_1EC87D498 != -1)
      {
        swift_once();
      }

      v95 = v1[565];
      v71 = v1[549];
      sub_1D5F5EBA0(0, 0, 0, 0xD000000000000039, 0x80000001D73C93D0);
LABEL_63:
      sub_1D60CB8FC((v1 + 404), &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
      sub_1D60CBC50(v95, type metadata accessor for FormatWorkspaceGroup);
      sub_1D60CF378(v40);
      v105 = *(v40 + 16);
      *v71 = *v40;
      *(v71 + 16) = v105;
      v106 = *(v40 + 32);
      v107 = *(v40 + 48);
      v108 = *(v40 + 80);
      *(v71 + 64) = *(v40 + 64);
      *(v71 + 80) = v108;
      *(v71 + 32) = v106;
      *(v71 + 48) = v107;
      v109 = *(v40 + 96);
      v110 = *(v40 + 112);
      v111 = *(v40 + 144);
      *(v71 + 128) = *(v40 + 128);
      *(v71 + 144) = v111;
      *(v71 + 96) = v109;
      *(v71 + 112) = v110;
      v86 = *(v40 + 160);
      v87 = *(v40 + 176);
      v88 = *(v40 + 192);
      v89 = *(v40 + 208);
LABEL_64:
      *(v71 + 208) = v89;
      *(v71 + 176) = v87;
      *(v71 + 192) = v88;
      *(v71 + 160) = v86;

      v112 = v1[1];

      return v112();
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_60;
    }
  }

  v39 = 0;
  v40 = (v1 + 297);
  v121 = v1 + 502;
  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1DA6FB460](v39, v37);
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v41 = *(v37 + 8 * v39 + 32);
    }

    v1[574] = v41;
    v1 = (v39 + 1);
    if (__OFADD__(v39, 1))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v14 = sub_1D699164C(0, v14[2] + 1, 1, v14);
      goto LABEL_2;
    }

    v42 = *(v41 + 16);
    v43 = *(v42 + 16) == v35 && *(v42 + 24) == v34;
    if (v43 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    ++v39;
    v43 = v1 == v38;
    v1 = v126;
    if (v43)
    {
      goto LABEL_60;
    }
  }

  v44 = *(v41 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
  v1 = v126;
  swift_beginAccess();
  v45 = *(v44 + 16);
  v46 = *(v45 + 16);

  if (v46)
  {
    v47 = sub_1D5B69D90(v123, v127);
    v124 = v126[562];
    if (v48)
    {
      v49 = v47;
      v117 = *(v45 + 56);
      sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v51 = v50;
      v52 = *(v50 - 8);
      sub_1D5C5DC00(v117 + *(v52 + 72) * v49, v124);

      (*(v52 + 56))(v124, 0, 1, v51);
      v1 = v126;
    }

    else
    {

      sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v51 = v92;
      (*(*(v92 - 8) + 56))(v124, 1, 1, v92);
    }
  }

  else
  {
    v90 = v126[562];

    sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v51 = v91;
    (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
  }

  v93 = v1[562];

  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  if ((*(*(v51 - 8) + 48))(v93, 1, v51) == 1)
  {
    v94 = v1[562];

    sub_1D60CBC50(v94, sub_1D60CF280);

    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v95 = v1[565];
    v71 = v1[549];
    sub_1D5F5EBA0(0, 0, 0, 0xD00000000000003FLL, 0x80000001D73C9350);

    goto LABEL_63;
  }

  v96 = v1[565];
  v97 = v1[564];
  v98 = v1[562];
  *v121 = *v98;
  v99 = v98[4];
  v101 = v98[1];
  v100 = v98[2];
  v121[3] = v98[3];
  v121[4] = v99;
  v121[1] = v101;
  v121[2] = v100;
  v102 = v98[8];
  v104 = v98[5];
  v103 = v98[6];
  v121[7] = v98[7];
  v121[8] = v102;
  v121[5] = v104;
  v121[6] = v103;
  sub_1D5D65D5C(v121, (v1 + 520));
  sub_1D5C5E444(v98);
  sub_1D60CBBE8(v96, v97, type metadata accessor for FormatWorkspaceGroup);
  sub_1D5F588A0((v1 + 212));
  sub_1D5ECF1C0((v1 + 380), (v1 + 479));

  return MEMORY[0x1EEE6DFA0](sub_1D60C06B4, 0, 0);
}

uint64_t sub_1D60C1B5C()
{
  v1 = v0[564];
  v2 = v0[558];
  v3 = v0[556];
  sub_1D5B952F8(v0[575], v0[576]);
  sub_1D60CBC50(v3, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v2, type metadata accessor for FormatContentSubgroup);
  sub_1D60CBC50(v1, type metadata accessor for FormatWorkspaceGroup);
  v0[580] = v0[578];

  v4 = v0[569];
  v5 = v0[568];

  return MEMORY[0x1EEE6DFA0](sub_1D60C1C40, v5, v4);
}

uint64_t sub_1D60C1C40()
{
  v1 = *(v0 + 4640);

  v2 = v1;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 4640);
  v4 = *(v0 + 4520);
  v5 = *(v0 + 4392);
  sub_1D5F5EBA0(v1, 0, 0, 0xD000000000000033, 0x80000001D73C9390);

  sub_1D60CB8FC(v0 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);

  sub_1D60CBC50(v4, type metadata accessor for FormatWorkspaceGroup);
  sub_1D60CF378(v0 + 2592);
  v6 = *(v0 + 2608);
  *v5 = *(v0 + 2592);
  *(v5 + 16) = v6;
  v7 = *(v0 + 2624);
  v8 = *(v0 + 2640);
  v9 = *(v0 + 2672);
  *(v5 + 64) = *(v0 + 2656);
  *(v5 + 80) = v9;
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  v10 = *(v0 + 2688);
  v11 = *(v0 + 2704);
  v12 = *(v0 + 2736);
  *(v5 + 128) = *(v0 + 2720);
  *(v5 + 144) = v12;
  *(v5 + 96) = v10;
  *(v5 + 112) = v11;
  v13 = *(v0 + 2752);
  v14 = *(v0 + 2768);
  v15 = *(v0 + 2784);
  *(v5 + 208) = *(v0 + 2800);
  *(v5 + 176) = v14;
  *(v5 + 192) = v15;
  *(v5 + 160) = v13;

  v16 = *(v0 + 8);

  return v16();
}

void sub_1D60C1E5C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatWorkspaceGroup(0) - 8;
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) != 1)
  {
    v10 = *(v1 + 8);
    v11 = *(*v1 + 16);
    if (v10 != v11)
    {
      if (v10 >= v11)
      {
        __break(1u);
      }

      else
      {
        v12 = *v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10;
        *(v1 + 8) = v10 + 1;
        sub_1D60CBBE8(v12, v7, type metadata accessor for FormatWorkspaceGroup);
        v13 = *(v1 + 16);
        v14 = *(v1 + 24);
        v15 = *(v13 + 16);
        if (v14 == v15)
        {
          sub_1D60CBC50(v7, type metadata accessor for FormatWorkspaceGroup);
          goto LABEL_9;
        }

        if (v14 < v15)
        {
          v17 = (v13 + 32 * v14);
          v19 = v17[6];
          v18 = v17[7];
          v21 = v17[4];
          v20 = v17[5];
          *(v1 + 24) = v14 + 1;
          sub_1D60CF310(0);
          v23 = v22;
          v24 = (a1 + *(v22 + 48));
          sub_1D60CBDE4(v7, a1, type metadata accessor for FormatWorkspaceGroup);
          *v24 = v21;
          v24[1] = v20;
          v24[2] = v19;
          v24[3] = v18;
          (*(*(v23 - 8) + 56))(a1, 0, 1, v23);

          return;
        }
      }

      __break(1u);
      return;
    }

LABEL_9:
    *(v1 + 32) = 1;
    sub_1D60CF310(0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return;
  }

  sub_1D60CF310(0);
  v9 = *(*(v8 - 8) + 56);

  v9(a1, 1, 1, v8);
}

uint64_t sub_1D60C20E8(uint64_t a1, char a2)
{
  *(v3 + 7264) = v2;
  *(v3 + 3363) = a2;
  *(v3 + 7256) = a1;
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  *(v3 + 7272) = v4;
  *(v3 + 7280) = *(v4 - 8);
  *(v3 + 7288) = swift_task_alloc();
  sub_1D60CB67C(0);
  *(v3 + 7296) = swift_task_alloc();
  *(v3 + 7304) = swift_task_alloc();
  *(v3 + 7312) = swift_task_alloc();
  *(v3 + 7320) = swift_task_alloc();
  sub_1D60CF3A0(0);
  *(v3 + 7328) = v5;
  *(v3 + 7336) = swift_task_alloc();
  *(v3 + 7344) = type metadata accessor for DebugFormatWorkspaceKind(0);
  *(v3 + 7352) = swift_task_alloc();
  v6 = type metadata accessor for DebugFormatWorkspace(0);
  *(v3 + 7360) = v6;
  *(v3 + 7368) = *(v6 - 8);
  *(v3 + 7376) = swift_task_alloc();
  *(v3 + 7384) = swift_task_alloc();
  *(v3 + 7392) = swift_task_alloc();
  *(v3 + 7400) = swift_task_alloc();
  *(v3 + 7408) = swift_task_alloc();
  type metadata accessor for FeedContext(0);
  *(v3 + 7416) = swift_task_alloc();
  sub_1D726290C();
  *(v3 + 7424) = sub_1D72628FC();
  v8 = sub_1D726285C();
  *(v3 + 7432) = v8;
  *(v3 + 7440) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D60C2350, v8, v7);
}

uint64_t sub_1D60C2350()
{
  v366 = v0;
  v1 = v0 + 3184;
  v2 = v0 + 4840;
  v3 = v0 + 5944;
  v4 = v0 + 6312;
  v5 = v0 + 6680;
  v6 = *(v0 + 7416);
  v7 = *(*(*(*(v0 + 7264) + 120) + 96) + 32);
  ObjectType = swift_getObjectType();
  v9 = v7;
  v10 = v0;
  FeedContextFactoryType.createFeedContext()(ObjectType, v9);
  v11 = MEMORY[0x1E69E7CC0];
  *(v0 + 7216) = MEMORY[0x1E69E7CC0];
  sub_1D60C49D4(v6, v0 + 4840);
  v12 = *(v0 + 4984);
  *(v0 + 3312) = *(v0 + 4968);
  *(v0 + 3328) = v12;
  *(v0 + 3344) = *(v0 + 5000);
  v13 = *(v0 + 4920);
  *(v0 + 3248) = *(v0 + 4904);
  *(v0 + 3264) = v13;
  v14 = *(v0 + 4952);
  *(v0 + 3280) = *(v0 + 4936);
  *(v0 + 3296) = v14;
  v15 = *(v0 + 4856);
  *(v0 + 3184) = *(v0 + 4840);
  *(v0 + 3200) = v15;
  v16 = *(v0 + 4888);
  *(v0 + 3216) = *(v0 + 4872);
  *(v0 + 3359) = *(v0 + 5015);
  *(v0 + 3232) = v16;
  v17 = v11;
  v340 = v0;
  if (sub_1D5DEA380(v0 + 3184) != 1)
  {
    v18 = *(v0 + 7416);
    v19 = v10[926];
    v20 = v10[919];
    v21 = v10[907];
    swift_storeEnumTagMultiPayload();
    v22 = *(v1 + 144);
    v363 = *(v1 + 128);
    v364 = v22;
    v365[0] = *(v1 + 160);
    *(v365 + 15) = *(v1 + 175);
    v23 = *(v1 + 80);
    v359 = *(v1 + 64);
    v360 = v23;
    v24 = *(v1 + 112);
    v361 = *(v1 + 96);
    v362 = v24;
    v25 = *(v1 + 16);
    v355 = *v1;
    v356 = v25;
    v26 = *(v1 + 48);
    v357 = *(v1 + 32);
    v358 = v26;
    sub_1D60B8884(v21, v20, &v355, v18, v19);
    sub_1D60CBC50(v20, type metadata accessor for DebugFormatWorkspaceKind);
    v17 = sub_1D6991FC0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v28 = v17[2];
    v27 = v17[3];
    v29 = (v28 + 1);
    if (v28 >= v27 >> 1)
    {
LABEL_86:
      v17 = sub_1D6991FC0((v27 > 1), v29, 1, v17);
    }

    v10 = v340;
    v30 = *(v340 + 7408);
    v31 = *(v340 + 7368);
    sub_1D60CB8FC(v2, &qword_1EC883588, &type metadata for FormatWorkspace);
    v17[2] = v29;
    sub_1D60CBDE4(v30, v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, type metadata accessor for DebugFormatWorkspace);
    *(v340 + 7216) = v17;
  }

  v32 = v10[908];
  v28 = v32 + 136;
  v33 = *(v32 + 152);
  v34 = *(v32 + 184);
  v35 = *(v32 + 136);
  *(v5 + 32) = *(v32 + 168);
  *(v5 + 48) = v34;
  *v5 = v35;
  *(v5 + 16) = v33;
  v36 = *(v32 + 216);
  v37 = *(v32 + 248);
  v38 = *(v32 + 200);
  *(v5 + 96) = *(v32 + 232);
  *(v5 + 112) = v37;
  *(v5 + 64) = v38;
  *(v5 + 80) = v36;
  v40 = *(v32 + 280);
  v39 = *(v32 + 296);
  v41 = *(v32 + 264);
  *(v5 + 175) = *(v32 + 311);
  *(v5 + 144) = v40;
  *(v5 + 160) = v39;
  *(v5 + 128) = v41;
  if (sub_1D5DEA380(v5) == 1)
  {
    sub_1D60C4E8C(0xD000000000000016, 0x80000001D73C9410, v10[907] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key, 0x6F72472064656546, 0xEA00000000007075, v10[927], &v355);
    v42 = *v28;
    v43 = *(v28 + 16);
    v44 = *(v28 + 48);
    *(v10 + 408) = *(v28 + 32);
    *(v10 + 409) = v44;
    *(v10 + 406) = v42;
    *(v10 + 407) = v43;
    v45 = *(v28 + 64);
    v46 = *(v28 + 80);
    v47 = *(v28 + 112);
    *(v10 + 412) = *(v28 + 96);
    *(v10 + 413) = v47;
    *(v10 + 410) = v45;
    *(v10 + 411) = v46;
    v48 = *(v28 + 128);
    v49 = *(v28 + 144);
    v50 = *(v28 + 160);
    *(v10 + 6671) = *(v28 + 175);
    *(v10 + 415) = v49;
    *(v10 + 416) = v50;
    *(v10 + 414) = v48;
    v51 = v364;
    *(v28 + 128) = v363;
    *(v28 + 144) = v51;
    *(v28 + 160) = v365[0];
    *(v28 + 175) = *(v365 + 15);
    v52 = v360;
    *(v28 + 64) = v359;
    *(v28 + 80) = v52;
    v53 = v362;
    *(v28 + 96) = v361;
    *(v28 + 112) = v53;
    v54 = v356;
    *v28 = v355;
    *(v28 + 16) = v54;
    v55 = v358;
    *(v28 + 32) = v357;
    *(v28 + 48) = v55;
    sub_1D60CB8FC((v10 + 812), &qword_1EC883588, &type metadata for FormatWorkspace);
  }

  v2 = 7216;
  v56 = *v28;
  v57 = *(v28 + 16);
  v58 = *(v28 + 48);
  *(v3 + 32) = *(v28 + 32);
  *(v3 + 48) = v58;
  *v3 = v56;
  *(v3 + 16) = v57;
  v59 = *(v28 + 64);
  v60 = *(v28 + 80);
  v61 = *(v28 + 112);
  *(v3 + 96) = *(v28 + 96);
  *(v3 + 112) = v61;
  *(v3 + 64) = v59;
  *(v3 + 80) = v60;
  v62 = *(v28 + 128);
  v63 = *(v28 + 144);
  v64 = *(v28 + 160);
  *(v3 + 175) = *(v28 + 175);
  *(v3 + 144) = v63;
  *(v3 + 160) = v64;
  *(v3 + 128) = v62;
  v65 = *v28;
  v66 = *(v28 + 16);
  v67 = *(v28 + 48);
  *(v4 + 32) = *(v28 + 32);
  *(v4 + 48) = v67;
  *v4 = v65;
  *(v4 + 16) = v66;
  v68 = *(v28 + 64);
  v69 = *(v28 + 80);
  v70 = *(v28 + 112);
  *(v4 + 96) = *(v28 + 96);
  *(v4 + 112) = v70;
  *(v4 + 64) = v68;
  *(v4 + 80) = v69;
  v71 = *(v28 + 128);
  v72 = *(v28 + 144);
  v73 = *(v28 + 160);
  *(v4 + 175) = *(v28 + 175);
  *(v4 + 144) = v72;
  *(v4 + 160) = v73;
  *(v4 + 128) = v71;
  if (sub_1D5DEA380(v4) != 1)
  {
    v74 = v10;
    v75 = (v10 + 444);
    v76 = v74[927];
    v77 = v74[925];
    v78 = v74[919];
    v79 = v74[907];
    swift_storeEnumTagMultiPayload();
    v80 = *(v4 + 144);
    v363 = *(v4 + 128);
    v364 = v80;
    v365[0] = *(v4 + 160);
    *(v365 + 15) = *(v4 + 175);
    v81 = *(v4 + 80);
    v359 = *(v4 + 64);
    v360 = v81;
    v82 = *(v4 + 112);
    v361 = *(v4 + 96);
    v362 = v82;
    v83 = *(v4 + 16);
    v355 = *v4;
    v356 = v83;
    v84 = *(v4 + 48);
    v357 = *(v4 + 32);
    v358 = v84;
    v85 = *(v3 + 144);
    *(v75 + 128) = *(v3 + 128);
    *(v75 + 144) = v85;
    *(v75 + 160) = *(v3 + 160);
    *(v75 + 175) = *(v3 + 175);
    v86 = *(v3 + 80);
    *(v75 + 64) = *(v3 + 64);
    *(v75 + 80) = v86;
    v87 = *(v3 + 112);
    *(v75 + 96) = *(v3 + 96);
    *(v75 + 112) = v87;
    v88 = *(v3 + 16);
    *v75 = *v3;
    *(v75 + 16) = v88;
    v89 = *(v3 + 48);
    *(v75 + 32) = *(v3 + 32);
    *(v75 + 48) = v89;
    sub_1D5ECF1C0(v75, (v74 + 858));
    sub_1D60B8884(v79, v78, &v355, v76, v77);
    sub_1D60CBC50(v78, type metadata accessor for DebugFormatWorkspaceKind);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1D6991FC0(0, v17[2] + 1, 1, v17);
    }

    v28 = v17[2];
    v90 = v17[3];
    v10 = v340;
    v2 = 7216;
    if (v28 >= v90 >> 1)
    {
      v17 = sub_1D6991FC0((v90 > 1), v28 + 1, 1, v17);
    }

    v91 = *(v340 + 7400);
    v92 = *(v340 + 7368);
    sub_1D60CB8FC(v3, &qword_1EC883588, &type metadata for FormatWorkspace);
    v17[2] = v28 + 1;
    sub_1D60CBDE4(v91, v17 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v28, type metadata accessor for DebugFormatWorkspace);
    *(v340 + 7216) = v17;
  }

  v93 = v10[908];
  v29 = *(v93 + 320);
  if (v29)
  {
LABEL_41:
    v138 = v10[927];
    v139 = v10[907];
    v140 = swift_task_alloc();
    v140[2] = v93;
    v140[3] = v139;
    v140[4] = v138;

    sub_1D5ECB5F8(sub_1D60CF430, v140, v29);
    v142 = v141;

    sub_1D6986DE4(v142);
    goto LABEL_42;
  }

  v327 = v10[908];
  v5 = *(v10[907] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_feedKeys);
  v94 = *(v5 + 16);
  if (!v94)
  {
    v96 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v95 = 0;
  v3 = (v10 + 559);
  v4 = (v10 + 582);
  v17 = v10 + 720;
  v334 = v10[916];
  v96 = MEMORY[0x1E69E7CC0];
  v333 = *(v5 + 16);
  v326 = v94 - 1;
  v336 = *(v10[907] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_feedKeys);
  do
  {
    v329 = v96;
    v97 = v95;
    while (1)
    {
      v27 = *(v5 + 16);
      if (v97 >= v27)
      {
        __break(1u);
        goto LABEL_86;
      }

      v98 = v10[917];
      v99 = (type metadata accessor for DebugGroupLayoutKey(0) - 8);
      v100 = v5 + ((*(*v99 + 80) + 32) & ~*(*v99 + 80)) + *(*v99 + 72) * v97;
      v101 = v98 + *(v334 + 48);
      *v98 = v97;
      sub_1D60CBBE8(v100, v101, type metadata accessor for DebugGroupLayoutKey);
      v338 = v101;
      v28 = v101 + v99[8];
      v102 = *(v28 + 32);
      v2 = *(v28 + 40);
      v29 = __swift_project_boxed_opaque_existential_1((v28 + 8), v102);
      (*(v2 + 64))(v102, v2);
      v103 = v10[884];
      if (!v103)
      {
        sub_1D60CBC50((v10 + 881), sub_1D5D6013C);
LABEL_22:
        sub_1D60CB7FC(v17);
        goto LABEL_28;
      }

      v104 = v10[885];
      v29 = __swift_project_boxed_opaque_existential_1(v10 + 881, v10[884]);
      v2 = (*(v104 + 40))(v103, v104);
      __swift_destroy_boxed_opaque_existential_1(v10 + 881);
      if (!v2)
      {
        goto LABEL_22;
      }

      *&v355 = 0;
      *(&v355 + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      *&v355 = 0xD000000000000016;
      *(&v355 + 1) = 0x80000001D73C9430;
      v10[903] = v97;
      v105 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v105);

      v106 = *(&v355 + 1);
      v332 = v355;
      sub_1D6A2F628();
      v109 = v10;
      if (v108)
      {
        v110 = v107;
        v29 = v108;
      }

      else
      {
        v330 = v2;
        v112 = *(v28 + 32);
        v111 = *(v28 + 40);
        __swift_project_boxed_opaque_existential_1((v28 + 8), v112);
        v28 = 7128;
        (*(v111 + 64))(v112, v111);
        v113 = v109[894];
        if (v113)
        {
          v114 = v109[895];
          __swift_project_boxed_opaque_existential_1(v109 + 891, v109[894]);
          v110 = (*(v114 + 16))(v113, v114);
          v29 = v115;
          __swift_destroy_boxed_opaque_existential_1(v109 + 891);
        }

        else
        {
          sub_1D60CBC50((v109 + 891), sub_1D5D6013C);
          *&v355 = 0x6F72472064656546;
          *(&v355 + 1) = 0xEB00000000207075;
          v109[904] = v97;
          v116 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v116);

          v29 = *(&v355 + 1);
          v110 = v355;
        }

        v2 = v330;
      }

      sub_1D60C4E8C(v332, v106, v338, v110, v29, v109[927], v17);

      v10 = v109;
LABEL_28:
      sub_1D60CBC50(v10[917], sub_1D60CF3A0);
      v117 = *(v17 + 9);
      *(v4 + 128) = *(v17 + 8);
      *(v4 + 144) = v117;
      *(v4 + 160) = *(v17 + 10);
      *(v4 + 175) = *(v17 + 175);
      v118 = *(v17 + 5);
      *(v4 + 64) = *(v17 + 4);
      *(v4 + 80) = v118;
      v119 = *(v17 + 7);
      *(v4 + 96) = *(v17 + 6);
      *(v4 + 112) = v119;
      v120 = *(v17 + 1);
      *v4 = *v17;
      *(v4 + 16) = v120;
      v121 = *(v17 + 3);
      *(v4 + 32) = *(v17 + 2);
      *(v4 + 48) = v121;
      v5 = v336;
      if (sub_1D5DEA380(v4) != 1)
      {
        break;
      }

      ++v97;
      v122 = *(v17 + 9);
      *(v3 + 128) = *(v17 + 8);
      *(v3 + 144) = v122;
      *(v3 + 160) = *(v17 + 10);
      *(v3 + 175) = *(v17 + 175);
      v123 = *(v17 + 5);
      *(v3 + 64) = *(v17 + 4);
      *(v3 + 80) = v123;
      v124 = *(v17 + 7);
      *(v3 + 96) = *(v17 + 6);
      *(v3 + 112) = v124;
      v125 = *(v17 + 1);
      *v3 = *v17;
      *(v3 + 16) = v125;
      v126 = *(v17 + 3);
      *(v3 + 32) = *(v17 + 2);
      *(v3 + 48) = v126;
      sub_1D60CB8FC(v3, &qword_1EC883588, &type metadata for FormatWorkspace);
      if (v333 == v97)
      {
        v96 = v329;
        goto LABEL_39;
      }
    }

    v351 = *(v17 + 8);
    v352 = *(v17 + 9);
    *v353 = *(v17 + 10);
    *&v353[15] = *(v17 + 175);
    v347 = *(v17 + 4);
    v348 = *(v17 + 5);
    v349 = *(v17 + 6);
    v350 = *(v17 + 7);
    v341 = *v17;
    v343 = *(v17 + 1);
    v345 = *(v17 + 2);
    v346 = *(v17 + 3);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v329;
    }

    else
    {
      v96 = sub_1D6991FF4(0, *(v329 + 2) + 1, 1, v329);
    }

    v28 = *(v96 + 2);
    v127 = *(v96 + 3);
    v29 = (v28 + 1);
    if (v28 >= v127 >> 1)
    {
      v96 = sub_1D6991FF4((v127 > 1), v28 + 1, 1, v96);
    }

    v95 = v97 + 1;
    v357 = v345;
    v358 = v346;
    v361 = v349;
    v362 = v350;
    v359 = v347;
    v360 = v348;
    *(v365 + 15) = *&v353[15];
    v364 = v352;
    v365[0] = *v353;
    v363 = v351;
    v355 = v341;
    v356 = v343;
    *(v96 + 2) = v29;
    v128 = &v96[184 * v28];
    v129 = v355;
    v130 = v356;
    v131 = v358;
    *(v128 + 4) = v357;
    *(v128 + 5) = v131;
    *(v128 + 2) = v129;
    *(v128 + 3) = v130;
    v132 = v359;
    v133 = v360;
    v134 = v362;
    *(v128 + 8) = v361;
    *(v128 + 9) = v134;
    *(v128 + 6) = v132;
    *(v128 + 7) = v133;
    v135 = v363;
    v136 = v364;
    v137 = v365[0];
    *(v128 + 207) = *(v365 + 15);
    *(v128 + 11) = v136;
    *(v128 + 12) = v137;
    *(v128 + 10) = v135;
  }

  while (v326 != v97);
LABEL_39:
  *(v327 + 320) = v96;

  v29 = *(v327 + 320);
  if (v29)
  {
    v93 = v10[908];
    goto LABEL_41;
  }

LABEL_42:
  v335 = v10 + 1452;
  v143 = v10[927];
  v144 = v10[921];
  v145 = v10[920];
  v146 = v10[915];
  v147 = v10[908];
  v148 = *(v340 + 7256);

  sub_1D725B31C();

  v149 = *(v340 + 7240);
  v150 = swift_task_alloc();
  v150[2] = v147;
  v150[3] = v148;
  v151 = v340;
  v150[4] = v143;
  v152 = sub_1D5ECB8BC(sub_1D60CF40C, v150, v149);

  sub_1D6986DE4(v152);
  v153 = *(v340 + 7216);
  *(v340 + 7448) = v153;
  *(v340 + 7248) = v153;

  sub_1D725B32C();

  sub_1D725B31C();

  if ((*(v144 + 48))(v146, 1, v145) == 1)
  {
    sub_1D60CBC50(*(v340 + 7320), sub_1D60CB67C);
    if (*(v153 + 16))
    {
      v154 = *(*(v340 + 7368) + 80);
      sub_1D60CBBE8(v153 + ((v154 + 32) & ~v154), *(v340 + 7296), type metadata accessor for DebugFormatWorkspace);
      v155 = 0;
    }

    else
    {
      v155 = 1;
    }

    v170 = *(v340 + 7304);
    v166 = *(v340 + 7296);
    (*(*(v340 + 7368) + 56))(v166, v155, 1, *(v340 + 7360));
    sub_1D60CBBE8(v166, v170, sub_1D60CB67C);

    sub_1D725B32C();

    v169 = sub_1D60CB67C;
  }

  else
  {
    v156 = *(v340 + 7392);
    v157 = *(v340 + 7360);
    v158 = *(v340 + 7264);
    sub_1D60CBDE4(*(v340 + 7320), v156, type metadata accessor for DebugFormatWorkspace);
    v159 = (v156 + *(v157 + 20));
    v161 = *v159;
    v160 = v159[1];
    swift_beginAccess();
    v162 = *(v158 + 104);
    if (*(v162 + 16) && (v163 = sub_1D5B69D90(v161, v160), (v164 & 1) != 0))
    {
      sub_1D60CBBE8(*(v162 + 56) + *(*(v340 + 7368) + 72) * v163, *(v340 + 7312), type metadata accessor for DebugFormatWorkspace);
      v165 = 0;
    }

    else
    {
      v165 = 1;
    }

    v166 = *(v340 + 7392);
    v167 = *(v340 + 7312);
    v168 = *(v340 + 7304);
    (*(*(v340 + 7368) + 56))(v167, v165, 1, *(v340 + 7360));
    swift_endAccess();
    sub_1D60CBBE8(v167, v168, sub_1D60CB67C);

    sub_1D725B32C();

    sub_1D60CBC50(v167, sub_1D60CB67C);
    v169 = type metadata accessor for DebugFormatWorkspace;
  }

  sub_1D60CBC50(v166, v169);
  if (v335[1911] != 1 || (, sub_1D725B31C(), , v172 = *(v340 + 1848), v171 = *(v340 + 1864), v173 = *(v340 + 1832), *(v340 + 2064) = v172, *(v340 + 2080) = v171, v174 = *(v340 + 1864), *(v340 + 2096) = *(v340 + 1880), v176 = *(v340 + 1784), v175 = *(v340 + 1800), v177 = *(v340 + 1768), *(v340 + 2000) = v176, *(v340 + 2016) = v175, v178 = *(v340 + 1800), v180 = *(v340 + 1816), v179 = *(v340 + 1832), *(v340 + 2032) = v180, *(v340 + 2048) = v179, v182 = *(v340 + 1720), v181 = *(v340 + 1736), v183 = *(v340 + 1704), *(v340 + 1936) = v182, *(v340 + 1952) = v181, v184 = *(v340 + 1736), v186 = *(v340 + 1752), v185 = *(v340 + 1768), *(v340 + 1968) = v186, *(v340 + 1984) = v185, v187 = *(v340 + 1704), v188 = *(v340 + 1688), *(v340 + 1904) = v188, *(v340 + 1920) = v187, *(v340 + 2280) = v172, *(v340 + 2296) = v174, *(v340 + 2312) = *(v340 + 1880), *(v340 + 2216) = v176, *(v340 + 2232) = v178, *(v340 + 2248) = v180, *(v340 + 2264) = v173, *(v340 + 2152) = v182, *(v340 + 2168) = v184, *(v340 + 2184) = v186, *(v340 + 2200) = v177, *(v340 + 2112) = *(v340 + 1896), *(v340 + 2328) = *(v340 + 1896), *(v340 + 2120) = v188, *(v340 + 2136) = v183, sub_1D5DEA380(v340 + 2120) == 1))
  {

    goto LABEL_55;
  }

  v215 = *(v340 + 7264);
  swift_beginAccess();
  v216 = *(v215 + 104);
  if (!*(v216 + 16) || (v217 = sub_1D5B69D90(*(v340 + 2120), *(v340 + 2128)), (v218 & 1) == 0))
  {
    swift_endAccess();

    sub_1D60CB8FC(v340 + 1904, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
LABEL_55:
    v189 = v340 + 2552;

    sub_1D725B31C();

    v191 = *(v340 + 2496);
    v190 = *(v340 + 2512);
    v192 = *(v340 + 2480);
    *(v340 + 2712) = v191;
    *(v340 + 2728) = v190;
    v193 = *(v340 + 2512);
    *(v340 + 2744) = *(v340 + 2528);
    v195 = *(v340 + 2432);
    v194 = *(v340 + 2448);
    v196 = *(v340 + 2416);
    *(v340 + 2648) = v195;
    *(v340 + 2664) = v194;
    v197 = *(v340 + 2448);
    v199 = *(v340 + 2464);
    v198 = *(v340 + 2480);
    *(v340 + 2680) = v199;
    *(v340 + 2696) = v198;
    v201 = *(v340 + 2368);
    v200 = *(v340 + 2384);
    v202 = *(v340 + 2352);
    *(v340 + 2584) = v201;
    *(v340 + 2600) = v200;
    v203 = *(v340 + 2384);
    v205 = *(v340 + 2400);
    v204 = *(v340 + 2416);
    *(v340 + 2616) = v205;
    *(v340 + 2632) = v204;
    v206 = *(v340 + 2352);
    v207 = *(v340 + 2336);
    *(v340 + 2552) = v207;
    *(v340 + 2568) = v206;
    *(v340 + 1416) = v191;
    *(v340 + 1432) = v193;
    *(v340 + 1448) = *(v340 + 2528);
    *(v340 + 1352) = v195;
    *(v340 + 1368) = v197;
    *(v340 + 1384) = v199;
    *(v340 + 1400) = v192;
    *(v340 + 1288) = v201;
    *(v340 + 1304) = v203;
    *(v340 + 1320) = v205;
    *(v340 + 1336) = v196;
    *(v340 + 2760) = *(v340 + 2544);
    *(v340 + 1464) = *(v340 + 2544);
    *(v340 + 1256) = v207;
    *(v340 + 1272) = v202;
    if (sub_1D5DEA380(v340 + 1256) == 1)
    {
      goto LABEL_77;
    }

    v208 = *(v340 + 1464);
    if (!*(v208 + 16))
    {
LABEL_69:
      v342 = *(v340 + 1288);
      v344 = *(v340 + 1304);
      v277 = *(v340 + 1433);
      v361 = *(v340 + 1417);
      v362 = v277;
      LOWORD(v363) = *(v340 + 1449);
      v278 = *(v340 + 1369);
      v357 = *(v340 + 1353);
      v358 = v278;
      v279 = *(v340 + 1401);
      v359 = *(v340 + 1385);
      v360 = v279;
      v280 = *(v340 + 1337);
      v355 = *(v340 + 1321);
      v356 = v280;
      sub_1D5ECF1C0(v340 + 1272, v340 + 5208);

      v331 = *(v340 + 1256);
      v281 = *(v340 + 1264);
      strcpy((v340 + 5024), "builtin:editor");
      *(v340 + 5039) = -18;
      *(v340 + 5040) = v342;
      *(v340 + 5056) = v344;
      v335[3620] = 0;
      v282 = v358;
      *(v340 + 5105) = v357;
      *(v340 + 5121) = v282;
      *(v340 + 5201) = v363;
      v283 = v362;
      *(v340 + 5169) = v361;
      *(v340 + 5185) = v283;
      v284 = v360;
      *(v340 + 5137) = v359;
      *(v340 + 5153) = v284;
      v285 = v356;
      *(v340 + 5073) = v355;
      *(v340 + 5089) = v285;
      v286 = *(v208 + 16);
      if (v286)
      {
        v287 = *(v340 + 7280);
        v339 = *(v340 + 7272);
        v328 = v281;

        sub_1D5ECF1C0(v340 + 5024, v340 + 5392);
        v354 = MEMORY[0x1E69E7CC0];
        sub_1D6998A98(0, v286, 0);
        v288 = v354;
        v289 = v208 + ((*(v287 + 80) + 32) & ~*(v287 + 80));
        v337 = *(v287 + 72);
        do
        {
          v290 = *(v151 + 7288);
          sub_1D60CBBE8(v289, v290, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v291 = *(v339 + 28);
          v292 = *(*(v290 + *(v339 + 24)) + 16);
          v293 = *(v292 + 16);
          v294 = *(v292 + 24);
          v295 = *(v290 + v291);
          v296 = *(v290 + v291 + 8);

          sub_1D60CBC50(v290, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v298 = *(v354 + 16);
          v297 = *(v354 + 24);
          if (v298 >= v297 >> 1)
          {
            sub_1D6998A98((v297 > 1), v298 + 1, 1);
          }

          *(v354 + 16) = v298 + 1;
          v299 = (v354 + 32 * v298);
          v299[4] = v293;
          v299[5] = v294;
          v299[6] = v295;
          v299[7] = v296;
          v289 += v337;
          --v286;
          v151 = v340;
        }

        while (v286);

        v300 = v340 + 5024;
        v189 = v340 + 2552;
        v301 = v328;
      }

      else
      {
        v300 = v340 + 5024;
        v301 = v281;

        sub_1D5ECF1C0(v340 + 5024, v340 + 6128);

        v288 = MEMORY[0x1E69E7CC0];
      }

      v302 = *(v300 + 144);
      *(v151 + 3120) = *(v300 + 128);
      *(v151 + 3136) = v302;
      *(v151 + 3152) = *(v300 + 160);
      v303 = *(v300 + 80);
      *(v151 + 3056) = *(v300 + 64);
      *(v151 + 3072) = v303;
      v304 = *(v300 + 112);
      *(v151 + 3088) = *(v300 + 96);
      *(v151 + 3104) = v304;
      v305 = *(v300 + 16);
      *(v151 + 2992) = *v300;
      *(v151 + 3008) = v305;
      v306 = *(v300 + 48);
      *(v151 + 3024) = *(v300 + 32);
      v307 = *(v151 + 1451);
      v308 = *v335;
      *(v151 + 3167) = *(v300 + 175);
      *(v151 + 3040) = v306;
      *(v151 + 2976) = v331;
      *(v151 + 2984) = v301;
      *(v151 + 3171) = v307;
      *(v151 + 3172) = v308;
      *(v151 + 3176) = v288;
      nullsub_1();
      v309 = *(v340 + 3152);
      *(v340 + 2928) = *(v340 + 3136);
      *(v340 + 2944) = v309;
      *(v340 + 2960) = *(v340 + 3168);
      v310 = *(v340 + 3088);
      *(v340 + 2864) = *(v340 + 3072);
      *(v340 + 2880) = v310;
      v311 = *(v340 + 3120);
      *(v340 + 2896) = *(v340 + 3104);
      *(v340 + 2912) = v311;
      v312 = *(v340 + 3024);
      *(v340 + 2800) = *(v340 + 3008);
      *(v340 + 2816) = v312;
      v313 = *(v340 + 3056);
      *(v340 + 2832) = *(v340 + 3040);
      *(v340 + 2848) = v313;
      v314 = *(v340 + 2992);
      *(v340 + 2768) = *(v340 + 2976);
      *(v340 + 2784) = v314;

      sub_1D725B32C();
      sub_1D60CB8FC(v189, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

      strcpy((v151 + 5576), "builtin:editor");
      *(v151 + 5591) = -18;
      *(v151 + 5592) = v342;
      *(v151 + 5608) = v344;
      *(v151 + 5624) = 0;
      v315 = v362;
      *(v151 + 5721) = v361;
      *(v151 + 5737) = v315;
      *(v151 + 5753) = v363;
      v316 = v358;
      *(v151 + 5657) = v357;
      *(v151 + 5673) = v316;
      v317 = v360;
      *(v151 + 5689) = v359;
      *(v151 + 5705) = v317;
      v318 = v356;
      *(v151 + 5625) = v355;
      *(v151 + 5641) = v318;
      sub_1D5ECF21C(v151 + 5576);
      goto LABEL_81;
    }

    v209 = (v340 + 1008);
    v210 = *(*(v340 + 7280) + 80);
    v211 = *(*(v208 + ((v210 + 32) & ~v210) + *(*(v340 + 7272) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v212 = *(v211 + 16);

    if (v212 && (v213 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v214 & 1) != 0))
    {
      sub_1D5B68374(*(v211 + 56) + 40 * v213, v340 + 7088);
      sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
      if (swift_dynamicCast())
      {
        nullsub_1();
LABEL_68:

        v256 = *(v340 + 1200);
        v257 = *(v340 + 1216);
        v258 = *(v340 + 1184);
        *(v340 + 456) = v256;
        *(v340 + 472) = v257;
        v259 = *(v340 + 1216);
        *(v340 + 488) = *(v340 + 1232);
        v261 = *(v340 + 1136);
        v260 = *(v340 + 1152);
        v262 = *(v340 + 1120);
        *(v340 + 392) = v261;
        *(v340 + 408) = v260;
        v263 = *(v340 + 1152);
        v265 = *(v340 + 1168);
        v264 = *(v340 + 1184);
        *(v340 + 424) = v265;
        *(v340 + 440) = v264;
        v267 = *(v340 + 1072);
        v266 = *(v340 + 1088);
        v268 = *(v340 + 1056);
        *(v340 + 328) = v267;
        *(v340 + 344) = v266;
        v269 = *(v340 + 1088);
        v271 = *(v340 + 1104);
        v270 = *(v340 + 1120);
        *(v340 + 360) = v271;
        *(v340 + 376) = v270;
        v272 = *(v340 + 1024);
        *(v340 + 264) = *v209;
        *(v340 + 280) = v272;
        v273 = *(v340 + 1056);
        v275 = *v209;
        v274 = *(v340 + 1024);
        v276 = *(v340 + 1040);
        *(v340 + 296) = v276;
        *(v340 + 312) = v273;
        *(v340 + 704) = v256;
        *(v340 + 720) = v259;
        *(v340 + 736) = *(v340 + 1232);
        *(v340 + 640) = v261;
        *(v340 + 656) = v263;
        *(v340 + 672) = v265;
        *(v340 + 688) = v258;
        *(v340 + 576) = v267;
        *(v340 + 592) = v269;
        *(v340 + 608) = v271;
        *(v340 + 624) = v262;
        *(v340 + 512) = v275;
        *(v340 + 528) = v274;
        *(v340 + 504) = *(v340 + 1248);
        *(v340 + 752) = *(v340 + 1248);
        *(v340 + 544) = v276;
        *(v340 + 560) = v268;
        if (sub_1D5DEA380(v340 + 512) == 1)
        {
          goto LABEL_69;
        }

        sub_1D60CB8FC(v340 + 2552, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        sub_1D60CB8FC(v340 + 264, qword_1EDF34BC0, &type metadata for FeedPaywall);
LABEL_77:

LABEL_81:
        sub_1D60CBC50(*(v151 + 7416), type metadata accessor for FeedContext);

        v319 = *(v151 + 8);

        return v319();
      }

      sub_1D5F588A0(v340 + 16);
      v320 = *(v340 + 224);
      *(v340 + 1200) = *(v340 + 208);
      *(v340 + 1216) = v320;
      *(v340 + 1232) = *(v340 + 240);
      *(v340 + 1248) = *(v340 + 256);
      v321 = *(v340 + 160);
      *(v340 + 1136) = *(v340 + 144);
      *(v340 + 1152) = v321;
      v322 = *(v340 + 192);
      *(v340 + 1168) = *(v340 + 176);
      *(v340 + 1184) = v322;
      v323 = *(v340 + 96);
      *(v340 + 1072) = *(v340 + 80);
      *(v340 + 1088) = v323;
      v324 = *(v340 + 128);
      *(v340 + 1104) = *(v340 + 112);
      *(v340 + 1120) = v324;
      v325 = *(v340 + 32);
      *v209 = *(v340 + 16);
      *(v340 + 1024) = v325;
      v254 = *(v340 + 48);
      v255 = *(v340 + 64);
    }

    else
    {
      sub_1D5F588A0(v340 + 760);
      v248 = *(v340 + 968);
      *(v340 + 1200) = *(v340 + 952);
      *(v340 + 1216) = v248;
      *(v340 + 1232) = *(v340 + 984);
      *(v340 + 1248) = *(v340 + 1000);
      v249 = *(v340 + 904);
      *(v340 + 1136) = *(v340 + 888);
      *(v340 + 1152) = v249;
      v250 = *(v340 + 936);
      *(v340 + 1168) = *(v340 + 920);
      *(v340 + 1184) = v250;
      v251 = *(v340 + 840);
      *(v340 + 1072) = *(v340 + 824);
      *(v340 + 1088) = v251;
      v252 = *(v340 + 872);
      *(v340 + 1104) = *(v340 + 856);
      *(v340 + 1120) = v252;
      v253 = *(v340 + 776);
      *v209 = *(v340 + 760);
      *(v340 + 1024) = v253;
      v254 = *(v340 + 792);
      v255 = *(v340 + 808);
    }

    *(v340 + 1040) = v254;
    *(v340 + 1056) = v255;
    goto LABEL_68;
  }

  v219 = *(v340 + 7384);
  v220 = *(v340 + 7376);
  v221 = *(v340 + 7360);
  sub_1D60CBBE8(*(v216 + 56) + *(*(v340 + 7368) + 72) * v217, v220, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBDE4(v220, v219, type metadata accessor for DebugFormatWorkspace);
  swift_endAccess();
  v222 = *(v340 + 2184);
  *(v340 + 1552) = *(v340 + 2200);
  *(v340 + 1536) = v222;
  v223 = *(v340 + 2152);
  *(v340 + 1520) = *(v340 + 2168);
  *(v340 + 1504) = v223;
  v224 = *(v340 + 2248);
  *(v340 + 1616) = *(v340 + 2264);
  *(v340 + 1600) = v224;
  v225 = *(v340 + 2216);
  *(v340 + 1584) = *(v340 + 2232);
  *(v340 + 1568) = v225;
  *(v340 + 1680) = *(v340 + 2328);
  v226 = *(v340 + 2296);
  *(v340 + 1664) = *(v340 + 2312);
  v227 = *(v340 + 2280);
  *(v340 + 1648) = v226;
  *(v340 + 1632) = v227;
  v228 = *(v340 + 2136);
  *(v340 + 1472) = *(v340 + 2120);
  *(v340 + 1488) = v228;
  v229 = v219 + *(v221 + 20);
  v230 = *v229;
  v231 = *(v229 + 16);
  v232 = *(v229 + 48);
  *(v340 + 3400) = *(v229 + 32);
  *(v340 + 3416) = v232;
  *(v340 + 3368) = v230;
  *(v340 + 3384) = v231;
  v233 = *(v229 + 64);
  v234 = *(v229 + 80);
  v235 = *(v229 + 112);
  *(v340 + 3464) = *(v229 + 96);
  *(v340 + 3480) = v235;
  *(v340 + 3432) = v233;
  *(v340 + 3448) = v234;
  v236 = *(v229 + 128);
  v237 = *(v229 + 144);
  v238 = *(v229 + 160);
  *(v340 + 3543) = *(v229 + 175);
  *(v340 + 3512) = v237;
  *(v340 + 3528) = v238;
  *(v340 + 3496) = v236;
  v239 = *(v340 + 3400);
  *(v340 + 4336) = *(v340 + 3416);
  *(v340 + 4320) = v239;
  v240 = *(v340 + 3368);
  *(v340 + 4304) = *(v340 + 3384);
  *(v340 + 4288) = v240;
  v241 = *(v340 + 3464);
  *(v340 + 4400) = *(v340 + 3480);
  *(v340 + 4384) = v241;
  v242 = *(v340 + 3432);
  *(v340 + 4368) = *(v340 + 3448);
  *(v340 + 4352) = v242;
  *(v340 + 4463) = *(v340 + 3543);
  v243 = *(v340 + 3512);
  *(v340 + 4448) = *(v340 + 3528);
  v244 = *(v340 + 3496);
  *(v340 + 4432) = v243;
  *(v340 + 4416) = v244;
  sub_1D5ECF1C0(v340 + 3368, v340 + 4104);
  v245 = swift_task_alloc();
  *(v340 + 7456) = v245;
  *v245 = v340;
  v245[1] = sub_1D60C3DE0;
  v246 = *(v340 + 7256);

  return sub_1D60BA6F0(v246, v340 + 1472, v340 + 4288, 1);
}

uint64_t sub_1D60C3DE0()
{
  v2 = *v1;
  v3 = *v1 + 4288;
  *(*v1 + 7464) = v0;

  if (v0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 48);
    v6 = *(v3 + 16);
    *(v2 + 3920) = *v3;
    *(v2 + 3968) = v5;
    *(v2 + 3952) = v4;
    *(v2 + 3936) = v6;
    v7 = *(v3 + 96);
    v8 = *(v3 + 112);
    v9 = *(v3 + 80);
    *(v2 + 3984) = *(v3 + 64);
    *(v2 + 4032) = v8;
    *(v2 + 4016) = v7;
    *(v2 + 4000) = v9;
    v11 = *(v3 + 144);
    v10 = *(v3 + 160);
    v12 = *(v3 + 175);
    *(v2 + 4048) = *(v3 + 128);
    *(v2 + 4095) = v12;
    *(v2 + 4080) = v10;
    *(v2 + 4064) = v11;
    sub_1D5ECF21C(v2 + 3920);

    v13 = *(v2 + 7440);
    v14 = *(v2 + 7432);
    v15 = sub_1D60C485C;
  }

  else
  {
    v16 = *v3;
    v17 = *(v3 + 16);
    v18 = *(v3 + 48);
    *(v2 + 3768) = *(v3 + 32);
    *(v2 + 3784) = v18;
    *(v2 + 3736) = v16;
    *(v2 + 3752) = v17;
    v19 = *(v3 + 64);
    v20 = *(v3 + 80);
    v21 = *(v3 + 112);
    *(v2 + 3832) = *(v3 + 96);
    *(v2 + 3848) = v21;
    *(v2 + 3800) = v19;
    *(v2 + 3816) = v20;
    v22 = *(v3 + 128);
    v23 = *(v3 + 144);
    v24 = *(v3 + 160);
    *(v2 + 3911) = *(v3 + 175);
    *(v2 + 3880) = v23;
    *(v2 + 3896) = v24;
    *(v2 + 3864) = v22;
    sub_1D5ECF21C(v2 + 3736);
    v13 = *(v2 + 7440);
    v14 = *(v2 + 7432);
    v15 = sub_1D60C3FAC;
  }

  return MEMORY[0x1EEE6DFA0](v15, v14, v13);
}

uint64_t sub_1D60C3FAC()
{
  v1 = v0 + 2552;
  v2 = *(v0 + 7384);

  sub_1D60CB8FC(v0 + 1904, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatWorkspace);

  sub_1D725B31C();

  v3 = *(v0 + 2512);
  *(v0 + 2712) = *(v0 + 2496);
  *(v0 + 2728) = v3;
  *(v0 + 2744) = *(v0 + 2528);
  *(v0 + 2760) = *(v0 + 2544);
  v4 = *(v0 + 2448);
  *(v0 + 2648) = *(v0 + 2432);
  *(v0 + 2664) = v4;
  v5 = *(v0 + 2480);
  *(v0 + 2680) = *(v0 + 2464);
  *(v0 + 2696) = v5;
  v6 = *(v0 + 2384);
  *(v0 + 2584) = *(v0 + 2368);
  *(v0 + 2600) = v6;
  v7 = *(v0 + 2416);
  *(v0 + 2616) = *(v0 + 2400);
  *(v0 + 2632) = v7;
  v8 = *(v0 + 2352);
  *(v0 + 2552) = *(v0 + 2336);
  *(v0 + 2568) = v8;
  v9 = *(v0 + 2512);
  *(v0 + 1416) = *(v0 + 2496);
  *(v0 + 1432) = v9;
  *(v0 + 1448) = *(v0 + 2528);
  *(v0 + 1464) = *(v0 + 2544);
  v10 = *(v0 + 2448);
  *(v0 + 1352) = *(v0 + 2432);
  *(v0 + 1368) = v10;
  v11 = *(v0 + 2480);
  *(v0 + 1384) = *(v0 + 2464);
  *(v0 + 1400) = v11;
  v12 = *(v0 + 2384);
  *(v0 + 1288) = *(v0 + 2368);
  *(v0 + 1304) = v12;
  v13 = *(v0 + 2416);
  *(v0 + 1320) = *(v0 + 2400);
  *(v0 + 1336) = v13;
  v14 = *(v0 + 2352);
  *(v0 + 1256) = *(v0 + 2336);
  *(v0 + 1272) = v14;
  if (sub_1D5DEA380(v0 + 1256) == 1)
  {
    goto LABEL_17;
  }

  v15 = *(v0 + 1464);
  if (*(v15 + 16))
  {
    v16 = (v0 + 1008);
    v17 = *(*(v0 + 7280) + 80);
    v18 = *(*(v15 + ((v17 + 32) & ~v17) + *(*(v0 + 7272) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v19 = *(v18 + 16);

    if (v19 && (v20 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v21 & 1) != 0))
    {
      sub_1D5B68374(*(v18 + 56) + 40 * v20, v0 + 7088);
      sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
      if (swift_dynamicCast())
      {
        nullsub_1();
LABEL_9:

        v30 = *(v0 + 1200);
        v31 = *(v0 + 1216);
        v32 = *(v0 + 1184);
        *(v0 + 456) = v30;
        *(v0 + 472) = v31;
        v33 = *(v0 + 1216);
        *(v0 + 488) = *(v0 + 1232);
        v35 = *(v0 + 1136);
        v34 = *(v0 + 1152);
        v36 = *(v0 + 1120);
        *(v0 + 392) = v35;
        *(v0 + 408) = v34;
        v37 = *(v0 + 1152);
        v39 = *(v0 + 1168);
        v38 = *(v0 + 1184);
        *(v0 + 424) = v39;
        *(v0 + 440) = v38;
        v41 = *(v0 + 1072);
        v40 = *(v0 + 1088);
        v42 = *(v0 + 1056);
        *(v0 + 328) = v41;
        *(v0 + 344) = v40;
        v43 = *(v0 + 1088);
        v45 = *(v0 + 1104);
        v44 = *(v0 + 1120);
        *(v0 + 360) = v45;
        *(v0 + 376) = v44;
        v46 = *(v0 + 1024);
        *(v0 + 264) = *v16;
        *(v0 + 280) = v46;
        v47 = *(v0 + 1056);
        v49 = *v16;
        v48 = *(v0 + 1024);
        v50 = *(v0 + 1040);
        *(v0 + 296) = v50;
        *(v0 + 312) = v47;
        *(v0 + 704) = v30;
        *(v0 + 720) = v33;
        *(v0 + 736) = *(v0 + 1232);
        *(v0 + 640) = v35;
        *(v0 + 656) = v37;
        *(v0 + 672) = v39;
        *(v0 + 688) = v32;
        *(v0 + 576) = v41;
        *(v0 + 592) = v43;
        *(v0 + 608) = v45;
        *(v0 + 624) = v36;
        *(v0 + 512) = v49;
        *(v0 + 528) = v48;
        *(v0 + 504) = *(v0 + 1248);
        *(v0 + 752) = *(v0 + 1248);
        *(v0 + 544) = v50;
        *(v0 + 560) = v42;
        if (sub_1D5DEA380(v0 + 512) == 1)
        {
          goto LABEL_10;
        }

        sub_1D60CB8FC(v0 + 2552, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        sub_1D60CB8FC(v0 + 264, qword_1EDF34BC0, &type metadata for FeedPaywall);
LABEL_17:

        goto LABEL_20;
      }

      sub_1D5F588A0(v0 + 16);
      v83 = *(v0 + 224);
      *(v0 + 1200) = *(v0 + 208);
      *(v0 + 1216) = v83;
      *(v0 + 1232) = *(v0 + 240);
      *(v0 + 1248) = *(v0 + 256);
      v84 = *(v0 + 160);
      *(v0 + 1136) = *(v0 + 144);
      *(v0 + 1152) = v84;
      v85 = *(v0 + 192);
      *(v0 + 1168) = *(v0 + 176);
      *(v0 + 1184) = v85;
      v86 = *(v0 + 96);
      *(v0 + 1072) = *(v0 + 80);
      *(v0 + 1088) = v86;
      v87 = *(v0 + 128);
      *(v0 + 1104) = *(v0 + 112);
      *(v0 + 1120) = v87;
      v88 = *(v0 + 32);
      *v16 = *(v0 + 16);
      *(v0 + 1024) = v88;
      v28 = *(v0 + 48);
      v29 = *(v0 + 64);
    }

    else
    {
      sub_1D5F588A0(v0 + 760);
      v22 = *(v0 + 968);
      *(v0 + 1200) = *(v0 + 952);
      *(v0 + 1216) = v22;
      *(v0 + 1232) = *(v0 + 984);
      *(v0 + 1248) = *(v0 + 1000);
      v23 = *(v0 + 904);
      *(v0 + 1136) = *(v0 + 888);
      *(v0 + 1152) = v23;
      v24 = *(v0 + 936);
      *(v0 + 1168) = *(v0 + 920);
      *(v0 + 1184) = v24;
      v25 = *(v0 + 840);
      *(v0 + 1072) = *(v0 + 824);
      *(v0 + 1088) = v25;
      v26 = *(v0 + 872);
      *(v0 + 1104) = *(v0 + 856);
      *(v0 + 1120) = v26;
      v27 = *(v0 + 776);
      *v16 = *(v0 + 760);
      *(v0 + 1024) = v27;
      v28 = *(v0 + 792);
      v29 = *(v0 + 808);
    }

    *(v0 + 1040) = v28;
    *(v0 + 1056) = v29;
    goto LABEL_9;
  }

LABEL_10:
  v94 = (v0 + 2976);
  v95 = (v0 + 2768);
  v51 = v0 + 5024;
  v99 = *(v0 + 1288);
  v100 = *(v0 + 1304);
  v107 = *(v0 + 1417);
  v108 = *(v0 + 1433);
  v109 = *(v0 + 1449);
  v103 = *(v0 + 1353);
  v104 = *(v0 + 1369);
  v105 = *(v0 + 1385);
  v106 = *(v0 + 1401);
  v101 = *(v0 + 1321);
  v102 = *(v0 + 1337);
  sub_1D5ECF1C0(v0 + 1272, v0 + 5208);

  v92 = *(v0 + 1256);
  v93 = (v0 + 1452);
  v52 = *(v0 + 1264);
  strcpy((v0 + 5024), "builtin:editor");
  *(v0 + 5039) = -18;
  *(v0 + 5040) = v99;
  *(v0 + 5056) = v100;
  *(v0 + 5072) = 0;
  *(v0 + 5105) = v103;
  *(v0 + 5121) = v104;
  *(v0 + 5201) = v109;
  *(v0 + 5169) = v107;
  *(v0 + 5185) = v108;
  *(v0 + 5137) = v105;
  *(v0 + 5153) = v106;
  *(v0 + 5073) = v101;
  *(v0 + 5089) = v102;
  v53 = *(v15 + 16);
  if (v53)
  {
    v91 = v0 + 2552;
    v54 = *(v0 + 7280);
    v97 = *(v0 + 7272);
    v89 = v52;

    v90 = v0 + 5024;
    sub_1D5ECF1C0(v0 + 5024, v0 + 5392);
    v110 = MEMORY[0x1E69E7CC0];
    sub_1D6998A98(0, v53, 0);
    v55 = v110;
    v56 = v15 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v96 = *(v54 + 72);
    v98 = v0;
    do
    {
      v57 = *(v0 + 7288);
      sub_1D60CBBE8(v56, v57, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v58 = *(v97 + 28);
      v59 = *(*(v57 + *(v97 + 24)) + 16);
      v60 = *(v59 + 16);
      v61 = *(v59 + 24);
      v62 = *(v57 + v58);
      v63 = *(v57 + v58 + 8);

      sub_1D60CBC50(v57, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v65 = *(v110 + 16);
      v64 = *(v110 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1D6998A98((v64 > 1), v65 + 1, 1);
      }

      *(v110 + 16) = v65 + 1;
      v66 = (v110 + 32 * v65);
      v66[4] = v60;
      v66[5] = v61;
      v66[6] = v62;
      v66[7] = v63;
      v56 += v96;
      --v53;
      v0 = v98;
    }

    while (v53);

    v51 = v90;
    v1 = v91;
    v67 = v89;
  }

  else
  {
    v67 = v52;

    sub_1D5ECF1C0(v0 + 5024, v0 + 6128);

    v55 = MEMORY[0x1E69E7CC0];
  }

  v68 = *(v51 + 144);
  *(v0 + 3120) = *(v51 + 128);
  *(v0 + 3136) = v68;
  *(v0 + 3152) = *(v51 + 160);
  v69 = *(v51 + 80);
  *(v0 + 3056) = *(v51 + 64);
  *(v0 + 3072) = v69;
  v70 = *(v51 + 112);
  *(v0 + 3088) = *(v51 + 96);
  *(v0 + 3104) = v70;
  v71 = *(v51 + 16);
  *(v0 + 2992) = *v51;
  *(v0 + 3008) = v71;
  v72 = *(v51 + 48);
  *(v0 + 3024) = *(v51 + 32);
  v73 = *(v0 + 1451);
  v74 = *v93;
  *(v0 + 3167) = *(v51 + 175);
  *(v0 + 3040) = v72;
  *(v0 + 2976) = v92;
  *(v0 + 2984) = v67;
  *(v0 + 3171) = v73;
  *(v0 + 3172) = v74;
  *(v0 + 3176) = v55;
  nullsub_1();
  v75 = v94[11];
  v95[10] = v94[10];
  v95[11] = v75;
  v95[12] = v94[12];
  v76 = v94[7];
  v95[6] = v94[6];
  v95[7] = v76;
  v77 = v94[9];
  v95[8] = v94[8];
  v95[9] = v77;
  v78 = v94[3];
  v95[2] = v94[2];
  v95[3] = v78;
  v79 = v94[5];
  v95[4] = v94[4];
  v95[5] = v79;
  v80 = v94[1];
  *v95 = *v94;
  v95[1] = v80;

  sub_1D725B32C();
  sub_1D60CB8FC(v1, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  strcpy((v0 + 5576), "builtin:editor");
  *(v0 + 5591) = -18;
  *(v0 + 5592) = v99;
  *(v0 + 5608) = v100;
  *(v0 + 5624) = 0;
  *(v0 + 5721) = v107;
  *(v0 + 5737) = v108;
  *(v0 + 5753) = v109;
  *(v0 + 5657) = v103;
  *(v0 + 5673) = v104;
  *(v0 + 5689) = v105;
  *(v0 + 5705) = v106;
  *(v0 + 5625) = v101;
  *(v0 + 5641) = v102;
  sub_1D5ECF21C(v0 + 5576);
LABEL_20:
  sub_1D60CBC50(*(v0 + 7416), type metadata accessor for FeedContext);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_1D60C485C()
{
  v1 = v0[927];
  v2 = v0[923];

  sub_1D60CBC50(v2, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CB8FC((v0 + 238), qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D60CBC50(v1, type metadata accessor for FeedContext);

  v3 = v0[1];

  return v3();
}

void sub_1D60C49D4(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_1D725B31C();

  v67[10] = *v52;
  v67[11] = *&v52[16];
  v67[12] = v53;
  v67[6] = *&v51[16];
  v67[7] = *&v51[32];
  v67[8] = *&v51[48];
  v67[9] = *&v51[64];
  v67[2] = v48;
  v67[3] = v49;
  v67[4] = v50;
  v67[5] = *v51;
  v67[0] = v46;
  v67[1] = v47;
  *&v75[64] = *v52;
  v76 = *&v52[16];
  v77 = v53;
  *v75 = *&v51[16];
  *&v75[16] = *&v51[32];
  *&v75[32] = *&v51[48];
  *&v75[48] = *&v51[64];
  v71 = v48;
  v72 = v49;
  v73 = v50;
  v74 = *v51;
  v68 = v54;
  v78 = v54;
  v69 = v46;
  v70 = v47;
  v5 = sub_1D5DEA380(&v69);
  if (v5 == 1)
  {
    sub_1D60CB7FC(&v55);
    v7 = v64;
    *(a3 + 128) = v63;
    *(a3 + 144) = v7;
    *(a3 + 160) = v65[0];
    *(a3 + 175) = *(v65 + 15);
    v8 = v60;
    *(a3 + 64) = v59;
    *(a3 + 80) = v8;
    v9 = v62;
    *(a3 + 96) = v61;
    *(a3 + 112) = v9;
    v10 = v56;
    *a3 = v55;
    *(a3 + 16) = v10;
    v11 = v58;
    *(a3 + 32) = v57;
    *(a3 + 48) = v11;
    return;
  }

  v65[0] = *&v75[64];
  v65[1] = v76;
  v65[2] = v77;
  v12 = *(&v77 + 1);
  v66 = v78;
  v61 = *v75;
  v62 = *&v75[16];
  v63 = *&v75[32];
  v64 = *&v75[48];
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v55 = v69;
  v56 = v70;
  if (*(&v77 + 1) >> 62)
  {
    v37 = *(&v77 + 1);
    v5 = sub_1D7263BFC();
    v12 = v37;
    v13 = v5;
  }

  else
  {
    v13 = *((*(&v77 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v44 = a3;
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = v12;
  *&v46 = MEMORY[0x1E69E7CC0];
  sub_1D6998A78(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v43 = a2;
    v16 = 0;
    v14 = v46;
    v6 = v15;
    v45 = v15 & 0xC000000000000001;
    v17 = v15;
    v18 = v13;
    do
    {
      if (v45)
      {
        v19 = MEMORY[0x1DA6FB460](v16, v6);
      }

      else
      {
        v19 = *(v6 + 8 * v16 + 32);
      }

      v20 = *(v19 + 16);
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);

      *&v46 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        v5 = sub_1D6998A78((v23 > 1), v24 + 1, 1);
        v14 = v46;
      }

      ++v16;
      *(v14 + 16) = v24 + 1;
      v25 = v14 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v6 = v17;
    }

    while (v18 != v16);
    a2 = v43;
LABEL_15:
    v45 = 0x80000001D73C9450;
    v26 = v78;
    MEMORY[0x1EEE9AC00](v5, v6);
    v38[2] = &v55;
    v38[3] = a2;

    v43 = sub_1D5ECB1CC(sub_1D60CF4B8, v38, v26);

    v27 = *(&v74 + 1);
    v28 = *v75;
    v29 = *&v75[72];
    v30 = v76;

    v41 = *&v75[24];
    v42 = *&v75[8];

    v39 = *&v75[56];
    v40 = *&v75[40];

    sub_1D60CB8FC(v67, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    strcpy(&v46, "builtin:editor");
    HIBYTE(v46) = -18;
    *&v47 = 0xD000000000000010;
    *(&v47 + 1) = v45;
    v48 = 0uLL;
    LOBYTE(v49) = 0;
    *(&v49 + 1) = v14;
    *&v50 = v43;
    *(&v50 + 1) = v27;
    *v51 = v28;
    *&v51[8] = v42;
    *&v51[24] = v41;
    *&v51[56] = v39;
    *&v51[40] = v40;
    *&v51[72] = v29;
    *v52 = v30;
    *&v52[16] = v77;
    v52[18] = BYTE2(v77);
    nullsub_1();
    v31 = *&v51[64];
    v32 = v44;
    *(v44 + 128) = *&v51[48];
    *(v32 + 144) = v31;
    *(v32 + 160) = *v52;
    *(v32 + 175) = *&v52[15];
    v33 = *v51;
    *(v32 + 64) = v50;
    *(v32 + 80) = v33;
    v34 = *&v51[32];
    *(v32 + 96) = *&v51[16];
    *(v32 + 112) = v34;
    v35 = v47;
    *v32 = v46;
    *(v32 + 16) = v35;
    v36 = v49;
    *(v32 + 32) = v48;
    *(v32 + 48) = v36;
    return;
  }

  __break(1u);
}

void sub_1D60C4E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v133 = a6;
  *&v131 = a4;
  *(&v131 + 1) = a5;
  v130 = a1;
  v10 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v126 = v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v129, v13);
  v125 = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatContentSubgroup(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v124 = (v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1D725895C();
  v122 = *(v18 - 8);
  v123 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v121 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (v114 - v28);
  sub_1D5B54578(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v21);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v120 = v114 - v36;
  v128 = type metadata accessor for DebugGroupLayoutKey(0);
  v37 = (a3 + *(v128 + 24));
  v38 = v37[4];
  v39 = v37[5];
  v132 = v37;
  __swift_project_boxed_opaque_existential_1(v37 + 1, v38);
  (*(v39 + 64))(&v146, v38, v39);
  v40 = *(&v147 + 1);
  if (!*(&v147 + 1))
  {
    sub_1D60CBC50(&v146, sub_1D5D6013C);
    goto LABEL_5;
  }

  v41 = v148;
  __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
  v42 = (*(v41 + 40))(v40, v41);
  __swift_destroy_boxed_opaque_existential_1(&v146);
  if (!v42)
  {
LABEL_5:
    sub_1D60CB7FC(&v146);
    v48 = v154;
    *(a7 + 128) = v153[1];
    *(a7 + 144) = v48;
    *(a7 + 160) = v155[0];
    *(a7 + 175) = *(v155 + 15);
    v49 = v151;
    *(a7 + 64) = v150;
    *(a7 + 80) = v49;
    v50 = v153[0];
    *(a7 + 96) = v152;
    *(a7 + 112) = v50;
    v51 = v147;
    *a7 = v146;
    *(a7 + 16) = v51;
    v52 = v149;
    *(a7 + 32) = v148;
    *(a7 + 48) = v52;
    return;
  }

  v114[4] = v33;
  v114[5] = v25;
  v116 = a3;
  v117 = a2;
  v43 = v42 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content;
  v118 = type metadata accessor for FormatContent.Resolved(0);
  v119 = v43;
  v44 = v42;
  v45 = *(v43 + *(v118 + 36));
  MEMORY[0x1EEE9AC00](v118, v46);
  v114[-2] = v133;

  v47 = sub_1D5ECB3CC(sub_1D60CBDC4, &v114[-4], v45);
  v127 = v44;
  v126 = v47;

  v53 = *(v44 + 96);
  if (v53 >> 62)
  {
    v54 = sub_1D7263BFC();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v54)
  {
    v124 = v29;
    v115 = a7;
    *&v146 = MEMORY[0x1E69E7CC0];
    sub_1D6998A78(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
      __break(1u);
      return;
    }

    v55 = 0;
    v56 = v146;
    do
    {
      v57 = v56;
      if ((v53 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x1DA6FB460](v55, v53);
      }

      else
      {
        v58 = *(v53 + 8 * v55 + 32);
      }

      v60 = *(v58 + 16);
      v59 = *(v58 + 24);

      v56 = v57;
      *&v146 = v57;
      v61 = *(v57 + 2);
      v62 = *(v56 + 3);
      if (v61 >= v62 >> 1)
      {
        sub_1D6998A78((v62 > 1), v61 + 1, 1);
        v56 = v146;
      }

      ++v55;
      *(v56 + 2) = v61 + 1;
      v63 = &v56[16 * v61];
      *(v63 + 4) = v60;
      *(v63 + 5) = v59;
    }

    while (v54 != v55);
    v125 = v56;
    a7 = v115;
    v29 = v124;
  }

  else
  {
    v125 = MEMORY[0x1E69E7CC0];
  }

  v64 = v116 + *(v128 + 28);
  v65 = *(v64 + *(type metadata accessor for GroupLayoutContext(0) + 44));
  v66 = v132[8];
  if (*(v66 + 16) && (v67 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v68 & 1) != 0))
  {
    sub_1D5B68374(*(v66 + 56) + 40 * v67, &v146);
    sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
    if (swift_dynamicCast())
    {
      v69 = v138;
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = 0;
  }

  v70 = sub_1D713A4FC(v69);
  LOBYTE(v146) = v65;
  v71 = FeedKind.rawValue.getter();
  v123 = v72;
  v124 = v71;
  if (!*(v66 + 16) || (v73 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (v74 & 1) == 0))
  {
    v76 = v120;
LABEL_31:
    v121 = 0;
    v122 = 0;
    goto LABEL_32;
  }

  sub_1D5B68374(*(v66 + 56) + 40 * v73, &v146);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  v75 = swift_dynamicCast();
  v76 = v120;
  if ((v75 & 1) == 0)
  {
    goto LABEL_31;
  }

  v77 = v138;
  if (!v138)
  {
    goto LABEL_31;
  }

  v78 = *(&v138 + 1);
  v79 = swift_unknownObjectRetain();
  sub_1D5F587AC(v79, v78);
  v80 = [v77 identifier];
  v81 = sub_1D726207C();
  v121 = v82;
  v122 = v81;
  swift_unknownObjectRelease();

  v76 = v120;
LABEL_32:
  sub_1D678EE20(v66, v76);
  v83 = type metadata accessor for FeedHeadline(0);
  if ((*(*(v83 - 8) + 48))(v76, 1, v83) == 1)
  {
    sub_1D60CB820(v76, qword_1EDF42030, type metadata accessor for FeedHeadline);
    v120 = 0;
    v116 = 0;
  }

  else
  {
    v84 = *(v76 + 40);
    swift_unknownObjectRetain();
    sub_1D60CBC50(v76, type metadata accessor for FeedHeadline);
    v85 = [v84 identifier];
    v120 = sub_1D726207C();
    v116 = v86;
    swift_unknownObjectRelease();
  }

  v87 = *(v66 + 16);
  v128 = v70;
  if (v87 && (v88 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v89 & 1) != 0))
  {
    sub_1D5B68374(*(v66 + 56) + 40 * v88, v136);
    sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
    if (swift_dynamicCast())
    {
      nullsub_1();
    }

    else
    {
      sub_1D5D62850(&v146);
      v144 = v152;
      v145[0] = v153[0];
      *(v145 + 9) = *(v153 + 9);
      v140 = v148;
      v141 = v149;
      v142 = v150;
      v143 = v151;
      v138 = v146;
      v139 = v147;
    }
  }

  else
  {
    sub_1D5D62850(&v138);
  }

  v90 = a7;
  v134[6] = v144;
  v135[0] = v145[0];
  *(v135 + 9) = *(v145 + 9);
  v134[2] = v140;
  v134[3] = v141;
  v134[4] = v142;
  v134[5] = v143;
  v134[0] = v138;
  v134[1] = v139;
  v136[6] = v144;
  v137[0] = v145[0];
  *(v137 + 9) = *(v145 + 9);
  v136[2] = v140;
  v136[3] = v141;
  v136[4] = v142;
  v136[5] = v143;
  v136[0] = v138;
  v136[1] = v139;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v136) == 1)
  {
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v93 = *&v136[0];
    sub_1D60CB8FC(v134, &qword_1EDF34E30, &type metadata for FeedIssue);
    v94 = v93;
    v95 = [v94 identifier];
    v91 = sub_1D726207C();
    v92 = v96;
  }

  sub_1D678EE54(v66, v29);
  v97 = type metadata accessor for FeedRecipe(0);
  if ((*(*(v97 - 8) + 48))(v29, 1, v97) == 1)
  {
    sub_1D60CB820(v29, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v98 = 0;
    v99 = 0;
  }

  else
  {
    v100 = v29[7];
    sub_1D60CBC50(v29, type metadata accessor for FeedRecipe);
    v101 = v100;
    v102 = [v101 identifier];
    v98 = sub_1D726207C();
    v99 = v103;
  }

  v104 = *(v119 + *(v118 + 44));

  v106 = sub_1D70E15E8(v105);

  v107 = *v132;
  v108 = *(v132 + *(v129 + 64));
  *&v146 = v130;
  *(&v146 + 1) = v117;
  v147 = v131;
  v148 = 0uLL;
  LOBYTE(v149) = 1;
  *(&v149 + 1) = v125;
  *&v150 = v126;
  *(&v150 + 1) = v124;
  *&v151 = v123;
  *(&v151 + 1) = v128;
  *&v152 = v122;
  *(&v152 + 1) = v121;
  *&v153[0] = v120;
  *(&v153[0] + 1) = v116;
  *&v153[1] = v91;
  *(&v153[1] + 1) = v92;
  *&v154 = v98;
  *(&v154 + 1) = v99;
  *&v155[0] = v104;
  *(&v155[0] + 1) = v106;
  LOBYTE(v155[1]) = v107;
  *(&v155[1] + 1) = v108;
  nullsub_1();
  v109 = v154;
  *(v90 + 128) = v153[1];
  *(v90 + 144) = v109;
  *(v90 + 160) = v155[0];
  *(v90 + 175) = *(v155 + 15);
  v110 = v151;
  *(v90 + 64) = v150;
  *(v90 + 80) = v110;
  v111 = v153[0];
  *(v90 + 96) = v152;
  *(v90 + 112) = v111;
  v112 = v147;
  *v90 = v146;
  *(v90 + 16) = v112;
  v113 = v149;
  *(v90 + 32) = v148;
  *(v90 + 48) = v113;
}

uint64_t sub_1D60C63E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DebugFormatWorkspaceKind(0);
  MEMORY[0x1EEE9AC00](v8, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v11;
  v18[0] = *(a1 + 160);
  *(v18 + 15) = *(a1 + 175);
  v12 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v12;
  v13 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v13;
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  v15 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v15;
  swift_storeEnumTagMultiPayload();
  sub_1D60B8884(a2, v10, v17, a3, a4);
  return sub_1D60CBC50(v10, type metadata accessor for DebugFormatWorkspaceKind);
}

uint64_t sub_1D60C6504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DebugFormatWorkspaceKind(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6902994(a1, v11);
  v12 = *(a1 + 144);
  v13 = *(a1 + 112);
  v42 = *(a1 + 128);
  v43 = v12;
  v14 = *(a1 + 144);
  v44[0] = *(a1 + 160);
  v15 = *(a1 + 80);
  v16 = *(a1 + 48);
  v38 = *(a1 + 64);
  v39 = v15;
  v17 = *(a1 + 80);
  v18 = *(a1 + 112);
  v40 = *(a1 + 96);
  v41 = v18;
  v19 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v19;
  v20 = *(a1 + 48);
  v22 = *a1;
  v21 = *(a1 + 16);
  v36 = *(a1 + 32);
  v37 = v20;
  v32 = v42;
  v33 = v14;
  v34[0] = *(a1 + 160);
  v28 = v38;
  v29 = v17;
  v30 = v40;
  v31 = v13;
  v24 = v22;
  v25 = v21;
  *(v44 + 15) = *(a1 + 175);
  *(v34 + 15) = *(a1 + 175);
  v26 = v36;
  v27 = v16;
  sub_1D5ECF1C0(v35, v45);
  sub_1D60B8884(a2, v11, &v24, a3, a4);
  v45[8] = v32;
  v45[9] = v33;
  v46[0] = v34[0];
  *(v46 + 15) = *(v34 + 15);
  v45[4] = v28;
  v45[5] = v29;
  v45[6] = v30;
  v45[7] = v31;
  v45[0] = v24;
  v45[1] = v25;
  v45[2] = v26;
  v45[3] = v27;
  sub_1D5ECF21C(v45);
  return sub_1D60CBC50(v11, type metadata accessor for DebugFormatWorkspaceKind);
}

uint64_t sub_1D60C66B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5B54578(0, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21[-v6];
  v8 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      return 0;
    }

    v16 = Strong;

    sub_1D725B31C();

    v51[10] = v47;
    v51[11] = v48;
    v51[12] = v49;
    v52 = v50;
    v51[6] = v43;
    v51[7] = v44;
    v51[8] = v45;
    v51[9] = v46;
    v51[2] = v39;
    v51[3] = v40;
    v51[4] = v41;
    v51[5] = v42;
    v51[0] = v37;
    v51[1] = v38;
    if (sub_1D5DEA380(v51) == 1)
    {

      v33 = v47;
      v34 = v48;
      v35 = v49;
      v36 = v50;
      v29 = v43;
      v30 = v44;
      v31 = v45;
      v32 = v46;
      v25 = v39;
      v26 = v40;
      v27 = v41;
      v28 = v42;
      v23 = v37;
      v24 = v38;
      sub_1D60CB8FC(&v23, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      return 0;
    }

    v17 = BYTE3(v49);
    v22 = BYTE4(v49);
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v23 = v37;
    v24 = v38;
    sub_1D60CB8FC(&v23, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

    sub_1D725B31C();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_1D60CB820(v7, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext);
      return 0;
    }

    sub_1D60CBDE4(v7, v12, type metadata accessor for DebugFormatEditorLayoutContext);
    v18 = swift_beginAccess();
    if (!*(*(v14 + 112) + 16))
    {

      sub_1D60CBC50(v12, type metadata accessor for DebugFormatEditorLayoutContext);
      return 0;
    }

    MEMORY[0x1EEE9AC00](v18, v19);
    *&v21[-32] = v14;
    *&v21[-24] = v16;
    v21[-16] = v17;
    v21[-15] = v22;
    *&v21[-8] = v12;
    if (sub_1D5FBD55C(sub_1D60CF610, &v21[-48], &unk_1F5111660) >> 62)
    {
      sub_1D5B5A498(0, &qword_1EC883280, 0x1E69DCC78);
      sub_1D726403C();
    }

    else
    {

      sub_1D726479C();
      sub_1D5B5A498(0, &qword_1EC883280, 0x1E69DCC78);
    }

    sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
    v20 = sub_1D72633FC();

    sub_1D60CBC50(v12, type metadata accessor for DebugFormatEditorLayoutContext);
    return v20;
  }

  return result;
}

uint64_t sub_1D60C6BB4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  swift_beginAccess();
  v12 = *(a2 + 112);
  if (*(v12 + 16) && (v13 = sub_1D5BEFB80(v11), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v28 = 0x80000001D73C9470;
        v16 = 0xD000000000000011;
      }

      else
      {
        v28 = 0xEF7365636170736BLL;
        v16 = 0x726F572064656546;
      }
    }

    else if (v11)
    {
      v28 = 0xED00007365636170;
      v16 = 0x736B726F5720794DLL;
    }

    else
    {
      v28 = 0xEA00000000007365;
      v16 = 0x636170736B726F57;
    }

    v27 = v16;
    v26 = v11 == 0;
    v18 = sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
    MEMORY[0x1EEE9AC00](v18, v19);
    v23[2] = a3;
    v23[3] = a2;
    LOWORD(v24) = a4 & 0x1FF;
    v25 = a5;

    sub_1D5ECB924(sub_1D60CF648, v23, v15);
    v21 = v20;

    result = sub_1D726340C(v27, v28, 0, 0, 0, 0, v26, -1, v22, v21);
  }

  else
  {
    swift_endAccess();
    result = 0;
  }

  *a6 = result;
  return result;
}

uint64_t sub_1D60C6DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v51 = a4;
  v52 = a3;
  v54 = a6;
  v9 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v44 = v11;
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DebugFormatWorkspace(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 28);
  v50 = a1;
  v18 = (a1 + v17);
  v20 = *(a1 + v17);
  v19 = v18[1];
  v53 = a2;

  sub_1D725B31C();

  v83[10] = v79;
  v83[11] = v80;
  v83[12] = v81;
  v84 = v82;
  v83[6] = v75;
  v83[7] = v76;
  v83[8] = v77;
  v83[9] = v78;
  v83[2] = v71;
  v83[3] = v72;
  v83[4] = v73;
  v83[5] = v74;
  v83[0] = v69;
  v83[1] = v70;
  if (sub_1D5DEA380(v83) == 1)
  {
    v65 = v79;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    v55 = v69;
    v56 = v70;
    sub_1D60CB8FC(&v55, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v21 = v18[3];
    v45 = v18[2];
    v46 = 0;
    v22 = v18[5];
    v42 = v18[4];
    v43 = v21;
    v41 = v22;
  }

  else
  {
    v40 = a5;
    v23 = v69;
    v65 = v79;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    v55 = v69;
    v56 = v70;

    sub_1D60CB8FC(&v55, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    if (__PAIR128__(v19, v20) == v23)
    {

      v24 = v18[2];
      v25 = v18[3];
      v26 = v18[4];
      v27 = v18[5];
    }

    else
    {
      v28 = sub_1D72646CC();

      v24 = v18[2];
      v25 = v18[3];
      v26 = v18[4];
      v27 = v18[5];
      if ((v28 & 1) == 0)
      {
        v45 = v18[2];
        v46 = 0;
        a5 = v40;
        v42 = v26;
        v43 = v25;
        v41 = v27;
        goto LABEL_8;
      }
    }

    a5 = v40;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v45 = v24;
    v46 = 1;
  }

LABEL_8:
  v40 = sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
  v29 = v48;
  sub_1D60CBBE8(v50, v48, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBBE8(a5, v12, type metadata accessor for DebugFormatEditorLayoutContext);
  v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v31 = v30 + v14;
  v32 = v12;
  v33 = (*(v49 + 80) + v31 + 2) & ~*(v49 + 80);
  v34 = swift_allocObject();
  v35 = v53;
  *(v34 + 16) = v52;
  *(v34 + 24) = v35;
  sub_1D60CBDE4(v29, v34 + v30, type metadata accessor for DebugFormatWorkspace);
  v36 = (v34 + v31);
  v37 = BYTE1(v51);
  *v36 = v51;
  v36[1] = v37 & 1;
  sub_1D60CBDE4(v32, v34 + v33, type metadata accessor for DebugFormatEditorLayoutContext);

  result = sub_1D726375C();
  *v54 = result;
  return result;
}

double sub_1D60C728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v32 = a3;
  v10 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DebugFormatWorkspace(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v17);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54578(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v31 - v21;
  v23 = sub_1D726294C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_1D60CBBE8(a4, v18, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBBE8(a6, v13, type metadata accessor for DebugFormatEditorLayoutContext);
  v24 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v25 = v24 + v16;
  v26 = (*(v31 + 80) + v24 + v16 + 2) & ~*(v31 + 80);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v32;
  v27[4] = a2;
  v27[5] = v28;
  sub_1D60CBDE4(v18, v27 + v24, type metadata accessor for DebugFormatWorkspace);
  v29 = v27 + v25;
  *v29 = a5;
  v29[1] = HIBYTE(a5) & 1;
  sub_1D60CBDE4(v13, v27 + v26, type metadata accessor for DebugFormatEditorLayoutContext);

  sub_1D6736BD4(0, 0, v22, &unk_1D7298AD8, v27);

  return result;
}

uint64_t sub_1D60C758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1D5B64684;

  return sub_1D60CBE4C(a5, a6, a7 & 0x1FF, a8);
}

uint64_t sub_1D60C7658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a1;
  v46 = a4;
  v48 = a3;
  v47 = a6;
  v49 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0) - 8;
  MEMORY[0x1EEE9AC00](v49, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D7259CFC();
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v13;
  v14 = sub_1D7259F5C();
  v58 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v18;
  v43 = type metadata accessor for DebugFormatWorkspaceGroup(0) - 8;
  MEMORY[0x1EEE9AC00](v43, v19);
  v21 = (&v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for DebugFormatWorkspace(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v42 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CBBE8(a2, v42, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBBE8(v45, v21, type metadata accessor for DebugFormatWorkspaceGroup);
  v45 = v15;
  v40 = *(v15 + 16);
  v40(v18, v46, v14);
  v46 = v10;
  v25 = *(v10 + 16);
  v26 = v41;
  v25(v13, v44, v41);
  v27 = v21[1];
  *v9 = *v21;
  *(v9 + 1) = v27;
  v28 = v48;
  v9[17] = v48;
  LODWORD(v44) = (v28 >> 8) & 1;
  v9[18] = v44;
  v29 = v49;
  sub_1D60CBBE8(v21, &v9[*(v49 + 36)], type metadata accessor for DebugFormatWorkspaceGroup);
  v40(&v9[*(v29 + 40)], v50, v58);
  v30 = v39;
  v25(&v9[*(v29 + 44)], v39, v26);
  v31 = v42;
  v32 = *(v21 + *(v43 + 36));
  v57 = v30;

  sub_1D62ED9D8(sub_1D60CEC1C, v56, v32);
  v33 = sub_1D72626EC();

  v52 = v31;
  v53 = v21;
  v54 = v48;
  v55 = v44;
  sub_1D5ECBB04(sub_1D60CEC3C, v51, v33);
  v35 = v34;

  *&v9[*(v49 + 48)] = v35;
  if (v35 >> 62)
  {
    v36 = sub_1D7263BFC();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v45 + 8))(v50, v58);
  v9[16] = v36 < 2;
  sub_1D60CBDE4(v9, v47, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  (*(v46 + 8))(v30, v26);
  sub_1D60CBC50(v21, type metadata accessor for DebugFormatWorkspaceGroup);
  return sub_1D60CBC50(v31, type metadata accessor for DebugFormatWorkspace);
}

uint64_t sub_1D60C7B38@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a6;
  v9 = type metadata accessor for FormatWorkspaceGroup(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  sub_1D5B54578(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - v15;
  v17 = sub_1D726294C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v19 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D60CBBE8(a4, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatWorkspaceGroup);
  v20 = (*(v10 + 80) + 227) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v18;
  *(v21 + 40) = v19;
  v22 = *(a3 + 144);
  *(v21 + 176) = *(a3 + 128);
  *(v21 + 192) = v22;
  *(v21 + 208) = *(a3 + 160);
  *(v21 + 223) = *(a3 + 175);
  v23 = *(a3 + 80);
  *(v21 + 112) = *(a3 + 64);
  *(v21 + 128) = v23;
  v24 = *(a3 + 112);
  *(v21 + 144) = *(a3 + 96);
  *(v21 + 160) = v24;
  v25 = *(a3 + 16);
  *(v21 + 48) = *a3;
  *(v21 + 64) = v25;
  v26 = *(a3 + 48);
  *(v21 + 80) = *(a3 + 32);
  *(v21 + 96) = v26;
  sub_1D60CBDE4(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for FormatWorkspaceGroup);
  *(v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  sub_1D5ECF1C0(a3, v30);

  result = sub_1D6736EB8(0, 0, v16, &unk_1D7298AB0, v21);
  *v29 = result;
  return result;
}

uint64_t sub_1D60C7E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[101] = a8;
  v8[100] = a7;
  v8[99] = a6;
  v8[98] = a5;
  v8[97] = a4;
  v8[96] = a1;
  v8[102] = type metadata accessor for DebugFormatBindingRequest(0);
  v8[103] = swift_task_alloc();
  v8[104] = type metadata accessor for FormatContentSubgroup(0);
  v8[105] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D60C7F24, 0, 0);
}

uint64_t sub_1D60C7F24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 848) = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    *(v0 + 856) = v2;
    if (v2)
    {
      v3 = *(v0 + 808);
      swift_beginAccess();
      v4 = *(v3 + 16);
      v5 = *(v3 + 32);
      v6 = *(v3 + 64);
      *(v0 + 48) = *(v3 + 48);
      *(v0 + 64) = v6;
      *(v0 + 16) = v4;
      *(v0 + 32) = v5;
      v7 = *(v3 + 80);
      v8 = *(v3 + 96);
      v9 = *(v3 + 128);
      *(v0 + 112) = *(v3 + 112);
      *(v0 + 128) = v9;
      *(v0 + 80) = v7;
      *(v0 + 96) = v8;
      v10 = *(v3 + 144);
      v11 = *(v3 + 160);
      v12 = *(v3 + 192);
      *(v0 + 176) = *(v3 + 176);
      *(v0 + 192) = v12;
      *(v0 + 144) = v10;
      *(v0 + 160) = v11;
      v13 = *(v3 + 208);
      v14 = *(v3 + 224);
      v15 = *(v3 + 240);
      *(v0 + 256) = *(v3 + 256);
      *(v0 + 224) = v14;
      *(v0 + 240) = v15;
      *(v0 + 208) = v13;
      sub_1D60CB96C(v0 + 16, v0 + 264, qword_1EDF34BC0, &type metadata for FeedPaywall, MEMORY[0x1E69E6720], sub_1D60CFD84);
      type metadata accessor for FormatJSONEncoder(0);
      swift_allocObject();
      sub_1D6BCED58(&unk_1F5111688);
      type metadata accessor for FormatWorkspaceGroup(0);
      sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
      *(v0 + 864) = sub_1D72578BC();
      *(v0 + 872) = v16;

      type metadata accessor for FormatJSONDecoder(0);
      swift_allocObject();
      sub_1D5B7BACC(&unk_1F51116B0);
      sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
      sub_1D725A69C();
      v20 = *(v0 + 840);
      v21 = *(v0 + 824);
      v22 = *(v0 + 816);
      v23 = *(v0 + 792);

      sub_1D60CBBE8(v20, v21 + v22[5], type metadata accessor for FormatContentSubgroup);

      sub_1D725972C();

      v24 = *(v0 + 691);
      v25 = *v23;
      v26 = *(v23 + 16);
      v27 = *(v23 + 48);
      *(v21 + 32) = *(v23 + 32);
      *(v21 + 48) = v27;
      *v21 = v25;
      *(v21 + 16) = v26;
      v28 = *(v23 + 64);
      v29 = *(v23 + 80);
      v30 = *(v23 + 112);
      *(v21 + 96) = *(v23 + 96);
      *(v21 + 112) = v30;
      *(v21 + 64) = v28;
      *(v21 + 80) = v29;
      v31 = *(v23 + 128);
      v32 = *(v23 + 144);
      v33 = *(v23 + 160);
      *(v21 + 175) = *(v23 + 175);
      *(v21 + 144) = v32;
      *(v21 + 160) = v33;
      *(v21 + 128) = v31;
      *(v21 + v22[6]) = v24;
      v34 = v21 + v22[7];
      v35 = *(v0 + 16);
      v36 = *(v0 + 32);
      v37 = *(v0 + 64);
      *(v34 + 32) = *(v0 + 48);
      *(v34 + 48) = v37;
      *v34 = v35;
      *(v34 + 16) = v36;
      v38 = *(v0 + 80);
      v39 = *(v0 + 96);
      v40 = *(v0 + 128);
      *(v34 + 96) = *(v0 + 112);
      *(v34 + 112) = v40;
      *(v34 + 64) = v38;
      *(v34 + 80) = v39;
      v41 = *(v0 + 144);
      v42 = *(v0 + 160);
      v43 = *(v0 + 192);
      *(v34 + 160) = *(v0 + 176);
      *(v34 + 176) = v43;
      *(v34 + 128) = v41;
      *(v34 + 144) = v42;
      v44 = *(v0 + 208);
      v45 = *(v0 + 224);
      v46 = *(v0 + 240);
      *(v34 + 240) = *(v0 + 256);
      *(v34 + 208) = v45;
      *(v34 + 224) = v46;
      *(v34 + 192) = v44;
      sub_1D5ECF1C0(v23, v0 + 512);
      v47 = swift_task_alloc();
      *(v0 + 880) = v47;
      *v47 = v0;
      v47[1] = sub_1D60C83F4;
      v48 = *(v0 + 824);

      return sub_1D7107ACC(v48);
    }
  }

  sub_1D60CEC74();
  swift_allocError();
  *v17 = 0;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D60C83F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 888) = v1;

  if (v1)
  {
    v5 = sub_1D60C8608;
  }

  else
  {
    *(v4 + 896) = a1;
    v5 = sub_1D60C851C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D60C851C()
{
  v1 = v0[112];
  v2 = v0[105];
  v3 = v0[103];
  v4 = v0[96];
  sub_1D5B952F8(v0[108], v0[109]);
  sub_1D60CBC50(v3, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v2, type metadata accessor for FormatContentSubgroup);

  *v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D60C8608()
{
  v1 = v0[105];
  v2 = v0[103];
  sub_1D5B952F8(v0[108], v0[109]);
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v1, type metadata accessor for FormatContentSubgroup);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D60C86D8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  if (*(v2 + 16) == *(a2 + 16) && *(v2 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

void sub_1D60C8730(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (&v38 - v9);
  if (a1)
  {
    v11 = *(a1 + 16);
    v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
    swift_beginAccess();
    v46 = v11;
    v13 = *(v11 + v12);
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v43 = a2;
      v69 = MEMORY[0x1E69E7CC0];

      sub_1D6998B18(0, v14, 0);
      v16 = v69;
      v42 = v14;
      if (a3 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); *(v13 + 16); i = sub_1D7263BFC())
      {
        v18 = 0;
        v45 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v38 = a3 + 32;
        v39 = a3 & 0xC000000000000001;
        v44 = *(v7 + 72);
        v19 = 1;
        v40 = a1;
        v41 = v13;
        while (1)
        {
          v48 = v19;
          v49 = v16;
          sub_1D5C5DC00(v45 + v44 * v18, v10);
          if (!i)
          {
            v24 = a1;
            goto LABEL_15;
          }

          *&v60 = v15;
          v16 = &v60;
          sub_1D7263ECC();
          if (i < 0)
          {
            break;
          }

          v20 = v38;
          v21 = i;
          if (v39)
          {
            v22 = 0;
            do
            {
              v23 = v22 + 1;
              MEMORY[0x1DA6FB460]();

              swift_unknownObjectRelease();
              sub_1D7263E9C();
              sub_1D7263EDC();
              sub_1D7263EEC();
              sub_1D7263EAC();
              v22 = v23;
            }

            while (i != v23);
          }

          else
          {
            do
            {
              v20 += 8;

              sub_1D7263E9C();
              sub_1D7263EDC();
              sub_1D7263EEC();
              sub_1D7263EAC();
              --v21;
            }

            while (v21);
          }

          v15 = v60;
          v24 = v40;
LABEL_15:
          v47 = FormatPackageInventory.merging(with:)(v15);

          v25 = v10[7];
          v57 = v10[6];
          v58 = v25;
          v59 = v10[8];
          v26 = v10[3];
          v53 = v10[2];
          v54 = v26;
          v27 = v10[5];
          v55 = v10[4];
          v56 = v27;
          v28 = v10[1];
          v51 = *v10;
          v52 = v28;

          sub_1D5D65D5C(&v51, &v50);
          sub_1D5C5E444(v10);
          v62 = v53;
          v63 = v54;
          v67 = v58;
          v68 = v59;
          v65 = v56;
          v66 = v57;
          v64 = v55;
          v60 = v51;
          v61 = v52;
          v16 = v49;
          v13 = *(v49 + 2);
          v7 = *(v49 + 3);
          v69 = v49;
          v29 = v43;

          if (v13 >= v7 >> 1)
          {
            sub_1D6998B18((v7 > 1), v13 + 1, 1);
            v16 = v69;
          }

          *(v16 + 2) = v13 + 1;
          v30 = v16 + 168 * v13;
          v31 = v47;
          *(v30 + 4) = v29;
          *(v30 + 5) = v31;
          *(v30 + 6) = v24;
          *(v30 + 56) = v60;
          v32 = v61;
          v33 = v62;
          v34 = v63;
          *(v30 + 120) = v64;
          *(v30 + 104) = v34;
          *(v30 + 88) = v33;
          *(v30 + 72) = v32;
          v35 = v65;
          v36 = v66;
          v37 = v67;
          *(v30 + 184) = v68;
          *(v30 + 168) = v37;
          *(v30 + 152) = v36;
          *(v30 + 136) = v35;
          v18 = v48;
          if (v48 == v42)
          {

            return;
          }

          a1 = v24;
          v19 = v48 + 1;
          v15 = MEMORY[0x1E69E7CC0];
          if (v48 >= *(v41 + 16))
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_24:
        ;
      }

LABEL_25:
      __break(1u);
    }
  }
}

uint64_t sub_1D60C8B80()
{

  v1 = *(v0 + 280);
  v7[8] = *(v0 + 264);
  v7[9] = v1;
  v8[0] = *(v0 + 296);
  *(v8 + 15) = *(v0 + 311);
  v2 = *(v0 + 216);
  v7[4] = *(v0 + 200);
  v7[5] = v2;
  v3 = *(v0 + 248);
  v7[6] = *(v0 + 232);
  v7[7] = v3;
  v4 = *(v0 + 152);
  v7[0] = *(v0 + 136);
  v7[1] = v4;
  v5 = *(v0 + 184);
  v7[2] = *(v0 + 168);
  v7[3] = v5;
  sub_1D60CB8FC(v7, &qword_1EC883588, &type metadata for FormatWorkspace);

  return v0;
}

uint64_t sub_1D60C8C7C()
{
  sub_1D60C8B80();

  return swift_deallocClassInstance();
}

uint64_t sub_1D60C8CD4()
{
  v11 = sub_1D726307C();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10[1] = sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  sub_1D7261AEC();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5B737E8(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v8 = MEMORY[0x1E69E8030];
  sub_1D5B54578(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D60CBA78(&qword_1EDF1AE80, &unk_1EDF1AE90, v8);
  sub_1D7263B6C();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  result = sub_1D72630BC();
  qword_1EC883478 = result;
  return result;
}

double sub_1D60C8F58(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(&unk_1F51116D8);
  sub_1D725782C();
  sub_1D725786C();
  sub_1D60CBB94();
  v5 = sub_1D72578BC();
  v7 = v6;
  sub_1D725869C();
  sub_1D5B952F8(v5, v7);

  return result;
}

double sub_1D60C90E4(_OWORD *a1, uint64_t a2, __n128 a3)
{
  v3 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(&unk_1F5111700);
  sub_1D725782C();
  sub_1D725786C();
  sub_1D60CBADC();
  v5 = sub_1D72578BC();
  v7 = v6;
  sub_1D725869C();
  sub_1D5B952F8(v5, v7);

  return result;
}

uint64_t sub_1D60C92B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v25 = *a1;
  v17 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v18 = *(*(a1 + *(v17 + 24)) + 16);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  sub_1D60CBBE8(*(a1 + *(v17 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v15, type metadata accessor for GroupLayoutBindingContext);
  v21 = *(a2 + 184);
  v27 = v21;
  sub_1D60CBBE8(a3, v11, type metadata accessor for FeedContext);
  v22 = *(type metadata accessor for FormatWorkspaceGroup(0) + 24);

  sub_1D60CF4D8(&v27, v26, &qword_1EDF45158, sub_1D5B55A8C, sub_1D60CF5DC);
  result = sub_1D6BADF0C(v15, v21, v11, (a4 + v22));
  *a4 = v25;
  a4[1] = v16;
  a4[2] = v19;
  a4[3] = v20;
  return result;
}

void sub_1D60C9480(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a3;
  v45 = a2;
  v42 = a4;
  sub_1D5B54578(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for FormatContentSubgroup(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v46 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1D725895C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  v64 = *a1;
  v65 = v17;
  v18 = a1[3];
  *v66 = a1[2];
  *&v66[16] = v18;
  *&v66[32] = a1[4];
  v59[0] = v64;
  v59[1] = v65;
  v61 = *&v66[8];
  v60 = *v66 & 0x7FFFFFFFFFFFFFFFLL;
  v62 = *(&v18 + 1);
  v44 = *&v66[32];
  v63 = *&v66[32];
  sub_1D5CE9930(&v64, &v53);
  v19 = v44;

  sub_1D5CB71DC(v59);
  if (v19[2])
  {
    v20 = v19[6];
    *&v44 = v19[5];
  }

  else
  {

    *&v44 = v64;
    v21 = v65;
    v40 = v12;
    v41 = v8;
    v22 = *&v66[8];
    v20 = *&v66[24];
    v23 = *&v66[16];
    v39 = *&v66[40];
    v24 = *&v66[32];
    v25 = *v66 & 0x7FFFFFFFFFFFFFFFLL;

    *&v53 = v44;
    *(&v53 + 1) = v26;
    *&v44 = v26;
    v54 = v21;
    v55 = v25;
    *&v56 = v22;
    *(&v56 + 1) = v23;
    *&v57 = v20;
    v12 = v40;
    v8 = v41;
    *(&v57 + 1) = v24;
    v58 = v39;
    sub_1D5CE9930(&v64, v48);

    sub_1D5CB71DC(&v53);
  }

  sub_1D725894C();
  v41 = sub_1D725893C();
  v28 = v27;
  (*(v13 + 8))(v16, v12);
  v29 = *v66 & 0x7FFFFFFFFFFFFFFFLL;
  v53 = v64;
  v54 = v65;
  v56 = *&v66[8];
  v57 = *&v66[24];
  v55 = *v66 & 0x7FFFFFFFFFFFFFFFLL;
  v58 = *&v66[40];
  sub_1D5CE9930(&v64, v48);

  sub_1D5CB71DC(&v53);
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);

  v48[0] = v64;
  v48[1] = v65;
  v49 = *v66 & 0x7FFFFFFFFFFFFFFFLL;
  v50 = *&v66[8];
  v51 = *&v66[24];
  v52 = *&v66[40];
  sub_1D60CBBE8(v45, v8, type metadata accessor for FeedContext);
  v32 = type metadata accessor for FeedContext(0);
  (*(*(v32 - 8) + 56))(v8, 0, 1, v32);
  sub_1D5CE9930(&v64, &v47);

  v33 = v8;
  v34 = v46;
  v35 = v67;
  sub_1D6BAE998(v48, v20, v33, v46);

  if (v35)
  {

    *v43 = v35;
  }

  else
  {
    v36 = v42;
    *v42 = v41;
    v36[1] = v28;
    v36[2] = v31;
    v36[3] = v30;
    v37 = type metadata accessor for FormatWorkspaceGroup(0);
    sub_1D60CBDE4(v34, v36 + *(v37 + 24), type metadata accessor for FormatContentSubgroup);
  }
}

void sub_1D60C998C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a8;
  v47 = a2;
  v43 = a6;
  v44 = a7;
  v45 = a1;
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v38 - v13;
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v38 - v22;
  sub_1D72577BC();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D60CB820(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v24 = sub_1D725AA6C();
    sub_1D5B737E8(&unk_1EC896020, MEMORY[0x1E69D64B0], MEMORY[0x1E69D64B8]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69D64A8], v24);
    a3(v25);
  }

  else
  {
    v42 = a9;
    v39 = a4;
    v40 = a3;
    v27 = *(v16 + 32);
    v27(v23, v14, v15);
    sub_1D6E79004();
    v43 = sub_1D725ADEC();

    v41 = sub_1D725776C();
    (*(v16 + 16))(v19, v23, v15);
    v28 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v39;
    *(v30 + 16) = v40;
    *(v30 + 24) = v31;
    v27((v30 + v28), v19, v15);
    v32 = (v30 + v29);
    v33 = v47;
    *v32 = v45;
    v32[1] = v33;
    aBlock[4] = v46;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D60B572C;
    aBlock[3] = v42;
    v34 = _Block_copy(aBlock);

    v35 = v43;
    v36 = v41;
    v37 = [v43 dataTaskWithRequest:v41 completionHandler:v34];
    _Block_release(v34);

    [v37 resume];
    (*(v16 + 8))(v23, v15);
  }
}

void sub_1D60C9DA0(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(id), int a6, int a7, void (*a8)(__int128 *), __n128 a9, uint64_t a10)
{
  if (a4)
  {
    v11 = a4;
    v12 = a4;
LABEL_5:
    a5(v11);

    return;
  }

  if (a2 >> 60 == 15)
  {
    type metadata accessor for DebugFormatServiceError(0);
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
    v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  if (a3 && (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    sub_1D5F13DE4(a1, a2);
    v19 = a3;
    if ([v18 statusCode] == 201)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED80();
      sub_1D725A69C();

      a8(&v28);
      sub_1D5B952E4(a1, a2);
    }

    else
    {
      v27 = v19;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED2C();
      sub_1D725A69C();

      v23 = v29;
      v24 = v30;
      type metadata accessor for DebugFormatServiceError(0);
      sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
      v25 = swift_allocError();
      *v26 = v28;
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      swift_storeEnumTagMultiPayload();
      a5(v25);
      sub_1D5B952E4(a1, a2);
    }
  }

  else
  {
    type metadata accessor for DebugFormatServiceError(0);
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
    v20 = swift_allocError();
    *v21 = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5F13DE4(a1, a2);
    v22 = a3;
    a5(v20);

    sub_1D5B952E4(a1, a2);
  }
}

void sub_1D60CA2D4(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(id), int a6, int a7, void (*a8)(__int128 *), __n128 a9, uint64_t a10)
{
  if (a4)
  {
    v11 = a4;
    v12 = a4;
LABEL_5:
    a5(v11);

    return;
  }

  if (a2 >> 60 == 15)
  {
    type metadata accessor for DebugFormatServiceError(0);
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
    v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  if (a3 && (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    sub_1D5F13DE4(a1, a2);
    v19 = a3;
    if ([v18 statusCode] == 201)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CFD28();
      sub_1D725A69C();

      a8(&v28);
      sub_1D5B952E4(a1, a2);
    }

    else
    {
      v27 = v19;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED2C();
      sub_1D725A69C();

      v23 = v29;
      v24 = v30;
      type metadata accessor for DebugFormatServiceError(0);
      sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
      v25 = swift_allocError();
      *v26 = v28;
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      swift_storeEnumTagMultiPayload();
      a5(v25);
      sub_1D5B952E4(a1, a2);
    }
  }

  else
  {
    type metadata accessor for DebugFormatServiceError(0);
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
    v20 = swift_allocError();
    *v21 = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5F13DE4(a1, a2);
    v22 = a3;
    a5(v20);

    sub_1D5B952E4(a1, a2);
  }
}

void sub_1D60CA808(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(id), int a6, int a7, void (*a8)(__int128 *), __n128 a9, uint64_t a10)
{
  if (a4)
  {
    v11 = a4;
    v12 = a4;
LABEL_5:
    a5(v11);

    return;
  }

  if (a2 >> 60 == 15)
  {
    type metadata accessor for DebugFormatServiceError(0);
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
    v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  if (a3 && (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    sub_1D5F13DE4(a1, a2);
    v19 = a3;
    if ([v18 statusCode] == 201)
    {
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CFB0C();
      sub_1D725A69C();

      a8(&v28);
      sub_1D5B952E4(a1, a2);
    }

    else
    {
      v27 = v19;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D60CED2C();
      sub_1D725A69C();

      v23 = v29;
      v24 = v30;
      type metadata accessor for DebugFormatServiceError(0);
      sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
      v25 = swift_allocError();
      *v26 = v28;
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      swift_storeEnumTagMultiPayload();
      a5(v25);
      sub_1D5B952E4(a1, a2);
    }
  }

  else
  {
    type metadata accessor for DebugFormatServiceError(0);
    sub_1D5B737E8(&qword_1EC883520, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
    v20 = swift_allocError();
    *v21 = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5F13DE4(a1, a2);
    v22 = a3;
    a5(v20);

    sub_1D5B952E4(a1, a2);
  }
}

uint64_t sub_1D60CAD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = a2;
  v18[3] = a3;
  v5 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v18[1] = v3;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D6998AC8(0, v10, 0);
    v11 = v19;
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = (a1 + v12);
    v14 = *(v6 + 72);
    do
    {
      sub_1D676EAF8(v13, v9);
      v19 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6998AC8((v15 > 1), v16 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v16 + 1;
      sub_1D60CBDE4(v9, v11 + v12 + v16 * v14, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v13 = (v13 + v14);
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_1D60CAED0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v32 - v7;
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for DebugFormatWorkspace(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1D60CBBE8(v16, v12, sub_1D60CB67C);
  sub_1D5B54578(0, &qword_1EC883480, sub_1D60CB67C, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v18 = sub_1D725B2FC();
  sub_1D60CBC50(v16, sub_1D60CB67C);
  v2[2] = v18;
  LOWORD(v47[0]) = 512;
  sub_1D60CB6B0(0, &qword_1EC883488, &qword_1EC883490, &type metadata for DebugFormatWorkspaceDevice);
  swift_allocObject();
  v2[3] = sub_1D725B2FC();
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  v19 = MEMORY[0x1E69D6748];
  sub_1D60CFD84(0, &qword_1EC883498, MEMORY[0x1E69E6158], MEMORY[0x1E69D6748]);
  swift_allocObject();
  v2[4] = sub_1D725B2FC();
  LODWORD(v47[0]) = 0;
  sub_1D60CFD84(0, &qword_1EC88DD80, MEMORY[0x1E69E6448], v19);
  swift_allocObject();
  v20 = sub_1D725B2FC();
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = v20;
  if (qword_1EC87D750 != -1)
  {
    swift_once();
  }

  sub_1D5C5DC9C(0, &qword_1EC8834A0, sub_1D60CB71C, &type metadata for DebugFormatWorkspaceCanvasSort, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  v2[8] = sub_1D725977C();
  sub_1D60CB770(v47);
  v44 = v47[10];
  v45 = v47[11];
  v46 = v47[12];
  v40 = v47[6];
  v41 = v47[7];
  v42 = v47[8];
  v43 = v47[9];
  v36 = v47[2];
  v37 = v47[3];
  v38 = v47[4];
  v39 = v47[5];
  v34 = v47[0];
  v35 = v47[1];
  sub_1D60CB6B0(0, &qword_1EC8834B0, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
  swift_allocObject();
  v2[9] = sub_1D725B2FC();
  v21 = MEMORY[0x1E69E7CC0];
  *&v34 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69D6748];
  sub_1D5B54578(0, &qword_1EC8834C0, sub_1D60CB794, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v2[10] = sub_1D725B2FC();
  *&v34 = v21;
  sub_1D5B54578(0, &qword_1EC8834D0, sub_1D60CB7C8, v22);
  swift_allocObject();
  v2[12] = sub_1D725B2FC();
  v2[13] = sub_1D605C430(v21);
  v2[14] = sub_1D605C658(v21);
  type metadata accessor for DebugFormatService();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v2[16] = v23;
  sub_1D60CB7FC(v48);
  v24 = v48[9];
  *(v2 + 33) = v48[8];
  *(v2 + 35) = v24;
  *(v2 + 37) = v49[0];
  v25 = v48[5];
  *(v2 + 25) = v48[4];
  *(v2 + 27) = v25;
  v26 = v48[7];
  *(v2 + 29) = v48[6];
  *(v2 + 31) = v26;
  v27 = v48[1];
  *(v2 + 17) = v48[0];
  *(v2 + 19) = v27;
  v28 = v48[3];
  *(v2 + 21) = v48[2];
  *(v2 + 311) = *(v49 + 15);
  *(v2 + 23) = v28;
  v2[40] = 0;
  v2[15] = a1;

  sub_1D60B57F4(v8);
  sub_1D60B5B1C(v8, &v33);
  v29 = MEMORY[0x1E6968FB0];
  sub_1D60CB820(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v33)
  {
    v30 = v33;
  }

  else
  {
    v30 = v21;
  }

  swift_beginAccess();
  *&v32[0] = v30;
  sub_1D60CFD84(0, &qword_1EC8834D8, &type metadata for DebugFormatWorkspaceFile, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v2[11] = sub_1D725B2FC();
  swift_endAccess();
  sub_1D60B62F8(v8);
  sub_1D60B5EC4(v8, &v34);
  sub_1D60CB820(v8, &qword_1EDF45B40, v29);
  v32[10] = v44;
  v32[11] = v45;
  v32[12] = v46;
  v32[6] = v40;
  v32[7] = v41;
  v32[8] = v42;
  v32[9] = v43;
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[0] = v34;
  v32[1] = v35;

  sub_1D725B32C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  *(swift_allocObject() + 16) = v4;
  sub_1D725B34C();

  sub_1D725B33C();

  *(swift_allocObject() + 16) = v4;
  sub_1D725B34C();

  return v2;
}

void sub_1D60CB6B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D60CFD84(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D725B36C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D60CB71C()
{
  result = qword_1EC8834A8;
  if (!qword_1EC8834A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834A8);
  }

  return result;
}

double sub_1D60CB770(_OWORD *a1)
{
  result = 0.0;
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

double sub_1D60CB7FC(uint64_t a1)
{
  *(a1 + 175) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D60CB820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B54578(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60CB8FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D60CFD84(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60CB96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double sub_1D60CB9E0()
{
  v1 = *(sub_1D72585BC() - 8);
  v2 = v0[12];
  v3 = (*(v1 + 80) + 224) & ~*(v1 + 80);
  v10[10] = v0[11];
  v10[11] = v2;
  v10[12] = v0[13];
  v4 = v0[8];
  v10[6] = v0[7];
  v10[7] = v4;
  v5 = v0[10];
  v10[8] = v0[9];
  v10[9] = v5;
  v6 = v0[4];
  v10[2] = v0[3];
  v10[3] = v6;
  v7 = v0[6];
  v10[4] = v0[5];
  v10[5] = v7;
  v8 = v0[2];
  v10[0] = v0[1];
  v10[1] = v8;
  return sub_1D60C90E4(v10, v0 + v3, v8);
}

uint64_t sub_1D60CBA78(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B54578(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60CBADC()
{
  result = qword_1EC8834E0;
  if (!qword_1EC8834E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834E0);
  }

  return result;
}

double sub_1D60CBB30()
{
  v1 = *(sub_1D72585BC() - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D60C8F58(v3, v4, v2);
}

unint64_t sub_1D60CBB94()
{
  result = qword_1EC8834E8;
  if (!qword_1EC8834E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834E8);
  }

  return result;
}

uint64_t sub_1D60CBBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60CBC50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60CBCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspace(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D60CBD1C()
{
  result = qword_1EC8834F0;
  if (!qword_1EC8834F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834F0);
  }

  return result;
}

unint64_t sub_1D60CBD70()
{
  result = qword_1EC8834F8;
  if (!qword_1EC8834F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8834F8);
  }

  return result;
}

uint64_t sub_1D60CBDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60CBE4C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 1760) = a4;
  *(v4 + 1180) = a3;
  *(v4 + 1752) = a2;
  *(v4 + 1744) = a1;
  v5 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  *(v4 + 1768) = v5;
  *(v4 + 1776) = *(v5 - 8);
  *(v4 + 1784) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  *(v4 + 1792) = v6;
  *(v4 + 1800) = swift_task_alloc();
  *(v4 + 1808) = type metadata accessor for DebugFormatCanvasBindResult(0);
  *(v4 + 1816) = swift_task_alloc();
  v7 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0);
  *(v4 + 1824) = v7;
  *(v4 + 1832) = *(v7 - 8);
  *(v4 + 1840) = swift_task_alloc();
  *(v4 + 1848) = swift_task_alloc();
  v8 = sub_1D7259CFC();
  *(v4 + 1856) = v8;
  *(v4 + 1864) = *(v8 - 8);
  *(v4 + 1872) = swift_task_alloc();
  v9 = sub_1D7259F5C();
  *(v4 + 1880) = v9;
  *(v4 + 1888) = *(v9 - 8);
  *(v4 + 1896) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D60CC0C8, 0, 0);
}

void sub_1D60CC0C8()
{
  v120 = v0;
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1864);
  v6 = *(v0 + 1856);
  v7 = *(v0 + 1760);
  v8 = *(v0 + 1180);
  v9 = *(v0 + 1752);
  v10 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  (*(v2 + 16))(v1, v7 + *(v10 + 20), v3);
  (*(v5 + 16))(v4, v7, v6);
  v11 = type metadata accessor for DebugFormatWorkspace(0);
  *(v0 + 1904) = v11;
  v12 = *(v9 + *(v11 + 36));
  v13 = swift_task_alloc();
  *(v13 + 16) = v9;
  *(v13 + 24) = v8;
  *(v13 + 25) = HIBYTE(v8) & 1;
  *(v13 + 32) = v1;
  *(v13 + 40) = v4;
  v14 = v12;
  v15 = 0;
  v16 = sub_1D5ECBA9C(sub_1D60CE9CC, v13, v14);
  *(v0 + 1912) = v16;

  type metadata accessor for DebugFormatWorkspaceCanvasLayoutGenerator();
  v17 = swift_allocObject();
  *(v0 + 1920) = v17;
  sub_1D60CEA08(0, &unk_1EC88B480, &qword_1EC883500, &unk_1EC88B490, type metadata accessor for DebugFormatCanvasBindResult);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 16) = MEMORY[0x1E69E7CC8];
  v17[3] = v18;
  sub_1D60CEA08(0, &unk_1EC88B4A0, &qword_1EC883508, &qword_1EC88B4B0, type metadata accessor for DebugFormatCanvasViewResult);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v17[4] = v20;
  type metadata accessor for DebugFormatCanvasGenerator();
  swift_allocObject();

  v17[2] = sub_1D5F26CE8(v21);
  v22 = *(v16 + 16);
  *(v0 + 1928) = v22;
  if (!v22)
  {
LABEL_15:
    v38 = *(v0 + 1744);
    v39 = type metadata accessor for DebugFormatWorkspaceCanvasSorter();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem] = 0;
    *&v40[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter_editor] = v38;
    *(v0 + 1704) = v40;
    *(v0 + 1712) = v39;

    v41 = objc_msgSendSuper2((v0 + 1704), sel_init);
    *(v0 + 2000) = v41;

    sub_1D725972C();

    v42 = *(v0 + 1912);
    if (*(v0 + 627) == 1)
    {
      v43 = v41;
      v15 = sub_1D60CAD44(v42, v43, v118);

      v42 = v15;
    }

    *(v0 + 2008) = v42;
    v44 = *(v42 + 16);
    *(v0 + 2016) = v44;
    v45 = MEMORY[0x1E69E7CC0];
    if (!v44)
    {
LABEL_29:

      v60 = *(v0 + 2000);
      if (*(v45 + 16))
      {
        v61 = *(v0 + 1904);
        v62 = *(v0 + 1180);
        v63 = *(v0 + 1752);
        v64 = (v63 + *(v61 + 20));
        v65 = *v64;
        v66 = v64[1];
        v67 = v64[3];
        *(v0 + 848) = v64[2];
        *(v0 + 864) = v67;
        *(v0 + 816) = v65;
        *(v0 + 832) = v66;
        v68 = v64[4];
        v69 = v64[5];
        v70 = v64[7];
        *(v0 + 912) = v64[6];
        *(v0 + 928) = v70;
        *(v0 + 880) = v68;
        *(v0 + 896) = v69;
        v71 = v64[8];
        v72 = v64[9];
        v73 = v64[10];
        *(v0 + 991) = *(v64 + 175);
        *(v0 + 960) = v72;
        *(v0 + 976) = v73;
        *(v0 + 944) = v71;
        v74 = *(v0 + 816);
        v75 = *(v0 + 824);
        v107 = v64[1];
        v108 = v64[2];
        v115 = *(v64 + 145);
        v116 = *(v64 + 161);
        v117 = *(v64 + 177);
        v111 = *(v64 + 81);
        v112 = *(v64 + 97);
        v113 = *(v64 + 113);
        v114 = *(v64 + 129);
        v109 = *(v64 + 49);
        v110 = *(v64 + 65);
        strcpy((v0 + 632), "builtin:editor");
        *(v0 + 647) = -18;
        v76 = v64[2];
        *(v0 + 648) = v64[1];
        *(v0 + 664) = v76;
        *(v0 + 680) = 0;
        *(v0 + 681) = *(v64 + 49);
        v77 = *(v64 + 65);
        v78 = *(v64 + 81);
        v79 = *(v64 + 113);
        *(v0 + 729) = *(v64 + 97);
        *(v0 + 745) = v79;
        *(v0 + 697) = v77;
        *(v0 + 713) = v78;
        v80 = *(v64 + 177);
        v81 = *(v64 + 129);
        v82 = *(v64 + 161);
        *(v0 + 777) = *(v64 + 145);
        *(v0 + 793) = v82;
        *(v0 + 761) = v81;
        *(v0 + 809) = v80;
        v83 = *(v63 + *(v61 + 32));
        v84 = *(v0 + 776);
        *(v0 + 160) = *(v0 + 760);
        *(v0 + 176) = v84;
        *(v0 + 192) = *(v0 + 792);
        *(v0 + 207) = *(v0 + 807);
        v85 = *(v0 + 712);
        *(v0 + 96) = *(v0 + 696);
        *(v0 + 112) = v85;
        v86 = *(v0 + 744);
        *(v0 + 128) = *(v0 + 728);
        *(v0 + 144) = v86;
        v87 = *(v0 + 648);
        *(v0 + 32) = *(v0 + 632);
        *(v0 + 48) = v87;
        v88 = *(v0 + 680);
        *(v0 + 64) = *(v0 + 664);
        *(v0 + 80) = v88;
        *(v0 + 16) = v74;
        *(v0 + 24) = v75;
        *(v0 + 211) = v62;
        *(v0 + 212) = HIBYTE(v62) & 1;
        *(v0 + 216) = v83;
        *(v0 + 224) = v45;
        nullsub_1();
        v89 = *(v0 + 192);
        v118[10] = *(v0 + 176);
        v118[11] = v89;
        v118[12] = *(v0 + 208);
        v119 = *(v0 + 224);
        v90 = *(v0 + 128);
        v118[6] = *(v0 + 112);
        v118[7] = v90;
        v91 = *(v0 + 160);
        v118[8] = *(v0 + 144);
        v118[9] = v91;
        v92 = *(v0 + 64);
        v118[2] = *(v0 + 48);
        v118[3] = v92;
        v93 = *(v0 + 96);
        v118[4] = *(v0 + 80);
        v118[5] = v93;
        v94 = *(v0 + 32);
        v118[0] = *(v0 + 16);
        v118[1] = v94;
        sub_1D5ECF1C0(v0 + 816, v0 + 1000);
        sub_1D5ECF1C0(v0 + 632, v0 + 1184);

        sub_1D6AA103C(v118);
        v95 = *(v0 + 192);
        *(v0 + 392) = *(v0 + 176);
        *(v0 + 408) = v95;
        *(v0 + 424) = *(v0 + 208);
        *(v0 + 440) = *(v0 + 224);
        v96 = *(v0 + 128);
        *(v0 + 328) = *(v0 + 112);
        *(v0 + 344) = v96;
        v97 = *(v0 + 160);
        *(v0 + 360) = *(v0 + 144);
        *(v0 + 376) = v97;
        v98 = *(v0 + 64);
        *(v0 + 264) = *(v0 + 48);
        *(v0 + 280) = v98;
        v99 = *(v0 + 96);
        *(v0 + 296) = *(v0 + 80);
        *(v0 + 312) = v99;
        v100 = *(v0 + 32);
        *(v0 + 232) = *(v0 + 16);
        *(v0 + 248) = v100;

        sub_1D725B32C();

        sub_1D6AA1610();

        strcpy((v0 + 448), "builtin:editor");
        *(v0 + 463) = -18;
        *(v0 + 464) = v107;
        *(v0 + 480) = v108;
        *(v0 + 496) = 0;
        *(v0 + 593) = v115;
        *(v0 + 609) = v116;
        *(v0 + 625) = v117;
        *(v0 + 529) = v111;
        *(v0 + 545) = v112;
        *(v0 + 561) = v113;
        *(v0 + 577) = v114;
        *(v0 + 497) = v109;
        *(v0 + 513) = v110;
        sub_1D5ECF21C(v0 + 448);
      }

      else
      {
      }

      v101 = *(v0 + 1896);
      v102 = *(v0 + 1888);
      v103 = *(v0 + 1880);
      (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
      (*(v102 + 8))(v101, v103);

      v104 = *(v0 + 8);

      v104();
      return;
    }

    v46 = 0;
    v47 = *(v0 + 1832);
    *(v0 + 812) = *(*(v0 + 1824) + 40);
    *(v0 + 996) = *(v47 + 80);
    while (1)
    {
      *(v0 + 2032) = v45;
      *(v0 + 2024) = v46;
      v48 = *(v0 + 2008);
      if (v46 >= *(v48 + 16))
      {
        goto LABEL_40;
      }

      v49 = *(v0 + 812);
      v50 = *(v0 + 1840);
      sub_1D60CBBE8(v48 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v46, v50, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v25 = *(v50 + v49);

      sub_1D60CBC50(v50, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      if (v25 >> 62)
      {
        v55 = sub_1D7263BFC();
        if (v55)
        {
LABEL_25:
          if ((v25 & 0xC000000000000001) != 0)
          {
            goto LABEL_43;
          }

          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v56 = *(v25 + 32);

            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v55 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v55)
        {
          goto LABEL_25;
        }
      }

      v46 = *(v0 + 2024) + 1;
      if (v46 == *(v0 + 2016))
      {
        goto LABEL_29;
      }
    }
  }

  *(v0 + 628) = *(*(v0 + 1832) + 80);
  *(v0 + 1936) = 0;
  v23 = *(v0 + 1912);
  if (!*(v23 + 16))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = 0;
  while (1)
  {
    v25 = *(v0 + 1848);
    v26 = *(v0 + 1824);
    sub_1D60CBBE8(v23 + ((*(v0 + 628) + 32) & ~*(v0 + 628)) + *(*(v0 + 1832) + 72) * v24, v25, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v27 = *(v25 + *(v26 + 40));
    *(v0 + 1944) = v27;
    if (v27 >> 62)
    {
      break;
    }

    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 1952) = v28;
    if (v28)
    {
      goto LABEL_10;
    }

LABEL_6:
    v29 = *(v0 + 1928);
    v30 = *(v0 + 1936) + 1;
    sub_1D60CBC50(*(v0 + 1848), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v30 == v29)
    {
      goto LABEL_15;
    }

    v24 = *(v0 + 1936) + 1;
    *(v0 + 1936) = v24;
    v23 = *(v0 + 1912);
    if (v24 >= *(v23 + 16))
    {
      goto LABEL_39;
    }
  }

  v31 = sub_1D7263BFC();
  *(v0 + 1952) = v31;
  if (!v31)
  {
    goto LABEL_6;
  }

LABEL_10:
  v32 = *(v0 + 1944);
  if ((v32 & 0xC000000000000001) == 0)
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v32 + 32);

      goto LABEL_13;
    }

    __break(1u);
LABEL_43:
    v56 = MEMORY[0x1DA6FB460](0, v25);
LABEL_28:
    *(v0 + 2040) = v56;

    *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
    sub_1D725B77C();
    v57 = *(v0 + 1728);
    *(v0 + 2056) = v57;
    v58 = swift_task_alloc();
    *(v0 + 2064) = v58;
    v59 = type metadata accessor for DebugFormatBindingResult(0);
    v53 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v58 = v0;
    v58[1] = sub_1D60CDFF8;
    v54 = MEMORY[0x1E69E7288];
    v55 = v0 + 1736;
    v51 = v57;
    v52 = v59;
LABEL_36:

LABEL_45:
    MEMORY[0x1EEE6DA10](v55, v51, v52, v53, v54);
    return;
  }

LABEL_41:
  v33 = MEMORY[0x1DA6FB460](0);
LABEL_13:
  *(v0 + 1960) = v33;
  *(v0 + 1968) = 1;
  v34 = *(v0 + 1920);
  v35 = *(v0 + 1848);
  v36 = *(v34 + 24);
  v37 = swift_task_alloc();
  v37[2] = v33;
  v37[3] = v35;
  v37[4] = v34;
  os_unfair_lock_lock((v36 + 24));
  sub_1D60CEB68((v36 + 16), (v0 + 1720));
  os_unfair_lock_unlock((v36 + 24));
  if (!v15)
  {
    v105 = *(v0 + 1720);
    *(v0 + 1976) = v105;

    v106 = swift_task_alloc();
    *(v0 + 1984) = v106;
    v53 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v106 = v0;
    v106[1] = sub_1D60CCBB4;
    v55 = *(v0 + 1816);
    v52 = *(v0 + 1808);
    v54 = MEMORY[0x1E69E7288];
    v51 = v105;
    goto LABEL_36;
  }
}

uint64_t sub_1D60CCBB4()
{
  *(*v1 + 1992) = v0;

  if (v0)
  {
    v2 = sub_1D60CD66C;
  }

  else
  {
    v2 = sub_1D60CCCC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D60CCCC8()
{
  v103 = v0;
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1816);
  v3 = *(v0 + 1800);

  sub_1D60CBDE4(v2, v3, type metadata accessor for DebugFormatCanvasBindResult);
  swift_storeEnumTagMultiPayload();
  v4 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v3, v1 + v4);
  swift_endAccess();
  v5 = *(v0 + 1992);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1952);

  if (v6 != v7)
  {
    v8 = *(v0 + 1968);
LABEL_10:
    v17 = *(v0 + 1944);
    if ((v17 & 0xC000000000000001) != 0)
    {
LABEL_41:
      v18 = MEMORY[0x1DA6FB460](v8);
    }

    else
    {
      if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v18 = *(v17 + 8 * v8 + 32);
    }

    *(v0 + 1960) = v18;
    *(v0 + 1968) = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      v19 = *(v0 + 1920);
      v20 = *(v0 + 1848);
      v21 = *(v19 + 24);
      v22 = swift_task_alloc();
      v22[2] = v18;
      v22[3] = v20;
      v22[4] = v19;
      os_unfair_lock_lock((v21 + 24));
      sub_1D60CEB68((v21 + 16), (v0 + 1720));
      os_unfair_lock_unlock((v21 + 24));
      if (v5)
      {
        return;
      }

      v23 = *(v0 + 1720);
      *(v0 + 1976) = v23;

      v24 = swift_task_alloc();
      *(v0 + 1984) = v24;
      v25 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
      *v24 = v0;
      v24[1] = sub_1D60CCBB4;
      v26 = *(v0 + 1816);
      v27 = *(v0 + 1808);
      v28 = MEMORY[0x1E69E7288];
      v29 = v23;
      goto LABEL_30;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v41 = MEMORY[0x1DA6FB460](0, v8);
LABEL_29:
    *(v0 + 2040) = v41;

    *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
    sub_1D725B77C();
    v42 = *(v0 + 1728);
    *(v0 + 2056) = v42;
    v43 = swift_task_alloc();
    *(v0 + 2064) = v43;
    v44 = type metadata accessor for DebugFormatBindingResult(0);
    v25 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v43 = v0;
    v43[1] = sub_1D60CDFF8;
    v28 = MEMORY[0x1E69E7288];
    v26 = v0 + 1736;
    v29 = v42;
    v27 = v44;
LABEL_30:

LABEL_46:
    MEMORY[0x1EEE6DA10](v26, v29, v27, v25, v28);
    return;
  }

  while (1)
  {
    v8 = *(v0 + 1928);
    v9 = *(v0 + 1936) + 1;
    sub_1D60CBC50(*(v0 + 1848), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v9 == v8)
    {
      break;
    }

    v10 = *(v0 + 1936) + 1;
    *(v0 + 1936) = v10;
    v11 = *(v0 + 1912);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v12 = *(v0 + 1848);
    v13 = *(v0 + 1824);
    sub_1D60CBBE8(v11 + ((*(v0 + 628) + 32) & ~*(v0 + 628)) + *(*(v0 + 1832) + 72) * v10, v12, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v14 = *(v12 + *(v13 + 40));
    *(v0 + 1944) = v14;
    if (v14 >> 62)
    {
      v16 = sub_1D7263BFC();
      *(v0 + 1952) = v16;
      if (v16)
      {
LABEL_8:
        v8 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1952) = v15;
      if (v15)
      {
        goto LABEL_8;
      }
    }
  }

  v30 = *(v0 + 1744);
  v31 = type metadata accessor for DebugFormatWorkspaceCanvasSorter();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem] = 0;
  *&v32[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter_editor] = v30;
  *(v0 + 1704) = v32;
  *(v0 + 1712) = v31;

  v33 = objc_msgSendSuper2((v0 + 1704), sel_init);
  *(v0 + 2000) = v33;

  sub_1D725972C();

  v8 = *(v0 + 1912);
  if (*(v0 + 627) == 1)
  {
    v34 = v33;
    v5 = sub_1D60CAD44(v8, v34, v101);

    v8 = v5;
  }

  *(v0 + 2008) = v8;
  v35 = *(v8 + 16);
  *(v0 + 2016) = v35;
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = 0;
    v38 = *(v0 + 1832);
    *(v0 + 812) = *(*(v0 + 1824) + 40);
    *(v0 + 996) = *(v38 + 80);
    do
    {
      *(v0 + 2032) = v36;
      *(v0 + 2024) = v37;
      v39 = *(v0 + 2008);
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_40;
      }

      v40 = *(v0 + 812);
      v5 = *(v0 + 1840);
      sub_1D60CBBE8(v39 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v37, v5, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v8 = *(v5 + v40);

      sub_1D60CBC50(v5, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      if (v8 >> 62)
      {
        v26 = sub_1D7263BFC();
        if (v26)
        {
LABEL_26:
          if ((v8 & 0xC000000000000001) != 0)
          {
            goto LABEL_44;
          }

          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v41 = *(v8 + 32);

            goto LABEL_29;
          }

          __break(1u);
          goto LABEL_46;
        }
      }

      else
      {
        v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_26;
        }
      }

      v37 = *(v0 + 2024) + 1;
    }

    while (v37 != *(v0 + 2016));
  }

  v45 = *(v0 + 2000);
  if (*(v36 + 16))
  {
    v46 = *(v0 + 1904);
    v47 = *(v0 + 1180);
    v48 = *(v0 + 1752);
    v49 = (v48 + *(v46 + 20));
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[3];
    *(v0 + 848) = v49[2];
    *(v0 + 864) = v52;
    *(v0 + 816) = v50;
    *(v0 + 832) = v51;
    v53 = v49[4];
    v54 = v49[5];
    v55 = v49[7];
    *(v0 + 912) = v49[6];
    *(v0 + 928) = v55;
    *(v0 + 880) = v53;
    *(v0 + 896) = v54;
    v56 = v49[8];
    v57 = v49[9];
    v58 = v49[10];
    *(v0 + 991) = *(v49 + 175);
    *(v0 + 960) = v57;
    *(v0 + 976) = v58;
    *(v0 + 944) = v56;
    v59 = *(v0 + 816);
    v60 = *(v0 + 824);
    v90 = v49[1];
    v91 = v49[2];
    v98 = *(v49 + 145);
    v99 = *(v49 + 161);
    v100 = *(v49 + 177);
    v94 = *(v49 + 81);
    v95 = *(v49 + 97);
    v96 = *(v49 + 113);
    v97 = *(v49 + 129);
    v92 = *(v49 + 49);
    v93 = *(v49 + 65);
    strcpy((v0 + 632), "builtin:editor");
    *(v0 + 647) = -18;
    v61 = v49[2];
    *(v0 + 648) = v49[1];
    *(v0 + 664) = v61;
    *(v0 + 680) = 0;
    *(v0 + 681) = *(v49 + 49);
    v62 = *(v49 + 65);
    v63 = *(v49 + 81);
    v64 = *(v49 + 113);
    *(v0 + 729) = *(v49 + 97);
    *(v0 + 745) = v64;
    *(v0 + 697) = v62;
    *(v0 + 713) = v63;
    v65 = *(v49 + 177);
    v66 = *(v49 + 129);
    v67 = *(v49 + 161);
    *(v0 + 777) = *(v49 + 145);
    *(v0 + 793) = v67;
    *(v0 + 761) = v66;
    *(v0 + 809) = v65;
    v68 = *(v48 + *(v46 + 32));
    v69 = *(v0 + 776);
    *(v0 + 160) = *(v0 + 760);
    *(v0 + 176) = v69;
    *(v0 + 192) = *(v0 + 792);
    *(v0 + 207) = *(v0 + 807);
    v70 = *(v0 + 712);
    *(v0 + 96) = *(v0 + 696);
    *(v0 + 112) = v70;
    v71 = *(v0 + 744);
    *(v0 + 128) = *(v0 + 728);
    *(v0 + 144) = v71;
    v72 = *(v0 + 648);
    *(v0 + 32) = *(v0 + 632);
    *(v0 + 48) = v72;
    v73 = *(v0 + 680);
    *(v0 + 64) = *(v0 + 664);
    *(v0 + 80) = v73;
    *(v0 + 16) = v59;
    *(v0 + 24) = v60;
    *(v0 + 211) = v47;
    *(v0 + 212) = HIBYTE(v47) & 1;
    *(v0 + 216) = v68;
    *(v0 + 224) = v36;
    nullsub_1();
    v74 = *(v0 + 192);
    v101[10] = *(v0 + 176);
    v101[11] = v74;
    v101[12] = *(v0 + 208);
    v102 = *(v0 + 224);
    v75 = *(v0 + 128);
    v101[6] = *(v0 + 112);
    v101[7] = v75;
    v76 = *(v0 + 160);
    v101[8] = *(v0 + 144);
    v101[9] = v76;
    v77 = *(v0 + 64);
    v101[2] = *(v0 + 48);
    v101[3] = v77;
    v78 = *(v0 + 96);
    v101[4] = *(v0 + 80);
    v101[5] = v78;
    v79 = *(v0 + 32);
    v101[0] = *(v0 + 16);
    v101[1] = v79;
    sub_1D5ECF1C0(v0 + 816, v0 + 1000);
    sub_1D5ECF1C0(v0 + 632, v0 + 1184);

    sub_1D6AA103C(v101);
    v80 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v80;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v81 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v81;
    v82 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v82;
    v83 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v83;
    v84 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v84;
    v85 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v85;

    sub_1D725B32C();

    sub_1D6AA1610();

    strcpy((v0 + 448), "builtin:editor");
    *(v0 + 463) = -18;
    *(v0 + 464) = v90;
    *(v0 + 480) = v91;
    *(v0 + 496) = 0;
    *(v0 + 593) = v98;
    *(v0 + 609) = v99;
    *(v0 + 625) = v100;
    *(v0 + 529) = v94;
    *(v0 + 545) = v95;
    *(v0 + 561) = v96;
    *(v0 + 577) = v97;
    *(v0 + 497) = v92;
    *(v0 + 513) = v93;
    sub_1D5ECF21C(v0 + 448);
  }

  else
  {
  }

  v86 = *(v0 + 1896);
  v87 = *(v0 + 1888);
  v88 = *(v0 + 1880);
  (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
  (*(v87 + 8))(v86, v88);

  v89 = *(v0 + 8);

  v89();
}

uint64_t sub_1D60CD66C()
{
  v105 = v0;
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1800);

  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v4 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v3, v2 + v4);
  swift_endAccess();
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1952);

  if (v5 != v6)
  {
    v7 = *(v0 + 1968);
LABEL_10:
    v16 = *(v0 + 1944);
    if ((v16 & 0xC000000000000001) != 0)
    {
LABEL_40:
      v17 = MEMORY[0x1DA6FB460](v7);
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v17 = *(v16 + 8 * v7 + 32);
    }

    *(v0 + 1960) = v17;
    *(v0 + 1968) = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v18 = *(v0 + 1920);
      v19 = *(v0 + 1848);
      v20 = *(v18 + 24);
      v21 = swift_task_alloc();
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v18;
      os_unfair_lock_lock((v20 + 24));
      sub_1D60CEB68((v20 + 16), (v0 + 1720));
      os_unfair_lock_unlock((v20 + 24));
      v22 = *(v0 + 1720);
      *(v0 + 1976) = v22;

      v23 = swift_task_alloc();
      *(v0 + 1984) = v23;
      v24 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
      *v23 = v0;
      v23[1] = sub_1D60CCBB4;
      v25 = *(v0 + 1816);
      v26 = *(v0 + 1808);
      v27 = MEMORY[0x1E69E7288];
      v28 = v22;
      goto LABEL_29;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v42 = MEMORY[0x1DA6FB460](0, v7);
LABEL_28:
    *(v0 + 2040) = v42;

    *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
    sub_1D725B77C();
    v43 = *(v0 + 1728);
    *(v0 + 2056) = v43;
    v44 = swift_task_alloc();
    *(v0 + 2064) = v44;
    v45 = type metadata accessor for DebugFormatBindingResult(0);
    v24 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    *v44 = v0;
    v44[1] = sub_1D60CDFF8;
    v27 = MEMORY[0x1E69E7288];
    v25 = v0 + 1736;
    v28 = v43;
    v26 = v45;
LABEL_29:

    return MEMORY[0x1EEE6DA10](v25, v28, v26, v24, v27);
  }

  while (1)
  {
    v7 = *(v0 + 1928);
    v8 = *(v0 + 1936) + 1;
    sub_1D60CBC50(*(v0 + 1848), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v8 == v7)
    {
      break;
    }

    v9 = *(v0 + 1936) + 1;
    *(v0 + 1936) = v9;
    v10 = *(v0 + 1912);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v11 = *(v0 + 1848);
    v12 = *(v0 + 1824);
    sub_1D60CBBE8(v10 + ((*(v0 + 628) + 32) & ~*(v0 + 628)) + *(*(v0 + 1832) + 72) * v9, v11, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v13 = *(v11 + *(v12 + 40));
    *(v0 + 1944) = v13;
    if (v13 >> 62)
    {
      v15 = sub_1D7263BFC();
      *(v0 + 1952) = v15;
      if (v15)
      {
LABEL_8:
        v7 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1952) = v14;
      if (v14)
      {
        goto LABEL_8;
      }
    }
  }

  v29 = *(v0 + 1744);
  v30 = type metadata accessor for DebugFormatWorkspaceCanvasSorter();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem] = 0;
  *&v31[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter_editor] = v29;
  *(v0 + 1704) = v31;
  *(v0 + 1712) = v30;

  v32 = objc_msgSendSuper2((v0 + 1704), sel_init);
  *(v0 + 2000) = v32;

  sub_1D725972C();

  v7 = *(v0 + 1912);
  if (*(v0 + 627) == 1)
  {
    v33 = v32;
    v34 = sub_1D60CAD44(v7, v33, v103);

    v7 = v34;
  }

  *(v0 + 2008) = v7;
  v35 = *(v7 + 16);
  *(v0 + 2016) = v35;
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = 0;
    v38 = *(v0 + 1832);
    *(v0 + 812) = *(*(v0 + 1824) + 40);
    *(v0 + 996) = *(v38 + 80);
    do
    {
      *(v0 + 2032) = v36;
      *(v0 + 2024) = v37;
      v39 = *(v0 + 2008);
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_39;
      }

      v40 = *(v0 + 812);
      v41 = *(v0 + 1840);
      sub_1D60CBBE8(v39 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v37, v41, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      v7 = *(v41 + v40);

      sub_1D60CBC50(v41, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      if (v7 >> 62)
      {
        v25 = sub_1D7263BFC();
        if (v25)
        {
LABEL_25:
          if ((v7 & 0xC000000000000001) != 0)
          {
            goto LABEL_43;
          }

          if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v42 = *(v7 + 32);

            goto LABEL_28;
          }

          __break(1u);
          return MEMORY[0x1EEE6DA10](v25, v28, v26, v24, v27);
        }
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_25;
        }
      }

      v37 = *(v0 + 2024) + 1;
    }

    while (v37 != *(v0 + 2016));
  }

  v46 = *(v0 + 2000);
  if (*(v36 + 16))
  {
    v47 = *(v0 + 1904);
    v48 = *(v0 + 1180);
    v49 = *(v0 + 1752);
    v50 = (v49 + *(v47 + 20));
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[3];
    *(v0 + 848) = v50[2];
    *(v0 + 864) = v53;
    *(v0 + 816) = v51;
    *(v0 + 832) = v52;
    v54 = v50[4];
    v55 = v50[5];
    v56 = v50[7];
    *(v0 + 912) = v50[6];
    *(v0 + 928) = v56;
    *(v0 + 880) = v54;
    *(v0 + 896) = v55;
    v57 = v50[8];
    v58 = v50[9];
    v59 = v50[10];
    *(v0 + 991) = *(v50 + 175);
    *(v0 + 960) = v58;
    *(v0 + 976) = v59;
    *(v0 + 944) = v57;
    v60 = *(v0 + 816);
    v61 = *(v0 + 824);
    v92 = v50[1];
    v93 = v50[2];
    v100 = *(v50 + 145);
    v101 = *(v50 + 161);
    v102 = *(v50 + 177);
    v96 = *(v50 + 81);
    v97 = *(v50 + 97);
    v98 = *(v50 + 113);
    v99 = *(v50 + 129);
    v94 = *(v50 + 49);
    v95 = *(v50 + 65);
    strcpy((v0 + 632), "builtin:editor");
    *(v0 + 647) = -18;
    v62 = v50[2];
    *(v0 + 648) = v50[1];
    *(v0 + 664) = v62;
    *(v0 + 680) = 0;
    *(v0 + 681) = *(v50 + 49);
    v63 = *(v50 + 65);
    v64 = *(v50 + 81);
    v65 = *(v50 + 113);
    *(v0 + 729) = *(v50 + 97);
    *(v0 + 745) = v65;
    *(v0 + 697) = v63;
    *(v0 + 713) = v64;
    v66 = *(v50 + 177);
    v67 = *(v50 + 129);
    v68 = *(v50 + 161);
    *(v0 + 777) = *(v50 + 145);
    *(v0 + 793) = v68;
    *(v0 + 761) = v67;
    *(v0 + 809) = v66;
    v69 = *(v49 + *(v47 + 32));
    v70 = *(v0 + 776);
    *(v0 + 160) = *(v0 + 760);
    *(v0 + 176) = v70;
    *(v0 + 192) = *(v0 + 792);
    *(v0 + 207) = *(v0 + 807);
    v71 = *(v0 + 712);
    *(v0 + 96) = *(v0 + 696);
    *(v0 + 112) = v71;
    v72 = *(v0 + 744);
    *(v0 + 128) = *(v0 + 728);
    *(v0 + 144) = v72;
    v73 = *(v0 + 648);
    *(v0 + 32) = *(v0 + 632);
    *(v0 + 48) = v73;
    v74 = *(v0 + 680);
    *(v0 + 64) = *(v0 + 664);
    *(v0 + 80) = v74;
    *(v0 + 16) = v60;
    *(v0 + 24) = v61;
    *(v0 + 211) = v48;
    *(v0 + 212) = HIBYTE(v48) & 1;
    *(v0 + 216) = v69;
    *(v0 + 224) = v36;
    nullsub_1();
    v75 = *(v0 + 192);
    v103[10] = *(v0 + 176);
    v103[11] = v75;
    v103[12] = *(v0 + 208);
    v104 = *(v0 + 224);
    v76 = *(v0 + 128);
    v103[6] = *(v0 + 112);
    v103[7] = v76;
    v77 = *(v0 + 160);
    v103[8] = *(v0 + 144);
    v103[9] = v77;
    v78 = *(v0 + 64);
    v103[2] = *(v0 + 48);
    v103[3] = v78;
    v79 = *(v0 + 96);
    v103[4] = *(v0 + 80);
    v103[5] = v79;
    v80 = *(v0 + 32);
    v103[0] = *(v0 + 16);
    v103[1] = v80;
    sub_1D5ECF1C0(v0 + 816, v0 + 1000);
    sub_1D5ECF1C0(v0 + 632, v0 + 1184);

    sub_1D6AA103C(v103);
    v81 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v81;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v82 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v82;
    v83 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v83;
    v84 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v84;
    v85 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v85;
    v86 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v86;

    sub_1D725B32C();

    sub_1D6AA1610();

    strcpy((v0 + 448), "builtin:editor");
    *(v0 + 463) = -18;
    *(v0 + 464) = v92;
    *(v0 + 480) = v93;
    *(v0 + 496) = 0;
    *(v0 + 593) = v100;
    *(v0 + 609) = v101;
    *(v0 + 625) = v102;
    *(v0 + 529) = v96;
    *(v0 + 545) = v97;
    *(v0 + 561) = v98;
    *(v0 + 577) = v99;
    *(v0 + 497) = v94;
    *(v0 + 513) = v95;
    sub_1D5ECF21C(v0 + 448);
  }

  else
  {
  }

  v87 = *(v0 + 1896);
  v88 = *(v0 + 1888);
  v89 = *(v0 + 1880);
  (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
  (*(v88 + 8))(v87, v89);

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_1D60CDFF8()
{
  *(*v1 + 2072) = v0;

  if (v0)
  {

    v2 = sub_1D60CE894;
  }

  else
  {

    v2 = sub_1D60CE13C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60CE13C()
{
  v99 = v0;
  v1 = *(v0 + 2040);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1768);
  v4 = v1 + *(v0 + 2048);
  v5 = *(v0 + 1736);
  sub_1D60CBBE8(v1 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group, v2, type metadata accessor for FormatWorkspaceGroup);
  v6 = *(v4 + 16);
  v7 = *(v4 + 152);
  v8 = *(v4 + 136);
  v9 = *(v4 + 120);
  *(v0 + 1448) = *(v4 + 104);
  *(v0 + 1464) = v9;
  *(v0 + 1480) = v8;
  *(v0 + 1496) = v7;
  v10 = *(v4 + 88);
  v11 = *(v4 + 72);
  v12 = *(v4 + 56);
  *(v0 + 1384) = *(v4 + 40);
  *(v0 + 1400) = v12;
  *(v0 + 1416) = v11;
  *(v0 + 1432) = v10;
  *(v0 + 1368) = *(v4 + 24);
  *(v2 + v3[5]) = v5;
  *(v2 + v3[6]) = v6;
  v13 = (v2 + v3[7]);
  *v13 = *(v0 + 1368);
  v14 = *(v0 + 1448);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1496);
  v13[7] = *(v0 + 1480);
  v13[8] = v16;
  v13[5] = v14;
  v13[6] = v15;
  v17 = *(v0 + 1384);
  v18 = *(v0 + 1400);
  v19 = *(v0 + 1432);
  v13[3] = *(v0 + 1416);
  v13[4] = v19;
  v13[1] = v17;
  v13[2] = v18;

  sub_1D5D65D5C(v0 + 1368, v0 + 1512);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + 2032);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    v21 = sub_1D699164C(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D699164C((v22 > 1), v23 + 1, 1, v21);
  }

  v24 = *(v0 + 1784);
  v25 = *(v0 + 1776);

  v21[2] = v23 + 1;
  sub_1D60CBDE4(v24, v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  while (1)
  {
    v26 = *(v0 + 2024) + 1;
    if (v26 == *(v0 + 2016))
    {
      break;
    }

    *(v0 + 2032) = v21;
    *(v0 + 2024) = v26;
    v27 = *(v0 + 2008);
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v28 = *(v0 + 812);
    v29 = *(v0 + 1840);
    sub_1D60CBBE8(v27 + ((*(v0 + 996) + 32) & ~*(v0 + 996)) + *(*(v0 + 1832) + 72) * v26, v29, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v30 = *(v29 + v28);

    sub_1D60CBC50(v29, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v30 >> 62)
    {
      v35 = sub_1D7263BFC();
      if (v35)
      {
LABEL_11:
        if ((v30 & 0xC000000000000001) == 0)
        {
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v36 = *(v30 + 32);

LABEL_14:
            *(v0 + 2040) = v36;

            *(v0 + 2048) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
            sub_1D725B77C();
            v37 = *(v0 + 1728);
            *(v0 + 2056) = v37;
            v38 = swift_task_alloc();
            *(v0 + 2064) = v38;
            v39 = type metadata accessor for DebugFormatBindingResult(0);
            v33 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
            *v38 = v0;
            v38[1] = sub_1D60CDFF8;
            v34 = MEMORY[0x1E69E7288];
            v35 = v0 + 1736;
            v31 = v37;
            v32 = v39;
          }

          else
          {
            __break(1u);
          }

          return MEMORY[0x1EEE6DA10](v35, v31, v32, v33, v34);
        }

        v36 = MEMORY[0x1DA6FB460](0, v30);
        goto LABEL_14;
      }
    }

    else
    {
      v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_11;
      }
    }
  }

  v40 = *(v0 + 2000);
  if (v21[2])
  {
    v41 = *(v0 + 1904);
    v42 = *(v0 + 1180);
    v43 = *(v0 + 1752);
    v44 = (v43 + *(v41 + 20));
    v45 = *v44;
    v46 = v44[1];
    v47 = v44[3];
    *(v0 + 848) = v44[2];
    *(v0 + 864) = v47;
    *(v0 + 816) = v45;
    *(v0 + 832) = v46;
    v48 = v44[4];
    v49 = v44[5];
    v50 = v44[7];
    *(v0 + 912) = v44[6];
    *(v0 + 928) = v50;
    *(v0 + 880) = v48;
    *(v0 + 896) = v49;
    v51 = v44[8];
    v52 = v44[9];
    v53 = v44[10];
    *(v0 + 991) = *(v44 + 175);
    *(v0 + 960) = v52;
    *(v0 + 976) = v53;
    *(v0 + 944) = v51;
    v54 = *(v0 + 816);
    v55 = *(v0 + 824);
    v86 = v44[1];
    v87 = v44[2];
    v94 = *(v44 + 145);
    v95 = *(v44 + 161);
    v96 = *(v44 + 177);
    v90 = *(v44 + 81);
    v91 = *(v44 + 97);
    v92 = *(v44 + 113);
    v93 = *(v44 + 129);
    v88 = *(v44 + 49);
    v89 = *(v44 + 65);
    strcpy((v0 + 632), "builtin:editor");
    *(v0 + 647) = -18;
    v56 = v44[2];
    *(v0 + 648) = v44[1];
    *(v0 + 664) = v56;
    *(v0 + 680) = 0;
    *(v0 + 681) = *(v44 + 49);
    v57 = *(v44 + 65);
    v58 = *(v44 + 81);
    v59 = *(v44 + 113);
    *(v0 + 729) = *(v44 + 97);
    *(v0 + 745) = v59;
    *(v0 + 697) = v57;
    *(v0 + 713) = v58;
    v60 = *(v44 + 177);
    v61 = *(v44 + 129);
    v62 = *(v44 + 161);
    *(v0 + 777) = *(v44 + 145);
    *(v0 + 793) = v62;
    *(v0 + 761) = v61;
    *(v0 + 809) = v60;
    v63 = *(v43 + *(v41 + 32));
    v64 = *(v0 + 776);
    *(v0 + 160) = *(v0 + 760);
    *(v0 + 176) = v64;
    *(v0 + 192) = *(v0 + 792);
    *(v0 + 207) = *(v0 + 807);
    v65 = *(v0 + 712);
    *(v0 + 96) = *(v0 + 696);
    *(v0 + 112) = v65;
    v66 = *(v0 + 744);
    *(v0 + 128) = *(v0 + 728);
    *(v0 + 144) = v66;
    v67 = *(v0 + 648);
    *(v0 + 32) = *(v0 + 632);
    *(v0 + 48) = v67;
    v68 = *(v0 + 680);
    *(v0 + 64) = *(v0 + 664);
    *(v0 + 80) = v68;
    *(v0 + 16) = v54;
    *(v0 + 24) = v55;
    *(v0 + 211) = v42;
    *(v0 + 212) = HIBYTE(v42) & 1;
    *(v0 + 216) = v63;
    *(v0 + 224) = v21;
    nullsub_1();
    v69 = *(v0 + 192);
    v97[10] = *(v0 + 176);
    v97[11] = v69;
    v97[12] = *(v0 + 208);
    v98 = *(v0 + 224);
    v70 = *(v0 + 128);
    v97[6] = *(v0 + 112);
    v97[7] = v70;
    v71 = *(v0 + 160);
    v97[8] = *(v0 + 144);
    v97[9] = v71;
    v72 = *(v0 + 64);
    v97[2] = *(v0 + 48);
    v97[3] = v72;
    v73 = *(v0 + 96);
    v97[4] = *(v0 + 80);
    v97[5] = v73;
    v74 = *(v0 + 32);
    v97[0] = *(v0 + 16);
    v97[1] = v74;
    sub_1D5ECF1C0(v0 + 816, v0 + 1000);
    sub_1D5ECF1C0(v0 + 632, v0 + 1184);

    sub_1D6AA103C(v97);
    v75 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v75;
    *(v0 + 424) = *(v0 + 208);
    *(v0 + 440) = *(v0 + 224);
    v76 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v76;
    v77 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v77;
    v78 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v78;
    v79 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v79;
    v80 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 248) = v80;

    sub_1D725B32C();

    sub_1D6AA1610();

    strcpy((v0 + 448), "builtin:editor");
    *(v0 + 463) = -18;
    *(v0 + 464) = v86;
    *(v0 + 480) = v87;
    *(v0 + 496) = 0;
    *(v0 + 593) = v94;
    *(v0 + 609) = v95;
    *(v0 + 625) = v96;
    *(v0 + 529) = v90;
    *(v0 + 545) = v91;
    *(v0 + 561) = v92;
    *(v0 + 577) = v93;
    *(v0 + 497) = v88;
    *(v0 + 513) = v89;
    sub_1D5ECF21C(v0 + 448);
  }

  else
  {
  }

  v81 = *(v0 + 1896);
  v82 = *(v0 + 1888);
  v83 = *(v0 + 1880);
  (*(*(v0 + 1864) + 8))(*(v0 + 1872), *(v0 + 1856));
  (*(v82 + 8))(v81, v83);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_1D60CE894()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1864);
  v6 = *(v0 + 1856);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D60CE9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D60C7658(a1, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

void sub_1D60CEA08(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D60CEA7C(255, a3, a4, a5);
    type metadata accessor for os_unfair_lock_s(255);
    v6 = sub_1D7263E4C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60CEA7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D60CEAE4(255, a3, a4);
    v5 = sub_1D7261E1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D60CEAE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v4 = sub_1D726297C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D60CEB88(uint64_t a1, uint64_t a2)
{
  sub_1D5B54578(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60CEC3C@<X0>(__int128 *a1@<X0>, uint64_t *x8_0@<X8>)
{
  if (*(v3 + 33))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1D676A4EC(a1, *(v3 + 16), *(v3 + 24), v4 | *(v3 + 32), x8_0);
}

unint64_t sub_1D60CEC74()
{
  result = qword_1EC883510;
  if (!qword_1EC883510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883510);
  }

  return result;
}

unint64_t sub_1D60CED2C()
{
  result = qword_1EC883528;
  if (!qword_1EC883528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883528);
  }

  return result;
}

unint64_t sub_1D60CED80()
{
  result = qword_1EC883530;
  if (!qword_1EC883530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883530);
  }

  return result;
}

void sub_1D60CEDD4(uint64_t a1)
{
  if (!qword_1EC883540)
  {
    v2 = sub_1D60CEE3C();
    v3 = sub_1D60CEE90();
    v4 = type metadata accessor for FormatCodingEmptyArrayStrategy(a1, &type metadata for FormatWorkspacePackage, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC883540);
    }
  }
}

unint64_t sub_1D60CEE3C()
{
  result = qword_1EC883548;
  if (!qword_1EC883548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883548);
  }

  return result;
}

unint64_t sub_1D60CEE90()
{
  result = qword_1EC883550;
  if (!qword_1EC883550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883550);
  }

  return result;
}

uint64_t sub_1D60CEF6C(uint64_t a1)
{
  sub_1D60CF55C(0, &qword_1EC883538, sub_1D60CEDD4, sub_1D60CEEE4, type metadata accessor for FormatCodingDefault);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60CF00C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FormatWorkspaceGroup(0) - 8);
  v4 = (*(v3 + 80) + 211) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D60C7B38(v1 + 32, v1 + v4, v5, a1);
}

void sub_1D60CF0B0(uint64_t a1)
{
  if (!qword_1EC883560)
  {
    sub_1D60CEAE4(255, &qword_1EC883568, type metadata accessor for DebugFormatBindingResult);
    v1 = sub_1D725B7BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883560);
    }
  }
}

uint64_t sub_1D60CF144(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FormatWorkspaceGroup(0) - 8);
  v6 = (*(v5 + 80) + 227) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D5B64680;

  return sub_1D60C7E4C(a1, v7, v8, v9, v10, (v1 + 6), v1 + v6, v11);
}

void sub_1D60CF280(uint64_t a1)
{
  if (!qword_1EDF33878)
  {
    sub_1D5C5DC9C(255, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF33878);
    }
  }
}

void sub_1D60CF310(uint64_t a1)
{
  if (!qword_1EC883578)
  {
    type metadata accessor for FormatWorkspaceGroup(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883578);
    }
  }
}

double sub_1D60CF378(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1D60CF3A0(uint64_t a1)
{
  if (!qword_1EC883580)
  {
    type metadata accessor for DebugGroupLayoutKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883580);
    }
  }
}

uint64_t sub_1D60CF454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatWorkspaceGroup(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60CF4D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  sub_1D60CF55C(0, a3, a4, a5, type metadata accessor for FormatCodingDefault);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D60CF55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D60CF610@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D60C6BB4(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1D60CF648@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D60C6DD8(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), a2);
}

double sub_1D60CF684(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return sub_1D60CF6DC(result, a2);
  }

  if (a3 == 1)
  {
    return sub_1D60CF6A8(result, a2, BYTE1(a2) & 1);
  }

  return v3;
}

double sub_1D60CF6A8(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    sub_1D60CF6B4(a1, a2);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D60CF6B4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1D60CF6C8(a1, a2);
  }

  return a1;
}

unint64_t sub_1D60CF6C8(unint64_t result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return sub_1D5C08648(result);
  }

  return result;
}

double sub_1D60CF6DC(uint64_t a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1D60CF6A8(a1, a2, BYTE1(a2) & 1);
  }

  return result;
}

void sub_1D60CF6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 == 2)
    {

      goto LABEL_5;
    }
  }

  else
  {
    if (!(a7 >> 6))
    {

LABEL_5:

      return;
    }

    sub_1D5E32940(a3, a4, a5, a6, a7 & 1);
  }
}

void sub_1D60CF7A4(uint64_t a1)
{
  if (!qword_1EC8857E0)
  {
    v2 = type metadata accessor for FormatFile(255);
    v3 = sub_1D5B737E8(&qword_1EDF34750, type metadata accessor for FormatFile, &protocol conformance descriptor for FormatFile);
    v4 = sub_1D5B737E8(&qword_1EC8857F0, type metadata accessor for FormatFile, &protocol conformance descriptor for FormatFile);
    v5 = type metadata accessor for DebugFormatServiceResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC8857E0);
    }
  }
}

double sub_1D60CF870(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for DebugFormatEditorLayoutContext(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  if (*(v1 + v5 + 1))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v1 + ((v5 + *(v6 + 80) + 2) & ~*(v6 + 80));

  return sub_1D60C728C(a1, v7, v8, v1 + v4, v10 | v9, v11);
}

uint64_t sub_1D60CF968(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(type metadata accessor for DebugFormatEditorLayoutContext(0) - 8);
  v8 = (v6 + *(v7 + 80) + 2) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1 + v6;
  v14 = *(v1 + v6);
  if (v13[1])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D5B64684;

  return sub_1D60C758C(a1, v9, v10, v11, v12, v1 + v5, v15 | v14, v1 + v8);
}

unint64_t sub_1D60CFB0C()
{
  result = qword_1EC8835A0;
  if (!qword_1EC8835A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8835A0);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D60CFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, unint64_t, void, void))
{
  v11 = *(sub_1D72585BC() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a5(a1, a2, a3, a4, *(v5 + 16), *(v5 + 24), v5 + v12, *v13, v13[1]);
}

unint64_t sub_1D60CFD28()
{
  result = qword_1EC8835A8;
  if (!qword_1EC8835A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8835A8);
  }

  return result;
}

void sub_1D60CFD84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_1D60CFDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
  v10 = sub_1D7257A4C();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  if (a3)
  {
    v11 = sub_1D726203C();
  }

  else
  {
    v11 = 0;
  }

  v45.receiver = v3;
  v45.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v45, sel_initWithStyle_reuseIdentifier_, a1, v11);

  v13 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField;
  v14 = *&v12[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField];
  v15 = v12;
  [v14 setDelegate_];
  [*&v12[v13] setTextAlignment_];
  [*&v12[v13] setClearButtonMode_];
  [*&v12[v13] setBorderStyle_];
  [*&v12[v13] setAutocorrectionType_];
  [*&v12[v13] setAutocapitalizationType_];
  v16 = *&v12[v13];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBlueColor];
  [v18 setTintColor_];

  [*&v12[v13] addTarget:v15 action:sel_onTextChange forControlEvents:0x20000];
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = *&v12[v13];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemFontOfSize_];
  [v22 setFont_];

  v24 = [v15 contentView];
  [v24 addSubview_];

  v25 = objc_opt_self();
  sub_1D5E42B34();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7298B00;
  v27 = [*&v12[v13] topAnchor];
  v28 = [v15 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:8.0];
  *(v26 + 32) = v30;
  v31 = [*&v12[v13] leadingAnchor];
  v32 = [v15 contentView];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:16.0];
  *(v26 + 40) = v34;
  v35 = [*&v12[v13] trailingAnchor];
  v36 = [v15 contentView];
  v37 = [v36 trailingAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:-16.0];
  *(v26 + 48) = v38;
  v39 = [*&v12[v13] bottomAnchor];
  v40 = [v15 contentView];

  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor:v41 constant:-8.0];

  *(v26 + 56) = v42;
  sub_1D60D0DF4();
  v43 = sub_1D726265C();

  [v25 activateConstraints_];

  return v15;
}

uint64_t sub_1D60D045C()
{
  ObjectType = swift_getObjectType();
  sub_1D60D0A50(0);
  *&v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_prepareForReuse, v4);
  [*&v0[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField] setText_];
  v7 = &v0[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
  v8 = *&v0[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange];
  v9 = *&v0[OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange + 8];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_1D5B74328(v8, v9);
  v10 = sub_1D7257A4C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
  swift_beginAccess();
  sub_1D60D0D90(v6, &v0[v11]);
  return swift_endAccess();
}

double sub_1D60D05D8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_textField) text];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1D726207C();
    v6 = v5;

    v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange);
    if (v7)
    {
      v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_onChange + 8);

      v7(v4, v6);
      sub_1D5B74328(v7, v8);
    }
  }

  return result;
}

uint64_t sub_1D60D06DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_1D7263D3C();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_1D7263E5C();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t type metadata accessor for DebugFormatCreatePackageTableViewCell(uint64_t a1)
{
  result = qword_1EC883628;
  if (!qword_1EC883628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60D09A8(uint64_t a1)
{
  sub_1D60D0A50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D60D0A50(uint64_t a1)
{
  if (!qword_1EDF3C480)
  {
    sub_1D7257A4C();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3C480);
    }
  }
}

uint64_t sub_1D60D0AA8(uint64_t a1, unint64_t a2)
{
  sub_1D60D0A50(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7257A4C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8NewsFeed37DebugFormatCreatePackageTableViewCell_disallowedCharacterSet;
  swift_beginAccess();
  sub_1D60D0C98(v2 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D60D0CFC(v8);
    v15 = 1;
  }

  else
  {
    v16 = (*(v10 + 32))(v13, v8, v9);
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v19 - 2) = v13;
    v15 = sub_1D60D06DC(sub_1D60D0D58, (&v19 - 4), a1, a2);
    (*(v10 + 8))(v13, v9);
  }

  return v15 & 1;
}

uint64_t sub_1D60D0C98(uint64_t a1, uint64_t a2)
{
  sub_1D60D0A50(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60D0CFC(uint64_t a1)
{
  sub_1D60D0A50(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60D0D90(uint64_t a1, uint64_t a2)
{
  sub_1D60D0A50(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D60D0DF4()
{
  result = qword_1EC87FF48;
  if (!qword_1EC87FF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC87FF48);
  }

  return result;
}

char *sub_1D60D0E40(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v7 = &v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleInsets];
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  *(v7 + 1) = _Q0;
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleTipSize] = 0x4018000000000000;
  v13 = *a1;
  v55 = a1[1];
  v14 = v55;
  v56 = v13;
  v15 = a1[4];
  v54 = a1[3];
  v16 = &v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_metric];
  v17 = *(a1 + 1);
  *v16 = *a1;
  *(v16 + 1) = v17;
  *(v16 + 4) = v15;
  sub_1D60D1804(&v56, v53, sub_1D5B81B04);
  sub_1D60D1804(&v55, v53, sub_1D60D186C);
  sub_1D60D1804(&v54, v53, sub_1D60D186C);
  v52.receiver = v2;
  v52.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (v14 >> 62)
  {
    v19 = sub_1D7263BFC();
  }

  else
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v54;
  v21 = v54 >> 62;
  if (v54 >> 62)
  {
    v22 = sub_1D7263BFC();
  }

  else
  {
    v22 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    v23 = objc_opt_self();
    v24 = v18;
    if (v22)
    {
      v25 = &selRef_systemBlueColor;
    }

    else
    {
      v25 = &selRef_systemOrangeColor;
    }
  }

  else
  {
    v23 = objc_opt_self();
    v26 = v18;
    v25 = &selRef_systemGray2Color;
  }

  v27 = [v23 *v25];
  [v18 setBackgroundColor_];

  v28 = [v18 layer];
  [v28 setCornerRadius_];

  v29 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label;
  v30 = *(v18 + OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label);
  v31 = objc_opt_self();
  v32 = *MEMORY[0x1E69DB980];
  v33 = v30;
  v34 = [v31 monospacedSystemFontOfSize:10.0 weight:v32];
  [v33 setFont_];

  v35 = *(v18 + v29);
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 whiteColor];
  [v37 setTextColor_];

  [*(v18 + v29) setNumberOfLines_];
  v39 = *(v18 + v29);
  sub_1D6BECEC0();
  v40 = sub_1D726203C();

  [v39 setText_];

  [v18 addSubview_];
  v41 = OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer;
  v42 = *(v18 + OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer);
  if (v14 >> 62)
  {
    v43 = sub_1D7263BFC();
  }

  else
  {
    v43 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v44 = sub_1D7263BFC();
  }

  else
  {
    v44 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43)
  {
    v45 = v42;
    if (v44)
    {
      v46 = &selRef_systemBlueColor;
    }

    else
    {
      v46 = &selRef_systemOrangeColor;
    }
  }

  else
  {
    v47 = v42;
    v46 = &selRef_systemGray2Color;
  }

  v48 = [v36 *v46];
  sub_1D60D18C4(&v56, sub_1D5B81B04);
  sub_1D60D18C4(&v55, sub_1D60D186C);
  sub_1D60D18C4(&v54, sub_1D60D186C);
  v49 = [v48 CGColor];

  [v42 setFillColor_];
  [*(v18 + v41) setPosition_];
  v50 = [v18 layer];

  [v50 addSublayer_];
  return v18;
}

void sub_1D60D144C()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_label];
  [v0 bounds];
  [v1 setFrame_];
  [v0 bounds];
  CGRectGetWidth(v19);
  [v0 bounds];
  CGRectGetHeight(v20);
  sub_1D726350C();
  v4 = v3;
  v6 = v5;
  sub_1D726350C();
  v8 = v7;
  v10 = v9;
  sub_1D726351C();
  v12 = v11;
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v15 moveToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 closePath];
  v16 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatDebuggerSourceMetricView_bubbleLayer];
  v17 = [v15 CGPath];
  [v16 setPath_];
}

uint64_t sub_1D60D1804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D60D186C(uint64_t a1)
{
  if (!qword_1EC883660)
  {
    type metadata accessor for FormatNodeDebugRecord();
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883660);
    }
  }
}

uint64_t sub_1D60D18C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::FeedTopicHeadlineClusteringResult __swiftcall FeedTopicHeadlineClusteringResult.init(clusters:orphanedHeadlines:)(Swift::OpaquePointer clusters, Swift::OpaquePointer orphanedHeadlines)
{
  v2->_rawValue = clusters._rawValue;
  v2[1]._rawValue = orphanedHeadlines._rawValue;
  result.orphanedHeadlines = orphanedHeadlines;
  result.clusters = clusters;
  return result;
}

void static FeedTopicHeadlineClusteringResult.empty.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

void FeedTopicHeadlineClusteringResult.scoredHeadlines.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
LABEL_19:

    sub_1D6986E58(v15);
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698FB64(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void static FeedTopicHeadlineClusteringResult.- infix(_:_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = *a1;
  v62 = *(a1 + 8);
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v75 = MEMORY[0x1E69E7CC0];

      sub_1D5BFC364(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v72 = v4;
      v7 = 0;
      v8 = v75;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6FB460](v7, v3);
        }

        else
        {
          v9 = *(v3 + 8 * v7 + 32);
          swift_unknownObjectRetain();
        }

        v10 = [v9 identifier];
        v11 = sub_1D726207C();
        v13 = v12;
        swift_unknownObjectRelease();

        v15 = *(v75 + 16);
        v14 = *(v75 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D5BFC364((v14 > 1), v15 + 1, 1);
        }

        ++v7;
        *(v75 + 16) = v15 + 1;
        v16 = v75 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (i != v7);
      v6 = MEMORY[0x1E69E7CC0];
      v4 = v72;
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v3 = sub_1D5B86020(v8);

    v17 = v4[2];
    if (v17)
    {

      sub_1D6998B38(0, v17, 0);
      v18 = 0;
      v19 = v6;
      v60 = v17;
      v61 = v4 + 4;
      v20 = v3 + 56;
      while (1)
      {
        v65 = v18;
        v66 = v19;
        v21 = &v61[3 * v18];
        v4 = v21[1];
        v63 = v21[2];
        v64 = *v21;
        v22 = v4[2];
        swift_unknownObjectRetain();
        swift_bridgeObjectRetain_n();
        v70 = v22;
        if (v22)
        {
          break;
        }

        v67 = MEMORY[0x1E69E7CC0];
LABEL_36:

        v19 = v66;
        v41 = *(v66 + 16);
        v40 = *(v66 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D6998B38((v40 > 1), v41 + 1, 1);
          v19 = v66;
        }

        v18 = v65 + 1;
        *(v19 + 16) = v41 + 1;
        v42 = (v19 + 24 * v41);
        v42[4] = v64;
        v42[5] = v67;
        v42[6] = v63;
        if (v65 + 1 == v60)
        {
          goto LABEL_41;
        }
      }

      v23 = 0;
      v69 = v4 + 4;
      v67 = MEMORY[0x1E69E7CC0];
      while (v23 < v4[2])
      {
        v24 = v4;
        v73 = *&v69[2 * v23++];
        swift_unknownObjectRetain();
        v25 = *(&v73 + 1);
        v26 = [v73 articleID];
        v27 = sub_1D726207C();
        v29 = v28;

        if (*(v3 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v30 = sub_1D7264A5C(), v31 = -1 << *(v3 + 32), v32 = v30 & ~v31, ((*(v20 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
        {
          v33 = ~v31;
          while (1)
          {
            v34 = (*(v3 + 48) + 16 * v32);
            v35 = *v34 == v27 && v34[1] == v29;
            if (v35 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v32 = (v32 + 1) & v33;
            if (((*(v20 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          swift_unknownObjectRelease();

          v4 = v24;
          if (v23 == v70)
          {
            goto LABEL_36;
          }
        }

        else
        {
LABEL_29:

          v36 = v67;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D6997CD0(0, *(v67 + 16) + 1, 1);
            v36 = v67;
          }

          v4 = v24;
          v38 = *(v36 + 16);
          v37 = *(v36 + 24);
          v39 = v36;
          if (v38 >= v37 >> 1)
          {
            sub_1D6997CD0((v37 > 1), v38 + 1, 1);
            v39 = v67;
          }

          *(v39 + 16) = v38 + 1;
          v67 = v39;
          *(v39 + 16 * v38 + 32) = v73;
          if (v23 == v70)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v71 = *(v62 + 16);
    if (!v71)
    {
      break;
    }

    v43 = 0;
    v44 = v3 + 56;
    v68 = MEMORY[0x1E69E7CC0];
    while (v43 < *(v62 + 16))
    {
      v74 = *(v62 + 32 + 16 * v43++);
      swift_unknownObjectRetain();
      v4 = *(&v74 + 1);
      v45 = [v74 articleID];
      v46 = sub_1D726207C();
      v48 = v47;

      if (*(v3 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v49 = sub_1D7264A5C(), v50 = -1 << *(v3 + 32), v51 = v49 & ~v50, ((*(v44 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
      {
        v52 = ~v50;
        while (1)
        {
          v53 = (*(v3 + 48) + 16 * v51);
          v54 = *v53 == v46 && v53[1] == v48;
          if (v54 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v51 = (v51 + 1) & v52;
          if (((*(v44 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        swift_unknownObjectRelease();

        if (v43 == v71)
        {
          goto LABEL_61;
        }
      }

      else
      {
LABEL_54:

        v55 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997CD0(0, *(v68 + 16) + 1, 1);
          v55 = v68;
        }

        v57 = *(v55 + 16);
        v56 = *(v55 + 24);
        v58 = v55;
        if (v57 >= v56 >> 1)
        {
          sub_1D6997CD0((v56 > 1), v57 + 1, 1);
          v58 = v68;
        }

        *(v58 + 16) = v57 + 1;
        v68 = v58;
        *(v58 + 16 * v57 + 32) = v74;
        if (v43 == v71)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_61:
  swift_bridgeObjectRelease_n();

  *a3 = v19;
  a3[1] = v68;
}

uint64_t FeedTopicHeadlineClusteringResult.next(filterAgainst:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a3;
  v8 = *v3;
  v44 = v3[1];
  if (a3 >> 62)
  {
LABEL_51:
    v9 = sub_1D7263BFC();
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  v48 = v8;
  if (v9)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v5 = 0;
    v10 = v49;
    v4 = (v6 & 0xC000000000000001);
    do
    {
      if (v4)
      {
        v11 = MEMORY[0x1DA6FB460](v5, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v12 = [v11 identifier];
      v13 = sub_1D726207C();
      v15 = v14;
      swift_unknownObjectRelease();

      v17 = *(v49 + 16);
      v16 = *(v49 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
      }

      ++v5;
      *(v49 + 16) = v17 + 1;
      v18 = v49 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v9 != v5);
    v8 = v48;
  }

  v6 = sub_1D5B86020(v10);

  v46 = *(v8 + 16);
  if (!v46)
  {

LABEL_31:
    result = v44;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    if (!*(v44 + 16))
    {
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    *a2 = MEMORY[0x1E69E7CC0];
    a2[1] = v44;
    goto LABEL_44;
  }

  v43 = a2;
  v47 = v8 + 32;
  a2 = (v6 + 56);

  v19 = 0;
  while (1)
  {
    if (v19 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v4 = (v47 + 24 * v19);
    v9 = *v4;
    v5 = v4[1];
    swift_unknownObjectRetain();

    v20 = [v9 identifier];
    v21 = sub_1D726207C();
    v23 = v22;

    if (!*(v6 + 16))
    {
      break;
    }

    sub_1D7264A0C();
    sub_1D72621EC();
    v24 = sub_1D7264A5C();
    v25 = -1 << *(v6 + 32);
    v26 = v24 & ~v25;
    if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      break;
    }

    v27 = ~v25;
    while (1)
    {
      v28 = (*(v6 + 48) + 16 * v26);
      v29 = *v28 == v21 && v28[1] == v23;
      if (v29 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v26 = (v26 + 1) & v27;
      if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    swift_unknownObjectRelease();

    ++v19;
    v8 = v48;
    if (v19 == v46)
    {

      a2 = v43;
      goto LABEL_31;
    }
  }

LABEL_26:

  swift_unknownObjectRelease();

  if (__OFADD__(v19, 1))
  {
    goto LABEL_53;
  }

  v30 = *v4;
  v31 = v4[1];
  v32 = v4[2];
  a2 = sub_1D5FD2BFC();
  v36 = v35 >> 1;
  *a1 = v30;
  a1[1] = v31;
  a1[2] = v32;
  if (v34 != v35 >> 1)
  {
    v9 = v34;
    v5 = v33;
    v4 = v35;
    if ((v35 & 1) == 0)
    {
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      goto LABEL_35;
    }

    sub_1D72647AC();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v40 + 16);

    if (!__OFSUB__(v36, v9))
    {
      if (v41 != v36 - v9)
      {
        goto LABEL_55;
      }

      v39 = swift_dynamicCastClass();
      if (!v39)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v42 = MEMORY[0x1E69E7CC0];
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    swift_unknownObjectRelease();
LABEL_35:
    sub_1D5EC2E60(a2, v5, v9, v4);
LABEL_42:
    v42 = v39;
    swift_unknownObjectRelease();

LABEL_43:
    swift_unknownObjectRelease();
    *v43 = v42;
    v43[1] = v44;
LABEL_44:
  }

  v37 = *(v44 + 16);
  swift_unknownObjectRetain();

  result = swift_unknownObjectRelease();
  if (v37)
  {
    *v43 = MEMORY[0x1E69E7CC0];
    v43[1] = v44;
    goto LABEL_44;
  }

  *v43 = 0;
  v43[1] = 0;
  return result;
}

uint64_t FeedTopicHeadlineClusteringResult.stealHeadlines(from:count:consumedIdentifiers:)(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v49 = v4[1];
  v8 = *(*v4 + 16);
  v53 = *v4;

  if (!v8)
  {
LABEL_34:

    *a1 = v53;
    a1[1] = v49;

    a4 = 0;
LABEL_46:

    return a4;
  }

  v10 = 0;
  v11 = v53 + 32;
  while (1)
  {
    v12 = *(v53 + 16);
    if (v10 >= v12)
    {
      goto LABEL_48;
    }

    v54 = v10;
    v13 = *v11;
    v5 = *(v11 + 8);
    swift_unknownObjectRetain();

    v14 = [v13 identifier];
    v15 = sub_1D726207C();
    v17 = v16;

    v18 = [a2 identifier];
    v19 = sub_1D726207C();
    v6 = v20;

    if (v15 == v19 && v17 == v6)
    {
      break;
    }

    v22 = sub_1D72646CC();

    swift_unknownObjectRelease();

    if (v22)
    {
      goto LABEL_12;
    }

    v10 = v54 + 1;
    v11 += 24;
    if (v8 == v54 + 1)
    {
      goto LABEL_34;
    }
  }

  swift_unknownObjectRelease();

LABEL_12:
  v23 = *(v11 + 8);
  v45 = *(v11 + 16);
  v46 = *v11;
  v24 = *(v23 + 16);
  swift_unknownObjectRetain();

  v52 = v24;
  if (v24)
  {
    v25 = 0;
    v50 = v23 + 32;
    v26 = a4 + 56;
    v6 = MEMORY[0x1E69E7CC0];
    v51 = v23;
    while (1)
    {
      v12 = *(v23 + 16);
      if (v25 >= v12)
      {
        break;
      }

      v8 = v6;
      v56 = *(v50 + 16 * v25++);
      swift_unknownObjectRetain();
      v27 = *(&v56 + 1);
      v28 = [v56 articleID];
      v29 = sub_1D726207C();
      v5 = v30;

      if (*(a4 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v31 = sub_1D7264A5C(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(a4 + 48) + 16 * v33);
          v36 = *v35 == v29 && v35[1] == v5;
          if (v36 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        swift_unknownObjectRelease();
        v23 = v51;
        if (v25 == v52)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_25:

        v58 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6997CD0(0, *(v6 + 16) + 1, 1);
          v6 = v58;
        }

        v23 = v51;
        v5 = *(v6 + 16);
        v37 = *(v6 + 24);
        if (v5 >= v37 >> 1)
        {
          sub_1D6997CD0((v37 > 1), v5 + 1, 1);
          v6 = v58;
        }

        *(v6 + 16) = v5 + 1;
        *(v6 + 16 * v5 + 32) = v56;
        if (v25 == v52)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v12 = *(v6 + 16);
  if (v12 < a3)
  {

    swift_unknownObjectRelease();

    goto LABEL_34;
  }

  v5 = v46;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v8 = v54;
  if (v12 == a3)
  {

    v9 = a3;
    a4 = v6;
    v12 = a3;
  }

  else
  {
    sub_1D5EC2F60(v6, v6 + 32, 0, (2 * a3) | 1);
    v12 = *(v6 + 16);
    if (v12 < a3)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    a4 = v38;
    v9 = a3;
  }

  if (!v9)
  {
    goto LABEL_41;
  }

LABEL_51:
  sub_1D5EC2F60(v6, v6 + 32, v9, (2 * v12) | 1);
  v44 = v43;

  v6 = v44;
LABEL_41:
  v58 = v53;
  swift_unknownObjectRetain();
  sub_1D5EC2230(v8, &v57);

  result = swift_unknownObjectRelease();
  v40 = v58;
  v41 = *(v58 + 16);
  if (v41 >= v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v41 >= *(v40 + 3) >> 1)
    {
      v40 = sub_1D6992148(isUniquelyReferenced_nonNull_native, v41 + 1, 1, v40);
      v58 = v40;
    }

    sub_1D5EC401C(v8, v8, 1, v5, v6, v45);

    swift_unknownObjectRelease_n();
    *a1 = v40;
    a1[1] = v49;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}