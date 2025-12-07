uint64_t sub_225F6DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v5[178] = *v3;
  v5[312] = a1;
  v5[313] = a2;
  v5[314] = a3;

  return MEMORY[0x2822009F8](sub_225F6DEAC, 0, 0);
}

uint64_t sub_225F6DEAC()
{
  v1 = v0[314];
  v9 = v0[313];
  v8 = v0[312];
  v0[178] = v0;
  v0[101] = v8;
  v0[102] = v9;
  v0[103] = v1;
  v2 = sub_226099AA8();
  v13 = sub_225F54384(v8, v9, v2, v3);
  v11 = v4;
  v12 = v5;
  v0[315] = v13;
  v0[316] = v4;
  v0[317] = v5;

  v0[104] = v13;
  v0[105] = v11;
  v0[106] = v12;
  v6 = swift_task_alloc();
  *(v10 + 2544) = v6;
  *v6 = *(v10 + 1424);
  v6[1] = sub_225F6E048;

  return sub_225F5B548(v13, v11, v12);
}

uint64_t sub_225F6E048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v7[178] = *v4;
  v7[319] = v3;
  v7[320] = a1;
  v7[321] = a2;
  v7[322] = a3;

  if (v3)
  {
    v5 = sub_225F78B88;
  }

  else
  {
    v5 = sub_225F6E1D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225F6E1D0()
{
  v79 = v0[322];
  v77 = v0[321];
  v76 = v0[320];
  v0[178] = v0;
  v0[113] = v76;
  v0[114] = v77;
  v0[115] = v79;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
  v0[229] = sub_22609A4F8();
  v0[230] = v76;
  v0[231] = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  sub_22609A538();
  v1 = v0[149];
  v0[150] = v0[148];
  v0[151] = v1;
  v0[232] = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786528, &qword_2260A05D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
  sub_225F7C328();
  sub_225F7D194();
  sub_22609A538();
  sub_225F7C3B0(v0 + 150);
  v2 = v0[117];
  v3 = v0[118];
  v0[119] = v0[116];
  v0[120] = v2;
  v0[121] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7866C8, &qword_2260A0680);
  sub_22609A288();
  v80 = v0[319];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7866D0, &qword_2260A0688);
    sub_22609A298();
    v69 = *(v74 + 336);
    v70 = *(v74 + 344);
    v71 = *(v74 + 352);
    v72 = *(v74 + 360);
    v73 = *(v74 + 368);
    if (!v70)
    {
      break;
    }

    v58 = *(v74 + 2216);
    v57 = *(v74 + 2200);
    *(v74 + 1216) = v69;
    *(v74 + 1224) = v70;
    *(v74 + 1232) = v71;
    *(v74 + 1240) = v72;
    *(v74 + 1872) = v73;
    v56 = sub_225F4C7E0();
    v59 = swift_task_alloc();
    v58(v59, v56, v57);
    v60 = swift_allocObject();
    *(v60 + 16) = v73;
    oslog = sub_226098C48();
    v67 = sub_22609A078();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = 8;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_225F2D734;
    *(v61 + 24) = v60;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_225F2D374;
    *(v64 + 24) = v61;
    sub_22609A4F8();
    v65 = v4;

    *v65 = sub_225EF7434;
    v65[1] = v62;

    v65[2] = sub_225EF7434;
    v65[3] = v63;

    v65[4] = sub_225EF71D0;
    v65[5] = v64;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v67))
    {
      buf = sub_22609A188();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v54 = sub_225EF5468(0, v52, v52);
      v55 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v74 + 1888) = buf;
      *(v74 + 1896) = v54;
      *(v74 + 1904) = v55;
      sub_225EF54BC(0, (v74 + 1888));
      sub_225EF54BC(1, (v74 + 1888));
      *(v74 + 1248) = sub_225EF7434;
      *(v74 + 1256) = v62;
      sub_225EF73E8((v74 + 1248), v74 + 1888, v74 + 1896, v74 + 1904);
      if (v80)
      {
      }

      *(v74 + 1248) = sub_225EF7434;
      *(v74 + 1256) = v63;
      sub_225EF73E8((v74 + 1248), v74 + 1888, v74 + 1896, v74 + 1904);
      *(v74 + 1248) = sub_225EF71D0;
      *(v74 + 1256) = v64;
      sub_225EF73E8((v74 + 1248), v74 + 1888, v74 + 1896, v74 + 1904);
      _os_log_impl(&dword_225EEB000, oslog, v67, "ASRFullPayloadCorrectionWorker:: ConfusionPair at index %ld", buf, 0xCu);
      sub_225EF7AF4(v54, 0, v52);
      sub_225EF7AF4(v55, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v50 = 0;
      v51 = 0;
    }

    else
    {

      v50 = v80;
      v51 = v68;
    }

    v46 = *(v74 + 2240);
    v45 = *(v74 + 2200);
    MEMORY[0x277D82BD8](oslog);
    v46(v59, v45);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
    sub_22609A4F8();
    v49 = v6;
    *v6 = sub_226099AA8();
    v49[1] = v7;
    sub_22609A4F8();
    v47 = v8;
    sub_2260998E8();
    *v47 = v69;
    v47[1] = v70;
    sub_225EF5418();
    v49[5] = v78;
    v49[2] = v9;
    v49[6] = sub_226099AA8();
    v49[7] = v10;
    sub_22609A4F8();
    v48 = v11;
    sub_2260998E8();
    *v48 = v71;
    v48[1] = v72;
    sub_225EF5418();
    v49[11] = v78;
    v49[8] = v12;
    v49[12] = sub_226099AA8();
    v49[13] = v13;
    v49[17] = MEMORY[0x277D83B88];
    v49[14] = v73;
    sub_225EF5418();
    *(v74 + 1880) = sub_2260998A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
    sub_226099CE8();

    v80 = v50;
    v68 = v51;
  }

  v39 = *(v74 + 2424);
  v40 = *(v74 + 2432);
  sub_225F7D21C((v74 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
  sub_22609A4F8();
  v41 = v14;
  *v14 = sub_226099AA8();
  v41[1] = v15;
  sub_2260998E8();
  v41[5] = MEMORY[0x277D837D0];
  v41[2] = v39;
  v41[3] = v40;
  v41[6] = sub_226099AA8();
  v41[7] = v16;
  v43 = *(v74 + 1832);
  sub_2260998E8();
  sub_2260998E8();
  v41[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
  v41[8] = v43;
  sub_225EF5418();
  v42 = sub_2260998A8();
  *(v74 + 1864) = v42;
  v44 = sub_226099CD8();

  if (v44 > 0)
  {
    v37 = *(v74 + 2392);
    v35 = *(v74 + 2384);
    v36 = *(v74 + 2368);
    sub_22609A4F8();
    v38 = v17;
    v34 = v17 + 2;
    *v17 = sub_226099AA8();
    v38[1] = v18;
    v38[5] = v36;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
    v37(boxed_opaque_existential_0, v35, v36);
    v38[6] = sub_226099AA8();
    v38[7] = v20;
    sub_2260998E8();
    v38[11] = v75;
    v38[8] = v42;
    sub_225EF5418();
    v21 = sub_2260998A8();
    *(v74 + 560) = v75;
    *(v74 + 536) = v21;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
    sub_226099CE8();
    swift_endAccess();
  }

  sub_225EFE6E8((v74 + 1832));

  *(v74 + 2584) = v80;
  v26 = *(v74 + 2448);
  v27 = *(v74 + 2456);
  v33 = sub_225F51708(*(v74 + 2344), *(v74 + 2352));
  v28 = v22;
  *(v74 + 2592) = v22;
  v29 = sub_225F51708(v26, v27);
  v30 = v23;
  *(v74 + 2600) = v23;
  v31 = sub_226099AA8();
  v32 = v24;
  *(v74 + 2608) = v24;
  v25 = swift_task_alloc();
  *(v74 + 2616) = v25;
  *v25 = *(v74 + 1424);
  v25[1] = sub_225F6F5A4;

  return sub_225F518C4(v33, v28, v29, v30, v31, v32);
}

uint64_t sub_225F6F5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v5[178] = *v3;
  v5[328] = a1;
  v5[329] = a2;
  v5[330] = a3;

  return MEMORY[0x2822009F8](sub_225F6F730, 0, 0);
}

uint64_t sub_225F6F730()
{
  v1 = v0[330];
  v2 = v0[329];
  v3 = v0[328];
  v12 = v0[307];
  v11 = v0[306];
  v4 = v0[304];
  v5 = v0[303];
  v0[178] = v0;
  v0[107] = v3;
  v0[108] = v2;
  v0[109] = v1;
  v19 = sub_225F51708(v5, v4);
  v14 = v6;
  v0[331] = v6;
  v15 = sub_225F51708(v11, v12);
  v16 = v7;
  v0[332] = v7;
  v17 = sub_226099AA8();
  v18 = v8;
  v0[333] = v8;
  v9 = swift_task_alloc();
  *(v13 + 2672) = v9;
  *v9 = *(v13 + 1424);
  v9[1] = sub_225F6F884;

  return sub_225F518C4(v19, v14, v15, v16, v17, v18);
}

uint64_t sub_225F6F884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v5[178] = *v3;
  v5[335] = a1;
  v5[336] = a2;
  v5[337] = a3;

  return MEMORY[0x2822009F8](sub_225F6FA10, 0, 0);
}

uint64_t sub_225F6FA10(uint64_t a1)
{
  v352 = v1;
  MEMORY[0x28223BE20](a1);
  v299 = v1;
  v2 = *(v1 + 2696);
  v3 = *(v1 + 2688);
  v4 = *(v1 + 2680);
  v301 = *(v1 + 2632);
  v300 = *(v1 + 2624);
  v304 = *(v1 + 2216);
  v303 = *(v1 + 2200);
  *(v1 + 1424) = v1;
  *(v1 + 880) = v4;
  *(v1 + 888) = v3;
  *(v1 + 896) = v2;
  v5 = sub_226099AA8();
  sub_225F539A8(v300, v301, v5, v6, v345);
  v306 = v345[0];
  v307 = v345[1];
  v308 = v345[2];
  v309 = v345[3];
  v310 = v345[4];

  *(v1 + 256) = v306;
  *(v1 + 264) = v307;
  *(v1 + 272) = v308;
  *(v1 + 280) = v309;
  *(v1 + 288) = v310;
  v302 = sub_225F4C7E0();
  v305 = swift_task_alloc();
  v304(v305, v302, v303);
  sub_2260998E8();
  v312 = swift_allocObject();
  v312[2] = v306;
  v312[3] = v307;
  v312[4] = v308;
  v312[5] = v309;
  v312[6] = v310;
  sub_2260998E8();
  v314 = swift_allocObject();
  v314[2] = v306;
  v314[3] = v307;
  v314[4] = v308;
  v314[5] = v309;
  v314[6] = v310;
  sub_2260998E8();
  v316 = swift_allocObject();
  v316[2] = v306;
  v316[3] = v307;
  v316[4] = v308;
  v316[5] = v309;
  v316[6] = v310;
  sub_2260998E8();
  v318 = swift_allocObject();
  v318[2] = v306;
  v318[3] = v307;
  v318[4] = v308;
  v318[5] = v309;
  v318[6] = v310;
  sub_2260998E8();
  v311 = swift_allocObject();
  v311[2] = v306;
  v311[3] = v307;
  v311[4] = v308;
  v311[5] = v309;
  v311[6] = v310;

  v320 = swift_allocObject();
  *(v320 + 16) = sub_225F7D058;
  *(v320 + 24) = v311;

  oslog = sub_226098C48();
  v339 = sub_22609A078();
  v322 = swift_allocObject();
  *(v322 + 16) = 0;
  v323 = swift_allocObject();
  *(v323 + 16) = 8;
  v313 = swift_allocObject();
  *(v313 + 16) = sub_225F7CF28;
  *(v313 + 24) = v312;
  v324 = swift_allocObject();
  *(v324 + 16) = sub_225F2D374;
  *(v324 + 24) = v313;
  v325 = swift_allocObject();
  *(v325 + 16) = 0;
  v326 = swift_allocObject();
  *(v326 + 16) = 8;
  v315 = swift_allocObject();
  *(v315 + 16) = sub_225F7CF74;
  *(v315 + 24) = v314;
  v327 = swift_allocObject();
  *(v327 + 16) = sub_225F2D374;
  *(v327 + 24) = v315;
  v328 = swift_allocObject();
  *(v328 + 16) = 0;
  v329 = swift_allocObject();
  *(v329 + 16) = 8;
  v317 = swift_allocObject();
  *(v317 + 16) = sub_225F7CFC0;
  *(v317 + 24) = v316;
  v330 = swift_allocObject();
  *(v330 + 16) = sub_225F2D374;
  *(v330 + 24) = v317;
  v331 = swift_allocObject();
  *(v331 + 16) = 0;
  v332 = swift_allocObject();
  *(v332 + 16) = 8;
  v319 = swift_allocObject();
  *(v319 + 16) = sub_225F7D00C;
  *(v319 + 24) = v318;
  v333 = swift_allocObject();
  *(v333 + 16) = sub_225F2D374;
  *(v333 + 24) = v319;
  v334 = swift_allocObject();
  *(v334 + 16) = 32;
  v335 = swift_allocObject();
  *(v335 + 16) = 8;
  v321 = swift_allocObject();
  *(v321 + 16) = sub_225F7D0A4;
  *(v321 + 24) = v320;
  v336 = swift_allocObject();
  *(v336 + 16) = sub_225EF7B84;
  *(v336 + 24) = v321;
  sub_22609A4F8();
  v337 = v7;

  *v337 = sub_225EF7434;
  v337[1] = v322;

  v337[2] = sub_225EF7434;
  v337[3] = v323;

  v337[4] = sub_225EF71D0;
  v337[5] = v324;

  v337[6] = sub_225EF7434;
  v337[7] = v325;

  v337[8] = sub_225EF7434;
  v337[9] = v326;

  v337[10] = sub_225EF71D0;
  v337[11] = v327;

  v337[12] = sub_225EF7434;
  v337[13] = v328;

  v337[14] = sub_225EF7434;
  v337[15] = v329;

  v337[16] = sub_225EF71D0;
  v337[17] = v330;

  v337[18] = sub_225EF7434;
  v337[19] = v331;

  v337[20] = sub_225EF7434;
  v337[21] = v332;

  v337[22] = sub_225EF71D0;
  v337[23] = v333;

  v337[24] = sub_225EF7434;
  v337[25] = v334;

  v337[26] = sub_225EF7434;
  v337[27] = v335;

  v337[28] = sub_225EF7B90;
  v337[29] = v336;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v339))
  {
    v19 = *(v1 + 2584);
    v216 = sub_22609A188();
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v217 = sub_225EF5468(0, v215, v215);
    v218 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 1776) = v216;
    *(v1 + 1784) = v217;
    *(v1 + 1792) = v218;
    sub_225EF54BC(2, (v1 + 1776));
    sub_225EF54BC(5, (v1 + 1776));
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v322;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    if (v19)
    {
      goto LABEL_40;
    }

    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v323;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF71D0;
    *(v1 + 1176) = v324;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v325;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v326;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF71D0;
    *(v1 + 1176) = v327;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v328;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v329;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF71D0;
    *(v1 + 1176) = v330;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v331;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v332;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF71D0;
    *(v1 + 1176) = v333;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v334;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7434;
    *(v1 + 1176) = v335;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    *(v1 + 1168) = sub_225EF7B90;
    *(v1 + 1176) = v336;
    sub_225EF73E8((v1 + 1168), v1 + 1776, v1 + 1784, v1 + 1792);
    _os_log_impl(&dword_225EEB000, oslog, v339, "FullPayloadCorrector:: asrOutputToUserEditAlignmentInfo Substitutions: %ld Insertions: %ld Deletions %ld referenceSize %ld correctIndexes %s", v216, 0x34u);
    sub_225EF7AF4(v217, 0, v215);
    sub_225EF7AF4(v218, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v214 = 0;
    v213 = 0;
  }

  else
  {

    v214 = *(v1 + 2584);
  }

  v174 = *(v1 + 2688);
  v173 = *(v1 + 2680);
  v172 = *(v1 + 2240);
  v177 = *(v1 + 2216);
  v176 = *(v1 + 2200);
  MEMORY[0x277D82BD8](oslog);
  v172(v305, v176);

  v20 = sub_226099AA8();
  sub_225F539A8(v173, v174, v20, v21, v346);
  v179 = v346[0];
  v180 = v346[1];
  v181 = v346[2];
  v182 = v346[3];
  v183 = v346[4];

  *(v1 + 296) = v179;
  *(v1 + 304) = v180;
  *(v1 + 312) = v181;
  *(v1 + 320) = v182;
  *(v1 + 328) = v183;
  v175 = sub_225F4C7E0();
  v178 = swift_task_alloc();
  v177(v178, v175, v176);
  sub_2260998E8();
  v185 = swift_allocObject();
  v185[2] = v179;
  v185[3] = v180;
  v185[4] = v181;
  v185[5] = v182;
  v185[6] = v183;
  sub_2260998E8();
  v187 = swift_allocObject();
  v187[2] = v179;
  v187[3] = v180;
  v187[4] = v181;
  v187[5] = v182;
  v187[6] = v183;
  sub_2260998E8();
  v189 = swift_allocObject();
  v189[2] = v179;
  v189[3] = v180;
  v189[4] = v181;
  v189[5] = v182;
  v189[6] = v183;
  sub_2260998E8();
  v191 = swift_allocObject();
  v191[2] = v179;
  v191[3] = v180;
  v191[4] = v181;
  v191[5] = v182;
  v191[6] = v183;
  sub_2260998E8();
  v184 = swift_allocObject();
  v184[2] = v179;
  v184[3] = v180;
  v184[4] = v181;
  v184[5] = v182;
  v184[6] = v183;

  v193 = swift_allocObject();
  *(v193 + 16) = sub_225F7D058;
  *(v193 + 24) = v184;

  v211 = sub_226098C48();
  v212 = sub_22609A078();
  v195 = swift_allocObject();
  *(v195 + 16) = 0;
  v196 = swift_allocObject();
  *(v196 + 16) = 8;
  v186 = swift_allocObject();
  *(v186 + 16) = sub_225F7CF28;
  *(v186 + 24) = v185;
  v197 = swift_allocObject();
  *(v197 + 16) = sub_225F2D374;
  *(v197 + 24) = v186;
  v198 = swift_allocObject();
  *(v198 + 16) = 0;
  v199 = swift_allocObject();
  *(v199 + 16) = 8;
  v188 = swift_allocObject();
  *(v188 + 16) = sub_225F7CF74;
  *(v188 + 24) = v187;
  v200 = swift_allocObject();
  *(v200 + 16) = sub_225F2D374;
  *(v200 + 24) = v188;
  v201 = swift_allocObject();
  *(v201 + 16) = 0;
  v202 = swift_allocObject();
  *(v202 + 16) = 8;
  v190 = swift_allocObject();
  *(v190 + 16) = sub_225F7CFC0;
  *(v190 + 24) = v189;
  v203 = swift_allocObject();
  *(v203 + 16) = sub_225F2D374;
  *(v203 + 24) = v190;
  v204 = swift_allocObject();
  *(v204 + 16) = 0;
  v205 = swift_allocObject();
  *(v205 + 16) = 8;
  v192 = swift_allocObject();
  *(v192 + 16) = sub_225F7D00C;
  *(v192 + 24) = v191;
  v206 = swift_allocObject();
  *(v206 + 16) = sub_225F2D374;
  *(v206 + 24) = v192;
  v207 = swift_allocObject();
  *(v207 + 16) = 32;
  v208 = swift_allocObject();
  *(v208 + 16) = 8;
  v194 = swift_allocObject();
  *(v194 + 16) = sub_225F7D0A4;
  *(v194 + 24) = v193;
  v209 = swift_allocObject();
  *(v209 + 16) = sub_225EF7B84;
  *(v209 + 24) = v194;
  sub_22609A4F8();
  v210 = v22;

  *v210 = sub_225EF7434;
  v210[1] = v195;

  v210[2] = sub_225EF7434;
  v210[3] = v196;

  v210[4] = sub_225EF71D0;
  v210[5] = v197;

  v210[6] = sub_225EF7434;
  v210[7] = v198;

  v210[8] = sub_225EF7434;
  v210[9] = v199;

  v210[10] = sub_225EF71D0;
  v210[11] = v200;

  v210[12] = sub_225EF7434;
  v210[13] = v201;

  v210[14] = sub_225EF7434;
  v210[15] = v202;

  v210[16] = sub_225EF71D0;
  v210[17] = v203;

  v210[18] = sub_225EF7434;
  v210[19] = v204;

  v210[20] = sub_225EF7434;
  v210[21] = v205;

  v210[22] = sub_225EF71D0;
  v210[23] = v206;

  v210[24] = sub_225EF7434;
  v210[25] = v207;

  v210[26] = sub_225EF7434;
  v210[27] = v208;

  v210[28] = sub_225EF7B90;
  v210[29] = v209;
  sub_225EF5418();

  if (os_log_type_enabled(v211, v212))
  {
    v169 = sub_22609A188();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v170 = sub_225EF5468(0, v168, v168);
    v171 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 1752) = v169;
    *(v1 + 1760) = v170;
    *(v1 + 1768) = v171;
    sub_225EF54BC(2, (v1 + 1752));
    sub_225EF54BC(5, (v1 + 1752));
    *(v1 + 1152) = sub_225EF7434;
    *(v1 + 1160) = v195;
    sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
    if (!v214)
    {
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v196;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF71D0;
      *(v1 + 1160) = v197;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v198;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v199;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF71D0;
      *(v1 + 1160) = v200;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v201;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v202;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF71D0;
      *(v1 + 1160) = v203;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v204;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v205;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF71D0;
      *(v1 + 1160) = v206;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v207;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7434;
      *(v1 + 1160) = v208;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      *(v1 + 1152) = sub_225EF7B90;
      *(v1 + 1160) = v209;
      sub_225EF73E8((v1 + 1152), v1 + 1752, v1 + 1760, v1 + 1768);
      _os_log_impl(&dword_225EEB000, v211, v212, "FullPayloadCorrector:: asrFullPayloadCorrectedToUserEditAlignmentInfo Substitutions: %ld Insertions: %ld Deletions %ld referenceSize %ld correctIndexes %s", v169, 0x34u);
      sub_225EF7AF4(v170, 0, v168);
      sub_225EF7AF4(v171, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v166 = 0;
      v167 = 0;
      goto LABEL_46;
    }

LABEL_40:
  }

  v166 = v214;
  v167 = v213;
LABEL_46:
  v164 = *(v1 + 2240);
  v163 = *(v1 + 2200);
  MEMORY[0x277D82BD8](v211);
  v164(v178, v163);

  sub_2260998E8();
  *(v1 + 1720) = v310;
  sub_2260998E8();
  *(v1 + 1728) = v183;
  *(v1 + 1736) = 0;
  v165 = sub_226099CD8();
  if (sub_226099CD8() >= v165)
  {
    v160 = 0;
  }

  else
  {
    v161 = sub_226099CD8();
    v23 = sub_226099CD8();
    result = v161;
    v162 = v161 - v23;
    if (__OFSUB__(v161, v23))
    {
      goto LABEL_123;
    }

    *(v1 + 1736) = v162;
    v160 = v162;
  }

  *(v1 + 1744) = 0;
  v159 = sub_226099CD8();
  if (v159 < sub_226099CD8())
  {
    v157 = sub_226099CD8();
    v25 = sub_226099CD8();
    result = v157;
    v158 = v157 - v25;
    if (!__OFSUB__(v157, v25))
    {
      *(v1 + 1744) = v158;
      v156 = v158;
      goto LABEL_60;
    }

    __break(1u);
LABEL_123:
    __break(1u);
    return result;
  }

  v156 = 0;
