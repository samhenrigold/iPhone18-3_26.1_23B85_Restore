uint64_t sub_26CC43B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26CC43BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26CC43C40()
{
  result = qword_2804BBFA8;
  if (!qword_2804BBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFA8);
  }

  return result;
}

unint64_t sub_26CC43C98()
{
  result = qword_2804BBFB0;
  if (!qword_2804BBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFB0);
  }

  return result;
}

unint64_t sub_26CC43CF0()
{
  result = qword_2804BBFB8;
  if (!qword_2804BBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFB8);
  }

  return result;
}

uint64_t sub_26CC43D44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices5VideoVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
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

uint64_t get_enum_tag_for_layout_string_13TVAppServices25UpNextNotificationPayloadV9ItemImageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_26CC43EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1481))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26CC43F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 1480) = 0;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1481) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1481) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26CC44138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26CC44194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_26CC44204(char a1)
{
  result = 0x64496D616461;
  switch(a1)
  {
    case 1:
      result = 0x756F72676B636162;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0x795465676E616863;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x747865746E6F63;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x4E65646F73697065;
      break;
    case 9:
      result = 0x7365726E6567;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 0x736567616D69;
      break;
    case 12:
      result = 0x4F656C7070417369;
      break;
    case 13:
      result = 0x444F56457369;
      break;
    case 14:
      result = 0x6168637275507369;
      break;
    case 15:
      result = 0x6C61746E65527369;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
    case 18:
      result = 0x656C626179616C70;
      break;
    case 19:
      result = 0x676E69746172;
      break;
    case 20:
      result = 0x44657361656C6572;
      break;
    case 21:
      result = 0x64496E6F73616573;
      break;
    case 22:
      v3 = 0x6E6F73616573;
      goto LABEL_31;
    case 23:
      result = 0x754E6E6F73616573;
      break;
    case 24:
      result = 0x69546E6F73616573;
      break;
    case 25:
      result = 0x6C72556572616873;
      break;
    case 26:
      result = 0x74695474726F6873;
      break;
    case 27:
      result = 0x6449776F6873;
      break;
    case 28:
      result = 0x67616D49776F6873;
      break;
    case 29:
      result = 0x6C746954776F6873;
      break;
    case 30:
      result = 0x6D617473656D6974;
      break;
    case 31:
      result = 0x656C746974;
      break;
    case 32:
      result = 0x7372656C69617274;
      break;
    case 33:
      result = 1701869940;
      break;
    case 34:
      result = 7107189;
      break;
    case 35:
      v3 = 0x746567646977;
LABEL_31:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D49000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC445B0(void *a1)
{
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC068, &qword_26CD3EC08);
  v107 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v109 = v63 - v3;
  v4 = *v1;
  v105 = *(v1 + 8);
  v106 = v4;
  v5 = *(v1 + 96);
  v201 = *(v1 + 80);
  v202 = v5;
  v203 = *(v1 + 112);
  v6 = *(v1 + 128);
  v104 = *(v1 + 136);
  v204 = v6;
  v7 = *(v1 + 32);
  v197 = *(v1 + 16);
  v198 = v7;
  v8 = *(v1 + 64);
  v199 = *(v1 + 48);
  v200 = v8;
  v103 = *(v1 + 144);
  v102 = *(v1 + 152);
  v101 = *(v1 + 160);
  v100 = *(v1 + 161);
  v9 = *(v1 + 168);
  v98 = *(v1 + 176);
  v99 = v9;
  v97 = *(v1 + 184);
  v96 = *(v1 + 192);
  v95 = *(v1 + 200);
  v94 = *(v1 + 208);
  v10 = *(v1 + 216);
  v92 = *(v1 + 224);
  v93 = v10;
  v11 = *(v1 + 232);
  v90 = *(v1 + 240);
  v91 = v11;
  v12 = *(v1 + 248);
  v88 = *(v1 + 256);
  v89 = v12;
  v13 = *(v1 + 408);
  v213 = *(v1 + 392);
  v214 = v13;
  v215[0] = *(v1 + 424);
  *(v215 + 9) = *(v1 + 433);
  v14 = *(v1 + 344);
  v209 = *(v1 + 328);
  v210 = v14;
  v15 = *(v1 + 376);
  v211 = *(v1 + 360);
  v212 = v15;
  v16 = *(v1 + 280);
  v205 = *(v1 + 264);
  v206 = v16;
  v17 = *(v1 + 312);
  v207 = *(v1 + 296);
  v208 = v17;
  LODWORD(v12) = *(v1 + 449);
  v86 = *(v1 + 450);
  v87 = v12;
  LODWORD(v12) = *(v1 + 451);
  v84 = *(v1 + 452);
  v85 = v12;
  v18 = *(v1 + 456);
  v82 = *(v1 + 464);
  v83 = v18;
  v19 = *(v1 + 584);
  v222 = *(v1 + 568);
  v223 = v19;
  v20 = *(v1 + 616);
  v224 = *(v1 + 600);
  v225 = v20;
  v21 = *(v1 + 520);
  v218 = *(v1 + 504);
  v219 = v21;
  v22 = *(v1 + 552);
  v220 = *(v1 + 536);
  v221 = v22;
  v23 = *(v1 + 488);
  v216 = *(v1 + 472);
  v217 = v23;
  v24 = *(v1 + 632);
  v63[2] = *(v1 + 640);
  v63[3] = v24;
  v25 = *(v1 + 696);
  v228 = *(v1 + 680);
  v229 = v25;
  v230 = *(v1 + 712);
  v26 = *(v1 + 648);
  v227 = *(v1 + 664);
  v226 = v26;
  v67 = *(v1 + 720);
  v66 = *(v1 + 728);
  v27 = *(v1 + 921);
  v28 = *(v1 + 1193);
  v29 = *(v1 + 1465);
  v63[4] = *(v1 + 736);
  v30 = *(v1 + 784);
  v234 = *(v1 + 800);
  v233 = v30;
  v31 = *(v1 + 752);
  v232 = *(v1 + 768);
  v231 = v31;
  v32 = *(v1 + 848);
  v238 = *(v1 + 864);
  v237 = v32;
  v33 = *(v1 + 816);
  v236 = *(v1 + 832);
  v235 = v33;
  v34 = *(v1 + 896);
  v35 = *(v1 + 912);
  *(v241 + 9) = v27;
  v241[0] = v35;
  v36 = *(v1 + 880);
  v240 = v34;
  v239 = v36;
  v37 = *(v1 + 1168);
  v250 = *(v1 + 1152);
  v251 = v37;
  v252[0] = *(v1 + 1184);
  *(v252 + 9) = v28;
  v38 = *(v1 + 1104);
  v246 = *(v1 + 1088);
  v247 = v38;
  v39 = *(v1 + 1136);
  v248 = *(v1 + 1120);
  v249 = v39;
  v40 = *(v1 + 1040);
  v242 = *(v1 + 1024);
  v243 = v40;
  v41 = *(v1 + 1072);
  v244 = *(v1 + 1056);
  v245 = v41;
  v42 = *(v1 + 1440);
  v261 = *(v1 + 1424);
  v262 = v42;
  v263[0] = *(v1 + 1456);
  *(v263 + 9) = v29;
  v43 = *(v1 + 1376);
  v257 = *(v1 + 1360);
  v258 = v43;
  v44 = *(v1 + 1408);
  v259 = *(v1 + 1392);
  v260 = v44;
  v45 = *(v1 + 1296);
  v46 = *(v1 + 1312);
  v47 = *(v1 + 1328);
  v48 = *(v1 + 1344);
  v63[1] = *(v1 + 744);
  v65 = *(v1 + 944);
  v64 = *(v1 + 952);
  v49 = *(v1 + 960);
  v68 = *(v1 + 968);
  v69 = v49;
  v50 = *(v1 + 976);
  v70 = *(v1 + 984);
  v71 = v50;
  v51 = *(v1 + 992);
  v72 = *(v1 + 1000);
  v73 = v51;
  v52 = *(v1 + 1008);
  v74 = *(v1 + 1016);
  v75 = v52;
  v53 = *(v1 + 1216);
  v76 = *(v1 + 1224);
  v77 = v53;
  v54 = *(v1 + 1232);
  v78 = *(v1 + 1240);
  v81 = *(v1 + 1248);
  v55 = *(v1 + 1256);
  v79 = v54;
  v80 = v55;
  v56 = *(v1 + 1264);
  v57 = *(v1 + 1272);
  v253 = v45;
  v254 = v46;
  v255 = v47;
  v256 = v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4CBA4();
  v58 = v109;
  sub_26CD3B16C();
  LOBYTE(v175) = 0;
  v59 = v264;
  v60 = v108;
  sub_26CD3AECC();
  if (v60)
  {
    return (*(v107 + 8))(v58, v59);
  }

  v108 = v56;
  v62 = v107;
  v193 = v201;
  v194 = v202;
  v195 = v203;
  v196 = v204;
  v189 = v197;
  v190 = v198;
  v191 = v199;
  v192 = v200;
  v188 = 1;
  sub_26CC1B4DC(&v197, &v175, &qword_2804BC000, &qword_26CD42AE0);
  sub_26CC4CF78();
  sub_26CD3AF1C();
  v186[4] = v193;
  v186[5] = v194;
  v186[6] = v195;
  v187 = v196;
  v186[0] = v189;
  v186[1] = v190;
  v186[2] = v191;
  v186[3] = v192;
  sub_26CC1B544(v186, &qword_2804BC000, &qword_26CD42AE0);
  *&v175 = v104;
  LOBYTE(v172[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC3F22C(&qword_280BB9BE0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_26CD3AF1C();
  LOBYTE(v175) = v103;
  LOBYTE(v172[0]) = 3;
  sub_26CC4CFCC();
  sub_26CD3AF1C();
  LOBYTE(v175) = 4;
  sub_26CD3AEFC();
  LOBYTE(v175) = v100;
  LOBYTE(v172[0]) = 5;
  sub_26CC4D020();
  sub_26CD3AF1C();
  LOBYTE(v175) = 6;
  sub_26CD3AECC();
  LOBYTE(v175) = 7;
  sub_26CD3AEEC();
  LOBYTE(v175) = 8;
  sub_26CD3AEFC();
  *&v175 = v93;
  *(&v175 + 1) = v92;
  *&v176 = v91;
  *(&v176 + 1) = v90;
  LOBYTE(v172[0]) = 9;
  sub_26CC4D074(v93, v92, v91, v90);
  sub_26CC4D0BC();
  sub_26CD3AF1C();
  sub_26CC1D170(v175, *(&v175 + 1), v176, *(&v176 + 1));
  LOBYTE(v175) = 10;
  sub_26CD3AECC();
  v183 = v213;
  v184 = v214;
  v185[0] = v215[0];
  *(v185 + 9) = *(v215 + 9);
  v179 = v209;
  v180 = v210;
  v181 = v211;
  v182 = v212;
  v175 = v205;
  v176 = v206;
  v177 = v207;
  v178 = v208;
  v174 = 11;
  sub_26CC1B4DC(&v205, v172, &qword_2804BC028, &qword_26CD3EBE8);
  v106 = sub_26CC4D110();
  sub_26CD3AF1C();
  v172[8] = v183;
  v172[9] = v184;
  *v173 = v185[0];
  *&v173[9] = *(v185 + 9);
  v172[4] = v179;
  v172[5] = v180;
  v172[6] = v181;
  v172[7] = v182;
  v172[0] = v175;
  v172[1] = v176;
  v172[2] = v177;
  v172[3] = v178;
  sub_26CC1B544(v172, &qword_2804BC028, &qword_26CD3EBE8);
  LOBYTE(v141) = 12;
  sub_26CD3AEDC();
  LOBYTE(v141) = 13;
  sub_26CD3AEDC();
  LOBYTE(v141) = 14;
  sub_26CD3AEDC();
  LOBYTE(v141) = 15;
  sub_26CD3AEDC();
  LOBYTE(v141) = 16;
  sub_26CD3AECC();
  v168 = v222;
  v169 = v223;
  v170 = v224;
  v171 = v225;
  v164 = v218;
  v165 = v219;
  v166 = v220;
  v167 = v221;
  v162 = v216;
  v163 = v217;
  v161 = 17;
  sub_26CC1B4DC(&v216, &v141, &qword_2804BC038, &unk_26CD3EBF0);
  sub_26CC4D164();
  sub_26CD3AF1C();
  v160[6] = v168;
  v160[7] = v169;
  v160[8] = v170;
  v160[9] = v171;
  v160[2] = v164;
  v160[3] = v165;
  v160[4] = v166;
  v160[5] = v167;
  v160[0] = v162;
  v160[1] = v163;
  sub_26CC1B544(v160, &qword_2804BC038, &unk_26CD3EBF0);
  LOBYTE(v141) = 18;
  sub_26CD3AECC();
  v157 = v228;
  v158 = v229;
  v159 = v230;
  v156 = v227;
  v155 = v226;
  v154 = 19;
  sub_26CC1B4DC(&v226, &v141, &qword_2804BC048, &unk_26CD42A90);
  sub_26CC4D1B8();
  sub_26CD3AF1C();
  v152[2] = v157;
  v152[3] = v158;
  v153 = v159;
  v152[1] = v156;
  v152[0] = v155;
  sub_26CC1B544(v152, &qword_2804BC048, &unk_26CD42A90);
  LOBYTE(v141) = 20;
  sub_26CD3AEEC();
  LOBYTE(v141) = 21;
  sub_26CD3AECC();
  v149 = v239;
  v150 = v240;
  v151[0] = v241[0];
  *(v151 + 9) = *(v241 + 9);
  v145 = v235;
  v146 = v236;
  v147 = v237;
  v148 = v238;
  v141 = v231;
  v142 = v232;
  v143 = v233;
  v144 = v234;
  v140 = 22;
  sub_26CC1B4DC(&v231, v138, &qword_2804BC028, &qword_26CD3EBE8);
  sub_26CD3AF1C();
  v138[8] = v149;
  v138[9] = v150;
  *v139 = v151[0];
  *&v139[9] = *(v151 + 9);
  v138[4] = v145;
  v138[5] = v146;
  v138[6] = v147;
  v138[7] = v148;
  v138[0] = v141;
  v138[1] = v142;
  v138[2] = v143;
  v138[3] = v144;
  sub_26CC1B544(v138, &qword_2804BC028, &qword_26CD3EBE8);
  LOBYTE(v127) = 23;
  sub_26CD3AEFC();
  LOBYTE(v127) = 24;
  sub_26CD3AECC();
  LOBYTE(v127) = 25;
  sub_26CD3AECC();
  LOBYTE(v127) = 26;
  sub_26CD3AECC();
  LOBYTE(v127) = 27;
  sub_26CD3AECC();
  v135 = v250;
  v136 = v251;
  v137[0] = v252[0];
  *(v137 + 9) = *(v252 + 9);
  v132 = v247;
  v133 = v248;
  v134 = v249;
  v127 = v242;
  v128 = v243;
  v129 = v244;
  v130 = v245;
  v131 = v246;
  v126 = 28;
  sub_26CC1B4DC(&v242, v124, &qword_2804BC028, &qword_26CD3EBE8);
  sub_26CD3AF1C();
  v124[8] = v135;
  v124[9] = v136;
  *v125 = v137[0];
  *&v125[9] = *(v137 + 9);
  v124[4] = v131;
  v124[5] = v132;
  v124[6] = v133;
  v124[7] = v134;
  v124[0] = v127;
  v124[1] = v128;
  v124[2] = v129;
  v124[3] = v130;
  sub_26CC1B544(v124, &qword_2804BC028, &qword_26CD3EBE8);
  LOBYTE(v113) = 29;
  sub_26CD3AECC();
  LOBYTE(v113) = 30;
  sub_26CD3AEEC();
  LOBYTE(v113) = 31;
  sub_26CD3AECC();
  *&v113 = v108;
  LOBYTE(v110[0]) = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC050, &qword_26CD3EC00);
  sub_26CC4CE74(&qword_2804BC0A8, sub_26CC4CF78, MEMORY[0x277D83948]);
  sub_26CD3AF1C();
  LOBYTE(v113) = v57;
  LOBYTE(v110[0]) = 33;
  sub_26CC4D20C();
  sub_26CD3AF1C();
  LOBYTE(v113) = 34;
  sub_26CD3AECC();
  v121 = v261;
  v122 = v262;
  v123[0] = v263[0];
  *(v123 + 9) = *(v263 + 9);
  v117 = v257;
  v118 = v258;
  v119 = v259;
  v120 = v260;
  v113 = v253;
  v114 = v254;
  v115 = v255;
  v116 = v256;
  v112 = 35;
  sub_26CC1B4DC(&v253, v110, &qword_2804BC028, &qword_26CD3EBE8);
  sub_26CD3AF1C();
  v110[8] = v121;
  v110[9] = v122;
  *v111 = v123[0];
  *&v111[9] = *(v123 + 9);
  v110[4] = v117;
  v110[5] = v118;
  v110[6] = v119;
  v110[7] = v120;
  v110[0] = v113;
  v110[1] = v114;
  v110[2] = v115;
  v110[3] = v116;
  sub_26CC1B544(v110, &qword_2804BC028, &qword_26CD3EBE8);
  return (*(v62 + 8))(v109, v264);
}

uint64_t sub_26CC459B8(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v73 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFE8, &qword_26CD3EBE0);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - v5;
  v512 = 1;
  v509 = 1;
  v507 = 1;
  sub_26CC4CB54(&v514);
  v503 = v522;
  v504 = v523;
  v505[0] = v524[0];
  *(v505 + 9) = *(v524 + 9);
  v499 = v518;
  v500 = v519;
  v501 = v520;
  v502 = v521;
  v495 = v514;
  v496 = v515;
  v497 = v516;
  v498 = v517;
  sub_26CC4CB80(v525);
  v489 = v525[6];
  v490 = v525[7];
  v491 = v525[8];
  v492 = v525[9];
  v485 = v525[2];
  v486 = v525[3];
  v487 = v525[4];
  v488 = v525[5];
  v483 = v525[0];
  v484 = v525[1];
  v477 = v522;
  v478 = v523;
  v479[0] = v524[0];
  *(v479 + 9) = *(v524 + 9);
  v473 = v518;
  v474 = v519;
  v475 = v520;
  v476 = v521;
  v469 = v514;
  v470 = v515;
  v471 = v516;
  v472 = v517;
  v463 = v522;
  v464 = v523;
  v465[0] = v524[0];
  *(v465 + 9) = *(v524 + 9);
  v459 = v518;
  v460 = v519;
  v461 = v520;
  v462 = v521;
  v455 = v514;
  v456 = v515;
  v457 = v516;
  v458 = v517;
  v448 = v522;
  v449 = v523;
  *v450 = v524[0];
  *&v450[9] = *(v524 + 9);
  v444 = v518;
  v445 = v519;
  v446 = v520;
  v447 = v521;
  v440 = v514;
  v441 = v515;
  v481 = 1;
  v467 = 1;
  v453 = 1;
  v442 = v516;
  v443 = v517;
  v7 = v2[3];
  v76 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v7);
  sub_26CC4CBA4();
  sub_26CD3B15C();
  if (!v1)
  {
    v14 = v74;
    LOBYTE(v297) = 0;
    v71 = sub_26CD3ADDC();
    v72 = v15;
    v281 = 1;
    sub_26CC4CC28();
    sub_26CD3AE2C();
    v123 = v282;
    v129 = v284;
    v130 = v285;
    v131 = v286;
    v16 = v287;
    v17 = v288;
    v138 = v289;
    v139 = v290;
    v69 = v291;
    v128 = v292;
    v126 = v283;
    v127 = v293;
    v124 = v295;
    v125 = v294;
    v122 = v296;
    memset(v275, 0, sizeof(v275));
    v276 = 0;
    v277 = 1;
    v278 = 0u;
    v279 = 0u;
    v280 = 0;
    sub_26CC1B544(v275, &qword_2804BC000, &qword_26CD42AE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    v153[0] = 2;
    sub_26CC3F22C(&qword_2804BBE98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v70 = v6;
    sub_26CD3AE2C();
    v133 = v17;
    v132 = v16;
    v121 = v297;
    v153[0] = 3;
    sub_26CC4CC7C();
    sub_26CD3AE2C();
    v20 = v297;
    LOBYTE(v297) = 4;
    v120 = sub_26CD3AE0C();
    v512 = v21 & 1;
    v153[0] = 5;
    sub_26CC4CCD0();
    sub_26CD3AE2C();
    LODWORD(v17) = v297;
    LOBYTE(v297) = 6;
    v22 = sub_26CD3ADDC();
    v119 = v17;
    v117 = v22;
    v118 = v23;
    LOBYTE(v297) = 7;
    v24 = sub_26CD3ADFC();
    v68 = v20;
    v116 = v24;
    v509 = v25 & 1;
    LOBYTE(v297) = 8;
    v26 = sub_26CD3AE0C();
    v526 = 0;
    v114 = v26;
    v27 = v138;
    v28 = v139;
    v507 = v29 & 1;
    v153[0] = 9;
    sub_26CC4CD24();
    v30 = v526;
    sub_26CD3AE2C();
    v526 = v30;
    if (v30)
    {
      (*(v14 + 8))(v70, v75);
      v105 = 0;
      v106 = 0;
      v104 = 0;
      v113 = 0;
      v110 = 0;
      v107 = 0;
      v108 = 0;
      v115 = 0;
      v95 = 0;
      v96 = 0;
      v84 = 0;
      v85 = 0;
      v100 = 0;
      v101 = 0;
      v92 = 0;
      v93 = 0;
      v89 = 0;
      v90 = 0;
      v82 = 0;
      v83 = 0;
      v97 = 0;
      v86 = 0;
      v87 = 0;
      v91 = 0;
      v80 = 0;
      v81 = 0;
      v102 = 0;
      v103 = 0;
      v99 = 0;
      v94 = 0;
      v88 = 0;
      v98 = 0;
      v134 = 0;
      v137 = 0;
      v136 = 0;
      v111 = 0;
      v112 = 0;
      v109 = 0;
      v135 = 2;
      v77 = 5;
      v78 = 1;
      v79 = 0;
      v11 = 2;
      v12 = 1;
      v9 = v71;
      v8 = v72;
      v10 = v69;
      v13 = v68;
      goto LABEL_4;
    }

    v109 = v297;
    v67 = v298;
    v111 = v299;
    v112 = v300;
    sub_26CC1D170(0, 1, 0, 0);
    LOBYTE(v297) = 10;
    v31 = v526;
    v136 = sub_26CD3ADDC();
    v137 = v32;
    v526 = v31;
    if (v31)
    {
      (*(v14 + 8))(v70, v75);
      v105 = 0;
      v106 = 0;
      v104 = 0;
      v113 = 0;
      v110 = 0;
      v107 = 0;
      v108 = 0;
      v115 = 0;
      v95 = 0;
      v96 = 0;
      v84 = 0;
      v85 = 0;
      v100 = 0;
      v101 = 0;
      v92 = 0;
      v93 = 0;
      v89 = 0;
      v90 = 0;
      v82 = 0;
      v83 = 0;
      v97 = 0;
      v86 = 0;
      v87 = 0;
      v91 = 0;
      v80 = 0;
      v81 = 0;
      v102 = 0;
      v103 = 0;
      v99 = 0;
      v79 = 0;
      v94 = 0;
      v88 = 0;
      v98 = 0;
      v134 = 0;
      v137 = 0;
      v136 = 0;
LABEL_13:
      v135 = 2;
      v77 = 5;
      v78 = 1;
      v11 = 2;
      v9 = v71;
      v8 = v72;
      v10 = v69;
      v13 = v68;
      v12 = v67;
      goto LABEL_4;
    }

    v263 = 11;
    v66 = sub_26CC4CD78();
    v33 = v526;
    sub_26CD3AE2C();
    v526 = v33;
    if (v33 || (v258 = v272, v259 = v273, v260[0] = v274[0], *(v260 + 9) = *(v274 + 9), v254 = v268, v255 = v269, v256 = v270, v257 = v271, v250 = v264, v251 = v265, v252 = v266, v253 = v267, v261[8] = v503, v261[9] = v504, *v262 = v505[0], *&v262[9] = *(v505 + 9), v261[4] = v499, v261[5] = v500, v261[6] = v501, v261[7] = v502, v261[0] = v495, v261[1] = v496, v261[2] = v497, v261[3] = v498, sub_26CC1B544(v261, &qword_2804BC028, &qword_26CD3EBE8), v503 = v258, v504 = v259, v505[0] = v260[0], *(v505 + 9) = *(v260 + 9), v499 = v254, v500 = v255, v501 = v256, v502 = v257, v495 = v250, v496 = v251, v497 = v252, v498 = v253, LOBYTE(v297) = 12, v34 = v526, v65 = sub_26CD3ADEC(), (v526 = v34) != 0))
    {
      (*(v14 + 8))(v70, v75);
      v105 = 0;
      v106 = 0;
      v104 = 0;
      v113 = 0;
      v110 = 0;
      v107 = 0;
      v108 = 0;
      v115 = 0;
      v95 = 0;
      v96 = 0;
      v84 = 0;
      v85 = 0;
      v100 = 0;
      v101 = 0;
      v92 = 0;
      v93 = 0;
      v89 = 0;
      v90 = 0;
      v82 = 0;
      v83 = 0;
      v97 = 0;
      v86 = 0;
      v87 = 0;
      v91 = 0;
      v80 = 0;
      v81 = 0;
      v102 = 0;
      v103 = 0;
      v99 = 0;
      v79 = 0;
      v94 = 0;
      v88 = 0;
      v98 = 0;
      v134 = 0;
      goto LABEL_13;
    }

    LOBYTE(v297) = 13;
    v135 = sub_26CD3ADEC();
    v526 = 0;
    LOBYTE(v297) = 14;
    v134 = sub_26CD3ADEC();
    v526 = 0;
    LOBYTE(v297) = 15;
    v98 = sub_26CD3ADEC();
    v526 = 0;
    LOBYTE(v297) = 16;
    v88 = sub_26CD3ADDC();
    v94 = v35;
    v526 = 0;
    v239 = 17;
    sub_26CC4CDCC();
    v36 = v526;
    sub_26CD3AE2C();
    v526 = v36;
    if (v36 || (v234 = v246, v235 = v247, v236 = v248, v237 = v249, v230 = v242, v231 = v243, v232 = v244, v233 = v245, v228 = v240, v229 = v241, v238[6] = v489, v238[7] = v490, v238[8] = v491, v238[9] = v492, v238[2] = v485, v238[3] = v486, v238[4] = v487, v238[5] = v488, v238[0] = v483, v238[1] = v484, sub_26CC1B544(v238, &qword_2804BC038, &unk_26CD3EBF0), v489 = v234, v490 = v235, v491 = v236, v492 = v237, v485 = v230, v486 = v231, v487 = v232, v488 = v233, v483 = v228, v484 = v229, LOBYTE(v297) = 18, v37 = v526, v79 = sub_26CD3ADDC(), v80 = v38, (v526 = v37) != 0))
    {
      (*(v14 + 8))(v70, v75);
      v105 = 0;
      v106 = 0;
      v104 = 0;
      v113 = 0;
      v110 = 0;
      v107 = 0;
      v108 = 0;
      v115 = 0;
      v95 = 0;
      v96 = 0;
      v84 = 0;
      v85 = 0;
      v100 = 0;
      v101 = 0;
      v92 = 0;
      v93 = 0;
      v89 = 0;
      v90 = 0;
      v82 = 0;
      v83 = 0;
      v97 = 0;
      v86 = 0;
      v87 = 0;
      v91 = 0;
      v80 = 0;
      v81 = 0;
      v102 = 0;
      v103 = 0;
      v99 = 0;
      v79 = 0;
    }

    else
    {
      v218 = 19;
      sub_26CC4CE20();
      v39 = v526;
      sub_26CD3AE2C();
      v526 = v39;
      if (!v39)
      {
        v78 = v220;
        v105 = v221;
        v106 = v219;
        v104 = v222;
        v113 = v223;
        v110 = v224;
        v107 = v226;
        v108 = v225;
        v115 = v227;
        v216[0] = xmmword_26CD3E690;
        memset(&v216[1], 0, 48);
        v217 = 0;
        sub_26CC1B544(v216, &qword_2804BC048, &unk_26CD42A90);
        LOBYTE(v297) = 20;
        v40 = v526;
        v102 = sub_26CD3ADFC();
        v526 = v40;
        if (v40)
        {
          (*(v14 + 8))(v70, v75);
          v95 = 0;
          v96 = 0;
          v84 = 0;
          v85 = 0;
          v100 = 0;
          v101 = 0;
          v92 = 0;
          v93 = 0;
          v89 = 0;
          v90 = 0;
          v82 = 0;
          v83 = 0;
          v97 = 0;
          v86 = 0;
          v87 = 0;
          v91 = 0;
          v81 = 0;
          v102 = 0;
          v103 = 0;
          v99 = 0;
        }

        else
        {
          v481 = v41 & 1;
          LOBYTE(v297) = 21;
          v99 = sub_26CD3ADDC();
          v103 = v42;
          v526 = 0;
          v204 = 22;
          sub_26CD3AE2C();
          v526 = 0;
          v199 = v213;
          v200 = v214;
          v201[0] = v215[0];
          *(v201 + 9) = *(v215 + 9);
          v195 = v209;
          v196 = v210;
          v197 = v211;
          v198 = v212;
          v191 = v205;
          v192 = v206;
          v193 = v207;
          v194 = v208;
          v202[8] = v477;
          v202[9] = v478;
          *v203 = v479[0];
          *&v203[9] = *(v479 + 9);
          v202[4] = v473;
          v202[5] = v474;
          v202[6] = v475;
          v202[7] = v476;
          v202[0] = v469;
          v202[1] = v470;
          v202[2] = v471;
          v202[3] = v472;
          sub_26CC1B544(v202, &qword_2804BC028, &qword_26CD3EBE8);
          v477 = v199;
          v478 = v200;
          v479[0] = v201[0];
          *(v479 + 9) = *(v201 + 9);
          v473 = v195;
          v474 = v196;
          v475 = v197;
          v476 = v198;
          v469 = v191;
          v470 = v192;
          v471 = v193;
          v472 = v194;
          LOBYTE(v297) = 23;
          v43 = v526;
          v82 = sub_26CD3AE0C();
          v526 = v43;
          if (v43)
          {
            (*(v14 + 8))(v70, v75);
            v95 = 0;
            v96 = 0;
            v84 = 0;
            v85 = 0;
            v100 = 0;
            v101 = 0;
            v92 = 0;
            v93 = 0;
            v89 = 0;
            v90 = 0;
            v82 = 0;
            v83 = 0;
            v97 = 0;
            v86 = 0;
            v87 = 0;
            v91 = 0;
            v81 = 0;
          }

          else
          {
            v467 = v44 & 1;
            LOBYTE(v297) = 24;
            v81 = sub_26CD3ADDC();
            v86 = v45;
            v526 = 0;
            LOBYTE(v297) = 25;
            v84 = sub_26CD3ADDC();
            v91 = v46;
            v526 = 0;
            LOBYTE(v297) = 26;
            v87 = sub_26CD3ADDC();
            v97 = v47;
            v526 = 0;
            LOBYTE(v297) = 27;
            v92 = sub_26CD3ADDC();
            v100 = v48;
            v526 = 0;
            v179 = 28;
            sub_26CD3AE2C();
            v526 = 0;
            v174 = v188;
            v175 = v189;
            v176[0] = v190[0];
            *(v176 + 9) = *(v190 + 9);
            v170 = v184;
            v171 = v185;
            v172 = v186;
            v173 = v187;
            v166 = v180;
            v167 = v181;
            v168 = v182;
            v169 = v183;
            v177[8] = v463;
            v177[9] = v464;
            *v178 = v465[0];
            *&v178[9] = *(v465 + 9);
            v177[4] = v459;
            v177[5] = v460;
            v177[6] = v461;
            v177[7] = v462;
            v177[0] = v455;
            v177[1] = v456;
            v177[2] = v457;
            v177[3] = v458;
            sub_26CC1B544(v177, &qword_2804BC028, &qword_26CD3EBE8);
            v463 = v174;
            v464 = v175;
            v465[0] = v176[0];
            *(v465 + 9) = *(v176 + 9);
            v459 = v170;
            v460 = v171;
            v461 = v172;
            v462 = v173;
            v455 = v166;
            v456 = v167;
            v457 = v168;
            v458 = v169;
            LOBYTE(v297) = 29;
            v49 = v526;
            v83 = sub_26CD3ADDC();
            v90 = v50;
            v526 = v49;
            if (v49)
            {
              (*(v14 + 8))(v70, v75);
              v95 = 0;
              v96 = 0;
              v85 = 0;
              v101 = 0;
              v93 = 0;
              v89 = 0;
              v90 = 0;
              v83 = 0;
            }

            else
            {
              LOBYTE(v297) = 30;
              v89 = sub_26CD3ADFC();
              v526 = 0;
              v453 = v51 & 1;
              LOBYTE(v297) = 31;
              v93 = sub_26CD3ADDC();
              v101 = v52;
              v526 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC050, &qword_26CD3EC00);
              v153[0] = 32;
              sub_26CC4CE74(&qword_2804BC058, sub_26CC4CC28, MEMORY[0x277D83978]);
              v53 = v526;
              sub_26CD3AE2C();
              v526 = v53;
              if (v53)
              {
                (*(v14 + 8))(v70, v75);
                v95 = 0;
                v96 = 0;
                v85 = 0;
              }

              else
              {
                v96 = v297;
                v153[0] = 33;
                sub_26CC4CEEC();
                v54 = v526;
                sub_26CD3AE2C();
                v526 = v54;
                if (!v54)
                {
                  v77 = v297;
                  LOBYTE(v297) = 34;
                  v85 = sub_26CD3ADDC();
                  v95 = v55;
                  v526 = 0;
                  v154 = 35;
                  sub_26CD3AE2C();
                  v526 = 0;
                  (*(v14 + 8))(v70, v75);
                  v148 = v163;
                  v149 = v164;
                  v150[0] = v165[0];
                  *(v150 + 9) = *(v165 + 9);
                  v144 = v159;
                  v145 = v160;
                  v146 = v161;
                  v147 = v162;
                  v140 = v155;
                  v141 = v156;
                  v142 = v157;
                  v143 = v158;
                  v151[8] = v448;
                  v151[9] = v449;
                  v152[0] = *v450;
                  *(v152 + 9) = *&v450[9];
                  v151[4] = v444;
                  v151[5] = v445;
                  v151[6] = v446;
                  v151[7] = v447;
                  v151[0] = v440;
                  v151[1] = v441;
                  v151[2] = v442;
                  v151[3] = v443;
                  sub_26CC1B544(v151, &qword_2804BC028, &qword_26CD3EBE8);
                  v448 = v148;
                  v449 = v149;
                  *v450 = v150[0];
                  *&v450[9] = *(v150 + 9);
                  v444 = v144;
                  v445 = v145;
                  v446 = v146;
                  v447 = v147;
                  v440 = v140;
                  v441 = v141;
                  v442 = v142;
                  v443 = v143;
                  *&v153[296] = v497;
                  *&v153[312] = v498;
                  *&v153[264] = v495;
                  *&v153[280] = v496;
                  *&v153[360] = v501;
                  *&v153[376] = v502;
                  *&v153[328] = v499;
                  *&v153[344] = v500;
                  *&v153[433] = *(v505 + 9);
                  *&v153[408] = v504;
                  *&v153[424] = v505[0];
                  *&v153[392] = v503;
                  *&v153[568] = v489;
                  *&v153[584] = v490;
                  *&v153[600] = v491;
                  *&v153[616] = v492;
                  *&v153[504] = v485;
                  *&v153[520] = v486;
                  *&v153[536] = v487;
                  *&v153[552] = v488;
                  *&v153[472] = v483;
                  *&v153[488] = v484;
                  *&v153[921] = *(v479 + 9);
                  *&v153[880] = v477;
                  *&v153[896] = v478;
                  *&v153[912] = v479[0];
                  *&v153[816] = v473;
                  *&v153[832] = v474;
                  *&v153[848] = v475;
                  *&v153[864] = v476;
                  *&v153[752] = v469;
                  *&v153[768] = v470;
                  *&v153[784] = v471;
                  *&v153[800] = v472;
                  *&v153[1193] = *(v465 + 9);
                  *&v153[1152] = v463;
                  *&v153[1168] = v464;
                  *&v153[1184] = v465[0];
                  *&v153[1088] = v459;
                  *&v153[1104] = v460;
                  *&v153[1120] = v461;
                  *&v153[1136] = v462;
                  *&v153[1024] = v455;
                  *&v153[1040] = v456;
                  *&v153[1056] = v457;
                  *&v153[1072] = v458;
                  *&v153[1465] = *(v150 + 9);
                  *&v153[1424] = v148;
                  *&v153[1440] = v149;
                  *&v153[1456] = v150[0];
                  *&v153[1360] = v144;
                  *&v153[1376] = v145;
                  *&v153[1392] = v146;
                  *&v153[1408] = v147;
                  *v153 = v71;
                  *&v153[8] = v72;
                  *&v153[16] = v123;
                  *&v153[24] = v126;
                  *&v153[32] = v129;
                  *&v153[40] = v130;
                  *&v153[48] = v131;
                  *&v153[56] = v132;
                  *&v153[64] = v133;
                  *&v153[72] = v27;
                  *&v153[80] = v28;
                  *&v153[88] = v69;
                  *&v153[96] = v128;
                  *&v153[104] = v127;
                  *&v153[112] = v125;
                  *&v153[120] = v124;
                  *&v153[128] = v122;
                  *&v153[136] = v121;
                  v56 = v68;
                  v153[144] = v68;
                  *&v153[145] = *v513;
                  *&v153[148] = *&v513[3];
                  *&v153[152] = v120;
                  LODWORD(v66) = v512;
                  v153[160] = v512;
                  v153[161] = v119;
                  *&v153[162] = v510;
                  *&v153[166] = v511;
                  *&v153[168] = v117;
                  *&v153[176] = v118;
                  *&v153[184] = v116;
                  v64 = v509;
                  v153[192] = v509;
                  *&v153[196] = *&v508[3];
                  *&v153[193] = *v508;
                  *&v153[200] = v114;
                  v63 = v507;
                  v153[208] = v507;
                  *&v153[212] = *&v506[3];
                  *&v153[209] = *v506;
                  *&v153[216] = v109;
                  *&v153[224] = v67;
                  *&v153[232] = v111;
                  *&v153[240] = v112;
                  *&v153[248] = v136;
                  *&v153[256] = v137;
                  v153[449] = v65;
                  v153[450] = v135;
                  v153[451] = v134;
                  v153[452] = v98;
                  *&v153[453] = v493;
                  v153[455] = v494;
                  *&v153[456] = v88;
                  *&v153[464] = v94;
                  *&v153[632] = v79;
                  *&v153[640] = v80;
                  v58 = v106;
                  v57 = v107;
                  *&v153[648] = v106;
                  *&v153[656] = v78;
                  *&v153[664] = v105;
                  *&v153[672] = v104;
                  v59 = v113;
                  *&v153[680] = v113;
                  v60 = v110;
                  *&v153[688] = v110;
                  v61 = v108;
                  *&v153[696] = v108;
                  *&v153[704] = v107;
                  v153[712] = v115;
                  *&v153[713] = *v482;
                  *&v153[716] = *&v482[3];
                  *&v153[720] = v102;
                  *&v153[729] = *v480;
                  *&v153[937] = *v468;
                  *&v153[953] = *v466;
                  *&v153[1209] = *v454;
                  *&v153[1241] = *v452;
                  LODWORD(v70) = v481;
                  v153[728] = v481;
                  *&v153[732] = *&v480[3];
                  *&v153[736] = v99;
                  *&v153[744] = v103;
                  *&v153[940] = *&v468[3];
                  *&v153[944] = v82;
                  *&v153[1273] = *v451;
                  LODWORD(v74) = v467;
                  v153[952] = v467;
                  *&v153[956] = *&v466[3];
                  *&v153[960] = v81;
                  *&v153[968] = v86;
                  *&v153[976] = v84;
                  *&v153[984] = v91;
                  *&v153[992] = v87;
                  *&v153[1000] = v97;
                  *&v153[1008] = v92;
                  *&v153[1016] = v100;
                  *&v153[1212] = *&v454[3];
                  *&v153[1216] = v83;
                  *&v153[1224] = v90;
                  *&v153[1232] = v89;
                  *&v153[1244] = *&v452[3];
                  *&v153[1276] = *&v451[3];
                  LODWORD(v75) = v453;
                  v153[1240] = v453;
                  *&v153[1248] = v93;
                  *&v153[1256] = v101;
                  *&v153[1264] = v96;
                  v153[1272] = v77;
                  *&v153[1280] = v85;
                  *&v153[1288] = v95;
                  *&v153[1296] = v140;
                  *&v153[1312] = v141;
                  *&v153[1328] = v142;
                  *&v153[1344] = v143;
                  memcpy(v73, v153, 0x5C9uLL);
                  sub_26CC4CF40(v153, &v297);
                  __swift_destroy_boxed_opaque_existential_1(v76);
                  v315 = v56;
                  v297 = v71;
                  v298 = v72;
                  v299 = v123;
                  v300 = v126;
                  v301 = v129;
                  v302 = v130;
                  v303 = v131;
                  v304 = v132;
                  v305 = v133;
                  v306 = v138;
                  v307 = v139;
                  v308 = v69;
                  v309 = v128;
                  v310 = v127;
                  v311 = v125;
                  v312 = v124;
                  v313 = v122;
                  v314 = v121;
                  v317 = v120;
                  v318 = v66;
                  v319 = v119;
                  v322 = v117;
                  v323 = v118;
                  v324 = v116;
                  v325 = v64;
                  v327 = v114;
                  v328 = v63;
                  v330 = v109;
                  v331 = v67;
                  v332 = v111;
                  v333 = v112;
                  v334 = v136;
                  v335 = v137;
                  v347 = v65;
                  v348 = v135;
                  v349 = v134;
                  v350 = v98;
                  v353 = v88;
                  v354 = v94;
                  v365 = v79;
                  v366 = v80;
                  v367 = v58;
                  v368 = v78;
                  v369 = v105;
                  v370 = v104;
                  v371 = v59;
                  v372 = v60;
                  v373 = v61;
                  v374 = v57;
                  v351 = v493;
                  *v316 = *v513;
                  *&v316[3] = *&v513[3];
                  v320 = v510;
                  v321 = v511;
                  *v326 = *v508;
                  *&v326[3] = *&v508[3];
                  *&v329[3] = *&v506[3];
                  *v329 = *v506;
                  v338 = v497;
                  v339 = v498;
                  v336 = v495;
                  v337 = v496;
                  v342 = v501;
                  v343 = v502;
                  v340 = v499;
                  v341 = v500;
                  *&v346[9] = *(v505 + 9);
                  v345 = v504;
                  *v346 = v505[0];
                  v344 = v503;
                  v352 = v494;
                  v361 = v489;
                  v362 = v490;
                  v363 = v491;
                  v364 = v492;
                  v357 = v485;
                  v358 = v486;
                  v359 = v487;
                  v360 = v488;
                  v355 = v483;
                  v356 = v484;
                  v375 = v115;
                  *v376 = *v482;
                  *&v376[3] = *&v482[3];
                  v377 = v102;
                  v378 = v70;
                  *v379 = *v480;
                  *&v379[3] = *&v480[3];
                  v380 = v99;
                  v381 = v103;
                  *&v392[9] = *(v479 + 9);
                  v390 = v477;
                  v391 = v478;
                  *v392 = v479[0];
                  v386 = v473;
                  v387 = v474;
                  v388 = v475;
                  v389 = v476;
                  v382 = v469;
                  v383 = v470;
                  v384 = v471;
                  v385 = v472;
                  *v393 = *v468;
                  *&v393[3] = *&v468[3];
                  v394 = v82;
                  v395 = v74;
                  *v396 = *v466;
                  *&v396[3] = *&v466[3];
                  v397 = v81;
                  v398 = v86;
                  v399 = v84;
                  v400 = v91;
                  v401 = v87;
                  v402 = v97;
                  v403 = v92;
                  v404 = v100;
                  *&v415[9] = *(v465 + 9);
                  v413 = v463;
                  v414 = v464;
                  *v415 = v465[0];
                  v409 = v459;
                  v410 = v460;
                  v411 = v461;
                  v412 = v462;
                  v405 = v455;
                  v406 = v456;
                  v407 = v457;
                  v408 = v458;
                  *v416 = *v454;
                  *&v416[3] = *&v454[3];
                  v417 = v83;
                  v418 = v90;
                  v419 = v89;
                  v420 = v75;
                  *v421 = *v452;
                  *&v421[3] = *&v452[3];
                  v422 = v93;
                  v423 = v101;
                  v424 = v96;
                  v425 = v77;
                  *v426 = *v451;
                  *&v426[3] = *&v451[3];
                  v427 = v85;
                  v428 = v95;
                  v18 = *&v450[9];
                  goto LABEL_5;
                }

                (*(v14 + 8))(v70, v75);
                v95 = 0;
                v85 = 0;
              }
            }
          }
        }

        v77 = 5;
        goto LABEL_18;
      }

      (*(v14 + 8))(v70, v75);
      v105 = 0;
      v106 = 0;
      v104 = 0;
      v113 = 0;
      v110 = 0;
      v107 = 0;
      v108 = 0;
      v115 = 0;
      v95 = 0;
      v96 = 0;
      v84 = 0;
      v85 = 0;
      v100 = 0;
      v101 = 0;
      v92 = 0;
      v93 = 0;
      v89 = 0;
      v90 = 0;
      v82 = 0;
      v83 = 0;
      v97 = 0;
      v86 = 0;
      v87 = 0;
      v91 = 0;
      v81 = 0;
      v102 = 0;
      v103 = 0;
      v99 = 0;
    }

    v77 = 5;
    v78 = 1;
LABEL_18:
    v9 = v71;
    v8 = v72;
    v10 = v69;
    v13 = v68;
    v12 = v67;
    v11 = v65;
    goto LABEL_4;
  }

  v526 = v1;
  v139 = 0;
  v138 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  v123 = 0;
  v124 = 0;
  v128 = 0;
  v125 = 0;
  v122 = 0;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  v113 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v115 = 0;
  v95 = 0;
  v96 = 0;
  v84 = 0;
  v85 = 0;
  v100 = 0;
  v101 = 0;
  v92 = 0;
  v93 = 0;
  v89 = 0;
  v90 = 0;
  v82 = 0;
  v83 = 0;
  v97 = 0;
  v86 = 0;
  v87 = 0;
  v91 = 0;
  v80 = 0;
  v81 = 0;
  v102 = 0;
  v103 = 0;
  v99 = 0;
  v79 = 0;
  v94 = 0;
  v88 = 0;
  v98 = 0;
  v134 = 0;
  v137 = 0;
  v136 = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v114 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v120 = 0;
  v121 = 0;
  v8 = 0;
  v9 = 0;
  v119 = 13;
  v135 = 2;
  v77 = 5;
  v10 = 1;
  v78 = 1;
  v11 = 2;
  v12 = 1;
  v13 = 2;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v76);
  v297 = v9;
  v298 = v8;
  v299 = v123;
  v300 = v126;
  v301 = v129;
  v302 = v130;
  v303 = v131;
  v304 = v132;
  v305 = v133;
  v306 = v138;
  v307 = v139;
  v308 = v10;
  v309 = v128;
  v310 = v127;
  v311 = v125;
  v312 = v124;
  v313 = v122;
  v314 = v121;
  v315 = v13;
  v317 = v120;
  v319 = v119;
  v322 = v117;
  v323 = v118;
  v324 = v116;
  v327 = v114;
  v330 = v109;
  v331 = v12;
  v332 = v111;
  v333 = v112;
  v334 = v136;
  v335 = v137;
  v347 = v11;
  v348 = v135;
  v349 = v134;
  v350 = v98;
  v353 = v88;
  v354 = v94;
  v365 = v79;
  v366 = v80;
  v367 = v106;
  v368 = v78;
  v369 = v105;
  v370 = v104;
  v351 = v493;
  *v316 = *v513;
  *&v316[3] = *&v513[3];
  v318 = v512;
  v320 = v510;
  v321 = v511;
  v325 = v509;
  *&v326[3] = *&v508[3];
  *v326 = *v508;
  v328 = v507;
  *&v329[3] = *&v506[3];
  *v329 = *v506;
  v338 = v497;
  v339 = v498;
  v336 = v495;
  v337 = v496;
  v342 = v501;
  v343 = v502;
  v340 = v499;
  v341 = v500;
  *&v346[9] = *(v505 + 9);
  v345 = v504;
  *v346 = v505[0];
  v344 = v503;
  v352 = v494;
  v361 = v489;
  v362 = v490;
  v363 = v491;
  v364 = v492;
  v357 = v485;
  v358 = v486;
  v359 = v487;
  v360 = v488;
  v355 = v483;
  v356 = v484;
  v371 = v113;
  v372 = v110;
  v373 = v108;
  v374 = v107;
  v375 = v115;
  *v376 = *v482;
  *&v376[3] = *&v482[3];
  v377 = v102;
  v378 = v481;
  *v379 = *v480;
  *&v379[3] = *&v480[3];
  v380 = v99;
  v381 = v103;
  *&v392[9] = *(v479 + 9);
  v390 = v477;
  v391 = v478;
  *v392 = v479[0];
  v386 = v473;
  v387 = v474;
  v388 = v475;
  v389 = v476;
  v382 = v469;
  v383 = v470;
  v384 = v471;
  v385 = v472;
  *v393 = *v468;
  *&v393[3] = *&v468[3];
  v394 = v82;
  v395 = v467;
  *v396 = *v466;
  *&v396[3] = *&v466[3];
  v397 = v81;
  v398 = v86;
  v399 = v84;
  v400 = v91;
  v401 = v87;
  v402 = v97;
  v403 = v92;
  v404 = v100;
  *&v415[9] = *(v465 + 9);
  v413 = v463;
  v414 = v464;
  *v415 = v465[0];
  v409 = v459;
  v410 = v460;
  v411 = v461;
  v412 = v462;
  v405 = v455;
  v406 = v456;
  v407 = v457;
  v408 = v458;
  *v416 = *v454;
  *&v416[3] = *&v454[3];
  v417 = v83;
  v418 = v90;
  v419 = v89;
  v420 = v453;
  *v421 = *v452;
  *&v421[3] = *&v452[3];
  v422 = v93;
  v423 = v101;
  v424 = v96;
  v425 = v77;
  *v426 = *v451;
  *&v426[3] = *&v451[3];
  v427 = v85;
  v428 = v95;
  v18 = *&v450[9];
LABEL_5:
  *(v439 + 9) = v18;
  v437 = v448;
  v438 = v449;
  v439[0] = *v450;
  v433 = v444;
  v434 = v445;
  v435 = v446;
  v436 = v447;
  v429 = v440;
  v430 = v441;
  v431 = v442;
  v432 = v443;
  return sub_26CC4CBF8(&v297);
}

uint64_t sub_26CC48B00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC49FF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC48B34(uint64_t a1)
{
  v2 = sub_26CC4CBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC48B70(uint64_t a1)
{
  v2 = sub_26CC4CBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26CC48BDC(char a1)
{
  result = 0x7954676E69726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x496C656E6E616863;
      break;
    case 3:
      result = 0x49746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461727564;
      break;
    case 5:
      result = 0x6C616E7265747865;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x6C7469746E457369;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x73656E7574497369;
      break;
    case 12:
      result = 0x7469746275537369;
      break;
    case 13:
      result = 0x6C6F436F65646976;
      break;
    case 14:
      result = 0x6175516F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC48D94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC140, &qword_26CD3F000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4D9F4();
  sub_26CD3B16C();
  LOBYTE(v11) = 0;
  sub_26CD3AECC();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC3F22C(&qword_280BB9BE0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_26CD3AF1C();
    LOBYTE(v11) = 2;
    sub_26CD3AECC();
    LOBYTE(v11) = 3;
    sub_26CD3AECC();
    LOBYTE(v11) = 4;
    sub_26CD3AEEC();
    LOBYTE(v11) = 5;
    sub_26CD3AECC();
    LOBYTE(v11) = 6;
    sub_26CD3AECC();
    LOBYTE(v11) = 7;
    sub_26CD3AECC();
    LOBYTE(v11) = 8;
    sub_26CD3AEDC();
    LOBYTE(v11) = 9;
    sub_26CD3AEDC();
    LOBYTE(v11) = 10;
    sub_26CD3AEDC();
    LOBYTE(v11) = 11;
    sub_26CD3AEDC();
    LOBYTE(v11) = 12;
    sub_26CD3AEDC();
    LOBYTE(v11) = 13;
    sub_26CD3AECC();
    LOBYTE(v11) = 14;
    sub_26CD3AECC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26CC4915C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC4AAF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC49184(uint64_t a1)
{
  v2 = sub_26CC4D9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC491C0(uint64_t a1)
{
  v2 = sub_26CC4D9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC491FC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26CC4AFC4(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_26CC49270(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC130, &qword_26CD3EFF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4D8E4();
  sub_26CD3B16C();
  v9 = v3[3];
  v10 = v3[1];
  v39 = v3[2];
  v40 = v9;
  v11 = v3[3];
  v41[0] = v3[4];
  *(v41 + 9) = *(v3 + 73);
  v12 = v3[1];
  v38[0] = *v3;
  v38[1] = v12;
  v31 = v39;
  v32 = v11;
  v33[0] = v3[4];
  *(v33 + 9) = *(v3 + 73);
  v29 = v38[0];
  v30 = v10;
  v28 = 0;
  sub_26CC1B4DC(v38, v26, &qword_2804BC118, &qword_26CD3EFE8);
  sub_26CC4DAB0();
  sub_26CD3AF1C();
  v26[2] = v31;
  v26[3] = v32;
  *v27 = v33[0];
  *&v27[9] = *(v33 + 9);
  v26[0] = v29;
  v26[1] = v30;
  sub_26CC1B544(v26, &qword_2804BC118, &qword_26CD3EFE8);
  if (!v2)
  {
    v14 = v3[9];
    v15 = v3[7];
    v35 = v3[8];
    v36 = v14;
    v16 = v3[9];
    v37[0] = v3[10];
    *(v37 + 9) = *(v3 + 169);
    v17 = v3[7];
    v34[0] = v3[6];
    v34[1] = v17;
    v23 = v35;
    v24 = v16;
    v25[0] = v3[10];
    *(v25 + 9) = *(v3 + 169);
    v21 = v34[0];
    v22 = v15;
    v20 = 1;
    sub_26CC1B4DC(v34, v18, &qword_2804BC118, &qword_26CD3EFE8);
    sub_26CD3AF1C();
    v18[2] = v23;
    v18[3] = v24;
    *v19 = v25[0];
    *&v19[9] = *(v25 + 9);
    v18[0] = v21;
    v18[1] = v22;
    sub_26CC1B544(v18, &qword_2804BC118, &qword_26CD3EFE8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26CC49594()
{
  if (*v0)
  {
    return 0x616D49666C656873;
  }

  else
  {
    return 0x656D61724679656BLL;
  }
}

void sub_26CC495E0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D61724679656BLL && a2 == 0xEE00736567616D49;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616D49666C656873 && a2 == 0xEA00000000006567)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CC496CC(uint64_t a1)
{
  v2 = sub_26CC4D8E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC49708(uint64_t a1)
{
  v2 = sub_26CC4D8E4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC49744@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26CC4B8D8(a2, v10);
  if (!v2)
  {
    v5 = v18;
    a1[8] = v17;
    a1[9] = v5;
    a1[10] = v19[0];
    *(a1 + 169) = *(v19 + 9);
    v6 = v14;
    a1[4] = v13;
    a1[5] = v6;
    v7 = v16;
    a1[6] = v15;
    a1[7] = v7;
    v8 = v10[1];
    *a1 = v10[0];
    a1[1] = v8;
    result = *&v11;
    v9 = v12;
    a1[2] = v11;
    a1[3] = v9;
  }

  return result;
}

uint64_t sub_26CC497C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC188, &qword_26CD3F2B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4DE30();
  sub_26CD3B16C();
  v8[15] = 0;
  sub_26CD3AECC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26CD3AEDC();
  v8[13] = 2;
  sub_26CD3AEFC();
  v8[12] = 3;
  sub_26CD3AECC();
  v8[11] = 4;
  sub_26CD3AEDC();
  v8[10] = 5;
  sub_26CD3AECC();
  v8[9] = 6;
  sub_26CD3AEFC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26CC499F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC0B8, &qword_26CD3EC10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4CAAC();
  sub_26CD3B16C();
  v15 = 0;
  sub_26CD3AEEC();
  if (!v2)
  {
    v14 = 1;
    sub_26CD3AEDC();
    v13 = 2;
    sub_26CD3AEEC();
    v12 = 3;
    sub_26CD3AECC();
    v11 = *(v3 + 48);
    v10[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFD0, &qword_26CD3EBD8);
    sub_26CC4D260(&qword_2804BC0C0, sub_26CC4D2D8, MEMORY[0x277D83948]);
    sub_26CD3AF1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26CC49C5C()
{
  v1 = *v0;
  v2 = 0x74616D726F66;
  v3 = 7107189;
  if (v1 != 5)
  {
    v3 = 0x6874646977;
  }

  v4 = 0x726F6C6F43656F6ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6168706C41736168;
  if (v1 != 1)
  {
    v5 = 0x746867696568;
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

uint64_t sub_26CC49D28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC4BDD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC49D50(uint64_t a1)
{
  v2 = sub_26CC4DE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC49D8C(uint64_t a1)
{
  v2 = sub_26CC4DE30();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC49DC8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26CC4C018(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_26CC49E34()
{
  v1 = *v0;
  v2 = 0x4173657269707865;
  v3 = 0x6D617473656D6974;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x68437478654E7075;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6164696C61766E69;
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

uint64_t sub_26CC49EDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC4C5FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC49F10(uint64_t a1)
{
  v2 = sub_26CC4CAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC49F4C(uint64_t a1)
{
  v2 = sub_26CC4CAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC49F88@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26CC4C7D0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_26CC49FF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF6F65646956646ELL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795465676E616863 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000026CD4DE50 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x444F56457369 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6168637275507369 && a2 == 0xEA00000000006573 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6C61746E65527369 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4DE70 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xEB000000006C7255 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x64496E6F73616573 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6D496E6F73616573 && a2 == 0xEC00000073656761 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x69546E6F73616573 && a2 == 0xEB00000000656C74 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6C72556572616873 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6449776F6873 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x67616D49776F6873 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x7372656C69617274 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6D49746567646977 && a2 == 0xEC00000073656761)
  {

    return 35;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 35;
    }

    else
    {
      return 36;
    }
  }
}

uint64_t sub_26CC4AAF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954676E69726961 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DEB0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4DED0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026CD4DEF0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x73656E7574497369 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7469746275537369 && a2 == 0xEB0000000064656CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6F436F65646976 && a2 == 0xEF65676E6152726FLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6175516F65646976 && a2 == 0xEC0000007974696CLL)
  {

    return 14;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_26CC4AFC4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC120, &qword_26CD3EFF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v98 = 1;
  v9 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CC4D9F4();
  sub_26CD3B15C();
  if (v2)
  {
    v99 = v2;
    v54 = 0uLL;
    v52 = 0;
    v53 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v12 = 0;
    v13 = 0;
    v55 = 2;
    v56 = 2;
    v57 = 2;
    v58 = 2;
    v51 = 2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v50);
    *&v70 = v13;
    *(&v70 + 1) = v12;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = v98;
    *v78 = *v97;
    *&v78[3] = *&v97[3];
    v79 = v48;
    v80 = v49;
    v81 = v46;
    v82 = v47;
    v83 = v52;
    v84 = v53;
    v85 = v51;
    v86 = v58;
    v87 = v57;
    v88 = v56;
    v89 = v55;
    v90 = v95;
    v91 = v96;
    v92 = v54;
    v93 = 0;
    v94 = 0;
    return sub_26CC4DA48(&v70);
  }

  LOBYTE(v70) = 0;
  v10 = sub_26CD3ADDC();
  v99 = 0;
  *&v45 = v10;
  *(&v45 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  LOBYTE(v59) = 1;
  sub_26CC3F22C(&qword_2804BBE98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v15 = v99;
  sub_26CD3AE2C();
  if (v15)
  {
    v99 = v15;
    (*(v6 + 8))(v8, v5);
    v54 = 0uLL;
    v52 = 0;
    v53 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v55 = 2;
    v56 = 2;
    v57 = 2;
    v58 = 2;
    v51 = 2;
    v12 = *(&v45 + 1);
    v13 = v45;
    goto LABEL_4;
  }

  v44 = v70;
  LOBYTE(v70) = 2;
  v16 = sub_26CD3ADDC();
  v42 = v17;
  v43 = v16;
  LOBYTE(v70) = 3;
  v40 = sub_26CD3ADDC();
  v41 = v18;
  LOBYTE(v70) = 4;
  v39 = sub_26CD3ADFC();
  v98 = v19 & 1;
  LOBYTE(v70) = 5;
  v48 = sub_26CD3ADDC();
  v49 = v20;
  LOBYTE(v70) = 6;
  v46 = sub_26CD3ADDC();
  v47 = v21;
  LOBYTE(v70) = 7;
  v52 = sub_26CD3ADDC();
  v53 = v22;
  LOBYTE(v70) = 8;
  v23 = sub_26CD3ADEC();
  v99 = 0;
  v51 = v23;
  LOBYTE(v70) = 9;
  v58 = sub_26CD3ADEC();
  v99 = 0;
  LOBYTE(v70) = 10;
  v57 = sub_26CD3ADEC();
  v99 = 0;
  LOBYTE(v70) = 11;
  v56 = sub_26CD3ADEC();
  v99 = 0;
  LOBYTE(v70) = 12;
  v55 = sub_26CD3ADEC();
  v99 = 0;
  LOBYTE(v70) = 13;
  *&v54 = sub_26CD3ADDC();
  *(&v54 + 1) = v24;
  v99 = 0;
  v69 = 14;
  v25 = sub_26CD3ADDC();
  v99 = 0;
  v26 = v25;
  v28 = v27;
  (*(v6 + 8))(v8, v5);
  v29 = v45;
  v59 = v45;
  *&v60 = v44;
  *(&v60 + 1) = v43;
  v30 = v41;
  v31 = v42;
  v32 = v40;
  *&v61 = v42;
  *(&v61 + 1) = v40;
  *&v62 = v41;
  *(&v62 + 1) = v39;
  HIDWORD(v38) = v98;
  LOBYTE(v63) = v98;
  *(&v63 + 1) = v48;
  *&v64 = v49;
  *(&v64 + 1) = v46;
  *&v65 = v47;
  *(&v65 + 1) = v52;
  *&v66 = v53;
  BYTE8(v66) = v51;
  BYTE9(v66) = v58;
  BYTE10(v66) = v57;
  BYTE11(v66) = v56;
  BYTE12(v66) = v55;
  v67 = v54;
  *&v68 = v26;
  *(&v68 + 1) = v28;
  sub_26CC4DA78(&v59, &v70);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v70 = v29;
  v71 = v44;
  v72 = v43;
  v73 = v31;
  v74 = v32;
  v75 = v30;
  v76 = v39;
  v77 = BYTE4(v38);
  *v78 = *v97;
  *&v78[3] = *&v97[3];
  v79 = v48;
  v80 = v49;
  v81 = v46;
  v82 = v47;
  v83 = v52;
  v84 = v53;
  v85 = v51;
  v86 = v58;
  v87 = v57;
  v88 = v56;
  v89 = v55;
  v91 = v96;
  v90 = v95;
  v92 = v54;
  v93 = v26;
  v94 = v28;
  result = sub_26CC4DA48(&v70);
  v33 = v66;
  a2[6] = v65;
  a2[7] = v33;
  v34 = v68;
  a2[8] = v67;
  a2[9] = v34;
  v35 = v62;
  a2[2] = v61;
  a2[3] = v35;
  v36 = v64;
  a2[4] = v63;
  a2[5] = v36;
  v37 = v60;
  *a2 = v59;
  a2[1] = v37;
  return result;
}

uint64_t sub_26CC4B8D8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC100, &qword_26CD3EFE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CC4D8E4();
  sub_26CD3B15C();
  if (v2)
  {
    v50 = 0;
    v49 = 0uLL;
    v47 = 0;
    v48 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v86 = v47;
    v87 = 1;
    v88 = v48;
    v89 = v49;
    v90 = v50;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = xmmword_26CD3E690;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    memset(v100, 0, 25);
    return sub_26CC4D938(&v86);
  }

  else
  {
    v44 = a2;
    v45 = v6;
    v103 = 0;
    sub_26CC4D968();
    sub_26CD3AE2C();
    v10 = v77;
    v47 = v76;
    v48 = v78;
    v49 = v79;
    v50 = v80;
    v11 = v82;
    v42 = v83;
    v43 = v81;
    v12 = v84;
    v101 = v85;
    v41 = xmmword_26CD3E690;
    v75[0] = xmmword_26CD3E690;
    memset(&v75[1], 0, 73);
    sub_26CC1B544(v75, &qword_2804BC118, &qword_26CD3EFE8);
    v102 = 1;
    sub_26CD3AE2C();
    (*(v45 + 8))(v8, v5);
    v45 = v63;
    v39 = v65;
    v40 = v64;
    v37 = v67;
    v38 = v66;
    v35 = v69;
    v36 = v68;
    v33 = v71;
    v34 = v70;
    v31 = v73;
    v32 = v72;
    v30 = v74;
    v51[0] = v41;
    memset(&v51[1], 0, 73);
    sub_26CC1B544(v51, &qword_2804BC118, &qword_26CD3EFE8);
    v13 = v12;
    v28 = v10;
    v29 = v12;
    v14 = v47;
    v15 = v48;
    *&v52 = v47;
    *(&v52 + 1) = v10;
    v17 = *(&v48 + 1);
    v16 = v49;
    v53 = v48;
    v18 = *(&v49 + 1);
    v19 = v50;
    v54 = v49;
    *&v55 = v50;
    *(&v55 + 1) = v43;
    *&v56 = v11;
    *(&v56 + 1) = v42;
    *&v57 = v13;
    BYTE8(v57) = v101;
    *&v58 = v45;
    *(&v58 + 1) = v40;
    *&v59 = v39;
    *(&v59 + 1) = v38;
    *&v60 = v37;
    *(&v60 + 1) = v36;
    *&v61 = v35;
    *(&v61 + 1) = v34;
    *&v62[0] = v33;
    *(&v62[0] + 1) = v32;
    *&v62[1] = v31;
    BYTE8(v62[1]) = v30;
    sub_26CC4D9BC(&v52, &v86);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v86 = v14;
    v87 = v28;
    *&v88 = v15;
    *(&v88 + 1) = v17;
    *&v89 = v16;
    *(&v89 + 1) = v18;
    v90 = v19;
    v91 = v43;
    v92 = v11;
    v93 = v42;
    v94 = v29;
    v95 = v101;
    *&v96 = v45;
    *(&v96 + 1) = v40;
    *&v97 = v39;
    *(&v97 + 1) = v38;
    *&v98 = v37;
    *(&v98 + 1) = v36;
    *&v99 = v35;
    *(&v99 + 1) = v34;
    v100[0] = v33;
    v100[1] = v32;
    v100[2] = v31;
    LOBYTE(v100[3]) = v30;
    result = sub_26CC4D938(&v86);
    v21 = v61;
    v22 = v44;
    v44[8] = v60;
    v22[9] = v21;
    v22[10] = v62[0];
    *(v22 + 169) = *(v62 + 9);
    v23 = v57;
    v22[4] = v56;
    v22[5] = v23;
    v24 = v59;
    v22[6] = v58;
    v22[7] = v24;
    v25 = v53;
    *v22 = v52;
    v22[1] = v25;
    v26 = v55;
    v22[2] = v54;
    v22[3] = v26;
  }

  return result;
}

uint64_t sub_26CC4BDD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168706C41736168 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F43656F6ALL && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026CD4DE30 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26CC4C018@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC178, &qword_26CD3F2A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v64 = 1;
  v61 = 1;
  v9 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CC4DE30();
  sub_26CD3B15C();
  if (v2)
  {
    v66 = v2;
    v38 = 0;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v46 = 0;
    v47 = 0;
    v48 = 2;
    *v49 = *v65;
    *&v49[3] = *&v65[3];
    v50 = 0;
    v51 = v64;
    *v52 = *v63;
    *&v52[3] = *&v63[3];
    v53 = 0;
    v54 = 0;
    v55 = 2;
    *&v56[3] = *&v62[3];
    *v56 = *v62;
    v57 = 0;
    v58 = v38;
    v59 = 0;
    v60 = v61;
    return sub_26CC4DE84(&v46);
  }

  else
  {
    LOBYTE(v46) = 0;
    v37 = sub_26CD3ADDC();
    v36 = v11;
    LOBYTE(v46) = 1;
    v12 = sub_26CD3ADEC();
    LOBYTE(v46) = 2;
    v13 = a2;
    v35 = sub_26CD3AE0C();
    v64 = v14 & 1;
    LOBYTE(v46) = 3;
    v15 = sub_26CD3ADDC();
    v34 = v16;
    LOBYTE(v46) = 4;
    v33 = sub_26CD3ADEC();
    LOBYTE(v46) = 5;
    v17 = sub_26CD3ADDC();
    v38 = v18;
    v45 = 6;
    v19 = sub_26CD3AE0C();
    v66 = 0;
    v21 = v20;
    v22 = v19;
    (*(v6 + 8))(v8, v5);
    v23 = v21 & 1;
    v61 = v21 & 1;
    *&v40 = v37;
    v24 = v36;
    *(&v40 + 1) = v36;
    LOBYTE(v41) = v12;
    *(&v41 + 1) = v35;
    v25 = v64;
    LOBYTE(v42) = v64;
    *(&v42 + 1) = v15;
    v32 = v15;
    v31 = v12;
    v26 = v34;
    *&v43 = v34;
    LOBYTE(v15) = v33;
    BYTE8(v43) = v33;
    v27 = v38;
    *v44 = v17;
    *&v44[8] = v38;
    *&v44[16] = v22;
    v44[24] = v23;
    sub_26CC4DEB4(&v40, &v46);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v46 = v37;
    v47 = v24;
    v48 = v31;
    v50 = v35;
    v51 = v25;
    v53 = v32;
    v54 = v26;
    v55 = v15;
    v57 = v17;
    v58 = v27;
    v59 = v22;
    v60 = v23;
    result = sub_26CC4DE84(&v46);
    v28 = v43;
    v13[2] = v42;
    v13[3] = v28;
    v13[4] = *v44;
    *(v13 + 73) = *&v44[9];
    v29 = v41;
    *v13 = v40;
    v13[1] = v29;
  }

  return result;
}

uint64_t sub_26CC4C5FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4173657269707865 && a2 == 0xE900000000000074 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEA00000000006574 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68437478654E7075 && a2 == 0xED00007365676E61)
  {

    return 4;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26CC4C7D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFC0, &qword_26CD3EBD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4CAAC();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v9 = sub_26CD3ADFC();
  v11 = v10;
  v12 = v9;
  v31 = 1;
  v24 = sub_26CD3ADEC();
  v30 = 2;
  v13 = sub_26CD3ADFC();
  v22 = v14;
  v23 = v13;
  v29 = 3;
  v20 = sub_26CD3ADDC();
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFD0, &qword_26CD3EBD8);
  v28 = 4;
  sub_26CC4D260(&qword_2804BBFD8, sub_26CC4CB00, MEMORY[0x277D83978]);
  sub_26CD3AE2C();
  (*(v6 + 8))(v8, v5);
  v16 = v26;
  v27 = v11 & 1;
  v25 = v22 & 1;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v27;
  *(a2 + 9) = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  v18 = v21;
  *(a2 + 32) = v20;
  *(a2 + 40) = v18;
  *(a2 + 48) = v16;
  return result;
}

unint64_t sub_26CC4CAAC()
{
  result = qword_2804BBFC8;
  if (!qword_2804BBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFC8);
  }

  return result;
}

unint64_t sub_26CC4CB00()
{
  result = qword_2804BBFE0;
  if (!qword_2804BBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFE0);
  }

  return result;
}

double sub_26CC4CB54(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_26CD3E6A0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  *(a1 + 169) = 0u;
  return result;
}

double sub_26CC4CB80(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_26CD3E690;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  return result;
}

unint64_t sub_26CC4CBA4()
{
  result = qword_2804BBFF0;
  if (!qword_2804BBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFF0);
  }

  return result;
}

unint64_t sub_26CC4CC28()
{
  result = qword_2804BBFF8;
  if (!qword_2804BBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBFF8);
  }

  return result;
}

unint64_t sub_26CC4CC7C()
{
  result = qword_2804BC008;
  if (!qword_2804BC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC008);
  }

  return result;
}

unint64_t sub_26CC4CCD0()
{
  result = qword_2804BC010;
  if (!qword_2804BC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC010);
  }

  return result;
}

unint64_t sub_26CC4CD24()
{
  result = qword_2804BC018;
  if (!qword_2804BC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC018);
  }

  return result;
}

unint64_t sub_26CC4CD78()
{
  result = qword_2804BC020;
  if (!qword_2804BC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC020);
  }

  return result;
}

unint64_t sub_26CC4CDCC()
{
  result = qword_2804BC030;
  if (!qword_2804BC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC030);
  }

  return result;
}

unint64_t sub_26CC4CE20()
{
  result = qword_2804BC040;
  if (!qword_2804BC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC040);
  }

  return result;
}

uint64_t sub_26CC4CE74(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC050, &qword_26CD3EC00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC4CEEC()
{
  result = qword_2804BC060;
  if (!qword_2804BC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC060);
  }

  return result;
}

unint64_t sub_26CC4CF78()
{
  result = qword_2804BC070;
  if (!qword_2804BC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC070);
  }

  return result;
}

unint64_t sub_26CC4CFCC()
{
  result = qword_2804BC078;
  if (!qword_2804BC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC078);
  }

  return result;
}

unint64_t sub_26CC4D020()
{
  result = qword_2804BC080;
  if (!qword_2804BC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC080);
  }

  return result;
}

