_BYTE *sub_1CF3B8C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v326 = a7;
  v325 = a6;
  v338 = a5;
  v331 = a4;
  v339 = a3;
  v349 = a2;
  v352 = a1;
  v301 = sub_1CF9E7388();
  v300 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v299 = v298 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298[0] = sub_1CF9E7488();
  MEMORY[0x1EEE9AC00](v298[0]);
  v298[1] = v298 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v305 = v298 - v13;
  v311 = sub_1CF9E53C8();
  v310 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311);
  v309 = v298 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  MEMORY[0x1EEE9AC00](v324);
  v337 = v298 - v15;
  v16 = sub_1CF9E5A58();
  v336 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v335 = (v298 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v340 = v298 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v298 - v21;
  v330 = sub_1CF9E6118();
  v329 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v303 = v298 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v298 - v25;
  v27 = (a8 + qword_1EC4EBCD0);
  *v27 = 0;
  v27[1] = 0;
  v341 = v27;
  v28 = (a8 + qword_1EC4EBCD8);
  *v28 = 0;
  v28[1] = 0;
  v342 = v28;
  *(a8 + qword_1EDEBBE28) = 0;
  v308 = qword_1EDEBBE38;
  *(a8 + qword_1EDEBBE38) = 1;
  *(a8 + qword_1EDEBBE10) = 0;
  v29 = qword_1EDEBBDA8;
  v30 = sub_1CF9E5D98();
  v31 = *(*(v30 - 8) + 56);
  v351 = a9;

  v318 = v29;
  v31(a8 + v29, 1, 1, v30);
  v314 = qword_1EC4BFAF0;
  *(a8 + qword_1EC4BFAF0) = MEMORY[0x1E69E7CC0];
  v316 = qword_1EDEAE678;
  *(a8 + qword_1EDEAE678) = 0;
  v320 = qword_1EDEAE660;
  *(a8 + qword_1EDEAE660) = 0;
  *(a8 + qword_1EDEBBDE8) = 0;
  v32 = (a8 + qword_1EDEBBDC8);
  *v32 = 0;
  v32[1] = 0;
  v317 = v32;
  *(a8 + qword_1EDEBBDD0) = 0;
  v33 = (a8 + qword_1EDEBBDC0);
  *v33 = 0;
  v33[1] = 0;
  v315 = v33;
  v34 = (a8 + qword_1EDEBBDD8);
  *v34 = 0;
  v34[1] = 0;
  v319 = v34;
  v35 = (a8 + qword_1EDEBBDF0);
  *v35 = 0;
  v35[1] = 0;
  v321 = v35;
  v36 = (a8 + qword_1EDEBBE20);
  *v36 = 0;
  v36[1] = 0;
  v323 = v36;
  *(a8 + qword_1EDEBBDE0) = 0;
  v37 = qword_1EC4BFAF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB20, &qword_1CFA052A8);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CFA04E00;
  *(v38 + 32) = 0;
  *(v38 + 40) = sub_1CF3BDB8C;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0x10000;
  *(v38 + 64) = 0x10000;
  *(v38 + 72) = sub_1CF3BDC14;
  *(v38 + 80) = 0;
  *(v38 + 88) = 65537;
  *(v38 + 96) = 65537;
  *(v38 + 104) = sub_1CF3BDC9C;
  *(v38 + 112) = 0;
  *(v38 + 120) = 0x20000;
  *(v38 + 128) = 0x20000;
  *(v38 + 136) = sub_1CF3BDD24;
  *(v38 + 144) = 0;
  *(v38 + 152) = 131073;
  *(v38 + 160) = 131073;
  *(v38 + 168) = sub_1CF3BDDAC;
  *(v38 + 176) = 0;
  *(v38 + 184) = 131074;
  *(v38 + 192) = 131074;
  *(v38 + 200) = sub_1CF3BDE34;
  *(v38 + 208) = 0;
  *(v38 + 216) = 131075;
  *(v38 + 224) = 131075;
  *(v38 + 232) = sub_1CF3BDEBC;
  *(v38 + 240) = 0;
  *(v38 + 248) = 131076;
  *(v38 + 256) = 131076;
  *(v38 + 264) = sub_1CF3BDF44;
  *(v38 + 272) = 0;
  *(v38 + 280) = 131077;
  *(v38 + 288) = 131077;
  *(v38 + 296) = sub_1CF3BDFCC;
  *(v38 + 304) = 0;
  *(v38 + 312) = 131078;
  *(v38 + 320) = 131078;
  *(v38 + 328) = sub_1CF3BE054;
  *(v38 + 336) = 0;
  *(v38 + 344) = 131079;
  *(v38 + 352) = 131079;
  *(v38 + 360) = sub_1CF3BE0DC;
  *(v38 + 368) = 0;
  *(v38 + 376) = 131080;
  *(v38 + 384) = 131080;
  *(v38 + 392) = sub_1CF3BE164;
  *(v38 + 400) = 0;
  *(v38 + 408) = 131081;
  *(v38 + 416) = 131081;
  *(v38 + 424) = sub_1CF3BE1EC;
  *(v38 + 432) = 0;
  *(v38 + 440) = 196608;
  *(v38 + 448) = 196608;
  *(v38 + 456) = sub_1CF3BE274;
  *(v38 + 464) = 0;
  *(v38 + 472) = 196609;
  *(v38 + 480) = 196609;
  *(v38 + 488) = sub_1CF3BE2FC;
  *(v38 + 496) = 0;
  *(v38 + 504) = 196610;
  *(v38 + 512) = 196610;
  *(v38 + 520) = sub_1CF3BE384;
  *(v38 + 528) = 0;
  *(v38 + 536) = 196611;
  *(v38 + 544) = 196611;
  *(v38 + 552) = sub_1CF3BE40C;
  *(v38 + 560) = 0;
  *(v38 + 568) = 196612;
  *(v38 + 576) = 196612;
  *(v38 + 584) = sub_1CF3BE494;
  *(v38 + 592) = 0;
  *(v38 + 600) = 196613;
  *(v38 + 608) = 196613;
  *(v38 + 616) = sub_1CF3BE51C;
  *(v38 + 624) = 0;
  *(v38 + 632) = 196614;
  *(v38 + 640) = 196614;
  *(v38 + 648) = sub_1CF3BE5A4;
  *(v38 + 656) = 0;
  *(v38 + 664) = 196615;
  *(v38 + 672) = 196615;
  *(v38 + 680) = sub_1CF3BE62C;
  *(v38 + 688) = 0;
  *(v38 + 696) = 0x40000;
  *(v38 + 704) = 0x40000;
  *(v38 + 712) = sub_1CF3BE6B4;
  *(v38 + 720) = 0;
  *(v38 + 728) = 262145;
  *(v38 + 736) = 262145;
  *(v38 + 744) = sub_1CF3BE73C;
  *(v38 + 752) = 0;
  *(v38 + 760) = 327680;
  *(v38 + 768) = 327680;
  *(v38 + 776) = sub_1CF3BE7C4;
  *(v38 + 784) = 0;
  *(v38 + 792) = 327681;
  *(v38 + 800) = 327681;
  *(v38 + 808) = sub_1CF3BE84C;
  *(v38 + 816) = 0;
  *(v38 + 824) = 327682;
  *(v38 + 832) = 327682;
  *(v38 + 840) = sub_1CF3BE8D4;
  *(v38 + 848) = 0;
  *(v38 + 856) = 327683;
  *(v38 + 864) = 327683;
  *(v38 + 872) = sub_1CF3BE95C;
  *(v38 + 880) = 0;
  *(v38 + 888) = 327684;
  *(v38 + 896) = 327684;
  *(v38 + 904) = sub_1CF3BE9E4;
  *(v38 + 912) = 0;
  *(v38 + 920) = 327685;
  *(v38 + 928) = 327685;
  *(v38 + 936) = sub_1CF3BEA6C;
  *(v38 + 944) = 0;
  *(v38 + 952) = 327686;
  *(v38 + 960) = 327686;
  *(v38 + 968) = sub_1CF3BEAF4;
  *(v38 + 976) = 0;
  *(v38 + 984) = 327687;
  *(v38 + 992) = 327687;
  *(v38 + 1000) = sub_1CF3BEB7C;
  *(v38 + 1008) = 0;
  *(v38 + 1016) = 327688;
  *(v38 + 1024) = 327688;
  *(v38 + 1032) = sub_1CF3BEC04;
  *(v38 + 1040) = 0;
  *(v38 + 1048) = 327689;
  *(v38 + 1056) = 327689;
  *(v38 + 1064) = sub_1CF3BEC8C;
  *(v38 + 1072) = 0;
  *(v38 + 1080) = 327690;
  *(v38 + 1088) = 327690;
  *(v38 + 1096) = sub_1CF3BED14;
  *(v38 + 1104) = 0;
  *(v38 + 1112) = 327691;
  *(v38 + 1120) = 327691;
  *(v38 + 1128) = sub_1CF3BED9C;
  *(v38 + 1136) = 0;
  *(v38 + 1144) = 393216;
  *(v38 + 1152) = 393216;
  *(v38 + 1160) = sub_1CF3BEE24;
  *(v38 + 1168) = 0;
  *(v38 + 1176) = 393217;
  *(v38 + 1184) = 393217;
  *(v38 + 1192) = sub_1CF3BEEAC;
  *(v38 + 1200) = 0;
  *(v38 + 1208) = 393218;
  *(v38 + 1216) = 393218;
  *(v38 + 1224) = sub_1CF3BEF34;
  *(v38 + 1232) = 0;
  *(v38 + 1240) = 393219;
  *(v38 + 1248) = 393219;
  *(v38 + 1256) = sub_1CF3BEFBC;
  *(v38 + 1264) = 0;
  *(v38 + 1272) = 393220;
  *(v38 + 1280) = 393220;
  *(v38 + 1288) = sub_1CF3BF044;
  *(v38 + 1296) = 0;
  *(v38 + 1304) = 393221;
  *(v38 + 1312) = 393221;
  *(v38 + 1320) = sub_1CF3BF0CC;
  *(v38 + 1328) = 0;
  *(v38 + 1336) = 458752;
  *(v38 + 1344) = 458752;
  *(v38 + 1352) = sub_1CF3BF154;
  *(v38 + 1360) = 0;
  *(v38 + 1368) = 458753;
  *(v38 + 1376) = 458753;
  *(v38 + 1384) = sub_1CF3BF1DC;
  *(v38 + 1392) = 0;
  *(v38 + 1400) = 458754;
  *(v38 + 1408) = 458754;
  *(v38 + 1416) = sub_1CF3BF264;
  *(v38 + 1424) = 0;
  *(v38 + 1432) = 458755;
  *(v38 + 1440) = 458755;
  *(v38 + 1448) = sub_1CF3BF2EC;
  *(v38 + 1456) = 0;
  *(v38 + 1464) = 458756;
  *(v38 + 1472) = 458756;
  *(v38 + 1480) = sub_1CF3BF374;
  *(v38 + 1488) = 0;
  *(v38 + 1496) = 0x80000;
  *(v38 + 1504) = 0x80000;
  *(v38 + 1512) = sub_1CF3BF3FC;
  *(v38 + 1520) = 0;
  *(v38 + 1528) = 524289;
  *(v38 + 1536) = 524289;
  *(v38 + 1544) = sub_1CF3BF484;
  *(v38 + 1552) = 0;
  *(v38 + 1560) = 524290;
  *(v38 + 1568) = 524290;
  *(v38 + 1576) = sub_1CF3BF50C;
  *(v38 + 1584) = 0;
  *(v38 + 1592) = 524291;
  *(v38 + 1600) = 524291;
  *(v38 + 1608) = sub_1CF3BF594;
  *(v38 + 1616) = 0;
  *(v38 + 1624) = 590079;
  *(v38 + 1632) = 590079;
  *(v38 + 1640) = sub_1CF3BF61C;
  *(v38 + 1648) = 0;
  *(v38 + 1656) = 590080;
  *(v38 + 1664) = 590080;
  *(v38 + 1672) = sub_1CF3BF6A4;
  *(v38 + 1680) = 0;
  *(v38 + 1688) = 590081;
  *(v38 + 1696) = 590081;
  *(v38 + 1704) = sub_1CF3BF72C;
  *(v38 + 1712) = 0;
  *(v38 + 1720) = 590082;
  *(v38 + 1728) = 590082;
  *(v38 + 1736) = sub_1CF3BF7B4;
  *(v38 + 1744) = 0;
  *(v38 + 1752) = 590084;
  *(v38 + 1760) = 590084;
  *(v38 + 1768) = sub_1CF3BF83C;
  *(v38 + 1776) = 0;
  *(v38 + 1784) = 590085;
  *(v38 + 1792) = 590085;
  *(v38 + 1800) = sub_1CF3BF8C4;
  *(v38 + 1808) = 0;
  *(v38 + 1816) = 590086;
  *(v38 + 1824) = 590086;
  *(v38 + 1832) = sub_1CF3BF94C;
  *(v38 + 1840) = 0;
  *(v38 + 1848) = 590087;
  *(v38 + 1856) = 590087;
  *(v38 + 1864) = sub_1CF3BF9D4;
  *(v38 + 1872) = 0;
  *(v38 + 1880) = 590088;
  *(v38 + 1888) = 590088;
  *(v38 + 1896) = sub_1CF3BFA5C;
  *(v38 + 1904) = 0;
  *(v38 + 1912) = 655615;
  *(v38 + 1920) = 655615;
  *(v38 + 1928) = sub_1CF3BFAE4;
  *(v38 + 1936) = 0;
  *(v38 + 1944) = 655616;
  *(v38 + 1952) = 655616;
  *(v38 + 1960) = sub_1CF3BFB6C;
  *(v38 + 1968) = 0;
  *(v38 + 1976) = 655617;
  *(v38 + 1984) = 655617;
  *(v38 + 1992) = sub_1CF3BFBF4;
  *(v38 + 2000) = 0;
  *(v38 + 2008) = 720896;
  *(v38 + 2016) = 720896;
  *(v38 + 2024) = sub_1CF3BFC7C;
  *(v38 + 2032) = 0;
  *(v38 + 2040) = 720897;
  *(v38 + 2048) = 720897;
  *(v38 + 2056) = sub_1CF3BFD04;
  *(v38 + 2064) = 0;
  *(v38 + 2072) = 720898;
  *(v38 + 2080) = 720898;
  *(v38 + 2088) = sub_1CF3BFD8C;
  *(v38 + 2096) = 0;
  *(v38 + 2104) = 720899;
  *(v38 + 2112) = 720899;
  *(v38 + 2120) = sub_1CF3BFE14;
  *(v38 + 2128) = 0;
  *(v38 + 2136) = 720900;
  *(v38 + 2144) = 720900;
  *(v38 + 2152) = sub_1CF3BFE9C;
  *(v38 + 2160) = 0;
  *(v38 + 2168) = 720901;
  *(v38 + 2176) = 720901;
  *(v38 + 2184) = sub_1CF3BFF24;
  *(v38 + 2192) = 0;
  *(v38 + 2200) = 720902;
  *(v38 + 2208) = 720902;
  *(v38 + 2216) = sub_1CF3BFFAC;
  *(v38 + 2224) = 0;
  *(v38 + 2232) = 720903;
  v39 = sub_1CF4E0CC0(v38);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB28, &unk_1CFA052B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v322 = v37;
  *(a8 + v37) = v39;
  v40 = qword_1EDEBBE18;
  v343 = objc_opt_self();
  v41 = [v343 defaultStore];
  v42 = [v41 sqlDatabaseVacuumBatchSize];

  v43 = v16;
  *(a8 + v40) = v42;
  *(a8 + qword_1EDEBBE08) = 0;
  *(a8 + qword_1EDEBBE00) = 0;
  v344 = a8;
  *(a8 + qword_1EDEBBDF8) = 0;
  v44 = *(v349 + 136);
  v46 = *(v44 + 16);
  v45 = *(v44 + 24);

  v47 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v48 = v336;
  v49 = v22;
  v347 = v336[2];
  v348 = (v336 + 2);
  v347(v22, v352, v16);

  v346 = v26;
  v50 = sub_1CF9E6108();
  v51 = sub_1CF9E72C8();
  v45, v52, v53, v54, v55, v56, v57, v58;
  v59 = os_log_type_enabled(v50, v51);
  v350 = v16;
  v345 = v45;
  v333 = v46;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v334 = swift_slowAlloc();
    aBlock = v334;
    *v60 = 136446466;
    *(v60 + 4) = sub_1CEFD0DF0(v46, v45, &aBlock);
    *(v60 + 12) = 2082;
    v61 = v49;
    v62 = sub_1CF9E5928();
    v63 = [v62 fp_shortDescription];

    v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v66 = v65;

    v67 = v350;
    v68 = v48[1];
    v69 = (v48 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68(v61, v350);
    v70 = sub_1CEFD0DF0(v64, v66, &aBlock);
    v66, v71, v72, v73, v74, v75, v76, v77;
    *(v60 + 14) = v70;
    _os_log_impl(&dword_1CEFC7000, v50, v51, "opening database %{public}s at %{public}s", v60, 0x16u);
    v78 = v334;
    swift_arrayDestroy();
    v79 = v68;
    MEMORY[0x1D386CDC0](v78, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);

    v302 = *(v329 + 8);
    v302(v346, v330);
  }

  else
  {

    v79 = v48[1];
    v69 = (v48 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79(v49, v43);
    v302 = *(v329 + 8);
    v302(v346, v330);
    v67 = v43;
  }

  v80 = qword_1EC4EBCE0;
  v81 = v344;
  v82 = v347;
  v347((v344 + qword_1EC4EBCE0), v352, v67);
  v346 = v80;
  v83 = v81 + v80;
  v84 = v340;
  v82(v340, v83, v67);
  v85 = sub_1CF9E5888();
  v87 = v86;
  v79(v84, v67);
  v95 = v79;
  if (v85 == 0x656D3A3A656C6966 && v87 == 0xED00003A79726F6DLL)
  {
    0xED00003A79726F6DLL, v88, v89, v90, v91, v92, v93, v94;
    v96 = v338;
LABEL_8:
    v105 = v344;
    v106 = (v344 + qword_1EC4EBCE8);
    *v106 = 0;
    v106[1] = 0;
    v107 = 1;
    goto LABEL_10;
  }

  v97 = sub_1CF9E8048();
  v87, v98, v99, v100, v101, v102, v103, v104;
  v96 = v338;
  if (v97)
  {
    goto LABEL_8;
  }

  v105 = v344;
  v108 = v335;
  v347(v335, v344 + v346, v67);
  v109 = sub_1CF9E5A18();
  v111 = v110;
  v95(v108, v67);
  aBlock = 1818326829;
  aBlock_8 = 0xE400000000000000;
  v353 = v109;
  v354 = v111;
  v353 = sub_1CF9E6B48();
  v354 = v112;
  sub_1CF9E6A28();
  v107 = 0;
  v113 = v354;
  v114 = (v105 + qword_1EC4EBCE8);
  *v114 = v353;
  v114[1] = v113;
LABEL_10:
  v115 = (v105 + qword_1EDEBBDA0);
  v116 = v351;
  v313 = (v105 + qword_1EDEBBDA0);
  *v115 = sub_1CF47FAB8;
  v115[1] = v116;
  *(v105 + qword_1EDEAE650) = (v96 & 4) != 0;
  if ((v96 & 0x20000) != 0)
  {
    v117 = 3;
  }

  else
  {
    v117 = 1;
  }

  v118 = BYTE2(v96) & 2;
  if ((v96 & 0x200) != 0)
  {
    v118 = v117;
  }

  *(v105 + qword_1EDEAE668) = v118;

  v119 = [v343 defaultStore];
  v120 = [v119 sqlDatabaseBusyHandlerRetries];

  *(v105 + qword_1EDEBBDB8) = v120;
  v121 = v341;
  v122 = *v341;
  v123 = v341[1];
  *v341 = 0;
  v121[1] = 0;
  sub_1CF1FD6F8(v122, v123);
  v124 = v342;
  v125 = *v342;
  v126 = v342[1];
  *v342 = 0;
  v124[1] = 0;
  sub_1CF1FD6F8(v125, v126);
  v127 = type metadata accessor for PQLConnectionWithStatistics();
  v128 = [objc_allocWithZone(v127) init];
  v129 = 0;
  v130 = 0;
  v340 = qword_1EDEBBDB0;
  *(v105 + qword_1EDEBBDB0) = v128;
  v304 = v96 | v107;
  if (((v96 | v107) & 1) == 0)
  {
    v130 = [objc_allocWithZone(v127) init];
    if ((v96 & 0x200000) != 0)
    {
      v129 = [objc_allocWithZone(v127) init];
    }

    else
    {
      v129 = 0;
    }
  }

  v334 = v129;
  v336 = v130;
  v327 = v69;
  v328 = v95;
  v131 = v333;
  v132 = v96;
  v133 = v345;
  aBlock = v333;
  aBlock_8 = v345;

  MEMORY[0x1D3868CC0](0x296F722820, 0xE500000000000000);
  v335 = aBlock_8;
  v307 = aBlock;
  aBlock = v131;
  aBlock_8 = v133;

  MEMORY[0x1D3868CC0](0x747361466F722820, 0xE900000000000029);
  v332 = aBlock_8;
  v306 = aBlock;
  v134 = [v343 defaultStore];
  v135 = [v134 sqlDatabaseStatementCacheMaxCount];

  v136 = v337;
  v347(v337, v105 + v346, v350);
  v137 = v324;
  v138 = (v136 + *(v324 + 52));
  v139 = v326;
  *v138 = v325;
  v138[1] = v139;
  *(v136 + v137[14]) = v349;
  *(v136 + v137[15]) = v339;
  *(v136 + v137[16]) = v135;
  *(v136 + v137[17]) = (v132 & 0x200000000) != 0;
  *(v136 + v137[18]) = v107;
  *(v136 + v137[19]) = v132;

  if (errorInjectionThrowOnDBCreationEnabled())
  {

    LODWORD(aBlock) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF042F54(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v140 = v309;
    v141 = v311;
    sub_1CF9E57D8();
    v142 = sub_1CF9E53A8();
    (*(v310 + 8))(v140, v141);
    swift_willThrow();
LABEL_26:
    v146 = v331;
    v147 = v328;
    v148 = v336;
LABEL_27:
    sub_1CF24CD3C();
    v149 = swift_allocError();
    *v150 = v142;
    *(v150 + 48) = 1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v152 = v142;
    v153 = v142;
    if (Strong)
    {
      sub_1CF833CE4(0, v149);
    }

    swift_willThrow();
    v154 = v149;
    v335, v155, v156, v157, v158, v159, v160, v161;
    v332, v162, v163, v164, v165, v166, v167, v168;

    v345, v169, v170, v171, v172, v173, v174, v175;
    sub_1CEFCCC44(v146, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v176 = v350;
    v177 = v327;
    v147(v352, v350);
    sub_1CEFCCC44(v136, &qword_1EC4BFB18, &qword_1CFA052A0);

    sub_1CF1FD6F8(*v341, v341[1]);
    sub_1CF1FD6F8(*v342, v342[1]);
    sub_1CEFCCC44(v105 + v318, &unk_1EC4BEDE0, qword_1CF9FA390);
    v147(v105 + v346, v176);
    *(v105 + qword_1EC4EBCE8 + 8), v178, v179, v180, v181, v182, v183, v184;

    *(v105 + v314), v185, v186, v187, v188, v189, v190, v191;
    swift_unknownObjectRelease();

    sub_1CEFF7124(*v317, v317[1]);
    sub_1CEFF7124(*v315, v315[1]);
    sub_1CEFF7124(*v319, v319[1]);
    sub_1CEFF7124(*v321, v321[1]);
    sub_1CEFF7124(*v323, v323[1]);
    *(v105 + v322), v192, v193, v194, v195, v196, v197, v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    swift_deallocPartialClassInstance();
    return v177;
  }

  if (v132)
  {
    v143 = 1;
  }

  else
  {
    v143 = 6;
  }

  v144 = *&v340[v105];
  v145 = v312;
  sub_1CF3B0F28(v144, v131, v133, v143, v136);
  v142 = v145;
  if (v145)
  {

    goto LABEL_26;
  }

  *(v105 + v308) = 0;
  v148 = v336;
  v200 = v349;
  if (v107)
  {
    [*&v340[v105] setShouldUseWALJournalMode_];
  }

  if ((v338 & 1) == 0 && ![*&v340[v105] setupPragmas])
  {

    v142 = [*&v340[v105] lastError];
    v146 = v331;
    if (!v142)
    {
      type metadata accessor for PQLSqliteError(0);
      v353 = 11;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);
      sub_1CF9E57D8();
      v142 = aBlock;
    }

    swift_willThrow();
    v147 = v328;
    goto LABEL_27;
  }

  v201 = v331;
  if (v148)
  {
    if ((v338 & 0x200000) != 0)
    {
      v202 = 1;
    }

    else
    {
      v202 = 65537;
    }

    v203 = v148;
    sub_1CF3B0F28(v203, v307, v335, v202, v136);
  }

  if (v334)
  {
    v204 = v334;
    sub_1CF3B0F28(v204, v306, v332, 1, v136);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_allocObject();

  sub_1CF3E407C(0, v200, &qword_1EC4C0650, &qword_1CFA05A60, sub_1CF1CBB20, sub_1CF208628);
  v348 = v205;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_allocObject();
  v206 = v339;

  sub_1CF3E407C(1, v206, &qword_1EC4C0648, &qword_1CFA05A58, sub_1CF1CC7A8, sub_1CF2080AC);
  v208 = v207;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v209 = swift_allocObject();
  v210 = swift_weakInit();
  (*(*v200 + 96))(&aBlock, v210);

  (*(*v206 + 96))(&v353, v211);

  v212 = aBlock;
  v213 = v353;
  v214 = aBlock_8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_allocObject();
  v215 = sub_1CF38B590(v212, v214, v213);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_allocObject();
  v216 = v345;

  v217 = v338;
  v218 = sub_1CF3ED780(v333, v216, v338);
  type metadata accessor for SQLHistoryTable();
  v219 = swift_allocObject();
  strcpy((v219 + 16), "D2DRestoreV2");
  *(v219 + 29) = 0;
  *(v219 + 30) = -5120;
  *(v219 + 32) = MEMORY[0x1E69E7CC0];
  *(v105 + qword_1EDEBBE30) = v219;
  v220 = v305;
  sub_1CEFCCBDC(v201, v305, &qword_1EC4BFB10, &unk_1CFA12AD0);

  v221 = v348;

  v222 = sub_1CF4794AC(v215, v218, v221, v208, v209, v220, v217, v105);
  v347 = v215;
  v177 = v222;

  v349 = v208;

  v346 = v218;
  swift_weakAssign();
  v344 = v209;
  swift_weakAssign();
  v223 = *(v177 + 8);
  v224 = *&v177[qword_1EDEBBDB0];
  v225 = v223;
  sub_1CF47A748(v224, v225, v337, v217 & 1);

  if (v304)
  {
    v233 = &unk_1EC4EB000;
    v234 = &v177[qword_1EC4EBCD0];
    v235 = *&v177[qword_1EC4EBCD0];
    v236 = *&v177[qword_1EC4EBCD0 + 8];
    *v234 = 0;
    v234[1] = 0;
LABEL_54:
    sub_1CF1FD6F8(v235, v236);
    v263 = &v177[qword_1EC4EBCD8];
    v254 = *&v177[qword_1EC4EBCD8];
    v255 = *&v177[qword_1EC4EBCD8 + 8];
    *v263 = 0;
    v263[1] = 0;
    goto LABEL_55;
  }

  v233 = &unk_1EC4EB000;
  if ((v338 & 0x200000) == 0)
  {
    if (!v336)
    {
      goto LABEL_56;
    }

LABEL_53:
    v256 = *(v177 + 8);
    v257 = &v177[qword_1EC4EBCD0];
    v258 = *&v177[qword_1EC4EBCD0];
    v259 = *&v177[qword_1EC4EBCD0 + 8];
    v260 = v336;
    *v257 = v336;
    v257[1] = v256;
    v261 = v260;
    v262 = v256;
    v235 = v258;
    v236 = v259;
    goto LABEL_54;
  }

  if (v336)
  {
    if (v334)
    {
      v343 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
      v237 = v345;
      aBlock = v333;
      aBlock_8 = v345;
      v238 = v336;

      v342 = v238;
      v239 = v334;
      MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xED00004F52206573);
      v324 = aBlock_8;
      v325 = aBlock;
      aBlock = MEMORY[0x1E69E7CC0];
      v340 = sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
      v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
      v341 = sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870, MEMORY[0x1E69E6328]);
      sub_1CF9E77B8();
      LODWORD(v338) = *MEMORY[0x1E69E8098];
      v326 = *(v300 + 104);
      v240 = v299;
      v326(v299);
      v241 = sub_1CF9E7498();
      v242 = &v177[qword_1EC4EBCD0];
      v244 = *&v177[qword_1EC4EBCD0];
      v243 = *&v177[qword_1EC4EBCD0 + 8];
      *v242 = v336;
      v242[1] = v241;
      sub_1CF1FD6F8(v244, v243);
      aBlock = 0;
      aBlock_8 = 0xE000000000000000;
      sub_1CF9E7948();
      aBlock_8, v245, v246, v247, v248, v249, v250, v251;
      aBlock = v333;
      aBlock_8 = v237;

      MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA451A0);
      v333 = aBlock;
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1CF9E77B8();
      (v326)(v240, v338, v301);
      v233 = &unk_1EC4EB000;
      v252 = sub_1CF9E7498();

      v253 = &v177[qword_1EC4EBCD8];
      v254 = *&v177[qword_1EC4EBCD8];
      v255 = *&v177[qword_1EC4EBCD8 + 8];
      *v253 = v334;
      v253[1] = v252;
LABEL_55:
      sub_1CF1FD6F8(v254, v255);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_56:
  v264 = &v177[v233[410]];
  v265 = *v264;
  if (*v264)
  {
    v266 = v201;
    v267 = *(v264 + 1);
    v268 = swift_allocObject();
    swift_weakInit();
    v359 = sub_1CF485A94;
    v360 = v268;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v357 = sub_1CF00A468;
    v358 = &block_descriptor_12;
    v269 = _Block_copy(&aBlock);
    v270 = v265;
    v271 = v267;

    [v270 setAutoRollbackHandlerForSwift_];
    _Block_release(v269);
    sub_1CF3B107C(v270, v271);

    v201 = v266;
  }

  v272 = *&v177[qword_1EC4EBCD8];
  if (v272)
  {
    v273 = *&v177[qword_1EC4EBCD8 + 8];
    v274 = swift_allocObject();
    swift_weakInit();
    v359 = sub_1CF47FAD4;
    v360 = v274;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v357 = sub_1CF00A468;
    v358 = &block_descriptor_7;
    v275 = _Block_copy(&aBlock);
    v276 = v272;
    v277 = v273;

    [v276 setAutoRollbackHandlerForSwift_];
    _Block_release(v275);
    sub_1CF3B107C(v276, v277);

    v201 = v331;
  }

  v345, v226, v227, v228, v229, v230, v231, v232;
  v335, v278, v279, v280, v281, v282, v283, v284;
  v332, v285, v286, v287, v288, v289, v290, v291;
  v292 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v293 = sub_1CF9E6108();
  v294 = sub_1CF9E72C8();
  v295 = os_log_type_enabled(v293, v294);
  v296 = v330;
  if (v295)
  {
    v297 = swift_slowAlloc();
    *v297 = 0;
    _os_log_impl(&dword_1CEFC7000, v293, v294, "database is ready", v297, 2u);
    MEMORY[0x1D386CDC0](v297, -1, -1);
  }

  sub_1CEFCCC44(v201, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v328(v352, v350);
  v302(v303, v296);
  sub_1CEFCCC44(v337, &qword_1EC4BFB18, &qword_1CFA052A0);
  return v177;
}

void sub_1CF3BBC24(void *a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v8 = a1;
    v9 = sub_1CF9E6108();
    v10 = sub_1CF9E72B8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_getErrorValue();
      v13 = Error.prettyDescription.getter(v14[2], v14[3]);
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_1CEFC7000, v9, v10, "Fatal I/O or memory error in Prequelite: %@", v11, 0xCu);
      sub_1CEFCCC44(v12, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v12, -1, -1);
      MEMORY[0x1D386CDC0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_1CF7AC5B0(a1, 1, "autoRollbackHandler(error:)", 27, 2u);
  }
}

void sub_1CF3BBE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v97 = a3;
  v102 = *v3;
  v93 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v93);
  v94 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v104 = *(v8 - 8);
  v105 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v103 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v96 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v87 - v14;
  v16 = v3[6];
  v17 = v4[7];
  ObjectType = swift_getObjectType();
  v95 = a1;
  v19 = v107;
  v20 = sub_1CF95F964(a1, ObjectType, a2, v17, v97);
  if (!v19)
  {
    v90 = v12;
    v107 = v10;
    v101 = ObjectType;
    v87[1] = v16;
    v88 = v17;
    v106 = 0;
    v99 = v4;
    v89 = a2;
    v21 = v20;
    v22 = fpfs_supports_pkg_dataless_escape_prevention();
    v23 = *(v102 + 2632);
    v24 = *(v102 + 2648);
    if (v22)
    {
      v25 = 7;
    }

    else
    {
      v25 = 5;
    }

    v92 = v25;
    v108[0] = v23;
    v108[1] = v24;
    type metadata accessor for ConcreteJobResult(0, v108);
    v26 = sub_1CF056580();
    if (fpfs_supports_pkg_dataless_escape_prevention())
    {
      v28 = 7;
    }

    else
    {
      v28 = 5;
    }

    v91 = v21;
    v29 = v28 & ~v21;
    v100 = v26;
    if (v29)
    {
      v102 = v96 + 8;
      *&v27 = 136315138;
      v98 = v27;
      v30 = v101;
      v32 = v104;
      v31 = v105;
      v33 = v103;
      while (1)
      {
        v34 = v29 & -v29;
        v35 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v36 = sub_1CF9E6108();
        v37 = sub_1CF9E7298();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v108[0] = v39;
          *v38 = v98;
          v40 = sub_1CF7F48D8(v29 & -v29);
          v42 = v41;
          v43 = sub_1CEFD0DF0(v40, v41, v108);
          v44 = v42;
          v31 = v105;
          v44, v45, v46, v47, v48, v49, v50, v51;
          *(v38 + 4) = v43;
          v30 = v101;
          _os_log_impl(&dword_1CEFC7000, v36, v37, "feature flag has been enabled: %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v39);
          v52 = v39;
          v33 = v103;
          MEMORY[0x1D386CDC0](v52, -1, -1);
          v53 = v38;
          v32 = v104;
          MEMORY[0x1D386CDC0](v53, -1, -1);
        }

        (*v102)(v15, v107);
        v54 = v106;
        sub_1CF3BC540((v29 & -v29), v100);
        if (v54)
        {
          goto LABEL_28;
        }

        v106 = 0;
        v55 = v29 == v34;
        v29 ^= v34;
        if (v55)
        {
          goto LABEL_17;
        }
      }
    }

    v30 = v101;
    v32 = v104;
    v31 = v105;
    v33 = v103;
LABEL_17:
    v56 = v91 & ~v92;
    if (v56)
    {
      v102 = v96 + 8;
      *&v27 = 136315138;
      v98 = v27;
      v57 = v90;
      do
      {
        v58 = v56 & -v56;
        v59 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v60 = sub_1CF9E6108();
        v61 = sub_1CF9E72A8();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v108[0] = v63;
          *v62 = v98;
          v64 = sub_1CF7F48D8(v56 & -v56);
          v66 = v65;
          v67 = sub_1CEFD0DF0(v64, v65, v108);
          v68 = v66;
          v33 = v103;
          v68, v69, v70, v71, v72, v73, v74, v75;
          *(v62 + 4) = v67;
          v30 = v101;
          _os_log_impl(&dword_1CEFC7000, v60, v61, "Unsupported %s state, was the feature enabled and turned off?", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          v76 = v63;
          v32 = v104;
          MEMORY[0x1D386CDC0](v76, -1, -1);
          v77 = v62;
          v31 = v105;
          MEMORY[0x1D386CDC0](v77, -1, -1);
        }

        (*v102)(v57, v107);
        v55 = v56 == v58;
        v56 ^= v58;
      }

      while (!v55);
    }

    if (v92 == v91)
    {
      goto LABEL_28;
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v79 = v78;
    (*(v32 + 8))(v33, v31);
    v80 = v79 * 1000000000.0;
    if (COERCE__INT64(fabs(v79 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v81 = v97;
      v82 = v89;
      v84 = v94;
      v83 = v95;
      v85 = v88;
      if (v80 > -9.22337204e18)
      {
        if (v80 < 9.22337204e18)
        {
          v86 = v106;
          sub_1CF521850(v100, v80, v95, v89, v97);
          if (!v86)
          {
            *v84 = v92;
            swift_storeEnumTagMultiPayload();
            (*(v85 + 8))(v84, v83, v82, v81, v30, v85);
            sub_1CEFD5278(v84, type metadata accessor for SyncState);
          }

LABEL_28:

          return;
        }

LABEL_32:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_32;
  }
}

void sub_1CF3BC540(char *a1, uint64_t a2)
{
  v41 = a2;
  v4 = *v2;
  v5 = *(*v2 + 2648);
  v6 = *(*v2 + 2632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v39 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v36 - v8;
  v42 = sub_1CF9E5CF8();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 2656);
  v13 = *(v4 + 2640);
  v14 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  if (a1 == 4)
  {
    v39 = v16;
    v40 = v15;
    *&v25 = v6;
    *(&v25 + 1) = v13;
    *&v26 = v5;
    *(&v26 + 1) = v12;
    v43 = v25;
    v44 = v26;
    a1 = type metadata accessor for JobResult(0, &v43);
    *&v43 = v13;
    *(&v43 + 1) = v6;
    *&v44 = v12;
    *(&v44 + 1) = v5;
    type metadata accessor for Maintenance.MarkDirectoriesAsLocked(0, &v43);
    sub_1CF046AB4();
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v28 = v27;
    (*(v9 + 8))(v11, v42);
    v29 = v28 * 1000000000.0;
    if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v29 <= -9.22337204e18)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v29 >= 9.22337204e18)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_15:
    v35 = sub_1CF559420();
    (*(v39 + 8))(v18, v40);
    sub_1CF8039C4(v41, v35);
    goto LABEL_16;
  }

  if (a1 != 2)
  {
    v39 = v16;
    v40 = v15;
    if (a1 != 1)
    {
      goto LABEL_26;
    }

    *&v30 = v6;
    *(&v30 + 1) = v13;
    *&v31 = v5;
    *(&v31 + 1) = v12;
    v43 = v30;
    v44 = v31;
    a1 = type metadata accessor for JobResult(0, &v43);
    *&v43 = v13;
    *(&v43 + 1) = v6;
    *&v44 = v12;
    *(&v44 + 1) = v5;
    type metadata accessor for Maintenance.MarkPackagesAsEvictable(0, &v43);
    sub_1CF046AB4();
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v33 = v32;
    (*(v9 + 8))(v11, v42);
    v34 = v33 * 1000000000.0;
    if (COERCE__INT64(fabs(v33 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v34 <= -9.22337204e18)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v34 >= 9.22337204e18)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1CF511CA8("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLDatabase.swift", 130, 2, 644, a1);
    }

    goto LABEL_15;
  }

  *&v19 = v6;
  *(&v19 + 1) = v13;
  *&v20 = v5;
  *(&v20 + 1) = v12;
  v36 = v20;
  v37 = v19;
  v43 = v19;
  v44 = v20;
  type metadata accessor for JobResult(0, &v43);
  v43 = v37;
  v44 = v36;
  type metadata accessor for Maintenance.MarkPackagesAsSyncRoot(0, &v43);
  a1 = v40;
  sub_1CF046AB4();
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v22 = v21;
  (*(v9 + 8))(v11, v42);
  v23 = v22 * 1000000000.0;
  if (COERCE__INT64(fabs(v22 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = sub_1CF559420();
  (*(v38 + 8))(a1, v39);
  sub_1CF803A0C(v41, v24);
LABEL_16:
}

uint64_t sub_1CF3BCAC8(uint64_t a1, uint64_t a2)
{
  sub_1CF5994EC(a1, a2);

  return sub_1CF3BCAF0();
}

uint64_t sub_1CF3BCAF0()
{
  result = sub_1CF033B88();
  if ((result & 0x200000) != 0)
  {
    *(v0 + qword_1EC4EBD88) = 1;
  }

  else
  {
    v2 = *(v0 + qword_1EDEBBDB0);

    return [v2 makeNextFlushBarrierFSync];
  }

  return result;
}

void sub_1CF3BCB4C(uint64_t a1)
{
  sub_1CF9E5A18();
  v3 = v2;
  if (!*(v1 + qword_1EC4EBCE8 + 8))
  {
LABEL_5:
    sub_1CF9E6978();
    v4 = openat_s();

    if ((v4 & 0x80000000) == 0)
    {
      v3, v13, v14, v15, v16, v17, v18, v19;
      if ((sub_1CF9E6198() & 0x80000000) == 0)
      {
        close(v4);
        return;
      }

      v28 = MEMORY[0x1D38683F0]();
      v29 = 39;
      goto LABEL_11;
    }

LABEL_8:
    v20 = MEMORY[0x1D38683F0](v5);
    memset(v30, 0, sizeof(v30));
    v31 = 19;
    sub_1CF19BBE4(v20, v30);
    sub_1CF1969CC(v30);
    swift_willThrow();
    v3, v21, v22, v23, v24, v25, v26, v27;
    return;
  }

  sub_1CF9E6978();
  v4 = openat_s();

  if (v4 < 0)
  {
    goto LABEL_8;
  }

  if ((fsync(v4) & 0x80000000) == 0)
  {
    close(v4);
    goto LABEL_5;
  }

  v3, v6, v7, v8, v9, v10, v11, v12;
  v28 = MEMORY[0x1D38683F0]();
  v29 = 38;
LABEL_11:
  *v30 = v29;
  memset(&v30[8], 0, 32);
  v31 = 19;
  sub_1CF19BBE4(v28, v30);
  sub_1CF1969CC(v30);
  swift_willThrow();
  close(v4);
}

uint64_t sub_1CF3BCCF0()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v2 = *(*(v0 + 192) + 16);
  result = objc_sync_exit(v0);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (!v2)
  {
    if (*(v0 + 200))
    {
      sub_1CF3E3F48(1, 2, 2);
    }

    *(v0 + 200) = 0;
    v4 = swift_unknownObjectRelease();
    return (*(**(v0 + 24) + 496))(v4);
  }

  return result;
}

uint64_t sub_1CF3BCE50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v13 - v4);
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  swift_storeEnumTagMultiPayload();
  sub_1CF3CFB14(v5, v8, v6, v7);
  result = sub_1CEFCCC44(v5, &qword_1EC4BE710, &qword_1CF9FE5A8);
  if (!v1)
  {
    v10 = a1[3];
    v11 = a1[4];
    v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
    return sub_1CF5A62B4(v12, v10, v11);
  }

  return result;
}

void sub_1CF3BCF74(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    while (1)
    {
      v6 = *(v5 - 8);

      v7 = objc_autoreleasePoolPush();
      sub_1CF1A91AC(a1, v14);
      v6(v14);
      if (v2)
      {
        break;
      }

      sub_1CEFCCC44(v14, &unk_1EC4C1B30, &qword_1CFA05300);
      v8 = a1[3];
      v9 = a1[4];
      v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
      sub_1CF5A62B4(v10, v8, v9);
      objc_autoreleasePoolPop(v7);

      v5 += 16;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    sub_1CEFCCC44(v14, &unk_1EC4C1B30, &qword_1CFA05300);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
LABEL_5:
    v11 = a1[3];
    v12 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
    sub_1CF5A62B4(v13, v11, v12);
  }
}

uint64_t sub_1CF3BD0C4()
{
  v0 = sub_1CF9E6068();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - v7;
  v35 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "scheduler is becoming idle, clearing the statement cache", v17, 2u);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  v19 = v36;
  (*(v1 + 56))(v36, 1, 1, v0);
  sub_1CEFCCBDC(v19, v5, &unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(v1 + 48);
  v21 = v20(v5, 1, v0);
  v22 = v37;
  if (v21 == 1)
  {
    v23 = v18;
    sub_1CF9E6048();
    if (v20(v5, 1, v0) != 1)
    {
      sub_1CEFCCC44(v5, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v1 + 32))(v37, v5, v0);
  }

  (*(v1 + 16))(v9, v22, v0);
  v24 = v35;
  *&v9[*(v35 + 20)] = v18;
  v25 = &v9[*(v24 + 24)];
  *v25 = "SQLDB: clearing statement cache";
  *(v25 + 1) = 31;
  v25[16] = 2;
  v26 = v18;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v1 + 8))(v22, v0);
  sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
  v27 = v38;
  [*(v38 + qword_1EDEBBDB0) _clearStatementCache];
  v28 = *(v27 + qword_1EC4EBCD0);
  if (v28)
  {
    v29 = *(v27 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(v27 + qword_1EC4EBCD0), v29);
    v30 = v28;
    sub_1CF1FD6F8(v28, v29);
    [v30 _clearStatementCache];
  }

  v31 = *(v27 + qword_1EC4EBCD8);
  if (v31)
  {
    v32 = *(v27 + qword_1EC4EBCD8 + 8);
    sub_1CF1FD6B8(*(v27 + qword_1EC4EBCD8), v32);
    v33 = v31;
    sub_1CF1FD6F8(v31, v32);
    [v33 _clearStatementCache];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v9, type metadata accessor for Signpost);
}

