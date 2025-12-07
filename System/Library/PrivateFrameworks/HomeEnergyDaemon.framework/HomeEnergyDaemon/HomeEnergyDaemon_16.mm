uint64_t sub_22B2DAE00(uint64_t a1)
{
  v4 = *v2;
  v4[58] = v1;

  v5 = v4[13];
  v6 = v4[12];
  if (v1)
  {
    sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);

    v7 = sub_22B2DC360;
  }

  else
  {
    v4[59] = a1;
    sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);

    v7 = sub_22B2DB01C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B2DB01C()
{
  v35 = v0;
  v1 = v0[59];
  v2 = v0[52];
  (*(v0[16] + 8))(v0[17], v0[15]);
  swift_beginAccess();
  v0[11] = v1;

  v3 = v0[59];
  v0[60] = v0[58];
  v0[61] = v3;
  if (sub_22B360BFC())
  {
    v4 = v0[43];
    v5 = v0[42];
    v6 = v0[33];
    v7 = v0[28];

    v4(v6, v5, v7);
    v8 = sub_22B36050C();
    v9 = sub_22B360D1C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[45];
    v12 = v0[33];
    v13 = v0[28];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v34);
      *(v14 + 12) = 2048;
      *(v14 + 14) = 1520;
      _os_log_impl(&dword_22B116000, v8, v9, "[Dropbox] Task is cancelled at marker %s:%ld", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23188F650](v15, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);

      v11(v12, v13);
    }

    else
    {

      v11(v12, v13);
    }

    sub_22B16F530(v0[24]);

    v33 = sub_22B360BFC();
    if (v33)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v20 = v0[31];
      v22 = v0[28];
      v21 = v0[29];
      v23 = __swift_project_value_buffer(v22, qword_28140BD10);
      swift_beginAccess();
      (*(v21 + 16))(v20, v23, v22);
      v24 = sub_22B36050C();
      v25 = sub_22B360D1C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v0[31];
      v29 = v0[28];
      v28 = v0[29];
      if (v26)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34 = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v34);
        *(v30 + 12) = 2048;
        *(v30 + 14) = 1552;
        _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox] Task is cancelled at marker %s:%ld", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x23188F650](v31, -1, -1);
        MEMORY[0x23188F650](v30, -1, -1);
      }

      (*(v28 + 8))(v27, v29);
    }

    v32 = v0[1];

    return v32((v33 & 1) == 0);
  }

  else
  {
    v16 = v0[40];
    v17 = v3;
    v18 = swift_task_alloc();
    v0[62] = v18;
    *v18 = v0;
    v18[1] = sub_22B2DB520;

    return sub_22B1B6774(v17, v16);
  }
}

uint64_t sub_22B2DB520(char a1)
{
  v2 = *(*v1 + 488);
  v3 = *(*v1 + 96);
  *(*v1 + 516) = a1;

  return MEMORY[0x2822009F8](sub_22B2DB650, v3, 0);
}

uint64_t sub_22B2DB650()
{
  v121 = v1;
  if (*(v1 + 516))
  {
    (*(v1 + 344))(*(v1 + 256), *(v1 + 336), *(v1 + 224));
    v0 = sub_22B36050C();
    v3 = sub_22B360D2C();
    if (os_log_type_enabled(v0, v3))
    {
      v4 = *(v1 + 488);
      v117 = *(v1 + 360);
      v5 = *(v1 + 256);
      v6 = *(v1 + 224);
      v7 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v120 = v2;
      *v7 = 136446210;
      v8 = v4;
      v9 = sub_22B35F3AC();
      v11 = v10;

      v12 = sub_22B1A7B20(v9, v11, &v120);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_22B116000, v0, v3, "[Dropbox] Stranded site purged %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x23188F650](v2, -1, -1);
      MEMORY[0x23188F650](v7, -1, -1);

      v117(v5, v6);
    }

    else
    {
      v13 = *(v1 + 360);
      v14 = *(v1 + 256);
      v15 = *(v1 + 224);

      v13(v14, v15);
    }
  }

  v16 = *(v1 + 488);
  sub_22B16F530(*(v1 + 192));

  v17 = *(v1 + 408) + 1;
  if (v17 == *(v1 + 400))
  {
LABEL_6:

    goto LABEL_7;
  }

  v32 = *(v1 + 480);
  while (1)
  {
    *(v1 + 408) = v17;
    v33 = *(v1 + 392);
    if (v17 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_49;
    }

    v16 = *(v1 + 192);
    sub_22B16F4CC(v33 + ((*(v1 + 504) + 32) & ~*(v1 + 504)) + *(*(v1 + 184) + 72) * v17, v16);
    isa = v16->isa;
    v35 = v16[1].isa;
    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v16->isa & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      break;
    }

    sub_22B16F530(*(v1 + 192));
LABEL_22:
    v17 = *(v1 + 408) + 1;
    if (v17 == *(v1 + 400))
    {
      goto LABEL_6;
    }
  }

  if (sub_22B360BFC())
  {
    v38 = *(v1 + 344);
    v39 = *(v1 + 336);
    v40 = *(v1 + 272);
    v41 = *(v1 + 224);

    v38(v40, v39, v41);
    v16 = sub_22B36050C();
    v42 = sub_22B360D1C();
    v43 = os_log_type_enabled(v16, v42);
    v2 = *(v1 + 360);
    v0 = *(v1 + 272);
    v32 = *(v1 + 224);
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v120 = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v120);
      *(v44 + 12) = 2048;
      *(v44 + 14) = 1476;
      _os_log_impl(&dword_22B116000, v16, v42, "[Dropbox] Task is cancelled at marker %s:%ld", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x23188F650](v45, -1, -1);
      MEMORY[0x23188F650](v44, -1, -1);

      (v2)(v0, v32);
LABEL_50:
      sub_22B16F530(*(v1 + 192));
      goto LABEL_7;
    }

LABEL_49:

    (v2)(v0, v32);
    goto LABEL_50;
  }

  v0 = *(v1 + 192);
  sub_22B35EAFC();
  v37 = sub_22B35EAEC();
  *(v1 + 416) = v37;
  if (v32)
  {
    v16 = *(v1 + 192);

    sub_22B16F530(v16);
    v32 = 0;
    goto LABEL_22;
  }

  *(v1 + 88) = v37;
  v46 = v37;
  v47 = sub_22B35F14C();
  v49 = v48;

  *(v1 + 424) = v49;
  if (!v49)
  {
LABEL_65:
    *(v1 + 480) = 0;
    *(v1 + 488) = v46;
    if ((sub_22B360BFC() & 1) == 0)
    {
      v92 = *(v1 + 320);
      v93 = v46;
      v94 = swift_task_alloc();
      *(v1 + 496) = v94;
      *v94 = v1;
      v94[1] = sub_22B2DB520;

      return sub_22B1B6774(v93, v92);
    }

    v80 = *(v1 + 344);
    v81 = *(v1 + 336);
    v82 = *(v1 + 264);
    v83 = *(v1 + 224);

    v80(v82, v81, v83);
    v84 = sub_22B36050C();
    v85 = sub_22B360D1C();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v1 + 360);
    v88 = *(v1 + 264);
    v89 = *(v1 + 224);
    if (v86)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v120 = v91;
      *v90 = 136315394;
      *(v90 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v120);
      *(v90 + 12) = 2048;
      *(v90 + 14) = 1520;
      _os_log_impl(&dword_22B116000, v84, v85, "[Dropbox] Task is cancelled at marker %s:%ld", v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x23188F650](v91, -1, -1);
      MEMORY[0x23188F650](v90, -1, -1);
    }

    v87(v88, v89);
    sub_22B16F530(*(v1 + 192));

LABEL_7:
    v118 = sub_22B360BFC();
    if (v118)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v18 = *(v1 + 248);
      v20 = *(v1 + 224);
      v19 = *(v1 + 232);
      v21 = __swift_project_value_buffer(v20, qword_28140BD10);
      swift_beginAccess();
      (*(v19 + 16))(v18, v21, v20);
      v22 = sub_22B36050C();
      v23 = sub_22B360D1C();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v1 + 248);
      v27 = *(v1 + 224);
      v26 = *(v1 + 232);
      if (v24)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v120 = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v120);
        *(v28 + 12) = 2048;
        *(v28 + 14) = 1552;
        _os_log_impl(&dword_22B116000, v22, v23, "[Dropbox] Task is cancelled at marker %s:%ld", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x23188F650](v29, -1, -1);
        MEMORY[0x23188F650](v28, -1, -1);
      }

      (*(v26 + 8))(v25, v27);
    }

    v30 = *(v1 + 8);

    return v30((v118 & 1) == 0);
  }

  v50 = v46;
  v51 = sub_22B35F06C();
  v53 = v52;

  *(v1 + 432) = v53;
  if (!v53)
  {
LABEL_64:

    goto LABEL_65;
  }

  v54 = v50;
  v119 = sub_22B35F0BC();
  v56 = v55;

  *(v1 + 440) = v56;
  if (!v56)
  {
LABEL_63:

    goto LABEL_64;
  }

  v116 = v51;
  v57 = v54;
  v115 = sub_22B35F43C();
  v59 = v58;

  *(v1 + 448) = v59;
  if (!v59)
  {
LABEL_62:

    goto LABEL_63;
  }

  v60 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v60 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {
    goto LABEL_53;
  }

  v61 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v61 = v116 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    goto LABEL_53;
  }

  v62 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v62 = v119 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
    goto LABEL_53;
  }

  v63 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v63 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    goto LABEL_53;
  }

  v99 = v59;
  v100 = *(v1 + 508);
  v64 = *(v1 + 152);
  v109 = *(v1 + 168);
  v112 = *(v1 + 144);
  v65 = v57;
  v66 = sub_22B35F38C();
  v104 = v67;
  v106 = v66;
  v96 = v65;

  v98 = *(v64 + 104);
  v98(v109, v100, v112);
  v101 = sub_22B35EE3C();
  v69 = v68;
  v70 = v109;
  v110 = *(v64 + 8);
  v110(v70, v112);
  if (v106 == v101 && v104 == v69)
  {
LABEL_47:

    goto LABEL_53;
  }

  v107 = sub_22B36134C();

  if (v107)
  {
    goto LABEL_53;
  }

  v102 = *(v1 + 512);
  v71 = *(v1 + 160);
  v95 = *(v1 + 144);
  v72 = v96;
  v105 = sub_22B35F38C();
  v108 = v73;
  v97 = v72;

  v98(v71, v102, v95);
  v103 = sub_22B35EE3C();
  v75 = v74;
  v110(v71, v95);
  if (v105 == v103 && v108 == v75)
  {
    goto LABEL_47;
  }

  v113 = sub_22B36134C();

  if (v113)
  {
LABEL_53:

    goto LABEL_63;
  }

  sub_22B36034C();
  v77 = *(v1 + 128);
  v76 = *(v1 + 136);
  v111 = *(v1 + 120);
  v114 = *(v1 + 112);
  (*(v77 + 56))();
  (*(v77 + 32))(v76, v114, v111);
  if ((sub_22B36035C() & 1) == 0)
  {
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));

    goto LABEL_62;
  }

  v78 = v97;
  sub_22B35F2CC();

  v79 = swift_task_alloc();
  *(v1 + 456) = v79;
  *v79 = v1;
  v79[1] = sub_22B2DAE00;
  v125 = *(v1 + 104);
  v124 = v99;
  v123 = v115;

  return sub_22B2B9260(v47, v49, v116, v53, v119, v56, isa, v35);
}

uint64_t sub_22B2DC360()
{
  v62 = v0;
  v1 = *(v0 + 464);
  (*(v0 + 344))(*(v0 + 240), *(v0 + 336), *(v0 + 224));
  v2 = v1;
  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 464);
  if (v5)
  {
    v7 = *(v0 + 416);
    v55 = *(v0 + 240);
    v58 = *(v0 + 360);
    v59 = *(v0 + 136);
    v56 = *(v0 + 128);
    v57 = *(v0 + 120);
    v54 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v61 = v10;
    *v8 = 138412546;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v12;
    *v9 = v12;
    *(v8 + 12) = 2082;
    v13 = v7;
    v14 = sub_22B35F3AC();
    v16 = v15;

    v17 = sub_22B1A7B20(v14, v16, &v61);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_22B116000, v3, v4, "[Dropbox] Error refreshing cloudkit token %@ %{public}s", v8, 0x16u);
    sub_22B123284(v9, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v58(v55, v54);
    (*(v56 + 8))(v59, v57);
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);

    v18(v19, v20);
    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 416);
  *(v0 + 480) = 0;
  *(v0 + 488) = v24;
  if (sub_22B360BFC())
  {
    v25 = *(v0 + 344);
    v26 = *(v0 + 336);
    v27 = *(v0 + 264);
    v28 = *(v0 + 224);

    v25(v27, v26, v28);
    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 360);
    v33 = *(v0 + 264);
    v34 = *(v0 + 224);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v61);
      *(v35 + 12) = 2048;
      *(v35 + 14) = 1520;
      _os_log_impl(&dword_22B116000, v29, v30, "[Dropbox] Task is cancelled at marker %s:%ld", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23188F650](v36, -1, -1);
      MEMORY[0x23188F650](v35, -1, -1);
    }

    v32(v33, v34);
    sub_22B16F530(*(v0 + 192));

    v60 = sub_22B360BFC();
    if (v60)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 248);
      v43 = *(v0 + 224);
      v42 = *(v0 + 232);
      v44 = __swift_project_value_buffer(v43, qword_28140BD10);
      swift_beginAccess();
      (*(v42 + 16))(v41, v44, v43);
      v45 = sub_22B36050C();
      v46 = sub_22B360D1C();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 248);
      v50 = *(v0 + 224);
      v49 = *(v0 + 232);
      if (v47)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v61 = v52;
        *v51 = 136315394;
        *(v51 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v61);
        *(v51 + 12) = 2048;
        *(v51 + 14) = 1552;
        _os_log_impl(&dword_22B116000, v45, v46, "[Dropbox] Task is cancelled at marker %s:%ld", v51, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x23188F650](v52, -1, -1);
        MEMORY[0x23188F650](v51, -1, -1);
      }

      (*(v49 + 8))(v48, v50);
    }

    v53 = *(v0 + 8);

    return v53((v60 & 1) == 0);
  }

  else
  {
    v37 = *(v0 + 320);
    v38 = v24;
    v39 = swift_task_alloc();
    *(v0 + 496) = v39;
    *v39 = v0;
    v39[1] = sub_22B2DB520;

    return sub_22B1B6774(v38, v37);
  }
}

uint64_t sub_22B2DCA40()
{
  v1[14] = v0;
  v2 = sub_22B35EE4C();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = sub_22B36052C();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v4 = type metadata accessor for CDEnergySite(0);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_22B35F01C();
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2DCC5C, v0, 0);
}

uint64_t sub_22B2DCC5C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  (*(v0[31] + 104))(v0[32], *MEMORY[0x277D073C8], v0[30]);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_22B2DCD4C;
  v2 = v0[32];

  return sub_22B141FF0(1, v2);
}

uint64_t sub_22B2DCD4C(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 112);
  *(*v1 + 272) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B2DCEC0, v5, 0);
}

uint64_t sub_22B2DCEC0()
{
  v131 = v0;
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 280) = v2;
    if (!v2)
    {
LABEL_65:

      if ((sub_22B360BFC() & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_66;
    }

    *(v0 + 384) = *(*(v0 + 216) + 80);
    *(v0 + 388) = *MEMORY[0x277D07350];
    *(v0 + 392) = *MEMORY[0x277D07348];
    *(v0 + 288) = 0;
    if (!*(v1 + 16))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v3 = 0;
    while (1)
    {
      v4 = *(v0 + 232);
      sub_22B16F4CC(v1 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(*(v0 + 216) + 72) * v3, v4);
      v5 = *v4;
      *(v0 + 296) = *v4;
      v6 = v4[1];
      *(v0 + 304) = v6;
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        goto LABEL_48;
      }

      if (sub_22B360BFC())
      {

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v109 = *(v0 + 200);
        v110 = *(v0 + 152);
        v111 = *(v0 + 160);
        v112 = __swift_project_value_buffer(v110, qword_28140BD10);
        swift_beginAccess();
        (*(v111 + 16))(v109, v112, v110);
        v113 = sub_22B36050C();
        v114 = sub_22B360D1C();
        v115 = os_log_type_enabled(v113, v114);
        v116 = *(v0 + 200);
        v117 = *(v0 + 152);
        v118 = *(v0 + 160);
        if (v115)
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v130[0] = v120;
          *v119 = 136315394;
          *(v119 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, v130);
          *(v119 + 12) = 2048;
          *(v119 + 14) = 1578;
          _os_log_impl(&dword_22B116000, v113, v114, "[Dropbox] Task is cancelled at marker %s:%ld", v119, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v120);
          MEMORY[0x23188F650](v120, -1, -1);
          MEMORY[0x23188F650](v119, -1, -1);
        }

        (*(v118 + 8))(v116, v117);
        sub_22B16F530(*(v0 + 232));
        if ((sub_22B360BFC() & 1) == 0)
        {
LABEL_76:
          v129 = 1;
          goto LABEL_77;
        }

LABEL_66:
        if (qword_28140A0C8 == -1)
        {
LABEL_67:
          v98 = *(v0 + 160);
          v97 = *(v0 + 168);
          v99 = *(v0 + 152);
          v100 = __swift_project_value_buffer(v99, qword_28140BD10);
          swift_beginAccess();
          (*(v98 + 16))(v97, v100, v99);
          v101 = sub_22B36050C();
          v102 = sub_22B360D1C();
          v103 = os_log_type_enabled(v101, v102);
          v105 = *(v0 + 160);
          v104 = *(v0 + 168);
          v106 = *(v0 + 152);
          if (v103)
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v130[0] = v108;
            *v107 = 136315394;
            *(v107 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, v130);
            *(v107 + 12) = 2048;
            *(v107 + 14) = 1630;
            _os_log_impl(&dword_22B116000, v101, v102, "[Dropbox] Task is cancelled at marker %s:%ld", v107, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v108);
            MEMORY[0x23188F650](v108, -1, -1);
            MEMORY[0x23188F650](v107, -1, -1);
          }

          (*(v105 + 8))(v104, v106);
          goto LABEL_70;
        }

LABEL_81:
        swift_once();
        goto LABEL_67;
      }

      sub_22B35EAFC();
      v8 = sub_22B35EAEC();
      *(v0 + 312) = v8;
      v9 = v8;
      v10 = sub_22B35F14C();
      if (v11)
      {
        break;
      }