void sub_26CC4D074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_26CC4D0BC()
{
  result = qword_2804BC088;
  if (!qword_2804BC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC088);
  }

  return result;
}

unint64_t sub_26CC4D110()
{
  result = qword_2804BC090;
  if (!qword_2804BC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC090);
  }

  return result;
}

unint64_t sub_26CC4D164()
{
  result = qword_2804BC098;
  if (!qword_2804BC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC098);
  }

  return result;
}

unint64_t sub_26CC4D1B8()
{
  result = qword_2804BC0A0;
  if (!qword_2804BC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0A0);
  }

  return result;
}

unint64_t sub_26CC4D20C()
{
  result = qword_2804BC0B0;
  if (!qword_2804BC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0B0);
  }

  return result;
}

uint64_t sub_26CC4D260(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BBFD0, &qword_26CD3EBD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC4D2D8()
{
  result = qword_2804BC0C8;
  if (!qword_2804BC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpNextNotificationPayload.ChangeItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpNextNotificationPayload.ChangeItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_26CC4D4B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26CC4D514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26CC4D5DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 185))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_26CC4D644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
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
    *(result + 184) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26CC4D6D8()
{
  result = qword_2804BC0D0;
  if (!qword_2804BC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0D0);
  }

  return result;
}

unint64_t sub_26CC4D730()
{
  result = qword_2804BC0D8;
  if (!qword_2804BC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0D8);
  }

  return result;
}