LABEL_60:
  v143 = *(v1 + 2696);
  v141 = *(v1 + 2640);
  v145 = *(v1 + 2384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7866B8, &qword_2260A0678);
  sub_22609A4F8();
  v142 = v27;
  *v27 = sub_226099AA8();
  v142[1] = v28;
  sub_2260998E8();
  sub_2260998E8();
  v142[2] = v141;
  v142[3] = sub_226099AA8();
  v142[4] = v29;
  sub_2260998E8();
  v142[5] = v307;
  v142[6] = sub_226099AA8();
  v142[7] = v30;
  sub_2260998E8();
  v142[8] = v308;
  v142[9] = sub_226099AA8();
  v142[10] = v31;
  sub_2260998E8();
  v142[11] = v306;
  v142[12] = sub_226099AA8();
  v142[13] = v32;
  sub_2260998E8();
  v142[14] = v309;
  sub_225EF5418();

  v147 = sub_2260998A8();
  sub_22609A4F8();
  v144 = v33;
  *v33 = sub_226099AA8();
  v144[1] = v34;
  sub_2260998E8();
  sub_2260998E8();
  v144[2] = v143;
  v144[3] = sub_226099AA8();
  v144[4] = v35;
  sub_2260998E8();
  v144[5] = v180;
  v144[6] = sub_226099AA8();
  v144[7] = v36;
  sub_2260998E8();
  v144[8] = v181;
  v144[9] = sub_226099AA8();
  v144[10] = v37;
  sub_2260998E8();
  v144[11] = v179;
  v144[12] = sub_226099AA8();
  v144[13] = v38;
  sub_2260998E8();
  v144[14] = v182;
  sub_225EF5418();

  v146 = sub_2260998A8();
  sub_225F5E894(v145, v147, v146, v160, v156);

  v150 = *(v1 + 75);
  v149 = *(v1 + 2432);
  v148 = *(v1 + 2424);
  v153 = *(v1 + 2384);
  v152 = *(v1 + 2368);
  v154 = *(v1 + 2360);
  v151 = *(v1 + 2376);
  v155 = *(v1 + 2336);
  sub_225F7C9EC(v148, v149, v150 & 1);
  sub_225F7C9EC(v148, v149, v150 & 1);

  (*(v151 + 8))(v153, v152);

  sub_225F7C078(v154);

  MEMORY[0x277D82BD8](v155);
  *(v1 + 74) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786688, &qword_2260A0660);
  sub_22609A388();
  v298 = *(v1 + 1536);
  *(v1 + 2336) = v298;
  if (!v298)
  {
    sub_225EFE6E8((v1 + 1024));
    swift_beginAccess();
    sub_2260998E8();
    swift_endAccess();
    v140 = sub_226099CD8();

    if (v140 <= 0)
    {
      v90 = v166;
    }

    else
    {
      swift_beginAccess();
      sub_2260998E8();
      swift_endAccess();
      v139 = sub_226099CD8();

      if (v139 < 0)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      }

      v134 = *(v1 + 2192);
      *(v1 + 1040) = 0;
      *(v1 + 1048) = v139;
      sub_225EF9438();
      sub_22609A3A8();
      v133 = *(v1 + 1608);
      *(v1 + 1616) = v133;
      swift_beginAccess();
      v135 = *(v134 + 112);
      sub_2260998E8();
      swift_endAccess();
      *(v1 + 1632) = v135;
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
      v39 = sub_225F7CD08();
      MEMORY[0x22AA72D20](v136, v39);
      sub_225EFE6E8((v1 + 1632));
      *(v1 + 1640) = *(v1 + 1624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786698, &qword_2260A0668);
      sub_22609A3F8();
      v137 = v166;
      for (i = v167; ; i = v129)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866A0, &qword_2260A0670);
        sub_22609A408();
        memcpy((v1 + 176), (v1 + 216), 0x28uLL);
        if (!*(v1 + 208))
        {
          break;
        }

        v132 = *(v1 + 176);
        *(v1 + 1648) = v132;
        sub_225EF9790(v1 + 184, v1 + 376);
        sub_225EF3E30(v1 + 376, v1 + 408);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
        if (swift_dynamicCast())
        {
          v131 = *(v1 + 1656);
        }

        else
        {
          v131 = 0;
        }

        *(v1 + 1664) = v131;
        sub_2260998E8();
        if (v131)
        {
          *(v1 + 1672) = v131;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
          v130 = swift_task_alloc();
          *(v1 + 1056) = sub_226099AA8();
          *(v1 + 1064) = v40;
          sub_226099938();
          sub_225EFE6BC(v1 + 1056);
          if (*(v1 + 464))
          {
            v127 = sub_226098A78();
            v41 = swift_dynamicCast();
            if (v41)
            {
              (*(*(v127 - 8) + 56))(v130, 0, 1);
            }

            else
            {
              (*(*(v127 - 8) + 56))(v130, 1);
            }
          }

          else
          {
            sub_225F186BC((v1 + 440));
            v44 = sub_226098A78();
            (*(*(v44 - 8) + 56))(v130, 1);
          }

          *(v1 + 1072) = sub_226099AA8();
          *(v1 + 1080) = v42;
          sub_226099938();
          sub_225EFE6BC(v1 + 1072);
          if (*(v1 + 496))
          {
            if (swift_dynamicCast())
            {
              v126 = *(v1 + 1696);
            }

            else
            {
              v126 = 0;
            }

            v125 = v126;
          }

          else
          {
            sub_225F186BC((v1 + 472));
            v125 = 0;
          }

          *(v1 + 1680) = v125;
          v123 = sub_226098A78();
          v122 = *(v123 - 8);
          v121 = swift_task_alloc();
          v124 = swift_task_alloc();
          sub_225F7BF50(v130, v124);
          if ((*(v122 + 48))(v124, 1, v123) == 1)
          {
            sub_225F7C078(v124);

            v119 = v137;
            v120 = i;
          }

          else
          {
            v118 = *(v122 + 32);
            v118(v121, v124, v123);

            sub_2260998E8();
            if (v125)
            {
              *(v1 + 1688) = v125;
              if (v133 == v132)
              {
                v105 = *(v1 + 2216);
                v104 = *(v1 + 2200);
                v103 = sub_225F4C7E0();
                v106 = swift_task_alloc();
                v105(v106, v103, v104);
                v108 = swift_task_alloc();
                (*(v122 + 16))(v108, v121, v123);
                v107 = (*(v122 + 80) + 16) & ~*(v122 + 80);
                v109 = swift_allocObject();
                v118(v109 + v107, v108, v123);

                v110 = swift_allocObject();
                *(v110 + 16) = sub_225F7CD90;
                *(v110 + 24) = v109;

                v116 = sub_226098C48();
                v117 = sub_22609A078();
                v112 = swift_allocObject();
                *(v112 + 16) = 32;
                v113 = swift_allocObject();
                *(v113 + 16) = 8;
                v111 = swift_allocObject();
                *(v111 + 16) = sub_225F7CE04;
                *(v111 + 24) = v110;
                v114 = swift_allocObject();
                *(v114 + 16) = sub_225EF7B84;
                *(v114 + 24) = v111;
                sub_22609A4F8();
                v115 = v43;

                *v115 = sub_225EF7434;
                v115[1] = v112;

                v115[2] = sub_225EF7434;
                v115[3] = v113;

                v115[4] = sub_225EF7B90;
                v115[5] = v114;
                sub_225EF5418();

                if (os_log_type_enabled(v116, v117))
                {
                  v100 = sub_22609A188();
                  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v101 = sub_225EF5468(0, v99, v99);
                  v102 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v340 = v100;
                  v341 = v101;
                  v342 = v102;
                  sub_225EF54BC(2, &v340);
                  sub_225EF54BC(1, &v340);
                  v343 = sub_225EF7434;
                  v344 = v112;
                  sub_225EF73E8(&v343, &v340, &v341, &v342);
                  if (v137)
                  {
                  }

                  v343 = sub_225EF7434;
                  v344 = v113;
                  sub_225EF73E8(&v343, &v340, &v341, &v342);
                  v343 = sub_225EF7B90;
                  v344 = v114;
                  sub_225EF73E8(&v343, &v340, &v341, &v342);
                  _os_log_impl(&dword_225EEB000, v116, v117, "ASRFullPayloadCorrectionWorker::Chosen record is %s", v100, 0xCu);
                  sub_225EF7AF4(v101, 0, v99);
                  sub_225EF7AF4(v102, 1, MEMORY[0x277D84F70] + 8);
                  sub_22609A168();

                  v97 = 0;
                  v98 = 0;
                }

                else
                {

                  v97 = v137;
                  v98 = i;
                }

                v93 = *(v1 + 2240);
                v92 = *(v1 + 2200);
                MEMORY[0x277D82BD8](v116);
                v93(v106, v92);

                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v94 = sub_22609A3E8();
                sub_225F5D098(v121, v94, 1);

                v95 = v97;
                v96 = v98;
              }

              else
              {
                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v91 = sub_22609A3E8();
                sub_225F5D098(v121, v91, 0);

                v95 = v137;
                v96 = i;
              }

              (*(v122 + 8))(v121, v123);

              v119 = v95;
              v120 = v96;
            }

            else
            {
              (*(v122 + 8))(v121, v123);

              v119 = v137;
              v120 = i;
            }
          }

          sub_225F7C078(v130);

          v128 = v119;
          v129 = v120;
        }

        else
        {
          v128 = v137;
          v129 = i;
        }

        __swift_destroy_boxed_opaque_existential_0((v1 + 376));
        v137 = v128;
      }

      sub_225EFE6E8((v1 + 736));
      swift_beginAccess();
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
      v90 = v137;
    }

    v88 = *(v1 + 2320);
    swift_beginAccess();
    v89 = *(v88 + 16);
    swift_endAccess();
    if (v89)
    {
      v85 = *(v1 + 2312);
      swift_beginAccess();
      v86 = *(v85 + 16);
      swift_unknownObjectRetain();
      swift_endAccess();
      v87 = saveBookmark(1, v86);
      swift_unknownObjectRelease();
      if ((v87 & 1) == 0)
      {
        v80 = *(v1 + 2216);
        v79 = *(v1 + 2200);
        v78 = sub_225F4C7E0();
        v81 = swift_task_alloc();
        v80(v81, v78, v79);
        v83 = sub_226098C48();
        v82 = sub_22609A098();
        v84 = sub_22609A4F8();
        if (!os_log_type_enabled(v83, v82))
        {

          goto LABEL_109;
        }

        v74 = sub_22609A188();
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v75 = sub_225EF5468(0, v73, v73);
        v76 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v1 + 1544) = v74;
        *(v1 + 1552) = v75;
        *(v1 + 1560) = v76;
        sub_225EF54BC(0, (v1 + 1544));
        sub_225EF54BC(0, (v1 + 1544));
        *(v1 + 1568) = v84;
        v77 = swift_task_alloc();
        v77[2] = v1 + 1544;
        v77[3] = v1 + 1552;
        v77[4] = v1 + 1560;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (!v90)
        {

          _os_log_impl(&dword_225EEB000, v83, v82, "ASRFullPayloadCorrectionWorker::Biome bookmark failed to update", v74, 2u);
          sub_225EF7AF4(v75, 0, v73);
          sub_225EF7AF4(v76, 0, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

LABEL_109:
          v68 = *(v1 + 2296);
          v69 = *(v1 + 2288);
          v71 = *(v1 + 2272);
          v72 = *(v1 + 2264);
          v70 = *(v1 + 2256);
          v67 = *(v1 + 2240);
          v66 = *(v1 + 2200);
          MEMORY[0x277D82BD8](v83);
          v67(v81, v66);

          sub_225F7B6F4();
          swift_allocError();
          *v45 = 2;
          swift_willThrow();

          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v68);
          MEMORY[0x277D82BD8](v69);
          v71(v72, v70);

LABEL_119:
          v46 = *(*(v1 + 1424) + 8);

          return v46();
        }
      }

      v61 = *(v1 + 2216);
      v60 = *(v1 + 2200);
      v59 = sub_225F4C7E0();
      v62 = swift_task_alloc();
      v61(v62, v59, v60);
      v64 = sub_226098C48();
      v63 = sub_22609A078();
      v65 = sub_22609A4F8();
      if (os_log_type_enabled(v64, v63))
      {
        v55 = sub_22609A188();
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v56 = sub_225EF5468(0, v54, v54);
        v57 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v1 + 1576) = v55;
        *(v1 + 1584) = v56;
        *(v1 + 1592) = v57;
        sub_225EF54BC(0, (v1 + 1576));
        sub_225EF54BC(0, (v1 + 1576));
        *(v1 + 1600) = v65;
        v58 = swift_task_alloc();
        v58[2] = v1 + 1576;
        v58[3] = v1 + 1584;
        v58[4] = v1 + 1592;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (v90)
        {
        }

        _os_log_impl(&dword_225EEB000, v64, v63, "ASRFullPayloadCorrectionWorker::Biome bookmark updated", v55, 2u);
        sub_225EF7AF4(v56, 0, v54);
        sub_225EF7AF4(v57, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      else
      {
      }

      v53 = *(v1 + 2240);
      v52 = *(v1 + 2200);
      MEMORY[0x277D82BD8](v64);
      v53(v62, v52);
    }

    v47 = *(v1 + 2296);
    v48 = *(v1 + 2288);
    v50 = *(v1 + 2272);
    v51 = *(v1 + 2264);
    v49 = *(v1 + 2256);

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    v50(v51, v49);

    v46 = *(*(v1 + 1424) + 8);

    return v46();
  }

  *(v1 + 1704) = v298;
  if (sub_226099E58())
  {
    v284 = *(v1 + 2216);
    v283 = *(v1 + 2200);
    v287 = *(v1 + 2192);
    v282 = sub_225F4C7E0();
    v285 = swift_task_alloc();
    v284(v285, v282, v283);

    log = sub_226098C48();
    v297 = sub_22609A078();
    v289 = swift_allocObject();
    *(v289 + 16) = 32;
    v290 = swift_allocObject();
    *(v290 + 16) = 8;
    v286 = swift_allocObject();
    *(v286 + 16) = sub_225F7D2E0;
    *(v286 + 24) = v287;
    v291 = swift_allocObject();
    *(v291 + 16) = sub_225EF7B84;
    *(v291 + 24) = v286;
    v292 = swift_allocObject();
    *(v292 + 16) = 32;
    v293 = swift_allocObject();
    *(v293 + 16) = 8;
    v288 = swift_allocObject();
    *(v288 + 16) = sub_225F7D2E8;
    *(v288 + 24) = v287;
    v294 = swift_allocObject();
    *(v294 + 16) = sub_225EF7B84;
    *(v294 + 24) = v288;
    sub_22609A4F8();
    v295 = v8;

    *v295 = sub_225EF7434;
    v295[1] = v289;

    v295[2] = sub_225EF7434;
    v295[3] = v290;

    v295[4] = sub_225EF7B90;
    v295[5] = v291;

    v295[6] = sub_225EF7434;
    v295[7] = v292;

    v295[8] = sub_225EF7434;
    v295[9] = v293;

    v295[10] = sub_225EF7B90;
    v295[11] = v294;
    sub_225EF5418();

    if (os_log_type_enabled(log, v297))
    {
      buf = sub_22609A188();
      v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v280 = sub_225EF5468(0, v278, v278);
      v281 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v347 = buf;
      v348 = v280;
      v349 = v281;
      sub_225EF54BC(2, &v347);
      sub_225EF54BC(2, &v347);
      v350 = sub_225EF7434;
      v351 = v289;
      sub_225EF73E8(&v350, &v347, &v348, &v349);
      if (v166)
      {
      }

      v350 = sub_225EF7434;
      v351 = v290;
      sub_225EF73E8(&v350, &v347, &v348, &v349);
      v350 = sub_225EF7B90;
      v351 = v291;
      sub_225EF73E8(&v350, &v347, &v348, &v349);
      v350 = sub_225EF7434;
      v351 = v292;
      sub_225EF73E8(&v350, &v347, &v348, &v349);
      v350 = sub_225EF7434;
      v351 = v293;
      sub_225EF73E8(&v350, &v347, &v348, &v349);
      v350 = sub_225EF7B90;
      v351 = v294;
      sub_225EF73E8(&v350, &v347, &v348, &v349);
      _os_log_impl(&dword_225EEB000, log, v297, "TaskId: %s, TaskName: %s: asked to stop!", buf, 0x16u);
      sub_225EF7AF4(v280, 0, v278);
      sub_225EF7AF4(v281, 2, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v273 = *(v1 + 2296);
    v274 = *(v1 + 2288);
    v276 = *(v1 + 2272);
    v277 = *(v1 + 2264);
    v275 = *(v1 + 2256);
    v272 = *(v1 + 2240);
    v271 = *(v1 + 2200);
    MEMORY[0x277D82BD8](log);
    v272(v285, v271);

    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();
    MEMORY[0x277D82BD8](v298);
    sub_225EFE6E8((v1 + 1024));

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v273);
    MEMORY[0x277D82BD8](v274);
    v276(v277, v275);

    goto LABEL_119;
  }

  v266 = *(v1 + 2216);
  v265 = *(v1 + 2200);
  v264 = sub_225F4C7E0();
  v267 = swift_task_alloc();
  v266(v267, v264, v265);
  v269 = sub_226098C48();
  v268 = sub_22609A078();
  v270 = sub_22609A4F8();
  if (os_log_type_enabled(v269, v268))
  {
    v260 = sub_22609A188();
    v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v261 = sub_225EF5468(0, v259, v259);
    v262 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 2064) = v260;
    *(v1 + 2072) = v261;
    *(v1 + 2080) = v262;
    sub_225EF54BC(0, (v1 + 2064));
    sub_225EF54BC(0, (v1 + 2064));
    *(v1 + 2088) = v270;
    v263 = swift_task_alloc();
    v263[2] = v1 + 2064;
    v263[3] = v1 + 2072;
    v263[4] = v1 + 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v166)
    {
    }

    _os_log_impl(&dword_225EEB000, v269, v268, "ASRFullPayloadCorrectionWorker::Processing individual Biome record", v260, 2u);
    sub_225EF7AF4(v261, 0, v259);
    sub_225EF7AF4(v262, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v258 = 0;
  }

  else
  {

    v258 = v166;
  }

  v256 = *(v1 + 2240);
  v255 = *(v1 + 2200);
  MEMORY[0x277D82BD8](v269);
  v256(v267, v255);

  v257 = [v298 eventBody];
  if (!v257)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 784, 0);
  }

  v254 = [v257 recognizedText];
  if (v254)
  {
    v250 = sub_226099A08();
    v251 = v10;
    MEMORY[0x277D82BD8](v254);
    v252 = v250;
    v253 = v251;
  }

  else
  {
    v252 = 0;
    v253 = 0;
  }

  *(v1 + 2352) = v253;
  *(v1 + 2344) = v252;
  MEMORY[0x277D82BD8](v257);
  if (!v253)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 784, 0);
  }

  *(v1 + 1088) = v252;
  *(v1 + 1096) = v253;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
  v248 = swift_task_alloc();
  *(v1 + 2360) = v248;
  v11 = [v298 eventBody];
  v249 = v11;
  if (!v11)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 785, 0);
  }

  v12 = [v11 asrID];
  v247 = v12;
  if (v12)
  {
    sub_226099A08();
    v245 = v13;
    MEMORY[0x277D82BD8](v247);
    v246 = v245;
  }

  else
  {
    v246 = 0;
  }

  MEMORY[0x277D82BD8](v249);
  if (!v246)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 785, 0);
  }

  v228 = *(v1 + 2216);
  v227 = *(v1 + 2200);
  sub_226098A18();

  v234 = sub_226098A78();
  *(v1 + 2368) = v234;
  v14 = *(v234 - 8);
  v233 = v14;
  *(v1 + 2376) = v14;
  v231 = v14;
  v230 = swift_task_alloc();
  *(v1 + 2384) = v230;
  sub_226098A68();
  v226 = sub_225F4C7E0();
  v229 = swift_task_alloc();
  v228(v229, v226, v227);
  v235 = swift_task_alloc();
  v15 = *(v233 + 16);
  *(v1 + 2392) = v15;
  *(v1 + 2400) = (v233 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v235, v230, v234);
  v232 = (*(v231 + 80) + 16) & ~*(v231 + 80);
  v236 = swift_allocObject();
  (*(v233 + 32))(v236 + v232, v235, v234);

  v237 = swift_allocObject();
  *(v237 + 16) = sub_225F7CD90;
  *(v237 + 24) = v236;

  v243 = sub_226098C48();
  v244 = sub_22609A078();
  v239 = swift_allocObject();
  *(v239 + 16) = 32;
  v240 = swift_allocObject();
  *(v240 + 16) = 8;
  v238 = swift_allocObject();
  *(v238 + 16) = sub_225F7CE04;
  *(v238 + 24) = v237;
  v241 = swift_allocObject();
  *(v241 + 16) = sub_225EF7B84;
  *(v241 + 24) = v238;
  sub_22609A4F8();
  v242 = v16;

  *v242 = sub_225EF7434;
  v242[1] = v239;

  v242[2] = sub_225EF7434;
  v242[3] = v240;

  v242[4] = sub_225EF7B90;
  v242[5] = v241;
  sub_225EF5418();

  if (os_log_type_enabled(v243, v244))
  {
    v223 = sub_22609A188();
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v224 = sub_225EF5468(0, v222, v222);
    v225 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 2040) = v223;
    *(v1 + 2048) = v224;
    *(v1 + 2056) = v225;
    sub_225EF54BC(2, (v1 + 2040));
    sub_225EF54BC(1, (v1 + 2040));
    *(v1 + 1376) = sub_225EF7434;
    *(v1 + 1384) = v239;
    sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
    if (v258)
    {
    }

    *(v1 + 1376) = sub_225EF7434;
    *(v1 + 1384) = v240;
    sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
    *(v1 + 1376) = sub_225EF7B90;
    *(v1 + 1384) = v241;
    sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
    _os_log_impl(&dword_225EEB000, v243, v244, "ASRFullPayloadCorrectionWorker::dodMLID for SELF logs %s", v223, 0xCu);
    sub_225EF7AF4(v224, 0, v222);
    sub_225EF7AF4(v225, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v221 = 0;
  }

  else
  {

    v221 = v258;
  }

  *(v1 + 2408) = v221;
  v220 = *(v1 + 2240);
  v219 = *(v1 + 2200);
  MEMORY[0x277D82BD8](v243);
  v220(v229, v219);

  v17 = mach_absolute_time();
  sub_225F58E70(v230, v17, v248);
  v18 = swift_task_alloc();
  *(v299 + 2416) = v18;
  *v18 = *(v299 + 1424);
  v18[1] = sub_225F67044;

  return sub_225F5FED4(v252, v253, 0);
}

uint64_t sub_225F78B88()
{
  v24 = v0[319];
  v27 = v0[277];
  v26 = v0[275];
  v0[178] = v0;

  v1 = v24;
  v0[214] = v24;
  v25 = sub_225F4C7E0();
  v28 = swift_task_alloc();
  v27(v28, v25, v26);
  oslog = sub_226098C48();
  v29 = sub_22609A098();
  v31 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v29))
  {
    buf = sub_22609A188();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v20 = sub_225EF5468(0, v18, v18);
    v21 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v23 + 1800) = buf;
    *(v23 + 1808) = v20;
    *(v23 + 1816) = v21;
    sub_225EF54BC(0, (v23 + 1800));
    sub_225EF54BC(0, (v23 + 1800));
    *(v23 + 1824) = v31;
    v22 = swift_task_alloc();
    v22[2] = v23 + 1800;
    v22[3] = v23 + 1808;
    v22[4] = v23 + 1816;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, oslog, v29, "ASRFullPayloadCorrectionWorker::Failed to generate confusion pairs", buf, 2u);
    sub_225EF7AF4(v20, 0, v18);
    sub_225EF7AF4(v21, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v9 = *(v23 + 2552);
  v8 = *(v23 + 2240);
  v7 = *(v23 + 2200);
  MEMORY[0x277D82BD8](oslog);
  v8(v28, v7);

  *(v23 + 2584) = 0;
  v10 = *(v23 + 2448);
  v11 = *(v23 + 2456);
  v17 = sub_225F51708(*(v23 + 2344), *(v23 + 2352));
  v12 = v2;
  *(v23 + 2592) = v2;
  v13 = sub_225F51708(v10, v11);
  v14 = v3;
  *(v23 + 2600) = v3;
  v15 = sub_226099AA8();
  v16 = v4;
  *(v23 + 2608) = v4;
  v5 = swift_task_alloc();
  *(v23 + 2616) = v5;
  *v5 = *(v23 + 1424);
  v5[1] = sub_225F6F5A4;

  return sub_225F518C4(v17, v12, v13, v14, v15, v16);
}

