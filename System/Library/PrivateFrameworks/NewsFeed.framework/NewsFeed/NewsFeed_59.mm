uint64_t sub_1D608F370()
{
  v30 = v0;
  sub_1D5EB6624(*(v0 + 1136), *(v0 + 809));
  v1 = *(v0 + 1184);
  sub_1D608BC28(*(v0 + 856), *(v0 + 1056), v2);

  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1104);
    v7 = *(v0 + 1096);
    v22 = *(v0 + 1080);
    v24 = *(v0 + 1056);
    v25 = *(v0 + 1112);
    v23 = *(v0 + 1040);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136446466;
    v27 = v22;
    v28 = v7;
    v29 = v6;
    v11 = sub_1D5F90834();
    v13 = v12;

    v14 = sub_1D5BC5100(v11, v13, &v26);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_1D5B42000, v4, v5, "Format arrangement failed resolving arrangement %{public}s, error=%{public}@", v8, 0x16u);
    sub_1D609C8C4(v9, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);

    v25(v24, v23);
  }

  else
  {
    v17 = *(v0 + 1112);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 1040);

    v17(v18, v19);
  }

  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D608F6DC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1984) = v3;
  *(v4 + 1976) = a3;
  *(v4 + 1968) = a2;
  v8 = sub_1D725C42C();
  *(v4 + 1992) = v8;
  *(v4 + 2000) = *(v8 - 8);
  *(v4 + 2008) = swift_task_alloc();
  *(v4 + 2016) = swift_task_alloc();
  *(v4 + 2024) = swift_task_alloc();
  *(v4 + 2032) = swift_task_alloc();
  v9 = *(a3 + 16);
  *(v4 + 2040) = v9;
  v10 = *(a3 + 24);
  *(v4 + 2048) = v10;
  v12 = type metadata accessor for FormatArrangementTemplateResult(255, v9, v10, v11);
  *(v4 + 2056) = v12;
  v13 = sub_1D726393C();
  *(v4 + 2064) = v13;
  *(v4 + 2072) = *(v13 - 8);
  *(v4 + 2080) = swift_task_alloc();
  *(v4 + 2088) = swift_task_alloc();
  *(v4 + 2096) = *(v12 - 8);
  *(v4 + 2104) = swift_task_alloc();
  *(v4 + 2112) = swift_task_alloc();
  *(v4 + 2120) = swift_task_alloc();
  *(v4 + 2128) = swift_task_alloc();
  *(v4 + 2136) = swift_task_alloc();
  *(v4 + 2144) = swift_task_alloc();
  *(v4 + 2152) = swift_task_alloc();
  *(v4 + 2160) = swift_task_alloc();
  *(v4 + 2168) = *a1;
  *(v4 + 1865) = *(a1 + 8);
  v14 = a2[3];
  *(v4 + 768) = a2[2];
  *(v4 + 784) = v14;
  *(v4 + 800) = a2[4];
  v15 = a2[1];
  *(v4 + 736) = *a2;
  *(v4 + 752) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D608F934, 0, 0);
}

uint64_t sub_1D608F934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 1865) >> 5;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v39 = *(v4 + 2048);
      v40 = *(v4 + 2040);
      *(v4 + 1904) = sub_1D7261CFC();
      *(v4 + 2248) = type metadata accessor for FormatArrangementSlotInstruction(0, v40, v39, v41);
      *(v4 + 2256) = sub_1D5D2F2BC();
      *(v4 + 2264) = type metadata accessor for FormatArrangementTemplateReference(0, v40, v39, v42);

      if (sub_1D726279C())
      {
        v43 = sub_1D726277C();
        sub_1D726271C();
        if (v43)
        {
          v45 = *(v4 + 2256);
          v46 = *(v45 + 32);
          *(v4 + 2408) = v46;
          v47 = *(v45 + 40);
          *(v4 + 2416) = v47;
          *(v4 + 2424) = 1;
          v48 = *(v4 + 2048);
          v49 = *(v4 + 2040);
          v50 = *(v4 + 800);
          *(v4 + 864) = *(v4 + 784);
          *(v4 + 880) = v50;
          v51 = *(v4 + 768);
          *(v4 + 832) = *(v4 + 752);
          *(v4 + 848) = v51;
          *(v4 + 816) = *(v4 + 736);
          *(v4 + 1776) = v46;
          *(v4 + 1784) = v47;
          v52 = type metadata accessor for FormatArrangementResolverContext(0, v49, v48, v44);
          *(v4 + 2432) = v52;
          v53 = *(v52 - 8);
          *(v4 + 2440) = v53;
          (*(v53 + 16))(v4 + 896, v4 + 736, v52);

          v54 = swift_task_alloc();
          *(v4 + 2448) = v54;
          *v54 = v4;
          v54[1] = sub_1D609183C;
          v21 = *(v4 + 2136);
          v22 = *(v4 + 1976);
          v23 = (v4 + 1776);
          v24 = v4 + 816;
          goto LABEL_20;
        }

        sub_1D7263DBC();
        __break(1u);
        goto LABEL_52;
      }

      v87 = FormatArrangementSlotInstruction.personalize.getter();
      v88 = *(v4 + 1904);
      if (v87)
      {
        v89 = sub_1D6095D88(*(v4 + 1904), *(v4 + 1976));

        v88 = v89;
      }

      v90 = *(v4 + 2096);
      v91 = *(v4 + 2088);
      v92 = *(v4 + 2056);
      *(v4 + 1960) = v88;
      sub_1D72627FC();
      swift_getWitnessTable();
      sub_1D7262C9C();
      if ((*(v90 + 48))(v91, 1, v92) == 1)
      {
        (*(*(v4 + 2072) + 8))(*(v4 + 2088), *(v4 + 2064));

        v93 = sub_1D726275C();
LABEL_47:
        v135 = v93;
        goto LABEL_48;
      }

      v127 = *(v4 + 2128);
      v128 = *(v4 + 2096);
      v129 = *(v4 + 2088);
    }

    else
    {
      if (v5 == 3)
      {
        v6 = *(v4 + 2048);
        v7 = *(v4 + 2040);
        v8 = *(v4 + 1968);
        *(v4 + 496) = *v8;
        v9 = v8[4];
        v11 = v8[1];
        v10 = v8[2];
        *(v4 + 544) = v8[3];
        *(v4 + 560) = v9;
        *(v4 + 512) = v11;
        *(v4 + 528) = v10;
        v12 = type metadata accessor for FormatArrangementResolverContext(0, v7, v6, a4);
        *(v4 + 2272) = v12;
        v13 = *(v12 - 8);
        *(v4 + 2280) = v13;
        (*(v13 + 16))(v4 + 576, v4 + 736, v12);
        *(v4 + 1888) = sub_1D7261CFC();
        *(v4 + 2288) = type metadata accessor for FormatArrangementSlotInstruction(0, v7, v6, v14);
        *(v4 + 2296) = sub_1D5D2F2BC();
        *(v4 + 2304) = type metadata accessor for FormatArrangementTemplateReference(0, v7, v6, v15);

        if (sub_1D726279C())
        {
          v16 = sub_1D726277C();
          sub_1D726271C();
          if (v16)
          {
            v17 = *(v4 + 2296);
            v18 = *(v17 + 32);
            *(v4 + 2464) = v18;
            v19 = *(v17 + 40);
            *(v4 + 2472) = v19;
            *(v4 + 2480) = 1;
            *(v4 + 1808) = v18;
            *(v4 + 1816) = v19;

            v20 = swift_task_alloc();
            *(v4 + 2488) = v20;
            *v20 = v4;
            v20[1] = sub_1D6092260;
            v21 = *(v4 + 2120);
            v22 = *(v4 + 1976);
            v23 = (v4 + 1808);
            v24 = v4 + 496;
LABEL_20:

            return sub_1D609534C(v21, v23, v24, v22);
          }

          goto LABEL_53;
        }

        v94 = *(v4 + 2280);
        v95 = *(v4 + 2272);
        v96 = *(v4 + 544);
        *(v4 + 688) = *(v4 + 528);
        *(v4 + 704) = v96;
        *(v4 + 720) = *(v4 + 560);
        v97 = *(v4 + 512);
        *(v4 + 656) = *(v4 + 496);
        *(v4 + 672) = v97;
        (*(v94 + 8))(v4 + 656, v95);
        v98 = *(v4 + 1888);
        *(v4 + 1928) = v98;
        sub_1D72627FC();
        swift_getWitnessTable();
        if (sub_1D7262CCC())
        {
          v136 = *(v4 + 2040);
          *(v4 + 1912) = sub_1D5D2F2BC();
          v99 = swift_task_alloc();
          *(v99 + 16) = v136;
          v100 = sub_1D72627FC();

          WitnessTable = swift_getWitnessTable();
          v103 = sub_1D5B874E4(sub_1D5CB5238, v99, v100, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v102);

          goto LABEL_33;
        }

        if ((FormatArrangementSlotInstruction.personalize.getter() & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      v55 = *(v4 + 2048);
      v56 = *(v4 + 2040);
      *(v4 + 1952) = sub_1D7261CFC();
      *(v4 + 2312) = type metadata accessor for FormatArrangementSlotInstruction(0, v56, v55, v57);
      *(v4 + 2320) = sub_1D5D2F2BC();
      *(v4 + 2328) = type metadata accessor for FormatArrangementTemplateReference(0, v56, v55, v58);

      if (sub_1D726279C())
      {
        v59 = sub_1D726277C();
        sub_1D726271C();
        if (v59)
        {
          v61 = *(v4 + 2320);
          v62 = *(v61 + 32);
          *(v4 + 2504) = v62;
          v63 = *(v61 + 40);
          *(v4 + 2512) = v63;
          *(v4 + 2520) = 1;
          v64 = *(v4 + 2048);
          v65 = *(v4 + 2040);
          v66 = *(v4 + 800);
          *(v4 + 144) = *(v4 + 784);
          *(v4 + 160) = v66;
          v67 = *(v4 + 768);
          *(v4 + 112) = *(v4 + 752);
          *(v4 + 128) = v67;
          *(v4 + 96) = *(v4 + 736);
          *(v4 + 1824) = v62;
          *(v4 + 1832) = v63;
          v68 = type metadata accessor for FormatArrangementResolverContext(0, v65, v64, v60);
          *(v4 + 2528) = v68;
          v69 = *(v68 - 8);
          *(v4 + 2536) = v69;
          (*(v69 + 16))(v4 + 1616, v4 + 736, v68);

          v70 = swift_task_alloc();
          *(v4 + 2544) = v70;
          *v70 = v4;
          v70[1] = sub_1D6092B20;
          v21 = *(v4 + 2112);
          v22 = *(v4 + 1976);
          v23 = (v4 + 1824);
          v24 = v4 + 96;
          goto LABEL_20;
        }

LABEL_52:
        sub_1D7263DBC();
        __break(1u);
LABEL_53:
        sub_1D7263DBC();
        __break(1u);
LABEL_54:
        sub_1D7263DBC();
        __break(1u);
        goto LABEL_55;
      }

      v104 = FormatArrangementSlotInstruction.personalize.getter();
      v105 = *(v4 + 1952);
      if (v104)
      {
        v106 = sub_1D6095D88(*(v4 + 1952), *(v4 + 1976));

        v105 = v106;
      }

      v107 = *(v4 + 2096);
      v108 = *(v4 + 2080);
      v109 = *(v4 + 2056);
      *(v4 + 1944) = v105;
      sub_1D72627FC();
      swift_getWitnessTable();
      sub_1D7262C9C();
      if ((*(v107 + 48))(v108, 1, v109) == 1)
      {
        v137 = *(v4 + 2040);
        (*(*(v4 + 2072) + 8))(*(v4 + 2080), *(v4 + 2064));

        *(v4 + 1936) = sub_1D5D2F2BC();
        v110 = swift_task_alloc();
        *(v110 + 16) = v137;
        v111 = sub_1D72627FC();

        v112 = swift_getWitnessTable();
        v103 = sub_1D5B874E4(sub_1D5CB5250, v110, v111, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v112, MEMORY[0x1E69E7410], v113);

LABEL_33:

        sub_1D609C50C();
        swift_allocError();
        *v114 = v103;
        *(v114 + 8) = 0;
        *(v114 + 16) = 2;
        swift_willThrow();

        v126 = *(v4 + 8);

        return v126();
      }

      v127 = *(v4 + 2104);
      v128 = *(v4 + 2096);
      v129 = *(v4 + 2080);
    }

    v130 = *(v4 + 2056);
    v131 = *(v128 + 32);
    v131(v127, v129, v130);

    sub_1D72644CC();
    swift_allocObject();
    v132 = sub_1D726270C();
    v131(v133, v127, v130);
    v93 = sub_1D5BFCB60(v132, v130);
    goto LABEL_47;
  }

  if (v5)
  {
    v71 = *(v4 + 2048);
    v72 = *(v4 + 2040);
    v73 = *(v4 + 1968);
    *(v4 + 1056) = *v73;
    v74 = v73[4];
    v76 = v73[1];
    v75 = v73[2];
    *(v4 + 1104) = v73[3];
    *(v4 + 1120) = v74;
    *(v4 + 1072) = v76;
    *(v4 + 1088) = v75;
    v77 = type metadata accessor for FormatArrangementResolverContext(0, v72, v71, a4);
    *(v4 + 2208) = v77;
    v78 = *(v77 - 8);
    *(v4 + 2216) = v78;
    (*(v78 + 16))(v4 + 1216, v4 + 736, v77);
    *(v4 + 1896) = sub_1D7261CFC();
    *(v4 + 2224) = type metadata accessor for FormatArrangementSlotInstruction(0, v72, v71, v79);
    *(v4 + 2232) = sub_1D5D2F2BC();
    *(v4 + 2240) = type metadata accessor for FormatArrangementTemplateReference(0, v72, v71, v80);

    if (sub_1D726279C())
    {
      v81 = sub_1D726277C();
      sub_1D726271C();
      if (v81)
      {
        v82 = *(v4 + 2232);
        v83 = *(v82 + 32);
        *(v4 + 2368) = v83;
        v84 = *(v82 + 40);
        *(v4 + 2376) = v84;
        *(v4 + 2384) = 1;
        *(v4 + 1840) = v83;
        *(v4 + 1848) = v84;

        v85 = swift_task_alloc();
        *(v4 + 2392) = v85;
        *v85 = v4;
        v85[1] = sub_1D60910CC;
        v21 = *(v4 + 2144);
        v22 = *(v4 + 1976);
        v23 = (v4 + 1840);
        v24 = v4 + 1056;
        goto LABEL_20;
      }

LABEL_55:
      result = sub_1D7263DBC();
      __break(1u);
      return result;
    }

    v120 = *(v4 + 2216);
    v121 = *(v4 + 2208);
    v122 = *(v4 + 1104);
    *(v4 + 1568) = *(v4 + 1088);
    *(v4 + 1584) = v122;
    *(v4 + 1600) = *(v4 + 1120);
    v123 = *(v4 + 1072);
    *(v4 + 1536) = *(v4 + 1056);
    *(v4 + 1552) = v123;
    (*(v120 + 8))(v4 + 1536, v121);
    v124 = FormatArrangementSlotInstruction.personalize.getter();
    v98 = *(v4 + 1896);
    if ((v124 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v25 = *(v4 + 2048);
    v26 = *(v4 + 2040);
    v27 = *(v4 + 1968);
    *(v4 + 176) = *v27;
    v28 = v27[4];
    v30 = v27[1];
    v29 = v27[2];
    *(v4 + 224) = v27[3];
    *(v4 + 240) = v28;
    *(v4 + 192) = v30;
    *(v4 + 208) = v29;
    v31 = type metadata accessor for FormatArrangementResolverContext(0, v26, v25, a4);
    *(v4 + 2176) = v31;
    v32 = *(v31 - 8);
    *(v4 + 2184) = v32;
    (*(v32 + 16))(v4 + 1696, v4 + 736, v31);
    *(v4 + 1920) = sub_1D7261CFC();
    *(v4 + 2192) = type metadata accessor for FormatArrangementSlotInstruction(0, v26, v25, v33);
    *(v4 + 2200) = sub_1D5D2F2BC();
    type metadata accessor for FormatArrangementTemplateReference(0, v26, v25, v34);

    if (sub_1D726279C())
    {
      v35 = sub_1D726277C();
      sub_1D726271C();
      v36 = *(v4 + 2200);
      if (v35)
      {
        v37 = *(v36 + 40);
        *(v4 + 2336) = v37;
        *(v4 + 2344) = 1;
        *(v4 + 1792) = *(v36 + 32);
        *(v4 + 1800) = v37;

        v38 = swift_task_alloc();
        *(v4 + 2352) = v38;
        *v38 = v4;
        v38[1] = sub_1D6090A70;
        v21 = *(v4 + 2160);
        v22 = *(v4 + 1976);
        v23 = (v4 + 1792);
        v24 = v4 + 176;
        goto LABEL_20;
      }

      goto LABEL_54;
    }

    v115 = *(v4 + 2184);
    v116 = *(v4 + 2176);
    v117 = *(v4 + 224);
    *(v4 + 48) = *(v4 + 208);
    *(v4 + 64) = v117;
    *(v4 + 80) = *(v4 + 240);
    v118 = *(v4 + 192);
    *(v4 + 16) = *(v4 + 176);
    *(v4 + 32) = v118;
    (*(v115 + 8))(v4 + 16, v116);

    v119 = FormatArrangementSlotInstruction.personalize.getter();
    v98 = *(v4 + 1920);
    if ((v119 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

LABEL_39:
  v125 = sub_1D6095D88(v98, *(v4 + 1976));

  v98 = v125;
LABEL_43:
  v135 = v98;
LABEL_48:

  v134 = *(v4 + 8);

  return v134(v135);
}

uint64_t sub_1D6090A70()
{
  v2 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v3 = *(v2 + 2184);
    v4 = *(v2 + 2176);

    v5 = *(v2 + 176);
    *(v2 + 1472) = *(v2 + 192);
    v6 = *(v2 + 224);
    *(v2 + 1488) = *(v2 + 208);
    *(v2 + 1504) = v6;
    *(v2 + 1520) = *(v2 + 240);
    *(v2 + 1456) = v5;
    (*(v3 + 8))(v2 + 1456, v4);
    v7 = sub_1D6093634;
  }

  else
  {

    v7 = sub_1D6090BE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D6090BE4()
{
  v1 = *(v0 + 2360);
  v2 = *(v0 + 2176);
  v3 = *(v0 + 2160);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v3, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v3, v2);
  if (v1)
  {
    v4 = *(v0 + 2184);
    v5 = *(v0 + 2176);
    v6 = *(v0 + 2160);
    v7 = *(v0 + 2096);
    v8 = *(v0 + 2056);

    (*(v7 + 8))(v6, v8);

    v9 = *(v0 + 176);
    *(v0 + 1392) = *(v0 + 192);
    v10 = *(v0 + 224);
    *(v0 + 1408) = *(v0 + 208);
    *(v0 + 1424) = v10;
    *(v0 + 1440) = *(v0 + 240);
    *(v0 + 1376) = v9;
    (*(v4 + 8))(v0 + 1376, v5);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 2344);
  v14 = *(v0 + 2048);
  v15 = *(v0 + 2040);
  (*(*(v0 + 2096) + 8))(*(v0 + 2160), *(v0 + 2056));
  type metadata accessor for FormatArrangementTemplateReference(0, v15, v14, v16);
  if (v13 == sub_1D726279C())
  {
    v17 = *(v0 + 2184);
    v18 = *(v0 + 2176);
    v19 = *(v0 + 224);
    *(v0 + 48) = *(v0 + 208);
    *(v0 + 64) = v19;
    *(v0 + 80) = *(v0 + 240);
    v20 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v20;
    (*(v17 + 8))(v0 + 16, v18);

    v21 = FormatArrangementSlotInstruction.personalize.getter();
    v22 = *(v0 + 1920);
    if (v21)
    {
      v23 = sub_1D6095D88(*(v0 + 1920), *(v0 + 1976));

      v22 = v23;
    }

    v24 = *(v0 + 8);

    return v24(v22);
  }

  v25 = *(v0 + 2344);
  v26 = sub_1D726277C();
  sub_1D726271C();
  if ((v26 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_17;
  }

  v27 = *(v0 + 2200) + 16 * v25;
  result = *(v27 + 40);
  *(v0 + 2336) = result;
  *(v0 + 2344) = v25 + 1;
  if (__OFADD__(v25, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v0 + 1792) = *(v27 + 32);
  *(v0 + 1800) = result;

  v28 = swift_task_alloc();
  *(v0 + 2352) = v28;
  *v28 = v0;
  v28[1] = sub_1D6090A70;
  v29 = *(v0 + 2160);
  v30 = *(v0 + 1976);

  return sub_1D609534C(v29, (v0 + 1792), v0 + 176, v30);
}

uint64_t sub_1D60910CC()
{
  *(*v1 + 2400) = v0;

  if (v0)
  {
    v2 = sub_1D609376C;
  }

  else
  {
    v2 = sub_1D60911E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60911E0()
{
  v45 = v0;
  v1 = (v0 + 1056);
  v2 = *(v0 + 2400);
  v3 = *(v0 + 2208);
  v4 = *(v0 + 2144);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v4, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v4, v3);
  if (v2)
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2144), *(v0 + 2056));
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2032), v5);

    v6 = v2;
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EBC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 2376);
    if (v9)
    {
      v11 = *(v0 + 2368);
      v40 = *(v0 + 2000);
      v41 = *(v0 + 1992);
      v42 = *(v0 + 2032);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v12 = 136446466;
      v15 = sub_1D5BC5100(v11, v10, &v43);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2114;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v17;
      *v13 = v17;
      sub_1D609C8C4(v13, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1DA6FD500](v14, -1, -1);
      MEMORY[0x1DA6FD500](v12, -1, -1);

      (*(v40 + 8))(v42, v41);
    }

    else
    {
      v18 = *(v0 + 2032);
      v19 = *(v0 + 2000);
      v20 = *(v0 + 1992);

      (*(v19 + 8))(v18, v20);
    }
  }

  else
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2144), *(v0 + 2056));
  }

  v21 = *(v0 + 2384);
  if (v21 == sub_1D726279C())
  {

    v22 = *(v0 + 2216);
    v23 = *(v0 + 2208);
    v24 = *(v0 + 2168);
    v25 = *(v0 + 1865) & 1;
    v26 = *(v0 + 1104);
    *(v0 + 1568) = *(v0 + 1088);
    *(v0 + 1584) = v26;
    *(v0 + 1600) = *(v0 + 1120);
    v27 = *(v0 + 1072);
    *(v0 + 1536) = *v1;
    *(v0 + 1552) = v27;
    (*(v22 + 8))(v0 + 1536, v23);
    v43 = v24;
    v44 = v25;
    v28 = FormatArrangementSlotInstruction.personalize.getter();
    v29 = *(v0 + 1896);
    if (v28)
    {
      v30 = sub_1D6095D88(*(v0 + 1896), *(v0 + 1976));

      v29 = v30;
    }

    v39 = *(v0 + 8);

    return v39(v29);
  }

  v31 = *(v0 + 2384);
  v32 = sub_1D726277C();
  sub_1D726271C();
  if ((v32 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_18;
  }

  v33 = *(v0 + 2232) + 16 * v31;
  v34 = *(v33 + 32);
  *(v0 + 2368) = v34;
  result = *(v33 + 40);
  *(v0 + 2376) = result;
  *(v0 + 2384) = v31 + 1;
  if (__OFADD__(v31, 1))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  *(v0 + 1840) = v34;
  *(v0 + 1848) = result;

  v36 = swift_task_alloc();
  *(v0 + 2392) = v36;
  *v36 = v0;
  v36[1] = sub_1D60910CC;
  v37 = *(v0 + 2144);
  v38 = *(v0 + 1976);

  return sub_1D609534C(v37, (v0 + 1840), v1, v38);
}

uint64_t sub_1D609183C()
{
  v2 = *v1;
  *(*v1 + 2456) = v0;

  if (v0)
  {
    v3 = *(v2 + 2440);
    v4 = *(v2 + 2432);
    v5 = *(v2 + 864);
    *(v2 + 1008) = *(v2 + 848);
    *(v2 + 1024) = v5;
    *(v2 + 1040) = *(v2 + 880);
    v6 = *(v2 + 832);
    *(v2 + 976) = *(v2 + 816);
    *(v2 + 992) = v6;
    (*(v3 + 8))(v2 + 976, v4);
    v7 = sub_1D6093D18;
  }

  else
  {
    v7 = sub_1D6091984;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D6091984()
{
  v75 = v0;
  v1 = *(v0 + 2456);
  v2 = *(v0 + 2440);
  v3 = *(v0 + 2432);
  v4 = *(v0 + 2136);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v4, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v4, v3);
  v5 = (v2 + 8);
  if (v1)
  {
    v6 = *(v0 + 2432);
    (*(*(v0 + 2096) + 8))(*(v0 + 2136), *(v0 + 2056));
    v7 = *(v0 + 816);
    *(v0 + 1312) = *(v0 + 832);
    v8 = *(v0 + 864);
    *(v0 + 1328) = *(v0 + 848);
    *(v0 + 1344) = v8;
    *(v0 + 1360) = *(v0 + 880);
    *(v0 + 1296) = v7;
    (*v5)(v0 + 1296, v6);
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2024), v9);

    v10 = v1;
    v11 = sub_1D725C3FC();
    v12 = sub_1D7262EBC();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 2416);
    if (v13)
    {
      v15 = *(v0 + 2408);
      v16 = *(v0 + 2000);
      v70 = *(v0 + 1992);
      v71 = *(v0 + 2024);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v73 = v19;
      *v17 = 136446466;
      v20 = sub_1D5BC5100(v15, v14, &v73);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2114;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      sub_1D609C8C4(v18, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1DA6FD500](v19, -1, -1);
      MEMORY[0x1DA6FD500](v17, -1, -1);

      (*(v16 + 8))(v71, v70);
    }

    else
    {
      v32 = *(v0 + 2024);
      v33 = *(v0 + 2000);
      v34 = *(v0 + 1992);

      (*(v33 + 8))(v32, v34);
    }

    v31 = 1;
  }

  else
  {
    v23 = *(v0 + 2432);
    v24 = *(v0 + 2168);
    v25 = *(v0 + 2136);
    v26 = *(v0 + 2096);
    v27 = *(v0 + 2056);
    v28 = *(v0 + 1865) & 1;

    (*(v26 + 8))(v25, v27);
    v29 = *(v0 + 816);
    *(v0 + 1152) = *(v0 + 832);
    v30 = *(v0 + 864);
    *(v0 + 1168) = *(v0 + 848);
    *(v0 + 1184) = v30;
    *(v0 + 1200) = *(v0 + 880);
    *(v0 + 1136) = v29;
    (*v5)(v0 + 1136, v23);
    *(v0 + 1872) = v24;
    *(v0 + 1880) = v28;
    v31 = FormatArrangementSlotInstruction.personalize.getter();
  }

  v35 = *(v0 + 2424);
  if (v35 == sub_1D726279C())
  {
LABEL_8:

    v36 = *(v0 + 1865) & 1;
    v73 = *(v0 + 2168);
    v74 = v36;
    v37 = FormatArrangementSlotInstruction.personalize.getter();
    v38 = *(v0 + 1904);
    if ((v37 & 1) == 0)
    {
LABEL_22:
      v60 = *(v0 + 2096);
      v61 = *(v0 + 2088);
      v62 = *(v0 + 2056);
      *(v0 + 1960) = v38;
      sub_1D72627FC();
      swift_getWitnessTable();
      sub_1D7262C9C();
      if ((*(v60 + 48))(v61, 1, v62) == 1)
      {
        (*(*(v0 + 2072) + 8))(*(v0 + 2088), *(v0 + 2064));

        v63 = sub_1D726275C();
      }

      else
      {
        v64 = *(v0 + 2128);
        v65 = *(v0 + 2056);
        v66 = *(*(v0 + 2096) + 32);
        v66(v64, *(v0 + 2088), v65);

        sub_1D72644CC();
        swift_allocObject();
        v67 = sub_1D726270C();
        v66(v68, v64, v65);
        v63 = sub_1D5BFCB60(v67, v65);
      }

      v72 = v63;

      v69 = *(v0 + 8);

      return v69(v72);
    }

    v39 = sub_1D6095D88(*(v0 + 1904), *(v0 + 1976));

LABEL_21:
    v38 = v39;
    goto LABEL_22;
  }

  v40 = *(v0 + 2424);
  v41 = sub_1D726277C();
  sub_1D726271C();
  if ((v41 & 1) == 0)
  {
LABEL_28:
    result = sub_1D7263DBC();
    __break(1u);
    return result;
  }

  v43 = *(v0 + 2256) + 16 * v40;
  v44 = *(v43 + 32);
  *(v0 + 2408) = v44;
  v45 = *(v43 + 40);
  *(v0 + 2416) = v45;
  v46 = __OFADD__(v40, 1);
  v39 = (v40 + 1);
  *(v0 + 2424) = v39;
  if (v46)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v31 & 1) == 0)
  {
    while (v39 != sub_1D726279C())
    {
      v57 = *(v0 + 2424);
      v58 = sub_1D726277C();
      sub_1D726271C();
      if ((v58 & 1) == 0)
      {
        goto LABEL_28;
      }

      v59 = *(v0 + 2256) + 16 * v57;
      *(v0 + 2408) = *(v59 + 32);
      *(v0 + 2416) = *(v59 + 40);
      v46 = __OFADD__(v57, 1);
      v39 = (v57 + 1);
      *(v0 + 2424) = v39;
      if (v46)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_8;
  }

  v47 = *(v0 + 2048);
  v48 = *(v0 + 2040);
  v49 = *(v0 + 784);
  *(v0 + 848) = *(v0 + 768);
  *(v0 + 864) = v49;
  *(v0 + 880) = *(v0 + 800);
  v50 = *(v0 + 752);
  *(v0 + 816) = *(v0 + 736);
  *(v0 + 832) = v50;
  *(v0 + 1776) = v44;
  *(v0 + 1784) = v45;
  v51 = type metadata accessor for FormatArrangementResolverContext(0, v48, v47, v42);
  *(v0 + 2432) = v51;
  v52 = *(v51 - 8);
  *(v0 + 2440) = v52;
  (*(v52 + 16))(v0 + 896, v0 + 736, v51);

  v53 = swift_task_alloc();
  *(v0 + 2448) = v53;
  *v53 = v0;
  v53[1] = sub_1D609183C;
  v54 = *(v0 + 2136);
  v55 = *(v0 + 1976);

  return sub_1D609534C(v54, (v0 + 1776), v0 + 816, v55);
}