void sub_1CF3BD600(void (**a1)(char *, uint64_t), _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3)
{
  v5 = v3;
  sub_1CF599648(a1, a2, a3);
  if (!v4)
  {
    v6 = qword_1EDEBBDE8;
    if (*(v3 + qword_1EDEBBDE8) == 1)
    {
      v7 = *(v3 + qword_1EDEBBDC8);
      if (v7)
      {
        v8 = *(v3 + qword_1EDEBBDC8 + 8);

        v7(v9);
        sub_1CEFF7124(v7, v8);
      }

      *(v5 + v6) = 0;
    }

    v10 = qword_1EDEBBDD0;
    if (*(v5 + qword_1EDEBBDD0) == 1)
    {
      v11 = *(v5 + qword_1EDEBBDC0);
      if (v11)
      {
        v12 = *(v5 + qword_1EDEBBDC0 + 8);

        v11(v13);
        sub_1CEFF7124(v11, v12);
      }

      *(v5 + v10) = 0;
    }
  }
}

uint64_t sub_1CF3BD6E0()
{
  v16 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();

  sub_1CF39D060();
  v1 = v0;

  sub_1CF1E8DEC(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  v3 = swift_dynamicCastClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 56) = v2;
  *(inited + 64) = &off_1F4C020A8;
  *(inited + 32) = v3;

  sub_1CF1E8DEC(inited);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  v6 = swift_dynamicCastClassUnconditional();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1CF9FA450;
  *(v7 + 56) = v5;
  *(v7 + 64) = &off_1F4C020A8;
  *(v7 + 32) = v6;

  sub_1CF1E8DEC(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v9 = swift_dynamicCastClassUnconditional();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1CF9FA450;
  *(v10 + 56) = v8;
  *(v10 + 64) = &off_1F4BF4140;
  *(v10 + 32) = v9;

  sub_1CF1E8DEC(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v12 = swift_dynamicCastClassUnconditional();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1CF9FA450;
  *(v13 + 56) = v11;
  *(v13 + 64) = &off_1F4BFC6F8;
  *(v13 + 32) = v12;

  sub_1CF1E8DEC(v13);
  sub_1CF39CE8C();
  sub_1CF1E8DEC(v14);
  return v16;
}

uint64_t sub_1CF3BD984(uint64_t a1)
{
  v2 = *v1;
  v26 = MEMORY[0x1E69E7CC0];
  v25 = sub_1CF478C28();
  v4 = v2[330];
  v5 = v2[331];
  v6 = v2[332];
  v21 = v2[329];
  v3 = v21;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v7 = type metadata accessor for SQLJobRegistry(0, &v21);
  sub_1CF339634(v7, &off_1F4C025C0);
  sub_1CF1E8DEC(v8);
  v9 = sub_1CF47FA34();
  v24 = v6;
  v25 = v9;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v10 = type metadata accessor for SQLSnapshot(0, &v21);
  sub_1CF339634(v10, &off_1F4C020A8);
  sub_1CF1E8DEC(v11);
  v12 = sub_1CF47F85C();
  v24 = v5;
  v25 = v12;
  v21 = v4;
  v22 = v3;
  v23 = v6;
  v13 = type metadata accessor for SQLSnapshot(0, &v21);
  sub_1CF339634(v13, &off_1F4C020A8);
  sub_1CF1E8DEC(v14);
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v15 = type metadata accessor for SQLReconciliationTable(0, &v21);
  v21 = swift_dynamicCastClassUnconditional();
  sub_1CF339634(v15, &off_1F4BF4140);
  sub_1CF1E8DEC(v16);
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v17 = type metadata accessor for SQLSyncStateTable(0, &v21);
  v21 = swift_dynamicCastClassUnconditional();
  sub_1CF339634(v17, &off_1F4BFC6F8);
  sub_1CF1E8DEC(v18);
  sub_1CF39CE8C();
  sub_1CF1E8DEC(v19);
  return v26;
}

uint64_t sub_1CF3BDB8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 24))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDC14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 32))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDC9C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 40))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDD24(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 48))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDDAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 56))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDE34(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 64))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDEBC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 72))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDF44(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 80))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDFCC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 88))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE054(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 96))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE0DC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 104))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE164(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 112))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE1EC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 120))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE274(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 128))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE2FC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 136))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE384(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 144))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE40C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 152))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE494(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 160))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE51C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 168))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE5A4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 176))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE62C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 184))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE6B4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 192))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE73C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 200))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE7C4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 208))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE84C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 216))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE8D4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 224))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE95C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 232))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE9E4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 240))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEA6C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 248))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEAF4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 256))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEB7C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 264))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEC04(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 272))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEC8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 280))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BED14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 288))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BED9C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 296))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEE24(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 304))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEEAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 312))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEF34(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 320))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEFBC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 328))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF044(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 336))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF0CC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 344))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF154(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 352))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF1DC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 360))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF264(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 368))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF2EC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 376))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF374(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 384))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF3FC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 392))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF484(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 400))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF50C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 408))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF594(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 416))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF61C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 424))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF6A4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 432))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF72C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 440))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF7B4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 448))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF83C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 456))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF8C4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 464))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF94C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 472))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF9D4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 480))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFA5C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 488))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFAE4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 496))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFB6C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 504))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFBF4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 512))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFC7C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 520))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFD04(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 528))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFD8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 536))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFE14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 544))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFE9C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 552))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFF24(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 560))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFFAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 568))(v7, v5, v6, v3, v4);
}

void sub_1CF3C0034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(sqlite3_context *a1), uint64_t a6)
{
  v11 = sub_1CF9E6888();
  v20 = sub_1CF3C0208;
  v21 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1CF07612C;
  v19 = a3;
  v12 = _Block_copy(&v16);

  [a1 registerFunction:v11 nArgs:2 handler:v12];
  _Block_release(v12);

  LOBYTE(v12) = *(v6 + qword_1EDEAE668);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_1CF9E6888();
  v20 = a5;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1CF07612C;
  v19 = a6;
  v15 = _Block_copy(&v16);

  [a1 registerFunction:v14 nArgs:3 handler:v15];
  _Block_release(v15);
}

void sub_1CF3C0210(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3, uint64_t a4)
{
  v7 = sqlite3_value_int(*a3);
  v8 = sqlite3_value_int(a3[1]);
  v9 = sqlite3_value_int(a3[2]);
  if (v9 <= 4 && ((0x17u >> v9) & 1) != 0)
  {
    v10 = sub_1CEFF8538(v7, v8, 0, a4, (2u >> v9) & 1, 0);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {

      sqlite3_result_int(a1, v10);
      return;
    }

    __break(1u);
    return;
  }

  v11 = *a3;

  sqlite3_result_value(a1, v11);
}

void sub_1CF3C0308(void *a1, uint64_t a2)
{
  sub_1CF3C0034(a1, a2, &block_descriptor_1320, &unk_1F4C011B8, sub_1CF485900, &block_descriptor_1327);
  v3 = swift_allocObject();
  swift_weakInit();

  v4 = sub_1CF9E6888();
  v19 = sub_1CF482D7C;
  v20 = v3;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1299;
  v5 = _Block_copy(&v15);

  [a1 registerFunction:v4 nArgs:1 handler:v5];
  _Block_release(v5);

  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1CF9E6888();
  v19 = sub_1CF482D84;
  v20 = v6;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1303;
  v8 = _Block_copy(&v15);

  [a1 registerFunction:v7 nArgs:2 handler:v8];
  _Block_release(v8);

  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1CF9E6888();
  v19 = sub_1CF482D8C;
  v20 = v9;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1307;
  v11 = _Block_copy(&v15);

  [a1 registerFunction:v10 nArgs:3 handler:v11];
  _Block_release(v11);

  v12 = swift_allocObject();
  swift_weakInit();

  v13 = sub_1CF9E6888();
  v19 = sub_1CF482D94;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1311;
  v14 = _Block_copy(&v15);

  [a1 registerFunction:v13 nArgs:1 handler:v14];
  _Block_release(v14);
}

void sub_1CF3C0730(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3, uint64_t a4)
{
  v5 = sqlite3_value_int64(*a3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EDEBBDE8) = 1;
  }

  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    sqlite3_result_int64(a1, v5 + 1);
  }
}

