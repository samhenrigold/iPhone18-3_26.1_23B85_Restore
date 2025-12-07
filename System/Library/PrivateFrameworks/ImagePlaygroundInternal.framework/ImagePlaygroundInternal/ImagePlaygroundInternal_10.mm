uint64_t sub_1D23AC2D8()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23B19D8;
  }

  else
  {
    v5 = sub_1D23AC414;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23AC414()
{
  if (*(v0 + 476) == 1)
  {
    *(v0 + 477) = 0;
    v1 = *(v0 + 208);
    v2 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v1);
    v34 = (*(v2 + 64) + **(v2 + 64));
    v3 = swift_task_alloc();
    *(v0 + 1632) = v3;
    *v3 = v0;
    v3[1] = sub_1D23AC860;

    return v34(v1, v2);
  }

  else
  {
    *(v0 + 478) = 0;
    v5 = *(v0 + 1576);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 952);
    v8 = *(v0 + 944);
    v25 = *(v0 + 960);
    v9 = *(v0 + 760);
    v27 = v6;
    v28 = v9;
    v30 = *(v0 + 1552);
    v31 = *(v0 + 752);
    v10 = *(v0 + 736);
    v11 = *(v0 + 728);
    v26 = v11;
    v12 = *(v0 + 688);
    v13 = *(v0 + 656);
    v35 = *(v0 + 208);
    v33 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v35);
    v5(v6, v12, v8);
    v29 = *(v10 + 16);
    v29(v9, v13, v11);
    v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v15 = (v25 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v10 + 80);
    v17 = swift_allocObject();
    *(v0 + 1648) = v17;
    (*(v7 + 32))(v17 + v14, v27, v8);
    *(v17 + v15) = v30;
    v18 = *(v10 + 32);
    v18(v17 + ((v16 + v15 + 8) & ~v16), v28, v26);
    v29(v31, v13, v26);
    v19 = swift_allocObject();
    *(v0 + 1656) = v19;
    v18(v19 + ((v16 + 16) & ~v16), v31, v26);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v20);
    v22 = (*(v21 + 24))(v20, v21);
    v32 = (*(v33 + 88) + **(v33 + 88));
    v23 = swift_task_alloc();
    *(v0 + 1664) = v23;
    *v23 = v0;
    v23[1] = sub_1D23ACCD4;
    v24 = *(v0 + 1568);

    return v32(sub_1D23B7C04, v17, sub_1D23B7CFC, v19, v22, v24, v35, v33);
  }
}

uint64_t sub_1D23AC860()
{
  v2 = *v1;
  *(*v1 + 1640) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23B1B04;
  }

  else
  {
    v5 = sub_1D23AC99C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23AC99C()
{
  *(v0 + 478) = *(v0 + 477);
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v22 = *(v0 + 960);
  v5 = *(v0 + 760);
  v24 = v2;
  v25 = v5;
  v27 = *(v0 + 1552);
  v28 = *(v0 + 752);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v23 = v7;
  v8 = *(v0 + 688);
  v9 = *(v0 + 656);
  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v31);
  v1(v2, v8, v4);
  v26 = *(v6 + 16);
  v26(v5, v9, v7);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v22 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  *(v0 + 1648) = v13;
  (*(v3 + 32))(v13 + v10, v24, v4);
  *(v13 + v11) = v27;
  v14 = *(v6 + 32);
  v14(v13 + ((v12 + v11 + 8) & ~v12), v25, v23);
  v26(v28, v9, v23);
  v15 = swift_allocObject();
  *(v0 + 1656) = v15;
  v14(v15 + ((v12 + 16) & ~v12), v28, v23);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v16);
  v18 = (*(v17 + 24))(v16, v17);
  v29 = (*(v30 + 88) + **(v30 + 88));
  v19 = swift_task_alloc();
  *(v0 + 1664) = v19;
  *v19 = v0;
  v19[1] = sub_1D23ACCD4;
  v20 = *(v0 + 1568);

  return v29(sub_1D23B7C04, v13, sub_1D23B7CFC, v15, v18, v20, v31, v30);
}

uint64_t sub_1D23ACCD4(uint64_t a1)
{
  v3 = *v2;
  v3[209] = a1;
  v3[210] = v1;

  v4 = v3[171];
  v5 = v3[170];
  if (v1)
  {
    v6 = sub_1D23B1C30;
  }

  else
  {
    v6 = sub_1D23ACE54;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

float *sub_1D23ACE54()
{
  v318 = v0;
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 944);
  (*(v0 + 1576))(v3, *(v0 + 648) + *(v0 + 1504), v4);
  v5 = sub_1D2877F98();
  v2(v3, v4);
  if ((v5 & 1) == 0)
  {
    v23 = *(v0 + 1576);
    v24 = *(v0 + 1040);
    v25 = *(v0 + 944);
    v26 = *(v0 + 688);

    sub_1D2872648();
    v23(v24, v26, v25);
    sub_1D2870F78();
    v27 = sub_1D2873CA8();
    v28 = sub_1D28789F8();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1592);
    if (v29)
    {
      v270 = *(v0 + 1576);
      v294 = *(v0 + 1200);
      v300 = *(v0 + 1192);
      v309 = *(v0 + 1280);
      v31 = *(v0 + 1112);
      v282 = v28;
      v32 = *(v0 + 1040);
      v33 = *(v0 + 944);
      v265 = *(v0 + 648);
      v267 = *(v0 + 1504);
      v34 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      v317[0] = v289;
      *v34 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v35 = sub_1D28795C8();
      log = v27;
      v37 = v36;
      v30(v32, v33);
      v38 = sub_1D23D7C84(v35, v37, v317);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v270(v31, v265 + v267, v33);
      v39 = sub_1D28795C8();
      v41 = v40;
      v30(v31, v33);
      v42 = sub_1D23D7C84(v39, v41, v317);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_1D226E000, log, v282, "startGeneratingPreviewsStream - ignoring generation batch %s as it is too old — current is %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v289, -1, -1);
      MEMORY[0x1D38A3520](v34, -1, -1);

      (*(v294 + 8))(v309, v300);
    }

    else
    {
      v59 = *(v0 + 1280);
      v60 = *(v0 + 1200);
      v61 = *(v0 + 1192);
      v62 = *(v0 + 1040);
      v63 = *(v0 + 944);

      v30(v62, v63);
      (*(v60 + 8))(v59, v61);
    }

    goto LABEL_13;
  }

  v6 = *(v0 + 1576);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 944);
  v9 = *(v0 + 688);
  sub_1D2872648();
  v6(v7, v9, v8);
  v10 = sub_1D2873CA8();
  v11 = sub_1D28789F8();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1592);
  if (v12)
  {
    v288 = *(v0 + 1552);
    v293 = *(v0 + 1200);
    v299 = *(v0 + 1192);
    v307 = *(v0 + 1272);
    v14 = *(v0 + 1032);
    v281 = *(v0 + 1592);
    v15 = *(v0 + 944);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v317[0] = v17;
    *v16 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v18 = sub_1D28795C8();
    v20 = v19;
    v281(v14, v15);
    v21 = sub_1D23D7C84(v18, v20, v317);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v288;
    _os_log_impl(&dword_1D226E000, v10, v11, "startGeneratingPreviewsStream - %s - image index %ld - did generate", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1D38A3520](v17, -1, -1);
    MEMORY[0x1D38A3520](v16, -1, -1);

    v22 = v307;
    v308 = *(v293 + 8);
    v308(v22, v299);
  }

  else
  {
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1200);
    v45 = *(v0 + 1192);
    v46 = *(v0 + 1032);
    v47 = *(v0 + 944);

    v13(v46, v47);
    v308 = *(v44 + 8);
    v308(v43, v45);
  }

  if (qword_1ED8A5B78 != -1)
  {
    swift_once();
  }

  v48 = *(*(v0 + 1144) + 92);
  v301 = *(v0 + 1160);
  sub_1D23BF14C((v301 + v48), *(v0 + 1552), v0 + 304);
  if (!*(v0 + 328))
  {
    v67 = &qword_1EC6DA470;
    v68 = &unk_1D2884A40;
    v69 = v0 + 304;
LABEL_18:
    sub_1D22BD238(v69, v67, v68);
    v74 = *(v0 + 1672);
    if (!*(v74 + 16))
    {

LABEL_26:
      sub_1D2872648();
      v98 = sub_1D2873CA8();
      v99 = sub_1D2878A18();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_1D226E000, v98, v99, "No image received", v100, 2u);
        MEMORY[0x1D38A3520](v100, -1, -1);
      }

      v101 = *(v0 + 1264);
      v102 = *(v0 + 1192);

      v308(v101, v102);
      sub_1D22BCEB8();
      v65 = swift_allocError();
      v66 = 1;
LABEL_29:
      *v64 = v66;
      swift_willThrow();
      *(v0 + 1696) = v65;
      v103 = *(v0 + 208);
      v104 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v103);
      v310 = (*(v104 + 136) + **(v104 + 136));
      v105 = swift_task_alloc();
      *(v0 + 1704) = v105;
      *v105 = v0;
      v106 = sub_1D23B0E18;
LABEL_47:
      v105[1] = v106;
      v164 = v103;
      v165 = v104;
      v166 = v310;

      return v166(v164, v165);
    }

    v49 = (v0 + 264);
    v75 = *(v0 + 1160);
    v76 = *(v0 + 1144);
    v77 = *(v0 + 872);
    v78 = *(v0 + 864);
    v79 = *(v0 + 856);
    sub_1D22D7044(v74 + 32, v0 + 264);
    sub_1D2871808();
    v80 = *(v76 + 52);
    sub_1D2871FC8();
    v81 = MEMORY[0x1D389AA00](v75 + v80, v77);
    (*(v78 + 8))(v77, v79);
    if (v81)
    {
      v82 = 1;
    }

    else
    {
      v82 = sub_1D2871F78();
    }

    v89 = *(v0 + 1672);
    v90 = *(v0 + 1552);
    v91 = *(v0 + 1016);
    v92 = *(v0 + 912);
    v93 = *(v0 + 904);
    v94 = *(v0 + 880);
    sub_1D2870F68();
    ImageGeneration.PreviewImage.init(id:batchNumber:images:hasAlpha:)(v91, v90, v89, v82 & 1, v94);
    v95 = (*(v92 + 48))(v94, 1, v93);
    v96 = *(v0 + 1672);
    if (v95 == 1)
    {
      v97 = *(v0 + 880);
      __swift_destroy_boxed_opaque_existential_0((v0 + 264));

      sub_1D22BD238(v97, &qword_1EC6D9490, &qword_1D287D3F0);
      goto LABEL_26;
    }

    v107 = *(v0 + 1144);
    v83 = *(v0 + 920);
    v85 = *(v0 + 848);
    loga = *(v0 + 1160);
    v264 = *(v0 + 832);
    v108 = *(v0 + 816);
    v281 = *(v0 + 824);
    v290 = *(v0 + 808);
    v268 = *(v0 + 840);
    sub_1D23B81C8(*(v0 + 880), v83, type metadata accessor for ImageGeneration.PreviewImage);
    sub_1D23BF708(v0 + 264, v301 + v48);
    sub_1D2398E1C(v96, *(&loga->isa + *(v107 + 96)));

    sub_1D23B8100(v83, v85, type metadata accessor for ImageGeneration.PreviewImage);
    swift_storeEnumTagMultiPayload();
    sub_1D23B8100(v85, v268, type metadata accessor for ImageGeneration.PreviewStatus);
    sub_1D2878738();
    (*(v108 + 8))(v281, v290);
    goto LABEL_31;
  }

  v49 = (v0 + 344);
  v50 = *(v0 + 1160);
  v51 = *(v0 + 1144);
  v52 = *(v0 + 872);
  v53 = *(v0 + 864);
  v54 = *(v0 + 856);
  sub_1D227268C((v0 + 304), v0 + 344);
  sub_1D2871808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0, &unk_1D2885250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  sub_1D22D7044(v0 + 344, inited + 32);
  v56 = *(v51 + 52);
  sub_1D2871FC8();
  v57 = MEMORY[0x1D389AA00](v50 + v56, v52);
  (*(v53 + 8))(v52, v54);
  if (v57)
  {
    v58 = 1;
  }

  else
  {
    v58 = sub_1D2871F78();
  }

  v70 = *(v0 + 912);
  v71 = *(v0 + 904);
  v72 = *(v0 + 888);
  ImageGeneration.PreviewImage.init(id:batchNumber:images:hasAlpha:)(*(v0 + 1024), *(v0 + 1552), inited, v58 & 1, v72);
  if ((*(v70 + 48))(v72, 1, v71) == 1)
  {
    v73 = *(v0 + 888);
    __swift_destroy_boxed_opaque_existential_0((v0 + 344));
    v67 = &qword_1EC6D9490;
    v68 = &qword_1D287D3F0;
    v69 = v73;
    goto LABEL_18;
  }

  v83 = *(v0 + 928);
  v84 = *(v0 + 888);
  v85 = *(v0 + 848);
  v86 = *(v0 + 840);
  v87 = *(v0 + 824);
  v88 = *(v0 + 816);
  v48 = *(v0 + 728);
  v302 = *(v0 + 808);

  sub_1D23B81C8(v84, v83, type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D23B8100(v83, v85, type metadata accessor for ImageGeneration.PreviewImage);
  swift_storeEnumTagMultiPayload();
  sub_1D23B8100(v85, v86, type metadata accessor for ImageGeneration.PreviewStatus);
  sub_1D2878738();
  (*(v88 + 8))(v87, v302);
LABEL_31:
  sub_1D23B8168(v85, type metadata accessor for ImageGeneration.PreviewStatus);
  sub_1D23B8168(v83, type metadata accessor for ImageGeneration.PreviewImage);
  __swift_destroy_boxed_opaque_existential_0(v49);
  v109 = *(v0 + 1576);
  v110 = *(v0 + 1008);
  v111 = *(v0 + 944);
  v112 = *(v0 + 688);
  sub_1D2872648();
  v109(v110, v112, v111);
  v113 = sub_1D2873CA8();
  v114 = sub_1D28789F8();
  v115 = os_log_type_enabled(v113, v114);
  v116 = *(v0 + 1592);
  if (v115)
  {
    v275 = *(v0 + 1592);
    v281 = *(v0 + 1552);
    v295 = *(v0 + 1192);
    v303 = *(v0 + 1256);
    v117 = *(v0 + 1008);
    v116 = *(v0 + 944);
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v317[0] = v119;
    *v118 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v48 = sub_1D28795C8();
    v121 = v120;
    v275(v117, v116);
    v122 = sub_1D23D7C84(v48, v121, v317);

    *(v118 + 4) = v122;
    *(v118 + 12) = 2048;
    *(v118 + 14) = v281;
    _os_log_impl(&dword_1D226E000, v113, v114, "startGeneratingPreviewsStream - %s - image index %ld - did create PreviewImage", v118, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x1D38A3520](v119, -1, -1);
    MEMORY[0x1D38A3520](v118, -1, -1);

    v308(v303, v295);
  }

  else
  {
    v122 = *(v0 + 1256);
    v118 = *(v0 + 1200);
    v124 = *(v0 + 1192);
    v125 = *(v0 + 1008);
    v114 = *(v0 + 944);

    v113 = v118 + 8;
    v116(v125, v114);
    v308(v122, v124);
  }

  v123 = *(v0 + 478);
  do
  {
    v126 = *(v0 + 1560);
    v127 = *(v0 + 664);
    if (v126 == v127)
    {
      goto LABEL_46;
    }

    *(v0 + 1552) = v126;
    if (v126 >= v127)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    *(v0 + 1560) = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      goto LABEL_83;
    }

    v128 = *(v0 + 672);
    v113 = v126 + v128;
    *(v0 + 1568) = v126 + v128;
    if (__OFADD__(v126, v128))
    {
      goto LABEL_84;
    }

    v122 = *(v0 + 1136);
  }

  while ((sub_1D2871968() & 1) != 0);
  v129 = sub_1D28786D8();
  v130 = *(v0 + 944);
  v131 = *(v0 + 688);
  v132 = *(v0 + 952) + 16;
  if (v129)
  {
    v133 = *(v0 + 1096);
    sub_1D2872648();
    (*v132)(v133, v131, v130);
    v134 = sub_1D2873CA8();
    v135 = sub_1D28789F8();
    v136 = os_log_type_enabled(v134, v135);
    v137 = *(v0 + 1328);
    v138 = *(v0 + 1200);
    v139 = *(v0 + 1192);
    v140 = *(v0 + 1096);
    v141 = *(v0 + 952);
    v142 = *(v0 + 944);
    if (v136)
    {
      v296 = v135;
      v143 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      v317[0] = v291;
      *v143 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v304 = v139;
      v311 = v137;
      v144 = sub_1D28795C8();
      v146 = v145;
      (*(v141 + 8))(v140, v142);
      v147 = sub_1D23D7C84(v144, v146, v317);

      *(v143 + 4) = v147;
      *(v143 + 12) = 2048;
      *(v143 + 14) = v126;
      _os_log_impl(&dword_1D226E000, v134, v296, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v143, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v291);
      MEMORY[0x1D38A3520](v291, -1, -1);
      MEMORY[0x1D38A3520](v143, -1, -1);

      (*(v138 + 8))(v311, v304);
    }

    else
    {

      (*(v141 + 8))(v140, v142);
      (*(v138 + 8))(v137, v139);
    }

LABEL_46:
    v103 = *(v0 + 208);
    v104 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v103);
    v310 = (*(v104 + 136) + **(v104 + 136));
    v105 = swift_task_alloc();
    *(v0 + 1688) = v105;
    *v105 = v0;
    v106 = sub_1D23AEFA0;
    goto LABEL_47;
  }

  v148 = *(v0 + 1088);
  sub_1D2872648();
  v149 = *v132;
  *(v0 + 1576) = *v132;
  *(v0 + 1584) = v132 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v312 = v149;
  v149(v148, v131, v130);
  v150 = sub_1D2873CA8();
  v292 = sub_1D28789F8();
  v151 = os_log_type_enabled(v150, v292);
  v152 = *(v0 + 1320);
  v153 = *(v0 + 1200);
  v305 = *(v0 + 1192);
  v154 = *(v0 + 1088);
  v155 = *(v0 + 952);
  v156 = *(v0 + 944);
  v269 = v123;
  if (v151)
  {
    v283 = *(v0 + 1320);
    v157 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    v317[0] = v276;
    *v157 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v266 = v150;
    v158 = sub_1D28795C8();
    v160 = v159;
    v271 = v153;
    v161 = *(v155 + 8);
    v161(v154, v156);
    v162 = sub_1D23D7C84(v158, v160, v317);

    *(v157 + 4) = v162;
    *(v157 + 12) = 2048;
    *(v157 + 14) = v126;
    _os_log_impl(&dword_1D226E000, v266, v292, " %s - image index %ld - will generate", v157, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v276);
    MEMORY[0x1D38A3520](v276, -1, -1);
    v163 = v161;
    MEMORY[0x1D38A3520](v157, -1, -1);

    v264 = *(v271 + 8);
    (v264)(v283, v305);
  }

  else
  {

    v163 = *(v155 + 8);
    v163(v154, v156);
    v264 = *(v153 + 8);
    (v264)(v152, v305);
  }

  v306 = v163;
  *(v0 + 1592) = v163;
  v167 = *(v0 + 1112);
  v168 = *(v0 + 944);
  v284 = *(v0 + 1504);
  v277 = *(v0 + 648);
  v169 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  v170 = swift_initStackObject();
  *(v170 + 16) = xmmword_1D287F500;
  *(v170 + 32) = 0x646E496567616D49;
  *(v170 + 40) = 0xEA00000000007865;
  *(v170 + 48) = sub_1D2878808();
  v171 = sub_1D25D6F4C(v170);
  swift_setDeallocating();
  v116 = v306;
  sub_1D22BD238(v170 + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v171, 1);

  v312(v167, v277 + v284, v168);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
  v172 = sub_1D2877F98();
  *(v0 + 1608) = v169 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v306(v167, v168);
  if ((v172 & 1) == 0)
  {
LABEL_13:
    sub_1D22BCEB8();
    v65 = swift_allocError();
    v66 = 3;
    goto LABEL_29;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v173 = sub_1D2878A58();
  v174 = sub_1D2878068();
  v175 = [v173 BOOLForKey_];

  if (v175)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v176 = sub_1D23B9E90((*(v0 + 1160) + *(*(v0 + 1144) + 92)), v126);
    if ((v177 & 1) == 0)
    {
      v287 = v176;
      v215 = *(v0 + 1080);
      v216 = *(v0 + 944);
      v217 = *(v0 + 688);
      sub_1D2872648();
      v312(v215, v217, v216);
      v218 = sub_1D2873CA8();
      v219 = sub_1D28789F8();
      v220 = os_log_type_enabled(v218, v219);
      v221 = *(v0 + 1312);
      v222 = *(v0 + 1192);
      v223 = *(v0 + 1080);
      v224 = *(v0 + 944);
      if (v220)
      {
        v297 = *(v0 + 1192);
        v225 = swift_slowAlloc();
        v280 = swift_slowAlloc();
        v317[0] = v280;
        *v225 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v226 = sub_1D28795C8();
        v273 = v221;
        v228 = v227;
        v306(v223, v224);
        v229 = sub_1D23D7C84(v226, v228, v317);

        *(v225 + 4) = v229;
        *(v225 + 12) = 2048;
        *(v225 + 14) = v126;
        *(v225 + 22) = 2048;
        v188 = v287;
        *(v225 + 24) = v287;
        _os_log_impl(&dword_1D226E000, v218, v219, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v225, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v280);
        MEMORY[0x1D38A3520](v280, -1, -1);
        MEMORY[0x1D38A3520](v225, -1, -1);

        (v264)(v273, v297);
      }

      else
      {

        v306(v223, v224);
        (v264)(v221, v222);
        v188 = v287;
      }

      goto LABEL_79;
    }
  }

  v178 = sub_1D2878A58();
  v179 = sub_1D2878068();
  v180 = [v178 BOOLForKey_];

  if (!v180)
  {
    v198 = sub_1D2878A58();
    v199 = sub_1D2878068();
    v200 = [v198 BOOLForKey_];

    if (v200)
    {
      v201 = *(v0 + 1064);
      v202 = *(v0 + 944);
      v203 = *(v0 + 688);
      sub_1D2872648();
      v312(v201, v203, v202);
      v204 = sub_1D2873CA8();
      v205 = sub_1D28789F8();
      v206 = os_log_type_enabled(v204, v205);
      v207 = *(v0 + 1296);
      v314 = *(v0 + 1192);
      v208 = *(v0 + 1064);
      v209 = *(v0 + 944);
      if (v206)
      {
        v210 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        v317[0] = v286;
        *v210 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v211 = sub_1D28795C8();
        v279 = v207;
        v213 = v212;
        v306(v208, v209);
        v214 = sub_1D23D7C84(v211, v213, v317);

        *(v210 + 4) = v214;
        *(v210 + 12) = 2048;
        *(v210 + 14) = v126;
        *(v210 + 22) = 2048;
        *(v210 + 24) = 0;
        _os_log_impl(&dword_1D226E000, v204, v205, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v210, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v286);
        MEMORY[0x1D38A3520](v286, -1, -1);
        MEMORY[0x1D38A3520](v210, -1, -1);

        (v264)(v279, v314);
      }

      else
      {

        v306(v208, v209);
        (v264)(v207, v314);
      }

      v123 = v269;
      v246 = *(v0 + 208);
      v247 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v246);
      (*(v247 + 72))(0, v246, v247);
      goto LABEL_87;
    }

    v123 = v269;
    if (v113 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_87;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v113 < 0)
    {
      __break(1u);
    }

    else
    {
      v231 = *(result + 2);
      if (v231)
      {
        v281 = *(*(v0 + 680) + 8 * v113 + 32);
        v232 = *(v0 + 1056);
        v233 = *(v0 + 944);
        v234 = *(v0 + 688);
        v235 = v231 - 1;
        if (v235 >= v113)
        {
          v235 = v113;
        }

        v1 = result[v235 + 8];

        sub_1D2872648();
        v312(v232, v234, v233);
        v114 = sub_1D2873CA8();
        v298 = sub_1D28789F8();
        v236 = os_log_type_enabled(v114, v298);
        v48 = *(v0 + 1288);
        v308 = *(v0 + 1192);
        v122 = *(v0 + 1056);
        v118 = *(v0 + 944);
        if (v236)
        {
          v274 = *(v0 + 1288);
          v237 = swift_slowAlloc();
          logb = swift_slowAlloc();
          v317[0] = logb;
          *v237 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
          v238 = sub_1D28795C8();
          v240 = v239;
          v306(v122, v118);
          v241 = v238;
          v123 = v269;
          v242 = sub_1D23D7C84(v241, v240, v317);

          *(v237 + 4) = v242;
          *(v237 + 12) = 2048;
          *(v237 + 14) = v126;
          *(v237 + 22) = 2048;
          *(v237 + 24) = v281;
          *(v237 + 32) = 2048;
          *(v237 + 34) = v1;
          _os_log_impl(&dword_1D226E000, v114, v298, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v237, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(logb);
          MEMORY[0x1D38A3520](logb, -1, -1);
          MEMORY[0x1D38A3520](v237, -1, -1);

          (v264)(v274, v308);
          v243 = v281;
LABEL_86:
          v248 = *(v0 + 208);
          v249 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v248);
          (*(v249 + 72))(v243, v248, v249);
          v250 = *(v0 + 208);
          v251 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v250);
          (*(v251 + 80))(v250, v251, v1);
          goto LABEL_87;
        }

LABEL_85:

        v116(v122, v118);
        (v264)(v48, v308);
        v243 = v281;
        goto LABEL_86;
      }
    }

    __break(1u);
    return result;
  }

  v181 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v182 = *(v0 + 1072);
  v183 = *(v0 + 944);
  v184 = *(v0 + 688);
  sub_1D23BA074(v181, *(v0 + 1160) + *(*(v0 + 1144) + 92), v126);
  sub_1D2872648();
  v312(v182, v184, v183);
  v185 = sub_1D2873CA8();
  v313 = sub_1D28789F8();
  v186 = os_log_type_enabled(v185, v313);
  v187 = *(v0 + 1304);
  v188 = v181;
  v189 = *(v0 + 1192);
  v190 = *(v0 + 1072);
  v191 = *(v0 + 944);
  if (v186)
  {
    v285 = *(v0 + 1192);
    v192 = swift_slowAlloc();
    v278 = swift_slowAlloc();
    v317[0] = v278;
    *v192 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v193 = sub_1D28795C8();
    v272 = v187;
    v194 = v188;
    v196 = v195;
    v306(v190, v191);
    v197 = sub_1D23D7C84(v193, v196, v317);
    v188 = v194;

    *(v192 + 4) = v197;
    *(v192 + 12) = 2048;
    *(v192 + 14) = v126;
    *(v192 + 22) = 2048;
    *(v192 + 24) = v194;
    _os_log_impl(&dword_1D226E000, v185, v313, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v192, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v278);
    MEMORY[0x1D38A3520](v278, -1, -1);
    MEMORY[0x1D38A3520](v192, -1, -1);

    (v264)(v272, v285);
  }

  else
  {

    v306(v190, v191);
    (v264)(v187, v189);
  }