LABEL_43:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 224);
      v48 = *(v0 + 232);
      v49 = *(v0 + 176);
      v51 = *(v0 + 152);
      v50 = *(v0 + 160);
      v52 = __swift_project_value_buffer(v51, qword_28140BD10);
      swift_beginAccess();
      (*(v50 + 16))(v49, v52, v51);
      sub_22B16F4CC(v48, v47);
      v53 = sub_22B36050C();
      v54 = sub_22B360D2C();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 224);
      v57 = *(v0 + 176);
      v58 = *(v0 + 152);
      v59 = (*(v0 + 160) + 8);
      if (v55)
      {
        v127 = *(v0 + 176);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v130[0] = v61;
        *v60 = 136446210;
        v63 = *v56;
        v62 = v56[1];

        sub_22B16F530(v56);
        v64 = sub_22B1A7B20(v63, v62, v130);

        *(v60 + 4) = v64;
        _os_log_impl(&dword_22B116000, v53, v54, "[Dropbox] Skip Refresh AMI Data for site %{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x23188F650](v61, -1, -1);
        MEMORY[0x23188F650](v60, -1, -1);

        (*v59)(v127, v58);
      }

      else
      {

        sub_22B16F530(v56);
        (*v59)(v57, v58);
      }

LABEL_48:
      v65 = *(v0 + 280);
      v66 = *(v0 + 288) + 1;
      sub_22B16F530(*(v0 + 232));
      if (v66 == v65)
      {
        goto LABEL_65;
      }

      v3 = *(v0 + 288) + 1;
      *(v0 + 288) = v3;
      v1 = *(v0 + 272);
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_80;
      }
    }

    v12 = v10;
    v13 = v11;
    v14 = sub_22B35F06C();
    if (!v15)
    {
LABEL_42:

      goto LABEL_43;
    }

    v16 = v14;
    v17 = v15;
    v18 = sub_22B35F0BC();
    if (v19)
    {
      v20 = v19;
      v125 = v18;
      v21 = sub_22B35F43C();
      if (v22)
      {
        v23 = v21;
        v24 = v22;
        v25 = sub_22B35F12C();
        if (v26)
        {
          v27 = v26;
          v122 = v25;
          v123 = v23;

          if ((v13 & 0x2000000000000000) != 0)
          {
            v28 = HIBYTE(v13) & 0xF;
          }

          else
          {
            v28 = v12 & 0xFFFFFFFFFFFFLL;
          }

          if (v28)
          {
            if ((v17 & 0x2000000000000000) != 0)
            {
              v29 = HIBYTE(v17) & 0xF;
            }

            else
            {
              v29 = v16 & 0xFFFFFFFFFFFFLL;
            }

            if (v29)
            {
              if ((v20 & 0x2000000000000000) != 0)
              {
                v30 = HIBYTE(v20) & 0xF;
              }

              else
              {
                v30 = v125 & 0xFFFFFFFFFFFFLL;
              }

              if (!v30)
              {
                goto LABEL_42;
              }

              if ((v24 & 0x2000000000000000) != 0)
              {
                v31 = HIBYTE(v24) & 0xF;
              }

              else
              {
                v31 = v123 & 0xFFFFFFFFFFFFLL;
              }

              if (!v31)
              {
                goto LABEL_43;
              }

              v32 = HIBYTE(v27) & 0xF;
              if ((v27 & 0x2000000000000000) == 0)
              {
                v32 = v122 & 0xFFFFFFFFFFFFLL;
              }

              if (!v32)
              {
                goto LABEL_43;
              }

              v33 = sub_22B35F04C();
              v35 = v34;

              v36 = HIBYTE(v35) & 0xF;
              if ((v35 & 0x2000000000000000) == 0)
              {
                v36 = v33 & 0xFFFFFFFFFFFFLL;
              }

              if (!v36)
              {
                goto LABEL_43;
              }

              v37 = *(v0 + 388);
              v38 = *(v0 + 144);
              v40 = *(v0 + 120);
              v39 = *(v0 + 128);
              v41 = sub_22B35F38C();
              v43 = v42;
              v126 = *(v39 + 104);
              v126(v38, v37, v40);
              v44 = sub_22B35EE3C();
              v46 = v45;
              v124 = *(v39 + 8);
              v124(v38, v40);
              if (v41 != v44 || v43 != v46)
              {
                v67 = sub_22B36134C();

                if (v67)
                {
                  goto LABEL_43;
                }

                v68 = *(v0 + 392);
                v69 = *(v0 + 136);
                v70 = *(v0 + 120);
                v71 = sub_22B35F38C();
                v73 = v72;
                v126(v69, v68, v70);
                v74 = sub_22B35EE3C();
                v76 = v75;
                v124(v69, v70);
                if (v71 != v74 || v73 != v76)
                {
                  v77 = sub_22B36134C();

                  if ((v77 & 1) == 0)
                  {
                    if (qword_28140A0C8 != -1)
                    {
                      swift_once();
                    }

                    v78 = *(v0 + 192);
                    v79 = *(v0 + 152);
                    v80 = *(v0 + 160);
                    v81 = __swift_project_value_buffer(v79, qword_28140BD10);
                    *(v0 + 320) = v81;
                    swift_beginAccess();
                    v82 = *(v80 + 16);
                    *(v0 + 328) = v82;
                    *(v0 + 336) = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
                    v82(v78, v81, v79);
                    v83 = v9;
                    v84 = sub_22B36050C();
                    v85 = sub_22B360D2C();

                    v86 = os_log_type_enabled(v84, v85);
                    v128 = *(v0 + 192);
                    v88 = *(v0 + 152);
                    v87 = *(v0 + 160);
                    if (v86)
                    {
                      v89 = swift_slowAlloc();
                      v90 = swift_slowAlloc();
                      v130[0] = v90;
                      *v89 = 136446210;
                      v91 = sub_22B35F3AC();
                      v93 = sub_22B1A7B20(v91, v92, v130);

                      *(v89 + 4) = v93;
                      _os_log_impl(&dword_22B116000, v84, v85, "[Dropbox] Refresh AMI Data for site %{public}s", v89, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v90);
                      MEMORY[0x23188F650](v90, -1, -1);
                      MEMORY[0x23188F650](v89, -1, -1);
                    }

                    v94 = *(v87 + 8);
                    v94(v128, v88);
                    *(v0 + 344) = v94;
                    v95 = swift_task_alloc();
                    *(v0 + 352) = v95;
                    *v95 = v0;
                    v95[1] = sub_22B2DDA60;

                    return sub_22B2BDC04(v83);
                  }

                  goto LABEL_43;
                }
              }

              goto LABEL_41;
            }
          }

          else
          {
          }

          goto LABEL_42;
        }
      }
    }

LABEL_41:

    goto LABEL_42;
  }

LABEL_70:
  v129 = 0;
LABEL_77:

  v121 = *(v0 + 8);

  return v121(v129);
}

uint64_t sub_22B2DDA60()
{
  v2 = *v1;

  v3 = *(v2 + 112);
  if (v0)
  {

    v4 = sub_22B2EC21C;
  }

  else
  {
    v4 = sub_22B2DDB98;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2DDB98(uint64_t a1)
{
  v34 = v1;
  if (sub_22B360BFC())
  {
    v2 = v1[41];
    v3 = v1[40];
    v4 = v1[23];
    v5 = v1[19];

    v2(v4, v3, v5);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[43];
    v10 = v1[39];
    v11 = v1[23];
    v12 = v1[19];
    if (v8)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, &v33);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 1603;
      _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Task is cancelled at marker %s:%ld", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23188F650](v14, -1, -1);
      MEMORY[0x23188F650](v13, -1, -1);

      v9(v11, v12);
    }

    else
    {

      v9(v11, v12);
    }

    sub_22B16F530(v1[29]);
    v32 = sub_22B360BFC();
    if (v32)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v19 = v1[20];
      v20 = v1[21];
      v21 = v1[19];
      v22 = __swift_project_value_buffer(v21, qword_28140BD10);
      swift_beginAccess();
      (*(v19 + 16))(v20, v22, v21);
      v23 = sub_22B36050C();
      v24 = sub_22B360D1C();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v1[20];
      v27 = v1[21];
      v28 = v1[19];
      if (v25)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v29 = 136315394;
        *(v29 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, &v33);
        *(v29 + 12) = 2048;
        *(v29 + 14) = 1630;
        _os_log_impl(&dword_22B116000, v23, v24, "[Dropbox] Task is cancelled at marker %s:%ld", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x23188F650](v30, -1, -1);
        MEMORY[0x23188F650](v29, -1, -1);
      }

      (*(v26 + 8))(v27, v28);
    }

    v31 = v1[1];

    return v31((v32 & 1) == 0);
  }

  else
  {
    type metadata accessor for AMIRecordsProcessor(0);
    swift_allocObject();
    v1[45] = sub_22B1B79F4();
    v15 = swift_task_alloc();
    v1[46] = v15;
    *v15 = v1;
    v15[1] = sub_22B2DE000;
    v17 = v1[37];
    v16 = v1[38];

    return sub_22B1C437C(v17, v16);
  }
}

uint64_t sub_22B2DE000()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {

    v4 = sub_22B2DECF0;
  }

  else
  {

    v4 = sub_22B2DE15C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2DE15C()
{
  v135 = v0;

  v1 = *(v0 + 376);
  v2 = &unk_28140A000;
  v3 = qword_28140BD10;
  v133 = 2;
  while (1)
  {
    do
    {
      v4 = *(v0 + 280);
      v5 = *(v0 + 288) + 1;
      sub_22B16F530(*(v0 + 232));
      if (v5 == v4)
      {

        goto LABEL_61;
      }

      v6 = *(v0 + 288) + 1;
      *(v0 + 288) = v6;
      v7 = *(v0 + 272);
      if (v6 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_75;
      }

      v8 = *(v0 + 232);
      sub_22B16F4CC(v7 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(*(v0 + 216) + 72) * v6, v8);
      v9 = *v8;
      *(v0 + 296) = *v8;
      v10 = v8[1];
      *(v0 + 304) = v10;
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v9 & 0xFFFFFFFFFFFFLL;
      }
    }

    while (!v11);
    if (sub_22B360BFC())
    {
      break;
    }

    sub_22B35EAFC();
    v12 = sub_22B35EAEC();
    *(v0 + 312) = v12;
    if (v1)
    {

      goto LABEL_54;
    }

    v13 = v12;
    v14 = sub_22B35F14C();
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      v18 = sub_22B35F06C();
      if (!v19)
      {
        goto LABEL_41;
      }

      v20 = v18;
      v21 = v19;
      v22 = sub_22B35F0BC();
      if (!v23)
      {

LABEL_41:

        goto LABEL_46;
      }

      v24 = v22;
      v25 = v23;
      v26 = sub_22B35F43C();
      if (!v27)
      {
        goto LABEL_43;
      }

      v28 = v27;
      v129 = v26;
      v29 = sub_22B35F12C();
      if (!v30)
      {

LABEL_43:

LABEL_44:

LABEL_45:

        v2 = &unk_28140A000;
LABEL_46:
        v3 = qword_28140BD10;
        goto LABEL_54;
      }

      v31 = v30;
      v126 = v29;

      if ((v17 & 0x2000000000000000) != 0)
      {
        v32 = HIBYTE(v17) & 0xF;
      }

      else
      {
        v32 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        goto LABEL_43;
      }

      if ((v21 & 0x2000000000000000) != 0)
      {
        v33 = HIBYTE(v21) & 0xF;
      }

      else
      {
        v33 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {
        goto LABEL_44;
      }

      if ((v25 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v25) & 0xF;
      }

      else
      {
        v34 = v24 & 0xFFFFFFFFFFFFLL;
      }

      v3 = qword_28140BD10;
      if (!v34)
      {

LABEL_48:

        v2 = &unk_28140A000;
        goto LABEL_54;
      }

      if ((v28 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(v28) & 0xF;
      }

      else
      {
        v35 = v129 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {
        goto LABEL_48;
      }

      v36 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v36 = v126 & 0xFFFFFFFFFFFFLL;
      }

      v2 = &unk_28140A000;
      if (v36)
      {
        v37 = sub_22B35F04C();
        v39 = v38;

        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = v37 & 0xFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          v41 = *(v0 + 388);
          v42 = *(v0 + 144);
          v43 = *(v0 + 120);
          v44 = *(v0 + 128);
          v45 = sub_22B35F38C();
          v47 = v46;
          v130 = *(v44 + 104);
          v130(v42, v41, v43);
          v48 = sub_22B35EE3C();
          v50 = v49;
          v127 = *(v44 + 8);
          v127(v42, v43);
          if (v45 == v48 && v47 == v50)
          {
            goto LABEL_44;
          }

          v51 = sub_22B36134C();

          if (v51)
          {
            goto LABEL_45;
          }

          v52 = *(v0 + 392);
          v53 = *(v0 + 136);
          v54 = *(v0 + 120);
          v55 = sub_22B35F38C();
          v57 = v56;
          v130(v53, v52, v54);
          v58 = sub_22B35EE3C();
          v60 = v59;
          v127(v53, v54);
          if (v55 == v58 && v57 == v60)
          {
            goto LABEL_44;
          }

          v61 = sub_22B36134C();

          v2 = &unk_28140A000;
          v3 = qword_28140BD10;
          if ((v61 & 1) == 0)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v108 = *(v0 + 192);
            v109 = *(v0 + 152);
            v110 = *(v0 + 160);
            v111 = __swift_project_value_buffer(v109, qword_28140BD10);
            *(v0 + 320) = v111;
            swift_beginAccess();
            v112 = *(v110 + 16);
            *(v0 + 328) = v112;
            *(v0 + 336) = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v112(v108, v111, v109);
            v113 = v13;
            v114 = sub_22B36050C();
            v115 = sub_22B360D2C();

            v116 = os_log_type_enabled(v114, v115);
            v132 = *(v0 + 192);
            v118 = *(v0 + 152);
            v117 = *(v0 + 160);
            if (v116)
            {
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v134[0] = v120;
              *v119 = 136446210;
              v121 = sub_22B35F3AC();
              v123 = sub_22B1A7B20(v121, v122, v134);

              *(v119 + 4) = v123;
              _os_log_impl(&dword_22B116000, v114, v115, "[Dropbox] Refresh AMI Data for site %{public}s", v119, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v120);
              MEMORY[0x23188F650](v120, -1, -1);
              MEMORY[0x23188F650](v119, -1, -1);
            }

            v124 = *(v117 + 8);
            v124(v132, v118);
            *(v0 + 344) = v124;
            v125 = swift_task_alloc();
            *(v0 + 352) = v125;
            *v125 = v0;
            v125[1] = sub_22B2DDA60;

            return sub_22B2BDC04(v113);
          }
        }
      }
    }

LABEL_54:
    if (v2[25] != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 224);
    v63 = *(v0 + 232);
    v64 = *(v0 + 176);
    v65 = *(v0 + 152);
    v66 = *(v0 + 160);
    v67 = __swift_project_value_buffer(v65, v3);
    swift_beginAccess();
    (*(v66 + 16))(v64, v67, v65);
    sub_22B16F4CC(v63, v62);
    v68 = sub_22B36050C();
    v69 = sub_22B360D2C();
    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 224);
    v72 = *(v0 + 176);
    v73 = *(v0 + 152);
    v74 = (*(v0 + 160) + 8);
    if (v70)
    {
      v131 = *(v0 + 176);
      v75 = swift_slowAlloc();
      v128 = v73;
      v76 = swift_slowAlloc();
      v134[0] = v76;
      *v75 = 136446210;
      v77 = v3;
      v78 = *v71;
      v79 = v71[1];

      sub_22B16F530(v71);
      v80 = v78;
      v3 = v77;
      v81 = sub_22B1A7B20(v80, v79, v134);
      v2 = &unk_28140A000;

      *(v75 + 4) = v81;
      _os_log_impl(&dword_22B116000, v68, v69, "[Dropbox] Skip Refresh AMI Data for site %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x23188F650](v76, -1, -1);
      MEMORY[0x23188F650](v75, -1, -1);

      (*v74)(v131, v128);
    }

    else
    {

      sub_22B16F530(v71);
      (*v74)(v72, v73);
    }

    v1 = 0;
  }

  if (v2[25] != -1)
  {
    swift_once();
  }

  v96 = *(v0 + 200);
  v97 = *(v0 + 152);
  v98 = *(v0 + 160);
  v99 = __swift_project_value_buffer(v97, qword_28140BD10);
  swift_beginAccess();
  (*(v98 + 16))(v96, v99, v97);
  v100 = sub_22B36050C();
  v101 = sub_22B360D1C();
  v102 = os_log_type_enabled(v100, v101);
  v103 = *(v0 + 200);
  v104 = *(v0 + 152);
  v105 = *(v0 + 160);
  if (v102)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v134[0] = v107;
    *v106 = 136315394;
    *(v106 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, v134);
    *(v106 + 12) = 2048;
    *(v106 + 14) = 1578;
    _os_log_impl(&dword_22B116000, v100, v101, "[Dropbox] Task is cancelled at marker %s:%ld", v106, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x23188F650](v107, -1, -1);
    MEMORY[0x23188F650](v106, -1, -1);
  }

  (*(v105 + 8))(v103, v104);
  sub_22B16F530(*(v0 + 232));
LABEL_61:
  v133 = sub_22B360BFC();
  if ((v133 & 1) == 0)
  {
    goto LABEL_66;
  }

  if (v2[25] != -1)
  {
LABEL_75:
    swift_once();
  }

  v82 = *(v0 + 160);
  v83 = *(v0 + 168);
  v84 = *(v0 + 152);
  v85 = __swift_project_value_buffer(v84, qword_28140BD10);
  swift_beginAccess();
  (*(v82 + 16))(v83, v85, v84);
  v86 = sub_22B36050C();
  v87 = sub_22B360D1C();
  v88 = os_log_type_enabled(v86, v87);
  v89 = *(v0 + 160);
  v90 = *(v0 + 168);
  v91 = *(v0 + 152);
  if (v88)
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v134[0] = v93;
    *v92 = 136315394;
    *(v92 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, v134);
    *(v92 + 12) = 2048;
    *(v92 + 14) = 1630;
    _os_log_impl(&dword_22B116000, v86, v87, "[Dropbox] Task is cancelled at marker %s:%ld", v92, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x23188F650](v93, -1, -1);
    MEMORY[0x23188F650](v92, -1, -1);
  }

  (*(v89 + 8))(v90, v91);
LABEL_66:

  v94 = *(v0 + 8);

  return v94((v133 & 1) == 0);
}

