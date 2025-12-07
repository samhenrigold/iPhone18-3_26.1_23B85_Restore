uint64_t sub_1C0F0D264()
{
  v1 = v0[272];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[273] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[265];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[275] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0D378;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113F0, v7, 0);
  }
}

uint64_t sub_1C0F0D378()
{
  v1 = *(*v0 + 2176);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0D488, v1, 0);
}

uint64_t sub_1C0F0D488()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0D4F4, v1, 0);
}

uint64_t sub_1C0F0D4F4()
{
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  *(v0 + 2208) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 2112);
    v17 = *(v0 + 2096);
    v4 = *(v0 + 2088);
    v5 = *(v0 + 82) & 1 | 0x20;
    v6 = swift_allocObject();
    *(v0 + 2216) = v6;
    v7 = *(v0 + 1984);
    v8 = *(v0 + 2000);
    *(v0 + 1384) = v7;
    *(v0 + 1400) = v8;
    *(v0 + 1416) = v17;
    *(v0 + 1432) = v3;
    *(v0 + 1440) = v4;
    *(v0 + 1448) = v5;
    *(v6 + 80) = v5;
    *(v6 + 16) = v7;
    *(v6 + 32) = v8;
    v9 = *(v0 + 1432);
    *(v6 + 48) = *(v0 + 1416);
    *(v6 + 64) = v9;
    *(v0 + 2224) = swift_getObjectType();
    v10 = *(v6 + 17);
    v11 = *(v6 + 24);
    *(v0 + 2016) = *(v6 + 16);
    *(v0 + 2017) = v10;
    *(v0 + 2024) = v11;
    v12 = swift_allocObject();
    *(v0 + 2232) = v12;
    swift_weakInit();
    v13 = swift_allocObject();
    *(v0 + 2240) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    *(v0 + 2248) = *(v2 + 40);
    *(v0 + 2256) = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);

    v15 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F0D754, v15, v14);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F0D754()
{
  v1 = *(v0 + 2064);
  (*(v0 + 2248))(v0 + 2016, &unk_1C0F582B0, *(v0 + 2240), *(v0 + 2224), *(v0 + 2208));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11414, v1, 0);
}

uint64_t sub_1C0F0D868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 2080) = a8;
  *(v8 + 2072) = a5;
  *(v8 + 2064) = a4;
  *(v8 + 2056) = a3;
  *(v8 + 2048) = a2;
  v12 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v12;
  *(v8 + 80) = *(a1 + 64);
  v13 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v13;
  ObjectType = swift_getObjectType();
  *(v8 + 81) = a7;
  v15 = *(a8 + 16) == 1;
  v18 = (*(a6 + 24) + **(a6 + 24));
  v16 = swift_task_alloc();
  *(v8 + 2088) = v16;
  *v16 = v8;
  v16[1] = sub_1C0F0D9F4;

  return v18(v8 + 2032, v8 + 81, v15, ObjectType, a6);
}

uint64_t sub_1C0F0D9F4()
{
  v1 = *(*v0 + 2064);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0DB04, v1, 0);
}

uint64_t sub_1C0F0DB04()
{
  v112 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2096) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v26 = (v0 + 1984);
      v27 = *(v0 + 2064);
      v28 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v28;
      v29 = *(v0 + 48);
      v105 = *(v0 + 56);
      *(v0 + 2104) = v29;
      v104 = *(v0 + 64);
      v103 = *(v0 + 72);
      v30 = *(v27 + 112);
      *(v0 + 2112) = v30;
      v31 = *(v27 + 120);
      *(v0 + 2120) = v31;
      v32 = v3 & 1 | 0x20;
      v33 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v105, v104, v103, v33);
      v34 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v34;
      *(v0 + 1056) = v29;
      *(v0 + 1064) = v30;
      *(v0 + 1072) = v31;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v32;
      v35 = *(v0 + 1072);
      v109 = *(v0 + 1056);
      v110 = v35;
      v111 = *(v0 + 1088);
      v36 = *(v0 + 1040);
      v107 = *(v0 + 1024);
      v108 = v36;
      if (v29)
      {
        v37 = 0x8000000817319389;
      }

      else
      {
        v37 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v38 = sub_1C0F26DD8(v37);
      *(v0 + 2128) = v38;
      v39 = v110;
      *(v0 + 984) = v109;
      *(v0 + 1000) = v39;
      *(v0 + 1016) = v111;
      v40 = v108;
      *(v0 + 952) = v107;
      *(v0 + 968) = v40;
      sub_1C0F07308(v0 + 952);
      if (!v38)
      {
        swift_getObjectType();
        v55 = swift_conformsToProtocol2();
        *(v0 + 2216) = v55;
        if (!v55)
        {
          v98 = *(v0 + 2080);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1C0F07308(v98);
          return sub_1C0F50620();
        }

        v56 = v55;
        v57 = *(v0 + 82) & 1 | 0x20;
        v58 = swift_allocObject();
        *(v0 + 2224) = v58;
        v59 = *v26;
        v60 = *(v0 + 2000);
        *(v0 + 1384) = *v26;
        *(v0 + 1400) = v60;
        v61 = *(v0 + 2112);
        v62 = vextq_s8(v61, *(v0 + 2096), 8uLL);
        *(v0 + 1416) = vextq_s8(*(v0 + 2096), v61, 8uLL);
        *(v0 + 1432) = v62;
        *(v0 + 1448) = v57;
        *(v58 + 80) = v57;
        *(v58 + 16) = v59;
        *(v58 + 32) = v60;
        v63 = *(v0 + 1432);
        *(v58 + 48) = *(v0 + 1416);
        *(v58 + 64) = v63;
        *(v0 + 2232) = swift_getObjectType();
        v64 = *(v58 + 17);
        v65 = *(v58 + 24);
        *(v0 + 2016) = *(v58 + 16);
        *(v0 + 2017) = v64;
        *(v0 + 2024) = v65;
        v66 = swift_allocObject();
        *(v0 + 2240) = v66;
        swift_weakInit();
        v67 = swift_allocObject();
        *(v0 + 2248) = v67;
        *(v67 + 16) = v66;
        *(v67 + 24) = v58;
        *(v0 + 2256) = *(v56 + 40);
        *(v0 + 2264) = (v56 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);

        v68 = sub_1C0F502B0();
        v70 = v69;
        v71 = sub_1C0F0EC2C;
        v24 = v68;
        v72 = v70;
        goto LABEL_28;
      }

      v24 = *(*(v0 + 2064) + 168);
      *(v0 + 2184) = v24;
      v25 = sub_1C0F0E464;
LABEL_27:
      v71 = v25;
      v72 = 0;
LABEL_28:

      return MEMORY[0x1EEE6DFA0](v71, v24, v72);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v107) = *(v0 + 16);
      BYTE1(v107) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v107, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2272) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2280) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2288) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v109 = *(v0 + 624);
        v110 = v18;
        v111 = 0x80;
        v19 = *(v0 + 608);
        v107 = *(v0 + 592);
        v108 = v19;
        if (v10)
        {
          v20 = 0x8000000817319389;
        }

        else
        {
          v20 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v21 = sub_1C0F26DD8(v20);
        *(v0 + 2296) = v21;
        v22 = v110;
        *(v0 + 552) = v109;
        *(v0 + 568) = v22;
        *(v0 + 584) = v111;
        v23 = v108;
        *(v0 + 520) = v107;
        *(v0 + 536) = v23;
        sub_1C0F07308(v0 + 520);
        if (v21)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2304) = v24;
          v25 = sub_1C0F0EDAC;
          goto LABEL_27;
        }

        v88 = v0 + 808;
        swift_unknownObjectRelease();
        v89 = *(v0 + 2288);
        v90 = *(v0 + 2272);
        v99 = *(v0 + 1936);
        v92 = 0x80;
        v93 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v99;
        v94 = 864;
        v95 = 856;
        v96 = 848;
        v97 = 840;
      }

      else
      {
        v73 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v73;
        v74 = *(v0 + 48);
        v75 = *(v0 + 56);
        *(v0 + 2320) = v74;
        v76 = *(v0 + 64);
        v77 = *(v0 + 72);
        v78 = *(v4 + 112);
        *(v0 + 2328) = v78;
        v79 = *(v4 + 120);
        *(v0 + 2336) = v79;
        v80 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v75, v76, v77, v80);
        v81 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v81;
        *(v0 + 1128) = v74;
        *(v0 + 1136) = v78;
        *(v0 + 1144) = v79;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v82 = *(v0 + 1144);
        v109 = *(v0 + 1128);
        v110 = v82;
        v111 = *(v0 + 1160);
        v83 = *(v0 + 1112);
        v107 = *(v0 + 1096);
        v108 = v83;
        if (v74)
        {
          v84 = 0x8000000817319389;
        }

        else
        {
          v84 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v85 = sub_1C0F26DD8(v84);
        *(v0 + 2344) = v85;
        v86 = v107;
        *(v0 + 104) = v108;
        v87 = v110;
        *(v0 + 120) = v109;
        *(v0 + 136) = v87;
        *(v0 + 152) = v111;
        *(v0 + 88) = v86;
        sub_1C0F07308(v0 + 88);
        if (v85)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2352) = v24;
          v25 = sub_1C0F0EEC4;
          goto LABEL_27;
        }

        v88 = v0 + 376;
        swift_unknownObjectRelease();
        v89 = *(v0 + 2336);
        v90 = *(v0 + 2320);
        v100 = *(v0 + 1904);
        v92 = 96;
        v93 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v100;
        v94 = 432;
        v95 = 424;
        v96 = 416;
        v97 = 408;
      }
    }

    else
    {
      v41 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v41;
      v42 = *(v0 + 48);
      v106 = *(v0 + 56);
      *(v0 + 2136) = v42;
      v43 = *(v0 + 64);
      v44 = *(v0 + 72);
      v45 = *(v4 + 112);
      *(v0 + 2144) = v45;
      v46 = *(v4 + 120);
      *(v0 + 2152) = v46;
      v47 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v106, v43, v44, v47);
      v48 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v48;
      *(v0 + 1632) = v42;
      *(v0 + 1640) = v45;
      *(v0 + 1648) = v46;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v49 = *(v0 + 1648);
      v109 = *(v0 + 1632);
      v110 = v49;
      v111 = *(v0 + 1664);
      v50 = *(v0 + 1616);
      v107 = *(v0 + 1600);
      v108 = v50;
      if (v42)
      {
        v51 = 0x8000000817319389;
      }

      else
      {
        v51 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v52 = sub_1C0F26DD8(v51);
      *(v0 + 2160) = v52;
      v53 = v110;
      *(v0 + 1560) = v109;
      *(v0 + 1576) = v53;
      *(v0 + 1592) = v111;
      v54 = v108;
      *(v0 + 1528) = v107;
      *(v0 + 1544) = v54;
      sub_1C0F07308(v0 + 1528);
      if (v52)
      {
        v24 = *(*(v0 + 2064) + 168);
        *(v0 + 2168) = v24;
        v25 = sub_1C0F0E34C;
        goto LABEL_27;
      }

      v88 = v0 + 1816;
      swift_unknownObjectRelease();
      v89 = *(v0 + 2152);
      v90 = *(v0 + 2136);
      v91 = *(v0 + 1968);
      v92 = 64;
      v93 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v91;
      v94 = 1872;
      v95 = 1864;
      v96 = 1856;
      v97 = 1848;
    }

    *(v0 + v97) = v90;
    *(v0 + v96) = *(&v90 + 1);
    *(v0 + v95) = v89;
    *(v0 + v94) = 0;
    *(v0 + v93) = v92;
    sub_1C0F07308(v88);
  }

  v101 = *(v0 + 8);

  return v101();
}

uint64_t sub_1C0F0E34C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[272] = Strong;
  if (Strong)
  {
    v2 = v0[270];
    v3 = *(v0[271] + 112);
    v4 = swift_task_alloc();
    v0[275] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0E578;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[271] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F0E794, v6, 0);
  }
}

uint64_t sub_1C0F0E464()
{
  v1 = v0[273];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[274] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[266];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[276] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0E840;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113F8, v7, 0);
  }
}

uint64_t sub_1C0F0E578()
{
  v1 = *(*v0 + 2168);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E688, v1, 0);
}

uint64_t sub_1C0F0E688()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E6F4, v1, 0);
}

uint64_t sub_1C0F0E6F4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 2136);
  v2 = *(v0 + 1968);
  *(v0 + 1816) = *(v0 + 1952);
  *(v0 + 1832) = v2;
  *(v0 + 1848) = v1;
  *(v0 + 1856) = *(v0 + 2144);
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 64;
  sub_1C0F07308(v0 + 1816);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F0E794()
{
  v1 = *(v0 + 2152);
  v5 = *(v0 + 2136);

  swift_unknownObjectRelease();
  v2 = *(v0 + 1968);
  *(v0 + 160) = *(v0 + 1952);
  *(v0 + 176) = v2;
  *(v0 + 192) = v5;
  *(v0 + 208) = v1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 64;
  sub_1C0F07308(v0 + 160);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F0E840()
{
  v1 = *(*v0 + 2184);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E950, v1, 0);
}

uint64_t sub_1C0F0E950()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0E9BC, v1, 0);
}

uint64_t sub_1C0F0E9BC()
{
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  *(v0 + 2216) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 2120);
    v18 = *(v0 + 2104);
    v4 = *(v0 + 2096);
    v5 = *(v0 + 82) & 1 | 0x20;
    v6 = swift_allocObject();
    *(v0 + 2224) = v6;
    v7 = *(v0 + 1984);
    v8 = *(v0 + 2000);
    *(v0 + 1384) = v7;
    *(v0 + 1400) = v8;
    *(v0 + 1416) = v18;
    *(v0 + 1432) = v3;
    *(v0 + 1440) = v4;
    *(v0 + 1448) = v5;
    *(v6 + 80) = v5;
    *(v6 + 16) = v7;
    *(v6 + 32) = v8;
    v9 = *(v0 + 1432);
    *(v6 + 48) = *(v0 + 1416);
    *(v6 + 64) = v9;
    *(v0 + 2232) = swift_getObjectType();
    v10 = *(v6 + 17);
    v11 = *(v6 + 24);
    *(v0 + 2016) = *(v6 + 16);
    *(v0 + 2017) = v10;
    *(v0 + 2024) = v11;
    v12 = swift_allocObject();
    *(v0 + 2240) = v12;
    swift_weakInit();
    v13 = swift_allocObject();
    *(v0 + 2248) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    *(v0 + 2256) = *(v2 + 40);
    *(v0 + 2264) = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);

    v15 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F0EC2C, v15, v14);
  }

  else
  {
    v16 = *(v0 + 2080);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1C0F07308(v16);
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F0EC2C()
{
  v1 = *(v0 + 2064);
  (*(v0 + 2256))(v0 + 2016, &unk_1C0F582A8, *(v0 + 2248), *(v0 + 2232), *(v0 + 2216));

  return MEMORY[0x1EEE6DFA0](sub_1C0F0ECE4, v1, 0);
}

uint64_t sub_1C0F0ECE4()
{
  v1 = *(v0 + 2120);
  v6 = *(v0 + 2104);
  v2 = *(v0 + 82);
  v3 = *(v0 + 2096);

  swift_unknownObjectRelease();
  *(v0 + 1312) = *(v0 + 1984);
  *(v0 + 1328) = *(v0 + 2000);
  *(v0 + 1344) = v6;
  *(v0 + 1360) = v1;
  *(v0 + 1368) = v3;
  *(v0 + 1376) = v2 & 1 | 0x20;
  sub_1C0F07308(v0 + 1312);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F0EDAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[289] = Strong;
  if (Strong)
  {
    v2 = v0[287];
    v3 = *(v0[288] + 112);
    v4 = swift_task_alloc();
    v0[296] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0EFDC;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[288] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F0F1FC, v6, 0);
  }
}

uint64_t sub_1C0F0EEC4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[295] = Strong;
  if (Strong)
  {
    v2 = v0[293];
    v3 = *(v0[294] + 112);
    v4 = swift_task_alloc();
    v0[297] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0F2A8;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[294] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F0F4C4, v6, 0);
  }
}