unint64_t sub_26CC4D788()
{
  result = qword_2804BC0E0;
  if (!qword_2804BC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0E0);
  }

  return result;
}

unint64_t sub_26CC4D7E0()
{
  result = qword_2804BC0E8;
  if (!qword_2804BC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0E8);
  }

  return result;
}

unint64_t sub_26CC4D838()
{
  result = qword_2804BC0F0;
  if (!qword_2804BC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0F0);
  }

  return result;
}

unint64_t sub_26CC4D890()
{
  result = qword_2804BC0F8;
  if (!qword_2804BC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC0F8);
  }

  return result;
}

unint64_t sub_26CC4D8E4()
{
  result = qword_2804BC108;
  if (!qword_2804BC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC108);
  }

  return result;
}

unint64_t sub_26CC4D968()
{
  result = qword_2804BC110;
  if (!qword_2804BC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC110);
  }

  return result;
}

unint64_t sub_26CC4D9F4()
{
  result = qword_2804BC128;
  if (!qword_2804BC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC128);
  }

  return result;
}

unint64_t sub_26CC4DAB0()
{
  result = qword_2804BC138;
  if (!qword_2804BC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC138);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26CC4DB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26CC4DBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26CC4DC24()
{
  result = qword_2804BC148;
  if (!qword_2804BC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC148);
  }

  return result;
}