uint64_t sub_1D6092260()
{
  *(*v1 + 2496) = v0;

  if (v0)
  {
    v2 = sub_1D6094430;
  }

  else
  {
    v2 = sub_1D6092374;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6092374()
{
  v51 = v0;
  v1 = *(v0 + 2496);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2120);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v3, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v3, v2);
  if (v1)
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2120), *(v0 + 2056));
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2016), v4);

    v5 = v1;
    v6 = sub_1D725C3FC();
    v7 = sub_1D7262EBC();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2472);
    if (v8)
    {
      v10 = *(v0 + 2464);
      v11 = *(v0 + 2000);
      v46 = *(v0 + 1992);
      v47 = *(v0 + 2016);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v12 = 136446466;
      v15 = sub_1D5BC5100(v10, v9, &v49);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2114;
      v16 = v1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v17;
      *v13 = v17;
      sub_1D609C8C4(v13, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1DA6FD500](v14, -1, -1);
      MEMORY[0x1DA6FD500](v12, -1, -1);

      (*(v11 + 8))(v47, v46);
    }

    else
    {
      v18 = *(v0 + 2016);
      v19 = *(v0 + 2000);
      v20 = *(v0 + 1992);

      (*(v19 + 8))(v18, v20);
    }
  }

  else
  {
    (*(*(v0 + 2096) + 8))(*(v0 + 2120), *(v0 + 2056));
  }

  v21 = *(v0 + 2480);
  if (v21 == sub_1D726279C())
  {

    v22 = *(v0 + 2280);
    v23 = *(v0 + 2272);
    v24 = *(v0 + 544);
    *(v0 + 688) = *(v0 + 528);
    *(v0 + 704) = v24;
    *(v0 + 720) = *(v0 + 560);
    v25 = *(v0 + 512);
    *(v0 + 656) = *(v0 + 496);
    *(v0 + 672) = v25;
    (*(v22 + 8))(v0 + 656, v23);
    v26 = *(v0 + 1888);
    *(v0 + 1928) = v26;
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v27 = *(v0 + 1865) & 1;
      v49 = *(v0 + 2168);
      v50 = v27;
      v48 = *(v0 + 2040);
      *(v0 + 1912) = sub_1D5D2F2BC();
      v28 = swift_task_alloc();
      *(v28 + 16) = v48;
      v29 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v32 = sub_1D5B874E4(sub_1D5CB5238, v28, v29, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v31);

      sub_1D609C50C();
      swift_allocError();
      *v33 = v32;
      *(v33 + 8) = 0;
      *(v33 + 16) = 2;
      swift_willThrow();

      v44 = *(v0 + 8);

      return v44();
    }

    else
    {
      v42 = *(v0 + 1865) & 1;
      v49 = *(v0 + 2168);
      v50 = v42;
      if (FormatArrangementSlotInstruction.personalize.getter())
      {
        v43 = sub_1D6095D88(v26, *(v0 + 1976));

        v26 = v43;
      }

      v45 = *(v0 + 8);

      return v45(v26);
    }
  }

  v34 = *(v0 + 2480);
  v35 = sub_1D726277C();
  sub_1D726271C();
  if ((v35 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_23;
  }

  v36 = *(v0 + 2296) + 16 * v34;
  v37 = *(v36 + 32);
  *(v0 + 2464) = v37;
  result = *(v36 + 40);
  *(v0 + 2472) = result;
  *(v0 + 2480) = v34 + 1;
  if (__OFADD__(v34, 1))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *(v0 + 1808) = v37;
  *(v0 + 1816) = result;

  v39 = swift_task_alloc();
  *(v0 + 2488) = v39;
  *v39 = v0;
  v39[1] = sub_1D6092260;
  v40 = *(v0 + 2120);
  v41 = *(v0 + 1976);

  return sub_1D609534C(v40, (v0 + 1808), v0 + 496, v41);
}

uint64_t sub_1D6092B20()
{
  v2 = *v1;
  *(*v1 + 2552) = v0;

  if (v0)
  {
    v3 = *(v2 + 2536);
    v4 = *(v2 + 2528);
    v5 = *(v2 + 144);
    *(v2 + 288) = *(v2 + 128);
    *(v2 + 304) = v5;
    *(v2 + 320) = *(v2 + 160);
    v6 = *(v2 + 112);
    *(v2 + 256) = *(v2 + 96);
    *(v2 + 272) = v6;
    (*(v3 + 8))(v2 + 256, v4);
    v7 = sub_1D6094B34;
  }

  else
  {
    v7 = sub_1D6092C68;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D6092C68()
{
  v85 = v0;
  v1 = *(v0 + 2552);
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2528);
  v4 = *(v0 + 2112);
  (*(*(v0 + 2096) + 16))(*(v0 + 2152), v4, *(v0 + 2056));
  sub_1D72627FC();
  sub_1D72627BC();
  sub_1D69ABEE8(v4, v3);
  v5 = (v2 + 8);
  if (v1)
  {
    v6 = *(v0 + 2528);
    (*(*(v0 + 2096) + 8))(*(v0 + 2112), *(v0 + 2056));
    v7 = *(v0 + 144);
    *(v0 + 368) = *(v0 + 128);
    *(v0 + 384) = v7;
    *(v0 + 400) = *(v0 + 160);
    v8 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v8;
    (*v5)(v0 + 336, v6);
    sub_1D608BC28(*(v0 + 1976), *(v0 + 2008), v9);

    v10 = v1;
    v11 = sub_1D725C3FC();
    v12 = sub_1D7262EBC();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 2512);
    if (v13)
    {
      v15 = *(v0 + 2504);
      v16 = *(v0 + 2000);
      v79 = *(v0 + 1992);
      v80 = *(v0 + 2008);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v83 = v19;
      *v17 = 136446466;
      v20 = sub_1D5BC5100(v15, v14, &v83);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2114;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v22;
      *v18 = v22;
      sub_1D609C8C4(v18, sub_1D5F156F4);
      MEMORY[0x1DA6FD500](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1DA6FD500](v19, -1, -1);
      MEMORY[0x1DA6FD500](v17, -1, -1);

      (*(v16 + 8))(v80, v79);
    }

    else
    {
      v32 = *(v0 + 2008);
      v33 = *(v0 + 2000);
      v34 = *(v0 + 1992);

      (*(v33 + 8))(v32, v34);
    }

    v31 = 1;
  }

  else
  {
    v23 = *(v0 + 2528);
    v24 = *(v0 + 2168);
    v25 = *(v0 + 2112);
    v26 = *(v0 + 2096);
    v27 = *(v0 + 2056);
    v28 = *(v0 + 1865) & 1;

    (*(v26 + 8))(v25, v27);
    v29 = *(v0 + 144);
    *(v0 + 448) = *(v0 + 128);
    *(v0 + 464) = v29;
    *(v0 + 480) = *(v0 + 160);
    v30 = *(v0 + 112);
    *(v0 + 416) = *(v0 + 96);
    *(v0 + 432) = v30;
    (*v5)(v0 + 416, v23);
    *(v0 + 1856) = v24;
    *(v0 + 1864) = v28;
    v31 = FormatArrangementSlotInstruction.personalize.getter();
  }

  v35 = *(v0 + 2520);
  if (v35 == sub_1D726279C())
  {
    goto LABEL_8;
  }

  v53 = *(v0 + 2520);
  v54 = sub_1D726277C();
  sub_1D726271C();
  if ((v54 & 1) == 0)
  {
LABEL_28:
    result = sub_1D7263DBC();
    __break(1u);
    return result;
  }

  v56 = *(v0 + 2320) + 16 * v53;
  v57 = *(v56 + 32);
  *(v0 + 2504) = v57;
  v58 = *(v56 + 40);
  *(v0 + 2512) = v58;
  v59 = __OFADD__(v53, 1);
  v60 = v53 + 1;
  *(v0 + 2520) = v60;
  if (v59)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    v73 = *(v0 + 2104);
    v74 = *(v0 + 2056);
    v75 = *(*(v0 + 2096) + 32);
    v75(v73, *(v0 + 2080), v74);

    sub_1D72644CC();
    swift_allocObject();
    v76 = sub_1D726270C();
    v75(v77, v73, v74);
    v82 = sub_1D5BFCB60(v76, v74);

    v78 = *(v0 + 8);

    return v78(v82);
  }

  if ((v31 & 1) == 0)
  {
    while (v60 != sub_1D726279C())
    {
      v70 = *(v0 + 2520);
      v71 = sub_1D726277C();
      sub_1D726271C();
      if ((v71 & 1) == 0)
      {
        goto LABEL_28;
      }

      v72 = *(v0 + 2320) + 16 * v70;
      *(v0 + 2504) = *(v72 + 32);
      *(v0 + 2512) = *(v72 + 40);
      v59 = __OFADD__(v70, 1);
      v60 = v70 + 1;
      *(v0 + 2520) = v60;
      if (v59)
      {
        goto LABEL_24;
      }
    }

LABEL_8:

    v36 = *(v0 + 1865) & 1;
    v83 = *(v0 + 2168);
    v84 = v36;
    v37 = FormatArrangementSlotInstruction.personalize.getter();
    v38 = *(v0 + 1952);
    if (v37)
    {
      v39 = sub_1D6095D88(*(v0 + 1952), *(v0 + 1976));

      v38 = v39;
    }

    v40 = *(v0 + 2096);
    v41 = *(v0 + 2080);
    v42 = *(v0 + 2056);
    *(v0 + 1944) = v38;
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    if ((*(v40 + 48))(v41, 1, v42) == 1)
    {
      v43 = *(v0 + 2168);
      v44 = *(v0 + 1865) & 1;
      v81 = *(v0 + 2040);
      (*(*(v0 + 2072) + 8))(*(v0 + 2080), *(v0 + 2064));

      v83 = v43;
      v84 = v44;
      *(v0 + 1936) = sub_1D5D2F2BC();
      v45 = swift_task_alloc();
      *(v45 + 16) = v81;
      v46 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v49 = sub_1D5B874E4(sub_1D5CB5250, v45, v46, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v48);

      sub_1D609C50C();
      swift_allocError();
      *v50 = v49;
      *(v50 + 8) = 0;
      *(v50 + 16) = 2;
      swift_willThrow();

      v51 = *(v0 + 8);

      return v51();
    }

    goto LABEL_25;
  }

  v61 = *(v0 + 2048);
  v62 = *(v0 + 2040);
  v63 = *(v0 + 784);
  *(v0 + 128) = *(v0 + 768);
  *(v0 + 144) = v63;
  *(v0 + 160) = *(v0 + 800);
  v64 = *(v0 + 752);
  *(v0 + 96) = *(v0 + 736);
  *(v0 + 112) = v64;
  *(v0 + 1824) = v57;
  *(v0 + 1832) = v58;
  v65 = type metadata accessor for FormatArrangementResolverContext(0, v62, v61, v55);
  *(v0 + 2528) = v65;
  v66 = *(v65 - 8);
  *(v0 + 2536) = v66;
  (*(v66 + 16))(v0 + 1616, v0 + 736, v65);

  v67 = swift_task_alloc();
  *(v0 + 2544) = v67;
  *v67 = v0;
  v67[1] = sub_1D6092B20;
  v68 = *(v0 + 2112);
  v69 = *(v0 + 1976);

  return sub_1D609534C(v68, (v0 + 1824), v0 + 96, v69);
}

uint64_t sub_1D6093634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D609376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = v4;
  v5 = *(v4 + 2400);
  sub_1D608BC28(*(v4 + 1976), *(v4 + 2032), a4);

  v6 = v5;
  v7 = sub_1D725C3FC();
  v8 = sub_1D7262EBC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v4 + 2376);
  if (v9)
  {
    v11 = *(v4 + 2368);
    v12 = *(v4 + 2000);
    v42 = *(v4 + 1992);
    v43 = *(v4 + 2032);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v44 = v15;
    *v13 = 136446466;
    v16 = sub_1D5BC5100(v11, v10, &v44);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2114;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_1D609C8C4(v14, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA6FD500](v15, -1, -1);
    MEMORY[0x1DA6FD500](v13, -1, -1);

    (*(v12 + 8))(v43, v42);
  }

  else
  {
    v19 = *(v4 + 2032);
    v20 = *(v4 + 2000);
    v21 = *(v4 + 1992);

    (*(v20 + 8))(v19, v21);
  }

  v22 = (v4 + 1056);
  v23 = *(v4 + 2384);
  if (v23 == sub_1D726279C())
  {

    v24 = *(v4 + 2216);
    v25 = *(v4 + 2208);
    v26 = *(v4 + 2168);
    v27 = *(v4 + 1865) & 1;
    v28 = *(v4 + 1104);
    *(v4 + 1568) = *(v4 + 1088);
    *(v4 + 1584) = v28;
    *(v4 + 1600) = *(v4 + 1120);
    v29 = *(v4 + 1072);
    *(v4 + 1536) = *v22;
    *(v4 + 1552) = v29;
    (*(v24 + 8))(v4 + 1536, v25);
    v44 = v26;
    v45 = v27;
    v30 = FormatArrangementSlotInstruction.personalize.getter();
    v31 = *(v4 + 1896);
    if (v30)
    {
      v32 = sub_1D6095D88(*(v4 + 1896), *(v4 + 1976));

      v31 = v32;
    }

    v41 = *(v4 + 8);

    return v41(v31);
  }

  v33 = *(v4 + 2384);
  v34 = sub_1D726277C();
  sub_1D726271C();
  if ((v34 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_16;
  }

  v35 = *(v4 + 2232) + 16 * v33;
  v36 = *(v35 + 32);
  *(v4 + 2368) = v36;
  result = *(v35 + 40);
  *(v4 + 2376) = result;
  *(v4 + 2384) = v33 + 1;
  if (__OFADD__(v33, 1))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(v4 + 1840) = v36;
  *(v4 + 1848) = result;

  v38 = swift_task_alloc();
  *(v4 + 2392) = v38;
  *v38 = v4;
  v38[1] = sub_1D60910CC;
  v39 = *(v4 + 2144);
  v40 = *(v4 + 1976);

  return sub_1D609534C(v39, (v4 + 1840), v22, v40);
}

uint64_t sub_1D6093D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = v4;
  v5 = *(v4 + 2456);
  sub_1D608BC28(*(v4 + 1976), *(v4 + 2024), a4);

  v6 = v5;
  v7 = sub_1D725C3FC();
  v8 = sub_1D7262EBC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v4 + 2416);
  if (v9)
  {
    v11 = *(v4 + 2408);
    v12 = *(v4 + 2000);
    v53 = *(v4 + 1992);
    v54 = *(v4 + 2024);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v13 = 136446466;
    v16 = sub_1D5BC5100(v11, v10, &v56);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2114;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_1D609C8C4(v14, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA6FD500](v15, -1, -1);
    MEMORY[0x1DA6FD500](v13, -1, -1);

    (*(v12 + 8))(v54, v53);
  }

  else
  {
    v19 = *(v4 + 2024);
    v20 = *(v4 + 2000);
    v21 = *(v4 + 1992);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v4 + 2424);
  if (v22 == sub_1D726279C())
  {

    v23 = *(v4 + 1865) & 1;
    v56 = *(v4 + 2168);
    v57 = v23;
    v24 = FormatArrangementSlotInstruction.personalize.getter();
    v25 = *(v4 + 1904);
    if (v24)
    {
      v26 = sub_1D6095D88(*(v4 + 1904), *(v4 + 1976));

      v25 = v26;
    }

    v43 = *(v4 + 2096);
    v44 = *(v4 + 2088);
    v45 = *(v4 + 2056);
    *(v4 + 1960) = v25;
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    if ((*(v43 + 48))(v44, 1, v45) == 1)
    {
      (*(*(v4 + 2072) + 8))(*(v4 + 2088), *(v4 + 2064));

      v46 = sub_1D726275C();
    }

    else
    {
      v47 = *(v4 + 2128);
      v48 = *(v4 + 2056);
      v49 = *(*(v4 + 2096) + 32);
      v49(v47, *(v4 + 2088), v48);

      sub_1D72644CC();
      swift_allocObject();
      v50 = sub_1D726270C();
      v49(v51, v47, v48);
      v46 = sub_1D5BFCB60(v50, v48);
    }

    v55 = v46;

    v52 = *(v4 + 8);

    return v52(v55);
  }

  v27 = *(v4 + 2424);
  v28 = sub_1D726277C();
  result = sub_1D726271C();
  if ((v28 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_19;
  }

  v31 = *(v4 + 2256) + 16 * v27;
  v32 = *(v31 + 32);
  *(v4 + 2408) = v32;
  v33 = *(v31 + 40);
  *(v4 + 2416) = v33;
  *(v4 + 2424) = v27 + 1;
  if (__OFADD__(v27, 1))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v34 = *(v4 + 2048);
  v35 = *(v4 + 2040);
  v36 = *(v4 + 784);
  *(v4 + 848) = *(v4 + 768);
  *(v4 + 864) = v36;
  *(v4 + 880) = *(v4 + 800);
  v37 = *(v4 + 752);
  *(v4 + 816) = *(v4 + 736);
  *(v4 + 832) = v37;
  *(v4 + 1776) = v32;
  *(v4 + 1784) = v33;
  v38 = type metadata accessor for FormatArrangementResolverContext(0, v35, v34, v30);
  *(v4 + 2432) = v38;
  v39 = *(v38 - 8);
  *(v4 + 2440) = v39;
  (*(v39 + 16))(v4 + 896, v4 + 736, v38);

  v40 = swift_task_alloc();
  *(v4 + 2448) = v40;
  *v40 = v4;
  v40[1] = sub_1D609183C;
  v41 = *(v4 + 2136);
  v42 = *(v4 + 1976);

  return sub_1D609534C(v41, (v4 + 1776), v4 + 816, v42);
}