uint64_t sub_1C0F0EFDC()
{
  v1 = *(*v0 + 2304);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F0EC, v1, 0);
}

uint64_t sub_1C0F0F0EC()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F158, v1, 0);
}

uint64_t sub_1C0F0F158()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 2288);
  v2 = *(v0 + 1936);
  *(v0 + 808) = *(v0 + 1920);
  *(v0 + 824) = v2;
  *(v0 + 840) = *(v0 + 2272);
  *(v0 + 856) = v1;
  *(v0 + 864) = 0;
  *(v0 + 872) = 0x80;
  sub_1C0F07308(v0 + 808);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F0F1FC()
{
  v1 = *(v0 + 2288);
  v5 = *(v0 + 2272);

  swift_unknownObjectRelease();
  v2 = *(v0 + 1936);
  *(v0 + 880) = *(v0 + 1920);
  *(v0 + 896) = v2;
  *(v0 + 912) = v5;
  *(v0 + 928) = v1;
  *(v0 + 936) = 0;
  *(v0 + 944) = 0x80;
  sub_1C0F07308(v0 + 880);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F0F2A8()
{
  v1 = *(*v0 + 2352);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F3B8, v1, 0);
}

uint64_t sub_1C0F0F3B8()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F424, v1, 0);
}

uint64_t sub_1C0F0F424()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 2336);
  v2 = *(v0 + 1904);
  *(v0 + 376) = *(v0 + 1888);
  *(v0 + 392) = v2;
  *(v0 + 408) = *(v0 + 2320);
  *(v0 + 424) = v1;
  *(v0 + 432) = 0;
  *(v0 + 440) = 96;
  sub_1C0F07308(v0 + 376);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F0F4C4()
{
  v1 = *(v0 + 2336);
  v5 = *(v0 + 2320);

  swift_unknownObjectRelease();
  v2 = *(v0 + 1904);
  *(v0 + 448) = *(v0 + 1888);
  *(v0 + 464) = v2;
  *(v0 + 480) = v5;
  *(v0 + 496) = v1;
  *(v0 + 504) = 0;
  *(v0 + 512) = 96;
  sub_1C0F07308(v0 + 448);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F0F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 2072) = a5;
  *(v7 + 2064) = a4;
  *(v7 + 2056) = a3;
  *(v7 + 2048) = a2;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  ObjectType = swift_getObjectType();
  *(v7 + 81) = a7;
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v7 + 2080) = v13;
  *v13 = v7;
  v13[1] = sub_1C0F0F6D8;

  return v15(v7 + 2032, v7 + 81, ObjectType, a6);
}

uint64_t sub_1C0F0F6D8()
{
  v1 = *(*v0 + 2064);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0F7E8, v1, 0);
}

uint64_t sub_1C0F0F7E8()
{
  v112 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2088) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v26 = (v0 + 1984);
      v27 = *(v0 + 2064);
      v28 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v28;
      v30 = *(v0 + 48);
      v29 = *(v0 + 56);
      *(v0 + 2096) = v30;
      v104 = *(v0 + 64);
      v105 = v29;
      v103 = *(v0 + 72);
      v31 = *(v27 + 112);
      *(v0 + 2104) = v31;
      v32 = *(v27 + 120);
      *(v0 + 2112) = v32;
      v33 = v3 & 1 | 0x20;
      v34 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v105, v104, v103, v34);
      v35 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v35;
      *(v0 + 1056) = v30;
      *(v0 + 1064) = v31;
      *(v0 + 1072) = v32;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v33;
      v36 = *(v0 + 1072);
      v109 = *(v0 + 1056);
      v110 = v36;
      v111 = *(v0 + 1088);
      v37 = *(v0 + 1040);
      v107 = *(v0 + 1024);
      v108 = v37;
      if (v30)
      {
        v38 = 0x8000000817319389;
      }

      else
      {
        v38 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v39 = sub_1C0F26DD8(v38);
      *(v0 + 2120) = v39;
      v40 = v110;
      *(v0 + 984) = v109;
      *(v0 + 1000) = v40;
      *(v0 + 1016) = v111;
      v41 = v108;
      *(v0 + 952) = v107;
      *(v0 + 968) = v41;
      sub_1C0F07308(v0 + 952);
      if (!v39)
      {
        swift_getObjectType();
        v56 = swift_conformsToProtocol2();
        *(v0 + 2208) = v56;
        if (!v56)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return sub_1C0F50620();
        }

        v57 = v56;
        v58 = *(v0 + 82) & 1 | 0x20;
        v59 = swift_allocObject();
        *(v0 + 2216) = v59;
        v60 = *v26;
        v61 = *(v0 + 2000);
        *(v0 + 1384) = *v26;
        *(v0 + 1400) = v61;
        v62 = *(v0 + 2088);
        v63 = *(v0 + 2104);
        *(v0 + 1416) = vextq_s8(v62, v63, 8uLL);
        *(v0 + 1432) = vextq_s8(v63, v62, 8uLL);
        *(v0 + 1448) = v58;
        *(v59 + 80) = v58;
        *(v59 + 16) = v60;
        *(v59 + 32) = v61;
        v64 = *(v0 + 1432);
        *(v59 + 48) = *(v0 + 1416);
        *(v59 + 64) = v64;
        *(v0 + 2224) = swift_getObjectType();
        v65 = *(v59 + 17);
        v66 = *(v59 + 24);
        *(v0 + 2016) = *(v59 + 16);
        *(v0 + 2017) = v65;
        *(v0 + 2024) = v66;
        v67 = swift_allocObject();
        *(v0 + 2232) = v67;
        swift_weakInit();
        v68 = swift_allocObject();
        *(v0 + 2240) = v68;
        *(v68 + 16) = v67;
        *(v68 + 24) = v59;
        *(v0 + 2248) = *(v57 + 40);
        *(v0 + 2256) = (v57 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);

        v69 = sub_1C0F502B0();
        v71 = v70;
        v72 = sub_1C0F108F4;
        v24 = v69;
        v73 = v71;
        goto LABEL_28;
      }

      v24 = *(*(v0 + 2064) + 168);
      *(v0 + 2176) = v24;
      v25 = sub_1C0F1013C;
LABEL_27:
      v72 = v25;
      v73 = 0;
LABEL_28:

      return MEMORY[0x1EEE6DFA0](v72, v24, v73);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v107) = *(v0 + 16);
      BYTE1(v107) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v107, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2264) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2272) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2280) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v109 = *(v0 + 624);
        v110 = v18;
        v111 = 0x80;
        v19 = *(v0 + 608);
        v107 = *(v0 + 592);
        v108 = v19;
        if (v10)
        {
          v20 = 0x8000000817319389;
        }

        else
        {
          v20 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v21 = sub_1C0F26DD8(v20);
        *(v0 + 2288) = v21;
        v22 = v110;
        *(v0 + 552) = v109;
        *(v0 + 568) = v22;
        *(v0 + 584) = v111;
        v23 = v108;
        *(v0 + 520) = v107;
        *(v0 + 536) = v23;
        sub_1C0F07308(v0 + 520);
        if (v21)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2296) = v24;
          v25 = sub_1C0F10A70;
          goto LABEL_27;
        }

        v89 = v0 + 808;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2280);
        v91 = *(v0 + 2264);
        v99 = *(v0 + 1936);
        v93 = 0x80;
        v94 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v99;
        v95 = 864;
        v96 = 856;
        v97 = 848;
        v98 = 840;
      }

      else
      {
        v74 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v74;
        v75 = *(v0 + 48);
        v76 = *(v0 + 56);
        *(v0 + 2312) = v75;
        v77 = *(v0 + 64);
        v78 = *(v0 + 72);
        v79 = *(v4 + 112);
        *(v0 + 2320) = v79;
        v80 = *(v4 + 120);
        *(v0 + 2328) = v80;
        v81 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v76, v77, v78, v81);
        v82 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v82;
        *(v0 + 1128) = v75;
        *(v0 + 1136) = v79;
        *(v0 + 1144) = v80;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v83 = *(v0 + 1144);
        v109 = *(v0 + 1128);
        v110 = v83;
        v111 = *(v0 + 1160);
        v84 = *(v0 + 1112);
        v107 = *(v0 + 1096);
        v108 = v84;
        if (v75)
        {
          v85 = 0x8000000817319389;
        }

        else
        {
          v85 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v86 = sub_1C0F26DD8(v85);
        *(v0 + 2336) = v86;
        v87 = v107;
        *(v0 + 104) = v108;
        v88 = v110;
        *(v0 + 120) = v109;
        *(v0 + 136) = v88;
        *(v0 + 152) = v111;
        *(v0 + 88) = v87;
        sub_1C0F07308(v0 + 88);
        if (v86)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2344) = v24;
          v25 = sub_1C0F10B88;
          goto LABEL_27;
        }

        v89 = v0 + 376;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2328);
        v91 = *(v0 + 2312);
        v100 = *(v0 + 1904);
        v93 = 96;
        v94 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v100;
        v95 = 432;
        v96 = 424;
        v97 = 416;
        v98 = 408;
      }
    }

    else
    {
      v42 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v42;
      v43 = *(v0 + 48);
      v106 = *(v0 + 56);
      *(v0 + 2128) = v43;
      v44 = *(v0 + 64);
      v45 = *(v0 + 72);
      v46 = *(v4 + 112);
      *(v0 + 2136) = v46;
      v47 = *(v4 + 120);
      *(v0 + 2144) = v47;
      v48 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v106, v44, v45, v48);
      v49 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v49;
      *(v0 + 1632) = v43;
      *(v0 + 1640) = v46;
      *(v0 + 1648) = v47;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v50 = *(v0 + 1648);
      v109 = *(v0 + 1632);
      v110 = v50;
      v111 = *(v0 + 1664);
      v51 = *(v0 + 1616);
      v107 = *(v0 + 1600);
      v108 = v51;
      if (v43)
      {
        v52 = 0x8000000817319389;
      }

      else
      {
        v52 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v53 = sub_1C0F26DD8(v52);
      *(v0 + 2152) = v53;
      v54 = v110;
      *(v0 + 1560) = v109;
      *(v0 + 1576) = v54;
      *(v0 + 1592) = v111;
      v55 = v108;
      *(v0 + 1528) = v107;
      *(v0 + 1544) = v55;
      sub_1C0F07308(v0 + 1528);
      if (v53)
      {
        v24 = *(*(v0 + 2064) + 168);
        *(v0 + 2160) = v24;
        v25 = sub_1C0F10024;
        goto LABEL_27;
      }

      v89 = v0 + 1816;
      swift_unknownObjectRelease();
      v90 = *(v0 + 2144);
      v91 = *(v0 + 2128);
      v92 = *(v0 + 1968);
      v93 = 64;
      v94 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v92;
      v95 = 1872;
      v96 = 1864;
      v97 = 1856;
      v98 = 1848;
    }

    *(v0 + v98) = v91;
    *(v0 + v97) = *(&v91 + 1);
    *(v0 + v96) = v90;
    *(v0 + v95) = 0;
    *(v0 + v94) = v93;
    sub_1C0F07308(v89);
  }

  v101 = *(v0 + 8);

  return v101();
}

uint64_t sub_1C0F10024()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[271] = Strong;
  if (Strong)
  {
    v2 = v0[269];
    v3 = *(v0[270] + 112);
    v4 = swift_task_alloc();
    v0[274] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F10250;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[270] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F10470, v6, 0);
  }
}

uint64_t sub_1C0F1013C()
{
  v1 = v0[272];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[273] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[265];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[275] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F10518;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113F4, v7, 0);
  }
}

uint64_t sub_1C0F10250()
{
  v1 = *(*v0 + 2160);

  return MEMORY[0x1EEE6DFA0](sub_1C0F10360, v1, 0);
}

uint64_t sub_1C0F10360()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F103CC, v1, 0);
}

uint64_t sub_1C0F103CC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 2144);
  v2 = *(v0 + 1968);
  *(v0 + 1816) = *(v0 + 1952);
  *(v0 + 1832) = v2;
  *(v0 + 1848) = *(v0 + 2128);
  *(v0 + 1864) = v1;
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 64;
  sub_1C0F07308(v0 + 1816);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F10470()
{
  v1 = *(v0 + 2144);
  v5 = *(v0 + 2128);

  swift_unknownObjectRelease();
  v2 = *(v0 + 1968);
  *(v0 + 160) = *(v0 + 1952);
  *(v0 + 176) = v2;
  *(v0 + 192) = v5;
  *(v0 + 208) = v1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 64;
  sub_1C0F07308(v0 + 160);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F10518()
{
  v1 = *(*v0 + 2176);

  return MEMORY[0x1EEE6DFA0](sub_1C0F10628, v1, 0);
}

uint64_t sub_1C0F10628()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F10694, v1, 0);
}

uint64_t sub_1C0F10694()
{
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  *(v0 + 2208) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 2112);
    v17 = *(v0 + 2096);
    v4 = *(v0 + 2088);
    v5 = *(v0 + 82) & 1 | 0x20;
    v6 = swift_allocObject();
    *(v0 + 2216) = v6;
    v7 = *(v0 + 1984);
    v8 = *(v0 + 2000);
    *(v0 + 1384) = v7;
    *(v0 + 1400) = v8;
    *(v0 + 1416) = v17;
    *(v0 + 1432) = v3;
    *(v0 + 1440) = v4;
    *(v0 + 1448) = v5;
    *(v6 + 80) = v5;
    *(v6 + 16) = v7;
    *(v6 + 32) = v8;
    v9 = *(v0 + 1432);
    *(v6 + 48) = *(v0 + 1416);
    *(v6 + 64) = v9;
    *(v0 + 2224) = swift_getObjectType();
    v10 = *(v6 + 17);
    v11 = *(v6 + 24);
    *(v0 + 2016) = *(v6 + 16);
    *(v0 + 2017) = v10;
    *(v0 + 2024) = v11;
    v12 = swift_allocObject();
    *(v0 + 2232) = v12;
    swift_weakInit();
    v13 = swift_allocObject();
    *(v0 + 2240) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    *(v0 + 2248) = *(v2 + 40);
    *(v0 + 2256) = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);

    v15 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F108F4, v15, v14);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F108F4()
{
  v1 = *(v0 + 2064);
  (*(v0 + 2248))(v0 + 2016, &unk_1C0F582A0, *(v0 + 2240), *(v0 + 2224), *(v0 + 2208));

  return MEMORY[0x1EEE6DFA0](sub_1C0F109AC, v1, 0);
}

uint64_t sub_1C0F109AC()
{
  v1 = *(v0 + 2112);
  v6 = *(v0 + 2096);
  v2 = *(v0 + 82);
  v3 = *(v0 + 2088);

  swift_unknownObjectRelease();
  *(v0 + 1312) = *(v0 + 1984);
  *(v0 + 1328) = *(v0 + 2000);
  *(v0 + 1344) = v6;
  *(v0 + 1360) = v1;
  *(v0 + 1368) = v3;
  *(v0 + 1376) = v2 & 1 | 0x20;
  sub_1C0F07308(v0 + 1312);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C0F10A70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[288] = Strong;
  if (Strong)
  {
    v2 = v0[286];
    v3 = *(v0[287] + 112);
    v4 = swift_task_alloc();
    v0[295] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F10CA0;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[287] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F10EBC, v6, 0);
  }
}

uint64_t sub_1C0F10B88()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[294] = Strong;
  if (Strong)
  {
    v2 = v0[292];
    v3 = *(v0[293] + 112);
    v4 = swift_task_alloc();
    v0[296] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F10F6C;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[293] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11188, v6, 0);
  }
}

uint64_t sub_1C0F10CA0()
{
  v1 = *(*v0 + 2296);

  return MEMORY[0x1EEE6DFA0](sub_1C0F10DB0, v1, 0);
}

uint64_t sub_1C0F10DB0()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F10E1C, v1, 0);
}