unint64_t sub_26CC4DC7C()
{
  result = qword_2804BC150;
  if (!qword_2804BC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC150);
  }

  return result;
}

unint64_t sub_26CC4DCD4()
{
  result = qword_2804BC158;
  if (!qword_2804BC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC158);
  }

  return result;
}

unint64_t sub_26CC4DD2C()
{
  result = qword_2804BC160;
  if (!qword_2804BC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC160);
  }

  return result;
}

unint64_t sub_26CC4DD84()
{
  result = qword_2804BC168;
  if (!qword_2804BC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC168);
  }

  return result;
}

unint64_t sub_26CC4DDDC()
{
  result = qword_2804BC170;
  if (!qword_2804BC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC170);
  }

  return result;
}

unint64_t sub_26CC4DE30()
{
  result = qword_2804BC180;
  if (!qword_2804BC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC180);
  }

  return result;
}

unint64_t sub_26CC4DF00()
{
  result = qword_2804BC190;
  if (!qword_2804BC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC190);
  }

  return result;
}

unint64_t sub_26CC4DF58()
{
  result = qword_2804BC198;
  if (!qword_2804BC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC198);
  }

  return result;
}

unint64_t sub_26CC4DFB0()
{
  result = qword_2804BC1A0;
  if (!qword_2804BC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1A0);
  }

  return result;
}