LABEL_79:
  v244 = *(v0 + 208);
  v245 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v244);
  (*(v245 + 72))(v188, v244, v245);
  v123 = v269;
LABEL_87:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0 && sub_1D2391DAC() || (_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    v254 = 0;
    goto LABEL_97;
  }

  v252 = *(v0 + 475);
  v253 = sub_1D23920F8(1, v113, 0);
  v254 = v252 & v123 & v253;
  if ((v252 & v123 & 1) != 0 || (v253 & 1) == 0)
  {
LABEL_97:
    *(v0 + 476) = v254 & 1;
    v258 = *(v0 + 208);
    v259 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v258);
    v316 = (*(v259 + 56) + **(v259 + 56));
    v260 = swift_task_alloc();
    *(v0 + 1616) = v260;
    *v260 = v0;
    v260[1] = sub_1D23AC2D8;
    v164 = v258;
    v165 = v259;
    v166 = v316;

    return v166(v164, v165);
  }

  *(v0 + 477) = v123;
  v255 = *(v0 + 208);
  v256 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v255);
  v315 = (*(v256 + 64) + **(v256 + 64));
  v257 = swift_task_alloc();
  *(v0 + 1632) = v257;
  *v257 = v0;
  v257[1] = sub_1D23AC860;
  v164 = v255;
  v165 = v256;
  v166 = v315;

  return v166(v164, v165);
}

uint64_t sub_1D23AEFA0()
{
  v1 = *v0;

  v2 = *(v1 + 1368);
  v3 = *(v1 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23AF0C0, v3, v2);
}

uint64_t sub_1D23AF0C0()
{
  v33 = v0;
  v1 = v0[125];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[86];

  sub_1D2872648();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1D2873CA8();
  v6 = sub_1D28789F8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[156];
  v9 = v0[150];
  v10 = v0[149];
  v11 = v0[125];
  v12 = v0[119];
  v13 = v0[118];
  if (v7)
  {
    v31 = v0[149];
    v14 = swift_slowAlloc();
    v29 = v6;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v16 = sub_1D28795C8();
    v30 = v8;
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1D23D7C84(v16, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D226E000, v5, v29, "startGeneratingPreviewsStream - %s - done", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);

    (*(v9 + 8))(v30, v31);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[173];
  v21 = v0[172];
  v22 = v0[148];
  v23 = v0[145];
  v24 = v0[142];
  v25 = v0[141];
  v26 = v0[140];
  v0[71] = 0;
  sub_1D2878748();
  sub_1D22A576C(v21, v20);
  (*(v25 + 8))(v24, v26);
  sub_1D22BD238(v22, &qword_1EC6DA490, &qword_1D2883648);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  sub_1D23B8168(v23, type metadata accessor for ImageGeneration.GenerationParameters);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D23AF690()
{
  v1 = v0[175];
  v2 = v0[173];
  v3 = v0[172];

  v0[74] = v1;
  v4 = v1;
  sub_1D2878748();
  sub_1D22A576C(v3, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D23AFA68()
{
  v80 = v0;

  v1 = *(v0 + 1520);
  *(v0 + 584) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v26 = *(v0 + 984);
    v27 = *(v0 + 952);
    v28 = *(v0 + 944);
    v29 = *(v0 + 688);
    sub_1D2872648();
    (*(v27 + 16))(v26, v29, v28);
    v30 = v1;
    v31 = sub_1D2873CA8();
    v32 = sub_1D28789F8();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1232);
    v35 = *(v0 + 1200);
    v36 = *(v0 + 1192);
    v37 = *(v0 + 984);
    v38 = v1;
    v39 = *(v0 + 952);
    v40 = *(v0 + 944);
    if (v33)
    {
      v78 = *(v0 + 1192);
      v41 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v79[0] = v74;
      *v41 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v70 = v32;
      v42 = v38;
      v43 = sub_1D28795C8();
      v76 = v34;
      v45 = v44;
      (*(v39 + 8))(v37, v40);
      v46 = sub_1D23D7C84(v43, v45, v79);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2112;
      v47 = v42;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v48;
      *v72 = v48;
      _os_log_impl(&dword_1D226E000, v31, v70, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v41, 0x16u);
      sub_1D22BD238(v72, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1D38A3520](v74, -1, -1);
      MEMORY[0x1D38A3520](v41, -1, -1);

      (*(v35 + 8))(v76, v78);
      v49 = v42;
    }

    else
    {

      (*(v39 + 8))(v37, v40);
      (*(v35 + 8))(v34, v36);
      v49 = v38;
    }

    v50 = *(v0 + 1384);
    v51 = *(v0 + 1376);
    v52 = *(v0 + 1184);
    v53 = *(v0 + 1136);
    v54 = *(v0 + 1128);
    v55 = *(v0 + 1120);
    *(v0 + 600) = v49;
    v56 = v49;
    sub_1D2878748();
    sub_1D22A576C(v51, v50);

    (*(v54 + 8))(v53, v55);
    goto LABEL_11;
  }

  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 496);
  if (v5 >= 0x50 || (*(v0 + 608) = v4, sub_1D233E72C(v4, v3, v5), (swift_dynamicCast() & 1) == 0))
  {
    sub_1D22BCDC4(v4, v3, v5);
    goto LABEL_7;
  }

  v77 = v3;
  v6 = *(v0 + 992);
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 688);
  (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
  sub_1D2872648();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v1;
  v11 = sub_1D2873CA8();
  v12 = sub_1D28789F8();

  v73 = v12;
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1200);
  v75 = *(v0 + 1192);
  v16 = *(v0 + 992);
  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v68 = v1;
  if (v13)
  {
    v71 = *(v0 + 1240);
    v19 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v79[0] = v69;
    *v19 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v67 = v15;
    v20 = sub_1D28795C8();
    v65 = v11;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = sub_1D23D7C84(v20, v22, v79);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v66 = v25;
    _os_log_impl(&dword_1D226E000, v65, v73, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v19, 0x16u);
    sub_1D22BD238(v66, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v66, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x1D38A3520](v69, -1, -1);
    MEMORY[0x1D38A3520](v19, -1, -1);

    (*(v67 + 8))(v71, v75);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v14, v75);
  }

  v60 = *(v0 + 1384);
  v61 = *(v0 + 1376);
  v52 = *(v0 + 1184);
  v62 = *(v0 + 1136);
  v63 = *(v0 + 1128);
  v64 = *(v0 + 1120);
  *(v0 + 616) = 0;
  sub_1D2878748();
  sub_1D22A576C(v61, v60);
  sub_1D22BCDC4(v4, v77, v5);

  (*(v63 + 8))(v62, v64);
LABEL_11:
  sub_1D22BD238(v52, &qword_1EC6DA490, &qword_1D2883648);
  v57 = *(v0 + 1160);
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  sub_1D23B8168(v57, type metadata accessor for ImageGeneration.GenerationParameters);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_1D23B0440()
{
  v80 = v0;

  v1 = *(v0 + 1536);
  *(v0 + 584) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v26 = *(v0 + 984);
    v27 = *(v0 + 952);
    v28 = *(v0 + 944);
    v29 = *(v0 + 688);
    sub_1D2872648();
    (*(v27 + 16))(v26, v29, v28);
    v30 = v1;
    v31 = sub_1D2873CA8();
    v32 = sub_1D28789F8();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1232);
    v35 = *(v0 + 1200);
    v36 = *(v0 + 1192);
    v37 = *(v0 + 984);
    v38 = v1;
    v39 = *(v0 + 952);
    v40 = *(v0 + 944);
    if (v33)
    {
      v78 = *(v0 + 1192);
      v41 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v79[0] = v74;
      *v41 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v70 = v32;
      v42 = v38;
      v43 = sub_1D28795C8();
      v76 = v34;
      v45 = v44;
      (*(v39 + 8))(v37, v40);
      v46 = sub_1D23D7C84(v43, v45, v79);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2112;
      v47 = v42;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v48;
      *v72 = v48;
      _os_log_impl(&dword_1D226E000, v31, v70, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v41, 0x16u);
      sub_1D22BD238(v72, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1D38A3520](v74, -1, -1);
      MEMORY[0x1D38A3520](v41, -1, -1);

      (*(v35 + 8))(v76, v78);
      v49 = v42;
    }

    else
    {

      (*(v39 + 8))(v37, v40);
      (*(v35 + 8))(v34, v36);
      v49 = v38;
    }

    v50 = *(v0 + 1384);
    v51 = *(v0 + 1376);
    v52 = *(v0 + 1184);
    v53 = *(v0 + 1136);
    v54 = *(v0 + 1128);
    v55 = *(v0 + 1120);
    *(v0 + 600) = v49;
    v56 = v49;
    sub_1D2878748();
    sub_1D22A576C(v51, v50);

    (*(v54 + 8))(v53, v55);
    goto LABEL_11;
  }

  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 496);
  if (v5 >= 0x50 || (*(v0 + 608) = v4, sub_1D233E72C(v4, v3, v5), (swift_dynamicCast() & 1) == 0))
  {
    sub_1D22BCDC4(v4, v3, v5);
    goto LABEL_7;
  }

  v77 = v3;
  v6 = *(v0 + 992);
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 688);
  (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
  sub_1D2872648();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v1;
  v11 = sub_1D2873CA8();
  v12 = sub_1D28789F8();

  v73 = v12;
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1200);
  v75 = *(v0 + 1192);
  v16 = *(v0 + 992);
  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v68 = v1;
  if (v13)
  {
    v71 = *(v0 + 1240);
    v19 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v79[0] = v69;
    *v19 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v67 = v15;
    v20 = sub_1D28795C8();
    v65 = v11;
    v22 = v21;
    (*(v17 + 8))(v16, v18);
    v23 = sub_1D23D7C84(v20, v22, v79);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v66 = v25;
    _os_log_impl(&dword_1D226E000, v65, v73, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v19, 0x16u);
    sub_1D22BD238(v66, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v66, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x1D38A3520](v69, -1, -1);
    MEMORY[0x1D38A3520](v19, -1, -1);

    (*(v67 + 8))(v71, v75);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v14, v75);
  }

  v60 = *(v0 + 1384);
  v61 = *(v0 + 1376);
  v52 = *(v0 + 1184);
  v62 = *(v0 + 1136);
  v63 = *(v0 + 1128);
  v64 = *(v0 + 1120);
  *(v0 + 616) = 0;
  sub_1D2878748();
  sub_1D22A576C(v61, v60);
  sub_1D22BCDC4(v4, v77, v5);

  (*(v63 + 8))(v62, v64);