void sub_1CF3C07B8(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3, uint64_t a4)
{
  v31 = a1;
  v5 = sub_1CF9E6118();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = sub_1CF9E5CF8();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EDEBBDD0) = 1;
  }

  if (sqlite3_value_int(*a3) == 1)
  {
    VFSItemID.init(sqliteValue:)(a3[1], &v33);
    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = v34;
      *v17 = v33;
      *(v17 + 4) = v21;
      swift_storeEnumTagMultiPayload();
      if (*(v20 + qword_1EDEADB48) == 1)
      {
        sub_1CEFCCBDC(v17, v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
        swift_beginAccess();
        sub_1CF7E2EC8(v14);
        swift_endAccess();
      }

      sub_1CEFCCC44(v17, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }
  }

  else if (sqlite3_value_int(*a3) == 2)
  {
    v25 = sub_1CF2CB644(a3[1]);
    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (v26)
    {
      v27 = v26;
      *v11 = v25;
      *(v11 + 4) = 256;
      swift_storeEnumTagMultiPayload();
      if (*(v27 + qword_1EDEADB48) == 1)
      {
        sub_1CEFCCBDC(v11, v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
        swift_beginAccess();
        v28 = v25;
        sub_1CF7E2EC8(v14);
        swift_endAccess();
      }

      else
      {
        v29 = v25;
      }

      sub_1CEFCCC44(v11, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    else
    {
    }
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v23 = v22;
  (*(v6 + 8))(v8, v32);
  v24 = v23 * 1000000000.0;
  if (COERCE__INT64(fabs(v23 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v24 < 9.22337204e18)
  {
    sqlite3_result_int64(v31, v24);
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1CF3C0D7C(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3, uint64_t a4)
{
  v7 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sqlite3_value_int64(a3[2]);
  VFSItemID.init(sqliteValue:)(*a3, &v19);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = a1;
    v10 = *(Strong + qword_1EDEBBDB0);
    v17 = &type metadata for SQLDatabaseReadWriteAccessor;
    v18 = &off_1F4C17938;
    v15 = v10;
    v16 = 2;
    v11 = v19;
    v12 = v20;
    v13 = v10;
    sub_1CF3C1060(&v15, a3, v11, v12, a4, v8);

    __swift_destroy_boxed_opaque_existential_1(&v15);

    a1 = v14;
  }

  sqlite3_result_int64(a1, 0);
}

void sub_1CF3C1060(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1CF9E5CF8();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a3;
  v62 = a4;
  if (!sqlite3_value_int64(*(a2 + 8)))
  {
    v41 = a1[3];
    v42 = a1[4];
    v43 = __swift_project_boxed_opaque_existential_1(a1, v41);
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    swift_dynamicCastClassUnconditional();

    sub_1CF348CFC(&v61, a6, v43, v41, v42);
    goto LABEL_12;
  }

  v53[2] = a5;
  v54 = v13;
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v19 = v61;
  v20 = v62;
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7288();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v53[0] = a6;
    v24 = v20;
    v25 = v23;
    v26 = swift_slowAlloc();
    v53[1] = v6;
    v27 = v26;
    v59[0] = v26;
    v59[1] = v19;
    *v25 = 136315138;
    v60 = v24;
    v28 = VFSItemID.description.getter(v26);
    v30 = v29;
    v31 = sub_1CEFD0DF0(v28, v29, v59);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v25 + 4) = v31;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "📌 SCHEDULE_BACKGROUND_DOWNLOAD: for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D386CDC0](v27, -1, -1);
    v39 = v25;
    v40 = v53[0];
    MEMORY[0x1D386CDC0](v39, -1, -1);

    (*(v57 + 8))(v17, v58);
  }

  else
  {

    (*(v57 + 8))(v17, v58);
    v40 = a6;
  }

  v44 = a1[3];
  v45 = a1[4];
  v46 = __swift_project_boxed_opaque_existential_1(a1, v44);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v48 = v54;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    swift_dynamicCastClassUnconditional();

    v49 = v55;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v51 = v50;
    (*(v56 + 8))(v49, v48);
    v52 = v51 * 1000000000.0;
    if (COERCE__INT64(fabs(v51 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v52 > -9.22337204e18)
    {
      if (v52 < 9.22337204e18)
      {
        sub_1CF347AC0(&v61, v40, v52, v46, v44, v45);
LABEL_12:

        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_16;
  }
}

void sub_1CF3C1524(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();

  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for VFSItem(0);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CF042F54(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  sub_1CF4804D8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  v7 = sub_1CF9E6288();
  if (!__OFADD__(*v8, 1))
  {
    ++*v8;
    v7(v9, 0);

LABEL_4:
    sqlite3_result_int64(a1, 0);
    return;
  }

  __break(1u);
}

void sub_1CF3C174C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, void *a3, uint64_t a4)
{
  v269 = a2;
  v268 = a1;
  v267 = sub_1CF9E5CF8();
  v263 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v266 = &v248 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v264);
  v265 = (&v248 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1CF9E6118();
  v270 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v248 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v248 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v248 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v248 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v248 - v21;
  v278 = a3;
  v279 = a4;
  v23 = v272;
  sub_1CF7D5920(sub_1CF485954, 0, a3);
  if (!v23)
  {
    v262 = v8;
    v261 = v22;
    v260 = v19;
    v272 = v16;
    v259 = v13;
    v258 = v10;
    sub_1CF7D5920(sub_1CF3C2DA4, 0, a3);
    sub_1CF7D5920(sub_1CF4858D8, 0, a3);
    sub_1CF7D5920(sub_1CF4858DC, 0, a3);
    v252 = 0;
    v250 = a3;
    v251 = a4;
    sub_1CF3C0308(a3, a4);
    v24 = v271;
    v255 = *(v271 + qword_1EDEBBDB0);
    v25 = [v255 userVersion];
    v26 = [v25 unsignedIntValue];

    v27 = swift_allocObject();
    v257 = v27;
    v253 = v26;
    *(v27 + 16) = v26;
    v28 = *(v24 + qword_1EC4BFAF8);
    v256 = (v27 + 16);
    swift_beginAccess();
    if (*v28->tree)
    {
      v254 = v275;
      do
      {
        v29 = sub_1CF7D52AC();
        v24 = v271;
        if ((v30 & 1) == 0)
        {
          break;
        }

        v31 = v28;
        v32 = *v28[1].tester + 24 * v29;
        v33 = *v32;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        v36 = swift_allocObject();
        v37 = &v248;
        *(v36 + 16) = v33;
        *(v36 + 24) = v34;
        MEMORY[0x1EEE9AC00](v36);
        *(&v248 - 6) = v257;
        *(&v248 - 10) = v35;
        v38 = v24;
        *(&v248 - 4) = v24;
        *(&v248 - 3) = sub_1CF482CD4;
        *(&v248 - 2) = v39;
        *(&v248 - 1) = &v278;
        v277 = 0;
        LOBYTE(v276) = 1;
        v40 = swift_allocObject();
        *(v40 + 16) = &v276;
        *(v40 + 24) = sub_1CF482CFC;
        *(v40 + 32) = &v248 - 8;
        *(v40 + 40) = &v277;
        *(v40 + 48) = 10;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_1CF482D2C;
        *(v41 + 24) = v40;
        v275[2] = sub_1CF485B64;
        v275[3] = v41;
        aBlock = MEMORY[0x1E69E9820];
        v274 = 1107296256;
        v275[0] = sub_1CF033B10;
        v275[1] = &block_descriptor_1292;
        v42 = _Block_copy(&aBlock);

        v43 = [v255 performWithFlags:10 action:v42];
        _Block_release(v42);
        LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

        if (v34)
        {
          __break(1u);
          goto LABEL_31;
        }

        v44 = v277;
        if (v277)
        {
          v45 = 0;
        }

        else
        {
          v45 = v43;
        }

        if (v45 != 1)
        {
          if (!v277)
          {
            goto LABEL_84;
          }

          swift_willThrow();
          v53 = v44;

          return;
        }

        if (v276)
        {
          __break(1u);
          goto LABEL_78;
        }

        v28 = v31;
        v24 = v38;
      }

      while (*v31->tree);
    }

    if (errorInjectionUnknownDBVersionEnabled() && v253 != 9999999 && v253)
    {
      [v255 setUserVersion_];
      *v256 = 9999999;
      v46 = v270;
      v47 = v272;
    }

    else
    {
      v46 = v270;
      v47 = v272;
      if (*v256 == 720903)
      {
        v49 = v24[6];
        v48 = v24[7];
        ObjectType = swift_getObjectType();
        v51 = v261;
        v52 = v252;
        sub_1CF95FA88(&v278, ObjectType, &type metadata for SQLDatabaseReadWriteAccessor, v48, &off_1F4C17938, v261);
        if (v52)
        {
LABEL_24:

          return;
        }

        v255 = ObjectType;
        v272 = v49;
        v254 = v48;
        v71 = sub_1CF9E5D98();
        v72 = *(v71 - 8);
        (*(v72 + 56))(v51, 0, 1, v71);
        v73 = qword_1EDEBBDA8;
        v74 = v51;
        v75 = v271;
        swift_beginAccess();
        sub_1CEFDA9E0(v74, v75 + v73, &unk_1EC4BEDE0, qword_1CF9FA390);
        swift_endAccess();
        v76 = v75 + v73;
        v77 = v260;
        sub_1CEFCCBDC(v76, v260, &unk_1EC4BEDE0, qword_1CF9FA390);
        if ((*(v72 + 48))(v77, 1, v71) == 1)
        {
          goto LABEL_85;
        }

        v78 = v254;
        sub_1CF95FBE4(v77, &v278, v255, &type metadata for SQLDatabaseReadWriteAccessor, v254, &off_1F4C17938);
        v79 = v77;
        v43 = v251;
        (*(v72 + 8))(v79, v71);
        v80 = sub_1CF39A3EC(v250, v43);
        *(v271 + qword_1EDEBBDE0) = v80 & 1;
        v38 = 0;
        v81 = sub_1CF95F3A0(&v278, v255, &type metadata for SQLDatabaseReadWriteAccessor, v78, &off_1F4C17938);
        v82 = v271;
        v83 = v271[4];

        v84 = FPVersion();
        if (!v84)
        {
LABEL_86:
          __break(1u);
          return;
        }

        v85 = v84;
        v260 = v83;
        v261 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v86;

        v87 = *(**(v82[5] + 16) + 120);

        v40 = v87(v88);
        v37 = v89;

        v90 = FPOSVersion();
        v249 = v81;
        if (v90)
        {
          v91 = v90;
          v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v94 = v93;
        }

        else
        {
LABEL_31:
          v92 = 0;
          v94 = 0;
        }

        aBlock = v268;
        v274 = v269;
        MEMORY[0x1EEE9AC00](v269);
        *(&v248 - 2) = 1129530692;
        *(&v248 - 1) = 0xE400000000000000;

        v95 = sub_1CF7D55FC(sub_1CF250D78, (&v248 - 4), v250, v43);
        if (v38)
        {

          v97 = 1;
          v98 = 0;
LABEL_52:
          MEMORY[0x1EEE9AC00](v96);
          *(&v248 - 10) = v92;
          *(&v248 - 9) = v94;
          *(&v248 - 16) = 720903;
          *(&v248 - 7) = 0x2F265CD7BALL;
          *(&v248 - 6) = v261;
          *(&v248 - 5) = v31;
          *(&v248 - 4) = v40;
          *(&v248 - 3) = v37;
          *(&v248 - 2) = &aBlock;
          sub_1CF7D5920(sub_1CF1FD9BC, (&v248 - 12), v250);
          v252 = v98;
          if (v98)
          {
            v94, v107, v108, v109, v110, v111, v112, v113;
            v114 = v274;

            v31, v115, v116, v117, v118, v119, v120, v121;
            v37, v122, v123, v124, v125, v126, v127, v128;
            v114, v129, v130, v131, v132, v133, v134, v135;
            return;
          }

          v94, v107, v108, v109, v110, v111, v112, v113;
LABEL_55:
          v143 = v274;
          v31, v136, v137, v138, v139, v140, v141, v142;
          v37, v144, v145, v146, v147, v148, v149, v150;
          v143, v151, v152, v153, v154, v155, v156, v157;
          if (!v253 || (v97 & 1) != 0)
          {
            goto LABEL_74;
          }

          v158 = qword_1EDEADB48;
          *(v271 + qword_1EDEADB48) = 1;
          v159 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v160 = sub_1CF9E6108();
          v161 = sub_1CF9E72C8();
          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            *v162 = 0;
            _os_log_impl(&dword_1CEFC7000, v160, v161, "updating, clearing the throttles", v162, 2u);
            MEMORY[0x1D386CDC0](v162, -1, -1);
          }

          v163 = *(v270 + 8);
          v164 = v163(v259, v262);
          (*(**(v260 + 2) + 96))(&aBlock, v164);
          v165 = v266;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v167 = v166;
          v168 = *(v263 + 8);
          v168(v165, v267);
          v169 = v167 * 1000000000.0;
          if (COERCE__INT64(fabs(v167 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_78:
            __break(1u);
          }

          else if (v169 > -9.22337204e18)
          {
            if (v169 < 9.22337204e18)
            {
              v170 = v169;
              v171 = aBlock;
              v172 = v274;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0170, &qword_1CF9FAC18);
              v173 = swift_allocObject();
              *(v173 + 152) = v172;
              *(v173 + 16) = 0u;
              *(v173 + 32) = 0u;
              *(v173 + 48) = 1;
              *(v173 + 56) = 0u;
              *(v173 + 72) = 0u;
              *(v173 + 88) = 0;
              *(v173 + 96) = xmmword_1CF9FEC30;
              *(v173 + 112) = 0;
              *(v173 + 120) = 0;
              *(v173 + 128) = v170;
              *(v173 + 136) = 0;
              *(v173 + 144) = v171;
              v174 = v266;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v176 = v175;
              v168(v174, v267);
              v177 = v176 * 1000000000.0;
              if (COERCE__INT64(fabs(v176 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v177 > -9.22337204e18)
                {
                  if (v177 < 9.22337204e18)
                  {
                    v178 = v252;
                    sub_1CF902E70(v173, v177, v250, v251);
                    v252 = v178;
                    if (v178)
                    {

LABEL_67:
                      *(v271 + v158) = 0;

                      return;
                    }

                    if (v253 != 720903 || v249 != 0x2F265CD7BALL)
                    {
                      v179 = fpfs_current_or_default_log();
                      sub_1CF9E6128();

                      v180 = sub_1CF9E6108();
                      v181 = sub_1CF9E72C8();

                      if (os_log_type_enabled(v180, v181))
                      {
                        v182 = swift_slowAlloc();
                        v183 = swift_slowAlloc();
                        v277 = v183;
                        *v182 = 136446978;
                        v184 = sub_1CF3B0B48();
                        v186 = v185;
                        v187 = sub_1CEFD0DF0(v184, v185, &v277);
                        v186, v188, v189, v190, v191, v192, v193, v194;
                        *(v182 + 4) = v187;
                        *(v182 + 12) = 2080;
                        aBlock = 114;
                        v274 = 0xE100000000000000;
                        v276 = v249;
                        v195 = sub_1CF9E7F98();
                        v197 = v196;
                        MEMORY[0x1D3868CC0](v195);
                        v197, v198, v199, v200, v201, v202, v203, v204;
                        v205 = v274;
                        v206 = sub_1CEFD0DF0(aBlock, v274, &v277);
                        v205, v207, v208, v209, v210, v211, v212, v213;
                        *(v182 + 14) = v206;
                        *(v182 + 22) = 2082;
                        v214 = sub_1CF3B0B48();
                        v216 = v215;
                        v217 = sub_1CEFD0DF0(v214, v215, &v277);
                        v216, v218, v219, v220, v221, v222, v223, v224;
                        *(v182 + 24) = v217;
                        *(v182 + 32) = 2080;
                        aBlock = 114;
                        v274 = 0xE100000000000000;
                        v276 = 0x2F265CD7BALL;
                        v225 = sub_1CF9E7F98();
                        v227 = v226;
                        MEMORY[0x1D3868CC0](v225);
                        v227, v228, v229, v230, v231, v232, v233, v234;
                        v235 = v274;
                        v236 = sub_1CEFD0DF0(aBlock, v274, &v277);
                        v235, v237, v238, v239, v240, v241, v242, v243;
                        *(v182 + 34) = v236;
                        _os_log_impl(&dword_1CEFC7000, v180, v181, "applying database bugfixes %{public}s:%s -> %{public}s:%s", v182, 0x2Au);
                        swift_arrayDestroy();
                        MEMORY[0x1D386CDC0](v183, -1, -1);
                        MEMORY[0x1D386CDC0](v182, -1, -1);
                      }

                      v244.n128_f64[0] = (v163)(v258, v262);
                      v245 = v252;
                      sub_1CF3DFD3C(v249, v250, v251, v244);
                      v252 = v245;
                      if (v245)
                      {
                        goto LABEL_67;
                      }
                    }

                    *(v271 + v158) = 0;
LABEL_74:
                    v246 = v265;
                    *v265 = 0x2F265CD7BALL;
                    swift_storeEnumTagMultiPayload();
                    (v254[1])(v246, &v278, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938, v255);
                    sub_1CEFD5278(v246, type metadata accessor for SyncState);

                    return;
                  }

                  goto LABEL_83;
                }

LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
                goto LABEL_86;
              }

LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          __break(1u);
          goto LABEL_80;
        }

        v268 = v92;
        v248 = v40;
        v99 = v95;
        if ([v95 next])
        {
          sub_1CF25069C(v99, v280);
          v252 = 0;
          if (v94 && (v281 == v268 && v94 == v282 || (sub_1CF9E8048() & 1) != 0) && v283 == 720903 && v284 == 0x2F265CD7BALL && (v285 == v261 && v286 == v31 || (sub_1CF9E8048() & 1) != 0))
          {
            if (v287 == v248 && v288 == v37)
            {
              sub_1CF250D40(v280);
LABEL_76:
              v94, v100, v101, v102, v103, v104, v105, v106;
              v97 = 1;
              goto LABEL_55;
            }

            v247 = sub_1CF9E8048();
            sub_1CF250D40(v280);
            if (v247)
            {
              goto LABEL_76;
            }
          }

          else
          {
            sub_1CF250D40(v280);
          }

          v269, v100, v101, v102, v103, v104, v105, v106;
          v97 = 0;
          v274 = 0;
          aBlock = 0;
          v98 = v252;
        }

        else
        {

          v97 = 1;
          v98 = 0;
        }

        v40 = v248;
        v92 = v268;
        goto LABEL_52;
      }
    }

    v54 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v55 = sub_1CF9E6108();
    v56 = sub_1CF9E72A8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock = v58;
      *v57 = 136446210;
      v59 = sub_1CF3B0B48();
      v61 = v60;
      v62 = sub_1CEFD0DF0(v59, v60, &aBlock);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v57 + 4) = v62;
      _os_log_impl(&dword_1CEFC7000, v55, v56, "unsupported database version %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);
    }

    (*(v46 + 8))(v47, v262);
    sub_1CF24CD3C();
    swift_allocError();
    *v70 = *(v257 + 16);
    *(v70 + 8) = 0;
    *(v70 + 16) = 1;
    *(v70 + 48) = 3;
    swift_willThrow();
    goto LABEL_24;
  }
}

unint64_t sub_1CF3C2DC0()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0xD000000000000014;
}

unint64_t sub_1CF3C2E54()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return 0xD000000000000015;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF3C2EE8(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *), uint64_t a6, void *a7, int a8)
{
  v140 = a8;
  v139 = a6;
  v138 = a5;
  v133 = a1;
  v137 = sub_1CF9E6118();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v131 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v129 - v18;
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E72C8();

  LODWORD(v132) = v22;
  v23 = v22;
  v24 = v21;
  v25 = os_log_type_enabled(v21, v23);
  v134 = a3;
  v135 = a2;
  v130 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v129 = a4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v150[0] = v28;
    *v27 = 136446466;
    swift_beginAccess();
    v29 = sub_1CF3B0B48();
    v31 = v30;
    v32 = sub_1CEFD0DF0(v29, v30, v150);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    v40 = sub_1CF3B0B48();
    v42 = v41;
    v43 = sub_1CEFD0DF0(v40, v41, v150);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v27 + 14) = v43;
    _os_log_impl(&dword_1CEFC7000, v24, v132, "upgrading database %{public}s -> %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v28, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  v51 = *(v136 + 8);
  v51(v19, v137);
  result = sub_1CF3BD6E0();
  v60 = result;
  v61 = *result->tree;
  if (v61)
  {
    v132 = v51;
    v62 = 0;
    v63 = result + 1;
    while (1)
    {
      if (v62 >= *v60->tree)
      {
        __break(1u);
        return result;
      }

      sub_1CF1A91AC(v63, v150);
      v148 = &type metadata for SQLDatabaseReadWriteAccessor;
      v149 = &off_1F4C17938;
      v146 = a7;
      v147 = v140;
      v64 = a7;
      v138(v150, &v146);
      if (v8)
      {
        break;
      }

      ++v62;
      __swift_destroy_boxed_opaque_existential_1(v150);
      result = __swift_destroy_boxed_opaque_existential_1(&v146);
      v63 = (v63 + 40);
      if (v61 == v62)
      {
        goto LABEL_8;
      }
    }

    v60, v65, v66, v67, v68, v69, v70, v71;
    __swift_destroy_boxed_opaque_existential_1(&v146);
    v74 = fpfs_current_or_default_log();
    v75 = v130;
    sub_1CF9E6128();
    sub_1CF1A91AC(v150, &v146);
    v76 = v8;
    v77 = sub_1CF9E6108();
    v78 = sub_1CF9E72A8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v145[0] = v81;
      *v79 = 136446466;
      __swift_project_boxed_opaque_existential_1(&v146, v148);
      DynamicType = swift_getDynamicType();
      v144 = v149;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05C8, &unk_1CFA05990);
      v82 = sub_1CF9E6948();
      v84 = v83;
      __swift_destroy_boxed_opaque_existential_1(&v146);
      v85 = sub_1CEFD0DF0(v82, v84, v145);
      v84, v86, v87, v88, v89, v90, v91, v92;
      *(v79 + 4) = v85;
      *(v79 + 12) = 2114;
      swift_getErrorValue();
      v93 = Error.prettyDescription.getter(v141, v142);
      *(v79 + 14) = v93;
      *v80 = v93;
      _os_log_impl(&dword_1CEFC7000, v77, v78, "cannot setup schema for %{public}s: %{public}@", v79, 0x16u);
      sub_1CEFCCC44(v80, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v80, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1D386CDC0](v81, -1, -1);
      MEMORY[0x1D386CDC0](v79, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v146);
    }

    v94 = v75;
    v95 = v137;
    v96 = v132;
    v132(v94, v137);
    v97 = v131;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v150);
    v98 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v99 = v8;
    v100 = sub_1CF9E6108();
    v101 = sub_1CF9E72A8();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = v97;
      v105 = swift_slowAlloc();
      v146 = v105;
      *v102 = 136446722;
      swift_beginAccess();
      v106 = sub_1CF3B0B48();
      v108 = v107;
      v109 = sub_1CEFD0DF0(v106, v107, &v146);
      v108, v110, v111, v112, v113, v114, v115, v116;
      *(v102 + 4) = v109;
      *(v102 + 12) = 2082;
      v117 = sub_1CF3B0B48();
      v119 = v118;
      v120 = sub_1CEFD0DF0(v117, v118, &v146);
      v119, v121, v122, v123, v124, v125, v126, v127;
      *(v102 + 14) = v120;
      *(v102 + 22) = 2114;
      swift_getErrorValue();
      v128 = Error.prettyDescription.getter(v145[2], v145[3]);
      *(v102 + 24) = v128;
      *v103 = v128;
      _os_log_impl(&dword_1CEFC7000, v100, v101, "can't upgrade DB from %{public}s -> %{public}s: %{public}@", v102, 0x20u);
      sub_1CEFCCC44(v103, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v103, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v105, -1, -1);
      MEMORY[0x1D386CDC0](v102, -1, -1);

      v132(v104, v137);
    }

    else
    {

      v96(v97, v95);
    }

    return swift_willThrow();
  }

  else
  {
LABEL_8:
    v60, v53, v54, v55, v56, v57, v58, v59;
    v72 = v135;
    swift_beginAccess();
    v73 = v134;
    *(v72 + 16) = v134;
    return [v133 setUserVersion_];
  }
}

void sub_1CF3C36FC()
{
  sub_1CF1FD6F8(*(v0 + qword_1EC4EBCD0), *(v0 + qword_1EC4EBCD0 + 8));
  sub_1CF1FD6F8(*(v0 + qword_1EC4EBCD8), *(v0 + qword_1EC4EBCD8 + 8));
  sub_1CEFCCC44(v0 + qword_1EDEBBDA8, &unk_1EC4BEDE0, qword_1CF9FA390);
  v1 = qword_1EC4EBCE0;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + qword_1EC4EBCE8 + 8), v3, v4, v5, v6, v7, v8, v9;

  *(v0 + qword_1EC4BFAF0), v10, v11, v12, v13, v14, v15, v16;
  swift_unknownObjectRelease();

  sub_1CEFF7124(*(v0 + qword_1EDEBBDC8), *(v0 + qword_1EDEBBDC8 + 8));
  sub_1CEFF7124(*(v0 + qword_1EDEBBDC0), *(v0 + qword_1EDEBBDC0 + 8));
  sub_1CEFF7124(*(v0 + qword_1EDEBBDD8), *(v0 + qword_1EDEBBDD8 + 8));
  sub_1CEFF7124(*(v0 + qword_1EDEBBDF0), *(v0 + qword_1EDEBBDF0 + 8));
  sub_1CEFF7124(*(v0 + qword_1EDEBBE20), *(v0 + qword_1EDEBBE20 + 8));
  v24 = *(v0 + qword_1EC4BFAF8);

  v24, v17, v18, v19, v20, v21, v22, v23;
}

char *sub_1CF3C3898()
{
  v0 = sub_1CF59AF44();

  sub_1CF1FD6F8(*&v0[qword_1EC4EBCD0], *&v0[qword_1EC4EBCD0 + 8]);
  sub_1CF1FD6F8(*&v0[qword_1EC4EBCD8], *&v0[qword_1EC4EBCD8 + 8]);
  sub_1CEFCCC44(&v0[qword_1EDEBBDA8], &unk_1EC4BEDE0, qword_1CF9FA390);
  v1 = qword_1EC4EBCE0;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  *&v0[qword_1EC4EBCE8 + 8], v3, v4, v5, v6, v7, v8, v9;

  *&v0[qword_1EC4BFAF0], v10, v11, v12, v13, v14, v15, v16;
  swift_unknownObjectRelease();

  sub_1CEFF7124(*&v0[qword_1EDEBBDC8], *&v0[qword_1EDEBBDC8 + 8]);
  sub_1CEFF7124(*&v0[qword_1EDEBBDC0], *&v0[qword_1EDEBBDC0 + 8]);
  sub_1CEFF7124(*&v0[qword_1EDEBBDD8], *&v0[qword_1EDEBBDD8 + 8]);
  sub_1CEFF7124(*&v0[qword_1EDEBBDF0], *&v0[qword_1EDEBBDF0 + 8]);
  sub_1CEFF7124(*&v0[qword_1EDEBBE20], *&v0[qword_1EDEBBE20 + 8]);
  *&v0[qword_1EC4BFAF8], v17, v18, v19, v20, v21, v22, v23;
  return v0;
}

uint64_t sub_1CF3C3A34()
{
  sub_1CF3C3898();

  return swift_deallocClassInstance();
}

void sub_1CF3C3AA0(void *a1, const char *a2, ...)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = a1;
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E72A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_getErrorValue();
      v15 = Error.prettyDescription.getter(v16[1], v16[2]);
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_1CEFC7000, v11, v12, a2, v13, 0xCu);
      sub_1CEFCCC44(v14, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v14, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1CF3C3CA0(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + qword_1EDEBBC38);
  v38[24] = a1;
  v4 = v3;
  if (!v3)
  {
    v4 = fpfs_current_log();
  }

  v37 = v3;
  v5 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v40 = v6;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v7 = sub_1CF9E7988();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  sub_1CF9E6978();
  v40, v17, v18, v19, v20, v21, v22, v23;
  v24 = __fp_log_fork();

  v36[1] = v36;
  v46 = v24;
  v47 = 0;
  MEMORY[0x1EEE9AC00](v25);
  v32[2] = v4;
  v32[3] = &v46;
  v32[4] = v2;
  v32[5] = "forceFlush(forcePostFlush:)";
  v32[6] = 27;
  v33 = 2;
  v34 = sub_1CF47FC0C;
  v35 = v38;
  v48 = 1;
  v45 = 0;
  v26 = swift_allocObject();
  v26[2] = &v48;
  v26[3] = sub_1CF2BA13C;
  v26[4] = v32;
  v26[5] = &v45;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1CF2BA170;
  *(v27 + 24) = v26;
  v43 = sub_1CF1C0B54;
  v44 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1CEFFD02C;
  v42 = &block_descriptor_113;
  v28 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v28);
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v45)
  {
    if ((v48 & 1) == 0)
    {

      v30 = fpfs_adopt_log();

      return;
    }

    goto LABEL_8;
  }

LABEL_9:
  swift_willThrow();

  v31 = fpfs_adopt_log();
  __break(1u);
}

void sub_1CF3C3FC0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, void (*a7)(_OWORD *, void *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v141 = a7;
  v142 = a8;
  v115 = a6;
  v137 = a5;
  v138 = a4;
  LODWORD(v118) = a3;
  v117 = a2;
  v116 = a1;
  v11 = sub_1CF9E6388();
  v135 = *(v11 - 8);
  v136 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v134 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v133 = (&v110 - v14);
  v15 = sub_1CF9E6498();
  v131 = *(v15 - 8);
  v132 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v130 = &v110 - v18;
  v19 = sub_1CF9E6448();
  v127 = *(v19 - 8);
  v128 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1CF9E73D8();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6068();
  v121 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v140 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v110 - v28;
  v30 = type metadata accessor for Signpost(0);
  v119 = *(v30 - 8);
  v31 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v139 = &v110 - v33;
  v34 = sub_1CF9E64A8();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(v10 + 64);
  *v38 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x1E69E8020], v34, v36);
  v122 = v39;
  v40 = sub_1CF9E64D8();
  (*(v35 + 8))(v38, v34);
  if ((v40 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_9;
  }

  v40 = qword_1EDEBBC38;
  v41 = fpfs_adopt_log();
  if (*(v10 + qword_1EDEBBE38) & 1) != 0 || *(v10 + 152) == 1 || (fp_task_tracker_is_cancelled(*(*(v10 + 168) + 16)) & 1) != 0 || (*(v10 + 152))
  {
    sub_1CF2CA194();
    memset(v143, 0, sizeof(v143));
    v144 = 0;
    v42 = swift_allocError();
    v141(v143, v42);
    sub_1CEFCCC44(v143, &unk_1EC4C1B30, &qword_1CFA05300);

LABEL_7:
    v43 = fpfs_adopt_log();

    return;
  }

  v110 = v41;
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_35;
  }

LABEL_9:
  v113 = a10;
  v112 = a9;
  v114 = qword_1EDEBBE40;
  v44 = v121;
  (v121)[7](v29, 1, 1, v22);
  v118 = sub_1CF9E7988();
  v117 = v45;
  sub_1CEFCCBDC(v29, v26, &unk_1EC4BED20, &unk_1CFA00700);
  v46 = v44[6];
  if (v46(v26, 1, v22) == 1)
  {
    v47 = v114;
    sub_1CF9E6048();
    v48 = v46(v26, 1, v22);
    v49 = v140;
    if (v48 != 1)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v49 = v140;
    (v44[4])(v140, v26, v22);
  }

  v50 = v139;
  (v44[2])(v139, v49, v22);
  v51 = v114;
  *(v50 + *(v30 + 20)) = v114;
  v52 = v50 + *(v30 + 24);
  *v52 = "DB queue wait for flush";
  *(v52 + 8) = 23;
  *(v52 + 16) = 2;
  v53 = v51;
  v54 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1CF9FA450;
  *(v55 + 56) = MEMORY[0x1E69E6158];
  *(v55 + 64) = sub_1CEFD51C4();
  v56 = v117;
  *(v55 + 32) = v118;
  *(v55 + 40) = v56;
  sub_1CF9E6028(v54, &dword_1CEFC7000, v53, "DB queue wait for flush", 23, 2, v50, "%s", 2);
  v55, v57, v58, v59, v60, v61, v62, v63;
  (v44[1])(v140, v22);
  sub_1CEFCCC44(v29, &unk_1EC4BED20, &unk_1CFA00700);
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = v120;
  sub_1CEFDA214(v50, v120, type metadata accessor for Signpost);
  v66 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v67 = (v31 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1CEFD9F8C(v65, v69 + v66, type metadata accessor for Signpost);
  *(v69 + v67) = v64;
  v70 = (v69 + v68);
  v71 = v142;
  *v70 = v141;
  v70[1] = v71;
  v141 = v69;
  v72 = (v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8));
  v73 = v113;
  *v72 = v112;
  v72[1] = v73;
  v74 = *(v10 + qword_1EDEBBDB0);

  v121 = v74;
  [v74 forceBatchStart];
  v75 = v10;
  v142 = qword_1EDEAE678;
  if (*(v10 + qword_1EDEAE678))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  *&v143[0] = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v76 = v123;
  v77 = v125;
  sub_1CF9E77B8();
  v78 = sub_1CF9E73E8();
  (*(v124 + 8))(v76, v77);
  ObjectType = swift_getObjectType();
  v80 = *(v75 + v40);
  v111 = v75;
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = v80;

  v83 = v126;
  sub_1CF042F9C();
  sub_1CEFD5828(v80, v83, sub_1CF480210, v81, ObjectType);

  (*(v127 + 8))(v83, v128);

  v84 = v129;
  sub_1CF9E6478();
  v85 = [objc_opt_self() defaultStore];
  LODWORD(v81) = [v85 sqlDatabaseFlushIntervalMilliseconds];

  v86 = v133;
  *v133 = v81;
  v88 = v135;
  v87 = v136;
  (*(v135 + 104))(v86, *MEMORY[0x1E69E7F38], v136);
  v89 = v130;
  MEMORY[0x1D3868740](v84, v86);
  v90 = *(v88 + 8);
  v90(v86, v87);
  v140 = *(v131 + 8);
  v91 = v84;
  v92 = v132;
  (v140)(v91, v132);
  sub_1CEFD5B64(v86);
  v93 = v134;
  sub_1CEFD5BD8(v134);
  MEMORY[0x1D3869770](v89, v86, v93, ObjectType);
  v90(v93, v87);
  v90(v86, v87);
  (v140)(v89, v92);
  sub_1CF9E7428();
  v94 = v111;
  *(v111 + v142) = v78;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v95 = swift_allocObject();
  v96 = v141;
  *(v95 + 16) = sub_1CF480154;
  *(v95 + 24) = v96;
  v97 = qword_1EC4BFAF0;
  swift_beginAccess();
  v98 = *(v94 + v97);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v94 + v97) = v98;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v98 = sub_1CF1F6920(0, (*v98->tree + 1), 1, v98);
    *(v94 + v97) = v98;
  }

  v100 = v138;
  v102 = *v98->tree;
  v101 = *v98->tester;
  if (v102 >= v101 >> 1)
  {
    v98 = sub_1CF1F6920((v101 > 1), (v102 + 1), 1, v98);
  }

  *v98->tree = v102 + 1;
  v103 = v98 + 16 * v102;
  *(v103 + 4) = sub_1CF480240;
  *(v103 + 5) = v95;
  *(v94 + v97) = v98;
  swift_endAccess();
  v104 = *(v94 + 160);
  if (v137)
  {
    if (v100)
    {
      *(v104 + 49) = 1;
    }

    else
    {
      *(v104 + 48) = 1;
    }

LABEL_28:
    if (v115)
    {
      if ((*(v94 + 82) & 0x20) != 0)
      {
        swift_unknownObjectRelease();

        *(v94 + qword_1EC4EBD88) = 1;
      }

      else
      {
        [v121 makeNextFlushBarrierFSync];
        swift_unknownObjectRelease();
      }

      v41 = v110;
      sub_1CEFD5278(v139, type metadata accessor for Signpost);
    }

    else
    {
      sub_1CEFD5278(v139, type metadata accessor for Signpost);
      swift_unknownObjectRelease();

      v41 = v110;
    }

    goto LABEL_7;
  }

  if (v100)
  {
    v108 = *(v104 + 40);
    v106 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (!v106)
    {
      *(v104 + 40) = v109;
      goto LABEL_28;
    }
  }

  else
  {
    v105 = *(v104 + 32);
    v106 = __OFADD__(v105, 1);
    v107 = v105 + 1;
    if (!v106)
    {
      *(v104 + 32) = v107;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1CF3C4ED0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, void (*a7)(_OWORD *, void *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v151 = a7;
  v152 = a8;
  v125 = a6;
  v147 = a5;
  v148 = a4;
  LODWORD(v128) = a3;
  v127 = a2;
  v126 = a1;
  v132 = *v10;
  v12 = sub_1CF9E6388();
  v145 = *(v12 - 8);
  v146 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v144 = (&v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v143 = (&v120 - v15);
  v16 = sub_1CF9E6498();
  v141 = *(v16 - 8);
  v142 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v120 - v19;
  v20 = sub_1CF9E6448();
  v137 = *(v20 - 8);
  v138 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1CF9E73D8();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E6068();
  v130 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v150 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Signpost(0);
  v129 = *(v31 - 8);
  v32 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v131 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v149 = &v120 - v34;
  v35 = sub_1CF9E64A8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_1CF042F4C();
  *v38 = v39;
  (*(v36 + 104))(v38, *MEMORY[0x1E69E8020], v35);
  v40 = v39;
  LOBYTE(v39) = sub_1CF9E64D8();
  v42 = *(v36 + 8);
  v41 = (v36 + 8);
  v42(v38, v35);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_8;
  }

  v43 = qword_1EDEBBC38;
  v41 = fpfs_adopt_log();
  if (*(v11 + qword_1EDEBBE38) & 1) != 0 || (v11[19] & 1) != 0 || (sub_1CF03BA44())
  {
    sub_1CF2CA194();
    memset(v153, 0, sizeof(v153));
    v154 = 0;
    v44 = swift_allocError();
    v151(v153, v44);
    sub_1CEFCCC44(v153, &unk_1EC4C1B30, &qword_1CFA05300);

LABEL_6:
    v45 = fpfs_adopt_log();

    return;
  }

  v122 = v43;
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_31;
  }

LABEL_8:
  v121 = a10;
  v120 = a9;
  v124 = qword_1EDEBBE40;
  v46 = v130;
  (*(v130 + 56))(v30, 1, 1, v23);
  v128 = sub_1CF9E7988();
  v127 = v47;
  sub_1CEFCCBDC(v30, v27, &unk_1EC4BED20, &unk_1CFA00700);
  v48 = *(v46 + 48);
  v49 = v48(v27, 1, v23);
  v123 = v41;
  if (v49 == 1)
  {
    v50 = v124;
    v51 = v150;
    sub_1CF9E6048();
    if (v48(v27, 1, v23) != 1)
    {
      sub_1CEFCCC44(v27, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v51 = v150;
    (*(v46 + 32))(v150, v27, v23);
  }

  v52 = v149;
  (*(v46 + 16))(v149, v51, v23);
  v53 = v124;
  *(v52 + *(v31 + 20)) = v124;
  v54 = v52 + *(v31 + 24);
  *v54 = "DB queue wait for flush";
  *(v54 + 8) = 23;
  *(v54 + 16) = 2;
  v55 = v53;
  v56 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CF9FA450;
  *(v57 + 56) = MEMORY[0x1E69E6158];
  *(v57 + 64) = sub_1CEFD51C4();
  v58 = v127;
  *(v57 + 32) = v128;
  *(v57 + 40) = v58;
  sub_1CF9E6028(v56, &dword_1CEFC7000, v55, "DB queue wait for flush", 23, 2, v52, "%s", 2);
  v57, v59, v60, v61, v62, v63, v64, v65;
  (*(v46 + 8))(v150, v23);
  sub_1CEFCCC44(v30, &unk_1EC4BED20, &unk_1CFA00700);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v131;
  sub_1CEFDA214(v52, v131, type metadata accessor for Signpost);
  v68 = (*(v129 + 80) + 48) & ~*(v129 + 80);
  v69 = (v32 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v132;
  v130 = v132[329];
  v71[2] = v130;
  v129 = v72[330];
  v71[3] = v129;
  v128 = v72[331];
  v71[4] = v128;
  v132 = v72[332];
  v71[5] = v132;
  sub_1CEFD9F8C(v67, v71 + v68, type metadata accessor for Signpost);
  *(v71 + v69) = v66;
  v73 = (v71 + v70);
  v74 = v152;
  *v73 = v151;
  v73[1] = v74;
  v151 = v71;
  v75 = (v71 + ((v70 + 23) & 0xFFFFFFFFFFFFFFF8));
  v76 = v121;
  *v75 = v120;
  v75[1] = v76;
  v77 = *(v11 + qword_1EDEBBDB0);

  [v77 forceBatchStart];
  v150 = qword_1EDEAE678;
  if (*(v11 + qword_1EDEAE678))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v78 = sub_1CF042F4C();
  *&v153[0] = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v79 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v80 = v133;
  v81 = v135;
  sub_1CF9E77B8();
  v82 = sub_1CF9E73E8();

  (*(v134 + 8))(v80, v81);
  v152 = v82;
  ObjectType = swift_getObjectType();
  v84 = *(v11 + v122);
  v85 = swift_allocObject();
  swift_weakInit();
  v86 = swift_allocObject();
  *&v87 = v130;
  *(&v87 + 1) = v129;
  *&v88 = v128;
  *(&v88 + 1) = v132;
  *(v86 + 16) = v87;
  *(v86 + 32) = v88;
  *(v86 + 48) = v85;
  v89 = v84;

  v90 = v136;
  sub_1CF042F9C();
  sub_1CEFD5828(v84, v90, sub_1CF485224, v86, ObjectType);

  (*(v137 + 8))(v90, v138);

  v91 = v139;
  sub_1CF9E6478();
  v92 = [objc_opt_self() defaultStore];
  LODWORD(v85) = [v92 sqlDatabaseFlushIntervalMilliseconds];

  v93 = v143;
  *v143 = v85;
  v95 = v145;
  v94 = v146;
  (*(v145 + 104))(v93, *MEMORY[0x1E69E7F38], v146);
  v96 = v140;
  MEMORY[0x1D3868740](v91, v93);
  v97 = *(v95 + 8);
  v97(v93, v94);
  v145 = *(v141 + 8);
  v98 = v91;
  v99 = v142;
  (v145)(v98, v142);
  v100 = ObjectType;
  v135 = ObjectType;
  sub_1CEFD5B64(v93);
  v101 = v144;
  sub_1CEFD5BD8(v144);
  v102 = v100;
  v103 = v152;
  MEMORY[0x1D3869770](v96, v93, v101, v102);
  v97(v101, v94);
  v97(v93, v94);
  (v145)(v96, v99);
  sub_1CF9E7428();
  *&v150[v11] = v103;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v104 = swift_allocObject();
  v105 = v151;
  *(v104 + 16) = sub_1CF485144;
  *(v104 + 24) = v105;
  v106 = qword_1EC4BFAF0;
  swift_beginAccess();
  v107 = *(v11 + v106);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + v106) = v107;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v107 = sub_1CF1F6920(0, (*v107->tree + 1), 1, v107);
    *(v11 + v106) = v107;
  }

  v110 = v147;
  v109 = v148;
  v41 = v123;
  v112 = *v107->tree;
  v111 = *v107->tester;
  if (v112 >= v111 >> 1)
  {
    v107 = sub_1CF1F6920((v111 > 1), (v112 + 1), 1, v107);
  }

  *v107->tree = v112 + 1;
  v113 = v107 + 16 * v112;
  *(v113 + 4) = sub_1CF48586C;
  *(v113 + 5) = v104;
  *(v11 + v106) = v107;
  swift_endAccess();
  v114 = sub_1CF042760();
  if (v110)
  {
    if (v109)
    {
      *(v114 + 49) = 1;
    }

    else
    {
      *(v114 + 48) = 1;
    }

    goto LABEL_27;
  }

  if (v109)
  {
    v118 = *(v114 + 40);
    v116 = __OFADD__(v118, 1);
    v119 = v118 + 1;
    if (!v116)
    {
      *(v114 + 40) = v119;
LABEL_27:
      if (v125)
      {
        sub_1CF3BCAF0();
        swift_unknownObjectRelease();

        sub_1CEFD5278(v149, type metadata accessor for Signpost);
      }

      else
      {
        sub_1CEFD5278(v149, type metadata accessor for Signpost);
        swift_unknownObjectRelease();
      }

      goto LABEL_6;
    }
  }

  else
  {
    v115 = *(v114 + 32);
    v116 = __OFADD__(v115, 1);
    v117 = v115 + 1;
    if (!v116)
    {
      *(v114 + 32) = v117;
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
}

double sub_1CF3C5E64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t), uint64_t a5, void (*a6)(__int128 *))
{
  sub_1CF9E7458();
  type metadata accessor for Signpost(0);
  sub_1CF9E6038();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1CF2CA194();
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v12 = swift_allocError();
    a4(&v19, v12);
LABEL_9:
    sub_1CEFCCC44(&v19, &unk_1EC4C1B30, &qword_1CFA05300);
    v14 = v12;
    goto LABEL_10;
  }

  v10 = Strong;
  if ((*(Strong + qword_1EDEBBE38) & 1) != 0 || *(Strong + 152) == 1)
  {
LABEL_8:
    sub_1CF2CA194();
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v12 = swift_allocError();
    a4(&v19, v12);

    goto LABEL_9;
  }

  v11 = *(*(Strong + 168) + 16);

  if (fp_task_tracker_is_cancelled(v11))
  {

    goto LABEL_8;
  }

  v13 = *(v10 + 152);

  if (v13)
  {
    goto LABEL_8;
  }

  sub_1CEFCCBDC(a1, &v17, &unk_1EC4C1B30, &qword_1CFA05300);
  if (v18)
  {
    sub_1CF054EA0(&v17, &v19);
    a6(&v19);
    __swift_destroy_boxed_opaque_existential_1(&v19);

    return result;
  }

  sub_1CEFCCC44(&v17, &unk_1EC4C1B30, &qword_1CFA05300);
  sub_1CF2CA194();
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v16 = swift_allocError();
  a4(&v19, v16);

  sub_1CEFCCC44(&v19, &unk_1EC4C1B30, &qword_1CFA05300);
  v14 = v16;
LABEL_10:

  return result;
}

double sub_1CF3C6140(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t), uint64_t a5, void (*a6)(__int128 *))
{
  sub_1CF9E7458();
  type metadata accessor for Signpost(0);
  sub_1CF9E6038();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1CF2CA194();
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    v11 = swift_allocError();
    a4(&v17, v11);
    goto LABEL_7;
  }

  if (*(Strong + qword_1EDEBBE38) & 1) != 0 || (*(Strong + 152) & 1) != 0 || (, v10 = sub_1CF03BA44(), , (v10))
  {
    sub_1CF2CA194();
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    v11 = swift_allocError();
    a4(&v17, v11);

LABEL_7:
    sub_1CEFCCC44(&v17, &unk_1EC4C1B30, &qword_1CFA05300);
    v12 = v11;
    goto LABEL_8;
  }

  sub_1CEFCCBDC(a1, &v15, &unk_1EC4C1B30, &qword_1CFA05300);
  if (v16)
  {
    sub_1CF054EA0(&v15, &v17);
    a6(&v17);
    __swift_destroy_boxed_opaque_existential_1(&v17);

    return result;
  }

  sub_1CEFCCC44(&v15, &unk_1EC4C1B30, &qword_1CFA05300);
  sub_1CF2CA194();
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v14 = swift_allocError();
  a4(&v17, v14);

  sub_1CEFCCC44(&v17, &unk_1EC4C1B30, &qword_1CFA05300);
  v12 = v14;