uint64_t sub_26CC4E018(char a1)
{
  sub_26CD3B0FC();
  if (a1)
  {
    v2 = 0x3FF0000000000000;
  }

  else
  {
    v2 = 0x3FFC71C64BA94BBELL;
  }

  MEMORY[0x26D6ADB10](v2);
  return sub_26CD3B13C();
}

uint64_t sub_26CC4E078(uint64_t a1, char a2)
{
  sub_26CD3B0FC();
  if (a2)
  {
    v3 = 0x3FF0000000000000;
  }

  else
  {
    v3 = 0x3FFC71C64BA94BBELL;
  }

  MEMORY[0x26D6ADB10](v3);
  return sub_26CD3B13C();
}

uint64_t sub_26CC4E0D4(uint64_t a1, unsigned __int8 a2)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t ImageTemplate.urlTemplate.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImageTemplate.accessibilityText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void AspectRatio.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 1.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 1.777777)
  {
    v2 = 0;
  }

  *a1 = v2;
}

double AspectRatio.rawValue.getter()
{
  result = 1.777777;
  if (*v0)
  {
    return 1.0;
  }

  return result;
}

BOOL sub_26CC4E2BC(_BYTE *a1, _BYTE *a2)
{
  v2 = 1.777777;
  if (*a1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 1.777777;
  }

  if (*a2)
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

unint64_t sub_26CC4E2F0()
{
  result = qword_2804BC1A8;
  if (!qword_2804BC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1A8);
  }

  return result;
}

uint64_t sub_26CC4E34C()
{
  if (*v0)
  {
    v1 = 0x3FF0000000000000;
  }

  else
  {
    v1 = 0x3FFC71C64BA94BBELL;
  }

  return MEMORY[0x26D6ADB10](v1);
}

double *sub_26CC4E39C@<X0>(double *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result == 1.777777)
  {
    *a2 = 0;
  }

  else if (*result == 1.0)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 2;
  }

  return result;
}

void sub_26CC4E3DC(double *a1@<X8>)
{
  v2 = 1.777777;
  if (*v1)
  {
    v2 = 1.0;
  }

  *a1 = v2;
}