LABEL_11:
  sub_1D22BD238(v52, &qword_1EC6DA490, &qword_1D2883648);
  v57 = *(v0 + 1160);
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  sub_1D23B8168(v57, type metadata accessor for ImageGeneration.GenerationParameters);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_1D23B0E18()
{
  v1 = *v0;

  v2 = *(v1 + 1368);
  v3 = *(v1 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23B0F38, v3, v2);
}

uint64_t sub_1D23B0F38()
{
  v93 = v0;
  v1 = *(v0 + 1696);

  *(v0 + 544) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 456);
    v3 = *(v0 + 464);
    v5 = *(v0 + 472);
    if (v5 < 0x50)
    {
      *(v0 + 528) = v4;
      sub_1D233E72C(v4, v3, v5);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 1576);
        v7 = *(v0 + 976);
        v8 = *(v0 + 944);
        v9 = *(v0 + 688);
        (*(*(v0 + 704) + 8))(*(v0 + 712), *(v0 + 696));
        sub_1D2872648();
        v6(v7, v9, v8);
        v10 = sub_1D2873CA8();
        v81 = sub_1D28789F8();
        v11 = os_log_type_enabled(v10, v81);
        v85 = *(v0 + 1592);
        v12 = *(v0 + 1224);
        v13 = *(v0 + 1200);
        v14 = *(v0 + 1192);
        v15 = *(v0 + 976);
        v16 = *(v0 + 944);
        if (v11)
        {
          v78 = *(v0 + 1192);
          v17 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v92[0] = v74;
          *v17 = 136315138;
          sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
          v75 = v12;
          v18 = sub_1D28795C8();
          v72 = v10;
          v20 = v19;
          v85(v15, v16);
          v21 = sub_1D23D7C84(v18, v20, v92);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_1D226E000, v72, v81, "startGeneratingPreviewsStream - %s - cancelled", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x1D38A3520](v74, -1, -1);
          MEMORY[0x1D38A3520](v17, -1, -1);

          (*(v13 + 8))(v75, v78);
        }

        else
        {

          v85(v15, v16);
          (*(v13 + 8))(v12, v14);
        }

        v68 = *(v0 + 1384);
        v69 = *(v0 + 1376);
        v88 = *(v0 + 1696);
        v91 = *(v0 + 1184);
        v65 = *(v0 + 1160);
        v84 = *(v0 + 1136);
        v70 = *(v0 + 1128);
        v71 = *(v0 + 1120);
        *(v0 + 536) = 0;
        sub_1D2878748();
        sub_1D22A576C(v69, v68);
        sub_1D22BCDC4(v4, v3, v5);

        (*(v70 + 8))(v84, v71);
        sub_1D22BD238(v91, &qword_1EC6DA490, &qword_1D2883648);
        goto LABEL_15;
      }
    }

    sub_1D22BCDC4(v4, v3, v5);
  }

  v22 = *(v0 + 1696);
  v23 = *(v0 + 1576);
  v24 = *(v0 + 968);
  v25 = *(v0 + 944);
  v26 = *(v0 + 688);
  sub_1D2872648();
  v23(v24, v26, v25);
  v27 = v22;
  v28 = sub_1D2873CA8();
  v29 = sub_1D28789F8();

  if (os_log_type_enabled(v28, v29))
  {
    v73 = *(v0 + 1592);
    v76 = *(v0 + 1552);
    v79 = *(v0 + 1696);
    v82 = *(v0 + 1200);
    v86 = *(v0 + 1192);
    v89 = *(v0 + 1216);
    v30 = *(v0 + 968);
    v31 = *(v0 + 944);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v92[0] = v34;
    *v32 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v35 = sub_1D28795C8();
    v37 = v36;
    v73(v30, v31);
    v38 = sub_1D23D7C84(v35, v37, v92);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v76;
    *(v32 + 22) = 2112;
    v39 = v79;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 24) = v40;
    *v33 = v40;
    _os_log_impl(&dword_1D226E000, v28, v29, "startGeneratingPreviewsStream - %s - image index %ld - did receive error %@", v32, 0x20u);
    sub_1D22BD238(v33, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1D38A3520](v34, -1, -1);
    MEMORY[0x1D38A3520](v32, -1, -1);

    v41 = v82[1];
    v41(v89, v86);
    if (*(v0 + 1568))
    {
LABEL_9:
      v90 = v41;
      sub_1D2872648();
      v42 = sub_1D2873CA8();
      v43 = sub_1D28789F8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 1568);
        v45 = swift_slowAlloc();
        *v45 = 134217984;
        *(v45 + 4) = v44;
        _os_log_impl(&dword_1D226E000, v42, v43, "startGeneratingPreviewsStream - Ignoring error on preview number %ld, given we returned at least one successful image.", v45, 0xCu);
        MEMORY[0x1D38A3520](v45, -1, -1);
      }

      v46 = *(v0 + 1384);
      v47 = *(v0 + 1376);
      v48 = *(v0 + 1208);
      v49 = *(v0 + 1192);
      v83 = *(v0 + 1696);
      v87 = *(v0 + 1184);
      v50 = *(v0 + 1128);
      v77 = *(v0 + 1120);
      v80 = *(v0 + 1136);

      v90(v48, v49);
      *(v0 + 512) = 0;
      sub_1D2878748();
      sub_1D22A576C(v47, v46);

      (*(v50 + 8))(v80, v77);
      v51 = v87;
      goto LABEL_14;
    }
  }

  else
  {
    v52 = *(v0 + 1592);
    v53 = *(v0 + 1216);
    v54 = *(v0 + 1200);
    v55 = *(v0 + 1192);
    v56 = *(v0 + 968);
    v57 = *(v0 + 944);

    v52(v56, v57);
    v41 = *(v54 + 8);
    v41(v53, v55);
    if (*(v0 + 1568))
    {
      goto LABEL_9;
    }
  }

  v58 = *(v0 + 1696);
  v59 = *(v0 + 1384);
  v60 = *(v0 + 1376);
  v51 = *(v0 + 1184);
  v61 = *(v0 + 1136);
  v62 = *(v0 + 1128);
  v63 = *(v0 + 1120);
  *(v0 + 520) = v58;
  v64 = v58;
  sub_1D2878748();
  sub_1D22A576C(v60, v59);

  (*(v62 + 8))(v61, v63);
LABEL_14:
  sub_1D22BD238(v51, &qword_1EC6DA490, &qword_1D2883648);
  v65 = *(v0 + 1160);
LABEL_15:
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  sub_1D23B8168(v65, type metadata accessor for ImageGeneration.GenerationParameters);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D23B19D8()
{
  v0[212] = v0[203];
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v5 = (*(v2 + 136) + **(v2 + 136));
  v3 = swift_task_alloc();
  v0[213] = v3;
  *v3 = v0;
  v3[1] = sub_1D23B0E18;

  return v5(v1, v2);
}

uint64_t sub_1D23B1B04()
{
  v0[212] = v0[205];
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v5 = (*(v2 + 136) + **(v2 + 136));
  v3 = swift_task_alloc();
  v0[213] = v3;
  *v3 = v0;
  v3[1] = sub_1D23B0E18;

  return v5(v1, v2);
}

uint64_t sub_1D23B1C30()
{
  v0[212] = v0[210];
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v5 = (*(v2 + 136) + **(v2 + 136));
  v3 = swift_task_alloc();
  v0[213] = v3;
  *v3 = v0;
  v3[1] = sub_1D23B0E18;

  return v5(v1, v2);
}

uint64_t sub_1D23B1D5C(uint64_t a1)
{
  sub_1D23B7984();

  return sub_1D2870F68();
}

uint64_t sub_1D23B1D84(void *a1, uint64_t a2)
{
  v20[2] = a2;
  v3 = sub_1D2872008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 16))(v7, v8);
  v10 = v3;
  v11 = 0;
  v22 = *(result + 16);
  v20[1] = v4 + 16;
  v21 = (v4 + 8);
  while (1)
  {
    v12 = v11;
    if (v22 == v11)
    {
      goto LABEL_11;
    }

    if (v11 >= *(result + 16))
    {
      break;
    }

    v13 = result;
    (*(v4 + 16))(v6, result + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v10);
    v14 = sub_1D2871F98();
    v16 = v15;
    type metadata accessor for ImageGeneration.GenerationParameters(0);
    if (v14 == sub_1D2871F98() && v16 == v17)
    {

      (*v21)(v6, v10);
LABEL_11:

      return v22 != v12;
    }

    ++v11;
    v19 = sub_1D2879618();

    (*v21)(v6, v10);
    result = v13;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D23B1FC8(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v33 = a2;
  v7 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748, &qword_1D2883F50);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v30 - v11;
  v12 = sub_1D2871818();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D2873CB8();
  v34 = *(v16 - 8);
  v35 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872648();
  (*(v13 + 16))(v15, a1, v12);
  v19 = sub_1D2873CA8();
  v20 = sub_1D28789F8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a3;
    v22 = v21;
    v30 = swift_slowAlloc();
    v31 = v9;
    v39 = v30;
    *v22 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v23 = sub_1D28795C8();
    v25 = v24;
    (*(v13 + 8))(v15, v12);
    v26 = sub_1D23D7C84(v23, v25, &v39);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v33;
    *(v22 + 22) = 2048;
    *(v22 + 24) = a4;
    _os_log_impl(&dword_1D226E000, v19, v20, "startGeneratingPreviewsStream - %s - image index %ld - generate progress %f", v22, 0x20u);
    v27 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v9 = v31;
    MEMORY[0x1D38A3520](v27, -1, -1);
    MEMORY[0x1D38A3520](v22, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  (*(v34 + 8))(v18, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA50, &qword_1D2885320);
  *v9 = a4;
  sub_1D28786E8();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
  v28 = v36;
  sub_1D2878738();
  return (*(v37 + 8))(v28, v38);
}

uint64_t sub_1D23B23FC(uint64_t a1)
{
  v2 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748, &qword_1D2883F50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA778, &qword_1D28919B0);
  *v4 = v9;
  *(v4 + 1) = v10;
  v4[16] = a1;
  sub_1D233E72C(v9, v10, a1);
  sub_1D28786E8();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
  sub_1D2878738();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D23B259C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  if ([objc_opt_self() isMainThread])
  {
    sub_1D2878568();
    return sub_1D239DDE8(sub_1D23B7870, v0, "ImagePlaygroundInternal/ImageGenerationManager.swift", 52, 2u, 541);
  }

  else
  {
    v5 = sub_1D28785F8();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1D2878568();
    sub_1D2870F78();
    v6 = v0;
    v7 = sub_1D2878558();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_1D22AE01C(0, 0, v3, &unk_1D2883F80, v8);
  }
}

uint64_t sub_1D23B272C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA730, &qword_1D2883F28);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v56 - v7;
  v8 = sub_1D2873CB8();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2871818();
  v72 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v19 = a1[1];
  v60 = *a1;
  v59 = v19;
  v58 = a1[2];
  v20 = v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  if (*(v20 + 24))
  {
    sub_1D22D7044(v20, v73);
    v21 = v74;
    v22 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v22 + 112))(v21, v22);
    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  sub_1D2871808();
  v23 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  (*(v72 + 24))(v3 + v23, v18, v11);
  swift_endAccess();
  sub_1D2872648();
  sub_1D2870F78();
  v24 = v10;
  v25 = sub_1D2873CA8();
  v26 = sub_1D28789F8();

  v27 = os_log_type_enabled(v25, v26);
  v70 = v18;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v72;
    v31 = v29;
    v73[0] = v29;
    *v28 = 136315138;
    (*(v30 + 16))(v15, v3 + v23, v11);
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v57 = v24;
    v32 = sub_1D28795C8();
    v33 = v11;
    v35 = v34;
    v36 = *(v30 + 8);
    v37 = v33;
    v36(v15, v33);
    v38 = sub_1D23D7C84(v32, v35, v73);

    *(v28 + 4) = v38;
    _os_log_impl(&dword_1D226E000, v25, v26, "startGeneratingPreviewsStream - new generationBatchIdentifier: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v39 = v31;
    v18 = v70;
    MEMORY[0x1D38A3520](v39, -1, -1);
    MEMORY[0x1D38A3520](v28, -1, -1);

    (*(v61 + 8))(v57, v62);
  }

  else
  {

    (*(v61 + 8))(v24, v62);
    v37 = v11;
  }

  sub_1D239E708(v18);
  v40 = v72;
  v41 = *(v72 + 16);
  v42 = v37;
  v41(v15, v3 + v23, v37);
  v43 = v63;
  v44 = (v41)(v63, v15, v37);
  v62 = &v56;
  MEMORY[0x1EEE9AC00](v44);
  *(&v56 - 6) = v43;
  *(&v56 - 5) = v3;
  v45 = v59;
  *(&v56 - 4) = v60;
  *(&v56 - 3) = v45;
  *(&v56 - 2) = v58;
  type metadata accessor for ImageGeneration.PreviewStatus(0);
  LODWORD(v60) = *MEMORY[0x1E69E8790];
  v61 = v3;
  v68 = *(v68 + 104);
  v46 = v65;
  v47 = v40;
  (v68)(v65);
  v48 = v64;
  sub_1D2878778();
  v49 = *(v47 + 8);
  v49(v15, v42);
  v50 = (v49)(v43, v42);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v52 = v61;
  *(&v56 - 4) = v48;
  *(&v56 - 3) = v52;
  v54 = v70;
  v53 = v71;
  *(&v56 - 2) = v70;
  (v68)(v46, v60, v53, v51);
  sub_1D2878778();
  (*(v66 + 8))(v48, v67);
  return (v49)(v54, v42);
}

uint64_t sub_1D23B2E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a4;
  v41 = a3;
  v39 = a1;
  v40 = sub_1D2871818();
  v35 = *(v40 - 8);
  v38 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
  v30 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v32 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v34 = &v30 - v17;
  v19 = sub_1D28785F8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, v36, v11);
  (*(v7 + 16))(v10, v39, v6);
  v20 = v35;
  (*(v35 + 16))(v5, v37, v40);
  sub_1D2878568();
  sub_1D2870F78();
  v21 = sub_1D2878558();
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = (v13 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v20 + 80) + v24 + 8) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 16) = v21;
  *(v26 + 24) = v27;
  (*(v12 + 32))(v26 + v22, v15, v31);
  (*(v7 + 32))(v26 + v23, v32, v30);
  v28 = v40;
  *(v26 + v24) = v41;
  (*(v20 + 32))(v26 + v25, v33, v28);
  sub_1D22AE01C(0, 0, v34, &unk_1D2883F40, v26);
  return sub_1D2878728();
}

uint64_t sub_1D23B3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748, &qword_1D2883F50);
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA30, &qword_1D2883F58);
  v7[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA750, &unk_1D2891990);
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = sub_1D2878568();
  v7[20] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v7[21] = v12;
  v7[22] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D23B3428, v12, v11);
}

uint64_t sub_1D23B3428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  sub_1D2878658();
  v1 = sub_1D2878558();
  v0[23] = v1;
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1D23B3508;
  v3 = v0[15];
  v4 = v0[16];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v3, v1, v5, v4, v0 + 2);
}

uint64_t sub_1D23B3508()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D23B383C;
  }

  else
  {
    v5 = sub_1D23B3628;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23B3628()
{
  v1 = v0[15];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v0[4] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
    sub_1D2878748();
    sub_1D239EEE4(v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];
    sub_1D23B81C8(v1, v0[11], type metadata accessor for ImageGeneration.PreviewStatus);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
    sub_1D2878738();
    (*(v5 + 8))(v4, v6);
    v7 = sub_1D2878558();
    v0[23] = v7;
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_1D23B3508;
    v9 = v0[15];
    v10 = v0[16];
    v11 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DB90](v9, v7, v11, v10, v0 + 2);
  }
}

uint64_t sub_1D23B383C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);
  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
  sub_1D2878748();
  sub_1D239EEE4(v0[8]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D23B3930(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA740, &qword_1D2883F48);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, a1, v3, v5);
  LODWORD(a1) = (*(v4 + 88))(v7, v3);
  v8 = *MEMORY[0x1E69E8760];
  result = (*(v4 + 8))(v7, v3);
  if (a1 == v8)
  {
    return sub_1D28786B8();
  }

  return result;
}

uint64_t sub_1D23B3A78()
{
  v1 = v0;
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872648();
  sub_1D2870F78();
  v10 = sub_1D2873CA8();
  v11 = sub_1D28789F8();

  v12 = os_log_type_enabled(v10, v11);
  v30 = v3;
  v31 = v2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v29 = v6;
    v14 = v13;
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v14 = 136315138;
    v15 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v15, v2);
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v16 = sub_1D28795C8();
    v17 = v2;
    v19 = v18;
    (*(v3 + 8))(v5, v17);
    v20 = sub_1D23D7C84(v16, v19, v32);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1D226E000, v10, v11, "Reset - we are at batch index %s", v14, 0xCu);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1D38A3520](v21, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);

    (*(v7 + 8))(v9, v29);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  if (*(*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__testGenerators) + 16) || *(*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) + 16))
  {
    v22 = v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
    swift_beginAccess();
    if (*(v22 + 24))
    {
      sub_1D22D7044(v22, v32);
      v23 = v33;
      v24 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      (*(v24 + 104))(v23, v24);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }

  sub_1D2871808();
  v25 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  (*(v30 + 40))(v1 + v25, v5, v31);
  return swift_endAccess();
}

uint64_t sub_1D23B3E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v6 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780, &qword_1D2883F88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_1D28785F8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  sub_1D23B8100(a3, v8, type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D2878568();
  sub_1D2870F78();
  v18 = sub_1D2878558();
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + *(v27 + 80) + v19) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  *(v21 + 4) = a2;
  (*(v10 + 32))(&v21[v19], v13, v9);
  sub_1D23B81C8(v8, &v21[v20], type metadata accessor for ImageGeneration.PreviewImage);
  v23 = sub_1D22AE01C(0, 0, v16, &unk_1D2883F98, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a2;
  sub_1D2870F78();
  return sub_1D2878728();
}