uint64_t sub_1C0F10E1C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 2264);
  v2 = *(v0 + 1936);
  *(v0 + 808) = *(v0 + 1920);
  *(v0 + 824) = v2;
  *(v0 + 840) = v1;
  *(v0 + 848) = *(v0 + 2272);
  *(v0 + 864) = 0;
  *(v0 + 872) = 0x80;
  sub_1C0F07308(v0 + 808);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F10EBC()
{
  v1 = *(v0 + 2280);
  v5 = *(v0 + 2264);

  swift_unknownObjectRelease();
  v2 = *(v0 + 1936);
  *(v0 + 880) = *(v0 + 1920);
  *(v0 + 896) = v2;
  *(v0 + 912) = v5;
  *(v0 + 928) = v1;
  *(v0 + 936) = 0;
  *(v0 + 944) = 0x80;
  sub_1C0F07308(v0 + 880);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F10F6C()
{
  v1 = *(*v0 + 2344);

  return MEMORY[0x1EEE6DFA0](sub_1C0F1107C, v1, 0);
}

uint64_t sub_1C0F1107C()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F110E8, v1, 0);
}

uint64_t sub_1C0F110E8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 2312);
  v2 = *(v0 + 1904);
  *(v0 + 376) = *(v0 + 1888);
  *(v0 + 392) = v2;
  *(v0 + 408) = v1;
  *(v0 + 416) = *(v0 + 2320);
  *(v0 + 432) = 0;
  *(v0 + 440) = 96;
  sub_1C0F07308(v0 + 376);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F11188()
{
  v1 = *(v0 + 2328);
  v5 = *(v0 + 2312);

  swift_unknownObjectRelease();
  v2 = *(v0 + 1904);
  *(v0 + 448) = *(v0 + 1888);
  *(v0 + 464) = v2;
  *(v0 + 480) = v5;
  *(v0 + 496) = v1;
  *(v0 + 504) = 0;
  *(v0 + 512) = 96;
  sub_1C0F07308(v0 + 448);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0F11234()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C0EEFCF4;

  return sub_1C0F0AA70(v2, v3);
}

uint64_t sub_1C0F112CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C0EEF864;

  return sub_1C0F0AA70(v2, v3);
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0F113A4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 <= 1)
  {
    if (a4 >> 5)
    {
      if (v4 == 1)
      {
      }
    }

    else
    {
      return sub_1C0F072F4(result, a2);
    }
  }

  else if (v4 == 2 || v4 == 3 || v4 == 4)
  {
  }

  return result;
}

unint64_t sub_1C0F11438(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x70704165646973;
    v7 = 0x726F685369726973;
    if (a1 != 10)
    {
      v7 = 1801675106;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6353657461746F72;
    v9 = 0x6C6C6F726373;
    if (a1 != 7)
    {
      v9 = 0x6E49657275636573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D6F74737563;
    v2 = 0xD000000000000017;
    v3 = 1701998445;
    if (a1 != 4)
    {
      v3 = 1852141679;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656369766564;
    if (a1 != 1)
    {
      v4 = 0x7365727574736567;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C0F115BC(uint64_t a1)
{
  v2 = sub_1C0F127B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F115F8(uint64_t a1)
{
  v2 = sub_1C0F127B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1163C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F160FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F11670(uint64_t a1)
{
  v2 = sub_1C0F12760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F116AC(uint64_t a1)
{
  v2 = sub_1C0F12760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F116E8(uint64_t a1)
{
  v2 = sub_1C0F12B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11724(uint64_t a1)
{
  v2 = sub_1C0F12B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11760(uint64_t a1)
{
  v2 = sub_1C0F12AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1179C(uint64_t a1)
{
  v2 = sub_1C0F12AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F117D8(uint64_t a1)
{
  v2 = sub_1C0F12AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11814(uint64_t a1)
{
  v2 = sub_1C0F12AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11850(uint64_t a1)
{
  v2 = sub_1C0F12A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1188C(uint64_t a1)
{
  v2 = sub_1C0F12A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F118C8(uint64_t a1)
{
  v2 = sub_1C0F12A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11904(uint64_t a1)
{
  v2 = sub_1C0F12A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11940(uint64_t a1)
{
  v2 = sub_1C0F129AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1197C(uint64_t a1)
{
  v2 = sub_1C0F129AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F119B8(uint64_t a1)
{
  v2 = sub_1C0F12958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F119F4(uint64_t a1)
{
  v2 = sub_1C0F12958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11A30(uint64_t a1)
{
  v2 = sub_1C0F12904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11A6C(uint64_t a1)
{
  v2 = sub_1C0F12904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11AA8(uint64_t a1)
{
  v2 = sub_1C0F128B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11AE4(uint64_t a1)
{
  v2 = sub_1C0F128B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11B20(uint64_t a1)
{
  v2 = sub_1C0F1285C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11B5C(uint64_t a1)
{
  v2 = sub_1C0F1285C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F11B98(uint64_t a1)
{
  v2 = sub_1C0F12808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F11BD4(uint64_t a1)
{
  v2 = sub_1C0F12808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.MenuAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B38, &qword_1C0F582D0);
  v111 = *(v3 - 8);
  v112 = v3;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v110 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B40, &qword_1C0F582D8);
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v107 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B48, &qword_1C0F582E0);
  v105 = *(v13 - 8);
  v106 = v13;
  MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v104 = &v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B50, &qword_1C0F582E8);
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x1EEE9AC00](v18, v19, v20, v21);
  v101 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B58, &qword_1C0F582F0);
  v99 = *(v23 - 8);
  v100 = v23;
  MEMORY[0x1EEE9AC00](v23, v24, v25, v26);
  v98 = &v80 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B60, &qword_1C0F582F8);
  v96 = *(v28 - 8);
  v97 = v28;
  MEMORY[0x1EEE9AC00](v28, v29, v30, v31);
  v95 = &v80 - v32;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B68, &qword_1C0F58300);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v33, v34, v35);
  v92 = &v80 - v36;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B70, &qword_1C0F58308);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v37, v38, v39);
  v89 = &v80 - v40;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B78, &qword_1C0F58310);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v41, v42, v43);
  v86 = &v80 - v44;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B80, &qword_1C0F58318);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v45, v46, v47);
  v83 = &v80 - v48;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B88, &qword_1C0F58320);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v49, v50, v51);
  v53 = &v80 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B90, &qword_1C0F58328);
  v80 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v55, v56, v57);
  v59 = &v80 - v58;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B98, &qword_1C0F58330);
  v60 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v61, v62, v63);
  v65 = &v80 - v64;
  v66 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F12760();
  v113 = v65;
  sub_1C0F508B0();
  v67 = (v60 + 8);
  if (v66 > 5)
  {
    if (v66 > 8)
    {
      if (v66 == 9)
      {
        v124 = 9;
        sub_1C0F1285C();
        v71 = v104;
        v73 = v113;
        v72 = v114;
        sub_1C0F50700();
        v75 = v105;
        v74 = v106;
      }

      else if (v66 == 10)
      {
        v125 = 10;
        sub_1C0F12808();
        v71 = v107;
        v73 = v113;
        v72 = v114;
        sub_1C0F50700();
        v75 = v108;
        v74 = v109;
      }

      else
      {
        v126 = 11;
        sub_1C0F127B4();
        v71 = v110;
        v73 = v113;
        v72 = v114;
        sub_1C0F50700();
        v75 = v111;
        v74 = v112;
      }
    }

    else if (v66 == 6)
    {
      v121 = 6;
      sub_1C0F12958();
      v71 = v95;
      v73 = v113;
      v72 = v114;
      sub_1C0F50700();
      v75 = v96;
      v74 = v97;
    }

    else if (v66 == 7)
    {
      v122 = 7;
      sub_1C0F12904();
      v71 = v98;
      v73 = v113;
      v72 = v114;
      sub_1C0F50700();
      v75 = v99;
      v74 = v100;
    }

    else
    {
      v123 = 8;
      sub_1C0F128B0();
      v71 = v101;
      v73 = v113;
      v72 = v114;
      sub_1C0F50700();
      v75 = v102;
      v74 = v103;
    }

    (*(v75 + 8))(v71, v74);
  }

  else if (v66 > 2)
  {
    if (v66 == 3)
    {
      v118 = 3;
      sub_1C0F12A54();
      v77 = v86;
      v73 = v113;
      v72 = v114;
      sub_1C0F50700();
      (*(v87 + 8))(v77, v88);
    }

    else if (v66 == 4)
    {
      v119 = 4;
      sub_1C0F12A00();
      v76 = v89;
      v73 = v113;
      v72 = v114;
      sub_1C0F50700();
      (*(v90 + 8))(v76, v91);
    }

    else
    {
      v120 = 5;
      sub_1C0F129AC();
      v79 = v92;
      v73 = v113;
      v72 = v114;
      sub_1C0F50700();
      (*(v93 + 8))(v79, v94);
    }
  }

  else if (v66)
  {
    if (v66 == 1)
    {
      v116 = 1;
      sub_1C0F12AFC();
      v68 = v113;
      v69 = v114;
      sub_1C0F50700();
      (*(v81 + 8))(v53, v82);
      return (*v67)(v68, v69);
    }

    v117 = 2;
    sub_1C0F12AA8();
    v78 = v83;
    v73 = v113;
    v72 = v114;
    sub_1C0F50700();
    (*(v84 + 8))(v78, v85);
  }

  else
  {
    v115 = 0;
    sub_1C0F12B50();
    v73 = v113;
    v72 = v114;
    sub_1C0F50700();
    (*(v80 + 8))(v59, v54);
  }

  return (*v67)(v73, v72);
}

unint64_t sub_1C0F12760()
{
  result = qword_1EBE77BA0;
  if (!qword_1EBE77BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BA0);
  }

  return result;
}

unint64_t sub_1C0F127B4()
{
  result = qword_1EBE77BA8;
  if (!qword_1EBE77BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BA8);
  }

  return result;
}

unint64_t sub_1C0F12808()
{
  result = qword_1EBE77BB0;
  if (!qword_1EBE77BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BB0);
  }

  return result;
}

unint64_t sub_1C0F1285C()
{
  result = qword_1EBE77BB8;
  if (!qword_1EBE77BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BB8);
  }

  return result;
}

unint64_t sub_1C0F128B0()
{
  result = qword_1EBE77BC0;
  if (!qword_1EBE77BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BC0);
  }

  return result;
}

unint64_t sub_1C0F12904()
{
  result = qword_1EBE77BC8;
  if (!qword_1EBE77BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BC8);
  }

  return result;
}

unint64_t sub_1C0F12958()
{
  result = qword_1EBE77BD0;
  if (!qword_1EBE77BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BD0);
  }

  return result;
}

unint64_t sub_1C0F129AC()
{
  result = qword_1EBE77BD8;
  if (!qword_1EBE77BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BD8);
  }

  return result;
}

unint64_t sub_1C0F12A00()
{
  result = qword_1EBE77BE0;
  if (!qword_1EBE77BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BE0);
  }

  return result;
}

unint64_t sub_1C0F12A54()
{
  result = qword_1EBE77BE8;
  if (!qword_1EBE77BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BE8);
  }

  return result;
}

unint64_t sub_1C0F12AA8()
{
  result = qword_1EBE77BF0;
  if (!qword_1EBE77BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BF0);
  }

  return result;
}

unint64_t sub_1C0F12AFC()
{
  result = qword_1EBE77BF8;
  if (!qword_1EBE77BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77BF8);
  }

  return result;
}

unint64_t sub_1C0F12B50()
{
  result = qword_1EBE77C00;
  if (!qword_1EBE77C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C00);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.MenuAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityAssistiveTouchAction.MenuAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v132 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C08, &qword_1C0F58338);
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v128 = &v93[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C10, &qword_1C0F58340);
  v118 = *(v8 - 8);
  v119 = v8;
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v127 = &v93[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C18, &qword_1C0F58348);
  v116 = *(v13 - 8);
  v117 = v13;
  MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v124 = &v93[-v17];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C20, &qword_1C0F58350);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v18, v19, v20);
  v126 = &v93[-v21];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C28, &qword_1C0F58358);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v22, v23, v24);
  v125 = &v93[-v25];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C30, &qword_1C0F58360);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v26, v27, v28);
  v131 = &v93[-v29];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C38, &qword_1C0F58368);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v30, v31, v32);
  v123 = &v93[-v33];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C40, &qword_1C0F58370);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v34, v35, v36);
  v122 = &v93[-v37];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C48, &qword_1C0F58378);
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v38, v39, v40);
  v130 = &v93[-v41];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C50, &qword_1C0F58380);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v42, v43, v44);
  v129 = &v93[-v45];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C58, &qword_1C0F58388);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v46, v47, v48);
  v50 = &v93[-v49];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C60, &qword_1C0F58390);
  v99 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v52, v53, v54);
  v56 = &v93[-v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C68, &qword_1C0F58398);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v59, v60, v61);
  v63 = &v93[-v62];
  v64 = a1[3];
  v134 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v64);
  sub_1C0F12760();
  v65 = v133;
  sub_1C0F508A0();
  if (!v65)
  {
    v95 = v51;
    v96 = v50;
    v66 = v129;
    v67 = v130;
    v133 = v58;
    v69 = v131;
    v68 = v132;
    v98 = v57;
    v97 = v63;
    v70 = sub_1C0F506F0();
    if (*(v70 + 16) == 1)
    {
      v71 = *(v70 + 32);
      if (v71 != 12)
      {
        v94 = *(v70 + 32);
        if (v71 > 5)
        {
          if (v71 > 8)
          {
            v81 = v133;
            v82 = v98;
            v83 = v97;
            if (v71 == 9)
            {
              v144 = 9;
              sub_1C0F1285C();
              v89 = v124;
              sub_1C0F50670();
              (*(v116 + 8))(v89, v117);
            }

            else if (v71 == 10)
            {
              v145 = 10;
              sub_1C0F12808();
              v86 = v127;
              sub_1C0F50670();
              (*(v118 + 8))(v86, v119);
            }

            else
            {
              v146 = 11;
              sub_1C0F127B4();
              v92 = v128;
              sub_1C0F50670();
              (*(v120 + 8))(v92, v121);
            }
          }

          else
          {
            v81 = v133;
            v82 = v98;
            v83 = v97;
            if (v71 == 6)
            {
              v141 = 6;
              sub_1C0F12958();
              sub_1C0F50670();
              (*(v110 + 8))(v69, v111);
            }

            else if (v71 == 7)
            {
              v142 = 7;
              sub_1C0F12904();
              v84 = v125;
              sub_1C0F50670();
              (*(v112 + 8))(v84, v113);
            }

            else
            {
              v143 = 8;
              sub_1C0F128B0();
              v90 = v126;
              sub_1C0F50670();
              (*(v114 + 8))(v90, v115);
            }
          }
        }

        else
        {
          if (v71 <= 2)
          {
            if (v71)
            {
              if (v71 == 1)
              {
                v136 = 1;
                sub_1C0F12AFC();
                v72 = v96;
                v73 = v98;
                v74 = v97;
                sub_1C0F50670();
                (*(v100 + 8))(v72, v101);
              }

              else
              {
                v137 = 2;
                sub_1C0F12AA8();
                v73 = v98;
                v74 = v97;
                sub_1C0F50670();
                (*(v103 + 8))(v66, v102);
              }

              (*(v133 + 8))(v74, v73);
            }

            else
            {
              v135 = 0;
              sub_1C0F12B50();
              v87 = v98;
              v88 = v97;
              sub_1C0F50670();
              (*(v99 + 8))(v56, v95);
              (*(v133 + 8))(v88, v87);
            }

            goto LABEL_32;
          }

          v81 = v133;
          if (v71 == 3)
          {
            v138 = 3;
            sub_1C0F12A54();
            v82 = v98;
            v83 = v97;
            sub_1C0F50670();
            (*(v105 + 8))(v67, v104);
          }

          else
          {
            v82 = v98;
            v83 = v97;
            if (v71 == 4)
            {
              v139 = 4;
              sub_1C0F12A00();
              v85 = v122;
              sub_1C0F50670();
              (*(v106 + 8))(v85, v107);
            }

            else
            {
              v140 = 5;
              sub_1C0F129AC();
              v91 = v123;
              sub_1C0F50670();
              (*(v108 + 8))(v91, v109);
            }
          }
        }

        (*(v81 + 8))(v83, v82);
LABEL_32:
        swift_unknownObjectRelease();
        *v68 = v94;
        return __swift_destroy_boxed_opaque_existential_0(v134);
      }
    }

    v75 = sub_1C0F505C0();
    swift_allocError();
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
    *v77 = &type metadata for AccessibilityAssistiveTouchAction.MenuAction;
    v78 = v98;
    v79 = v97;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x1E69E6AF8], v75);
    swift_willThrow();
    (*(v133 + 8))(v79, v78);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v134);
}