TVAppServices::VideoItemType_optional __swiftcall VideoItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AFEC();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VideoItemType.rawValue.getter()
{
  result = 0x6569766F4DLL;
  switch(*v0)
  {
    case 1:
      result = 2003789907;
      break;
    case 2:
      result = 0x65646F73697045;
      break;
    case 3:
      result = 0x6E75426569766F4DLL;
      break;
    case 4:
      result = 0x6E6F73616553;
      break;
    case 5:
      result = 0x6E6F73726550;
      break;
    case 6:
      result = 1701605202;
      break;
    case 7:
      result = 6582102;
      break;
    case 8:
      result = 0x746573786F42;
      break;
    case 9:
      result = 0x767265536576694CLL;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x676E6974726F7053;
      break;
    case 0xD:
      result = 0x61654C74726F7053;
      break;
    case 0xE:
      result = 0x74726F7053;
      break;
    case 0xF:
      result = 0x65756761654CLL;
      break;
    case 0x10:
      result = 1835099476;
      break;
    case 0x11:
      result = 0x77656976657250;
      break;
    case 0x12:
      result = 0x6E6F437373657250;
      break;
    case 0x13:
      result = 0x6569767265746E49;
      break;
    case 0x14:
      result = 0x4D656C6261746F4ELL;
      break;
    case 0x15:
      result = 0x79616C5079654BLL;
      break;
    case 0x16:
      result = 0x73756E6F42;
      break;
    case 0x17:
      result = 0x6F69746F6D6F7250;
      break;
    case 0x18:
      result = 1735290707;
      break;
    case 0x19:
      result = 0x7473696C79616C50;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC4E810()
{
  v0 = VideoItemType.rawValue.getter();
  v2 = v1;
  if (v0 == VideoItemType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26CD3AFDC();
  }

  return v5 & 1;
}

unint64_t sub_26CC4E8B0()
{
  result = qword_2804BC1B0;
  if (!qword_2804BC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1B0);
  }

  return result;
}

uint64_t sub_26CC4E904()
{
  sub_26CD3B0FC();
  VideoItemType.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC4E96C(uint64_t a1)
{
  VideoItemType.rawValue.getter();
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC4E9D0(uint64_t a1)
{
  sub_26CD3B0FC();
  VideoItemType.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CC4EA40@<X0>(unint64_t *a1@<X8>)
{
  result = VideoItemType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MovieItem.rating.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_26CC42E3C(v9, v8);
}

__n128 MovieItem.rating.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v8[2] = *(v1 + 128);
  v8[3] = v3;
  v8[4] = *(v1 + 160);
  v9 = *(v1 + 176);
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v8[1] = v4;
  sub_26CC42E74(v8);
  v5 = *(a1 + 48);
  *(v1 + 128) = *(a1 + 32);
  *(v1 + 144) = v5;
  *(v1 + 160) = *(a1 + 64);
  *(v1 + 176) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v7;
  return result;
}

uint64_t MovieItem.deepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MovieItem(0) + 36);

  return sub_26CC4EDBC(v3, a1);
}

uint64_t sub_26CC4EDBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MovieItem.deepLink.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MovieItem(0) + 36);

  return sub_26CC4EE70(a1, v3);
}

uint64_t sub_26CC4EE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MovieItem.releaseDate.setter(double a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MovieItem.duration.setter(double a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MovieItem.isAdultContent.setter(char a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t MovieItem.isAppleOriginal.setter(char a1)
{
  result = type metadata accessor for MovieItem(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_26CC4F198(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F697461727564;
    v6 = 0x43746C7564417369;
    if (a1 != 8)
    {
      v6 = 0x4F656C7070417369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6B6E694C70656564;
    if (a1 != 5)
    {
      v7 = 0x44657361656C6572;
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
    v1 = 25705;
    v2 = 0x6567616D69;
    v3 = 0x676E69746172;
    if (a1 != 3)
    {
      v3 = 0x7365726E6567;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
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

uint64_t sub_26CC4F2E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC52598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC4F314(uint64_t a1)
{
  v2 = sub_26CC4F824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC4F350(uint64_t a1)
{
  v2 = sub_26CC4F824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MovieItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1B8, &qword_26CD3F5F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC4F824();
  sub_26CD3B16C();
  LOBYTE(v31[0]) = 0;
  sub_26CD3AF2C();
  if (!v2)
  {
    v42[0] = 1;
    sub_26CD3AF2C();
    v9 = *(v3 + 48);
    v41[0] = *(v3 + 32);
    v41[1] = v9;
    v10 = *(v3 + 80);
    v12 = *(v3 + 32);
    v11 = *(v3 + 48);
    v41[2] = *(v3 + 64);
    v41[3] = v10;
    v37 = v12;
    v38 = v11;
    v13 = *(v3 + 80);
    v39 = *(v3 + 64);
    v40 = v13;
    v36 = 2;
    sub_26CC41E78(v41, v31);
    sub_26CC4F878();
    sub_26CD3AF6C();
    v30[0] = v37;
    v30[1] = v38;
    v30[2] = v39;
    v30[3] = v40;
    sub_26CC41EB0(v30);
    v14 = *(v3 + 144);
    v15 = *(v3 + 112);
    v32 = *(v3 + 128);
    v33 = v14;
    v16 = *(v3 + 144);
    v34 = *(v3 + 160);
    v17 = *(v3 + 112);
    v31[0] = *(v3 + 96);
    v31[1] = v17;
    v26 = v32;
    v27 = v16;
    v28 = *(v3 + 160);
    v35 = *(v3 + 176);
    v29 = *(v3 + 176);
    v24 = v31[0];
    v25 = v15;
    v23 = 3;
    sub_26CC42E3C(v31, v21);
    sub_26CC4F8CC();
    sub_26CD3AF6C();
    v21[2] = v26;
    v21[3] = v27;
    v21[4] = v28;
    v22 = v29;
    v21[0] = v24;
    v21[1] = v25;
    sub_26CC42E74(v21);
    v20 = *(v3 + 184);
    v19[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    sub_26CC50244(&qword_2804BC1E0, sub_26CC4F920, MEMORY[0x277D83948]);
    sub_26CD3AF6C();
    type metadata accessor for MovieItem(0);
    LOBYTE(v20) = 5;
    sub_26CD3A07C();
    sub_26CC50310(&qword_2804BC1F0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_26CD3AF1C();
    LOBYTE(v20) = 6;
    sub_26CD3AF4C();
    LOBYTE(v20) = 7;
    sub_26CD3AF4C();
    LOBYTE(v20) = 8;
    sub_26CD3AF3C();
    LOBYTE(v20) = 9;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26CC4F824()
{
  result = qword_2804BC1C0;
  if (!qword_2804BC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1C0);
  }

  return result;
}

unint64_t sub_26CC4F878()
{
  result = qword_2804BC1C8;
  if (!qword_2804BC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1C8);
  }

  return result;
}

unint64_t sub_26CC4F8CC()
{
  result = qword_2804BC1D0;
  if (!qword_2804BC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1D0);
  }

  return result;
}

unint64_t sub_26CC4F920()
{
  result = qword_2804BC1E8;
  if (!qword_2804BC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC1E8);
  }

  return result;
}

uint64_t MovieItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1F8, &qword_26CD3F608);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v36 - v7;
  v9 = type metadata accessor for MovieItem(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 36);
  v14 = sub_26CD3A07C();
  v15 = *(*(v14 - 8) + 56);
  v42 = v13;
  v57 = v12;
  v15(v12 + v13, 1, 1, v14);
  v16 = a1[3];
  v41 = a1;
  v17 = a1;
  v18 = v8;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_26CC4F824();
  sub_26CD3B15C();
  if (v2)
  {
    v21 = v57;
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_26CC3C0E0(v21 + v42);
  }

  else
  {
    v36 = v14;
    v37 = v6;
    v19 = v39;
    LOBYTE(v51) = 0;
    v20 = sub_26CD3AE3C();
    v22 = v57;
    *v57 = v20;
    v22[1] = v23;
    LOBYTE(v51) = 1;
    v22[2] = sub_26CD3AE3C();
    v22[3] = v24;
    v46 = 2;
    sub_26CC5019C();
    sub_26CD3AE7C();
    v25 = v48;
    *(v22 + 2) = v47;
    *(v22 + 3) = v25;
    v26 = v50;
    *(v22 + 4) = v49;
    *(v22 + 5) = v26;
    v45 = 3;
    sub_26CC501F0();
    sub_26CD3AE7C();
    v27 = v54;
    v28 = v55;
    *(v22 + 8) = v53;
    *(v22 + 9) = v27;
    *(v22 + 10) = v28;
    v22[22] = v56;
    v29 = v52;
    *(v22 + 6) = v51;
    *(v22 + 7) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    v43 = 4;
    sub_26CC50244(&qword_2804BC210, sub_26CC502BC, MEMORY[0x277D83978]);
    sub_26CD3AE7C();
    v22[23] = v44;
    LOBYTE(v44) = 5;
    sub_26CC50310(&qword_2804BC220, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v30 = v37;
    sub_26CD3AE2C();
    sub_26CC4EE70(v30, v22 + v42);
    LOBYTE(v44) = 6;
    sub_26CD3AE5C();
    *(v22 + v9[10]) = v31;
    LOBYTE(v44) = 7;
    sub_26CD3AE5C();
    *(v22 + v9[11]) = v32;
    LOBYTE(v44) = 8;
    *(v22 + v9[12]) = sub_26CD3AE4C() & 1;
    LOBYTE(v44) = 9;
    v33 = sub_26CD3AE4C();
    (*(v19 + 8))(v18, v40);
    v34 = v57;
    *(v57 + v9[13]) = v33 & 1;
    sub_26CC51C0C(v34, v38, type metadata accessor for MovieItem);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_26CC51C74(v34, type metadata accessor for MovieItem);
  }
}

unint64_t sub_26CC5019C()
{
  result = qword_2804BC200;
  if (!qword_2804BC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC200);
  }

  return result;
}

unint64_t sub_26CC501F0()
{
  result = qword_2804BC208;
  if (!qword_2804BC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC208);
  }

  return result;
}

uint64_t sub_26CC50244(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC1D8, &qword_26CD3F600);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC502BC()
{
  result = qword_2804BC218;
  if (!qword_2804BC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC218);
  }

  return result;
}

uint64_t sub_26CC50310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TVShowItem.id.getter()
{
  v1 = *v0;

  return v1;
}

void TVShowItem.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TVShowItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void TVShowItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_26CC5049C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_26CC41E78(v7, &v6);
}

__n128 TVShowItem.image.setter(uint64_t a1)
{
  v3 = v1[3];
  v8[0] = v1[2];
  v8[1] = v3;
  v4 = v1[5];
  v8[2] = v1[4];
  v8[3] = v4;
  sub_26CC41EB0(v8);
  v5 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v7;
  return result;
}

uint64_t TVShowItem.deepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 32);

  return sub_26CC4EDBC(v3, a1);
}

uint64_t TVShowItem.deepLink.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 32);

  return sub_26CC4EE70(a1, v3);
}

uint64_t TVShowItem.rating.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 36);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_26CC42E3C(v12, v11);
}