uint64_t sub_1D23B415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v6[31] = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  v6[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA790, &qword_1D2883FA8);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780, &qword_1D2883F88);
  v6[36] = v8;
  v9 = *(v8 - 8);
  v6[37] = v9;
  v6[38] = *(v9 + 64);
  v6[39] = swift_task_alloc();
  v10 = sub_1D2872438();
  v6[40] = v10;
  v6[41] = *(v10 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  type metadata accessor for PlaygroundImage(0);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490, &qword_1D2883648);
  v6[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30, &unk_1D2881A80);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  sub_1D2878568();
  v6[51] = sub_1D2878558();
  v12 = sub_1D28784F8();
  v6[52] = v12;
  v6[53] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D23B4434, v12, v11);
}

uint64_t sub_1D23B4434()
{
  v1 = *(v0 + 224);
  v2 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v2, v0 + 56, &qword_1EC6D9A08, &qword_1D287EC40);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 224);
    sub_1D227268C((v0 + 56), v0 + 16);
    v4 = *(v3 + 32);
    *(v0 + 432) = v4;
    *(v0 + 440) = *(v3 + 40);
    if (v4)
    {
      sub_1D2870F78();
      v44 = (v4 + *v4);
      v5 = swift_task_alloc();
      *(v0 + 448) = v5;
      *v5 = v0;
      v5[1] = sub_1D23B4B8C;
      v6 = *(v0 + 376);

      return v44(v6);
    }

    v9 = *(v0 + 392);
    v10 = *(v0 + 400);
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1D22BD1D0(v10, v9, &unk_1EC6DDE30, &unk_1D2881A80);
    v13 = *(v12 + 48);
    *(v0 + 464) = v13;
    *(v0 + 472) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v13(v9, 1, v11) == 1)
    {
      v14 = &unk_1EC6DDE30;
      v15 = &unk_1D2881A80;
      v16 = *(v0 + 392);
LABEL_17:
      sub_1D22BD238(v16, v14, v15);
      v23 = *(v0 + 312);
      v24 = *(v0 + 288);
      v25 = *(v0 + 296);
      v26 = *(v0 + 232);
      v27 = *(v0 + 40);
      v28 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
      (*(v25 + 16))(v23, v26, v24);
      v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
      v30 = swift_allocObject();
      *(v0 + 480) = v30;
      (*(v25 + 32))(v30 + v29, v23, v24);
      v31 = *(v0 + 40);
      v32 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
      v33 = (*(v32 + 24))(v31, v32);
      v45 = (*(v28 + 96) + **(v28 + 96));
      v34 = swift_task_alloc();
      *(v0 + 488) = v34;
      *v34 = v0;
      v34[1] = sub_1D23B5308;
      v35 = *(v0 + 352);
      v36 = *(v0 + 240);

      return v45(v35, v36, sub_1D23B8050, v30, v33, v27, v28);
    }

    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 392), *(v0 + 320));
    if (qword_1ED8A5B78 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 344);
    v18 = *(v0 + 240);
    v19 = type metadata accessor for ImageGeneration.PreviewImage(0);
    v20 = sub_1D23BF3E8(v17, *(v18 + *(v19 + 20)), v0 + 136);
    if (!*(v0 + 160))
    {
      (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320), v20);
      v14 = &qword_1EC6DA470;
      v15 = &unk_1D2884A40;
      v16 = v0 + 136;
      goto LABEL_17;
    }

    sub_1D227268C((v0 + 136), v0 + 96);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v21);
    (*(v22 + 8))(v21, v22);
    v37 = *(v0 + 360);
    v38 = *(v0 + 368);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    sub_1D23B81C8(v37, v38, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v39 = *(v0 + 400);
    v40 = *(v0 + 368);
    v41 = *(v0 + 280);
    v42 = *(v0 + 264);
    v43 = *(v0 + 272);
    sub_1D23B8100(v40, *(v0 + 256), type metadata accessor for PlaygroundImage);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v43 + 8))(v41, v42);
    *(v0 + 216) = 0;
    sub_1D2878748();
    sub_1D23B8168(v40, type metadata accessor for PlaygroundImage);
    sub_1D22BD238(v39, &unk_1EC6DDE30, &unk_1D2881A80);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {

    sub_1D22BD238(v0 + 56, &qword_1EC6D9A08, &qword_1D287EC40);
    sub_1D23B7B64();
    *(v0 + 200) = swift_allocError();
    sub_1D2878748();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D23B4B8C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = v2[52];
    v4 = v2[53];
    v5 = sub_1D23B5730;
  }

  else
  {
    sub_1D22A576C(v2[54], v2[55]);
    v3 = v2[52];
    v4 = v2[53];
    v5 = sub_1D23B4CA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D23B4CA8()
{
  v1 = *(v0 + 376);
  v2 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v1, &qword_1EC6DA490, &qword_1D2883648);
    v3 = 1;
  }

  else
  {
    (*(*(v0 + 328) + 16))(*(v0 + 400), v1 + *(v2 + 92), *(v0 + 320));
    sub_1D23B8168(v1, type metadata accessor for ImageGeneration.GenerationParameters);
    v3 = 0;
  }

  v4 = *(v0 + 456);
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  v7 = *(v0 + 320);
  v8 = *(v0 + 328);
  (*(v8 + 56))(v6, v3, 1, v7);
  sub_1D22BD1D0(v6, v5, &unk_1EC6DDE30, &unk_1D2881A80);
  v9 = *(v8 + 48);
  *(v0 + 464) = v9;
  *(v0 + 472) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v5, 1, v7) == 1)
  {
    v10 = &unk_1EC6DDE30;
    v11 = &unk_1D2881A80;
    v12 = *(v0 + 392);
LABEL_12:
    sub_1D22BD238(v12, v10, v11);
    v20 = *(v0 + 312);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    v23 = *(v0 + 232);
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
    (*(v22 + 16))(v20, v23, v21);
    v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v0 + 480) = v27;
    (*(v22 + 32))(v27 + v26, v20, v21);
    v28 = *(v0 + 40);
    v29 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v28);
    v30 = (*(v29 + 24))(v28, v29);
    v43 = (*(v25 + 96) + **(v25 + 96));
    v31 = swift_task_alloc();
    *(v0 + 488) = v31;
    *v31 = v0;
    v31[1] = sub_1D23B5308;
    v32 = *(v0 + 352);
    v33 = *(v0 + 240);

    return v43(v32, v33, sub_1D23B8050, v27, v30, v24, v25);
  }

  (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 392), *(v0 + 320));
  if (qword_1ED8A5B78 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 344);
  v14 = *(v0 + 240);
  v15 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v16 = sub_1D23BF3E8(v13, *(v14 + *(v15 + 20)), v0 + 136);
  if (!*(v0 + 160))
  {
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320), v16);
    v10 = &qword_1EC6DA470;
    v11 = &unk_1D2884A40;
    v12 = v0 + 136;
    goto LABEL_12;
  }

  sub_1D227268C((v0 + 136), v0 + 96);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v17);
  (*(v18 + 8))(v17, v18);
  if (v4)
  {
    v19 = *(v0 + 400);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    sub_1D22BD238(v19, &unk_1EC6DDE30, &unk_1D2881A80);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    *(v0 + 208) = v4;
    sub_1D2878748();
  }

  else
  {
    v35 = *(v0 + 360);
    v36 = *(v0 + 368);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    sub_1D23B81C8(v35, v36, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v37 = *(v0 + 400);
    v38 = *(v0 + 368);
    v39 = *(v0 + 280);
    v40 = *(v0 + 264);
    v41 = *(v0 + 272);
    sub_1D23B8100(v38, *(v0 + 256), type metadata accessor for PlaygroundImage);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v41 + 8))(v39, v40);
    *(v0 + 216) = 0;
    sub_1D2878748();
    sub_1D23B8168(v38, type metadata accessor for PlaygroundImage);
    sub_1D22BD238(v37, &unk_1EC6DDE30, &unk_1D2881A80);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1D23B5308()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_1D23B5860;
  }

  else
  {
    v5 = sub_1D23B545C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23B545C()
{
  v1 = v0[58];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[40];

  sub_1D22BD1D0(v2, v3, &unk_1EC6DDE30, &unk_1D2881A80);
  if (v1(v3, 1, v4) == 1)
  {
    sub_1D22BD238(v0[48], &unk_1EC6DDE30, &unk_1D2881A80);
  }

  else
  {
    (*(v0[41] + 32))(v0[42], v0[48], v0[40]);
    if (qword_1ED8A5B78 != -1)
    {
      swift_once();
    }

    v5 = v0[44];
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[40];
    v9 = v0[30];
    v10 = type metadata accessor for ImageGeneration.PreviewImage(0);
    sub_1D23BFB90(v5, *(v9 + *(v10 + 20)), v6);
    (*(v7 + 8))(v6, v8);
  }

  sub_1D23B81C8(v0[44], v0[46], type metadata accessor for PlaygroundImage);
  v11 = v0[50];
  v12 = v0[46];
  v13 = v0[35];
  v14 = v0[33];
  v15 = v0[34];
  sub_1D23B8100(v12, v0[32], type metadata accessor for PlaygroundImage);
  swift_storeEnumTagMultiPayload();
  sub_1D2878738();
  (*(v15 + 8))(v13, v14);
  v0[27] = 0;
  sub_1D2878748();
  sub_1D23B8168(v12, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v11, &unk_1EC6DDE30, &unk_1D2881A80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D23B5730()
{
  v1 = v0[54];
  v2 = v0[55];

  sub_1D22A576C(v1, v2);
  v0[26] = v0[57];
  sub_1D2878748();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D23B5860()
{
  v1 = v0[50];

  sub_1D22BD238(v1, &unk_1EC6DDE30, &unk_1D2881A80);
  v0[26] = v0[62];
  sub_1D2878748();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D23B5998(uint64_t a1)
{
  v2 = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA790, &qword_1D2883FA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  *v4 = *a1;
  *(v4 + 1) = v10;
  LOBYTE(a1) = *(a1 + 16);
  v4[16] = a1;
  swift_storeEnumTagMultiPayload();
  sub_1D233E72C(v9, v10, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780, &qword_1D2883F88);
  sub_1D2878738();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D23B5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v7 + 16))(&v13 - v9, a1, v6, v8);
  LODWORD(a1) = (*(v7 + 88))(v10, v6);
  v11 = *MEMORY[0x1E69E8760];
  result = (*(v7 + 8))(v10, v6);
  if (a1 == v11)
  {
    sub_1D28786B8();
    return sub_1D23B259C();
  }

  return result;
}

uint64_t sub_1D23B5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23B5D00, v6, v5);
}

uint64_t sub_1D23B5D00()
{

  sub_1D23B3A78();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1D23B5D64(uint64_t a1)
{
  v1 = sub_1D23B7984();
  v2 = *(v1 + 16);
  sub_1D2870F68();
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D23D81F8(0, v2, 0);
    v3 = v27;
    v4 = v1 + 32;
    do
    {
      sub_1D22D7044(v4, v24);
      v5 = v25;
      v6 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v7 = (*(v6 + 16))(v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v27 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D23D81F8((v8 > 1), v9 + 1, 1);
        v3 = v27;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);

    v11 = *(v3 + 16);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_25:
    v13 = MEMORY[0x1E69E7CC0];
LABEL_26:

    return v13;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_7:
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v12 < *(v3 + 16))
  {
    v14 = *(v3 + 32 + 8 * v12);
    v15 = *(v14 + 16);
    v16 = v13[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    sub_1D2870F68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v13[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v13 = sub_1D27CC780(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      if (*(v14 + 16))
      {
LABEL_20:
        v20 = (v13[3] >> 1) - v13[2];
        result = sub_1D2872008();
        if (v20 < v15)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v21 = v13[2];
          v22 = __OFADD__(v21, v15);
          v23 = v21 + v15;
          if (v22)
          {
            goto LABEL_31;
          }

          v13[2] = v23;
        }

        goto LABEL_9;
      }
    }

    if (v15)
    {
      goto LABEL_29;
    }

LABEL_9:
    if (v11 == ++v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D23B5FEC()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1D23B3A78();
  *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) = MEMORY[0x1E69E7CC0];

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D23B7AF4(v11, v0 + v5);
  swift_endAccess();
  sub_1D2872648();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A08();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "Purged ImageGenerator instances", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D23B6184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_1D2878568();
  v5[17] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[18] = v7;
  v5[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D23B621C, v7, v6);
}

uint64_t sub_1D23B621C(uint64_t a1)
{
  v2 = sub_1D2673418();
  v4 = sub_1D2398D44(v2, v3, 0);

  v6 = 0;
  if (v4)
  {
    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = 1;
    }
  }

  v7 = *(v1 + 120);
  v8 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D22BD1D0(v7 + v8, v1 + 56, &qword_1EC6D9A08, &qword_1D287EC40);
  if (*(v1 + 80))
  {
    sub_1D227268C((v1 + 56), v1 + 16);
  }

  else
  {
    sub_1D22BD238(v1 + 56, &qword_1EC6D9A08, &qword_1D287EC40);
    result = sub_1D23B7984();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D22D7044(result + 32, v1 + 16);
  }

  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v10);
  v14 = (*(v11 + 160) + **(v11 + 160));
  v12 = swift_task_alloc();
  *(v1 + 160) = v12;
  *v12 = v1;
  v12[1] = sub_1D23B6424;
  v13 = *(v1 + 128);

  return v14(v13, v6, v10, v11);
}

uint64_t sub_1D23B6424()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D23B6544, v3, v2);
}

uint64_t sub_1D23B6544()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23B65AC()
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](0);
  return sub_1D2879828();
}

uint64_t sub_1D23B65F0()
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](0);
  return sub_1D2879828();
}

uint64_t sub_1D23B6630()
{

  sub_1D22A576C(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  v2 = sub_1D2871818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator, &qword_1EC6D9A08, &qword_1D287EC40);

  return v0;
}

uint64_t sub_1D23B671C()
{
  sub_1D23B6630();

  return swift_deallocClassInstance();
}

uint64_t _s7ManagerCMa(uint64_t a1)
{
  result = qword_1ED8A5CE0;
  if (!qword_1ED8A5CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D23B67C8(uint64_t a1)
{
  result = sub_1D2871818();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D23B68C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1D2871818() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D22BDFF8;

  return sub_1D23B3224(a1, v13, v14, v1 + v6, v1 + v9, v15, v1 + v12);
}

unint64_t sub_1D23B6AAC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1D38A3540](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1D38A3540](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D23B6B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Bubble(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D28797D8();
  sub_1D2846EE0();
  sub_1D2877F38();

  v10 = sub_1D2879828();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D23B8100(*(v9 + 48) + v14 * v12, v8, type metadata accessor for Bubble);
      v15 = sub_1D2849278(v8, a1);
      sub_1D23B8168(v8, type metadata accessor for Bubble);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D25B792C();
      v19 = v24;
    }

    a2 = v23;
    sub_1D23B81C8(*(v19 + 48) + v14 * v12, v23, type metadata accessor for Bubble);
    sub_1D23B7008(v12);
    v16 = 0;
    *v17 = v24;
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1D23B6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D2871818();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D23B75AC(&qword_1ED8A6CB0, MEMORY[0x1E69695B8]);
  v32 = a1;
  v10 = sub_1D2877EF8();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
      v19 = sub_1D2877F98();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D25B7904(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    sub_1D23B72B4(v13);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_1D23B7008(int64_t a1)
{
  v21 = type metadata accessor for Bubble(0);
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;
    sub_1D2870F78();
    v11 = sub_1D28790A8();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      while (1)
      {
        v14 = v13 * v9;
        sub_1D23B8100(*(v6 + 48) + v13 * v9, v5, type metadata accessor for Bubble);
        sub_1D28797D8();
        sub_1D2846EE0();
        sub_1D2877F38();

        v15 = sub_1D2879828();
        sub_1D23B8168(v5, type metadata accessor for Bubble);
        v16 = v15 & v10;
        if (a1 >= v12)
        {
          break;
        }

        if (v16 < v12)
        {
          goto LABEL_11;
        }

LABEL_12:
        v17 = v13 * a1;
        if (v13 * a1 < v14 || *(v6 + 48) + v13 * a1 >= (*(v6 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v9;
          if (v17 == v14)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v9;
LABEL_6:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v16 < v12)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v16)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v6 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v20;
    ++*(v6 + 36);
  }
}

void sub_1D23B72B4(int64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    sub_1D2870F78();
    v12 = sub_1D28790A8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_1D23B75AC(&qword_1ED8A6CB0, MEMORY[0x1E69695B8]);
        v23 = sub_1D2877EF8();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_1D23B75AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D2871818();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D23B75F0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D2871818();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1 + v5;
  v10 = *(v1 + v5);
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1D22BDFF8;

  return sub_1D239FA58(a1, v6, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t sub_1D23B77BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D23B5C68(a1, v4, v5, v6);
}

unint64_t sub_1D23B78C0()
{
  result = qword_1EC6DA768;
  if (!qword_1EC6DA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA768);
  }

  return result;
}

uint64_t sub_1D23B7914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490, &qword_1D2883648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23B7984()
{
  result = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__testGenerators);
  if (!*(result + 16))
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v2 = sub_1D23CCC6C();
    v4 = sub_1D23B9618(v2, v3);
    if (v4 == 6)
    {
      if (sub_1D27D8C8C())
      {
        v5 = &unk_1F4DBCC10;
      }

      else
      {
        v5 = &unk_1F4DBCBE8;
      }
    }

    else
    {
      v6 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA798, &qword_1D2883FB8);
      v5 = swift_allocObject();
      v5[1] = xmmword_1D287F500;
      *(v5 + 32) = v6;
    }

    v7 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators;
    if (!*(*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) + 16) || (v8 = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generatorSources), sub_1D2870F68(), v9 = sub_1D2337CF8(v5, v8), , (v9 & 1) == 0))
    {
      *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generatorSources) = v5;

      *(v0 + v7) = sub_1D23B9664(*(v0 + 16), *(v0 + 56));
    }

    return *(v0 + v7);
  }

  return result;
}

uint64_t sub_1D23B7AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A08, &qword_1D287EC40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D23B7B64()
{
  result = qword_1EC6DA770;
  if (!qword_1EC6DA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA770);
  }

  return result;
}

unint64_t sub_1D23B7BB8()
{
  result = qword_1ED89CDA0;
  if (!qword_1ED89CDA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CDA0);
  }

  return result;
}