LABEL_8:

  return result;
}

double sub_1CF3C6404(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CF03F7F4();
  }

  return result;
}

void sub_1CF3C6498(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_1EDEBBE38) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
LABEL_5:
    swift_willThrow();
    return;
  }

  v24 = v7;
  if (errorInjectionThrowOnDBQueryEnabled())
  {
    sub_1CF24CD3C();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 9;
    goto LABEL_5;
  }

  v27 = 1;
  v26 = 0;
  v11 = *(v2 + qword_1EDEAE660);
  *(v2 + qword_1EDEAE660) = 0;

  v23[1] = v23;
  v12 = *(v2 + qword_1EDEBBDB0);
  MEMORY[0x1EEE9AC00](v13);
  v23[-8] = &v27;
  v23[-7] = a1;
  v23[-6] = a2;
  v23[-5] = v12;
  LOBYTE(v23[-4]) = 2;
  v23[-3] = &v26;
  v23[-2] = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF47FD60;
  *(v14 + 24) = &v23[-10];
  aBlock[4] = sub_1CF033B5C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF033B10;
  aBlock[3] = &block_descriptor_137;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [v16 performWithFlags:12 action:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v26;
    if (v26)
    {
      swift_willThrow();
      v18 = v17;
    }

    else
    {
      if (v27 == 1)
      {
        v19 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v20 = sub_1CF9E6108();
        v21 = sub_1CF9E7288();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1CEFC7000, v20, v21, "batch received after db has been closed will be ignored", v22, 2u);
          MEMORY[0x1D386CDC0](v22, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v9, v24);
      }

      else if (fp_task_tracker_is_cancelled(*(*(v2 + 168) + 16)) || *(v2 + 152) == 1)
      {
      }

      else
      {
        sub_1CF03B4D0();
      }
    }
  }
}

void sub_1CF3C6880(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v8 = sub_1CF9E6118();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  if (*(v4 + qword_1EDEBBE38) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
LABEL_5:
    swift_willThrow();
    return;
  }

  if (errorInjectionThrowOnDBQueryEnabled())
  {
    sub_1CF24CD3C();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 9;
    goto LABEL_5;
  }

  v40 = v11;
  v41 = v10;
  v38 = *(a3 - 8);
  (*(v38 + 56))(v16, 1, 1, a3);
  v47 = 0;
  v18 = *(v4 + qword_1EDEAE660);
  *(v4 + qword_1EDEAE660) = 0;

  v39 = &v36;
  v19 = *(v4 + qword_1EDEBBDB0);
  MEMORY[0x1EEE9AC00](v20);
  *(&v36 - 8) = a3;
  *(&v36 - 7) = v16;
  *(&v36 - 6) = a1;
  *(&v36 - 5) = a2;
  *(&v36 - 4) = v19;
  *(&v36 - 24) = 2;
  *(&v36 - 2) = &v47;
  *(&v36 - 1) = v4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1CF485108;
  *(v21 + 24) = &v36 - 10;
  aBlock[4] = sub_1CF485B64;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF033B10;
  aBlock[3] = &block_descriptor_1557;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  [v23 performWithFlags:12 action:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v25 = v47;
    if (v47)
    {
      swift_willThrow();
      v26 = v25;

      (*(v40 + 8))(v16, v41);
    }

    else
    {
      v39 = v23;
      v27 = v40;
      v28 = v41;
      v37 = *(v40 + 16);
      v37(v13, v16, v41);
      v29 = (*(v38 + 48))(v13, 1, a3);
      v30 = *(v27 + 8);
      v30(v13, v28);
      if (v29 == 1)
      {
        v31 = fpfs_current_or_default_log();
        v32 = v44;
        sub_1CF9E6128();
        v33 = sub_1CF9E6108();
        v34 = sub_1CF9E7288();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1CEFC7000, v33, v34, "batch received after db has been closed will be ignored", v35, 2u);
          MEMORY[0x1D386CDC0](v35, -1, -1);

          (*(v42 + 8))(v44, v43);
        }

        else
        {

          (*(v42 + 8))(v32, v43);
        }
      }

      else
      {
        if ((sub_1CF03BA44() & 1) == 0)
        {
          sub_1CF03F7F4();
        }
      }

      v37(v45, v16, v28);

      v30(v16, v28);
    }
  }
}

uint64_t sub_1CF3C6E18(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr, void **), uint64_t a4, void *a5, uint64_t a6, void **a7, uint64_t a8)
{
  v10 = a6;
  v15 = objc_autoreleasePoolPush();
  LOBYTE(a8) = sub_1CF3C6F50(a2, a3, a4, a5, v10, a7, a8);
  objc_autoreleasePoolPop(v15);
  return a8 & 1;
}

uint64_t sub_1CF3C6EAC(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4, void *a5, uint64_t a6, void **a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  v15 = objc_autoreleasePoolPush();
  sub_1CF3C7320(a2, a3, a5, v11, a7, a8, a9, &v17);
  objc_autoreleasePoolPop(v15);
  return v17;
}

uint64_t sub_1CF3C6F50(_BYTE *a1, void (*a2)(uint64_t *__return_ptr, void **), uint64_t a3, void *a4, char a5, void **a6, uint64_t a7)
{
  v39 = a7;
  v13 = sub_1CF9E6118();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v48 = &type metadata for SQLDatabaseReadWriteAccessor;
  v49 = &off_1F4C17938;
  v46 = a4;
  v47 = a5;
  v19 = a4;
  a2(&v50, &v46);
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(&v46);
    v20 = *a6;
    *a6 = v7;
    v21 = v7;

    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v23 = v7;
    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E72A8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_getErrorValue();
      v28 = Error.prettyDescription.getter(v44, v45);
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1CEFC7000, v24, v25, "batch failed (updateBlock), rolling back: %@", v26, 0xCu);
      sub_1CEFCCC44(v27, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    else
    {
    }

    v15 = v18;
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1(&v46);
  *a1 = 0;
  v29 = *(v39 + qword_1EDEAE660);
  if (v29)
  {
    v30 = v29;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v32 = v29;
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_getErrorValue();
      v37 = Error.prettyDescription.getter(v42, v43);
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&dword_1CEFC7000, v33, v34, "batch failed (lastTransactionError), rolling back: %@", v35, 0xCu);
      sub_1CEFCCC44(v36, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    else
    {
    }

LABEL_9:
    (*(v40 + 8))(v15, v41);
    return 0;
  }

  return 1;
}

uint64_t sub_1CF3C7320@<X0>(uint64_t a1@<X0>, void (*a2)(void **)@<X1>, void *a3@<X3>, char a4@<W4>, void **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v54 = a8;
  v48 = a6;
  v49 = a5;
  v47 = a1;
  v12 = sub_1CF9E6118();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = sub_1CF9E75D8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v61 = &type metadata for SQLDatabaseReadWriteAccessor;
  v62 = &off_1F4C17938;
  v59 = a3;
  v60 = a4;
  v21 = a3;
  v22 = v53;
  a2(&v59);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v23 = *v49;
    *v49 = v22;
    v24 = v22;

    v25 = fpfs_current_or_default_log();
    v26 = v50;
    sub_1CF9E6128();
    v27 = v22;
    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E72A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_getErrorValue();
      v32 = Error.prettyDescription.getter(v57, v58);
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_1CEFC7000, v28, v29, "batch failed (updateBlock), rolling back: %@", v30, 0xCu);
      sub_1CEFCCC44(v31, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    else
    {
    }

    v45 = v26;
LABEL_11:
    result = (*(v51 + 8))(v45, v52);
    v33 = 0;
    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_1(&v59);
  v33 = 1;
  (*(*(a7 - 8) + 56))(v20, 0, 1, a7);
  result = (*(v18 + 40))(v47, v20, v17);
  v35 = *(v48 + qword_1EDEAE660);
  if (v35)
  {
    v36 = v35;
    v37 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v38 = v35;
    v39 = v16;
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E72A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_getErrorValue();
      v44 = Error.prettyDescription.getter(v55, v56);
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "batch failed (lastTransactionError), rolling back: %@", v42, 0xCu);
      sub_1CEFCCC44(v43, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v43, -1, -1);
      MEMORY[0x1D386CDC0](v42, -1, -1);
    }

    else
    {
    }

    v45 = v39;
    goto LABEL_11;
  }

LABEL_12:
  *v54 = v33;
  return result;
}

id sub_1CF3C77C8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v13 = *(v2 + qword_1EC4EBCD8);
    if (v13)
    {
      v5 = *(v2 + qword_1EC4EBCD8 + 8);
      v6 = v13;
      v7 = "DB queue ro fast wait";
      v8 = 1;
      v9 = 21;
      v10 = 16;
      v11 = v5;
      v12 = "DB queue ro fast";
      goto LABEL_8;
    }

LABEL_7:
    v5 = *(v2 + qword_1EDEBBDB0);
    v11 = sub_1CF042F4C();
    v8 = 0;
    v7 = "DB queue wait";
    v9 = 13;
    v10 = 8;
    v6 = v5;
    v12 = "DB queue";
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v2 + qword_1EC4EBCD0);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(v2 + qword_1EC4EBCD0 + 8);
  v6 = v4;
  v7 = "DB queue ro slow wait";
  v8 = 1;
  v9 = 21;
  v10 = 16;
  v11 = v5;
  v12 = "DB queue ro slow";
LABEL_8:
  result = v5;
  *a2 = v6;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v10;
  *(a2 + 32) = 2;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = 2;
  *(a2 + 57) = v8;
  return result;
}

void sub_1CF3C78FC(char a1, uint64_t a2, void (*a3)(id *))
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = *(a2 + qword_1EC4EBCD0);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v8 = *(a2 + qword_1EDEBBDB0);
    v11 = 0;
    goto LABEL_9;
  }

  v5 = *(a2 + qword_1EC4EBCD8);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = v5;
  v16 = sub_1CF385054;
  v17 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1CEFE7548;
  v15 = &block_descriptor_1347;
  v7 = _Block_copy(&aBlock);
  v8 = v6;

  aBlock = 0;
  v9 = [v8 executeSwift:v7 error:&aBlock];
  _Block_release(v7);
  v10 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v9 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_11;
  }

  v11 = 1;
LABEL_9:
  v15 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v16 = &off_1F4C179D8;
  aBlock = v8;
  LOBYTE(v13) = a1;
  v8 = v8;
  a3(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v11, v8);
LABEL_11:
}

void sub_1CF3C7B2C(char a1, uint64_t a2, void (*a3)(id *), uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = *(a2 + qword_1EC4EBCD0);
      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v9 = *(a2 + qword_1EDEBBDB0);
    v12 = 0;
    goto LABEL_9;
  }

  v6 = *(a2 + qword_1EC4EBCD8);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = v6;
  v17 = sub_1CF385054;
  v18 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1CEFE7548;
  v16 = &block_descriptor_18;
  v8 = _Block_copy(&aBlock);
  v9 = v7;

  aBlock = 0;
  v10 = [v9 executeSwift:v8 error:&aBlock];
  _Block_release(v8);
  v11 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v10 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_11;
  }

  v12 = 1;
LABEL_9:
  v16 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v17 = &off_1F4C179D8;
  aBlock = v9;
  LOBYTE(v14) = a1;
  v9 = v9;
  a3(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v12, v9);
LABEL_11:
}

uint64_t sub_1CF3C7D54(char a1, uint64_t a2, void (*a3)(char *__return_ptr, id *), char a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = *(a2 + qword_1EC4EBCD0);
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v11 = *(a2 + qword_1EDEBBDB0);
    v14 = 0;
    goto LABEL_9;
  }

  v8 = *(a2 + qword_1EC4EBCD8);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8;
  v21 = sub_1CF385054;
  v22 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1CEFE7548;
  v20 = &block_descriptor_1485;
  v10 = _Block_copy(&aBlock);
  v11 = v9;

  aBlock = 0;
  v12 = [v11 executeSwift:v10 error:&aBlock];
  _Block_release(v10);
  v13 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v12 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_13;
  }

  v14 = 1;
LABEL_9:
  v20 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v21 = &off_1F4C179D8;
  aBlock = v11;
  LOBYTE(v18) = a1;
  v11 = v11;
  a3(&v16, &aBlock);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1CF3C865C(v14, v11);
LABEL_13:

    return a4 & 1;
  }

  a4 = v16;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v14, v11);

  return a4 & 1;
}

uint64_t sub_1CF3C7FA4(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *), uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = *(a2 + qword_1EC4EBCD0);
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v11 = *(a2 + qword_1EDEBBDB0);
    v14 = 0;
    goto LABEL_9;
  }

  v8 = *(a2 + qword_1EC4EBCD8);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8;
  v21 = sub_1CF385054;
  v22 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1CEFE7548;
  v20 = &block_descriptor_1617;
  v10 = _Block_copy(&aBlock);
  v11 = v9;

  aBlock = 0;
  v12 = [v11 executeSwift:v10 error:&aBlock];
  _Block_release(v10);
  v13 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v12 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_13;
  }

  v14 = 1;
LABEL_9:
  v20 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v21 = &off_1F4C179D8;
  aBlock = v11;
  LOBYTE(v18) = a1;
  v11 = v11;
  a3(&v16, &aBlock);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1CF3C865C(v14, v11);
LABEL_13:

    return a4;
  }

  a4 = v16;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v14, v11);

  return a4;
}

uint64_t sub_1CF3C81F4(char a1, uint64_t a2, void (*a3)(void *__return_ptr, id *), uint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = *(a2 + qword_1EC4EBCD0);
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v11 = *(a2 + qword_1EDEBBDB0);
    v14 = 0;
    goto LABEL_9;
  }

  v8 = *(a2 + qword_1EC4EBCD8);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8;
  v20 = sub_1CF385054;
  v21 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1CEFE7548;
  v19 = &block_descriptor_1614;
  v10 = _Block_copy(&v16);
  v11 = v9;

  v16 = 0;
  v12 = [v11 executeSwift:v10 error:&v16];
  _Block_release(v10);
  v13 = v16;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v12 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_13;
  }

  v14 = 1;
LABEL_9:
  v19 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v20 = &off_1F4C179D8;
  v16 = v11;
  LOBYTE(v17) = a1;
  v11 = v11;
  a3(v22, &v16);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&v16);
    sub_1CF3C865C(v14, v11);
LABEL_13:

    return a4;
  }

  a4 = v22[0];
  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_1CF3C865C(v14, v11);

  return a4;
}

void sub_1CF3C8444(char a1, void (*a2)(id *))
{
  v20 = *MEMORY[0x1E69E9840];
  sub_1CF3C77C8(a1, &aBlock);
  v4 = aBlock;
  v5 = v19;

  if (v5 == 1)
  {
    v17 = sub_1CF385054;
    v18 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1CEFE7548;
    v16 = &block_descriptor_1550;
    v6 = _Block_copy(&aBlock);
    v7 = v4;

    aBlock = 0;
    v8 = [v7 executeSwift:v6 error:&aBlock];
    _Block_release(v6);
    v9 = aBlock;
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    if ((v8 & 1) == 0)
    {
      sub_1CF9E57F8();

      swift_willThrow();
LABEL_8:

      return;
    }
  }

  else
  {
    v10 = v4;
  }

  v16 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v17 = &off_1F4C179D8;
  aBlock = v4;
  LOBYTE(v14) = a1;
  v11 = v4;
  a2(&aBlock);
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1CF3C865C(v5, v11);
    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v5, v11);
}

void sub_1CF3C865C(char a1, void *a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    aBlock[4] = sub_1CF385040;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFE7548;
    aBlock[3] = &block_descriptor_4;
    v3 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v4 = [a2 executeSwift:v3 error:aBlock];
    _Block_release(v3);
    v5 = aBlock[0];
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    if (!v4)
    {
      v6 = sub_1CF9E57F8();

      swift_willThrow();
    }
  }
}

uint64_t sub_1CF3C87A8(void (*a1)(void **))
{
  v3 = *(v1 + qword_1EDEBBDB0);
  v8 = &type metadata for SQLDatabaseReadWriteAccessor;
  v9 = &off_1F4C17938;
  v6 = v3;
  v7 = 2;
  v4 = v3;
  a1(&v6);

  return __swift_destroy_boxed_opaque_existential_1(&v6);
}

void sub_1CF3C8850(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a5;
  v13 = a4;
  v16 = a1;
  v19 = objc_autoreleasePoolPush();
  sub_1CF3C8910(v9, v12, a2, a3, v13, v16, a6, a7, a9, a8, &v20);
  objc_autoreleasePoolPop(v19);
}

void sub_1CF3C8910(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11)
{
  v93 = a9;
  v91 = a7;
  v92 = a8;
  v103 = a6;
  v104 = a5;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  v24 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = fpfs_adopt_log();
  v90 = a2;
  v88 = a1;
  sub_1CF3C77C8(a2, &v95);
  v85 = v96;
  v81 = v97;
  v80 = v98;
  v79 = v99;
  v78 = v100;
  v77 = v101;
  v75 = v102;

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v82 = a10;
  v26 = qword_1EDEBBE40;
  (*(v16 + 56))(v23, 1, 1, v15);
  v95 = 0x61657220636E7973;
  v96 = 0xEA00000000002064;
  v87 = a3;
  v89 = a4;
  v27 = sub_1CF9E7988();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  v74 = v95;
  v73 = v96;
  v84 = v23;
  sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = *(v16 + 48);
  v38 = v16;
  if (v37(v20, 1, v15) == 1)
  {
    v39 = v26;
    v40 = v83;
    sub_1CF9E6048();
    v41 = v37(v20, 1, v15);
    v42 = v40;
    v38 = v16;
    if (v41 != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v42 = v83;
    (*(v16 + 32))(v83, v20, v15);
  }

  v72 = v15;
  v43 = v76;
  (*(v38 + 16))(v76, v42, v15);
  *(v43 + *(v24 + 20)) = v26;
  v44 = v43 + *(v24 + 24);
  v45 = v26;
  v46 = v78;
  v47 = v77;
  *v44 = v78;
  *(v44 + 8) = v47;
  v48 = v75;
  *(v44 + 16) = v75;
  v49 = v45;
  v50 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1CF9FA450;
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = sub_1CEFD51C4();
  v52 = v73;
  *(v51 + 32) = v74;
  *(v51 + 40) = v52;
  v70 = v51;
  v69 = 2;
  sub_1CF9E6028(v50, &dword_1CEFC7000, v49, v46, v47, v48, v43, "%s", 2);
  v51, v53, v54, v55, v56, v57, v58, v59;
  (*(v38 + 8))(v42, v72);
  v60 = sub_1CEFCCC44(v84, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v60);
  v61 = v82;
  *(&v72 - 12) = v82;
  *(&v72 - 11) = v43;
  v62 = v80;
  *(&v72 - 10) = v81;
  *(&v72 - 9) = v62;
  *(&v72 - 64) = v79;
  v63 = v89;
  *(&v72 - 7) = v87;
  *(&v72 - 6) = v63;
  *(&v72 - 40) = v104;
  v68 = v88;
  v69 = v90;
  v70 = v91;
  v71 = v92;
  v64 = v94;
  v65 = v85;
  OS_dispatch_queue.asyncAndWaitWithLogs<A>(_:quiet:function:block:)(0, v103 & 1, "syncRead(quiet:function:mode:block:)", 36, 2u, sub_1CF485094, (&v72 - 14), v61, v93);

  sub_1CEFD5278(v43, type metadata accessor for Signpost);
  v66 = v86;
  v67 = fpfs_adopt_log();

  if (v64)
  {
    *a11 = v64;
  }
}

uint64_t sub_1CF3C8F60@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v70 = a2;
  LODWORD(v65) = a7;
  v61 = a6;
  v72 = a4;
  v71 = a3;
  v68 = a9;
  v69 = a8;
  v67 = a10;
  v66 = *a8;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v64 = a12;
  v62 = a13;
  v63 = a11;
  v25 = qword_1EDEBBE40;
  (*(v14 + 56))(v21, 1, 1, v13);
  v73 = 0x61657220636E7973;
  v74 = 0xEA00000000002064;
  v26 = sub_1CF9E7988();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  v60 = v74;
  v61 = v73;
  v65 = v21;
  sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v36 = *(v14 + 48);
  if (v36(v18, 1, v13) == 1)
  {
    v37 = v25;
    sub_1CF9E6048();
    if (v36(v18, 1, v13) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v14 + 32))(v75, v18, v13);
  }

  (*(v14 + 16))(v24, v75, v13);
  *&v24[*(v22 + 20)] = v25;
  v38 = &v24[*(v22 + 24)];
  v40 = v70;
  v39 = v71;
  *v38 = v70;
  *(v38 + 1) = v39;
  v41 = v72;
  v38[16] = v72;
  v42 = v25;
  v43 = v39;
  v44 = v42;
  v45 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1CF9FA450;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1CEFD51C4();
  v47 = v60;
  *(v46 + 32) = v61;
  *(v46 + 40) = v47;
  v59 = v46;
  LOBYTE(v58) = 2;
  sub_1CF9E6028(v45, &dword_1CEFC7000, v44, v40, v43, v41, v24, "%s", 2);
  v46, v48, v49, v50, v51, v52, v53, v54;
  (*(v14 + 8))(v75, v13);
  v55 = sub_1CEFCCC44(v65, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v66;
  *(&v60 - 4) = *(v66 + 2632);
  *(&v60 - 6) = v62;
  *(&v60 - 5) = *(v56 + 2648);
  sub_1CF3C8444(v67, sub_1CF4850E0);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v24, type metadata accessor for Signpost);
}

uint64_t sub_1CF3C9494(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1CF9E7458();
  type metadata accessor for Signpost(0);
  sub_1CF9E6038();
  return a3(a1);
}

uint64_t sub_1CF3C9514(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v63 = a8;
  v64 = a2;
  LODWORD(v58) = a7;
  v66 = a4;
  v65 = a3;
  v62 = a9;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v59 = a10;
  v60 = a11;
  v24 = qword_1EDEBBE40;
  (*(v12 + 56))(v20, 1, 1, v11);
  v67 = 0x657220636E797361;
  v68 = 0xEB00000000206461;
  v25 = sub_1CF9E7988();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  v57 = v68;
  v58 = v67;
  sub_1CEFCCBDC(v20, v17, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v12 + 48);
  v36 = v35(v17, 1, v11);
  v61 = v20;
  if (v36 == 1)
  {
    v37 = v24;
    sub_1CF9E6048();
    if (v35(v17, 1, v11) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
  }

  (*(v12 + 16))(v23, v14, v11);
  *&v23[*(v21 + 20)] = v24;
  v38 = &v23[*(v21 + 24)];
  v39 = v64;
  v40 = v14;
  v41 = v65;
  *v38 = v64;
  *(v38 + 1) = v41;
  v42 = v66;
  v38[16] = v66;
  v43 = v24;
  v44 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA450;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = sub_1CEFD51C4();
  v46 = v57;
  *(v45 + 32) = v58;
  *(v45 + 40) = v46;
  v58 = v43;
  sub_1CF9E6028(v44, &dword_1CEFC7000, v43, v39, v41, v42, v23, "%s", 2);
  v45, v47, v48, v49, v50, v51, v52, v53;
  (*(v12 + 8))(v40, v11);
  v54 = sub_1CEFCCC44(v61, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v54);
  sub_1CF3C8444(v62, sub_1CF480240);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v23, type metadata accessor for Signpost);
}