uint64_t sub_1C0F13B14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13B48()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13B7C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13BB0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13BE4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13C18()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13C4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 25;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0F13C80()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static AccessibilityAssistiveTouchAction.resolveMenuAction(_:with:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 5)
  {
    if (*a1 > 2u)
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          a2[3] = &type metadata for AccessibilityAssistiveTouchAction.MoreMenu;
          result = sub_1C0F1418C();
          a2[4] = result;
          v5 = 1163022157;
          v6 = 0xE400000000000000;
        }

        else
        {
          a2[3] = &type metadata for AccessibilityAssistiveTouchAction.OpenMenu;
          result = sub_1C0F14138();
          a2[4] = result;
          v5 = 0x4E454D5F4E45504FLL;
          v6 = 0xE900000000000055;
        }

        goto LABEL_25;
      }

      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.GesturesNumberOfFingersMenu;
      result = sub_1C0F141E0();
    }

    else
    {
      if (!*a1)
      {
        a2[3] = &type metadata for AccessibilityAssistiveTouchAction.CustomMenu;
        result = sub_1C0F142DC();
        a2[4] = result;
        v5 = 0x4D4F54535543;
        goto LABEL_17;
      }

      if (v3 == 1)
      {
        a2[3] = &type metadata for AccessibilityAssistiveTouchAction.DeviceMenu;
        result = sub_1C0F14288();
        a2[4] = result;
        v5 = 0x454349564544;
LABEL_17:
        v6 = 0xE600000000000000;
        goto LABEL_25;
      }

      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.GesturesMenu;
      result = sub_1C0F14234();
    }

    a2[4] = result;
    v5 = 0x5345525554534547;
    v6 = 0xE800000000000000;
    goto LABEL_25;
  }

  if (*a1 <= 8u)
  {
    if (v3 == 6)
    {
      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.RotateScreenMenu;
      result = sub_1C0F140E4();
      a2[4] = result;
      v5 = 0x5441544E4549524FLL;
      v6 = 0xEB000000004E4F49;
      goto LABEL_25;
    }

    if (v3 != 7)
    {
      a2[3] = &type metadata for AccessibilityAssistiveTouchAction.SecureIntentMenu;
      result = sub_1C0F1403C();
      a2[4] = result;
      return result;
    }

    a2[3] = &type metadata for AccessibilityAssistiveTouchAction.ScrollMenu;
    result = sub_1C0F14090();
    a2[4] = result;
    v5 = 0x4C4C4F524353;
    goto LABEL_17;
  }

  if (v3 == 9)
  {
    a2[3] = &type metadata for AccessibilityAssistiveTouchAction.SideAppMenu;
    result = sub_1C0F13FE8();
    a2[4] = result;
    v5 = 0x5050415F45444953;
    v6 = 0xE800000000000000;
    goto LABEL_25;
  }

  if (v3 == 10)
  {
    a2[3] = &type metadata for AccessibilityAssistiveTouchAction.SiriShortcutsMenu;
    result = sub_1C0F13F94();
    a2[4] = result;
    v5 = 0x4F48535F49524953;
    v6 = 0xEE00535455435452;
LABEL_25:
    *a2 = v5;
    a2[1] = v6;
    return result;
  }

  a2[3] = &type metadata for AccessibilityAssistiveTouchAction.Back;
  result = sub_1C0F13F40();
  a2[4] = result;
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_1C0F13F40()
{
  result = qword_1EBE77C78;
  if (!qword_1EBE77C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C78);
  }

  return result;
}

unint64_t sub_1C0F13F94()
{
  result = qword_1EBE77C80;
  if (!qword_1EBE77C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C80);
  }

  return result;
}

unint64_t sub_1C0F13FE8()
{
  result = qword_1EBE77C88;
  if (!qword_1EBE77C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C88);
  }

  return result;
}

unint64_t sub_1C0F1403C()
{
  result = qword_1EBE77C90;
  if (!qword_1EBE77C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C90);
  }

  return result;
}

unint64_t sub_1C0F14090()
{
  result = qword_1EBE77C98;
  if (!qword_1EBE77C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77C98);
  }

  return result;
}

unint64_t sub_1C0F140E4()
{
  result = qword_1EBE77CA0;
  if (!qword_1EBE77CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CA0);
  }

  return result;
}

unint64_t sub_1C0F14138()
{
  result = qword_1EBE77CA8;
  if (!qword_1EBE77CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CA8);
  }

  return result;
}

unint64_t sub_1C0F1418C()
{
  result = qword_1EBE77CB0;
  if (!qword_1EBE77CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CB0);
  }

  return result;
}

unint64_t sub_1C0F141E0()
{
  result = qword_1EBE77CB8;
  if (!qword_1EBE77CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CB8);
  }

  return result;
}

unint64_t sub_1C0F14234()
{
  result = qword_1EBE77CC0;
  if (!qword_1EBE77CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CC0);
  }

  return result;
}

unint64_t sub_1C0F14288()
{
  result = qword_1EBE77CC8;
  if (!qword_1EBE77CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CC8);
  }

  return result;
}

unint64_t sub_1C0F142DC()
{
  result = qword_1EBE77CD0;
  if (!qword_1EBE77CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CD0);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.CustomMenu.nameKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessibilityAssistiveTouchAction.CustomMenu.nameKey.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _s26AccessibilitySharedSupport0A20AssistiveTouchActionO10CustomMenuV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C0F50790();
  }
}

uint64_t _s26AccessibilitySharedSupport0A20AssistiveTouchActionO10CustomMenuV9hashValueSivg_0()
{
  sub_1C0F50850();
  sub_1C0F50200();
  return sub_1C0F50890();
}

uint64_t sub_1C0F14888(uint64_t a1)
{
  sub_1C0F50850();
  sub_1C0F50200();
  return sub_1C0F50890();
}

unint64_t sub_1C0F148D4()
{
  result = qword_1EBE77CD8;
  if (!qword_1EBE77CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CD8);
  }

  return result;
}

unint64_t sub_1C0F1492C()
{
  result = qword_1EBE77CE0;
  if (!qword_1EBE77CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77CE8, &qword_1C0F58410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CE0);
  }

  return result;
}

unint64_t sub_1C0F14990(uint64_t a1)
{
  result = sub_1C0F149B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F149B8()
{
  result = qword_1EBE77CF0;
  if (!qword_1EBE77CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CF0);
  }

  return result;
}

unint64_t sub_1C0F14A10()
{
  result = qword_1EBE77CF8;
  if (!qword_1EBE77CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77CF8);
  }

  return result;
}

unint64_t sub_1C0F14A64(uint64_t a1)
{
  result = sub_1C0F14A8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14A8C()
{
  result = qword_1EBE77D00;
  if (!qword_1EBE77D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D00);
  }

  return result;
}

unint64_t sub_1C0F14AE4()
{
  result = qword_1EBE77D08;
  if (!qword_1EBE77D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D08);
  }

  return result;
}

unint64_t sub_1C0F14B38(uint64_t a1)
{
  result = sub_1C0F14B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14B60()
{
  result = qword_1EBE77D10;
  if (!qword_1EBE77D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D10);
  }

  return result;
}

unint64_t sub_1C0F14BB8()
{
  result = qword_1EBE77D18;
  if (!qword_1EBE77D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D18);
  }

  return result;
}

unint64_t sub_1C0F14C0C(uint64_t a1)
{
  result = sub_1C0F14C34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14C34()
{
  result = qword_1EBE77D20;
  if (!qword_1EBE77D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D20);
  }

  return result;
}

unint64_t sub_1C0F14C8C()
{
  result = qword_1EBE77D28;
  if (!qword_1EBE77D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D28);
  }

  return result;
}

unint64_t sub_1C0F14CE0(uint64_t a1)
{
  result = sub_1C0F14D08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14D08()
{
  result = qword_1EBE77D30;
  if (!qword_1EBE77D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D30);
  }

  return result;
}

unint64_t sub_1C0F14D60()
{
  result = qword_1EBE77D38;
  if (!qword_1EBE77D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D38);
  }

  return result;
}

unint64_t sub_1C0F14DB4(uint64_t a1)
{
  result = sub_1C0F14DDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14DDC()
{
  result = qword_1EBE77D40;
  if (!qword_1EBE77D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D40);
  }

  return result;
}

unint64_t sub_1C0F14E34()
{
  result = qword_1EBE77D48;
  if (!qword_1EBE77D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D48);
  }

  return result;
}

unint64_t sub_1C0F14E88(uint64_t a1)
{
  result = sub_1C0F14EB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14EB0()
{
  result = qword_1EBE77D50;
  if (!qword_1EBE77D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D50);
  }

  return result;
}

unint64_t sub_1C0F14F08()
{
  result = qword_1EBE77D58;
  if (!qword_1EBE77D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D58);
  }

  return result;
}

unint64_t sub_1C0F14F5C(uint64_t a1)
{
  result = sub_1C0F14F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F14F84()
{
  result = qword_1EBE77D60;
  if (!qword_1EBE77D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D60);
  }

  return result;
}

unint64_t sub_1C0F14FDC()
{
  result = qword_1EBE77D68;
  if (!qword_1EBE77D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D68);
  }

  return result;
}

unint64_t sub_1C0F15030(uint64_t a1)
{
  result = sub_1C0F15058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F15058()
{
  result = qword_1EBE77D70;
  if (!qword_1EBE77D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D70);
  }

  return result;
}

unint64_t sub_1C0F150B0()
{
  result = qword_1EBE77D78;
  if (!qword_1EBE77D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D78);
  }

  return result;
}

unint64_t sub_1C0F15104(uint64_t a1)
{
  result = sub_1C0F1512C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1512C()
{
  result = qword_1EBE77D80;
  if (!qword_1EBE77D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D80);
  }

  return result;
}

unint64_t sub_1C0F15184()
{
  result = qword_1EBE77D88;
  if (!qword_1EBE77D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D88);
  }

  return result;
}

unint64_t sub_1C0F151D8(uint64_t a1)
{
  result = sub_1C0F15200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F15200()
{
  result = qword_1EBE77D90;
  if (!qword_1EBE77D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D90);
  }

  return result;
}

unint64_t sub_1C0F15258()
{
  result = qword_1EBE77D98;
  if (!qword_1EBE77D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77D98);
  }

  return result;
}

unint64_t sub_1C0F152AC(uint64_t a1)
{
  result = sub_1C0F152D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F152D4()
{
  result = qword_1EBE77DA0;
  if (!qword_1EBE77DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DA0);
  }

  return result;
}

unint64_t sub_1C0F1532C()
{
  result = qword_1EBE77DA8;
  if (!qword_1EBE77DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DA8);
  }

  return result;
}

uint64_t _s16SecureIntentMenuVwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s16SecureIntentMenuVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C0F15510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C0F15558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0F155A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F15634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F157B8()
{
  result = qword_1EBE77DB0;
  if (!qword_1EBE77DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DB0);
  }

  return result;
}

unint64_t sub_1C0F15810()
{
  result = qword_1EBE77DB8;
  if (!qword_1EBE77DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DB8);
  }

  return result;
}

unint64_t sub_1C0F15868()
{
  result = qword_1EBE77DC0;
  if (!qword_1EBE77DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DC0);
  }

  return result;
}

unint64_t sub_1C0F158C0()
{
  result = qword_1EBE77DC8;
  if (!qword_1EBE77DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DC8);
  }

  return result;
}

unint64_t sub_1C0F15918()
{
  result = qword_1EBE77DD0;
  if (!qword_1EBE77DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DD0);
  }

  return result;
}

unint64_t sub_1C0F15970()
{
  result = qword_1EBE77DD8;
  if (!qword_1EBE77DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DD8);
  }

  return result;
}

unint64_t sub_1C0F159C8()
{
  result = qword_1EBE77DE0;
  if (!qword_1EBE77DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DE0);
  }

  return result;
}

unint64_t sub_1C0F15A20()
{
  result = qword_1EBE77DE8;
  if (!qword_1EBE77DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DE8);
  }

  return result;
}

unint64_t sub_1C0F15A78()
{
  result = qword_1EBE77DF0;
  if (!qword_1EBE77DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DF0);
  }

  return result;
}

unint64_t sub_1C0F15AD0()
{
  result = qword_1EBE77DF8;
  if (!qword_1EBE77DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77DF8);
  }

  return result;
}

unint64_t sub_1C0F15B28()
{
  result = qword_1EBE77E00;
  if (!qword_1EBE77E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E00);
  }

  return result;
}

unint64_t sub_1C0F15B80()
{
  result = qword_1EBE77E08;
  if (!qword_1EBE77E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E08);
  }

  return result;
}

unint64_t sub_1C0F15BD8()
{
  result = qword_1EBE77E10;
  if (!qword_1EBE77E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E10);
  }

  return result;
}

unint64_t sub_1C0F15C30()
{
  result = qword_1EBE77E18;
  if (!qword_1EBE77E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E18);
  }

  return result;
}

unint64_t sub_1C0F15C88()
{
  result = qword_1EBE77E20;
  if (!qword_1EBE77E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E20);
  }

  return result;
}

unint64_t sub_1C0F15CE0()
{
  result = qword_1EBE77E28;
  if (!qword_1EBE77E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E28);
  }

  return result;
}

unint64_t sub_1C0F15D38()
{
  result = qword_1EBE77E30;
  if (!qword_1EBE77E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E30);
  }

  return result;
}

unint64_t sub_1C0F15D90()
{
  result = qword_1EBE77E38;
  if (!qword_1EBE77E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E38);
  }

  return result;
}

unint64_t sub_1C0F15DE8()
{
  result = qword_1EBE77E40;
  if (!qword_1EBE77E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E40);
  }

  return result;
}

unint64_t sub_1C0F15E40()
{
  result = qword_1EBE77E48;
  if (!qword_1EBE77E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E48);
  }

  return result;
}

unint64_t sub_1C0F15E98()
{
  result = qword_1EBE77E50;
  if (!qword_1EBE77E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E50);
  }

  return result;
}

unint64_t sub_1C0F15EF0()
{
  result = qword_1EBE77E58;
  if (!qword_1EBE77E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E58);
  }

  return result;
}

unint64_t sub_1C0F15F48()
{
  result = qword_1EBE77E60;
  if (!qword_1EBE77E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E60);
  }

  return result;
}

unint64_t sub_1C0F15FA0()
{
  result = qword_1EBE77E68;
  if (!qword_1EBE77E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E68);
  }

  return result;
}

unint64_t sub_1C0F15FF8()
{
  result = qword_1EBE77E70;
  if (!qword_1EBE77E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E70);
  }

  return result;
}

unint64_t sub_1C0F16050()
{
  result = qword_1EBE77E78;
  if (!qword_1EBE77E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E78);
  }

  return result;
}

unint64_t sub_1C0F160A8()
{
  result = qword_1EBE77E80;
  if (!qword_1EBE77E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E80);
  }

  return result;
}