uint64_t sub_1D6094430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = v4;
  v5 = *(v4 + 2496);
  sub_1D608BC28(*(v4 + 1976), *(v4 + 2016), a4);

  v6 = v5;
  v7 = sub_1D725C3FC();
  v8 = sub_1D7262EBC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v4 + 2472);
  if (v9)
  {
    v11 = *(v4 + 2464);
    v12 = *(v4 + 2000);
    v47 = *(v4 + 1992);
    v48 = *(v4 + 2016);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50 = v15;
    *v13 = 136446466;
    v16 = sub_1D5BC5100(v11, v10, &v50);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2114;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_1D609C8C4(v14, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA6FD500](v15, -1, -1);
    MEMORY[0x1DA6FD500](v13, -1, -1);

    (*(v12 + 8))(v48, v47);
  }

  else
  {
    v19 = *(v4 + 2016);
    v20 = *(v4 + 2000);
    v21 = *(v4 + 1992);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v4 + 2480);
  if (v22 == sub_1D726279C())
  {

    v23 = *(v4 + 2280);
    v24 = *(v4 + 2272);
    v25 = *(v4 + 544);
    *(v4 + 688) = *(v4 + 528);
    *(v4 + 704) = v25;
    *(v4 + 720) = *(v4 + 560);
    v26 = *(v4 + 512);
    *(v4 + 656) = *(v4 + 496);
    *(v4 + 672) = v26;
    (*(v23 + 8))(v4 + 656, v24);
    v27 = *(v4 + 1888);
    *(v4 + 1928) = v27;
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v28 = *(v4 + 1865) & 1;
      v50 = *(v4 + 2168);
      v51 = v28;
      v49 = *(v4 + 2040);
      *(v4 + 1912) = sub_1D5D2F2BC();
      v29 = swift_task_alloc();
      *(v29 + 16) = v49;
      v30 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v33 = sub_1D5B874E4(sub_1D5CB5238, v29, v30, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v32);

      sub_1D609C50C();
      swift_allocError();
      *v34 = v33;
      *(v34 + 8) = 0;
      *(v34 + 16) = 2;
      swift_willThrow();

      v45 = *(v4 + 8);

      return v45();
    }

    else
    {
      v43 = *(v4 + 1865) & 1;
      v50 = *(v4 + 2168);
      v51 = v43;
      if (FormatArrangementSlotInstruction.personalize.getter())
      {
        v44 = sub_1D6095D88(v27, *(v4 + 1976));

        v27 = v44;
      }

      v46 = *(v4 + 8);

      return v46(v27);
    }
  }

  v35 = *(v4 + 2480);
  v36 = sub_1D726277C();
  sub_1D726271C();
  if ((v36 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v4 + 2296) + 16 * v35;
  v38 = *(v37 + 32);
  *(v4 + 2464) = v38;
  result = *(v37 + 40);
  *(v4 + 2472) = result;
  *(v4 + 2480) = v35 + 1;
  if (__OFADD__(v35, 1))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *(v4 + 1808) = v38;
  *(v4 + 1816) = result;

  v40 = swift_task_alloc();
  *(v4 + 2488) = v40;
  *v40 = v4;
  v40[1] = sub_1D6092260;
  v41 = *(v4 + 2120);
  v42 = *(v4 + 1976);

  return sub_1D609534C(v41, (v4 + 1808), v4 + 496, v42);
}

uint64_t sub_1D6094B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = v4;
  v5 = *(v4 + 2552);
  sub_1D608BC28(*(v4 + 1976), *(v4 + 2008), a4);

  v6 = v5;
  v7 = sub_1D725C3FC();
  v8 = sub_1D7262EBC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v4 + 2512);
  if (v9)
  {
    v11 = *(v4 + 2504);
    v12 = *(v4 + 2000);
    v61 = *(v4 + 1992);
    v62 = *(v4 + 2008);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v65 = v15;
    *v13 = 136446466;
    v16 = sub_1D5BC5100(v11, v10, &v65);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2114;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_1D609C8C4(v14, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA6FD500](v15, -1, -1);
    MEMORY[0x1DA6FD500](v13, -1, -1);

    (*(v12 + 8))(v62, v61);
  }

  else
  {
    v19 = *(v4 + 2008);
    v20 = *(v4 + 2000);
    v21 = *(v4 + 1992);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v4 + 2520);
  if (v22 == sub_1D726279C())
  {

    v23 = *(v4 + 1865) & 1;
    v65 = *(v4 + 2168);
    v66 = v23;
    v24 = FormatArrangementSlotInstruction.personalize.getter();
    v25 = *(v4 + 1952);
    if (v24)
    {
      v26 = sub_1D6095D88(*(v4 + 1952), *(v4 + 1976));

      v25 = v26;
    }

    v27 = *(v4 + 2096);
    v28 = *(v4 + 2080);
    v29 = *(v4 + 2056);
    *(v4 + 1944) = v25;
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    if ((*(v27 + 48))(v28, 1, v29) == 1)
    {
      v30 = *(v4 + 2168);
      v31 = *(v4 + 1865) & 1;
      v63 = *(v4 + 2040);
      (*(*(v4 + 2072) + 8))(*(v4 + 2080), *(v4 + 2064));

      v65 = v30;
      v66 = v31;
      *(v4 + 1936) = sub_1D5D2F2BC();
      v32 = swift_task_alloc();
      *(v32 + 16) = v63;
      v33 = sub_1D72627FC();

      WitnessTable = swift_getWitnessTable();
      v36 = sub_1D5B874E4(sub_1D5CB5250, v32, v33, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v35);

      sub_1D609C50C();
      swift_allocError();
      *v37 = v36;
      *(v37 + 8) = 0;
      *(v37 + 16) = 2;
      swift_willThrow();

      v38 = *(v4 + 8);

      return v38();
    }

    else
    {
      v55 = *(v4 + 2104);
      v56 = *(v4 + 2056);
      v57 = *(*(v4 + 2096) + 32);
      v57(v55, *(v4 + 2080), v56);

      sub_1D72644CC();
      swift_allocObject();
      v58 = sub_1D726270C();
      v57(v59, v55, v56);
      v64 = sub_1D5BFCB60(v58, v56);

      v60 = *(v4 + 8);

      return v60(v64);
    }
  }

  v40 = *(v4 + 2520);
  v41 = sub_1D726277C();
  result = sub_1D726271C();
  if ((v41 & 1) == 0)
  {
    result = sub_1D7263DBC();
    __break(1u);
    goto LABEL_20;
  }

  v43 = *(v4 + 2320) + 16 * v40;
  v44 = *(v43 + 32);
  *(v4 + 2504) = v44;
  v45 = *(v43 + 40);
  *(v4 + 2512) = v45;
  *(v4 + 2520) = v40 + 1;
  if (__OFADD__(v40, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v46 = *(v4 + 2048);
  v47 = *(v4 + 2040);
  v48 = *(v4 + 784);
  *(v4 + 128) = *(v4 + 768);
  *(v4 + 144) = v48;
  *(v4 + 160) = *(v4 + 800);
  v49 = *(v4 + 752);
  *(v4 + 96) = *(v4 + 736);
  *(v4 + 112) = v49;
  *(v4 + 1824) = v44;
  *(v4 + 1832) = v45;
  v50 = type metadata accessor for FormatArrangementResolverContext(0, v47, v46, v42);
  *(v4 + 2528) = v50;
  v51 = *(v50 - 8);
  *(v4 + 2536) = v51;
  (*(v51 + 16))(v4 + 1616, v4 + 736, v50);

  v52 = swift_task_alloc();
  *(v4 + 2544) = v52;
  *v52 = v4;
  v52[1] = sub_1D6092B20;
  v53 = *(v4 + 2112);
  v54 = *(v4 + 1976);

  return sub_1D609534C(v53, (v4 + 1824), v4 + 96, v54);
}

uint64_t sub_1D609534C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[61] = a4;
  v5[62] = v4;
  v5[59] = a1;
  v5[60] = a3;
  v8 = sub_1D725895C();
  v5[63] = v8;
  v5[64] = *(v8 - 8);
  v5[65] = swift_task_alloc();
  v9 = *(a4 + 16);
  v5[66] = v9;
  v10 = *(a4 + 24);
  v5[67] = v10;
  v12 = type metadata accessor for FormatArrangementTemplate(255, v9, v10, v11);
  v5[68] = v12;
  v13 = sub_1D726393C();
  v5[69] = v13;
  v5[70] = *(v13 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = *(v12 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v14 = a2[1];
  v5[75] = *a2;
  v5[76] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D6095508, 0, 0);
}

uint64_t sub_1D6095508()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 544);
  *(v0 + 440) = *(v0 + 600);
  *(v0 + 448) = v1;

  sub_1D7261E3C();

  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v5 = *(v0 + 608);
    v6 = *(v0 + 600);
    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
    sub_1D609C50C();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = 0;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 592);
    v11 = *(v0 + 576);
    v12 = *(v0 + 568);
    v13 = *(v0 + 544);
    v34 = *(v0 + 528);
    v35 = *(v0 + 536);
    v14 = *(v0 + 520);
    v16 = *(v0 + 504);
    v15 = *(v0 + 512);
    v17 = *(v0 + 480);
    v18 = *(v11 + 32);
    *(v0 + 616) = v18;
    *(v0 + 624) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v10, v12, v13);
    v36 = *v10;
    v37 = v10[1];

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    sub_1D725894C();
    v19 = sub_1D725893C();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    MEMORY[0x1DA6F9910](v19, v21);

    *(v0 + 632) = v36;
    *(v0 + 640) = v37;
    v22 = *(v13 + 36);
    *(v0 + 16) = *v17;
    v23 = v17[1];
    v24 = v17[2];
    v25 = v17[4];
    *(v0 + 64) = v17[3];
    *(v0 + 80) = v25;
    *(v0 + 32) = v23;
    *(v0 + 48) = v24;
    v26 = v17[4];
    v28 = v17[1];
    v27 = v17[2];
    *(v0 + 144) = v17[3];
    *(v0 + 160) = v26;
    *(v0 + 112) = v28;
    *(v0 + 128) = v27;
    *(v0 + 96) = *v17;
    v30 = type metadata accessor for FormatArrangementResolverContext(0, v34, v35, v29);
    *(v0 + 648) = v30;
    v31 = *(v30 - 8);
    *(v0 + 656) = v31;
    (*(v31 + 16))(v0 + 176, v0 + 16, v30);
    v32 = swift_task_alloc();
    *(v0 + 664) = v32;
    *v32 = v0;
    v32[1] = sub_1D6095860;
    v33 = *(v0 + 488);

    return sub_1D6096F14(v0 + 416, v10 + v22, (v0 + 96), v33);
  }
}

uint64_t sub_1D6095860()
{
  v2 = *v1;
  *(v2 + 672) = v0;

  v3 = *(v2 + 656);
  v4 = *(v2 + 648);
  if (v0)
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 144);
    v7 = *(v2 + 160);
    v8 = *(v2 + 112);
    *(v2 + 256) = *(v2 + 96);
    *(v2 + 272) = v8;
    *(v2 + 304) = v6;
    *(v2 + 320) = v7;
    *(v2 + 288) = v5;
    (*(v3 + 8))(v2 + 256, v4);

    v9 = sub_1D6095CDC;
  }

  else
  {
    v10 = *(v2 + 96);
    v11 = *(v2 + 112);
    v12 = *(v2 + 128);
    v13 = *(v2 + 160);
    *(v2 + 384) = *(v2 + 144);
    *(v2 + 400) = v13;
    *(v2 + 352) = v11;
    *(v2 + 368) = v12;
    *(v2 + 336) = v10;
    (*(v3 + 8))(v2 + 336, v4);
    v9 = sub_1D6095A08;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D6095A08()
{
  v31 = v0[80];
  v29 = v0[84];
  v30 = v0[79];
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[54];
  v0[57] = sub_1D6EF8CB8(v0[68]);
  v8 = swift_task_alloc();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v3;
  v8[5] = v30;
  v8[6] = v31;
  v8[7] = v4;
  v8[8] = v6;
  v8[9] = v5;
  v32 = v7;
  v8[10] = v7;
  type metadata accessor for FormatArrangementComponent(255, v2, v1, v9);
  v10 = sub_1D72627FC();
  v12 = type metadata accessor for FormatArrangementComponentResult(0, v2, v1, v11);
  v13 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);

  WitnessTable = swift_getWitnessTable();
  v15 = sub_1D5B874E4(sub_1D609C560, v8, v10, v12, v13, WitnessTable, MEMORY[0x1E69E7288], (v0 + 58));
  if (v29)
  {
    v16 = v0[74];
    v17 = v0[72];
    v18 = v0[68];

    sub_1D609C5A0(v6, v5, v32);

    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v20 = v15;
    v21 = v0[77];
    v22 = v0[74];
    v23 = v0[73];
    v24 = v0[68];
    v28 = v0[67];
    v26 = v0[59];
    v27 = v0[66];

    sub_1D609C5A0(v6, v5, v32);

    v21(v23, v22, v24);
    sub_1D68084C4(v23, v20, v27, v28, v26);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D6095CDC()
{
  (*(v0[72] + 8))(v0[74], v0[68]);

  v1 = v0[1];

  return v1();
}

void *sub_1D6095D88(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v96 = sub_1D725C42C();
  v7 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v93 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v85 - v16;
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v21 = type metadata accessor for FormatArrangementTemplateResult(0, v19, v18, v20);
  v97 = a1;
  v22 = v21;
  if (sub_1D726279C() < 2)
  {
    v30 = v97;
  }

  else
  {
    v90 = a2;
    v91 = v18;
    v94 = v4;
    v95 = v3;
    sub_1D608BC28(a2, v17, v23);
    v24 = v97;

    v25 = sub_1D725C3FC();
    v26 = sub_1D7262EDC();
    v27 = os_log_type_enabled(v25, v26);
    v87 = v10;
    v92 = v19;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      v29 = v22;
      *(v28 + 4) = sub_1D726279C();

      _os_log_impl(&dword_1D5B42000, v25, v26, "Format arrangement personalization on %ld template results", v28, 0xCu);
      MEMORY[0x1DA6FD500](v28, -1, -1);
    }

    else
    {

      v29 = v22;
    }

    v31 = *(v7 + 8);
    v31(v17, v96);
    v32 = v93;
    sub_1D608BC28(v90, v93, v33);

    v34 = sub_1D725C3FC();
    v35 = sub_1D7262EDC();
    v36 = os_log_type_enabled(v34, v35);
    v88 = v31;
    v89 = v7 + 8;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v85 = &v85;
      v86 = v38;
      v99 = v38;
      *v37 = 136446210;
      v98 = v24;
      MEMORY[0x1EEE9AC00](v38, v39);
      v40 = v91;
      *(&v85 - 2) = v92;
      *(&v85 - 1) = v40;
      v41 = sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      v43 = v95;
      sub_1D5B874E4(sub_1D5CB5250, (&v85 - 4), v41, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v44);
      v95 = v43;
      v45 = MEMORY[0x1DA6F9D20]();
      v47 = v46;

      v48 = sub_1D5BC5100(v45, v47, &v99);
      v24 = v97;

      *(v37 + 4) = v48;
      _os_log_impl(&dword_1D5B42000, v34, v35, "Format arrangement personalization templates unsorted order %{public}s", v37, 0xCu);
      v49 = v86;
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x1DA6FD500](v49, -1, -1);
      MEMORY[0x1DA6FD500](v37, -1, -1);

      v50 = v92;
      v51 = v88(v32, v96);
    }

    else
    {

      v51 = (v31)(v32, v96);
      v40 = v91;
      v50 = v92;
    }

    v99 = v24;
    MEMORY[0x1EEE9AC00](v51, v52);
    *(&v85 - 4) = v50;
    *(&v85 - 3) = v40;
    v30 = v94;
    *(&v85 - 2) = v94;
    v53 = sub_1D72627FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v55 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v56 = swift_getWitnessTable();
    v57 = v55;
    v58 = v56;
    v59 = v95;
    v60 = sub_1D5B874E4(sub_1D609C74C, (&v85 - 6), v53, TupleTypeMetadata2, v57, v56, MEMORY[0x1E69E7288], &v98);
    if (!v59)
    {
      v93 = v58;
      v97 = &v85;
      v99 = v60;
      MEMORY[0x1EEE9AC00](v60, v61);
      v62 = v91;
      *(&v85 - 2) = v50;
      *(&v85 - 1) = v62;
      v63 = sub_1D72627FC();
      swift_getWitnessTable();
      v64 = sub_1D72624AC();

      v99 = v64;
      MEMORY[0x1EEE9AC00](v65, v66);
      *(&v85 - 2) = v67;
      *(&v85 - 1) = v62;
      v68 = swift_getWitnessTable();
      v70 = sub_1D5B874E4(sub_1D609C7E4, (&v85 - 4), v63, v29, MEMORY[0x1E69E73E0], v68, MEMORY[0x1E69E7410], v69);
      v95 = 0;

      v71 = v87;
      sub_1D608BC28(v90, v87, v72);
      v30 = v70;

      v73 = sub_1D725C3FC();
      v74 = sub_1D7262EDC();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v99 = v76;
        *v75 = 136446210;
        v98 = v70;
        MEMORY[0x1EEE9AC00](v76, v77);
        v78 = v91;
        *(&v85 - 2) = v92;
        *(&v85 - 1) = v78;
        sub_1D5B874E4(sub_1D5CB5238, (&v85 - 4), v53, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v93, MEMORY[0x1E69E7410], v79);
        v80 = MEMORY[0x1DA6F9D20]();
        v82 = v81;

        v83 = sub_1D5BC5100(v80, v82, &v99);

        *(v75 + 4) = v83;
        _os_log_impl(&dword_1D5B42000, v73, v74, "Format arrangement personalization templates sorted order %{public}s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x1DA6FD500](v76, -1, -1);
        MEMORY[0x1DA6FD500](v75, -1, -1);

        v88(v87, v96);
      }

      else
      {

        v88(v71, v96);
      }
    }
  }

  return v30;
}

uint64_t sub_1D60965D8@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __objc2_prot ***a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a5;
  v7 = v6;
  v102 = a6;
  v108 = a3;
  v109 = a4;
  v10 = type metadata accessor for FormatArrangementTemplateResult(0, a3, a4, a4);
  v110 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v100 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v99 - v15);
  v17 = sub_1D725C42C();
  v105 = *(v17 - 8);
  v106 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v101 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v104 = &v99 - v22;
  v26 = sub_1D68082F8(v10, v23, v24, v25);
  v27 = v26;
  v107 = v26 >> 62;
  v28 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
LABEL_40:
    v29 = sub_1D7263BFC();
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v111 = a2;
  v112 = a1;
  v103 = v16;
  v113 = v10;
  v115 = v7;
  if (v29)
  {
    a1 = 0;
    v10 = v27 & 0xC000000000000001;
    v30 = MEMORY[0x1E69E7CC0];
    v7 = &off_1E84D3000;
    do
    {
      v114 = v30;
      v31 = a1;
      while (1)
      {
        if (v10)
        {
          v16 = MEMORY[0x1DA6FB460](v31, v27);
          a1 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v31 >= *(v28 + 16))
          {
            goto LABEL_39;
          }

          v16 = *(v27 + 8 * v31 + 32);
          swift_unknownObjectRetain();
          a1 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        v32 = [v16 scoreProfile];
        if (v32)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v31;
        if (a1 == v29)
        {
          v30 = v114;
          goto LABEL_23;
        }
      }

      a2 = v32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v114;
      }

      else
      {
        v30 = sub_1D698BF70(0, *(v114 + 2) + 1, 1, v114);
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      v35 = (v34 + 1);
      if (v34 >= v33 >> 1)
      {
        v114 = (v34 + 1);
        v37 = sub_1D698BF70((v33 > 1), v34 + 1, 1, v30);
        v35 = v114;
        v30 = v37;
      }

      *(v30 + 2) = v35;
      v36 = &v30[24 * v34];
      *(v36 + 4) = v16;
      *(v36 + 5) = a2;
      *(v36 + 6) = 0;
    }

    while (a1 != v29);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v38 = *(v30 + 2);
  v39 = v115;
  if (v107)
  {
    v41 = v30;
    v40 = sub_1D7263BFC();
    v30 = v41;
  }

  else
  {
    v40 = *(v28 + 16);
  }

  v42 = v111;
  if (v38 >= v40)
  {
    v71 = v30;

    v44 = type metadata accessor for FormatArrangementResolver(0, v108, v109, v72);
    v73 = v110;
  }

  else
  {

    v44 = type metadata accessor for FormatArrangementResolver(0, v108, v109, v43);
    v45 = &v42[*(v44 + 48)];
    v46 = *(v45 + 3);
    v47 = *(v45 + 4);
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v49 = v112;
    v48 = v113;
    sub_1D68083D4(v113, v50, &v116);
    v51 = (*(v47 + 8))(v27, &v116, v46, v47);
    if (v39)
    {

      v52 = v101;
      sub_1D608BC28(v44, v101, v53);
      v54 = v110;
      v55 = v100;
      (*(v110 + 16))(v100, v49, v48);
      v56 = v39;
      v57 = sub_1D725C3FC();
      v58 = sub_1D7262EBC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v48;
        v115 = v39;
        v116 = v60;
        v62 = v54;
        v63 = v60;
        *v59 = 136446466;
        v64 = *v55;
        v65 = v55[1];
        v66 = *(v62 + 8);

        v66(v55, v61);
        v67 = sub_1D5BC5100(v64, v65, &v116);

        *(v59 + 4) = v67;
        v39 = v115;
        *(v59 + 12) = 2114;
        v68 = v39;
        v69 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 14) = v69;
        v70 = v114;
        *v114 = v69;
        _os_log_impl(&dword_1D5B42000, v57, v58, "Format arrangement personalization failed to score items in template '%{public}s', error: %{public}@", v59, 0x16u);
        sub_1D609C8C4(v70, sub_1D5F156F4);
        MEMORY[0x1DA6FD500](v70, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1DA6FD500](v63, -1, -1);
        MEMORY[0x1DA6FD500](v59, -1, -1);

        (*(v105 + 8))(v101, v106);
      }

      else
      {

        (*(v54 + 8))(v55, v48);
        (*(v105 + 8))(v52, v106);
      }

      v98 = v99;
      result = swift_willThrow();
      *v98 = v39;
      return result;
    }

    v71 = v51;
    v115 = 0;

    v73 = v110;
    v42 = v111;
  }

  v74 = v104;
  v75 = &v42[*(v44 + 48)];
  v76 = *(v75 + 3);
  v77 = *(v75 + 4);
  __swift_project_boxed_opaque_existential_1(v75, v76);
  v78 = (*(v77 + 48))(v71, v76, v77);

  sub_1D608BC28(v44, v74, v79);
  v80 = v74;
  v81 = *(v73 + 16);
  v82 = v103;
  v83 = v73;
  v84 = v113;
  (v81)(v103, v112, v113);
  v85 = sub_1D725C3FC();
  v86 = sub_1D7262EDC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    LODWORD(v111) = v86;
    v88 = v87;
    v89 = swift_slowAlloc();
    v116 = v89;
    *v88 = 136446466;
    v114 = v81;
    v90 = *v82;
    v91 = v82[1];
    v92 = *(v83 + 8);

    v92(v82, v113);
    v93 = sub_1D5BC5100(v90, v91, &v116);

    *(v88 + 4) = v93;
    v81 = v114;
    *(v88 + 12) = 2048;
    *(v88 + 14) = v78;
    _os_log_impl(&dword_1D5B42000, v85, v111, "Format arrangement personalization template '%{public}s' score %f", v88, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v94 = v89;
    v84 = v113;
    MEMORY[0x1DA6FD500](v94, -1, -1);
    MEMORY[0x1DA6FD500](v88, -1, -1);
  }

  else
  {

    (*(v83 + 8))(v82, v84);
  }

  (*(v105 + 8))(v80, v106);
  v95 = v102;
  v96 = *(swift_getTupleTypeMetadata2() + 48);
  result = (v81)(v95, v112, v84);
  *(v95 + v96) = v78;
  return result;
}

uint64_t sub_1D6096DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for FormatArrangementTemplateResult(255, a2, a3, a5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1, v10);
  return (*(*(v7 - 8) + 32))(a4, v12, v7);
}