char *sub_1CF3C9A40(char *a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v88 = a5;
  v87[2] = a4;
  v87[1] = a3;
  v93 = a2;
  v7 = *v5;
  v8 = sub_1CF9E6118();
  v90 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v89 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for FileTreeError(0, v7[330], v7[332], v10);
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v12 = v87 - v11;
  v14 = type metadata accessor for FileTreeError(0, v7[329], v7[331], v13);
  v92 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v87 - v15;
  v17 = sub_1CF9E79E8();
  v95 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    if (v104 == 8)
    {
      sub_1CF47FB38(&v100);
    }

    else if (v104 != 9 || (v100 - 1) > 2 || (v21 = vorrq_s8(v102, v103), *&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v101))
    {
      sub_1CF47FB38(&v100);
      goto LABEL_7;
    }

    v27 = v105;
    goto LABEL_19;
  }

LABEL_7:

  v100 = a1;
  v22 = a1;
  type metadata accessor for PQLSqliteError(0);
  if (swift_dynamicCast())
  {

LABEL_9:
    v23 = v100;
LABEL_12:

LABEL_13:
    v25 = *(v5 + qword_1EDEAE660);
    *(v5 + qword_1EDEAE660) = a1;
    v26 = a1;
    v27 = v25;
LABEL_19:

    return (*(v5 + qword_1EDEBBDA0))(v5, a1);
  }

  v105 = a1;
  v24 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&v100);
    v23 = v105;
    goto LABEL_12;
  }

  v87[0] = v8;

  v100 = a1;
  v28 = a1;
  v29 = swift_dynamicCast();

  if (v29)
  {
    goto LABEL_13;
  }

  v100 = a1;
  v30 = a1;
  if (swift_dynamicCast())
  {
    (*(v95 + 8))(v19, v17);
    goto LABEL_9;
  }

  v100 = a1;
  v32 = a1;
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
LABEL_25:

LABEL_33:
      swift_willThrow();
      return a1;
    }

    (*(v92 + 8))(v16, v14);
  }

  v100 = a1;
  v33 = a1;
  v34 = v94;
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      goto LABEL_25;
    }

    (*(v91 + 8))(v12, v34);
  }

  v100 = a1;
  v35 = a1;
  v36 = swift_dynamicCast();

  if (v36 || (v93 & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((sub_1CF033B88() & 0x400000000) == 0)
  {
    v37 = fpfs_current_or_default_log();
    v38 = v89;
    sub_1CF9E6128();
    v39 = a1;
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E72B8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v38;
      v45 = swift_slowAlloc();
      v100 = v45;
      *v42 = 136446466;
      v46 = sub_1CF9E7988();
      v48 = v47;
      v49 = sub_1CEFD0DF0(v46, v47, &v100);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v42 + 4) = v49;
      *(v42 + 12) = 2112;
      swift_getErrorValue();
      v57 = Error.prettyDescription.getter(v98, v99);
      *(v42 + 14) = v57;
      *v43 = v57;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "unhandled database persistence error in %{public}s: %@", v42, 0x16u);
      sub_1CEFCCC44(v43, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v42, -1, -1);

      (*(v90 + 8))(v44, v87[0]);
    }

    else
    {

      (*(v90 + 8))(v38, v87[0]);
    }

    goto LABEL_33;
  }

  v100 = 0;
  v101 = 0xE000000000000000;
  sub_1CF9E7948();
  v101, v58, v59, v60, v61, v62, v63, v64;
  v100 = 0xD000000000000028;
  v101 = 0x80000001CFA46FF0;
  v65 = sub_1CF9E7988();
  v67 = v66;
  MEMORY[0x1D3868CC0](v65);
  v67, v68, v69, v70, v71, v72, v73, v74;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v75 = Error.prettyDescription.getter(v96, v97);
  v76 = [v75 description];
  v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v79 = v78;

  MEMORY[0x1D3868CC0](v77, v79);
  v79, v80, v81, v82, v83, v84, v85, v86;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3CA2D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_BYTE *, _BYTE *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v32 = a5;
  v29 = a2;
  v10 = type metadata accessor for SnapshotItem(255, (*v6)[329], (*v6)[331], a4);
  v11 = sub_1CF9E75D8();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  v14 = *(v10 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28[-v17];
  v19 = v33;
  result = (*(*v6[4] + 240))(a1, 1, a3, a4, v32, v16);
  if (!v19)
  {
    v21 = v30;
    v22 = v31;
    v33 = 0;
    if ((*(v14 + 48))(v13, 1, v10) == 1)
    {
      (*(v21 + 8))(v13, v11);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v22, 1, 1, TupleTypeMetadata3);
    }

    else
    {
      v32 = *(v14 + 32);
      v32(v18, v13, v10);
      v24 = swift_getTupleTypeMetadata3();
      v25 = *(v24 + 48);
      v26 = *(v24 + 64);
      (*(v14 + 16))(v22, v18, v10);
      v27 = *(v14 + 56);
      v27(v22, 0, 1, v10);
      v32((v22 + v25), v18, v10);
      v27(v22 + v25, 0, 1, v10);
      *(v22 + v26) = v29 & 1;
      return (*(*(v24 - 8) + 56))(v22, 0, 1, v24);
    }
  }

  return result;
}

uint64_t sub_1CF3CA63C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_BYTE *, _BYTE *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v29 = a2;
  v32 = a6;
  v10 = (*v6)[329];
  v30 = (*v6)[331];
  v28 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v33 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v19 = a1;
  v20 = a3;
  v21 = v34;
  v22 = v35;
  result = (*(*v6[2] + 152))(v19, v20, a4, v34, v16);
  if (!v22)
  {
    v24 = v31;
    v35 = 0;
    if ((*(v33 + 48))(v14, 1, AssociatedTypeWitness) == 1)
    {
      (*(v24 + 8))(v14, v12);
      type metadata accessor for SnapshotItem(255, v28, v30, v25);
      sub_1CF9E75D8();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      return (*(*(TupleTypeMetadata3 - 8) + 56))(v32, 1, 1, TupleTypeMetadata3);
    }

    else
    {
      (*(v33 + 32))(v18, v14, AssociatedTypeWitness);
      sub_1CF3CA2D8(v18, v29 & 1, v20, a4, v21, v32);
      return (*(v33 + 8))(v18, AssociatedTypeWitness);
    }
  }

  return result;
}

void sub_1CF3CA94C()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + qword_1EDEBBDB0);
  v14 = sub_1CF385068;
  v15 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1CEFE7548;
  v13 = &block_descriptor_1608;
  v2 = _Block_copy(&aBlock);

  aBlock = 0;
  v3 = [v1 fetchSwift:v2 error:&aBlock];
  _Block_release(v2);
  v4 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v3)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    return;
  }

  if ([v3 next])
  {
    v5 = [v3 longAtIndex_];
  }

  else
  {
    v5 = 0;
  }

  v14 = sub_1CF385084;
  v15 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1CEFE7548;
  v13 = &block_descriptor_1611;
  v6 = _Block_copy(&aBlock);

  aBlock = 0;
  v7 = [v1 fetchSwift:v6 error:&aBlock];
  _Block_release(v6);
  v8 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    return;
  }

  if ([v7 next])
  {
    v9 = [v7 longAtIndex_];
  }

  else
  {
    v9 = 0;
  }

  if ((v5 * v9) >> 64 != (v5 * v9) >> 63)
  {
LABEL_17:
    __break(1u);
  }
}

double sub_1CF3CAC18(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = v4;
  *(v10 + 48) = a2;
  swift_retain_n();

  sub_1CF92DC74("incrementalDBVacuum(force:size:completionHandler:)", 50, 2, sub_1CF045408, 0, sub_1CF48554C, v9, sub_1CF485578, v10);

  return result;
}

void sub_1CF3CAD30(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    v11 = a1;
    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EDEBBD10 shouldPause];
    a1 = v11;
    if (v12)
    {
      v13 = 0;
LABEL_13:
      a3(v13);
      return;
    }
  }

  v14 = *(a5 + qword_1EDEBBE18);
  if (v14 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = *(a5 + qword_1EDEBBE18);
  }

  [*__swift_project_boxed_opaque_existential_1(a1 a1[3])];
  if (v14 >= a6)
  {
    v13 = 1;
    goto LABEL_13;
  }

  if (__OFSUB__(a6, v15))
  {
    __break(1u);
  }

  else
  {
    sub_1CF3CAC18(a2 & 1, a6 - v15, a3, a4);
  }
}

void sub_1CF3CAE48(char a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v51 = a4;
  v52 = a6;
  v50 = a3;
  v11 = sub_1CF9E6118();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E64A8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1CF042F4C();
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  v20 = sub_1CF9E64D8();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_7:
    if ([qword_1EDEBBD10 shouldPause])
    {
      v21 = *(v20 + 8);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(v7 + qword_1EDEBBE00) == 1)
  {
    v21 = *(v52 + 8);
LABEL_4:
    v55 = a5;
    v56 = v21;
    v22 = __swift_allocate_boxed_opaque_existential_0(&v53);
    (*(*(a5 - 8) + 16))(v22, a2, a5);
    v50(&v53);
    sub_1CEFCCC44(&v53, &qword_1EC4C0700, &qword_1CFA05B10);
    return;
  }

  v20 = v52;
  if ((a1 & 1) == 0)
  {
    if (qword_1EDEADB60 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_9:
  v23 = *(v20 + 8);
  v24 = *(v23 + 48);
  v24(&v53, MEMORY[0x1E69E6530], sub_1CF3CB4D8, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v23);
  v25 = v53;
  if (v54)
  {
    v25 = 0;
  }

  v48 = v25;
  v24(&v53, MEMORY[0x1E69E6530], sub_1CF3CB4F4, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v23);
  v26 = v53;
  if (v54)
  {
    v26 = 0;
  }

  v47 = v26;
  v24(&v53, MEMORY[0x1E69E6530], sub_1CF3CB510, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v23);
  v27 = v53;
  if (v54)
  {
    v27 = 0;
  }

  v46 = v27;
  v24(&v53, MEMORY[0x1E69E6530], sub_1CF3CB608, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v23);
  v28 = v53;
  if (v54)
  {
    v28 = 0;
  }

  v45 = v28;
  v24(&v53, MEMORY[0x1E69E6530], sub_1CF3CB700, 0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], a5, v23);
  v29 = v53;
  if (v54)
  {
    v29 = 0;
  }

  v30 = v48 + v47;
  if (__OFADD__(v48, v47))
  {
    __break(1u);
    goto LABEL_29;
  }

  v31 = __OFADD__(v30, v46);
  v32 = v30 + v46;
  if (v31)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = __OFADD__(v32, v45);
  v33 = v32 + v45;
  if (v31)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = v33 + v29;
  if (__OFADD__(v33, v29))
  {
LABEL_31:
    __break(1u);
    return;
  }

  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v36 = sub_1CF9E6108();
  v37 = sub_1CF9E72C8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = v34;
    _os_log_impl(&dword_1CEFC7000, v36, v37, "🧹  vacuum-ing wharf with an upper bound of %ld", v38, 0xCu);
    MEMORY[0x1D386CDC0](v38, -1, -1);
  }

  (*(v49 + 8))(v13, v11);
  v39 = *(*(v7 + 32) + 16);
  v40 = swift_allocObject();
  v42 = v51;
  v41 = v52;
  v40[2] = a5;
  v40[3] = v41;
  v43 = v50;
  v40[4] = v7;
  v40[5] = v43;
  v40[6] = v42;
  v44 = *(*v39 + 736);

  v44(v34, sub_1CF48548C, v40);
}

uint64_t sub_1CF3CB510()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA47180);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44350);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF3CB608()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA47140);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44350);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF3CB700()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA470E0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA47110);
  if (qword_1EDEA5298 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDEBB7F8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v11 = sub_1CF9E6C18();
  v13 = v12;
  v10, v12, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](v11, v13);
  v13, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v27, v28, v29, v30, v31, v32, v33;
  return 0;
}

double sub_1CF3CB8E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a3 >> 8) & 1;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;
  *(v17 + 32) = a4;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 57) = v15;
  *(v17 + 64) = a5;
  *(v17 + 72) = a6;
  swift_retain_n();

  sub_1CF485540(a1, a2, a3, v15);
  sub_1CF382FBC("wharfVacuum(force:with:completionHandler:)", 42, 2, 2, sub_1CF4854A8, v16, sub_1CF485500, v17);

  return result;
}

uint64_t sub_1CF3CBA2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v33 = a6;
  v32[0] = a1;
  v32[1] = a7;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  *(a2 + qword_1EDEBBE00) = 1;
  if ((a5 & 0x100) == 0)
  {
    v21 = fpfs_current_or_default_log();
    if (a5)
    {
      sub_1CF9E6128();
      v22 = sub_1CF9E6108();
      v23 = sub_1CF9E72C8();
      if (!os_log_type_enabled(v22, v23))
      {
        v20 = v17;
        goto LABEL_10;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "🧹  wharf didn't have anything to vacuum", v24, 2u);
      v20 = v17;
    }

    else
    {
      sub_1CF9E6128();
      v22 = sub_1CF9E6108();
      v30 = sub_1CF9E72C8();
      if (!os_log_type_enabled(v22, v30))
      {
        v20 = v14;
        goto LABEL_10;
      }

      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = a3;
      *(v24 + 12) = 2048;
      *(v24 + 14) = a4;
      _os_log_impl(&dword_1CEFC7000, v22, v30, "🧹  vacuum-ed %ld files from <wharf>/ingest/, %ld files from <wharf>/propagate/", v24, 0x16u);
      v20 = v14;
    }

    goto LABEL_9;
  }

  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v26 = a3;
  v22 = sub_1CF9E6108();
  v27 = sub_1CF9E72A8();
  sub_1CF2F63CC(a3, a4, a5, 1);
  if (os_log_type_enabled(v22, v27))
  {
    v24 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v24 = 138412290;
    swift_getErrorValue();
    v29 = Error.prettyDescription.getter(v34, v35);
    *(v24 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_1CEFC7000, v22, v27, "🧹  wharf vacuum failed: %@", v24, 0xCu);
    sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v28, -1, -1);
LABEL_9:
    MEMORY[0x1D386CDC0](v24, -1, -1);
  }

LABEL_10:

  (*(v12 + 8))(v20, v11);
  sub_1CF1A91AC(v32[0], v36);
  v33(v36);
  return sub_1CEFCCC44(v36, &qword_1EC4C0700, &qword_1CFA05B10);
}

double sub_1CF3CBDB4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a1;
  swift_retain_n();

  sub_1CF92DC74("vacuum(force:completionHandler:)", 32, 2, sub_1CF045408, 0, sub_1CF485B6C, v7, sub_1CF484C68, v8);

  return result;
}

void sub_1CF3CBEC0(void *a1, void *a2, void (*a3)(void), uint64_t a4, int a5)
{
  v66 = a5;
  v69 = a3;
  v63 = a1;
  v65 = *a2;
  v8 = sub_1CF9E5CF8();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v70 = sub_1CF9E6118();
  v13 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = qword_1EDEBBDF8;
  if (*(a2 + qword_1EDEBBDF8) == 1)
  {
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "🧹  vacuum still running when triggered", v23, 2u);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    (*(v13 + 8))(v18, v70);
    v69(0);
  }

  else
  {
    v62 = v12;
    sub_1CF9E5CE8();
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = a4;
      v28 = v27;
      *v27 = 0;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "🧹  vacuum-ing", v27, 2u);
      v29 = v28;
      a4 = v61;
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    (*(v13 + 8))(v15, v70);
    *(a2 + v19) = 1;
    sub_1CF3CA94C();
    if (v5)
    {
      (*(v67 + 8))(v62, v68);
    }

    else
    {
      v61 = a4;
      v70 = v30;
      v31 = qword_1EDEBBE08;
      if ((*(a2 + qword_1EDEBBE08) & 1) == 0)
      {
        v32 = sub_1CF3BD984(v30);
        v40 = *v32->tree;
        v60 = v32;
        v41 = v32 + 1;
        v42 = v40 + 1;
        while (--v42)
        {
          anon_8 = v41[1]._anon_8;
          v44 = *v41->tester;
          isa = v41[1].super.isa;
          __swift_project_boxed_opaque_existential_1(v41, v44);
          (*(isa + 2))(v44, isa);
          v41 = anon_8;
        }

        v60, v33, v34, v35, v36, v37, v38, v39;
        *(a2 + v31) = 1;
      }

      v46 = v62;
      v47 = v63[4];
      v59 = v63[3];
      v60 = v47;
      v63 = __swift_project_boxed_opaque_existential_1(v63, v59);
      v48 = v67;
      v49 = v64;
      (*(v67 + 16))(v64, v46, v68);
      v50 = (*(v48 + 80) + 80) & ~*(v48 + 80);
      v51 = (v9 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      v53 = v65;
      *(v52 + 16) = *(v65 + 2632);
      *(v52 + 24) = *(v53 + 2640);
      v54 = v69;
      *(v52 + 40) = *(v53 + 2656);
      *(v52 + 48) = v54;
      *(v52 + 56) = v61;
      v55 = v66 & 1;
      *(v52 + 64) = v66 & 1;
      *(v52 + 72) = a2;
      v56 = v52 + v50;
      v57 = v68;
      (*(v48 + 32))(v56, v49, v68);
      *(v52 + v51) = v70;

      sub_1CF3CAE48(v55, v63, sub_1CF484C8C, v52, v59, v60);

      (*(v48 + 8))(v62, v57);
    }
  }
}

uint64_t sub_1CF3CC400(uint64_t a1, void (*a2)(void), uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v31 = a6;
  v32 = v13;
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, &v33, &qword_1EC4C0700, &qword_1CFA05B10);
  if (v34)
  {
    sub_1CF054EA0(&v33, v35);
    if (a4)
    {
      goto LABEL_7;
    }

    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    if (![qword_1EDEBBD10 shouldPause])
    {
LABEL_7:
      v30 = a2;
      v28 = a7;
      v18 = v36;
      v19 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v29 = (*(v19 + 96))(v18, v19);
      (*(v15 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v14);
      v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v31) = a4;
      v23 = swift_allocObject();
      v24 = v32;
      *(v23 + 16) = *(v32 + 2632);
      *(v23 + 24) = *(v24 + 2640);
      *(v23 + 40) = *(v24 + 2656);
      (*(v15 + 32))(v23 + v20, v17, v14);
      *(v23 + v21) = a5;
      *(v23 + v22) = v28;
      v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v25 = v30;
      v25[1] = a3;

      sub_1CF3CAC18(v31 & 1, v29, sub_1CF484D34, v23);
    }

    else
    {
      a2(0);
    }

    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_1CEFCCC44(&v33, &qword_1EC4C0700, &qword_1CFA05B10);
    return (a2)(0);
  }
}

void sub_1CF3CC6F8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v157 = a6;
  v158 = a5;
  v161 = a1;
  v8 = sub_1CF9E5DB8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v149 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0708, &unk_1CFA05B18);
  v151 = *(v10 - 8);
  v152 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v150 = v133 - v11;
  v153 = sub_1CF9E56F8();
  v146 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v144 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1CF9E56D8();
  v145 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v14 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1CF9E5708();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v16 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v155 = *(v17 - 8);
  v156 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v133 - v21;
  v23 = sub_1CF9E5CF8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C28();
  v28 = v27;
  (*(v24 + 8))(v26, v23);
  v160 = a3;
  sub_1CF3CA94C();
  v30 = v29;
  v159 = a4 - *&v29;
  v31 = v161;
  if (__OFSUB__(a4, *&v29))
  {
    __break(1u);
  }

  else
  {
    if (a4)
    {
      v32 = v159 * 100.0 / a4;
    }

    else
    {
      v32 = 0.0;
    }

    v33 = fpfs_current_or_default_log();
    if (v31)
    {
      v34 = v22;
      sub_1CF9E6128();
      v35 = sub_1CF9E6108();
      v36 = sub_1CF9E72C8();
      v37 = v36;
      v143 = v35;
      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v165 = v142;
        v140 = v38;
        *v38 = 134218754;
        *(v38 + 4) = v28;
        *(v38 + 12) = 2080;
        v162 = v30;
        v139 = *MEMORY[0x1E69689E8];
        v39 = v145;
        v40 = v16;
        v41 = *(v145 + 104);
        v136 = v145 + 104;
        v138 = v41;
        v42 = v14;
        v43 = v154;
        v41(v14);
        v141 = v37;
        v44 = v144;
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        v137 = *(v146 + 1);
        v146 = v34;
        v137(v44, v153);
        v145 = *(v39 + 8);
        (v145)(v14, v43);
        v135 = sub_1CF056E98();
        v134 = sub_1CF042F54(&unk_1EDEAB440, MEMORY[0x1E6968A00], MEMORY[0x1E69689F8]);
        v133[1] = sub_1CF484DEC();
        v45 = v148;
        sub_1CF9E76A8();
        v46 = *(v147 + 1);
        v46(v40, v45);
        v47 = v164;
        v48 = sub_1CEFD0DF0(v163, v164, &v165);
        v47, v49, v50, v51, v52, v53, v54, v55;
        v56 = v140;
        *(v140 + 14) = v48;
        *(v56 + 22) = 2080;
        v57 = v56;
        v162 = *&v159;
        v58 = v154;
        v138(v42, v139, v154);
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        v137(v44, v153);
        (v145)(v42, v58);
        sub_1CF9E76A8();
        v46(v40, v45);
        v59 = v164;
        v60 = sub_1CEFD0DF0(v163, v164, &v165);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v57 + 24) = v60;
        *(v57 + 32) = 2080;
        v68 = v57;
        v162 = v32;
        sub_1CF9E5DA8();
        sub_1CF484E40();
        v69 = v150;
        sub_1CF9E5808();
        sub_1CEFCCCEC(&unk_1EDEAB428, &qword_1EC4C0708, &unk_1CFA05B18, MEMORY[0x1E6968E60]);
        v70 = v152;
        sub_1CF9E6608();
        (*(v151 + 8))(v69, v70);
        v71 = v164;
        v72 = sub_1CEFD0DF0(v163, v164, &v165);
        v71, v73, v74, v75, v76, v77, v78, v79;
        *(v68 + 34) = v72;
        v80 = v143;
        _os_log_impl(&dword_1CEFC7000, v143, v141, "🧹  finished vacuum in %fs, newSize: %s, reclaimed: %s (%s)", v68, 0x2Au);
        v81 = v142;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v81, -1, -1);
        v31 = v161;
        MEMORY[0x1D386CDC0](v68, -1, -1);

        (*(v155 + 8))(v146, v156);
      }

      else
      {

        (*(v155 + 8))(v34, v156);
      }

      v132 = v160;
      *(v160 + qword_1EDEBBE08) = 0;
      *(v132 + qword_1EDEBBE00) = 0;
    }

    else
    {
      v82 = v19;
      sub_1CF9E6128();
      v83 = sub_1CF9E6108();
      v84 = sub_1CF9E72C8();
      v85 = v84;
      v143 = v83;
      if (os_log_type_enabled(v83, v84))
      {
        v86 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v165 = v142;
        v140 = v86;
        *v86 = 134218754;
        *(v86 + 4) = v28;
        *(v86 + 12) = 2080;
        v162 = v30;
        v139 = *MEMORY[0x1E69689E8];
        v87 = v145;
        v88 = v16;
        v89 = *(v145 + 104);
        v137 = (v145 + 104);
        v138 = v89;
        v90 = v14;
        v91 = v154;
        v89(v14);
        v141 = v85;
        v92 = v144;
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        v146 = *(v146 + 1);
        (v146)(v92, v153);
        v145 = *(v87 + 8);
        (v145)(v14, v91);
        v136 = sub_1CF056E98();
        v135 = sub_1CF042F54(&unk_1EDEAB440, MEMORY[0x1E6968A00], MEMORY[0x1E69689F8]);
        v134 = sub_1CF484DEC();
        v93 = v148;
        sub_1CF9E76A8();
        v94 = *(v147 + 1);
        v94(v88, v93);
        v95 = v164;
        v96 = sub_1CEFD0DF0(v163, v164, &v165);
        v147 = v82;
        v97 = v96;
        v95, v98, v99, v100, v101, v102, v103, v104;
        v105 = v140;
        *(v140 + 14) = v97;
        *(v105 + 22) = 2080;
        v106 = v105;
        v162 = *&v159;
        v107 = v154;
        v138(v90, v139, v154);
        sub_1CF9E56E8();
        sub_1CF9E53D8();
        (v146)(v92, v153);
        (v145)(v90, v107);
        sub_1CF9E76A8();
        v94(v88, v93);
        v108 = v164;
        v109 = sub_1CEFD0DF0(v163, v164, &v165);
        v108, v110, v111, v112, v113, v114, v115, v116;
        *(v106 + 24) = v109;
        *(v106 + 32) = 2080;
        v117 = v106;
        v162 = v32;
        sub_1CF9E5DA8();
        sub_1CF484E40();
        v118 = v150;
        sub_1CF9E5808();
        sub_1CEFCCCEC(&unk_1EDEAB428, &qword_1EC4C0708, &unk_1CFA05B18, MEMORY[0x1E6968E60]);
        v119 = v152;
        sub_1CF9E6608();
        v120 = v119;
        v31 = v161;
        (*(v151 + 8))(v118, v120);
        v121 = v164;
        v122 = sub_1CEFD0DF0(v163, v164, &v165);
        v121, v123, v124, v125, v126, v127, v128, v129;
        *(v117 + 34) = v122;
        v130 = v143;
        _os_log_impl(&dword_1CEFC7000, v143, v141, "🧹  pausing vacuum because DAS asked for deferral after %fs, newSize: %s, reclaimed: %s (%s)", v117, 0x2Au);
        v131 = v142;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v131, -1, -1);
        MEMORY[0x1D386CDC0](v117, -1, -1);

        (*(v155 + 8))(v147, v156);
      }

      else
      {

        (*(v155 + 8))(v19, v156);
      }
    }

    *(v160 + qword_1EDEBBDF8) = 0;
    v158(v31 & 1);
  }
}

void sub_1CF3CD500(void *a1, char a2, int a3, void (*a4)(void **), uint64_t a5)
{
  v25 = a3;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + 82) & 0x20) != 0)
  {
    v20 = v5;
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7298();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "Enumerator notification waiting for flush", v18, 2u);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v19 = swift_allocObject();
    v19[2] = v20;
    v19[3] = a4;
    v19[4] = a5;

    sub_1CF3C3FC0("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, v25 & 1, 0, 0, nullsub_1, 0, sub_1CF480134, v19);
  }

  else
  {
    v23 = &type metadata for SQLDatabaseReadWriteAccessor;
    v24 = &off_1F4C17970;
    v21 = a1;
    v22 = a2;
    v14 = a1;
    a4(&v21);
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }
}

void sub_1CF3CD754(uint64_t a1, int a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v25 = a2;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v6;
  if ((sub_1CF033B88() & 0x200000) != 0)
  {
    v23 = a5;
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7298();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Enumerator notification waiting for flush", v20, 2u);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v21 = swift_allocObject();
    v22 = v24;
    v21[2] = v23;
    v21[3] = a6;
    v21[4] = v22;
    v21[5] = a3;
    v21[6] = v27;

    sub_1CF3C4ED0("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, v25 & 1, 0, 0, nullsub_1, 0, sub_1CF485428, v21);
  }

  else
  {
    v15 = *(a6 + 8);
    v26[3] = a5;
    v26[4] = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    a3(v26);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }
}

void sub_1CF3CD9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7298();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17 = a4;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "Enumerator notification completed and flushed", v13, 2u);
    a4 = v17;
    MEMORY[0x1D386CDC0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  sub_1CF7AAF88("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, 0, nullsub_1, 0, sub_1CF480240, v15);
}

void sub_1CF3CDBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v11 = sub_1CF9E6108();
  v12 = sub_1CF9E7298();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17 = a4;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1CEFC7000, v11, v12, "Enumerator notification completed and flushed", v13, 2u);
    a4 = v17;
    MEMORY[0x1D386CDC0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  sub_1CF92DFCC("notifyEnumeratorsAfterNextFlush(connection:side:notifyBlock:)", 61, 2, 0, nullsub_1, 0, sub_1CF48586C, v15);
}