uint64_t sub_1C0F160FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365727574736567 && a2 == 0xE800000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C0F66EE0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701998445 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1852141679 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6353657461746F72 && a2 == 0xEC0000006E656572 || (sub_1C0F50790() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E49657275636573 && a2 == 0xEC000000746E6574 || (sub_1C0F50790() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x70704165646973 && a2 == 0xE700000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F685369726973 && a2 == 0xED00007374756374 || (sub_1C0F50790() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1801675106 && a2 == 0xE400000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double AccessibilityFeatureActionHandler.featureState.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1C0F165F0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEF864;

  return AccessibilityFeatureActionHandler.handleAction(_:)(a1, a2, a3, a4);
}

uint64_t AccessibilityFeatureActionHandler.handleAction(_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = *a2;
  v10 = (*(a4 + 32) + **(a4 + 32));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1C0EEF864;

  return v10(a1, v4 + 24, a3, a4);
}

uint64_t sub_1C0F167EC(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return AccessibilityFeatureActionHandler.performAction(_:)(a1, a2, a3, a4);
}

uint64_t AccessibilityFeatureActionHandler.performAction(_:)(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  switch(*a2)
  {
    case 1:
      v50 = (a4[6] + *a4[6]);
      v24 = swift_task_alloc();
      v5[9] = v24;
      *v24 = v5;
      v24[1] = sub_1C0F1816C;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v50;

      break;
    case 2:
      v46 = (a4[7] + *a4[7]);
      v20 = swift_task_alloc();
      v5[10] = v20;
      *v20 = v5;
      v20[1] = sub_1C0F182C0;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v46;

      break;
    case 3:
      v48 = (a4[8] + *a4[8]);
      v22 = swift_task_alloc();
      v5[11] = v22;
      *v22 = v5;
      v22[1] = sub_1C0F18414;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v48;

      break;
    case 4:
      v42 = (a4[9] + *a4[9]);
      v16 = swift_task_alloc();
      v5[12] = v16;
      *v16 = v5;
      v16[1] = sub_1C0F18568;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v42;

      break;
    case 5:
      v53 = (a4[10] + *a4[10]);
      v27 = swift_task_alloc();
      v5[13] = v27;
      *v27 = v5;
      v27[1] = sub_1C0F186BC;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v53;

      break;
    case 6:
      v56 = (a4[11] + *a4[11]);
      v30 = swift_task_alloc();
      v5[14] = v30;
      *v30 = v5;
      v30[1] = sub_1C0F18840;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v56;

      break;
    case 7:
      v49 = (a4[12] + *a4[12]);
      v23 = swift_task_alloc();
      v5[15] = v23;
      *v23 = v5;
      v23[1] = sub_1C0F18994;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v49;

      break;
    case 8:
      v59 = (a4[15] + *a4[15]);
      v33 = swift_task_alloc();
      v5[16] = v33;
      *v33 = v5;
      v33[1] = sub_1C0F18AE8;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v59;

      break;
    case 9:
      v44 = (a4[13] + *a4[13]);
      v18 = swift_task_alloc();
      v5[17] = v18;
      *v18 = v5;
      v18[1] = sub_1C0F18C3C;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v44;

      break;
    case 0xA:
      v58 = (a4[14] + *a4[14]);
      v32 = swift_task_alloc();
      v5[18] = v32;
      *v32 = v5;
      v32[1] = sub_1C0F18D90;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v58;

      break;
    case 0xB:
      v41 = (a4[16] + *a4[16]);
      v15 = swift_task_alloc();
      v5[19] = v15;
      *v15 = v5;
      v15[1] = sub_1C0F18EE4;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v41;

      break;
    case 0xC:
      v43 = (a4[17] + *a4[17]);
      v17 = swift_task_alloc();
      v5[20] = v17;
      *v17 = v5;
      v17[1] = sub_1C0F19038;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v43;

      break;
    case 0xD:
      v55 = (a4[18] + *a4[18]);
      v29 = swift_task_alloc();
      v5[21] = v29;
      *v29 = v5;
      v29[1] = sub_1C0F1918C;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v55;

      break;
    case 0xE:
      v40 = (a4[19] + *a4[19]);
      v14 = swift_task_alloc();
      v5[22] = v14;
      *v14 = v5;
      v14[1] = sub_1C0F192E0;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v40;

      break;
    case 0xF:
      v47 = (a4[20] + *a4[20]);
      v21 = swift_task_alloc();
      v5[23] = v21;
      *v21 = v5;
      v21[1] = sub_1C0F19434;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v47;

      break;
    case 0x10:
      v39 = (a4[21] + *a4[21]);
      v13 = swift_task_alloc();
      v5[24] = v13;
      *v13 = v5;
      v13[1] = sub_1C0F19588;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v39;

      break;
    case 0x11:
      v51 = (a4[22] + *a4[22]);
      v25 = swift_task_alloc();
      v5[25] = v25;
      *v25 = v5;
      v25[1] = sub_1C0F196DC;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v51;

      break;
    case 0x12:
      v57 = (a4[23] + *a4[23]);
      v31 = swift_task_alloc();
      v5[26] = v31;
      *v31 = v5;
      v31[1] = sub_1C0F19830;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v57;

      break;
    case 0x13:
      v61 = (a4[24] + *a4[24]);
      v35 = swift_task_alloc();
      v5[27] = v35;
      *v35 = v5;
      v35[1] = sub_1C0F19984;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v61;

      break;
    case 0x14:
      v52 = (a4[25] + *a4[25]);
      v26 = swift_task_alloc();
      v5[28] = v26;
      *v26 = v5;
      v26[1] = sub_1C0F19AD8;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v52;

      break;
    case 0x15:
      v54 = (a4[26] + *a4[26]);
      v28 = swift_task_alloc();
      v5[29] = v28;
      *v28 = v5;
      v28[1] = sub_1C0F19C2C;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v54;

      break;
    case 0x16:
      v60 = (a4[27] + *a4[27]);
      v34 = swift_task_alloc();
      v5[30] = v34;
      *v34 = v5;
      v34[1] = sub_1C0F19D80;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v60;

      break;
    case 0x17:
      v62 = (a4[28] + *a4[28]);
      v36 = swift_task_alloc();
      v5[31] = v36;
      *v36 = v5;
      v36[1] = sub_1C0F19ED4;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v62;

      break;
    case 0x18:
      v45 = (a4[29] + *a4[29]);
      v19 = swift_task_alloc();
      v5[32] = v19;
      *v19 = v5;
      v19[1] = sub_1C0F1A028;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v45;

      break;
    default:
      v38 = (a4[5] + *a4[5]);
      v8 = swift_task_alloc();
      v5[8] = v8;
      *v8 = v5;
      v8[1] = sub_1C0F18018;
      v9 = v5 + 2;
      v10 = a3;
      v11 = a4;
      v12 = v38;

      break;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_1C0F18018()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F1816C()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F182C0()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F18414()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F18568()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F186BC()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F18810, v1, v0);
}

uint64_t sub_1C0F18810()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1C0F18840()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F18994()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F18AE8()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F18C3C()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F18D90()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F18EE4()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19038()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F1918C()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F192E0()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19434()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19588()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F196DC()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19830()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19984()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19AD8()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19C2C()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19D80()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F19ED4()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t sub_1C0F1A028()
{

  v1 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1C144, v1, v0);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.performAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleAccessibilityReader()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleAssistiveAccess()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleAssistiveTouch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleBackgroundSounds()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleClassicInvertColors()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleColorFilters()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleCommandAndControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleDimFlashingLights()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleFullKeyboardAccess()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleHapticMusic()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleHoverTextTyping()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleLiveCaptions()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleLiveSpeech()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleMagnifier()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleMotionCues()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleNearbyDeviceControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 160) + **(a3 + 160));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleSmartInvertColors()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleSpeakScreen()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleSwitchControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleVirtualTrackpad()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleVoiceControl()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 200) + **(a3 + 200));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleVoiceOver()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 208) + **(a3 + 208));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleWatchRemoteScreen()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 216) + **(a3 + 216));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleZoom()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 224) + **(a3 + 224));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityFeatureActionHandler.handleToggleZoomController()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 232) + **(a3 + 232));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

unint64_t AccessibilityDeviceAction.resolve(with:)@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CameraButtonDoubleLightPress;
      result = sub_1C0F1C6FC();
      break;
    case 2:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CameraButtonLightPress;
      result = sub_1C0F1C6A8();
      break;
    case 3:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CameraButtonPress;
      result = sub_1C0F1C654();
      break;
    case 4:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CrownPressButton;
      result = sub_1C0F1C600();
      break;
    case 5:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CrownTurnClockwise;
      result = sub_1C0F1C5AC();
      break;
    case 6:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.CrownTurnCounterClockwise;
      result = sub_1C0F1C558();
      break;
    case 7:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.HomeButton;
      result = sub_1C0F1C504();
      break;
    case 8:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.LockButton;
      result = sub_1C0F1C4B0();
      break;
    case 9:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.Screenshot;
      result = sub_1C0F1C45C();
      break;
    case 0xA:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.Shake;
      result = sub_1C0F1C408();
      break;
    case 0xB:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.Torch;
      result = sub_1C0F1C3B4();
      break;
    case 0xC:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.TripleClick;
      result = sub_1C0F1C360();
      break;
    case 0xD:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.VolumeDown;
      result = sub_1C0F1C30C();
      break;
    case 0xE:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.VolumeUp;
      result = sub_1C0F1C2B8();
      break;
    default:
      *(a1 + 24) = &type metadata for AccessibilityDeviceAction.ActionButton;
      result = sub_1C0F1C750();
      break;
  }

  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1C0F1C2B8()
{
  result = qword_1EBE77E88;
  if (!qword_1EBE77E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E88);
  }

  return result;
}

unint64_t sub_1C0F1C30C()
{
  result = qword_1EBE77E90;
  if (!qword_1EBE77E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E90);
  }

  return result;
}

unint64_t sub_1C0F1C360()
{
  result = qword_1EBE77E98;
  if (!qword_1EBE77E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77E98);
  }

  return result;
}

unint64_t sub_1C0F1C3B4()
{
  result = qword_1EBE77EA0;
  if (!qword_1EBE77EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EA0);
  }

  return result;
}

unint64_t sub_1C0F1C408()
{
  result = qword_1EBE77EA8;
  if (!qword_1EBE77EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EA8);
  }

  return result;
}

unint64_t sub_1C0F1C45C()
{
  result = qword_1EBE77EB0;
  if (!qword_1EBE77EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EB0);
  }

  return result;
}

unint64_t sub_1C0F1C4B0()
{
  result = qword_1EBE77EB8;
  if (!qword_1EBE77EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EB8);
  }

  return result;
}

unint64_t sub_1C0F1C504()
{
  result = qword_1EBE77EC0;
  if (!qword_1EBE77EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EC0);
  }

  return result;
}

unint64_t sub_1C0F1C558()
{
  result = qword_1EBE77EC8;
  if (!qword_1EBE77EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EC8);
  }

  return result;
}

unint64_t sub_1C0F1C5AC()
{
  result = qword_1EBE77ED0;
  if (!qword_1EBE77ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77ED0);
  }

  return result;
}

unint64_t sub_1C0F1C600()
{
  result = qword_1EBE77ED8;
  if (!qword_1EBE77ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77ED8);
  }

  return result;
}

unint64_t sub_1C0F1C654()
{
  result = qword_1EBE77EE0;
  if (!qword_1EBE77EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EE0);
  }

  return result;
}

unint64_t sub_1C0F1C6A8()
{
  result = qword_1EBE77EE8;
  if (!qword_1EBE77EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EE8);
  }

  return result;
}

unint64_t sub_1C0F1C6FC()
{
  result = qword_1EBE77EF0;
  if (!qword_1EBE77EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EF0);
  }

  return result;
}

unint64_t sub_1C0F1C750()
{
  result = qword_1EBE77EF8;
  if (!qword_1EBE77EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77EF8);
  }

  return result;
}

uint64_t sub_1C0F1C7B8(char a1)
{
  result = 0x75426E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6572506E776F7263;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      v3 = 1701670760;
      goto LABEL_16;
    case 8:
      v3 = 1801678700;
LABEL_16:
      result = v3 | 0x7474754200000000;
      break;
    case 9:
      result = 0x68736E6565726373;
      break;
    case 10:
      result = 0x656B616873;
      break;
    case 11:
      result = 0x6863726F74;
      break;
    case 12:
      result = 0x6C43656C70697274;
      break;
    case 13:
      result = 0x6F44656D756C6F76;
      break;
    case 14:
      result = 0x7055656D756C6F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C0F1C980(uint64_t a1)
{
  v2 = sub_1C0F1E3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1C9BC(uint64_t a1)
{
  v2 = sub_1C0F1E3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1C9F8(uint64_t a1)
{
  v2 = sub_1C0F1E388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CA34(uint64_t a1)
{
  v2 = sub_1C0F1E388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CA70(uint64_t a1)
{
  v2 = sub_1C0F1E334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CAAC(uint64_t a1)
{
  v2 = sub_1C0F1E334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CAE8(uint64_t a1)
{
  v2 = sub_1C0F1E2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CB24(uint64_t a1)
{
  v2 = sub_1C0F1E2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CB68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F217E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F1CB9C(uint64_t a1)
{
  v2 = sub_1C0F1DEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CBD8(uint64_t a1)
{
  v2 = sub_1C0F1DEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CC14(uint64_t a1)
{
  v2 = sub_1C0F1E28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CC50(uint64_t a1)
{
  v2 = sub_1C0F1E28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CC8C(uint64_t a1)
{
  v2 = sub_1C0F1E238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CCC8(uint64_t a1)
{
  v2 = sub_1C0F1E238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CD04(uint64_t a1)
{
  v2 = sub_1C0F1E1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CD40(uint64_t a1)
{
  v2 = sub_1C0F1E1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CD7C(uint64_t a1)
{
  v2 = sub_1C0F1E190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CDB8(uint64_t a1)
{
  v2 = sub_1C0F1E190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CDF4(uint64_t a1)
{
  v2 = sub_1C0F1E13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CE30(uint64_t a1)
{
  v2 = sub_1C0F1E13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CE6C(uint64_t a1)
{
  v2 = sub_1C0F1E0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CEA8(uint64_t a1)
{
  v2 = sub_1C0F1E0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CEE4(uint64_t a1)
{
  v2 = sub_1C0F1E094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CF20(uint64_t a1)
{
  v2 = sub_1C0F1E094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CF5C(uint64_t a1)
{
  v2 = sub_1C0F1E040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1CF98(uint64_t a1)
{
  v2 = sub_1C0F1E040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1CFD4(uint64_t a1)
{
  v2 = sub_1C0F1DFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1D010(uint64_t a1)
{
  v2 = sub_1C0F1DFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1D04C(uint64_t a1)
{
  v2 = sub_1C0F1DF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1D088(uint64_t a1)
{
  v2 = sub_1C0F1DF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F1D0C4(uint64_t a1)
{
  v2 = sub_1C0F1DF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F1D100(uint64_t a1)
{
  v2 = sub_1C0F1DF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityDeviceAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F00, &qword_1C0F59730);
  v140 = *(v4 - 8);
  v141 = v4;
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v139 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F08, &qword_1C0F59738);
  v137 = *(v9 - 8);
  v138 = v9;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v136 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F10, &qword_1C0F59740);
  v134 = *(v14 - 8);
  v135 = v14;
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v133 = &v99 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F18, &qword_1C0F59748);
  v131 = *(v19 - 8);
  v132 = v19;
  MEMORY[0x1EEE9AC00](v19, v20, v21, v22);
  v130 = &v99 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F20, &qword_1C0F59750);
  v128 = *(v24 - 8);
  v129 = v24;
  MEMORY[0x1EEE9AC00](v24, v25, v26, v27);
  v127 = &v99 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F28, &qword_1C0F59758);
  v125 = *(v29 - 8);
  v126 = v29;
  MEMORY[0x1EEE9AC00](v29, v30, v31, v32);
  v124 = &v99 - v33;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F30, &qword_1C0F59760);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v34, v35, v36);
  v121 = &v99 - v37;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F38, &qword_1C0F59768);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v38, v39, v40);
  v118 = &v99 - v41;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F40, &qword_1C0F59770);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v42, v43, v44);
  v115 = &v99 - v45;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F48, &qword_1C0F59778);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v46, v47, v48);
  v112 = &v99 - v49;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F50, &qword_1C0F59780);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v50, v51, v52);
  v109 = &v99 - v53;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F58, &qword_1C0F59788);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v54, v55, v56);
  v106 = &v99 - v57;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F60, &qword_1C0F59790);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v58, v59, v60);
  v103 = &v99 - v61;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F68, &qword_1C0F59798);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v62, v63, v64);
  v66 = &v99 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F70, &qword_1C0F597A0);
  v100 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v68, v69, v70);
  v72 = &v99 - v71;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77F78, &qword_1C0F597A8);
  v73 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v74, v75, v76);
  v78 = &v99 - v77;
  v79 = *v2;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F1DEF0();
  v142 = v78;
  sub_1C0F508B0();
  v80 = (v73 + 8);
  switch(v79)
  {
    case 1:
      v145 = 1;
      sub_1C0F1E388();
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v101 + 8);
      v91 = v66;
      v92 = &v134;
      goto LABEL_18;
    case 2:
      v146 = 2;
      sub_1C0F1E334();
      v93 = v103;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v104 + 8);
      v91 = v93;
      v92 = &v137;
      goto LABEL_18;
    case 3:
      v147 = 3;
      sub_1C0F1E2E0();
      v94 = v106;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v107 + 8);
      v91 = v94;
      v92 = &v140;
      goto LABEL_18;
    case 4:
      v148 = 4;
      sub_1C0F1E28C();
      v89 = v109;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v110 + 8);
      v91 = v89;
      v92 = &v143;
      goto LABEL_18;
    case 5:
      v149 = 5;
      sub_1C0F1E238();
      v96 = v112;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v113 + 8);
      v91 = v96;
      v92 = v151;
      goto LABEL_18;
    case 6:
      v150 = 6;
      sub_1C0F1E1E4();
      v97 = v115;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v116 + 8);
      v91 = v97;
      v92 = &v152;
      goto LABEL_18;
    case 7:
      v151[16] = 7;
      sub_1C0F1E190();
      v95 = v118;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v119 + 8);
      v91 = v95;
      v92 = &v153;
      goto LABEL_18;
    case 8:
      v151[17] = 8;
      sub_1C0F1E13C();
      v98 = v121;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v90 = *(v122 + 8);
      v91 = v98;
      v92 = &v154;
LABEL_18:
      v90(v91, *(v92 - 32));
      goto LABEL_19;
    case 9:
      v151[18] = 9;
      sub_1C0F1E0E8();
      v84 = v124;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v88 = v125;
      v87 = v126;
      goto LABEL_16;
    case 10:
      v151[19] = 10;
      sub_1C0F1E094();
      v84 = v127;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v88 = v128;
      v87 = v129;
      goto LABEL_16;
    case 11:
      v151[20] = 11;
      sub_1C0F1E040();
      v84 = v130;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v88 = v131;
      v87 = v132;
      goto LABEL_16;
    case 12:
      v151[21] = 12;
      sub_1C0F1DFEC();
      v84 = v133;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v88 = v134;
      v87 = v135;
      goto LABEL_16;
    case 13:
      v151[22] = 13;
      sub_1C0F1DF98();
      v84 = v136;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v88 = v137;
      v87 = v138;
      goto LABEL_16;
    case 14:
      v151[23] = 14;
      sub_1C0F1DF44();
      v84 = v139;
      v86 = v142;
      v85 = v143;
      sub_1C0F50700();
      v88 = v140;
      v87 = v141;
LABEL_16:
      (*(v88 + 8))(v84, v87);
LABEL_19:
      result = (*v80)(v86, v85);
      break;
    default:
      v144 = 0;
      sub_1C0F1E3DC();
      v81 = v142;
      v82 = v143;
      sub_1C0F50700();
      (*(v100 + 8))(v72, v67);
      result = (*v80)(v81, v82);
      break;
  }

  return result;
}