uint64_t sub_1D6096F14(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  *(v5 + 264) = a4;
  *(v5 + 272) = v4;
  *(v5 + 248) = a1;
  *(v5 + 256) = a2;
  v8 = sub_1D725C42C();
  *(v5 + 280) = v8;
  *(v5 + 288) = *(v8 - 8);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v9 = *(a4 + 16);
  *(v5 + 336) = v9;
  v10 = sub_1D726393C();
  *(v5 + 344) = v10;
  *(v5 + 352) = *(v10 - 8);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = *(v9 - 8);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  v11 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v11;
  *(v5 + 80) = a3[4];
  v12 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D6097124, 0, 0);
}

uint64_t sub_1D6097124()
{
  v113 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  (*(*(v0 + 352) + 16))(v1, *(v0 + 256), *(v0 + 344));
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 248);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    *v4 = 0;
    v4[1] = 0;
    v5 = 1;
LABEL_3:
    *(*(v0 + 248) + 16) = v5;

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *(v0 + 336);
  v9 = *(v0 + 264);
  (*(*(v0 + 368) + 32))(*(v0 + 416), *(v0 + 360), v8);
  *(v0 + 496) = *(v9 + 56);
  v10 = *(v9 + 24);
  *(v0 + 424) = v10;
  *(v0 + 432) = type metadata accessor for FormatArrangementData(0, v8, v10, v11);
  *(v0 + 440) = *(v10 + 32);
  sub_1D7261E3C();
  v13 = *(v0 + 192);
  if (v13 != 1)
  {
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 368);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    v20 = *(v0 + 280);
    v19 = *(v0 + 288);
    v21 = *(v0 + 264);
    v22 = *(v0 + 64);
    v109[2] = *(v0 + 48);
    v109[3] = v22;
    v109[4] = *(v0 + 80);
    v23 = *(v0 + 32);
    v109[0] = *(v0 + 16);
    v109[1] = v23;
    v104 = v14;
    v106 = v13;
    v110 = v14;
    v111 = v15;
    v112 = v13;
    sub_1D608BC28(v21, v18, v12);
    v25 = type metadata accessor for FormatArrangementResolverContext(0, v17, v10, v24);
    v26 = sub_1D69ACCC4(&v110, v18, v25);
    v102 = *(v19 + 8);
    v102(v18, v20);
    v28 = (v16 + 16);
    v29 = *(v0 + 416);
    v30 = *(v0 + 336);
    v31 = *(v0 + 264);
    if ((v26 & 1) == 0)
    {
      v49 = *(v0 + 408);
      sub_1D608BC28(v31, *(v0 + 320), v27);
      (*v28)(v49, v29, v30);
      v50 = sub_1D725C3FC();
      v96 = sub_1D7262EDC();
      v51 = os_log_type_enabled(v50, v96);
      v52 = *(v0 + 408);
      v53 = *(v0 + 416);
      v54 = *(v0 + 368);
      v55 = *(v0 + 336);
      v56 = *(v0 + 320);
      v98 = *(v0 + 280);
      if (v51)
      {
        loga = *(v0 + 416);
        v57 = swift_slowAlloc();
        v92 = v56;
        v58 = swift_slowAlloc();
        *&v109[0] = v58;
        *v57 = 136446210;
        v59 = sub_1D72644BC();
        v100 = v15;
        v15 = v60;
        v61 = *(v54 + 8);
        v61(v52, v55);
        v62 = sub_1D5BC5100(v59, v15, v109);
        LOWORD(v15) = v100;

        *(v57 + 4) = v62;
        _os_log_impl(&dword_1D5B42000, v50, v96, "Format arrangement reusing cached data source %{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x1DA6FD500](v58, -1, -1);
        MEMORY[0x1DA6FD500](v57, -1, -1);

        v102(v92, v98);
        v61(loga, v55);
      }

      else
      {

        v89 = *(v54 + 8);
        v89(v52, v55);
        v102(v56, v98);
        v89(v53, v55);
      }

      v90 = *(v0 + 248);
      *v90 = v104;
      v90[1] = v15;
      v5 = v106;
      goto LABEL_3;
    }

    v99 = v15;
    v32 = *(v0 + 400);
    sub_1D608BC28(v31, *(v0 + 312), v27);
    (*v28)(v32, v29, v30);
    v33 = sub_1D725C3FC();
    v34 = sub_1D7262EDC();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 400);
    v37 = *(v0 + 368);
    v38 = *(v0 + 336);
    v39 = *(v0 + 312);
    v40 = *(v0 + 280);
    if (v35)
    {
      log = v33;
      v41 = swift_slowAlloc();
      v97 = v40;
      v42 = swift_slowAlloc();
      *&v109[0] = v42;
      *v41 = 136446210;
      v91 = v34;
      v43 = sub_1D72644BC();
      v95 = v39;
      v45 = v44;
      (*(v37 + 8))(v36, v38);
      v46 = sub_1D5BC5100(v43, v45, v109);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1D5B42000, log, v91, "Format arrangement invalidated cached data source %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1DA6FD500](v42, -1, -1);
      MEMORY[0x1DA6FD500](v41, -1, -1);
      sub_1D609C5A0(v104, v99, v106);

      v47 = v95;
      v48 = v97;
    }

    else
    {
      sub_1D609C5A0(v104, v99, v106);

      (*(v37 + 8))(v36, v38);
      v47 = v39;
      v48 = v40;
    }

    v102(v47, v48);
  }

  v63 = *(v0 + 416);
  v64 = *(v0 + 392);
  v65 = *(v0 + 368);
  v66 = *(v0 + 336);
  sub_1D608BC28(*(v0 + 264), *(v0 + 304), v12);
  v67 = *(v65 + 16);
  *(v0 + 448) = v67;
  *(v0 + 456) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v67(v64, v63, v66);
  v68 = sub_1D725C3FC();
  v69 = sub_1D7262EDC();
  v70 = os_log_type_enabled(v68, v69);
  v71 = *(v0 + 392);
  v72 = *(v0 + 368);
  v73 = *(v0 + 336);
  v74 = *(v0 + 304);
  v76 = *(v0 + 280);
  v75 = *(v0 + 288);
  if (v70)
  {
    v107 = *(v0 + 280);
    v77 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v109[0] = v103;
    *v77 = 136446210;
    v78 = sub_1D72644BC();
    v105 = v74;
    v80 = v79;
    v101 = v69;
    v81 = *(v72 + 8);
    v81(v71, v73);
    v82 = sub_1D5BC5100(v78, v80, v109);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_1D5B42000, v68, v101, "Format arrangement resolving data source %{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);
    MEMORY[0x1DA6FD500](v103, -1, -1);
    MEMORY[0x1DA6FD500](v77, -1, -1);

    v83 = *(v75 + 8);
    v83(v105, v107);
  }

  else
  {

    v81 = *(v72 + 8);
    v81(v71, v73);
    v83 = *(v75 + 8);
    v83(v74, v76);
  }

  *(v0 + 464) = v83;
  *(v0 + 472) = v81;
  v84 = *(*(v0 + 272) + *(*(v0 + 264) + 52));
  v85 = *(v0 + 80);
  *(v0 + 144) = *(v0 + 64);
  *(v0 + 160) = v85;
  v86 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 128) = v86;
  *(v0 + 96) = *(v0 + 16);
  v108 = (v84 + *v84);
  v87 = swift_task_alloc();
  *(v0 + 480) = v87;
  *v87 = v0;
  v87[1] = sub_1D60979CC;
  v88 = *(v0 + 416);

  return v108(v0 + 200, v88, v0 + 96);
}

uint64_t sub_1D60979CC()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1D6097E7C;
  }

  else
  {
    v2 = sub_1D6097AE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6097AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = v4;
  v5 = *(v4 + 448);
  v6 = *(v4 + 416);
  v7 = *(v4 + 384);
  v8 = *(v4 + 336);
  v34 = *(v4 + 200);
  v35 = *(v4 + 208);
  v36 = *(v4 + 216);
  sub_1D608BC28(*(v4 + 264), *(v4 + 296), a4);
  v5(v7, v6, v8);
  v9 = sub_1D725C3FC();
  v10 = sub_1D7262EDC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v4 + 464);
  v32 = *(v4 + 472);
  v13 = *(v4 + 384);
  if (v11)
  {
    v14 = *(v4 + 336);
    v29 = *(v4 + 280);
    v30 = *(v4 + 296);
    v28 = *(v4 + 464);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = sub_1D72644BC();
    v19 = v18;
    v32(v13, v14);
    v20 = sub_1D5BC5100(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1D5B42000, v9, v10, "Format arrangement did resolve data source %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);

    v28(v30, v29);
  }

  else
  {
    v21 = *(v4 + 336);
    v22 = *(v4 + 296);
    v23 = *(v4 + 280);

    v32(v13, v21);
    v12(v22, v23);
  }

  v24 = *(v4 + 416);
  v25 = *(v4 + 336);
  v31 = *(v4 + 248);
  v33 = *(v4 + 472);
  (*(v4 + 448))(*(v4 + 376), v24, v25);
  *(v4 + 224) = v34;
  *(v4 + 232) = v35;
  *(v4 + 240) = v36;
  j__swift_bridgeObjectRetain();
  sub_1D7261E1C();

  sub_1D7261E4C();
  v33(v24, v25);
  *v31 = v34;
  v31[1] = v35;
  *(*(v4 + 248) + 16) = v36;

  v26 = *(v4 + 8);

  return v26();
}

uint64_t sub_1D6097E7C()
{
  (*(v0 + 472))(*(v0 + 416), *(v0 + 336));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6097F98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12)
{
  v35 = a8;
  v36 = a9;
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v16 = type metadata accessor for FormatArrangementResolver(0, a10, a11, a4);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v33 - v23;
  v26 = *a1;
  if (a1[5])
  {
    (*(v17 + 16))(v20, a2, v16, v24);
    v40[0] = v26;
    v41 = a6;
    *&v42 = a7;
    *(&v42 + 1) = v35;
    v27 = v44;
    sub_1D60994A8(v40, v37, v38, v39, &v41, v16, v36);
    v28 = v27;
    if (v27)
    {
      result = (*(v17 + 8))(v20, v16);
LABEL_6:
      *a12 = v28;
      return result;
    }

    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v30 = *(v17 + 16);
    v31 = *(a1 + 1);
    v33 = *(a1 + 3);
    v34 = v31;
    v30(&v33 - v23, a2, v16);
    v42 = v34;
    v43 = v33;
    v40[0] = a6;
    v40[1] = a7;
    v40[2] = v35;
    v41 = v26;
    v32 = v44;
    sub_1D60981C0(&v41, v37, v38, v40, v16, v36);
    v28 = v32;
    if (v32)
    {
      result = (*(v17 + 8))(v25, v16);
      goto LABEL_6;
    }

    return (*(v17 + 8))(v25, v16);
  }
}