void sub_1CF3CDDD4(void *a1, void *a2, uint64_t a3)
{
  v267 = a1;
  v5 = sub_1CF9E6118();
  v243 = *(v5 - 8);
  v244 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v246 = &v231 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1CF9E5CF8();
  v239 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v240 = &v231 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v238 = &v231 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v242 = &v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v247 = &v231 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v254 = (&v231 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v258 = &v231 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v257 = (&v231 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v253 = *(v20 - 8);
  v21 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v231 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v259 = &v231 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v252 = &v231 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v261 = &v231 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v260 = &v231 - v29;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v262);
  v251 = &v231 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v248 = &v231 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v256 = &v231 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v255 = &v231 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v250 = &v231 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v249 = &v231 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v231 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v231 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v231 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v231 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v231 - v54;
  v286 = a2;
  v287 = a3;
  v263 = a2;
  v264 = a3;
  v56 = a3;
  v57 = v266;
  v58 = v265;
  sub_1CF3D2E50(v267, a2, v56);
  if (v58)
  {
    return;
  }

  v233 = v46;
  v234 = v52;
  v235 = v49;
  v236 = v43;
  v265 = v21;
  v237 = v55;
  v59 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  v60 = v267;
  sub_1CF3F0224(v267, v263, v264);
  v61 = *(v59 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  sub_1CF3981E8(v60);
  v232 = 0;
  v62 = v237;
  sub_1CEFCCBDC(v60, v237, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 18)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 11)
        {
          if (EnumCaseMultiPayload == 16)
          {
            v64 = v251;
            sub_1CEFCCBDC(v62, v251, &qword_1EC4BE710, &qword_1CF9FE5A8);

            if ((*(v64 + 9) & 1) == 0)
            {
              if (*(v64 + 24))
              {
                v136 = *v64;
                v137 = *(v64 + 8);
                v138 = fpfs_current_or_default_log();
                v139 = v246;
                sub_1CF9E6128();
                v140 = sub_1CF9E6108();
                v141 = sub_1CF9E72C8();
                if (os_log_type_enabled(v140, v141))
                {
                  v142 = swift_slowAlloc();
                  v143 = swift_slowAlloc();
                  *&v269 = v143;
                  *v142 = 136315138;
                  *&v285[0] = v136;
                  BYTE8(v285[0]) = v137;
                  v144 = VFSItemID.description.getter(v143);
                  v146 = v145;
                  v147 = sub_1CEFD0DF0(v144, v145, &v269);
                  v146, v148, v149, v150, v151, v152, v153, v154;
                  *(v142 + 4) = v147;
                  v62 = v237;
                  _os_log_impl(&dword_1CEFC7000, v140, v141, "going to update enumeration change on %s", v142, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v143);
                  MEMORY[0x1D386CDC0](v143, -1, -1);
                  MEMORY[0x1D386CDC0](v142, -1, -1);

                  (*(v243 + 8))(v246, v244);
                }

                else
                {

                  (*(v243 + 8))(v139, v244);
                }

                v189 = swift_allocObject();
                *(v189 + 16) = v266;
                *(v189 + 24) = v136;
                *(v189 + 32) = v137;

                v190 = v232;
                sub_1CF3CD500(v263, v264, 0, sub_1CF47FD74, v189);
                v232 = v190;
              }

              goto LABEL_91;
            }

            v65 = *v64;
            v66 = *(v64 + 8);
            goto LABEL_36;
          }

LABEL_91:
          v112 = v62;
          goto LABEL_92;
        }

        v114 = v236;
        sub_1CEFCCBDC(v62, v236, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v116 = *(v114 + 27) == 1 || *(v114 + 26) == 1;
        if (*(v114 + 9))
        {
          v117 = *v114;
          if (v116)
          {
            sub_1CF47FDFC(*(v114 + 16), *(v114 + 24));
            sub_1CEFCCC44(v62, &qword_1EC4BE710, &qword_1CF9FE5A8);
            v118 = swift_allocObject();
            *(v118 + 16) = v266;
            *(v118 + 24) = v117;

            v119 = sub_1CF47FDA8;
            v120 = v263;
            v121 = v264;
            v122 = 1;
LABEL_61:
            sub_1CF3CD500(v120, v121, v122, v119, v118);

            return;
          }

          sub_1CEFD0994(*v114, *(v114 + 8), 1);
        }

        else if (v116)
        {
          v155 = *(v114 + 8);
          v156 = *v114;
          sub_1CF47FDFC(*(v114 + 16), *(v114 + 24));
          sub_1CEFCCC44(v62, &qword_1EC4BE710, &qword_1CF9FE5A8);
          v118 = swift_allocObject();
          *(v118 + 16) = v266;
          *(v118 + 24) = v156;
          *(v118 + 32) = v155;

          v119 = sub_1CF47FD74;
          v120 = v263;
          v121 = v264;
          v122 = 0;
          goto LABEL_61;
        }

        sub_1CF47FDFC(*(v114 + 16), *(v114 + 24));
        goto LABEL_91;
      }

      v101 = v62;
      v102 = v235;
      sub_1CEFCCBDC(v101, v235, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v104 = *(v103 + 48);
      v105 = *(v102 + *(v103 + 64));
      v106 = v257;
      sub_1CEFE55D0(v102, v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v107 = v258;
      sub_1CEFE55D0(v102 + v104, v258, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v108 = v254;
      sub_1CEFCCBDC(v106, v254, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v110 = *(*(v109 - 8) + 48);
      if (v110(v108, 1, v109) == 1)
      {
        sub_1CEFCCC44(v108, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v111 = v247;
        sub_1CEFCCBDC(v107, v247, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        if (v110(v111, 1, v109) == 1)
        {
          sub_1CEFCCC44(v111, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v107, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v106, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v112 = v237;
LABEL_92:
          sub_1CEFCCC44(v112, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return;
        }

        v108 = v111;
      }

      v161 = *v108;
      sub_1CEFCCC44(v108, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v162 = swift_allocObject();
      *(v162 + 16) = v266;
      *(v162 + 24) = v161;

      v163 = v161;
      v164 = v232;
      sub_1CF3CD500(v263, v264, 1, sub_1CF47FE7C, v162);
      if (v164)
      {

        sub_1CEFCCC44(v258, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        sub_1CEFCCC44(v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v112 = v237;
        goto LABEL_92;
      }

      if ((v105 & 0x200000) != 0)
      {
        v187 = v258;
        v188 = v242;
        sub_1CEFCCBDC(v258, v242, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        if (v110(v188, 1, v109) == 1)
        {

          sub_1CEFCCC44(v187, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v165 = v188;
          goto LABEL_88;
        }

        v195 = v188 + *(v109 + 52);
        v196 = *(v195 + 208);
        v281 = *(v195 + 192);
        v282 = v196;
        v283 = *(v195 + 224);
        v284 = *(v195 + 240);
        v197 = *(v195 + 144);
        v277 = *(v195 + 128);
        v278 = v197;
        v198 = *(v195 + 176);
        v279 = *(v195 + 160);
        v280 = v198;
        v199 = *(v195 + 80);
        v273 = *(v195 + 64);
        v274 = v199;
        v200 = *(v195 + 112);
        v275 = *(v195 + 96);
        v276 = v200;
        v201 = *(v195 + 16);
        v269 = *v195;
        v270 = v201;
        v202 = *(v195 + 48);
        v271 = *(v195 + 32);
        v272 = v202;
        sub_1CEFCCBDC(&v269, &v268, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        sub_1CEFCCC44(v188, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v285[12] = v281;
        v285[13] = v282;
        v285[14] = v283;
        *&v285[15] = v284;
        v285[8] = v277;
        v285[9] = v278;
        v285[10] = v279;
        v285[11] = v280;
        v285[4] = v273;
        v285[5] = v274;
        v285[6] = v275;
        v285[7] = v276;
        v285[0] = v269;
        v285[1] = v270;
        v285[2] = v271;
        v285[3] = v272;
        enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v285);
        v204 = v237;
        if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || (v205 = *&v285[1], v206 = *&v285[1], sub_1CEFCCC44(&v269, &qword_1EC4BECF0, &unk_1CF9FEEB0), !v205))
        {

          sub_1CEFCCC44(v258, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          sub_1CEFCCC44(v257, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v112 = v204;
          goto LABEL_92;
        }

        v207 = *(v266 + qword_1EDEBBC98);
        if (v207)
        {

          v208 = sub_1CF9E57E8();
          type metadata accessor for FPCK(0);
          sub_1CF6C4380(v208, 6, 89, 0, 0);
          v210 = v209;
          v211 = sub_1CF9E6F08();
          v212 = v238;
          (*(*(v211 - 8) + 56))(v238, 1, 1, v211);
          v213 = swift_allocObject();
          v213[2] = 0;
          v213[3] = 0;
          v213[4] = v207;
          v213[5] = v210;
          v213[6] = v163;
          v214 = v163;
          sub_1CF81241C(0, 0, v212, &unk_1CFA05318, v213);
        }
      }

      sub_1CEFCCC44(v258, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v165 = v257;
LABEL_88:
      sub_1CEFCCC44(v165, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v112 = v237;
      goto LABEL_92;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v95 = v250;
      sub_1CEFCCBDC(v62, v250, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v96 = *v95;
      v97 = *(v95 + 8);
      v98 = swift_allocObject();
      *(v98 + 16) = v266;
      *(v98 + 24) = v96;
      *(v98 + 32) = v97;

      sub_1CF3CD500(v263, v264, 0, sub_1CF47FD74, v98);

      v90 = v62;
      goto LABEL_51;
    }

    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_91;
    }

    v70 = v234;
    sub_1CEFCCBDC(v62, v234, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
    v72 = *(v71 + 48);
    v73 = *(v70 + *(v71 + 64));
    v74 = v260;
    sub_1CEFE55D0(v70, v260, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v75 = v70 + v72;
    v76 = v261;
    sub_1CEFE55D0(v75, v261, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    v78 = *(v77 - 8);
    v257 = *(v78 + 48);
    v258 = v77;
    v256 = v78 + 48;
    v79 = (v257)(v74, 1);
    v262 = v73;
    v80 = (v73 & 3) == 0 || v79 == 1;
    v81 = !v80;
    LODWORD(v267) = v81;
    v82 = v74;
    v83 = v252;
    sub_1CEFCCBDC(v82, v252, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFCCBDC(v76, v259, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v84 = *(v253 + 80);
    v85 = (v84 + 24) & ~v84;
    v86 = (v265 + v84 + v85) & ~v84;
    v87 = v86 + v265;
    v88 = swift_allocObject();
    *(v88 + 16) = v266;
    sub_1CEFE55D0(v83, v88 + v85, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFE55D0(v259, v88 + v86, &qword_1EC4C1B40, &unk_1CF9FCB70);
    *(v88 + v87) = v267;

    v89 = v232;
    sub_1CF3CD500(v263, v264, 1, sub_1CF47FF88, v88);
    if (v89)
    {
      sub_1CEFCCC44(v261, &qword_1EC4C1B40, &unk_1CF9FCB70);

      sub_1CEFCCC44(v260, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v90 = v237;
LABEL_51:
      sub_1CEFCCC44(v90, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return;
    }

    v157 = v262;

    v158 = v261;
    v159 = v245;
    sub_1CEFCCBDC(v261, v245, &qword_1EC4C1B40, &unk_1CF9FCB70);
    if ((v257)(v159, 1, v258) == 1)
    {
      sub_1CEFCCC44(v158, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v62 = v237;
      v160 = v260;
    }

    else
    {
      v184 = *v159;
      LODWORD(v267) = *(v159 + 8);
      sub_1CEFCCC44(v159, &unk_1EC4BE360, &qword_1CF9FE650);
      v80 = (v157 & 0x800000000020000) == 0;
      v62 = v237;
      v160 = v260;
      if (!v80)
      {
        v185 = swift_dynamicCastClassUnconditional();
        v186 = *(v185 + 16);
        *&v285[0] = v184;
        BYTE8(v285[0]) = v267;
        MEMORY[0x1EEE9AC00](v185);
        *(&v231 - 2) = v186;
        *(&v231 - 1) = v285;

        sub_1CF7D5920(sub_1CF480034, (&v231 - 4), v263);

        sub_1CEFCCC44(v158, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_99:
        sub_1CEFCCC44(v160, &qword_1EC4C1B40, &unk_1CF9FCB70);
        goto LABEL_50;
      }

      v159 = v158;
    }

    sub_1CEFCCC44(v159, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_99;
  }

  if (EnumCaseMultiPayload <= 28)
  {
    if (EnumCaseMultiPayload != 19)
    {
      if (EnumCaseMultiPayload != 25)
      {
        goto LABEL_91;
      }

      v91 = v233;
      sub_1CEFCCBDC(v62, v233, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v92 = *v91;
      v93 = *(v91 + 8);
      if (*(v91 + 9))
      {
        v94 = swift_allocObject();
        *(v94 + 16) = v266;
        *(v94 + 24) = v92;

        sub_1CEFD0988(v92, v93, 1);
        sub_1CF3CD500(v263, v264, 1, sub_1CF47FE14, v94);
        sub_1CEFD0994(v92, v93, 1);
      }

      else
      {
        v127 = swift_allocObject();
        *(v127 + 16) = v266;
        *(v127 + 24) = v92;
        *(v127 + 32) = v93;

        sub_1CF3CD500(v263, v264, 0, sub_1CF47FE48, v127);
      }

LABEL_49:

LABEL_50:
      v90 = v62;
      goto LABEL_51;
    }

    v99 = v255;
    sub_1CEFCCBDC(v62, v255, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v100 = *(v266 + 32);
    if (*(v100 + 33))
    {
      goto LABEL_30;
    }

    v128 = v232;
    v129 = (*(*v61 + 272))(&v286, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v128)
    {

      goto LABEL_50;
    }

    v232 = 0;
    *(v100 + 33) = (v129 & 1) == 0;
    if (v129 & 1) != 0 || (v166 = *(**(v100 + 16) + 848), v167 = , v168 = v166(v167), v169 = , (v168))
    {
LABEL_30:

      goto LABEL_91;
    }

    (*(**(v100 + 16) + 96))(v285, v169);
    v170 = v240;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v172 = v171;
    v173 = *(v239 + 8);
    v173(v170, v241);
    v174 = v172 * 1000000000.0;
    if (COERCE__INT64(fabs(v172 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v174 > -9.22337204e18)
    {
      if (v174 < 9.22337204e18)
      {
        v175 = v174;
        v176 = *&v285[0];
        v177 = BYTE8(v285[0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
        v178 = swift_allocObject();
        *(v178 + 152) = v177;
        *(v178 + 16) = 0u;
        *(v178 + 32) = 0u;
        *(v178 + 48) = 1;
        *(v178 + 56) = 0u;
        *(v178 + 72) = 0u;
        *(v178 + 88) = 0;
        *(v178 + 96) = xmmword_1CF9FEC30;
        *(v178 + 112) = 0;
        *(v178 + 120) = 0;
        *(v178 + 128) = v175;
        *(v178 + 136) = 0;
        *(v178 + 144) = v176;
        v179 = v240;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v181 = v180;
        v173(v179, v241);
        v182 = v181 * 1000000000.0;
        if (COERCE__INT64(fabs(v181 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v183 = v232;
          if (v182 > -9.22337204e18)
          {
            if (v182 < 9.22337204e18)
            {
              sub_1CF902E70(v178, v182, v263, v264);
              v232 = v183;

              goto LABEL_30;
            }

LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    __break(1u);
    goto LABEL_119;
  }

  if (EnumCaseMultiPayload != 29)
  {
    if (EnumCaseMultiPayload == 36)
    {
      v123 = v248;
      sub_1CEFCCBDC(v62, v248, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v124 = *v123;
      v125 = *(v123 + 8);
      if ((*(v123 + 9) & 1) == 0)
      {
        sub_1CEFD0994(*v123, *(v123 + 8), 0);
        goto LABEL_91;
      }

      v126 = swift_allocObject();
      *(v126 + 16) = v266;
      *(v126 + 24) = v124;

      sub_1CEFD0988(v124, v125, 1);
      sub_1CF3CD500(v263, v264, 1, sub_1CF47FDA8, v126);
      sub_1CEFD0994(v124, v125, 1);
    }

    else
    {
      if (EnumCaseMultiPayload != 37)
      {
        goto LABEL_91;
      }

      v67 = v249;
      sub_1CEFCCBDC(v62, v249, &qword_1EC4BE710, &qword_1CF9FE5A8);
      memcpy(v285, v67, 0x208uLL);
      v68 = BYTE8(v285[0]) == 255;
      v69 = swift_allocObject();
      *(v69 + 16) = v266;
      memcpy((v69 + 24), v67, 0x208uLL);

      sub_1CEFCCBDC(v285, &v269, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF3CD500(v263, v264, v68, sub_1CF47FDDC, v69);
      sub_1CEFCCC44(v285, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    goto LABEL_49;
  }

  v113 = v256;
  sub_1CEFCCBDC(v62, v256, &qword_1EC4BE710, &qword_1CF9FE5A8);
  if (*(v113 + 9))
  {
    v65 = *v113;
    v66 = *(v113 + 8);
LABEL_36:
    sub_1CEFD0994(v65, v66, 1);
    goto LABEL_91;
  }

  v130 = *(v113 + 10);
  v131 = *(v266 + 32);
  v132 = v61;
  v133 = *(v131 + 33);
  v134 = v232;
  v135 = (*(*v132 + 272))(&v286, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v134)
  {
    sub_1CEFD0994(*v113, *(v113 + 8), *(v113 + 9));
    goto LABEL_50;
  }

  if (v133)
  {
    if (v135)
    {
      *(v131 + 33) = 0;
    }

    goto LABEL_113;
  }

  if ((v135 & 1) == 0)
  {
    *(v131 + 33) = 1;
    v191 = *(**(v131 + 16) + 848);

    v193 = v191(v192);

    if ((v193 & 1) == 0)
    {
      (*(**(v131 + 16) + 96))(v285, v194);
      v215 = v240;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v217 = v216;
      v218 = *(v239 + 8);
      v218(v215, v241);
      v219 = v217 * 1000000000.0;
      if (COERCE__INT64(fabs(v217 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v219 > -9.22337204e18)
        {
          if (v219 < 9.22337204e18)
          {
            v220 = v219;
            v221 = *&v285[0];
            v222 = BYTE8(v285[0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
            v223 = swift_allocObject();
            *(v223 + 152) = v222;
            *(v223 + 16) = 0u;
            *(v223 + 32) = 0u;
            *(v223 + 48) = 1;
            *(v223 + 56) = 0u;
            *(v223 + 72) = 0u;
            *(v223 + 88) = 0;
            *(v223 + 96) = xmmword_1CF9FEC30;
            *(v223 + 112) = 0;
            *(v223 + 120) = 0;
            *(v223 + 128) = v220;
            *(v223 + 136) = 0;
            *(v223 + 144) = v221;
            v224 = v240;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v226 = v225;
            v218(v224, v241);
            v227 = v226 * 1000000000.0;
            if (COERCE__INT64(fabs(v226 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v227 > -9.22337204e18)
              {
                if (v227 < 9.22337204e18)
                {
                  sub_1CF902E70(v223, v227, v263, v264);

                  v62 = v237;
                  v113 = v256;
                  goto LABEL_113;
                }

LABEL_128:
                __break(1u);
                return;
              }

LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }
  }

LABEL_113:
  if (v130)
  {
    v228 = *(v266 + qword_1EDEBBDF0);
    if (v228)
    {
      v229 = *(v266 + qword_1EDEBBDF0 + 8);

      v228(v230);
      sub_1CEFF7124(v228, v229);
    }
  }

  sub_1CEFD0994(*v113, *(v113 + 8), *(v113 + 9));
  sub_1CEFCCC44(v62, &qword_1EC4BE710, &qword_1CF9FE5A8);
}

void sub_1CF3CFB14(void (*a1)(char *, char *, uint64_t), void (**a2)(void), _TtC18FileProviderDaemon8FSTester *a3, uint64_t *a4)
{
  v534 = a4;
  v535 = a3;
  v539 = a2;
  v533 = a1;
  v5 = *v4;
  v6 = sub_1CF9E6118();
  v470 = *(v6 - 8);
  v471 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v474 = &v453 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v463 = v8;
  v464 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v462 = &v453 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v5[331];
  v12 = v5[329];
  v13 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v494 = *(v15 - 8);
  v495 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v493 = &v453 - v16;
  v536 = v13;
  v17 = v5[330];
  *&v18 = v12;
  *(&v18 + 1) = v17;
  v538 = v18;
  v19 = v5[332];
  *&v20 = v11;
  *(&v20 + 1) = v19;
  v537 = v20;
  v557 = v18;
  v558 = v20;
  v496 = type metadata accessor for ItemReconciliation(0, &v557);
  v518 = *(v496 - 8);
  MEMORY[0x1EEE9AC00](v496);
  v491 = v21;
  v492 = &v453 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v517 = &v453 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v500 = sub_1CF9E75D8();
  v479 = *(v500 - 8);
  MEMORY[0x1EEE9AC00](v500);
  v504 = &v453 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v505 = &v453 - v27;
  v524 = v17;
  v528 = v19;
  v502 = type metadata accessor for SnapshotItem(255, v17, v19, v28);
  v29 = sub_1CF9E75D8();
  v30 = *(v29 - 8);
  v513 = v29;
  v514 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v477 = &v453 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v461 = &v453 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v490 = &v453 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v520 = (&v453 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v512 = &v453 - v39;
  v525 = v12;
  v526 = v11;
  v506 = type metadata accessor for SnapshotItem(255, v12, v11, v40);
  v498 = sub_1CF9E75D8();
  v511 = *(v498 - 8);
  MEMORY[0x1EEE9AC00](v498);
  v473 = &v453 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v509 = &v453 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v508 = &v453 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v519 = (&v453 - v47);
  v488 = v48;
  MEMORY[0x1EEE9AC00](v49);
  v510 = &v453 - v50;
  v557 = v538;
  v558 = v537;
  v531 = type metadata accessor for PersistenceTrigger(0, &v557);
  v529 = *(v531 - 8);
  MEMORY[0x1EEE9AC00](v531);
  v487 = &v453 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v486 = &v453 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v501 = &v453 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v503 = &v453 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v516 = &v453 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v482 = &v453 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v489 = &v453 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v484 = &v453 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v481 = &v453 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v480 = &v453 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v530 = &v453 - v71;
  v527 = v24;
  v522 = *(v24 - 8);
  v72 = *(v522 + 8);
  MEMORY[0x1EEE9AC00](v73);
  v475 = &v453 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v485 = &v453 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v468 = &v453 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v499 = &v453 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v483 = &v453 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v476 = &v453 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v497 = &v453 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v466 = &v453 - v87;
  v523 = AssociatedTypeWitness;
  v521 = *(AssociatedTypeWitness - 8);
  v88 = *(v521 + 8);
  MEMORY[0x1EEE9AC00](v89);
  v469 = &v453 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v467 = &v453 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v478 = &v453 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v472 = &v453 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v507 = &v453 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v515 = &v453 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v465 = &v453 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v453 - v103;
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v453 - v106;
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v453 - v109;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v453 - v112;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v453 - v115;
  v117 = v532;
  sub_1CF59B2F0(v533, v539, v535, v534);
  if (!v117)
  {
    v458 = v104;
    v459 = v107;
    v456 = v116;
    v457 = v110;
    v455 = v113;
    v532 = v88;
    v460 = v72;
    v118 = v536;
    v557 = v538;
    v558 = v537;
    type metadata accessor for SQLJobRegistry(0, &v557);
    swift_dynamicCastClassUnconditional();
    v119 = v533;
    v120 = v535;
    v121 = v534;
    sub_1CF4D12EC(v533, v539, v535, v534);
    v122 = v118[2];
    v557 = v538;
    v558 = v537;
    type metadata accessor for SQLReconciliationTable(0, &v557);
    swift_dynamicCastClassUnconditional();
    sub_1CF230B6C(v119, v539, v120, v121);
    v454 = 0;
    v123 = *(v529 + 16);
    v123(v530, v119, v531);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 18)
    {
      v125 = v528;
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          v126 = v530;
          if (EnumCaseMultiPayload != 11)
          {
            v127 = v123;
            v128 = v523;
            if (EnumCaseMultiPayload == 16)
            {
              v129 = v487;
              v127(v487, v530, v531);
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v131 = v527;
              v132 = swift_getAssociatedConformanceWitness();
              *&v557 = v128;
              *(&v557 + 1) = v131;
              *&v538 = AssociatedConformanceWitness;
              *&v558 = AssociatedConformanceWitness;
              *(&v558 + 1) = v132;
              v133 = type metadata accessor for ReconciliationID(255, &v557);
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
              TupleTypeMetadata3 = swift_getTupleTypeMetadata3();

              if (swift_getEnumCaseMultiPayload() == 1)
              {
                (*(*(v133 - 8) + 8))(v129, v133);
                goto LABEL_124;
              }

              v317 = v126;
              v318 = v129[*(TupleTypeMetadata3 + 64)];
              v319 = v521;
              v320 = v521 + 32;
              v321 = *(v521 + 4);
              v322 = v129;
              v323 = v478;
              (v321)(v478, v322, v128);
              v218 = v529;
              if (v318 != 1)
              {
                v319[1](v323, v128);
                v136 = v531;
                v126 = v317;
                goto LABEL_133;
              }

              v533 = v321;
              *&v537 = v320;
              v324 = fpfs_current_or_default_log();
              v325 = v474;
              sub_1CF9E6128();
              v326 = v319[2];
              v327 = v467;
              (v326)(v467, v323, v128);
              v328 = sub_1CF9E6108();
              LODWORD(v527) = sub_1CF9E72C8();
              if (os_log_type_enabled(v328, v527))
              {
                v329 = swift_slowAlloc();
                v518 = v329;
                v520 = swift_slowAlloc();
                *&v557 = v520;
                *v329 = 136315138;
                v519 = v328;
                v330 = v472;
                (v326)(v472, v327, v128);
                v522 = v326;
                v331 = *(v521 + 1);
                v331(v327, v128);
                v332 = sub_1CF9E7F98();
                v334 = v333;
                *&v538 = v331;
                v331(v330, v128);
                v335 = sub_1CEFD0DF0(v332, v334, &v557);
                v334, v336, v337, v338, v339, v340, v341, v342;
                v343 = v518;
                *(v518 + 4) = v335;
                v344 = v519;
                v345 = v343;
                _os_log_impl(&dword_1CEFC7000, v519, v527, "going to update enumeration change on %s", v343, 0xCu);
                v346 = v520;
                __swift_destroy_boxed_opaque_existential_1(v520);
                MEMORY[0x1D386CDC0](v346, -1, -1);
                v218 = v529;
                MEMORY[0x1D386CDC0](v345, -1, -1);

                (*(v470 + 8))(v474, v471);
                v347 = v522;
              }

              else
              {
                *&v538 = *(v521 + 1);
                (v538)(v327, v128);

                (*(v470 + 8))(v325, v471);
                v347 = v326;
              }

              v412 = v526;
              v413 = v469;
              (v347)(v469, v323, v128);
              v414 = (*(v521 + 80) + 72) & ~*(v521 + 80);
              v415 = swift_allocObject();
              v416 = v524;
              v415[2] = v525;
              v415[3] = v416;
              v417 = v535;
              v415[4] = v535;
              v415[5] = v412;
              v418 = v534;
              v415[6] = v528;
              v415[7] = v418;
              v415[8] = v536;
              (v533)(v415 + v414, v413, v128);

              v419 = v454;
              sub_1CF3CD754(v539, 0, sub_1CF484560, v415, v417, v418);
              v454 = v419;
              if (v419)
              {
                (v538)(v478, v128);

                (*(v218 + 8))(v530, v531);
                return;
              }

              (v538)(v478, v128);

              goto LABEL_72;
            }

LABEL_124:
            v218 = v529;
            v136 = v531;
            goto LABEL_133;
          }

          v246 = v489;
          v123(v489, v530, v531);
          v247 = v523;
          v248 = swift_getAssociatedConformanceWitness();
          v249 = v527;
          v250 = swift_getAssociatedConformanceWitness();
          *&v557 = v247;
          *(&v557 + 1) = v249;
          *&v558 = v248;
          v251 = v248;
          *(&v558 + 1) = v250;
          *&v557 = type metadata accessor for ReconciliationID(255, &v557);
          *(&v557 + 1) = sub_1CF9E75D8();
          *&v558 = &type metadata for ContentStatus;
          *(&v558 + 1) = &type metadata for ContentStatus;
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          *&v538 = TupleTypeMetadata[12];
          v253 = v246[TupleTypeMetadata[16]];
          LODWORD(v248) = v246[TupleTypeMetadata[20]];
          *&v557 = v247;
          *(&v557 + 1) = v249;
          *&v558 = v251;
          *(&v558 + 1) = v250;
          type metadata accessor for ReconciliationID(0, &v557);
          v254 = swift_getEnumCaseMultiPayload();
          v256 = v248 == 1 || v253 == 1;
          if (v254 != 1)
          {
            v218 = v529;
            if (v256)
            {
              v348 = v521 + 32;
              v349 = *(v521 + 4);
              v350 = v456;
              v351 = v523;
              v349(v456, v246, v523);
              v352 = v349;
              *&v537 = v349;
              v353 = sub_1CF9E75D8();
              (*(*(v353 - 8) + 8))(&v246[v538], v353);
              (*(v218 + 8))(v530, v531);
              v354 = v465;
              v352(v465, v350, v351);
              v355 = (v348[48] + 72) & ~v348[48];
              v356 = swift_allocObject();
              v357 = v524;
              v356[2] = v525;
              v356[3] = v357;
              v358 = v535;
              v359 = v526;
              v356[4] = v535;
              v356[5] = v359;
              v360 = v534;
              v356[6] = v528;
              v356[7] = v360;
              v356[8] = v536;
              (v537)(v356 + v355, v354, v351);

              v269 = sub_1CF484560;
              v270 = v539;
              v271 = 0;
              v272 = v356;
              v273 = v358;
              v274 = v360;
              goto LABEL_66;
            }

            (*(v521 + 1))(v246, v523);
            v385 = sub_1CF9E75D8();
            (*(*(v385 - 8) + 8))(&v246[v538], v385);
LABEL_108:
            v126 = v530;
            v136 = v531;
            goto LABEL_133;
          }

          if (v256)
          {
            v258 = v522 + 32;
            v257 = *(v522 + 4);
            v259 = v466;
            v260 = v527;
            v257(v466, v246, v527);
            *&v537 = v257;
            v261 = sub_1CF9E75D8();
            (*(*(v261 - 8) + 8))(&v246[v538], v261);
            (*(v529 + 8))(v530, v531);
            v262 = v468;
            v257(v468, v259, v260);
            v263 = (v258[48] + 72) & ~v258[48];
            v264 = swift_allocObject();
            v265 = v524;
            v264[2] = v525;
            v264[3] = v265;
            v266 = v535;
            v267 = v526;
            v264[4] = v535;
            v264[5] = v267;
            v268 = v534;
            v264[6] = v528;
            v264[7] = v268;
            v264[8] = v536;
            (v537)(v264 + v263, v262, v260);

            v269 = sub_1CF48458C;
            v270 = v539;
            v271 = 1;
            v272 = v264;
            v273 = v266;
            v274 = v268;
LABEL_66:
            sub_1CF3CD754(v270, v271, v269, v272, v273, v274);

            return;
          }

          (*(v522 + 1))(v246, v527);
          v384 = sub_1CF9E75D8();
          (*(*(v384 - 8) + 8))(&v246[v538], v384);
LABEL_107:
          v218 = v529;
          goto LABEL_108;
        }

        v219 = v481;
        v123(v481, v530, v531);
        v220 = v513;
        v221 = swift_getTupleTypeMetadata3();
        v222 = *(v221 + 48);
        v533 = *&v219[*(v221 + 64)];
        v223 = v514;
        v224 = *(v514 + 32);
        v225 = v512;
        v224(v512, v219, v220);
        v224(v520, &v219[v222], v220);
        v226 = v490;
        *&v538 = *(v223 + 16);
        (v538)(v490, v225, v220);
        v227 = v502;
        v228 = *(v502 - 8);
        v229 = *(v228 + 48);
        v230 = v229(v226, 1, v502);
        *&v537 = v228;
        v532 = (v223 + 16);
        v523 = v228 + 48;
        v521 = v229;
        if (v230 == 1)
        {
          v517 = *(v223 + 8);
          (v517)(v226, v220);
          v231 = v227;
          v232 = *(v522 + 7);
          v233 = v527;
          v519 = (v522 + 56);
          v518 = v232;
          (v232)(v504, 1, 1, v527);
          v234 = v477;
          (v538)(v477, v520, v220);
          v235 = v231;
          if (v229(v234, 1, v231) == 1)
          {
            (v517)(v234, v220);
            v236 = 1;
            v237 = v500;
            v238 = v505;
            v239 = v522;
          }

          else
          {
            v365 = v234;
            v239 = v522;
            v238 = v505;
            (*(v522 + 2))(v505, v365, v233);
            (*(v537 + 8))(v365, v235);
            v236 = 0;
            v237 = v500;
          }

          (v518)(v238, v236, 1, v233);
          v366 = *(v239 + 6);
          v367 = v504;
          v368 = v366(v504, 1, v233);
          v126 = v530;
          if (v368 != 1)
          {
            (*(v479 + 8))(v367, v237);
          }

          v311 = v505;
          v312 = v366(v505, 1, v233);
        }

        else
        {
          v308 = v522;
          v309 = v504;
          v233 = v527;
          (*(v522 + 2))(v504, v226, v527);
          (*(v228 + 8))(v226, v227);
          v310 = *(v308 + 7);
          v310(v309, 0, 1, v233);
          v311 = v505;
          (*(v308 + 4))(v505, v309, v233);
          v310(v311, 0, 1, v233);
          v126 = v530;
          v237 = v500;
          v312 = (*(v308 + 6))(v311, 1, v233);
        }

        if (v312 == 1)
        {
          v369 = *(v514 + 8);
          v370 = v237;
          v371 = v513;
          v369(v520, v513);
          v369(v512, v371);
          (*(v479 + 8))(v311, v370);
          goto LABEL_124;
        }

        v372 = v522;
        v519 = *(v522 + 4);
        v373 = v497;
        (v519)(v497, v311, v233);
        v374 = v476;
        (*(v372 + 2))(v476, v373, v233);
        v375 = (*(v372 + 80) + 72) & ~*(v372 + 80);
        v376 = swift_allocObject();
        v377 = v524;
        v376[2] = v525;
        v376[3] = v377;
        v378 = v535;
        v379 = v526;
        v376[4] = v535;
        v376[5] = v379;
        v380 = v534;
        v376[6] = v528;
        v376[7] = v380;
        v376[8] = v536;
        (v519)(v376 + v375, v374, v233);

        v381 = v454;
        sub_1CF3CD754(v539, 1, sub_1CF4849BC, v376, v378, v380);
        v454 = v381;
        if (!v381)
        {

          v126 = v530;
          v408 = v513;
          v407 = v514;
          v409 = v512;
          v410 = v520;
          if ((v533 & 0x200000) == 0)
          {
            goto LABEL_103;
          }

          v435 = v461;
          (v538)(v461, v520, v513);
          v436 = v502;
          if (v521(v435, 1, v502) == 1)
          {
            (*(v522 + 1))(v497, v527);
            v437 = *(v407 + 8);
            v437(v410, v408);
            v437(v409, v408);
            v437(v435, v408);
            goto LABEL_124;
          }

          v439 = &v435[*(v436 + 52)];
          v440 = *(v439 + 13);
          v553 = *(v439 + 12);
          v554 = v440;
          v555 = *(v439 + 14);
          v556 = *(v439 + 30);
          v441 = *(v439 + 9);
          v549 = *(v439 + 8);
          v550 = v441;
          v442 = *(v439 + 11);
          v551 = *(v439 + 10);
          v552 = v442;
          v443 = *(v439 + 5);
          v545 = *(v439 + 4);
          v546 = v443;
          v444 = *(v439 + 7);
          v547 = *(v439 + 6);
          v548 = v444;
          v445 = *(v439 + 1);
          v541 = *v439;
          v542 = v445;
          v446 = *(v439 + 3);
          v543 = *(v439 + 2);
          v544 = v446;
          sub_1CEFCCBDC(&v541, &v540, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          (*(v537 + 8))(v435, v502);
          v569 = v553;
          v570 = v554;
          v571 = v555;
          v572 = v556;
          v565 = v549;
          v566 = v550;
          v567 = v551;
          v568 = v552;
          v561 = v545;
          v562 = v546;
          v563 = v547;
          v564 = v548;
          v557 = v541;
          v558 = v542;
          v559 = v543;
          v560 = v544;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v557) != 1 && (v447 = v558, v448 = v558, sub_1CEFCCC44(&v541, &qword_1EC4BECF0, &unk_1CF9FEEB0), v447))
          {
            v449 = v497;
            sub_1CF5A632C(v497, v447);

            (*(v522 + 1))(v449, v527);
          }

          else
          {
LABEL_103:
            (*(v522 + 1))(v497, v527);
          }

          v411 = *(v407 + 8);
          v411(v410, v408);
          v411(v409, v408);
          goto LABEL_124;
        }

        (*(v522 + 1))(v497, v233);
        v382 = v513;
        v383 = *(v514 + 8);
        v383(v520, v513);
        v383(v512, v382);
LABEL_53:
        (*(v529 + 8))(v530, v531);
        return;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v200 = v516;
        v123(v516, v530, v531);
        v201 = v523;
        *&v538 = *(swift_getTupleTypeMetadata2() + 48);
        v202 = v521;
        *&v537 = *(v521 + 4);
        v203 = v515;
        (v537)(v515, v200, v201);
        v202[2](v507, v203, v201);
        v204 = v125;
        v205 = (*(v202 + 80) + 72) & ~*(v202 + 80);
        v206 = swift_allocObject();
        v207 = v524;
        v206[2] = v525;
        v206[3] = v207;
        v208 = v535;
        v209 = v526;
        v206[4] = v535;
        v206[5] = v209;
        v206[6] = v204;
        v210 = v534;
        v211 = v536;
        v206[7] = v534;
        v206[8] = v211;
        (v537)(v206 + v205, v507, v201);

        v212 = v454;
        sub_1CF3CD754(v539, 0, sub_1CF484560, v206, v208, v210);
        v454 = v212;
        if (v212)
        {
          (v202[1])(v515, v201);

          (*(v522 + 1))(&v516[v538], v527);
          goto LABEL_53;
        }

        (v202[1])(v515, v201);

        (*(v522 + 1))(&v516[v538], v527);
      }

      else if (EnumCaseMultiPayload == 6)
      {
        v157 = v480;
        v123(v480, v530, v531);
        v158 = v498;
        v159 = swift_getTupleTypeMetadata3();
        v160 = *(v159 + 48);
        v161 = *&v157[*(v159 + 64)];
        v163 = v510;
        v162 = v511;
        v164 = *(v511 + 32);
        *&v538 = v164;
        v164(v510, v157, v158);
        v165 = &v157[v160];
        v166 = v519;
        v164(v519, v165, v158);
        v517 = *(v506 - 8);
        v167 = *(v517 + 6);
        v532 = v517 + 48;
        v527 = v167;
        v168 = v167(v163, 1);
        v518 = v161;
        v170 = (v161 & 3) != 0 && v168 != 1;
        LODWORD(v537) = v170;
        v171 = *(v162 + 16);
        v171(v508, v163, v158);
        v520 = v171;
        v171(v509, v166, v158);
        v522 = (v162 + 16);
        v172 = *(v162 + 80);
        v173 = (v172 + 72) & ~v172;
        v174 = (v488 + v172 + v173) & ~v172;
        v533 = (v174 + v488);
        v175 = swift_allocObject();
        v176 = v524;
        *(v175 + 16) = v525;
        *(v175 + 24) = v176;
        v177 = v535;
        v178 = v526;
        *(v175 + 32) = v535;
        *(v175 + 40) = v178;
        v179 = v534;
        *(v175 + 48) = v528;
        *(v175 + 56) = v179;
        *(v175 + 64) = v536;
        v180 = v175 + v173;
        v181 = v538;
        (v538)(v180, v508, v158);
        v181(v175 + v174, v509, v158);
        v533[v175] = v537;

        v182 = v539;
        v183 = v454;
        sub_1CF3CD754(v539, 1, sub_1CF4849E8, v175, v177, v179);
        v454 = v183;
        if (v183)
        {
          v184 = *(v511 + 8);
          v184(v519, v158);

          v184(v510, v158);
          goto LABEL_53;
        }

        v361 = v473;
        v362 = v519;
        (v520)(v473, v519, v158);
        v363 = v527(v361, 1, v506);
        v136 = v531;
        if (v363 == 1)
        {
          v364 = *(v511 + 8);
          v364(v362, v158);
          v364(v361, v158);
          v364(v510, v158);
          v218 = v529;
          v126 = v530;
          goto LABEL_133;
        }

        v401 = v521;
        v402 = v523;
        (*(v521 + 2))(v457, v361, v523);
        (*(v517 + 1))(v361, v506);
        v403 = *(v401 + 4);
        v404 = v455;
        v403(v455, v457, v402);
        v126 = v530;
        if ((v518 & 0x800000000020000) != 0)
        {
          sub_1CF478C28();

          v405 = v454;
          sub_1CF3761C8(v404, v182, v535, v179);
          v454 = v405;
          v218 = v529;

          (*(v521 + 1))(v404, v523);
          v406 = *(v511 + 8);
          v406(v519, v158);
          v406(v510, v158);
          goto LABEL_133;
        }

        (*(v521 + 1))(v404, v523);
        v438 = *(v511 + 8);
        v438(v519, v158);
        v438(v510, v158);
LABEL_39:
        v218 = v529;
LABEL_133:
        (*(v218 + 8))(v126, v136);
        return;
      }

      v218 = v529;
LABEL_72:
      v136 = v531;
      v126 = v530;
      goto LABEL_133;
    }

    v135 = v123;
    if (EnumCaseMultiPayload > 28)
    {
      v136 = v531;
      v126 = v530;
      v137 = v523;
      if (EnumCaseMultiPayload != 29)
      {
        v138 = v527;
        if (EnumCaseMultiPayload == 36)
        {
          v275 = v486;
          v135(v486, v530, v531);
          v276 = swift_getAssociatedConformanceWitness();
          v277 = v524;
          v278 = swift_getAssociatedConformanceWitness();
          *&v557 = v137;
          *(&v557 + 1) = v138;
          *&v558 = v276;
          *(&v558 + 1) = v278;
          v279 = type metadata accessor for ReconciliationID(0, &v557);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            (*(*(v279 - 8) + 8))(v275, v279);
            goto LABEL_107;
          }

          v280 = v522;
          *&v538 = *(v522 + 4);
          v281 = v485;
          (v538)(v485, v275, v138);
          v282 = v475;
          (*(v280 + 2))(v475, v281, v138);
          v283 = (*(v280 + 80) + 72) & ~*(v280 + 80);
          v284 = swift_allocObject();
          v284[2] = v525;
          v284[3] = v277;
          v285 = v535;
          v286 = v526;
          v284[4] = v535;
          v284[5] = v286;
          v287 = v138;
          v288 = v534;
          v284[6] = v528;
          v284[7] = v288;
          v284[8] = v536;
          v289 = v284 + v283;
          v290 = v287;
          (v538)(v289, v282, v287);

          v291 = v454;
          sub_1CF3CD754(v539, 1, sub_1CF48458C, v284, v285, v288);
          v454 = v291;
          if (v291)
          {
            (*(v280 + 1))(v485, v290);
            goto LABEL_52;
          }

          (*(v280 + 1))(v485, v290);
        }

        else
        {
          if (EnumCaseMultiPayload != 37)
          {
            goto LABEL_39;
          }

          v139 = v482;
          v135(v482, v530, v531);
          v140 = v518;
          *&v538 = *(v518 + 32);
          v141 = v517;
          v142 = v139;
          v143 = v496;
          (v538)(v517, v142, v496);
          v145 = v493;
          v144 = v494;
          v146 = v495;
          (*(v494 + 16))(v493, v141, v495);
          LODWORD(v537) = (*(v521 + 6))(v145, 1, v137) == 1;
          (*(v144 + 8))(v145, v146);
          v148 = v140 + 16;
          v147 = *(v140 + 16);
          v149 = v492;
          v147(v492, v141, v143);
          v150 = (*(v148 + 64) + 72) & ~*(v148 + 64);
          v151 = swift_allocObject();
          v152 = v524;
          v151[2] = v525;
          v151[3] = v152;
          v153 = v535;
          v154 = v526;
          v151[4] = v535;
          v151[5] = v154;
          v155 = v534;
          v151[6] = v528;
          v151[7] = v155;
          v151[8] = v536;
          (v538)(v151 + v150, v149, v143);

          v156 = v454;
          sub_1CF3CD754(v539, v537, sub_1CF484664, v151, v153, v155);
          v454 = v156;
          if (v156)
          {
            (*(v518 + 8))(v517, v143);
LABEL_52:

            goto LABEL_53;
          }

          (*(v518 + 8))(v517, v143);
        }

        goto LABEL_106;
      }

      v533 = v122;
      v240 = v501;
      v135(v501, v530, v531);
      v241 = swift_getAssociatedConformanceWitness();
      v242 = v527;
      v243 = swift_getAssociatedConformanceWitness();
      *&v557 = v137;
      *(&v557 + 1) = v242;
      *&v558 = v241;
      *(&v558 + 1) = v243;
      v244 = type metadata accessor for ReconciliationID(255, &v557);
      v245 = v240[*(swift_getTupleTypeMetadata2() + 48)];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_38:
        (*(*(v244 - 8) + 8))(v240, v244);
        goto LABEL_39;
      }

      v313 = v536[4];
      v314 = *(v313 + 33);
      v315 = v454;
      v316 = (*(*v533 + 272))(v539, v535, v534[1]);
      if (v315)
      {
        (*(*(v244 - 8) + 8))(v240, v244);
        (*(v529 + 8))(v126, v136);
        return;
      }

      v454 = 0;
      if (v314)
      {
        if (v316)
        {
          *(v313 + 33) = 0;
        }

        goto LABEL_136;
      }

      if (v316 & 1) != 0 || (*(v313 + 33) = 1, v420 = *(**(v313 + 16) + 848), v421 = , v422 = v420(v421), , (v422))
      {
LABEL_136:
        if (v245)
        {
          v450 = *(v536 + qword_1EDEBBDF0);
          if (v450)
          {
            v451 = *(v536 + qword_1EDEBBDF0 + 8);

            v450(v452);
            sub_1CEFF7124(v450, v451);
          }
        }

        goto LABEL_38;
      }

      v557 = v538;
      v558 = v537;
      type metadata accessor for Maintenance.UnblockEvictability(0, &v557);
      sub_1CF046AB4();
      v423 = v462;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v425 = v424;
      v426 = *(v464 + 8);
      v426(v423, v463);
      v427 = v425 * 1000000000.0;
      if (COERCE__INT64(fabs(v425 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v427 > -9.22337204e18)
        {
          if (v427 < 9.22337204e18)
          {
            v428 = v472;
            v429 = sub_1CF559420();
            (*(v521 + 1))(v428, v523);
            v430 = v462;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v432 = v431;
            v426(v430, v463);
            v433 = v432 * 1000000000.0;
            if (COERCE__INT64(fabs(v432 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v433 > -9.22337204e18)
              {
                if (v433 < 9.22337204e18)
                {
                  v434 = v454;
                  sub_1CF5215C0(v429, v433, v539, v535, v534);
                  v454 = v434;
                  if (v434)
                  {

                    (*(*(v244 - 8) + 8))(v501, v244);
                    goto LABEL_53;
                  }

                  v136 = v531;
                  v126 = v530;
                  v240 = v501;
                  goto LABEL_136;
                }

LABEL_150:
                __break(1u);
                return;
              }

LABEL_149:
              __break(1u);
              goto LABEL_150;
            }

LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v185 = v122;
    v136 = v531;
    v126 = v530;
    v186 = v523;
    if (EnumCaseMultiPayload != 19)
    {
      if (EnumCaseMultiPayload != 25)
      {
        goto LABEL_39;
      }

      v187 = v484;
      v135(v484, v530, v531);
      v188 = swift_getAssociatedConformanceWitness();
      v189 = v527;
      v190 = swift_getAssociatedConformanceWitness();
      *&v557 = v186;
      *(&v557 + 1) = v189;
      *&v558 = v188;
      *(&v558 + 1) = v190;
      type metadata accessor for ReconciliationID(0, &v557);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v191 = v522;
        *&v538 = *(v522 + 4);
        v192 = v483;
        (v538)(v483, v187, v189);
        (*(v191 + 2))(v499, v192, v189);
        v193 = (*(v191 + 80) + 72) & ~*(v191 + 80);
        v194 = swift_allocObject();
        v195 = v524;
        v194[2] = v525;
        v194[3] = v195;
        v196 = v535;
        v197 = v526;
        v194[4] = v535;
        v194[5] = v197;
        v198 = v534;
        v194[6] = v528;
        v194[7] = v198;
        v194[8] = v536;
        (v538)(v194 + v193, v499, v189);

        v199 = v454;
        sub_1CF3CD754(v539, 1, sub_1CF4847AC, v194, v196, v198);
        v454 = v199;
        if (v199)
        {
          (*(v191 + 1))(v483, v189);
          goto LABEL_52;
        }

        (*(v191 + 1))(v483, v189);
      }

      else
      {
        v292 = v521;
        *&v538 = *(v521 + 4);
        v293 = v459;
        (v538)(v459, v187, v186);
        v294 = v458;
        v292[2](v458, v293, v186);
        v295 = (*(v292 + 80) + 72) & ~*(v292 + 80);
        v296 = swift_allocObject();
        v297 = v524;
        v296[2] = v525;
        v296[3] = v297;
        v298 = v535;
        v299 = v526;
        v296[4] = v535;
        v296[5] = v299;
        v300 = v186;
        v301 = v534;
        v296[6] = v528;
        v296[7] = v301;
        v296[8] = v536;
        v302 = v294;
        v303 = v300;
        (v538)(v296 + v295, v302, v300);

        v304 = v454;
        sub_1CF3CD754(v539, 0, sub_1CF4848B4, v296, v298, v301);
        v454 = v304;
        if (v304)
        {
          (v292[1])(v459, v303);
          goto LABEL_52;
        }

        (v292[1])(v459, v303);
      }

LABEL_106:

      goto LABEL_107;
    }

    v213 = v503;
    v135(v503, v530, v531);
    v214 = v186;
    v215 = v527;
    v216 = *(swift_getTupleTypeMetadata2() + 48);
    v217 = v536[4];
    if (*(v217 + 33))
    {
      v218 = v529;
LABEL_132:
      (*(v522 + 1))(&v213[v216], v215);
      (*(v521 + 1))(v213, v214);
      goto LABEL_133;
    }

    v305 = v454;
    v306 = (*(*v185 + 272))(v539, v535, v534[1]);
    v218 = v529;
    if (v305)
    {
      v307 = v503;
      (*(v522 + 1))(&v503[v216], v215);
      (*(v521 + 1))(v307, v214);
      (*(v218 + 8))(v126, v136);
      return;
    }

    v454 = 0;
    *(v217 + 33) = (v306 & 1) == 0;
    if (v306 & 1) != 0 || (v533 = *(**(v217 + 16) + 848), v386 = , LODWORD(v533) = (v533)(v386), , (v533))
    {
LABEL_131:
      v213 = v503;
      goto LABEL_132;
    }

    v557 = v538;
    v558 = v537;
    *&v538 = type metadata accessor for Maintenance.UnblockEvictability(0, &v557);
    sub_1CF046AB4();
    v387 = v462;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v389 = v388;
    v390 = v464 + 8;
    v391 = *(v464 + 8);
    v391(v387, v463);
    v392 = v389 * 1000000000.0;
    if (COERCE__INT64(fabs(v389 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v392 > -9.22337204e18)
    {
      v464 = v390;
      v393 = v472;
      if (v392 < 9.22337204e18)
      {
        v394 = sub_1CF559420();
        *&v538 = *(v521 + 1);
        (v538)(v393, v214);
        v395 = v462;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v397 = v396;
        v391(v395, v463);
        v398 = v397 * 1000000000.0;
        if (COERCE__INT64(fabs(v397 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v399 = v454;
          v215 = v527;
          if (v398 > -9.22337204e18)
          {
            if (v398 < 9.22337204e18)
            {
              sub_1CF5215C0(v394, v398, v539, v535, v534);
              v454 = v399;
              if (v399)
              {

                v400 = v503;
                (*(v522 + 1))(&v503[v216], v215);
                (v538)(v400, v214);
                (*(v529 + 8))(v126, v136);
                return;
              }

              v218 = v529;
              goto LABEL_131;
            }

LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    __break(1u);
    goto LABEL_141;
  }
}

void sub_1CF3D2E50(uint64_t a1, void *a2, uint64_t a3)
{
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v453);
  v454 = (&v435 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v459 = &v435 - v10;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v451);
  v452 = &v435 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v458 = &v435 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0498, &qword_1CFA05898);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v449 = &v435 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
  v447 = *(v16 - 8);
  v448 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v441 = &v435 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v450 = &v435 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEA0, &unk_1CFA05570);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v446 = &v435 - v21;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v444 = *(v483 - 8);
  MEMORY[0x1EEE9AC00](v483);
  v455 = (&v435 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v442 = &v435 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v445 = &v435 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v478 = *(v27 - 8);
  v479 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v457 = (&v435 - v28);
  v443 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v443);
  v439 = &v435 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v482 = *(v480 - 8);
  MEMORY[0x1EEE9AC00](v480);
  v456 = &v435 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v460 = &v435 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v435 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v440 = &v435 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v477 = &v435 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v485 = (&v435 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v484 = &v435 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v44);
  v437 = &v435 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v438 = (&v435 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v474 = &v435 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v473 = &v435 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v475 = &v435 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v471 = (&v435 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v470 = &v435 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v472 = &v435 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v469 = (&v435 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v476 = &v435 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v467 = &v435 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v465 = &v435 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v481 = (&v435 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v466 = &v435 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v464 = &v435 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v468 = &v435 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v463 = &v435 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v462 = &v435 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v461 = &v435 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v501 = &v435 - v83;
  v494 = a2;
  v495 = a3;
  v84 = *(v3 + qword_1EDEBBCF8);
  if (v84)
  {
    v487 = v35;
    v85 = a2;
    v86 = a3;
    v87 = v3;
    v88 = *(v3 + qword_1EDEBBCF8 + 8);

    v84(a1);
    v89 = v88;
    v3 = v87;
    a3 = v86;
    a2 = v85;
    v35 = v487;
    sub_1CEFF7124(v84, v89);
  }

  sub_1CF3FEBAC(a1);
  if (!v4)
  {
    v486 = 0;
    v90 = v501;
    sub_1CEFCCBDC(a1, v501, &qword_1EC4BE710, &qword_1CF9FE5A8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v91 = v90;
        v92 = v465;
        goto LABEL_9;
      case 3u:
        v118 = v461;
        sub_1CEFCCBDC(v90, v461, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v118 + 9))
        {
          goto LABEL_34;
        }

        *&v490[0] = *v118;
        BYTE8(v490[0]) = *(v118 + 8);
        v119 = v486;
        sub_1CF7EB934(*&v490[0], BYTE8(v490[0]), a2, a3, v493);
        v486 = v119;
        if (v119)
        {
          goto LABEL_228;
        }

        memcpy(v492, v493, 0x208uLL);
        if (sub_1CF08B99C(v492) == 1)
        {
          goto LABEL_75;
        }

        memcpy(v491, v493, 0x208uLL);
        if (!*(&v491[15] + 1) || (BYTE8(v491[21]) | 4) != 4)
        {
          goto LABEL_145;
        }

        v120 = BYTE8(v491[28]);
        if (BYTE9(v491[8]) != 6 && BYTE8(v491[28]) == 1)
        {
          goto LABEL_270;
        }

        v481 = a2;
        v121 = *(*v3[4] + 240);
        v122 = *(&v491[15] + 1);
        v123 = v440;
        v124 = v486;
        v121(v490, 1, &v494, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v124)
        {

          v486 = 0;
        }

        else
        {
          v486 = 0;
          v369 = v480;
          if ((*(v482 + 48))(v123, 1, v480) == 1)
          {
            sub_1CEFCCC44(v123, &qword_1EC4C1B40, &unk_1CF9FCB70);
          }

          else
          {
            v382 = v439;
            sub_1CEFDA214(v123 + *(v369 + 48), v439, type metadata accessor for ItemMetadata);
            sub_1CEFCCC44(v123, &unk_1EC4BE360, &qword_1CF9FE650);
            v383 = *(v382 + v443[20]);
            sub_1CEFD5278(v382, type metadata accessor for ItemMetadata);
            if (v383)
            {
LABEL_269:

              goto LABEL_270;
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
        v384 = swift_allocObject();
        *(v384 + 16) = xmmword_1CF9FA450;
        v385 = BYTE8(v490[0]);
        *(v384 + 32) = *&v490[0];
        *(v384 + 40) = v385;
        *(v384 + 48) = 2;
        *(v384 + 114) = 10;
        *(v384 + 147) = 9;
        v386 = v486;
        sub_1CF808014(MEMORY[0x1E69E7CC0], v384, v481, a3);
        v486 = v386;
        if (v386)
        {

          v384, v394, v395, v396, v397, v398, v399, v400;
          goto LABEL_258;
        }

        v384, v387, v388, v389, v390, v391, v392, v393;
        if (v120 > 1 || !v120)
        {
          goto LABEL_269;
        }

        sub_1CF033A74();
        v411 = v122;
        v412 = sub_1CF93D7F4();
        v414 = v413;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
        v415 = swift_allocObject();
        *(v415 + 16) = 0u;
        *(v415 + 32) = 0u;
        *(v415 + 48) = 1;
        *(v415 + 56) = 0u;
        *(v415 + 72) = 0u;
        *(v415 + 88) = 0;
        *(v415 + 120) = v412;
        *(v415 + 128) = v414;
        *(v415 + 136) = 0;
        *(v415 + 144) = v411;
        *(v415 + 96) = xmmword_1CFA04E20;
        *(v415 + 112) = 0;
        v416 = sub_1CF4D3BC0();
        v417 = v486;
        sub_1CF902E70(v415, v416, v481, a3);
        v486 = v417;
        if (v417)
        {

          goto LABEL_188;
        }

        goto LABEL_270;
      case 4u:
        v118 = v462;
        sub_1CEFCCBDC(v90, v462, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v118 + 9))
        {
LABEL_34:
          v97 = *v118;
          v137 = *(v118 + 8);
          goto LABEL_44;
        }

        if (*(v118 + 10))
        {
          v204 = 4;
        }

        else
        {
          v204 = 0;
        }

        v242 = v486;
        sub_1CF40212C(*v118, *(v118 + 8), v204, 0, a2, a3);
        if (v242)
        {
          goto LABEL_11;
        }

        v486 = 0;
        goto LABEL_228;
      case 5u:
        v136 = v468;
        sub_1CEFCCBDC(v90, v468, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v136 + 9))
        {
          sub_1CEFD0994(*(v136 + 16), *(v136 + 24), *(v136 + 25));
          goto LABEL_54;
        }

        v203 = v486;
        sub_1CF40212C(*v136, *(v136 + 8), 1, 0, a2, a3);
        v486 = v203;
        sub_1CEFD0994(*(v136 + 16), *(v136 + 24), *(v136 + 25));
        goto LABEL_228;
      case 6u:
        v487 = v35;
        v100 = a2;
        v436 = v3;
        v101 = v466;
        sub_1CEFCCBDC(v90, v466, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
        v103 = *(v102 + 48);
        v483 = *(v101 + *(v102 + 64));
        v104 = v484;
        sub_1CEFE55D0(v101, v484, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v105 = v101 + v103;
        v106 = v485;
        sub_1CEFE55D0(v105, v485, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v107 = v477;
        sub_1CEFCCBDC(v104, v477, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v108 = v482 + 48;
        v109 = *(v482 + 48);
        v110 = v480;
        if (v109(v107, 1, v480) == 1)
        {
          sub_1CEFCCC44(v104, &qword_1EC4C1B40, &unk_1CF9FCB70);
          sub_1CEFCCC44(v106, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v111 = v107;
LABEL_113:
          v257 = &qword_1EC4C1B40;
          v258 = &unk_1CF9FCB70;
          goto LABEL_114;
        }

        v192 = v460;
        sub_1CEFE55D0(v107, v460, &unk_1EC4BE360, &qword_1CF9FE650);
        if (v109(v106, 1, v110) != 1)
        {
          v481 = v100;
          goto LABEL_87;
        }

        v482 = v108;
        sub_1CF4810BC();
        v193 = swift_allocError();
        *v194 = 2;
        v195 = v486;
        sub_1CF40212C(*v192, *(v192 + 8), 5, v193, v100, a3);
        if (v195)
        {

          sub_1CEFCCC44(v192, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v484, &qword_1EC4C1B40, &unk_1CF9FCB70);
          sub_1CEFCCC44(v485, &qword_1EC4C1B40, &unk_1CF9FCB70);
          goto LABEL_125;
        }

        sub_1CF7EB934(*v192, *(v192 + 8), v100, a3, v493);
        v486 = 0;
        memcpy(v492, v493, 0x208uLL);
        if (sub_1CF08B99C(v492) == 1)
        {
          memcpy(v491, v493, 0x208uLL);
          sub_1CEFCCC44(v491, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        else
        {
          v351 = v493[8];
          v352 = *&v493[248];
          memcpy(v491, v493, 0x208uLL);
          sub_1CEFCCC44(v491, &unk_1EC4BFC20, &unk_1CFA0A290);
          if (v351 != 255 && v352)
          {
            v481 = v100;
            v110 = v480;
            goto LABEL_87;
          }
        }

        v283 = v486;
        sub_1CF40423C(*v192, *(v192 + 8), 0, v100, a3);
        v486 = v283;
        if (v283)
        {
          v284 = v192;
LABEL_132:
          sub_1CEFCCC44(v284, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v484, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v285 = v485;
          v286 = &qword_1EC4C1B40;
          v287 = &unk_1CF9FCB70;
          goto LABEL_259;
        }

        v481 = v100;
        v110 = v480;
LABEL_87:
        v239 = v485;
        v240 = v487;
        sub_1CEFCCBDC(v485, v487, &qword_1EC4C1B40, &unk_1CF9FCB70);
        if (v109(v240, 1, v110) == 1)
        {
          sub_1CEFCCC44(v192, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v484, &qword_1EC4C1B40, &unk_1CF9FCB70);
          sub_1CEFCCC44(v239, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v111 = v240;
          goto LABEL_113;
        }

        v256 = v456;
        sub_1CEFE55D0(v240, v456, &unk_1EC4BE360, &qword_1CF9FE650);
        if ((v483 & 0x100000000000) == 0)
        {
          sub_1CEFCCC44(v256, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v192, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v484, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v111 = v485;
          goto LABEL_113;
        }

        v305 = v256 + *(v110 + 48);
        if ((*(v305 + v443[15]) & 1) == 0 && *(v305 + v443[19]))
        {
          v306 = *v256;
          v307 = *(v256 + 8);
          v308 = sub_1CF93DAB0();
          v310 = v309;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0050, &qword_1CF9FAD58);
          v311 = swift_allocObject();
          *(v311 + 152) = v307;
          *(v311 + 16) = 0u;
          *(v311 + 32) = 0u;
          *(v311 + 48) = 1;
          *(v311 + 56) = 0u;
          *(v311 + 72) = 0u;
          *(v311 + 88) = 0;
          *(v311 + 96) = xmmword_1CF9FEC30;
          *(v311 + 112) = 0;
          *(v311 + 120) = v308;
          *(v311 + 128) = v310;
          *(v311 + 136) = 0x4000000;
          *(v311 + 144) = v306;
          v312 = sub_1CF4D3BC0();
          v313 = v486;
          sub_1CF902E70(v311, v312, v481, a3);
          v486 = v313;
          if (v313)
          {

            sub_1CEFCCC44(v256, &unk_1EC4BE360, &qword_1CF9FE650);
            v284 = v460;
            goto LABEL_132;
          }
        }

        v90 = v501;
        v196 = v484;
        v246 = v485;
        sub_1CEFCCC44(v456, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v460, &unk_1EC4BE360, &qword_1CF9FE650);
        v130 = &qword_1EC4C1B40;
        v131 = &unk_1CF9FCB70;
LABEL_225:
        sub_1CEFCCC44(v196, v130, v131);
        v132 = v246;
LABEL_226:
        v199 = v130;
        v200 = v131;
        goto LABEL_227;
      case 7u:
        v125 = a2;
        v126 = v3;
        v127 = v476;
        sub_1CEFCCBDC(v90, v476, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
        v129 = *(v128 + 48);
        if ((*(v478 + 48))(v127, 1, v479) == 1)
        {
          v130 = &unk_1EC4BFBB0;
          v131 = &qword_1CF9FCB90;
          sub_1CEFCCC44(v127 + v129, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v132 = v127;
          goto LABEL_226;
        }

        v201 = *(v127 + *(v128 + 64));
        v202 = v457;
        sub_1CEFE55D0(v127, v457, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if ((v201 & 2) == 0)
        {
          goto LABEL_64;
        }

        v241 = v486;
        (*(*v126[2] + 152))(v493, v202, &v494, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v241)
        {
          sub_1CEFCCC44(v202, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          sub_1CEFCCC44(v127 + v129, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          goto LABEL_11;
        }

        if (v493[8] == 255)
        {
          sub_1CF405DEC(*v202, 0, v125, a3);
        }

        v486 = 0;
LABEL_64:
        sub_1CEFCCC44(v202, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v199 = &unk_1EC4BFBB0;
        v200 = &qword_1CF9FCB90;
        v132 = (v127 + v129);
        goto LABEL_227;
      case 0xAu:
        v138 = a2;
        v139 = v467;
        sub_1CEFCCBDC(v90, v467, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v140 = *(v139 + 9);
        v141 = *v139;
        v142 = *(v139 + 8);
        if (v140)
        {
          v143 = v486;
          sub_1CF405DEC(v141, 0, v138, a3);
          v486 = v143;
          v97 = v141;
          v137 = v142;
          goto LABEL_44;
        }

        v205 = v486;
        sub_1CF40423C(v141, v142, 0, v138, a3);
        v486 = v205;
        goto LABEL_228;
      case 0xFu:
        v144 = v463;
        sub_1CEFCCBDC(v90, v463, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v145 = *(v144 + 16);
        if (*(v144 + 9))
        {

          sub_1CEFD0994(*v144, *(v144 + 8), *(v144 + 9));
          goto LABEL_228;
        }

        v206 = *v144;
        v207 = a2;
        v208 = *(v144 + 8);
        v209 = v145;
        v210 = v486;
        sub_1CF40212C(v206, v208, 0, v145, v207, a3);
        v486 = v210;

        goto LABEL_70;
      case 0x10u:
        v163 = v464;
        sub_1CEFCCBDC(v90, v464, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v145 = *(v163 + 16);
        if (*(v163 + 9))
        {

          sub_1CEFD0994(*v163, *(v163 + 8), *(v163 + 9));
          goto LABEL_228;
        }

        v220 = v3;
        v488 = *v163;
        v221 = v488;
        v222 = v163;
        v223 = a2;
        v489 = *(v222 + 8);
        v224 = v489;
        v225 = v145;
        v226 = v486;
        sub_1CF40212C(v221, v224, 1, v145, v223, a3);
        if (v226)
        {

          sub_1CEFCCC44(v90, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return;
        }

        (*(*v220[4] + 288))(v493, &v488, &v494, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v436 = v220;
        v250 = v493[8];
        if (v493[8] == 255)
        {
          goto LABEL_278;
        }

        v251 = *v493;
        v252 = v436;
        if (v493[8])
        {
          v253 = v223;
          if (v493[8] == 1)
          {
            if (v489 == 1 && *v493 == v488)
            {
              goto LABEL_279;
            }
          }

          else if (*v493)
          {
            if (v489 == 2 && v488 == 1)
            {
              goto LABEL_279;
            }
          }

          else if (v489 == 2 && !v488)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v253 = v223;
          if (!v489 && *v493 == v488)
          {
            goto LABEL_279;
          }
        }

        sub_1CF7EB934(*v493, v493[8], v253, a3, v493);
        memcpy(v492, v493, 0x208uLL);
        if (sub_1CF08B99C(v492) == 1)
        {
          memcpy(v491, v493, 0x208uLL);
        }

        else
        {
          memcpy(v491, v493, 0x208uLL);
          if (LOBYTE(v491[2]) == 1)
          {
            v408 = v438;
            *v438 = v251;
            *(v408 + 8) = v250;
            *(v408 + 9) = 0;
            v408[2] = v145;
            *(v408 + 24) = 0;
            swift_storeEnumTagMultiPayload();
            if (*(v436 + qword_1EDEADB48) == 1)
            {
              v409 = v437;
              sub_1CEFCCBDC(v438, v437, &qword_1EC4BE710, &qword_1CF9FE5A8);
              swift_beginAccess();
              v410 = v145;
              sub_1CF7E2EC8(v409);
              swift_endAccess();
            }

            else
            {
              v418 = v145;
            }

            sub_1CEFCCC44(v438, &qword_1EC4BE710, &qword_1CF9FE5A8);
          }
        }

        sub_1CEFCCC44(v491, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_278:
        v252 = v436;
LABEL_279:
        v419 = v252[3];
        v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
        v421 = (*(*v419 + 328))(&v488, v420, 0, &v494, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v90 = v501;
        v486 = 0;
        if (v421)
        {
LABEL_70:

          goto LABEL_228;
        }

        v422 = sub_1CF9052FC();
        v423 = v488;
        v424 = v489;
        LODWORD(v485) = v489;
        LOBYTE(v490[0]) = 0;
        v425 = sub_1CF93D7F4();
        v427 = v426;
        *&v496 = v423;
        BYTE8(v496) = v424;
        LODWORD(v487) = a3;
        v428 = v490[0];
        BYTE9(v496) = v490[0];
        v497 = 1281;
        v498 = v425;
        v499 = v426;
        v500 = 2572;
        swift_beginAccess();
        sub_1CEFCCBDC(&v496, v492, &qword_1EC4BE6D0, &qword_1CF9FE560);
        sub_1CF7E2EB0(&v496);
        swift_endAccess();
        *v493 = v423;
        v493[8] = v485;
        v493[9] = v428;
        *&v493[16] = 1281;
        *&v493[24] = v425;
        *&v493[32] = v427;
        *&v493[114] = 2572;
        sub_1CEFCCC44(v493, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v429 = sub_1CF4D3BC0();
        v430 = v486;
        sub_1CF7F6588(v422, v429, v223, v487);
        v486 = v430;
        if (v430)
        {

          goto LABEL_260;
        }

        goto LABEL_94;
      case 0x11u:
        v151 = v469;
        sub_1CEFCCBDC(v90, v469, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v152 = v151[1];
        *v493 = *v151;
        *&v493[16] = v152;
        v153 = v151[3];
        *&v493[32] = v151[2];
        *&v493[48] = v153;
        sub_1CF1AE1DC(v493, v492);
        v154 = sub_1CF93DAB0();
        v155 = a2;
        v157 = v156;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA40, &qword_1CF9FEFB0);
        v158 = swift_allocObject();
        v159 = *&v493[16];
        *(v158 + 144) = *v493;
        *(v158 + 160) = v159;
        v160 = *&v493[48];
        *(v158 + 176) = *&v493[32];
        *(v158 + 192) = v160;
        *(v158 + 16) = 0u;
        *(v158 + 32) = 0u;
        *(v158 + 48) = 1;
        *(v158 + 56) = 0u;
        *(v158 + 72) = 0u;
        *(v158 + 88) = 0;
        *(v158 + 96) = xmmword_1CF9FEC30;
        *(v158 + 112) = 0;
        *(v158 + 120) = v154;
        *(v158 + 128) = v157;
        *(v158 + 136) = 0x4000;
        v161 = sub_1CF4D3BC0();
        v162 = v486;
        sub_1CF902E70(v158, v161, v155, a3);
        v486 = v162;

        sub_1CF1AE25C(v493);
        goto LABEL_228;
      case 0x13u:
        v91 = v90;
        v92 = v470;
LABEL_9:
        sub_1CEFCCBDC(v91, v92, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v98 = *(v92 + 16);
        v99 = v486;
        sub_1CF40423C(*v92, *(v92 + 8), 0, a2, a3);
        if (v99)
        {

          goto LABEL_11;
        }

        sub_1CF405DEC(v98, 0, a2, a3);
        v486 = 0;

        goto LABEL_228;
      case 0x16u:
        v133 = v471;
        sub_1CEFCCBDC(v90, v471, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v134 = *v133;
        if ((*v133 & 0x8000000000000000) == 0)
        {
          v135 = v486;
          if ((*(v134 + 137) & 0x80) == 0)
          {
            v481 = a2;
            goto LABEL_116;
          }

          sub_1CF3E3E48(a2, a3);
          if (!v135)
          {
            v481 = a2;
            v486 = 0;
LABEL_116:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
            v259 = swift_dynamicCastClass();
            v436 = v3;
            if (v259)
            {
              v260 = v259;
              v261 = a3;
              v262 = *(v259 + 144);
              v263 = *(v259 + 152);
              if (*(v259 + 112) == 3)
              {
                v264 = *(v259 + 96);
                v265 = v264;
              }

              else
              {
                v264 = 0;
              }

              v275 = v486;
              v276 = v481;
              sub_1CF40423C(v262, v263, v264, v481, v261);
              if (v275)
              {

LABEL_125:
                sub_1CEFCCC44(v501, &qword_1EC4BE710, &qword_1CF9FE5A8);
                return;
              }

              v487 = v134;

              v277 = *(v260 + 144);
              v278 = *(v260 + 152);
              v279 = sub_1CF388E8C();
              v280 = *(v260 + 128);
              if (*(v260 + 112) == 3)
              {
                v281 = *(v260 + 96);
                v282 = v281;
              }

              else
              {
                v281 = 0;
              }

              sub_1CF4076E0(v277, v278, v279, v280, v281, v276, v261);
              v486 = 0;

              v90 = v501;
              v334 = v445;
              v333 = v446;
              v335 = v444;
              v134 = v487;
              goto LABEL_181;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
            v266 = swift_dynamicCastClass();
            if (v266)
            {
              v267 = v266;
              v268 = v134;
              v269 = *(v266 + 144);
              v270 = *(v266 + 152);
              v271 = sub_1CF388E8C();
              v272 = *(v267 + 128);
              if (*(v267 + 112) == 3)
              {
                v273 = *(v267 + 96);
                v274 = v273;
              }

              else
              {
                v273 = 0;
              }

              v323 = v486;
              v324 = v269;
              v325 = v481;
              sub_1CF4076E0(v324, v270, v271, v272, v273, v481, a3);
              v486 = v323;
              if (v323)
              {

                goto LABEL_260;
              }

              v134 = v268;
              if (*(v267 + 112) != 3)
              {
                goto LABEL_179;
              }

              v326 = v325;
              v327 = *(v267 + 96);
              v328 = *(v267 + 104);
              v329 = *(v267 + 144);
              v330 = *(v267 + 152);
              v331 = v327;
              v332 = v486;
              sub_1CF40423C(v329, v330, v327, v326, a3);
              v486 = v332;
              v321 = v327;
              v322 = v328;
              if (!v332)
              {
                goto LABEL_178;
              }

LABEL_165:
              sub_1CF03D7A8(v321, v322, 3u);

              goto LABEL_260;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
            v314 = swift_dynamicCastClass();
            if (v314)
            {
              if (*(v314 + 112) != 3)
              {
LABEL_180:
                v334 = v445;
                v333 = v446;
                v335 = v444;
                goto LABEL_181;
              }

              v315 = *(v314 + 96);
              v316 = *(v314 + 104);
              v317 = *(v314 + 144);
              v318 = *(v314 + 152);
              v319 = v315;
              v320 = v486;
              sub_1CF40423C(v317, v318, v315, v481, a3);
              v486 = v320;
              v321 = v315;
              v322 = v316;
              if (!v320)
              {
LABEL_178:
                sub_1CF03D7A8(v321, v322, 3u);
LABEL_179:
                v90 = v501;
                goto LABEL_180;
              }

              goto LABEL_165;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
            v347 = swift_dynamicCastClass();
            if (v347)
            {
              if (*(v347 + 112) == 3)
              {
                v348 = *(v347 + 96);
                v349 = v347;
                v350 = v348;
                v347 = v349;
              }

              else
              {
                v348 = 0;
              }

              v370 = v486;
              v371 = *(v347 + 160);
              v372 = *(v347 + 168);

              sub_1CF40423C(v371, v372, v348, v481, a3);
              v486 = v370;
              if (v370)
              {

                goto LABEL_228;
              }

              goto LABEL_180;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0200, &unk_1CFA05710);
            v361 = swift_dynamicCastClass();
            if (!v361)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
              v401 = swift_dynamicCastClass();
              if (v401 && *(v401 + 112) == 3)
              {
                v402 = *(v401 + 96);
                v403 = *(v401 + 104);
                v404 = *(v401 + 144);
                v405 = *(v401 + 152);
                v406 = v402;
                v407 = v486;
                sub_1CF40212C(v404, v405, 0, v402, v481, a3);
                v486 = v407;
                if (v407)
                {
                  sub_1CF03D7A8(v402, v403, 3u);

                  goto LABEL_260;
                }

                sub_1CF03D7A8(v402, v403, 3u);
              }

              v90 = v501;
              v334 = v445;
              v333 = v446;
              v335 = v444;
LABEL_181:
              (*(*v134 + 528))();
              if ((*(v335 + 48))(v333, 1, v483) == 1)
              {

                v199 = &unk_1EC4BFEA0;
                v200 = &unk_1CFA05570;
                v132 = v333;
              }

              else
              {
                sub_1CEFE55D0(v333, v334, &unk_1EC4BF650, &unk_1CF9FCB40);
                if (*(v134 + 112) == 3)
                {
                  v336 = *(v134 + 96);
                  v337 = v336;
                }

                else
                {
                  v336 = 0;
                }

                sub_1CF3E3598(v334, v336);

                v199 = &unk_1EC4BF650;
                v200 = &unk_1CF9FCB40;
                v132 = v334;
              }

LABEL_227:
              sub_1CEFCCC44(v132, v199, v200);
              goto LABEL_228;
            }

            v362 = v361;
            v363 = *(v361 + 112);
            if (v363 != 3)
            {
              swift_retain_n();
              goto LABEL_288;
            }

            v365 = *(v361 + 96);
            v364 = *(v361 + 104);
            _s3__C4CodeOMa_1(0);
            *v493 = -2008;
            swift_retain_n();
            sub_1CF03C530(v365, v364, 3u);
            sub_1CF042F54(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
            v366 = sub_1CF9E5658();
            sub_1CF03D7A8(v365, v364, 3u);
            if ((v366 & 1) == 0)
            {
              goto LABEL_287;
            }

            if ((~*(v362 + 136) & 0x1002) != 0)
            {
              goto LABEL_287;
            }

            (*(*v362 + 288))(v493);
            if (v493[0] - 1 < 3 || v493[0])
            {
              goto LABEL_287;
            }

            v367 = v486;
            (*(*v436[5] + 264))(v493, v362 + 144, &v494, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v486 = v367;
            if (v367)
            {
              goto LABEL_156;
            }

            *&v491[15] = *&v493[240];
            v491[12] = *&v493[192];
            v491[13] = *&v493[208];
            v491[14] = *&v493[224];
            v491[8] = *&v493[128];
            v491[9] = *&v493[144];
            v491[10] = *&v493[160];
            v491[11] = *&v493[176];
            v491[4] = *&v493[64];
            v491[5] = *&v493[80];
            v491[6] = *&v493[96];
            v491[7] = *&v493[112];
            v491[0] = *v493;
            v491[1] = *&v493[16];
            v491[2] = *&v493[32];
            v491[3] = *&v493[48];
            v492[12] = *&v493[192];
            v492[13] = *&v493[208];
            v492[14] = *&v493[224];
            *&v492[15] = *&v493[240];
            v492[8] = *&v493[128];
            v492[9] = *&v493[144];
            v492[10] = *&v493[160];
            v492[11] = *&v493[176];
            v492[4] = *&v493[64];
            v492[5] = *&v493[80];
            v492[6] = *&v493[96];
            v492[7] = *&v493[112];
            v492[0] = *v493;
            v492[1] = *&v493[16];
            v492[2] = *&v493[32];
            v492[3] = *&v493[48];
            if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v492) == 1)
            {
LABEL_287:
              v363 = *(v362 + 112);
LABEL_288:
              v294 = *(v362 + 96);
              v431 = *(v362 + 104);
              sub_1CF03C530(v294, v431, v363);

              if (v363 != 3)
              {
                sub_1CF03D7A8(v294, v431, v363);
                v294 = 0;
              }

              v432 = v486;
              sub_1CF405DEC(*(v362 + 144), v294, v481, a3);
              v486 = v432;
              if (!v432)
              {

                goto LABEL_179;
              }

              goto LABEL_155;
            }

            v433 = sub_1CF06E0D8();
            v434 = sub_1CEFF8538(*&v492[13], *(&v492[13] + 1), 0, v433, 0, 0);
            sub_1CEFCCC44(v491, &qword_1EC4BECF0, &unk_1CF9FEEB0);
            if (v434 <= 501)
            {
              if (v434 != 1 && v434 != 2)
              {
                goto LABEL_287;
              }
            }

            else if (v434 != 502 && v434 != 1000 && v434 != 1003)
            {
              goto LABEL_287;
            }

            goto LABEL_179;
          }

          goto LABEL_85;
        }

        v237 = v134 & 0x7FFFFFFFFFFFFFFFLL;
        v238 = v486;
        if ((*((v134 & 0x7FFFFFFFFFFFFFFFLL) + 0x89) & 0x80) != 0)
        {
          sub_1CF3E3E48(a2, a3);
          if (v238)
          {
LABEL_85:

LABEL_11:
            sub_1CEFCCC44(v90, &qword_1EC4BE710, &qword_1CF9FE5A8);
            return;
          }

          v486 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0250, &unk_1CFA05760);
        v292 = swift_dynamicCastClass();
        if (v292)
        {
          v293 = a2;
          if (*(v292 + 112) == 3)
          {
            v294 = *(v292 + 96);
            v295 = v292;
            v296 = v294;
            v292 = v295;
          }

          else
          {
            v294 = 0;
          }

          v302 = v486;
          v303 = *(v292 + 144);
          v304 = *(v292 + 152);

          sub_1CF40423C(v303, v304, v294, v293, a3);
          v486 = v302;
          if (v302)
          {
LABEL_155:

LABEL_156:

            goto LABEL_260;
          }

          goto LABEL_237;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v297 = swift_dynamicCastClass();
        if (v297)
        {
          v298 = a2;
          v299 = *(v297 + 144);
          if (*(v297 + 112) == 3)
          {
            v300 = *(v297 + 96);
            v301 = v300;
          }

          else
          {
            v300 = 0;
          }

          v345 = v299;
          v346 = v486;
          sub_1CF405DEC(v345, v300, v298, a3);
          v486 = v346;
          if (v346)
          {

LABEL_57:

            goto LABEL_260;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
          v338 = swift_dynamicCastClass();
          if (!v338)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
            v338 = swift_dynamicCastClass();
            if (!v338)
            {
              goto LABEL_238;
            }
          }

          if (*(v338 + 112) != 3)
          {
            goto LABEL_238;
          }

          v353 = a2;
          v354 = *(v338 + 96);
          v355 = *(v338 + 104);
          v356 = *(v338 + 144);
          v357 = v354;
          v358 = v486;
          sub_1CF405DEC(v356, v354, v353, a3);
          v486 = v358;
          if (v358)
          {
            sub_1CF03D7A8(v354, v355, 3u);
            goto LABEL_57;
          }

          sub_1CF03D7A8(v354, v355, 3u);
        }

LABEL_237:
        v90 = v501;
LABEL_238:
        v374 = v449;
        v373 = v450;
        v375 = v448;
        (*(*v237 + 528))();
        if ((*(v447 + 48))(v374, 1, v375) == 1)
        {

          v199 = &qword_1EC4C0498;
          v200 = &qword_1CFA05898;
          v132 = v374;
        }

        else
        {
          sub_1CEFE55D0(v374, v373, &qword_1EC4BFD38, &unk_1CFA05450);
          v376 = v441;
          sub_1CEFCCBDC(v373, v441, &qword_1EC4BFD38, &unk_1CFA05450);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v377 = v376;
            v378 = v442;
            sub_1CEFE55D0(v377, v442, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          }

          else
          {
            v379 = v376;
            v378 = v442;
            sub_1CEFE55D0(v379, v442, &unk_1EC4BFD70, &qword_1CFA12AC0);
          }

          swift_storeEnumTagMultiPayload();
          if (*(v237 + 112) == 3)
          {
            v380 = *(v237 + 96);
            v381 = v380;
          }

          else
          {
            v380 = 0;
          }

          sub_1CF3E3598(v378, v380);

          sub_1CEFCCC44(v378, &unk_1EC4BF650, &unk_1CF9FCB40);
          v199 = &qword_1EC4BFD38;
          v200 = &unk_1CFA05450;
          v132 = v373;
        }

        goto LABEL_227;
      case 0x1Cu:
        v112 = a2;
        v113 = v475;
        sub_1CEFCCBDC(v90, v475, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v114 = v459;
          sub_1CEFE55D0(v113, v459, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v115 = (v3 + qword_1EDEBBC28);
          os_unfair_lock_lock((v3 + qword_1EDEBBC28));
          v116 = sub_1CF033A74();
          v117 = v486;
          sub_1CF3FB96C(v114, v116, v112, a3);
          v486 = v117;
          if (v117)
          {

            os_unfair_lock_unlock(v115);
          }

          else
          {

            os_unfair_lock_unlock(v115);
            v243 = v454;
            sub_1CEFCCBDC(v114, v454, &unk_1EC4BFD70, &qword_1CFA12AC0);
            if (swift_getEnumCaseMultiPayload() == 6)
            {

              v243 = v455;
              sub_1CEFCCBDC(v114, v455, &unk_1EC4BFD70, &qword_1CFA12AC0);
              swift_storeEnumTagMultiPayload();
              sub_1CF3E3598(v243, 0);
              v244 = &unk_1EC4BF650;
              v245 = &unk_1CF9FCB40;
            }

            else
            {
              v244 = &unk_1EC4BFD70;
              v245 = &qword_1CFA12AC0;
            }

            sub_1CEFCCC44(v243, v244, v245);
          }

          v199 = &unk_1EC4BFD70;
          v200 = &qword_1CFA12AC0;
          v132 = v114;
          goto LABEL_227;
        }

        v196 = v458;
        sub_1CEFE55D0(v113, v458, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v197 = (v3 + qword_1EDEBBC20);
        os_unfair_lock_lock((v3 + qword_1EDEBBC20));
        v198 = v486;
        sub_1CF3FC714(v196, v3, a2, a3);
        v486 = v198;
        if (v198)
        {
          os_unfair_lock_unlock(v197);
          v199 = &unk_1EC4BFCC0;
          v200 = &unk_1CF9FCB50;
          v132 = v196;
          goto LABEL_227;
        }

        os_unfair_lock_unlock(v197);
        v246 = v452;
        sub_1CEFCCBDC(v196, v452, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590);
          sub_1CEFCCC44(v246 + *(v247 + 48), &unk_1EC4BEC00, &unk_1CF9FCB60);
          v248 = v455;
          sub_1CEFCCBDC(v196, v455, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          swift_storeEnumTagMultiPayload();
          sub_1CF3E3598(v248, 0);
          sub_1CEFCCC44(v248, &unk_1EC4BF650, &unk_1CF9FCB40);
          v132 = v196;
          v199 = &unk_1EC4BFCC0;
          v200 = &unk_1CF9FCB50;
          goto LABEL_227;
        }

        v130 = &unk_1EC4BFCC0;
        v131 = &unk_1CF9FCB50;
        goto LABEL_225;
      case 0x1Fu:
        v93 = a2;
        v94 = v473;
        sub_1CEFCCBDC(v90, v473, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v95 = *v94;
        v96 = *(v94 + 8);
        if (*(v94 + 9))
        {
          v97 = *v94;
          goto LABEL_43;
        }

        v186 = sub_1CF93DAB0();
        v188 = v187;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0000, &unk_1CF9FADA0);
        v189 = swift_allocObject();
        *(v189 + 152) = v96;
        *(v189 + 16) = 0u;
        *(v189 + 32) = 0u;
        *(v189 + 48) = 1;
        *(v189 + 56) = 0u;
        *(v189 + 72) = 0u;
        *(v189 + 88) = 0;
        *(v189 + 96) = xmmword_1CF9FEC30;
        *(v189 + 112) = 0;
        *(v189 + 120) = v186;
        *(v189 + 128) = v188;
        *(v189 + 136) = 0;
        *(v189 + 144) = v95;
        v190 = sub_1CF4D3BC0();
        v191 = v486;
        sub_1CF902E70(v189, v190, v93, a3);
        v486 = v191;
        if (v191)
        {
          goto LABEL_57;
        }

        goto LABEL_94;
      case 0x20u:
        v146 = v481;
        sub_1CEFCCBDC(v90, v481, &qword_1EC4BE710, &qword_1CF9FE5A8);
        if (*(v146 + 9))
        {
          sub_1CEFD0994(v146[2], *(v146 + 24), *(v146 + 25));
          sub_1CEFD0994(*v146, *(v146 + 8), *(v146 + 9));
          goto LABEL_228;
        }

        v211 = *v146;
        v212 = a2;
        v213 = *(v146 + 8);
        v214 = v486;
        sub_1CF7EB934(*v146, *(v146 + 8), v212, a3, v493);
        v486 = v214;
        if (v214)
        {
          v215 = v146[2];
          v216 = *(v146 + 25);
          v217 = *(v146 + 24);
LABEL_143:
          sub_1CEFD0994(v215, v217, v216);
          goto LABEL_260;
        }

        memcpy(v491, v493, 0x208uLL);
        v249 = *&v491[1];
        v492[0] = *v493;
        memcpy(&v492[1] + 8, &v493[24], 0x1F0uLL);
        *&v492[1] = *&v491[1];
        if (sub_1CF08B99C(v492) == 1)
        {
          v490[0] = *v493;
          *&v490[1] = v249;
          memcpy(&v490[1] + 8, &v493[24], 0x1F0uLL);
          sub_1CEFCCBDC(v491, &v488, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CEFCCC44(v490, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        else
        {
          v490[0] = *v493;
          *&v490[1] = v249;
          memcpy(&v490[1] + 8, &v493[24], 0x1F0uLL);
          sub_1CEFCCBDC(v491, &v488, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CEFCCC44(v490, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          if ((v249 & 1) == 0)
          {
            v291 = v481;
            goto LABEL_174;
          }
        }

        sub_1CF4810BC();
        v288 = swift_allocError();
        *v289 = 2;
        v290 = v486;
        sub_1CF40212C(v211, v213, 5, v288, v212, a3);
        v486 = v290;
        v291 = v481;
        if (v290)
        {

          memcpy(v490, v493, 0x208uLL);
          sub_1CEFCCC44(v490, &unk_1EC4BFC20, &unk_1CFA0A290);
          v215 = v291[2];
          v216 = *(v291 + 25);
          v217 = *(v291 + 24);
          goto LABEL_143;
        }

LABEL_174:
        memcpy(v490, v493, 0x208uLL);
        sub_1CEFCCC44(v490, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFD0994(v291[2], *(v291 + 24), *(v291 + 25));
        v90 = v501;
LABEL_228:
        v368 = v90;
LABEL_229:
        sub_1CEFCCC44(v368, &qword_1EC4BE710, &qword_1CF9FE5A8);
        return;
      case 0x29u:
        v147 = a2;
        v148 = v474;
        sub_1CEFCCBDC(v90, v474, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v149 = *(v148 + 9);
        v150 = *v148;
        v96 = *(v148 + 8);
        if (v149)
        {
          v97 = v150;
LABEL_43:
          v137 = v96;
LABEL_44:
          sub_1CEFD0994(v97, v137, 1);
          goto LABEL_228;
        }

        v218 = v3;
        v219 = v486;
        sub_1CF7EB934(v150, v96, v147, a3, v493);
        v486 = v219;
        if (v219)
        {
          goto LABEL_228;
        }

        memcpy(v492, v493, 0x208uLL);
        if (sub_1CF08B99C(v492) == 1)
        {
LABEL_75:
          memcpy(v491, v493, 0x208uLL);
        }

        else
        {
          memcpy(v491, v493, 0x208uLL);
          if (!*&v491[1])
          {
            v339 = sub_1CF93DAB0();
            v341 = v340;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
            v342 = swift_allocObject();
            *(v342 + 152) = v96;
            *(v342 + 16) = 0u;
            *(v342 + 32) = 0u;
            *(v342 + 48) = 1;
            *(v342 + 56) = 0u;
            *(v342 + 72) = 0u;
            *(v342 + 88) = 0;
            *(v342 + 120) = v339;
            *(v342 + 128) = v341;
            *(v342 + 136) = 0x80000000000;
            *(v342 + 144) = v150;
            *(v342 + 96) = xmmword_1CFA04E10;
            *(v342 + 112) = 0;
            v343 = sub_1CF4D3BC0();
            v344 = v486;
            sub_1CF902E70(v342, v343, v147, a3);
            v486 = v344;
            if (!v344)
            {
              v359 = *(*v218[4][2] + 920);

              v359(v360);

LABEL_270:
              v257 = &unk_1EC4BFC20;
              v258 = &unk_1CFA0A290;
              v111 = v491;
LABEL_114:
              sub_1CEFCCC44(v111, v257, v258);
              v90 = v501;
              goto LABEL_228;
            }

LABEL_188:

LABEL_258:
            v286 = &unk_1EC4BFC20;
            v287 = &unk_1CFA0A290;
            v285 = v491;
LABEL_259:
            sub_1CEFCCC44(v285, v286, v287);
LABEL_260:
            v368 = v501;
            goto LABEL_229;
          }
        }

LABEL_145:
        v199 = &unk_1EC4BFC20;
        v200 = &unk_1CFA0A290;
        v132 = v491;
        goto LABEL_227;
      case 0x2Bu:
        v136 = v472;
        sub_1CEFCCBDC(v90, v472, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v184 = *(v136 + 32);
        *v493 = *(v136 + 16);
        *&v493[16] = v184;
        v185 = *(v136 + 64);
        *&v493[32] = *(v136 + 48);
        *&v493[48] = v185;
        if (*(v136 + 9))
        {
          sub_1CF1AE25C(v493);
LABEL_54:
          sub_1CEFD0994(*v136, *(v136 + 8), *(v136 + 9));
          goto LABEL_228;
        }

        v487 = *v136;
        v227 = a2;
        v228 = *(v136 + 8);
        sub_1CF1AE1DC(v493, v492);
        v229 = sub_1CF93DAB0();
        v231 = v230;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0150, &unk_1CF9FAC40);
        v232 = swift_allocObject();
        v233 = *&v493[16];
        *(v232 + 144) = *v493;
        *(v232 + 160) = v233;
        v234 = *&v493[48];
        *(v232 + 176) = *&v493[32];
        *(v232 + 192) = v234;
        *(v232 + 16) = 0u;
        *(v232 + 32) = 0u;
        *(v232 + 48) = 1;
        *(v232 + 56) = 0u;
        *(v232 + 72) = 0u;
        *(v232 + 88) = 0;
        *(v232 + 96) = xmmword_1CF9FEC30;
        *(v232 + 112) = 0;
        *(v232 + 120) = v229;
        *(v232 + 128) = v231;
        *(v232 + 136) = 0x4000;
        v235 = sub_1CF4D3BC0();
        v236 = v486;
        sub_1CF902E70(v232, v235, v227, a3);
        v486 = v236;
        if (v236)
        {
          goto LABEL_79;
        }

        v254 = v487;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
        if (swift_dynamicCastClass())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
          swift_dynamicCastClassUnconditional();

          v255 = v486;
          sub_1CF7FEF8C(v254, v228, 128, v227, a3);
          v486 = v255;
          if (!v255)
          {
            sub_1CF1AE25C(v493);

LABEL_94:

            v90 = v501;
            goto LABEL_228;
          }

LABEL_79:

          sub_1CF1AE25C(v493);
          goto LABEL_260;
        }

        sub_1CF1AE25C(v493);
        v90 = v501;
        goto LABEL_228;
      case 0x2Du:
        v164 = v3;
        v165 = qword_1EDEBBD00;
        swift_beginAccess();
        v173 = *(v164 + v165);
        *(v164 + v165) = MEMORY[0x1E69E7CC0];
        v174 = *v173->tree;
        if (v174)
        {
          anon_8 = v173[1]._anon_8;
          do
          {
            v176 = *(anon_8 - 1);
            *&v492[0] = 0;

            v176(v492);

            anon_8 += 16;
            --v174;
          }

          while (v174);
          v173, v177, v178, v179, v180, v181, v182, v183;
          v90 = v501;
        }

        else
        {
          v173, v166, v167, v168, v169, v170, v171, v172;
        }

        goto LABEL_228;
      default:
        goto LABEL_228;
    }
  }
}