uint64_t sub_22B2DECF0()
{
  v128 = v0;

  v1 = *(v0 + 280);
  v2 = *(v0 + 288) + 1;
  sub_22B16F530(*(v0 + 232));
  if (v2 != v1)
  {
    while (1)
    {
      v24 = *(v0 + 288) + 1;
      *(v0 + 288) = v24;
      v25 = *(v0 + 272);
      if (v24 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_77;
      }

      v26 = *(v0 + 232);
      sub_22B16F4CC(v25 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(*(v0 + 216) + 72) * v24, v26);
      v27 = *v26;
      *(v0 + 296) = *v26;
      v28 = v26[1];
      *(v0 + 304) = v28;
      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        break;
      }

LABEL_13:
      v22 = *(v0 + 280);
      v23 = *(v0 + 288) + 1;
      sub_22B16F530(*(v0 + 232));
      if (v23 == v22)
      {
        goto LABEL_2;
      }
    }

    if (sub_22B360BFC())
    {

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v111 = *(v0 + 200);
      v112 = *(v0 + 152);
      v113 = *(v0 + 160);
      v114 = __swift_project_value_buffer(v112, qword_28140BD10);
      swift_beginAccess();
      (*(v113 + 16))(v111, v114, v112);
      v115 = sub_22B36050C();
      v116 = sub_22B360D1C();
      v117 = os_log_type_enabled(v115, v116);
      v118 = *(v0 + 200);
      v119 = *(v0 + 152);
      v120 = *(v0 + 160);
      if (v117)
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v127[0] = v122;
        *v121 = 136315394;
        *(v121 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, v127);
        *(v121 + 12) = 2048;
        *(v121 + 14) = 1578;
        _os_log_impl(&dword_22B116000, v115, v116, "[Dropbox] Task is cancelled at marker %s:%ld", v121, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v122);
        MEMORY[0x23188F650](v122, -1, -1);
        MEMORY[0x23188F650](v121, -1, -1);
      }

      (*(v120 + 8))(v118, v119);
      sub_22B16F530(*(v0 + 232));
      goto LABEL_3;
    }

    sub_22B35EAFC();
    v30 = sub_22B35EAEC();
    *(v0 + 312) = v30;
    v31 = v30;
    v32 = sub_22B35F14C();
    if (!v33)
    {
LABEL_53:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v69 = *(v0 + 224);
      v70 = *(v0 + 232);
      v71 = *(v0 + 176);
      v72 = *(v0 + 152);
      v73 = *(v0 + 160);
      v74 = __swift_project_value_buffer(v72, qword_28140BD10);
      swift_beginAccess();
      (*(v73 + 16))(v71, v74, v72);
      sub_22B16F4CC(v70, v69);
      v75 = sub_22B36050C();
      v76 = sub_22B360D2C();
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 224);
      v79 = *(v0 + 176);
      v80 = *(v0 + 152);
      v81 = (*(v0 + 160) + 8);
      if (v77)
      {
        v125 = *(v0 + 176);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v127[0] = v18;
        *v17 = 136446210;
        v19 = *v78;
        v20 = v78[1];

        sub_22B16F530(v78);
        v21 = sub_22B1A7B20(v19, v20, v127);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_22B116000, v75, v76, "[Dropbox] Skip Refresh AMI Data for site %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x23188F650](v18, -1, -1);
        MEMORY[0x23188F650](v17, -1, -1);

        (*v81)(v125, v80);
      }

      else
      {

        sub_22B16F530(v78);
        (*v81)(v79, v80);
      }

      goto LABEL_13;
    }

    v34 = v32;
    v35 = v33;
    v36 = sub_22B35F06C();
    if (!v37)
    {
LABEL_52:

      goto LABEL_53;
    }

    v38 = v36;
    v39 = v37;
    v40 = sub_22B35F0BC();
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      v44 = sub_22B35F43C();
      if (v45)
      {
        v46 = v45;
        v125 = v44;
        v47 = sub_22B35F12C();
        if (v48)
        {
          v49 = v48;
          v123 = v47;

          if ((v35 & 0x2000000000000000) != 0)
          {
            v50 = HIBYTE(v35) & 0xF;
          }

          else
          {
            v50 = v34 & 0xFFFFFFFFFFFFLL;
          }

          if (v50)
          {
            if ((v39 & 0x2000000000000000) != 0)
            {
              v51 = HIBYTE(v39) & 0xF;
            }

            else
            {
              v51 = v38 & 0xFFFFFFFFFFFFLL;
            }

            if (v51)
            {
              if ((v43 & 0x2000000000000000) != 0)
              {
                v52 = HIBYTE(v43) & 0xF;
              }

              else
              {
                v52 = v42 & 0xFFFFFFFFFFFFLL;
              }

              if (!v52)
              {
                goto LABEL_52;
              }

              if ((v46 & 0x2000000000000000) != 0)
              {
                v53 = HIBYTE(v46) & 0xF;
              }

              else
              {
                v53 = v125 & 0xFFFFFFFFFFFFLL;
              }

              if (!v53)
              {
                goto LABEL_53;
              }

              v54 = HIBYTE(v49) & 0xF;
              if ((v49 & 0x2000000000000000) == 0)
              {
                v54 = v123 & 0xFFFFFFFFFFFFLL;
              }

              if (!v54)
              {
                goto LABEL_53;
              }

              v55 = sub_22B35F04C();
              v57 = v56;

              v58 = HIBYTE(v57) & 0xF;
              if ((v57 & 0x2000000000000000) == 0)
              {
                v58 = v55 & 0xFFFFFFFFFFFFLL;
              }

              if (!v58)
              {
                goto LABEL_53;
              }

              v59 = *(v0 + 388);
              v60 = *(v0 + 144);
              v61 = *(v0 + 120);
              v62 = *(v0 + 128);
              v63 = sub_22B35F38C();
              v65 = v64;
              v125 = *(v62 + 104);
              (v125)(v60, v59, v61);
              v66 = sub_22B35EE3C();
              v68 = v67;
              v124 = *(v62 + 8);
              v124(v60, v61);
              if (v63 != v66 || v65 != v68)
              {
                v82 = sub_22B36134C();

                if (v82)
                {
                  goto LABEL_53;
                }

                v83 = *(v0 + 392);
                v84 = *(v0 + 136);
                v85 = *(v0 + 120);
                v86 = sub_22B35F38C();
                v88 = v87;
                (v125)(v84, v83, v85);
                v89 = sub_22B35EE3C();
                v91 = v90;
                v124(v84, v85);
                if (v86 != v89 || v88 != v91)
                {
                  v92 = sub_22B36134C();

                  if ((v92 & 1) == 0)
                  {
                    if (qword_28140A0C8 != -1)
                    {
                      swift_once();
                    }

                    v93 = *(v0 + 192);
                    v94 = *(v0 + 152);
                    v95 = *(v0 + 160);
                    v96 = __swift_project_value_buffer(v94, qword_28140BD10);
                    *(v0 + 320) = v96;
                    swift_beginAccess();
                    v97 = *(v95 + 16);
                    *(v0 + 328) = v97;
                    *(v0 + 336) = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
                    v97(v93, v96, v94);
                    v98 = v31;
                    v99 = sub_22B36050C();
                    v100 = sub_22B360D2C();

                    v101 = os_log_type_enabled(v99, v100);
                    v126 = *(v0 + 192);
                    v103 = *(v0 + 152);
                    v102 = *(v0 + 160);
                    if (v101)
                    {
                      v104 = swift_slowAlloc();
                      v105 = swift_slowAlloc();
                      v127[0] = v105;
                      *v104 = 136446210;
                      v106 = sub_22B35F3AC();
                      v108 = sub_22B1A7B20(v106, v107, v127);

                      *(v104 + 4) = v108;
                      _os_log_impl(&dword_22B116000, v99, v100, "[Dropbox] Refresh AMI Data for site %{public}s", v104, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v105);
                      MEMORY[0x23188F650](v105, -1, -1);
                      MEMORY[0x23188F650](v104, -1, -1);
                    }

                    v109 = *(v102 + 8);
                    v109(v126, v103);
                    *(v0 + 344) = v109;
                    v110 = swift_task_alloc();
                    *(v0 + 352) = v110;
                    *v110 = v0;
                    v110[1] = sub_22B2DDA60;

                    return sub_22B2BDC04(v98);
                  }

                  goto LABEL_53;
                }
              }

              goto LABEL_51;
            }
          }

          else
          {
          }

          goto LABEL_52;
        }
      }
    }

LABEL_51:

    goto LABEL_52;
  }

LABEL_2:

LABEL_3:
  LOBYTE(v125) = sub_22B360BFC();
  if (v125)
  {
    if (qword_28140A0C8 != -1)
    {
LABEL_77:
      swift_once();
    }

    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v4, v6, v5);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = *(v0 + 152);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v127[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_22B1A7B20(0x6374654661746164, 0xEB00000000292868, v127);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 1630;
      _os_log_impl(&dword_22B116000, v7, v8, "[Dropbox] Task is cancelled at marker %s:%ld", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23188F650](v14, -1, -1);
      MEMORY[0x23188F650](v13, -1, -1);
    }

    (*(v10 + 8))(v11, v12);
  }

  v15 = *(v0 + 8);

  return v15((v125 & 1) == 0);
}

uint64_t sub_22B2DF848()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v1[6] = swift_task_alloc();
  v2 = sub_22B35E02C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v1[10] = swift_task_alloc();
  v3 = sub_22B35DF9C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_22B35E04C();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = sub_22B35DE9C();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = sub_22B36052C();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2DFB48, v0, 0);
}

uint64_t sub_22B2DFB48()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[25];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[31] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[32] = v5;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Purge old TOU Peaks", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[30];
  v10 = v0[24];
  v11 = v0[25];

  v12 = *(v11 + 8);
  v0[34] = v12;
  v12(v9, v10);
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v13 = v0[22];
  v14 = v0[17];
  v15 = v0[18];
  v16 = qword_28140BC80;
  v0[35] = qword_28140BC80;
  sub_22B35DE6C();
  sub_22B35DDCC();
  v17 = *(v15 + 8);
  v0[36] = v17;
  v0[37] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);

  return MEMORY[0x2822009F8](sub_22B2DFD58, v16, 0);
}

uint64_t sub_22B2DFD58()
{
  v1 = v0[36];
  v2 = v0[23];
  v3 = v0[17];
  v4 = v0[5];
  sub_22B21AAAC(v2);
  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22B2DFDF0, v4, 0);
}

uint64_t sub_22B2DFDF0(uint64_t a1)
{
  v52 = v1;
  if (sub_22B360BFC())
  {
    (*(v1 + 256))(*(v1 + 232), *(v1 + 248), *(v1 + 192));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 272);
    v6 = *(v1 + 232);
    v7 = *(v1 + 192);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v51 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v51);
      *(v8 + 12) = 2048;
      *(v8 + 14) = 1655;
      _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x23188F650](v9, -1, -1);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v5(v6, v7);

    v10 = *(v1 + 8);

    return v10(0);
  }

  else
  {
    v13 = *(v1 + 96);
    v12 = *(v1 + 104);
    v15 = *(v1 + 80);
    v14 = *(v1 + 88);
    (*(v13 + 104))(v12, *MEMORY[0x277CC9830], v14);
    sub_22B35DFAC();
    (*(v13 + 8))(v12, v14);
    sub_22B35E05C();
    v16 = sub_22B35E0BC();
    result = (*(*(v16 - 8) + 48))(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v1 + 288);
      v49 = *(v1 + 256);
      v43 = *(v1 + 224);
      v18 = *(v1 + 184);
      v44 = *(v1 + 192);
      v45 = *(v1 + 248);
      v19 = *(v1 + 176);
      v42 = *(v1 + 168);
      v47 = *(v1 + 160);
      v20 = *(v1 + 136);
      v21 = *(v1 + 144);
      v22 = *(v1 + 72);
      v24 = *(v1 + 56);
      v23 = *(v1 + 64);
      sub_22B35E01C();
      sub_22B35DE8C();
      (*(v23 + 104))(v22, *MEMORY[0x277CC9988], v24);
      sub_22B35F60C();
      (*(v23 + 8))(v22, v24);
      v17(v19, v20);
      sub_22B35F53C();
      v17(v18, v20);
      v49(v43, v45, v44);
      (*(v21 + 16))(v47, v42, v20);
      v25 = sub_22B36050C();
      v26 = sub_22B360D2C();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v1 + 288);
      v29 = *(v1 + 272);
      v30 = *(v1 + 224);
      v31 = *(v1 + 192);
      v32 = *(v1 + 160);
      v33 = *(v1 + 136);
      if (v27)
      {
        v50 = *(v1 + 224);
        v34 = swift_slowAlloc();
        v48 = v31;
        v35 = swift_slowAlloc();
        v51 = v35;
        *v34 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v46 = v29;
        v36 = sub_22B36131C();
        v38 = v37;
        v28(v32, v33);
        v39 = sub_22B1A7B20(v36, v38, &v51);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_22B116000, v25, v26, "[Dropbox] Purge readings before %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x23188F650](v35, -1, -1);
        MEMORY[0x23188F650](v34, -1, -1);

        v46(v50, v48);
      }

      else
      {

        v28(v32, v33);
        v29(v30, v31);
      }

      if (qword_281409598 != -1)
      {
        swift_once();
      }

      *(v1 + 304) = qword_28140BCE0;
      v40 = swift_task_alloc();
      *(v1 + 312) = v40;
      *v40 = v1;
      v40[1] = sub_22B2E0428;
      v41 = *(v1 + 168);

      return sub_22B1D73C8(v41);
    }
  }

  return result;
}

uint64_t sub_22B2E0428()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B2E0538, v1, 0);
}

uint64_t sub_22B2E0538(uint64_t a1)
{
  v22 = v1;
  if (sub_22B360BFC())
  {
    (*(v1 + 256))(*(v1 + 216), *(v1 + 248), *(v1 + 192));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 288);
    v6 = *(v1 + 216);
    v7 = *(v1 + 192);
    v17 = *(v1 + 168);
    v18 = *(v1 + 272);
    v8 = *(v1 + 136);
    v9 = *(v1 + 120);
    v19 = *(v1 + 112);
    v20 = *(v1 + 128);
    if (v4)
    {
      v16 = *(v1 + 288);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v21);
      *(v10 + 12) = 2048;
      *(v10 + 14) = 1682;
      _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188F650](v11, -1, -1);
      MEMORY[0x23188F650](v10, -1, -1);

      v18(v6, v7);
      v16(v17, v8);
    }

    else
    {

      v18(v6, v7);
      v5(v17, v8);
    }

    (*(v9 + 8))(v20, v19);

    v15 = *(v1 + 8);

    return v15(0);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v1 + 320) = v12;
    *v12 = v1;
    v12[1] = sub_22B2E0880;
    v13 = *(v1 + 48);

    return sub_22B1D78E0(v13, 0, 0, 0, 0);
  }
}

uint64_t sub_22B2E0880()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B2E0990, v1, 0);
}

uint64_t sub_22B2E0990()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
LABEL_8:
    if (qword_2814099B0 != -1)
    {
      swift_once();
    }

    v4 = qword_28140BCF8;
    *(v0 + 336) = qword_28140BCF8;
    v5 = sub_22B2E0E7C;
    goto LABEL_11;
  }

  (*(v2 + 32))(*(v0 + 152), v3, v1);
  if ((sub_22B35DDFC() & 1) == 0)
  {
    (*(v0 + 288))(*(v0 + 152), *(v0 + 136));
    goto LABEL_8;
  }

  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v4 = qword_28140BCF8;
  *(v0 + 328) = qword_28140BCF8;
  v5 = sub_22B2E0B14;
LABEL_11:

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B2E0B14()
{
  v1 = *(v0 + 40);
  sub_22B306544(*(v0 + 152));

  return MEMORY[0x2822009F8](sub_22B2E0B84, v1, 0);
}

uint64_t sub_22B2E0B84()
{
  v23 = v0;
  (*(v0 + 288))(*(v0 + 152), *(v0 + 136));
  v21 = sub_22B360BFC();
  if (v21)
  {
    (*(v0 + 256))(*(v0 + 208), *(v0 + 248), *(v0 + 192));
    v1 = sub_22B36050C();
    v2 = sub_22B360D1C();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 288);
    v5 = *(v0 + 208);
    v6 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 272);
    v7 = *(v0 + 136);
    v8 = *(v0 + 120);
    v19 = *(v0 + 112);
    v20 = *(v0 + 128);
    if (v3)
    {
      v9 = swift_slowAlloc();
      v16 = v4;
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v22);
      *(v9 + 12) = 2048;
      *(v9 + 14) = 1706;
      _os_log_impl(&dword_22B116000, v1, v2, "[Dropbox] Task is cancelled at marker %s:%ld", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23188F650](v10, -1, -1);
      MEMORY[0x23188F650](v9, -1, -1);

      v18(v5, v6);
      v16(v17, v7);
    }

    else
    {

      v18(v5, v6);
      v4(v17, v7);
    }

    (*(v8 + 8))(v20, v19);
  }

  else
  {
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    (*(v0 + 288))(*(v0 + 168), *(v0 + 136));
    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 8);

  return v14((v21 & 1) == 0);
}

uint64_t sub_22B2E0E7C()
{
  v1 = *(v0 + 40);
  sub_22B306544(*(v0 + 168));

  return MEMORY[0x2822009F8](sub_22B2E0EEC, v1, 0);
}

uint64_t sub_22B2E0EEC(uint64_t a1)
{
  v24 = v1;
  v22 = sub_22B360BFC();
  if (v22)
  {
    (*(v1 + 256))(*(v1 + 208), *(v1 + 248), *(v1 + 192));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 288);
    v6 = *(v1 + 208);
    v7 = *(v1 + 192);
    v18 = *(v1 + 168);
    v19 = *(v1 + 272);
    v8 = *(v1 + 136);
    v9 = *(v1 + 120);
    v20 = *(v1 + 112);
    v21 = *(v1 + 128);
    if (v4)
    {
      v10 = swift_slowAlloc();
      v17 = v5;
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_22B1A7B20(0x746144656E757270, 0xEB00000000292861, &v23);
      *(v10 + 12) = 2048;
      *(v10 + 14) = 1706;
      _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188F650](v11, -1, -1);
      MEMORY[0x23188F650](v10, -1, -1);

      v19(v6, v7);
      v17(v18, v8);
    }

    else
    {

      v19(v6, v7);
      v5(v18, v8);
    }

    (*(v9 + 8))(v21, v20);
  }

  else
  {
    v12 = *(v1 + 128);
    v14 = *(v1 + 112);
    v13 = *(v1 + 120);
    (*(v1 + 288))(*(v1 + 168), *(v1 + 136));
    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v1 + 8);

  return v15((v22 & 1) == 0);
}

uint64_t sub_22B2E11D4(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 200) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  *(v2 + 72) = swift_task_alloc();
  v3 = sub_22B36064C();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_22B36052C();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E1344, v1, 0);
}

uint64_t sub_22B2E1344()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_28140BDD0;
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_22B2E140C;

  return sub_22B142D7C();
}

uint64_t sub_22B2E140C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_22B2E151C, v1, 0);
}

uint64_t sub_22B2E151C()
{
  v1 = v0[8];
  if (*(v1 + 112) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[17];
    v3 = v0[14];
    v4 = v0[15];
    v5 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_22B36050C();
    v7 = sub_22B360D2C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Refresh is already executing", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v13 = v0[1];

    return v13();
  }

  else
  {
    sub_22B2E5874();
    v0[20] = os_transaction_create();
    sub_22B2E4290();
    *(v1 + 112) = 1;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];
    v18 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_22B36050C();
    v20 = sub_22B360D2C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "[Dropbox] Refresh AMI Data", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[14];

    (*(v23 + 8))(v22, v24);
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = sub_22B2E188C;

    return sub_22B2D9014();
  }
}

uint64_t sub_22B2E188C(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 201) = a1;

  return MEMORY[0x2822009F8](sub_22B2E19A4, v2, 0);
}

uint64_t sub_22B2E19A4()
{
  if (*(v0 + 201))
  {
    v1 = swift_task_alloc();
    *(v0 + 176) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E1B78;

    return sub_22B2DCA40();
  }

  else
  {
    v3 = *(v0 + 200);
    *(*(v0 + 64) + 112) = 0;
    v4 = *(v0 + 160);
    if (v3 == 1)
    {
      v6 = *(v0 + 96);
      v5 = *(v0 + 104);
      v7 = *(v0 + 80);
      v8 = *(v0 + 88);
      sub_22B36063C();
      sub_22B36065C();
      v9 = *(v8 + 8);
      v9(v6, v7);
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      swift_unknownObjectRetain();
      sub_22B1245A8(v5, sub_22B2EC224, v10);

      swift_unknownObjectRelease();
      v9(v5, v7);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22B2E1B78(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 202) = a1;

  return MEMORY[0x2822009F8](sub_22B2E1C90, v2, 0);
}

uint64_t sub_22B2E1C90()
{
  if (*(v0 + 202))
  {
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E1E74;

    return sub_22B2DF848();
  }

  else
  {
    v3 = *(v0 + 160);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 200);
    *(v5 + 112) = 0;
    v7 = sub_22B360B6C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    *(v8 + 48) = v3;
    swift_unknownObjectRetain();

    sub_22B322A98(0, 0, v4, &unk_22B366D70, v8);

    swift_unknownObjectRelease();
    sub_22B123284(v4, &qword_27D8BA8D0, &qword_22B363610);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_22B2E1E74(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 203) = a1;

  return MEMORY[0x2822009F8](sub_22B2E1F8C, v2, 0);
}

uint64_t sub_22B2E1F8C()
{
  if (*(v0 + 203))
  {
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E2160;

    return sub_22B142D7C();
  }

  else
  {
    v3 = *(v0 + 200);
    *(*(v0 + 64) + 112) = 0;
    v4 = *(v0 + 160);
    if (v3 == 1)
    {
      v6 = *(v0 + 96);
      v5 = *(v0 + 104);
      v7 = *(v0 + 80);
      v8 = *(v0 + 88);
      sub_22B36063C();
      sub_22B36065C();
      v9 = *(v8 + 8);
      v9(v6, v7);
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      swift_unknownObjectRetain();
      sub_22B1245A8(v5, sub_22B2EC224, v10);

      swift_unknownObjectRelease();
      v9(v5, v7);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22B2E2160()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_22B2E2270, v1, 0);
}

uint64_t sub_22B2E2270()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 200);
  *(v3 + 112) = 0;
  v5 = sub_22B360B6C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v1;
  swift_unknownObjectRetain();

  sub_22B322A98(0, 0, v2, &unk_22B366D80, v6);

  swift_unknownObjectRelease();
  sub_22B123284(v2, &qword_27D8BA8D0, &qword_22B363610);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22B2E23DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 64) = a5;
  v7 = sub_22B36064C();
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v7 - 8);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_22B2E24DC;

  return sub_22B2E5D34();
}