unint64_t sub_1C0F1DEF0()
{
  result = qword_1EBE77F80;
  if (!qword_1EBE77F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F80);
  }

  return result;
}

unint64_t sub_1C0F1DF44()
{
  result = qword_1EBE77F88;
  if (!qword_1EBE77F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F88);
  }

  return result;
}

unint64_t sub_1C0F1DF98()
{
  result = qword_1EBE77F90;
  if (!qword_1EBE77F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F90);
  }

  return result;
}

unint64_t sub_1C0F1DFEC()
{
  result = qword_1EBE77F98;
  if (!qword_1EBE77F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77F98);
  }

  return result;
}

unint64_t sub_1C0F1E040()
{
  result = qword_1EBE77FA0;
  if (!qword_1EBE77FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FA0);
  }

  return result;
}

unint64_t sub_1C0F1E094()
{
  result = qword_1EBE77FA8;
  if (!qword_1EBE77FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FA8);
  }

  return result;
}

unint64_t sub_1C0F1E0E8()
{
  result = qword_1EBE77FB0;
  if (!qword_1EBE77FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FB0);
  }

  return result;
}

unint64_t sub_1C0F1E13C()
{
  result = qword_1EBE77FB8;
  if (!qword_1EBE77FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FB8);
  }

  return result;
}

unint64_t sub_1C0F1E190()
{
  result = qword_1EBE77FC0;
  if (!qword_1EBE77FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FC0);
  }

  return result;
}

unint64_t sub_1C0F1E1E4()
{
  result = qword_1EBE77FC8;
  if (!qword_1EBE77FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FC8);
  }

  return result;
}

unint64_t sub_1C0F1E238()
{
  result = qword_1EBE77FD0;
  if (!qword_1EBE77FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FD0);
  }

  return result;
}

unint64_t sub_1C0F1E28C()
{
  result = qword_1EBE77FD8;
  if (!qword_1EBE77FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FD8);
  }

  return result;
}

unint64_t sub_1C0F1E2E0()
{
  result = qword_1EBE77FE0;
  if (!qword_1EBE77FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FE0);
  }

  return result;
}

unint64_t sub_1C0F1E334()
{
  result = qword_1EBE77FE8;
  if (!qword_1EBE77FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FE8);
  }

  return result;
}

unint64_t sub_1C0F1E388()
{
  result = qword_1EBE77FF0;
  if (!qword_1EBE77FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FF0);
  }

  return result;
}

unint64_t sub_1C0F1E3DC()
{
  result = qword_1EBE77FF8;
  if (!qword_1EBE77FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77FF8);
  }

  return result;
}

uint64_t AccessibilityDeviceAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityDeviceAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v166 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78000, &qword_1C0F597B0);
  v151 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v3, v4, v5);
  v161 = &v120 - v6;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78008, &qword_1C0F597B8);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v7, v8, v9);
  v160 = &v120 - v10;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78010, &qword_1C0F597C0);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v11, v12, v13);
  v159 = &v120 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78018, &qword_1C0F597C8);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v15, v16, v17);
  v158 = &v120 - v18;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78020, &qword_1C0F597D0);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v19, v20, v21);
  v157 = &v120 - v22;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78028, &qword_1C0F597D8);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v23, v24, v25);
  v156 = &v120 - v26;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78030, &qword_1C0F597E0);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v27, v28, v29);
  v155 = &v120 - v30;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78038, &qword_1C0F597E8);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v31, v32, v33);
  v164 = &v120 - v34;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78040, &qword_1C0F597F0);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v35, v36, v37);
  v154 = &v120 - v38;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78048, &qword_1C0F597F8);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v39, v40, v41);
  v163 = &v120 - v42;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78050, &qword_1C0F59800);
  v132 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v43, v44, v45);
  v153 = &v120 - v46;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78058, &qword_1C0F59808);
  v130 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v47, v48, v49);
  v152 = &v120 - v50;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78060, &qword_1C0F59810);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v51, v52, v53);
  v162 = &v120 - v54;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78068, &qword_1C0F59818);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v55, v56, v57);
  v59 = &v120 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78070, &qword_1C0F59820);
  v124 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v61, v62, v63);
  v65 = &v120 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78078, &unk_1C0F59828);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v68, v69, v70);
  v72 = &v120 - v71;
  v73 = a1[3];
  v168[0] = a1;
  __swift_project_boxed_opaque_existential_0(a1, v73);
  sub_1C0F1DEF0();
  v74 = v167;
  sub_1C0F508A0();
  if (v74)
  {
LABEL_8:
    v93 = v168[0];
    return __swift_destroy_boxed_opaque_existential_0(v93);
  }

  v121 = v65;
  v120 = v60;
  v122 = v59;
  v75 = v162;
  v76 = v163;
  v77 = v164;
  v123 = 0;
  v79 = v165;
  v78 = v166;
  v167 = v67;
  v80 = sub_1C0F506F0();
  v81 = (2 * *(v80 + 16)) | 1;
  v168[1] = v80;
  v169 = v80 + 32;
  v170 = 0;
  v171 = v81;
  v82 = sub_1C0F13B14();
  v83 = v72;
  if (v170 != v171 >> 1)
  {
LABEL_6:
    v90 = sub_1C0F505C0();
    swift_allocError();
    v92 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
    *v92 = &type metadata for AccessibilityDeviceAction;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v90 - 8) + 104))(v92, *MEMORY[0x1E69E6AF8], v90);
    swift_willThrow();
LABEL_7:
    (*(v167 + 8))(v83, v66);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v84 = v82;
  switch(v82)
  {
    case 0:
      v173 = 0;
      sub_1C0F1E3DC();
      v85 = v121;
      v86 = v123;
      sub_1C0F50670();
      if (v86)
      {
        goto LABEL_7;
      }

      v87 = *(v124 + 8);
      v88 = v85;
      v89 = &v152;
      goto LABEL_38;
    case 1:
      v173 = 1;
      sub_1C0F1E388();
      v109 = v122;
      v110 = v123;
      sub_1C0F50670();
      if (v110)
      {
        goto LABEL_7;
      }

      v87 = *(v125 + 8);
      v88 = v109;
      v89 = &v158;
      goto LABEL_38;
    case 2:
      v173 = 2;
      sub_1C0F1E334();
      v105 = v123;
      sub_1C0F50670();
      if (v105)
      {
        goto LABEL_7;
      }

      v87 = *(v128 + 8);
      v88 = v75;
      v89 = &v161;
      goto LABEL_38;
    case 3:
      v173 = 3;
      sub_1C0F1E2E0();
      v106 = v152;
      v107 = v123;
      sub_1C0F50670();
      if (v107)
      {
        goto LABEL_7;
      }

      v87 = *(v130 + 8);
      v88 = v106;
      v89 = &v159;
      goto LABEL_38;
    case 4:
      v173 = 4;
      sub_1C0F1E28C();
      v99 = v153;
      v100 = v123;
      sub_1C0F50670();
      if (v100)
      {
        goto LABEL_7;
      }

      v87 = *(v132 + 8);
      v88 = v99;
      v89 = &v163;
      goto LABEL_38;
    case 5:
      v173 = 5;
      sub_1C0F1E238();
      v111 = v123;
      sub_1C0F50670();
      if (v111)
      {
        goto LABEL_7;
      }

      v87 = *(v133 + 8);
      v88 = v76;
      v89 = &v166;
      goto LABEL_38;
    case 6:
      v173 = 6;
      sub_1C0F1E1E4();
      v114 = v154;
      v115 = v123;
      sub_1C0F50670();
      if (v115)
      {
        goto LABEL_7;
      }

      v87 = *(v135 + 8);
      v88 = v114;
      v89 = v168;
      goto LABEL_38;
    case 7:
      v173 = 7;
      sub_1C0F1E190();
      v108 = v123;
      sub_1C0F50670();
      if (v108)
      {
        goto LABEL_7;
      }

      v87 = *(v137 + 8);
      v88 = v77;
      v89 = &v169;
      goto LABEL_38;
    case 8:
      v173 = 8;
      sub_1C0F1E13C();
      v118 = v155;
      v119 = v123;
      sub_1C0F50670();
      if (v119)
      {
        goto LABEL_7;
      }

      v87 = *(v139 + 8);
      v88 = v118;
      v89 = &v171;
      goto LABEL_38;
    case 9:
      v173 = 9;
      sub_1C0F1E0E8();
      v103 = v156;
      v104 = v123;
      sub_1C0F50670();
      if (v104)
      {
        goto LABEL_7;
      }

      v87 = *(v141 + 8);
      v88 = v103;
      v89 = &v172;
      goto LABEL_38;
    case 10:
      v173 = 10;
      sub_1C0F1E094();
      v116 = v157;
      v117 = v123;
      sub_1C0F50670();
      if (v117)
      {
        goto LABEL_7;
      }

      v87 = *(v143 + 8);
      v88 = v116;
      v89 = &v174;
      goto LABEL_38;
    case 11:
      v173 = 11;
      sub_1C0F1E040();
      v97 = v158;
      v98 = v123;
      sub_1C0F50670();
      if (v98)
      {
        goto LABEL_7;
      }

      v87 = *(v145 + 8);
      v88 = v97;
      v89 = &v175;
      goto LABEL_38;
    case 12:
      v173 = 12;
      sub_1C0F1DFEC();
      v101 = v159;
      v102 = v123;
      sub_1C0F50670();
      if (v102)
      {
        goto LABEL_7;
      }

      v87 = *(v147 + 8);
      v88 = v101;
      v89 = &v176;
      goto LABEL_38;
    case 13:
      v173 = 13;
      sub_1C0F1DF98();
      v112 = v160;
      v113 = v123;
      sub_1C0F50670();
      if (v113)
      {
        goto LABEL_7;
      }

      v87 = *(v149 + 8);
      v88 = v112;
      v89 = &v177;
LABEL_38:
      v87(v88, *(v89 - 32));
      break;
    case 14:
      v173 = 14;
      sub_1C0F1DF44();
      v95 = v161;
      v96 = v123;
      sub_1C0F50670();
      if (v96)
      {
        goto LABEL_7;
      }

      (*(v151 + 8))(v95, v79);
      break;
    default:
      goto LABEL_6;
  }

  (*(v167 + 8))(v83, v66);
  swift_unknownObjectRelease();
  v93 = v168[0];
  *v78 = v84;
  return __swift_destroy_boxed_opaque_existential_0(v93);
}

unint64_t sub_1C0F1FC20()
{
  result = qword_1EBE78080;
  if (!qword_1EBE78080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78080);
  }

  return result;
}

unint64_t sub_1C0F1FC78()
{
  result = qword_1EBE78088;
  if (!qword_1EBE78088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78090, &qword_1C0F598A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78088);
  }

  return result;
}

unint64_t sub_1C0F1FCDC(uint64_t a1)
{
  result = sub_1C0F1FD04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FD04()
{
  result = qword_1EBE78098;
  if (!qword_1EBE78098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78098);
  }

  return result;
}

unint64_t sub_1C0F1FD5C()
{
  result = qword_1EBE780A0;
  if (!qword_1EBE780A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780A0);
  }

  return result;
}

unint64_t sub_1C0F1FDB0(uint64_t a1)
{
  result = sub_1C0F1FDD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FDD8()
{
  result = qword_1EBE780A8;
  if (!qword_1EBE780A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780A8);
  }

  return result;
}

unint64_t sub_1C0F1FE30()
{
  result = qword_1EBE780B0;
  if (!qword_1EBE780B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780B0);
  }

  return result;
}

unint64_t sub_1C0F1FE84(uint64_t a1)
{
  result = sub_1C0F1FEAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FEAC()
{
  result = qword_1EBE780B8;
  if (!qword_1EBE780B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780B8);
  }

  return result;
}

unint64_t sub_1C0F1FF04()
{
  result = qword_1EBE780C0;
  if (!qword_1EBE780C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780C0);
  }

  return result;
}

unint64_t sub_1C0F1FF58(uint64_t a1)
{
  result = sub_1C0F1FF80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F1FF80()
{
  result = qword_1EBE780C8;
  if (!qword_1EBE780C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780C8);
  }

  return result;
}

unint64_t sub_1C0F1FFD8()
{
  result = qword_1EBE780D0;
  if (!qword_1EBE780D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780D0);
  }

  return result;
}

unint64_t sub_1C0F2002C(uint64_t a1)
{
  result = sub_1C0F20054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20054()
{
  result = qword_1EBE780D8;
  if (!qword_1EBE780D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780D8);
  }

  return result;
}