uint64_t sub_225F791E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F7921C(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F792B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v91 = a3;
  v94 = a2;
  v93 = a1;
  v111 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v90 = 0;
  v106 = sub_226098C58();
  v95 = v106;
  v96 = *(v106 - 8);
  v105 = v96;
  v97 = v96;
  v99 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = &v23 - v101;
  MEMORY[0x28223BE20](v4);
  v100 = &v23 - v101;
  MEMORY[0x28223BE20](v5);
  v6 = &v23 - v101;
  v102 = &v23 - v101;
  v132 = v7;
  v131 = v8;
  v103 = (v9 + 16);
  v130 = v9 + 16;
  v104 = (v10 + 16);
  v129 = v10 + 16;
  v11 = sub_225F4C7E0();
  v107 = *(v105 + 16);
  v108 = (v105 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v107(v6, v11, v106);
  v114 = sub_226098C48();
  v109 = v114;
  v113 = sub_22609A078();
  v110 = v113;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v115 = sub_22609A4F8();
  if (os_log_type_enabled(v114, v113))
  {
    v12 = v90;
    v81 = sub_22609A188();
    v77 = v81;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v79 = 0;
    v82 = sub_225EF5468(0, v78, v78);
    v80 = v82;
    v83 = sub_225EF5468(v79, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v119[0] = v81;
    v118 = v82;
    v117 = v83;
    v84 = 0;
    v85 = v119;
    sub_225EF54BC(0, v119);
    sub_225EF54BC(v84, v85);
    v116 = v115;
    v86 = &v23;
    MEMORY[0x28223BE20](&v23);
    v87 = &v23 - 6;
    *(&v23 - 4) = v13;
    *(&v23 - 3) = &v118;
    *(&v23 - 2) = &v117;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v89 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v109, v110, "ASRFullPayloadCorrectionWorker::BMDictationUserEdit reading completed", v77, 2u);
      v75 = 0;
      sub_225EF7AF4(v80, 0, v78);
      sub_225EF7AF4(v83, v75, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v76 = v89;
    }
  }

  else
  {

    v76 = v90;
  }

  v71 = v76;

  v72 = *(v97 + 8);
  v73 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72(v102, v95);
  v128[2] = [v93 state];
  v128[1] = 0;
  v74 = type metadata accessor for BPSCompletionState(0);
  sub_225F7DC4C();
  if (sub_22609A508())
  {
    v14 = v100;
    v15 = sub_225F4C7E0();
    v107(v14, v15, v95);
    v69 = sub_226098C48();
    v66 = v69;
    v68 = sub_22609A078();
    v67 = v68;
    v70 = sub_22609A4F8();
    if (os_log_type_enabled(v69, v68))
    {
      v16 = v71;
      v57 = sub_22609A188();
      v53 = v57;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v55 = 0;
      v58 = sub_225EF5468(0, v54, v54);
      v56 = v58;
      v59 = sub_225EF5468(v55, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v122 = v57;
      v121 = v58;
      v120 = v59;
      v60 = 0;
      v61 = &v122;
      sub_225EF54BC(0, &v122);
      sub_225EF54BC(v60, v61);
      v119[1] = v70;
      v62 = &v23;
      MEMORY[0x28223BE20](&v23);
      v63 = &v23 - 6;
      *(&v23 - 4) = v17;
      *(&v23 - 3) = &v121;
      *(&v23 - 2) = &v120;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v65 = v16;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v66, v67, "ASRFullPayloadCorrectionWorker::BMDictationUserEdit reading completed successfully, saving bookmark", v53, 2u);
        v51 = 0;
        sub_225EF7AF4(v56, 0, v54);
        sub_225EF7AF4(v59, v51, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v52 = v65;
      }
    }

    else
    {

      v52 = v71;
    }

    v49 = v52;

    v72(v100, v95);
    v46 = 33;
    v45 = &v124;
    v47 = 0;
    swift_beginAccess();
    *v103 = 1;
    swift_endAccess();
    swift_unknownObjectRetain();
    v48 = &v123;
    swift_beginAccess();
    *v104 = v94;
    swift_unknownObjectRelease();
    swift_endAccess();
    return v49;
  }

  else
  {
    v18 = v98;
    v19 = sub_225F4C7E0();
    v107(v18, v19, v95);
    v43 = sub_226098C48();
    v40 = v43;
    v42 = sub_22609A078();
    v41 = v42;
    v44 = sub_22609A4F8();
    if (os_log_type_enabled(v43, v42))
    {
      v20 = v71;
      v31 = sub_22609A188();
      v27 = v31;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v29 = 0;
      v32 = sub_225EF5468(0, v28, v28);
      v30 = v32;
      v33 = sub_225EF5468(v29, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v128[0] = v31;
      v127 = v32;
      v126 = v33;
      v34 = 0;
      v35 = v128;
      sub_225EF54BC(0, v128);
      sub_225EF54BC(v34, v35);
      v125 = v44;
      v36 = &v23;
      MEMORY[0x28223BE20](&v23);
      v37 = &v23 - 6;
      *(&v23 - 4) = v21;
      *(&v23 - 3) = &v127;
      *(&v23 - 2) = &v126;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v39 = v20;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v40, v41, "ASRFullPayloadCorrectionWorker::Failed to read from Biome", v27, 2u);
        v25 = 0;
        sub_225EF7AF4(v30, 0, v28);
        sub_225EF7AF4(v33, v25, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v26 = v39;
      }
    }

    else
    {

      v26 = v71;
    }

    v24 = v26;

    v72(v98, v95);
    return v24;
  }
}

uint64_t sub_225F7A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  swift_unknownObjectRetain();
  v4(a2, a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a2);
}

uint64_t sub_225F7A0C0(void *a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v119 = a2;
  v118 = a1;
  v134 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v116 = 0;
  v129 = sub_226098C58();
  v120 = v129;
  v121 = *(v129 - 8);
  v128 = v121;
  v122 = v121;
  v123 = *(v121 + 64);
  MEMORY[0x28223BE20](v118);
  v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = &v24 - v125;
  MEMORY[0x28223BE20](v3);
  v4 = &v24 - v125;
  v126 = &v24 - v125;
  v158 = v5;
  v157 = v6;
  v127 = v7 + 16;
  v156 = v7 + 16;
  v8 = sub_225F4C7E0();
  v130 = *(v128 + 16);
  v131 = (v128 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v130(v4, v8, v129);
  v137 = sub_226098C48();
  v132 = v137;
  v136 = sub_22609A078();
  v133 = v136;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v138 = sub_22609A4F8();
  if (os_log_type_enabled(v137, v136))
  {
    v9 = v116;
    v107 = sub_22609A188();
    v103 = v107;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v105 = 0;
    v108 = sub_225EF5468(0, v104, v104);
    v106 = v108;
    v109 = sub_225EF5468(v105, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v142[0] = v107;
    v141 = v108;
    v140 = v109;
    v110 = 0;
    v111 = v142;
    sub_225EF54BC(0, v142);
    sub_225EF54BC(v110, v111);
    v139 = v138;
    v112 = &v24;
    MEMORY[0x28223BE20](&v24);
    v113 = &v24 - 6;
    *(&v24 - 4) = v10;
    *(&v24 - 3) = &v141;
    *(&v24 - 2) = &v140;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v115 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v132, v133, "ASRFullPayloadCorrectionWorker::Individual Biome record read start", v103, 2u);
      v101 = 0;
      sub_225EF7AF4(v106, 0, v104);
      sub_225EF7AF4(v109, v101, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v102 = v115;
    }
  }

  else
  {

    v102 = v116;
  }

  v97 = v102;

  v98 = *(v122 + 8);
  v99 = (v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v98(v126, v120);
  v100 = [v118 eventBody];
  if (v100)
  {
    v96 = v100;
    v93 = v100;
    v155 = v100;
    sub_225F7DBE8();
    if ([v93 isKindOfClass_])
    {
      v92 = [v93 asrID];
      if (v92)
      {
        v91 = v92;
        v86 = v92;
        v87 = sub_226099A08();
        v88 = v11;

        v89 = v87;
        v90 = v88;
      }

      else
      {
        v89 = 0;
        v90 = 0;
      }

      v154[0] = v89;
      v154[1] = v90;
      v85 = v90 != 0;
      v84 = v85;
      sub_225EFE6BC(v154);
      if (v84 && ((v83 = [v93 recognizedText]) == 0 ? (v80 = 0, v81 = 0) : (v82 = v83, v77 = v83, v78 = sub_226099A08(), v79 = v12, v77, v80 = v78, v81 = v79), (v76 = v81) != 0 && (v75 = v76, , v13 = objc_msgSend(v93, sel_correctedText), (v74 = v13) == 0 ? (v71 = 0, v72 = 0) : (v73 = v74, v68 = v74, v69 = sub_226099A08(), v70 = v14, v68, v71 = v69, v72 = v70), (v67 = v72) != 0 && (v66 = v67, , v15 = objc_msgSend(v93, sel_metadata), (v65 = v15) != 0))))
      {
        v64 = v65;
        v62 = v65;
        v153 = v65;
        v16 = [v65 language];
        v63 = v16;
        if (v16)
        {
          v61 = v63;
          v56 = v63;
          v57 = sub_226099A08();
          v58 = v17;

          v59 = v57;
          v60 = v58;
        }

        else
        {
          v59 = 0;
          v60 = 0;
        }

        v54 = v60;
        v55 = v59;
        if (v60)
        {
          v52 = v55;
          v53 = v54;
          v48 = v54;
          v47 = v55;
          v151 = v55;
          v152 = v54;
          v46 = *(v119 + 80);
          sub_2260998E8();
          v150 = v46;
          v148 = v47;
          v149 = v48;
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
          sub_225F3006C();
          v50 = &v150;
          v51 = sub_226099C38();
          sub_225EFE6E8(v50);
          if (v51)
          {
            v18 = v124;
            v19 = sub_225F4C7E0();
            v130(v18, v19, v120);
            v44 = sub_226098C48();
            v41 = v44;
            v43 = sub_22609A078();
            v42 = v43;
            v45 = sub_22609A4F8();
            if (os_log_type_enabled(v44, v43))
            {
              v20 = v97;
              v32 = sub_22609A188();
              v28 = v32;
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v30 = 0;
              v33 = sub_225EF5468(0, v29, v29);
              v31 = v33;
              v34 = sub_225EF5468(v30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v145 = v32;
              v144 = v33;
              v143 = v34;
              v35 = 0;
              v36 = &v145;
              sub_225EF54BC(0, &v145);
              sub_225EF54BC(v35, v36);
              v142[2] = v45;
              v37 = &v24;
              MEMORY[0x28223BE20](&v24);
              v38 = &v24 - 6;
              *(&v24 - 4) = v21;
              *(&v24 - 3) = &v144;
              *(&v24 - 2) = &v143;
              v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
              sub_225EFE598();
              sub_226099C28();
              v40 = v20;
              if (v20)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_225EEB000, v41, v42, "ASRFullPayloadCorrectionWorker::Individual Biome record accepted", v28, 2u);
                v26 = 0;
                sub_225EF7AF4(v31, 0, v29);
                sub_225EF7AF4(v34, v26, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v27 = v40;
              }
            }

            else
            {

              v27 = v97;
            }

            v25 = v27;

            v98(v124, v120);
            v22 = v118;
            v147 = v118;
            v24 = &v146;
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786678, &qword_2260A0658);
            sub_226099CE8();
            swift_endAccess();

            v94 = 1;
            v95 = v25;
          }

          else
          {

            v94 = 1;
            v95 = v97;
          }
        }

        else
        {

          v94 = 1;
          v95 = v97;
        }
      }

      else
      {

        v94 = 1;
        v95 = v97;
      }
    }

    else
    {

      v94 = 0;
      v95 = v97;
    }
  }

  else
  {
    v94 = 0;
    v95 = v97;
  }

  return v94 & 1;
}

uint64_t sub_225F7B140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  v5 = v3(a2);
  MEMORY[0x277D82BD8](a2);

  return v5 & 1;
}

uint64_t sub_225F7B228(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_226099AA8();
    v9 = v2;
  }

  return v8;
}

uint64_t sub_225F7B2CC(uint64_t *a1)
{
  v2 = *a1;
  sub_2260998E8();

  return v2;
}

uint64_t sub_225F7B308(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_2260998E8();

  return v2;
}

uint64_t sub_225F7B344(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2260998E8();

  return v2;
}

uint64_t sub_225F7B380(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_2260998E8();

  return v2;
}

uint64_t sub_225F7B3BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  result = sub_2260998E8();
  *a2 = v4;
  return result;
}

uint64_t ASRFullPayloadCorrectionWorker.deinit()
{
  sub_225EFE6BC((v0 + 2));
  sub_225EFE6BC((v0 + 4));
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[7]);
  sub_225EFE6E8(v0 + 10);

  sub_225EFE6E8(v0 + 14);
  return v2;
}

id sub_225F7B4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2260999F8();
  v5 = [v3 initWithString_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id sub_225F7B520(uint64_t a1, uint64_t a2)
{
  v12 = sub_226098A08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(a1, 1) == 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_2260989D8();
    (*(v13 + 8))(a1, v12);
    v8 = v7;
  }

  if ((v14)(a2, 1, v12) == 1)
  {
    v2 = [v10 initWithStartDate:v8 endDate:0 maxEvents:? lastN:? reversed:?];
  }

  else
  {
    v6 = sub_2260989D8();
    (*(v13 + 8))(a2, v12);
    v2 = [v10 initWithStartDate:v8 endDate:v6 maxEvents:? lastN:? reversed:?];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v8);
  return v5;
}