uint64_t sub_22B2E24DC()
{

  return MEMORY[0x2822009F8](sub_22B2E25D8, 0, 0);
}

uint64_t sub_22B2E25D8()
{
  if (*(v0 + 64) == 1)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    sub_22B36063C();
    sub_22B36065C();
    v6 = *(v4 + 8);
    v6(v1, v3);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    swift_unknownObjectRetain();
    sub_22B1245A8(v2, sub_22B2E76E0, v7);

    v6(v2, v3);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B2E26F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 64) = a5;
  v7 = sub_22B36064C();
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v7 - 8);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_22B2E27F8;

  return sub_22B2E5D34();
}

uint64_t sub_22B2E27F8()
{

  return MEMORY[0x2822009F8](sub_22B2E28F4, 0, 0);
}

uint64_t sub_22B2E28F4()
{
  if (*(v0 + 64) == 1)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    sub_22B36063C();
    sub_22B36065C();
    v6 = *(v4 + 8);
    v6(v1, v3);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    swift_unknownObjectRetain();
    sub_22B1245A8(v2, sub_22B2EC224, v7);

    v6(v2, v3);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B2E2A14(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B36064C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_22B3604BC();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_22B36052C();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v3[18] = swift_task_alloc();
  v7 = sub_22B36047C();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = sub_22B3604AC();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E2CA4, v2, 0);
}

uint64_t sub_22B2E2CA4()
{
  v0[27] = os_transaction_create();
  sub_22B2E4290();
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_28140BC88);
  (*(v2 + 16))(v1, v4, v3);
  sub_22B36048C();
  sub_22B36045C();
  v5 = sub_22B36048C();
  v6 = sub_22B360E2C();
  if (sub_22B360FDC())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v5, v6, v8, "InitialFetch", "", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[19];
  v12 = v0[20];

  (*(v12 + 16))(v10, v9, v11);
  sub_22B3604EC();
  swift_allocObject();
  v0[28] = sub_22B3604DC();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_22B2E2EF4;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B22250C(v15, v14, 1, 0);
}

uint64_t sub_22B2E2EF4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_22B2E300C, v2, 0);
}

uint64_t sub_22B2E300C(uint64_t a1)
{
  v2 = v1[30];
  if (v2)
  {
    v3 = sub_22B36048C();
    v4 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v6, "Start: Fetch AMI Data", "", v5, 2u);
      MEMORY[0x23188F650](v5, -1, -1);
    }

    v7 = swift_task_alloc();
    v1[31] = v7;
    *v7 = v1;
    v7[1] = sub_22B2E3410;

    return sub_22B2BDC04(v2);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v10 = v1[16];
    v9 = v1[17];
    v11 = v1[15];
    v12 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v1[16];
    v16 = v1[17];
    v18 = v1[15];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v13, v14, "[Dropbox] Site not owned by user", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);
    v20 = sub_22B36048C();
    sub_22B3604CC();
    v21 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v23 = v1[13];
      v22 = v1[14];
      v24 = v1[12];

      sub_22B3604FC();

      if ((*(v23 + 88))(v22, v24) == *MEMORY[0x277D85B00])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[13] + 8))(v1[14], v1[12]);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v20, v21, v27, "InitialFetch", v25, v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    v29 = v1[20];
    v28 = v1[21];
    v30 = v1[19];

    v31 = *(v29 + 8);
    v1[35] = v31;
    v31(v28, v30);
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v32 = swift_task_alloc();
    v1[36] = v32;
    *v32 = v1;
    v32[1] = sub_22B2E36D0;

    return sub_22B142D7C();
  }
}

uint64_t sub_22B2E3410()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = sub_22B2E3AF8;
  }

  else
  {
    v4 = sub_22B2EC210;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2E3548()
{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = sub_22B2E4004;
  }

  else
  {

    v4 = sub_22B2EC220;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2E36D0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 296) = v3;
  *v3 = v2;
  v3[1] = sub_22B2E3810;

  return sub_22B2E5D34();
}

uint64_t sub_22B2E3810()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22B2E3920, v1, 0);
}

uint64_t sub_22B2E3920()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v14 = v0[35];
  v15 = v0[24];
  v13 = v0[23];
  v12 = v0[19];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  sub_22B36063C();
  sub_22B36065C();
  v8 = *(v6 + 8);
  v8(v5, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  swift_unknownObjectRetain();
  sub_22B1245A8(v4, sub_22B2E74DC, v9);

  swift_unknownObjectRelease();
  v8(v4, v7);
  v14(v13, v12);
  (*(v2 + 8))(v3, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B2E3AF8(uint64_t a1)
{
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v5, "End: Fetch AMI Data", "", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v6 = sub_22B35F12C();
  v8 = *(v1 + 240);
  if (!v7)
  {
    goto LABEL_21;
  }

  v9 = v6;
  v10 = v7;
  v11 = sub_22B35F43C();
  v8 = *(v1 + 240);
  if (!v12)
  {
LABEL_20:

LABEL_21:

    goto LABEL_22;
  }

  v13 = v11;
  v14 = v12;
  v15 = sub_22B35F41C();
  v17 = v16;

  if (!v17)
  {
    v8 = *(v1 + 240);
    goto LABEL_20;
  }

  v18 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v18 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v19 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v20 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_18:
    v25 = *(v1 + 240);

    goto LABEL_22;
  }

  v21 = *(v1 + 144);
  sub_22B35E05C();

  v22 = sub_22B35E0BC();
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  v24 = *(v1 + 144);
  if (v23 == 1)
  {

    sub_22B123284(v24, &unk_27D8BA080, &unk_22B364280);
LABEL_22:
    v26 = sub_22B36048C();
    sub_22B3604CC();
    v27 = sub_22B360E1C();
    if (sub_22B360FDC())
    {
      v29 = *(v1 + 104);
      v28 = *(v1 + 112);
      v30 = *(v1 + 96);

      sub_22B3604FC();

      if ((*(v29 + 88))(v28, v30) == *MEMORY[0x277D85B00])
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));
        v31 = "";
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v26, v27, v33, "InitialFetch", v31, v32, 2u);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    v35 = *(v1 + 160);
    v34 = *(v1 + 168);
    v36 = *(v1 + 152);

    v37 = *(v35 + 8);
    *(v1 + 280) = v37;
    v37(v34, v36);
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v38 = swift_task_alloc();
    *(v1 + 288) = v38;
    *v38 = v1;
    v38[1] = sub_22B2E36D0;

    return sub_22B142D7C();
  }

  sub_22B123284(*(v1 + 144), &unk_27D8BA080, &unk_22B364280);
  v40 = sub_22B36048C();
  v41 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v40, v41, v43, "Start: Process AMI Data", "", v42, 2u);
    MEMORY[0x23188F650](v42, -1, -1);
  }

  type metadata accessor for AMIRecordsProcessor(0);
  swift_allocObject();
  *(v1 + 256) = sub_22B1B79F4();
  v44 = sub_22B35F3AC();
  v46 = v45;
  *(v1 + 264) = v45;
  v47 = swift_task_alloc();
  *(v1 + 272) = v47;
  *v47 = v1;
  v47[1] = sub_22B2E3548;

  return sub_22B1C437C(v44, v46);
}

uint64_t sub_22B2E4004(uint64_t a1)
{
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  v4 = sub_22B360FDC();
  v5 = v1[30];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v7, "End: Process AMI Data", "", v6, 2u);
    MEMORY[0x23188F650](v6, -1, -1);
  }

  v8 = sub_22B36048C();
  sub_22B3604CC();
  v9 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[12];

    sub_22B3604FC();

    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[13] + 8))(v1[14], v1[12]);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v8, v9, v15, "InitialFetch", v13, v14, 2u);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v17 = v1[20];
  v16 = v1[21];
  v18 = v1[19];

  v19 = *(v17 + 8);
  v1[35] = v19;
  v19(v16, v18);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v20 = swift_task_alloc();
  v1[36] = v20;
  *v20 = v1;
  v20[1] = sub_22B2E36D0;

  return sub_22B142D7C();
}

uint64_t sub_22B2E4290()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "[Dropbox] Taking extended lifetime", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22B2E4444(uint64_t a1, const char *a2)
{
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, a2, v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22B2E45F0()
{
  v1[8] = v0;
  v2 = type metadata accessor for CDEnergySite(0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_22B35F01C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_22B36052C();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E4774, v0, 0);
}

uint64_t sub_22B2E4774()
{
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_22B2E4838;

  return sub_22B335200();
}

uint64_t sub_22B2E4838(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_22B2E4950, v2, 0);
}

uint64_t sub_22B2E4950()
{
  if (*(v0 + 296))
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    (*(*(v0 + 104) + 104))(*(v0 + 112), *MEMORY[0x277D073C8], *(v0 + 96));
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_22B2E4BBC;
    v2 = *(v0 + 112);

    return sub_22B141FF0(1, v2);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v4, v7, v5);
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "[Dropbox] E2E unavailable. Skip refresh via alarm", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22B2E4BBC(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 64);
  *(*v1 + 168) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B2E4D30, v5, 0);
}

uint64_t sub_22B2E4D30()
{
  v1 = *(v0 + 168);
  if (!v1)
  {
LABEL_19:

    v22 = *(v0 + 8);

    return v22();
  }

  v2 = *(v1 + 16);
  *(v0 + 176) = v2;
  if (!v2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = sub_22B35EAFC();
  v6 = 0;
  *(v0 + 184) = v5;
  *(v0 + 288) = *(v3 + 28);
  *(v0 + 292) = *(v4 + 80);
  while (1)
  {
    *(v0 + 192) = v6;
    v7 = *(v0 + 168);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v8 = *(v0 + 88);
    v9 = (v8 + *(v0 + 288));
    sub_22B16F4CC(v7 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(*(v0 + 80) + 72) * v6, v8);
    v10 = *v9;
    v11 = v9[1];

    sub_22B144B30(v10, v11);

    sub_22B16F530(v8);
    v12 = sub_22B35EAEC();
    *(v0 + 200) = v12;
    *(v0 + 208) = 0;
    v13 = v12;

    sub_22B12F174(v10, v11);

    v14 = sub_22B35F12C();
    *(v0 + 216) = v14;
    *(v0 + 224) = v15;
    if (!v15)
    {

      goto LABEL_5;
    }

    v16 = v14;
    v17 = v15;
    v18 = sub_22B35F43C();
    *(v0 + 232) = v18;
    *(v0 + 240) = v19;
    if (!v19)
    {

      goto LABEL_4;
    }

    v20 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v20 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        break;
      }
    }

LABEL_4:

LABEL_5:
    v6 = *(v0 + 192) + 1;
    if (v6 == *(v0 + 176))
    {
      goto LABEL_18;
    }
  }

  if (qword_2814096B8 == -1)
  {
    goto LABEL_23;
  }

LABEL_27:
  swift_once();
LABEL_23:
  v24 = qword_28140BCE8;
  *(v0 + 248) = qword_28140BCE8;

  return MEMORY[0x2822009F8](sub_22B2E4FF8, v24, 0);
}

uint64_t sub_22B2E4FF8()
{
  v1 = v0[8];
  v0[32] = sub_22B32C964(v0[27], v0[28], v0[29], v0[30]);

  return MEMORY[0x2822009F8](sub_22B2E5070, v1, 0);
}

uint64_t sub_22B2E5070()
{
  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCF8;
  *(v0 + 264) = qword_28140BCF8;

  return MEMORY[0x2822009F8](sub_22B2E5108, v1, 0);
}

uint64_t sub_22B2E5108()
{
  v1 = v0[8];
  v0[34] = sub_22B306A2C(v0[27], v0[28], v0[29], v0[30]);

  return MEMORY[0x2822009F8](sub_22B2E5180, v1, 0);
}

uint64_t sub_22B2E5180()
{
  v46 = v0;
  if (*(v0 + 256))
  {
    v1 = *(v0 + 272) == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1 && *(*(v0 + 64) + 116) != 1)
  {

    v23 = *(v0 + 192) + 1;
    if (v23 == *(v0 + 176))
    {
LABEL_14:

      v24 = *(v0 + 8);

      return v24();
    }

    v25 = *(v0 + 208);
    while (1)
    {
      *(v0 + 192) = v23;
      v26 = *(v0 + 168);
      if (v23 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v27 = *(v0 + 88);
      v28 = (v27 + *(v0 + 288));
      sub_22B16F4CC(v26 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(*(v0 + 80) + 72) * v23, v27);
      v29 = *v28;
      v30 = v28[1];

      sub_22B144B30(v29, v30);

      sub_22B16F530(v27);
      v31 = sub_22B35EAEC();
      *(v0 + 200) = v31;
      *(v0 + 208) = v25;
      if (v25)
      {

        sub_22B12F174(v29, v30);
      }

      else
      {
        v32 = v31;

        sub_22B12F174(v29, v30);

        v33 = sub_22B35F12C();
        *(v0 + 216) = v33;
        *(v0 + 224) = v34;
        if (!v34)
        {

          goto LABEL_20;
        }

        v35 = v33;
        v36 = v34;
        v37 = sub_22B35F43C();
        *(v0 + 232) = v37;
        *(v0 + 240) = v38;
        if (v38)
        {
          v39 = HIBYTE(v36) & 0xF;
          if ((v36 & 0x2000000000000000) == 0)
          {
            v39 = v35 & 0xFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            v40 = HIBYTE(v38) & 0xF;
            if ((v38 & 0x2000000000000000) == 0)
            {
              v40 = v37 & 0xFFFFFFFFFFFFLL;
            }

            if (v40)
            {
              if (qword_2814096B8 != -1)
              {
                swift_once();
              }

              v41 = qword_28140BCE8;
              *(v0 + 248) = qword_28140BCE8;

              return MEMORY[0x2822009F8](sub_22B2E4FF8, v41, 0);
            }
          }
        }

        else
        {
        }
      }

LABEL_20:
      v25 = 0;
      v23 = *(v0 + 192) + 1;
      if (v23 == *(v0 + 176))
      {
        goto LABEL_14;
      }
    }
  }

  if (qword_28140A0C8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 240);
  if (v8)
  {
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    v12 = *(v0 + 216);
    v13 = *(v0 + 128);
    v44 = *(v0 + 136);
    v42 = *(v0 + 200);
    v43 = *(v0 + 120);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45[0] = v15;
    *v14 = 136315394;
    v16 = sub_22B1A7B20(v12, v11, v45);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    v17 = sub_22B1A7B20(v10, v9, v45);

    *(v14 + 14) = v17;
    _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Initial fetch empty for %s: %s. Try again", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    (*(v13 + 8))(v44, v43);
  }

  else
  {
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 120);

    (*(v19 + 8))(v18, v20);
  }

  v21 = swift_task_alloc();
  *(v0 + 280) = v21;
  *v21 = v0;
  v21[1] = sub_22B2E5708;

  return sub_22B2E11D4(0);
}

uint64_t sub_22B2E5708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B2E5874()
{
  v1 = sub_22B35EE8C();
  v24 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 113) & 1) == 0)
  {
    if (qword_281409448 != -1)
    {
      swift_once();
    }

    sub_22B196CF8();
  }

  if (qword_281409448 != -1)
  {
    swift_once();
  }

  v23 = MEMORY[0x23188EEB0]();
  v8 = [objc_opt_self() sharedScheduler];
  v9 = sub_22B36081C();
  v10 = [v8 taskRequestForIdentifier_];

  if (v10)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v7, v11, v4);
    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v1;
      v16 = v15;
      v25[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B368C40, v25);
      _os_log_impl(&dword_22B116000, v12, v13, "[HistoricalGuidanceDownloadTask] %s is already scheduled", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v17 = v16;
      v1 = v22;
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v26 = &type metadata for BackgroundSystemTaskRequest;
    v27 = &off_283EFE7E8;
    v18 = swift_allocObject();
    v25[0] = v18;
    *(v18 + 16) = 0xD000000000000027;
    *(v18 + 24) = 0x800000022B368C40;
    *(v18 + 32) = 0x409C200000000000;
    *(v18 + 40) = 0;
    sub_22B348FC8(v25, 0, 0);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  objc_autoreleasePoolPop(v23);
  v19 = v24;
  (*(v24 + 104))(v3, *MEMORY[0x277D07390], v1);
  v20 = sub_22B35EE7C();
  result = (*(v19 + 8))(v3, v1);
  if (v20)
  {
    v26 = &type metadata for BackgroundSystemTaskScheduler;
    v27 = &off_283EFE540;
    sub_22B220B58(7200.0, v25, 0xD000000000000026, 0x800000022B36A4C0);
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return result;
}

uint64_t sub_22B2E5D34()
{
  v1[5] = v0;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E5E0C, v0, 0);
}

uint64_t sub_22B2E5E0C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[11] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Notifying clients of electricity data refresh", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[7];

  v12 = *(v11 + 8);
  v0[14] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_22B2E5FE8;

  return sub_22B3515E8(0xD000000000000014, 0x800000022B36D4B0);
}

uint64_t sub_22B2E5FE8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B2E60F8, v1, 0);
}

uint64_t sub_22B2E60F8()
{
  (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 48));
  v1 = sub_22B36050C();
  v2 = sub_22B360CFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "Updating Client on electricity data refresh", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  v4(v5, v6);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(qword_28140BDD8 + 112);
  sub_22B35EF1C();
  v12 = sub_22B36081C();

  [v11 postNotificationName:v12 object:0 userInfo:0 deliverImmediately:1];

  v7(v9, v8, v10);
  v13 = sub_22B36050C();
  v14 = sub_22B360CFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B116000, v13, v14, "Updated Client on electricity data refresh", v15, 2u);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v16 = *(v0 + 112);
  v17 = *(v0 + 64);
  v18 = *(v0 + 48);

  v16(v17, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22B2E6388@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_22B2E641C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22B33B28C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B34128C();
      v10 = v12;
    }

    sub_22B172454((*(v10 + 56) + 32 * v8), a3);
    sub_22B2E64C0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_22B2E64C0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B36106C() + 1) & ~v5;
    do
    {
      sub_22B36149C();

      sub_22B3608FC();
      v10 = sub_22B3614DC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_22B2E6670(int64_t a1, uint64_t a2)
{
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_22B36106C();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_22B2EC1B8(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      v21 = sub_22B36071C();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_22B35F00C() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_22B2E69B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22B35D91C();
    if (v10)
    {
      v11 = sub_22B35D94C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22B35D93C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22B35D91C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22B35D94C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22B35D93C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22B2E6BE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22B2E7704(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22B12F174(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_22B2E69B4(v13, a3, a4, &v12);
  v10 = v4;
  sub_22B12F174(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_22B2E6D74(char a1, char a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  swift_defaultActor_initialize();
  *(v3 + 120) = 0;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0;
  *(v3 + 112) = a1;
  *(v3 + 113) = a2;
  if (sub_22B35EEBC())
  {
    v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v20 = sub_22B36081C();
    v21 = [v19 initWithSuiteName_];

    if (v21)
    {
      v59 = v7;
      v22 = v21;
      v23 = sub_22B36081C();
      v24 = [v22 BOOLForKey_];

      if (v24)
      {
        *(v3 + 113) = 1;
      }

      v58 = v6;
      v25 = v22;
      v26 = sub_22B36081C();
      v27 = [v25 BOOLForKey_];

      if (v27)
      {
        *(v3 + 114) = 1;
      }

      v28 = v25;
      v29 = sub_22B36081C();
      v30 = [v28 BOOLForKey:v29];

      if ((v30 & 1) != 0 && (*(v3 + 115) = 1, v28 = v28, v31 = sub_22B36081C(), v32 = [v28 integerForKey:v31], v28, v31, *(v3 + 120) = v32, *(v3 + 115) == 1))
      {
        if (v32 == 998)
        {
          v46 = v58;
          v47 = v59;
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v48 = __swift_project_value_buffer(v46, qword_28140BD10);
          swift_beginAccess();
          (*(v47 + 16))(v12, v48, v46);
          v49 = sub_22B36050C();
          v50 = sub_22B360D2C();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_22B116000, v49, v50, "Token Error Inducer. Aggressive polling with 1 hour cktoken expiration enabled", v51, 2u);
            MEMORY[0x23188F650](v51, -1, -1);
            v52 = v28;
          }

          else
          {
            v52 = v49;
            v49 = v28;
          }

          (*(v47 + 8))(v12, v46);
          *(v3 + 116) = 257;
        }

        else
        {
          v33 = v58;
          v34 = v59;
          if (v32 == 997)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v41 = __swift_project_value_buffer(v33, qword_28140BD10);
            swift_beginAccess();
            (*(v34 + 16))(v15, v41, v33);
            v42 = sub_22B36050C();
            v43 = sub_22B360D2C();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&dword_22B116000, v42, v43, "Token Error Inducer. 1 hour cktoken expiration", v44, 2u);
              MEMORY[0x23188F650](v44, -1, -1);
              v45 = v28;
            }

            else
            {
              v45 = v42;
              v42 = v28;
            }

            (*(v34 + 8))(v15, v33);
            *(v3 + 117) = 1;
          }

          else if (v32 == 996)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v35 = __swift_project_value_buffer(v33, qword_28140BD10);
            swift_beginAccess();
            (*(v34 + 16))(v18, v35, v33);
            v36 = sub_22B36050C();
            v37 = sub_22B360D2C();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&dword_22B116000, v36, v37, "Token Error Inducer. Aggressive polling with 30 min fetch, token valid", v38, 2u);
              MEMORY[0x23188F650](v38, -1, -1);
              v39 = v28;
            }

            else
            {
              v39 = v36;
              v36 = v28;
            }

            (*(v34 + 8))(v18, v33);
            *(v3 + 116) = 1;
          }

          else
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v53 = __swift_project_value_buffer(v33, qword_28140BD10);
            swift_beginAccess();
            (*(v34 + 16))(v9, v53, v33);
            v54 = sub_22B36050C();
            v55 = sub_22B360D2C();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              *v56 = 0;
              _os_log_impl(&dword_22B116000, v54, v55, "Skipping error inducer setup", v56, 2u);
              MEMORY[0x23188F650](v56, -1, -1);
            }

            else
            {
            }

            (*(v34 + 8))(v9, v33);
          }
        }
      }

      else
      {
      }
    }
  }

  return v3;
}