unint64_t sub_1C0F200AC()
{
  result = qword_1EBE780E0;
  if (!qword_1EBE780E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780E0);
  }

  return result;
}

unint64_t sub_1C0F20100(uint64_t a1)
{
  result = sub_1C0F20128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20128()
{
  result = qword_1EBE780E8;
  if (!qword_1EBE780E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780E8);
  }

  return result;
}

unint64_t sub_1C0F20180()
{
  result = qword_1EBE780F0;
  if (!qword_1EBE780F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780F0);
  }

  return result;
}

unint64_t sub_1C0F201D4(uint64_t a1)
{
  result = sub_1C0F201FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F201FC()
{
  result = qword_1EBE780F8;
  if (!qword_1EBE780F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE780F8);
  }

  return result;
}

unint64_t sub_1C0F20254()
{
  result = qword_1EBE78100;
  if (!qword_1EBE78100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78100);
  }

  return result;
}

unint64_t sub_1C0F202A8(uint64_t a1)
{
  result = sub_1C0F202D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F202D0()
{
  result = qword_1EBE78108;
  if (!qword_1EBE78108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78108);
  }

  return result;
}

unint64_t sub_1C0F20328()
{
  result = qword_1EBE78110;
  if (!qword_1EBE78110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78110);
  }

  return result;
}

unint64_t sub_1C0F2037C(uint64_t a1)
{
  result = sub_1C0F203A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F203A4()
{
  result = qword_1EBE78118;
  if (!qword_1EBE78118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78118);
  }

  return result;
}

unint64_t sub_1C0F203FC()
{
  result = qword_1EBE78120;
  if (!qword_1EBE78120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78120);
  }

  return result;
}

unint64_t sub_1C0F20450(uint64_t a1)
{
  result = sub_1C0F20478();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20478()
{
  result = qword_1EBE78128;
  if (!qword_1EBE78128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78128);
  }

  return result;
}

unint64_t sub_1C0F204D0()
{
  result = qword_1EBE78130;
  if (!qword_1EBE78130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78130);
  }

  return result;
}

unint64_t sub_1C0F20524(uint64_t a1)
{
  result = sub_1C0F2054C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2054C()
{
  result = qword_1EBE78138;
  if (!qword_1EBE78138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78138);
  }

  return result;
}

unint64_t sub_1C0F205A4()
{
  result = qword_1EBE78140;
  if (!qword_1EBE78140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78140);
  }

  return result;
}

unint64_t sub_1C0F205F8(uint64_t a1)
{
  result = sub_1C0F20620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F20620()
{
  result = qword_1EBE78148;
  if (!qword_1EBE78148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78148);
  }

  return result;
}

unint64_t sub_1C0F20678()
{
  result = qword_1EBE78150;
  if (!qword_1EBE78150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78150);
  }

  return result;
}

unint64_t sub_1C0F206CC(uint64_t a1)
{
  result = sub_1C0F206F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F206F4()
{
  result = qword_1EBE78158;
  if (!qword_1EBE78158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78158);
  }

  return result;
}

unint64_t sub_1C0F2074C()
{
  result = qword_1EBE78160;
  if (!qword_1EBE78160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78160);
  }

  return result;
}

unint64_t sub_1C0F207A0(uint64_t a1)
{
  result = sub_1C0F207C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F207C8()
{
  result = qword_1EBE78168;
  if (!qword_1EBE78168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78168);
  }

  return result;
}

unint64_t sub_1C0F20820()
{
  result = qword_1EBE78170;
  if (!qword_1EBE78170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78170);
  }

  return result;
}

unint64_t sub_1C0F20874(uint64_t a1)
{
  result = sub_1C0F2089C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2089C()
{
  result = qword_1EBE78178;
  if (!qword_1EBE78178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78178);
  }

  return result;
}

unint64_t sub_1C0F208F4()
{
  result = qword_1EBE78180;
  if (!qword_1EBE78180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78180);
  }

  return result;
}

uint64_t sub_1C0F20A48(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F20AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F20C8C()
{
  result = qword_1EBE78188;
  if (!qword_1EBE78188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78188);
  }

  return result;
}

unint64_t sub_1C0F20CE4()
{
  result = qword_1EBE78190;
  if (!qword_1EBE78190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78190);
  }

  return result;
}

unint64_t sub_1C0F20D3C()
{
  result = qword_1EBE78198;
  if (!qword_1EBE78198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78198);
  }

  return result;
}

unint64_t sub_1C0F20D94()
{
  result = qword_1EBE781A0;
  if (!qword_1EBE781A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781A0);
  }

  return result;
}

unint64_t sub_1C0F20DEC()
{
  result = qword_1EBE781A8;
  if (!qword_1EBE781A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781A8);
  }

  return result;
}

unint64_t sub_1C0F20E44()
{
  result = qword_1EBE781B0;
  if (!qword_1EBE781B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781B0);
  }

  return result;
}

unint64_t sub_1C0F20E9C()
{
  result = qword_1EBE781B8;
  if (!qword_1EBE781B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781B8);
  }

  return result;
}

unint64_t sub_1C0F20EF4()
{
  result = qword_1EBE781C0;
  if (!qword_1EBE781C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781C0);
  }

  return result;
}

unint64_t sub_1C0F20F4C()
{
  result = qword_1EBE781C8;
  if (!qword_1EBE781C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781C8);
  }

  return result;
}

unint64_t sub_1C0F20FA4()
{
  result = qword_1EBE781D0;
  if (!qword_1EBE781D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781D0);
  }

  return result;
}

unint64_t sub_1C0F20FFC()
{
  result = qword_1EBE781D8;
  if (!qword_1EBE781D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781D8);
  }

  return result;
}

unint64_t sub_1C0F21054()
{
  result = qword_1EBE781E0;
  if (!qword_1EBE781E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781E0);
  }

  return result;
}

unint64_t sub_1C0F210AC()
{
  result = qword_1EBE781E8;
  if (!qword_1EBE781E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781E8);
  }

  return result;
}

unint64_t sub_1C0F21104()
{
  result = qword_1EBE781F0;
  if (!qword_1EBE781F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781F0);
  }

  return result;
}

unint64_t sub_1C0F2115C()
{
  result = qword_1EBE781F8;
  if (!qword_1EBE781F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE781F8);
  }

  return result;
}

unint64_t sub_1C0F211B4()
{
  result = qword_1EBE78200;
  if (!qword_1EBE78200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78200);
  }

  return result;
}

unint64_t sub_1C0F2120C()
{
  result = qword_1EBE78208;
  if (!qword_1EBE78208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78208);
  }

  return result;
}

unint64_t sub_1C0F21264()
{
  result = qword_1EBE78210;
  if (!qword_1EBE78210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78210);
  }

  return result;
}

unint64_t sub_1C0F212BC()
{
  result = qword_1EBE78218;
  if (!qword_1EBE78218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78218);
  }

  return result;
}

unint64_t sub_1C0F21314()
{
  result = qword_1EBE78220;
  if (!qword_1EBE78220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78220);
  }

  return result;
}

unint64_t sub_1C0F2136C()
{
  result = qword_1EBE78228;
  if (!qword_1EBE78228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78228);
  }

  return result;
}

unint64_t sub_1C0F213C4()
{
  result = qword_1EBE78230;
  if (!qword_1EBE78230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78230);
  }

  return result;
}

unint64_t sub_1C0F2141C()
{
  result = qword_1EBE78238;
  if (!qword_1EBE78238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78238);
  }

  return result;
}

unint64_t sub_1C0F21474()
{
  result = qword_1EBE78240;
  if (!qword_1EBE78240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78240);
  }

  return result;
}

unint64_t sub_1C0F214CC()
{
  result = qword_1EBE78248;
  if (!qword_1EBE78248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78248);
  }

  return result;
}

unint64_t sub_1C0F21524()
{
  result = qword_1EBE78250;
  if (!qword_1EBE78250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78250);
  }

  return result;
}

unint64_t sub_1C0F2157C()
{
  result = qword_1EBE78258;
  if (!qword_1EBE78258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78258);
  }

  return result;
}

unint64_t sub_1C0F215D4()
{
  result = qword_1EBE78260;
  if (!qword_1EBE78260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78260);
  }

  return result;
}

unint64_t sub_1C0F2162C()
{
  result = qword_1EBE78268;
  if (!qword_1EBE78268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78268);
  }

  return result;
}

unint64_t sub_1C0F21684()
{
  result = qword_1EBE78270;
  if (!qword_1EBE78270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78270);
  }

  return result;
}

unint64_t sub_1C0F216DC()
{
  result = qword_1EBE78278;
  if (!qword_1EBE78278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78278);
  }

  return result;
}

unint64_t sub_1C0F21734()
{
  result = qword_1EBE78280;
  if (!qword_1EBE78280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78280);
  }

  return result;
}

unint64_t sub_1C0F2178C()
{
  result = qword_1EBE78288;
  if (!qword_1EBE78288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78288);
  }

  return result;
}

uint64_t sub_1C0F217E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C0F670F0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C0F67110 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0F67130 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572506E776F7263 && a2 == 0xEA00000000007373 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F67150 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C0F67170 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74747542656D6F68 && a2 == 0xEA00000000006E6FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747475426B636F6CLL && a2 == 0xEA00000000006E6FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEA0000000000746FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656B616873 && a2 == 0xE500000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6863726F74 && a2 == 0xE500000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C43656C70697274 && a2 == 0xEB000000006B6369 || (sub_1C0F50790() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F44656D756C6F76 && a2 == 0xEA00000000006E77 || (sub_1C0F50790() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7055656D756C6F76 && a2 == 0xE800000000000000)
  {

    return 14;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1C0F21CE0()
{
  v0 = sub_1C0F4FD30();
  __swift_allocate_value_buffer(v0, qword_1EBE78290);
  __swift_project_value_buffer(v0, qword_1EBE78290);
  return sub_1C0F4FD10();
}

uint64_t sub_1C0F21D64()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      sub_1C0F21E30(*(v1 + v3), 0, 0, 0xC000000000000000);
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C0F21E30(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = a4;
  v9 = 0;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_13;
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1C0F22A2C(MEMORY[0x1E69E7CC0]);
      goto LABEL_14;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) != a3)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    goto LABEL_46;
  }

  if (!BYTE6(a4))
  {
    goto LABEL_13;
  }

LABEL_8:

  sub_1C0F233C0(a3, v5);

LABEL_14:
  v5 = sub_1C0F22C88(a1, a2 & 1);

  if ((a2 & 1) != 0 && v5 == sub_1C0F4FD90())
  {
    swift_beginAccess();
    v9 = *(v4 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_17:
      v26 = *(v9 + 2);
      v25 = *(v9 + 3);
      if (v26 >= v25 >> 1)
      {
        v9 = sub_1C0F22738((v25 > 1), v26 + 1, 1, v9);
      }

      *(v9 + 2) = v26 + 1;
      *&v9[8 * v26 + 32] = a1;
      *(v4 + 32) = v9;
      goto LABEL_30;
    }

LABEL_47:
    v9 = sub_1C0F22738(0, *(v9 + 2) + 1, 1, v9);
    *(v4 + 32) = v9;
    goto LABEL_17;
  }

  swift_beginAccess();
  v27 = *(v4 + 32);
  v28 = *(v27 + 2);
  if (!v28)
  {
LABEL_24:
    v31 = *(v27 + 2);
LABEL_29:
    sub_1C0F22EA0(v28, v31);
LABEL_30:
    swift_endAccess();
    return v5;
  }

  v29 = 0;
  v30 = -40;
  while (*&v27[8 * v29 + 32] != a1)
  {
    ++v29;
    v30 -= 8;
    if (v28 == v29)
    {
      goto LABEL_24;
    }
  }

  v32 = (v29 + 1);
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v27;
    if (v33)
    {
      goto LABEL_27;
    }
  }

  v27 = sub_1C0EF95AC(v27);
LABEL_27:
  v34 = *(v27 + 2);
  if (v32 == v34)
  {
LABEL_28:
    *(v4 + 32) = v27;
    v31 = *(v27 + 2);
    v28 = v29;
    if (v31 >= v29)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v36 = v27 + 32;
    v37 = &v27[-v30];
    while (v32 < v34)
    {
      if (*v37 != a1)
      {
        if (v32 != v29)
        {
          if (v29 >= v34)
          {
            __break(1u);
            break;
          }

          v38 = *&v36[8 * v29];
          *&v36[8 * v29] = *v37;
          *v37 = v38;
          v34 = *(v27 + 2);
        }

        ++v29;
      }

      ++v32;
      v37 += 8;
      if (v32 == v34)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_once();
  v15 = sub_1C0F4FD30();
  __swift_project_value_buffer(v15, qword_1EBE78290);
  v16 = v32;
  v17 = sub_1C0F4FD00();
  v18 = sub_1C0F50470();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39[0] = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_1C0F50800();
    v23 = sub_1C0EE9754(v21, v22, v39);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1C0E8A000, v17, v18, "handleEnableAccessibilityFeature unable to decode settings dict: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1C68EB070](v20, -1, -1);
    MEMORY[0x1C68EB070](v19, -1, -1);
  }

  else
  {
  }

  return 4294967294;
}