__n128 TVShowItem.rating.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TVShowItem(0) + 36);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_26CC42E74(v9);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t TVShowItem.releaseDate.setter(double a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t TVShowItem.duration.setter(double a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t TVShowItem.isAdultContent.setter(char a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t TVShowItem.seasons.getter()
{
  type metadata accessor for TVShowItem(0);
}

void TVShowItem.seasons.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TVShowItem(0) + 52);

  *(v1 + v3) = a1;
}

uint64_t TVShowItem.isAppleOriginal.setter(char a1)
{
  result = type metadata accessor for TVShowItem(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_26CC50B04(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x6567616D69;
    v8 = 0x7365726E6567;
    if (a1 != 3)
    {
      v8 = 0x6B6E694C70656564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x43746C7564417369;
    v2 = 0x736E6F73616573;
    if (a1 != 9)
    {
      v2 = 0x4F656C7070417369;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x676E69746172;
    v4 = 0x44657361656C6572;
    if (a1 != 6)
    {
      v4 = 0x6E6F697461727564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26CC50C6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC528C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC50CA0(uint64_t a1)
{
  v2 = sub_26CC51244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC50CDC(uint64_t a1)
{
  v2 = sub_26CC51244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TVShowItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC228, &qword_26CD3F610);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC51244();
  sub_26CD3B16C();
  LOBYTE(v32[0]) = 0;
  sub_26CD3AF2C();
  if (!v2)
  {
    v45[0] = 1;
    sub_26CD3AF2C();
    v9 = *(v3 + 48);
    v44[0] = *(v3 + 32);
    v44[1] = v9;
    v10 = *(v3 + 80);
    v12 = *(v3 + 32);
    v11 = *(v3 + 48);
    v44[2] = *(v3 + 64);
    v44[3] = v10;
    v40 = v12;
    v41 = v11;
    v13 = *(v3 + 80);
    v42 = *(v3 + 64);
    v43 = v13;
    v39 = 2;
    sub_26CC41E78(v44, v32);
    sub_26CC4F878();
    sub_26CD3AF6C();
    v38[0] = v40;
    v38[1] = v41;
    v38[2] = v42;
    v38[3] = v43;
    sub_26CC41EB0(v38);
    *&v32[0] = *(v3 + 96);
    LOBYTE(v26) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    sub_26CC50244(&qword_2804BC1E0, sub_26CC4F920, MEMORY[0x277D83948]);
    sub_26CD3AF6C();
    v46 = type metadata accessor for TVShowItem(0);
    v37 = 4;
    sub_26CD3A07C();
    sub_26CC50310(&qword_2804BC1F0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_26CD3AF1C();
    v14 = v46;
    v15 = v3 + *(v46 + 36);
    v16 = *(v15 + 48);
    v17 = *(v15 + 16);
    v33 = *(v15 + 32);
    v34 = v16;
    v18 = *(v15 + 48);
    v35 = *(v15 + 64);
    v19 = *(v15 + 16);
    v32[0] = *v15;
    v32[1] = v19;
    v28 = v33;
    v29 = v18;
    v30 = *(v15 + 64);
    v36 = *(v15 + 80);
    v31 = *(v15 + 80);
    v26 = v32[0];
    v27 = v17;
    v25 = 5;
    sub_26CC42E3C(v32, v23);
    sub_26CC4F8CC();
    sub_26CD3AF6C();
    v23[2] = v28;
    v23[3] = v29;
    v23[4] = v30;
    v24 = v31;
    v23[0] = v26;
    v23[1] = v27;
    sub_26CC42E74(v23);
    LOBYTE(v22) = 6;
    sub_26CD3AF4C();
    LOBYTE(v22) = 7;
    sub_26CD3AF4C();
    LOBYTE(v22) = 8;
    sub_26CD3AF3C();
    v22 = *(v3 + *(v14 + 52));
    v21[7] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC238, &qword_26CD3F618);
    sub_26CC51298(&qword_2804BC240, sub_26CC401F8, MEMORY[0x277D83948]);
    sub_26CD3AF6C();
    LOBYTE(v22) = 10;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26CC51244()
{
  result = qword_2804BC230;
  if (!qword_2804BC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC230);
  }

  return result;
}

uint64_t sub_26CC51298(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC238, &qword_26CD3F618);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void TVShowItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC248, &qword_26CD3F620);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = v33 - v7;
  v9 = type metadata accessor for TVShowItem(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 32);
  v14 = sub_26CD3A07C();
  v15 = *(*(v14 - 8) + 56);
  v38 = v12;
  v53 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26CC51244();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_26CC3C0E0(v38 + v53);
  }

  else
  {
    v17 = v35;
    LOBYTE(v47) = 0;
    v18 = sub_26CD3AE3C();
    v19 = v38;
    *v38 = v18;
    v19[1] = v20;
    LOBYTE(v47) = 1;
    v19[2] = sub_26CD3AE3C();
    v19[3] = v21;
    v42 = 2;
    sub_26CC5019C();
    v33[1] = 0;
    sub_26CD3AE7C();
    v22 = v44;
    *(v19 + 2) = v43;
    *(v19 + 3) = v22;
    v23 = v46;
    *(v19 + 4) = v45;
    *(v19 + 5) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC1D8, &qword_26CD3F600);
    LOBYTE(v40) = 3;
    sub_26CC50244(&qword_2804BC210, sub_26CC502BC, MEMORY[0x277D83978]);
    sub_26CD3AE7C();
    v19[12] = v47;
    LOBYTE(v47) = 4;
    sub_26CC50310(&qword_2804BC220, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_26CD3AE2C();
    sub_26CC4EE70(v6, v19 + v53);
    v41 = 5;
    sub_26CC501F0();
    sub_26CD3AE7C();
    v24 = v19 + v9[9];
    v25 = v50;
    v26 = v51;
    *(v24 + 2) = v49;
    *(v24 + 3) = v25;
    *(v24 + 4) = v26;
    *(v24 + 10) = v52;
    v27 = v48;
    *v24 = v47;
    *(v24 + 1) = v27;
    LOBYTE(v40) = 6;
    sub_26CD3AE5C();
    *(v19 + v9[10]) = v28;
    LOBYTE(v40) = 7;
    sub_26CD3AE5C();
    *(v19 + v9[11]) = v29;
    LOBYTE(v40) = 8;
    *(v19 + v9[12]) = sub_26CD3AE4C() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC238, &qword_26CD3F618);
    v39 = 9;
    sub_26CC51298(&qword_2804BC250, sub_26CC401A4, MEMORY[0x277D83978]);
    sub_26CD3AE7C();
    *(v38 + v9[13]) = v40;
    LOBYTE(v40) = 10;
    v30 = sub_26CD3AE4C();
    (*(v17 + 8))(v8, v36);
    v31 = v9[14];
    v32 = v38;
    *(v38 + v31) = v30 & 1;
    sub_26CC51C0C(v32, v34, type metadata accessor for TVShowItem);
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_26CC51C74(v32, type metadata accessor for TVShowItem);
  }
}

uint64_t sub_26CC51C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26CC51C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26CC51CD4(uint64_t a1)
{
  *(a1 + 8) = sub_26CC50310(&qword_2804BC258, type metadata accessor for MovieItem, &protocol conformance descriptor for MovieItem);
  result = sub_26CC50310(&qword_2804BC260, type metadata accessor for MovieItem, &protocol conformance descriptor for MovieItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26CC51D58(uint64_t a1)
{
  *(a1 + 8) = sub_26CC50310(&qword_2804BC268, type metadata accessor for TVShowItem, &protocol conformance descriptor for TVShowItem);
  result = sub_26CC50310(&qword_2804BC270, type metadata accessor for TVShowItem, &protocol conformance descriptor for TVShowItem);
  *(a1 + 16) = result;
  return result;
}

void sub_26CC51E48(uint64_t a1)
{
  sub_26CC5209C(319, &qword_2804BC288, &type metadata for VideoGenre);
  if (v1 <= 0x3F)
  {
    sub_26CC51F1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CC51F1C(uint64_t a1)
{
  if (!qword_280BBB1C8)
  {
    sub_26CD3A07C();
    v1 = sub_26CD3AADC();
    if (!v2)
    {
      atomic_store(v1, &qword_280BBB1C8);
    }
  }
}

void sub_26CC51F9C(uint64_t a1)
{
  sub_26CC5209C(319, &qword_2804BC288, &type metadata for VideoGenre);
  if (v1 <= 0x3F)
  {
    sub_26CC51F1C(319);
    if (v2 <= 0x3F)
    {
      sub_26CC5209C(319, &qword_2804BC2A0, &type metadata for TVShowSeasonVideoItem);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26CC5209C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26CD3A7EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TVShowItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TVShowItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MovieItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MovieItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26CC5238C()
{
  result = qword_2804BC2A8;
  if (!qword_2804BC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2A8);
  }

  return result;
}

unint64_t sub_26CC523E4()
{
  result = qword_2804BC2B0;
  if (!qword_2804BC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2B0);
  }

  return result;
}

unint64_t sub_26CC5243C()
{
  result = qword_2804BC2B8;
  if (!qword_2804BC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2B8);
  }

  return result;
}

unint64_t sub_26CC52494()
{
  result = qword_2804BC2C0;
  if (!qword_2804BC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2C0);
  }

  return result;
}

unint64_t sub_26CC524EC()
{
  result = qword_2804BC2C8;
  if (!qword_2804BC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2C8);
  }

  return result;
}

unint64_t sub_26CC52544()
{
  result = qword_2804BC2D0;
  if (!qword_2804BC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2D0);
  }

  return result;
}

uint64_t sub_26CC52598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x43746C7564417369 && a2 == 0xEE00746E65746E6FLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972)
  {

    return 9;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26CC528C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x43746C7564417369 && a2 == 0xEE00746E65746E6FLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x736E6F73616573 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972)
  {

    return 10;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t Channel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Channel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ChannelType.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CC52D60()
{
  result = qword_2804BC2D8;
  if (!qword_2804BC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2D8);
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26CC52DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CC52E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CC52E74()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

unint64_t sub_26CC52EF4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7374726F70707573;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x44496D657469;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D65747379537369;
    if (a1 != 5)
    {
      v7 = 0x70704156547369;
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
    v1 = 0x6E6F6973726576;
    v2 = 0x6C7469746E457369;
    v3 = 0x7041617465427369;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
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

uint64_t sub_26CC53058(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC2F8, &unk_26CD3FCA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC547CC();
  sub_26CD3B16C();
  v8[15] = 0;
  sub_26CD3AF2C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26CD3AF2C();
  v8[13] = 2;
  sub_26CD3AF3C();
  v8[12] = 3;
  sub_26CD3AF3C();
  v8[11] = 4;
  sub_26CD3AF3C();
  v8[10] = 5;
  sub_26CD3AF3C();
  v8[9] = 6;
  sub_26CD3AF3C();
  v8[8] = 7;
  sub_26CD3AF3C();
  v8[7] = 8;
  sub_26CD3AECC();
  v8[6] = 9;
  sub_26CD3AF7C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26CC532D8(uint64_t a1)
{
  sub_26CD3A54C();
  sub_26CD3A54C();
  sub_26CD3B11C();
  sub_26CD3B11C();
  sub_26CD3B11C();
  sub_26CD3B11C();
  sub_26CD3B11C();
  sub_26CD3B11C();
  if (*(v1 + 48))
  {
    sub_26CD3B11C();
    sub_26CD3A54C();
  }

  else
  {
    sub_26CD3B11C();
  }

  return MEMORY[0x26D6ADB10](*(v1 + 56));
}

uint64_t sub_26CC533A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC53F90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC533C8(uint64_t a1)
{
  v2 = sub_26CC547CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC53404(uint64_t a1)
{
  v2 = sub_26CC547CC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC53440@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26CC542E4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_26CC5349C()
{
  sub_26CD3B0FC();
  sub_26CC532D8(v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CC534E0(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CC532D8(v2);
  return sub_26CD3B13C();
}

BOOL sub_26CC5351C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_26CC53E74(v7, v8);
}

void sub_26CC53568(void *a1)
{
  v2 = [a1 entitlements];
  v3 = sub_26CD3A59C();
  sub_26CC54888();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [v2 objectForKey:v3 ofClass:ObjCClassFromMetadata];

  if (v5)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v73 = v68;
  v74 = v69;
  if (*(&v69 + 1))
  {
    v6 = swift_dynamicCast() ^ 1;
    if (v64)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    v54 = v6;
    v55 = v7;
  }

  else
  {
    sub_26CC548D4(&v73);
    v54 = 1;
    v55 = 1;
  }

  v8 = [a1 infoDictionary];
  v9 = sub_26CD3A59C();
  v10 = [v8 objectForKey:v9 ofClass:ObjCClassFromMetadata];

  if (v10)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v73 = v68;
  v74 = v69;
  if (*(&v69 + 1))
  {
    v11 = swift_dynamicCast();
    v12 = v11 ^ 1 | v11 & (v64 != 0);
  }

  else
  {
    sub_26CC548D4(&v73);
    v12 = 1;
  }

  v13 = [a1 developerType];
  v14 = [a1 bundleIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_26CD3A5CC();
    v18 = v17;

    v19 = [a1 shortVersionString];
    if (!v19)
    {

      return;
    }

    v51 = v12;
    v53 = v13;
    *&v52 = v16;
    *(&v52 + 1) = v18;
    v20 = v19;
    v21 = sub_26CD3A5CC();
    v49 = v22;
    v50 = v21;

    v48 = [a1 isBeta];
    v47 = [a1 isAppStoreVendable];
    v23 = [objc_opt_self() mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      v25 = sub_26CD3A5CC();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = [a1 bundleIdentifier];
    if (v28)
    {
      v29 = v28;
      v30 = sub_26CD3A5CC();
      v32 = v31;

      if (v25 == v30 && v27 == v32)
      {
        v33 = 1;
      }

      else
      {
        v33 = sub_26CD3AFDC();
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = [a1 iTunesMetadata];
    v35 = [v34 storeItemIdentifier];

    v36 = v52;
    v68 = v52;
    *&v69 = v50;
    *(&v69 + 1) = v49;
    LOBYTE(v70) = (v54 | v55 ^ 1) & 1;
    BYTE1(v70) = v48;
    BYTE2(v70) = v47;
    BYTE3(v70) = v53 == 1;
    BYTE4(v70) = v33 & 1;
    BYTE5(v70) = v51 & 1;
    v71 = 0;
    *&v72 = 0;
    *(&v72 + 1) = v35;
    v73 = v52;
    v74 = v69;
    v75 = v70;
    v76 = v72;

    if (((v54 | v55) & 1) == 0)
    {
      if (([a1 isAppStoreVendable] & 1) == 0 && v53 != 1)
      {
        swift_beginAccess();
        sub_26CC54820(&v68, &v64);
        sub_26CCDF294(&v60, &v73);
        swift_endAccess();
        v64 = v60;
        v65 = v61;
        v66 = v62;
        v67 = v63;
        sub_26CC54858(&v64);
      }

      swift_beginAccess();

      sub_26CC197B4(&v60, v52, *(&v52 + 1));
      swift_endAccess();

      swift_beginAccess();
      sub_26CC54820(&v68, &v64);
      sub_26CCDF294(&v64, &v73);
      swift_endAccess();
      v60 = v64;
      v61 = v65;
      v62 = v66;
      v63 = v67;
      sub_26CC54858(&v60);
      swift_beginAccess();
      sub_26CC54820(&v68, &v64);
      sub_26CCDF294(&v56, &v73);
      swift_endAccess();
      v64 = v56;
      v65 = v57;
      v66 = v58;
      v67 = v59;
      v37 = sub_26CC54858(&v64);
    }

    v64 = v52;
    MEMORY[0x28223BE20](v37);
    v46 = &v64;
    v39 = sub_26CCF175C(sub_26CC5493C, v45, v38);
    if (v39)
    {
      swift_beginAccess();
      sub_26CC197B4(&v60, v36, *(&v36 + 1));
      swift_endAccess();

      swift_beginAccess();
      sub_26CC54820(&v68, &v64);
      sub_26CCDF294(&v64, &v73);
      swift_endAccess();
      v60 = v64;
      v61 = v65;
      v62 = v66;
      v63 = v67;
      sub_26CC54858(&v60);
      swift_beginAccess();
      sub_26CCDF294(&v56, &v73);
      swift_endAccess();
      v64 = v56;
      v65 = v57;
      v40 = v58;
      v41 = v59;
    }

    else
    {
      v64 = v36;
      MEMORY[0x28223BE20](v39);
      v46 = &v64;
      v43 = sub_26CCF175C(sub_26CC54A74, v45, v42);

      if ((v43 & 1) == 0)
      {
        v44 = &v68;
        goto LABEL_40;
      }

      swift_beginAccess();
      sub_26CCDF294(&v60, &v73);
      swift_endAccess();
      v64 = v60;
      v65 = v61;
      v40 = v62;
      v41 = v63;
    }

    v66 = v40;
    v67 = v41;
    v44 = &v64;
LABEL_40:
    sub_26CC54858(v44);
  }
}

void *sub_26CC53CC8()
{

  return v0;
}

uint64_t sub_26CC53D38()
{
  sub_26CC53CC8();

  return swift_deallocClassInstance();
}

unint64_t sub_26CC53DA4()
{
  result = qword_280BB9C30;
  if (!qword_280BB9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9C30);
  }

  return result;
}

void *sub_26CC53DF8()
{
  result = v0;
  v2 = MEMORY[0x277D84FA0];
  v0[2] = MEMORY[0x277D84FA0];
  v0[3] = v2;
  v0[4] = v2;
  v0[5] = v2;
  v0[6] = v2;
  v0[7] = 0xD000000000000023;
  v0[8] = 0x800000026CD4E0C0;
  v0[9] = 0x726F707075534955;
  v0[10] = 0xEF70704156547374;
  v0[11] = &unk_287DFA6F0;
  v0[12] = &unk_287DFA720;
  v0[13] = v2;
  v0[14] = MEMORY[0x277D84F90];
  return result;
}

BOOL sub_26CC53E74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_26CD3AFDC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_26CD3AFDC() & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)) & 1) != 0 || ((*(a1 + 35) ^ *(a2 + 35)) & 1) != 0 || ((*(a1 + 36) ^ *(a2 + 36)) & 1) != 0 || ((*(a1 + 37) ^ *(a2 + 37)) & 1) != 0)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = *(a2 + 48);
  if (v7)
  {
    if (!v8 || (a1[5] != *(a2 + 40) || v7 != v8) && (sub_26CD3AFDC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  return a1[7] == *(a2 + 56);
}

uint64_t sub_26CC53F90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026CD4E0F0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7469746E457369 && a2 == 0xEA00000000006465 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7041617465427369 && a2 == 0xE900000000000070 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026CD4E110 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D65747379537369 && a2 == 0xEB00000000707041 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x70704156547369 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xED00007070415654 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4E130 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26CC542E4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC2E8, &qword_26CD3FCA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC547CC();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_26CD3AE3C();
  v11 = v10;
  v38 = a2;
  v12 = v9;
  LOBYTE(v43[0]) = 1;
  *&v37 = sub_26CD3AE3C();
  *(&v37 + 1) = v13;
  LOBYTE(v43[0]) = 2;
  v54 = sub_26CD3AE4C();
  LOBYTE(v43[0]) = 3;
  v36 = sub_26CD3AE4C();
  LOBYTE(v43[0]) = 4;
  v35 = sub_26CD3AE4C();
  LOBYTE(v43[0]) = 5;
  v34 = sub_26CD3AE4C();
  LOBYTE(v43[0]) = 6;
  v14 = sub_26CD3AE4C();
  LOBYTE(v43[0]) = 7;
  v31 = sub_26CD3AE4C();
  LOBYTE(v43[0]) = 8;
  v32 = sub_26CD3ADDC();
  v33 = v15;
  v55 = 9;
  v30 = sub_26CD3AE8C();
  v29 = v54 & 1;
  v54 = v36 & 1;
  v16 = v35 & 1;
  v35 = v34 & 1;
  v36 = v16;
  v17 = v14 & 1;
  v28 = v17;
  v18 = v31 & 1;
  v34 = v31 & 1;
  (*(v6 + 8))(v8, v5);
  *&v39 = v12;
  *(&v39 + 1) = v11;
  v19 = v37;
  v40 = v37;
  LOBYTE(v41) = v29;
  BYTE1(v41) = v54;
  BYTE2(v41) = v36;
  BYTE3(v41) = v35;
  BYTE4(v41) = v17;
  BYTE5(v41) = v18;
  v20 = v32;
  v21 = v33;
  *(&v41 + 1) = v32;
  *&v42 = v33;
  v22 = v30;
  *(&v42 + 1) = v30;
  sub_26CC54820(&v39, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v12;
  v43[1] = v11;
  v44 = v19;
  v45 = v29;
  v46 = v54;
  v47 = v36;
  v48 = v35;
  v49 = v28;
  v50 = v34;
  v51 = v20;
  v52 = v21;
  v53 = v22;
  result = sub_26CC54858(v43);
  v24 = v40;
  v25 = v38;
  *v38 = v39;
  v25[1] = v24;
  v26 = v42;
  v25[2] = v41;
  v25[3] = v26;
  return result;
}

unint64_t sub_26CC547CC()
{
  result = qword_2804BC2F0;
  if (!qword_2804BC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC2F0);
  }

  return result;
}

unint64_t sub_26CC54888()
{
  result = qword_280BB9BA0;
  if (!qword_280BB9BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB9BA0);
  }

  return result;
}

uint64_t sub_26CC548D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC54970()
{
  result = qword_2804BC300;
  if (!qword_2804BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC300);
  }

  return result;
}

unint64_t sub_26CC549C8()
{
  result = qword_2804BC308;
  if (!qword_2804BC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC308);
  }

  return result;
}

unint64_t sub_26CC54A20()
{
  result = qword_2804BC310;
  if (!qword_2804BC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC310);
  }

  return result;
}

double sub_26CC54A90()
{
  sub_26CC54AD0(v1);
  result = *v1;
  xmmword_280BBACE0 = v1[0];
  unk_280BBACF0 = v1[1];
  qword_280BBAD00 = v2;
  return result;
}

void sub_26CC54AD0(void *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_26CD3A5CC();
    v6 = v5;

    v7 = 0;
    while (1)
    {
      v8 = (&unk_287DFA218 + 40 * v7);
      v3 = v8[6];
      v9 = v3[2];
      if (v9)
      {
        break;
      }

LABEL_3:
      if (++v7 == 21)
      {

        v15 = 0;
        v10 = 0;
        v3 = 0;
        goto LABEL_15;
      }
    }

    v10 = v8[5];
    v16 = v8[4];
    v11 = v3 + 6;
    v13 = v8[7];
    v12 = v8[8];
    while (1)
    {
      if (!*v11)
      {
        v14 = *(v11 - 2) == v4 && *(v11 - 1) == v6;
        if (v14 || (sub_26CD3AFDC() & 1) != 0)
        {
          break;
        }
      }

      v11 += 24;
      if (!--v9)
      {
        goto LABEL_3;
      }
    }

    v15 = v16;
  }

  else
  {
    v15 = 0;
    v10 = 0;
LABEL_15:
    v13 = 0;
    v12 = 0;
  }

  *a1 = v15;
  a1[1] = v10;
  a1[2] = v3;
  a1[3] = v13;
  a1[4] = v12;
}

uint64_t sub_26CC54C48()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1))
  {
    if (xmmword_280BBACE0 == 22100 && *(&xmmword_280BBACE0 + 1) == 0xE200000000000000)
    {
      result = 1;
    }

    else
    {
      result = sub_26CD3AFDC();
    }
  }

  else
  {
    result = 0;
  }

  byte_2804D1490 = result & 1;
  return result;
}

unint64_t sub_26CC54CF4()
{
  result = qword_2804BC318;
  if (!qword_2804BC318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC320, qword_26CD3FE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC318);
  }

  return result;
}

uint64_t sub_26CC54D58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368769;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x696B726F7774654ELL;
    }

    else
    {
      v4 = 0x61467374726F7053;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xEF73657469726F76;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465646465626D45;
    }

    else
    {
      v4 = 7368769;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x696B726F7774654ELL;
  v8 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v7 = 0x61467374726F7053;
    v8 = 0xEF73657469726F76;
  }

  if (a2)
  {
    v2 = 0x6465646465626D45;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CC54EB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736569766F4DLL;
  v3 = 0x7463697274736572;
  v4 = a1;
  v5 = 0xEC00000073707041;
  v6 = 0x696D694C73707061;
  if (a1 == 5)
  {
    v6 = 0x7463697274736572;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  v7 = 0xEF73776F68535654;
  v8 = 0x4C73776F68537674;
  if (a1 == 3)
  {
    v8 = 0x7463697274736572;
  }

  else
  {
    v7 = 0xEC00000074696D69;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000010;
  v10 = 0x800000026CD4BB60;
  v11 = 0x694C736569766F6DLL;
  v12 = 0xEB0000000074696DLL;
  if (a1 == 1)
  {
    v11 = 0x7463697274736572;
    v12 = 0xEE00736569766F4DLL;
  }

  if (a1)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000026CD4BB60;
      if (v13 != 0xD000000000000010)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v2 = 0xEB0000000074696DLL;
      if (v13 != 0x694C736569766F6DLL)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEC00000073707041;
        if (v13 != 0x7463697274736572)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE900000000000074;
        if (v13 != 0x696D694C73707061)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0xEF73776F68535654;
      if (v13 != 0x7463697274736572)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0x4C73776F68537674;
    v2 = 0xEC00000074696D69;
  }

  if (v13 != v3)
  {
LABEL_39:
    v15 = sub_26CD3AFDC();
    goto LABEL_40;
  }

LABEL_36:
  if (v14 != v2)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_26CC550E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107369;
    }

    else
    {
      v4 = 0x656E6F687069;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x706F746B736564;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7763041;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F69736976;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107369;
    }

    else
    {
      v9 = 0x656E6F687069;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7763041;
    if (a2 != 3)
    {
      v6 = 0x6E6F69736976;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x706F746B736564;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26CD3AFDC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26CC55248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x657469726F766166;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xED0000726564724FLL;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x736D616574;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7365756761656CLL;
    }

    else
    {
      v3 = 0x676E6974726F7073;
    }

    if (v2 == 3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xEE0073746E657645;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x657469726F766166;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xED0000726564724FLL;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x736D616574)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x7365756761656CLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEE0073746E657645;
    if (v3 != 0x676E6974726F7073)
    {
LABEL_34:
      v7 = sub_26CD3AFDC();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_26CC55404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6569766F4DLL;
    }

    else
    {
      v4 = 0x65646F73697045;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F73616553;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 2003789907;
  }

  else
  {
    v4 = 0x676E6974726F7053;
    v3 = 0xED0000746E657645;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6569766F4DLL;
    }

    else
    {
      v9 = 0x65646F73697045;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 2003789907;
    if (a2 != 3)
    {
      v6 = 0x676E6974726F7053;
      v5 = 0xED0000746E657645;
    }

    if (a2 == 2)
    {
      v7 = 0x6E6F73616553;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26CD3AFDC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26CC55588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5522759;
    }

    else
    {
      v4 = 0x4554454C4544;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x4843544150;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1414745936;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 5526864;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 5522759;
    }

    else
    {
      v9 = 0x4554454C4544;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1414745936;
    if (a2 != 3)
    {
      v6 = 5526864;
      v5 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x4843544150;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26CD3AFDC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26CC556D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x747865746E6F63;
    }

    if (v2)
    {
      v4 = 0x800000026CD4AD30;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000026CD4AD50;
    v3 = 0xD000000000000017;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0x800000026CD4AD70;
    }

    else
    {
      v4 = 0x800000026CD4AD90;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x747865746E6F63;
    }

    if (a2)
    {
      v6 = 0x800000026CD4AD30;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x800000026CD4AD50;
    if (v3 != 0xD000000000000017)
    {
LABEL_37:
      v8 = sub_26CD3AFDC();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 3)
    {
      v6 = 0x800000026CD4AD70;
    }

    else
    {
      v6 = 0x800000026CD4AD90;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_26CC55878()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC55944(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC559FC(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CC55AC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26CC55BE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26CC55AF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F687069;
  v5 = 0xE700000000000000;
  v6 = 0x706F746B736564;
  v7 = 0xE300000000000000;
  v8 = 7763041;
  if (v2 != 3)
  {
    v8 = 0x6E6F69736976;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107369;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_26CC55B90()
{
  result = qword_2804BC328;
  if (!qword_2804BC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC328);
  }

  return result;
}

unint64_t sub_26CC55BE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3AD9C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26CC55C30()
{
  v0 = sub_26CD3A59C();
  v1 = MGGetSInt32Answer();

  if (v1 == 3)
  {
    v2 = 1684107369;
  }

  else
  {
    v2 = 0x656E6F687069;
  }

  if (v1 == 3)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  result = sub_26CC55BE4(v2, v3);
  byte_2804BC330 = result;
  return result;
}

uint64_t static Platform.shared.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280BB9C28 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_2804BC330;
  return result;
}

Swift::String_optional __swiftcall Platform.getPlatform()()
{
  v0 = sub_26CD3A59C();
  v1 = MGGetSInt32Answer();

  if (v1 == 3)
  {
    v2 = 1684107369;
  }

  else
  {
    v2 = 0x656E6F687069;
  }

  if (v1 == 3)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_26CC55E40(char a1)
{
  result = 0x654D6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x736E6F69746361;
      break;
    case 2:
      result = 0x79546E6F69746361;
      break;
    case 3:
      result = 0x52556E6F69746361;
      break;
    case 4:
      result = 2036625250;
      break;
    case 5:
      result = 0x6449646E617262;
      break;
    case 6:
      result = 0x6449656C646E7562;
      break;
    case 7:
      result = 0x79726F6765746163;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x6974617269707865;
      break;
    case 10:
      result = 0x7265746F6F66;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x696669746E656469;
      break;
    case 13:
      result = 0x7461446567616D69;
      break;
    case 14:
      result = 0x6F69737365537369;
      break;
    case 15:
      result = 0x4170704176547369;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x7363697274656DLL;
      break;
    case 18:
      result = 0x656372756F73;
      break;
    case 19:
      result = 0x4449646165726874;
      break;
    case 20:
      result = 0x656C746974;
      break;
    case 21:
      result = 1701869940;
      break;
    case 22:
      result = 0x6F666E4972657375;
      break;
    case 23:
      result = 0x6E4F72656E6E6162;
      break;
    case 24:
      result = 0x746E656C6973;
      break;
    case 25:
      result = 0x646E756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC56118()
{
  v0 = [objc_opt_self() preferredLanguages];
  v1 = sub_26CD3A7AC();

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v3 = qword_280BBCBE0;
    v4 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC2E6E8();
    *(v5 + 32) = &unk_287DFAA88;
    sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5);

    return 0;
  }

  return v2;
}

uint64_t sub_26CC56294()
{
  result = sub_26CD3A59C();
  qword_2804BC338 = result;
  return result;
}

id static NSNotificationName.networkReachabilityDidChange.getter()
{
  if (qword_2804BB9F8 != -1)
  {
    swift_once();
  }

  v1 = qword_2804BC338;

  return v1;
}

uint64_t sub_26CC5635C(uint64_t a1, uint64_t a2)
{
  sub_26CC200FC(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_26CD3AFCC();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 addNetworkReachableObserver:v9 selector:a2];
  return swift_unknownObjectRelease();
}

uint64_t sub_26CC564C8(uint64_t a1)
{
  sub_26CC200FC(a1, v9);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_26CD3AFCC();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
  }

  [v1 removeNetworkReachableObserver_];
  return swift_unknownObjectRelease();
}

id sub_26CC56624()
{
  type metadata accessor for NetworkReachabilityMonitor();
  swift_allocObject();
  result = sub_26CC56C5C();
  qword_2804BC340 = result;
  return result;
}

uint64_t static NetworkReachabilityMonitor.shared.getter()
{
  if (qword_2804BBA00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CC5671C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26CC56BCC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26CC56750()
{
  v1 = sub_26CD3A49C();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26CD3A4CC();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD3C1E0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000026CD4E1D0;
  *(inited + 48) = sub_26CC56BCC() & 1;
  v8 = sub_26CC32398(inited);
  swift_setDeallocating();
  sub_26CC1B544(inited + 32, &qword_2804BC358, &unk_26CD454D0);
  sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  v9 = sub_26CD3A9DC();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v8;
  aBlock[4] = sub_26CC57A48;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_16;
  v11 = _Block_copy(aBlock);

  sub_26CD3A4AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26CC57A50(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50, MEMORY[0x277D83970]);
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v6, v3, v11);
  _Block_release(v11);

  (*(v15 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v14);
}

void sub_26CC56AD0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_2804BB9F8 != -1)
  {
    swift_once();
  }

  v5 = qword_2804BC338;
  sub_26CCC8088(a2);
  v6 = sub_26CD3A4DC();

  [v4 postNotificationName:v5 object:a1 userInfo:v6];
}

uint64_t sub_26CC56BCC()
{
  LODWORD(v1) = *(v0 + 16);
  if (v1 == 2)
  {
    sub_26CC19A84(v0 + 24, v4);
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    LOBYTE(v1) = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
    *(v0 + 16) = v1 & 1;
  }

  return v1 & 1;
}

id sub_26CC56C5C()
{
  v1 = sub_26CD3A9CC();
  v12 = *(v1 - 8);
  v13 = v1;
  MEMORY[0x28223BE20](v1);
  v11 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26CD3AA5C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26CD3A4CC();
  MEMORY[0x28223BE20](v4 - 8);
  *(v0 + 16) = 2;
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v6 = result;
    *(v0 + 48) = sub_26CC18080(0, &qword_2804BC360, 0x277CEC5B8);
    *(v0 + 56) = &off_287DFEE98;
    *(v0 + 24) = v6;
    v10[1] = sub_26CC18080(0, &qword_2804BC368, 0x277D85C90);
    sub_26CD3A4AC();
    v15[0] = MEMORY[0x277D84F90];
    sub_26CC57A50(&qword_2804BC370, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC378, &unk_26CD40020);
    sub_26CC1DD84(&qword_2804BC380, &qword_2804BC378, &unk_26CD40020, MEMORY[0x277D83970]);
    sub_26CD3AB5C();
    (*(v12 + 104))(v11, *MEMORY[0x277D85268], v13);
    *(v0 + 64) = sub_26CD3AA6C();
    sub_26CC19A84(v0 + 24, v15);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = type metadata accessor for NetworkReachabilityMonitor();
    v14[0] = v0;
    v9 = *(v8 + 8);

    v9(v14, sel_handleNetworkReachabilityDidChange_, v7, v8);
    sub_26CC1B544(v14, &qword_2804BBDA8, &qword_26CD3D5F0);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NetworkReachabilityMonitor.deinit()
{
  sub_26CC19A84(v0 + 24, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v5[3] = type metadata accessor for NetworkReachabilityMonitor();
  v5[0] = v0;
  v3 = *(v2 + 16);

  v3(v5, v1, v2);
  sub_26CC1B544(v5, &qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t NetworkReachabilityMonitor.__deallocating_deinit()
{
  sub_26CC19A84(v0 + 24, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v5[3] = type metadata accessor for NetworkReachabilityMonitor();
  v5[0] = v0;
  v3 = *(v2 + 16);

  v3(v5, v1, v2);
  sub_26CC1B544(v5, &qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_26CC571E0()
{
  v1 = v0;
  v2 = sub_26CD3A49C();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26CD3A4CC();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26CD39DDC();
  if (v8)
  {
    v9 = v8;
    v27 = sub_26CD3A5CC();
    v28 = v10;
    sub_26CD3ABFC();
    if (*(v9 + 16) && (v11 = sub_26CCCA694(&aBlock), (v12 & 1) != 0))
    {
      sub_26CC168C0(*(v9 + 56) + 32 * v11, v29);
      sub_26CC579C4(&aBlock);

      if (swift_dynamicCast())
      {
        v13 = v27;
        v14 = swift_allocObject();
        *(v14 + 16) = v1;
        *(v14 + 24) = v13;
        v34 = sub_26CC57A18;
        v35 = v14;
        aBlock = MEMORY[0x277D85DD0];
        v31 = 1107296256;
        v32 = sub_26CC1DDD0;
        v33 = &block_descriptor_10;
        v15 = _Block_copy(&aBlock);

        sub_26CD3A4AC();
        v29[0] = MEMORY[0x277D84F90];
        sub_26CC57A50(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
        sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50, MEMORY[0x277D83970]);
        goto LABEL_10;
      }
    }

    else
    {

      sub_26CC579C4(&aBlock);
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v16 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v17 = swift_allocObject();
  v23 = xmmword_26CD3C1E0;
  *(v17 + 16) = xmmword_26CD3C1E0;
  aBlock = 0;
  v31 = 0xE000000000000000;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000058, 0x800000026CD4E2A0);
  sub_26CD39DEC();
  sub_26CC57A50(&qword_2804BC348, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
  v18 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v18);

  v19 = v31;
  *(v17 + 32) = aBlock;
  *(v17 + 40) = v19;
  v20 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v21 = swift_allocObject();
  *(v21 + 16) = v23;
  *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v21 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
  *(v21 + 32) = v17;
  sub_26CD3A3DC(v20, &dword_26CC14000, v16, "%@", 2, 2, v21);

  v34 = sub_26CC579BC;
  v35 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_26CC1DDD0;
  v33 = &block_descriptor_1;
  v15 = _Block_copy(&aBlock);

  sub_26CD3A4AC();
  v29[0] = MEMORY[0x277D84F90];
  sub_26CC57A50(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50, MEMORY[0x277D83970]);
LABEL_10:
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v7, v4, v15);
  _Block_release(v15);
  (*(v26 + 8))(v4, v2);
  (*(v24 + 8))(v7, v25);
}

uint64_t sub_26CC5784C(uint64_t a1)
{
  sub_26CC19A84(a1 + 24, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(a1 + 16) = (*(v3 + 24))(v2, v3) & 1;
  sub_26CC56750();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_26CC57A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26CC57AC4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC16C10;

  return v7(a1, a2);
}

uint64_t ContentServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CC57C78()
{
  result = qword_2804BC388;
  if (!qword_2804BC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_26CC57E30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CC57E78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_26CC57EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  v8 = sub_26CD3A59C();
  v9 = [v8 lastPathComponent];

  v10 = sub_26CD3A5CC();
  v12 = v11;

  MEMORY[0x26D6AD060](v10, v12);

  MEMORY[0x26D6AD060](8285, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC58138();
  v13 = sub_26CD3A55C();
  MEMORY[0x26D6AD060](v13);

  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_26CC19E10();
  *(v7 + 32) = 91;
  *(v7 + 40) = 0xE100000000000000;
  sub_26CD3A3CC("%@", 2, 2, &dword_26CC14000, a5, a1, v7);

  return result;
}

uint64_t sub_26CC58054()
{
  sub_26CC1964C();
  result = sub_26CD3AACC();
  qword_2804D1498 = result;
  word_2804D14A0 = 257;
  return result;
}

uint64_t sub_26CC580C0()
{
  sub_26CC1964C();
  result = sub_26CD3AACC();
  qword_280BBCBD0 = result;
  word_280BBCBD8 = 768;
  return result;
}

unint64_t sub_26CC58138()
{
  result = qword_2804BBDB8;
  if (!qword_2804BBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDB8);
  }

  return result;
}

id sub_26CC5819C()
{
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCC98;
  qword_280BBCBE0 = qword_280BBCC98;
  word_280BBCBE8 = word_280BBCCA0;

  return v1;
}

uint64_t sub_26CC5823C()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC58308(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}