uint64_t sub_1D23B7C04(float a1)
{
  v3 = *(sub_1D2871818() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_1D23B1FC8(v1 + v4, v7, v8, a1);
}

uint64_t sub_1D23B7D24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D23B7D3C(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1D23B7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_1D2870F68();
    sub_1D2870F68();
  }

  return sub_1D2870F68();
}

uint64_t sub_1D23B7D88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D23B7DA0(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1D23B7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }
}

uint64_t sub_1D23B7DF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780, &qword_1D2883F88) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D23B415C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_25Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_41Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1D23B8078(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1D23B8100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23B8168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D23B81C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1D23B8230@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1D23B8298()
{
  result = qword_1EC6DA7A0;
  if (!qword_1EC6DA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7A0);
  }

  return result;
}

unint64_t sub_1D23B82F0()
{
  result = qword_1EC6DA7A8;
  if (!qword_1EC6DA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7A8);
  }

  return result;
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.checkLexiconValidity(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BDFF8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.checkEmojiValidity(of:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D22BDFF8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.assignConfiguration()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.rewriteConfiguration()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.generatePreviewImages(progressHandler:retryErrorHandler:retryCount:previewIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 88) + **(a8 + 88));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D23B89C0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D23B89C0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.generateFinalImage(from:retryErrorHandler:retryCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 96) + **(a7 + 96));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D22BC8FC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.acquireModelManagerPolicyAssertion()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.releaseModelManagerPolicyAssertion()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ImageGeneration.ImageGenerator.prewarmGenerator(for:hasCachedImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 160) + **(a4 + 160));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BC8FC;

  return v11(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for GenerativePlaygroundProvider.PlaygroundType(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativePlaygroundProvider.PlaygroundType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D23B9130()
{
  result = qword_1EC6DA7B0;
  if (!qword_1EC6DA7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA7B8, qword_1D28841A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7B0);
  }

  return result;
}

uint64_t sub_1D23B9194(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1D2878568();
  *(v1 + 24) = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23B9E24, v3, v2);
}

uint64_t sub_1D23B9240(uint64_t a1)
{
  sub_1D2877F38();
}

unint64_t sub_1D23B932C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D23B9618(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D23B935C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6369766544206E4FLL;
  v5 = 0xE600000000000000;
  v6 = 0x70756B636F4DLL;
  v7 = 0xE600000000000000;
  v8 = 0x646574746556;
  if (v2 != 4)
  {
    v8 = 1869440324;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001D28AE710;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x726576726553;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1D23B9424()
{
  result = qword_1EC6DA7C0;
  if (!qword_1EC6DA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7C0);
  }

  return result;
}

void sub_1D23B9478(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1D2870F78();
  v4 = a2;
  v3();
}

uint64_t sub_1D23B94E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1D2878568();
  *(v1 + 24) = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23B9578, v3, v2);
}