uint64_t sub_22B2E7500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B2E23DC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_45Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B2E7614(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B124D88;

  return sub_22B2E26F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B2E7704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22B35D91C();
  v11 = result;
  if (result)
  {
    result = sub_22B35D94C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22B35D93C();
  sub_22B2E69B4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_22B2E77BC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22B144B30(a3, a4);
          return sub_22B2E6BE4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22B2E7924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[72] = v8;
  v9[71] = v17;
  v9[70] = v16;
  v9[69] = a8;
  v9[68] = a7;
  v9[67] = a6;
  v9[66] = a5;
  v9[65] = a4;
  v9[63] = a2;
  v9[64] = a3;
  v9[62] = a1;
  v10 = sub_22B35FF9C();
  v9[73] = v10;
  v9[74] = *(v10 - 8);
  v9[75] = swift_task_alloc();
  v9[76] = swift_task_alloc();
  v11 = sub_22B36008C();
  v9[77] = v11;
  v9[78] = *(v11 - 8);
  v9[79] = swift_task_alloc();
  v9[80] = swift_task_alloc();
  v12 = sub_22B36052C();
  v9[81] = v12;
  v9[82] = *(v12 - 8);
  v9[83] = swift_task_alloc();
  v9[84] = swift_task_alloc();
  v9[85] = swift_task_alloc();
  v9[86] = swift_task_alloc();
  v9[87] = swift_task_alloc();
  v9[88] = swift_task_alloc();
  v9[89] = swift_task_alloc();
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v9[92] = swift_task_alloc();
  v13 = sub_22B35DE9C();
  v9[93] = v13;
  v9[94] = *(v13 - 8);
  v9[95] = swift_task_alloc();
  v9[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2E7BB4, v8, 0);
}

uint64_t sub_22B2E7BB4(uint64_t a1)
{
  v51 = v1;
  sub_22B35DE6C();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v48 = *(v1 + 760);
  v2 = *(v1 + 752);
  v3 = *(v1 + 744);
  v4 = *(v1 + 736);
  v5 = *(v1 + 656);
  v6 = *(v1 + 648);
  v7 = *(v1 + 528);
  v8 = *(v1 + 520);
  v9 = *(v1 + 512);
  v10 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v1 + 776) = v10;
  swift_beginAccess();
  v11 = *(v5 + 16);
  *(v1 + 784) = v11;
  *(v1 + 792) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v10, v6);
  (*(v2 + 16))(v48, v9, v3);
  sub_22B144B30(v8, v7);
  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();
  sub_22B12F174(v8, v7);
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 760);
  v16 = *(v1 + 752);
  v17 = *(v1 + 744);
  v18 = *(v1 + 736);
  v19 = *(v1 + 656);
  v20 = *(v1 + 648);
  if (v14)
  {
    v49 = *(v1 + 736);
    v47 = *(v1 + 648);
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v21 = 136446466;
    v22 = sub_22B35DC7C();
    v24 = sub_22B1A7B20(v22, v23, &v50);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v25 = sub_22B36131C();
    v27 = v26;
    log = v12;
    v28 = v13;
    v29 = *(v16 + 8);
    v29(v15, v17);
    v30 = sub_22B1A7B20(v25, v27, &v50);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_22B116000, log, v28, "[Dropbox] Starting poll for IntervalBlocks with offset: %{public}s and date: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v46, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);

    v31 = *(v19 + 8);
    v31(v49, v47);
  }

  else
  {

    v29 = *(v16 + 8);
    v29(v15, v17);
    v31 = *(v19 + 8);
    v31(v18, v20);
  }

  *(v1 + 808) = v29;
  *(v1 + 800) = v31;
  v32 = *(v1 + 608);
  v33 = *(v1 + 592);
  *(v1 + 816) = sub_22B3602DC();
  *(v1 + 1096) = *MEMORY[0x277D18118];
  v34 = *(v33 + 104);
  *(v1 + 824) = v34;
  *(v1 + 832) = (v33 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v34(v32);
  v35 = swift_task_alloc();
  *(v1 + 840) = v35;
  *v35 = v1;
  v35[1] = sub_22B2E7FA8;
  v36 = *(v1 + 640);
  v37 = *(v1 + 608);
  v38 = *(v1 + 536);
  v39 = *(v1 + 528);
  v40 = *(v1 + 520);
  v41 = *(v1 + 504);
  v42 = *(v1 + 512);
  v43 = *(v1 + 496);

  return MEMORY[0x282172608](v36, v43, v41, v42, v37, v40, v39, v38);
}

uint64_t sub_22B2E7FA8()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *(*v1 + 592);
  v5 = *(*v1 + 584);
  v2[106] = v0;

  v6 = *(v4 + 8);
  v2[107] = v6;
  v2[108] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[72];
  if (v0)
  {
    v8 = sub_22B2EB7E8;
  }

  else
  {
    v8 = sub_22B2E8148;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2E8148()
{
  v44 = v0;
  (*(v0 + 784))(*(v0 + 728), *(v0 + 776), *(v0 + 648));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  if (os_log_type_enabled(v1, v2))
  {
    v41 = *(v0 + 728);
    v42 = *(v0 + 800);
    v40 = *(v0 + 648);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v43 = v4;
    *v3 = 136446210;
    swift_beginAccess();
    v5 = sub_22B36006C();
    v7 = v6;
    swift_endAccess();
    v8 = sub_22B35DC7C();
    v10 = v9;
    sub_22B12F174(v5, v7);
    v11 = sub_22B1A7B20(v8, v10, &v43);

    *(v3 + 4) = v11;
    _os_log_impl(&dword_22B116000, v1, v2, "[Dropbox] Poll for IntervalBlocks responsed with offset: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23188F650](v4, -1, -1);
    MEMORY[0x23188F650](v3, -1, -1);

    v42(v41, v40);
  }

  else
  {
    v12 = *(v0 + 800);
    v13 = *(v0 + 728);
    v14 = *(v0 + 648);

    v12(v13, v14);
  }

  swift_beginAccess();
  v15 = sub_22B36007C();
  swift_endAccess();
  if (v15 >> 62)
  {
    v16 = sub_22B36109C();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 872) = v16;
  v17 = *(v0 + 784);
  v18 = *(v0 + 776);
  v19 = *(v0 + 720);
  v20 = *(v0 + 648);

  v17(v19, v18, v20);
  v21 = sub_22B36050C();
  v22 = sub_22B360D2C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v16;
    _os_log_impl(&dword_22B116000, v21, v22, "[Dropbox] Received %ld records for IntervalBlock in this session", v23, 0xCu);
    MEMORY[0x23188F650](v23, -1, -1);
  }

  v24 = *(v0 + 800);
  v25 = *(v0 + 720);
  v26 = *(v0 + 656);
  v27 = *(v0 + 648);

  *(v0 + 880) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v25, v27);
  swift_beginAccess();
  v28 = sub_22B36007C();
  swift_endAccess();
  if (v28 >> 62)
  {
    v35 = sub_22B36109C();

    if (v35)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v29)
    {
LABEL_10:
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      *(v0 + 904) = qword_28140BCF8;
      swift_beginAccess();
      v30 = sub_22B36007C();
      *(v0 + 912) = v30;
      swift_endAccess();
      v31 = swift_task_alloc();
      *(v0 + 920) = v31;
      *v31 = v0;
      v31[1] = sub_22B2E893C;
      v32 = *(v0 + 568);
      v33 = *(v0 + 560);

      return sub_22B30C418(v30, v33, v32);
    }
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v36 = swift_task_alloc();
  *(v0 + 888) = v36;
  *v36 = v0;
  v36[1] = sub_22B2E8678;
  v37 = *(v0 + 768);
  v38 = *(v0 + 552);
  v39 = *(v0 + 544);

  return sub_22B178F4C(v39, v38, 0, 0xC000000000000000, v37);
}