void sub_1D60981C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  *&v217 = a2;
  *(&v217 + 1) = a3;
  sub_1D5C2BD20(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v183 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for FormatMetadata(0);
  v188 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v15);
  v189 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5971C(0);
  v192 = *(v17 - 8);
  v193 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v194 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6720];
  sub_1D5B59538(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v187 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v191 = &v174 - v26;
  sub_1D5B59538(0, &qword_1EDF07090, sub_1D5B5971C, v20);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v185 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v190 = &v174 - v32;
  v221 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v221, v33);
  v219 = (&v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = type metadata accessor for FormatContentSlotItem(0);
  v201 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215, v35);
  v218 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v233 = &v174 - v39;
  v209 = type metadata accessor for FormatContentSubgroup(0);
  v197 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209, v40);
  v186 = (&v174 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v174 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v199 = (&v174 - v48);
  v49 = *a1;
  v50 = a1[1];
  v51 = a1[2];
  v195 = a1[3];
  v196 = v51;
  v198 = a1[4];
  v52 = v49;
  v53 = a4[1];
  v200 = *a4;
  v184 = v53;
  v54 = a4[2];
  v55 = *(v220 + *(a5 + 44));
  v56 = *(v55 + 16);

  if (!v56 || (v57 = sub_1D5B69D90(v52, v50), (v58 & 1) == 0))
  {
    sub_1D609C50C();
    swift_allocError();
    *v110 = v52;
    *(v110 + 8) = v50;
    *(v110 + 16) = 1;
    swift_willThrow();
    return;
  }

  v182 = v54;
  v179 = a6;
  v213 = v7;
  v59 = *(v55 + 56);
  v176 = *(v197 + 72);
  sub_1D609C804(v59 + v176 * v57, v45, type metadata accessor for FormatContentSubgroup);

  v60 = v199;
  sub_1D609C668(v45, v199, type metadata accessor for FormatContentSubgroup);
  v181 = v52;
  *&v223[0] = v52;
  *(&v223[0] + 1) = v50;
  v175 = v50;
  *&v223[1] = v196;
  *(&v223[1] + 1) = v195;
  *&v223[2] = v198;
  v61 = *(a5 + 16);
  v62 = *(a5 + 24);
  v180 = type metadata accessor for FormatArrangementComponentSubgroup(0, v61, v62, v63);
  *&v228 = sub_1D674AAE4();
  v177 = v62;
  v178 = v61;
  v65 = type metadata accessor for FormatArrangementComponentSubgroupSlot(255, v61, v62, v64);
  sub_1D72627FC();
  swift_getWitnessTable();
  v205 = v65;
  swift_getWitnessTable();
  v206 = sub_1D72623BC();
  v232[0] = MEMORY[0x1E69E7CD0];
  v66 = v209;
  v67 = *(v60 + *(v209 + 32));
  v68 = MEMORY[0x1E69E7CC0];
  v204 = *(v67 + 16);
  if (v204)
  {
    v69 = 0;
    v202 = v67 + 32;
    v203 = v67;
    v214 = MEMORY[0x1E69E7CC0];
    v70 = v219;
    do
    {
      if (v69 >= *(v67 + 16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        return;
      }

      v71 = (v202 + 48 * v69);
      v72 = v71[1];
      v73 = v71[2];
      v74 = v71[3];
      v76 = v71[4];
      v75 = v71[5];
      v211 = *v71;
      v212 = v69;
      *&v223[0] = v211;
      *(&v223[0] + 1) = v72;
      *&v223[1] = v73;
      *(&v223[1] + 1) = v74;
      *&v223[2] = v76;
      *(&v223[2] + 1) = v75;
      v77 = *(v76 + 16);
      if (v77)
      {
        *&v222[0] = v68;
        v208 = v72;
        swift_bridgeObjectRetain_n();
        v207 = v73;

        sub_1D69988E8(0, v77, 0);
        v68 = *&v222[0];
        v78 = (*(v201 + 80) + 32) & ~*(v201 + 80);
        v79 = v76 + v78;
        *&v220 = *(v201 + 72);
        *&v216 = v78;
        do
        {
          v80 = v218;
          sub_1D609C804(v79, v218, type metadata accessor for FormatContentSlotItem);
          sub_1D609C804(v80, v70, type metadata accessor for FormatContentSlotItemObject);
          if (swift_getEnumCaseMultiPayload() == 11)
          {
            v81 = *v70;
            v82 = v70[1];

            sub_1D5B860D0(&v228, v81, v82);

            v228 = v217;

            MEMORY[0x1DA6F9910](45, 0xE100000000000000);
            MEMORY[0x1DA6F9910](v81, v82);

            v83 = *(&v228 + 1);
            v84 = v233;
            *v233 = v228;
            *(v84 + 1) = v83;
            v84[16] = 0;
            swift_storeEnumTagMultiPayload();
            v85 = v215;
            v86 = (v80 + *(v215 + 20));
            v87 = *v86;
            v88 = v86[1];
            sub_1D5D615EC(*v86, v88);
            sub_1D609C8C4(v80, type metadata accessor for FormatContentSlotItem);
            v89 = &v84[*(v85 + 20)];
            v78 = v216;
            *v89 = v87;
            v89[1] = v88;
          }

          else
          {
            sub_1D609C8C4(v70, type metadata accessor for FormatContentSlotItemObject);
            sub_1D609C668(v80, v233, type metadata accessor for FormatContentSlotItem);
          }

          *&v222[0] = v68;
          v91 = *(v68 + 16);
          v90 = *(v68 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_1D69988E8((v90 > 1), v91 + 1, 1);
            v68 = *&v222[0];
          }

          *(v68 + 16) = v91 + 1;
          v92 = v220;
          sub_1D609C668(v233, v68 + v78 + v91 * v220, type metadata accessor for FormatContentSlotItem);
          v79 += v92;
          --v77;
          v70 = v219;
        }

        while (v77);
        v93 = v213;
        v95 = v207;
        v94 = v208;
      }

      else
      {
        v95 = v73;
        v94 = v72;
        swift_bridgeObjectRetain_n();

        v93 = v213;
      }

      *&v223[2] = v68;
      v96 = *(&v217 + 1);

      v97 = sub_1D609BF58(v95, v232, v217, v96);
      v213 = v93;

      *&v223[1] = v97;
      *&v222[0] = v211;
      *(&v222[0] + 1) = v94;
      sub_1D7261E3C();

      v98 = *(&v228 + 1);
      if (*(&v228 + 1))
      {
        v99 = v229;
        v100 = v228;
        sub_1D5B8EF68();

        sub_1D6985530(v101);
        *&v228 = v100;
        *(&v228 + 1) = v98;
        v229 = v99;
        v102 = sub_1D5B8EF70();

        sub_1D609C6D0(v100, v98, v99, *(&v99 + 1));
        sub_1D5B886D0(v102);
      }

      v66 = v209;
      v103 = *&v223[0];
      v220 = *(v223 + 8);
      v216 = *(&v223[1] + 8);
      v104 = *(&v223[2] + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v214 = sub_1D6991D6C(0, *(v214 + 2) + 1, 1, v214);
      }

      v106 = *(v214 + 2);
      v105 = *(v214 + 3);
      if (v106 >= v105 >> 1)
      {
        v214 = sub_1D6991D6C((v105 > 1), v106 + 1, 1, v214);
      }

      v107 = v214;
      *(v214 + 2) = v106 + 1;
      v108 = &v107[48 * v106];
      *(v108 + 4) = v103;
      v69 = v212 + 1;
      *(v108 + 40) = v220;
      *(v108 + 56) = v216;
      *(v108 + 9) = v104;
      v67 = v203;
      v109 = v210;
      v68 = MEMORY[0x1E69E7CC0];
    }

    while (v69 != v204);
  }

  else
  {
    v214 = MEMORY[0x1E69E7CC0];
    v109 = v210;
  }

  if (v182 == 1 || (v184 & 0x1000) != 0 || (v221 = *(v200 + 16)) == 0)
  {
    v233 = MEMORY[0x1E69E7CC0];
    LODWORD(v219) = 64704;
    goto LABEL_53;
  }

  v111 = 0;
  LODWORD(v218) = v184;
  v112 = v232[0];
  *&v220 = v200 + 32;
  v113 = v232[0] + 56;
  v233 = MEMORY[0x1E69E7CC0];
  LODWORD(v219) = 64704;
  while (1)
  {
    v114 = (v220 + (v111 << 6));
    v115 = *v114;
    v116 = v114[1];
    v117 = v114[3];
    v230 = v114[2];
    v231 = v117;
    v228 = v115;
    v229 = v116;
    v118 = v115;
    v119 = v114[2];
    v225 = v114[1];
    v226 = v119;
    v227 = v114[3];
    if (!*(v112 + 16))
    {
      sub_1D5E2A788(&v228, v223);
      goto LABEL_41;
    }

    sub_1D7264A0C();
    sub_1D5E2A788(&v228, v222);

    sub_1D72621EC();
    v120 = sub_1D7264A5C();
    v121 = -1 << *(v112 + 32);
    v122 = v120 & ~v121;
    if (((*(v113 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
    {
LABEL_39:

      v109 = v210;
LABEL_41:
      v223[0] = v118;
      v223[1] = v225;
      v223[2] = v226;
      v224 = v227;
      sub_1D5ECF270(v223);
      goto LABEL_49;
    }

    v123 = ~v121;
    while (1)
    {
      v124 = (*(v112 + 48) + 16 * v122);
      v125 = *v124 == v118 && v124[1] == *(&v118 + 1);
      if (v125 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v122 = (v122 + 1) & v123;
      if (((*(v113 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v222[0] = v217;

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v118, *(&v118 + 1));

    v126 = v222[0];
    v223[0] = v222[0];
    v223[1] = v225;
    v223[2] = v226;
    v224 = v227;
    sub_1D5E2A788(v223, v222);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v233 = sub_1D6991D24(0, *(v233 + 2) + 1, 1, v233);
    }

    v128 = *(v233 + 2);
    v127 = *(v233 + 3);
    if (v128 >= v127 >> 1)
    {
      v233 = sub_1D6991D24((v127 > 1), v128 + 1, 1, v233);
    }

    v129 = v233;
    *(v233 + 2) = v128 + 1;
    v130 = &v129[64 * v128];
    v131 = v223[0];
    v132 = v223[1];
    v133 = v224;
    *(v130 + 4) = v223[2];
    *(v130 + 5) = v133;
    *(v130 + 2) = v131;
    *(v130 + 3) = v132;
    v134 = v219;
    if ((~v219 & 0xFCC0) == 0)
    {
      v134 = v218;
    }

    LODWORD(v219) = v134;
    v222[0] = v126;
    v222[1] = v225;
    v222[2] = v226;
    v222[3] = v227;
    sub_1D5ECF270(v222);
    v109 = v210;
LABEL_49:
    if (++v111 == v221)
    {
      break;
    }

    if (v111 >= *(v200 + 16))
    {
      goto LABEL_66;
    }
  }

  v66 = v209;
LABEL_53:
  v223[0] = v217;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v135 = v199;
  MEMORY[0x1DA6F9910](*v199, v199[1]);
  *&v220 = *(&v223[0] + 1);
  v221 = *&v223[0];
  (*(v192 + 56))(v190, 1, 1, v193);
  v136 = *(v135 + v66[6]);
  v137 = v175;
  *&v223[0] = v181;
  *(&v223[0] + 1) = v175;
  v139 = v195;
  v138 = v196;
  *&v223[1] = v196;
  *(&v223[1] + 1) = v195;
  *&v223[2] = v198;
  v140 = sub_1D5B8EF68();
  *&v228 = v136;

  sub_1D6985530(v140);
  v141 = *(v135 + v66[7]);
  v218 = v228;
  *&v223[0] = v181;
  *(&v223[0] + 1) = v137;
  *&v223[1] = v138;
  *(&v223[1] + 1) = v139;
  *&v223[2] = v198;
  v142 = sub_1D5B8EF70();
  v143 = v193;
  v144 = v142;

  *(&v217 + 1) = sub_1D5D6021C(v144, v141);
  v145 = v188;
  v146 = v192;
  (*(v188 + 56))(v191, 1, 1, v109);
  v147 = v185;
  sub_1D609C5E8(v190, v185, &qword_1EDF07090, sub_1D5B5971C);
  v148 = *(v146 + 48);
  if (v148(v147, 1, v143) == 1)
  {
    v149 = v199;
    sub_1D609C804(v199 + v66[5], v194, sub_1D5B5971C);
    v125 = v148(v147, 1, v143) == 1;
    v150 = v147;
    v151 = v149;
    if (!v125)
    {
      sub_1D5CF287C(v150, &qword_1EDF07090, sub_1D5B5971C);
    }
  }

  else
  {
    sub_1D609C668(v147, v194, sub_1D5B5971C);
    v151 = v199;
  }

  v152 = *(v151 + v66[12]);
  v153 = *(v151 + v66[9]);
  v154 = v187;
  sub_1D609C5E8(v191, v187, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v155 = v151;
  v156 = *(v145 + 48);
  v157 = v66;
  v158 = v210;
  v159 = v156(v154, 1, v210);
  v160 = v189;
  if (v159 == 1)
  {
    v161 = v155 + v157[10];
    v162 = v153;
    v163 = v183;
    sub_1D609C804(v161, v183, sub_1D5C2BD20);
    sub_1D609C668(v163, v160, type metadata accessor for FormatMetadata);
    v164 = v156(v154, 1, v158);

    if (v164 != 1)
    {
      sub_1D5CF287C(v154, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }
  }

  else
  {
    sub_1D609C668(v154, v189, type metadata accessor for FormatMetadata);

    v162 = v153;
  }

  v165 = v209;
  v166 = v199;
  v167 = *(v199 + *(v209 + 44));
  v168 = v186;
  v169 = v220;
  *v186 = v221;
  *(v168 + 8) = v169;
  sub_1D609C668(v194, v168 + v165[5], sub_1D5B5971C);
  v170 = *(&v217 + 1);
  *(v168 + v165[6]) = v218;
  *(v168 + v165[7]) = v170;
  *(v168 + v165[9]) = v162;
  *(v168 + v165[8]) = v214;
  *(v168 + v165[12]) = v152;
  sub_1D609C668(v160, v168 + v165[10], type metadata accessor for FormatMetadata);
  *(v168 + v165[11]) = v167;
  sub_1D5B59538(0, &unk_1EDF3C5F0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E6F90]);
  v171 = (*(v197 + 80) + 32) & ~*(v197 + 80);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1D7273AE0;
  sub_1D609C668(v168, v172 + v171, type metadata accessor for FormatContentSubgroup);

  sub_1D609C8C4(v166, type metadata accessor for FormatContentSubgroup);
  v173 = 0;
  LOWORD(v223[0]) = v219;
  if (v182 != 1)
  {
  }

  sub_1D5F7A820(v172, v233, 0, v223, v173, v179);
}

void sub_1D60994A8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a4;
  v70 = a3;
  v69 = a2;
  v11 = *(a6 + 16);
  v81 = *(a6 + 24);
  v12 = type metadata accessor for FormatArrangementCuration(0, v11, v81, a4);
  v80 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v61 - v22;
  v24 = *(a5 + 16);
  if (v24 == 1 || (*(a5 + 8) & 0x1000) == 0)
  {
    sub_1D609C50C();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
LABEL_4:
    *(v25 + 16) = 4;
    swift_willThrow();
    return;
  }

  v64 = *(a5 + 8);
  v62 = v21;
  v63 = v24;
  v72 = *a1;
  v26 = *a5;
  v82 = *a5;
  v27 = sub_1D72627FC();

  swift_getWitnessTable();
  v65 = v27;
  if (sub_1D7262CCC())
  {
    j__swift_bridgeObjectRelease(v26);
    sub_1D609C50C();
    swift_allocError();
    v28 = xmmword_1D728CF30;
LABEL_35:
    *v25 = v28;
    goto LABEL_4;
  }

  v61 = a7;
  v71 = v7;
  v84 = sub_1D7261CFC();
  v83 = MEMORY[0x1E69E7CC0];
  if (!sub_1D726279C())
  {
LABEL_31:
    v66 = 64704;
LABEL_32:
    j__swift_bridgeObjectRelease(v26);
    if (*(v83 + 16))
    {
      LOWORD(v82) = v66;
      sub_1D5F7A820(v83, v84, 1, &v82, v63, v61);

      return;
    }

    sub_1D609C50C();
    swift_allocError();
    v28 = xmmword_1D7297410;
    goto LABEL_35;
  }

  v29 = 0;
  v79 = (v80 + 16);
  v75 = (v80 + 8);
  v76 = (v80 + 32);
  v66 = 64704;
  v30 = v77;
  v67 = v11;
  v73 = v26;
  v74 = v23;
  while (1)
  {
    v41 = sub_1D726277C();
    sub_1D726271C();
    if (v41)
    {
      v42 = *(v80 + 16);
      v42(v23, (v26 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v29), v12);
      v43 = __OFADD__(v29++, 1);
      if (v43)
      {
        goto LABEL_30;
      }

      goto LABEL_13;
    }

    v60 = sub_1D7263DBC();
    if (v62 != 8)
    {
      break;
    }

    v82 = v60;
    v42 = *v79;
    (*v79)(v23, &v82, v12);
    swift_unknownObjectRelease();
    v43 = __OFADD__(v29++, 1);
    if (v43)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_13:
    v78 = v42;
    (*v76)(v18, v23, v12);
    v44 = *(v30 + 72);
    v45 = sub_1D5F90834();
    if (*(v44 + 16))
    {
      v48 = v45;
      v49 = v46;
      sub_1D7264A0C();

      sub_1D72621EC();
      v50 = sub_1D7264A5C();
      v51 = -1 << *(v44 + 32);
      v52 = v50 & ~v51;
      if ((*(v44 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
      {
        v53 = ~v51;
        while (1)
        {
          v54 = (*(v44 + 48) + 16 * v52);
          v55 = *v54 == v48 && v54[1] == v49;
          if (v55 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v52 = (v52 + 1) & v53;
          if (((*(v44 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v11 = v67;
        v30 = v77;
        v26 = v73;
        v23 = v74;
        goto LABEL_10;
      }

LABEL_22:

      v11 = v67;
      v30 = v77;
    }

    v82 = v72;
    v56 = type metadata accessor for FormatArrangementComponentCuration(0, v11, v81, v47);
    v59 = sub_1D6A6D8FC(v18, v56, v57, v58);
    v26 = v73;
    v23 = v74;
    if (v59)
    {
      v78(v68, v18, v12);
      sub_1D72627BC();
      if ((~v66 & 0xFCC0) == 0)
      {
        v66 = *&v18[*(v12 + 44)];
      }

      v31 = type metadata accessor for FormatContent(0);
      MEMORY[0x1EEE9AC00](v31, v32);
      v33 = v81;
      *(&v61 - 6) = v11;
      *(&v61 - 5) = v33;
      v34 = v70;
      *(&v61 - 4) = v69;
      *(&v61 - 3) = v34;
      *(&v61 - 2) = v18;
      v35 = v71;
      sub_1D5EC9900(sub_1D609C720, (&v61 - 8), v36);
      v71 = v35;
      sub_1D6986D9C(v37);
      v38 = sub_1D5F90834();
      v40 = v39;

      sub_1D5B860D0(&v82, v38, v40);
    }

LABEL_10:
    (*v75)(v18, v12);
    if (v29 == sub_1D726279C())
    {
      goto LABEL_32;
    }
  }

  __break(1u);
}

uint64_t sub_1D6099B50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v72 = a5;
  v73 = a6;
  v74 = a4;
  v69 = a7;
  sub_1D5C2BD20(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v68 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatMetadata(0);
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5971C(0);
  v71 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v81 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6720];
  sub_1D5B59538(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v76 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v68 - v26;
  sub_1D5B59538(0, &qword_1EDF07090, sub_1D5B5971C, v20);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v68 - v34;
  v79 = a2;
  v80 = a3;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  type metadata accessor for FormatArrangementCuration(0, v72, v73, v36);
  v37 = sub_1D5F90834();
  v39 = v38;

  MEMORY[0x1DA6F9910](v37, v39);
  v40 = v27;

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  MEMORY[0x1DA6F9910](*a1, a1[1]);
  v73 = v80;
  v74 = v79;
  v41 = v71;
  (*(v17 + 56))(v35, 1, 1, v71);
  (*(v77 + 56))(v27, 1, 1, v78);
  v42 = v35;
  v43 = v41;
  sub_1D609C5E8(v42, v31, &qword_1EDF07090, sub_1D5B5971C);
  v44 = *(v17 + 48);
  if (v44(v31, 1, v43) == 1)
  {
    v45 = type metadata accessor for FormatContentSubgroup(0);
    sub_1D609C804(a1 + *(v45 + 20), v81, sub_1D5B5971C);
    if (v44(v31, 1, v43) != 1)
    {
      sub_1D5CF287C(v31, &qword_1EDF07090, sub_1D5B5971C);
    }
  }

  else
  {
    sub_1D609C668(v31, v81, sub_1D5B5971C);
  }

  v46 = type metadata accessor for FormatContentSubgroup(0);
  v47 = *(a1 + v46[6]);
  v48 = *(a1 + v46[7]);
  v49 = v46[9];
  v50 = *(a1 + v46[8]);
  v71 = *(a1 + v46[12]);
  v72 = v50;
  v51 = *(a1 + v49);
  v52 = v40;
  v53 = v76;
  sub_1D609C5E8(v52, v76, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v54 = v78;
  v55 = *(v77 + 48);
  v56 = v55(v53, 1, v78);
  v70 = a1;
  if (v56 == 1)
  {
    v57 = v68;
    sub_1D609C804(a1 + v46[10], v68, sub_1D5C2BD20);
    v58 = v57;
    v59 = v75;
    sub_1D609C668(v58, v75, type metadata accessor for FormatMetadata);
    v60 = v55(v53, 1, v54);

    v61 = v72;

    v62 = v71;

    v63 = v51;
    if (v60 != 1)
    {
      sub_1D5CF287C(v76, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }
  }

  else
  {
    v59 = v75;
    sub_1D609C668(v53, v75, type metadata accessor for FormatMetadata);

    v61 = v72;

    v62 = v71;

    v63 = v51;
  }

  v64 = v69;
  v65 = *(v70 + v46[11]);
  v66 = v73;
  *v69 = v74;
  v64[1] = v66;
  sub_1D609C668(v81, v64 + v46[5], sub_1D5B5971C);
  *(v64 + v46[6]) = v47;
  *(v64 + v46[7]) = v48;
  *(v64 + v46[9]) = v63;
  *(v64 + v46[8]) = v61;
  *(v64 + v46[12]) = v62;
  sub_1D609C668(v59, v64 + v46[10], type metadata accessor for FormatMetadata);
  *(v64 + v46[11]) = v65;
}

uint64_t sub_1D609A1F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B9EE48(0);
          sub_1D5B5990C(&qword_1EC8812B0, sub_1D5B9EE48, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D87760(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609A39C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B90088(0);
          sub_1D5B5990C(&qword_1EC88F470, sub_1D5B90088, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D877E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5A498(0, &qword_1EDF3C6C0, 0x1E69B5348);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609A548(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5C44878(0);
          sub_1D5B5990C(&qword_1EC88E4D0, sub_1D5C44878, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D87860(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609A6F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D609C304(0);
          sub_1D5B5990C(&qword_1EC883200, sub_1D609C304, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D87760(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5534C(0, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609A8A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &qword_1EC883238, type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&qword_1EC883240, &qword_1EC883238, type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609AA68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &qword_1EC883248, type metadata accessor for FormatItemNodeDataLayoutAttributes, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&unk_1EC883250, &qword_1EC883248, type metadata accessor for FormatItemNodeDataLayoutAttributes, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FormatItemNodeDataLayoutAttributes(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609AC30(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1D7263BFC();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1D7263BFC();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1D5B59538(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&qword_1EC883230, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E6340]);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1D6D876E0(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FormatAccessibilityLayoutValue();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609ADF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5E9D658(0);
          sub_1D5B5990C(&qword_1EC8812C0, sub_1D5E9D658, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D877E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609AFA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &qword_1EC8831F0, type metadata accessor for DebugFormatLogEntry, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&qword_1EC8831F8, &qword_1EC8831F0, type metadata accessor for DebugFormatLogEntry, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugFormatLogEntry(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609B16C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&unk_1EC883260, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugFormatPackageInventory();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609B334(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D609C4A4(0);
          sub_1D5B5990C(&qword_1EC8832E0, sub_1D609C4A4, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D877E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5A498(0, &unk_1EDF1A700, 0x1E6979398);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609B4E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &qword_1EDF1B130, type metadata accessor for FormatTimerObserver, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&unk_1EC8832C8, &qword_1EDF1B130, type metadata accessor for FormatTimerObserver, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FormatTimerObserver();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609B6A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D609C3D4(0);
          sub_1D5B5990C(&unk_1EC883290, sub_1D609C3D4, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D877E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5A498(0, &qword_1EC883280, 0x1E69DCC78);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609B854(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1D7263BFC();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x1E69D7558];
          sub_1D5B59538(0, &qword_1EC8832A0, MEMORY[0x1E69D7558], MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&unk_1EC8832A8, &qword_1EC8832A0, v8, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_1D6D88494(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D725C9AC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609BA1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&qword_1EC883210, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugFormatLayoutTreeItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609BBE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D5B59538(0, &qword_1EC883218, type metadata accessor for DebugFormatFileTreeItem, MEMORY[0x1E69E62F8]);
          sub_1D609C86C(&unk_1EC883220, &qword_1EC883218, type metadata accessor for DebugFormatFileTreeItem, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D876E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugFormatFileTreeItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609BDAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7263BFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7263BFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D609C36C(0);
          sub_1D5B5990C(&qword_1EC883278, sub_1D609C36C, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D6D877E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D609BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v4, 0);
    v5 = v19;
    v7 = (a1 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      if ((~*v7 & 0xF000000000000007) != 0)
      {

        sub_1D5CFCFAC(v10);
      }

      else
      {

        sub_1D5CFCFAC(v10);

        sub_1D5CFCFAC(v10);

        sub_1D5B860D0(&v17, v9, v8);

        v17 = a3;
        v18 = a4;

        MEMORY[0x1DA6F9910](45, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v9, v8);

        sub_1D5C84FF4(v10);

        sub_1D5C84FF4(v10);
        v9 = v17;
        v8 = v18;
      }

      v19 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D69988B8((v11 > 1), v12 + 1, 1);
        v5 = v19;
      }

      v7 += 3;
      *(v5 + 16) = v12 + 1;
      v13 = (v5 + 24 * v12);
      v13[4] = v9;
      v13[5] = v8;
      v13[6] = v10;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void sub_1D609C0FC(uint64_t a1)
{
  type metadata accessor for FormatContent(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    type metadata accessor for FormatArrangementTemplate(255, v4, v5, v2);
    sub_1D7261E1C();
    if (v7 <= 0x3F)
    {
      type metadata accessor for FormatArrangementResolverOptions(319, v4, v5, v6);
      if (v8 <= 0x3F)
      {
        sub_1D609C29C(319);
        if (v9 <= 0x3F)
        {
          sub_1D5B49474(319, qword_1EDF35540, &protocol descriptor for FeedPersonalizationServiceType);
          if (v10 <= 0x3F)
          {
            sub_1D5B5D9E0();
            if (v12 <= 0x3F)
            {
              type metadata accessor for FormatArrangementData(255, v4, v5, v11);
              sub_1D7261E1C();
              if (v13 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D609C29C(uint64_t a1)
{
  if (!qword_1EDF05748)
  {
    type metadata accessor for FormatContentSubgroup(255);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05748);
    }
  }
}

void sub_1D609C304(uint64_t a1)
{
  if (!qword_1EDF04A18)
  {
    sub_1D5B5534C(255, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04A18);
    }
  }
}

void sub_1D609C36C(uint64_t a1)
{
  if (!qword_1EC883270)
  {
    sub_1D5B5A498(255, &qword_1EDF04590, 0x1E69DC708);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883270);
    }
  }
}

void sub_1D609C3D4(uint64_t a1)
{
  if (!qword_1EC883288)
  {
    sub_1D5B5A498(255, &qword_1EC883280, 0x1E69DCC78);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883288);
    }
  }
}

void sub_1D609C43C(uint64_t a1)
{
  if (!qword_1EDF1AE50)
  {
    sub_1D5B5534C(255, &qword_1EDF1A860, &protocolRef_FCFeedPersonalizingItem);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AE50);
    }
  }
}

void sub_1D609C4A4(uint64_t a1)
{
  if (!qword_1EC8832D8)
  {
    sub_1D5B5A498(255, &unk_1EDF1A700, 0x1E6979398);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8832D8);
    }
  }
}

unint64_t sub_1D609C50C()
{
  result = qword_1EDF0DBA0;
  if (!qword_1EDF0DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBA0);
  }

  return result;
}

double sub_1D609C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    j__swift_bridgeObjectRelease(a1);
  }

  return result;
}

uint64_t sub_1D609C5E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B59538(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D609C668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D609C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

BOOL sub_1D609C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatArrangementTemplateResult(255, *(v4 + 16), *(v4 + 24), a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return *(a2 + *(TupleTypeMetadata2 + 48)) < *(a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1D609C804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D609C86C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B59538(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D609C8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D609C924()
{
  v0 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v0);

  return result;
}

double sub_1D609C984(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1DA6F9910](v2, v3);

  return result;
}

double sub_1D609C9E4(uint64_t a1, unint64_t a2)
{
  v2 = 0xE700000000000000;
  v3 = 0x656C6369747261;
  switch(a2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v2 = 0xE500000000000000;
      v3 = 0x6575737369;
      break;
    case 2uLL:
      v2 = 0xE800000000000000;
      v3 = 0x6465626D45626577;
      break;
    case 3uLL:
      v2 = 0xEA00000000006B63;
      v3 = 0x6172546F69647561;
      break;
    case 4uLL:
      v2 = 0xE300000000000000;
      v3 = 6775156;
      break;
    case 5uLL:
      v2 = 0xE500000000000000;
      v3 = 0x65726F6373;
      break;
    case 6uLL:
      v2 = 0xE800000000000000;
      v3 = 0x676E69646E617473;
      break;
    case 7uLL:
      v3 = 0x74656B63617262;
      break;
    case 8uLL:
      v2 = 0xE800000000000000;
      v3 = 0x65726F6353786F62;
      break;
    case 9uLL:
      v3 = 0x726F6353656E696CLL;
      v2 = 0xE900000000000065;
      break;
    case 0xAuLL:
      v2 = 0xEC00000074726F70;
      v3 = 0x65527972756A6E69;
      break;
    case 0xBuLL:
      v2 = 0xE900000000000072;
      v3 = 0x6579616C5079656BLL;
      break;
    case 0xCuLL:
      v2 = 0xE600000000000000;
      v3 = 0x656C7A7A7570;
      break;
    case 0xDuLL:
      v3 = 0x7954656C7A7A7570;
      v2 = 0xEA00000000006570;
      break;
    case 0xEuLL:
      v2 = 0xEF63697473697461;
      v3 = 0x7453656C7A7A7570;
      break;
    case 0xFuLL:
      v2 = 0xE600000000000000;
      v3 = 0x657069636572;
      break;
    default:
      v3 = a1;
      v2 = a2;
      break;
  }

  sub_1D5CBA110(a1, a2);
  MEMORY[0x1DA6F9910](v3, v2);

  return result;
}

double sub_1D609CBEC(unint64_t a1, unint64_t a2)
{
  v2 = 0xE300000000000000;
  v3 = 7364935;
  switch(a2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x696C66664F706147;
      v2 = 0xEA0000000000656ELL;
      break;
    case 2uLL:
      v2 = 0xE800000000000000;
      v3 = 0x644172656E6E6142;
      break;
    case 3uLL:
      v2 = 0xE800000000000000;
      v3 = 0x656E696C64616548;
      break;
    case 4uLL:
      v2 = 0xE800000000000000;
      v3 = 0x6465626D45626557;
      break;
    case 5uLL:
      v2 = 0xE500000000000000;
      v3 = 0x6575737349;
      break;
    case 6uLL:
      v2 = 0xEB000000006D6574;
      v3 = 0x49676F6C61746143;
      break;
    case 7uLL:
      v3 = 6775124;
      break;
    case 8uLL:
      v2 = 0xE800000000000000;
      v3 = 0x79726F6765746143;
      break;
    case 9uLL:
      v2 = 0x80000001D73C8DD0;
      v3 = 0xD000000000000010;
      break;
    case 0xAuLL:
      v2 = 0xE600000000000000;
      v3 = 0x6E6967756C50;
      break;
    case 0xBuLL:
      v2 = 0xE600000000000000;
      v3 = 0x657069636552;
      break;
    case 0xCuLL:
      v2 = 0xEB00000000746E65;
      v3 = 0x76457374726F7053;
      break;
    case 0xDuLL:
      v2 = 0xE600000000000000;
      v3 = 0x656C7A7A7550;
      break;
    case 0xEuLL:
      v2 = 0xEA00000000006570;
      v3 = 0x7954656C7A7A7550;
      break;
    case 0xFuLL:
      v2 = 0xEF63697473697461;
      v3 = 0x7453656C7A7A7550;
      break;
    case 0x10uLL:
      v2 = 0xE700000000000000;
      v3 = 0x6C6C6177796150;
      break;
    case 0x11uLL:
      v2 = 0xE400000000000000;
      v3 = 1701736270;
      break;
    default:
      v3 = a1;
      v2 = a2;
      break;
  }

  sub_1D5BF2DDC(a1, a2);
  MEMORY[0x1DA6F9910](v3, v2);

  return result;
}

double sub_1D609CE14(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 44) >> 13;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    if (v1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x746C7561666564;
      goto LABEL_15;
    }

    v11 = 0x2865736163;
    v12 = 0xE500000000000000;
    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
LABEL_14:
    v2 = v11;
    v1 = v12;
    goto LABEL_15;
  }

  if (v3)
  {
LABEL_8:

    goto LABEL_15;
  }

  v4 = *(a1 + 16);
  if (!(v4 >> 6))
  {
    v11 = 0x28746F6C73;
    v12 = 0xE500000000000000;
    MEMORY[0x1DA6F9910](v2, v1);
    goto LABEL_13;
  }

  if (v4 >> 6 == 1)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    MEMORY[0x1DA6F9910](0x286D657469, 0xE500000000000000);
    v5.n128_f64[0] = sub_1D609C9E4(v2, v1);
LABEL_13:
    MEMORY[0x1DA6F9910](41, 0xE100000000000000, v5);
    goto LABEL_14;
  }

  if (v2 | v1 || v4 != 128)
  {
    if (!v1 && v2 == 1 && v4 == 128)
    {
      v1 = 0xED0000797261746ELL;
      v2 = 0x656D656C70707573;
    }

    else if (!v1 && v2 == 2 && v4 == 128)
    {
      v1 = 0xE500000000000000;
      v2 = 0x656C797473;
    }

    else if (!v1 && v2 == 3 && v4 == 128)
    {
      v1 = 0xEA00000000006E6FLL;
      v2 = 0x697461726F636564;
    }

    else if (!v1 && v2 == 4 && v4 == 128)
    {
      v1 = 0xE900000000000079;
      v2 = 0x7261696C69787561;
    }

    else
    {
      v8 = v4 == 128;
      if (v1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v2 == 5;
      }

      v10 = v9;
      if ((v10 & v8) != 0)
      {
        v2 = 0x6E6F6974706FLL;
      }

      else
      {
        v2 = 0x646E69426D657469;
      }

      if ((v10 & v8) != 0)
      {
        v1 = 0xE600000000000000;
      }

      else
      {
        v1 = 0xEC00000073676E69;
      }
    }
  }

  else
  {
    v1 = 0xE500000000000000;
    v2 = 0x70756F7267;
  }

LABEL_15:
  MEMORY[0x1DA6F9910](v2, v1);

  return result;
}

double sub_1D609D0C4(unsigned __int8 a1)
{
  sub_1D5BF4D9C();
  v1 = sub_1D7263A0C();
  v3 = v2;

  MEMORY[0x1DA6F9910](v1, v3);

  return result;
}

void sub_1D609D1E4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a2 + 16) || (, v6 = *(sub_1D5FB85CC(a2, a1) + 2), , v6))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    return;
  }

  v7 = a1[2];
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = sub_1D5E23BF0(a1[2], 0);
    v10 = sub_1D5E24A6C(&v26, v9 + 8, v7, a1);
    v11 = v26;

    sub_1D5B87E38(v11);
    if (v10 != v7)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v26 = v9;

  sub_1D60A59C0(&v26);

  v12 = *(v26 + 2);
  if (v12)
  {
    v26 = v8;
    sub_1D5BFC364(0, v12, 0);
    v13 = 32;
    v14 = v26;
    do
    {
      v15 = sub_1D72644BC();
      v26 = v14;
      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      if (v18 >= v17 >> 1)
      {
        v25 = v15;
        v20 = v16;
        sub_1D5BFC364((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v25;
        v14 = v26;
      }

      *(v14 + 2) = v18 + 1;
      v19 = &v14[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v13 += 4;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v26 = v14;
  sub_1D5B5D444(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v21 = sub_1D7261F3C();
  v23 = v22;

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000032, 0x80000001D73C8DF0);
  MEMORY[0x1DA6F9910](v21, v23);

  v24 = v27;
  *a3 = v26;
  *(a3 + 8) = v24;
  *(a3 + 16) = 0;
}

void sub_1D609D4B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_1D5FB85CC(a2, a1);
  v7 = v6;
  v8 = v6[2];
  if (!v8)
  {

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    return;
  }

  v9 = sub_1D5E23BF0(v6[2], 0);
  v10 = sub_1D5E24A6C(&v25, v9 + 8, v8, v7);
  sub_1D5B87E38(v25);
  if (v10 == v8)
  {
    v25 = v9;

    sub_1D60A59C0(&v25);

    v11 = *(v25 + 2);
    if (v11)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v11, 0);
      v12 = 32;
      v13 = v25;
      do
      {
        v14 = sub_1D72644BC();
        v25 = v13;
        v17 = *(v13 + 2);
        v16 = *(v13 + 3);
        if (v17 >= v16 >> 1)
        {
          v24 = v14;
          v19 = v15;
          sub_1D5BFC364((v16 > 1), v17 + 1, 1);
          v15 = v19;
          v14 = v24;
          v13 = v25;
        }

        *(v13 + 2) = v17 + 1;
        v18 = &v13[16 * v17];
        *(v18 + 4) = v14;
        *(v18 + 5) = v15;
        v12 += 4;
        --v11;
      }

      while (v11);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    v25 = v13;
    sub_1D5B5D444(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v20 = sub_1D7261F3C();
    v22 = v21;

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D7263D4C();

    v25 = 0xD000000000000026;
    v26 = 0x80000001D73C8E30;
    MEMORY[0x1DA6F9910](v20, v22);

    v23 = v26;
    *a3 = v25;
    *(a3 + 8) = v23;
    *(a3 + 16) = 0;
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

void FeedGroupEmitterRule.evaluate(cursor:slots:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v532 = a4;
  v523 = a2;
  v531 = a1;
  sub_1D5B5D8D0(0, &qword_1EDF33290, type metadata accessor for BundleSession);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v508 = &v483 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v507 = &v483 - v10;
  v11 = sub_1D725BD1C();
  v520 = *(v11 - 8);
  v521 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v488 = &v483 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v496 = &v483 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v487 = &v483 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v495 = &v483 - v22;
  sub_1D5B5D8D0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v494 = &v483 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v506 = &v483 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v510 = &v483 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v493 = &v483 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v505 = &v483 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v509 = &v483 - v40;
  v519 = sub_1D7258C0C();
  v518 = *(v519 - 8);
  MEMORY[0x1EEE9AC00](v519, v41);
  v515 = &v483 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v517 = sub_1D7258C2C();
  v516 = *(v517 - 8);
  MEMORY[0x1EEE9AC00](v517, v43);
  v514 = &v483 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a3 + 16);
  v45 = *(a3 + 24);
  v48 = type metadata accessor for FeedCursorGroup(255, v46, v45, v47);
  v513 = sub_1D726393C();
  v512 = *(v513 - 8);
  MEMORY[0x1EEE9AC00](v513, v49);
  v490 = &v483 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v503 = &v483 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v489 = &v483 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v502 = &v483 - v59;
  v530 = v48;
  v522 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v60, v61);
  v486 = &v483 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v492 = &v483 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v485 = &v483 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v491 = &v483 - v71;
  sub_1D60A55D8(0);
  MEMORY[0x1EEE9AC00](v72 - 8, v73);
  v504 = &v483 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v500 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v75);
  v498 = &v483 - v76;
  v77 = swift_checkMetadataState();
  v497 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v78);
  v80 = &v483 - v79;
  swift_getAssociatedTypeWitness();
  v527 = v46;
  v528 = v45;
  swift_getAssociatedConformanceWitness();
  v81 = swift_getAssociatedTypeWitness();
  v82 = swift_getAssociatedConformanceWitness();
  v524 = v81;
  v525 = v82;
  v529 = swift_getAssociatedTypeWitness();
  v526 = *(v529 - 8);
  MEMORY[0x1EEE9AC00](v529, v83);
  v85 = &v483 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86, v87);
  v89 = &v483 - v88;
  MEMORY[0x1EEE9AC00](v90, v91);
  v511 = &v483 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v96 = &v483 - v95;
  MEMORY[0x1EEE9AC00](v97, v98);
  v100 = &v483 - v99;
  MEMORY[0x1EEE9AC00](v101, v102);
  v104 = &v483 - v103;
  MEMORY[0x1EEE9AC00](v105, v106);
  v108 = &v483 - v107;
  v111 = MEMORY[0x1EEE9AC00](v109, v110);
  v113 = (&v483 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v114 + 16))(v113, v533, a3, v111);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v121 = *v113;
      v117 = 0x80000001D73C8990;
      v122 = 0xD000000000000014;
      goto LABEL_60;
    case 2:
      v218 = v529;
      v219 = *(v113 + *(swift_getTupleTypeMetadata2() + 48));
      v220 = v526;
      v221 = (*(v526 + 32))(v108, v113, v218);
      MEMORY[0x1EEE9AC00](v221, v222);
      v223 = v528;
      *(&v483 - 4) = v527;
      *(&v483 - 3) = v223;
      *(&v483 - 2) = v108;
      if (sub_1D726269C() >= v219)
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v535[0] = 0x7563636F2078614DLL;
        v535[1] = 0xEF2065636E657272;
        v534 = v219;
        v411 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v411);

        MEMORY[0x1DA6F9910](0x6565622073616820, 0xED000074656D206ELL);
        v226 = 0;
        v224 = v535[0];
        v225 = v535[1];
      }

      else
      {
        v224 = 0;
        v225 = 0;
        v226 = 2;
      }

      v412 = v532;
      *v532 = v224;
      v412[1] = v225;
      *(v412 + 16) = v226;
      (*(v220 + 8))(v108, v218);
      return;
    case 3:
      v237 = v529;
      v533 = *(v113 + *(swift_getTupleTypeMetadata2() + 48));
      v238 = *(v526 + 32);
      v484 = v104;
      v238(v104, v113, v237);
      v240 = v527;
      v239 = v528;
      (*(v528 + 64))(v527, v528);
      v241 = v498;
      (*(AssociatedConformanceWitness + 40))(v77, AssociatedConformanceWitness);
      (*(v497 + 8))(v80, v77);
      v242 = AssociatedTypeWitness;
      v243 = swift_getAssociatedConformanceWitness();
      v244 = (*(v243 + 48))(v242, v243);
      v245 = (*(v500 + 8))(v241, v242);
      v535[0] = v244;
      MEMORY[0x1EEE9AC00](v245, v246);
      *(&v483 - 2) = v240;
      *(&v483 - 1) = v239;
      swift_getAssociatedTypeWitness();
      v247 = sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      v250 = sub_1D5B874E4(sub_1D60A59A0, (&v483 - 4), v247, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v249);

      v251 = sub_1D5B86020(v250);

      v256 = FeedGroupEmitterCursor.allGroups.getter(v252, v253, v254, v255);
      MEMORY[0x1EEE9AC00](v256, v257);
      *(&v483 - 4) = v240;
      *(&v483 - 3) = v239;
      v258 = v484;
      *(&v483 - 2) = v484;
      *(&v483 - 1) = v251;
      v259 = sub_1D726269C();

      v260 = v533;

      if (v259 >= v260)
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v535[0] = 0xD00000000000001ALL;
        v535[1] = 0x80000001D73C8970;
        v534 = v260;
        v413 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v413);

        MEMORY[0x1DA6F9910](0x6565622073616820, 0xED000074656D206ELL);
        v263 = 0;
        v261 = v535[0];
        v262 = v535[1];
      }

      else
      {
        v261 = 0;
        v262 = 0;
        v263 = 2;
      }

      v414 = v532;
      *v532 = v261;
      v414[1] = v262;
      *(v414 + 16) = v263;
      (*(v526 + 8))(v258, v529);
      return;
    case 4:
      v188 = v529;
      v189 = *(v113 + *(swift_getTupleTypeMetadata2() + 48));
      v190 = v526;
      v191 = (*(v526 + 32))(v100, v113, v188);
      v192 = v531;
      v196 = FeedGroupEmitterCursor.allGroups.getter(v191, v193, v194, v195);
      MEMORY[0x1EEE9AC00](v196, v197);
      *(&v483 - 2) = v100;
      *(&v483 - 1) = v192;
      v198 = sub_1D726269C();

      if (v198 >= v189)
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v535[0] = 0xD000000000000020;
        v535[1] = 0x80000001D73C8940;
        v534 = v189;
        v404 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v404);

        MEMORY[0x1DA6F9910](0x6565622073616820, 0xED000074656D206ELL);
        v201 = 0;
        v199 = v535[0];
        v200 = v535[1];
      }

      else
      {
        v199 = 0;
        v200 = 0;
        v201 = 2;
      }

      v405 = v532;
      *v532 = v199;
      v405[1] = v200;
      *(v405 + 16) = v201;
      (*(v190 + 8))(v100, v188);
      return;
    case 5:
      sub_1D60A5910();
      v294 = v529;
      v295 = *(v113 + *(swift_getTupleTypeMetadata2() + 48));
      v296 = v526;
      (*(v526 + 32))(v96, v113, v294);
      v297 = v504;
      v298 = sub_1D60A2BD8(v504);
      v302 = FeedGroupEmitterCursor.allGroups.getter(v298, v299, v300, v301);
      MEMORY[0x1EEE9AC00](v302, v303);
      v304 = v528;
      *(&v483 - 4) = v527;
      *(&v483 - 3) = v304;
      *(&v483 - 2) = v96;
      *(&v483 - 1) = v297;
      v305 = sub_1D726269C();

      if (v305 >= v295)
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v535[0] = 0xD00000000000001BLL;
        v535[1] = 0x80000001D73C8920;
        v534 = v295;
        v415 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v415);

        MEMORY[0x1DA6F9910](0x6565622073616820, 0xED000074656D206ELL);
        v308 = 0;
        v306 = v535[0];
        v307 = v535[1];
      }

      else
      {
        v306 = 0;
        v307 = 0;
        v308 = 2;
      }

      v416 = v532;
      *v532 = v306;
      v416[1] = v307;
      *(v416 + 16) = v308;
      sub_1D60A566C(v297, sub_1D60A55D8);
      (*(v296 + 8))(v96, v294);
      return;
    case 6:
      v159 = *v113;
      v264 = v530;
      v535[0] = *(v531 + *(*v531 + 136));
      sub_1D72627FC();
      swift_getWitnessTable();
      v324 = v502;
      sub_1D7261F0C();
      v266 = v522;
      if ((*(v522 + 48))(v324, 1, v264) == 1)
      {
        (*(v512 + 8))(v324, v513);
        swift_getAssociatedConformanceWitness();
        if (sub_1D7262B7C())
        {
          goto LABEL_205;
        }

        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();
        v325 = "Not to be preceded by ";
        v326 = 0xD000000000000027;
        goto LABEL_103;
      }

      v417 = v491;
      (*(v266 + 32))(v491, v324, v264);
      v418 = *(v525 + 64);
      swift_checkMetadataState();
      v419 = v511;
      v418();
      v420 = v529;
      swift_getAssociatedConformanceWitness();
      v421 = sub_1D7262B9C();
      (*(v526 + 8))(v419, v420);
      if (v421)
      {
        goto LABEL_208;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v422 = "Preferred to be preceded by ";
      v423 = 0xD000000000000012;
      goto LABEL_171;
    case 7:
      v159 = *v113;
      if (v523)
      {
        goto LABEL_178;
      }

      v264 = v530;
      v535[0] = *(v531 + *(*v531 + 136));
      sub_1D72627FC();
      swift_getWitnessTable();
      v265 = v489;
      sub_1D7261F0C();
      v266 = v522;
      if ((*(v522 + 48))(v265, 1, v264) == 1)
      {
        (*(v512 + 8))(v265, v513);
        swift_getAssociatedConformanceWitness();
        v267 = sub_1D7262B7C();
        v161 = v532;
        if (v267)
        {
          goto LABEL_222;
        }

        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();
        v162 = "Not to be preceded by ";
        v163 = 0xD000000000000027;
        goto LABEL_240;
      }

      v417 = v485;
      (*(v266 + 32))(v485, v265, v264);
      v457 = *(v525 + 64);
      swift_checkMetadataState();
      v458 = v511;
      v457();
      v459 = v529;
      swift_getAssociatedConformanceWitness();
      v460 = sub_1D7262B9C();
      (*(v526 + 8))(v458, v459);
      if (v460)
      {
        goto LABEL_208;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v428 = 0x80000001D73C88E0;
      v423 = 0xD00000000000001CLL;
      goto LABEL_172;
    case 8:
      v159 = *v113;
      v264 = v530;
      v535[0] = *(v531 + *(*v531 + 136));
      sub_1D72627FC();
      swift_getWitnessTable();
      v337 = v503;
      sub_1D7261F0C();
      v266 = v522;
      if ((*(v522 + 48))(v337, 1, v264) == 1)
      {
        (*(v512 + 8))(v337, v513);
        swift_getAssociatedConformanceWitness();
        if ((sub_1D7262B7C() & 1) == 0)
        {
          goto LABEL_205;
        }

        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();
        v325 = "ior occurrence of ";
        v326 = 0xD00000000000002BLL;
LABEL_103:
        MEMORY[0x1DA6F9910](v326, v325 | 0x8000000000000000);
        v534 = v159;
        goto LABEL_104;
      }

      v417 = v492;
      (*(v266 + 32))(v492, v337, v264);
      v424 = *(v525 + 64);
      swift_checkMetadataState();
      v425 = v511;
      v424();
      v426 = v529;
      swift_getAssociatedConformanceWitness();
      v427 = sub_1D7262B9C();
      (*(v526 + 8))(v425, v426);
      if ((v427 & 1) == 0)
      {
LABEL_208:
        (*(v266 + 8))(v417, v264);
        goto LABEL_209;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v422 = " be preceded by ";
      v423 = 0xD000000000000016;
LABEL_171:
      v428 = v422 | 0x8000000000000000;
LABEL_172:
      MEMORY[0x1DA6F9910](v423, v428);
      v534 = v159;
      sub_1D7262BAC();
      swift_getWitnessTable();
      sub_1D726466C();

      v429 = v535[0];
      v430 = v535[1];
      (*(v266 + 8))(v417, v264);
      goto LABEL_173;
    case 9:
      v159 = *v113;
      if (v523)
      {
        goto LABEL_178;
      }

      v210 = v530;
      v535[0] = *(v531 + *(*v531 + 136));
      sub_1D72627FC();
      swift_getWitnessTable();
      v211 = v490;
      sub_1D7261F0C();
      v212 = v522;
      if ((*(v522 + 48))(v211, 1, v210) != 1)
      {
        v451 = v486;
        (*(v212 + 32))(v486, v211, v210);
        v452 = *(v525 + 64);
        swift_checkMetadataState();
        v453 = v511;
        v452();
        v454 = v529;
        swift_getAssociatedConformanceWitness();
        v455 = sub_1D7262B9C();
        (*(v526 + 8))(v453, v454);
        if (v455)
        {
          v535[0] = 0;
          v535[1] = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0xD000000000000020, 0x80000001D73C8860);
          v534 = v159;
          sub_1D7262BAC();
          swift_getWitnessTable();
          sub_1D726466C();

          v429 = v535[0];
          v430 = v535[1];
          (*(v212 + 8))(v451, v210);
LABEL_173:
          v431 = 1;
        }

        else
        {
          (*(v212 + 8))(v451, v210);
LABEL_209:

          v429 = 0;
          v430 = 0;
          v431 = 2;
        }

        v461 = v532;
        *v532 = v429;
        v461[1] = v430;
        *(v461 + 16) = v431;
        return;
      }

      (*(v512 + 8))(v211, v513);
      swift_getAssociatedConformanceWitness();
      v213 = sub_1D7262B7C();
      v161 = v532;
      if ((v213 & 1) == 0)
      {
        goto LABEL_222;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v162 = "ior occurrence of ";
      v163 = 0xD00000000000002BLL;
      goto LABEL_240;
    case 10:
      v183 = *v113;
      v535[0] = *(v531 + *(*v531 + 136));
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v116);
      v333 = v528;
      *(&v483 - 4) = v527;
      *(&v483 - 3) = v333;
      *(&v483 - 2) = v183;
      sub_1D72627FC();

      swift_getWitnessTable();
      v334 = sub_1D72624DC();

      if (v334)
      {
        goto LABEL_178;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v186 = "prior occurrence of ";
      v187 = 0xD000000000000022;
      goto LABEL_99;
    case 11:
      v183 = *v113;
      v535[0] = *(v531 + *(*v531 + 136));
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v116);
      v184 = v528;
      *(&v483 - 4) = v527;
      *(&v483 - 3) = v184;
      *(&v483 - 2) = v183;
      sub_1D72627FC();

      swift_getWitnessTable();
      v185 = sub_1D72624DC();

      if ((v185 & 1) == 0)
      {
        goto LABEL_178;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v186 = " not statisfied of ";
      v187 = 0xD000000000000024;
LABEL_99:
      MEMORY[0x1DA6F9910](v187, v186 | 0x8000000000000000);
      v534 = v183;
      swift_getAssociatedConformanceWitness();
      sub_1D7262BAC();
      swift_getWitnessTable();
      sub_1D726466C();

      v335 = v535[1];
      v336 = v532;
      *v532 = v535[0];
      v336[1] = v335;
      *(v336 + 16) = 1;
      return;
    case 12:
      v202 = v529;
      v203 = *(v113 + *(swift_getTupleTypeMetadata2() + 48));
      v204 = v526;
      (*(v526 + 32))(v89, v113, v202);
      v534 = *(v531 + *(*v531 + 136));
      v205 = sub_1D72627FC();

      v206 = swift_getWitnessTable();
      MEMORY[0x1DA6F95B0](v535, v205, v206);
      v534 = v535[0];
      sub_1D72640CC();
      swift_getWitnessTable();
      v534 = sub_1D726281C();
      MEMORY[0x1EEE9AC00](v534, v207);
      v208 = v528;
      *(&v483 - 4) = v527;
      *(&v483 - 3) = v208;
      *(&v483 - 2) = v89;
      swift_getWitnessTable();
      sub_1D7262C7C();

      if (v535[1])
      {
        v209 = v532;
        *v532 = 0;
        v209[1] = 0;
        *(v209 + 16) = 2;
      }

      else
      {
        v406 = v535[0];
        if (v535[0] >= v203)
        {
          v408 = 0;
          v409 = 0;
          v410 = 2;
        }

        else
        {
          v535[0] = 0;
          v535[1] = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0x69642070756F7247, 0xEF2065636E617473);
          v534 = v406;
          sub_1D726466C();
          MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C87B0);
          v534 = v203;
          v407 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v407);

          v408 = v535[0];
          v409 = v535[1];
          v410 = 1;
        }

        v442 = v532;
        *v532 = v408;
        v442[1] = v409;
        *(v442 + 16) = v410;
      }

      (*(v204 + 8))(v89, v202);
      return;
    case 13:
      v316 = v529;
      v317 = *(v113 + *(swift_getTupleTypeMetadata2() + 48));
      v318 = v526;
      (*(v526 + 32))(v85, v113, v316);
      if (v523 || (v534 = *(v531 + *(*v531 + 136)), v319 = sub_1D72627FC(), , v320 = swift_getWitnessTable(), MEMORY[0x1DA6F95B0](v535, v319, v320), v534 = v535[0], sub_1D72640CC(), swift_getWitnessTable(), v534 = sub_1D726281C(), MEMORY[0x1EEE9AC00](v534, v321), v322 = v528, *(&v483 - 4) = v527, *(&v483 - 3) = v322, *(&v483 - 2) = v85, swift_getWitnessTable(), sub_1D7262C7C(), , (v535[1] & 1) != 0))
      {
        v323 = v532;
        *v532 = 0;
        v323[1] = 0;
        *(v323 + 16) = 2;
      }

      else
      {
        v462 = v535[0];
        if (v535[0] >= v317)
        {
          v464 = 0;
          v465 = 0;
          v466 = 2;
        }

        else
        {
          v535[0] = 0;
          v535[1] = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73C8790);
          v534 = v462;
          sub_1D726466C();
          MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C87B0);
          v534 = v317;
          v463 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v463);

          v464 = v535[0];
          v465 = v535[1];
          v466 = 1;
        }

        v477 = v532;
        *v532 = v464;
        v477[1] = v465;
        *(v477 + 16) = v466;
      }

      (*(v318 + 8))(v85, v316);
      return;
    case 14:
      v164 = *v113;
      v535[0] = *(v531 + *(*v531 + 152));
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v116);
      v165 = v528;
      *(&v483 - 2) = v527;
      *(&v483 - 1) = v165;
      v166 = sub_1D72627FC();

      v167 = swift_getWitnessTable();
      v168 = v166;
      v169 = v529;
      v171 = sub_1D5B874E4(sub_1D60A7A88, (&v483 - 4), v168, v529, MEMORY[0x1E69E73E0], v167, MEMORY[0x1E69E7410], v170);

      v535[0] = v171;
      sub_1D72627FC();
      v172 = swift_getAssociatedConformanceWitness();
      swift_getWitnessTable();
      v173 = sub_1D7262BBC();
      if (sub_1D7262B7C())
      {
        goto LABEL_49;
      }

      v164 = MEMORY[0x1DA6FA1D0](v173, v164, v169, v172);

      if ((sub_1D7262B7C() & 1) == 0)
      {
        goto LABEL_205;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v174 = "hen to be followed by ";
      v175 = 0xD000000000000012;
      goto LABEL_51;
    case 15:
      v164 = *v113;
      if (v523)
      {
        goto LABEL_178;
      }

      v535[0] = *(v531 + *(*v531 + 152));
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v116);
      v227 = v528;
      *(&v483 - 2) = v527;
      *(&v483 - 1) = v227;
      v228 = sub_1D72627FC();

      v229 = swift_getWitnessTable();
      v230 = v228;
      v231 = v529;
      v233 = sub_1D5B874E4(sub_1D60A7A88, (&v483 - 4), v230, v529, MEMORY[0x1E69E73E0], v229, MEMORY[0x1E69E7410], v232);

      v535[0] = v233;
      sub_1D72627FC();
      v234 = swift_getAssociatedConformanceWitness();
      swift_getWitnessTable();
      v235 = sub_1D7262BBC();
      if (sub_1D7262B7C())
      {
LABEL_49:

        if ((sub_1D7262B7C() & 1) == 0)
        {
          v535[0] = 0;
          v535[1] = 0xE000000000000000;
          sub_1D7263D4C();
          v174 = "Preferred to be followed by ";
          v175 = 0xD000000000000026;
LABEL_51:
          v236 = v174 | 0x8000000000000000;
          goto LABEL_52;
        }
      }

      else
      {
        v164 = MEMORY[0x1DA6FA1D0](v235, v164, v231, v234);

        if (sub_1D7262B7C())
        {
          v535[0] = 0;
          v535[1] = 0xE000000000000000;
          sub_1D7263D4C();
          v236 = 0x80000001D73C8720;
          v175 = 0xD00000000000001CLL;
LABEL_52:
          MEMORY[0x1DA6F9910](v175, v236);
          v534 = v164;
LABEL_104:
          sub_1D7262BAC();
          swift_getWitnessTable();
          sub_1D726466C();

          v119 = v535[0];
          v117 = v535[1];
          v126 = 1;
LABEL_206:
          v456 = v532;
          *v532 = v119;
          v456[1] = v117;
          *(v456 + 16) = v126;
          return;
        }
      }

LABEL_205:

      v119 = 0;
      v117 = 0;
      v126 = 2;
      goto LABEL_206;
    case 16:
      v149 = *v113;
      v535[0] = *(v531 + *(*v531 + 152));
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v116);
      v150 = v528;
      *(&v483 - 2) = v527;
      *(&v483 - 1) = v150;
      v151 = sub_1D72627FC();

      v152 = swift_getWitnessTable();
      v153 = v151;
      v154 = v529;
      v156 = sub_1D5B874E4(sub_1D60A58A8, (&v483 - 4), v153, v529, MEMORY[0x1E69E73E0], v152, MEMORY[0x1E69E7410], v155);

      v535[0] = v156;
      sub_1D72627FC();
      v157 = swift_getAssociatedConformanceWitness();
      swift_getWitnessTable();
      v158 = sub_1D7262BBC();
      if (sub_1D7262B7C() & 1) != 0 || (sub_1D7262B7C())
      {
        goto LABEL_75;
      }

      v159 = MEMORY[0x1DA6FA1D0](v158, v149, v154, v157);

      v160 = sub_1D7262B7C();
      v161 = v532;
      if (v160)
      {
        goto LABEL_222;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v162 = " be followed by ";
      v163 = 0xD000000000000016;
      goto LABEL_240;
    case 17:
      v275 = *v113;
      if (v523)
      {
        goto LABEL_178;
      }

      v535[0] = *(v531 + *(*v531 + 152));
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v116);
      v276 = v528;
      *(&v483 - 2) = v527;
      *(&v483 - 1) = v276;
      v277 = sub_1D72627FC();

      v278 = swift_getWitnessTable();
      v279 = v277;
      v280 = v529;
      v282 = sub_1D5B874E4(sub_1D60A7A88, (&v483 - 4), v279, v529, MEMORY[0x1E69E73E0], v278, MEMORY[0x1E69E7410], v281);

      v535[0] = v282;
      sub_1D72627FC();
      v283 = swift_getAssociatedConformanceWitness();
      swift_getWitnessTable();
      v284 = sub_1D7262BBC();
      if (sub_1D7262B7C() & 1) != 0 || (sub_1D7262B7C())
      {
LABEL_75:

        goto LABEL_178;
      }

      v159 = MEMORY[0x1DA6FA1D0](v284, v275, v280, v283);

      v473 = sub_1D7262B7C();
      v161 = v532;
      if (v473)
      {
LABEL_222:

        v474 = 0;
        v475 = 0;
        v476 = 2;
      }

      else
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();
        v162 = "Requires bundle subscription";
        v163 = 0xD000000000000020;
LABEL_240:
        MEMORY[0x1DA6F9910](v163, v162 | 0x8000000000000000);
        v534 = v159;
        sub_1D7262BAC();
        swift_getWitnessTable();
        sub_1D726466C();

        v474 = v535[0];
        v475 = v535[1];
        v476 = 1;
      }

      *v161 = v474;
      v161[1] = v475;
      *(v161 + 16) = v476;
      return;
    case 18:
      v327 = v531;
      v328 = *(*v531 + 192);
      if (sub_1D618449C(*(v531 + v328), *v113))
      {
        goto LABEL_129;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();

      strcpy(v535, "Cursor kind ");
      BYTE5(v535[1]) = 0;
      HIWORD(v535[1]) = -5120;
      v329 = *(v327 + v328);
      if (v329 <= 2)
      {
        if (*(v327 + v328))
        {
          v330 = v532;
          if (v329 == 1)
          {
            v332 = 0xE400000000000000;
            v331 = 1852138835;
          }

          else
          {
            v332 = 0xE600000000000000;
            v331 = 0x6E657A6F7246;
          }
        }

        else
        {
          v331 = 0x657669746341;
          v332 = 0xE600000000000000;
          v330 = v532;
        }
      }

      else if (*(v327 + v328) > 4u)
      {
        v330 = v532;
        v332 = 0xE800000000000000;
        if (v329 == 5)
        {
          v471 = 0x6C6F6F706552;
        }

        else
        {
          v471 = 0x646E61707845;
        }

        v331 = v471 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      }

      else
      {
        v330 = v532;
        if (v329 == 3)
        {
          v331 = 0x4620666F20646E45;
          v332 = 0xEB00000000646565;
        }

        else
        {
          v332 = 0xE600000000000000;
          v331 = 0x646568636143;
        }
      }

      MEMORY[0x1DA6F9910](v331, v332);

      v478 = 0x206E6920746F6E20;
      v479 = 0xE800000000000000;
      goto LABEL_237;
    case 19:
      v363 = v531;
      v364 = *(*v531 + 192);
      if (sub_1D618449C(*(v531 + v364), *v113))
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();

        strcpy(v535, "Cursor kind ");
        BYTE5(v535[1]) = 0;
        HIWORD(v535[1]) = -5120;
        v365 = *(v363 + v364);
        if (v365 <= 2)
        {
          if (*(v363 + v364))
          {
            v330 = v532;
            if (v365 == 1)
            {
              v367 = 0xE400000000000000;
              v366 = 1852138835;
            }

            else
            {
              v367 = 0xE600000000000000;
              v366 = 0x6E657A6F7246;
            }
          }

          else
          {
            v366 = 0x657669746341;
            v367 = 0xE600000000000000;
            v330 = v532;
          }
        }

        else if (*(v363 + v364) > 4u)
        {
          v330 = v532;
          v367 = 0xE800000000000000;
          if (v365 == 5)
          {
            v472 = 0x6C6F6F706552;
          }

          else
          {
            v472 = 0x646E61707845;
          }

          v366 = v472 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
        }

        else
        {
          v330 = v532;
          if (v365 == 3)
          {
            v366 = 0x4620666F20646E45;
            v367 = 0xEB00000000646565;
          }

          else
          {
            v367 = 0xE600000000000000;
            v366 = 0x646568636143;
          }
        }

        MEMORY[0x1DA6F9910](v366, v367);

        v478 = 544106784;
        v479 = 0xE400000000000000;
LABEL_237:
        MEMORY[0x1DA6F9910](v478, v479);
        sub_1D5E2A63C();
        v480 = sub_1D7262B1C();
        v482 = v481;

        MEMORY[0x1DA6F9910](v480, v482);

        v368 = v535[0];
        v369 = v535[1];
        v370 = 1;
      }

      else
      {
LABEL_129:

        v368 = 0;
        v369 = 0;
        v370 = 2;
        v330 = v532;
      }

      *v330 = v368;
      v330[1] = v369;
      *(v330 + 16) = v370;
      return;
    case 20:
      v285 = *v113;
      v286 = v514;
      sub_1D7258BCC();
      v287 = v518;
      v288 = v515;
      v289 = v519;
      (*(v518 + 104))(v515, *MEMORY[0x1E6969AB0], v519);
      v290 = sub_1D7258C1C();
      (*(v287 + 8))(v288, v289);
      (*(v516 + 8))(v286, v517);
      LOBYTE(v290) = sub_1D6184708(v290, v285);

      v291 = 0x80000001D73C8670;
      v292 = 0xD000000000000017;
      if (v290)
      {
        v292 = 0;
        v291 = 0;
        v293 = 2;
      }

      else
      {
        v293 = 0;
      }

      goto LABEL_84;
    case 21:
      v309 = *v113;
      v310 = v514;
      sub_1D7258BCC();
      v311 = v518;
      v312 = v515;
      v313 = v519;
      (*(v518 + 104))(v515, *MEMORY[0x1E6969AB0], v519);
      v314 = sub_1D7258C1C();
      (*(v311 + 8))(v312, v313);
      (*(v516 + 8))(v310, v517);
      LOBYTE(v314) = sub_1D6184708(v314, v309);

      v291 = 0x80000001D73C8650;
      v292 = 0xD00000000000001BLL;
      if (v314)
      {
        v293 = 0;
      }

      else
      {
        v292 = 0;
        v291 = 0;
        v293 = 2;
      }

LABEL_84:
      v315 = v532;
      *v532 = v292;
      v315[1] = v291;
      *(v315 + 16) = v293;
      return;
    case 22:
      v348 = *v113;
      v349 = v531;
      v350 = *v531;
      v351 = v531 + *(*v531 + 176);
      v352 = *&v351[*(type metadata accessor for FeedContext(0) + 56)];
      if (v352)
      {
        v353 = 1 << *(v348 + 32);
        v354 = -1;
        if (v353 < 64)
        {
          v354 = ~(-1 << v353);
        }

        v355 = v354 & *(v348 + 56);
        v356 = *(v350 + 200);
        v357 = (v353 + 63) >> 6;
        v358 = v352;
        v359 = 0;
        while (1)
        {
          if (v355)
          {
            v360 = v359;
          }

          else
          {
            do
            {
              v360 = v359 + 1;
              if (__OFADD__(v359, 1))
              {
                __break(1u);
                goto LABEL_244;
              }

              if (v360 >= v357)
              {

                v181 = 0x80000001D73C8630;
                v182 = 0xD00000000000001ELL;
                goto LABEL_152;
              }

              v355 = *(v348 + 56 + 8 * v360);
              ++v359;
            }

            while (!v355);
            v359 = v360;
          }

          v361 = __clz(__rbit64(v355));
          v355 &= v355 - 1;
          LOBYTE(v535[0]) = *(*(v348 + 48) + (v361 | (v360 << 6)));
          if (sub_1D6EC6680(v349 + v356, v535))
          {

            goto LABEL_179;
          }
        }
      }

      if (qword_1EDF1BB50 != -1)
      {
        goto LABEL_245;
      }

      goto LABEL_182;
    case 23:
      v371 = *v113;
      v372 = v531;
      v373 = *v531;
      v374 = v531 + *(*v531 + 176);
      v375 = *&v374[*(type metadata accessor for FeedContext(0) + 56)];
      if (!v375)
      {

        if (qword_1EDF1BB50 != -1)
        {
          swift_once();
        }

        v439 = qword_1EDFFC828;
        v440 = sub_1D7262EBC();
        sub_1D725C30C("Asked to evaluate a notTimesOfDay FeedGroupEmitterRule, but the context has no timesOfDayConfiguration. This is unexpected.", 123, 2, &dword_1D5B42000, v439, v440, MEMORY[0x1E69E7CC0]);
        goto LABEL_186;
      }

      v376 = 1 << *(v371 + 32);
      v377 = -1;
      if (v376 < 64)
      {
        v377 = ~(-1 << v376);
      }

      v378 = v377 & *(v371 + 56);
      v379 = *(v373 + 200);
      v380 = (v376 + 63) >> 6;
      v381 = v375;
      v382 = 0;
LABEL_134:
      if (v378)
      {
        v383 = v382;
        goto LABEL_140;
      }

      while (1)
      {
        v383 = v382 + 1;
        if (__OFADD__(v382, 1))
        {
          break;
        }

        if (v383 >= v380)
        {

          goto LABEL_179;
        }

        v378 = *(v371 + 56 + 8 * v383);
        ++v382;
        if (v378)
        {
          v382 = v383;
LABEL_140:
          v384 = __clz(__rbit64(v378));
          v378 &= v378 - 1;
          LOBYTE(v535[0]) = *(*(v371 + 48) + (v384 | (v383 << 6)));
          if (sub_1D6EC6680(v372 + v379, v535))
          {

            v181 = 0x80000001D73C8590;
            v182 = 0xD00000000000001CLL;
            goto LABEL_152;
          }

          goto LABEL_134;
        }
      }

LABEL_244:
      __break(1u);
LABEL_245:
      swift_once();
LABEL_182:
      v437 = qword_1EDFFC828;
      v438 = sub_1D7262EBC();
      sub_1D725C30C("Asked to evaluate a timesOfDay FeedGroupEmitterRule, but the context has no timesOfDayConfiguration. This is unexpected.", 120, 2, &dword_1D5B42000, v437, v438, MEMORY[0x1E69E7CC0]);
LABEL_186:
      v441 = v532;
      *v532 = 0;
      v441[1] = 0;
      *(v441 + 16) = 2;
      return;
    case 24:
      v217 = *v113;
      if (!*(*v113 + 16))
      {
        goto LABEL_178;
      }

      FeedGroupEmitterCursor.feedMode.getter(v535);
      if (sub_1D61847B0(v535[0], v217))
      {
        goto LABEL_178;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v215 = 0x80000001D73C84F0;
      v216 = 0xD000000000000014;
      goto LABEL_44;
    case 25:
      v214 = *v113;
      FeedGroupEmitterCursor.feedMode.getter(v535);
      if ((sub_1D61847B0(v535[0], v214) & 1) == 0)
      {
        goto LABEL_178;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v215 = 0x80000001D73C84D0;
      v216 = 0xD000000000000018;
LABEL_44:
      v535[0] = v216;
      v535[1] = v215;
      sub_1D60A5854();
      goto LABEL_110;
    case 26:
      v127 = v509;
      sub_1D5C7F144(v113, v509);
      v128 = v505;
      sub_1D60A5744(v127, v505, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v130 = v520;
      v129 = v521;
      v399 = *(v520 + 48);
      if (v399(v128, 1, v521) == 1)
      {
        goto LABEL_150;
      }

      v400 = *(v130 + 32);
      v133 = v495;
      v400(v495, v128, v129);
      v128 = v493;
      (*(v528 + 56))(v527);
      if (v399(v128, 1, v129) == 1)
      {
        goto LABEL_149;
      }

      v443 = v128;
      v135 = v487;
      v400(v487, v443, v129);
      if ((sub_1D725BCAC() & 1) == 0)
      {
        goto LABEL_193;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();

      strcpy(v535, "App version ");
      BYTE5(v535[1]) = 0;
      HIWORD(v535[1]) = -5120;
      sub_1D60A580C(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
      v444 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v444);

      v137 = "quired max version ";
      v138 = 0xD000000000000020;
      goto LABEL_192;
    case 27:
      v127 = v510;
      sub_1D5C7F144(v113, v510);
      v128 = v506;
      sub_1D60A5744(v127, v506, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v130 = v520;
      v129 = v521;
      v131 = *(v520 + 48);
      if (v131(v128, 1, v521) == 1)
      {
        goto LABEL_150;
      }

      v132 = *(v130 + 32);
      v133 = v496;
      v132(v496, v128, v129);
      v128 = v494;
      (*(v528 + 56))(v527);
      if (v131(v128, 1, v129) == 1)
      {
LABEL_149:
        (*(v130 + 8))(v133, v129);
LABEL_150:
        v401 = MEMORY[0x1E69D6B38];
        sub_1D60A57B0(v127, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        sub_1D60A57B0(v128, &qword_1EDF45AC0, v401);
        goto LABEL_179;
      }

      v134 = v128;
      v135 = v488;
      v132(v488, v134, v129);
      sub_1D60A580C(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
      if (sub_1D7261F5C())
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0x7372657620707041, 0xEC000000206E6F69);
        sub_1D60A580C(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
        v136 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v136);

        v137 = "ned in prior groups";
        v138 = 0xD000000000000023;
LABEL_192:
        MEMORY[0x1DA6F9910](v138, v137 | 0x8000000000000000);
        v445 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v445);

        v446 = 0;
        v447 = v535[0];
        v448 = v535[1];
      }

      else
      {
LABEL_193:
        v447 = 0;
        v448 = 0;
        v446 = 2;
      }

      v449 = v532;
      v450 = *(v130 + 8);
      v450(v135, v129);
      v450(v133, v129);
      sub_1D60A57B0(v127, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      *v449 = v447;
      v449[1] = v448;
      *(v449 + 16) = v446;
      return;
    case 28:
      v385 = v113[1];
      v386 = v531;
      v535[0] = *(v531 + *(*v531 + 136));
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v116);
      v387 = v527;
      v388 = v528;
      *(&v483 - 4) = v527;
      *(&v483 - 3) = v388;
      v533 = v389;
      *(&v483 - 2) = v389;
      *(&v483 - 1) = v385;
      sub_1D72627FC();

      swift_getWitnessTable();
      v390 = sub_1D72624DC();

      if (v390)
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73C83F0);
        MEMORY[0x1DA6F9910](v533, v385);

        v393 = "ned in next groups";
        v394 = 0xD000000000000023;
        goto LABEL_176;
      }

      v535[0] = *(v386 + *(*v386 + 152));
      MEMORY[0x1EEE9AC00](v391, v392);
      *(&v483 - 4) = v387;
      *(&v483 - 3) = v432;
      v433 = v533;
      *(&v483 - 2) = v533;
      *(&v483 - 1) = v385;

      v434 = sub_1D72624DC();

      if (v434)
      {
        v535[0] = 0;
        v535[1] = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73C83F0);
        MEMORY[0x1DA6F9910](v433, v385);

        v393 = "Requires unique group for ";
        v394 = 0xD000000000000022;
LABEL_176:
        MEMORY[0x1DA6F9910](v394, v393 | 0x8000000000000000);
LABEL_177:
        v435 = v535[1];
        v436 = v532;
        *v532 = v535[0];
        v436[1] = v435;
        *(v436 + 16) = 0;
        return;
      }

LABEL_178:

LABEL_179:
      v362 = v532;
      *v532 = 0;
      v362[1] = 0;
LABEL_180:
      *(v362 + 16) = 2;
      return;
    case 29:
      v395 = *v113;
      v396 = v531 + *(*v531 + 176);
      v397 = type metadata accessor for FeedContext(0);
      sub_1D609D1E4(*&v396[*(v397 + 44)], v395, v532);
      goto LABEL_145;
    case 30:
      v338 = *v113;
      v339 = v531 + *(*v531 + 176);
      v340 = type metadata accessor for FeedContext(0);
      sub_1D609D4B4(*&v339[*(v340 + 44)], v338, v532);
LABEL_145:

      return;
    case 31:
      v269 = *v113;
      if (!*(*v113 + 16))
      {
        goto LABEL_178;
      }

      v270 = v531;
      v271 = *(*v531 + 176);
      v272 = (v270 + *(type metadata accessor for FeedContext(0) + 48) + v271);
      if (sub_1D6183980(*v272, v272[1], v269))
      {
        goto LABEL_178;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v273 = 0x80000001D73C83D0;
      v274 = 0xD00000000000001CLL;
      goto LABEL_109;
    case 32:
      v341 = *v113;
      if (!*(*v113 + 16))
      {
        goto LABEL_178;
      }

      v342 = v531;
      v343 = *(*v531 + 176);
      v344 = (v342 + *(type metadata accessor for FeedContext(0) + 48) + v343);
      if ((sub_1D6183980(*v344, v344[1], v341) & 1) == 0)
      {
        goto LABEL_178;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v273 = 0x80000001D73C83B0;
      v274 = 0xD00000000000001BLL;
LABEL_109:
      v535[0] = v274;
      v535[1] = v273;
      sub_1D5B5C29C();
LABEL_110:
      v345 = sub_1D7262B1C();
      v347 = v346;

      MEMORY[0x1DA6F9910](v345, v347);

      goto LABEL_177;
    case 33:
      v176 = *v113;
      v177 = v531;
      v178 = *(*v531 + 176);
      v179 = v177 + *(type metadata accessor for FeedContext(0) + 20) + v178;
      v143 = v507;
      sub_1D60A5744(v179, v507, &qword_1EDF33290, type metadata accessor for BundleSession);
      v180 = type metadata accessor for BundleSession(0);
      if ((*(*(v180 - 8) + 48))(v143, 1, v180) == 1)
      {
        goto LABEL_28;
      }

      v403 = *(v143 + *(v180 + 24));
      sub_1D60A566C(v143, type metadata accessor for BundleSession);
      v146 = v532;
      if (!*(v176 + 16) || (sub_1D61848F8(v403, v176) & 1) != 0)
      {
        goto LABEL_156;
      }

      v535[0] = 0;
      v535[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v147 = 0x80000001D73C8380;
      v148 = 0xD00000000000002ELL;
      goto LABEL_214;
    case 34:
      v139 = *v113;
      v140 = v531;
      v141 = *(*v531 + 176);
      v142 = v140 + *(type metadata accessor for FeedContext(0) + 20) + v141;
      v143 = v508;
      sub_1D60A5744(v142, v508, &qword_1EDF33290, type metadata accessor for BundleSession);
      v144 = type metadata accessor for BundleSession(0);
      if ((*(*(v144 - 8) + 48))(v143, 1, v144) == 1)
      {
LABEL_28:

        sub_1D60A57B0(v143, &qword_1EDF33290, type metadata accessor for BundleSession);
        v181 = 0x80000001D73C8330;
        v182 = 0xD000000000000017;
LABEL_152:
        v402 = v532;
        *v532 = v182;
        v402[1] = v181;
        *(v402 + 16) = 0;
      }

      else
      {
        v145 = *(v143 + *(v144 + 24));
        sub_1D60A566C(v143, type metadata accessor for BundleSession);
        v146 = v532;
        if (*(v139 + 16) && (sub_1D61848F8(v145, v139) & 1) != 0)
        {
          v535[0] = 0;
          v535[1] = 0xE000000000000000;
          sub_1D7263D4C();

          v147 = 0x80000001D73C8350;
          v148 = 0xD00000000000002DLL;
LABEL_214:
          v535[0] = v148;
          v535[1] = v147;
          sub_1D60A56CC();
          v467 = sub_1D7262B1C();
          v469 = v468;

          MEMORY[0x1DA6F9910](v467, v469);

          v470 = v535[1];
          *v146 = v535[0];
          v146[1] = v470;
          *(v146 + 16) = 0;
        }

        else
        {
LABEL_156:

          *v146 = 0;
          v146[1] = 0;
          *(v146 + 16) = 2;
        }
      }

      return;
    case 35:
      v123 = *(*v113 + 32);

      v123(v531, v523);

      return;
    case 36:
      v124 = v531 + *(*v531 + 176);
      v125 = type metadata accessor for FeedContext(0);
      v117 = 0x80000001D73C86B0;
      v118 = v124[*(v125 + 24)] == 0;
      v119 = 0xD00000000000001CLL;
      if (v124[*(v125 + 24)])
      {
        v119 = 0;
      }

      goto LABEL_9;
    case 37:
      v120 = v531 + *(*v531 + 176);
      v121 = v120[*(type metadata accessor for FeedContext(0) + 24)];
      v117 = 0x80000001D73C8690;
      v122 = 0xD00000000000001FLL;
LABEL_60:
      v268 = v121 == 0;
      if (v121)
      {
        v119 = v122;
      }

      else
      {
        v119 = 0;
      }

      if (v268)
      {
        v117 = 0;
      }

      if (v268)
      {
        v126 = 2;
      }

      else
      {
        v126 = 0;
      }

      goto LABEL_206;
    case 38:
      v398 = v532;
      *v532 = xmmword_1D7297470;
      *(v398 + 16) = 1;
      return;
    case 39:
      v362 = v532;
      *v532 = (*(v531 + *(*v531 + 208)) & 1) == 0;
      v362[1] = 0;
      goto LABEL_180;
    default:
      v117 = 0x80000001D73C89B0;
      v118 = *v113 == 0;
      if (*v113)
      {
        v119 = 0;
      }

      else
      {
        v119 = 0xD000000000000018;
      }

LABEL_9:
      if (v118)
      {
        v126 = 0;
      }

      else
      {
        v117 = 0;
        v126 = 2;
      }

      goto LABEL_206;
  }
}

uint64_t sub_1D60A1BD8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  sub_1D5B5D444(0, &qword_1EDF02328, &type metadata for FeedCursorKind, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v8;
  v10 = sub_1D5E28588(inited);
  swift_setDeallocating();
  *a5 = v10;
  type metadata accessor for FeedGroupEmitterRule(0, a2, a3, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D60A1C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = v15 - v10;
  type metadata accessor for FeedCursorGroup(0, a3, a4, v12);
  v13 = *(AssociatedConformanceWitness + 64);
  swift_checkMetadataState();
  v13();
  swift_getAssociatedConformanceWitness();
  LOBYTE(AssociatedConformanceWitness) = sub_1D7261FBC();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return AssociatedConformanceWitness & 1;
}

uint64_t sub_1D60A1EA4@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1D725AA4C();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1D60A1FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a1;
  v22 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v19 - v11;
  v14 = type metadata accessor for FeedCursorGroup(0, a4, a5, v13);
  v15 = *(AssociatedConformanceWitness + 64);
  swift_checkMetadataState();
  v16 = v21;
  v15();
  swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_1D7261FBC();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  if (a5)
  {
    v17 = sub_1D5BE240C(*(v16 + *(v14 + 40)), *(v16 + *(v14 + 40) + 8), v20);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1D60A220C(void (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t, uint64_t), void *a3)
{
  v88 = a2;
  v91 = a1;
  v4 = *a3;
  v5 = sub_1D725891C();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BA8044(0);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v84 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D8D0(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v72 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v87 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v90 = &v67 - v19;
  v20 = *(v4 + 88);
  v83 = a3;
  v21 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v81 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v78 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v75 = &v67 - v27;
  v28 = swift_checkMetadataState();
  v76 = *(v28 - 8);
  v77 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v74 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v73 = &v67 - v33;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v34 = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedTypeWitness();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v67 - v38;
  v89 = v21;
  type metadata accessor for FeedCursorGroup(0, v21, v20, v40);
  v41 = *(v34 + 64);
  swift_checkMetadataState();
  v41();
  swift_getAssociatedConformanceWitness();
  LOBYTE(v34) = sub_1D7261FBC();
  (*(v36 + 8))(v39, v35);
  if ((v34 & 1) == 0)
  {
    v59 = 0;
    return v59 & 1;
  }

  v42 = *(v20 + 64);
  v70 = v20 + 64;
  v88 = v42;
  v43 = v73;
  v42(v89, v20);
  v44 = AssociatedConformanceWitness;
  v91 = *(AssociatedConformanceWitness + 40);
  v45 = v75;
  v46 = v77;
  v91(v77, AssociatedConformanceWitness);
  v69 = v20;
  v76 = *(v76 + 8);
  (v76)(v43, v46);
  v47 = v81;
  v73 = swift_getAssociatedConformanceWitness();
  v68 = *(v73 + 5);
  v68(v47, v73);
  v80 = *(v80 + 8);
  (v80)(v45, v47);
  v48 = v74;
  v88(v89, v69);
  v49 = v78;
  v91(v46, v44);
  (v76)(v48, v46);
  v50 = v87;
  v68(v47, v73);
  (v80)(v49, v47);
  v51 = *(v82 + 48);
  v52 = MEMORY[0x1E6969530];
  v53 = v90;
  v54 = v84;
  sub_1D60A5744(v90, v84, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D60A5744(v50, v54 + v51, &qword_1EDF45B00, v52);
  v56 = v85;
  v55 = v86;
  v57 = *(v85 + 48);
  if (v57(v54, 1, v86) != 1)
  {
    v60 = v72;
    sub_1D60A5744(v54, v72, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    if (v57(v54 + v51, 1, v55) != 1)
    {
      v62 = v54 + v51;
      v63 = v71;
      (*(v56 + 32))(v71, v62, v55);
      sub_1D60A580C(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v59 = sub_1D7261FBC();
      v64 = *(v56 + 8);
      v64(v63, v55);
      v65 = MEMORY[0x1E6969530];
      sub_1D60A57B0(v87, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      sub_1D60A57B0(v53, &qword_1EDF45B00, v65);
      v64(v60, v55);
      sub_1D60A57B0(v54, &qword_1EDF45B00, v65);
      return v59 & 1;
    }

    v61 = MEMORY[0x1E6969530];
    sub_1D60A57B0(v87, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    sub_1D60A57B0(v53, &qword_1EDF45B00, v61);
    (*(v56 + 8))(v60, v55);
    goto LABEL_8;
  }

  v58 = MEMORY[0x1E6969530];
  sub_1D60A57B0(v50, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D60A57B0(v53, &qword_1EDF45B00, v58);
  if (v57(v54 + v51, 1, v55) != 1)
  {
LABEL_8:
    sub_1D60A566C(v54, sub_1D5BA8044);
    v59 = 0;
    return v59 & 1;
  }

  sub_1D60A57B0(v54, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v59 = 1;
  return v59 & 1;
}

uint64_t sub_1D60A2BD8@<X0>(char *a2@<X8>)
{
  v35 = a2;
  sub_1D60A793C(0);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - v10;
  v12 = sub_1D7258C2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D725891C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v34 - v24;
  sub_1D7258BCC();
  sub_1D7258ADC();
  (*(v13 + 8))(v16, v12);
  sub_1D725880C();
  v26 = *(v18 + 8);
  v26(v21, v17);
  sub_1D725880C();
  sub_1D60A580C(&qword_1EDF3C3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1D7261F7C();
  if (result)
  {
    v28 = *(v18 + 32);
    v28(v11, v25, v17);
    v29 = v34;
    v28(&v11[*(v34 + 48)], v21, v17);
    sub_1D60A79A4(v11, v7);
    v30 = *(v29 + 48);
    v31 = v35;
    v28(v35, v7, v17);
    v26(&v7[v30], v17);
    sub_1D60A7A08(v11, v7);
    v32 = *(v29 + 48);
    sub_1D60A55D8(0);
    v28(&v31[*(v33 + 36)], &v7[v32], v17);
    return (v26)(v7, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D60A2F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a3;
  v17[2] = a1;
  v17[3] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = v17 - v11;
  type metadata accessor for FeedCursorGroup(0, a4, a5, v13);
  v14 = *(AssociatedConformanceWitness + 64);
  swift_checkMetadataState();
  v14();
  swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_1D7261FBC();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  if (a5 & 1) != 0 && (sub_1D725891C(), sub_1D60A580C(&qword_1EDF3C3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]), (sub_1D7261F6C()))
  {
    sub_1D60A55D8(0);
    v15 = sub_1D7261F7C();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D60A31D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = v15 - v9;
  type metadata accessor for FeedCursorGroup(0, a3, a4, v11);
  v12 = *(AssociatedConformanceWitness + 64);
  swift_checkMetadataState();
  v12();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1D7262B9C();
  (*(v15[0] + 8))(v10, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t sub_1D60A33E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = v15 - v9;
  type metadata accessor for FeedCursorGroup(0, a3, a4, v11);
  v12 = *(AssociatedConformanceWitness + 64);
  swift_checkMetadataState();
  v12();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1D7261FBC();
  (*(v15[0] + 8))(v10, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t sub_1D60A35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedCursorGroup(0, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 64);
  v6 = swift_checkMetadataState();
  return v5(v6, AssociatedConformanceWitness);
}

uint64_t sub_1D60A3708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for FeedCursorGroup(0, a4, a5, a4);
  if (FeedCursorGroup.identifier.getter(v7) == a2 && v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  return v10 & 1;
}

void FeedGroupEmitterRule.evaluateDayOfWeek(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v33 = a3;
  v6 = sub_1D7258C0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7258C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = (&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v21, v4, a2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 21)
  {
    v28 = *v21;
    sub_1D7258BCC();
    (*(v7 + 104))(v10, *MEMORY[0x1E6969AB0], v6);
    v29 = sub_1D7258C1C();
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
    LOBYTE(v29) = sub_1D6184708(v29, v28);

    v25 = 0x80000001D73C8650;
    v26 = 0xD00000000000001BLL;
    if (v29)
    {
      v27 = 0;
    }

    else
    {
      v26 = 0;
      v25 = 0;
      v27 = 2;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 20)
  {
    v23 = *v21;
    sub_1D7258BCC();
    (*(v7 + 104))(v10, *MEMORY[0x1E6969AB0], v6);
    v24 = sub_1D7258C1C();
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
    LOBYTE(v24) = sub_1D6184708(v24, v23);

    v25 = 0x80000001D73C8670;
    v26 = 0xD000000000000017;
    if (v24)
    {
      v26 = 0;
      v25 = 0;
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

LABEL_9:
    v30 = v33;
    *v33 = v26;
    v30[1] = v25;
    *(v30 + 16) = v27;
    return;
  }

  v31 = v33;
  *v33 = 0;
  v31[1] = 0;
  *(v31 + 16) = 2;
  (*(v16 + 8))(v21, a2);
}

uint64_t FeedGroupEmitterRule.description.getter(uint64_t a1)
{
  v2 = v1;
  sub_1D5B5D8D0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v118 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v118 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v118 - v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v118[1] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v21);
  v118[0] = v118 - v22;
  v23 = *(a1 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v28, v2, a1, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x5320737961776C41;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 37:
      v81 = 5;
      return v81 | 0xD000000000000010;
    case 2:
      v40 = AssociatedTypeWitness;
      v55 = *&v28[*(swift_getTupleTypeMetadata2() + 48)];
      v42 = v118[0];
      (*(v20 + 32))(v118[0], v28, v40);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v120[0] = v55;
      v56 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v56);

      v57 = " Max Occurrence of ";
      goto LABEL_32;
    case 3:
      v40 = AssociatedTypeWitness;
      v49 = *&v28[*(swift_getTupleTypeMetadata2() + 48)];
      v42 = v118[0];
      (*(v20 + 32))(v118[0], v28, v40);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v120[0] = v49;
      v50 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v50);

      MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C8D50);
      sub_1D726465C();
      v51 = 0x6E6F432072657020;
      v52 = 0xEB00000000676966;
      goto LABEL_29;
    case 4:
      v40 = AssociatedTypeWitness;
      v64 = *&v28[*(swift_getTupleTypeMetadata2() + 48)];
      v42 = v118[0];
      (*(v20 + 32))(v118[0], v28, v40);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v120[0] = v64;
      v65 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v65);

      MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C8D50);
      sub_1D726465C();
      v51 = 0xD000000000000011;
      v52 = 0x80000001D73C8D70;
LABEL_29:
      MEMORY[0x1DA6F9910](v51, v52);
      goto LABEL_34;
    case 5:
      sub_1D60A5910();
      v69 = AssociatedTypeWitness;
      v70 = *&v28[*(swift_getTupleTypeMetadata2() + 48)];
      v71 = v20;
      v72 = *(v20 + 32);
      v73 = v118[0];
      v72(v118[0], v28, v69);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v120[0] = v70;
      v74 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v74);

      MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C8D30);
      sub_1D726465C();
      MEMORY[0x1DA6F9910](0x6964452072657020, 0xED0000206E6F6974);
      v75 = sub_1D60A537C();
      MEMORY[0x1DA6F9910](v75);

      v68 = v121[0];
      (*(v71 + 8))(v73, v69);
      return v68;
    case 6:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      v54 = 0x646563657250;
      goto LABEL_21;
    case 7:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v39 = "Preferred Preceded by ";
      goto LABEL_40;
    case 8:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v53 = "Not Preceded by ";
      goto LABEL_26;
    case 9:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v76 = "Preferred Not Preceded By ";
      goto LABEL_38;
    case 10:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v47 = "No Prior Occurrence of ";
      v48 = 0xD000000000000014;
      goto LABEL_41;
    case 11:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v47 = " Group Distance of ";
      v48 = 0xD000000000000017;
      goto LABEL_41;
    case 12:
      v40 = AssociatedTypeWitness;
      v66 = *&v28[*(swift_getTupleTypeMetadata2() + 48)];
      v42 = v118[0];
      (*(v20 + 32))(v118[0], v28, v40);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v120[0] = v66;
      v67 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v67);

      v57 = " Group Distance of ";
LABEL_32:
      v44 = v57 - 32;
      v45 = 0xD000000000000013;
      goto LABEL_33;
    case 13:
      v40 = AssociatedTypeWitness;
      v41 = *&v28[*(swift_getTupleTypeMetadata2() + 48)];
      v42 = v118[0];
      (*(v20 + 32))(v118[0], v28, v40);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v120[0] = v41;
      v43 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v43);

      v44 = "Preferred Followed by ";
      v45 = 0xD00000000000001DLL;
LABEL_33:
      MEMORY[0x1DA6F9910](v45, v44 | 0x8000000000000000);
      sub_1D726465C();
LABEL_34:
      v68 = v121[0];
      (*(v20 + 8))(v42, v40);
      return v68;
    case 14:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      v54 = 0x776F6C6C6F46;
LABEL_21:
      v48 = v54 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      v58 = 0xEC00000020796220;
      goto LABEL_42;
    case 15:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v39 = "Preferred Followed by ";
LABEL_40:
      v47 = v39 - 32;
      v48 = 0xD000000000000016;
      goto LABEL_41;
    case 16:
      goto LABEL_25;
    case 17:
      v38 = *v28;
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();
      v76 = "Preferred Not Followed by ";
LABEL_38:
      v47 = v76 - 32;
      v48 = 0xD00000000000001ALL;
LABEL_41:
      v58 = v47 | 0x8000000000000000;
      goto LABEL_42;
    case 18:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v62 = 0x80000001D73C8B90;
      v63 = 0xD000000000000010;
      goto LABEL_52;
    case 19:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v62 = 0x80000001D73C8B70;
      v63 = 0xD000000000000014;
LABEL_52:
      v121[0] = v63;
      v121[1] = v62;
      sub_1D5E2A63C();
      goto LABEL_61;
    case 20:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      strcpy(v121, "Days Of Week, ");
      HIBYTE(v121[1]) = -18;
      goto LABEL_61;
    case 21:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v121[0] = 0xD000000000000012;
      v121[1] = 0x80000001D73C8B50;
      goto LABEL_61;
    case 22:
      strcpy(v121, "Time of day, ");
      HIWORD(v121[1]) = -4864;
      sub_1D60A6E1C();
      goto LABEL_61;
    case 23:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v121[0] = 0xD000000000000011;
      v121[1] = 0x80000001D73C8B30;
      sub_1D60A6E1C();
      goto LABEL_61;
    case 24:
      strcpy(v121, "Feed Modes, ");
      BYTE5(v121[1]) = 0;
      HIWORD(v121[1]) = -5120;
      sub_1D60A5854();
      goto LABEL_61;
    case 25:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v121[0] = 0xD000000000000010;
      v121[1] = 0x80000001D73C8B10;
      sub_1D60A5854();
      goto LABEL_61;
    case 26:
      sub_1D5C7F144(v28, v19);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v121[0] = 0xD000000000000010;
      v121[1] = 0x80000001D73C8AD0;
      sub_1D60A5744(v19, v15, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v34 = sub_1D725BD1C();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v15, 1, v34) == 1)
      {
        v36 = 1701736270;
        sub_1D60A57B0(v15, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        v37 = 0xE400000000000000;
      }

      else
      {
        v36 = sub_1D725BC9C();
        v37 = v89;
        (*(v35 + 8))(v15, v34);
      }

      MEMORY[0x1DA6F9910](v36, v37);

      v68 = v121[0];
      v90 = MEMORY[0x1E69D6B38];
      v91 = v19;
      goto LABEL_68;
    case 27:
      sub_1D5C7F144(v28, v11);
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v121[0] = 0xD000000000000010;
      v121[1] = 0x80000001D73C8AB0;
      sub_1D60A5744(v11, v7, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v82 = sub_1D725BD1C();
      v83 = *(v82 - 8);
      if ((*(v83 + 48))(v7, 1, v82) == 1)
      {
        v84 = 1701736270;
        sub_1D60A57B0(v7, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        v85 = 0xE400000000000000;
      }

      else
      {
        v84 = sub_1D725BC9C();
        v85 = v92;
        (*(v83 + 8))(v7, v82);
      }

      MEMORY[0x1DA6F9910](v84, v85);

      v68 = v121[0];
      v90 = MEMORY[0x1E69D6B38];
      v91 = v11;
LABEL_68:
      sub_1D60A57B0(v91, &qword_1EDF45AC0, v90);
      return v68;
    case 28:
      (*(v23 + 8))(v28, a1);
      return 0xD000000000000012;
    case 29:
      v77 = *v28;
      v78 = *(*v28 + 16);
      if (!v78)
      {

        v79 = MEMORY[0x1E69E7CC0];
        goto LABEL_79;
      }

      v79 = sub_1D5E23BF0(v78, 0);
      v80 = sub_1D5E24A6C(v121, v79 + 8, v78, v77);
      sub_1D5B87E38(v121[0]);
      if (v80 == v78)
      {
LABEL_79:
        v121[0] = v79;

        sub_1D60A59C0(v121);

        v104 = v121[0];
        v105 = *(v121[0] + 2);
        if (v105)
        {
          v121[0] = MEMORY[0x1E69E7CC0];
          sub_1D5BFC364(0, v105, 0);
          v106 = 32;
          v107 = v121[0];
          do
          {
            LODWORD(v120[0]) = *&v104[v106];
            v108 = sub_1D72644BC();
            v121[0] = v107;
            v111 = *(v107 + 2);
            v110 = *(v107 + 3);
            if (v111 >= v110 >> 1)
            {
              v113 = v108;
              v114 = v109;
              sub_1D5BFC364((v110 > 1), v111 + 1, 1);
              v109 = v114;
              v108 = v113;
              v107 = v121[0];
            }

            *(v107 + 2) = v111 + 1;
            v112 = &v107[16 * v111];
            *(v112 + 4) = v108;
            *(v112 + 5) = v109;
            v106 += 4;
            --v105;
          }

          while (v105);
        }

        else
        {

          v107 = MEMORY[0x1E69E7CC0];
        }

        v121[0] = v107;
        sub_1D5B5D444(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v86 = sub_1D7261F3C();
        v88 = v117;

        v121[0] = 0;
        v121[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v116 = "Allowed Segment Set IDs ";
        goto LABEL_89;
      }

      __break(1u);
LABEL_46:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v46 = "Allowed Platforms ";
LABEL_47:
      v121[0] = 0xD000000000000012;
      v121[1] = ((v46 - 32) | 0x8000000000000000);
      sub_1D5B5C29C();
LABEL_61:
      v86 = sub_1D7262B1C();
      v88 = v87;

LABEL_62:
      MEMORY[0x1DA6F9910](v86, v88);
LABEL_63:

      return v121[0];
    case 30:
      v59 = *v28;
      v28 = *(*v28 + 16);
      if (v28)
      {
        v60 = sub_1D5E23BF0(v28, 0);
        v61 = sub_1D5E24A6C(v121, v60 + 8, v28, v59);
        sub_1D5B87E38(v121[0]);
        if (v61 != v28)
        {
          __break(1u);
LABEL_25:
          v38 = *v28;
          v121[0] = 0;
          v121[1] = 0xE000000000000000;
          sub_1D7263D4C();
          v53 = "Not Followed by ";
LABEL_26:
          v58 = (v53 - 32) | 0x8000000000000000;
          v48 = 0xD000000000000010;
LABEL_42:
          MEMORY[0x1DA6F9910](v48, v58);
          v120[0] = v38;
          swift_getAssociatedConformanceWitness();
          sub_1D7262BAC();
          swift_getWitnessTable();
          sub_1D726466C();
          goto LABEL_63;
        }
      }

      else
      {

        v60 = MEMORY[0x1E69E7CC0];
      }

      v121[0] = v60;

      sub_1D60A59C0(v121);

      v93 = v121[0];
      v94 = *(v121[0] + 2);
      if (v94)
      {
        v121[0] = MEMORY[0x1E69E7CC0];
        sub_1D5BFC364(0, v94, 0);
        v95 = 32;
        v96 = v121[0];
        do
        {
          LODWORD(v120[0]) = *&v93[v95];
          v97 = sub_1D72644BC();
          v121[0] = v96;
          v100 = *(v96 + 2);
          v99 = *(v96 + 3);
          if (v100 >= v99 >> 1)
          {
            v102 = v97;
            v103 = v98;
            sub_1D5BFC364((v99 > 1), v100 + 1, 1);
            v98 = v103;
            v97 = v102;
            v96 = v121[0];
          }

          *(v96 + 2) = v100 + 1;
          v101 = &v96[16 * v100];
          *(v101 + 4) = v97;
          *(v101 + 5) = v98;
          v95 += 4;
          --v94;
        }

        while (v94);
      }

      else
      {

        v96 = MEMORY[0x1E69E7CC0];
      }

      v121[0] = v96;
      sub_1D5B5D444(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();
      v86 = sub_1D7261F3C();
      v88 = v115;

      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v116 = "Blocked Segment Set IDs ";
LABEL_89:
      v121[0] = 0xD000000000000018;
      v121[1] = ((v116 - 32) | 0x8000000000000000);
      goto LABEL_62;
    case 31:
      goto LABEL_46;
    case 32:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v46 = "Blocked Platforms ";
      goto LABEL_47;
    case 33:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v31 = 0x80000001D73C89F0;
      v32 = 0xD000000000000016;
      goto LABEL_8;
    case 34:
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v31 = 0x80000001D73C89D0;
      v32 = 0xD00000000000001ALL;
LABEL_8:
      v121[0] = v32;
      v121[1] = v31;
      sub_1D60A56CC();
      goto LABEL_61;
    case 35:
      v33 = *(*v28 + 16);

      return v33;
    case 38:
      return result;
    case 39:
      v81 = 13;
      return v81 | 0xD000000000000010;
    default:
      return 0xD000000000000011;
  }
}

void Array<A>.evaluate(cursor:slots:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a1;
  v13[5] = a2;
  v7 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1D5B874E4(sub_1D60A6E70, v13, v7, &type metadata for FeedGroupEmitterRuleResult, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  sub_1D60A5AF4(&v14);

  if (*(v14 + 2))
  {
    v10 = *(v14 + 4);
    v11 = *(v14 + 5);
    v12 = v14[48];
    sub_1D5EAD0DC(v10, v11, v12);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 2;
  }

  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12;
}

uint64_t FeedGroupEmitterCustomRule.description.getter()
{
  v0 = sub_1D5C036AC();

  return v0;
}

void *FeedGroupEmitterCustomRule.__allocating_init(description:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *FeedGroupEmitterCustomRule.init(description:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t FeedGroupEmitterCustomRule.deinit()
{

  return v0;
}

uint64_t FeedGroupEmitterCustomRule.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D60A537C()
{
  v0 = sub_1D725891C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60A55D8(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725890C();
  sub_1D60A2BD8(v8);
  (*(v1 + 8))(v4, v0);
  if (qword_1EC87D8E8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC890738;
  v10 = sub_1D725881C();
  v11 = [v9 stringFromDate_];

  v12 = sub_1D726207C();
  v14 = v13;

  v22[0] = v12;
  v22[1] = v14;
  MEMORY[0x1DA6F9910](544175136, 0xE400000000000000);
  v15 = sub_1D725881C();
  v16 = [v9 stringFromDate_];

  v17 = sub_1D726207C();
  v19 = v18;

  MEMORY[0x1DA6F9910](v17, v19);

  v20 = v22[0];
  sub_1D60A566C(v8, sub_1D60A55D8);
  return v20;
}

void sub_1D60A55D8(uint64_t a1)
{
  if (!qword_1EDF1B778)
  {
    sub_1D725891C();
    sub_1D60A580C(&qword_1EDF3C3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1D7261FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B778);
    }
  }
}

uint64_t sub_1D60A566C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D60A56CC()
{
  result = qword_1EDF37110;
  if (!qword_1EDF37110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37110);
  }

  return result;
}

uint64_t sub_1D60A5744(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5D8D0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D60A57B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B5D8D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60A580C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D60A5854()
{
  result = qword_1EDF34E68;
  if (!qword_1EDF34E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E68);
  }

  return result;
}

void sub_1D60A5910()
{
  if (!qword_1EDF35BB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E6530];
    v4[1] = MEMORY[0x1E69E6560];
    v4[2] = MEMORY[0x1E69E6538];
    v4[3] = MEMORY[0x1E69E6550];
    v2 = type metadata accessor for FeedGroupEmitterRuleEdition(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF35BB0);
    }
  }
}

void sub_1D60A59C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9C8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1D726449C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D726276C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D60A5CC8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D60A5AF4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFC98(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  v4 = sub_1D726449C();
  if (v4 >= v3)
  {
    if (v3 < 2)
    {
      goto LABEL_30;
    }

    v8 = v2 + 40;
    v9 = -1;
    v10 = 1;
LABEL_9:
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v13 = v12[32];
      v14 = v12[32];
      if (v12[32])
      {
        if (v13 == 1)
        {
          v14 = 2;
        }

        else if (*(v12 + 1) == 0)
        {
          v14 = 3;
        }

        else
        {
          v14 = 1;
        }
      }

      v15 = v12[8];
      if (!v12[8])
      {
        goto LABEL_19;
      }

      if (v15 == 1)
      {
        break;
      }

      if (*(v12 - 8) == 0)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }

      if (v14 >= v16)
      {
LABEL_8:
        ++v10;
        v8 += 24;
        --v9;
        if (v10 == v3)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }

LABEL_25:
      v17 = *(v12 + 1);
      *(v12 + 1) = *(v12 - 8);
      *(v12 + 4) = *(v12 + 1);
      *(v12 - 8) = v17;
      v12[8] = v13;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_8;
      }
    }

    v15 = 2;
LABEL_19:
    if (v14 >= v15)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  v5 = v4;
  v6 = v3 >> 1;
  if (v3 >= 2)
  {
    v7 = sub_1D726276C();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v19[0] = v7 + 32;
  v19[1] = v6;
  sub_1D60A6214(v19, v20, v21, v5);
  *(v7 + 16) = 0;

LABEL_30:
  *a1 = v2;
}

uint64_t sub_1D60A5CA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1D7263BFC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1D60A5CC8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D62FF50C(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D60A68E0((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_1D698BA94((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_1D60A68E0((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}