unint64_t sub_225F7B6F4()
{
  v2 = qword_27D7863F8;
  if (!qword_27D7863F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7B7B4()
{
  v2 = qword_27D786400;
  if (!qword_27D786400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862D0, &qword_2260A0530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7B844()
{
  v2 = qword_280D76370;
  if (!qword_280D76370)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76370);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F7B8B0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for _NSRange(0);
  v1 = sub_225F7B90C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F7B90C()
{
  v2 = qword_27D786410;
  if (!qword_27D786410)
  {
    type metadata accessor for _NSRange(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7B984()
{
  v2 = qword_27D786420;
  if (!qword_27D786420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786418, &unk_2260A0568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BA0C()
{
  v2 = qword_27D786428;
  if (!qword_27D786428)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786428);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BA70()
{
  v2 = qword_27D786448;
  if (!qword_27D786448)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786448);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BB14()
{
  v2 = qword_27D786460;
  if (!qword_27D786460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786260, &qword_2260A02C8);
    sub_225EF94B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BBB8()
{
  v2 = qword_27D786490;
  if (!qword_27D786490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786488, &qword_2260A05A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BC70()
{
  v2 = qword_27D7864A8;
  if (!qword_27D7864A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7864A0, &qword_2260A01C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7864A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7BCF8()
{
  v2 = qword_27D7864B8;
  if (!qword_27D7864B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BD5C()
{
  v2 = qword_280D76540;
  if (!qword_280D76540)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76540);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BDC0()
{
  v2 = qword_27D7864C8;
  if (!qword_27D7864C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BE24()
{
  v2 = qword_27D7864D0;
  if (!qword_27D7864D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BE88()
{
  v2 = qword_27D7864D8;
  if (!qword_27D7864D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7BEEC()
{
  v2 = qword_27D7864E0;
  if (!qword_27D7864E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864E0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F7BF50(const void *a1, void *a2)
{
  v6 = sub_226098A78();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F7C078(uint64_t a1)
{
  v3 = sub_226098A78();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F7C120()
{
  v2 = qword_27D7864F0;
  if (!qword_27D7864F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7864F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C184()
{
  v2 = qword_27D786500;
  if (!qword_27D786500)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786500);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C1E8()
{
  v2 = qword_27D786508;
  if (!qword_27D786508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786508);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C24C()
{
  v2 = qword_27D786510;
  if (!qword_27D786510)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786510);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C2B0()
{
  v2 = qword_280D76300;
  if (!qword_280D76300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7C328()
{
  v2 = qword_27D786530;
  if (!qword_27D786530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786528, &qword_2260A05D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7C420()
{
  v2 = qword_27D786548;
  if (!qword_27D786548)
  {
    type metadata accessor for MCRestrictedBoolType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786548);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F7C4A0(void *a1)
{
  if (a1[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

unint64_t sub_225F7C4F4()
{
  v2 = qword_27D786560;
  if (!qword_27D786560)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786560);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C558()
{
  v2 = qword_27D786568;
  if (!qword_27D786568)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786568);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C5BC()
{
  v2 = qword_27D786570;
  if (!qword_27D786570)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786570);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C620()
{
  v2 = qword_27D786578;
  if (!qword_27D786578)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786578);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C684()
{
  v2 = qword_27D786580;
  if (!qword_27D786580)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786580);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C6E8()
{
  v2 = qword_27D786590;
  if (!qword_27D786590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786588, &qword_2260A0600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7C770()
{
  v2 = qword_27D7865A0;
  if (!qword_27D7865A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C7D4()
{
  v2 = qword_27D7865A8;
  if (!qword_27D7865A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C838()
{
  v2 = qword_27D7865C0;
  if (!qword_27D7865C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C89C()
{
  v2 = qword_27D7865C8;
  if (!qword_27D7865C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C900()
{
  v2 = qword_27D7865D0;
  if (!qword_27D7865D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7865D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7C964()
{
  v2 = qword_27D7865E0;
  if (!qword_27D7865E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7865D8, &qword_2260A0628);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7865E0);
    return WitnessTable;
  }

  return v2;
}

void sub_225F7C9EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_225F7CA30()
{
  v2 = qword_27D7865F0;
  if (!qword_27D7865F0)
  {
    type metadata accessor for CheckingType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7865F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7CAC4()
{
  v2 = qword_27D7865F8;
  if (!qword_27D7865F8)
  {
    sub_226098B28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7865F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7CB3C()
{
  v2 = qword_27D786600;
  if (!qword_27D786600)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786600);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_249(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_255(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_225F7CC80()
{
  v2 = qword_27D786680;
  if (!qword_27D786680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786678, &qword_2260A0658);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7CD08()
{
  v2 = qword_27D786690;
  if (!qword_27D786690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786418, &unk_2260A0568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F7CD90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226098A78();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_225F7B1C8(v3, a1);
}

uint64_t sub_225F7CE04()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_226098A78();
  v1 = sub_225F7CE60();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F7CE60()
{
  v2 = qword_280D76F38;
  if (!qword_280D76F38)
  {
    sub_226098A78();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F38);
    return WitnessTable;
  }

  return v2;
}

id sub_225F7CED8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_2260998E8();
  }
}

uint64_t sub_225F7CF28()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B2CC(v6);
}

uint64_t sub_225F7CF74()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B308(v6);
}

uint64_t sub_225F7CFC0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B344(v6);
}

uint64_t sub_225F7D00C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = v0[2];
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  return sub_225F7B380(v6);
}

uint64_t sub_225F7D058@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v7[0] = v1[2];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  return sub_225F7B3BC(v7, a1);
}

uint64_t sub_225F7D0A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
  v1 = sub_225F7D10C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F7D10C()
{
  v2 = qword_27D7866B0;
  if (!qword_27D7866B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786478, &unk_2260A0DF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7D194()
{
  v2 = qword_27D7866C0;
  if (!qword_27D7866C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786478, &unk_2260A0DF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866C0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_225F7D21C(void *a1)
{
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_225F7D2F0()
{
  v2 = qword_280D76708;
  if (!qword_280D76708)
  {
    sub_226099D58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76708);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F7D37C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_225F7D4E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_225F7D704(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  sub_2260998E8();
  result = a1;
  *(a1 + 16) = v4;
  return result;
}

void *sub_225F7D760(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];
  sub_2260998E8();
  a1[2] = v3;

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_225F7D7D0(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
}

uint64_t sub_225F7D818(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225F7D948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_225F7DB6C()
{
  v2 = qword_27D7866D8;
  if (!qword_27D7866D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F7DBE8()
{
  v2 = qword_27D7866E0;
  if (!qword_27D7866E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7866E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F7DC4C()
{
  v2 = qword_27D7866E8;
  if (!qword_27D7866E8)
  {
    type metadata accessor for BPSCompletionState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7866E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v55[2] = 0;
  v57 = a1;
  v58 = a2;
  v56 = a3 & 1;
  sub_2260998E8();
  MEMORY[0x277D82BE0](@"Dictation");
  v55[0] = sub_226099A08();
  v55[1] = v4;
  v54[2] = a1;
  v54[3] = a2;
  v46 = MEMORY[0x22AA72BD0](v55[0], v4, a1, a2);
  sub_225EFE6BC(v55);
  MEMORY[0x277D82BD8](@"Dictation");
  if (v46)
  {

    if ((a3 & 1) == 0)
    {
      v41 = *MEMORY[0x277CDCE20];
      v5 = sub_226099808();
      return (*(*(v5 - 8) + 104))(a4, v41);
    }
  }

  else
  {
  }

  sub_2260998E8();
  MEMORY[0x277D82BE0](@"Dictation");
  v54[0] = sub_226099A08();
  v54[1] = v7;
  v53[2] = a1;
  v53[3] = a2;
  v40 = MEMORY[0x22AA72BD0](v54[0], v7, a1, a2);
  sub_225EFE6BC(v54);
  MEMORY[0x277D82BD8](@"Dictation");
  if (v40)
  {

    v39 = *MEMORY[0x277CDCE28];
    v8 = sub_226099808();
    return (*(*(v8 - 8) + 104))(a4, v39);
  }

  else
  {

    sub_2260998E8();
    MEMORY[0x277D82BE0](@"SiriDictation");
    v53[0] = sub_226099A08();
    v53[1] = v9;
    v52[2] = a1;
    v52[3] = a2;
    v38 = MEMORY[0x22AA72BD0](v53[0], v9, a1, a2);
    sub_225EFE6BC(v53);
    MEMORY[0x277D82BD8](@"SiriDictation");
    if (v38)
    {

      v37 = *MEMORY[0x277CDCE38];
      v10 = sub_226099808();
      return (*(*(v10 - 8) + 104))(a4, v37);
    }

    else
    {

      sub_2260998E8();
      MEMORY[0x277D82BE0](@"SearchOrMessaging");
      v52[0] = sub_226099A08();
      v52[1] = v11;
      v51[2] = a1;
      v51[3] = a2;
      v36 = MEMORY[0x22AA72BD0](v52[0], v11, a1, a2);
      sub_225EFE6BC(v52);
      MEMORY[0x277D82BD8](@"SearchOrMessaging");
      if (v36)
      {

        v35 = *MEMORY[0x277CDCE68];
        v12 = sub_226099808();
        return (*(*(v12 - 8) + 104))(a4, v35);
      }

      else
      {

        sub_2260998E8();
        MEMORY[0x277D82BE0](@"VoiceMail");
        v51[0] = sub_226099A08();
        v51[1] = v13;
        v50[2] = a1;
        v50[3] = a2;
        v34 = MEMORY[0x22AA72BD0](v51[0], v13, a1, a2);
        sub_225EFE6BC(v51);
        MEMORY[0x277D82BD8](@"VoiceMail");
        if (v34)
        {

          v33 = *MEMORY[0x277CDCE78];
          v14 = sub_226099808();
          return (*(*(v14 - 8) + 104))(a4, v33);
        }

        else
        {

          sub_2260998E8();
          MEMORY[0x277D82BE0](@"WebSearch");
          v50[0] = sub_226099A08();
          v50[1] = v15;
          v49[2] = a1;
          v49[3] = a2;
          v32 = MEMORY[0x22AA72BD0](v50[0], v15, a1, a2);
          sub_225EFE6BC(v50);
          MEMORY[0x277D82BD8](@"WebSearch");
          if (v32)
          {

            v31 = *MEMORY[0x277CDCE50];
            v16 = sub_226099808();
            return (*(*(v16 - 8) + 104))(a4, v31);
          }

          else
          {

            sub_2260998E8();
            MEMORY[0x277D82BE0](@"Captioning");
            v49[0] = sub_226099A08();
            v49[1] = v17;
            v48[2] = a1;
            v48[3] = a2;
            v30 = MEMORY[0x22AA72BD0](v49[0], v17, a1, a2);
            sub_225EFE6BC(v49);
            MEMORY[0x277D82BD8](@"Captioning");
            if (v30)
            {

              v29 = *MEMORY[0x277CDCE00];
              v18 = sub_226099808();
              return (*(*(v18 - 8) + 104))(a4, v29);
            }

            else
            {

              sub_2260998E8();
              MEMORY[0x277D82BE0](@"Tshot");
              v48[0] = sub_226099A08();
              v48[1] = v19;
              v47[2] = a1;
              v47[3] = a2;
              v28 = MEMORY[0x22AA72BD0](v48[0], v19, a1, a2);
              sub_225EFE6BC(v48);
              MEMORY[0x277D82BD8](@"Tshot");
              if (v28)
              {

                v27 = *MEMORY[0x277CDCE48];
                v20 = sub_226099808();
                return (*(*(v20 - 8) + 104))(a4, v27);
              }

              else
              {

                sub_2260998E8();
                MEMORY[0x277D82BE0](@"Spelling");
                v47[0] = sub_226099A08();
                v47[1] = v21;
                v26 = MEMORY[0x22AA72BD0](v47[0], v21, a1, a2);
                sub_225EFE6BC(v47);
                MEMORY[0x277D82BD8](@"Spelling");

                if (v26)
                {
                  v25 = *MEMORY[0x277CDCE60];
                  v22 = sub_226099808();
                  return (*(*(v22 - 8) + 104))(a4, v25);
                }

                else
                {
                  v24 = *MEMORY[0x277CDCE70];
                  v23 = sub_226099808();
                  return (*(*(v23 - 8) + 104))(a4, v24);
                }
              }
            }
          }
        }
      }
    }
  }
}

char *sub_225F7E5E8()
{
  if (qword_280D76C20 != -1)
  {
    swift_once();
  }

  return &byte_280D77712;
}

uint64_t sub_225F7E648()
{
  v1 = [objc_opt_self() sharedPreferences];
  [v1 siriDataSharingOptInStatus];
  MEMORY[0x277D82BD8](v1);
  type metadata accessor for AFSiriDataSharingOptInStatus(0);
  sub_225EFE4AC();
  return sub_22609A508() & 1;
}

char *sub_225F7E704()
{
  if (qword_280D76D70 != -1)
  {
    swift_once();
  }

  return &byte_280D77720;
}

uint64_t sub_225F7E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  *v6 = *(v9 + 16);
  v6[1] = sub_225EF4064;

  return sub_22601D748(a1, a2, a4, a5, v7);
}

uint64_t sub_225F7E874()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76880);
  __swift_project_value_buffer(v1, qword_280D76880);
  return sub_225F7E8C0();
}

uint64_t sub_225F7E8C0()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 31, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F7E9BC()
{
  if (qword_280D76878 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76880);
}

uint64_t sub_225F7EA28()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76ED8);
  __swift_project_value_buffer(v1, qword_280D76ED8);
  return sub_225F7EA74();
}

uint64_t sub_225F7EA74()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0B8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 36, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F7EB70()
{
  if (qword_280D76ED0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76ED8);
}

uint64_t sub_225F7EBDC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v34 = a1;
  v35 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v30 = a6;
  v29 = v6;

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v22 = sub_226098C48();
  v23 = sub_22609A098();
  v18 = swift_allocObject();
  *(v18 + 16) = 32;
  v19 = swift_allocObject();
  *(v19 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_225F7F7D4;
  *(v17 + 24) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_225EF7B84;
  *(v20 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v21 = v7;

  *v21 = sub_225EF7434;
  v21[1] = v18;

  v21[2] = sub_225EF7434;
  v21[3] = v19;

  v21[4] = sub_225EF7B90;
  v21[5] = v20;
  sub_225EF5418();

  if (os_log_type_enabled(v22, v23))
  {
    buf = sub_22609A188();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v12 = sub_225EF5468(0, v10, v10);
    v13 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v28 = buf;
    v27 = v12;
    v26 = v13;
    sub_225EF54BC(2, &v28);
    sub_225EF54BC(1, &v28);
    v24 = sub_225EF7434;
    v25 = v18;
    sub_225EF73E8(&v24, &v28, &v27, &v26);
    v24 = sub_225EF7434;
    v25 = v19;
    sub_225EF73E8(&v24, &v28, &v27, &v26);
    v24 = sub_225EF7B90;
    v25 = v20;
    sub_225EF73E8(&v24, &v28, &v27, &v26);
    _os_log_impl(&dword_225EEB000, v22, v23, "Failed precondition: %s", buf, 0xCu);
    sub_225EF7AF4(v12, 0, v10);
    sub_225EF7AF4(v13, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v22);

  a1(v8);

  result = sub_22609A3C8();
  __break(1u);
  return result;
}

uint64_t sub_225F7F108(uint64_t (*a1)(void))
{

  v3 = a1();

  return v3;
}

uint64_t sub_225F7F168()
{
  result = sub_226099AA8();
  qword_280D767B0 = result;
  qword_280D767B8 = v1;
  return result;
}

uint64_t *sub_225F7F1AC()
{
  if (qword_280D767A8 != -1)
  {
    swift_once();
  }

  return &qword_280D767B0;
}

uint64_t sub_225F7F20C()
{
  result = sub_226099AA8();
  qword_280D76EC0 = result;
  qword_280D76EC8 = v1;
  return result;
}

uint64_t *sub_225F7F250()
{
  if (qword_280D76EB0 != -1)
  {
    swift_once();
  }

  return &qword_280D76EC0;
}

uint64_t sub_225F7F2B0()
{
  result = sub_226099AA8();
  qword_280D76C00 = result;
  qword_280D76C08 = v1;
  return result;
}

uint64_t *sub_225F7F2F4()
{
  if (qword_280D76BF8 != -1)
  {
    swift_once();
  }

  return &qword_280D76C00;
}

uint64_t sub_225F7F354()
{
  result = sub_226099AA8();
  qword_280D768B0 = result;
  qword_280D768B8 = v1;
  return result;
}

uint64_t *sub_225F7F398()
{
  if (qword_280D768A0 != -1)
  {
    swift_once();
  }

  return &qword_280D768B0;
}

uint64_t sub_225F7F3F8()
{
  result = sub_226099AA8();
  qword_280D769C0 = result;
  qword_280D769C8 = v1;
  return result;
}

uint64_t *sub_225F7F43C()
{
  if (qword_280D769B8 != -1)
  {
    swift_once();
  }

  return &qword_280D769C0;
}

uint64_t sub_225F7F49C()
{
  result = AFIsATVOnly();
  byte_280D767A0 = result;
  return result;
}

char *sub_225F7F4BC()
{
  if (qword_280D76790 != -1)
  {
    swift_once();
  }

  return &byte_280D767A0;
}

uint64_t sub_225F7F528()
{
  sub_225EF81C4();
  result = sub_22609A628();
  qword_27D7867C8 = result;
  qword_27D7867D0 = v1;
  return result;
}

uint64_t *sub_225F7F580()
{
  if (qword_27D785D78 != -1)
  {
    swift_once();
  }

  return &qword_27D7867C8;
}

uint64_t sub_225F7F5E0()
{
  sub_225EF81C4();
  result = sub_22609A628();
  qword_280D76BD8 = result;
  qword_280D76BE0 = v1;
  return result;
}

uint64_t *sub_225F7F638()
{
  if (qword_280D76BF0 != -1)
  {
    swift_once();
  }

  return &qword_280D76BD8;
}

void sub_225F7F6B0()
{
  sub_225F7C2B0();
  sub_226099EC8();
  qword_280D76F08 = v0;
}

uint64_t *sub_225F7F6FC()
{
  if (qword_280D76EF8 != -1)
  {
    swift_once();
  }

  return &qword_280D76F08;
}

uint64_t sub_225F7F768()
{
  result = _swift_stdlib_has_malloc_size();
  byte_280D77720 = result & 1;
  return result;
}

uint64_t sub_225F7F78C()
{
  result = _swift_stdlib_has_malloc_size();
  byte_280D77721 = result & 1;
  return result;
}

uint64_t sub_225F7F7B0()
{
  result = _swift_stdlib_has_malloc_size();
  byte_280D77712 = result & 1;
  return result;
}

uint64_t sub_225F7F848(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_225F7F8C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 delegate];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_225F7F93C(void *a1, void *a2)
{
  sub_226022D70(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v4 setDelegate_];
  MEMORY[0x277D82BD8](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_225F7F9BC()
{
  v4 = 0;
  sub_225EF3E30(v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__instanceUUID, v3);
  sub_226098A78();
  return swift_dynamicCast();
}

uint64_t sub_225F7FA28()
{
  v4 = 0;
  sub_225EF3E30(v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__taskPriority, v3);
  sub_226099DA8();
  return swift_dynamicCast();
}

uint64_t sub_225F7FA94()
{
  v2 = *(v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_operationDequeuerTask);

  return v2;
}

uint64_t sub_225F7FB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  swift_beginAccess();
  sub_225EF9700(v3, a1);
  return swift_endAccess();
}

void *sub_225F7FBE0(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_225EF9700(a1, v5);
  v3 = v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  swift_beginAccess();
  sub_22601E698(v5, v3);
  swift_endAccess();
  return sub_225F186BC(a1);
}

uint64_t sub_225F7FC64()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F7FCCC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id CoreEmbeddedSpeechAnalyzer.init(delegate:instanceUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1 instanceUUID:a2];
  swift_unknownObjectRelease();
  return v3;
}

id CoreEmbeddedSpeechAnalyzer.init(delegate:instanceUUID:)(uint64_t a1, const void *a2)
{
  v232 = a2;
  v214 = a1;
  v303 = *MEMORY[0x277D85DE8];
  v233 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  v288 = 0;
  v287 = 0;
  v285 = 0;
  v231 = 0;
  v284 = 0;
  v187 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v190 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v192 = (v190 + 15) & 0xFFFFFFFFFFFFFFF0;
  v188 = &v76 - v192;
  MEMORY[0x28223BE20](&v76 - v192);
  v189 = &v76 - v192;
  MEMORY[0x28223BE20](&v76 - v192);
  v191 = &v76 - v192;
  MEMORY[0x28223BE20](&v76 - v192);
  v193 = &v76 - v192;
  v292 = &v76 - v192;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786830, &qword_2260A0850);
  v195 = *(v194 - 8);
  v196 = v195;
  v197 = (*(v195 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v194 - 8);
  v198 = &v76 - v197;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v200 = *(v199 - 8);
  v201 = v200;
  v202 = *(v200 + 64);
  MEMORY[0x28223BE20](v199 - 8);
  v204 = (v202 + 15) & 0xFFFFFFFFFFFFFFF0;
  v203 = &v76 - v204;
  MEMORY[0x28223BE20](&v76 - v204);
  v205 = &v76 - v204;
  v291 = &v76 - v204;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858);
  v207 = *(v206 - 8);
  v208 = v207;
  v210 = *(v207 + 64);
  v209 = v210;
  MEMORY[0x28223BE20](v233);
  v212 = (v210 + 15) & 0xFFFFFFFFFFFFFFF0;
  v211 = &v76 - v212;
  MEMORY[0x28223BE20](v3);
  v213 = &v76 - v212;
  v290 = &v76 - v212;
  v240 = sub_226098C58();
  v215 = v240;
  v216 = *(v240 - 8);
  v239 = v216;
  v217 = v216;
  v219 = *(v216 + 64);
  MEMORY[0x28223BE20](v214);
  v221 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v218 = &v76 - v221;
  MEMORY[0x28223BE20](v4);
  v220 = &v76 - v221;
  MEMORY[0x28223BE20](v5);
  v6 = &v76 - v221;
  v222 = &v76 - v221;
  v288 = v7;
  v287 = v232;
  v289 = v8;
  swift_unknownObjectWeakInit();
  v9 = v231;
  v10 = v233;
  v11 = &v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer];
  *v11 = v233;
  v11[1] = v10;
  v11[2] = v10;
  v11[3] = v10;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder] = v10;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask] = v10;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask] = v10;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer] = v10;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber] = v10;
  v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands] = v9;
  v223 = &v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion];
  v225 = "";
  v224 = 1;
  v12 = sub_226099AA8();
  v13 = v223;
  *v223 = v12;
  v13[1] = v14;
  v226 = &v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion];
  v15 = sub_226099AA8();
  v16 = v226;
  v17 = v231;
  v18 = v233;
  *v226 = v15;
  v16[1] = v19;
  v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed] = v17;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig] = v18;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask] = v18;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat] = v18;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate] = v18;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs] = v18;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength] = v18;
  v228 = v289;
  v227 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioPackets;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E90, &qword_2260A0860);
  *&v228[v227] = sub_22609A4F8();
  v230 = v289;
  v229 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedRequestEagerResultData;
  v20 = sub_22609A4F8();
  v21 = v231;
  v22 = v233;
  v23 = v232;
  *&v230[v229] = v20;
  v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioEnded] = v21;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs] = v22;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration] = v22;
  v24 = &v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish];
  *v24 = v22;
  v24[1] = v22;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime] = v22;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime] = v22;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord] = v22;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord] = v22;
  *&v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask] = v22;
  v289[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything] = v21;
  LOBYTE(v286) = v21;
  BYTE1(v286) = v21;
  BYTE2(v286) = v21;
  BYTE3(v286) = v21;
  BYTE4(v286) = v21;
  BYTE5(v286) = v21;
  BYTE6(v286) = v21;
  BYTE7(v286) = v21;
  BYTE8(v286) = v21;
  BYTE9(v286) = v21;
  BYTE10(v286) = v21;
  BYTE11(v286) = v21;
  BYTE12(v286) = v21;
  BYTE13(v286) = v21;
  BYTE14(v286) = v21;
  HIBYTE(v286) = v21;
  memcpy(&v286, v23, sizeof(v286));
  v251 = sub_226098A78();
  v234 = v251;
  v235 = *(v251 - 8);
  v249 = v235;
  v236 = v235;
  v247 = *(v235 + 64);
  MEMORY[0x28223BE20](v251 - 8);
  v244 = (v247 + 15) & 0xFFFFFFFFFFFFFFF0;
  v243 = &v76 - v244;
  v237 = &v76 - v244;
  v285 = &v76 - v244;
  v293 = v286;
  v238 = &v75;
  v75 = *(&v286 + 1);
  sub_226098A58();
  v25 = sub_225F7E9BC();
  v241 = *(v239 + 16);
  v242 = (v239 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26 = v241(v6, v25, v240);
  v27 = MEMORY[0x28223BE20](v26);
  v250 = &v76 - v244;
  v245 = *(v249 + 16);
  v246 = (v249 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v245(v27);
  v248 = (*(v249 + 80) + 16) & ~*(v249 + 80);
  v252 = swift_allocObject();
  (*(v249 + 32))(v252 + v248, v250, v251);

  v255 = 32;
  v259 = 32;
  v260 = 7;
  v28 = swift_allocObject();
  v29 = v252;
  v261 = v28;
  *(v28 + 16) = sub_225F7CD90;
  *(v28 + 24) = v29;

  v272 = sub_226098C48();
  v253 = v272;
  v271 = sub_22609A0A8();
  v254 = v271;
  v256 = 17;
  v265 = swift_allocObject();
  v257 = v265;
  *(v265 + 16) = v255;
  v266 = swift_allocObject();
  v258 = v266;
  *(v266 + 16) = 8;
  v30 = swift_allocObject();
  v31 = v261;
  v262 = v30;
  *(v30 + 16) = sub_225F7CE04;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v262;
  v269 = v32;
  v263 = v32;
  *(v32 + 16) = sub_225EF7B84;
  *(v32 + 24) = v33;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v264 = v270;
  v267 = sub_22609A4F8();
  v268 = v34;

  v35 = v265;
  v36 = v268;
  *v268 = sub_225EF7434;
  v36[1] = v35;

  v37 = v266;
  v38 = v268;
  v268[2] = sub_225EF7434;
  v38[3] = v37;

  v39 = v268;
  v40 = v269;
  v268[4] = sub_225EF7B90;
  v39[5] = v40;
  sub_225EF5418();

  if (os_log_type_enabled(v272, v271))
  {
    v41 = v187;
    v180 = sub_22609A188();
    v177 = v180;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v181 = sub_225EF5468(0, v178, v178);
    v179 = v181;
    v183 = 1;
    v182 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v275 = v180;
    v295 = v181;
    v294 = v182;
    v184 = &v275;
    sub_225EF54BC(2, &v275);
    sub_225EF54BC(v183, v184);
    v273 = sub_225EF7434;
    v274 = v257;
    sub_225EF73E8(&v273, v184, &v295, &v294);
    v185 = v41;
    v186 = v41;
    if (v41)
    {
      v175 = 0;

      __break(1u);
    }

    else
    {
      v273 = sub_225EF7434;
      v274 = v258;
      sub_225EF73E8(&v273, &v275, &v295, &v294);
      v173 = 0;
      v174 = 0;
      v273 = sub_225EF7B90;
      v274 = v263;
      sub_225EF73E8(&v273, &v275, &v295, &v294);
      v171 = 0;
      v172 = 0;
      _os_log_impl(&dword_225EEB000, v253, v254, "Instantiating instance %s", v177, 0xCu);
      sub_225EF7AF4(v179, 0, v178);
      sub_225EF7AF4(v182, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v176 = v171;
    }
  }

  else
  {
    v42 = v187;

    v176 = v42;
  }

  v165 = v176;

  v166 = *(v217 + 8);
  v167 = (v217 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v166(v222, v215);
  v168 = v289;
  swift_unknownObjectRetain();
  v169 = &v168[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_delegate];
  v170 = &v302;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  if (AFDeviceSupportsSiriUOD())
  {
    v164 = 1;
  }

  else
  {
    v164 = AFOfflineDictationCapable();
  }

  if (v164)
  {
    v161 = [objc_opt_self() sharedPreferences];
    v162 = [v161 infersQoSFromInstanceUUIDForEAR];

    v163 = v162;
  }

  else
  {
    v163 = 0;
  }

  if (v163)
  {
    QoSClassFromInstanceUUID = CoreEmbeddedSpeechRecognizerGetQoSClassFromInstanceUUID(v232);
  }

  else
  {
    QoSClassFromInstanceUUID = 0;
  }

  v156 = QoSClassFromInstanceUUID;
  v284 = QoSClassFromInstanceUUID;
  v283 = QoSClassFromInstanceUUID;
  v282 = 0;
  v158 = type metadata accessor for qos_class_t(0);
  v157 = v158;
  v159 = sub_22601E76C();
  if (sub_2260999D8())
  {
    v121 = v165;
  }

  else
  {
    v43 = v220;
    v44 = sub_225F7E9BC();
    v241(v43, v44, v215);
    v145 = 7;
    v146 = swift_allocObject();
    *(v146 + 16) = v156;
    v155 = sub_226098C48();
    v139 = v155;
    v154 = sub_22609A0A8();
    v140 = v154;
    v141 = 17;
    v149 = swift_allocObject();
    v142 = v149;
    *(v149 + 16) = 0;
    v150 = swift_allocObject();
    v143 = v150;
    *(v150 + 16) = 4;
    v144 = 32;
    v45 = swift_allocObject();
    v46 = v146;
    v147 = v45;
    *(v45 + 16) = sub_22601EA34;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v147;
    v153 = v47;
    v148 = v47;
    *(v47 + 16) = sub_22601EA78;
    *(v47 + 24) = v48;
    v151 = sub_22609A4F8();
    v152 = v49;

    v50 = v149;
    v51 = v152;
    *v152 = sub_225EF7434;
    v51[1] = v50;

    v52 = v150;
    v53 = v152;
    v152[2] = sub_225EF7434;
    v53[3] = v52;

    v54 = v152;
    v55 = v153;
    v152[4] = sub_225EF7244;
    v54[5] = v55;
    sub_225EF5418();

    if (os_log_type_enabled(v155, v154))
    {
      v56 = v165;
      v133 = sub_22609A188();
      v129 = v133;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v131 = 0;
      v134 = sub_225EF5468(0, v130, v130);
      v132 = v134;
      v135 = sub_225EF5468(v131, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v278[0] = v133;
      v297 = v134;
      v296 = v135;
      v136 = v278;
      sub_225EF54BC(0, v278);
      sub_225EF54BC(1, v136);
      v276 = sub_225EF7434;
      v277 = v142;
      sub_225EF73E8(&v276, v136, &v297, &v296);
      v137 = v56;
      v138 = v56;
      if (v56)
      {
        v127 = 0;

        __break(1u);
      }

      else
      {
        v276 = sub_225EF7434;
        v277 = v143;
        sub_225EF73E8(&v276, v278, &v297, &v296);
        v125 = 0;
        v126 = 0;
        v276 = sub_225EF7244;
        v277 = v148;
        sub_225EF73E8(&v276, v278, &v297, &v296);
        v123 = 0;
        v124 = 0;
        _os_log_impl(&dword_225EEB000, v139, v140, "ASR: Using QoS class 0x%x.", v129, 8u);
        v122 = 0;
        sub_225EF7AF4(v132, 0, v130);
        sub_225EF7AF4(v135, v122, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v128 = v123;
      }
    }

    else
    {
      v57 = v165;

      v128 = v57;
    }

    v120 = v128;

    v166(v220, v215);
    v121 = v120;
  }

  v114 = v121;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786918, &qword_2260A0868);
  sub_225F819F0();
  sub_225F81A04(v198);
  sub_226099DB8();
  (*(v196 + 8))(v198, v194);
  v116 = *(v208 + 32);
  v117 = (v208 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v116(v213, v211, v206);
  (*(v201 + 32))(v205, v203, v199);
  v118 = v289;
  v301[3] = v199;
  v119 = v301;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v301);
  (*(v201 + 16))(boxed_opaque_existential_0, v205, v199);
  sub_225EF9790(v119, &v118[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__operationEnqueuer]);
  v281 = v156;
  if (sub_2260999D8())
  {
    v59 = sub_226099DA8();
    (*(*(v59 - 8) + 56))(v191, 1);
  }

  else if (v156 > 0xFF)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
    __break(1u);
  }

  else
  {
    sub_226099D88();
    v60 = sub_226099DA8();
    (*(*(v60 - 8) + 56))(v191, 0, 1);
  }

  sub_22601E7EC(v191, v193);
  v107 = v289;
  sub_225EF7BD0(v193, v189);
  v109 = sub_226099DA8();
  v108 = v109;
  v300[3] = v109;
  v110 = __swift_allocate_boxed_opaque_existential_0(v300);
  v111 = *(v109 - 8);
  v112 = *(v111 + 48);
  v113 = (v111 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if ((v112)(v189, 1) == 1)
  {
    sub_226099E68();
    if (v112(v189, 1, v108) != 1)
    {
      sub_225EF7CF8(v189);
    }
  }

  else
  {
    (*(v111 + 32))(v110, v189, v108);
  }

  sub_225EF9790(v300, &v107[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__taskPriority]);
  v106 = v289;
  sub_225EF7BD0(v193, v188);
  v61 = *(v208 + 16);
  v102 = v208 + 16;
  v61(v211, v213, v206);
  v103 = (*(v102 + 64) + 32) & ~*(v102 + 64);
  v62 = swift_allocObject();
  v63 = v103;
  v64 = v211;
  v65 = v206;
  v66 = v116;
  v105 = v62;
  v104 = 0;
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v66(v62 + v63, v64, v65);
  v67 = sub_225F38F2C(v104, v104, v188, &unk_2260A0878, v105, MEMORY[0x277D84F78] + 8);
  v68 = v232;
  *&v106[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_operationDequeuerTask] = v67;
  if (CoreEmbeddedSpeechRecognizerGetIsHighPriorityFromInstanceUUID(v68))
  {
    v69 = v218;
    v70 = sub_225F7E9BC();
    v241(v69, v70, v215);
    v100 = sub_226098C48();
    v97 = v100;
    v99 = sub_22609A0A8();
    v98 = v99;
    v101 = sub_22609A4F8();
    if (os_log_type_enabled(v100, v99))
    {
      v71 = v114;
      v88 = sub_22609A188();
      v84 = v88;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v86 = 0;
      v89 = sub_225EF5468(0, v85, v85);
      v87 = v89;
      v90 = sub_225EF5468(v86, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v279 = v88;
      v298[1] = v89;
      v298[0] = v90;
      v91 = 0;
      v92 = &v279;
      sub_225EF54BC(0, &v279);
      sub_225EF54BC(v91, v92);
      v278[2] = v101;
      v93 = &v76;
      MEMORY[0x28223BE20](&v76);
      v94 = &v76 - 6;
      v75 = v298;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v96 = v71;
      if (v71)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v97, v98, "ASR: Using high priority configuration.", v84, 2u);
        v82 = 0;
        sub_225EF7AF4(v87, 0, v85);
        sub_225EF7AF4(v90, v82, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v83 = v96;
      }
    }

    else
    {

      v83 = v114;
    }

    v80 = v83;

    v166(v218, v215);
    v81 = v80;
  }

  else
  {
    v81 = v114;
  }

  v77 = v289;
  v299[3] = v234;
  v78 = v299;
  v72 = __swift_allocate_boxed_opaque_existential_0(v299);
  (v245)(v72, v237, v234);
  sub_225EF9790(v78, &v77[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__instanceUUID]);
  sub_225EF7CF8(v193);
  (*(v201 + 8))(v205, v199);
  (*(v208 + 8))(v213, v206);
  (*(v236 + 8))(v237, v234);
  v280.receiver = v289;
  v280.super_class = CoreEmbeddedSpeechAnalyzer;
  v79 = objc_msgSendSuper2(&v280, sel_init);
  v73 = v79;
  v289 = v79;
  swift_unknownObjectRelease();

  return v79;
}

uint64_t sub_225F81A04@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85778];
  v1 = sub_226099DC8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_225F81A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[6] = v4;
  v4[7] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D88, &qword_2260A0F90);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[7] = a4;

  return MEMORY[0x2822009F8](sub_225F81B84, 0, 0);
}

uint64_t sub_225F81B84()
{
  *(v0 + 48) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858);
  sub_226099DF8();
  v1 = swift_task_alloc();
  v4[12] = v1;
  *v1 = v4[6];
  v1[1] = sub_225EF5AB4;
  v2 = v4[9];

  return MEMORY[0x2822003E8](v4 + 2, 0, 0, v2);
}

id sub_225F81CB8()
{
  v43 = sub_225F3E198;
  v44 = sub_225F3E1C8;
  v45 = sub_225EF7434;
  v46 = sub_225EF7434;
  v47 = sub_225F3E358;
  v68 = 0;
  v48 = 0;
  v49 = sub_226098C58();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v53 = v17 - v52;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v57 = *(v60 - 8);
  v58 = v60 - 8;
  v54 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v55 = v17 - v54;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v56 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v59 = v17 - v56;
  v68 = v0;
  sub_225EF95B0(v17 - v56);
  if ((*(v57 + 48))(v59, 1, v60) == 0)
  {
    (*(v57 + 16))(v55, v59, v60);
    sub_225EF97AC(v59);
    sub_226099DE8();
    (*(v57 + 8))(v55, v60);
  }

  else
  {
    sub_225EF97AC(v59);
  }

  v41 = &v42[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask];
  swift_beginAccess();
  if (*v41)
  {
    v40 = *v41;

    swift_endAccess();
    sub_226099E38();
  }

  else
  {
    swift_endAccess();
  }

  v2 = v53;
  v26 = *&v42[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_operationDequeuerTask];

  sub_226099E38();

  v3 = sub_225F7E9BC();
  (*(v50 + 16))(v2, v3, v49);
  MEMORY[0x277D82BE0](v42);
  v29 = 7;
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  v38 = sub_226098C48();
  v39 = sub_22609A0A8();
  v27 = 17;
  v32 = swift_allocObject();
  *(v32 + 16) = 64;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v28 = 32;
  v4 = swift_allocObject();
  v5 = v30;
  v31 = v4;
  *(v4 + 16) = v43;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v31;
  v35 = v6;
  *(v6 + 16) = v44;
  *(v6 + 24) = v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v34 = sub_22609A4F8();
  v36 = v8;

  v9 = v32;
  v10 = v36;
  *v36 = v45;
  v10[1] = v9;

  v11 = v33;
  v12 = v36;
  v36[2] = v46;
  v12[3] = v11;

  v13 = v35;
  v14 = v36;
  v36[4] = v47;
  v14[5] = v13;
  sub_225EF5418();

  if (os_log_type_enabled(v38, v39))
  {
    v15 = v48;
    v19 = sub_22609A188();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v20 = sub_225EF5468(1, v18, v18);
    v21 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v22 = &v66;
    v66 = v19;
    v23 = &v65;
    v65 = v20;
    v24 = &v64;
    v64 = v21;
    sub_225EF54BC(2, &v66);
    sub_225EF54BC(1, v22);
    v62 = v45;
    v63 = v32;
    sub_225EF73E8(&v62, v22, v23, v24);
    v25 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v62 = v46;
      v63 = v33;
      sub_225EF73E8(&v62, &v66, &v65, &v64);
      v17[1] = 0;
      v62 = v47;
      v63 = v35;
      sub_225EF73E8(&v62, &v66, &v65, &v64);
      _os_log_impl(&dword_225EEB000, v38, v39, "%@ deinit", v19, 0xCu);
      sub_225EF7AF4(v20, 1, v18);
      sub_225EF7AF4(v21, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v38);
  (*(v50 + 8))(v53, v49);
  v67.receiver = v42;
  v67.super_class = CoreEmbeddedSpeechAnalyzer;
  return objc_msgSendSuper2(&v67, sel_dealloc);
}

uint64_t sub_225F82658()
{
  v2[0] = 0;
  v2[1] = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  result = sub_225F826AC(v2, v0);
  qword_280D76430 = result;
  return result;
}

uint64_t sub_225F826AC(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v11 = a2;
  v6 = *(a2 - 8);
  v7 = a2 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](a1);
  v5 = &v4 - v4;
  (*(v6 + 16))(v2);
  v10 = sub_22601DA84(v5, v8);
  (*(v6 + 8))(v9, v8);
  return v10;
}

uint64_t *sub_225F827A0()
{
  if (qword_280D76428 != -1)
  {
    swift_once();
  }

  return &qword_280D76430;
}

uint64_t sub_225F82800()
{
  v1 = *sub_225F827A0();

  return v1;
}

uint64_t sub_225F82838()
{
  v1 = 0;
  result = sub_225F826AC(&v1, MEMORY[0x277D839B0]);
  qword_27D7867D8 = result;
  return result;
}

uint64_t *sub_225F82870()
{
  if (qword_27D785D80 != -1)
  {
    swift_once();
  }

  return &qword_27D7867D8;
}

uint64_t sub_225F828D0()
{
  v1 = *sub_225F82870();

  return v1;
}

uint64_t sub_225F82908()
{
  v2 = 0;
  v3 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786938, &qword_2260A0898);
  result = sub_225F826AC(&v2, v0);
  qword_280D76460 = result;
  return result;
}

uint64_t *sub_225F8295C()
{
  if (qword_280D76458 != -1)
  {
    swift_once();
  }

  return &qword_280D76460;
}

uint64_t sub_225F829BC()
{
  v1 = *sub_225F8295C();

  return v1;
}

uint64_t sub_225F82A04()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82A6C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225F82AEC()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82B54(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225F82BD4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82C3C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225F82CBC()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225F82D24(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225F82DA4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_225F82E0C(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_enablesVoiceCommands);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225F82E80()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225F82EF4(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v5 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_225F82F94()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225F83008(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v5 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_225F830A8()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_225F83110(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id sub_225F83184()
{
  v7 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  sub_225F4C634();
  v4 = sub_225F26174();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

uint64_t sub_225F832A0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer____lazy_storage___speechProfileConfig);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_225F83338()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
  swift_beginAccess();
  v3 = *v2;
  sub_2260998E8();
  swift_endAccess();
  return v3;
}

uint64_t sub_225F833A0(uint64_t a1)
{
  sub_2260998E8();
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225F83420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786948, &qword_2260A08A0);
  sub_22609A4F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  v2 = sub_2260998A8();
  dword_27D788400 = 0;
  qword_27D788408 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
  return sub_225F1CB40(&v2, &qword_27D788408, v0);
}

int *sub_225F834E0()
{
  if (qword_27D785D90 != -1)
  {
    swift_once();
  }

  return &dword_27D788400;
}

uint64_t sub_225F83540()
{
  v2 = 0;
  dword_27D788410 = 0;
  qword_27D788418 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
  return sub_225F1CB40(&v2, &qword_27D788418, v0);
}

int *sub_225F835AC()
{
  if (qword_27D785D98 != -1)
  {
    swift_once();
  }

  return &dword_27D788410;
}

uint64_t CoreEmbeddedSpeechAnalyzer.preheatSpeechRecognition(with:preheatSource:modelOverrideURL:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v107 = a3;
  v110 = a2;
  v109 = a1;
  ObjectType = swift_getObjectType();
  v135 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v96 = 0;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v98 = *(v97 - 8);
  v99 = v98;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97 - 8);
  v101 = &v57 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v135);
  v106 = &v57 - v105;
  v117 = sub_226098C58();
  v111 = v117;
  v112 = *(v117 - 8);
  v116 = v112;
  v113 = v112;
  v114 = *(v112 + 64);
  MEMORY[0x28223BE20](v109);
  v4 = &v57 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v4;
  v163 = v5;
  v161 = v6;
  v162 = v7;
  v160 = v8;
  v159 = v9;
  v10 = sub_225F7E9BC();
  (*(v116 + 16))(v4, v10, v117);
  v11 = v118;
  v137 = 7;
  v123 = swift_allocObject();
  *(v123 + 16) = v118;
  v153 = sub_226098C48();
  v119 = v153;
  v152 = sub_22609A0A8();
  v120 = v152;
  v131 = 17;
  v140 = swift_allocObject();
  v121 = v140;
  *(v140 + 16) = 64;
  v141 = swift_allocObject();
  v122 = v141;
  v133 = 8;
  *(v141 + 16) = 8;
  v126 = 32;
  v136 = 32;
  v12 = swift_allocObject();
  v13 = v123;
  v124 = v12;
  *(v12 + 16) = sub_225F3E198;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v124;
  v142 = v14;
  v125 = v14;
  *(v14 + 16) = sub_225F3E1C8;
  *(v14 + 24) = v15;
  v143 = swift_allocObject();
  v127 = v143;
  *(v143 + 16) = v126;
  v144 = swift_allocObject();
  v128 = v144;
  *(v144 + 16) = v133;
  v16 = swift_allocObject();
  v17 = v135;
  v129 = v16;
  *(v16 + 16) = sub_225F847B8;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v129;
  v145 = v18;
  v130 = v18;
  *(v18 + 16) = sub_225EF7B84;
  *(v18 + 24) = v19;
  v146 = swift_allocObject();
  v132 = v146;
  *(v146 + 16) = 0;
  v147 = swift_allocObject();
  v134 = v147;
  *(v147 + 16) = v133;
  v20 = swift_allocObject();
  v21 = v135;
  v138 = v20;
  *(v20 + 16) = sub_225F847E8;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v138;
  v150 = v22;
  v139 = v22;
  *(v22 + 16) = sub_225F2D374;
  *(v22 + 24) = v23;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v148 = sub_22609A4F8();
  v149 = v24;

  v25 = v140;
  v26 = v149;
  *v149 = sub_225EF7434;
  v26[1] = v25;

  v27 = v141;
  v28 = v149;
  v149[2] = sub_225EF7434;
  v28[3] = v27;

  v29 = v142;
  v30 = v149;
  v149[4] = sub_225F3E358;
  v30[5] = v29;

  v31 = v143;
  v32 = v149;
  v149[6] = sub_225EF7434;
  v32[7] = v31;

  v33 = v144;
  v34 = v149;
  v149[8] = sub_225EF7434;
  v34[9] = v33;

  v35 = v145;
  v36 = v149;
  v149[10] = sub_225EF7B90;
  v36[11] = v35;

  v37 = v146;
  v38 = v149;
  v149[12] = sub_225EF7434;
  v38[13] = v37;

  v39 = v147;
  v40 = v149;
  v149[14] = sub_225EF7434;
  v40[15] = v39;

  v41 = v149;
  v42 = v150;
  v149[16] = sub_225EF71D0;
  v41[17] = v42;
  sub_225EF5418();

  if (os_log_type_enabled(v153, v152))
  {
    v43 = v96;
    v89 = sub_22609A188();
    v85 = v89;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v87 = 1;
    v90 = sub_225EF5468(1, v86, v86);
    v88 = v90;
    v91 = sub_225EF5468(v87, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v158[0] = v89;
    v157 = v90;
    v156 = v91;
    v92 = v158;
    sub_225EF54BC(2, v158);
    sub_225EF54BC(3, v92);
    v154 = sub_225EF7434;
    v155 = v121;
    sub_225EF73E8(&v154, v92, &v157, &v156);
    v93 = v43;
    v94 = v43;
    if (v43)
    {
      v83 = 0;

      __break(1u);
    }

    else
    {
      v154 = sub_225EF7434;
      v155 = v122;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v81 = 0;
      v82 = 0;
      v154 = sub_225F3E358;
      v155 = v125;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v79 = 0;
      v80 = 0;
      v154 = sub_225EF7434;
      v155 = v127;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v77 = 0;
      v78 = 0;
      v154 = sub_225EF7434;
      v155 = v128;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v75 = 0;
      v76 = 0;
      v154 = sub_225EF7B90;
      v155 = v130;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v73 = 0;
      v74 = 0;
      v154 = sub_225EF7434;
      v155 = v132;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v71 = 0;
      v72 = 0;
      v154 = sub_225EF7434;
      v155 = v134;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v69 = 0;
      v70 = 0;
      v154 = sub_225EF71D0;
      v155 = v139;
      sub_225EF73E8(&v154, v158, &v157, &v156);
      v67 = 0;
      v68 = 0;
      _os_log_impl(&dword_225EEB000, v119, v120, "%@ %s:%ld queue task enqueued", v85, 0x20u);
      v66 = 1;
      sub_225EF7AF4(v88, 1, v86);
      sub_225EF7AF4(v91, v66, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v84 = v67;
    }
  }

  else
  {
    v44 = v96;

    v84 = v44;
  }

  (*(v113 + 8))(v115, v111);
  sub_225EF58A0();
  v45 = v118;
  sub_2260998E8();
  v46 = v109;
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v59 = v57;
  v60 = *(v57 + 64);
  v65 = &v57;
  v58 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108);
  v62 = &v57 - v58;
  sub_22601EA84(v47, &v57 - v58);
  v61 = (*(v59 + 80) + 48) & ~*(v59 + 80);
  v63 = (v61 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v110;
  v50 = v107;
  v51 = v109;
  v52 = v61;
  v53 = v48;
  v54 = v62;
  v64 = v53;
  v53[2] = v118;
  v53[3] = v49;
  v53[4] = v50;
  v53[5] = v51;
  sub_22601EBAC(v54, v53 + v52);
  v55 = v64;
  *&v64[v63] = ObjectType;
  v158[1] = &unk_2260A08D8;
  v158[2] = v55;
  sub_226099DD8();
  (*(v99 + 8))(v101, v97);
  return (*(v104 + 8))(v106, v102);
}

uint64_t sub_225F847F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a5;
  *(v6 + 96) = a4;
  *(v6 + 88) = a3;
  *(v6 + 80) = a2;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 152) = 0;
  v7 = sub_226098C58();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 56) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;

  return MEMORY[0x2822009F8](sub_225F84984, 0, 0);
}

uint64_t sub_225F84984()
{
  v88 = v0;
  v1 = v0[18];
  v58 = v0[16];
  v59 = v0[15];
  v61 = v0[10];
  v0[6] = v0;
  v2 = sub_225F7E9BC();
  v60 = *(v58 + 16);
  v60(v1, v2, v59);
  MEMORY[0x277D82BE0](v61);
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  v76 = sub_226098C48();
  v77 = sub_22609A0A8();
  v66 = swift_allocObject();
  *(v66 + 16) = 64;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225F3E198;
  *(v63 + 24) = v62;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_225F3E1C8;
  *(v68 + 24) = v63;
  v69 = swift_allocObject();
  *(v69 + 16) = 32;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_225F847B8;
  *(v64 + 24) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_225EF7B84;
  *(v71 + 24) = v64;
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_225F860E8;
  *(v65 + 24) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_225F2D374;
  *(v74 + 24) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v75 = v3;

  *v75 = sub_225EF7434;
  v75[1] = v66;

  v75[2] = sub_225EF7434;
  v75[3] = v67;

  v75[4] = sub_225F3E358;
  v75[5] = v68;

  v75[6] = sub_225EF7434;
  v75[7] = v69;

  v75[8] = sub_225EF7434;
  v75[9] = v70;

  v75[10] = sub_225EF7B90;
  v75[11] = v71;

  v75[12] = sub_225EF7434;
  v75[13] = v72;

  v75[14] = sub_225EF7434;
  v75[15] = v73;

  v75[16] = sub_225EF71D0;
  v75[17] = v74;
  sub_225EF5418();

  if (os_log_type_enabled(v76, v77))
  {
    buf = sub_22609A188();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v55 = sub_225EF5468(1, v53, v53);
    v56 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v83 = buf;
    v84 = v55;
    v85 = v56;
    sub_225EF54BC(2, &v83);
    sub_225EF54BC(3, &v83);
    v86 = sub_225EF7434;
    v87 = v66;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v67;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225F3E358;
    v87 = v68;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v69;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v70;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7B90;
    v87 = v71;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v72;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF7434;
    v87 = v73;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    v86 = sub_225EF71D0;
    v87 = v74;
    sub_225EF73E8(&v86, &v83, &v84, &v85);
    _os_log_impl(&dword_225EEB000, v76, v77, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v55, 1, v53);
    sub_225EF7AF4(v56, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v34 = *(v57 + 144);
  v4 = *(v57 + 136);
  v36 = *(v57 + 120);
  v39 = *(v57 + 96);
  v38 = *(v57 + 88);
  v37 = *(v57 + 80);
  v33 = *(v57 + 128);
  MEMORY[0x277D82BD8](v76);
  v35 = *(v33 + 8);
  v35(v34, v36);
  v5 = sub_225F7E9BC();
  v60(v4, v5, v36);
  MEMORY[0x277D82BE0](v37);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  sub_2260998E8();
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  *(v42 + 24) = v39;
  oslog = sub_226098C48();
  v52 = sub_22609A0A8();
  v44 = swift_allocObject();
  *(v44 + 16) = 64;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_225F3E198;
  *(v41 + 24) = v40;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F3E1C8;
  *(v46 + 24) = v41;
  v47 = swift_allocObject();
  *(v47 + 16) = 34;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_22601F3DC;
  *(v43 + 24) = v42;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225EF7B84;
  *(v49 + 24) = v43;
  sub_22609A4F8();
  v50 = v6;

  *v50 = sub_225EF7434;
  v50[1] = v44;

  v50[2] = sub_225EF7434;
  v50[3] = v45;

  v50[4] = sub_225F3E358;
  v50[5] = v46;

  v50[6] = sub_225EF7434;
  v50[7] = v47;

  v50[8] = sub_225EF7434;
  v50[9] = v48;

  v50[10] = sub_225EF7B90;
  v50[11] = v49;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v52))
  {
    v30 = sub_22609A188();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v31 = sub_225EF5468(1, v29, v29);
    v32 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v78 = v30;
    v79 = v31;
    v80 = v32;
    sub_225EF54BC(2, &v78);
    sub_225EF54BC(2, &v78);
    v81 = sub_225EF7434;
    v82 = v44;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v45;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225F3E358;
    v82 = v46;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v47;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7434;
    v82 = v48;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    v81 = sub_225EF7B90;
    v82 = v49;
    sub_225EF73E8(&v81, &v78, &v79, &v80);
    _os_log_impl(&dword_225EEB000, oslog, v52, "%@ Preheat request for %{public}s", v30, 0x16u);
    sub_225EF7AF4(v31, 1, v29);
    sub_225EF7AF4(v32, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v20 = *(v57 + 136);
  v21 = *(v57 + 120);
  v22 = *(v57 + 104);
  v26 = *(v57 + 80);
  MEMORY[0x277D82BD8](oslog);
  v35(v20, v21);
  [v22 assetType];
  v23 = SFEntitledAssetTypeToString();
  v24 = sub_226099A08();
  v25 = v7;
  *(v57 + 32) = v24;
  *(v57 + 40) = v7;
  MEMORY[0x277D82BD8](v23);
  v28 = *sub_225F827A0();

  sub_2260998E8();
  MEMORY[0x277D82BE0](v26);
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v25;
  v27[4] = v26;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226025938, v27, v28, v8, MEMORY[0x277D839B0]);
  v19 = *(v57 + 80);

  MEMORY[0x277D82BD8](v19);

  v9 = *(v57 + 153);
  *(v57 + 152) = v9 & 1;
  if (v9)
  {
    v17 = *(v57 + 112);
    v16 = *(v57 + 96);
    v15 = *(v57 + 88);
    v18 = [*(v57 + 104) language];
    v10 = sub_226099A08();
    sub_225F879F0(v10, v11, v15, v16, v17);

    MEMORY[0x277D82BD8](v18);
  }

  v14 = *(v57 + 80);

  sub_225F860F4(v14);

  v12 = *(*(v57 + 48) + 8);

  return v12();
}

uint64_t sub_225F860F4(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225F847B8;
  v57 = sub_225EF7B84;
  v61 = sub_22601D2A8;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_225F86CC8(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_226099AA8();
    v9 = v2;
  }

  return v8;
}

uint64_t sub_225F86D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v102 = a4;
  v101 = a3;
  v104 = a2;
  v103 = a1;
  v100 = a5;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v105 = sub_226098C58();
  v106 = *(v105 - 8);
  v107 = v106;
  v108 = *(v106 + 64);
  MEMORY[0x28223BE20](v103);
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = &v35 - v110;
  MEMORY[0x28223BE20](v5);
  v111 = &v35 - v110;
  v127 = v6;
  v125 = v7;
  v126 = v8;
  v124 = v9;
  v112 = *v6;
  v10 = v112;
  v123 = v112;
  v98 = v112 == 0;
  v97 = v98;
  sub_225EFE834(&v123);
  if (v97)
  {
    v96 = *(v103 + 8);
    v11 = v96;
    v117 = v96;
    v95 = v96 == 0;
    v94 = v95;
    sub_225EFE834(&v117);
    if (v94)
    {
      v12 = v102;
      v13 = *(v103 + 8);
      *(v103 + 8) = v102;

      result = v99;
      *v100 = 1;
      v93 = result;
    }

    else
    {
      v15 = v111;
      v16 = sub_225F7E9BC();
      (*(v107 + 16))(v15, v16, v105);
      v91 = sub_226098C48();
      v88 = v91;
      v90 = sub_22609A0A8();
      v89 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v92 = sub_22609A4F8();
      if (os_log_type_enabled(v91, v90))
      {
        v86 = v99;
        v78 = sub_22609A188();
        v74 = v78;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v76 = 0;
        v79 = sub_225EF5468(0, v75, v75);
        v77 = v79;
        v80 = sub_225EF5468(v76, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v116 = v78;
        v115 = v79;
        v114 = v80;
        v81 = 0;
        v82 = &v116;
        sub_225EF54BC(0, &v116);
        sub_225EF54BC(v81, v82);
        v113 = v92;
        v83 = &v35;
        MEMORY[0x28223BE20](&v35);
        v84 = &v35 - 6;
        *(&v35 - 4) = v17;
        *(&v35 - 3) = &v115;
        *(&v35 - 2) = &v114;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        v18 = v86;
        sub_226099C28();
        v87 = v18;
        if (v18)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v88, v89, "Preheat request dismissed because preheating in progress", v74, 2u);
          v72 = 0;
          sub_225EF7AF4(v77, 0, v75);
          sub_225EF7AF4(v80, v72, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v73 = v87;
        }
      }

      else
      {

        v73 = v99;
      }

      v71 = v73;

      (*(v107 + 8))(v111, v105);
      result = v71;
      *v100 = 0;
      v93 = result;
    }
  }

  else
  {
    v19 = v109;
    v20 = sub_225F7E9BC();
    (*(v107 + 16))(v19, v20, v105);
    sub_2260998E8();
    v58 = 32;
    v59 = 7;
    v21 = swift_allocObject();
    v22 = v101;
    v60 = v21;
    *(v21 + 16) = v104;
    *(v21 + 24) = v22;
    v70 = sub_226098C48();
    v53 = v70;
    v69 = sub_22609A0A8();
    v54 = v69;
    v55 = 17;
    v63 = swift_allocObject();
    v56 = v63;
    *(v63 + 16) = 34;
    v64 = swift_allocObject();
    v57 = v64;
    *(v64 + 16) = 8;
    v23 = swift_allocObject();
    v24 = v60;
    v61 = v23;
    *(v23 + 16) = sub_225EF7450;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v61;
    v67 = v25;
    v62 = v25;
    *(v25 + 16) = sub_225EF7B84;
    *(v25 + 24) = v26;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v65 = sub_22609A4F8();
    v66 = v27;

    v28 = v63;
    v29 = v66;
    *v66 = sub_225EF7434;
    v29[1] = v28;

    v30 = v64;
    v31 = v66;
    v66[2] = sub_225EF7434;
    v31[3] = v30;

    v32 = v66;
    v33 = v67;
    v66[4] = sub_225EF7B90;
    v32[5] = v33;
    sub_225EF5418();

    if (os_log_type_enabled(v70, v69))
    {
      v50 = v99;
      v45 = sub_22609A188();
      v42 = v45;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v46 = sub_225EF5468(0, v43, v43);
      v44 = v46;
      v48 = 1;
      v47 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v122 = v45;
      v121 = v46;
      v120 = v47;
      v49 = &v122;
      sub_225EF54BC(2, &v122);
      sub_225EF54BC(v48, v49);
      v34 = v50;
      v118 = sub_225EF7434;
      v119 = v56;
      sub_225EF73E8(&v118, v49, &v121, &v120);
      v51 = v34;
      v52 = v34;
      if (v34)
      {
        v40 = 0;

        __break(1u);
      }

      else
      {
        v118 = sub_225EF7434;
        v119 = v57;
        sub_225EF73E8(&v118, &v122, &v121, &v120);
        v38 = 0;
        v39 = 0;
        v118 = sub_225EF7B90;
        v119 = v62;
        sub_225EF73E8(&v118, &v122, &v121, &v120);
        v36 = 0;
        v37 = 0;
        _os_log_impl(&dword_225EEB000, v53, v54, "Preheat request for %{public}s dismissed because recognition in progress", v42, 0xCu);
        sub_225EF7AF4(v44, 0, v43);
        sub_225EF7AF4(v47, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v41 = v36;
      }
    }

    else
    {

      v41 = v99;
    }

    v35 = v41;

    (*(v107 + 8))(v109, v105);
    result = v35;
    *v100 = 0;
  }

  return result;
}

uint64_t sub_225F879F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v190 = a5;
  v204 = a4;
  v203 = a3;
  v192 = a2;
  v191 = a1;
  ObjectType = swift_getObjectType();
  v187 = 0;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v226 = 0;
  v225 = 0;
  v165 = 0;
  v218 = 0;
  v217 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v166 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v167 = &v82 - v166;
  v168 = sub_226099DA8();
  v169 = *(v168 - 8);
  v170 = v169;
  v172 = *(v169 + 64);
  v171 = v172;
  MEMORY[0x28223BE20](v168 - 8);
  v174 = (v172 + 15) & 0xFFFFFFFFFFFFFFF0;
  v173 = &v82 - v174;
  MEMORY[0x28223BE20](&v82 - v174);
  v175 = &v82 - v174;
  v247 = &v82 - v174;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786980, &qword_2260A08E0);
  v177 = (*(*(v176 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v187);
  v178 = &v82 - v177;
  v179 = sub_226099808();
  v180 = *(v179 - 8);
  v181 = v180;
  v183 = *(v180 + 64);
  v182 = v183;
  MEMORY[0x28223BE20](v179 - 8);
  v185 = (v183 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = &v82 - v185;
  MEMORY[0x28223BE20](&v82 - v185);
  v186 = &v82 - v185;
  v246 = &v82 - v185;
  v188 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786988, &qword_2260A08E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v187);
  v189 = &v82 - v188;
  v193 = sub_226098DD8();
  v194 = *(v193 - 8);
  v195 = v194;
  v197 = *(v194 + 64);
  v196 = v197;
  MEMORY[0x28223BE20](v191);
  v199 = (v197 + 15) & 0xFFFFFFFFFFFFFFF0;
  v198 = &v82 - v199;
  MEMORY[0x28223BE20](v6);
  v200 = &v82 - v199;
  v245 = &v82 - v199;
  v243 = v7;
  v244 = v8;
  v241 = v9;
  v242 = v10;
  v240 = v11;
  v239 = v5;
  v12 = sub_225F7F1AC();
  v201 = *v12;
  v202 = v12[1];
  sub_2260998E8();
  sub_2260998E8();
  v235 = v203;
  v236 = v204;
  if (v204)
  {
    v237 = v235;
    v238 = v236;
  }

  else
  {
    v237 = sub_226099AA8();
    v238 = v13;
    if (v236)
    {
      sub_225EFE6BC(&v235);
    }
  }

  v160 = v237;
  v161 = v238;
  v162 = 0;
  v14 = sub_226098D98();
  (*(*(v14 - 8) + 56))(v189, 1);
  sub_226098DA8();
  if (!v204)
  {
    goto LABEL_20;
  }

  sub_2260998E8();
  v153 = @"Assistant";
  v15 = @"Assistant";
  v154 = v153;
  v156 = sub_226099A08();
  v157 = v16;
  v155 = v16;
  sub_2260998E8();
  v234[0] = v203;
  v234[1] = v204;
  v158 = &v231;
  v159 = v233;
  v231 = v156;
  v232 = v157;
  sub_225F4C5E0(v234, v233);
  if (v232)
  {
    sub_225F4C5E0(v158, v206);
    if (v159[1])
    {
      v205 = *v159;
      v151 = MEMORY[0x22AA72BD0](v206[0], v206[1], v205, *(&v205 + 1));
      sub_225EFE6BC(&v205);
      sub_225EFE6BC(v206);
      sub_225EFE6BC(v158);
      v152 = v151;
      goto LABEL_15;
    }

    sub_225EFE6BC(v206);
    goto LABEL_17;
  }

  if (v159[1])
  {
LABEL_17:
    sub_225F4C1C0(&v231);
    v152 = 0;
    goto LABEL_15;
  }

  sub_225EFE6BC(v158);
  v152 = 1;
LABEL_15:
  v150 = v152;

  if (v150)
  {

LABEL_20:
    v148 = &v178[*(v176 + 48)];
    (*(v181 + 104))();
    v149 = @"SearchOrMessaging";
    v17 = @"SearchOrMessaging";
    v18 = sub_226099A08();
    v19 = v148;
    v20 = v149;
    *v148 = v18;
    v19[1] = v21;

    goto LABEL_32;
  }

  sub_2260998E8();
  v141 = @"Dictation";
  v22 = @"Dictation";
  v142 = v141;
  v144 = sub_226099A08();
  v145 = v23;
  v143 = v23;
  sub_2260998E8();
  v230[0] = v203;
  v230[1] = v204;
  v146 = &v227;
  v147 = v229;
  v227 = v144;
  v228 = v145;
  sub_225F4C5E0(v230, v229);
  if (v228)
  {
    sub_225F4C5E0(v146, v208);
    if (v147[1])
    {
      v207 = *v147;
      v139 = MEMORY[0x22AA72BD0](v208[0], v208[1], v207, *(&v207 + 1));
      sub_225EFE6BC(&v207);
      sub_225EFE6BC(v208);
      sub_225EFE6BC(v146);
      v140 = v139;
      goto LABEL_27;
    }

    sub_225EFE6BC(v208);
    goto LABEL_29;
  }

  if (v147[1])
  {
LABEL_29:
    sub_225F4C1C0(&v227);
    v140 = 0;
    goto LABEL_27;
  }

  sub_225EFE6BC(v146);
  v140 = 1;
LABEL_27:
  v138 = v140;

  if (v138)
  {

    v136 = &v178[*(v176 + 48)];
    (*(v181 + 104))();
    v137 = @"Dictation";
    v24 = @"Dictation";
    v25 = sub_226099A08();
    v26 = v136;
    v27 = v137;
    *v136 = v25;
    v26[1] = v28;
  }

  else
  {

    v135 = &v178[*(v176 + 48)];
    (*(v181 + 104))();
    v29 = sub_226099AA8();
    v30 = v135;
    *v135 = v29;
    v30[1] = v31;
  }

LABEL_32:
  v32 = v165;
  v33 = &v178[*(v176 + 48)];
  v131 = *v33;
  v127 = v131;
  v132 = *(v33 + 1);
  v128 = v132;
  v129 = *(v181 + 32);
  v130 = (v181 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v129(v186);
  v225 = v131;
  v226 = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
  sub_225F25E38(sub_225F89FD8, 0, v133, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v34, &v221);
  v134 = v32;
  if (v32)
  {
    __break(1u);
LABEL_45:
    result = 0;
    __break(1u);
    return result;
  }

  v219 = v221;
  v220 = v222;
  if (v222)
  {
    v223 = v219;
    v224 = v220;
  }

  else
  {
    v223 = sub_226099AA8();
    v224 = v35;
    if (v220)
    {
      sub_225EFE6BC(&v219);
    }
  }

  v36 = v134;
  v123 = v223;
  v124 = v224;
  v217 = v223;
  v218 = v224;
  v126 = *sub_225F8295C();
  v125 = v126;

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786938, &qword_2260A0898);
  sub_225F8798C(sub_225F8A0F4, 0, v126, v37, v37);
  if (v36)
  {
    goto LABEL_45;
  }

  v117 = v215;
  v118 = v216;
  v213 = v215;
  v214 = v216;
  sub_225F7FA28();
  v121 = [objc_opt_self() sharedInstance];
  sub_2260998E8();
  v119 = sub_2260999F8();

  v122 = [v121 lastUsedGeoLMRegionIdForLanguage_];
  v120 = v122;

  if (v122)
  {
    v116 = v120;
    v111 = v120;
    v112 = sub_226099A08();
    v113 = v38;

    v114 = v112;
    v115 = v113;
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v110 = v115;
  v91 = v114;
  v211 = v114;
  v212 = v115;
  v103 = *(v170 + 16);
  v102 = v170 + 16;
  v103(v167, v175, v168);
  v107 = *(v170 + 56);
  v106 = v170 + 56;
  v104 = 0;
  v105 = 1;
  v107(v167);
  v39 = v163;
  sub_2260998E8();
  (*(v181 + 16))(v184, v186, v179);
  v83 = *(v133 - 8);
  v84 = v83;
  v85 = *(v83 + 64);
  v98 = &v82;
  MEMORY[0x28223BE20](v190);
  v88 = &v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22601EA84(v41, v88);
  sub_2260998E8();
  sub_2260998E8();
  (*(v195 + 16))(v198, v200, v193);
  v103(v173, v175, v168);
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  v86 = (*(v181 + 80) + 56) & ~*(v181 + 80);
  v87 = (v86 + v182 + *(v84 + 80)) & ~*(v84 + 80);
  v89 = (v87 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = v89 + 16;
  v92 = (v89 + 16 + *(v195 + 80) + 16) & ~*(v195 + 80);
  v93 = (v92 + v196 + *(v170 + 80)) & ~*(v170 + 80);
  v94 = (v93 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v191;
  v44 = v192;
  v45 = v86;
  v46 = v184;
  v47 = v129;
  v48 = v163;
  v49 = v179;
  v99 = v42;
  v108 = 0;
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v48;
  v42[5] = v43;
  v42[6] = v44;
  v47(v42 + v45, v46, v49);
  sub_22601EBAC(v88, v99 + v87);
  v50 = v118;
  v51 = v90;
  v52 = v91;
  v53 = v92;
  v54 = v198;
  v55 = v110;
  v56 = v195;
  v57 = v193;
  v58 = v99;
  v59 = v99 + v89;
  *v59 = v117;
  v59[8] = v50;
  v60 = (v58 + v51);
  *v60 = v52;
  v60[1] = v55;
  (*(v56 + 32))(v58 + v53, v54, v57);
  (*(v170 + 32))(v99 + v93, v173, v168);
  v61 = v95;
  v62 = v203;
  v63 = v204;
  v64 = v96;
  v65 = v123;
  v66 = v97;
  v67 = v99;
  v68 = ObjectType;
  v69 = v124;
  v70 = v128;
  v71 = (v99 + v94);
  *v71 = v127;
  v71[1] = v70;
  v72 = (v67 + v61);
  *v72 = v62;
  v72[1] = v63;
  v73 = (v67 + v64);
  *v73 = v65;
  v73[1] = v69;
  *(v67 + v66) = v68;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
  v109 = sub_225F38F2C(v108, v108, v167, &unk_2260A08F8, v99, v74);
  v210 = v109;

  v100 = &v163[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask];
  v101 = &v209;
  swift_beginAccess();
  *v100 = v109;

  swift_endAccess();
  v103(v167, v175, v168);
  (v107)(v167, v104, v105, v168);
  v75 = v163;
  v76 = swift_allocObject();
  v77 = v163;
  v78 = ObjectType;
  v79 = v108;
  v80 = v167;
  v76[2] = v108;
  v76[3] = v79;
  v76[4] = v77;
  v76[5] = v78;
  sub_225F38F2C(v79, v79, v80, &unk_2260A0910, v76, MEMORY[0x277D84F78] + 8);

  (*(v170 + 8))(v175, v168);

  (*(v181 + 8))(v186, v179);
  return (*(v195 + 8))(v200, v193);
}

void sub_225F88E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v84 = a4;
  v83 = a3;
  v74 = a2;
  v73 = a1;
  v70 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v71 = 0;
  v117 = 0;
  v81 = sub_226098C58();
  v75 = v81;
  v76 = *(v81 - 8);
  v80 = v76;
  v77 = v76;
  v78 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  v5 = v43 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v5;
  v123 = v6;
  v124 = v7;
  v121 = v8;
  v122 = v9;
  v120 = v10;
  v119 = v11;
  v12 = sub_225F7E9BC();
  (*(v80 + 16))(v5, v12, v81);
  v13 = v82;
  v97 = 7;
  v89 = swift_allocObject();
  *(v89 + 16) = v82;
  sub_2260998E8();
  v96 = 32;
  v14 = swift_allocObject();
  v15 = v84;
  v98 = v14;
  *(v14 + 16) = v83;
  *(v14 + 24) = v15;
  v111 = sub_226098C48();
  v85 = v111;
  v110 = sub_22609A0A8();
  v86 = v110;
  v92 = 17;
  v101 = swift_allocObject();
  v87 = v101;
  *(v101 + 16) = 64;
  v102 = swift_allocObject();
  v88 = v102;
  v94 = 8;
  *(v102 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v89;
  v90 = v16;
  *(v16 + 16) = sub_225F3E198;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v90;
  v103 = v18;
  v91 = v18;
  *(v18 + 16) = sub_225F3E1C8;
  *(v18 + 24) = v19;
  v104 = swift_allocObject();
  v93 = v104;
  *(v104 + 16) = 34;
  v105 = swift_allocObject();
  v95 = v105;
  *(v105 + 16) = v94;
  v20 = swift_allocObject();
  v21 = v98;
  v99 = v20;
  *(v20 + 16) = sub_22601F3DC;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v99;
  v108 = v22;
  v100 = v22;
  *(v22 + 16) = sub_225EF7B84;
  *(v22 + 24) = v23;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v106 = sub_22609A4F8();
  v107 = v24;

  v25 = v101;
  v26 = v107;
  *v107 = sub_225EF7434;
  v26[1] = v25;

  v27 = v102;
  v28 = v107;
  v107[2] = sub_225EF7434;
  v28[3] = v27;

  v29 = v103;
  v30 = v107;
  v107[4] = sub_225F3E358;
  v30[5] = v29;

  v31 = v104;
  v32 = v107;
  v107[6] = sub_225EF7434;
  v32[7] = v31;

  v33 = v105;
  v34 = v107;
  v107[8] = sub_225EF7434;
  v34[9] = v33;

  v35 = v107;
  v36 = v108;
  v107[10] = sub_225EF7B90;
  v35[11] = v36;
  sub_225EF5418();

  if (os_log_type_enabled(v111, v110))
  {
    v37 = v71;
    v63 = sub_22609A188();
    v59 = v63;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v61 = 1;
    v64 = sub_225EF5468(1, v60, v60);
    v62 = v64;
    v65 = sub_225EF5468(v61, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v116 = v63;
    v115 = v64;
    v114 = v65;
    v66 = 2;
    v67 = &v116;
    sub_225EF54BC(2, &v116);
    sub_225EF54BC(v66, v67);
    v112 = sub_225EF7434;
    v113 = v87;
    sub_225EF73E8(&v112, v67, &v115, &v114);
    v68 = v37;
    v69 = v37;
    if (v37)
    {
      v57 = 0;

      __break(1u);
    }

    else
    {
      v112 = sub_225EF7434;
      v113 = v88;
      sub_225EF73E8(&v112, &v116, &v115, &v114);
      v55 = 0;
      v56 = 0;
      v112 = sub_225F3E358;
      v113 = v91;
      sub_225EF73E8(&v112, &v116, &v115, &v114);
      v53 = 0;
      v54 = 0;
      v112 = sub_225EF7434;
      v113 = v93;
      sub_225EF73E8(&v112, &v116, &v115, &v114);
      v51 = 0;
      v52 = 0;
      v112 = sub_225EF7434;
      v113 = v95;
      sub_225EF73E8(&v112, &v116, &v115, &v114);
      v49 = 0;
      v50 = 0;
      v112 = sub_225EF7B90;
      v113 = v100;
      sub_225EF73E8(&v112, &v116, &v115, &v114);
      v47 = 0;
      v48 = 0;
      _os_log_impl(&dword_225EEB000, v85, v86, "%@ Early preheat for %{public}s", v59, 0x16u);
      v46 = 1;
      sub_225EF7AF4(v62, 1, v60);
      sub_225EF7AF4(v65, v46, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v58 = v47;
    }
  }

  else
  {
    v38 = v71;

    v58 = v38;
  }

  v39 = v58;

  (*(v77 + 8))(v79, v75);
  v45 = *sub_225F827A0();
  v43[0] = v45;

  v40 = v82;
  v43[1] = v43;
  MEMORY[0x28223BE20](v43);
  v44 = &v43[-4];
  v43[-2] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_22601F3E8, v44, v45, v42, MEMORY[0x277D839B0]);
  if (v39)
  {

    __break(1u);
  }

  else
  {

    v117 = v118;
    if (v118 == 1)
    {
      sub_225F879F0(v73, v74, v83, v84, v72);
    }
  }
}

uint64_t sub_225F89AD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v48 = a2;
  v47 = a1;
  v46 = a3;
  v60 = 0;
  v59 = 0;
  v49 = sub_226098C58();
  v50 = *(v49 - 8);
  v51 = v50;
  MEMORY[0x28223BE20](v47);
  v52 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v4;
  v59 = v5;
  v53 = *v4;
  v6 = v53;
  v58 = v53;
  v44 = v53 == 0;
  v43 = v44;
  sub_225EFE834(&v58);
  if (v43)
  {
    v42 = *(v47 + 8);
    v7 = v42;
    v54[0] = v42;
    v41 = v42 == 0;
    v39 = v41;
    sub_225EFE834(v54);
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    v8 = v48;
    v9 = *(v47 + 8);
    *(v47 + 8) = v48;

    result = v45;
    *v46 = 1;
    v38 = result;
  }

  else
  {
    v11 = v52;
    v12 = sub_225F7E9BC();
    (*(v51 + 16))(v11, v12, v49);
    v36 = sub_226098C48();
    v33 = v36;
    v35 = sub_22609A0A8();
    v34 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v37 = sub_22609A4F8();
    if (os_log_type_enabled(v36, v35))
    {
      v31 = v45;
      v23 = sub_22609A188();
      v19 = v23;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v21 = 0;
      v24 = sub_225EF5468(0, v20, v20);
      v22 = v24;
      v25 = sub_225EF5468(v21, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v57 = v23;
      v56 = v24;
      v55 = v25;
      v26 = 0;
      v27 = &v57;
      sub_225EF54BC(0, &v57);
      sub_225EF54BC(v26, v27);
      v54[1] = v37;
      v28 = &v15;
      MEMORY[0x28223BE20](&v15);
      v29 = &v15 - 6;
      *(&v15 - 4) = v13;
      *(&v15 - 3) = &v56;
      *(&v15 - 2) = &v55;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      v14 = v31;
      sub_226099C28();
      v32 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v33, v34, "Early preheat skipped because recognition or preheating in progress", v19, 2u);
        v17 = 0;
        sub_225EF7AF4(v22, 0, v20);
        sub_225EF7AF4(v25, v17, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v18 = v32;
      }
    }

    else
    {

      v18 = v45;
    }

    v16 = v18;

    (*(v51 + 8))(v52, v49);
    result = v16;
    *v46 = 0;
  }

  return result;
}

uint64_t sub_225F89FD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9[2] = a1;
  v9[0] = sub_22609A4E8();
  v9[1] = v3;
  v4 = sub_226099AA8();
  MEMORY[0x22AA735F0](v4);

  sub_226098948();
  sub_22601FD5C();
  sub_22609A4B8();
  v5 = sub_226099AA8();
  MEMORY[0x22AA735F0](v5);

  sub_2260998E8();
  sub_225EFE6BC(v9);
  result = sub_226099A88();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_225F8A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v30;
  *(v8 + 472) = v29;
  *(v8 + 464) = v28;
  *(v8 + 456) = v27;
  *(v8 + 448) = v26;
  *(v8 + 440) = v25;
  *(v8 + 432) = v24;
  *(v8 + 424) = v23;
  *(v8 + 416) = v22;
  *(v8 + 408) = v21;
  *(v8 + 400) = v20;
  *(v8 + 185) = v19;
  *(v8 + 392) = v18;
  *(v8 + 384) = a8;
  *(v8 + 376) = a7;
  *(v8 + 368) = a6;
  *(v8 + 360) = a5;
  *(v8 + 352) = a4;
  *(v8 + 344) = a1;
  *(v8 + 208) = v8;
  *(v8 + 216) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 224) = 0;
  *(v8 + 232) = 0;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 240) = 0;
  *(v8 + 248) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 256) = 0;
  *(v8 + 272) = 0;
  *(v8 + 312) = 0;
  *(v8 + 736) = 0;
  *(v8 + 744) = 0;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 752) = 0;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 320) = 0;
  *(v8 + 328) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  v13 = sub_2260997E8();
  *(v8 + 488) = v13;
  *(v8 + 496) = *(v13 - 8);
  *(v8 + 504) = swift_task_alloc();
  v14 = sub_226098C58();
  *(v8 + 512) = v14;
  *(v8 + 520) = *(v14 - 8);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 216) = a4;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 176) = v18;
  *(v8 + 184) = v19;
  *(v8 + 32) = v20;
  *(v8 + 40) = v21;
  *(v8 + 240) = v22;
  *(v8 + 248) = v23;
  *(v8 + 48) = v24;
  *(v8 + 56) = v25;
  *(v8 + 64) = v26;
  *(v8 + 72) = v27;
  *(v8 + 80) = v28;
  *(v8 + 88) = v29;

  return MEMORY[0x2822009F8](sub_225F8A4E0, 0, 0);
}

uint64_t sub_225F8A4E0()
{
  v40 = v0;
  v1 = v0[68];
  v24 = v0[65];
  v25 = v0[64];
  v26 = v0[44];
  v0[26] = v0;
  v2 = sub_225F7E9BC();
  v3 = *(v24 + 16);
  v0[69] = v3;
  v0[70] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v25);
  MEMORY[0x277D82BE0](v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v33 = sub_226098C48();
  v34 = sub_22609A0A8();
  v29 = swift_allocObject();
  *(v29 + 16) = 64;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225F3E198;
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F3E1C8;
  *(v31 + 24) = v28;
  v0[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v32 = v4;

  *v32 = sub_225EF7434;
  v32[1] = v29;

  v32[2] = sub_225EF7434;
  v32[3] = v30;

  v32[4] = sub_225F3E358;
  v32[5] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v33, v34))
  {
    buf = sub_22609A188();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v21 = sub_225EF5468(1, v19, v19);
    v22 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = buf;
    v36 = v21;
    v37 = v22;
    sub_225EF54BC(2, &v35);
    sub_225EF54BC(1, &v35);
    v38 = sub_225EF7434;
    v39 = v29;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225EF7434;
    v39 = v30;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    v38 = sub_225F3E358;
    v39 = v31;
    sub_225EF73E8(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_225EEB000, v33, v34, "%@ Starting preheat", buf, 0xCu);
    sub_225EF7AF4(v21, 1, v19);
    sub_225EF7AF4(v22, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v16 = v23[68];
  v17 = v23[64];
  v15 = v23[65];
  MEMORY[0x277D82BD8](v33);
  v5 = *(v15 + 8);
  v23[72] = v5;
  v23[73] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v16, v17);
  sub_226025608();
  v23[32] = sub_22609A4F8();
  v18 = AFAnalyticsEventCreateCurrent();
  if (!v18)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 318, 0);
  }

  v23[33] = v18;
  v23[74] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D78, &qword_2260A0F80);
  sub_226099CE8();
  v6 = sub_226098AB8();
  v23[75] = v6;
  v23[76] = *(v6 - 8);
  v14 = swift_task_alloc();
  v23[77] = v14;
  v7 = swift_task_alloc();
  v23[78] = v7;
  *v7 = v23[26];
  v7[1] = sub_225F8AE8C;
  v8 = v23[63];
  v9 = v23[48];
  v10 = v23[47];
  v11 = v23[46];
  v12 = v23[45];

  return sub_225F940CC(v14, v8, v12, v11, v10, v9);
}

uint64_t sub_225F8AE8C(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[79] = a1;
  v5[80] = v1;

  if (v1)
  {
    v3 = sub_225F8E190;
  }

  else
  {
    v3 = sub_225F8AFFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225F8AFFC()
{
  v1 = v0[79];
  v48 = v0[49];
  v0[26] = v0;
  MEMORY[0x277D82BD8](v1);
  sub_2260998E8();
  if (v48)
  {
    v45 = *(v47 + 392);
    sub_2260998E8();

    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  *(v47 + 288) = v46;
  sub_2260998E8();
  if (*(v47 + 288))
  {
    v49 = *(v47 + 288);
LABEL_20:
    v35 = *(v47 + 392);

    *(v47 + 648) = v49;
    *(v47 + 312) = v49;
    sub_2260998E8();
    if (v35)
    {
      v33 = *(v47 + 185);

      v34 = v33 & 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 == 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = v34;
    }

    v23 = *(v47 + 616);
    v21 = *(v47 + 408);
    v20 = *(v47 + 400);
    v22 = *(v47 + 384);
    v19 = *(v47 + 376);
    *(v47 + 736) = v32 & 1;
    v5 = sub_225F95208();
    *(v47 + 744) = v5 & 1;
    v27 = sub_225F9539C(v23, v19, v32 & 1, v20, v21, v22, v49, v5 & 1);
    v28 = v6;
    *(v47 + 656) = v27;
    *(v47 + 664) = v6;
    *(v47 + 112) = v27;
    *(v47 + 120) = v6;
    v24 = [objc_opt_self() isDictationVoiceCommandsEnabled];
    *(v47 + 752) = v24 & 1;

    v31 = sub_225F958E8(v24, v27, v28);
    v30 = v7;
    *(v47 + 672) = v31;
    *(v47 + 680) = v7;

    *(v47 + 128) = v31;
    *(v47 + 136) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D8, &unk_2260A0960);
    sub_22609A4F8();
    v26 = v8;

    v25 = sub_226025354();
    *v26 = v27;
    v26[1] = v25;

    v26[2] = v28;
    v26[3] = v25;
    sub_225EF5418();
    v29 = v9;

    *(v47 + 320) = v29;
    sub_22601FDE0(v31);
    if (v31)
    {
      *(v47 + 160) = v31;
      *(v47 + 168) = v30;
      sub_22609A4F8();
      v18 = v10;

      v17 = sub_22602566C();
      *v18 = v31;
      v18[1] = v17;

      v18[2] = v30;
      v18[3] = v17;
      sub_225EF5418();

      sub_226099CC8();
    }

    v15 = *(v47 + 440);
    sub_2260998E8();
    v16 = *(v47 + 320);
    *(v47 + 688) = v16;
    sub_2260998E8();

    v11 = swift_task_alloc();
    *(v47 + 696) = v11;
    *v11 = *(v47 + 208);
    v11[1] = sub_225F8BE74;
    v12 = *(v47 + 432);
    v13 = *(v47 + 424);
    v14 = *(v47 + 416);

    return sub_225F959EC(v14, v13, v12, v15, v16, v27, v28, 0);
  }

  v42 = objc_opt_self();
  sub_2260998E8();
  v43 = sub_2260999F8();

  v44 = [v42 speechProfilePathsWithLanguage_];
  MEMORY[0x277D82BD8](v43);
  if (v44)
  {
    v40 = sub_226099C88();
    MEMORY[0x277D82BD8](v44);
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (!v41)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 324, 0);
  }

  v2 = *(v47 + 640);
  *(v47 + 296) = v41;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v37 = sub_226098948();
  v3 = sub_225F156F8();
  result = sub_225F15970(sub_225F951C4, 0, v36, v37, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v38);
  v39 = result;
  if (!v2)
  {
    sub_225EFE6E8((v47 + 296));
    *(v47 + 304) = v39;
    if (*(v47 + 304))
    {
      v49 = *(v47 + 304);
    }

    else
    {
      v49 = sub_22609A4F8();
      if (*(v47 + 304))
      {
        sub_225EFE6E8((v47 + 304));
      }
    }

    if (*(v47 + 288))
    {
      sub_225EFE6E8((v47 + 288));
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_225F8BE74(uint64_t a1)
{
  v6 = *v2;
  v6[26] = *v2;
  v6[88] = a1;
  v6[89] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225F900AC, 0, 0);
  }

  else
  {

    v6[41] = a1;
    v3 = swift_task_alloc();
    v6[90] = v3;
    *v3 = v6[26];
    v3[1] = sub_225F8C154;

    return MEMORY[0x28212BBC0]();
  }
}

uint64_t sub_225F8C154()
{
  v4 = *v1;
  *(v4 + 208) = *v1;
  *(v4 + 728) = v0;

  if (v0)
  {
    v2 = sub_225F920CC;
  }

  else
  {
    v2 = sub_225F8C2BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F8C2BC()
{
  v76 = v0;
  v33 = v0[69];
  v1 = v0[67];
  v32 = v0[64];
  v42 = v0[59];
  v41 = v0[58];
  v38 = v0[57];
  v37 = v0[56];
  v40 = v0[51];
  v39 = v0[50];
  v36 = v0[46];
  v35 = v0[45];
  v34 = v0[44];
  v0[26] = v0;
  v2 = sub_225F7E9BC();
  v33(v1, v2, v32);
  MEMORY[0x277D82BE0](v34);
  v43 = swift_allocObject();
  *(v43 + 16) = v34;
  sub_2260998E8();
  v45 = swift_allocObject();
  *(v45 + 16) = v35;
  *(v45 + 24) = v36;
  sub_2260998E8();
  v47 = swift_allocObject();
  *(v47 + 16) = v37;
  *(v47 + 24) = v38;
  sub_2260998E8();
  v49 = swift_allocObject();
  *(v49 + 16) = v39;
  *(v49 + 24) = v40;
  sub_2260998E8();
  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  *(v51 + 24) = v42;
  v69 = sub_226098C48();
  v70 = sub_22609A0A8();
  v53 = swift_allocObject();
  *(v53 + 16) = 64;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225F3E198;
  *(v44 + 24) = v43;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_225F3E1C8;
  *(v55 + 24) = v44;
  v56 = swift_allocObject();
  *(v56 + 16) = 34;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225EF7450;
  *(v46 + 24) = v45;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_225EF7B84;
  *(v58 + 24) = v46;
  v59 = swift_allocObject();
  *(v59 + 16) = 34;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_225F7CF1C;
  *(v48 + 24) = v47;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_225EF7B84;
  *(v61 + 24) = v48;
  v62 = swift_allocObject();
  *(v62 + 16) = 33;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_225F7CF1C;
  *(v50 + 24) = v49;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_225EF7B84;
  *(v64 + 24) = v50;
  v65 = swift_allocObject();
  *(v65 + 16) = 34;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225EF7450;
  *(v52 + 24) = v51;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_225EF7B84;
  *(v67 + 24) = v52;
  sub_22609A4F8();
  v68 = v3;

  *v68 = sub_225EF7434;
  v68[1] = v53;

  v68[2] = sub_225EF7434;
  v68[3] = v54;

  v68[4] = sub_225F3E358;
  v68[5] = v55;

  v68[6] = sub_225EF7434;
  v68[7] = v56;

  v68[8] = sub_225EF7434;
  v68[9] = v57;

  v68[10] = sub_225EF7B90;
  v68[11] = v58;

  v68[12] = sub_225EF7434;
  v68[13] = v59;

  v68[14] = sub_225EF7434;
  v68[15] = v60;

  v68[16] = sub_225EF7B90;
  v68[17] = v61;

  v68[18] = sub_225EF7434;
  v68[19] = v62;

  v68[20] = sub_225EF7434;
  v68[21] = v63;

  v68[22] = sub_225EF7B90;
  v68[23] = v64;

  v68[24] = sub_225EF7434;
  v68[25] = v65;

  v68[26] = sub_225EF7434;
  v68[27] = v66;

  v68[28] = sub_225EF7B90;
  v68[29] = v67;
  sub_225EF5418();

  if (os_log_type_enabled(v69, v70))
  {
    v4 = *(v31 + 728);
    buf = sub_22609A188();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = sub_225EF5468(1, v27, v27);
    v30 = sub_225EF5468(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v71 = buf;
    v72 = v29;
    v73 = v30;
    sub_225EF54BC(3, &v71);
    sub_225EF54BC(5, &v71);
    v74 = sub_225EF7434;
    v75 = v53;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    if (v4)
    {
    }

    v74 = sub_225EF7434;
    v75 = v54;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225F3E358;
    v75 = v55;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v56;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v57;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v58;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v59;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v60;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v61;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v62;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v63;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v64;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v65;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v66;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v67;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    _os_log_impl(&dword_225EEB000, v69, v70, "%@ Preheated for language %{public}s, source %{public}s, regionId %{private}s%{public}s", buf, 0x34u);
    sub_225EF7AF4(v29, 1, v27);
    sub_225EF7AF4(v30, 4, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v22 = *(v31 + 576);
  v20 = *(v31 + 536);
  v21 = *(v31 + 512);
  MEMORY[0x277D82BD8](v69);
  v22(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v24 = v6;
  *(v31 + 144) = sub_226099AA8();
  *(v31 + 152) = v7;
  v23 = MEMORY[0x277D837D0];
  sub_22609A468();
  v8 = sub_226099AA8();
  v24[8] = v23;
  v24[5] = v8;
  v24[6] = v9;
  sub_225EF5418();
  sub_225EFE6BC(v31 + 144);
  sub_2260998A8();
  v25 = sub_226099868();

  v26 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v25);
  if (!v26)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 363, 0);
  }

  v19 = *(v31 + 704);
  v12 = *(v31 + 672);
  v18 = *(v31 + 616);
  v17 = *(v31 + 600);
  v14 = *(v31 + 504);
  v15 = *(v31 + 488);
  v16 = *(v31 + 608);
  v13 = *(v31 + 496);
  *(v31 + 336) = v26;
  sub_226099CE8();

  sub_226024BB4(v19, 0);
  *(v31 + 192) = v19;
  *(v31 + 200) = 0;

  sub_225EFE6E8((v31 + 320));
  sub_226025528(v12);

  (*(v13 + 8))(v14, v15);
  (*(v16 + 8))(v18, v17);

  v10 = *(v31 + 344);
  *v10 = v19;
  *(v10 + 8) = 0;
  sub_226025838((v31 + 256), (v10 + 16));
  sub_226025870(v31 + 192);
  sub_225EFE6E8((v31 + 256));

  v11 = *(*(v31 + 208) + 8);

  return v11();
}

uint64_t sub_225F8E190()
{
  v76 = v0;
  *(v0 + 208) = v0;

  v36 = *(v0 + 640);
  v26 = *(v0 + 552);
  v1 = *(v0 + 528);
  v25 = *(v0 + 512);
  v35 = *(v0 + 472);
  v34 = *(v0 + 464);
  v31 = *(v0 + 456);
  v30 = *(v0 + 448);
  v33 = *(v0 + 408);
  v32 = *(v0 + 400);
  v29 = *(v0 + 368);
  v28 = *(v0 + 360);
  v27 = *(v0 + 352);
  v2 = v36;
  *(v0 + 272) = v36;
  v3 = sub_225F7E9BC();
  v26(v1, v3, v25);
  MEMORY[0x277D82BE0](v27);
  v37 = swift_allocObject();
  *(v37 + 16) = v27;
  sub_2260998E8();
  v39 = swift_allocObject();
  *(v39 + 16) = v28;
  *(v39 + 24) = v29;
  sub_2260998E8();
  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = v31;
  sub_2260998E8();
  v43 = swift_allocObject();
  *(v43 + 16) = v32;
  *(v43 + 24) = v33;
  sub_2260998E8();
  v45 = swift_allocObject();
  *(v45 + 16) = v34;
  *(v45 + 24) = v35;
  v4 = v36;
  v47 = swift_allocObject();
  *(v47 + 16) = v36;
  sub_225F3EAE8();

  v69 = sub_226098C48();
  v70 = sub_22609A098();
  v50 = swift_allocObject();
  *(v50 + 16) = 64;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_225F3E198;
  *(v38 + 24) = v37;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F3E1C8;
  *(v52 + 24) = v38;
  v53 = swift_allocObject();
  *(v53 + 16) = 34;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_225EF7450;
  *(v40 + 24) = v39;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_225EF7B84;
  *(v55 + 24) = v40;
  v56 = swift_allocObject();
  *(v56 + 16) = 34;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_225F7CF1C;
  *(v42 + 24) = v41;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_225EF7B84;
  *(v58 + 24) = v42;
  v59 = swift_allocObject();
  *(v59 + 16) = 33;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225F7CF1C;
  *(v44 + 24) = v43;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_225EF7B84;
  *(v61 + 24) = v44;
  v62 = swift_allocObject();
  *(v62 + 16) = 34;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225EF7450;
  *(v46 + 24) = v45;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_225EF7B84;
  *(v64 + 24) = v46;
  v65 = swift_allocObject();
  *(v65 + 16) = 64;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_225F3EA68;
  *(v48 + 24) = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225F3EA70;
  *(v49 + 24) = v48;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_225F3E1C8;
  *(v67 + 24) = v49;
  sub_22609A4F8();
  v68 = v5;

  *v68 = sub_225EF7434;
  v68[1] = v50;

  v68[2] = sub_225EF7434;
  v68[3] = v51;

  v68[4] = sub_225F3E358;
  v68[5] = v52;

  v68[6] = sub_225EF7434;
  v68[7] = v53;

  v68[8] = sub_225EF7434;
  v68[9] = v54;

  v68[10] = sub_225EF7B90;
  v68[11] = v55;

  v68[12] = sub_225EF7434;
  v68[13] = v56;

  v68[14] = sub_225EF7434;
  v68[15] = v57;

  v68[16] = sub_225EF7B90;
  v68[17] = v58;

  v68[18] = sub_225EF7434;
  v68[19] = v59;

  v68[20] = sub_225EF7434;
  v68[21] = v60;

  v68[22] = sub_225EF7B90;
  v68[23] = v61;

  v68[24] = sub_225EF7434;
  v68[25] = v62;

  v68[26] = sub_225EF7434;
  v68[27] = v63;

  v68[28] = sub_225EF7B90;
  v68[29] = v64;

  v68[30] = sub_225EF7434;
  v68[31] = v65;

  v68[32] = sub_225EF7434;
  v68[33] = v66;

  v68[34] = sub_225F3E358;
  v68[35] = v67;
  sub_225EF5418();

  if (os_log_type_enabled(v69, v70))
  {
    buf = sub_22609A188();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v23 = sub_225EF5468(2, v21, v21);
    v24 = sub_225EF5468(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v71 = buf;
    v72 = v23;
    v73 = v24;
    sub_225EF54BC(3, &v71);
    sub_225EF54BC(6, &v71);
    v74 = sub_225EF7434;
    v75 = v50;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v51;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225F3E358;
    v75 = v52;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v53;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v54;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v55;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v56;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v57;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v58;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v59;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v60;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v61;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v62;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v63;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7B90;
    v75 = v64;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v65;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225EF7434;
    v75 = v66;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    v74 = sub_225F3E358;
    v75 = v67;
    sub_225EF73E8(&v74, &v71, &v72, &v73);
    _os_log_impl(&dword_225EEB000, v69, v70, "%@ Could not preheat for language %{public}s, source %{public}s, regionId %{private}s%{public}s: %@", buf, 0x3Eu);
    sub_225EF7AF4(v23, 2, v21);
    sub_225EF7AF4(v24, 4, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v16 = *(v0 + 576);
  v14 = *(v0 + 528);
  v15 = *(v0 + 512);
  MEMORY[0x277D82BD8](v69);
  v16(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v18 = v6;
  *(v0 + 96) = sub_226099AA8();
  *(v0 + 104) = v7;
  v17 = MEMORY[0x277D837D0];
  sub_22609A468();
  v8 = sub_226099AA8();
  v18[8] = v17;
  v18[5] = v8;
  v18[6] = v9;
  sub_225EF5418();
  sub_225EFE6BC(v0 + 96);
  sub_2260998A8();
  v19 = sub_226099868();

  v20 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v19);
  if (!v20)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 374, 0);
  }

  *(v0 + 280) = v20;
  sub_226099CE8();
  v10 = v36;
  sub_226024BB4(v36, 1);
  *(v0 + 192) = v36;
  *(v0 + 200) = 1;

  v11 = *(v0 + 344);
  *v11 = v36;
  *(v11 + 8) = 1;
  sub_226025838((v0 + 256), (v11 + 16));
  sub_226025870(v0 + 192);
  sub_225EFE6E8((v0 + 256));

  v12 = *(*(v0 + 208) + 8);

  return v12();
}

uint64_t sub_225F900AC()
{
  v84 = v0;
  v25 = v0[84];
  v31 = v0[77];
  v29 = v0[76];
  v30 = v0[75];
  v27 = v0[63];
  v26 = v0[62];
  v28 = v0[61];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 40);
  sub_226025528(v25);

  (*(v26 + 8))(v27, v28);
  (*(v29 + 8))(v31, v30);

  v44 = *(v32 + 712);
  v34 = *(v32 + 552);
  v1 = *(v32 + 528);
  v33 = *(v32 + 512);
  v43 = *(v32 + 472);
  v42 = *(v32 + 464);
  v39 = *(v32 + 456);
  v38 = *(v32 + 448);
  v41 = *(v32 + 408);
  v40 = *(v32 + 400);
  v37 = *(v32 + 368);
  v36 = *(v32 + 360);
  v35 = *(v32 + 352);
  v2 = v44;
  *(v32 + 272) = v44;
  v3 = sub_225F7E9BC();
  v34(v1, v3, v33);
  MEMORY[0x277D82BE0](v35);
  v45 = swift_allocObject();
  *(v45 + 16) = v35;
  sub_2260998E8();
  v47 = swift_allocObject();
  *(v47 + 16) = v36;
  *(v47 + 24) = v37;
  sub_2260998E8();
  v49 = swift_allocObject();
  *(v49 + 16) = v38;
  *(v49 + 24) = v39;
  sub_2260998E8();
  v51 = swift_allocObject();
  *(v51 + 16) = v40;
  *(v51 + 24) = v41;
  sub_2260998E8();
  v53 = swift_allocObject();
  *(v53 + 16) = v42;
  *(v53 + 24) = v43;
  v4 = v44;
  v55 = swift_allocObject();
  *(v55 + 16) = v44;
  sub_225F3EAE8();

  v77 = sub_226098C48();
  v78 = sub_22609A098();
  v58 = swift_allocObject();
  *(v58 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F3E198;
  *(v46 + 24) = v45;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_225F3E1C8;
  *(v60 + 24) = v46;
  v61 = swift_allocObject();
  *(v61 + 16) = 34;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_225EF7450;
  *(v48 + 24) = v47;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225EF7B84;
  *(v63 + 24) = v48;
  v64 = swift_allocObject();
  *(v64 + 16) = 34;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_225F7CF1C;
  *(v50 + 24) = v49;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_225EF7B84;
  *(v66 + 24) = v50;
  v67 = swift_allocObject();
  *(v67 + 16) = 33;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F7CF1C;
  *(v52 + 24) = v51;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225EF7B84;
  *(v69 + 24) = v52;
  v70 = swift_allocObject();
  *(v70 + 16) = 34;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_225EF7450;
  *(v54 + 24) = v53;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_225EF7B84;
  *(v72 + 24) = v54;
  v73 = swift_allocObject();
  *(v73 + 16) = 64;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_225F3EA68;
  *(v56 + 24) = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_225F3EA70;
  *(v57 + 24) = v56;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_225F3E1C8;
  *(v75 + 24) = v57;
  sub_22609A4F8();
  v76 = v5;

  *v76 = sub_225EF7434;
  v76[1] = v58;

  v76[2] = sub_225EF7434;
  v76[3] = v59;

  v76[4] = sub_225F3E358;
  v76[5] = v60;

  v76[6] = sub_225EF7434;
  v76[7] = v61;

  v76[8] = sub_225EF7434;
  v76[9] = v62;

  v76[10] = sub_225EF7B90;
  v76[11] = v63;

  v76[12] = sub_225EF7434;
  v76[13] = v64;

  v76[14] = sub_225EF7434;
  v76[15] = v65;

  v76[16] = sub_225EF7B90;
  v76[17] = v66;

  v76[18] = sub_225EF7434;
  v76[19] = v67;

  v76[20] = sub_225EF7434;
  v76[21] = v68;

  v76[22] = sub_225EF7B90;
  v76[23] = v69;

  v76[24] = sub_225EF7434;
  v76[25] = v70;

  v76[26] = sub_225EF7434;
  v76[27] = v71;

  v76[28] = sub_225EF7B90;
  v76[29] = v72;

  v76[30] = sub_225EF7434;
  v76[31] = v73;

  v76[32] = sub_225EF7434;
  v76[33] = v74;

  v76[34] = sub_225F3E358;
  v76[35] = v75;
  sub_225EF5418();

  if (os_log_type_enabled(v77, v78))
  {
    buf = sub_22609A188();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v23 = sub_225EF5468(2, v21, v21);
    v24 = sub_225EF5468(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v79 = buf;
    v80 = v23;
    v81 = v24;
    sub_225EF54BC(3, &v79);
    sub_225EF54BC(6, &v79);
    v82 = sub_225EF7434;
    v83 = v58;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v59;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225F3E358;
    v83 = v60;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v61;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v62;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v63;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v64;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v65;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v66;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v67;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v68;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v69;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v70;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v71;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v72;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v73;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v74;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225F3E358;
    v83 = v75;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    _os_log_impl(&dword_225EEB000, v77, v78, "%@ Could not preheat for language %{public}s, source %{public}s, regionId %{private}s%{public}s: %@", buf, 0x3Eu);
    sub_225EF7AF4(v23, 2, v21);
    sub_225EF7AF4(v24, 4, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v16 = *(v32 + 576);
  v14 = *(v32 + 528);
  v15 = *(v32 + 512);
  MEMORY[0x277D82BD8](v77);
  v16(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v18 = v6;
  *(v32 + 96) = sub_226099AA8();
  *(v32 + 104) = v7;
  v17 = MEMORY[0x277D837D0];
  sub_22609A468();
  v8 = sub_226099AA8();
  v18[8] = v17;
  v18[5] = v8;
  v18[6] = v9;
  sub_225EF5418();
  sub_225EFE6BC(v32 + 96);
  sub_2260998A8();
  v19 = sub_226099868();

  v20 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v19);
  if (!v20)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 374, 0);
  }

  *(v32 + 280) = v20;
  sub_226099CE8();
  v10 = v44;
  sub_226024BB4(v44, 1);
  *(v32 + 192) = v44;
  *(v32 + 200) = 1;

  v11 = *(v32 + 344);
  *v11 = v44;
  *(v11 + 8) = 1;
  sub_226025838((v32 + 256), (v11 + 16));
  sub_226025870(v32 + 192);
  sub_225EFE6E8((v32 + 256));

  v12 = *(*(v32 + 208) + 8);

  return v12();
}

uint64_t sub_225F920CC()
{
  v84 = v0;
  v25 = v0[84];
  v31 = v0[77];
  v29 = v0[76];
  v30 = v0[75];
  v27 = v0[63];
  v26 = v0[62];
  v28 = v0[61];
  v0[26] = v0;

  sub_225EFE6E8(v0 + 40);
  sub_226025528(v25);

  (*(v26 + 8))(v27, v28);
  (*(v29 + 8))(v31, v30);

  v44 = *(v32 + 728);
  v34 = *(v32 + 552);
  v1 = *(v32 + 528);
  v33 = *(v32 + 512);
  v43 = *(v32 + 472);
  v42 = *(v32 + 464);
  v39 = *(v32 + 456);
  v38 = *(v32 + 448);
  v41 = *(v32 + 408);
  v40 = *(v32 + 400);
  v37 = *(v32 + 368);
  v36 = *(v32 + 360);
  v35 = *(v32 + 352);
  v2 = v44;
  *(v32 + 272) = v44;
  v3 = sub_225F7E9BC();
  v34(v1, v3, v33);
  MEMORY[0x277D82BE0](v35);
  v45 = swift_allocObject();
  *(v45 + 16) = v35;
  sub_2260998E8();
  v47 = swift_allocObject();
  *(v47 + 16) = v36;
  *(v47 + 24) = v37;
  sub_2260998E8();
  v49 = swift_allocObject();
  *(v49 + 16) = v38;
  *(v49 + 24) = v39;
  sub_2260998E8();
  v51 = swift_allocObject();
  *(v51 + 16) = v40;
  *(v51 + 24) = v41;
  sub_2260998E8();
  v53 = swift_allocObject();
  *(v53 + 16) = v42;
  *(v53 + 24) = v43;
  v4 = v44;
  v55 = swift_allocObject();
  *(v55 + 16) = v44;
  sub_225F3EAE8();

  v77 = sub_226098C48();
  v78 = sub_22609A098();
  v58 = swift_allocObject();
  *(v58 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_225F3E198;
  *(v46 + 24) = v45;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_225F3E1C8;
  *(v60 + 24) = v46;
  v61 = swift_allocObject();
  *(v61 + 16) = 34;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_225EF7450;
  *(v48 + 24) = v47;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_225EF7B84;
  *(v63 + 24) = v48;
  v64 = swift_allocObject();
  *(v64 + 16) = 34;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_225F7CF1C;
  *(v50 + 24) = v49;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_225EF7B84;
  *(v66 + 24) = v50;
  v67 = swift_allocObject();
  *(v67 + 16) = 33;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225F7CF1C;
  *(v52 + 24) = v51;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225EF7B84;
  *(v69 + 24) = v52;
  v70 = swift_allocObject();
  *(v70 + 16) = 34;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_225EF7450;
  *(v54 + 24) = v53;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_225EF7B84;
  *(v72 + 24) = v54;
  v73 = swift_allocObject();
  *(v73 + 16) = 64;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_225F3EA68;
  *(v56 + 24) = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_225F3EA70;
  *(v57 + 24) = v56;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_225F3E1C8;
  *(v75 + 24) = v57;
  sub_22609A4F8();
  v76 = v5;

  *v76 = sub_225EF7434;
  v76[1] = v58;

  v76[2] = sub_225EF7434;
  v76[3] = v59;

  v76[4] = sub_225F3E358;
  v76[5] = v60;

  v76[6] = sub_225EF7434;
  v76[7] = v61;

  v76[8] = sub_225EF7434;
  v76[9] = v62;

  v76[10] = sub_225EF7B90;
  v76[11] = v63;

  v76[12] = sub_225EF7434;
  v76[13] = v64;

  v76[14] = sub_225EF7434;
  v76[15] = v65;

  v76[16] = sub_225EF7B90;
  v76[17] = v66;

  v76[18] = sub_225EF7434;
  v76[19] = v67;

  v76[20] = sub_225EF7434;
  v76[21] = v68;

  v76[22] = sub_225EF7B90;
  v76[23] = v69;

  v76[24] = sub_225EF7434;
  v76[25] = v70;

  v76[26] = sub_225EF7434;
  v76[27] = v71;

  v76[28] = sub_225EF7B90;
  v76[29] = v72;

  v76[30] = sub_225EF7434;
  v76[31] = v73;

  v76[32] = sub_225EF7434;
  v76[33] = v74;

  v76[34] = sub_225F3E358;
  v76[35] = v75;
  sub_225EF5418();

  if (os_log_type_enabled(v77, v78))
  {
    buf = sub_22609A188();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v23 = sub_225EF5468(2, v21, v21);
    v24 = sub_225EF5468(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v79 = buf;
    v80 = v23;
    v81 = v24;
    sub_225EF54BC(3, &v79);
    sub_225EF54BC(6, &v79);
    v82 = sub_225EF7434;
    v83 = v58;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v59;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225F3E358;
    v83 = v60;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v61;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v62;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v63;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v64;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v65;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v66;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v67;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v68;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v69;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v70;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v71;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7B90;
    v83 = v72;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v73;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225EF7434;
    v83 = v74;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    v82 = sub_225F3E358;
    v83 = v75;
    sub_225EF73E8(&v82, &v79, &v80, &v81);
    _os_log_impl(&dword_225EEB000, v77, v78, "%@ Could not preheat for language %{public}s, source %{public}s, regionId %{private}s%{public}s: %@", buf, 0x3Eu);
    sub_225EF7AF4(v23, 2, v21);
    sub_225EF7AF4(v24, 4, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v16 = *(v32 + 576);
  v14 = *(v32 + 528);
  v15 = *(v32 + 512);
  MEMORY[0x277D82BD8](v77);
  v16(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D80, &qword_2260A0F88);
  sub_22609A4F8();
  v18 = v6;
  *(v32 + 96) = sub_226099AA8();
  *(v32 + 104) = v7;
  v17 = MEMORY[0x277D837D0];
  sub_22609A468();
  v8 = sub_226099AA8();
  v18[8] = v17;
  v18[5] = v8;
  v18[6] = v9;
  sub_225EF5418();
  sub_225EFE6BC(v32 + 96);
  sub_2260998A8();
  v19 = sub_226099868();

  v20 = AFAnalyticsEventCreateCurrent();
  MEMORY[0x277D82BD8](v19);
  if (!v20)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 374, 0);
  }

  *(v32 + 280) = v20;
  sub_226099CE8();
  v10 = v44;
  sub_226024BB4(v44, 1);
  *(v32 + 192) = v44;
  *(v32 + 200) = 1;

  v11 = *(v32 + 344);
  *v11 = v44;
  *(v11 + 8) = 1;
  sub_226025838((v32 + 256), (v11 + 16));
  sub_226025870(v32 + 192);
  sub_225EFE6E8((v32 + 256));

  v12 = *(*(v32 + 208) + 8);

  return v12();
}

uint64_t sub_225F940CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[13] = a5;
  v7[12] = a4;
  v7[11] = a3;
  v7[10] = a2;
  v7[9] = a1;
  v7[4] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[5] = 0;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v8 = sub_226099808();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = sub_2260997E8();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v7[2] = a3;
  v7[3] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = v6;

  return MEMORY[0x2822009F8](sub_225F942A4, 0, 0);
}

uint64_t sub_225F942A4()
{
  v11 = v0[17];
  v7 = v0[16];
  v9 = v0[15];
  v10 = v0[14];
  v8 = v0[13];
  v0[4] = v0;
  v6 = sub_226098AB8();
  v0[21] = v6;
  v4 = *(v6 - 8);
  v0[22] = v4;
  v5 = swift_task_alloc();
  v0[23] = v5;
  sub_2260998E8();
  sub_226098A88();
  v13 = swift_task_alloc();
  v1 = *(v4 + 16);
  v0[24] = v1;
  v0[25] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v1(v13, v5, v6);
  (*(v7 + 16))(v11, v8, v9);
  sub_225F7F1AC();
  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
  v12 = swift_task_alloc();
  sub_22601EA84(v10, v12);
  sub_2260997C8();

  v0[26] = sub_22601F410();
  v2 = swift_task_alloc();
  *(v14 + 216) = v2;
  *v2 = *(v14 + 32);
  v2[1] = sub_225F9454C;

  return MEMORY[0x28212C2D8]();
}

uint64_t sub_225F9454C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[4] = *v3;
  v6[28] = v2;
  v6[29] = a1;
  v6[30] = a2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_225F94DD4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v6[31] = v4;
    *v4 = v6[4];
    v4[1] = sub_225F94734;

    return MEMORY[0x28212C2E8]();
  }
}

uint64_t sub_225F94734(uint64_t a1, uint64_t a2)
{
  v8 = *v3;
  v8[4] = *v3;
  v8[32] = v2;
  v8[33] = a1;
  v8[34] = a2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_225F94F04, 0, 0);
  }

  else
  {
    v4 = sub_226098948();
    v8[35] = v4;
    v8[36] = *(v4 - 8);
    v7 = swift_task_alloc();
    v8[37] = v7;
    v5 = swift_task_alloc();
    v8[38] = v5;
    *v5 = v8[4];
    v5[1] = sub_225F9498C;

    return MEMORY[0x28212C308](v7);
  }
}

uint64_t sub_225F9498C()
{
  v4 = *v1;
  *(v4 + 32) = *v1;
  *(v4 + 312) = v0;

  if (v0)
  {
    v2 = sub_225F95054;
  }

  else
  {
    v2 = sub_225F94AF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225F94AF4()
{
  v16 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v20 = v0[34];
  v19 = v0[33];
  v18 = v0[30];
  v17 = v0[29];
  v0[4] = v0;
  v21 = sub_226098918();
  v22 = v1;
  (*(v14 + 8))(v16, v15);

  v23 = sub_225FCF8F4(v17, v18, v19, v20, v21, v22);
  if (!v23)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 737, 0);
  }

  v2 = v13[24];
  v11 = v13[23];
  v10 = v13[21];
  v12 = v13[20];
  v8 = v13[18];
  v7 = v13[10];
  v3 = v13[9];
  v9 = v13[22];
  v6 = v13[19];
  v13[8] = v23;
  v2(v3);
  (*(v6 + 16))(v7, v12, v8);
  (*(v6 + 8))(v12, v8);
  (*(v9 + 8))(v11, v10);

  v4 = *(v13[4] + 8);

  return v4(v23);
}

uint64_t sub_225F94DD4()
{
  v8 = v0[23];
  v6 = v0[22];
  v7 = v0[21];
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[18];
  v0[4] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v8, v7);

  v4 = *(v0[4] + 8);

  return v4();
}

uint64_t sub_225F94F04()
{
  v8 = v0[23];
  v6 = v0[22];
  v7 = v0[21];
  v4 = v0[20];
  v3 = v0[19];
  v5 = v0[18];
  v0[4] = v0;

  (*(v3 + 8))(v4, v5);
  (*(v6 + 8))(v8, v7);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_225F95054()
{
  v8 = v0[23];
  v6 = v0[22];
  v7 = v0[21];
  v4 = v0[20];
  v3 = v0[19];
  v5 = v0[18];
  v0[4] = v0;

  (*(v3 + 8))(v4, v5);
  (*(v6 + 8))(v8, v7);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_225F95208()
{
  v11 = 0;
  v10 = 0;
  v9[3] = &unk_283944910;
  v9[4] = sub_22601F474();
  v8 = sub_226098B18();
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (v8)
  {
    v5 = [objc_opt_self() sharedPreferences];
    v6 = [v5 useAtypicalSpeechModel];
    MEMORY[0x277D82BD8](v5);
    v10 = v6;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v4 = 1;
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    sub_226099AA8();
    v1 = sub_2260999F8();

    v3 = [v2 BOOLForKey_];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    v4 = v3;
  }

  return v4 & 1;
}

uint64_t sub_225F9539C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v49 = a8;
  v48 = a7;
  v47 = a6;
  v46 = a5;
  v45 = a4;
  v44 = a3;
  v43 = a2;
  v57 = a1;
  v37 = a8;
  v38 = a3;
  v50 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v39 = sub_226098E68();
  v40 = *(v39 - 8);
  v41 = v40;
  MEMORY[0x28223BE20](0);
  v42 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v42;
  v59 = sub_226098FC8();
  v51 = v59;
  v52 = *(v59 - 8);
  v53 = v52;
  v54 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v24 - v56;
  MEMORY[0x28223BE20](v10);
  v58 = &v24 - v56;
  v70 = v57;
  v69 = v11;
  v68 = v12;
  v66 = v13;
  v67 = v14;
  v65 = v15;
  v64 = v16;
  v63 = v17;
  v62 = v8;
  v60 = sub_22609A4F8();
  sub_22601F4EC(v18);
  v61 = sub_226099F08();
  if ([objc_opt_self() isDictationEmojiRecognitionEnabled])
  {
    (*(v53 + 104))(v55, *MEMORY[0x277CDCB28], v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A0, &qword_2260A0920);
    sub_226099F48();
    (*(v53 + 8))(v58, v51);
  }

  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
  v32 = &v24;
  MEMORY[0x28223BE20](&v24);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v24 - v26;
  v29 = 0;
  v19 = *(*(sub_226098948() - 8) + 56);
  v33 = 1;
  v19(v30, 1);
  sub_2260998E8();
  v31 = &v24;
  MEMORY[0x28223BE20](v47);
  v28 = &v24 - v26;
  sub_22601EA84(v20, &v24 - v26);
  sub_2260998E8();
  v27 = sub_225F49850();
  sub_225F49850();
  sub_226098DF8();
  v34 = v61;
  sub_2260998E8();
  v21 = sub_225F49850();
  v36 = sub_225FDA5C4(v57, v43, v34, v42, v21 & 1, v33);
  v35 = v22;

  (*(v41 + 8))(v42, v39);
  sub_225EFE6E8(&v61);
  return v36;
}

uint64_t sub_225F958E8(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  sub_2260994D8();

  v4 = sub_226099408();

  sub_226099408();

  return v4;
}

uint64_t sub_225F959EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 648) = v27;
  *(v9 + 640) = v26;
  *(v9 + 632) = v25;
  *(v9 + 624) = a6;
  *(v9 + 616) = a5;
  *(v9 + 608) = a4;
  *(v9 + 600) = a3;
  *(v9 + 592) = a2;
  *(v9 + 584) = a1;
  *(v9 + 320) = v9;
  *(v9 + 328) = 0;
  *(v9 + 336) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 344) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 352) = 0;
  *(v9 + 360) = 0;
  *(v9 + 368) = 0;
  *(v9 + 376) = 0;
  *(v9 + 384) = 0;
  *(v9 + 1088) = 0;
  *(v9 + 1096) = 0;
  *(v9 + 1104) = 0;
  *(v9 + 1112) = 0;
  *(v9 + 408) = 0;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 416) = 0;
  *(v9 + 448) = 0;
  *(v9 + 176) = 0;
  *(v9 + 184) = 0;
  *(v9 + 192) = 0;
  *(v9 + 200) = 0;
  *(v9 + 208) = 0;
  *(v9 + 216) = 0;
  *(v9 + 576) = 0;
  sub_2260991E8();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A8, &unk_2260A0930);
  *(v9 + 688) = swift_task_alloc();
  v12 = sub_226098DD8();
  *(v9 + 696) = v12;
  *(v9 + 704) = *(v12 - 8);
  *(v9 + 712) = swift_task_alloc();
  v13 = sub_226099DA8();
  *(v9 + 720) = v13;
  *(v9 + 728) = *(v13 - 8);
  *(v9 + 736) = swift_task_alloc();
  v14 = sub_226099288();
  *(v9 + 744) = v14;
  *(v9 + 752) = *(v14 - 8);
  *(v9 + 760) = swift_task_alloc();
  v15 = sub_226098C58();
  *(v9 + 768) = v15;
  *(v9 + 776) = *(v15 - 8);
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  v16 = sub_226099258();
  *(v9 + 800) = v16;
  *(v9 + 808) = *(v16 - 8);
  *(v9 + 816) = swift_task_alloc();
  *(v9 + 824) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B0, &unk_2260A0FF0);
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 328) = a1;
  *(v9 + 336) = a2;
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  *(v9 + 344) = a5;
  *(v9 + 96) = a6;
  *(v9 + 104) = a7;
  *(v9 + 352) = a8;
  *(v9 + 360) = v25;
  *(v9 + 368) = v26;
  *(v9 + 376) = v27;
  *(v9 + 384) = v8;

  return MEMORY[0x2822009F8](sub_225F95FB0, 0, 0);
}

uint64_t sub_225F95FB0()
{
  v76 = v0;
  v75[1] = *MEMORY[0x277D85DE8];
  v67 = *(v0 + 840);
  *(v0 + 320) = v0;
  v1 = sub_226099248();
  (*(*(v1 - 8) + 56))(v67, 1);
  *(v0 + 392) = 0;
  v70 = [objc_opt_self() cooldownDisabledForDevice] == 0;
  *(v0 + 1088) = v70;
  v2 = objc_opt_self();
  *(v0 + 400) = *(v0 + 392);
  v69 = [v2 isCommonUserWithReason_];
  v68 = *(v0 + 400);
  MEMORY[0x277D82BE0](v68);
  MEMORY[0x277D82BE0](v68);
  v3 = *(v0 + 392);
  *(v0 + 392) = v68;
  MEMORY[0x277D82BD8](v3);
  *(v0 + 1096) = v69 & 1;
  if (v70)
  {
    v65 = 0;
  }

  else
  {
    v65 = v69;
  }

  *(v66 + 1104) = v65 & 1;
  v64 = [objc_opt_self() keepANEModelLoaded];
  sub_2260998E8();
  if (v64)
  {
    v63 = 1;
    goto LABEL_15;
  }

  v4 = *(v66 + 608);
  *(v66 + 112) = *(v66 + 600);
  *(v66 + 120) = v4;
  MEMORY[0x277D82BE0](@"Captioning");
  v62 = sub_226099A08();
  v61 = v5;
  sub_2260998E8();
  sub_225F4C5E0((v66 + 112), (v66 + 16));
  *(v66 + 32) = v62;
  *(v66 + 40) = v61;
  if (!*(v66 + 24))
  {
    if (!*(v66 + 40))
    {
      sub_225EFE6BC(v66 + 16);
      v60 = 1;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  sub_225F4C5E0((v66 + 16), (v66 + 272));
  if (!*(v66 + 40))
  {
    sub_225EFE6BC(v66 + 272);
LABEL_13:
    sub_225F4C1C0(v66 + 16);
    v60 = 0;
    goto LABEL_12;
  }

  *(v66 + 288) = *(v66 + 272);
  *(v66 + 304) = *(v66 + 32);
  v59 = MEMORY[0x22AA72BD0](*(v66 + 288), *(v66 + 296), *(v66 + 304), *(v66 + 312));
  sub_225EFE6BC(v66 + 304);
  sub_225EFE6BC(v66 + 288);
  sub_225EFE6BC(v66 + 16);
  v60 = v59;
LABEL_12:

  MEMORY[0x277D82BD8](@"Captioning");
  v63 = v60;
LABEL_15:

  *(v66 + 1112) = v63 & 1;
  if (v65)
  {
    if (v63)
    {
      v56 = *(v66 + 824);
      v57 = *(v66 + 816);
      v58 = *(v66 + 800);
      v55 = *(v66 + 808);
      (*(v55 + 104))();
      (*(v55 + 32))(v56, v57, v58);
    }

    else
    {
      v52 = *(v66 + 824);
      v53 = *(v66 + 816);
      v54 = *(v66 + 800);
      v51 = *(v66 + 808);
      (*(v51 + 104))();
      (*(v51 + 32))(v52, v53, v54);
    }
  }

  else if (v63)
  {
    v48 = *(v66 + 824);
    v49 = *(v66 + 816);
    v50 = *(v66 + 800);
    v47 = *(v66 + 808);
    (*(v47 + 104))();
    (*(v47 + 32))(v48, v49, v50);
  }

  else
  {
    v44 = *(v66 + 824);
    v45 = *(v66 + 816);
    v46 = *(v66 + 800);
    v43 = *(v66 + 808);
    (*(v43 + 104))();
    (*(v43 + 32))(v44, v45, v46);
  }

  if (v68)
  {
    v6 = *(v66 + 792);
    v34 = *(v66 + 768);
    v33 = *(v66 + 776);
    *(v66 + 576) = v68;
    v7 = sub_225F7E9BC();
    (*(v33 + 16))(v6, v7, v34);
    MEMORY[0x277D82BE0](v68);
    v35 = swift_allocObject();
    *(v35 + 16) = v68;
    oslog = sub_226098C48();
    v42 = sub_22609A078();
    v37 = swift_allocObject();
    *(v37 + 16) = 64;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_225F3E198;
    *(v36 + 24) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_225F3E1C8;
    *(v39 + 24) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v40 = v8;

    *v40 = sub_225EF7434;
    v40[1] = v37;

    v40[2] = sub_225EF7434;
    v40[3] = v38;

    v40[4] = sub_225F3E358;
    v40[5] = v39;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v42))
    {
      buf = sub_22609A188();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v31 = sub_225EF5468(1, v29, v29);
      v32 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v71 = buf;
      v74 = v31;
      v75[0] = v32;
      sub_225EF54BC(2, &v71);
      sub_225EF54BC(1, &v71);
      v72 = sub_225EF7434;
      v73 = v37;
      sub_225EF73E8(&v72, &v71, &v74, v75);
      v72 = sub_225EF7434;
      v73 = v38;
      sub_225EF73E8(&v72, &v71, &v74, v75);
      v72 = sub_225F3E358;
      v73 = v39;
      sub_225EF73E8(&v72, &v71, &v74, v75);
      _os_log_impl(&dword_225EEB000, oslog, v42, "Overriding and allowing cooldown for reason: %@", buf, 0xCu);
      sub_225EF7AF4(v31, 1, v29);
      sub_225EF7AF4(v32, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v27 = *(v66 + 792);
    v28 = *(v66 + 768);
    v26 = *(v66 + 776);
    MEMORY[0x277D82BD8](oslog);
    (*(v26 + 8))(v27, v28);
    MEMORY[0x277D82BD8](v68);
  }

  *(v66 + 848) = 0;
  v13 = *(v66 + 840);
  v15 = *(v66 + 832);
  v11 = *(v66 + 824);
  v14 = *(v66 + 816);
  v12 = *(v66 + 800);
  v20 = *(v66 + 760);
  v21 = *(v66 + 744);
  v22 = *(v66 + 712);
  v17 = *(v66 + 696);
  v23 = *(v66 + 688);
  v18 = *(v66 + 584);
  v10 = *(v66 + 808);
  v19 = *(v66 + 752);
  v16 = *(v66 + 704);
  (*(*(v66 + 728) + 16))();
  (*(v10 + 16))(v14, v11, v12);
  sub_22601F56C(v13, v15);
  sub_226099278();
  sub_226098D78();
  (*(v16 + 16))(v22, v18, v17);
  *(v66 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869B8, &qword_2260A0940);
  sub_22609A4F8();
  (*(v19 + 16))(v23, v20, v21);
  (*(v19 + 56))(v23);
  v24 = sub_226098D58();
  *(v66 + 864) = v24;
  *(v66 + 408) = v24;
  v25 = swift_task_alloc();
  *(v66 + 872) = v25;
  *v25 = *(v66 + 320);
  v25[1] = sub_225F974C8;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225F974C8(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 320) = *v1;
  *(v3 + 880) = a1;

  return MEMORY[0x2822009F8](sub_225F97620, 0, 0);
}

uint64_t sub_225F97620()
{
  v33 = *(v0 + 640);
  *(v0 + 320) = v0;
  sub_2260998E8();
  sub_2260991F8();

  MEMORY[0x277D82BE0](v33);
  if (v33)
  {
    v30 = v32[80];
    v31 = [v30 prefixText];
    if (v31)
    {
      v26 = sub_226099A08();
      v27 = v1;
      MEMORY[0x277D82BD8](v31);
      v28 = v26;
      v29 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    MEMORY[0x277D82BD8](v30);
    v24 = v28;
    v25 = v29;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v32[112] = v25;
  v32[111] = v24;
  v23 = v32[80];
  v32[16] = v24;
  v32[17] = v25;
  MEMORY[0x277D82BE0](v23);
  if (v23)
  {
    v21 = v32[80];
    v22 = [v21 postfixText];
    if (v22)
    {
      v17 = sub_226099A08();
      v18 = v2;
      MEMORY[0x277D82BD8](v22);
      v19 = v17;
      v20 = v18;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    MEMORY[0x277D82BD8](v21);
    v15 = v19;
    v16 = v20;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v32[114] = v16;
  v32[113] = v15;
  v14 = v32[80];
  v32[18] = v15;
  v32[19] = v16;
  MEMORY[0x277D82BE0](v14);
  if (v14)
  {
    v12 = v32[80];
    v13 = [v12 selectedText];
    if (v13)
    {
      v8 = sub_226099A08();
      v9 = v3;
      MEMORY[0x277D82BD8](v13);
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    MEMORY[0x277D82BD8](v12);
    v6 = v10;
    v7 = v11;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v32[116] = v7;
  v32[115] = v6;
  v32[20] = v6;
  v32[21] = v7;
  v5 = swift_task_alloc();
  v32[117] = v5;
  *v5 = v32[40];
  v5[1] = sub_225F97F04;

  return MEMORY[0x28212BC38]();
}

uint64_t sub_225F97F04(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 320) = *v1;
  *(v3 + 944) = a1;

  return MEMORY[0x2822009F8](sub_225F9805C, 0, 0);
}

uint64_t sub_225F9805C()
{
  *(v0 + 320) = v0;
  *(v0 + 416) = sub_226099188();

  if (*sub_225F7F4BC())
  {
    sub_2260991A8();
    v14[53] = sub_22609A4F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v14[54] = sub_22609A4F8();
    sub_226099948();
    sub_2260991D8();
    v14[55] = sub_22609A4F8();
    sub_226099948();
    v4 = v14[106];
  }

  else
  {
    v10 = v14[112];
    v9 = v14[111];
    v1 = v14[106];
    sub_2260991A8();
    v14[28] = v9;
    v14[29] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    result = sub_225F25E38(sub_225FDB998, 0, v11, MEMORY[0x277D84A98], v13, v12, (v14 + 63));
    if (v1)
    {
      return result;
    }

    v14[64] = v14[63];
    if (v14[64])
    {
      v15 = v14[64];
    }

    else
    {
      v15 = sub_22609A4F8();
      if (v14[64])
      {
        sub_225EFE6E8(v14 + 64);
      }
    }

    v8 = v14[114];
    v7 = v14[113];
    v14[65] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7869C0, &qword_2260A0948);
    sub_226099948();
    sub_2260991B8();
    v14[30] = v7;
    v14[31] = v8;
    sub_225F25E38(sub_225FDB998, 0, v11, MEMORY[0x277D84A98], v13, v12, (v14 + 66));
    v14[67] = v14[66];
    if (v14[67])
    {
      v16 = v14[67];
    }

    else
    {
      v16 = sub_22609A4F8();
      if (v14[67])
      {
        sub_225EFE6E8(v14 + 67);
      }
    }

    v6 = v14[116];
    v5 = v14[115];
    v14[68] = v16;
    sub_226099948();
    sub_2260991D8();
    v14[32] = v5;
    v14[33] = v6;
    sub_225F25E38(sub_225FDB998, 0, v11, MEMORY[0x277D84A98], v13, v12, (v14 + 69));
    v14[70] = v14[69];
    if (v14[70])
    {
      v17 = v14[70];
    }

    else
    {
      v17 = sub_22609A4F8();
      if (v14[70])
      {
        sub_225EFE6E8(v14 + 70);
      }
    }

    v14[71] = v17;
    sub_226099948();
    v4 = 0;
  }

  v14[119] = v4;
  v3 = swift_task_alloc();
  v14[120] = v3;
  *v3 = v14[40];
  v3[1] = sub_225F98D0C;

  return MEMORY[0x28212BC38]();
}