uint64_t sub_22B2E8678()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_22B2EB958;
  }

  else
  {
    v4 = sub_22B2E87A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2E87A4()
{
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  v3 = *(v0 + 872);
  (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

  v1 = *(v0 + 8);

  return v1(0, v3);
}

uint64_t sub_22B2E893C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1100) = a1;
  *(v4 + 928) = v1;

  v5 = *(v3 + 576);
  if (v1)
  {
    v6 = sub_22B2E942C;
  }

  else
  {
    v6 = sub_22B2E8A90;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2E8A90()
{
  v88 = v0;
  swift_beginAccess();
  v1 = sub_22B36005C();
  swift_endAccess();
  if (v1)
  {
    swift_beginAccess();
    v2 = sub_22B36006C();
    v4 = v3;
    swift_endAccess();
    v5 = v4;
    v6 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v14 = *(v2 + 16);
        v15 = *(v2 + 24);
        sub_22B12F174(v2, v5);
        if (v14 == v15)
        {
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      sub_22B12F174(v2, v4);
    }

    else
    {
      if (!v6)
      {
        sub_22B12F174(v2, v4);
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      sub_22B12F174(v2, v4);
      if (v2 != v2 >> 32)
      {
LABEL_15:
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v16 = sub_22B36006C();
        v18 = v17;
        *(v0 + 936) = v16;
        *(v0 + 944) = v17;
        swift_endAccess();
        v19 = swift_task_alloc();
        *(v0 + 952) = v19;
        *v19 = v0;
        v19[1] = sub_22B2E95C0;
        v20 = *(v0 + 552);
        v21 = *(v0 + 512);
        v22 = *(v0 + 544);
        v23 = v16;
        v24 = v18;
LABEL_40:

        return sub_22B178F4C(v22, v20, v23, v24, v21);
      }
    }

LABEL_22:
    (*(v0 + 784))(*(v0 + 712), *(v0 + 776), *(v0 + 648));
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 808);
    v31 = *(v0 + 800);
    v85 = *(v0 + 768);
    v32 = *(v0 + 744);
    v33 = *(v0 + 712);
    v34 = *(v0 + 648);
    if (v29)
    {
      v82 = *(v0 + 808);
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22B116000, v27, v28, "[Dropbox] Error: Response indicates more to come, however offset is empty", v35, 2u);
      MEMORY[0x23188F650](v35, -1, -1);

      v31(v33, v34);
      v82(v85, v32);
    }

    else
    {

      v31(v33, v34);
      v30(v85, v32);
    }

    v86 = *(v0 + 1100);
    v83 = *(v0 + 872);
    goto LABEL_26;
  }

  swift_beginAccess();
  v7 = sub_22B36005C();
  swift_endAccess();
  v8 = *(v0 + 1100);
  v9 = *(v0 + 872);
  if ((v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  *(v0 + 1101) = v8;
  *(v0 + 968) = v9;
  swift_beginAccess();
  v10 = sub_22B36006C();
  v12 = v11;
  swift_endAccess();
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v25 = *(v10 + 16);
      v26 = *(v10 + 24);
      sub_22B12F174(v10, v12);
      if (v25 == v26)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    sub_22B12F174(v10, v12);
LABEL_34:
    *(v0 + 1072) = v9;
    *(v0 + 1103) = v8;
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v49 = sub_22B36050C();
    v50 = sub_22B360D2C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 800);
    v53 = *(v0 + 664);
    v54 = *(v0 + 648);
    if (v51)
    {
      v84 = *(v0 + 664);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v87 = v56;
      *v55 = 136446210;
      swift_beginAccess();
      v57 = sub_22B36006C();
      v59 = v58;
      swift_endAccess();
      v60 = sub_22B35DC7C();
      v81 = v52;
      v62 = v61;
      sub_22B12F174(v57, v59);
      v63 = sub_22B1A7B20(v60, v62, &v87);

      *(v55 + 4) = v63;
      _os_log_impl(&dword_22B116000, v49, v50, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x23188F650](v56, -1, -1);
      MEMORY[0x23188F650](v55, -1, -1);

      v81(v84, v54);
    }

    else
    {

      v52(v53, v54);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v64 = swift_task_alloc();
    *(v0 + 1080) = v64;
    *v64 = v0;
    v64[1] = sub_22B2EB51C;
    v21 = *(v0 + 768);
    v20 = *(v0 + 552);
    v22 = *(v0 + 544);
    v23 = 0;
    v24 = 0xC000000000000000;
    goto LABEL_40;
  }

  if (v13)
  {
    sub_22B12F174(v10, v12);
    if (v10 != v10 >> 32)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  sub_22B12F174(v10, v12);
  if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  if (sub_22B360BFC())
  {
    v83 = v9;
    v86 = v8;
    (*(v0 + 784))(*(v0 + 704), *(v0 + 776), *(v0 + 648));
    v38 = sub_22B36050C();
    v39 = sub_22B360D1C();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 808);
    v42 = *(v0 + 800);
    v43 = *(v0 + 768);
    v44 = *(v0 + 744);
    v45 = *(v0 + 704);
    v46 = *(v0 + 648);
    if (v40)
    {
      v80 = *(v0 + 768);
      v47 = swift_slowAlloc();
      v79 = v41;
      v48 = swift_slowAlloc();
      v87 = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_22B1A7B20(0xD000000000000066, 0x800000022B36DA80, &v87);
      *(v47 + 12) = 2048;
      *(v47 + 14) = 503;
      _os_log_impl(&dword_22B116000, v38, v39, "[Dropbox] Task is cancelled at marker %s:%ld", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23188F650](v48, -1, -1);
      MEMORY[0x23188F650](v47, -1, -1);

      v42(v45, v46);
      v79(v80, v44);
    }

    else
    {

      v42(v45, v46);
      v41(v43, v44);
    }

LABEL_26:
    (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

    v36 = *(v0 + 8);

    return v36(v86, v83);
  }

  v65 = *(v0 + 824);
  v66 = *(v0 + 1096);
  v67 = *(v0 + 600);
  v68 = *(v0 + 584);
  swift_beginAccess();
  v69 = sub_22B36006C();
  v71 = v70;
  *(v0 + 976) = v69;
  *(v0 + 984) = v70;
  swift_endAccess();
  v65(v67, v66, v68);
  v72 = swift_task_alloc();
  *(v0 + 992) = v72;
  *v72 = v0;
  v72[1] = sub_22B2E9E2C;
  v73 = *(v0 + 632);
  v74 = *(v0 + 600);
  v75 = *(v0 + 536);
  v76 = *(v0 + 504);
  v77 = *(v0 + 512);
  v78 = *(v0 + 496);

  return MEMORY[0x282172608](v73, v78, v76, v77, v74, v69, v71, v75);
}

uint64_t sub_22B2E942C()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22B2E95C0()
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v4 = *(*v1 + 936);
  *(*v1 + 960) = v0;

  sub_22B12F174(v4, v3);
  v5 = *(v2 + 576);
  if (v0)
  {
    v6 = sub_22B2EBAEC;
  }

  else
  {
    v6 = sub_22B2E9728;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2E9728()
{
  v62 = v0;
  swift_beginAccess();
  v1 = sub_22B36005C();
  swift_endAccess();
  if ((v1 & 1) == 0)
  {
    LOBYTE(v2) = *(v0 + 1100);
    v3 = *(v0 + 872);
    goto LABEL_7;
  }

  v2 = *(v0 + 1100);
  v3 = *(v0 + 872);
  *(v0 + 1101) = v2;
  *(v0 + 968) = v3;
  swift_beginAccess();
  v4 = sub_22B36006C();
  v6 = v5;
  swift_endAccess();
  v7 = v6;
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v29 = *(v4 + 16);
      v30 = *(v4 + 24);
      sub_22B12F174(v4, v7);
      if (v29 != v30)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_22B12F174(v4, v6);
    }

LABEL_7:
    *(v0 + 1072) = v3;
    *(v0 + 1103) = v2;
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 800);
    v13 = *(v0 + 664);
    v14 = *(v0 + 648);
    if (v11)
    {
      v59 = *(v0 + 664);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v61 = v16;
      *v15 = 136446210;
      swift_beginAccess();
      v17 = sub_22B36006C();
      v19 = v18;
      swift_endAccess();
      v20 = sub_22B35DC7C();
      v58 = v12;
      v22 = v21;
      sub_22B12F174(v17, v19);
      v23 = sub_22B1A7B20(v20, v22, &v61);

      *(v15 + 4) = v23;
      _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);

      v58(v59, v14);
    }

    else
    {

      v12(v13, v14);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v24 = swift_task_alloc();
    *(v0 + 1080) = v24;
    *v24 = v0;
    v24[1] = sub_22B2EB51C;
    v25 = *(v0 + 768);
    v26 = *(v0 + 552);
    v27 = *(v0 + 544);

    return sub_22B178F4C(v27, v26, 0, 0xC000000000000000, v25);
  }

  if (v8)
  {
    sub_22B12F174(v4, v6);
    if (v4 != v4 >> 32)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  sub_22B12F174(v4, v6);
  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  if (sub_22B360BFC())
  {
    (*(v0 + 784))(*(v0 + 704), *(v0 + 776), *(v0 + 648));
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 808);
    v35 = *(v0 + 800);
    v36 = *(v0 + 768);
    v60 = *(v0 + 744);
    v37 = *(v0 + 704);
    v38 = *(v0 + 648);
    if (v33)
    {
      v57 = *(v0 + 768);
      v39 = swift_slowAlloc();
      v56 = v34;
      v40 = swift_slowAlloc();
      v61 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_22B1A7B20(0xD000000000000066, 0x800000022B36DA80, &v61);
      *(v39 + 12) = 2048;
      *(v39 + 14) = 503;
      _os_log_impl(&dword_22B116000, v31, v32, "[Dropbox] Task is cancelled at marker %s:%ld", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);

      v35(v37, v38);
      v56(v57, v60);
    }

    else
    {

      v35(v37, v38);
      v34(v36, v60);
    }

    (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

    v55 = *(v0 + 8);

    return v55(v2, v3);
  }

  else
  {
    v41 = *(v0 + 824);
    v42 = *(v0 + 1096);
    v43 = *(v0 + 600);
    v44 = *(v0 + 584);
    swift_beginAccess();
    v45 = sub_22B36006C();
    v47 = v46;
    *(v0 + 976) = v45;
    *(v0 + 984) = v46;
    swift_endAccess();
    v41(v43, v42, v44);
    v48 = swift_task_alloc();
    *(v0 + 992) = v48;
    *v48 = v0;
    v48[1] = sub_22B2E9E2C;
    v49 = *(v0 + 632);
    v50 = *(v0 + 600);
    v51 = *(v0 + 536);
    v52 = *(v0 + 504);
    v53 = *(v0 + 512);
    v54 = *(v0 + 496);

    return MEMORY[0x282172608](v49, v54, v52, v53, v50, v45, v47, v51);
  }
}

uint64_t sub_22B2E9E2C()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  v3 = v2[107];
  v4 = v2[75];
  v5 = v2[73];
  v6 = v2[72];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_22B2EBC80;
  }

  else
  {
    v7 = sub_22B2E9FB0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_22B2E9FB0()
{
  v41 = v0;
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[87];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  swift_beginAccess();
  (*(v7 + 40))(v5, v6, v8);
  v1(v3, v2, v4);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v39 = v0[100];
    v38 = v0[87];
    v11 = v0[81];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v12 = 136315138;
    swift_beginAccess();
    v14 = sub_22B36006C();
    v16 = v15;
    swift_endAccess();
    v17 = sub_22B35DC7C();
    v19 = v18;
    sub_22B12F174(v14, v16);
    v20 = sub_22B1A7B20(v17, v19, &v40);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Poll for IntervalBlocks responsed with offset: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v39(v38, v11);
  }

  else
  {
    v21 = v0[100];
    v22 = v0[87];
    v23 = v0[81];

    v21(v22, v23);
  }

  swift_beginAccess();
  v24 = sub_22B36007C();
  swift_endAccess();
  if (v24 >> 62)
  {
    v25 = sub_22B36109C();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v0[121];

  v27 = v26 + v25;
  v0[126] = v26 + v25;
  if (__OFADD__(v26, v25))
  {
    __break(1u);
  }

  else
  {
    (v0[98])(v0[86], v0[97], v0[81]);
    v28 = sub_22B36050C();
    v29 = sub_22B360D2C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134349056;
      *(v30 + 4) = v27;
      _os_log_impl(&dword_22B116000, v28, v29, "[Dropbox] Received %{public}ld records for IntervalBlock in this session", v30, 0xCu);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    v31 = v0[100];
    v32 = v0[86];
    v33 = v0[81];

    v31(v32, v33);
    swift_beginAccess();
    v34 = sub_22B36007C();
    v0[127] = v34;
    swift_endAccess();
    v35 = swift_task_alloc();
    v0[128] = v35;
    *v35 = v0;
    v35[1] = sub_22B2EA398;
    v36 = v0[71];
    v37 = v0[70];

    sub_22B30C418(v34, v37, v36);
  }
}

uint64_t sub_22B2EA398(char a1)
{
  v4 = *v2;
  *(v4 + 1032) = v1;

  v5 = *(v4 + 576);

  if (v1)
  {
    v6 = sub_22B2EAAF8;
  }

  else
  {
    *(v4 + 1102) = a1 & 1;
    v6 = sub_22B2EA4F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2EA4F4()
{
  v59 = v0;
  v1 = *(v0 + 1102);
  v2 = *(v0 + 1101);
  swift_beginAccess();
  v3 = sub_22B36005C();
  swift_endAccess();
  if ((v3 & 1) == 0)
  {
    sub_22B12F174(*(v0 + 976), *(v0 + 984));
LABEL_19:
    *(v0 + 1072) = *(v0 + 1008);
    *(v0 + 1103) = (v2 | v1) & 1;
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v29 = sub_22B36050C();
    v30 = sub_22B360D2C();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 800);
    v33 = *(v0 + 664);
    v34 = *(v0 + 648);
    if (v31)
    {
      v56 = *(v0 + 664);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58 = v36;
      *v35 = 136446210;
      swift_beginAccess();
      v37 = sub_22B36006C();
      v39 = v38;
      swift_endAccess();
      v40 = sub_22B35DC7C();
      v55 = v32;
      v42 = v41;
      sub_22B12F174(v37, v39);
      v43 = sub_22B1A7B20(v40, v42, &v58);

      *(v35 + 4) = v43;
      _os_log_impl(&dword_22B116000, v29, v30, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23188F650](v36, -1, -1);
      MEMORY[0x23188F650](v35, -1, -1);

      v55(v56, v34);
    }

    else
    {

      v32(v33, v34);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v44 = swift_task_alloc();
    *(v0 + 1080) = v44;
    *v44 = v0;
    v44[1] = sub_22B2EB51C;
    v45 = *(v0 + 768);
    v46 = *(v0 + 552);
    v47 = *(v0 + 544);
    v48 = 0;
    v49 = 0xC000000000000000;
    goto LABEL_25;
  }

  swift_beginAccess();
  v4 = sub_22B36006C();
  v6 = v5;
  swift_endAccess();
  v7 = v6;
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      sub_22B12F174(v4, v6);
      goto LABEL_15;
    }

    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    sub_22B12F174(v4, v7);
    if (v9 == v10)
    {
LABEL_15:
      (*(v0 + 784))(*(v0 + 680), *(v0 + 776), *(v0 + 648));
      v16 = sub_22B36050C();
      v17 = sub_22B360D1C();
      v27 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 984);
      v20 = *(v0 + 976);
      v57 = *(v0 + 800);
      v21 = *(v0 + 680);
      v22 = *(v0 + 648);
      if (v27)
      {
        v23 = v2;
        v24 = v1;
        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "[Dropbox] Error: Response indicates more to come, however offset is empty";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v8)
  {
    sub_22B12F174(v4, v6);
    if (v4 == v4 >> 32)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_22B12F174(v4, v6);
    if ((v6 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = *(v0 + 984);
  v12 = *(v0 + 976);
  swift_beginAccess();
  v13 = sub_22B36006C();
  v15 = v14;
  swift_endAccess();
  LOBYTE(v11) = sub_22B2E77BC(v13, v15, v12, v11);
  sub_22B12F174(v13, v15);
  if (v11)
  {
    (*(v0 + 784))(*(v0 + 672), *(v0 + 776), *(v0 + 648));
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 984);
    v20 = *(v0 + 976);
    v57 = *(v0 + 800);
    v21 = *(v0 + 672);
    v22 = *(v0 + 648);
    if (v18)
    {
      v23 = v2;
      v24 = v1;
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "[Dropbox] Error: Response indicates more to come, however offset is same as previous";
LABEL_17:
      _os_log_impl(&dword_22B116000, v16, v17, v26, v25, 2u);
      v28 = v25;
      v1 = v24;
      v2 = v23;
      MEMORY[0x23188F650](v28, -1, -1);
      sub_22B12F174(v20, v19);

      v57(v21, v22);
      goto LABEL_19;
    }

LABEL_18:
    sub_22B12F174(v20, v19);

    v57(v21, v22);
    goto LABEL_19;
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v51 = sub_22B36006C();
  v53 = v52;
  *(v0 + 1040) = v51;
  *(v0 + 1048) = v52;
  swift_endAccess();
  v54 = swift_task_alloc();
  *(v0 + 1056) = v54;
  *v54 = v0;
  v54[1] = sub_22B2EACA0;
  v46 = *(v0 + 552);
  v45 = *(v0 + 512);
  v47 = *(v0 + 544);
  v48 = v51;
  v49 = v53;
LABEL_25:

  return sub_22B178F4C(v47, v46, v48, v49, v45);
}

uint64_t sub_22B2EAAF8()
{
  v1 = v0[101];
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[80];
  v5 = v0[78];
  v6 = v0[77];
  sub_22B12F174(v0[122], v0[123]);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_22B2EACA0()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  v3 = v2[131];
  v4 = v2[130];
  v5 = v2[72];
  sub_22B12F174(v4, v3);
  if (v0)
  {
    v6 = sub_22B2EBE28;
  }

  else
  {
    v6 = sub_22B2EADFC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2EADFC()
{
  v62 = v0;
  sub_22B12F174(*(v0 + 976), *(v0 + 984));
  swift_beginAccess();
  v1 = sub_22B36005C();
  swift_endAccess();
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 1008);
    v3 = *(v0 + 1101) | *(v0 + 1102);
    goto LABEL_7;
  }

  v2 = *(v0 + 1008);
  v3 = *(v0 + 1101) | *(v0 + 1102);
  *(v0 + 1101) = v3 & 1;
  *(v0 + 968) = v2;
  swift_beginAccess();
  v4 = sub_22B36006C();
  v6 = v5;
  swift_endAccess();
  v7 = v6;
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      sub_22B12F174(v4, v6);
      goto LABEL_7;
    }

    v29 = *(v4 + 16);
    v30 = *(v4 + 24);
    sub_22B12F174(v4, v7);
    goto LABEL_18;
  }

  if (v8)
  {
    sub_22B12F174(v4, v6);
    v29 = v4;
    v30 = v4 >> 32;
LABEL_18:
    if (v29 != v30)
    {
      goto LABEL_19;
    }

LABEL_7:
    *(v0 + 1072) = v2;
    *(v0 + 1103) = v3 & 1;
    (*(v0 + 784))(*(v0 + 664), *(v0 + 776), *(v0 + 648));
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 800);
    v13 = *(v0 + 664);
    v14 = *(v0 + 648);
    if (v11)
    {
      v59 = *(v0 + 664);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v61 = v16;
      *v15 = 136446210;
      swift_beginAccess();
      v17 = sub_22B36006C();
      v19 = v18;
      swift_endAccess();
      v20 = sub_22B35DC7C();
      v58 = v12;
      v22 = v21;
      sub_22B12F174(v17, v19);
      v23 = sub_22B1A7B20(v20, v22, &v61);

      *(v15 + 4) = v23;
      _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Poll for IntervalBlocks completed with last offset: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);

      v58(v59, v14);
    }

    else
    {

      v12(v13, v14);
    }

    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v24 = swift_task_alloc();
    *(v0 + 1080) = v24;
    *v24 = v0;
    v24[1] = sub_22B2EB51C;
    v25 = *(v0 + 768);
    v26 = *(v0 + 552);
    v27 = *(v0 + 544);

    return sub_22B178F4C(v27, v26, 0, 0xC000000000000000, v25);
  }

  sub_22B12F174(v4, v6);
  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  if (sub_22B360BFC())
  {
    (*(v0 + 784))(*(v0 + 704), *(v0 + 776), *(v0 + 648));
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 808);
    v35 = *(v0 + 800);
    v36 = *(v0 + 768);
    v60 = *(v0 + 744);
    v37 = *(v0 + 704);
    v38 = *(v0 + 648);
    if (v33)
    {
      v57 = *(v0 + 808);
      v39 = swift_slowAlloc();
      v56 = v36;
      v40 = swift_slowAlloc();
      v61 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_22B1A7B20(0xD000000000000066, 0x800000022B36DA80, &v61);
      *(v39 + 12) = 2048;
      *(v39 + 14) = 503;
      _os_log_impl(&dword_22B116000, v31, v32, "[Dropbox] Task is cancelled at marker %s:%ld", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);

      v35(v37, v38);
      v57(v56, v60);
    }

    else
    {

      v35(v37, v38);
      v34(v36, v60);
    }

    (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

    v55 = *(v0 + 8);

    return v55(v3 & 1, v2);
  }

  else
  {
    v41 = *(v0 + 824);
    v42 = *(v0 + 1096);
    v43 = *(v0 + 600);
    v44 = *(v0 + 584);
    swift_beginAccess();
    v45 = sub_22B36006C();
    v47 = v46;
    *(v0 + 976) = v45;
    *(v0 + 984) = v46;
    swift_endAccess();
    v41(v43, v42, v44);
    v48 = swift_task_alloc();
    *(v0 + 992) = v48;
    *v48 = v0;
    v48[1] = sub_22B2E9E2C;
    v49 = *(v0 + 632);
    v50 = *(v0 + 600);
    v51 = *(v0 + 536);
    v52 = *(v0 + 504);
    v53 = *(v0 + 512);
    v54 = *(v0 + 496);

    return MEMORY[0x282172608](v49, v54, v52, v53, v50, v45, v47, v51);
  }
}

uint64_t sub_22B2EB51C()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_22B2EBFD0;
  }

  else
  {
    v4 = sub_22B2EB648;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2EB648()
{
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  v4 = *(v0 + 1072);
  v3 = *(v0 + 1103);
  (*(*(v0 + 624) + 8))(*(v0 + 640), *(v0 + 616));

  v1 = *(v0 + 8);

  return v1(v3, v4);
}

uint64_t sub_22B2EB7E8()
{
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22B2EB958()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22B2EBAEC()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22B2EBC80()
{
  v1 = v0[101];
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[80];
  v5 = v0[78];
  v6 = v0[77];
  sub_22B12F174(v0[122], v0[123]);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_22B2EBE28()
{
  v1 = v0[101];
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[80];
  v5 = v0[78];
  v6 = v0[77];
  sub_22B12F174(v0[122], v0[123]);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_22B2EBFD0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  (*(v0 + 808))(*(v0 + 768), *(v0 + 744));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22B2EC1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B2EC234(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22B36109C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_22B1F8128(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_22B36109C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_22B36109C();
  v2 = sub_22B32EEA4(v5, v6);
LABEL_10:

  return sub_22B1F8564(a1, v2);
}

uint64_t sub_22B2EC328(uint64_t a1, void *a2, uint64_t a3, int64_t a4)
{
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_35;
  }

  *&v47[0] = a2;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *&v45[0];
  *&v47[0] = *&v45[0];
  sub_22B2F24C0(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);
  sub_22B35DB5C();
  if (*&v45[0] == 2)
  {

LABEL_5:
    *&v47[0] = a2;
    v13 = a2;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v8 = *&v45[0];
    *&v47[0] = *&v45[0];
    v14 = sub_22B2F24C0(&qword_281408620, type metadata accessor for CKError, &unk_22B362F94);
    sub_22B35DB5C();
    if (*&v45[0] != 2 || (v15 = sub_22B3606BC()) == 0)
    {

      goto LABEL_35;
    }

    v12 = v15;
    v41 = v14;
    v42 = a4;
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v7 = v18 & *(v15 + 64);
    a4 = (v17 + 63) >> 6;

    v10 = 0;
    while (v7)
    {
LABEL_17:
      v20 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_22B2F2694(v12[6] + 40 * (v20 | (v10 << 6)), v47);
      v46 = v48;
      v45[0] = v47[0];
      v45[1] = v47[1];
      if (v12[2] && (v21 = sub_22B33B248(v45), (v22 & 1) != 0) && (v43 = *(v12[7] + 8 * v21), v23 = v43, (swift_dynamicCast() & 1) != 0))
      {
        v40 = v8;
        v24 = v44;
        v43 = v44;
        sub_22B35DB5C();
        if (v44 == 112)
        {
          v25 = sub_22B3610DC();
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (v26)
          {
            v39 = v26;
            swift_beginAccess();
            v38 = v25;
            MEMORY[0x23188E350]();
            if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v37 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22B360A7C();
            }

            sub_22B360A9C();
            swift_endAccess();
          }

          else
          {
          }

          sub_22B1B0560(v45);
          v8 = v40;
        }

        else
        {
          sub_22B1B0560(v45);

          v8 = v40;
        }
      }

      else
      {
        sub_22B1B0560(v45);
      }
    }

    while (1)
    {
      v19 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19 >= a4)
      {

        goto LABEL_35;
      }

      v7 = *(v16 + 8 * v19);
      ++v10;
      if (v7)
      {
        v10 = v19;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  if (qword_28140A0C8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v27 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v10, v27, v7);
  v28 = v12;
  v29 = sub_22B36050C();
  v30 = sub_22B360D1C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = a4;
    v33 = v32;
    *v31 = 138412290;
    v34 = v28;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_22B116000, v29, v30, "[IdentityRepair] An error occurred fetching zones: %@", v31, 0xCu);
    sub_22B12F10C(v33);
    MEMORY[0x23188F650](v33, -1, -1);
    MEMORY[0x23188F650](v31, -1, -1);
  }

  else
  {
    v34 = v29;
    v29 = v28;
  }

  (*(v8 + 8))(v10, v7);
LABEL_35:
  swift_beginAccess();
  v43 = *(a3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  return sub_22B360AEC();
}

double sub_22B2EC8F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    sub_22B202100();
    v4 = sub_22B3606EC();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_22B2EC9C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = [objc_opt_self() fetchAllRecordZonesOperation];
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B2EC8F8;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  [v13 setFetchRecordZonesCompletionBlock_];
  _Block_release(v16);
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v17 = &selRef_privateCloudDatabase;
  if (v20)
  {
    v17 = &selRef_sharedCloudDatabase;
  }

  v18 = [*(qword_28140BCF0 + 16) *v17];
  [v18 addOperation_];
}

uint64_t sub_22B2ECC54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v25[5] = a2, v12 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60), type metadata accessor for CKError(0), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v25[1];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v11, v14, v8);
    v15 = v13;
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25[0] = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_22B116000, v16, v17, "[IdentityRepair] An error occurred fetching zones: %@", v19, 0xCu);
      sub_22B12F10C(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    else
    {
      v21 = v16;
      v16 = v15;
    }

    (*(v9 + 8))(v11, v8);
  }

  else if (a1)
  {
    swift_beginAccess();

    sub_22B3551B4(v23);
    swift_endAccess();
  }

  swift_beginAccess();
  v25[4] = *(a3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  return sub_22B360AEC();
}

uint64_t sub_22B2ECF48(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22B2ED020(void *a1, char a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  if (a2)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v10, v11, v4);
    v12 = a1;
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    sub_22B1CD010(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[1] = a1;
      v27 = v16;
      *v15 = 136315138;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v18 = sub_22B3608BC();
      v20 = sub_22B1A7B20(v18, v19, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22B116000, v13, v14, "[IdentityRepair]  Error deleting share - %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v7, v21, v4);
    v22 = sub_22B36050C();
    v23 = sub_22B360D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B116000, v22, v23, "[IdentityRepair]  Deleted share", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  return sub_22B360AEC();
}

void sub_22B2ED39C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_22B128014(0, &qword_27D8BAD40, 0x277CBC4A0);

  sub_22B1FB40C(v9);

  v10 = sub_22B360EEC();
  sub_22B333320();
  [v10 setMarkAsParticipantNeedsNewInvitationToken_];
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  sub_22B360EDC();
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v13 = [*(qword_28140BCF0 + 16) sharedCloudDatabase];
  [v13 addOperation_];
}

uint64_t sub_22B2ED5A8(void *a1, char a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36[-1] - v9;
  if (a2)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v10, v11, v4);
    v12 = a1;
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    sub_22B1CD010(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = a1;
      v36[0] = v16;
      *v15 = 136315138;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v18 = sub_22B3608BC();
      v20 = sub_22B1A7B20(v18, v19, v36);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22B116000, v13, v14, "[IdentityRepair]  Error deleting share - %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];

    v23 = sub_22B36084C();
    v25 = v24;

    LOWORD(v36[0]) = 259;
    v26 = 15;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v7, v27, v4);
    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v28, v29, "[IdentityRepair]  Deleted share", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v31 = [objc_opt_self() processInfo];
    v32 = [v31 processName];

    v23 = sub_22B36084C();
    v25 = v33;

    LOWORD(v36[0]) = 259;
    v26 = 17;
  }

  BYTE2(v36[0]) = v26;
  v36[1] = v23;
  v36[2] = v25;
  v36[3] = 0;
  static AutoBugCaptureManager.sendIssue(_:)(v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  return sub_22B360AEC();
}

uint64_t sub_22B2EDA3C(uint64_t a1)
{
  v1[22] = a1;
  v2 = sub_22B36052C();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2EDAFC, 0, 0);
}