char *sub_1C0F2222C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77940, &qword_1C0F57520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C0F22330(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77908, &unk_1C0F574F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0F2243C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77918, &qword_1C0F57500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0F22560(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE782B0, &qword_1C0F5AF28);
  v10 = *(sub_1C0F50070() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1C0F50070() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C0F22738(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE782A8, &qword_1C0F5AF18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C0F2283C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C8, &qword_1C0F574A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1C0F22930(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C0, &qword_1C0F5AF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

unint64_t sub_1C0F22A2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77938, &qword_1C0F57518);
    v3 = sub_1C0F50650();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C0F22F60(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1C0EFA930(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C0EFEECC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C0F22B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB8, &qword_1C0F57E30);
    v3 = sub_1C0F50650();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C0EFA930(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C0F22C88(uint64_t a1, char a2)
{
  if (qword_1EBE77190 != -1)
  {
    swift_once();
  }

  v3 = sub_1C0F4FD30();
  __swift_project_value_buffer(v3, qword_1EBE78290);
  v4 = sub_1C0F4FD00();
  v5 = sub_1C0F50470();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    type metadata accessor for AXSSRemoteDesktopFeature();
    v8 = sub_1C0F501D0();
    v10 = sub_1C0EE9754(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a2 & 1;
    _os_log_impl(&dword_1C0E8A000, v4, v5, "Unhandled call set feature %s enabled=%{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C68EB070](v7, -1, -1);
    MEMORY[0x1C68EB070](v6, -1, -1);
  }

  return 4294967291;
}

unint64_t sub_1C0F22DF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C0F22EA0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1C0F22738(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1C0F22DF8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1C0F22F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E0, &unk_1C0F574D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1C0F23034(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    sub_1C0F505A0();

    v5 = 0xD00000000000002DLL;
  }

  else
  {
    sub_1C0F505A0();

    v5 = 0xD000000000000027;
  }

  v7 = v5;
  MEMORY[0x1C68E9A50](a1, a2);
  return v7;
}

uint64_t sub_1C0F23134()
{
  v1 = OBJC_IVAR____TtC26AccessibilitySharedSupport22AXSSRemoteDesktopCoder__keyPair;
  v2 = sub_1C0F50040();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport22AXSSRemoteDesktopCoder__symmetricKey, &qword_1EBE782E8, &qword_1C0F5AFF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AXSSRemoteDesktopCoder(uint64_t a1)
{
  result = qword_1EBE782C8;
  if (!qword_1EBE782C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0F23244(uint64_t a1)
{
  sub_1C0F50040();
  if (v1 <= 0x3F)
  {
    sub_1C0F23310(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C0F23310(uint64_t a1)
{
  if (!qword_1EBE782D8)
  {
    sub_1C0F50050();
    v1 = sub_1C0F50500();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE782D8);
    }
  }
}

unint64_t sub_1C0F2336C()
{
  result = qword_1EBE782E0;
  if (!qword_1EBE782E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE782E0);
  }

  return result;
}

uint64_t sub_1C0F233C0(uint64_t a1, uint64_t a2)
{
  sub_1C0EED60C(0, &qword_1EBE782F0, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE782F8, &qword_1C0F5AFF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C0F5AF40;
  *(v3 + 32) = sub_1C0EED60C(0, &qword_1EBE78300, 0x1E695DF20);
  *(v3 + 40) = sub_1C0EED60C(0, &qword_1EBE78308, 0x1E696AEC0);
  *(v3 + 48) = sub_1C0EED60C(0, &qword_1EBE78310, 0x1E696AD98);
  *(v3 + 56) = sub_1C0EED60C(0, &qword_1EBE78318, 0x1E695DEC8);
  *(v3 + 64) = sub_1C0EED60C(0, &qword_1EBE78320, 0x1E695DEF0);
  *(v3 + 72) = sub_1C0EED60C(0, &qword_1EBE78328, 0x1E696B098);
  sub_1C0F50490();

  if (!v2)
  {
    if (v6[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78338, &qword_1C0F5B008);
      if (swift_dynamicCast())
      {
        return v6[5];
      }
    }

    else
    {
      sub_1C0EEFAA8(v6, &qword_1EBE78330, &qword_1C0F5B000);
    }

    sub_1C0F2336C();
    swift_allocError();
    *v5 = 0xD00000000000002DLL;
    *(v5 + 8) = 0x80000001C0F67300;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0F235F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C0F23638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C0F23694()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double AccessibilityDeviceActionHandler.deviceState.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1C0F23728(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C0EEF864;

  return AccessibilityDeviceActionHandler.handleAction(_:isDown:)(a1, a2, a3, a4, a5);
}

uint64_t AccessibilityDeviceActionHandler.handleAction(_:isDown:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = *a2;
  v12 = (*(a5 + 32) + **(a5 + 32));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C0EEF864;

  return v12(a1, v5 + 24, a3, a4, a5);
}

uint64_t sub_1C0F2393C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C0EEFCF4;

  return AccessibilityDeviceActionHandler.performAction(_:isDown:)(a1, a2, v8, a4, a5);
}

uint64_t AccessibilityDeviceActionHandler.performAction(_:isDown:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4, void *a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a1;
  v6[5] = a4;
  switch(*a2)
  {
    case 1:
      v48 = (a5[6] + *a5[6]);
      v30 = swift_task_alloc();
      v6[9] = v30;
      *v30 = v6;
      v30[1] = sub_1C0F1816C;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v48;

      goto LABEL_43;
    case 2:
      v45 = (a5[7] + *a5[7]);
      v26 = swift_task_alloc();
      v6[10] = v26;
      *v26 = v6;
      v26[1] = sub_1C0F182C0;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v45;

      goto LABEL_43;
    case 3:
      v46 = (a5[8] + *a5[8]);
      v27 = swift_task_alloc();
      v6[11] = v27;
      *v27 = v6;
      v27[1] = sub_1C0F18414;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v46;

      goto LABEL_43;
    case 4:
      v42 = (a5[9] + *a5[9]);
      v23 = swift_task_alloc();
      v6[12] = v23;
      *v23 = v6;
      v23[1] = sub_1C0F18568;
      v16 = v6 + 2;
      v17 = a3 & 1;
      v18 = a4;
      v19 = a5;
      v20 = v42;

      goto LABEL_46;
    case 5:
      v49 = (a5[10] + *a5[10]);
      v31 = swift_task_alloc();
      v6[13] = v31;
      *v31 = v6;
      v31[1] = sub_1C0F186BC;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v49;

      goto LABEL_43;
    case 6:
      v51 = (a5[11] + *a5[11]);
      v34 = swift_task_alloc();
      v6[14] = v34;
      *v34 = v6;
      v34[1] = sub_1C0F18840;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v51;

      goto LABEL_43;
    case 7:
      v47 = (a5[12] + *a5[12]);
      v29 = swift_task_alloc();
      v6[15] = v29;
      *v29 = v6;
      v29[1] = sub_1C0F18994;
      v16 = v6 + 2;
      v17 = a3 & 1;
      v18 = a4;
      v19 = a5;
      v20 = v47;

      goto LABEL_46;
    case 8:
      v53 = (a5[13] + *a5[13]);
      v38 = swift_task_alloc();
      v6[16] = v38;
      *v38 = v6;
      v38[1] = sub_1C0F18AE8;
      v16 = v6 + 2;
      v17 = a3 & 1;
      v18 = a4;
      v19 = a5;
      v20 = v53;

      goto LABEL_46;
    case 9:
      v44 = (a5[14] + *a5[14]);
      v25 = swift_task_alloc();
      v6[17] = v25;
      *v25 = v6;
      v25[1] = sub_1C0F18C3C;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v44;

      goto LABEL_43;
    case 0xA:
      v52 = (a5[15] + *a5[15]);
      v35 = swift_task_alloc();
      v6[18] = v35;
      *v35 = v6;
      v35[1] = sub_1C0F18D90;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v52;

      goto LABEL_43;
    case 0xB:
      v41 = (a5[16] + *a5[16]);
      v21 = swift_task_alloc();
      v6[19] = v21;
      *v21 = v6;
      v21[1] = sub_1C0F18EE4;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v41;

      goto LABEL_43;
    case 0xC:
      v43 = (a5[17] + *a5[17]);
      v24 = swift_task_alloc();
      v6[20] = v24;
      *v24 = v6;
      v24[1] = sub_1C0F19038;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v43;

      goto LABEL_43;
    case 0xD:
      v50 = (a5[18] + *a5[18]);
      v33 = swift_task_alloc();
      v6[21] = v33;
      *v33 = v6;
      v33[1] = sub_1C0F1918C;
      v16 = v6 + 2;
      v17 = a3 & 1;
      v18 = a4;
      v19 = a5;
      v20 = v50;

      goto LABEL_46;
    case 0xE:
      v40 = (a5[19] + *a5[19]);
      v15 = swift_task_alloc();
      v6[22] = v15;
      *v15 = v6;
      v15[1] = sub_1C0F192E0;
      v16 = v6 + 2;
      v17 = a3 & 1;
      v18 = a4;
      v19 = a5;
      v20 = v40;

LABEL_46:
      result = v20(v16, v17, v18, v19);
      break;
    default:
      v39 = (a5[5] + *a5[5]);
      v9 = swift_task_alloc();
      v6[8] = v9;
      *v9 = v6;
      v9[1] = sub_1C0F18018;
      v10 = v6 + 2;
      v11 = a4;
      v12 = a5;
      v13 = v39;

LABEL_43:
      result = v13(v10, v11, v12);
      break;
  }

  return result;
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleAction(_:isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C0EEF864;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.performAction(_:isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleActionButton()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCameraButtonDoubleLightPress()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCameraButtonLightPress()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCameraButtonPress()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCrownPress(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCrownTurnClockwise()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCrownTurnCounterClockwise()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleHomeButton(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleLockButton(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleScreenshot()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleShake()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleTorch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleTripleClick()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0EEFCF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleVolumeDown(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 144) + **(a4 + 144));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleVolumeUp(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 152) + **(a4 + 152));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C0F25CF8()
{
  v0 = sub_1C0F4FD30();
  __swift_allocate_value_buffer(v0, qword_1EBE78348);
  __swift_project_value_buffer(v0, qword_1EBE78348);
  return sub_1C0F4FD10();
}

uint64_t sub_1C0F25D7C(uint64_t a1, unint64_t a2)
{
  v4 = qword_1EBE78340;
  if (qword_1EBE78340 || (v5 = sub_1C0F501A0(), v6 = [objc_opt_self() bundleWithIdentifier_], v5, v7 = qword_1EBE78340, qword_1EBE78340 = v6, v7, (v4 = qword_1EBE78340) != 0))
  {
    v8 = v4;
    v9 = sub_1C0F501A0();
    v10 = sub_1C0F501A0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    a1 = sub_1C0F501B0();
  }

  else
  {
    if (qword_1EBE77198 != -1)
    {
      swift_once();
    }

    v13 = sub_1C0F4FD30();
    __swift_project_value_buffer(v13, qword_1EBE78348);

    v14 = sub_1C0F4FD00();
    v15 = sub_1C0F50470();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1C0EE9754(a1, a2, &v18);
      _os_log_impl(&dword_1C0E8A000, v14, v15, "No localized string for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1C68EB070](v17, -1, -1);
      MEMORY[0x1C68EB070](v16, -1, -1);
    }
  }

  return a1;
}

id sub_1C0F25FFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a3, a2);
  if (v4)
  {
    v5 = sub_1C0F501A0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

AXSSRemoteDesktop __swiftcall AXSSRemoteDesktop.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AXSSRemoteDesktop()
{
  result = qword_1EBE78360;
  if (!qword_1EBE78360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE78360);
  }

  return result;
}

uint64_t sub_1C0F26178(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      if (a1 == 7)
      {
        return 0xD000000000000013;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x6F4D656375646552;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 1701736270;
      }

      if (a1 == 1)
      {
        return 0x65764F6563696F56;
      }

LABEL_18:
      type metadata accessor for AXSSRemoteDesktopFeature();
      return sub_1C0F501D0();
    }

    if (a1 == 2)
    {
      return 1836019546;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_1C0F262E0(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v3 = "Toolbar button shapes";
        v1 = 0xD000000000000013;
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_23;
        }

        v3 = "p";
        v1 = 0xD000000000000015;
      }
    }

    else
    {
      if (a1 == 4)
      {
        v1 = 0x6D20656375646552;
        v2 = 0xED00006E6F69746FLL;
        return sub_1C0F25D7C(v1, v2);
      }

      v3 = "Reduce transparency";
      v1 = 0xD00000000000001BLL;
    }

    v2 = v3 | 0x8000000000000000;
    return sub_1C0F25D7C(v1, v2);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = 1836019546;
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0x80000001C0F67450;
      v1 = 0xD000000000000011;
    }

    return sub_1C0F25D7C(v1, v2);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x65764F6563696F56;
      v2 = 0xE900000000000072;
      return sub_1C0F25D7C(v1, v2);
    }

LABEL_23:
    if (qword_1EBE77198 != -1)
    {
      swift_once();
    }

    v8 = sub_1C0F4FD30();
    __swift_project_value_buffer(v8, qword_1EBE78348);
    v5 = sub_1C0F4FD00();
    v6 = sub_1C0F50470();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (qword_1EBE77198 != -1)
  {
    swift_once();
  }

  v4 = sub_1C0F4FD30();
  __swift_project_value_buffer(v4, qword_1EBE78348);
  v5 = sub_1C0F4FD00();
  v6 = sub_1C0F50470();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_27;
  }

LABEL_26:
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v14 = v10;
  *v9 = 136315138;
  type metadata accessor for AXSSRemoteDesktopFeature();
  v11 = sub_1C0F501D0();
  v13 = sub_1C0EE9754(v11, v12, &v14);

  *(v9 + 4) = v13;
  _os_log_impl(&dword_1C0E8A000, v5, v6, "Calling getLocalizedName on %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v10);
  MEMORY[0x1C68EB070](v10, -1, -1);
  MEMORY[0x1C68EB070](v9, -1, -1);
LABEL_27:

  return 0;
}

uint64_t sub_1C0F265E8(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 >= 8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a1 - 1) < 2)
    {
      return 1;
    }

    if (!a1)
    {
      if (qword_1EBE77198 != -1)
      {
        swift_once();
      }

      v5 = sub_1C0F4FD30();
      __swift_project_value_buffer(v5, qword_1EBE78348);
      v2 = sub_1C0F4FD00();
      v3 = sub_1C0F50470();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

LABEL_15:
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      type metadata accessor for AXSSRemoteDesktopFeature();
      v8 = sub_1C0F501D0();
      v10 = sub_1C0EE9754(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1C0E8A000, v2, v3, "Calling isFeaturePrivate on %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1C68EB070](v7, -1, -1);
      MEMORY[0x1C68EB070](v6, -1, -1);
LABEL_16:

      return 0;
    }

    if (a1 != 3)
    {
LABEL_7:
      if (qword_1EBE77198 != -1)
      {
        swift_once();
      }

      v1 = sub_1C0F4FD30();
      __swift_project_value_buffer(v1, qword_1EBE78348);
      v2 = sub_1C0F4FD00();
      v3 = sub_1C0F50470();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_26AccessibilitySharedSupport0A12ActionClientOSg(uint64_t a1)
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C0F26878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1C0F268D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

double sub_1C0F2694C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C0F4F780();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __bridge_HIDEvent();
  v12 = v11;
  Type = IOHIDEventGetType();
  if (IOHIDEventGetIntegerValue() == 1 && Type == 1 && (v14 = IOHIDEventGetIntegerValue(), v15 = IOHIDEventGetIntegerValue(), v14 == 65280) && v15 == 34)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    DataValue = IOHIDEventGetDataValue();
    (*(v5 + 104))(v10, *MEMORY[0x1E6969010], v4);
    v18 = sub_1C0F29544(DataValue, IntegerValue, v10);
    v20 = v19;
    sub_1C0F4F670();
    swift_allocObject();
    sub_1C0F4F660();
    sub_1C0F2977C();
    sub_1C0F4F650();

    sub_1C0EFED6C(v18, v20);

    *&v29[32] = v34;
    v30 = v35;
    *v29 = v32;
    *&v29[16] = v33;
    v21 = v36;
    v31 = v36;
    LOBYTE(v20) = v32;
    v37 = BYTE1(v32);
    v22 = *(&v34 + 1);
    v23 = v35;
    v27 = *&v29[8];
    v28 = *&v29[24];
    sub_1C0F113A4(*(&v34 + 1), v35, *(&v35 + 1), v36);

    sub_1C0F07308(v29);
    v24 = v37;
    *a2 = v20;
    *(a2 + 1) = v24;
    *(a2 + 24) = v28;
    result = *&v27;
    *(a2 + 8) = v27;
    *(a2 + 40) = v22;
    *(a2 + 48) = v23;
    *(a2 + 64) = v21;
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

id sub_1C0F26DD8(uint64_t a1)
{
  sub_1C0F4F6A0();
  swift_allocObject();
  sub_1C0F4F690();
  sub_1C0F297D0();
  v1 = sub_1C0F4F680();
  v3 = v2;
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v10 = v1;
      mach_absolute_time();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      IOHIDEventSetSenderID();
      IOHIDEventSetIntegerValue();
      v16 = __bridge_IOHIDEvent(VendorDefinedEvent);
      goto LABEL_17;
    }

    v9 = *(v1 + 16);
    if (!__OFSUB__(*(v1 + 24), v9))
    {
      v10 = v1;
      v11 = sub_1C0F4F560();
      if (v11)
      {
        v12 = v11;
        v13 = sub_1C0F4F580();
        if (__OFSUB__(v9, v13))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
        }

        v14 = v9 - v13 + v12;
        sub_1C0F4F570();
        if (v14)
        {
LABEL_9:
          mach_absolute_time();
          VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
          IOHIDEventSetSenderID();
          IOHIDEventSetIntegerValue();
          v16 = __bridge_IOHIDEvent(VendorDefinedEvent);
LABEL_17:
          v7 = v16;

          v8 = v10;
          goto LABEL_18;
        }
      }

      else
      {
        sub_1C0F4F570();
      }

      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v4)
  {
    v5 = v1;
    mach_absolute_time();
    v6 = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventSetSenderID();
    IOHIDEventSetIntegerValue();
    v7 = __bridge_IOHIDEvent(v6);

    v8 = v5;
LABEL_18:
    sub_1C0EFED6C(v8, v3);

    return v7;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v1;
  if (v1 > v1 >> 32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v1;
  v18 = sub_1C0F4F560();
  if (!v18)
  {
LABEL_26:
    result = sub_1C0F4F570();
    goto LABEL_27;
  }

  v19 = v18;
  v20 = sub_1C0F4F580();
  if (__OFSUB__(v17, v20))
  {
    goto LABEL_23;
  }

  v21 = v17 - v20 + v19;
  result = sub_1C0F4F570();
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_27:
  __break(1u);
  return result;
}