uint64_t sub_1D23B9578()
{
  v1 = *(v0 + 16);

  v2 = sub_1D2872908();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1D23B9618(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2879488();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D23B9664(uint64_t a1, int a2)
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v4 = sub_1D23CCC6C();
  v6 = sub_1D23B9618(v4, v5);
  if (v6 != 6)
  {
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA798, &qword_1D2883FB8);
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_1D287F500;
    v8[32] = v12;
    v10 = 1;
LABEL_12:
    v64 = MEMORY[0x1E69E7CC0];
    sub_1D23D8568(0, v10, 0);
    v11 = v64;
    v52 = &v56;
    v13 = 32;
    v54 = a2;
    v53 = v8;
    while (1)
    {
      v14 = v8[v13];
      if (v14 > 2)
      {
        if (v14 == 3)
        {
          v36 = type metadata accessor for ExternalProviderInfoManager();
          swift_beginAccess();
          v37 = *(a1 + 16);
          if (*(v37 + 16) && (v38 = sub_1D25D0574(v36), (v39 & 1) != 0))
          {
            sub_1D22D7044(*(v37 + 56) + 40 * v38, &v61);
            sub_1D227268C(&v61, &aBlock);
            swift_endAccess();
            sub_1D227268C(&aBlock, &v61);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
            swift_dynamicCast();
            v40 = v60;
          }

          else
          {
            swift_endAccess();
            swift_allocObject();
            v43 = sub_1D2870F78();
            v40 = sub_1D274E960(v43);
            v57 = v36;
            v58 = &off_1F4DD2C30;
            *&aBlock = v40;
            swift_beginAccess();
            sub_1D2870F78();
            sub_1D25CDC34(&aBlock, v36);
            swift_endAccess();
          }

          v44 = _s20MockupImageGeneratorCMa();
          v45 = swift_allocObject();
          *(v45 + 16) = 0;
          *(v45 + 24) = v40;
          v62 = v44;
          v63 = off_1F4DCA2D8;
          *&v61 = v45;
          goto LABEL_28;
        }

        if (v14 == 4)
        {
          v32 = _s20VettedImageGeneratorCMa();
          v33 = swift_allocObject();
          *(v33 + 16) = 0;
          v34 = &off_1F4DC9CF8;
        }

        else
        {
          v32 = _s18DemoImageGeneratorCMa();
          v33 = swift_allocObject();
          *(v33 + 16) = 0;
          *(v33 + 32) = 0;
          *(v33 + 40) = 0;
          *(v33 + 24) = 0;
          v34 = &off_1F4DC9E40;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = sub_1D23C6B54();
          v16 = sub_1D23C7448();
          v17 = _s30ExternalProviderImageGeneratorCMa(0);
          v18 = swift_allocObject();
          *(v18 + 16) = "ConfigToFirstImage";
          *(v18 + 24) = 18;
          *(v18 + 32) = 2;
          *(v18 + 40) = 0;
          *(v18 + 48) = 0;
          v19 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0, &qword_1D2883660);
          (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
          *(v18 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_shouldCancelUpcomingGeneration) = 0;
          v21 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_externalConfiguration;
          v22 = sub_1D2873728();
          (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
          *(v18 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_session) = 0;
          v23 = (v18 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskIdentifier);
          *v23 = 0xD000000000000040;
          v23[1] = 0x80000001D28B2B70;
          *(v18 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask) = 0;
          v24 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation;
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3360, &qword_1D28842C0);
          (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
          *(v18 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer) = 0;
          *(v18 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_providerInfoManager) = v15;
          *(v18 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_effectProgressDurationEstimator) = v16;
          v26 = objc_opt_self();
          sub_1D2870F78();
          sub_1D2870F78();
          v27 = [v26 mainBundle];
          v28 = [v27 bundleIdentifier];

          if (v28)
          {
            v29 = sub_1D28780A8();
            v31 = v30;

            if (v29 == 0xD000000000000021 && 0x80000001D28B0980 == v31)
            {

LABEL_35:
              if ((byte_1ED8A63E0 & 1) == 0)
              {
                byte_1ED8A63E0 = 1;
                v47 = [objc_opt_self() sharedScheduler];
                v48 = sub_1D2878068();
                v49 = swift_allocObject();
                swift_weakInit();
                v58 = sub_1D23B9E04;
                v59 = v49;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                v56 = sub_1D23B9478;
                v57 = &block_descriptor_5;
                v50 = _Block_copy(&aBlock);

                [v47 registerForTaskWithIdentifier:v48 usingQueue:0 launchHandler:v50];
                _Block_release(v50);
              }
            }

            else
            {
              v46 = sub_1D2879618();

              if (v46)
              {
                goto LABEL_35;
              }
            }
          }

          v62 = v17;
          v63 = &off_1F4DD8820;

          *&v61 = v18;
          a2 = v54;
          v8 = v53;
          goto LABEL_28;
        }

        v32 = _s22OnDeviceImageGeneratorCMa(0);
        swift_allocObject();
        v35 = sub_1D2870F78();
        v33 = sub_1D235F244(v35, a2);
        v34 = &off_1F4DC17A8;
      }

      v62 = v32;
      v63 = v34;
      *&v61 = v33;
LABEL_28:
      sub_1D227268C(&v61, &aBlock);
      v64 = v11;
      v42 = *(v11 + 16);
      v41 = *(v11 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D23D8568((v41 > 1), v42 + 1, 1);
        v11 = v64;
      }

      *(v11 + 16) = v42 + 1;
      sub_1D227268C(&aBlock, v11 + 40 * v42 + 32);
      ++v13;
      if (!--v10)
      {

        return v11;
      }
    }
  }

  v7 = sub_1D27D8C8C();
  if (v7)
  {
    v8 = &unk_1F4DBCC10;
  }

  else
  {
    v8 = &unk_1F4DBCBE8;
  }

  v9 = &unk_1F4DBCBF8;
  if (v7)
  {
    v9 = &unk_1F4DBCC20;
  }

  v10 = *v9;
  if (*v9)
  {
    goto LABEL_12;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D23B9E3C()
{
  result = qword_1EC6DA7C8;
  if (!qword_1EC6DA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA7C8);
  }

  return result;
}

unsigned __int8 *sub_1D23B9E90(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v8 = sub_1D2878A58();
  v9 = sub_1D2878068();
  v10 = [v8 BOOLForKey_];

  if (!v10)
  {
    return 0;
  }

  result = sub_1D23BA5E8(a1);
  if (!result)
  {
    return result;
  }

  if (*(result + 2) <= a2)
  {

    return 0;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D23BED14(&result[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2], v7, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);

    v12 = *&v7[*(v4 + 20)];
    sub_1D23BEDE4(v7, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
    return v12;
  }

  return result;
}

uint64_t sub_1D23BA074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset(0);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v16 = sub_1D2878A58();
  v17 = sub_1D2878068();
  v18 = [v16 BOOLForKey_];

  if (v18)
  {
    v19 = sub_1D2872438();
    (*(*(v19 - 8) + 16))(v15, a2, v19);
    *&v15[*(v8 + 20)] = a1;
    *&v15[*(v8 + 24)] = a3;
    v20 = swift_beginAccess();
    v21 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v20);
    *(&v31 - 2) = a2;
    *(&v31 - 1) = a3;
    sub_1D2870F68();
    v22 = sub_1D25A6260(sub_1D23BECF8, (&v31 - 4), v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      swift_beginAccess();
      sub_1D23BBE58(v22, v12);
      swift_endAccess();
      sub_1D23BEDE4(v12, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    }

    v25 = v32;
    sub_1D23BED14(v15, v32, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    swift_beginAccess();
    v26 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1D27CCE50(0, v26[2] + 1, 1, v26);
      *(v4 + 16) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1D27CCE50((v28 > 1), v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    sub_1D23BED7C(v25, v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    *(v4 + 16) = v26;
    swift_endAccess();
    return sub_1D23BEDE4(v15, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
  }

  else
  {
    swift_beginAccess();
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
  }
}

void *ImagePredictableSeed.__allocating_init(servicesFetcher:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v1[2] = MEMORY[0x1E69E7CC0];

  v1[3] = 0x6174636964657250;
  v1[4] = 0xEF64656553656C62;
  v1[5] = 0xD000000000000021;
  v1[6] = 0x80000001D28B2BE0;
  v1[7] = 0x657069636572;
  v1[8] = 0xE600000000000000;
  v1[9] = 45;
  v1[10] = 0xE100000000000000;
  return v1;
}

void *sub_1D23BA4F4()
{
  type metadata accessor for ImagePredictableSeed();
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = 0x6174636964657250;
  result[4] = 0xEF64656553656C62;
  result[5] = 0xD000000000000021;
  result[6] = 0x80000001D28B2BE0;
  result[7] = 0x657069636572;
  result[8] = 0xE600000000000000;
  result[9] = 45;
  result[10] = 0xE100000000000000;
  qword_1EC6DA7D0 = result;
  return result;
}

uint64_t static ImagePredictableSeed.deprecated_shared.getter()
{
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  return sub_1D2870F78();
}

unsigned __int8 *sub_1D23BA5E8(unsigned __int8 *a1)
{
  v174 = a1;
  v159 = sub_1D2873CB8();
  v165 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v163 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v148 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v147 = &v130 - v5;
  v150 = sub_1D2872438();
  *&v164 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8, &unk_1D2884460);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v152 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v162 = &v130 - v13;
  v168 = sub_1D2871528();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v175 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1D2873AA8();
  v173 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v16 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1D2871538();
  v17 = *(v172 - 1);
  MEMORY[0x1EEE9AC00](v172);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v166 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v130 - v23;
  v25 = sub_1D28716B8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v160 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v169 = &v130 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v130 - v34;
  sub_1D28710A8();
  swift_allocObject();
  v177 = sub_1D2871098();
  v151 = v1;
  sub_1D23BD268();
  v170 = *(v26 + 56);
  v171 = v26 + 56;
  v170(v24, 1, 1, v25);
  (*(v17 + 104))(v19, *MEMORY[0x1E6968F70], v172);
  sub_1D2871688();
  sub_1D2872348();
  sub_1D2873A78();
  sub_1D28715D8();

  v36 = v173;
  v37 = *(v173 + 8);
  v156 = v16;
  v37(v16, v176);
  v38 = v26;
  v40 = v26 + 8;
  v39 = *(v26 + 8);
  v153 = v32;
  v41 = v32;
  v42 = v35;
  v39(v41, v25);
  v43 = [objc_opt_self() defaultManager];
  v44 = sub_1D28789D8();

  if (!v44)
  {
    v39(v42, v25);

    return 0;
  }

  v161 = v42;
  v45 = v175;
  v172 = v44;
  sub_1D28789B8();
  v46 = v45;
  sub_1D2871518();
  if (!v182)
  {
    v174 = MEMORY[0x1E69E7CC0];
LABEL_109:

    (*(v167 + 8))(v46, v168);
    v39(v161, v25);
    result = v174;
    if (*(v174 + 2))
    {
      return result;
    }

    return 0;
  }

  v138 = v37;
  v139 = v36 + 8;
  v157 = 0;
  v144 = (v38 + 32);
  v141 = (v36 + 56);
  v140 = (v36 + 48);
  v137 = (v36 + 32);
  v136 = &v180 + 1;
  v143 = (v38 + 16);
  v142 = (v165 + 8);
  v135 = (v164 + 16);
  v134 = (v164 + 8);
  v174 = MEMORY[0x1E69E7CC0];
  *&v47 = 136315394;
  v164 = v47;
  v48 = v169;
  v49 = v170;
  v50 = v166;
  while ((swift_dynamicCast() & 1) == 0)
  {
    v49(v50, 1, 1, v25);
    sub_1D22BD238(v50, &qword_1EC6DA1B8, &qword_1D2884470);
LABEL_6:
    sub_1D2871518();
    if (!v182)
    {
      goto LABEL_109;
    }
  }

  v165 = v39;
  v173 = v40;
  v49(v50, 0, 1, v25);
  (*v144)(v48, v50, v25);
  v51 = v157;
  v52 = sub_1D28716C8();
  if (v51)
  {
LABEL_9:
    v54 = v51;
    v157 = 0;
    v55 = v160;
    v56 = v163;
    sub_1D28725C8();
    (*v143)(v55, v48, v25);
    v57 = v54;
    v58 = sub_1D2873CA8();
    v59 = sub_1D2878A18();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v55;
      v62 = swift_slowAlloc();
      v180 = v62;
      *v60 = v164;
      v63 = sub_1D2871558();
      v65 = v64;
      v39 = v165;
      v165(v61, v25);
      v66 = v63;
      v48 = v169;
      v67 = sub_1D23D7C84(v66, v65, &v180);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2080;
      swift_getErrorValue();
      v68 = sub_1D2879748();
      v70 = sub_1D23D7C84(v68, v69, &v180);

      *(v60 + 14) = v70;
      v50 = v166;
      _os_log_impl(&dword_1D226E000, v58, v59, "Unable to load assets for recipe at url: %s withe error: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v62, -1, -1);
      MEMORY[0x1D38A3520](v60, -1, -1);

      v40 = v173;
      (*v142)(v163, v159);
    }

    else
    {

      v40 = v173;
      v39 = v165;
      v165(v55, v25);
      (*v142)(v56, v159);
    }

    goto LABEL_15;
  }

  v133 = v52;
  v132 = v53;
  v157 = 0;
  sub_1D2871548();
  sub_1D2873A18();
  v71 = v162;
  sub_1D28739F8();
  v72 = v153;
  sub_1D28715C8();
  v73 = sub_1D2871598();
  v75 = v74;
  v165(v72, v25);
  v76 = v158;
  sub_1D2873A48();
  v77 = v176;
  (*v141)(v76, 0, 1, v176);
  v78 = *(v155 + 48);
  v79 = v154;
  sub_1D23BDC8C(v71, v154);
  sub_1D23BDC8C(v76, v79 + v78);
  v80 = *v140;
  if ((*v140)(v79, 1, v77) == 1)
  {
    v131 = v73;
    sub_1D22BD238(v76, &qword_1EC6DAE70, &qword_1D2881A90);
    if (v80(v79 + v78, 1, v77) == 1)
    {
      sub_1D22BD238(v79, &qword_1EC6DAE70, &qword_1D2881A90);
      v48 = v169;
      goto LABEL_23;
    }

    sub_1D22D6D60(v133, v132);
    v48 = v169;
    goto LABEL_20;
  }

  v81 = v152;
  sub_1D23BDC8C(v79, v152);
  if (v80(v79 + v78, 1, v77) == 1)
  {

    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v158, &qword_1EC6DAE70, &qword_1D2881A90);
    v138(v81, v77);
    v48 = v169;
LABEL_20:
    sub_1D22BD238(v79, &qword_1EC6DA7E8, &unk_1D2884460);
LABEL_21:
    v46 = v175;
    v49 = v170;
    v40 = v173;
    v39 = v165;
    sub_1D22BD238(v162, &qword_1EC6DAE70, &qword_1D2881A90);
    v39(v48, v25);
    goto LABEL_6;
  }

  v131 = v73;
  v82 = v156;
  (*v137)(v156, v79 + v78, v77);
  sub_1D23BF018(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
  v83 = sub_1D2877F98();
  v84 = v138;
  v138(v82, v77);
  sub_1D22BD238(v158, &qword_1EC6DAE70, &qword_1D2881A90);
  v84(v81, v77);
  v50 = v166;
  sub_1D22BD238(v79, &qword_1EC6DAE70, &qword_1D2881A90);
  v48 = v169;
  if ((v83 & 1) == 0)
  {

    sub_1D22D6D60(v133, v132);
    goto LABEL_21;
  }

LABEL_23:
  v85 = v131;
  v180 = v131;
  v181 = v75;
  v86 = v151;
  v87 = *(v151 + 64);
  v178 = *(v151 + 56);
  v179 = v87;
  sub_1D22BD06C();
  if ((sub_1D2878FF8() & 1) == 0)
  {

    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v162, &qword_1EC6DAE70, &qword_1D2881A90);
    v40 = v173;
    v39 = v165;
    v165(v48, v25);
    goto LABEL_16;
  }

  v180 = v85;
  v181 = v75;
  v88 = *(v86 + 80);
  v178 = *(v86 + 72);
  v179 = v88;
  v89 = sub_1D2878F58();

  v90 = *(v89 + 16);
  if (!v90)
  {

    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v162, &qword_1EC6DAE70, &qword_1D2881A90);
    v40 = v173;
    v39 = v165;
    v165(v48, v25);
LABEL_47:
    v46 = v175;
    v49 = v170;
    v50 = v166;
    goto LABEL_6;
  }

  v91 = (v89 + 16 + 16 * v90);
  v93 = *v91;
  v92 = v91[1];
  sub_1D2870F68();

  v95 = HIBYTE(v92) & 0xF;
  v96 = v93 & 0xFFFFFFFFFFFFLL;
  if ((v92 & 0x2000000000000000) != 0)
  {
    v97 = HIBYTE(v92) & 0xF;
  }

  else
  {
    v97 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (!v97)
  {
    sub_1D22D6D60(v133, v132);
    sub_1D22BD238(v162, &qword_1EC6DAE70, &qword_1D2881A90);
    v40 = v173;
    v39 = v165;
    v165(v48, v25);

    goto LABEL_47;
  }

  v50 = v166;
  if ((v92 & 0x1000000000000000) != 0)
  {
    v131 = sub_1D23BDD70(v93, v92, 10);
    v120 = v119;

    v40 = v173;
    v39 = v165;
    if (v120)
    {
      goto LABEL_92;
    }

    goto LABEL_98;
  }

  v40 = v173;
  v39 = v165;
  if ((v92 & 0x2000000000000000) == 0)
  {
    if ((v93 & 0x1000000000000000) != 0)
    {
      result = ((v92 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D2879208();
    }

    v98 = *result;
    if (v98 == 43)
    {
      if (v96 < 1)
      {
        goto LABEL_116;
      }

      v95 = v96 - 1;
      if (v96 == 1)
      {
        goto LABEL_89;
      }

      v99 = 0;
      if (result)
      {
        v106 = result + 1;
        while (1)
        {
          v107 = *v106 - 48;
          if (v107 > 9)
          {
            goto LABEL_89;
          }

          v108 = 10 * v99;
          if ((v99 * 10) >> 64 != (10 * v99) >> 63)
          {
            goto LABEL_89;
          }

          v99 = v108 + v107;
          if (__OFADD__(v108, v107))
          {
            goto LABEL_89;
          }

          ++v106;
          if (!--v95)
          {
            goto LABEL_90;
          }
        }
      }

LABEL_93:
      LOBYTE(v95) = 0;
      goto LABEL_90;
    }

    if (v98 == 45)
    {
      if (v96 < 1)
      {
        goto LABEL_115;
      }

      v95 = v96 - 1;
      if (v96 == 1)
      {
        goto LABEL_89;
      }

      v99 = 0;
      if (result)
      {
        v100 = result + 1;
        while (1)
        {
          v101 = *v100 - 48;
          if (v101 > 9)
          {
            break;
          }

          v102 = 10 * v99;
          if ((v99 * 10) >> 64 != (10 * v99) >> 63)
          {
            break;
          }

          v99 = v102 - v101;
          if (__OFSUB__(v102, v101))
          {
            break;
          }

          ++v100;
          if (!--v95)
          {
            goto LABEL_90;
          }
        }

LABEL_89:
        v99 = 0;
        LOBYTE(v95) = 1;
LABEL_90:
        v131 = v99;
        goto LABEL_91;
      }

      goto LABEL_93;
    }

    if (v96)
    {
      v112 = 0;
      if (!result)
      {
LABEL_81:
        LOBYTE(v95) = 0;
LABEL_95:
        v131 = v112;
LABEL_91:
        LOBYTE(v178) = v95;
        v118 = v95;

        if (v118)
        {
LABEL_92:
          sub_1D22D6D60(v133, v132);
          sub_1D22BD238(v162, &qword_1EC6DAE70, &qword_1D2881A90);
LABEL_15:
          v39(v48, v25);
LABEL_16:
          v46 = v175;
          v49 = v170;
          goto LABEL_6;
        }

LABEL_98:
        sub_1D23BF018(&qword_1EC6DA7F0, MEMORY[0x1E696E4A0], MEMORY[0x1E696E4B8]);
        v121 = v149;
        v122 = v150;
        v123 = v132;
        v51 = v157;
        sub_1D2871088();
        if (!v51)
        {
          v124 = v147;
          (*v135)(v147, v121, v122);
          *(v124 + *(v146 + 20)) = v131;
          sub_1D23BED14(v124, v148, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
          v125 = v174;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v157 = 0;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v125 = sub_1D27CCE28(0, *(v125 + 2) + 1, 1, v125);
          }

          v39 = v165;
          v128 = *(v125 + 2);
          v127 = *(v125 + 3);
          if (v128 >= v127 >> 1)
          {
            v174 = sub_1D27CCE28((v127 > 1), v128 + 1, 1, v125);
          }

          else
          {
            v174 = v125;
          }

          sub_1D22D6D60(v133, v132);
          sub_1D23BEDE4(v147, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
          (*v134)(v149, v150);
          sub_1D22BD238(v162, &qword_1EC6DAE70, &qword_1D2881A90);
          v39(v48, v25);
          v129 = v174;
          *(v174 + 2) = v128 + 1;
          sub_1D23BED7C(v148, &v129[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v128], type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
          goto LABEL_16;
        }

        sub_1D22BD238(v162, &qword_1EC6DAE70, &qword_1D2881A90);
        sub_1D22D6D60(v133, v123);
        goto LABEL_9;
      }

      while (1)
      {
        v113 = *result - 48;
        if (v113 > 9)
        {
          break;
        }

        v114 = 10 * v112;
        if ((v112 * 10) >> 64 != (10 * v112) >> 63)
        {
          break;
        }

        v112 = v114 + v113;
        if (__OFADD__(v114, v113))
        {
          break;
        }

        ++result;
        if (!--v96)
        {
          goto LABEL_81;
        }
      }
    }

    v112 = 0;
    LOBYTE(v95) = 1;
    goto LABEL_95;
  }

  v180 = v93;
  v181 = v92 & 0xFFFFFFFFFFFFFFLL;
  if (v93 == 43)
  {
    if (!v95)
    {
      goto LABEL_114;
    }

    if (--v95)
    {
      v99 = 0;
      v109 = v136;
      while (1)
      {
        v110 = *v109 - 48;
        if (v110 > 9)
        {
          break;
        }

        v111 = 10 * v99;
        if ((v99 * 10) >> 64 != (10 * v99) >> 63)
        {
          break;
        }

        v99 = v111 + v110;
        if (__OFADD__(v111, v110))
        {
          break;
        }

        ++v109;
        if (!--v95)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

  if (v93 != 45)
  {
    if (v95)
    {
      v99 = 0;
      v115 = &v180;
      while (1)
      {
        v116 = *v115 - 48;
        if (v116 > 9)
        {
          break;
        }

        v117 = 10 * v99;
        if ((v99 * 10) >> 64 != (10 * v99) >> 63)
        {
          break;
        }

        v99 = v117 + v116;
        if (__OFADD__(v117, v116))
        {
          break;
        }

        v115 = (v115 + 1);
        if (!--v95)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

  if (v95)
  {
    if (--v95)
    {
      v99 = 0;
      v103 = v136;
      while (1)
      {
        v104 = *v103 - 48;
        if (v104 > 9)
        {
          break;
        }

        v105 = 10 * v99;
        if ((v99 * 10) >> 64 != (10 * v99) >> 63)
        {
          break;
        }

        v99 = v105 - v104;
        if (__OFSUB__(v105, v104))
        {
          break;
        }

        ++v103;
        if (!--v95)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_1D23BBD30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BCB8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D23BBDBC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BCCC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1D227268C(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D23BBE58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BD6C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D23BED7C(v11, a2, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D23BBFB4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_1D22EC9BC(v17, a5, a3, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_1D23BC120(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D278F320();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1D23BC1B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D278BE48(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D23BC238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_1D2873CB8();
  v26[1] = *(v5 - 8);
  v26[2] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26[0] = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0);
  MEMORY[0x1EEE9AC00](v7);
  v27 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA830, &qword_1D28844B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v16 = sub_1D2878A58();
  v17 = sub_1D2878068();
  v18 = [v16 BOOLForKey_];

  if (v18)
  {
    v19 = swift_beginAccess();
    v20 = *(v3 + 16);
    MEMORY[0x1EEE9AC00](v19);
    v21 = v28;
    v26[-2] = a1;
    v26[-1] = v21;
    sub_1D2870F68();
    sub_1D274BCF4(sub_1D23BF060, v20, v11);

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1D22BD238(v11, &qword_1EC6DA830, &qword_1D28844B8);
    }

    else
    {
      sub_1D23BED7C(v11, v15, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
      v23 = *&v15[*(v12 + 20)];
      v24 = sub_1D2872438();
      v25 = v27;
      (*(*(v24 - 8) + 16))(v27, v15, v24);
      *(v25 + *(v7 + 20)) = v23;
      sub_1D23BC750(v25);
      sub_1D23BEDE4(v25, type metadata accessor for ImagePredictableSeed.PredictableSeedAsset);
      return sub_1D23BEDE4(v15, type metadata accessor for ImagePredictableSeed.ComposingPredictableSeedAsset);
    }
  }

  else
  {
    swift_beginAccess();
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D23BC750(uint64_t a1)
{
  v60 = a1;
  v2 = v1;
  v65 = *MEMORY[0x1E69E9840];
  v3 = sub_1D2873AA8();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2871538();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_1D28716B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = sub_1D28710C8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1D2871108();
  swift_allocObject();
  v22 = sub_1D28710F8();
  sub_1D28710B8();
  v54 = v22;
  sub_1D28710D8();
  v53 = v2;
  sub_1D23BD268();
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v57 + 104))(v55, *MEMORY[0x1E6968F70], v58);
  sub_1D2871688();
  sub_1D2872348();
  sub_1D2873A78();
  sub_1D28715D8();

  v23 = *(v62 + 8);
  v55 = v6;
  v62 += 8;
  v23(v6, v61);
  v24 = *(v13 + 8);
  v57 = v13 + 8;
  v58 = v12;
  v52 = v24;
  v24(v17, v12);
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  sub_1D2871658();
  v27 = sub_1D2878068();

  LOBYTE(v22) = [v26 directoryExistsAtPath_];

  if ((v22 & 1) == 0)
  {
    v28 = [v25 defaultManager];
    v29 = sub_1D28715B8();
    v63 = 0;
    v30 = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v63];

    if (!v30)
    {
      v51 = v63;
      sub_1D28714B8();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v31 = v63;
  }

  v32 = v53[8];
  v34 = v53[9];
  v33 = v53[10];
  v63 = v53[7];
  v64 = v32;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v34, v33);
  v36 = v63;
  v35 = v64;
  v63 = *(v60 + *(type metadata accessor for ImagePredictableSeed.PredictableSeedAsset(0) + 20));
  v37 = sub_1D28795C8();
  v39 = v38;
  v63 = v36;
  v64 = v35;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v37, v39);

  v40 = v55;
  sub_1D2873A48();
  v41 = v56;
  sub_1D28715D8();

  v23(v40, v61);
  sub_1D2872438();
  sub_1D23BF018(&qword_1EC6DA838, MEMORY[0x1E696E4A0], MEMORY[0x1E696E4A8]);
  v42 = v59;
  v43 = sub_1D28710E8();
  if (!v42)
  {
    v45 = v43;
    v46 = v44;
    sub_1D28716F8();
    sub_1D22D6D60(v45, v46);
  }

  v47 = v41;
  v48 = v58;
  v49 = v52;
  v52(v47, v58);
  return v49(v20, v48);
}

id sub_1D23BCDCC()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v29 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D2871538();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_1D28716B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  sub_1D23BD268();
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_1D2871688();
  v14 = sub_1D28715B8();
  (*(v10 + 8))(v12, v9);
  v32[0] = 0;
  LODWORD(v2) = [v13 removeItemAtURL:v14 error:v32];

  v15 = v32[0];
  if (v2)
  {

    return v15;
  }

  else
  {
    v28[1] = v32[0];
    v17 = v32[0];
    v18 = sub_1D28714B8();

    swift_willThrow();
    v19 = v29;
    sub_1D28725C8();
    v20 = v18;
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_1D2879748();
      v27 = sub_1D23D7C84(v25, v26, v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1D226E000, v21, v22, "Unable to delete stored seeds with error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1D38A3520](v24, -1, -1);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    else
    {
    }

    return (*(v30 + 8))(v19, v31);
  }
}

uint64_t sub_1D23BD268()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = sub_1D28716B8();
  v4 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v31[0] = 0;
  v12 = [v11 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v31];

  v13 = v31[0];
  if (v12)
  {
    sub_1D2871638();
    v14 = v13;

    sub_1D2873A78();
    sub_1D28715D8();
    (*(v1 + 8))(v3, v0);
    v15 = [v10 defaultManager];
    sub_1D2871658();
    v16 = sub_1D2878068();

    v17 = [v15 directoryExistsAtPath_];

    if (v17)
    {
LABEL_5:
      v23 = sub_1D2871658();
      v24 = *(v4 + 8);
      v25 = v6;
      v26 = v30[0];
      v24(v25, v30[0]);
      v24(v9, v26);
      return v23;
    }

    v18 = [v10 defaultManager];
    v19 = sub_1D28715B8();
    v31[0] = 0;
    v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v31];

    v21 = v31[0];
    if (v20)
    {
      v22 = v31[0];
      goto LABEL_5;
    }
  }

  else
  {
    v28 = v31[0];
    v21 = sub_1D28714B8();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  v29 = v21;
  sub_1D28714B8();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1D23BD628(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D2879208();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1D23BDD70(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *ImagePredictableSeed.deinit()
{

  return v0;
}

uint64_t ImagePredictableSeed.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D23BD9F8@<X0>(void *a2@<X8>)
{
  v3 = swift_allocObject();
  v3[2] = MEMORY[0x1E69E7CC0];

  v3[3] = 0x6174636964657250;
  v3[4] = 0xEF64656553656C62;
  v3[5] = 0xD000000000000021;
  v3[6] = 0x80000001D28B2BE0;
  v3[7] = 0x657069636572;
  v3[8] = 0xE600000000000000;
  v3[9] = 45;
  v3[10] = 0xE100000000000000;
  *a2 = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D23BDB00(uint64_t a1, int a2)
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

uint64_t sub_1D23BDB48(uint64_t result, int a2, int a3)
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

uint64_t sub_1D23BDBF0(uint64_t a1)
{
  result = sub_1D2872438();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D23BDC8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D23BDCFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA800, &qword_1D2884478);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1D23BDD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_1D2870F68();
  result = sub_1D28782E8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D23BE880(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D2879208();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1D23BE2FC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;
  sub_1D2870F68();
  result = sub_1D28782E8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D23BE880(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D2879208();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D23BE880(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D28782F8();
  v6 = sub_1D23BE900(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D23BE900(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D2878F28();
    if (!v9 || (v10 = v9, v11 = sub_1D23BDCFC(v9, 0), v12 = sub_1D23BEA58(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1D2870F68(), , v12 == v10))
    {
      v13 = sub_1D2878168();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D2878168();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D2879208();
LABEL_4:

  return sub_1D2878168();
}

unint64_t sub_1D23BEA58(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D23BEC78(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D2878238();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D2879208();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D23BEC78(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D2878218();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1D23BEC78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D2878278();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D38A0CA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D23BED14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23BED7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23BEDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872438();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872438();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D23BEF48(uint64_t a1)
{
  result = sub_1D2872438();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D23BF018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D23BF07C()
{
  type metadata accessor for ImagePredictableOutput();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = xmmword_1D28844C0;
  *(result + 40) = 0x80000001D28B2DA0;
  *(result + 48) = 0xD000000000000021;
  *(result + 56) = 0x80000001D28B2BE0;
  *(result + 64) = 0x657069636572;
  *(result + 72) = 0xE600000000000000;
  strcpy((result + 80), "preview-image");
  *(result + 94) = -4864;
  *(result + 96) = 0x6D692D6C616E6966;
  *(result + 104) = 0xEB00000000656761;
  *(result + 112) = 45;
  *(result + 120) = 0xE100000000000000;
  qword_1ED8B0280 = result;
  return result;
}

void sub_1D23BF14C(void (*a1)(_BYTE *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA898, &unk_1D28845B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v12 = sub_1D2878A58();
  v13 = sub_1D2878068();
  v14 = [v12 BOOLForKey_];

  if (!v14)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  sub_1D23C0D5C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D22BD238(v7, &qword_1EC6DA898, &unk_1D28845B0);
LABEL_11:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return;
  }

  sub_1D23C37BC(v7, v11, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
  v15 = *&v11[*(v8 + 20)];
  if (*(v15 + 16) <= v17)
  {
    sub_1D23C38D4(v11, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
    goto LABEL_11;
  }

  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D22D7044(v15 + 40 * v17 + 32, a3);
    sub_1D23C38D4(v11, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
  }
}

double sub_1D23BF3E8@<D0>(void (*a1)(_BYTE *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v21 = a2;
  v4 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA898, &unk_1D28845B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v14 = sub_1D2878A58();
  v15 = sub_1D2878068();
  v16 = [v14 BOOLForKey_];

  if (!v16)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_1D23C0D5C(v22, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6DA898, &unk_1D28845B0);
  }

  else
  {
    sub_1D23C37BC(v9, v13, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
    v18 = &v13[*(v10 + 24)];
    if (*(v18 + *(v4 + 20)) == v21)
    {
      sub_1D23C386C(v18, v6, type metadata accessor for ImagePredictableOutput.FinalImage);
      *(a3 + 24) = type metadata accessor for PlaygroundImage(0);
      *(a3 + 32) = &protocol witness table for PlaygroundImage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      sub_1D23C37BC(v6, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
      sub_1D23C38D4(v13, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
      return result;
    }

    sub_1D23C38D4(v13, type metadata accessor for ImagePredictableOutput.PredictableOutputAsset);
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1D23BF708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870, &qword_1D2884598);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_1D2872438();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v13 = sub_1D2878A58();
  v14 = sub_1D2878068();
  v15 = [v13 BOOLForKey_];

  v16 = *(v3 + 24);
  if (!v15)
  {
    *(v3 + 24) = 0;
LABEL_14:

    goto LABEL_15;
  }

  if (!v16)
  {
LABEL_13:
    (*(v10 + 16))(v12, a2, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0, &unk_1D2885250);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D287F500;
    sub_1D22D7044(a1, v30 + 32);
    v31 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
    v32 = *(*(v31 - 8) + 56);
    v32(v8, 1, 1, v31);
    type metadata accessor for ImagePredictableOutput.ComposingPredictableOutputAsset(0);
    v33 = swift_allocObject();
    v38 = v8;
    v34 = v3;
    v32((v33 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage), 1, 1, v31);
    (*(v10 + 32))(v33 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v12, v9);
    *(v33 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages) = v30;
    v35 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage;
    swift_beginAccess();
    v36 = v33 + v35;
    v3 = v34;
    sub_1D23C3934(v38, v36);
    swift_endAccess();
    *(v34 + 24) = v33;
    goto LABEL_14;
  }

  sub_1D2870F78();
  if ((sub_1D2872338() & 1) == 0)
  {

    goto LABEL_13;
  }

  v17 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages;
  v18 = *(v16 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages);
  sub_1D22D7044(a1, v39);
  sub_1D2870F68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1D27CCE78(0, v18[2] + 1, 1, v18);
    v42 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1D27CCE78((v20 > 1), v21 + 1, 1, v18);
    v42 = v18;
  }

  v22 = v40;
  v23 = v41;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  sub_1D23C39A4(v21, v27, &v42, v22, v23);
  __swift_destroy_boxed_opaque_existential_0(v39);
  *(v16 + v17) = v18;

LABEL_15:
  *(v3 + 16) = 0;
  return result;
}

uint64_t sub_1D23BFB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v5 = sub_1D2872438();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870, &qword_1D2884598);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v15 = sub_1D2878A58();
  v16 = sub_1D2878068();
  v17 = [v15 BOOLForKey_];

  if (!v17)
  {
    *(v4 + 24) = 0;
    goto LABEL_10;
  }

  sub_1D23C386C(v27, v14, type metadata accessor for PlaygroundImage);
  *&v14[*(v11 + 20)] = v28;
  v18 = *(v4 + 24);
  if (!v18)
  {
LABEL_9:
    v20 = v26;
    (*(v26 + 16))(v7, v29, v5);
    sub_1D23C386C(v14, v10, type metadata accessor for ImagePredictableOutput.FinalImage);
    v21 = *(v12 + 56);
    v21(v10, 0, 1, v11);
    sub_1D23C38D4(v14, type metadata accessor for ImagePredictableOutput.FinalImage);
    type metadata accessor for ImagePredictableOutput.ComposingPredictableOutputAsset(0);
    v22 = swift_allocObject();
    v21((v22 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage), 1, 1, v11);
    (*(v20 + 32))(v22 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v7, v5);
    *(v22 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_previewImages) = MEMORY[0x1E69E7CC0];
    v23 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage;
    swift_beginAccess();
    sub_1D23C3934(v10, v22 + v23);
    swift_endAccess();
    *(v4 + 24) = v22;
    goto LABEL_10;
  }

  sub_1D2870F78();
  if ((sub_1D2872338() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_1D23C37BC(v14, v10, type metadata accessor for ImagePredictableOutput.FinalImage);
  (*(v12 + 56))(v10, 0, 1, v11);
  v19 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage;
  swift_beginAccess();
  sub_1D23C3934(v10, v18 + v19);
  swift_endAccess();
LABEL_10:

  *(v4 + 16) = 0;
  return result;
}

uint64_t sub_1D23BFFB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872438();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA888, &unk_1D28845A0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30, &unk_1D2881A80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v17 = sub_1D2878A58();
  v18 = sub_1D2878068();
  v19 = [v17 BOOLForKey_];

  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = *(v2 + 24);
  if (!v20)
  {
    goto LABEL_11;
  }

  v35 = v6;
  v36 = a1;
  v37 = v2;
  v21 = v40;
  v22 = *(v40 + 16);
  v22(v16, a1, v4);
  v23 = *(v21 + 56);
  v23(v16, 0, 1, v4);
  v22(v13, v20 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v4);
  v23(v13, 0, 1, v4);
  v24 = *(v7 + 48);
  v25 = v39;
  sub_1D22BD1D0(v16, v39, &unk_1EC6DDE30, &unk_1D2881A80);
  sub_1D22BD1D0(v13, v25 + v24, &unk_1EC6DDE30, &unk_1D2881A80);
  v26 = *(v21 + 48);
  if (v26(v25, 1, v4) == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DDE30, &unk_1D2881A80);
    sub_1D22BD238(v16, &unk_1EC6DDE30, &unk_1D2881A80);
    if (v26(v25 + v24, 1, v4) == 1)
    {
      sub_1D22BD238(v25, &unk_1EC6DDE30, &unk_1D2881A80);
LABEL_14:
      v28 = sub_1D23C04E8(v36) ^ 1;
      return v28 & 1;
    }

    goto LABEL_10;
  }

  v27 = v38;
  sub_1D22BD1D0(v25, v38, &unk_1EC6DDE30, &unk_1D2881A80);
  if (v26(v25 + v24, 1, v4) == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DDE30, &unk_1D2881A80);
    sub_1D22BD238(v16, &unk_1EC6DDE30, &unk_1D2881A80);
    (*(v40 + 8))(v27, v4);
LABEL_10:
    sub_1D22BD238(v25, &qword_1EC6DA888, &unk_1D28845A0);
    goto LABEL_11;
  }

  v30 = v40;
  v31 = v25 + v24;
  v32 = v35;
  (*(v40 + 32))(v35, v31, v4);
  sub_1D23C3824(&qword_1EC6DA890, MEMORY[0x1E696E4A0], MEMORY[0x1E696E4B0]);
  v33 = sub_1D2877F98();
  v34 = *(v30 + 8);
  v34(v32, v4);
  sub_1D22BD238(v13, &unk_1EC6DDE30, &unk_1D2881A80);
  sub_1D22BD238(v16, &unk_1EC6DDE30, &unk_1D2881A80);
  v34(v27, v4);
  sub_1D22BD238(v25, &unk_1EC6DDE30, &unk_1D2881A80);
  if (v33)
  {
    goto LABEL_14;
  }

LABEL_11:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D23C04E8(uint64_t a1)
{
  v2 = sub_1D2872438();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA888, &unk_1D28845A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30, &unk_1D2881A80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29[-v11];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v29[-v15];
  v17 = *(v3 + 16);
  v17(&v29[-v15], a1, v2, v14);
  v33 = v3;
  v18 = *(v3 + 56);
  v19 = 1;
  v18(v16, 0, 1, v2);
  v20 = *(v34 + 24);
  if (v20)
  {
    (v17)(v12, v20 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe, v2);
    v19 = 0;
  }

  v18(v12, v19, 1, v2);
  v21 = *(v5 + 48);
  sub_1D22BD1D0(v16, v7, &unk_1EC6DDE30, &unk_1D2881A80);
  sub_1D22BD1D0(v12, &v7[v21], &unk_1EC6DDE30, &unk_1D2881A80);
  v22 = v33;
  v23 = *(v33 + 48);
  if (v23(v7, 1, v2) != 1)
  {
    v24 = v32;
    sub_1D22BD1D0(v7, v32, &unk_1EC6DDE30, &unk_1D2881A80);
    if (v23(&v7[v21], 1, v2) != 1)
    {
      v26 = v24;
      v27 = v31;
      (*(v22 + 32))(v31, &v7[v21], v2);
      sub_1D23C3824(&qword_1EC6DA890, MEMORY[0x1E696E4A0], MEMORY[0x1E696E4B0]);
      v30 = sub_1D2877F98();
      v28 = *(v22 + 8);
      v28(v27, v2);
      sub_1D22BD238(v12, &unk_1EC6DDE30, &unk_1D2881A80);
      sub_1D22BD238(v16, &unk_1EC6DDE30, &unk_1D2881A80);
      v28(v26, v2);
      sub_1D22BD238(v7, &unk_1EC6DDE30, &unk_1D2881A80);
      if (v30)
      {
        return *(v34 + 16);
      }

      return 0;
    }

    sub_1D22BD238(v12, &unk_1EC6DDE30, &unk_1D2881A80);
    sub_1D22BD238(v16, &unk_1EC6DDE30, &unk_1D2881A80);
    (*(v22 + 8))(v24, v2);
LABEL_8:
    sub_1D22BD238(v7, &qword_1EC6DA888, &unk_1D28845A0);
    return 0;
  }

  sub_1D22BD238(v12, &unk_1EC6DDE30, &unk_1D2881A80);
  sub_1D22BD238(v16, &unk_1EC6DDE30, &unk_1D2881A80);
  if (v23(&v7[v21], 1, v2) != 1)
  {
    goto LABEL_8;
  }

  sub_1D22BD238(v7, &unk_1EC6DDE30, &unk_1D2881A80);
  return *(v34 + 16);
}

uint64_t sub_1D23C099C()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = sub_1D28716B8();
  v4 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v31[0] = 0;
  v12 = [v11 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v31];

  v13 = v31[0];
  if (v12)
  {
    sub_1D2871638();
    v14 = v13;

    sub_1D2873A78();
    sub_1D28715D8();
    (*(v1 + 8))(v3, v0);
    v15 = [v10 defaultManager];
    sub_1D2871658();
    v16 = sub_1D2878068();

    v17 = [v15 directoryExistsAtPath_];

    if (v17)
    {
LABEL_5:
      v23 = sub_1D2871658();
      v24 = *(v4 + 8);
      v25 = v6;
      v26 = v30[0];
      v24(v25, v30[0]);
      v24(v9, v26);
      return v23;
    }

    v18 = [v10 defaultManager];
    v19 = sub_1D28715B8();
    v31[0] = 0;
    v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v31];

    v21 = v31[0];
    if (v20)
    {
      v22 = v31[0];
      goto LABEL_5;
    }
  }

  else
  {
    v28 = v31[0];
    v21 = sub_1D28714B8();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  v29 = v21;
  sub_1D28714B8();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D23C0D5C@<X0>(void (*a1)(_BYTE *, uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v264 = a1;
  v265 = a2;
  v244 = sub_1D2873CB8();
  v251 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v253 = &v199[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v262 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
  v268 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v231 = &v199[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v230 = &v199[-v6];
  v271 = sub_1D2872438();
  v269 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v229 = &v199[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v246 = &v199[-v9];
  v221 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v221);
  v222 = &v199[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v225 = sub_1D2872A48();
  v250 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v199[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v224 = &v199[-v13];
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8, &unk_1D2884460);
  MEMORY[0x1EEE9AC00](v248);
  v228 = &v199[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v233 = &v199[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v237 = &v199[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70, &qword_1D2881A90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v234 = &v199[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v232 = &v199[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v227 = &v199[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v238 = &v199[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v236 = &v199[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v241 = &v199[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v254 = &v199[-v32];
  v258 = sub_1D2871528();
  v257 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v267 = &v199[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870, &qword_1D2884598);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v239 = &v199[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v270 = &v199[-v37];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30, &unk_1D2881A80);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v256 = &v199[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v226 = &v199[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v266 = &v199[-v43];
  v44 = sub_1D2873AA8();
  v45 = *(v44 - 8);
  v272 = v44;
  v273 = v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v199[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_1D2871538();
  v263 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v199[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v252 = &v199[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v199[-v54];
  v56 = sub_1D28716B8();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v245 = &v199[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v59);
  v259 = &v199[-v60];
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v199[-v62];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v199[-v65];
  v240 = v2;
  sub_1D23C099C();
  v67 = *(v57 + 56);
  v260 = v57 + 56;
  v261 = v67;
  v67(v55, 1, 1, v56);
  (*(v263 + 104))(v50, *MEMORY[0x1E6968F70], v48);
  sub_1D2871688();
  sub_1D2872348();
  sub_1D2873A78();
  sub_1D28715D8();

  v68 = v273 + 1;
  v69 = v273[1];
  v242 = v47;
  v69(v47, v272);
  *&v249 = v57;
  v72 = *(v57 + 8);
  v71 = v57 + 8;
  v70 = v72;
  v235 = v63;
  v72(v63, v56);
  v73 = [objc_opt_self() defaultManager];
  v74 = sub_1D28789D8();

  if (!v74)
  {
    v70(v66, v56);
LABEL_78:
    v191 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
    return (*(*(v191 - 8) + 56))(v265, 1, 1, v191);
  }

  v255 = v66;
  v264 = v70;
  v263 = v71;
  v75 = v269 + 56;
  v76 = v266;
  v217 = *(v269 + 56);
  v217(v266, 1, 1, v271);
  v77 = v268;
  v78 = *(v268 + 56);
  v216 = v268 + 56;
  v215 = v78;
  (v78)(v270, 1, 1, v262);
  v79 = v267;
  v243 = v74;
  sub_1D28789B8();
  v80 = v79;
  sub_1D2871518();
  v82 = v76;
  if (v279)
  {
    v210 = v75;
    v213 = v69;
    v214 = v68;
    v247 = 0;
    v220 = (v249 + 32);
    v219 = v273 + 7;
    v218 = v273 + 6;
    v211 = v273 + 4;
    v212 = (v273 + 2);
    v209 = (v250 + 2);
    v207 = (v250 + 1);
    v250 = (v249 + 16);
    v273 = MEMORY[0x1E69E7CC0];
    ++v251;
    *&v81 = 136315394;
    v249 = v81;
    v83 = v252;
    v84 = v261;
    v85 = v255;
    while ((swift_dynamicCast() & 1) == 0)
    {
      v84(v83, 1, 1, v56);
      sub_1D22BD238(v83, &qword_1EC6DA1B8, &qword_1D2884470);
LABEL_6:
      sub_1D2871518();
      if (!v279)
      {
        goto LABEL_71;
      }
    }

    v84(v83, 0, 1, v56);
    v86 = v259;
    (*v220)(v259, v83, v56);
    v87 = v247;
    v88 = sub_1D28716C8();
    if (v87)
    {
      v90 = v87;
      v247 = 0;
      v91 = v245;
LABEL_10:
      v92 = v253;
      goto LABEL_11;
    }

    v204 = v88;
    v202 = v89;
    v247 = 0;
    sub_1D2871548();
    sub_1D2873A18();
    v107 = v254;
    sub_1D28739F8();
    v108 = v235;
    sub_1D28715C8();
    v205 = sub_1D2871598();
    v208 = v109;
    v264(v108, v56);
    sub_1D28710A8();
    swift_allocObject();
    v203 = sub_1D2871098();
    v110 = v241;
    sub_1D2873A48();
    v111 = v272;
    v206 = *v219;
    (v206)(v110, 0, 1, v272);
    v112 = *(v248 + 48);
    v113 = v237;
    sub_1D22BD1D0(v107, v237, &qword_1EC6DAE70, &qword_1D2881A90);
    sub_1D22BD1D0(v110, &v113[v112], &qword_1EC6DAE70, &qword_1D2881A90);
    v114 = *v218;
    if ((*v218)(v113, 1, v111) == 1)
    {
      sub_1D22BD238(v110, &qword_1EC6DAE70, &qword_1D2881A90);
      v115 = v114(&v113[v112], 1, v111) == 1;
      v116 = v113;
      v117 = v240;
      if (!v115)
      {
        goto LABEL_23;
      }

      sub_1D22BD238(v116, &qword_1EC6DAE70, &qword_1D2881A90);
      v118 = v205;
    }

    else
    {
      sub_1D22BD1D0(v113, v236, &qword_1EC6DAE70, &qword_1D2881A90);
      if (v114(&v113[v112], 1, v111) == 1)
      {
        sub_1D22BD238(v241, &qword_1EC6DAE70, &qword_1D2881A90);
        v213(v236, v111);
        v116 = v113;
LABEL_23:
        sub_1D22BD238(v116, &qword_1EC6DA7E8, &unk_1D2884460);
        goto LABEL_24;
      }

      v129 = v242;
      (*v211)(v242, &v113[v112], v111);
      sub_1D23C3824(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v130 = v236;
      v131 = sub_1D2877F98();
      v132 = v129;
      v133 = v213;
      v213(v132, v111);
      sub_1D22BD238(v241, &qword_1EC6DAE70, &qword_1D2881A90);
      v133(v130, v111);
      sub_1D22BD238(v113, &qword_1EC6DAE70, &qword_1D2881A90);
      v117 = v240;
      v118 = v205;
      if ((v131 & 1) == 0)
      {
LABEL_24:
        v120 = v114;
        v121 = v238;
        sub_1D2873A48();
        (v206)(v121, 0, 1, v111);
        v122 = *(v248 + 48);
        v123 = v233;
        sub_1D22BD1D0(v254, v233, &qword_1EC6DAE70, &qword_1D2881A90);
        sub_1D22BD1D0(v121, &v123[v122], &qword_1EC6DAE70, &qword_1D2881A90);
        v124 = v120(v123, 1, v111);
        v201 = v120;
        if (v124 == 1)
        {
          sub_1D22BD238(v121, &qword_1EC6DAE70, &qword_1D2881A90);
          if (v120(&v123[v122], 1, v272) == 1)
          {
            sub_1D22BD238(v123, &qword_1EC6DAE70, &qword_1D2881A90);
            v125 = v232;
            v126 = v240;
LABEL_37:
            *&v274 = v205;
            *(&v274 + 1) = v208;
            v144 = v126[11];
            v277 = v126[10];
            v278 = v144;
            sub_1D22BD06C();
            if (sub_1D2878FF8())
            {

              sub_1D23C3824(&qword_1EC6DA880, MEMORY[0x1E69DFCB8], MEMORY[0x1E69DFCC0]);
              v145 = v224;
              v146 = v225;
              v147 = v204;
              v148 = v202;
              v149 = v247;
              sub_1D2871088();
              if (!v149)
              {
                v208 = *v209;
                v208(v223, v145, v146);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v85 = v255;
                v247 = 0;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v273 = sub_1D27CCE78(0, v273[2] + 1, 1, v273);
                }

                v172 = v273[2];
                v171 = v273[3];
                v206 = v172 + 1;
                if (v172 >= v171 >> 1)
                {
                  v273 = sub_1D27CCE78((v171 > 1), v172 + 1, 1, v273);
                }

                sub_1D22D6D60(v204, v148);
                v173 = *v207;
                v174 = v225;
                (*v207)(v224, v225);
                sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);
                v264(v259, v56);
                v275 = v174;
                v276 = &protocol witness table for GeneratedImage;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v274);
                v176 = v223;
                v208(boxed_opaque_existential_1, v223, v174);
                v177 = v273;
                v273[2] = v206;
                sub_1D22D79FC(&v274, &v177[5 * v172 + 4]);
                v173(v176, v174);
                goto LABEL_18;
              }

              sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);

              sub_1D22D6D60(v147, v148);
              v90 = v149;
              v247 = 0;
              v85 = v255;
              goto LABEL_55;
            }

LABEL_40:
            if (qword_1ED8A5308 != -1)
            {
              swift_once();
            }

            v150 = v272;
            v151 = __swift_project_value_buffer(v272, qword_1ED8A5310);
            (*v212)(v125, v151, v150);
            (v206)(v125, 0, 1, v150);
            v152 = *(v248 + 48);
            v153 = v228;
            sub_1D22BD1D0(v254, v228, &qword_1EC6DAE70, &qword_1D2881A90);
            sub_1D22BD1D0(v125, &v153[v152], &qword_1EC6DAE70, &qword_1D2881A90);
            v154 = v201;
            if (v201(v153, 1, v150) == 1)
            {
              sub_1D22BD238(v125, &qword_1EC6DAE70, &qword_1D2881A90);
              if (v154(&v153[v152], 1, v150) != 1)
              {

                sub_1D22D6D60(v204, v202);
                goto LABEL_48;
              }

              sub_1D22BD238(v153, &qword_1EC6DAE70, &qword_1D2881A90);
              v155 = v208;
              v156 = v240;
            }

            else
            {
              sub_1D22BD1D0(v153, v234, &qword_1EC6DAE70, &qword_1D2881A90);
              if (v154(&v153[v152], 1, v150) == 1)
              {

                sub_1D22D6D60(v204, v202);
                sub_1D22BD238(v125, &qword_1EC6DAE70, &qword_1D2881A90);
                v213(v234, v150);
LABEL_48:
                v85 = v255;
                sub_1D22BD238(v153, &qword_1EC6DA7E8, &unk_1D2884460);
                v77 = v268;
                v80 = v267;
                v82 = v266;
LABEL_49:
                v84 = v261;
                sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);
                v264(v259, v56);
                goto LABEL_6;
              }

              v157 = v242;
              (*v211)(v242, &v153[v152], v150);
              sub_1D23C3824(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
              v158 = sub_1D2877F98();
              v156 = v240;
              LODWORD(v206) = v158;
              v159 = v213;
              v213(v157, v150);
              sub_1D22BD238(v125, &qword_1EC6DAE70, &qword_1D2881A90);
              v159(v234, v150);
              sub_1D22BD238(v153, &qword_1EC6DAE70, &qword_1D2881A90);
              v155 = v208;
              if ((v206 & 1) == 0)
              {

                sub_1D22D6D60(v204, v202);
                v77 = v268;
                v80 = v267;
                v82 = v266;
                v85 = v255;
                goto LABEL_49;
              }
            }

            *&v274 = v205;
            *(&v274 + 1) = v155;
            v160 = v156[13];
            v277 = v156[12];
            v278 = v160;
            sub_1D22BD06C();
            v161 = sub_1D2878FF8();
            v84 = v261;
            if ((v161 & 1) == 0)
            {

              sub_1D22D6D60(v204, v202);
              sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);
              v264(v259, v56);
              v77 = v268;
              v80 = v267;
              v82 = v266;
              v85 = v255;
              goto LABEL_6;
            }

            *&v274 = v205;
            *(&v274 + 1) = v155;
            v162 = v156[15];
            v277 = v156[14];
            v278 = v162;
            v163 = sub_1D2878F58();

            v164 = *(v163 + 16);
            v85 = v255;
            if (!v164)
            {

              sub_1D22D6D60(v204, v202);

              sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);
              v264(v259, v56);
              v77 = v268;
              v80 = v267;
              v82 = v266;
              goto LABEL_6;
            }

            v165 = v163 + 16 + 16 * v164;
            v166 = *(v165 + 8);
            v208 = *v165;
            sub_1D2870F68();

            sub_1D23C3824(&qword_1EC6DA878, type metadata accessor for PlaygroundImage, &protocol conformance descriptor for PlaygroundImage);
            v167 = v204;
            v168 = v202;
            v169 = v247;
            sub_1D2871088();
            if (!v169)
            {
              v247 = 0;
              v178 = sub_1D23BD628(v208, v166);
              v180 = v179;

              sub_1D22D6D60(v167, v168);
              sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);
              v264(v259, v56);
              v80 = v267;
              if (v180)
              {
                sub_1D23C38D4(v222, type metadata accessor for PlaygroundImage);
              }

              else
              {
                v181 = v270;
                sub_1D22BD238(v270, &qword_1EC6DA870, &qword_1D2884598);
                sub_1D23C37BC(v222, v181, type metadata accessor for PlaygroundImage);
                *&v181[*(v262 + 20)] = v178;
                v215(v181, 0, 1);
              }

              v77 = v268;
              goto LABEL_19;
            }

            sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);

            sub_1D22D6D60(v167, v168);

            v90 = v169;
            v247 = 0;
LABEL_55:
            v91 = v245;
            v92 = v253;
            v86 = v259;
LABEL_11:
            sub_1D2872608();
            (*v250)(v91, v86, v56);
            v93 = v90;
            v94 = sub_1D2873CA8();
            v95 = sub_1D2878A18();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              LODWORD(v208) = v95;
              v98 = v91;
              v99 = v97;
              *&v274 = v97;
              *v96 = v249;
              v100 = sub_1D2871558();
              v102 = v101;
              v264(v98, v56);
              v103 = sub_1D23D7C84(v100, v102, &v274);

              *(v96 + 4) = v103;
              *(v96 + 12) = 2080;
              swift_getErrorValue();
              v104 = sub_1D2879748();
              v106 = sub_1D23D7C84(v104, v105, &v274);

              *(v96 + 14) = v106;
              v85 = v255;
              _os_log_impl(&dword_1D226E000, v94, v208, "Unable to load asset for recipe at url: %s withe error: %s", v96, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D38A3520](v99, -1, -1);
              MEMORY[0x1D38A3520](v96, -1, -1);

              (*v251)(v253, v244);
              v264(v259, v56);
            }

            else
            {

              v119 = v264;
              v264(v91, v56);
              (*v251)(v92, v244);
              v119(v86, v56);
            }

LABEL_18:
            v77 = v268;
            v80 = v267;
LABEL_19:
            v82 = v266;
LABEL_20:
            v84 = v261;
            goto LABEL_6;
          }
        }

        else
        {
          v127 = v227;
          sub_1D22BD1D0(v123, v227, &qword_1EC6DAE70, &qword_1D2881A90);
          v128 = v272;
          if (v120(&v123[v122], 1, v272) != 1)
          {
            v139 = v242;
            (*v211)(v242, &v123[v122], v128);
            sub_1D23C3824(&qword_1EC6DA7F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
            v140 = v128;
            v200 = sub_1D2877F98();
            v141 = v128;
            v142 = v213;
            v213(v139, v141);
            sub_1D22BD238(v238, &qword_1EC6DAE70, &qword_1D2881A90);
            v143 = v140;
            v126 = v240;
            v142(v127, v143);
            sub_1D22BD238(v123, &qword_1EC6DAE70, &qword_1D2881A90);
            v125 = v232;
            if ((v200 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_37;
          }

          sub_1D22BD238(v238, &qword_1EC6DAE70, &qword_1D2881A90);
          v213(v127, v128);
        }

        sub_1D22BD238(v123, &qword_1EC6DA7E8, &unk_1D2884460);
        v125 = v232;
        goto LABEL_40;
      }
    }

    if (v118 == v117[8] && v208 == v117[9] || (sub_1D2879618() & 1) != 0)
    {

      sub_1D23C3824(&qword_1EC6DA7F0, MEMORY[0x1E696E4A0], MEMORY[0x1E696E4B8]);
      v134 = v226;
      v135 = v271;
      v136 = v204;
      v137 = v202;
      v138 = v247;
      sub_1D2871088();
      if (!v138)
      {
        v247 = 0;

        sub_1D22D6D60(v136, v137);
        sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);
        v264(v259, v56);
        v82 = v266;
        sub_1D22BD238(v266, &unk_1EC6DDE30, &unk_1D2881A80);
        v217(v134, 0, 1, v135);
        sub_1D22EC9BC(v134, v82, &unk_1EC6DDE30, &unk_1D2881A80);
        v77 = v268;
        v80 = v267;
        v85 = v255;
        goto LABEL_20;
      }

      sub_1D22BD238(v254, &qword_1EC6DAE70, &qword_1D2881A90);

      sub_1D22D6D60(v136, v137);
      v90 = v138;
      v247 = 0;
      v85 = v255;
      v91 = v245;
      v86 = v259;
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v273 = MEMORY[0x1E69E7CC0];
  v85 = v255;
LABEL_71:

  (*(v257 + 8))(v80, v258);
  v264(v85, v56);
  v182 = v256;
  sub_1D22EC9BC(v82, v256, &unk_1EC6DDE30, &unk_1D2881A80);
  v183 = v269;
  v184 = v271;
  if ((*(v269 + 48))(v182, 1, v271) == 1)
  {
    sub_1D22BD238(v270, &qword_1EC6DA870, &qword_1D2884598);

    v185 = &unk_1EC6DDE30;
    v186 = &unk_1D2881A80;
LABEL_76:
    sub_1D22BD238(v182, v185, v186);
    goto LABEL_78;
  }

  v187 = *(v183 + 32);
  v188 = v246;
  v187(v246, v182, v184);
  v189 = v273;
  v190 = v270;
  if (!v273[2])
  {
    (*(v183 + 8))(v188, v184);
    sub_1D22BD238(v190, &qword_1EC6DA870, &qword_1D2884598);

    goto LABEL_78;
  }

  v182 = v239;
  sub_1D22EC9BC(v270, v239, &qword_1EC6DA870, &qword_1D2884598);
  if ((*(v77 + 48))(v182, 1, v262) == 1)
  {
    (*(v183 + 8))(v188, v184);

    v185 = &qword_1EC6DA870;
    v186 = &qword_1D2884598;
    goto LABEL_76;
  }

  v193 = v230;
  sub_1D23C37BC(v182, v230, type metadata accessor for ImagePredictableOutput.FinalImage);
  v194 = v229;
  v187(v229, v188, v184);
  v195 = v193;
  v196 = v231;
  sub_1D23C37BC(v195, v231, type metadata accessor for ImagePredictableOutput.FinalImage);
  v197 = v265;
  v187(v265, v194, v184);
  v198 = type metadata accessor for ImagePredictableOutput.PredictableOutputAsset(0);
  *&v197[*(v198 + 20)] = v189;
  sub_1D23C37BC(v196, &v197[*(v198 + 24)], type metadata accessor for ImagePredictableOutput.FinalImage);
  return (*(*(v198 - 8) + 56))(v197, 0, 1, v198);
}

uint64_t sub_1D23C3338()
{
  v1 = OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_recipe;
  v2 = sub_1D2872438();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D22BD238(v0 + OBJC_IVAR____TtCC23ImagePlaygroundInternal22ImagePredictableOutputP33_5C3CA63E38422A6691DD6C93E2E9CDDD31ComposingPredictableOutputAsset_finalImage, &qword_1EC6DA870, &qword_1D2884598);

  return swift_deallocClassInstance();
}

uint64_t sub_1D23C3404()
{

  return swift_deallocClassInstance();
}

void sub_1D23C34E4(uint64_t a1)
{
  sub_1D2872438();
  if (v1 <= 0x3F)
  {
    sub_1D23C35BC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D23C35BC(uint64_t a1)
{
  if (!qword_1EC6DA868)
  {
    type metadata accessor for ImagePredictableOutput.FinalImage(255);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC6DA868);
    }
  }
}

uint64_t sub_1D23C365C(uint64_t a1)
{
  result = type metadata accessor for PlaygroundImage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D23C36EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D23C3734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D23C37BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23C3824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D23C386C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D23C38D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D23C3934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA870, &qword_1D2884598);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D23C39A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D22D79FC(&v12, v10 + 40 * a1 + 32);
}

void sub_1D23C3A64(uint64_t a1)
{
  sub_1D2872438();
  if (v1 <= 0x3F)
  {
    sub_1D23C3B00(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImagePredictableOutput.FinalImage(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D23C3B00(uint64_t a1)
{
  if (!qword_1ED89CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA468, &qword_1D2883628);
    v1 = sub_1D28784C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89CF38);
    }
  }
}

id GPAppleConnectTokenProvider_Swift.__allocating_init(authenticatingProtocol:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  ObjectType = swift_getObjectType();
  v6 = &v3[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol];
  *(v6 + 3) = ObjectType;
  *v6 = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id GPAppleConnectTokenProvider_Swift.init(authenticatingProtocol:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol];
  *(v5 + 3) = ObjectType;
  *v5 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GPAppleConnectTokenProvider_Swift();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D23C3CF0()
{
  v1 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token));
  v2 = *(v1 + 8);
  sub_1D2870F68();
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1D23C3D44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  sub_1D23C3EE4(v3 + v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910, &qword_1D28845E8);
  result = swift_dynamicCast();
  *a2 = v6;
  return result;
}

uint64_t sub_1D23C3DDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  ObjectType = swift_getObjectType();
  *&v6 = v2;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0((v3 + v4));
  sub_1D23C3FAC(&v6, (v3 + v4));
  return swift_endAccess();
}

uint64_t sub_1D23C3E60()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  sub_1D23C3EE4(v0 + v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910, &qword_1D28845E8);
  swift_dynamicCast();
  return v3;
}

uint64_t sub_1D23C3EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D23C3F40(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v5 = a1;
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_1D23C3FAC(&v5, (v1 + v3));
  return swift_endAccess();
}

_OWORD *sub_1D23C3FAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void (*sub_1D23C3FBC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  swift_beginAccess();
  sub_1D23C3EE4(v1 + v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910, &qword_1D28845E8);
  swift_dynamicCast();
  return sub_1D23C4088;
}

void sub_1D23C4088(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  ObjectType = swift_getObjectType();
  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  *(v3 + 24) = ObjectType;
  *v3 = v4;
  swift_beginAccess();
  if (a2)
  {
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_0((v7 + v6));
    sub_1D23C3FAC(v3, (v7 + v6));
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v7 + v6));
    sub_1D23C3FAC(v3, (v7 + v6));
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D23C4150(void (*a1)(uint64_t, uint64_t, void), uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  os_unfair_lock_lock(&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token]);
  v7 = *(v5 + 1);
  v6 = *(v5 + 2);
  sub_1D2870F68();
  os_unfair_lock_unlock(v5);
  if (v6)
  {
    a1(v7, v6, 0);
  }

  else
  {
    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
    swift_beginAccess();
    sub_1D23C3EE4(&v2[v9], v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910, &qword_1D28845E8);
    swift_dynamicCast();
    v10 = v14[6];
    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    v14[4] = sub_1D23C45F4;
    v14[5] = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D23C4600;
    v14[3] = &block_descriptor_6;
    v12 = _Block_copy(v14);
    v13 = v2;
    sub_1D2870F78();

    [v10 authenticateIfNeededWithCompletion_];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D23C4318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void))
{
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  if (a2)
  {
    v17 = a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token;
    os_unfair_lock_lock((a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token));

    *(v17 + 8) = a1;
    *(v17 + 16) = a2;
    sub_1D2870F68();
    os_unfair_lock_unlock(v17);
    return a5(a1, a2, 0);
  }

  else if (a3)
  {
    v19 = a3;
    sub_1D2872598();
    v20 = a3;
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = a3;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1D226E000, v21, v22, "Error %@ authenticating with AppleConnect", v23, 0xCu);
      sub_1D22BD238(v24, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v24, -1, -1);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_1D2872598();
    v27 = sub_1D2873CA8();
    v28 = sub_1D2878A18();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D226E000, v27, v28, "Error authenticating with AppleConnect", v29, 2u);
      MEMORY[0x1D38A3520](v29, -1, -1);
    }

    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_1D23C4600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D28780A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_1D2870F78();
  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

id GPAppleConnectTokenProvider_Swift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GPAppleConnectTokenProvider_Swift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GPAppleConnectTokenProvider_Swift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D23C4974(char *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = &a1[OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token];
  _Block_copy(a2);
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 2);
  sub_1D2870F68();
  os_unfair_lock_unlock(v5);
  if (v6)
  {
    v12 = sub_1D2878068();
    (a2)[2](a2, v12, 0);
  }

  else
  {
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol;
    swift_beginAccess();
    sub_1D23C3EE4(&a1[v7], aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA910, &qword_1D28845E8);
    swift_dynamicCast();
    v8 = aBlock[6];
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_1D23C4B98;
    v9[4] = v4;
    aBlock[4] = sub_1D23C4BE4;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23C4600;
    aBlock[3] = &block_descriptor_15;
    v10 = _Block_copy(aBlock);
    v11 = a1;
    sub_1D2870F78();

    [v8 authenticateIfNeededWithCompletion_];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1D23C4BEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[6] = a3;
  v20 = a4;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EncodableIgnored(0, v9, v10, v11);
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2879858();
  if (!v4)
  {
    v17 = v12;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1D2879638();
    (*(v19 + 32))(v14, v8, a2);
    __swift_destroy_boxed_opaque_existential_0(v21);
    (*(v18 + 32))(v20, v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D23C4E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v33 = a4;
  v6 = sub_1D2878F18();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v27 - v7;
  v35 = type metadata accessor for NullEncodable(0, a2, v8, v9);
  v10 = *(v35 - 8);
  v11 = MEMORY[0x1EEE9AC00](v35);
  v13 = &v27 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(&v27 - v12, 1, 1, a2, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v37;
  sub_1D2879858();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v10 + 8))(v13, v35);
  }

  else
  {
    v27 = v16;
    v28 = v13;
    v29 = v15;
    v37 = v10;
    v19 = v35;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_1D2879638();
    v21 = v32;
    v20 = v33;
    v22 = v31;
    v23 = a1;
    v24 = v28;
    v25 = v34;
    (v29)(v34, 0, 1, a2);
    (*(v22 + 40))(v24, v25, v21);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v26 = v37;
    (*(v37 + 16))(v20, v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v23);
    return (*(v26 + 8))(v24, v19);
  }
}

uint64_t sub_1D23C5100(void *a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878F18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2879878();
  (*(v9 + 16))(v11, v13[2], v8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    sub_1D2879658();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    sub_1D2879648();
    (*(v5 + 8))(v7, v4);
  }

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_1D23C5390(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D23C5400(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}