uint64_t sub_22B2EDAFC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_22B116000, v7, v8, "[IdentityRepair] Fetch share for %@", v10, 0xCu);
    sub_22B12F10C(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[22];
  v15 = v0[23];

  (*(v14 + 8))(v13, v15);
  sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
  sub_22B36084C();
  v17 = v16;
  v18 = sub_22B360CBC();
  v0[26] = v18;
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v19 = [*(qword_28140BCF0 + 16) sharedCloudDatabase];
  v0[27] = v19;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_22B2EDE14;
  v20 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD38, &unk_22B366DF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B2ECF48;
  v0[13] = &block_descriptor_13_0;
  v0[14] = v20;
  [v19 fetchRecordWithID:v18 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B2EDE14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_22B2EDF98;
  }

  else
  {
    v2 = sub_22B2EDF24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B2EDF24()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B2EDF98(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[28];
  v4 = v1[26];
  swift_willThrow();

  v5 = v1[1];

  return v5(0);
}

uint64_t sub_22B2EE02C()
{
  v1 = sub_22B36052C();
  v0[14] = v1;
  v0[15] = *(v1 - 8);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2EE124, 0, 0);
}

uint64_t sub_22B2EE124()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[22] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[23] = v5;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Shared Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[21];
  v10 = v0[14];
  v11 = v0[15];

  v12 = *(v11 + 8);
  v0[25] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *(v13 + 16) = 1;
  v14 = swift_task_alloc();
  v0[27] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v14 = v0;
  v14[1] = sub_22B2EE344;

  return MEMORY[0x2822007B8](v0 + 10, 0, 0, 0xD00000000000001DLL, 0x800000022B36DC40, sub_22B2F45C0, v13, v15);
}

uint64_t sub_22B2EE344()
{

  return MEMORY[0x2822009F8](sub_22B2EE45C, 0, 0);
}

uint64_t sub_22B2EE45C()
{
  v1 = sub_22B31A8A4(v0[10]);
  v0[28] = v1;

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = v1[2];
  }

  v3 = v0[23];
  v4 = v0[22];
  v5 = v0[14];
  if (v2)
  {
    v3(v0[19], v0[22], v0[14]);

    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = sub_22B36109C();
      }

      else
      {
        v9 = v1[2];
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] %ld shared zones", v8, 0xCu);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    else
    {
    }

    v20 = v0[25];
    v21 = v0[19];
    v22 = v0[14];
    v0[29] = (v0[15] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v21, v22);
    v0[11] = MEMORY[0x277D84FA0];
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v23 = qword_28140BDD0;
    v0[30] = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B2EE778, v23, 0);
  }

  else
  {
    v10 = v0[20];

    v3(v10, v4, v5);
    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[25];
    v15 = v0[20];
    v16 = v0[14];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v11, v12, "[IdentityRepair] No shared zones", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v14(v15, v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22B2EE778()
{
  sub_22B143A3C(1);
  *(v0 + 248) = v1;
  *(v0 + 256) = 0;

  return MEMORY[0x2822009F8](sub_22B2EE808, 0, 0);
}

uint64_t sub_22B2EE808()
{
  v58 = v0 + 88;
  v1 = *(v0 + 248);
  v59 = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_70:
    v3 = sub_22B36109C();
    v4 = *(v0 + 248);
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 248);
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x277D84F90];
  v1 = &off_2786FB000;
  v57 = MEMORY[0x277D84F90];
  while (v3 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x23188EAC0](v5, *(v56 + 248));
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_66;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v0 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v11 = [v9 recordID];

    ++v5;
    if (v11)
    {
      MEMORY[0x23188E350]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v8 = v59;
      v5 = v0;
    }
  }

  v12 = sub_22B31A8D4(v8);

  v13 = 0;
  *v58 = v12;
  v59 = MEMORY[0x277D84F90];
  while (v3 != v13)
  {
    if (v6)
    {
      v14 = MEMORY[0x23188EAC0](v13, *(v56 + 248));
    }

    else
    {
      if (v13 >= *(v2 + 16))
      {
        goto LABEL_68;
      }

      v14 = *(v7 + 8 * v13);
    }

    v15 = v14;
    v0 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_67;
    }

    v16 = [v14 recordID];
    v17 = [v16 zoneID];

    ++v13;
    if (v17)
    {
      MEMORY[0x23188E350]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v57 = v59;
      v13 = v0;
    }
  }

  v2 = v56;

  v18 = sub_22B31A8A4(v57);

  v19 = *(v56 + 224);

  v20 = sub_22B2EC234(v18, v19);

  if ((v20 & 0xC000000000000001) == 0)
  {
    if (*(v20 + 16))
    {
      v23 = 0;
      v26 = -1;
      v27 = -1 << *(v20 + 32);
      v21 = v20 + 56;
      if (-v27 < 64)
      {
        v26 = ~(-1 << -v27);
      }

      v1 = v26 & *(v20 + 56);
      *(v56 + 272) = v21;
      *(v56 + 280) = ~v27;
      v25 = 63 - v27;
      v24 = (v56 + 264);
      *(v56 + 264) = v20;
      goto LABEL_33;
    }

LABEL_43:

    goto LABEL_47;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_43;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  sub_22B360C7C();
  v20 = *(v56 + 16);
  v21 = *(v56 + 24);
  v22 = *(v56 + 32);
  v23 = *(v56 + 40);
  v1 = *(v56 + 48);
  *(v56 + 272) = v21;
  *(v56 + 280) = v22;
  v24 = (v56 + 264);
  *(v56 + 264) = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v25 = v22 + 64;
LABEL_33:
    v28 = v1;
    v0 = v23;
    if (!v1)
    {
      v29 = v25 >> 6;
      v30 = v23;
      do
      {
        v0 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_69;
        }

        if (v0 >= v29)
        {
          goto LABEL_46;
        }

        v28 = *(v21 + 8 * v0);
        ++v30;
      }

      while (!v28);
    }

    v31 = (v28 - 1) & v28;
    v32 = *(*(v20 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v28)))));
LABEL_39:
    *(v56 + 296) = v0;
    *(v56 + 304) = v31;
    *(v56 + 288) = v32;
    if (v32)
    {
      v33 = swift_task_alloc();
      *(v56 + 312) = v33;
      *v33 = v56;
      v33[1] = sub_22B2EF010;

      return sub_22B2EDA3C(v32);
    }

    goto LABEL_46;
  }

  v35 = sub_22B3610BC();
  if (v35)
  {
    *(v56 + 104) = v35;
    swift_dynamicCast();
    v32 = *(v56 + 96);
    v0 = v23;
    v31 = v1;
    goto LABEL_39;
  }

LABEL_46:
  sub_22B1A20B8(*v24);
LABEL_47:
  if ((*v58 & 0xC000000000000001) != 0)
  {
    v36 = sub_22B36109C();
    v37 = *(v56 + 224);
    if (v36)
    {
LABEL_49:

LABEL_50:
      (*(v56 + 184))(*(v56 + 136), *(v56 + 176), *(v56 + 112));
      v38 = sub_22B36050C();
      v39 = sub_22B360D1C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_22B116000, v38, v39, "[IdentityRepair] Cleaning up shares", v40, 2u);
        MEMORY[0x23188F650](v40, -1, -1);
      }

      v41 = *(v56 + 200);
      v42 = *(v56 + 136);
      v43 = *(v56 + 112);

      v41(v42, v43);
      v44 = swift_task_alloc();
      *(v56 + 328) = v44;
      *(v44 + 16) = v58;
      v45 = swift_task_alloc();
      *(v56 + 336) = v45;
      *v45 = v56;
      v45[1] = sub_22B2EF600;
      v46 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822007B8](v45, 0, 0, 0xD000000000000024, 0x800000022B36DC90, sub_22B2F0F8C, v44, v46);
    }
  }

  else
  {
    v37 = *(v56 + 224);
    if (*(*v58 + 16))
    {
      goto LABEL_49;
    }
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    v47 = sub_22B36109C();

    if (!v47)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v48 = *(v37 + 16);

    if (!v48)
    {
      goto LABEL_50;
    }
  }

  (*(v56 + 184))(*(v56 + 144), *(v56 + 176), *(v56 + 112));
  v49 = sub_22B36050C();
  v50 = sub_22B360D1C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_22B116000, v49, v50, "[IdentityRepair] Failed to find share in cd or ck", v51, 2u);
    MEMORY[0x23188F650](v51, -1, -1);
  }

  v52 = *(v56 + 200);
  v53 = *(v56 + 144);
  v54 = *(v56 + 112);

  v52(v53, v54);

  v55 = *(v56 + 8);

  return v55();
}

uint64_t sub_22B2EF010(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_22B2EF110, 0, 0);
}

uint64_t sub_22B2EF110()
{
  v42 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  if (v1)
  {
    sub_22B32E36C(&v41, [*(v0 + 320) recordID]);
  }

  else
  {
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 264);
  if (v13 < 0)
  {
    v19 = sub_22B3610BC();
    if (!v19)
    {
      goto LABEL_17;
    }

    *(v0 + 104) = v19;
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    swift_dynamicCast();
    v18 = *(v0 + 96);
    v15 = v11;
    v17 = v12;
  }

  else
  {
    v14 = *(v0 + 304);
    v15 = *(v0 + 296);
    if (!v12)
    {
      v16 = *(v0 + 296);
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= ((*(v0 + 280) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v14 = *(*(v0 + 272) + 8 * v15);
        ++v16;
        if (v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }

LABEL_10:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v13 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  }

  *(v0 + 296) = v15;
  *(v0 + 304) = v17;
  *(v0 + 288) = v18;
  if (v18)
  {
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_22B2EF010;

    return sub_22B2EDA3C(v18);
  }

LABEL_17:
  sub_22B1A20B8(*(v0 + 264));
  v22 = *(v0 + 88);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = sub_22B36109C();
    v24 = *(v0 + 224);
    if (v23)
    {
LABEL_19:

LABEL_20:
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v25 = sub_22B36050C();
      v26 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22B116000, v25, v26, "[IdentityRepair] Cleaning up shares", v27, 2u);
        MEMORY[0x23188F650](v27, -1, -1);
      }

      v28 = *(v0 + 200);
      v29 = *(v0 + 136);
      v30 = *(v0 + 112);

      v28(v29, v30);
      v31 = swift_task_alloc();
      *(v0 + 328) = v31;
      *(v31 + 16) = v0 + 88;
      v3 = swift_task_alloc();
      *(v0 + 336) = v3;
      *v3 = v0;
      v3[1] = sub_22B2EF600;
      v8 = sub_22B2F0F8C;
      v7 = 0x800000022B36DC90;
      v10 = MEMORY[0x277D84F78] + 8;
      v4 = 0;
      v5 = 0;
      v6 = 0xD000000000000024;
      v9 = v31;

      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v24 = *(v0 + 224);
    if (*(v22 + 16))
    {
      goto LABEL_19;
    }
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v32 = sub_22B36109C();

    if (!v32)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v33 = *(v24 + 16);

    if (!v33)
    {
      goto LABEL_20;
    }
  }

  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v34 = sub_22B36050C();
  v35 = sub_22B360D1C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22B116000, v34, v35, "[IdentityRepair] Failed to find share in cd or ck", v36, 2u);
    MEMORY[0x23188F650](v36, -1, -1);
  }

  v37 = *(v0 + 200);
  v38 = *(v0 + 144);
  v39 = *(v0 + 112);

  v37(v38, v39);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_22B2EF600()
{

  return MEMORY[0x2822009F8](sub_22B2EF718, 0, 0);
}

uint64_t sub_22B2EF718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2EF7C0()
{
  (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 112));
  v1 = sub_22B36050C();
  v2 = sub_22B360D1C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 256);
  v5 = *(v0 + 200);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[IdentityRepair] Failed to find share in cd. Checking ck", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v5(v6, v7);
  v9 = *(v0 + 224);

  v10 = sub_22B2EC234(MEMORY[0x277D84FA0], v9);

  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*(v10 + 16))
    {
      v21 = 0;
      v25 = -1;
      v26 = -1 << *(v10 + 32);
      v19 = v10 + 56;
      if (-v26 < 64)
      {
        v25 = ~(-1 << -v26);
      }

      v22 = v25 & *(v10 + 56);
      *(v0 + 272) = v19;
      *(v0 + 280) = ~v26;
      v24 = 63 - v26;
      v23 = (v0 + 264);
      *(v0 + 264) = v10;
      goto LABEL_11;
    }

LABEL_21:

    goto LABEL_25;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_21;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  v11 = sub_22B360C7C();
  v10 = *(v0 + 16);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  *(v0 + 272) = v19;
  *(v0 + 280) = v20;
  v23 = (v0 + 264);
  *(v0 + 264) = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v24 = v20 + 64;
LABEL_11:
    v27 = v22;
    v28 = v21;
    if (!v22)
    {
      v29 = v24 >> 6;
      v30 = v21;
      while (1)
      {
        v28 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v28 >= v29)
        {
          goto LABEL_24;
        }

        v27 = *(v19 + 8 * v28);
        ++v30;
        if (v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v11, v12, v13, v14, v15, v16, v17, v18);
    }

LABEL_16:
    v31 = (v27 - 1) & v27;
    v32 = *(*(v10 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
LABEL_17:
    *(v0 + 296) = v28;
    *(v0 + 304) = v31;
    *(v0 + 288) = v32;
    if (v32)
    {
      v33 = swift_task_alloc();
      *(v0 + 312) = v33;
      *v33 = v0;
      v33[1] = sub_22B2EF010;

      return sub_22B2EDA3C(v32);
    }

    goto LABEL_24;
  }

  v35 = sub_22B3610BC();
  if (v35)
  {
    *(v0 + 104) = v35;
    swift_dynamicCast();
    v32 = *(v0 + 96);
    v28 = v21;
    v31 = v22;
    goto LABEL_17;
  }

LABEL_24:
  sub_22B1A20B8(*v23);
LABEL_25:
  v36 = *(v0 + 88);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = sub_22B36109C();
    v38 = *(v0 + 224);
    if (v37)
    {
LABEL_27:

LABEL_28:
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v39 = sub_22B36050C();
      v40 = sub_22B360D1C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_22B116000, v39, v40, "[IdentityRepair] Cleaning up shares", v41, 2u);
        MEMORY[0x23188F650](v41, -1, -1);
      }

      v42 = *(v0 + 200);
      v43 = *(v0 + 136);
      v44 = *(v0 + 112);

      v42(v43, v44);
      v45 = swift_task_alloc();
      *(v0 + 328) = v45;
      *(v45 + 16) = v0 + 88;
      v11 = swift_task_alloc();
      *(v0 + 336) = v11;
      *v11 = v0;
      v11[1] = sub_22B2EF600;
      v16 = sub_22B2F0F8C;
      v15 = 0x800000022B36DC90;
      v18 = MEMORY[0x277D84F78] + 8;
      v12 = 0;
      v13 = 0;
      v14 = 0xD000000000000024;
      v17 = v45;

      return MEMORY[0x2822007B8](v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    v38 = *(v0 + 224);
    if (*(v36 + 16))
    {
      goto LABEL_27;
    }
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v46 = sub_22B36109C();

    if (!v46)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v47 = *(v38 + 16);

    if (!v47)
    {
      goto LABEL_28;
    }
  }

  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_22B116000, v48, v49, "[IdentityRepair] Failed to find share in cd or ck", v50, 2u);
    MEMORY[0x23188F650](v50, -1, -1);
  }

  v51 = *(v0 + 200);
  v52 = *(v0 + 144);
  v53 = *(v0 + 112);

  v51(v52, v53);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_22B2EFE0C()
{
  v1 = sub_22B36052C();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2EFEF8, 0, 0);
}

uint64_t sub_22B2EFEF8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[13] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Private Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[12];
  v10 = v0[6];
  v11 = v0[7];

  v12 = *(v11 + 8);
  v0[16] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *(v13 + 16) = 0;
  v14 = swift_task_alloc();
  v0[18] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v14 = v0;
  v14[1] = sub_22B2F0114;

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD00000000000001DLL, 0x800000022B36DC40, sub_22B2F0F34, v13, v15);
}

uint64_t sub_22B2F0114()
{

  return MEMORY[0x2822009F8](sub_22B2F022C, 0, 0);
}

uint64_t sub_22B2F022C()
{
  v1 = v0[5];
  v0[19] = v1;
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[6];
  if (v2)
  {
    v3(v0[10], v0[13], v0[6]);

    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (v1 >> 62)
      {
        v9 = sub_22B36109C();
      }

      else
      {
        v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] %ld private zones", v8, 0xCu);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    else
    {
    }

    v20 = v0[16];
    v21 = v0[10];
    v22 = v0[6];
    v0[20] = (v0[7] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v21, v22);
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v0[21] = [*(qword_28140BCF0 + 16) privateCloudDatabase];
    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_22B2F0580;
    v24 = MEMORY[0x277D84F90];

    return MEMORY[0x28210DEF8](v24, v1);
  }

  else
  {
    v10 = v0[11];

    v3(v10, v4, v5);
    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[16];
    v15 = v0[11];
    v16 = v0[6];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v11, v12, "[IdentityRepair] No private zones", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v14(v15, v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22B2F0580(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[23] = a2;
  v4[24] = v2;

  v6 = v4[21];
  if (v2)
  {

    v7 = v5[1];

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B2F0754, 0, 0);
  }
}

uint64_t sub_22B2F0754()
{
  v64 = v0;
  v48 = 0;
  v1 = 0;
  v2 = v0[23];
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v56 = v7;
LABEL_4:
  v8 = v1;
  while (v6)
  {
    v1 = v8;
LABEL_12:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v1 << 6);
    v11 = *(*(v2 + 48) + 8 * v10);
    v12 = *(v2 + 56) + 16 * v10;
    v13 = v0[14];
    v14 = v0[13];
    v15 = v0[6];
    if (*(v12 + 8) != 1)
    {
      v62 = v3;
      v13(v0[8], v14, v15);
      v32 = v11;
      v33 = sub_22B36050C();
      v34 = sub_22B360D1C();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v0[16];
      v60 = v0[8];
      v58 = v0[6];
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v63 = v38;
        *v37 = 136315138;
        v55 = v32;
        v39 = [v32 zoneName];
        v53 = v36;
        v40 = sub_22B36084C();
        v42 = v41;

        v43 = sub_22B1A7B20(v40, v42, &v63);
        v2 = v49;
        v0 = v50;

        *(v37 + 4) = v43;
        _os_log_impl(&dword_22B116000, v33, v34, "[IdentityRepair] deleted %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x23188F650](v38, -1, -1);
        v44 = v37;
        v7 = v56;
        MEMORY[0x23188F650](v44, -1, -1);

        v53(v60, v58);
      }

      else
      {

        v36(v60, v58);
      }

      v48 = 1;
      v3 = v62;
      goto LABEL_4;
    }

    v16 = *v12;
    v13(v0[9], v14, v15);
    sub_22B248728(v16, 1);
    sub_22B248728(v16, 1);
    v17 = v11;
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    sub_22B1CD010(v16, 1);
    v20 = os_log_type_enabled(v18, v19);
    v59 = v0[9];
    v61 = v0[16];
    v57 = v0[6];
    if (v20)
    {
      v21 = v17;
      v54 = v17;
      v22 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v52;
      *v22 = 136315394;
      v23 = [v21 zoneName];
      v24 = v3;
      v25 = sub_22B36084C();
      v27 = v26;

      v28 = v25;
      v3 = v24;
      v29 = sub_22B1A7B20(v28, v27, &v63);
      v2 = v49;
      v0 = v50;

      *(v22 + 4) = v29;
      *(v22 + 12) = 2112;
      v30 = v16;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v31;
      *v51 = v31;
      _os_log_impl(&dword_22B116000, v18, v19, "[IdentityRepair] failed to delete %s due to %@", v22, 0x16u);
      sub_22B12F10C(v51);
      MEMORY[0x23188F650](v51, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23188F650](v52, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    else
    {
    }

    sub_22B1CD010(v16, 1);
    v61(v59, v57);
    v8 = v1;
    v7 = v56;
  }

  while (1)
  {
    v1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v1 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v1);
    ++v8;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  if (v48)
  {
    if (qword_28140B168 == -1)
    {
LABEL_21:
      v45 = qword_28140BDC8;
      v0[25] = qword_28140BDC8;

      return MEMORY[0x2822009F8](sub_22B2F0CBC, v45, 0);
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  v46 = v0[1];

  return v46();
}

uint64_t sub_22B2F0CBC()
{
  if (*(*(v0 + 200) + 112))
  {

    sub_22B2A5894();
  }

  return MEMORY[0x2822009F8](sub_22B2F0D3C, 0, 0);
}

uint64_t sub_22B2F0D3C()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 208) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B2F0DD4, v1, 0);
}

uint64_t sub_22B2F0DD4()
{
  v1 = *(v0 + 208);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 120);

    v3 = v2;
    sub_22B207820();
    sub_22B207A4C();
  }

  return MEMORY[0x2822009F8](sub_22B2F0E68, 0, 0);
}

void sub_22B2F0E68()
{
  v1 = *(v0 + 192);
  v2 = MEMORY[0x23188EEB0]();
  sub_22B34D440();
  objc_autoreleasePoolPop(v2);
  if (!v1)
  {

    v3 = *(v0 + 8);

    v3();
  }
}

uint64_t sub_22B2F0FF4()
{
  v1 = sub_22B3605EC();
  v0[13] = v1;
  v0[14] = *(v1 - 8);
  v0[15] = swift_task_alloc();
  v2 = sub_22B36062C();
  v0[16] = v2;
  v0[17] = *(v2 - 8);
  v0[18] = swift_task_alloc();
  v3 = sub_22B36052C();
  v0[19] = v3;
  v0[20] = *(v3 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2F1198, 0, 0);
}

uint64_t sub_22B2F1198()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[20];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[26] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[27] = v5;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Private Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[25];
  v10 = v0[19];
  v11 = v0[20];

  v12 = *(v11 + 8);
  v0[29] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[30] = v13;
  *(v13 + 16) = 0;
  v14 = swift_task_alloc();
  v0[31] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v14 = v0;
  v14[1] = sub_22B2F13B4;

  return MEMORY[0x2822007B8](v0 + 11, 0, 0, 0xD000000000000021, 0x800000022B36DCE0, sub_22B2F2480, v13, v15);
}

uint64_t sub_22B2F13B4()
{

  return MEMORY[0x2822009F8](sub_22B2F14CC, 0, 0);
}

uint64_t sub_22B2F14CC()
{
  v1 = v0[11];
  v0[32] = v1;
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[19];
  if (v2)
  {
    v3(v0[23], v0[26], v0[19]);

    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (v1 >> 62)
      {
        v9 = sub_22B36109C();
      }

      else
      {
        v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] %ld affected private zones", v8, 0xCu);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    else
    {
    }

    v20 = v0[29];
    v21 = v0[23];
    v22 = v0[19];
    v0[33] = (v0[20] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v21, v22);
    if (qword_2814097C0 != -1)
    {
      swift_once();
    }

    v0[34] = [*(qword_28140BCF0 + 16) privateCloudDatabase];
    v23 = swift_task_alloc();
    v0[35] = v23;
    *v23 = v0;
    v23[1] = sub_22B2F1838;
    v24 = MEMORY[0x277D84F90];

    return MEMORY[0x28210DEF8](v24, v1);
  }

  else
  {
    v10 = v0[24];

    v3(v10, v4, v5);
    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[29];
    v15 = v0[24];
    v16 = v0[19];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v11, v12, "[IdentityRepair] No affected private zones", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v14(v15, v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22B2F1838(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[36] = a1;
  v5[37] = a2;
  v5[38] = v2;

  v6 = v4[34];
  if (v2)
  {

    v7 = sub_22B2F23C8;
  }

  else
  {

    v7 = sub_22B2F1984;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B2F1984()
{
  v85 = v0;
  v1 = v0[37];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[37] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v72 = (v0[14] + 8);
  v71 = (v0[17] + 8);
  v75 = v0[37];
  swift_bridgeObjectRetain_n();
  v67 = 0;
  v9 = 0;
  v73 = v8;
  v74 = v3;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(v75 + 48) + 8 * v12);
    v14 = *(v75 + 56) + 16 * v12;
    v15 = v0[27];
    v16 = v0[26];
    v17 = v0[19];
    if (*(v14 + 8) == 1)
    {
      v18 = *v14;
      v82 = *v14;
      v15(v0[22], v16, v17);
      sub_22B248728(v18, 1);
      sub_22B248728(v18, 1);
      v19 = v13;
      v20 = sub_22B36050C();
      v21 = sub_22B360D1C();
      sub_22B1CD010(v18, 1);
      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[29];
      v24 = v0[22];
      v25 = v0[19];
      v80 = v19;
      if (v22)
      {
        v78 = v0[22];
        v26 = swift_slowAlloc();
        v76 = v25;
        v27 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v84[0] = v68;
        *v26 = 136315394;
        v28 = [v19 zoneName];
        v29 = sub_22B36084C();
        v69 = v23;
        v31 = v30;

        v32 = sub_22B1A7B20(v29, v31, v84);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2112;
        v33 = v82;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v34;
        *v27 = v34;
        _os_log_impl(&dword_22B116000, v20, v21, "[IdentityRepair] failed to delete %s due to %@", v26, 0x16u);
        sub_22B12F10C(v27);
        MEMORY[0x23188F650](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x23188F650](v68, -1, -1);
        MEMORY[0x23188F650](v26, -1, -1);

        v69(v78, v76);
      }

      else
      {

        v23(v24, v25);
      }

      v35 = [objc_opt_self() processInfo];
      v36 = [v35 processName];

      v37 = sub_22B36084C();
      v39 = v38;

      if (qword_281408CD8 != -1)
      {
        swift_once();
      }

      v40 = v0[18];
      v41 = v0[15];
      v42 = v0[13];
      v79 = v0[16];
      v43 = swift_allocObject();
      *(v43 + 16) = 259;
      *(v43 + 18) = 13;
      *(v43 + 24) = v37;
      *(v43 + 32) = v39;
      *(v43 + 40) = 0;
      v0[6] = sub_22B1AF3E4;
      v0[7] = v43;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22B118A6C;
      v0[5] = &block_descriptor_24;
      v44 = _Block_copy(v0 + 2);

      sub_22B36060C();
      v0[12] = MEMORY[0x277D84F90];
      sub_22B2F24C0(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
      sub_22B124A3C();
      sub_22B36104C();
      MEMORY[0x23188E6D0](0, v40, v41, v44);
      _Block_release(v44);

      sub_22B1CD010(v82, 1);
      (*v72)(v41, v42);
      (*v71)(v40, v79);

      v8 = v73;
      v3 = v74;
    }

    else
    {
      v15(v0[21], v16, v17);
      v45 = v13;
      v46 = sub_22B36050C();
      v47 = sub_22B360D1C();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[29];
      v81 = v0[19];
      v83 = v0[21];
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v84[0] = v51;
        *v50 = 136315138;
        v52 = [v45 zoneName];
        v77 = v49;
        v53 = sub_22B36084C();
        v70 = v45;
        v55 = v54;

        v56 = sub_22B1A7B20(v53, v55, v84);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_22B116000, v46, v47, "[IdentityRepair] deleted %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        v57 = v51;
        v8 = v73;
        MEMORY[0x23188F650](v57, -1, -1);
        v58 = v50;
        v3 = v74;
        MEMORY[0x23188F650](v58, -1, -1);

        v77(v83, v81);
      }

      else
      {

        v49(v83, v81);
      }

      v67 = 1;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  if (v67)
  {
    v59 = [objc_opt_self() processInfo];
    v60 = [v59 processName];

    v61 = sub_22B36084C();
    v63 = v62;

    LOWORD(v84[0]) = 259;
    BYTE2(v84[0]) = 16;
    v84[1] = v61;
    v84[2] = v63;
    v84[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v84);
    if (qword_28140B168 == -1)
    {
LABEL_22:
      v64 = qword_28140BDC8;
      v0[39] = qword_28140BDC8;

      return MEMORY[0x2822009F8](sub_22B2F21B8, v64, 0);
    }

LABEL_29:
    swift_once();
    goto LABEL_22;
  }

  swift_bridgeObjectRelease_n();

  v65 = v0[1];

  return v65();
}

uint64_t sub_22B2F21B8()
{
  if (*(*(v0 + 312) + 112))
  {

    sub_22B2A5894();
  }

  return MEMORY[0x2822009F8](sub_22B2F2238, 0, 0);
}

uint64_t sub_22B2F2238()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD0;
  *(v0 + 320) = qword_28140BDD0;

  return MEMORY[0x2822009F8](sub_22B2F22D0, v1, 0);
}

uint64_t sub_22B2F22D0()
{
  v1 = *(v0 + 320);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 120);

    v3 = v2;
    sub_22B207820();
    sub_22B207A4C();
  }

  return MEMORY[0x2822009F8](sub_22B2F2364, 0, 0);
}

void sub_22B2F2364()
{
  v1 = *(v0 + 304);
  v2 = MEMORY[0x23188EEB0]();
  sub_22B34D440();
  objc_autoreleasePoolPop(v2);
  if (!v1)
  {
    exit(0);
  }
}

uint64_t sub_22B2F23C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2F24C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_5Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B2F25F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD30, &unk_22B366DD8) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_22B2F26F0()
{
  v1 = sub_22B36052C();
  v0[14] = v1;
  v0[15] = *(v1 - 8);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2F27E8, 0, 0);
}

uint64_t sub_22B2F27E8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[22] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[23] = v5;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] Check Shared Zones", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[21];
  v10 = v0[14];
  v11 = v0[15];

  v12 = *(v11 + 8);
  v0[25] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *(v13 + 16) = 1;
  v14 = swift_task_alloc();
  v0[27] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD28, &unk_22B366DC8);
  *v14 = v0;
  v14[1] = sub_22B2F2A08;

  return MEMORY[0x2822007B8](v0 + 10, 0, 0, 0xD000000000000021, 0x800000022B36DCE0, sub_22B2F45C4, v13, v15);
}

uint64_t sub_22B2F2A08()
{

  return MEMORY[0x2822009F8](sub_22B2F2B20, 0, 0);
}

uint64_t sub_22B2F2B20()
{
  v1 = sub_22B31A8A4(v0[10]);
  v0[28] = v1;

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = v1[2];
  }

  v3 = v0[23];
  v4 = v0[22];
  v5 = v0[14];
  if (v2)
  {
    v3(v0[19], v0[22], v0[14]);

    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = sub_22B36109C();
      }

      else
      {
        v9 = v1[2];
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_22B116000, v6, v7, "[IdentityRepair] %ld affected shared zones", v8, 0xCu);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    else
    {
    }

    v20 = v0[25];
    v21 = v0[19];
    v22 = v0[14];
    v0[29] = (v0[15] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v21, v22);
    v0[11] = MEMORY[0x277D84FA0];
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v23 = qword_28140BDD0;
    v0[30] = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B2F2E3C, v23, 0);
  }

  else
  {
    v10 = v0[20];

    v3(v10, v4, v5);
    v11 = sub_22B36050C();
    v12 = sub_22B360D2C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[25];
    v15 = v0[20];
    v16 = v0[14];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v11, v12, "[IdentityRepair] No affected shared zones", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v14(v15, v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22B2F2E3C()
{
  sub_22B143A3C(1);
  *(v0 + 248) = v1;
  *(v0 + 256) = 0;

  return MEMORY[0x2822009F8](sub_22B2F2ECC, 0, 0);
}

uint64_t sub_22B2F2ECC()
{
  v58 = v0 + 88;
  v1 = *(v0 + 248);
  v59 = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_70:
    v3 = sub_22B36109C();
    v4 = *(v0 + 248);
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 248);
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x277D84F90];
  v1 = &off_2786FB000;
  v57 = MEMORY[0x277D84F90];
  while (v3 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x23188EAC0](v5, *(v56 + 248));
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_66;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v0 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v11 = [v9 recordID];

    ++v5;
    if (v11)
    {
      MEMORY[0x23188E350]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v8 = v59;
      v5 = v0;
    }
  }

  v12 = sub_22B31A8D4(v8);

  v13 = 0;
  *v58 = v12;
  v59 = MEMORY[0x277D84F90];
  while (v3 != v13)
  {
    if (v6)
    {
      v14 = MEMORY[0x23188EAC0](v13, *(v56 + 248));
    }

    else
    {
      if (v13 >= *(v2 + 16))
      {
        goto LABEL_68;
      }

      v14 = *(v7 + 8 * v13);
    }

    v15 = v14;
    v0 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_67;
    }

    v16 = [v14 recordID];
    v17 = [v16 zoneID];

    ++v13;
    if (v17)
    {
      MEMORY[0x23188E350]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
      }

      sub_22B360A9C();
      v57 = v59;
      v13 = v0;
    }
  }

  v2 = v56;

  v18 = sub_22B31A8A4(v57);

  v19 = *(v56 + 224);

  v20 = sub_22B2EC234(v18, v19);

  if ((v20 & 0xC000000000000001) == 0)
  {
    if (*(v20 + 16))
    {
      v23 = 0;
      v26 = -1;
      v27 = -1 << *(v20 + 32);
      v21 = v20 + 56;
      if (-v27 < 64)
      {
        v26 = ~(-1 << -v27);
      }

      v1 = v26 & *(v20 + 56);
      *(v56 + 272) = v21;
      *(v56 + 280) = ~v27;
      v25 = 63 - v27;
      v24 = (v56 + 264);
      *(v56 + 264) = v20;
      goto LABEL_33;
    }

LABEL_43:

    goto LABEL_47;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_43;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  sub_22B360C7C();
  v20 = *(v56 + 16);
  v21 = *(v56 + 24);
  v22 = *(v56 + 32);
  v23 = *(v56 + 40);
  v1 = *(v56 + 48);
  *(v56 + 272) = v21;
  *(v56 + 280) = v22;
  v24 = (v56 + 264);
  *(v56 + 264) = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v25 = v22 + 64;
LABEL_33:
    v28 = v1;
    v0 = v23;
    if (!v1)
    {
      v29 = v25 >> 6;
      v30 = v23;
      do
      {
        v0 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_69;
        }

        if (v0 >= v29)
        {
          goto LABEL_46;
        }

        v28 = *(v21 + 8 * v0);
        ++v30;
      }

      while (!v28);
    }

    v31 = (v28 - 1) & v28;
    v32 = *(*(v20 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v28)))));
LABEL_39:
    *(v56 + 296) = v0;
    *(v56 + 304) = v31;
    *(v56 + 288) = v32;
    if (v32)
    {
      v33 = swift_task_alloc();
      *(v56 + 312) = v33;
      *v33 = v56;
      v33[1] = sub_22B2F36D4;

      return sub_22B2EDA3C(v32);
    }

    goto LABEL_46;
  }

  v35 = sub_22B3610BC();
  if (v35)
  {
    *(v56 + 104) = v35;
    swift_dynamicCast();
    v32 = *(v56 + 96);
    v0 = v23;
    v31 = v1;
    goto LABEL_39;
  }

LABEL_46:
  sub_22B1A20B8(*v24);
LABEL_47:
  if ((*v58 & 0xC000000000000001) != 0)
  {
    v36 = sub_22B36109C();
    v37 = *(v56 + 224);
    if (v36)
    {
LABEL_49:

LABEL_50:
      (*(v56 + 184))(*(v56 + 136), *(v56 + 176), *(v56 + 112));
      v38 = sub_22B36050C();
      v39 = sub_22B360D1C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_22B116000, v38, v39, "[IdentityRepair] Cleaning up shares", v40, 2u);
        MEMORY[0x23188F650](v40, -1, -1);
      }

      v41 = *(v56 + 200);
      v42 = *(v56 + 136);
      v43 = *(v56 + 112);

      v41(v42, v43);
      v44 = swift_task_alloc();
      *(v56 + 328) = v44;
      *(v44 + 16) = v58;
      v45 = swift_task_alloc();
      *(v56 + 336) = v45;
      *v45 = v56;
      v45[1] = sub_22B2F3CC4;
      v46 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822007B8](v45, 0, 0, 0xD00000000000002ALL, 0x800000022B36DD10, sub_22B2F4428, v44, v46);
    }
  }

  else
  {
    v37 = *(v56 + 224);
    if (*(*v58 + 16))
    {
      goto LABEL_49;
    }
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    v47 = sub_22B36109C();

    if (!v47)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v48 = *(v37 + 16);

    if (!v48)
    {
      goto LABEL_50;
    }
  }

  (*(v56 + 184))(*(v56 + 144), *(v56 + 176), *(v56 + 112));
  v49 = sub_22B36050C();
  v50 = sub_22B360D1C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_22B116000, v49, v50, "[IdentityRepair] Failed to find share in cd or ck", v51, 2u);
    MEMORY[0x23188F650](v51, -1, -1);
  }

  v52 = *(v56 + 200);
  v53 = *(v56 + 144);
  v54 = *(v56 + 112);

  v52(v53, v54);

  v55 = *(v56 + 8);

  return v55();
}

uint64_t sub_22B2F36D4(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_22B2F37D4, 0, 0);
}

uint64_t sub_22B2F37D4()
{
  v42 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  if (v1)
  {
    sub_22B32E36C(&v41, [*(v0 + 320) recordID]);
  }

  else
  {
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 264);
  if (v13 < 0)
  {
    v19 = sub_22B3610BC();
    if (!v19)
    {
      goto LABEL_17;
    }

    *(v0 + 104) = v19;
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    swift_dynamicCast();
    v18 = *(v0 + 96);
    v15 = v11;
    v17 = v12;
  }

  else
  {
    v14 = *(v0 + 304);
    v15 = *(v0 + 296);
    if (!v12)
    {
      v16 = *(v0 + 296);
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= ((*(v0 + 280) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v14 = *(*(v0 + 272) + 8 * v15);
        ++v16;
        if (v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }

LABEL_10:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v13 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  }

  *(v0 + 296) = v15;
  *(v0 + 304) = v17;
  *(v0 + 288) = v18;
  if (v18)
  {
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_22B2F36D4;

    return sub_22B2EDA3C(v18);
  }

LABEL_17:
  sub_22B1A20B8(*(v0 + 264));
  v22 = *(v0 + 88);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = sub_22B36109C();
    v24 = *(v0 + 224);
    if (v23)
    {
LABEL_19:

LABEL_20:
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v25 = sub_22B36050C();
      v26 = sub_22B360D1C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22B116000, v25, v26, "[IdentityRepair] Cleaning up shares", v27, 2u);
        MEMORY[0x23188F650](v27, -1, -1);
      }

      v28 = *(v0 + 200);
      v29 = *(v0 + 136);
      v30 = *(v0 + 112);

      v28(v29, v30);
      v31 = swift_task_alloc();
      *(v0 + 328) = v31;
      *(v31 + 16) = v0 + 88;
      v3 = swift_task_alloc();
      *(v0 + 336) = v3;
      *v3 = v0;
      v3[1] = sub_22B2F3CC4;
      v8 = sub_22B2F4428;
      v7 = 0x800000022B36DD10;
      v10 = MEMORY[0x277D84F78] + 8;
      v4 = 0;
      v5 = 0;
      v6 = 0xD00000000000002ALL;
      v9 = v31;

      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v24 = *(v0 + 224);
    if (*(v22 + 16))
    {
      goto LABEL_19;
    }
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v32 = sub_22B36109C();

    if (!v32)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v33 = *(v24 + 16);

    if (!v33)
    {
      goto LABEL_20;
    }
  }

  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v34 = sub_22B36050C();
  v35 = sub_22B360D1C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22B116000, v34, v35, "[IdentityRepair] Failed to find share in cd or ck", v36, 2u);
    MEMORY[0x23188F650](v36, -1, -1);
  }

  v37 = *(v0 + 200);
  v38 = *(v0 + 144);
  v39 = *(v0 + 112);

  v37(v38, v39);

  v40 = *(v0 + 8);

  return v40();
}