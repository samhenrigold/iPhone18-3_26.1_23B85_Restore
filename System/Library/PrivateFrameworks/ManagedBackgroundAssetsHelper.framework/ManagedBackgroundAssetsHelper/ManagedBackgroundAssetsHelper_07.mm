uint64_t sub_1D309D2D0()
{
  v1 = v0[41];
  v2 = v0[33];

  sub_1D30CC4DC((v0 + 2), v2, v1);
  v0[64] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D309D3A0, 0, 0);
}

uint64_t sub_1D309D3A0()
{
  v153 = v0;
  v152 = *MEMORY[0x1E69E9840];
  v1 = v0[2];
  v2 = v0[64];
  v3 = v0[3];
  sub_1D302D670(v1, v3, v0[36], v0[53]);
  v150 = v0;
  if (v2)
  {
    v4 = v0[41];
    v5 = v0[38];
    v6 = v0[39];
    v7 = v0[37];
    sub_1D3056830(v0[36], v7, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v7, v8, type metadata accessor for FilePath.ResolutionError);
    (*(v6 + 8))(v4, v5);
LABEL_5:

    v31 = v150[1];
    goto LABEL_6;
  }

  v134 = v3;
  v138 = v1;
  v9 = v0[56];
  v143 = v0 + 2;
  v148 = v0[57];
  v10 = v0[41];
  v11 = v0[40];
  v12 = v0[39];
  v13 = v150[38];
  sub_1D30E8D8C();
  (*(v12 + 16))(v11, v10, v13);
  sub_1D30E8D7C();
  sub_1D30E8D8C();
  sub_1D3003CF4(v9, 0, v148);
  v14 = v150[60];
  v15 = v150[57];
  v17 = v150[50];
  v16 = v150[51];
  v18 = v150[42];
  v19 = v150[43];
  v20 = v150[34];
  v21 = v150[27];
  (v150[62])(v150[56], v18);
  v14(v16, v15, v18);
  v14(v17, v21, v18);
  sub_1D30E8D1C();
  v22 = (*(v19 + 48))(v20, 1, v18);
  v23 = v150[27];
  if (v22 == 1)
  {
    v24 = v150[60];
    v25 = v150[57];
    v26 = v150[42];
    v139 = v150[41];
    v144 = v150[62];
    v27 = v150[39];
    v135 = v150[38];
    sub_1D2FF14DC(v150[34], &qword_1EC749928, &unk_1D30F1B00);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
    v24(v29, v25, v26);
    v24(v29 + v30, v23, v26);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v144(v25, v26);
    (*(v27 + 8))(v139, v135);
    goto LABEL_5;
  }

  v33 = v150[60];
  v34 = v150[49];
  v35 = v150[42];
  v131 = *(v150[43] + 32);
  v131(v150[52], v150[34], v35);
  v36 = sub_1D30E927C();
  v33(v34, v23, v35);
  v37 = v143;
  sub_1D30E5940(v143, (v143 + 6));
  v38 = sub_1D30E8B1C();
  sub_1D30E599C(v143);
  v39 = os_log_type_enabled(v38, v36);
  v40 = v150[62];
  v41 = v150[49];
  v42 = v150[42];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v151[0] = v44;
    *v43 = 136446722;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v45 = sub_1D30E977C();
    v47 = v46;
    v40(v41, v42);
    v48 = sub_1D2FFEA04(v45, v47, v151);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    *(v43 + 14) = sub_1D2FFEA04(v150[6], v150[7], v151);
    *(v43 + 22) = 2082;
    *(v43 + 24) = sub_1D2FFEA04(v138, v134, v151);
    _os_log_impl(&dword_1D2FD9000, v38, v36, "Validating the item at “%{public}s” in the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v44, -1, -1);
    v37 = v143;
    MEMORY[0x1D38B3760](v43, -1, -1);
  }

  else
  {

    v40(v41, v42);
  }

  v49 = v150;
  *(v150 + 552) = 1;
  v50 = [objc_opt_self() defaultManager];
  sub_1D30E8D3C();
  v51 = sub_1D30E906C();

  v52 = [v50 fileExistsAtPath:v51 isDirectory:v37 + 536];

  if (v52)
  {
    v53 = *(v37 + 536);
    v140 = sub_1D30E927C();
    v54 = v150[60];
    v55 = v150[52];
    if ((v53 & 1) == 0)
    {
      v92 = v150[47];
      v93 = v150[42];
      v54(v150[48], v150[27], v93);
      v54(v92, v55, v93);
      v94 = sub_1D30E8B1C();
      v95 = os_log_type_enabled(v94, v140);
      v96 = v150[62];
      v98 = v150[47];
      v97 = v150[48];
      v99 = v150[42];
      if (v95)
      {
        v100 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *&v151[0] = v137;
        *v100 = 136446466;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v101 = sub_1D30E977C();
        v103 = v102;
        v96(v97, v99);
        v104 = v101;
        v49 = v150;
        v105 = sub_1D2FFEA04(v104, v103, v151);

        *(v100 + 4) = v105;
        *(v100 + 12) = 2082;
        v106 = sub_1D30E977C();
        v108 = v107;
        v96(v98, v99);
        v109 = sub_1D2FFEA04(v106, v108, v151);

        *(v100 + 14) = v109;
        _os_log_impl(&dword_1D2FD9000, v94, v140, "An item matching the file path “%{public}s” was found at “%{public}s”.", v100, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v137, -1, -1);
        MEMORY[0x1D38B3760](v100, -1, -1);
      }

      else
      {

        v96(v98, v99);
        v96(v97, v99);
      }

      v112 = v49[57];
      v113 = v49[39];
      v114 = v49[31];
      v115 = v49[32];
      v116 = v49[29];
      v117 = v49[30];
      v118 = v49[28];
      v119 = v143[1];
      v151[0] = *v143;
      v151[1] = v119;
      v151[2] = v143[2];
      v120 = sub_1D30E5B78(v112, v151, v116, v117, v114, v115, v118);
      v121 = (v113 + 8);
      v122 = v49[52];
      v124 = v123;
      v125 = v49[46];
      v126 = v49[41];
      v127 = v49[42];
      v128 = v49[38];
      v142 = v120;
      v147 = v49[26];
      (v49[62])(v49[57], v127);
      (*v121)(v126, v128);
      v131(v125, v122, v127);
      if (v124)
      {
        v129 = v142;
      }

      else
      {
        v129 = 0;
      }

      v131(v147, v125, v127);
      v110 = type metadata accessor for Helper.PathInAssetPackLookupResult(0);
      v111 = 0;
      v130 = (v147 + *(v110 + 20));
      *v130 = v129;
      v130[1] = v124;
      goto LABEL_22;
    }

    v54(v150[45], v150[52], v150[42]);
    v56 = sub_1D30E8B1C();
    v57 = os_log_type_enabled(v56, v140);
    v58 = v150[62];
    v59 = v150[57];
    v149 = v150[52];
    v60 = v150[45];
    v61 = v150[41];
    v62 = v150[42];
    v63 = v150[38];
    v64 = v150[39];
    if (v57)
    {
      v65 = swift_slowAlloc();
      v145 = v63;
      v66 = swift_slowAlloc();
      *&v151[0] = v66;
      *v65 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v132 = v59;
      v67 = sub_1D30E977C();
      v69 = v68;
      v58(v60, v62);
      v70 = sub_1D2FFEA04(v67, v69, v151);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1D2FD9000, v56, v140, "The item at “%{public}s” is unexpectedly a directory.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1D38B3760](v66, -1, -1);
      MEMORY[0x1D38B3760](v65, -1, -1);

      v58(v149, v62);
      v58(v132, v62);
      (*(v64 + 8))(v61, v145);
    }

    else
    {

      v58(v60, v62);
      v58(v149, v62);
      v58(v59, v62);
      (*(v64 + 8))(v61, v63);
    }
  }

  else
  {
    v71 = v150[60];
    v72 = v150[52];
    v73 = v150[44];
    v74 = v150[42];
    v75 = sub_1D30E927C();
    v71(v73, v72, v74);
    v76 = sub_1D30E8B1C();
    v146 = v75;
    v77 = os_log_type_enabled(v76, v75);
    v78 = v150[62];
    v79 = v150[57];
    v80 = v150[52];
    v81 = v150[44];
    v82 = v150[41];
    v83 = v150[42];
    v84 = v150[38];
    v85 = v150[39];
    if (v77)
    {
      v86 = swift_slowAlloc();
      v141 = v82;
      v87 = swift_slowAlloc();
      *&v151[0] = v87;
      *v86 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v133 = v79;
      v136 = v84;
      v88 = sub_1D30E977C();
      v90 = v89;
      v78(v81, v83);
      v91 = sub_1D2FFEA04(v88, v90, v151);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_1D2FD9000, v76, v146, "No file exists at “%{public}s”.", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x1D38B3760](v87, -1, -1);
      MEMORY[0x1D38B3760](v86, -1, -1);

      v78(v80, v83);
      v78(v133, v83);
      (*(v85 + 8))(v141, v136);
    }

    else
    {

      v78(v81, v83);
      v78(v80, v83);
      v78(v79, v83);
      (*(v85 + 8))(v82, v84);
    }
  }

  v110 = type metadata accessor for Helper.PathInAssetPackLookupResult(0);
  v111 = 1;
LABEL_22:
  (*(*(v110 - 8) + 56))(v150[26], v111, 1);

  v31 = v150[1];
LABEL_6:

  return v31();
}

uint64_t sub_1D309E48C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D309E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = v16;
  *(v9 + 112) = v8;
  *(v9 + 88) = v15;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749928, &unk_1D30F1B00);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  *(v9 + 128) = swift_task_alloc();
  v10 = sub_1D30E8D5C();
  *(v9 + 136) = v10;
  *(v9 + 144) = *(v10 - 8);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = type metadata accessor for FilePath.ResolutionError(0);
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  v11 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  *(v9 + 192) = v11;
  *(v9 + 200) = *(v11 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  v12 = sub_1D30E8D9C();
  *(v9 + 256) = v12;
  *(v9 + 264) = *(v12 - 8);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D309E9A8, 0, 0);
}

uint64_t sub_1D309E9A8()
{
  v76 = v0;
  v75[1] = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  if (v1)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v2 = v0[52];
    v3 = v0[32];
    v4 = v0[33];
    v5 = v0[4];
    v6 = sub_1D30E8B3C();
    __swift_project_value_buffer(v6, qword_1EE314B60);
    v7 = sub_1D30E928C();
    v73 = *(v4 + 16);
    v73(v2, v5, v3);

    v8 = sub_1D30E8B1C();

    v71 = v7;
    v9 = os_log_type_enabled(v8, v7);
    v10 = v0[52];
    v12 = v0[32];
    v11 = v0[33];
    if (v9)
    {
      v68 = v0[13];
      v66 = v0[12];
      v64 = v0[11];
      v62 = v0[10];
      v59 = v0[7];
      v57 = v0[5];
      v58 = v0[6];
      v13 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v75[0] = v70;
      *v13 = 136447490;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v14 = sub_1D30E977C();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_1D2FFEA04(v14, v16, v75);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_1D2FFEA04(v57, v58, v75);
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_1D2FFEA04(v59, v1, v75);
      *(v13 + 32) = 2082;
      v19 = sub_1D30E922C();
      v21 = sub_1D2FFEA04(v19, v20, v75);

      *(v13 + 34) = v21;
      *(v13 + 42) = 2160;
      *(v13 + 44) = 1752392040;
      *(v13 + 52) = 2080;
      v0[62] = v62;
      v0[63] = v64;
      v0[64] = v66;
      v0[65] = v68;
      type metadata accessor for audit_token_t(0);
      v22 = sub_1D30E909C();
      v24 = sub_1D2FFEA04(v22, v23, v75);

      *(v13 + 54) = v24;
      _os_log_impl(&dword_1D2FD9000, v8, v71, "Look up path to file at: %{public}s for app with bundle ID: %{public}s team ID: %{public}s IDs of accessible asset packs: %{public}s audit token: %{mask.hash}s", v13, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v70, -1, -1);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    v25 = v73;
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v26 = v0[51];
    v27 = v0[32];
    v28 = v0[33];
    v29 = v0[4];
    v30 = sub_1D30E8B3C();
    __swift_project_value_buffer(v30, qword_1EE314B60);
    v31 = sub_1D30E928C();
    v32 = v29;
    v25 = *(v28 + 16);
    v25(v26, v32, v27);

    v33 = sub_1D30E8B1C();

    v72 = v31;
    v34 = os_log_type_enabled(v33, v31);
    v35 = v0[51];
    v37 = v0[32];
    v36 = v0[33];
    if (v34)
    {
      v69 = v0[13];
      v67 = v0[12];
      v65 = v0[11];
      v63 = v0[10];
      v60 = v0[5];
      v61 = v0[6];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v75[0] = v39;
      *v38 = 136447234;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v74 = v25;
      v40 = sub_1D30E977C();
      v42 = v41;
      v17 = *(v36 + 8);
      v17(v35, v37);
      v43 = sub_1D2FFEA04(v40, v42, v75);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_1D2FFEA04(v60, v61, v75);
      *(v38 + 22) = 2082;
      v44 = sub_1D30E922C();
      v46 = sub_1D2FFEA04(v44, v45, v75);

      *(v38 + 24) = v46;
      *(v38 + 32) = 2160;
      *(v38 + 34) = 1752392040;
      *(v38 + 42) = 2080;
      v0[58] = v63;
      v0[59] = v65;
      v0[60] = v67;
      v0[61] = v69;
      type metadata accessor for audit_token_t(0);
      v47 = sub_1D30E909C();
      v49 = sub_1D2FFEA04(v47, v48, v75);

      *(v38 + 44) = v49;
      v25 = v74;
      _os_log_impl(&dword_1D2FD9000, v33, v72, "Look up path to file at: %{public}s for app with bundle ID: %{public}s IDs of accessible asset packs: %{public}s audit token: %{mask.hash}s", v38, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v39, -1, -1);
      MEMORY[0x1D38B3760](v38, -1, -1);
    }

    else
    {

      v17 = *(v36 + 8);
      v17(v35, v37);
    }
  }

  v0[53] = v17;
  v0[54] = v25;
  if (sub_1D30E8CDC())
  {
    sub_1D30E91FC();
    v0[55] = sub_1D30E91EC();
    v51 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D309F368, v51, v50);
  }

  else
  {
    v52 = v0[32];
    v53 = v0[4];
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v25(v54, v53, v52);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

uint64_t sub_1D309F368()
{
  v2 = v0[5];
  v1 = v0[6];

  sub_1D30D3148(v2, v1, 2887, v0 + 2);
  v0[56] = 0;
  v0[57] = v0[2];

  return MEMORY[0x1EEE6DFA0](sub_1D309F610, 0, 0);
}

uint64_t sub_1D309F610()
{
  v268 = v0;
  v1 = v0;
  v267[6] = *MEMORY[0x1E69E9840];
  if (qword_1EE3152C8 != -1)
  {
LABEL_60:
    swift_once();
  }

  v2 = v1[54];
  v3 = v1[50];
  v4 = v1[32];
  v5 = v1[4];
  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE314B60);
  v7 = sub_1D30E927C();
  v2(v3, v5, v4);

  v8 = sub_1D30E8B1C();

  v9 = os_log_type_enabled(v8, v7);
  v10 = v1[53];
  v11 = v1[50];
  v12 = v1[32];
  v266 = v1;
  if (v9)
  {
    v260 = v1[5];
    v261 = v1[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v267[0] = v14;
    *v13 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v15 = sub_1D30E977C();
    v17 = v16;
    v10(v11, v12);
    v18 = v15;
    v1 = v266;
    v19 = sub_1D2FFEA04(v18, v17, v267);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1D2FFEA04(v260, v261, v267);
    _os_log_impl(&dword_1D2FD9000, v8, v7, "Finding the asset pack that contains a file at “%{public}s” for the app with the bundle ID “%{public}s”…", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v14, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    v10(v11, v12);
  }

  v20 = v1[57];
  v241 = *(v20 + 16);
  if (v241)
  {
    v21 = 0;
    v243 = v1[25];
    v242 = v20 + ((*(v243 + 80) + 32) & ~*(v243 + 80));
    v22 = v1[18];
    v237 = (v22 + 48);
    v238 = v1[24];
    v235 = (v22 + 16);
    v236 = (v22 + 32);
    v23 = v1[33];
    v234 = (v22 + 8);
    v231 = (v23 + 32);
    v232 = (v23 + 48);
    v24 = v1[31];
    v226 = v1[30];
    v227 = v1[28];
    v228 = v1[27];
    v229 = v1[29];
    v230 = v1[26];
    v25 = v1[8];
    v254 = v1[56];
    v239 = v25;
    v240 = v1[57];
    v233 = v24;
    do
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v26 = v1[8];
      sub_1D3058338(v242 + *(v243 + 72) * v21, v1[31], type metadata accessor for AssetPackRecord.StaticRepresentation);
      if (v26)
      {
        v27 = *(v24 + 24);
        if (!v27)
        {
          v109 = v1[31];
          v110 = v1[29];
          v111 = sub_1D30E927C();
          sub_1D3058338(v109, v110, type metadata accessor for AssetPackRecord.StaticRepresentation);
          v112 = sub_1D30E8B1C();
          v113 = os_log_type_enabled(v112, v111);
          v114 = v1[29];
          if (v113)
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v267[0] = v116;
            *v115 = 136446210;
            v117 = v21;
            v118 = *(v229 + 32);
            v119 = *(v229 + 40);

            sub_1D3065284(v114, type metadata accessor for AssetPackRecord.StaticRepresentation);
            v120 = v118;
            v20 = v240;
            v121 = sub_1D2FFEA04(v120, v119, v267);
            v21 = v117;
            v25 = v239;

            *(v115 + 4) = v121;
            _os_log_impl(&dword_1D2FD9000, v112, v111, "The asset-pack record lacks a team ID; skipping the asset pack with the ID “%{public}s”…", v115, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v116);
            MEMORY[0x1D38B3760](v116, -1, -1);
            MEMORY[0x1D38B3760](v115, -1, -1);
          }

          else
          {

            sub_1D3065284(v114, type metadata accessor for AssetPackRecord.StaticRepresentation);
          }

          sub_1D3065284(v1[31], type metadata accessor for AssetPackRecord.StaticRepresentation);
          goto LABEL_10;
        }

        v28 = *(v24 + 16);
        if ((v28 != v1[7] || v27 != v1[8]) && (sub_1D30E97CC() & 1) == 0)
        {
          v263 = v21;
          v139 = v1[30];
          v138 = v1[31];
          v140 = sub_1D30E927C();
          sub_1D3058338(v138, v139, type metadata accessor for AssetPackRecord.StaticRepresentation);

          v141 = sub_1D30E8B1C();

          v142 = os_log_type_enabled(v141, v140);
          v143 = v1[30];
          if (v142)
          {
            v144 = v266[7];
            v145 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            v267[0] = v146;
            *v145 = 136446722;
            v147 = v144;
            v1 = v266;
            *(v145 + 4) = sub_1D2FFEA04(v147, v25, v267);
            *(v145 + 12) = 2082;
            *(v145 + 14) = sub_1D2FFEA04(v28, v27, v267);
            *(v145 + 22) = 2082;
            v148 = *(v226 + 32);
            v149 = *(v226 + 40);

            sub_1D3065284(v143, type metadata accessor for AssetPackRecord.StaticRepresentation);
            v150 = sub_1D2FFEA04(v148, v149, v267);

            *(v145 + 24) = v150;
            _os_log_impl(&dword_1D2FD9000, v141, v140, "The provided team ID, “%{public}s”, doesn’t match the asset-pack record’s team ID, “%{public}s”; skipping the asset pack with the ID “%{public}s”…", v145, 0x20u);
            swift_arrayDestroy();
            v151 = v146;
            v20 = v240;
            MEMORY[0x1D38B3760](v151, -1, -1);
            MEMORY[0x1D38B3760](v145, -1, -1);
          }

          else
          {

            sub_1D3065284(v143, type metadata accessor for AssetPackRecord.StaticRepresentation);
          }

          sub_1D3065284(v1[31], type metadata accessor for AssetPackRecord.StaticRepresentation);
          v21 = v263;
          goto LABEL_10;
        }
      }

      v29 = v1[31];
      v30 = v1[16];
      v31 = v1[17];
      v32 = *(v238 + 28);

      sub_1D30E8D6C();
      if ((*v237)(v30, 1, v31) == 1)
      {
        v171 = v1[31];
        v173 = v1[22];
        v172 = v1[23];
        v175 = v1[5];
        v174 = v1[6];
        sub_1D2FF14DC(v1[16], &qword_1EC749940, &qword_1D30F1B10);
        *v173 = v175;
        v173[1] = v174;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);

        swift_willThrowTypedImpl();

        sub_1D3056830(v173, v172, type metadata accessor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v172, v176, type metadata accessor for FilePath.ResolutionError);
        v177 = v171;
LABEL_48:
        sub_1D3065284(v177, type metadata accessor for AssetPackRecord.StaticRepresentation);

        v170 = v266[1];
        goto LABEL_49;
      }

      v247 = v29;
      v262 = v21;
      (*v236)(v1[20], v1[16], v1[17]);
      if (qword_1EC749038 != -1)
      {
        swift_once();
      }

      v33 = v1[54];
      v244 = v1[48];
      v245 = v1[49];
      v34 = v1[44];
      v35 = v266[32];
      v36 = v266[20];
      v37 = v266[19];
      v38 = v266[17];
      v39 = __swift_project_value_buffer(v35, qword_1EC75A8D8);
      v40 = v35;
      v1 = v266;
      v33(v34, v39, v40);
      v41 = *v235;
      (*v235)(v37, v36, v38);
      sub_1D30E8D7C();
      (*v234)(v36, v38);
      sub_1D30E8D8C();
      v41(v37, v247 + v32, v38);
      sub_1D30E8D7C();
      sub_1D30E8D8C();
      sub_1D3003CF4(v244, 0, v245);
      v42 = v266[53];
      if (v254)
      {
        v178 = v266[31];
        v42(v266[48], v266[32]);

        v177 = v178;
        goto LABEL_48;
      }

      v43 = v266[54];
      v44 = v266[49];
      v45 = v266[44];
      v46 = v266[42];
      v47 = v266[32];
      v48 = v266[15];
      v49 = v266[4];
      v42(v266[48], v47);
      v43(v45, v44, v47);
      v43(v46, v49, v47);
      sub_1D30E8D1C();
      if ((*v232)(v48, 1, v47) == 1)
      {
        v50 = v266[54];
        v51 = v266[49];
        v52 = v266[35];
        v53 = v266[36];
        v54 = v266[32];
        v255 = v266[31];
        v55 = v266[26];
        v56 = v266[4];
        sub_1D2FF14DC(v266[15], &qword_1EC749928, &unk_1D30F1B00);
        v57 = sub_1D30E927C();
        v50(v53, v56, v54);
        v50(v52, v51, v54);
        sub_1D3058338(v255, v55, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v58 = sub_1D30E8B1C();
        v256 = v57;
        v59 = os_log_type_enabled(v58, v57);
        v60 = v266[53];
        v61 = v266[49];
        v63 = v266[35];
        v62 = v266[36];
        v64 = v266[32];
        v65 = v266[26];
        if (v59)
        {
          v66 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v267[0] = v248;
          *v66 = 136446722;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v246 = v65;
          v250 = v61;
          v67 = sub_1D30E977C();
          v69 = v68;
          v60(v62, v64);
          v70 = sub_1D2FFEA04(v67, v69, v267);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2082;
          v71 = sub_1D30E977C();
          v73 = v72;
          v60(v63, v64);
          v74 = sub_1D2FFEA04(v71, v73, v267);

          *(v66 + 14) = v74;
          *(v66 + 22) = 2082;
          v75 = *(v230 + 32);
          v76 = *(v230 + 40);

          sub_1D3065284(v246, type metadata accessor for AssetPackRecord.StaticRepresentation);
          v77 = sub_1D2FFEA04(v75, v76, v267);

          *(v66 + 24) = v77;
          _os_log_impl(&dword_1D2FD9000, v58, v256, "The file subpath “%{public}s” escapes the file path “%{public}s”; skipping the asset pack with the ID “%{public}s”…", v66, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v248, -1, -1);
          MEMORY[0x1D38B3760](v66, -1, -1);

          v60(v250, v64);
        }

        else
        {

          sub_1D3065284(v65, type metadata accessor for AssetPackRecord.StaticRepresentation);
          v60(v63, v64);
          v60(v62, v64);
          v60(v61, v64);
        }

        v24 = v233;
        v20 = v240;
        v21 = v262;
        v1 = v266;
        sub_1D3065284(v266[31], type metadata accessor for AssetPackRecord.StaticRepresentation);
        v254 = 0;
        goto LABEL_9;
      }

      v78 = *v231;
      (*v231)(v266[43], v266[15], v266[32]);
      *(v266 + 528) = 1;
      v79 = [objc_opt_self() defaultManager];
      sub_1D30E8D3C();
      v80 = sub_1D30E906C();

      v81 = [v79 fileExistsAtPath:v80 isDirectory:v266 + 66];

      if (v81)
      {
        if ((v266[66] & 1) == 0)
        {
          v180 = v266[54];
          v181 = v266[43];
          v182 = v266[40];
          v183 = v266[41];
          v184 = v266[32];
          v185 = v266[4];

          v186 = sub_1D30E927C();
          v180(v183, v185, v184);
          v180(v182, v181, v184);
          v187 = sub_1D30E8B1C();
          v264 = v186;
          v188 = os_log_type_enabled(v187, v186);
          v189 = v266[53];
          v191 = v266[40];
          v190 = v266[41];
          v192 = v266[32];
          if (v188)
          {
            v193 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            v267[0] = v258;
            *v193 = 136446466;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v252 = v187;
            v194 = sub_1D30E977C();
            v196 = v195;
            v189(v190, v192);
            v197 = sub_1D2FFEA04(v194, v196, v267);
            v1 = v266;

            *(v193 + 4) = v197;
            *(v193 + 12) = 2082;
            v198 = sub_1D30E977C();
            v200 = v199;
            v189(v191, v192);
            v201 = sub_1D2FFEA04(v198, v200, v267);

            *(v193 + 14) = v201;
            _os_log_impl(&dword_1D2FD9000, v252, v264, "An item matching the file path “%{public}s” was found at “%{public}s”.", v193, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D38B3760](v258, -1, -1);
            MEMORY[0x1D38B3760](v193, -1, -1);
          }

          else
          {

            v189(v191, v192);
            v189(v190, v192);
          }

          v202 = v1[49];
          v203 = v1[31];
          v205 = v1[12];
          v204 = v1[13];
          v207 = v1[10];
          v206 = v1[11];
          v208 = v1[9];
          v209 = v203[1];
          v211 = *(v233 + 16);
          v210 = *(v233 + 24);
          v212 = v203[4];
          v213 = v203[5];
          v267[0] = *v203;
          v267[1] = v209;
          v267[2] = v211;
          v267[3] = v210;
          v265 = v212;
          v267[4] = v212;
          v267[5] = v213;

          v214 = sub_1D30E5B78(v202, v267, v207, v206, v205, v204, v208);
          v215 = v1[53];
          v216 = v1[49];
          v217 = v1[43];
          v218 = v1[39];
          v219 = v1[32];
          v253 = v214;
          v259 = v1[31];
          v220 = v1[3];
          v249 = v221;

          v215(v216, v219);
          v78(v218, v217, v219);
          if (v249)
          {
            v222 = v253;
          }

          else
          {
            v222 = 0;
          }

          v78(v220, v218, v219);
          v223 = type metadata accessor for Helper.PathForAppLookupResult(0);
          v224 = (v220 + *(v223 + 20));
          *v224 = v265;
          v224[1] = v213;
          v225 = (v220 + *(v223 + 24));
          *v225 = v222;
          v225[1] = v249;

          sub_1D3065284(v259, type metadata accessor for AssetPackRecord.StaticRepresentation);
          (*(*(v223 - 8) + 56))(v220, 0, 1, v223);
          goto LABEL_45;
        }

        v82 = v266[54];
        v83 = v266[43];
        v84 = v266[38];
        v86 = v266[31];
        v85 = v266[32];
        v87 = v266[28];
        v88 = sub_1D30E927C();
        v82(v84, v83, v85);
        sub_1D3058338(v86, v87, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v89 = sub_1D30E8B1C();
        v90 = os_log_type_enabled(v89, v88);
        v91 = v266[53];
        v92 = v266[49];
        v93 = v266[43];
        v94 = v266[38];
        v95 = v266[32];
        v96 = v266[28];
        if (!v90)
        {
LABEL_33:

          sub_1D3065284(v96, type metadata accessor for AssetPackRecord.StaticRepresentation);
          v91(v94, v95);
          v91(v93, v95);
          v91(v92, v95);
          goto LABEL_34;
        }

        v257 = v266[43];
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v267[0] = v98;
        *v97 = 136446466;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v251 = v92;
        v99 = sub_1D30E977C();
        v101 = v100;
        v91(v94, v95);
        v102 = sub_1D2FFEA04(v99, v101, v267);

        *(v97 + 4) = v102;
        *(v97 + 12) = 2082;
        v103 = *v96;
        v104 = *(v227 + 8);

        sub_1D3065284(v96, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v105 = sub_1D2FFEA04(v103, v104, v267);

        *(v97 + 14) = v105;
        v106 = v88;
        v107 = v89;
        v108 = "The item at “%{public}s” is unexpectedly a directory; skipping the asset pack with the ID “%{public}s”…";
      }

      else
      {
        v122 = v266[54];
        v123 = v266[43];
        v124 = v266[37];
        v126 = v266[31];
        v125 = v266[32];
        v127 = v266[27];
        v128 = sub_1D30E927C();
        v122(v124, v123, v125);
        sub_1D3058338(v126, v127, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v89 = sub_1D30E8B1C();
        v129 = os_log_type_enabled(v89, v128);
        v91 = v266[53];
        v92 = v266[49];
        v93 = v266[43];
        v94 = v266[37];
        v95 = v266[32];
        v96 = v266[27];
        if (!v129)
        {
          goto LABEL_33;
        }

        v257 = v266[43];
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v267[0] = v98;
        *v97 = 136446466;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v251 = v92;
        v130 = sub_1D30E977C();
        v132 = v131;
        v91(v94, v95);
        v133 = sub_1D2FFEA04(v130, v132, v267);

        *(v97 + 4) = v133;
        *(v97 + 12) = 2082;
        v134 = *(v228 + 32);
        v135 = *(v228 + 40);

        sub_1D3065284(v96, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v136 = sub_1D2FFEA04(v134, v135, v267);

        *(v97 + 14) = v136;
        v106 = v128;
        v107 = v89;
        v108 = "No file exists at “%{public}s”; skipping the asset pack with the ID “%{public}s”…";
      }

      _os_log_impl(&dword_1D2FD9000, v107, v106, v108, v97, 0x16u);
      swift_arrayDestroy();
      v137 = v98;
      v1 = v266;
      MEMORY[0x1D38B3760](v137, -1, -1);
      MEMORY[0x1D38B3760](v97, -1, -1);

      v91(v257, v95);
      v91(v251, v95);
LABEL_34:
      v24 = v233;
      v21 = v262;
      sub_1D3065284(v1[31], type metadata accessor for AssetPackRecord.StaticRepresentation);
      v254 = 0;
      v20 = v240;
LABEL_9:
      v25 = v239;
LABEL_10:
      ++v21;
    }

    while (v241 != v21);
  }

  v152 = v1[54];
  v153 = v1[34];
  v154 = v1[32];
  v155 = v1[4];
  v156 = sub_1D30E927C();
  v152(v153, v155, v154);
  v157 = sub_1D30E8B1C();
  v158 = os_log_type_enabled(v157, v156);
  v159 = v1[53];
  v160 = v1[34];
  v161 = v1[32];
  if (v158)
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v267[0] = v163;
    *v162 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v164 = sub_1D30E977C();
    v166 = v165;
    v159(v160, v161);
    v167 = sub_1D2FFEA04(v164, v166, v267);

    *(v162 + 4) = v167;
    _os_log_impl(&dword_1D2FD9000, v157, v156, "No asset pack contains a file at “%{public}s”.", v162, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v163);
    MEMORY[0x1D38B3760](v163, -1, -1);
    MEMORY[0x1D38B3760](v162, -1, -1);
  }

  else
  {

    v159(v160, v161);
  }

  v168 = v266[3];
  v169 = type metadata accessor for Helper.PathForAppLookupResult(0);
  (*(*(v169 - 8) + 56))(v168, 1, 1, v169);
LABEL_45:

  v170 = v266[1];
LABEL_49:

  return v170();
}

void sub_1D30A13A4(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v110 = a3;
  v94 = a9;
  v106 = a5;
  v107 = a6;
  v12 = HIDWORD(a5);
  v13 = HIDWORD(a6);
  v108 = a7;
  v109 = a8;
  v104 = HIDWORD(a7);
  v105 = HIDWORD(a8);
  v100 = type metadata accessor for FilePath.ResolutionError(0);
  v14 = MEMORY[0x1EEE9AC00](v100);
  v16 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v92 - v17;
  v18 = sub_1D30E8D9C();
  v19 = *(v18 - 8);
  v97 = v18;
  v98 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v101 = &v92 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v92 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v92 - v28;
  v95 = v22;
  v102 = v16;
  v96 = v27;
  if (!a4)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D30E8B3C();
    __swift_project_value_buffer(v40, qword_1EE314B60);
    v41 = sub_1D30E928C();

    v32 = sub_1D30E8B1C();

    if (!os_log_type_enabled(v32, v41))
    {
      goto LABEL_11;
    }

    v42 = swift_slowAlloc();
    v93 = a1;
    v43 = v42;
    v44 = swift_slowAlloc();
    v119 = v44;
    *v43 = 136446722;
    *(v43 + 4) = sub_1D2FFEA04(v93, a2, &v119);
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2080;
    v112 = __PAIR64__(v12, v106);
    v113 = v107;
    v114 = v13;
    v115 = v108;
    v116 = v104;
    v117 = v109;
    v118 = v105;
    type metadata accessor for audit_token_t(0);
    v45 = sub_1D30E909C();
    v47 = sub_1D2FFEA04(v45, v46, &v119);

    *(v43 + 24) = v47;
    _os_log_impl(&dword_1D2FD9000, v32, v41, "Look up path to staging directory for app with bundle ID: %{public}s audit token: %{mask.hash}s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v44, -1, -1);
    v39 = v43;
    a1 = v93;
LABEL_10:
    MEMORY[0x1D38B3760](v39, -1, -1);
LABEL_11:

    goto LABEL_13;
  }

  v29 = a1;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D30E8B3C();
  __swift_project_value_buffer(v30, qword_1EE314B60);
  v31 = sub_1D30E928C();

  v32 = sub_1D30E8B1C();

  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v119 = v34;
    *v33 = 136446978;
    *(v33 + 4) = sub_1D2FFEA04(v29, a2, &v119);
    *(v33 + 12) = 2082;
    *(v33 + 14) = sub_1D2FFEA04(v110, a4, &v119);
    *(v33 + 22) = 2160;
    *(v33 + 24) = 1752392040;
    *(v33 + 32) = 2080;
    v112 = __PAIR64__(v12, v106);
    v113 = v107;
    v114 = v13;
    v115 = v108;
    v116 = v104;
    v117 = v109;
    v118 = v105;
    type metadata accessor for audit_token_t(0);
    v35 = sub_1D30E909C();
    v37 = sub_1D2FFEA04(v35, v36, &v119);

    *(v33 + 34) = v37;
    v38 = v31;
    a1 = v29;
    _os_log_impl(&dword_1D2FD9000, v32, v38, "Look up path to staging directory for app with bundle ID: %{public}s team ID: %{public}s audit token: %{mask.hash}s", v33, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v34, -1, -1);
    v39 = v33;
    goto LABEL_10;
  }

  a1 = v29;
LABEL_13:
  v48 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v49 = v111;
  v50 = sub_1D3028864(a1, a2, 1);
  if (v49)
  {
    return;
  }

  v51 = v50;
  if (!a4)
  {
    goto LABEL_22;
  }

  v52 = [v51 teamIdentifier];
  if (!v52)
  {
    goto LABEL_20;
  }

  v53 = v52;
  v54 = sub_1D30E908C();
  v56 = v55;

  if (v54 != v110 || v56 != a4)
  {
    v57 = sub_1D30E97CC();

    if (v57)
    {
      goto LABEL_21;
    }

LABEL_20:
    if ((sub_1D30D94B0() & 1) == 0)
    {
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v66 = v65;
      v67 = [v51 teamIdentifier];
      if (v67)
      {
        v68 = v51;
        v69 = v67;
        v70 = sub_1D30E908C();
        v72 = v71;

        v51 = v68;
      }

      else
      {
        v70 = 0;
        v72 = 0;
      }

      *v66 = v70;
      v66[1] = v72;
      v66[2] = v110;
      v66[3] = a4;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }

    goto LABEL_21;
  }

LABEL_21:

LABEL_22:
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v58 = sub_1D30E8B3C();
  __swift_project_value_buffer(v58, qword_1EE314B60);

  v59 = sub_1D30E8B1C();
  v60 = sub_1D30E92BC();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v112 = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_1D2FFEA04(a1, a2, &v112);
    _os_log_impl(&dword_1D2FD9000, v59, v60, "Looking up the path to the staging directory for the app with the bundle ID “%{public}s”…", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1D38B3760](v62, -1, -1);
    MEMORY[0x1D38B3760](v61, -1, -1);
  }

  v63 = v103;
  sub_1D302E118(a1, a2, v102, v101);
  v111 = v51;
  v64 = v96;
  sub_1D30E8D8C();
  sub_1D3003CF4(v64, 6, v63);
  v93 = a1;
  v73 = v98;
  v74 = v64;
  v75 = v97;
  v110 = *(v98 + 8);
  v110(v74, v97);
  v76 = *(v73 + 16);
  v77 = v95;
  v76(v95, v63, v75);

  v78 = sub_1D30E8B1C();
  v79 = sub_1D30E92BC();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v112 = v105;
    *v80 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    LODWORD(v104) = v79;
    v81 = sub_1D30E977C();
    v83 = v82;
    v110(v77, v75);
    v84 = sub_1D2FFEA04(v81, v83, &v112);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    *(v80 + 14) = sub_1D2FFEA04(v93, a2, &v112);
    _os_log_impl(&dword_1D2FD9000, v78, v104, "Issuing a sandbox extension to the staging directory at “%{public}s” for the app with the bundle ID “%{public}s”…", v80, 0x16u);
    v85 = v105;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v85, -1, -1);
    v86 = v80;
    v63 = v103;
    MEMORY[0x1D38B3760](v86, -1, -1);
  }

  else
  {

    v110(v77, v75);
  }

  v87 = sub_1D30E7B38(v63, 0, v106, v107, v108, v109);
  v89 = v88;

  v90 = v94;
  (*(v98 + 32))(v94, v63, v75);
  v91 = (v90 + *(type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0) + 20));
  *v91 = v87;
  v91[1] = v89;
}

uint64_t sub_1D30A1F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v6[10] = swift_task_alloc();
  v7 = sub_1D30E8D5C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749928, &unk_1D30F1B00);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = type metadata accessor for FilePath.ResolutionError(0);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v9 = sub_1D30E8D9C();
  v6[31] = v9;
  v6[32] = *(v9 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30A2320, 0, 0);
}

uint64_t sub_1D30A2320()
{
  v88 = v0;
  v87[1] = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  if (v1)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v2 = v0[59];
    v3 = v0[31];
    v4 = v0[32];
    v5 = v0[4];
    v6 = sub_1D30E8B3C();
    __swift_project_value_buffer(v6, qword_1EE314B60);
    v7 = sub_1D30E928C();
    v8 = *(v4 + 16);
    v8(v2, v5, v3);

    v9 = sub_1D30E8B1C();

    v10 = os_log_type_enabled(v9, v7);
    v11 = v0[59];
    v13 = v0[31];
    v12 = v0[32];
    if (v10)
    {
      v81 = v0[6];
      v83 = v0[7];
      v80 = v0[5];
      v14 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v87[0] = v85;
      *v14 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v79 = v9;
      v15 = sub_1D30E977C();
      v16 = v8;
      v18 = v17;
      v78 = v7;
      v19 = *(v12 + 8);
      v19(v11, v13);
      v20 = sub_1D2FFEA04(v15, v18, v87);
      v8 = v16;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_1D2FFEA04(v80, v81, v87);
      *(v14 + 22) = 2082;
      *(v14 + 24) = sub_1D2FFEA04(v83, v1, v87);
      v21 = v79;
      _os_log_impl(&dword_1D2FD9000, v79, v78, "Copy item at: %{public}s into staging directory for app with bundle ID: %{public}s team ID: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v85, -1, -1);
      v22 = v14;
LABEL_10:
      MEMORY[0x1D38B3760](v22, -1, -1);

      goto LABEL_13;
    }

    v19 = *(v12 + 8);
    v19(v11, v13);
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v23 = v0[58];
    v24 = v0[31];
    v25 = v0[32];
    v26 = v0[4];
    v27 = sub_1D30E8B3C();
    __swift_project_value_buffer(v27, qword_1EE314B60);
    v28 = sub_1D30E928C();
    v8 = *(v25 + 16);
    v8(v23, v26, v24);

    v21 = sub_1D30E8B1C();

    v29 = os_log_type_enabled(v21, v28);
    v30 = v0[58];
    v32 = v0[31];
    v31 = v0[32];
    if (v29)
    {
      v84 = v0[5];
      v86 = v0[6];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v87[0] = v34;
      *v33 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v82 = v28;
      v35 = v8;
      v36 = sub_1D30E977C();
      v38 = v37;
      v39 = v32;
      v19 = *(v31 + 8);
      v19(v30, v39);
      v40 = v36;
      v8 = v35;
      v41 = sub_1D2FFEA04(v40, v38, v87);

      *(v33 + 4) = v41;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_1D2FFEA04(v84, v86, v87);
      _os_log_impl(&dword_1D2FD9000, v21, v82, "Copy item at: %{public}s into staging directory for app with bundle ID: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v34, -1, -1);
      v22 = v33;
      goto LABEL_10;
    }

    v42 = v32;
    v19 = *(v31 + 8);
    v19(v30, v42);
  }

LABEL_13:
  v0[60] = v19;
  v0[61] = v8;
  if ((sub_1D30E8CDC() & 1) == 0)
  {
    v47 = v0[31];
    v48 = v0[4];
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v8(v49, v48, v47);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_16:

    v50 = v0[1];

    return v50();
  }

  v43 = v0[55];
  v44 = v0[29];
  v45 = v0[5];
  v46 = v0[6];
  v0[62] = *(v0[9] + 16);
  sub_1D302E118(v45, v46, v44, v43);
  v53 = v0[56];
  v52 = v0[57];
  sub_1D30E8D8C();
  sub_1D3003CF4(v53, 0, v52);
  v0[63] = 0;
  v54 = v0[56];
  v55 = v0[57];
  v57 = v0[52];
  v56 = v0[53];
  v58 = v8;
  v59 = v0[31];
  v60 = v0[32];
  v61 = v0[25];
  v62 = v0[4];
  v0[64] = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v54, v59);
  v0[65] = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58(v56, v55, v59);
  v58(v57, v62, v59);
  sub_1D30E8D1C();
  v63 = *(v60 + 48);
  v0[66] = v63;
  v0[67] = (v60 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v64 = v63(v61, 1, v59);
  if (v64 == 1)
  {
    v65 = v0[57];
    v66 = v0[31];
    v67 = v0[4];
    sub_1D2FF14DC(v0[25], &qword_1EC749928, &unk_1D30F1B00);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    v69 = v68;
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
    v58(v69, v65, v66);
    v58(v69 + v70, v67, v66);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v19(v65, v66);
    goto LABEL_16;
  }

  v71 = v0[54];
  v72 = v0[31];
  v73 = v0[32];
  v74 = v0[25];
  v75 = *(v73 + 32);
  v0[68] = v75;
  v0[69] = (v73 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v75(v71, v74, v72);
  sub_1D30E91FC();
  v0[70] = sub_1D30E91EC();
  v77 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30A2E48, v77, v76);
}

uint64_t sub_1D30A2E48()
{
  v1 = v0[63];
  v3 = v0[5];
  v2 = v0[6];

  sub_1D30D3148(v3, v2, 3016, v0 + 2);
  v0[71] = v1;
  if (v1)
  {
    v4 = sub_1D30A51B0;
  }

  else
  {
    v0[72] = v0[2];
    v4 = sub_1D30A2F34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30A2F34()
{
  v325 = v0;
  v324[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE3152C8 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v1 = v0[61];
    v2 = v0[51];
    v3 = v0[31];
    v4 = v0[4];
    v5 = sub_1D30E8B3C();
    __swift_project_value_buffer(v5, qword_1EE314B60);
    v6 = sub_1D30E927C();
    v1(v2, v4, v3);

    v7 = sub_1D30E8B1C();

    v8 = os_log_type_enabled(v7, v6);
    v9 = v0[60];
    v10 = v0[51];
    v11 = v0[31];
    if (v8)
    {
      v313 = v0[5];
      v321 = v0[6];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v324[0] = v13;
      *v12 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v304 = v6;
      v14 = sub_1D30E977C();
      v16 = v15;
      v9(v10, v11);
      v17 = sub_1D2FFEA04(v14, v16, v324);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1D2FFEA04(v313, v321, v324);
      _os_log_impl(&dword_1D2FD9000, v7, v304, "Finding asset packs that contains an item at “%{public}s” for the app with the bundle ID “%{public}s”…", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v13, -1, -1);
      MEMORY[0x1D38B3760](v12, -1, -1);
    }

    else
    {

      v9(v10, v11);
    }

    v18 = v0[72];
    v286 = *(v18 + 16);
    if (!v286)
    {
      break;
    }

    v19 = 0;
    v285 = v0[15];
    v288 = v0[16];
    v287 = v18 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
    v20 = v0[12];
    v283 = (v20 + 32);
    v284 = (v20 + 48);
    v281 = (v20 + 8);
    v282 = (v20 + 16);
    v280 = v0[21];
    v269 = v0[20];
    v270 = v0[18];
    v271 = v0[19];
    v272 = v0[17];
    v274 = v0[8];
    v314 = v0[71];
    v322 = v0;
    v278 = v0[72];
    while (1)
    {
      if (v19 >= *(v18 + 16))
      {
        goto LABEL_77;
      }

      v23 = v0[8];
      sub_1D3058338(v287 + *(v288 + 72) * v19, v0[21], type metadata accessor for AssetPackRecord.StaticRepresentation);
      if (v23)
      {
        v24 = *(v280 + 24);
        if (!v24)
        {
          v94 = v19;
          v95 = v0[21];
          v96 = v0[19];
          v97 = sub_1D30E927C();
          sub_1D3058338(v95, v96, type metadata accessor for AssetPackRecord.StaticRepresentation);
          v98 = sub_1D30E8B1C();
          v99 = os_log_type_enabled(v98, v97);
          v100 = v0[19];
          if (v99)
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v324[0] = v102;
            *v101 = 136446210;
            v103 = *(v271 + 32);
            v104 = *(v271 + 40);

            sub_1D3065284(v100, type metadata accessor for AssetPackRecord.StaticRepresentation);
            v105 = sub_1D2FFEA04(v103, v104, v324);

            *(v101 + 4) = v105;
            _os_log_impl(&dword_1D2FD9000, v98, v97, "The asset-pack record lacks a team ID; skipping the asset pack with the ID “%{public}s”…", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v102);
            MEMORY[0x1D38B3760](v102, -1, -1);
            MEMORY[0x1D38B3760](v101, -1, -1);
          }

          else
          {

            sub_1D3065284(v100, type metadata accessor for AssetPackRecord.StaticRepresentation);
          }

          v22 = v94;
          sub_1D3065284(v0[21], type metadata accessor for AssetPackRecord.StaticRepresentation);
          goto LABEL_11;
        }

        v25 = *(v280 + 16);
        if ((v25 != v0[7] || v24 != v0[8]) && (sub_1D30E97CC() & 1) == 0)
        {
          v292 = v19;
          v130 = v0[20];
          v131 = v0[21];
          v132 = sub_1D30E927C();
          sub_1D3058338(v131, v130, type metadata accessor for AssetPackRecord.StaticRepresentation);

          v133 = sub_1D30E8B1C();

          v134 = os_log_type_enabled(v133, v132);
          v135 = v0[20];
          if (v134)
          {
            v136 = v0[7];
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v324[0] = v138;
            *v137 = 136446722;
            *(v137 + 4) = sub_1D2FFEA04(v136, v274, v324);
            *(v137 + 12) = 2082;
            *(v137 + 14) = sub_1D2FFEA04(v25, v24, v324);
            *(v137 + 22) = 2082;
            v139 = *(v269 + 32);
            v140 = *(v269 + 40);

            sub_1D3065284(v135, type metadata accessor for AssetPackRecord.StaticRepresentation);
            v141 = sub_1D2FFEA04(v139, v140, v324);

            *(v137 + 24) = v141;
            _os_log_impl(&dword_1D2FD9000, v133, v132, "The provided team ID, “%{public}s”, doesn’t match the asset-pack record’s team ID, “%{public}s”; skipping the asset pack with the ID “%{public}s”…", v137, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1D38B3760](v138, -1, -1);
            MEMORY[0x1D38B3760](v137, -1, -1);
          }

          else
          {

            sub_1D3065284(v135, type metadata accessor for AssetPackRecord.StaticRepresentation);
          }

          sub_1D3065284(v0[21], type metadata accessor for AssetPackRecord.StaticRepresentation);
          goto LABEL_10;
        }
      }

      v292 = v19;
      v26 = v0[21];
      v27 = v0[10];
      v28 = v0[11];
      v29 = *(v285 + 28);

      sub_1D30E8D6C();
      if ((*v284)(v27, 1, v28) == 1)
      {
        v247 = v0[60];
        v312 = v0[54];
        v319 = v0[57];
        v248 = v0[31];
        v250 = v0[27];
        v249 = v0[28];
        v323 = v0[21];
        v251 = v0[5];
        v252 = v0[6];
        sub_1D2FF14DC(v0[10], &qword_1EC749940, &qword_1D30F1B10);
        *v250 = v251;
        v250[1] = v252;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);

        swift_willThrowTypedImpl();

        sub_1D3056830(v250, v249, type metadata accessor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v249, v253, type metadata accessor for FilePath.ResolutionError);
        v247(v312, v248);
        v247(v319, v248);
        v254 = v323;
LABEL_72:
        sub_1D3065284(v254, type metadata accessor for AssetPackRecord.StaticRepresentation);

        v246 = v0[1];
        goto LABEL_73;
      }

      v305 = v26;
      (*v283)(v0[14], v0[10], v0[11]);
      if (qword_1EC749038 != -1)
      {
        swift_once();
      }

      v30 = v0[61];
      v31 = v0[53];
      v293 = v0[50];
      v290 = v0[49];
      v32 = v0[31];
      v34 = v0[13];
      v33 = v0[14];
      v35 = v0[11];
      v36 = __swift_project_value_buffer(v32, qword_1EC75A8D8);
      v30(v31, v36, v32);
      v37 = *v282;
      (*v282)(v34, v33, v35);
      sub_1D30E8D7C();
      (*v281)(v33, v35);
      sub_1D30E8D8C();
      v37(v34, v305 + v29, v35);
      sub_1D30E8D7C();
      sub_1D30E8D8C();
      sub_1D3003CF4(v290, 0, v293);
      if (v314)
      {
        v255 = v322[60];
        v256 = v322[57];
        v257 = v322[54];
        v258 = v322[49];
        v259 = v322[31];
        v260 = v322[21];

        v255(v258, v259);
        v255(v257, v259);
        v255(v256, v259);
        v0 = v322;
        v254 = v260;
        goto LABEL_72;
      }

      v38 = v0[66];
      v39 = v0[61];
      v40 = v0[52];
      v41 = v0[53];
      v42 = v0[50];
      v43 = v0[31];
      v44 = v0[24];
      v45 = v0[4];
      (v0[60])(v0[49], v43);
      v39(v41, v42, v43);
      v39(v40, v45, v43);
      sub_1D30E8D1C();
      if (v38(v44, 1, v43) != 1)
      {
        break;
      }

      v46 = v322[61];
      v47 = v322[50];
      v48 = v322[34];
      v49 = v322[33];
      v50 = v322[31];
      v51 = v322[21];
      v52 = v322[17];
      v53 = v322[4];
      sub_1D2FF14DC(v322[24], &qword_1EC749928, &unk_1D30F1B00);
      v54 = sub_1D30E927C();
      v46(v48, v53, v50);
      v46(v49, v47, v50);
      v0 = v322;
      sub_1D3058338(v51, v52, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v55 = sub_1D30E8B1C();
      v56 = os_log_type_enabled(v55, v54);
      v57 = v322[60];
      v58 = v322[50];
      v59 = v322[33];
      v60 = v322[34];
      v61 = v322[31];
      v62 = v322[17];
      if (v56)
      {
        v296 = v322[17];
        v63 = swift_slowAlloc();
        v299 = swift_slowAlloc();
        v324[0] = v299;
        *v63 = 136446722;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v306 = v58;
        v64 = sub_1D30E977C();
        v294 = v55;
        v66 = v65;
        v57(v60, v61);
        v67 = sub_1D2FFEA04(v64, v66, v324);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2082;
        v68 = sub_1D30E977C();
        v70 = v69;
        v57(v59, v61);
        v71 = sub_1D2FFEA04(v68, v70, v324);

        *(v63 + 14) = v71;
        *(v63 + 22) = 2082;
        v73 = *(v272 + 32);
        v72 = *(v272 + 40);

        sub_1D3065284(v296, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v74 = sub_1D2FFEA04(v73, v72, v324);

        *(v63 + 24) = v74;
        _os_log_impl(&dword_1D2FD9000, v294, v54, "The file subpath “%{public}s” escapes the file path “%{public}s”; skipping the asset pack with the ID “%{public}s”…", v63, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v299, -1, -1);
        MEMORY[0x1D38B3760](v63, -1, -1);

        v21 = v306;
      }

      else
      {

        sub_1D3065284(v62, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v57(v59, v61);
        v57(v60, v61);
        v21 = v58;
      }

      v57(v21, v61);
LABEL_9:
      v18 = v278;
      sub_1D3065284(v0[21], type metadata accessor for AssetPackRecord.StaticRepresentation);
      v314 = 0;
LABEL_10:
      v22 = v292;
LABEL_11:
      v19 = v22 + 1;
      if (v19 == v286)
      {
        goto LABEL_68;
      }
    }

    (v0[68])(v0[45], v0[24], v0[31]);
    *(v0 + 584) = 1;
    v279 = objc_opt_self();
    v75 = [v279 defaultManager];
    sub_1D30E8D3C();
    v76 = sub_1D30E906C();

    v77 = [v75 fileExistsAtPath:v76 isDirectory:v0 + 73];

    if (!v77)
    {
      v106 = v322[61];
      v107 = v322[45];
      v108 = v322[35];
      v109 = v322[31];
      v110 = v322[21];
      v111 = v322[18];
      v112 = sub_1D30E927C();
      v106(v108, v107, v109);
      v0 = v322;
      sub_1D3058338(v110, v111, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v113 = sub_1D30E8B1C();
      v114 = os_log_type_enabled(v113, v112);
      v115 = v322[60];
      v116 = v322[50];
      v117 = v322[45];
      v118 = v322[35];
      v119 = v322[31];
      v120 = v322[18];
      if (v114)
      {
        v316 = v322[45];
        v121 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        v324[0] = v300;
        *v121 = 136446466;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v307 = v116;
        v122 = sub_1D30E977C();
        v297 = v112;
        v124 = v123;
        v115(v118, v119);
        v125 = sub_1D2FFEA04(v122, v124, v324);

        *(v121 + 4) = v125;
        *(v121 + 12) = 2082;
        v126 = *(v270 + 32);
        v127 = *(v270 + 40);

        sub_1D3065284(v120, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v128 = sub_1D2FFEA04(v126, v127, v324);

        *(v121 + 14) = v128;
        _os_log_impl(&dword_1D2FD9000, v113, v297, "No item exists at “%{public}s”; skipping the asset pack with the ID “%{public}s”…", v121, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v300, -1, -1);
        MEMORY[0x1D38B3760](v121, -1, -1);

        v115(v316, v119);
        v129 = v307;
      }

      else
      {

        sub_1D3065284(v120, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v115(v118, v119);
        v115(v117, v119);
        v129 = v116;
      }

      v115(v129, v119);
      goto LABEL_9;
    }

    if (*(v0 + 584) != 1)
    {
      sub_1D30E6510(v0[45], v0[54]);
LABEL_67:
      v239 = v322[60];
      v240 = v322[50];
      v241 = v322[31];
      v242 = v322[21];
      v239(v322[45], v241);
      v239(v240, v241);
      v0 = v322;
      sub_1D3065284(v242, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v314 = 0;
      v18 = v278;
      goto LABEL_10;
    }

    v78 = v0[61];
    v80 = v0[44];
    v79 = v0[45];
    v81 = v0[31];
    v82 = sub_1D30E927C();
    v78(v80, v79, v81);
    v83 = sub_1D30E8B1C();
    v84 = os_log_type_enabled(v83, v82);
    v85 = v0[60];
    v86 = v0[44];
    v87 = v0[31];
    if (v84)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v324[0] = v89;
      *v88 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v315 = v82;
      v90 = sub_1D30E977C();
      v92 = v91;
      v85(v86, v87);
      v93 = sub_1D2FFEA04(v90, v92, v324);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_1D2FD9000, v83, v315, "The item at “%{public}s” is a directory; recursively listing its contents…", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1D38B3760](v89, -1, -1);
      MEMORY[0x1D38B3760](v88, -1, -1);
    }

    else
    {

      v85(v86, v87);
    }

    v142 = [v279 defaultManager];
    sub_1D30E8D3C();
    v143 = sub_1D30E906C();

    v0[3] = 0;
    v144 = [v142 subpathsOfDirectoryAtPath:v143 error:v0 + 3];

    v145 = v0[3];
    if (!v144)
    {
      v261 = v322[60];
      v262 = v322[57];
      v263 = v322[54];
      v264 = v322[50];
      v265 = v322[45];
      v266 = v322[31];
      v320 = v322[21];
      v267 = v145;

      sub_1D30E87DC();

      swift_willThrow();
      v261(v265, v266);
      v261(v264, v266);
      v261(v263, v266);
      v261(v262, v266);
      v254 = v320;
      v0 = v322;
      goto LABEL_72;
    }

    v146 = sub_1D30E917C();
    v147 = v145;

    v289 = *(v146 + 16);
    v291 = v146;
    if (!v289)
    {
LABEL_66:

      goto LABEL_67;
    }

    v148 = 0;
    v149 = (v146 + 40);
    while (2)
    {
      if (v148 < *(v291 + 16))
      {
        v309 = v0[66];
        v160 = v0[61];
        v161 = v0[52];
        v162 = v0[53];
        v298 = v148;
        v301 = v0[45];
        v163 = v0[43];
        v164 = v0[31];
        v165 = v0[23];
        v167 = *(v149 - 1);
        v166 = *v149;
        v295 = v149;

        MEMORY[0x1D38B22D0](v167, v166);
        v160(v162, v301, v164);
        v160(v161, v163, v164);
        sub_1D30E8D1C();
        if (v309(v165, 1, v164) == 1)
        {
          v168 = v0[61];
          v169 = v0[45];
          v170 = v0[43];
          v172 = v0[36];
          v171 = v0[37];
          v173 = v0[31];
          sub_1D2FF14DC(v0[23], &qword_1EC749928, &unk_1D30F1B00);
          v174 = sub_1D30E927C();
          v168(v171, v170, v173);
          v168(v172, v169, v173);
          v175 = sub_1D30E8B1C();
          v176 = os_log_type_enabled(v175, v174);
          v177 = v0[60];
          v178 = v0[43];
          v180 = v0[36];
          v179 = v0[37];
          v181 = v0[31];
          if (!v176)
          {

            v177(v180, v181);
            v182 = v179;
            goto LABEL_63;
          }

          v317 = v0[43];
          v150 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v324[0] = v308;
          *v150 = 136446466;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          log = v175;
          v151 = sub_1D30E977C();
          v153 = v152;
          v177(v179, v181);
          v154 = sub_1D2FFEA04(v151, v153, v324);

          *(v150 + 4) = v154;
          *(v150 + 12) = 2082;
          v155 = sub_1D30E977C();
          v157 = v156;
          v177(v180, v181);
          v158 = sub_1D2FFEA04(v155, v157, v324);

          *(v150 + 14) = v158;
          _os_log_impl(&dword_1D2FD9000, log, v174, "The file subpath “%{public}s” escapes the file path “%{public}s”; skipping the item…", v150, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v308, -1, -1);
          MEMORY[0x1D38B3760](v150, -1, -1);

LABEL_47:
          v159 = v317;
          goto LABEL_48;
        }

        v183 = v0[66];
        v184 = v0[61];
        v185 = v0[53];
        v186 = v0[54];
        v187 = v0[52];
        v188 = v0[43];
        v189 = v0[31];
        v190 = v0[22];
        (v0[68])(v0[42], v0[23], v189);
        v184(v185, v186, v189);
        v184(v187, v188, v189);
        sub_1D30E8D1C();
        if (v183(v190, 1, v189) == 1)
        {
          v191 = v0[61];
          v192 = v0[54];
          v193 = v0[43];
          v195 = v0[38];
          v194 = v0[39];
          v196 = v0[31];
          sub_1D2FF14DC(v0[22], &qword_1EC749928, &unk_1D30F1B00);
          v197 = sub_1D30E927C();
          v191(v194, v193, v196);
          v191(v195, v192, v196);
          v198 = sub_1D30E8B1C();
          v199 = os_log_type_enabled(v198, v197);
          v177 = v0[60];
          v200 = v0[42];
          v178 = v0[43];
          v202 = v0[38];
          v201 = v0[39];
          v181 = v0[31];
          if (v199)
          {
            v317 = v0[43];
            v203 = swift_slowAlloc();
            v302 = swift_slowAlloc();
            v324[0] = v302;
            *v203 = 136446466;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v310 = v200;
            v273 = v197;
            v204 = sub_1D30E977C();
            loga = v198;
            v206 = v205;
            v177(v201, v181);
            v207 = sub_1D2FFEA04(v204, v206, v324);

            *(v203 + 4) = v207;
            *(v203 + 12) = 2082;
            v208 = sub_1D30E977C();
            v210 = v209;
            v177(v202, v181);
            v211 = sub_1D2FFEA04(v208, v210, v324);

            *(v203 + 14) = v211;
            _os_log_impl(&dword_1D2FD9000, loga, v273, "The file subpath “%{public}s” escapes the file path “%{public}s”; skipping the item…", v203, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D38B3760](v302, -1, -1);
            MEMORY[0x1D38B3760](v203, -1, -1);

            v177(v310, v181);
            goto LABEL_47;
          }

          v177(v202, v181);
          v177(v201, v181);
          v182 = v200;
LABEL_63:
          v177(v182, v181);
          v159 = v178;
LABEL_48:
          v177(v159, v181);
        }

        else
        {
          (v0[68])(v0[41], v0[22], v0[31]);
          *(v0 + 585) = 0;
          v212 = [v279 defaultManager];
          sub_1D30E8D3C();
          v213 = sub_1D30E906C();

          v214 = [v212 fileExistsAtPath:v213 isDirectory:v0 + 585];

          if (v214 && *(v0 + 585) == 1)
          {
            v215 = v322[61];
            v216 = v322[42];
            v217 = v322[40];
            v218 = v322[31];
            v219 = sub_1D30E927C();
            v215(v217, v216, v218);
            v0 = v322;
            v220 = sub_1D30E8B1C();
            v221 = os_log_type_enabled(v220, v219);
            v222 = v322[60];
            v224 = v322[42];
            v223 = v322[43];
            v225 = v322[40];
            v226 = v322[41];
            v227 = v322[31];
            if (v221)
            {
              v318 = v322[41];
              v228 = swift_slowAlloc();
              logb = v219;
              v229 = swift_slowAlloc();
              v324[0] = v229;
              *v228 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v303 = v224;
              v311 = v223;
              v230 = sub_1D30E977C();
              v232 = v231;
              v222(v225, v227);
              v233 = sub_1D2FFEA04(v230, v232, v324);

              *(v228 + 4) = v233;
              _os_log_impl(&dword_1D2FD9000, v220, logb, "The item at “%{public}s” is a directory; skipping the item…", v228, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v229);
              MEMORY[0x1D38B3760](v229, -1, -1);
              MEMORY[0x1D38B3760](v228, -1, -1);

              v222(v318, v227);
              v222(v303, v227);
              v234 = v311;
            }

            else
            {

              v222(v225, v227);
              v222(v226, v227);
              v222(v224, v227);
              v234 = v223;
            }

            v222(v234, v227);
          }

          else
          {
            sub_1D30E6510(v0[42], v0[41]);
            v235 = v322[60];
            v236 = v322[43];
            v237 = v322[42];
            v238 = v322[31];
            v235(v322[41], v238);
            v235(v237, v238);
            v235(v236, v238);
            v0 = v322;
          }
        }

        v148 = v298 + 1;
        v149 = v295 + 2;
        if (v289 == v298 + 1)
        {
          goto LABEL_66;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_68:

  v243 = v0[60];
  v244 = v0[57];
  v245 = v0[31];
  v243(v0[54], v245);
  v243(v244, v245);

  v246 = v0[1];
LABEL_73:

  return v246();
}

uint64_t sub_1D30A51B0()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[31];
  v1(v0[54], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D30A547C()
{
  v1 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE314B60);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Path to container", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  os_unfair_lock_lock(v6 + 4);
  path = container_get_path();
  os_unfair_lock_unlock(v6 + 4);
  if (path)
  {
    return MEMORY[0x1D38B2230](path);
  }

  type metadata accessor for ContainerManagerError(0);
  sub_1D3045A34(&qword_1EC749920, type metadata accessor for ContainerManagerError, &unk_1D30F1AC0);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

NSObject *sub_1D30A5610(NSObject *a1)
{
  v3 = sub_1D30E8D9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE314B60);
  v8 = sub_1D30E928C();
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_1D30E8B1C();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v22 = v8;
    v11 = v10;
    v12 = swift_slowAlloc();
    v23 = v1;
    v21 = v12;
    v24 = v12;
    *v11 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v13 = sub_1D30E977C();
    v14 = a1;
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_1D2FFEA04(v13, v16, &v24);
    a1 = v14;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1D2FD9000, v9, v22, "Contents of directory in container at: %{public}s", v11, 0xCu);
    v18 = v21;
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D38B3760](v18, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return sub_1D3005160(a1);
}

uint64_t sub_1D30A58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1D30E8D9C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30A5988, 0, 0);
}

uint64_t sub_1D30A5988()
{
  v56 = v0;
  v1 = v0[6];
  if (v1)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v2 = v0[11];
    v3 = v0[8];
    v4 = v0[9];
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = sub_1D30E8B3C();
    __swift_project_value_buffer(v8, qword_1EE314B60);
    v9 = sub_1D30E928C();
    (*(v4 + 16))(v2, v5, v3);
    sub_1D2FF17B0(v7, v6);

    v10 = sub_1D30E8B1C();
    sub_1D2FF1804(v7, v6);

    v11 = os_log_type_enabled(v10, v9);
    v12 = v0[11];
    v14 = v0[8];
    v13 = v0[9];
    if (v11)
    {
      v53 = v0[5];
      v54 = v9;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v55 = v16;
      *v15 = 136446722;
      v17 = sub_1D30E88EC();
      v19 = sub_1D2FFEA04(v17, v18, &v55);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v20 = sub_1D30E977C();
      v22 = v21;
      (*(v13 + 8))(v12, v14);
      v23 = sub_1D2FFEA04(v20, v22, &v55);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2082;
      *(v15 + 24) = sub_1D2FFEA04(v53, v1, &v55);
      _os_log_impl(&dword_1D2FD9000, v10, v54, "Copy item resolved from bookmark data: %{public}s into container to: %{public}s attributing to bundle with ID: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v16, -1, -1);
      MEMORY[0x1D38B3760](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    v28 = v0[3];
    v27 = v0[4];
    v29 = v0[2];
    v30 = sub_1D30E8B3C();
    __swift_project_value_buffer(v30, qword_1EE314B60);
    v31 = sub_1D30E928C();
    (*(v25 + 16))(v24, v27, v26);
    sub_1D2FF17B0(v29, v28);
    v32 = sub_1D30E8B1C();
    sub_1D2FF1804(v29, v28);
    v33 = os_log_type_enabled(v32, v31);
    v35 = v0[9];
    v34 = v0[10];
    v36 = v0[8];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136446466;
      v39 = sub_1D30E88EC();
      v41 = sub_1D2FFEA04(v39, v40, &v55);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v42 = sub_1D30E977C();
      v44 = v43;
      (*(v35 + 8))(v34, v36);
      v45 = sub_1D2FFEA04(v42, v44, &v55);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_1D2FD9000, v32, v31, "Copy item resolved from bookmark data: %{public}s into container to: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v38, -1, -1);
      MEMORY[0x1D38B3760](v37, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }
  }

  v46 = swift_task_alloc();
  v0[12] = v46;
  *v46 = v0;
  v46[1] = sub_1D30A5ECC;
  v47 = v0[5];
  v48 = v0[6];
  v49 = v0[3];
  v50 = v0[4];
  v51 = v0[2];

  return sub_1D30057B4(v51, v49, v50, v47, v48);
}

uint64_t sub_1D30A5ECC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D30A6000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1D30E8D9C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30A60D4, 0, 0);
}

uint64_t sub_1D30A60D4()
{
  v56 = v0;
  v1 = v0[6];
  if (v1)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v2 = v0[11];
    v3 = v0[8];
    v4 = v0[9];
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = sub_1D30E8B3C();
    __swift_project_value_buffer(v8, qword_1EE314B60);
    v9 = sub_1D30E928C();
    (*(v4 + 16))(v2, v5, v3);
    sub_1D2FF17B0(v7, v6);

    v10 = sub_1D30E8B1C();
    sub_1D2FF1804(v7, v6);

    v11 = os_log_type_enabled(v10, v9);
    v12 = v0[11];
    v14 = v0[8];
    v13 = v0[9];
    if (v11)
    {
      v53 = v0[5];
      v54 = v9;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v55 = v16;
      *v15 = 136446722;
      v17 = sub_1D30E88EC();
      v19 = sub_1D2FFEA04(v17, v18, &v55);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v20 = sub_1D30E977C();
      v22 = v21;
      (*(v13 + 8))(v12, v14);
      v23 = sub_1D2FFEA04(v20, v22, &v55);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2082;
      *(v15 + 24) = sub_1D2FFEA04(v53, v1, &v55);
      _os_log_impl(&dword_1D2FD9000, v10, v54, "Move item resolved from bookmark data: %{public}s into container to: %{public}s attributing to bundle with ID: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v16, -1, -1);
      MEMORY[0x1D38B3760](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    v28 = v0[3];
    v27 = v0[4];
    v29 = v0[2];
    v30 = sub_1D30E8B3C();
    __swift_project_value_buffer(v30, qword_1EE314B60);
    v31 = sub_1D30E928C();
    (*(v25 + 16))(v24, v27, v26);
    sub_1D2FF17B0(v29, v28);
    v32 = sub_1D30E8B1C();
    sub_1D2FF1804(v29, v28);
    v33 = os_log_type_enabled(v32, v31);
    v35 = v0[9];
    v34 = v0[10];
    v36 = v0[8];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136446466;
      v39 = sub_1D30E88EC();
      v41 = sub_1D2FFEA04(v39, v40, &v55);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v42 = sub_1D30E977C();
      v44 = v43;
      (*(v35 + 8))(v34, v36);
      v45 = sub_1D2FFEA04(v42, v44, &v55);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_1D2FD9000, v32, v31, "Move item resolved from bookmark data: %{public}s into container to: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v38, -1, -1);
      MEMORY[0x1D38B3760](v37, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }
  }

  v46 = swift_task_alloc();
  v0[12] = v46;
  *v46 = v0;
  v46[1] = sub_1D30E70A0;
  v47 = v0[5];
  v48 = v0[6];
  v49 = v0[3];
  v50 = v0[4];
  v51 = v0[2];

  return sub_1D300747C(v51, v49, v50, v47, v48);
}

uint64_t sub_1D30A6618(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, uint64_t (*a5)(void, void, void))
{
  v34 = a4;
  v9 = sub_1D30E8D9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D30E8B3C();
  __swift_project_value_buffer(v13, qword_1EE314B60);
  v14 = sub_1D30E928C();
  v15 = *(v10 + 16);
  v35 = a1;
  v15(v12, a1, v9);
  sub_1D2FF17B0(a2, a3);
  v16 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, a3);
  v33 = v14;
  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v32 = a5;
    v18 = v17;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v18 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v30 = v16;
    v19 = sub_1D30E977C();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = sub_1D2FFEA04(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_1D30E88EC();
    v25 = sub_1D2FFEA04(v23, v24, &v36);

    *(v18 + 14) = v25;
    v26 = v30;
    _os_log_impl(&dword_1D2FD9000, v30, v33, v34, v18, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v27, -1, -1);
    v28 = v18;
    a5 = v32;
    MEMORY[0x1D38B3760](v28, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  return a5(v35, a2, a3);
}

uint64_t sub_1D30A6928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = type metadata accessor for FilePath.ResolutionError(0);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v7 = sub_1D30E8D9C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = sub_1D30E8D5C();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30A6AAC, 0, 0);
}

uint64_t sub_1D30A6AAC()
{
  v37 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE314B60);
  v8 = sub_1D30E928C();
  v35 = *(v3 + 16);
  v35(v1, v4, v2);
  sub_1D2FF17B0(v6, v5);

  v9 = sub_1D30E8B1C();
  sub_1D2FF1804(v6, v5);

  v10 = os_log_type_enabled(v9, v8);
  v11 = *(v0 + 152);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  if (v10)
  {
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36[0] = v15;
    *v14 = 136446722;
    v16 = sub_1D30E88EC();
    v18 = sub_1D2FFEA04(v16, v17, v36);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
    v19 = sub_1D30E977C();
    v21 = v20;
    (*(v12 + 8))(v11, v13);
    v22 = sub_1D2FFEA04(v19, v21, v36);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_1D2FFEA04(v33, v34, v36);
    _os_log_impl(&dword_1D2FD9000, v9, v8, "Move asset pack resolved from bookmark data: %{public}s into container to: %{public}s for app with bundle ID: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v15, -1, -1);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  sub_1D302D670(*(v0 + 40), *(v0 + 48), *(v0 + 72), *(v0 + 104));
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 48);
  v26 = *(v0 + 32);
  sub_1D30E8D8C();
  v35(v23, v26, v24);
  sub_1D30E8D7C();
  v27 = swift_task_alloc();
  *(v0 + 160) = v27;
  *v27 = v0;
  v27[1] = sub_1D30A6F58;
  v28 = *(v0 + 120);
  v29 = *(v0 + 40);
  v31 = *(v0 + 16);
  v30 = *(v0 + 24);

  return sub_1D300747C(v31, v30, v28, v29, v25);
}

uint64_t sub_1D30A6F58()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v5 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D30A7140, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D30A7140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D30A71F8(char *a1)
{
  v3 = sub_1D30E8D9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE314B60);
  v8 = sub_1D30E928C();
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_1D30E8B1C();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v22 = v8;
    v11 = v10;
    v12 = swift_slowAlloc();
    v23 = v1;
    v21 = v12;
    v24 = v12;
    *v11 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v13 = sub_1D30E977C();
    v14 = a1;
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_1D2FFEA04(v13, v16, &v24);
    a1 = v14;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1D2FD9000, v9, v22, "Remove item in container at: %{public}s", v11, 0xCu);
    v18 = v21;
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D38B3760](v18, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return sub_1D3009B38(a1);
}

uint64_t sub_1D30A749C()
{
  v1[5] = v0;
  v1[6] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for FilePath.ResolutionError(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v2 = sub_1D30E8D9C();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v3 = sub_1D30E8D5C();
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v4 = sub_1D30E8AAC();
  v1[59] = v4;
  v1[60] = *(v4 - 8);
  v1[61] = swift_task_alloc();
  v5 = sub_1D30E8ABC();
  v1[62] = v5;
  v1[63] = *(v5 - 8);
  v1[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  v1[65] = swift_task_alloc();
  v6 = sub_1D30E8A2C();
  v1[66] = v6;
  v1[67] = *(v6 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v7 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v1[70] = v7;
  v1[71] = *(v7 - 8);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30A7A50, 0, 0);
}

uint64_t sub_1D30A7A50()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  *(v0 + 608) = v1;
  *(v0 + 616) = __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Clean up", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  *(v0 + 924) = 0;
  v5 = sub_1D30E8B1C();
  v6 = sub_1D30E92BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v6, "Checking for stale App Review records…", v7, 2u);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  *(v0 + 624) = sub_1D30E91FC();
  *(v0 + 632) = sub_1D30E91EC();
  v9 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30A7C4C, v9, v8);
}

uint64_t sub_1D30A7C4C()
{

  sub_1D30D3828();
  *(v0 + 640) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D30A7D18, 0, 0);
}

uint64_t sub_1D30A7D18(uint64_t a1)
{
  v1[81] = v1[80];
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "Checking for stale asset-pack records…", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v1[82] = sub_1D30E91EC();
  v6 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30A8084, v6, v5);
}

uint64_t sub_1D30A7E50(uint64_t a1)
{
  v2 = v1[80];
  v3 = sub_1D30E929C();
  v4 = v2;
  v5 = sub_1D30E8B1C();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v1[80];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Checking for stale App Review records failed: %{public}@", v8, 0xCu);
    sub_1D2FF14DC(v9, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  else
  {
  }

  v1[81] = 0;
  v12 = sub_1D30E8B1C();
  v13 = sub_1D30E92BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D2FD9000, v12, v13, "Checking for stale asset-pack records…", v14, 2u);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  v1[82] = sub_1D30E91EC();
  v16 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30A8084, v16, v15);
}

uint64_t sub_1D30A8084()
{
  v1 = *(v0 + 648);

  sub_1D30D4214();
  *(v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_1D30A8288;
  }

  else
  {
    v2 = sub_1D30A8150;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30A8150(uint64_t a1)
{
  v1[84] = v1[83];
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "Checking for stale license records…", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v1[85] = sub_1D30E91EC();
  v6 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30A84BC, v6, v5);
}

uint64_t sub_1D30A8288(uint64_t a1)
{
  v2 = v1[83];
  v3 = sub_1D30E929C();
  v4 = v2;
  v5 = sub_1D30E8B1C();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v1[83];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2FD9000, v5, v3, "Checking for stale asset-pack records failed: %{public}@", v8, 0xCu);
    sub_1D2FF14DC(v9, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  else
  {
  }

  v1[84] = 0;
  v12 = sub_1D30E8B1C();
  v13 = sub_1D30E92BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D2FD9000, v12, v13, "Checking for stale license records…", v14, 2u);
    MEMORY[0x1D38B3760](v14, -1, -1);
  }

  v1[85] = sub_1D30E91EC();
  v16 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30A84BC, v16, v15);
}

uint64_t sub_1D30A84BC()
{
  v1 = v0[84];

  sub_1D30D5B70(v0 + 2);
  v0[86] = v1;
  if (v1)
  {
    v2 = sub_1D30AC614;
  }

  else
  {
    v0[87] = v0[2];
    v2 = sub_1D30A858C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D30A858C()
{
  v317 = v0;
  v316[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(v0 + 696) + 16);
  *(v0 + 704) = v1;
  if (!v1)
  {

    v26 = *(v315 + 688);
LABEL_14:
    v27 = sub_1D30E8B1C();
    v28 = sub_1D30E92BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D2FD9000, v27, v28, "Checking for orphaned asset packs…", v29, 2u);
      MEMORY[0x1D38B3760](v29, -1, -1);
    }

    v30 = *(v315 + 40);

    *(v315 + 768) = *(v30 + 16);
    if (qword_1EC749038 != -1)
    {
LABEL_90:
      swift_once();
    }

    v31 = __swift_project_value_buffer(*(v315 + 144), qword_1EC75A8D8);
    *(v315 + 776) = v31;
    v32 = sub_1D3005160(v31);
    *(v315 + 784) = v32;
    if (v26)
    {
      v33 = sub_1D30E929C();
      v34 = v26;
      v35 = sub_1D30E8B1C();

      if (os_log_type_enabled(v35, v33))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138543362;
        v38 = v26;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_1D2FD9000, v35, v33, "Checking for orphaned asset packs failed: %{public}@", v36, 0xCu);
        sub_1D2FF14DC(v37, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v37, -1, -1);
        MEMORY[0x1D38B3760](v36, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      isa = v32[2].isa;
      *(v315 + 792) = isa;
      if (isa)
      {
        v49 = 0;
        *(v315 + 920) = *(*(v315 + 336) + 80);
        do
        {
          *(v315 + 800) = v49;
          v50 = *(v315 + 784);
          if (v49 >= *(v50 + 16))
          {
            __break(1u);
            goto LABEL_90;
          }

          v51 = *(v315 + 464);
          v52 = *(v315 + 328);
          v53 = *(v315 + 336);
          v54 = *(v315 + 64);
          v55 = *(v53 + 16);
          v56 = v50 + ((*(v315 + 920) + 32) & ~*(v315 + 920));
          v57 = *(v53 + 72);
          *(v315 + 808) = v57;
          *(v315 + 816) = v55;
          *(v315 + 824) = (v53 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v312 = v55;
          v55(v51, v56 + v57 * v49, v52);
          v58 = sub_1D30E8D4C();
          v60 = v59;

          sub_1D30E8D6C();
          if ((*(v53 + 48))(v54, 1, v52) == 1)
          {
            v296 = *(v315 + 464);
            v61 = *(v315 + 440);
            v62 = *(v315 + 328);
            v63 = *(v315 + 136);
            v64 = *(v315 + 128);
            v65 = *(v315 + 120);
            v300 = *(v315 + 112);
            sub_1D2FF14DC(*(v315 + 64), &qword_1EC749940, &qword_1D30F1B10);
            *v64 = v58;
            v64[1] = v60;
            swift_storeEnumTagMultiPayload();
            sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
            swift_willThrowTypedImpl();
            sub_1D3056830(v64, v63, type metadata accessor for FilePath.ResolutionError);
            sub_1D3056830(v63, v65, type metadata accessor for FilePath.ResolutionError);
            v66 = sub_1D30E929C();
            v312(v61, v296, v62);
            sub_1D3058338(v65, v300, type metadata accessor for FilePath.ResolutionError);
            v67 = sub_1D30E8B1C();
            v68 = os_log_type_enabled(v67, v66);
            v69 = *(v315 + 464);
            v70 = *(v315 + 440);
            v71 = *(v315 + 328);
            v72 = *(v315 + 112);
            v73 = *(v315 + 120);
            v74 = (*(v315 + 336) + 8);
            if (v68)
            {
              v313 = *(v315 + 464);
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v306 = swift_slowAlloc();
              v316[0] = v306;
              *v75 = 136446466;
              sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
              v297 = v73;
              v77 = sub_1D30E977C();
              v78 = v66;
              v80 = v79;
              v301 = *v74;
              (*v74)(v70, v71);
              v81 = sub_1D2FFEA04(v77, v80, v316);

              *(v75 + 4) = v81;
              *(v75 + 12) = 2114;
              swift_allocError();
              sub_1D3058338(v72, v82, type metadata accessor for FilePath.ResolutionError);
              v83 = _swift_stdlib_bridgeErrorToNSError();
              v26 = type metadata accessor for FilePath.ResolutionError;
              sub_1D3065284(v72, type metadata accessor for FilePath.ResolutionError);
              *(v75 + 14) = v83;
              *v76 = v83;
              _os_log_impl(&dword_1D2FD9000, v67, v78, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v75, 0x16u);
              sub_1D2FF14DC(v76, &qword_1EC7493A0, &qword_1D30EF480);
              MEMORY[0x1D38B3760](v76, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v306);
              MEMORY[0x1D38B3760](v306, -1, -1);
              MEMORY[0x1D38B3760](v75, -1, -1);

              sub_1D3065284(v297, type metadata accessor for FilePath.ResolutionError);
              v301(v313, v71);
            }

            else
            {

              v26 = type metadata accessor for FilePath.ResolutionError;
              sub_1D3065284(v72, type metadata accessor for FilePath.ResolutionError);
              v112 = *v74;
              (*v74)(v70, v71);
              sub_1D3065284(v73, type metadata accessor for FilePath.ResolutionError);
              v112(v69, v71);
            }
          }

          else
          {
            v84 = *(v315 + 448);
            v85 = *(v315 + 456);
            v86 = *(v315 + 328);
            v87 = *(v315 + 336);
            v302 = *(v315 + 776);
            v307 = *(v315 + 320);
            v298 = *(v315 + 312);
            v88 = *(v315 + 296);
            v89 = *(v315 + 152);
            v90 = *(v315 + 144);
            v91 = *(v315 + 64);

            (*(v87 + 32))(v85, v91, v86);
            v92 = v302;
            v303 = *(v89 + 16);
            v303(v88, v92, v90);
            v312(v84, v85, v86);
            sub_1D30E8D7C();
            v93 = *(v87 + 8);
            *(v315 + 832) = v93;
            *(v315 + 840) = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v292 = v93;
            v93(v85, v86);
            sub_1D30E8D8C();
            (*(v89 + 32))(v307, v298, v90);
            if (qword_1EE3133A0 != -1)
            {
              swift_once();
            }

            v94 = *(v315 + 320);
            v95 = *(v315 + 288);
            v96 = *(v315 + 144);
            __swift_project_value_buffer(*(v315 + 608), qword_1EE3133A8);
            v97 = sub_1D30E928C();
            v98 = v303;
            v303(v95, v94, v96);
            v99 = sub_1D30E8B1C();
            v308 = v97;
            v100 = os_log_type_enabled(v99, v97);
            v101 = *(v315 + 288);
            v103 = *(v315 + 144);
            v102 = *(v315 + 152);
            if (v100)
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v316[0] = v105;
              *v104 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v106 = sub_1D30E977C();
              v108 = v107;
              v109 = v103;
              v110 = *(v102 + 8);
              (v110)(v101, v109);
              v111 = sub_1D2FFEA04(v106, v108, v316);
              v98 = v303;

              *(v104 + 4) = v111;
              _os_log_impl(&dword_1D2FD9000, v99, v308, "Item exists at: %{public}s", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v105);
              MEMORY[0x1D38B3760](v105, -1, -1);
              MEMORY[0x1D38B3760](v104, -1, -1);
            }

            else
            {

              v113 = v103;
              v110 = *(v102 + 8);
              (v110)(v101, v113);
            }

            *(v315 + 848) = v110;
            sub_1D3003CF4(*(v315 + 320), 0, *(v315 + 280));
            v114 = *(v315 + 280);
            v115 = *(v315 + 144);
            v116 = *(v315 + 152) + 8;
            *(v315 + 926) = 0;
            v26 = [objc_opt_self() defaultManager];
            sub_1D30E8D3C();
            v117 = sub_1D30E906C();

            v118 = [v26 fileExistsAtPath:v117 isDirectory:v315 + 926];

            *(v315 + 856) = v116 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            (v110)(v114, v115);
            if (v118)
            {
              v119 = *(v315 + 320);
              if (*(v315 + 926))
              {
                v120 = sub_1D3005160(*(v315 + 320));
                *(v315 + 864) = v120;
                v139 = v120[2].isa;
                *(v315 + 872) = v139;
                if (v139)
                {
                  v267 = (*(v315 + 920) + 32) & ~*(v315 + 920);
                  *(v315 + 880) = 0u;
                  (*(v315 + 816))(*(v315 + 432), v120 + v267, *(v315 + 328));
                  *(v315 + 896) = sub_1D30E91EC();
                  v269 = sub_1D30E91AC();

                  return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v269, v268);
                }

                v26 = *(v315 + 832);
                v140 = *(v315 + 464);
                v141 = *(v315 + 328);
                (*(v315 + 848))(*(v315 + 320), *(v315 + 144));
                (v26)(v140, v141);
              }

              else
              {
                v309 = v110;
                v123 = *(v315 + 264);
                v124 = *(v315 + 144);
                v125 = sub_1D30E92AC();
                v98(v123, v119, v124);
                v126 = sub_1D30E8B1C();
                v127 = os_log_type_enabled(v126, v125);
                v128 = *(v315 + 264);
                v129 = *(v315 + 144);
                if (v127)
                {
                  v130 = swift_slowAlloc();
                  v131 = swift_slowAlloc();
                  v316[0] = v131;
                  *v130 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                  v132 = sub_1D30E977C();
                  v134 = v133;
                  v135 = v129;
                  v136 = v309;
                  (v309)(v128, v135);
                  v137 = sub_1D2FFEA04(v132, v134, v316);

                  *(v130 + 4) = v137;
                  _os_log_impl(&dword_1D2FD9000, v126, v125, "The item at “%{public}s” isn’t a directory; removing it…", v130, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v131);
                  MEMORY[0x1D38B3760](v131, -1, -1);
                  MEMORY[0x1D38B3760](v130, -1, -1);
                }

                else
                {

                  v138 = v129;
                  v136 = v309;
                  (v309)(v128, v138);
                }

                sub_1D3009B38(*(v315 + 320));
                v142 = *(v315 + 464);
                v26 = *(v315 + 328);
                (v136)(*(v315 + 320), *(v315 + 144));
                v292(v142, v26);
                *(v315 + 924) = 1;
              }
            }

            else
            {
              v121 = *(v315 + 464);
              v122 = *(v315 + 328);
              (v110)(*(v315 + 320), *(v315 + 144));
              v292(v121, v122);
            }
          }

          v49 = *(v315 + 800) + 1;
        }

        while (v49 != *(v315 + 792));
      }
    }

    v149 = sub_1D30E8B1C();
    v150 = sub_1D30E92BC();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&dword_1D2FD9000, v149, v150, "Checking for inactive staging directories…", v151, 2u);
      MEMORY[0x1D38B3760](v151, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v152 = __swift_project_value_buffer(*(v315 + 144), qword_1EE3152D0);
    v153 = sub_1D3005160(v152);
    v154 = v153[2].isa;
    if (v154)
    {
      v155 = *(v315 + 336);
      v157 = *(v155 + 16);
      v155 += 16;
      v156 = v157;
      v158 = v153 + ((*(v155 + 64) + 32) & ~*(v155 + 64));
      v287 = (v155 + 32);
      v277 = (v155 + 16);
      v159 = *(v315 + 152);
      v279 = (v159 + 16);
      v294 = (v155 - 8);
      v276 = (v159 + 32);
      v293 = (v159 + 8);
      v275 = *(v315 + 96);
      v286 = *(v155 + 56);
      v304 = v157;
      v278 = v152;
      do
      {
        v310 = v158;
        v314 = v154;
        v169 = *(v315 + 328);
        v170 = *(v315 + 56);
        v156(*(v315 + 408));
        v171 = sub_1D30E8D4C();
        v173 = v172;

        sub_1D30E8D6C();
        if ((*v287)(v170, 1, v169) == 1)
        {
          v174 = *(v315 + 408);
          v175 = *(v315 + 392);
          v176 = *(v315 + 328);
          v177 = *(v315 + 104);
          v178 = *(v315 + 96);
          v179 = *(v315 + 88);
          v283 = *(v315 + 80);
          sub_1D2FF14DC(*(v315 + 56), &qword_1EC749940, &qword_1D30F1B10);
          *v178 = v171;
          *(v275 + 8) = v173;
          swift_storeEnumTagMultiPayload();
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
          swift_willThrowTypedImpl();
          sub_1D3056830(v178, v177, type metadata accessor for FilePath.ResolutionError);
          sub_1D3056830(v177, v179, type metadata accessor for FilePath.ResolutionError);
          v180 = sub_1D30E929C();
          v156 = v304;
          (v304)(v175, v174, v176);
          sub_1D3058338(v179, v283, type metadata accessor for FilePath.ResolutionError);
          v181 = sub_1D30E8B1C();
          v280 = v180;
          v182 = os_log_type_enabled(v181, v180);
          v288 = *(v315 + 408);
          v183 = *(v315 + 392);
          v184 = *(v315 + 328);
          v185 = *(v315 + 80);
          v284 = *(v315 + 88);
          if (v182)
          {
            v160 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            v316[0] = v272;
            *v160 = 136446466;
            sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
            v162 = sub_1D30E977C();
            v164 = v163;
            v271 = *v294;
            (*v294)(v183, v184);
            v165 = sub_1D2FFEA04(v162, v164, v316);

            *(v160 + 4) = v165;
            *(v160 + 12) = 2114;
            swift_allocError();
            sub_1D3058338(v185, v166, type metadata accessor for FilePath.ResolutionError);
            v167 = _swift_stdlib_bridgeErrorToNSError();
            sub_1D3065284(v185, type metadata accessor for FilePath.ResolutionError);
            *(v160 + 14) = v167;
            *v161 = v167;
            _os_log_impl(&dword_1D2FD9000, v181, v280, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v160, 0x16u);
            sub_1D2FF14DC(v161, &qword_1EC7493A0, &qword_1D30EF480);
            v156 = v304;
            MEMORY[0x1D38B3760](v161, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v272);
            MEMORY[0x1D38B3760](v272, -1, -1);
            MEMORY[0x1D38B3760](v160, -1, -1);

            sub_1D3065284(v284, type metadata accessor for FilePath.ResolutionError);
            v271(v288, v184);
          }

          else
          {

            sub_1D3065284(v185, type metadata accessor for FilePath.ResolutionError);
            v186 = *v294;
            (*v294)(v183, v184);
            sub_1D3065284(v284, type metadata accessor for FilePath.ResolutionError);
            v186(v288, v184);
          }

          v168 = v314;
        }

        else
        {
          v187 = *(v315 + 448);
          v188 = *(v315 + 400);
          v189 = *(v315 + 328);
          v190 = *(v315 + 296);
          v191 = *(v315 + 248);
          v281 = *(v315 + 256);
          v192 = *(v315 + 144);
          v193 = *(v315 + 56);

          (*v277)(v188, v193, v189);
          v289 = *v279;
          (*v279)(v190, v278, v192);
          (v304)(v187, v188, v189);
          sub_1D30E8D7C();
          v285 = *v294;
          (*v294)(v188, v189);
          sub_1D30E8D8C();
          (*v276)(v281, v191, v192);
          if (qword_1EE3133A0 != -1)
          {
            swift_once();
          }

          v194 = *(v315 + 256);
          v195 = *(v315 + 232);
          v196 = *(v315 + 144);
          __swift_project_value_buffer(*(v315 + 608), qword_1EE3133A8);
          v197 = sub_1D30E928C();
          v198 = v289;
          v289(v195, v194, v196);
          v199 = sub_1D30E8B1C();
          v200 = os_log_type_enabled(v199, v197);
          v201 = *(v315 + 232);
          v202 = *(v315 + 144);
          if (v200)
          {
            v203 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            v316[0] = v204;
            *v203 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v205 = v197;
            v206 = sub_1D30E977C();
            v208 = v207;
            v209 = *v293;
            (*v293)(v201, v202);
            v210 = sub_1D2FFEA04(v206, v208, v316);
            v198 = v289;

            *(v203 + 4) = v210;
            _os_log_impl(&dword_1D2FD9000, v199, v205, "Item exists at: %{public}s", v203, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v204);
            MEMORY[0x1D38B3760](v204, -1, -1);
            MEMORY[0x1D38B3760](v203, -1, -1);
          }

          else
          {

            v209 = *v293;
            (*v293)(v201, v202);
          }

          v156 = v304;
          sub_1D3003CF4(*(v315 + 256), 0, *(v315 + 224));
          v211 = *(v315 + 224);
          v212 = *(v315 + 144);
          *(v315 + 925) = 0;
          v213 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v214 = sub_1D30E906C();

          v215 = [v213 fileExistsAtPath:v214 isDirectory:v315 + 925];

          v209(v211, v212);
          if (v215)
          {
            v216 = *(v315 + 256);
            v217 = *(v315 + 144);
            if (*(v315 + 925))
            {
              v218 = *(v315 + 208);
              v219 = sub_1D30E927C();
              v198(v218, v216, v217);
              v220 = sub_1D30E8B1C();
              v221 = os_log_type_enabled(v220, v219);
              v222 = *(v315 + 208);
              v223 = *(v315 + 144);
              v282 = v209;
              if (v221)
              {
                v224 = swift_slowAlloc();
                v225 = swift_slowAlloc();
                v316[0] = v225;
                *v224 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v226 = sub_1D30E977C();
                v227 = v209;
                v228 = v226;
                v230 = v229;
                v227(v222, v223);
                v231 = sub_1D2FFEA04(v228, v230, v316);

                *(v224 + 4) = v231;
                _os_log_impl(&dword_1D2FD9000, v220, v219, "Checking whether the staging directory at “%{public}s” is inactive…", v224, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v225);
                MEMORY[0x1D38B3760](v225, -1, -1);
                MEMORY[0x1D38B3760](v224, -1, -1);
              }

              else
              {

                v209(v222, v223);
              }

              sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
              sub_1D30E8D4C();
              v246 = sub_1D30E906C();

              v247 = [objc_opt_self() predicateMatchingBundleIdentifier_];

              v248 = sub_1D30E6D18(v247);
              (v304)(*(v315 + 384), *(v315 + 408), *(v315 + 328));
              v249 = sub_1D30E8B1C();
              v250 = sub_1D30E92BC();
              v251 = os_log_type_enabled(v249, v250);
              v252 = *(v315 + 408);
              v253 = *(v315 + 384);
              v254 = *(v315 + 328);
              v255 = *(v315 + 256);
              v256 = *(v315 + 144);
              if (v251)
              {
                v290 = *(v315 + 144);
                v257 = swift_slowAlloc();
                v258 = swift_slowAlloc();
                v316[0] = v258;
                *v257 = 136446210;
                sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
                v259 = sub_1D30E977C();
                v274 = v252;
                v261 = v260;
                v285(v253, v254);
                v262 = sub_1D2FFEA04(v259, v261, v316);

                *(v257 + 4) = v262;
                _os_log_impl(&dword_1D2FD9000, v249, v250, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v257, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v258);
                v263 = v258;
                v156 = v304;
                MEMORY[0x1D38B3760](v263, -1, -1);
                MEMORY[0x1D38B3760](v257, -1, -1);

                v282(v255, v290);
                v285(v274, v254);
              }

              else
              {

                v285(v253, v254);
                v282(v255, v256);
                v285(v252, v254);
              }
            }

            else
            {
              v234 = *(v315 + 200);
              v235 = sub_1D30E92AC();
              v198(v234, v216, v217);
              v236 = sub_1D30E8B1C();
              v237 = os_log_type_enabled(v236, v235);
              v238 = *(v315 + 200);
              v239 = *(v315 + 144);
              if (v237)
              {
                v240 = swift_slowAlloc();
                v241 = swift_slowAlloc();
                v316[0] = v241;
                *v240 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v273 = v235;
                v242 = sub_1D30E977C();
                v244 = v243;
                v209(v238, v239);
                v245 = sub_1D2FFEA04(v242, v244, v316);

                *(v240 + 4) = v245;
                _os_log_impl(&dword_1D2FD9000, v236, v273, "The item at “%{public}s” isn’t a directory; removing it…", v240, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v241);
                MEMORY[0x1D38B3760](v241, -1, -1);
                MEMORY[0x1D38B3760](v240, -1, -1);
              }

              else
              {

                v209(v238, v239);
              }

              sub_1D3009B38(*(v315 + 256));
              v264 = *(v315 + 408);
              v265 = *(v315 + 328);
              v209(*(v315 + 256), *(v315 + 144));
              v285(v264, v265);
              *(v315 + 924) = 1;
            }
          }

          else
          {
            v232 = *(v315 + 408);
            v233 = *(v315 + 328);
            v209(*(v315 + 256), *(v315 + 144));
            v285(v232, v233);
          }

          v168 = v314;
        }

        v158 = &v310[v286];
        v154 = (v168 - 1);
      }

      while (v154);
    }

    v270 = *(v315 + 924);

    v266 = *(v315 + 8);

    return v266(v270);
  }

  v2 = 0;
  v3 = *(v315 + 568);
  *(v315 + 912) = *(v3 + 80);
  *(v315 + 712) = *(v3 + 72);
  v295 = *(v315 + 924);
  *(v315 + 916) = *MEMORY[0x1E6969A48];
  v291 = *(v315 + 688);
  while (1)
  {
    *(v315 + 720) = v2;
    *(v315 + 927) = v295;
    v4 = *(v315 + 600);
    v5 = *(v315 + 592);
    sub_1D3058338(*(v315 + 696) + ((*(v315 + 912) + 32) & ~*(v315 + 912)) + *(v315 + 712) * v2, v4, type metadata accessor for LicenseRecord.StaticRepresentation);
    v6 = sub_1D30E927C();
    sub_1D3058338(v4, v5, type metadata accessor for LicenseRecord.StaticRepresentation);
    v7 = sub_1D30E8B1C();
    v8 = os_log_type_enabled(v7, v6);
    v9 = *(v315 + 592);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      v11 = *v9;
      sub_1D3065284(v9, type metadata accessor for LicenseRecord.StaticRepresentation);
      *(v10 + 4) = v11;
      _os_log_impl(&dword_1D2FD9000, v7, v6, "Checking whether the record of the license with the ID “%llu” is stale…", v10, 0xCu);
      MEMORY[0x1D38B3760](v10, -1, -1);
    }

    else
    {
      sub_1D3065284(*(v315 + 592), type metadata accessor for LicenseRecord.StaticRepresentation);
    }

    v12 = *(v315 + 916);
    v13 = *(v315 + 544);
    v14 = *(v315 + 536);
    v15 = *(v315 + 520);
    v16 = *(v315 + 512);
    v17 = *(v315 + 504);
    v305 = *(v315 + 528);
    v311 = *(v315 + 496);
    v18 = *(v315 + 488);
    v19 = *(v315 + 480);
    v20 = *(v315 + 472);

    sub_1D30E8A9C();
    (*(v19 + 104))(v18, v12, v20);
    sub_1D30E8A0C();
    sub_1D30E8A8C();
    v21 = *(v14 + 8);
    *(v315 + 728) = v21;
    *(v315 + 736) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v299 = v21;
    v21(v13, v305);
    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v16, v311);
    v22 = *(v14 + 48);
    if (v22(v15, 1, v305) == 1)
    {
      v23 = *(v315 + 528);
      v24 = *(v315 + 520);
      sub_1D30E896C();
      if (v22(v24, 1, v23) != 1)
      {
        sub_1D2FF14DC(*(v315 + 520), &qword_1EC7491C8, &qword_1D30EEC10);
      }
    }

    else
    {
      (*(*(v315 + 536) + 32))(*(v315 + 552), *(v315 + 520), *(v315 + 528));
    }

    if (sub_1D30E89EC())
    {
      break;
    }

    v25 = *(v315 + 600);
    v299(*(v315 + 552), *(v315 + 528));
    sub_1D3065284(v25, type metadata accessor for LicenseRecord.StaticRepresentation);
    v2 = *(v315 + 720) + 1;
    if (v2 == *(v315 + 704))
    {
      *(v315 + 924) = v295;

      v26 = v291;
      goto LABEL_14;
    }
  }

  v40 = *(v315 + 600);
  v41 = *(v315 + 584);
  v42 = sub_1D30E92AC();
  sub_1D3058338(v40, v41, type metadata accessor for LicenseRecord.StaticRepresentation);
  v43 = sub_1D30E8B1C();
  v44 = os_log_type_enabled(v43, v42);
  v45 = *(v315 + 584);
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    v47 = *v45;
    sub_1D3065284(v45, type metadata accessor for LicenseRecord.StaticRepresentation);
    *(v46 + 4) = v47;
    _os_log_impl(&dword_1D2FD9000, v43, v42, "Reporting a timeout error for the license with the ID “%llu”…", v46, 0xCu);
    MEMORY[0x1D38B3760](v46, -1, -1);
  }

  else
  {
    sub_1D3065284(*(v315 + 584), type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  v143 = *(v315 + 600);

  sub_1D30E6DDC();
  v144 = swift_allocError();
  *(v315 + 744) = v144;
  *v145 = 60;
  v146 = *v143;
  v147 = swift_task_alloc();
  *(v315 + 752) = v147;
  *v147 = v315;
  v147[1] = sub_1D30B0260;

  return sub_1D302438C(v144, v146);
}

uint64_t sub_1D30AC614(uint64_t a1)
{
  v277 = v1;
  v2 = v1;
  v276[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 688);
  v4 = sub_1D30E929C();
  v5 = v3;
  v6 = sub_1D30E8B1C();

  v7 = os_log_type_enabled(v6, v4);
  v8 = *(v1 + 688);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D2FD9000, v6, v4, "Checking for stale license records failed: %{public}@", v9, 0xCu);
    sub_1D2FF14DC(v10, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {
  }

  v13 = sub_1D30E8B1C();
  v14 = sub_1D30E92BC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D2FD9000, v13, v14, "Checking for orphaned asset packs…", v15, 2u);
    MEMORY[0x1D38B3760](v15, -1, -1);
  }

  v16 = *(v2 + 40);

  *(v2 + 768) = *(v16 + 16);
  if (qword_1EC749038 != -1)
  {
LABEL_69:
    swift_once();
  }

  v17 = __swift_project_value_buffer(*(v2 + 144), qword_1EC75A8D8);
  *(v2 + 776) = v17;
  v18 = sub_1D3005160(v17);
  *(v2 + 784) = v18;
  v275 = v2;
  isa = v18[2].isa;
  *(v2 + 792) = isa;
  if (!isa)
  {
LABEL_30:

    v115 = sub_1D30E8B1C();
    v116 = sub_1D30E92BC();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_1D2FD9000, v115, v116, "Checking for inactive staging directories…", v117, 2u);
      MEMORY[0x1D38B3760](v117, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v118 = __swift_project_value_buffer(*(v2 + 144), qword_1EE3152D0);
    v119 = sub_1D3005160(v118);
    v120 = v119[2].isa;
    if (v120)
    {
      v121 = *(v2 + 336);
      v123 = *(v121 + 16);
      v121 += 16;
      v122 = v123;
      v124 = v119 + ((*(v121 + 64) + 32) & ~*(v121 + 64));
      v242 = (v121 + 16);
      v125 = *(v2 + 152);
      v245 = (v125 + 16);
      v257 = (v121 + 32);
      v258 = (v121 - 8);
      v241 = (v125 + 32);
      v244 = (v125 + 8);
      v240 = *(v2 + 96);
      v255 = *(v121 + 56);
      v268 = v123;
      v243 = v118;
      do
      {
        v271 = v124;
        v274 = v120;
        v127 = *(v2 + 328);
        v128 = *(v2 + 56);
        v122(*(v2 + 408));
        v129 = sub_1D30E8D4C();
        v131 = v130;

        sub_1D30E8D6C();
        if ((*v257)(v128, 1, v127) == 1)
        {
          v132 = *(v2 + 408);
          v133 = *(v2 + 392);
          v134 = *(v2 + 328);
          v136 = *(v2 + 96);
          v135 = *(v2 + 104);
          v137 = *(v2 + 88);
          v248 = *(v2 + 80);
          sub_1D2FF14DC(*(v2 + 56), &qword_1EC749940, &qword_1D30F1B10);
          *v136 = v129;
          *(v240 + 8) = v131;
          swift_storeEnumTagMultiPayload();
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
          swift_willThrowTypedImpl();
          sub_1D3056830(v136, v135, type metadata accessor for FilePath.ResolutionError);
          sub_1D3056830(v135, v137, type metadata accessor for FilePath.ResolutionError);
          v138 = sub_1D30E929C();
          v268(v133, v132, v134);
          sub_1D3058338(v137, v248, type metadata accessor for FilePath.ResolutionError);
          v139 = sub_1D30E8B1C();
          v246 = v138;
          v140 = os_log_type_enabled(v139, v138);
          v252 = *(v2 + 408);
          v141 = *(v2 + 392);
          v142 = *(v2 + 328);
          v143 = *(v2 + 80);
          v249 = *(v2 + 88);
          if (v140)
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            v276[0] = v239;
            *v144 = 136446466;
            sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
            v146 = sub_1D30E977C();
            v148 = v147;
            v238 = *v258;
            (*v258)(v141, v142);
            v149 = sub_1D2FFEA04(v146, v148, v276);
            v122 = v268;

            *(v144 + 4) = v149;
            *(v144 + 12) = 2114;
            swift_allocError();
            sub_1D3058338(v143, v150, type metadata accessor for FilePath.ResolutionError);
            v151 = _swift_stdlib_bridgeErrorToNSError();
            sub_1D3065284(v143, type metadata accessor for FilePath.ResolutionError);
            *(v144 + 14) = v151;
            *v145 = v151;
            _os_log_impl(&dword_1D2FD9000, v139, v246, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v144, 0x16u);
            sub_1D2FF14DC(v145, &qword_1EC7493A0, &qword_1D30EF480);
            MEMORY[0x1D38B3760](v145, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v239);
            MEMORY[0x1D38B3760](v239, -1, -1);
            MEMORY[0x1D38B3760](v144, -1, -1);

            sub_1D3065284(v249, type metadata accessor for FilePath.ResolutionError);
            v238(v252, v142);
          }

          else
          {
            v122 = v268;

            sub_1D3065284(v143, type metadata accessor for FilePath.ResolutionError);
            v126 = *v258;
            (*v258)(v141, v142);
            sub_1D3065284(v249, type metadata accessor for FilePath.ResolutionError);
            v126(v252, v142);
          }
        }

        else
        {
          v152 = *(v2 + 448);
          v153 = *(v2 + 400);
          v154 = *(v2 + 328);
          v155 = *(v2 + 296);
          v156 = *(v2 + 248);
          v247 = *(v2 + 256);
          v157 = *(v2 + 144);
          v158 = *(v2 + 56);

          (*v242)(v153, v158, v154);
          v250 = *v245;
          (*v245)(v155, v243, v157);
          v268(v152, v153, v154);
          sub_1D30E8D7C();
          v253 = *v258;
          (*v258)(v153, v154);
          sub_1D30E8D8C();
          (*v241)(v247, v156, v157);
          if (qword_1EE3133A0 != -1)
          {
            swift_once();
          }

          v159 = *(v2 + 256);
          v160 = *(v2 + 232);
          v161 = *(v2 + 144);
          __swift_project_value_buffer(*(v2 + 608), qword_1EE3133A8);
          v162 = sub_1D30E928C();
          v163 = v250;
          v250(v160, v159, v161);
          v164 = sub_1D30E8B1C();
          v165 = os_log_type_enabled(v164, v162);
          v166 = *(v2 + 232);
          v167 = *(v2 + 144);
          if (v165)
          {
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v276[0] = v169;
            *v168 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v170 = sub_1D30E977C();
            v172 = v171;
            v173 = *v244;
            (*v244)(v166, v167);
            v174 = sub_1D2FFEA04(v170, v172, v276);
            v163 = v250;

            *(v168 + 4) = v174;
            _os_log_impl(&dword_1D2FD9000, v164, v162, "Item exists at: %{public}s", v168, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v169);
            v175 = v169;
            v2 = v275;
            MEMORY[0x1D38B3760](v175, -1, -1);
            MEMORY[0x1D38B3760](v168, -1, -1);
          }

          else
          {

            v173 = *v244;
            (*v244)(v166, v167);
          }

          sub_1D3003CF4(*(v2 + 256), 0, *(v2 + 224));
          v176 = *(v2 + 224);
          v177 = *(v2 + 144);
          *(v2 + 925) = 0;
          v178 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v179 = sub_1D30E906C();

          v180 = [v178 fileExistsAtPath:v179 isDirectory:v2 + 925];

          v173(v176, v177);
          if (v180)
          {
            v181 = *(v2 + 256);
            v182 = *(v2 + 144);
            if (*(v2 + 925))
            {
              v183 = *(v2 + 208);
              v184 = sub_1D30E927C();
              v163(v183, v181, v182);
              v185 = sub_1D30E8B1C();
              v186 = os_log_type_enabled(v185, v184);
              v187 = *(v2 + 208);
              v188 = *(v2 + 144);
              if (v186)
              {
                v189 = swift_slowAlloc();
                v190 = swift_slowAlloc();
                v276[0] = v190;
                *v189 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v191 = sub_1D30E977C();
                v193 = v192;
                v173(v187, v188);
                v194 = sub_1D2FFEA04(v191, v193, v276);

                *(v189 + 4) = v194;
                _os_log_impl(&dword_1D2FD9000, v185, v184, "Checking whether the staging directory at “%{public}s” is inactive…", v189, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v190);
                v195 = v190;
                v2 = v275;
                MEMORY[0x1D38B3760](v195, -1, -1);
                MEMORY[0x1D38B3760](v189, -1, -1);
              }

              else
              {

                v173(v187, v188);
              }

              sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
              sub_1D30E8D4C();
              v211 = sub_1D30E906C();

              v212 = [objc_opt_self() predicateMatchingBundleIdentifier_];

              v213 = sub_1D30E6D18(v212);
              v268(*(v2 + 384), *(v2 + 408), *(v2 + 328));
              v214 = sub_1D30E8B1C();
              v215 = sub_1D30E92BC();
              v216 = os_log_type_enabled(v214, v215);
              v217 = *(v2 + 408);
              v218 = *(v2 + 384);
              v219 = *(v2 + 328);
              v220 = v2;
              v221 = *(v2 + 256);
              v222 = *(v220 + 144);
              if (v216)
              {
                v237 = v173;
                v223 = swift_slowAlloc();
                v224 = swift_slowAlloc();
                v276[0] = v224;
                *v223 = 136446210;
                sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
                v225 = sub_1D30E977C();
                v251 = v217;
                v227 = v226;
                v253(v218, v219);
                v228 = sub_1D2FFEA04(v225, v227, v276);

                *(v223 + 4) = v228;
                _os_log_impl(&dword_1D2FD9000, v214, v215, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v223, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v224);
                MEMORY[0x1D38B3760](v224, -1, -1);
                MEMORY[0x1D38B3760](v223, -1, -1);

                v237(v221, v222);
                v253(v251, v219);
              }

              else
              {

                v253(v218, v219);
                v173(v221, v222);
                v253(v217, v219);
              }

              v2 = v275;
            }

            else
            {
              v198 = *(v2 + 200);
              v199 = sub_1D30E92AC();
              v163(v198, v181, v182);
              v200 = sub_1D30E8B1C();
              v201 = os_log_type_enabled(v200, v199);
              v202 = *(v2 + 200);
              v203 = *(v2 + 144);
              if (v201)
              {
                v204 = swift_slowAlloc();
                v205 = swift_slowAlloc();
                v276[0] = v205;
                *v204 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v206 = sub_1D30E977C();
                v208 = v207;
                v173(v202, v203);
                v209 = sub_1D2FFEA04(v206, v208, v276);

                *(v204 + 4) = v209;
                _os_log_impl(&dword_1D2FD9000, v200, v199, "The item at “%{public}s” isn’t a directory; removing it…", v204, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v205);
                v210 = v205;
                v2 = v275;
                MEMORY[0x1D38B3760](v210, -1, -1);
                MEMORY[0x1D38B3760](v204, -1, -1);
              }

              else
              {

                v173(v202, v203);
              }

              sub_1D3009B38(*(v2 + 256));
              v229 = *(v2 + 408);
              v230 = *(v2 + 328);
              v173(*(v2 + 256), *(v2 + 144));
              v253(v229, v230);
              *(v2 + 924) = 1;
            }
          }

          else
          {
            v196 = *(v2 + 408);
            v197 = *(v2 + 328);
            v173(*(v2 + 256), *(v2 + 144));
            v253(v196, v197);
          }

          v122 = v268;
        }

        v124 = &v271[v255];
        v120 = (v274 - 1);
      }

      while (v274 != 1);
    }

    v236 = *(v275 + 924);

    v231 = *(v275 + 8);

    return v231(v236);
  }

  v20 = 0;
  *(v2 + 920) = *(*(v2 + 336) + 80);
  while (1)
  {
    *(v2 + 800) = v20;
    v21 = *(v2 + 784);
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v22 = *(v2 + 464);
    v23 = *(v2 + 328);
    v24 = *(v2 + 336);
    v25 = *(v2 + 64);
    v26 = *(v24 + 16);
    v27 = v21 + ((*(v2 + 920) + 32) & ~*(v2 + 920));
    v28 = *(v24 + 72);
    *(v2 + 808) = v28;
    *(v2 + 816) = v26;
    *(v2 + 824) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v272 = v26;
    (v26)(v22, v27 + v28 * v20, v23);
    v29 = sub_1D30E8D4C();
    v31 = v30;

    sub_1D30E8D6C();
    if ((*(v24 + 48))(v25, 1, v23) == 1)
    {
      v259 = *(v2 + 464);
      v32 = *(v2 + 440);
      v33 = *(v2 + 328);
      v35 = *(v2 + 128);
      v34 = *(v2 + 136);
      v36 = *(v2 + 120);
      v263 = *(v2 + 112);
      sub_1D2FF14DC(*(v2 + 64), &qword_1EC749940, &qword_1D30F1B10);
      *v35 = v29;
      v35[1] = v31;
      swift_storeEnumTagMultiPayload();
      sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
      swift_willThrowTypedImpl();
      sub_1D3056830(v35, v34, type metadata accessor for FilePath.ResolutionError);
      sub_1D3056830(v34, v36, type metadata accessor for FilePath.ResolutionError);
      v37 = sub_1D30E929C();
      (v272)(v32, v259, v33);
      sub_1D3058338(v36, v263, type metadata accessor for FilePath.ResolutionError);
      v38 = sub_1D30E8B1C();
      v273 = v37;
      v39 = os_log_type_enabled(v38, v37);
      v40 = *(v2 + 464);
      v41 = *(v2 + 440);
      v42 = *(v2 + 328);
      v43 = *(v2 + 112);
      v44 = *(v2 + 120);
      v45 = (*(v2 + 336) + 8);
      if (v39)
      {
        v269 = *(v2 + 464);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v264 = swift_slowAlloc();
        v276[0] = v264;
        *v46 = 136446466;
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
        v260 = v44;
        v48 = sub_1D30E977C();
        v50 = v49;
        v256 = *v45;
        (*v45)(v41, v42);
        v51 = sub_1D2FFEA04(v48, v50, v276);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2114;
        swift_allocError();
        sub_1D3058338(v43, v52, type metadata accessor for FilePath.ResolutionError);
        v53 = _swift_stdlib_bridgeErrorToNSError();
        sub_1D3065284(v43, type metadata accessor for FilePath.ResolutionError);
        *(v46 + 14) = v53;
        *v47 = v53;
        _os_log_impl(&dword_1D2FD9000, v38, v273, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v46, 0x16u);
        sub_1D2FF14DC(v47, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v47, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v264);
        MEMORY[0x1D38B3760](v264, -1, -1);
        MEMORY[0x1D38B3760](v46, -1, -1);

        sub_1D3065284(v260, type metadata accessor for FilePath.ResolutionError);
        v256(v269, v42);
      }

      else
      {

        sub_1D3065284(v43, type metadata accessor for FilePath.ResolutionError);
        v83 = *v45;
        (*v45)(v41, v42);
        sub_1D3065284(v44, type metadata accessor for FilePath.ResolutionError);
        v83(v40, v42);
      }

      goto LABEL_9;
    }

    v54 = *(v2 + 776);
    v55 = *(v2 + 456);
    v56 = *(v275 + 448);
    v57 = *(v275 + 336);
    v58 = *(v275 + 328);
    v265 = v54;
    v270 = *(v275 + 320);
    v59 = *(v275 + 296);
    v60 = *(v275 + 152);
    v61 = *(v275 + 144);
    v261 = *(v275 + 312);
    v62 = *(v275 + 64);

    (*(v57 + 32))(v55, v62, v58);
    v63 = v265;
    v266 = *(v60 + 16);
    v266(v59, v63, v61);
    (v272)(v56, v55, v58);
    v2 = v275;
    sub_1D30E8D7C();
    v64 = *(v57 + 8);
    *(v275 + 832) = v64;
    *(v275 + 840) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v254 = v64;
    v64(v55, v58);
    sub_1D30E8D8C();
    (*(v60 + 32))(v270, v261, v61);
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    v65 = *(v275 + 320);
    v66 = *(v275 + 288);
    v67 = *(v275 + 144);
    __swift_project_value_buffer(*(v275 + 608), qword_1EE3133A8);
    v68 = sub_1D30E928C();
    v69 = v266;
    v266(v66, v65, v67);
    v70 = sub_1D30E8B1C();
    v262 = v68;
    v71 = os_log_type_enabled(v70, v68);
    v72 = *(v275 + 288);
    v73 = *(v275 + 144);
    v74 = *(v275 + 152);
    if (v71)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v276[0] = v76;
      *v75 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v77 = sub_1D30E977C();
      v79 = v78;
      v80 = *(v74 + 8);
      v80(v72, v73);
      v81 = sub_1D2FFEA04(v77, v79, v276);
      v69 = v266;

      *(v75 + 4) = v81;
      _os_log_impl(&dword_1D2FD9000, v70, v262, "Item exists at: %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      v82 = v76;
      v2 = v275;
      MEMORY[0x1D38B3760](v82, -1, -1);
      MEMORY[0x1D38B3760](v75, -1, -1);
    }

    else
    {

      v80 = *(v74 + 8);
      v80(v72, v73);
    }

    *(v2 + 848) = v80;
    sub_1D3003CF4(*(v2 + 320), 0, *(v2 + 280));
    v84 = *(v2 + 280);
    v85 = *(v2 + 144);
    v86 = *(v2 + 152) + 8;
    *(v2 + 926) = 0;
    v87 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v88 = sub_1D30E906C();

    v89 = [v87 fileExistsAtPath:v88 isDirectory:v2 + 926];

    *(v2 + 856) = v86 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v80(v84, v85);
    if (v89)
    {
      break;
    }

    v92 = *(v2 + 464);
    v93 = *(v2 + 328);
    v80(*(v2 + 320), *(v2 + 144));
    v254(v92, v93);
LABEL_9:
    v20 = *(v2 + 800) + 1;
    if (v20 == *(v2 + 792))
    {
      goto LABEL_30;
    }
  }

  v90 = *(v2 + 320);
  if (!*(v2 + 926))
  {
    v94 = *(v2 + 264);
    v95 = *(v2 + 144);
    v96 = sub_1D30E92AC();
    v69(v94, v90, v95);
    v97 = sub_1D30E8B1C();
    v98 = os_log_type_enabled(v97, v96);
    v99 = *(v2 + 264);
    v100 = *(v2 + 144);
    if (v98)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v276[0] = v102;
      *v101 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v103 = sub_1D30E977C();
      v267 = v96;
      v104 = v80;
      v106 = v105;
      v104(v99, v100);
      v107 = sub_1D2FFEA04(v103, v106, v276);
      v80 = v104;

      *(v101 + 4) = v107;
      _os_log_impl(&dword_1D2FD9000, v97, v267, "The item at “%{public}s” isn’t a directory; removing it…", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      v108 = v102;
      v2 = v275;
      MEMORY[0x1D38B3760](v108, -1, -1);
      MEMORY[0x1D38B3760](v101, -1, -1);
    }

    else
    {

      v80(v99, v100);
    }

    sub_1D3009B38(*(v2 + 320));
    v113 = *(v2 + 464);
    v114 = *(v2 + 328);
    v80(*(v2 + 320), *(v2 + 144));
    v254(v113, v114);
    *(v2 + 924) = 1;
    goto LABEL_9;
  }

  v91 = sub_1D3005160(*(v2 + 320));
  *(v2 + 864) = v91;
  v109 = v91[2].isa;
  *(v2 + 872) = v109;
  if (!v109)
  {

    v110 = *(v2 + 832);
    v111 = *(v2 + 464);
    v112 = *(v2 + 328);
    (*(v2 + 848))(*(v2 + 320), *(v2 + 144));
    v110(v111, v112);
    goto LABEL_9;
  }

  v233 = (*(v2 + 920) + 32) & ~*(v2 + 920);
  *(v2 + 880) = 0u;
  (*(v2 + 816))(*(v2 + 432), v91 + v233, *(v2 + 328));
  *(v2 + 896) = sub_1D30E91EC();
  v235 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v235, v234);
}

uint64_t sub_1D30B0260()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1D30BBA94;
  }

  else
  {

    v3 = sub_1D30B03B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D30B03B0()
{
  v330 = v0;
  v1 = v0;
  v329[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 600);
  (*(v0 + 728))(*(v0 + 552), *(v0 + 528));
  sub_1D3065284(v2, type metadata accessor for LicenseRecord.StaticRepresentation);
  v308 = *(v0 + 760);
  v3 = *(v0 + 720) + 1;
  v328 = v0;
  if (v3 == *(v0 + 704))
  {
LABEL_11:
    *(v1 + 924) = 1;

    v29 = sub_1D30E8B1C();
    v30 = sub_1D30E92BC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D2FD9000, v29, v30, "Checking for orphaned asset packs…", v31, 2u);
      MEMORY[0x1D38B3760](v31, -1, -1);
    }

    v32 = v1[5];

    v1[96] = *(v32 + 16);
    if (qword_1EC749038 != -1)
    {
LABEL_87:
      swift_once();
    }

    v33 = __swift_project_value_buffer(v1[18], qword_1EC75A8D8);
    v1[97] = v33;
    v34 = sub_1D3005160(v33);
    v1[98] = v34;
    if (v308)
    {
      v35 = sub_1D30E929C();
      v36 = v308;
      v37 = sub_1D30E8B1C();

      if (os_log_type_enabled(v37, v35))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138543362;
        v40 = v308;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_1D2FD9000, v37, v35, "Checking for orphaned asset packs failed: %{public}@", v38, 0xCu);
        sub_1D2FF14DC(v39, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v39, -1, -1);
        MEMORY[0x1D38B3760](v38, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      isa = v34[2].isa;
      v1[99] = isa;
      if (isa)
      {
        v43 = 0;
        *(v1 + 230) = *(v1[42] + 80);
        do
        {
          v1[100] = v43;
          v45 = v1[98];
          if (v43 >= *(v45 + 16))
          {
            __break(1u);
            goto LABEL_87;
          }

          v46 = v1[58];
          v47 = v1[41];
          v48 = v1[42];
          v49 = v1[8];
          v50 = *(v48 + 16);
          v51 = v45 + ((*(v1 + 920) + 32) & ~*(v1 + 920));
          v52 = *(v48 + 72);
          v1[101] = v52;
          v1[102] = v50;
          v1[103] = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v50(v46, v51 + v52 * v43, v47);
          v53 = sub_1D30E8D4C();
          v55 = v54;

          sub_1D30E8D6C();
          if ((*(v48 + 48))(v49, 1, v47) == 1)
          {
            v313 = v1[58];
            v56 = v1[55];
            v57 = v1[41];
            v58 = *(v328 + 136);
            v59 = *(v328 + 128);
            v60 = *(v328 + 120);
            v317 = *(v328 + 112);
            sub_1D2FF14DC(*(v328 + 64), &qword_1EC749940, &qword_1D30F1B10);
            *v59 = v53;
            v59[1] = v55;
            swift_storeEnumTagMultiPayload();
            sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
            swift_willThrowTypedImpl();
            sub_1D3056830(v59, v58, type metadata accessor for FilePath.ResolutionError);
            v61 = v58;
            v1 = v328;
            sub_1D3056830(v61, v60, type metadata accessor for FilePath.ResolutionError);
            v62 = sub_1D30E929C();
            v50(v56, v313, v57);
            sub_1D3058338(v60, v317, type metadata accessor for FilePath.ResolutionError);
            v63 = sub_1D30E8B1C();
            v64 = os_log_type_enabled(v63, v62);
            v65 = *(v328 + 464);
            v66 = *(v328 + 440);
            v67 = *(v328 + 328);
            v69 = *(v328 + 112);
            v68 = *(v328 + 120);
            v70 = (*(v328 + 336) + 8);
            if (v64)
            {
              v308 = *(v328 + 72);
              v323 = *(v328 + 120);
              v71 = swift_slowAlloc();
              v318 = v65;
              v72 = swift_slowAlloc();
              v314 = swift_slowAlloc();
              v329[0] = v314;
              *v71 = 136446466;
              sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
              v73 = sub_1D30E977C();
              v303 = v62;
              v75 = v74;
              v76 = *v70;
              (*v70)(v66, v67);
              v77 = v73;
              v1 = v328;
              v78 = sub_1D2FFEA04(v77, v75, v329);

              *(v71 + 4) = v78;
              *(v71 + 12) = 2114;
              swift_allocError();
              sub_1D3058338(v69, v79, type metadata accessor for FilePath.ResolutionError);
              v80 = _swift_stdlib_bridgeErrorToNSError();
              sub_1D3065284(v69, type metadata accessor for FilePath.ResolutionError);
              *(v71 + 14) = v80;
              *v72 = v80;
              _os_log_impl(&dword_1D2FD9000, v63, v303, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v71, 0x16u);
              sub_1D2FF14DC(v72, &qword_1EC7493A0, &qword_1D30EF480);
              MEMORY[0x1D38B3760](v72, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v314);
              MEMORY[0x1D38B3760](v314, -1, -1);
              MEMORY[0x1D38B3760](v71, -1, -1);

              sub_1D3065284(v323, type metadata accessor for FilePath.ResolutionError);
              v76(v318, v67);
            }

            else
            {

              sub_1D3065284(v69, type metadata accessor for FilePath.ResolutionError);
              v44 = *v70;
              (*v70)(v66, v67);
              sub_1D3065284(v68, type metadata accessor for FilePath.ResolutionError);
              v44(v65, v67);
            }
          }

          else
          {
            v81 = v1[56];
            v82 = v1[57];
            v310 = v50;
            v84 = v1[41];
            v83 = v1[42];
            v319 = v1[97];
            v324 = v1[40];
            v315 = v1[39];
            v308 = v1[38];
            v85 = *(v328 + 296);
            v86 = *(v328 + 152);
            v87 = *(v328 + 144);
            v88 = *(v328 + 64);

            (*(v83 + 32))(v82, v88, v84);
            v89 = v319;
            v320 = *(v86 + 16);
            v320(v85, v89, v87);
            v310(v81, v82, v84);
            sub_1D30E8D7C();
            v90 = *(v83 + 8);
            *(v328 + 832) = v90;
            *(v328 + 840) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v304 = v90;
            (v90)(v82, v84);
            sub_1D30E8D8C();
            (*(v86 + 32))(v324, v315, v87);
            if (qword_1EE3133A0 != -1)
            {
              swift_once();
            }

            v91 = *(v328 + 320);
            v92 = *(v328 + 288);
            v93 = *(v328 + 144);
            __swift_project_value_buffer(*(v328 + 608), qword_1EE3133A8);
            v94 = sub_1D30E928C();
            v95 = v320;
            v320(v92, v91, v93);
            v96 = sub_1D30E8B1C();
            v325 = v94;
            v97 = os_log_type_enabled(v96, v94);
            v98 = *(v328 + 288);
            v100 = *(v328 + 144);
            v99 = *(v328 + 152);
            if (v97)
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v329[0] = v102;
              *v101 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v103 = sub_1D30E977C();
              v105 = v104;
              v106 = v100;
              v107 = *(v99 + 8);
              (v107)(v98, v106);
              v108 = sub_1D2FFEA04(v103, v105, v329);
              v95 = v320;

              *(v101 + 4) = v108;
              _os_log_impl(&dword_1D2FD9000, v96, v325, "Item exists at: %{public}s", v101, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v102);
              MEMORY[0x1D38B3760](v102, -1, -1);
              MEMORY[0x1D38B3760](v101, -1, -1);
            }

            else
            {

              v109 = v100;
              v107 = *(v99 + 8);
              (v107)(v98, v109);
            }

            *(v328 + 848) = v107;
            sub_1D3003CF4(*(v328 + 320), 0, *(v328 + 280));
            v110 = *(v328 + 280);
            v111 = *(v328 + 144);
            v112 = *(v328 + 152) + 8;
            *(v328 + 926) = 0;
            v113 = [objc_opt_self() defaultManager];
            sub_1D30E8D3C();
            v114 = sub_1D30E906C();

            v115 = [v113 fileExistsAtPath:v114 isDirectory:v328 + 926];

            *(v328 + 856) = v112 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            (v107)(v110, v111);
            if (v115)
            {
              v116 = *(v328 + 320);
              if (*(v328 + 926))
              {
                v117 = sub_1D3005160(*(v328 + 320));
                *(v328 + 864) = v117;
                v136 = v117[2].isa;
                *(v328 + 872) = v136;
                v1 = v328;
                if (v136)
                {
                  v279 = (*(v328 + 920) + 32) & ~*(v328 + 920);
                  *(v328 + 880) = 0u;
                  (*(v328 + 816))(*(v328 + 432), v117 + v279, *(v328 + 328));
                  *(v328 + 896) = sub_1D30E91EC();
                  v281 = sub_1D30E91AC();

                  return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v281, v280);
                }

                v137 = *(v328 + 832);
                v138 = *(v328 + 464);
                v139 = *(v328 + 328);
                (*(v328 + 848))(*(v328 + 320), *(v328 + 144));
                v137(v138, v139);
              }

              else
              {
                v326 = v107;
                v120 = *(v328 + 264);
                v121 = *(v328 + 144);
                v122 = sub_1D30E92AC();
                v95(v120, v116, v121);
                v123 = sub_1D30E8B1C();
                v124 = os_log_type_enabled(v123, v122);
                v125 = *(v328 + 264);
                v126 = *(v328 + 144);
                if (v124)
                {
                  v127 = swift_slowAlloc();
                  v128 = swift_slowAlloc();
                  v329[0] = v128;
                  *v127 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                  v129 = sub_1D30E977C();
                  v131 = v130;
                  v132 = v126;
                  v133 = v326;
                  (v326)(v125, v132);
                  v134 = sub_1D2FFEA04(v129, v131, v329);

                  *(v127 + 4) = v134;
                  _os_log_impl(&dword_1D2FD9000, v123, v122, "The item at “%{public}s” isn’t a directory; removing it…", v127, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v128);
                  MEMORY[0x1D38B3760](v128, -1, -1);
                  MEMORY[0x1D38B3760](v127, -1, -1);
                }

                else
                {

                  v135 = v126;
                  v133 = v326;
                  (v326)(v125, v135);
                }

                sub_1D3009B38(*(v328 + 320));
                v140 = *(v328 + 464);
                v141 = *(v328 + 328);
                v133(*(v328 + 320), *(v328 + 144));
                (v304)(v140, v141);
                *(v328 + 924) = 1;
                v1 = v328;
              }
            }

            else
            {
              v118 = *(v328 + 464);
              v119 = *(v328 + 328);
              (v107)(*(v328 + 320), *(v328 + 144));
              (v304)(v118, v119);
              v1 = v328;
            }
          }

          v43 = v1[100] + 1;
        }

        while (v43 != v1[99]);
      }
    }

    v150 = sub_1D30E8B1C();
    v151 = sub_1D30E92BC();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_1D2FD9000, v150, v151, "Checking for inactive staging directories…", v152, 2u);
      MEMORY[0x1D38B3760](v152, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v153 = __swift_project_value_buffer(v1[18], qword_1EE3152D0);
    v154 = sub_1D3005160(v153);
    v155 = v154[2].isa;
    if (v155)
    {
      v156 = v1[42];
      v157 = *(v156 + 16);
      v156 += 16;
      v309 = v157;
      v158 = v154 + ((*(v156 + 64) + 32) & ~*(v156 + 64));
      v301 = (v156 + 32);
      v289 = (v156 + 16);
      v159 = v1[19];
      v291 = (v159 + 16);
      v311 = (v156 - 8);
      v288 = (v159 + 32);
      v302 = (v159 + 8);
      v287 = v1[12];
      v300 = *(v156 + 56);
      v290 = v153;
      do
      {
        v321 = v158;
        v327 = v155;
        v169 = v1[41];
        v170 = v1[7];
        (v309)(v1[51]);
        v171 = sub_1D30E8D4C();
        v173 = v172;

        sub_1D30E8D6C();
        if ((*v301)(v170, 1, v169) == 1)
        {
          v174 = v1[51];
          v175 = v1[49];
          v176 = v1[41];
          v177 = *(v328 + 104);
          v178 = *(v328 + 96);
          v179 = *(v328 + 88);
          v294 = *(v328 + 80);
          sub_1D2FF14DC(*(v328 + 56), &qword_1EC749940, &qword_1D30F1B10);
          *v178 = v171;
          *(v287 + 8) = v173;
          swift_storeEnumTagMultiPayload();
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
          swift_willThrowTypedImpl();
          sub_1D3056830(v178, v177, type metadata accessor for FilePath.ResolutionError);
          v180 = v177;
          v1 = v328;
          sub_1D3056830(v180, v179, type metadata accessor for FilePath.ResolutionError);
          v181 = sub_1D30E929C();
          v309(v175, v174, v176);
          sub_1D3058338(v179, v294, type metadata accessor for FilePath.ResolutionError);
          v182 = sub_1D30E8B1C();
          v292 = v181;
          v183 = os_log_type_enabled(v182, v181);
          v305 = *(v328 + 408);
          v184 = *(v328 + 392);
          v185 = *(v328 + 328);
          v186 = *(v328 + 80);
          v295 = *(v328 + 88);
          if (v183)
          {
            v160 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            v285 = swift_slowAlloc();
            v329[0] = v285;
            *v160 = 136446466;
            sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
            v162 = sub_1D30E977C();
            v164 = v163;
            log = *v311;
            (*v311)(v184, v185);
            v165 = sub_1D2FFEA04(v162, v164, v329);

            *(v160 + 4) = v165;
            *(v160 + 12) = 2114;
            swift_allocError();
            sub_1D3058338(v186, v166, type metadata accessor for FilePath.ResolutionError);
            v167 = _swift_stdlib_bridgeErrorToNSError();
            sub_1D3065284(v186, type metadata accessor for FilePath.ResolutionError);
            *(v160 + 14) = v167;
            *v161 = v167;
            _os_log_impl(&dword_1D2FD9000, v182, v292, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v160, 0x16u);
            sub_1D2FF14DC(v161, &qword_1EC7493A0, &qword_1D30EF480);
            v1 = v328;
            MEMORY[0x1D38B3760](v161, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v285);
            MEMORY[0x1D38B3760](v285, -1, -1);
            MEMORY[0x1D38B3760](v160, -1, -1);

            sub_1D3065284(v295, type metadata accessor for FilePath.ResolutionError);
            (log)(v305, v185);
          }

          else
          {

            sub_1D3065284(v186, type metadata accessor for FilePath.ResolutionError);
            v187 = *v311;
            (*v311)(v184, v185);
            sub_1D3065284(v295, type metadata accessor for FilePath.ResolutionError);
            v187(v305, v185);
          }

          v168 = v327;
        }

        else
        {
          v188 = v1[56];
          v189 = v1[50];
          v190 = v1[41];
          v191 = v1[37];
          v293 = v1[31];
          v296 = v1[32];
          v192 = v1;
          v193 = v1[18];
          v194 = v192[7];

          (*v289)(v189, v194, v190);
          v306 = *v291;
          (*v291)(v191, v290, v193);
          v309(v188, v189, v190);
          sub_1D30E8D7C();
          v195 = *v311;
          (*v311)(v189, v190);
          sub_1D30E8D8C();
          (*v288)(v296, v293, v193);
          if (qword_1EE3133A0 != -1)
          {
            swift_once();
          }

          v196 = v192[32];
          v197 = v192[29];
          v198 = v192[18];
          __swift_project_value_buffer(v192[76], qword_1EE3133A8);
          v199 = sub_1D30E928C();
          v306(v197, v196, v198);
          v200 = sub_1D30E8B1C();
          v201 = os_log_type_enabled(v200, v199);
          v202 = v192[29];
          v203 = v192[18];
          v1 = v192;
          if (v201)
          {
            v204 = swift_slowAlloc();
            v205 = swift_slowAlloc();
            v329[0] = v205;
            *v204 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v206 = v195;
            v207 = sub_1D30E977C();
            v297 = v199;
            v209 = v208;
            v210 = *v302;
            (*v302)(v202, v203);
            v211 = v207;
            v195 = v206;
            v212 = sub_1D2FFEA04(v211, v209, v329);

            *(v204 + 4) = v212;
            _os_log_impl(&dword_1D2FD9000, v200, v297, "Item exists at: %{public}s", v204, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v205);
            MEMORY[0x1D38B3760](v205, -1, -1);
            MEMORY[0x1D38B3760](v204, -1, -1);
          }

          else
          {

            v210 = *v302;
            (*v302)(v202, v203);
          }

          sub_1D3003CF4(v1[32], 0, v1[28]);
          v213 = v1[28];
          v214 = v1[18];
          *(v1 + 925) = 0;
          v215 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v216 = sub_1D30E906C();

          v217 = [v215 fileExistsAtPath:v216 isDirectory:v1 + 925];

          v210(v213, v214);
          if (v217)
          {
            v218 = v1[32];
            v219 = v1[18];
            if (*(v1 + 925))
            {
              v220 = v1[26];
              v221 = sub_1D30E927C();
              v306(v220, v218, v219);
              v222 = sub_1D30E8B1C();
              v223 = os_log_type_enabled(v222, v221);
              v224 = v1[26];
              v225 = v1[18];
              v283 = v210;
              if (v223)
              {
                v226 = swift_slowAlloc();
                v227 = swift_slowAlloc();
                v329[0] = v227;
                *v226 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v228 = v195;
                v229 = sub_1D30E977C();
                v230 = v210;
                v232 = v231;
                v230(v224, v225);
                v233 = v229;
                v195 = v228;
                v234 = sub_1D2FFEA04(v233, v232, v329);

                *(v226 + 4) = v234;
                _os_log_impl(&dword_1D2FD9000, v222, v221, "Checking whether the staging directory at “%{public}s” is inactive…", v226, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v227);
                MEMORY[0x1D38B3760](v227, -1, -1);
                MEMORY[0x1D38B3760](v226, -1, -1);
              }

              else
              {

                v210(v224, v225);
              }

              sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
              sub_1D30E8D4C();
              v252 = sub_1D30E906C();

              v253 = [objc_opt_self() predicateMatchingBundleIdentifier_];

              v254 = sub_1D30E6D18(v253);
              v286 = v195;

              v309(v1[48], v1[51], v1[41]);
              v255 = sub_1D30E8B1C();
              v256 = sub_1D30E92BC();
              v257 = os_log_type_enabled(v255, v256);
              v258 = v1[51];
              v259 = v1[48];
              v260 = v1[41];
              v261 = v1[32];
              v262 = v1[18];
              if (v257)
              {
                v263 = swift_slowAlloc();
                v264 = swift_slowAlloc();
                v329[0] = v264;
                *v263 = 136446210;
                sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
                v307 = v258;
                v265 = sub_1D30E977C();
                v299 = v261;
                v267 = v266;
                v286(v259, v260);
                v268 = sub_1D2FFEA04(v265, v267, v329);

                *(v263 + 4) = v268;
                _os_log_impl(&dword_1D2FD9000, v255, v256, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v263, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v264);
                v269 = v264;
                v1 = v328;
                MEMORY[0x1D38B3760](v269, -1, -1);
                MEMORY[0x1D38B3760](v263, -1, -1);

                v283(v299, v262);
                v286(v307, v260);
              }

              else
              {

                v286(v259, v260);
                v283(v261, v262);
                v286(v258, v260);
              }
            }

            else
            {
              v237 = v1[25];
              v238 = sub_1D30E92AC();
              v306(v237, v218, v219);
              v239 = sub_1D30E8B1C();
              v240 = os_log_type_enabled(v239, v238);
              v241 = v1[25];
              v242 = v1[18];
              if (v240)
              {
                v243 = swift_slowAlloc();
                v244 = swift_slowAlloc();
                v329[0] = v244;
                *v243 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v245 = v195;
                v246 = sub_1D30E977C();
                v298 = v238;
                v247 = v210;
                v249 = v248;
                v247(v241, v242);
                v250 = v246;
                v195 = v245;
                v251 = sub_1D2FFEA04(v250, v249, v329);
                v210 = v247;

                *(v243 + 4) = v251;
                _os_log_impl(&dword_1D2FD9000, v239, v298, "The item at “%{public}s” isn’t a directory; removing it…", v243, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v244);
                MEMORY[0x1D38B3760](v244, -1, -1);
                MEMORY[0x1D38B3760](v243, -1, -1);
              }

              else
              {

                v210(v241, v242);
              }

              sub_1D3009B38(v1[32]);
              v270 = v1[51];
              v271 = v1[41];
              v210(v1[32], v1[18]);
              v195(v270, v271);
              *(v1 + 924) = 1;
            }
          }

          else
          {
            v235 = v1[51];
            v236 = v1[41];
            v210(v1[32], v1[18]);
            v195(v235, v236);
          }

          v168 = v327;
        }

        v158 = &v321[v300];
        v155 = (v168 - 1);
      }

      while (v155);
    }

    v282 = *(v328 + 924);

    v272 = *(v328 + 8);

    return v272(v282);
  }

  while (1)
  {
    v1[90] = v3;
    *(v1 + 927) = 1;
    v4 = v1[89];
    v5 = *(v1 + 912);
    v6 = v1[87];
    v7 = v1[75];
    v8 = *(v328 + 592);
    sub_1D3058338(v6 + ((v5 + 32) & ~v5) + v4 * v3, v7, type metadata accessor for LicenseRecord.StaticRepresentation);
    v9 = sub_1D30E927C();
    sub_1D3058338(v7, v8, type metadata accessor for LicenseRecord.StaticRepresentation);
    v10 = sub_1D30E8B1C();
    v11 = os_log_type_enabled(v10, v9);
    v12 = *(v328 + 592);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      v14 = *v12;
      sub_1D3065284(v12, type metadata accessor for LicenseRecord.StaticRepresentation);
      *(v13 + 4) = v14;
      _os_log_impl(&dword_1D2FD9000, v10, v9, "Checking whether the record of the license with the ID “%llu” is stale…", v13, 0xCu);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }

    else
    {
      sub_1D3065284(*(v328 + 592), type metadata accessor for LicenseRecord.StaticRepresentation);
    }

    v15 = *(v328 + 916);
    v16 = *(v328 + 544);
    v17 = *(v328 + 536);
    v18 = *(v328 + 520);
    v19 = *(v328 + 512);
    v20 = *(v328 + 504);
    v316 = *(v328 + 528);
    v322 = *(v328 + 496);
    v21 = *(v328 + 488);
    v22 = *(v328 + 480);
    v23 = *(v328 + 472);

    sub_1D30E8A9C();
    (*(v22 + 104))(v21, v15, v23);
    sub_1D30E8A0C();
    sub_1D30E8A8C();
    v24 = *(v17 + 8);
    *(v328 + 728) = v24;
    *(v328 + 736) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v312 = v24;
    v24(v16, v316);
    (*(v22 + 8))(v21, v23);
    (*(v20 + 8))(v19, v322);
    v25 = *(v17 + 48);
    v1 = v328;
    if (v25(v18, 1, v316) == 1)
    {
      v26 = *(v328 + 528);
      v27 = *(v328 + 520);
      sub_1D30E896C();
      if (v25(v27, 1, v26) != 1)
      {
        sub_1D2FF14DC(*(v328 + 520), &qword_1EC7491C8, &qword_1D30EEC10);
      }
    }

    else
    {
      (*(*(v328 + 536) + 32))(*(v328 + 552), *(v328 + 520), *(v328 + 528));
    }

    if (sub_1D30E89EC())
    {
      break;
    }

    v28 = *(v328 + 600);
    v312(*(v328 + 552), *(v328 + 528));
    sub_1D3065284(v28, type metadata accessor for LicenseRecord.StaticRepresentation);
    v3 = *(v328 + 720) + 1;
    if (v3 == *(v328 + 704))
    {
      goto LABEL_11;
    }
  }

  v142 = *(v328 + 600);
  v143 = *(v328 + 584);
  v144 = sub_1D30E92AC();
  sub_1D3058338(v142, v143, type metadata accessor for LicenseRecord.StaticRepresentation);
  v145 = sub_1D30E8B1C();
  v146 = os_log_type_enabled(v145, v144);
  v147 = *(v328 + 584);
  if (v146)
  {
    v148 = swift_slowAlloc();
    *v148 = 134217984;
    v149 = *v147;
    sub_1D3065284(v147, type metadata accessor for LicenseRecord.StaticRepresentation);
    *(v148 + 4) = v149;
    _os_log_impl(&dword_1D2FD9000, v145, v144, "Reporting a timeout error for the license with the ID “%llu”…", v148, 0xCu);
    MEMORY[0x1D38B3760](v148, -1, -1);
  }

  else
  {
    sub_1D3065284(*(v328 + 584), type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  v274 = *(v328 + 600);

  sub_1D30E6DDC();
  v275 = swift_allocError();
  *(v328 + 744) = v275;
  *v276 = 60;
  v277 = *v274;
  v278 = swift_task_alloc();
  *(v328 + 752) = v278;
  *v278 = v328;
  v278[1] = sub_1D30B0260;

  return sub_1D302438C(v275, v277);
}

uint64_t sub_1D30B43CC()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);
  v4 = *(v0 + 40);

  sub_1D30D6228(v3, v2, v4, (v0 + 924));
  *(v0 + 904) = v1;
  if (v1)
  {
    v5 = sub_1D30B7E7C;
  }

  else
  {
    v5 = sub_1D30B44B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D30B44B0()
{
  v290 = v0;
  v1 = v0;
  v289[1] = *MEMORY[0x1E69E9840];
  (*(v0 + 832))(*(v0 + 432), *(v0 + 328));
  v279 = *(v0 + 904);
  v2 = *(v0 + 888) + 1;
  v3 = *(v0 + 864);
  if (v2 == *(v0 + 872))
  {

    v288 = v0;
LABEL_3:
    v4 = *(v1 + 832);
    v5 = *(v1 + 464);
    v6 = *(v1 + 328);
    (*(v1 + 848))(*(v1 + 320), *(v1 + 144));
    v3 = v4(v5, v6);
    while (1)
    {
      v8 = *(v1 + 800) + 1;
      if (v8 == *(v1 + 792))
      {
        break;
      }

      *(v1 + 800) = v8;
      v9 = *(v1 + 784);
      if (v8 >= *(v9 + 16))
      {
        __break(1u);
LABEL_75:
        v118 = 0;
        v2 = 0;
        goto LABEL_31;
      }

      v10 = *(v1 + 464);
      v11 = *(v1 + 328);
      v12 = *(v1 + 336);
      v13 = *(v1 + 64);
      v14 = *(v12 + 16);
      v15 = v9 + ((*(v1 + 920) + 32) & ~*(v1 + 920));
      v16 = *(v12 + 72);
      *(v1 + 808) = v16;
      *(v1 + 816) = v14;
      *(v1 + 824) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v285 = v14;
      v14(v10, v15 + v16 * v8, v11);
      v17 = sub_1D30E8D4C();
      v19 = v18;

      sub_1D30E8D6C();
      if ((*(v12 + 48))(v13, 1, v11) == 1)
      {
        v20 = *(v1 + 464);
        v21 = *(v1 + 440);
        v22 = *(v1 + 328);
        v23 = *(v1 + 136);
        v24 = *(v288 + 128);
        v25 = *(v288 + 120);
        v275 = *(v288 + 112);
        sub_1D2FF14DC(*(v288 + 64), &qword_1EC749940, &qword_1D30F1B10);
        *v24 = v17;
        v24[1] = v19;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
        swift_willThrowTypedImpl();
        v26 = v24;
        v1 = v288;
        sub_1D3056830(v26, v23, type metadata accessor for FilePath.ResolutionError);
        sub_1D3056830(v23, v25, type metadata accessor for FilePath.ResolutionError);
        v27 = sub_1D30E929C();
        v285(v21, v20, v22);
        sub_1D3058338(v25, v275, type metadata accessor for FilePath.ResolutionError);
        v28 = sub_1D30E8B1C();
        v29 = os_log_type_enabled(v28, v27);
        v30 = *(v288 + 464);
        v31 = *(v288 + 440);
        v32 = *(v288 + 328);
        v33 = *(v288 + 112);
        v34 = *(v288 + 120);
        v35 = (*(v288 + 336) + 8);
        if (v29)
        {
          v286 = *(v288 + 120);
          v36 = swift_slowAlloc();
          v270 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v289[0] = v276;
          *v36 = 136446466;
          sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
          v264 = v27;
          v37 = sub_1D30E977C();
          v39 = v38;
          v40 = *v35;
          (*v35)(v31, v32);
          v41 = sub_1D2FFEA04(v37, v39, v289);
          v1 = v288;

          *(v36 + 4) = v41;
          *(v36 + 12) = 2114;
          swift_allocError();
          sub_1D3058338(v33, v42, type metadata accessor for FilePath.ResolutionError);
          v43 = _swift_stdlib_bridgeErrorToNSError();
          sub_1D3065284(v33, type metadata accessor for FilePath.ResolutionError);
          *(v36 + 14) = v43;
          *v270 = v43;
          _os_log_impl(&dword_1D2FD9000, v28, v264, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v36, 0x16u);
          sub_1D2FF14DC(v270, &qword_1EC7493A0, &qword_1D30EF480);
          MEMORY[0x1D38B3760](v270, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v276);
          MEMORY[0x1D38B3760](v276, -1, -1);
          MEMORY[0x1D38B3760](v36, -1, -1);

          sub_1D3065284(v286, type metadata accessor for FilePath.ResolutionError);
          v3 = (v40)(v30, v32);
        }

        else
        {

          sub_1D3065284(v33, type metadata accessor for FilePath.ResolutionError);
          v7 = *v35;
          (*v35)(v31, v32);
          sub_1D3065284(v34, type metadata accessor for FilePath.ResolutionError);
          v3 = (v7)(v30, v32);
        }
      }

      else
      {
        v44 = *(v1 + 448);
        v45 = *(v1 + 456);
        v46 = *(v1 + 328);
        v47 = *(v1 + 336);
        v271 = *(v1 + 312);
        v277 = *(v1 + 320);
        v259 = *(v1 + 776);
        v48 = *(v288 + 296);
        v49 = *(v288 + 152);
        v50 = *(v288 + 144);
        v51 = *(v288 + 64);

        (*(v47 + 32))(v45, v51, v46);
        v282 = *(v49 + 16);
        (v282)(v48, v259, v50);
        v285(v44, v45, v46);
        v1 = v288;
        sub_1D30E8D7C();
        v52 = *(v47 + 8);
        *(v288 + 832) = v52;
        *(v288 + 840) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v260 = v52;
        (v52)(v45, v46);
        sub_1D30E8D8C();
        (*(v49 + 32))(v277, v271, v50);
        if (qword_1EE3133A0 != -1)
        {
          swift_once();
        }

        v53 = *(v288 + 320);
        v54 = *(v288 + 288);
        v55 = *(v288 + 144);
        __swift_project_value_buffer(*(v288 + 608), qword_1EE3133A8);
        v56 = sub_1D30E928C();
        (v282)(v54, v53, v55);
        v57 = sub_1D30E8B1C();
        v58 = os_log_type_enabled(v57, v56);
        v59 = *(v288 + 288);
        v60 = *(v288 + 144);
        v61 = *(v288 + 152);
        if (v58)
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v289[0] = v63;
          *v62 = 136446210;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v64 = sub_1D30E977C();
          v272 = v56;
          v66 = v65;
          v67 = *(v61 + 8);
          v67(v59, v60);
          v68 = sub_1D2FFEA04(v64, v66, v289);

          *(v62 + 4) = v68;
          _os_log_impl(&dword_1D2FD9000, v57, v272, "Item exists at: %{public}s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x1D38B3760](v63, -1, -1);
          MEMORY[0x1D38B3760](v62, -1, -1);
        }

        else
        {

          v67 = *(v61 + 8);
          v67(v59, v60);
        }

        *(v288 + 848) = v67;
        sub_1D3003CF4(*(v288 + 320), 0, *(v288 + 280));
        if (v279)
        {
          v69 = *(v288 + 320);
          v70 = *(v288 + 272);
          v71 = *(v288 + 144);
          v72 = sub_1D30E929C();
          (v282)(v70, v69, v71);
          v73 = v279;
          v74 = sub_1D30E8B1C();

          v75 = os_log_type_enabled(v74, v72);
          v76 = *(v288 + 464);
          v77 = *(v288 + 328);
          v283 = *(v288 + 320);
          v78 = *(v288 + 272);
          v79 = *(v288 + 144);
          if (v75)
          {
            v266 = v72;
            v80 = v67;
            v81 = swift_slowAlloc();
            v278 = v77;
            v82 = swift_slowAlloc();
            v273 = v76;
            v83 = swift_slowAlloc();
            v289[0] = v83;
            *v81 = 136446466;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v84 = sub_1D30E977C();
            v86 = v85;
            v80(v78, v79);
            v87 = sub_1D2FFEA04(v84, v86, v289);

            *(v81 + 4) = v87;
            *(v81 + 12) = 2114;
            v88 = v279;
            v89 = _swift_stdlib_bridgeErrorToNSError();
            *(v81 + 14) = v89;
            *v82 = v89;
            _os_log_impl(&dword_1D2FD9000, v74, v266, "The existence of the item at “%{public}s” couldn’t be checked: %{public}@", v81, 0x16u);
            sub_1D2FF14DC(v82, &qword_1EC7493A0, &qword_1D30EF480);
            MEMORY[0x1D38B3760](v82, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v83);
            MEMORY[0x1D38B3760](v83, -1, -1);
            MEMORY[0x1D38B3760](v81, -1, -1);

            v80(v283, v79);
            v90 = v273;
            v91 = v278;
          }

          else
          {

            v67(v78, v79);
            v67(v283, v79);
            v90 = v76;
            v91 = v77;
          }

          v3 = (v260)(v90, v91);
          v279 = 0;
          v1 = v288;
        }

        else
        {
          v92 = *(v288 + 280);
          v93 = *(v288 + 144);
          v94 = *(v288 + 152) + 8;
          *(v288 + 926) = 0;
          v95 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v96 = sub_1D30E906C();

          v97 = [v95 fileExistsAtPath:v96 isDirectory:v288 + 926];

          *(v288 + 856) = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v67(v92, v93);
          if (v97)
          {
            v98 = *(v288 + 320);
            if (*(v288 + 926))
            {
              v3 = sub_1D3005160(*(v288 + 320));
              *(v288 + 864) = v3;
              isa = v3[2].isa;
              *(v288 + 872) = isa;
              if (!isa)
              {

                v279 = 0;
                goto LABEL_3;
              }

              goto LABEL_75;
            }

            v101 = *(v288 + 264);
            v102 = *(v288 + 144);
            v103 = sub_1D30E92AC();
            (v282)(v101, v98, v102);
            v104 = sub_1D30E8B1C();
            v105 = os_log_type_enabled(v104, v103);
            v106 = *(v288 + 264);
            v107 = *(v288 + 144);
            if (v105)
            {
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v289[0] = v109;
              *v108 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v110 = sub_1D30E977C();
              v280 = v103;
              v111 = v67;
              v113 = v112;
              v111(v106, v107);
              v114 = sub_1D2FFEA04(v110, v113, v289);
              v67 = v111;

              *(v108 + 4) = v114;
              _os_log_impl(&dword_1D2FD9000, v104, v280, "The item at “%{public}s” isn’t a directory; removing it…", v108, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v109);
              MEMORY[0x1D38B3760](v109, -1, -1);
              MEMORY[0x1D38B3760](v108, -1, -1);
            }

            else
            {

              v67(v106, v107);
            }

            sub_1D3009B38(*(v288 + 320));
            v115 = *(v288 + 464);
            v116 = *(v288 + 328);
            v67(*(v288 + 320), *(v288 + 144));
            v3 = (v260)(v115, v116);
            v279 = 0;
            *(v288 + 924) = 1;
          }

          else
          {
            v99 = *(v288 + 464);
            v100 = *(v288 + 328);
            v67(*(v288 + 320), *(v288 + 144));
            v3 = (v260)(v99, v100);
            v279 = 0;
          }
        }
      }
    }

    v121 = sub_1D30E8B1C();
    v122 = sub_1D30E92BC();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_1D2FD9000, v121, v122, "Checking for inactive staging directories…", v123, 2u);
      MEMORY[0x1D38B3760](v123, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v124 = __swift_project_value_buffer(*(v1 + 144), qword_1EE3152D0);
    v125 = sub_1D3005160(v124);
    if (v279)
    {
      v126 = sub_1D30E929C();
      v127 = v279;
      v128 = sub_1D30E8B1C();

      if (os_log_type_enabled(v128, v126))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v129 = 138543362;
        v131 = v279;
        v132 = _swift_stdlib_bridgeErrorToNSError();
        *(v129 + 4) = v132;
        *v130 = v132;
        _os_log_impl(&dword_1D2FD9000, v128, v126, "Checking for inactive staging directories failed: %{public}@", v129, 0xCu);
        sub_1D2FF14DC(v130, &qword_1EC7493A0, &qword_1D30EF480);
        MEMORY[0x1D38B3760](v130, -1, -1);
        MEMORY[0x1D38B3760](v129, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v133 = v125[2].isa;
      if (v133)
      {
        v134 = *(v1 + 336);
        v136 = *(v134 + 16);
        v134 += 16;
        v135 = v136;
        v137 = v125 + ((*(v134 + 64) + 32) & ~*(v134 + 64));
        v258 = (v134 + 32);
        v252 = (v134 + 16);
        v138 = *(v1 + 152);
        v255 = (v138 + 16);
        v274 = (v134 - 8);
        v251 = (v138 + 32);
        v250 = *(v1 + 96);
        v257 = *(v134 + 56);
        v265 = (v138 + 8);
        v281 = v136;
        v253 = v124;
        do
        {
          v284 = v137;
          v287 = v133;
          v149 = *(v1 + 328);
          v150 = *(v1 + 56);
          (v135)(*(v1 + 408));
          v151 = sub_1D30E8D4C();
          v153 = v152;

          sub_1D30E8D6C();
          if ((*v258)(v150, 1, v149) == 1)
          {
            v154 = *(v1 + 408);
            v155 = *(v1 + 392);
            v156 = *(v1 + 328);
            v157 = *(v1 + 104);
            v158 = *(v288 + 96);
            v159 = *(v288 + 88);
            v160 = *(v288 + 80);
            sub_1D2FF14DC(*(v288 + 56), &qword_1EC749940, &qword_1D30F1B10);
            *v158 = v151;
            *(v250 + 8) = v153;
            swift_storeEnumTagMultiPayload();
            sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
            swift_willThrowTypedImpl();
            v161 = v158;
            v1 = v288;
            sub_1D3056830(v161, v157, type metadata accessor for FilePath.ResolutionError);
            sub_1D3056830(v157, v159, type metadata accessor for FilePath.ResolutionError);
            v162 = sub_1D30E929C();
            v281(v155, v154, v156);
            sub_1D3058338(v159, v160, type metadata accessor for FilePath.ResolutionError);
            v163 = sub_1D30E8B1C();
            v164 = os_log_type_enabled(v163, v162);
            v267 = *(v288 + 408);
            v165 = *(v288 + 392);
            v166 = *(v288 + 328);
            v167 = *(v288 + 80);
            v261 = *(v288 + 88);
            if (v164)
            {
              v139 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v249 = swift_slowAlloc();
              v289[0] = v249;
              *v139 = 136446466;
              sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
              v141 = sub_1D30E977C();
              v143 = v142;
              v248 = *v274;
              (*v274)(v165, v166);
              v144 = sub_1D2FFEA04(v141, v143, v289);

              *(v139 + 4) = v144;
              *(v139 + 12) = 2114;
              swift_allocError();
              sub_1D3058338(v167, v145, type metadata accessor for FilePath.ResolutionError);
              v146 = _swift_stdlib_bridgeErrorToNSError();
              sub_1D3065284(v167, type metadata accessor for FilePath.ResolutionError);
              *(v139 + 14) = v146;
              *v140 = v146;
              _os_log_impl(&dword_1D2FD9000, v163, v162, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v139, 0x16u);
              sub_1D2FF14DC(v140, &qword_1EC7493A0, &qword_1D30EF480);
              v147 = v140;
              v1 = v288;
              MEMORY[0x1D38B3760](v147, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v249);
              v135 = v281;
              MEMORY[0x1D38B3760](v249, -1, -1);
              MEMORY[0x1D38B3760](v139, -1, -1);

              sub_1D3065284(v261, type metadata accessor for FilePath.ResolutionError);
              v248(v267, v166);
            }

            else
            {
              v135 = v281;

              sub_1D3065284(v167, type metadata accessor for FilePath.ResolutionError);
              v168 = *v274;
              (*v274)(v165, v166);
              sub_1D3065284(v261, type metadata accessor for FilePath.ResolutionError);
              v168(v267, v166);
            }

            v148 = v287;
          }

          else
          {
            v169 = *(v1 + 448);
            v170 = *(v1 + 400);
            v171 = *(v1 + 328);
            v172 = *(v1 + 296);
            v173 = *(v1 + 248);
            v268 = *(v1 + 256);
            v174 = *(v1 + 144);
            v175 = *(v1 + 56);

            (*v252)(v170, v175, v171);
            v262 = *v255;
            (*v255)(v172, v253, v174);
            v281(v169, v170, v171);
            sub_1D30E8D7C();
            v256 = *v274;
            (*v274)(v170, v171);
            sub_1D30E8D8C();
            (*v251)(v268, v173, v174);
            if (qword_1EE3133A0 != -1)
            {
              swift_once();
            }

            v176 = *(v1 + 256);
            v177 = *(v1 + 232);
            v178 = *(v1 + 144);
            __swift_project_value_buffer(*(v1 + 608), qword_1EE3133A8);
            v179 = sub_1D30E928C();
            v262(v177, v176, v178);
            v180 = sub_1D30E8B1C();
            v181 = os_log_type_enabled(v180, v179);
            v182 = *(v1 + 232);
            v183 = *(v1 + 144);
            if (v181)
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v289[0] = v185;
              *v184 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v186 = sub_1D30E977C();
              v188 = v187;
              v269 = *v265;
              (*v265)(v182, v183);
              v189 = sub_1D2FFEA04(v186, v188, v289);

              *(v184 + 4) = v189;
              _os_log_impl(&dword_1D2FD9000, v180, v179, "Item exists at: %{public}s", v184, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v185);
              MEMORY[0x1D38B3760](v185, -1, -1);
              MEMORY[0x1D38B3760](v184, -1, -1);
            }

            else
            {

              v269 = *v265;
              (*v265)(v182, v183);
            }

            sub_1D3003CF4(*(v288 + 256), 0, *(v288 + 224));
            v190 = *(v288 + 224);
            v191 = *(v288 + 144);
            *(v288 + 925) = 0;
            v192 = [objc_opt_self() defaultManager];
            sub_1D30E8D3C();
            v193 = sub_1D30E906C();

            v194 = [v192 fileExistsAtPath:v193 isDirectory:v288 + 925];

            v195 = v269;
            v269(v190, v191);
            if (v194)
            {
              v196 = *(v288 + 256);
              v197 = *(v288 + 144);
              if (*(v288 + 925))
              {
                v198 = *(v288 + 208);
                v199 = sub_1D30E927C();
                v262(v198, v196, v197);
                v200 = sub_1D30E8B1C();
                v201 = os_log_type_enabled(v200, v199);
                v202 = *(v288 + 208);
                v203 = *(v288 + 144);
                if (v201)
                {
                  v204 = swift_slowAlloc();
                  v205 = swift_slowAlloc();
                  v289[0] = v205;
                  *v204 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                  v206 = sub_1D30E977C();
                  v208 = v207;
                  v269(v202, v203);
                  v209 = sub_1D2FFEA04(v206, v208, v289);

                  *(v204 + 4) = v209;
                  _os_log_impl(&dword_1D2FD9000, v200, v199, "Checking whether the staging directory at “%{public}s” is inactive…", v204, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v205);
                  v210 = v205;
                  v195 = v269;
                  MEMORY[0x1D38B3760](v210, -1, -1);
                  MEMORY[0x1D38B3760](v204, -1, -1);
                }

                else
                {

                  v269(v202, v203);
                }

                sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
                sub_1D30E8D4C();
                v225 = sub_1D30E906C();

                v226 = [objc_opt_self() predicateMatchingBundleIdentifier_];

                v227 = sub_1D30E6D18(v226);
                v1 = v288;
                v281(*(v1 + 384), *(v1 + 408), *(v1 + 328));
                v228 = sub_1D30E8B1C();
                v229 = sub_1D30E92BC();
                v230 = os_log_type_enabled(v228, v229);
                v231 = *(v288 + 408);
                v232 = *(v288 + 384);
                v233 = *(v288 + 328);
                v234 = *(v288 + 256);
                v235 = *(v288 + 144);
                if (v230)
                {
                  v263 = *(v288 + 144);
                  v236 = swift_slowAlloc();
                  v237 = swift_slowAlloc();
                  v289[0] = v237;
                  *v236 = 136446210;
                  sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
                  v238 = sub_1D30E977C();
                  v254 = v231;
                  v240 = v239;
                  v256(v232, v233);
                  v241 = sub_1D2FFEA04(v238, v240, v289);

                  *(v236 + 4) = v241;
                  _os_log_impl(&dword_1D2FD9000, v228, v229, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v236, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v237);
                  v242 = v237;
                  v1 = v288;
                  MEMORY[0x1D38B3760](v242, -1, -1);
                  MEMORY[0x1D38B3760](v236, -1, -1);

                  v195(v234, v263);
                  v256(v254, v233);
                }

                else
                {

                  v256(v232, v233);
                  v195(v234, v235);
                  v256(v231, v233);
                }
              }

              else
              {
                v213 = *(v288 + 200);
                v214 = sub_1D30E92AC();
                v262(v213, v196, v197);
                v215 = sub_1D30E8B1C();
                v216 = os_log_type_enabled(v215, v214);
                v217 = *(v288 + 200);
                v218 = *(v288 + 144);
                if (v216)
                {
                  v219 = swift_slowAlloc();
                  v220 = swift_slowAlloc();
                  v289[0] = v220;
                  *v219 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                  v221 = sub_1D30E977C();
                  v223 = v222;
                  v269(v217, v218);
                  v224 = sub_1D2FFEA04(v221, v223, v289);

                  *(v219 + 4) = v224;
                  _os_log_impl(&dword_1D2FD9000, v215, v214, "The item at “%{public}s” isn’t a directory; removing it…", v219, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v220);
                  MEMORY[0x1D38B3760](v220, -1, -1);
                  MEMORY[0x1D38B3760](v219, -1, -1);
                }

                else
                {

                  v269(v217, v218);
                }

                v1 = v288;
                sub_1D3009B38(*(v288 + 256));
                v243 = *(v288 + 408);
                v244 = *(v288 + 328);
                v269(*(v1 + 256), *(v1 + 144));
                v256(v243, v244);
                *(v288 + 924) = 1;
              }
            }

            else
            {
              v211 = *(v288 + 408);
              v212 = *(v288 + 328);
              v269(*(v288 + 256), *(v288 + 144));
              v256(v211, v212);
              v1 = v288;
            }

            v148 = v287;
            v135 = v281;
          }

          v137 = &v284[v257];
          v133 = (v148 - 1);
        }

        while (v133);
      }
    }

    v247 = *(v288 + 924);

    v245 = *(v288 + 8);

    return v245(v247);
  }

  else
  {
    v118 = *(v0 + 904);
LABEL_31:
    *(v1 + 888) = v2;
    *(v1 + 880) = v118;
    (*(v1 + 816))(*(v1 + 432), v3 + ((*(v1 + 920) + 32) & ~*(v1 + 920)) + *(v1 + 808) * v2, *(v1 + 328));
    *(v1 + 896) = sub_1D30E91EC();
    v120 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v120, v119);
  }
}

uint64_t sub_1D30B7E7C(uint64_t a1)
{
  v290 = v1;
  v289[1] = *MEMORY[0x1E69E9840];
  v2 = v1[113];
  v3 = v1[102];
  v4 = v1[58];
  v6 = v1[53];
  v5 = v1[54];
  v7 = v1[52];
  v8 = v1[41];
  v9 = sub_1D30E929C();
  v3(v6, v5, v8);
  v3(v7, v4, v8);
  v10 = v2;
  v11 = sub_1D30E8B1C();

  v284 = v9;
  v12 = os_log_type_enabled(v11, v9);
  v13 = v1[113];
  v14 = v1[104];
  v15 = v1[53];
  v16 = v1[54];
  v17 = v1[52];
  v288 = v1;
  v18 = v1[41];
  if (v12)
  {
    v268 = v1[113];
    v19 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v289[0] = v275;
    *v19 = 136446722;
    sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
    v280 = v16;
    v20 = sub_1D30E977C();
    v22 = v21;
    v14(v15, v18);
    v23 = sub_1D2FFEA04(v20, v22, v289);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = sub_1D30E977C();
    v26 = v25;
    v14(v17, v18);
    v27 = sub_1D2FFEA04(v24, v26, v289);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2114;
    v28 = v268;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v29;
    *v270 = v29;
    _os_log_impl(&dword_1D2FD9000, v11, v284, "Checking whether the asset pack with the root-directory component “%{public}s” for the app with the bundle ID “%{public}s” is orphaned failed: %{public}@", v19, 0x20u);
    sub_1D2FF14DC(v270, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v270, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v275, -1, -1);
    MEMORY[0x1D38B3760](v19, -1, -1);

    v30 = v280;
  }

  else
  {

    v14(v17, v18);
    v14(v15, v18);
    v30 = v16;
  }

  v14(v30, v18);
  v31 = v288;
  v32 = v288[111] + 1;
  v33 = v288[108];
  if (v32 == v288[109])
  {
LABEL_5:

    v34 = v31[104];
    v35 = v31[58];
    v36 = v31[41];
    (v31[106])(v31[40], v31[18]);
    v33 = v34(v35, v36);
    while (1)
    {
      v38 = v31[100] + 1;
      if (v38 == v31[99])
      {
        break;
      }

      v31[100] = v38;
      v39 = v31[98];
      if (v38 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v40 = v31[58];
      v41 = v31[41];
      v42 = v31[42];
      v43 = v31[8];
      v44 = *(v42 + 16);
      v45 = v39 + ((*(v31 + 920) + 32) & ~*(v31 + 920));
      v46 = *(v42 + 72);
      v31[101] = v46;
      v31[102] = v44;
      v31[103] = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v285 = v44;
      (v44)(v40, v45 + v46 * v38, v41);
      v47 = sub_1D30E8D4C();
      v49 = v48;

      sub_1D30E8D6C();
      if ((*(v42 + 48))(v43, 1, v41) == 1)
      {
        v50 = v31[58];
        v51 = v31[55];
        v52 = v31[41];
        v53 = v31[17];
        v54 = v288[16];
        v55 = v288[15];
        v276 = v288[14];
        sub_1D2FF14DC(v288[8], &qword_1EC749940, &qword_1D30F1B10);
        *v54 = v47;
        v54[1] = v49;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
        swift_willThrowTypedImpl();
        v56 = v54;
        v31 = v288;
        sub_1D3056830(v56, v53, type metadata accessor for FilePath.ResolutionError);
        sub_1D3056830(v53, v55, type metadata accessor for FilePath.ResolutionError);
        v57 = sub_1D30E929C();
        (v285)(v51, v50, v52);
        sub_1D3058338(v55, v276, type metadata accessor for FilePath.ResolutionError);
        v58 = sub_1D30E8B1C();
        v59 = os_log_type_enabled(v58, v57);
        v60 = v288[58];
        v61 = v288[55];
        v62 = v288[41];
        v63 = v288[14];
        v286 = v288[15];
        v64 = (v288[42] + 8);
        if (v59)
        {
          v281 = v288[58];
          v65 = swift_slowAlloc();
          v271 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          v289[0] = v277;
          *v65 = 136446466;
          sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
          v66 = sub_1D30E977C();
          v264 = v57;
          v68 = v67;
          v69 = *v64;
          (*v64)(v61, v62);
          v70 = v66;
          v31 = v288;
          v71 = sub_1D2FFEA04(v70, v68, v289);

          *(v65 + 4) = v71;
          *(v65 + 12) = 2114;
          swift_allocError();
          sub_1D3058338(v63, v72, type metadata accessor for FilePath.ResolutionError);
          v73 = _swift_stdlib_bridgeErrorToNSError();
          sub_1D3065284(v63, type metadata accessor for FilePath.ResolutionError);
          *(v65 + 14) = v73;
          *v271 = v73;
          _os_log_impl(&dword_1D2FD9000, v58, v264, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v65, 0x16u);
          sub_1D2FF14DC(v271, &qword_1EC7493A0, &qword_1D30EF480);
          MEMORY[0x1D38B3760](v271, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v277);
          MEMORY[0x1D38B3760](v277, -1, -1);
          MEMORY[0x1D38B3760](v65, -1, -1);

          sub_1D3065284(v286, type metadata accessor for FilePath.ResolutionError);
          v33 = (v69)(v281, v62);
        }

        else
        {

          sub_1D3065284(v63, type metadata accessor for FilePath.ResolutionError);
          v37 = *v64;
          (*v64)(v61, v62);
          sub_1D3065284(v286, type metadata accessor for FilePath.ResolutionError);
          v33 = (v37)(v60, v62);
        }
      }

      else
      {
        v74 = v31[56];
        v75 = v31[57];
        v76 = v31[41];
        v77 = v31[42];
        v272 = v31[39];
        v278 = v31[40];
        v261 = v31[97];
        v78 = v288[37];
        v79 = v288[19];
        v80 = v288[18];
        v81 = v288[8];

        (*(v77 + 32))(v75, v81, v76);
        v282 = *(v79 + 16);
        (v282)(v78, v261, v80);
        (v285)(v74, v75, v76);
        v31 = v288;
        sub_1D30E8D7C();
        v82 = *(v77 + 8);
        v288[104] = v82;
        v288[105] = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v262 = v82;
        v82(v75, v76);
        sub_1D30E8D8C();
        (*(v79 + 32))(v278, v272, v80);
        if (qword_1EE3133A0 != -1)
        {
          swift_once();
        }

        v83 = v288[40];
        v84 = v288[36];
        v85 = v288[18];
        __swift_project_value_buffer(v288[76], qword_1EE3133A8);
        v86 = sub_1D30E928C();
        (v282)(v84, v83, v85);
        v87 = sub_1D30E8B1C();
        v88 = os_log_type_enabled(v87, v86);
        v89 = v288[36];
        v90 = v288[18];
        v91 = v288[19];
        if (v88)
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v289[0] = v93;
          *v92 = 136446210;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v94 = sub_1D30E977C();
          v273 = v86;
          v96 = v95;
          v97 = *(v91 + 8);
          v97(v89, v90);
          v98 = sub_1D2FFEA04(v94, v96, v289);

          *(v92 + 4) = v98;
          _os_log_impl(&dword_1D2FD9000, v87, v273, "Item exists at: %{public}s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x1D38B3760](v93, -1, -1);
          MEMORY[0x1D38B3760](v92, -1, -1);
        }

        else
        {

          v97 = *(v91 + 8);
          v97(v89, v90);
        }

        v288[106] = v97;
        sub_1D3003CF4(v288[40], 0, v288[35]);
        v99 = v288[35];
        v100 = v288[18];
        v101 = v288[19] + 8;
        *(v288 + 926) = 0;
        v102 = [objc_opt_self() defaultManager];
        sub_1D30E8D3C();
        v103 = sub_1D30E906C();

        v104 = [v102 fileExistsAtPath:v103 isDirectory:v288 + 926];

        v288[107] = v101 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v97(v99, v100);
        if (v104)
        {
          v105 = v288[40];
          if (*(v288 + 926))
          {
            v33 = sub_1D3005160(v288[40]);
            v288[108] = v33;
            isa = v33[2].isa;
            v288[109] = isa;
            if (!isa)
            {
              goto LABEL_5;
            }

LABEL_63:
            v32 = 0;
            goto LABEL_64;
          }

          v108 = v288[33];
          v109 = v288[18];
          v110 = sub_1D30E92AC();
          (v282)(v108, v105, v109);
          v111 = sub_1D30E8B1C();
          v112 = os_log_type_enabled(v111, v110);
          v113 = v288[33];
          v114 = v288[18];
          if (v112)
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v289[0] = v116;
            *v115 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v117 = sub_1D30E977C();
            v274 = v110;
            v118 = v97;
            v120 = v119;
            v118(v113, v114);
            v121 = sub_1D2FFEA04(v117, v120, v289);
            v97 = v118;

            *(v115 + 4) = v121;
            _os_log_impl(&dword_1D2FD9000, v111, v274, "The item at “%{public}s” isn’t a directory; removing it…", v115, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v116);
            MEMORY[0x1D38B3760](v116, -1, -1);
            MEMORY[0x1D38B3760](v115, -1, -1);
          }

          else
          {

            v97(v113, v114);
          }

          sub_1D3009B38(v288[40]);
          v122 = v288[58];
          v123 = v288[41];
          v97(v288[40], v288[18]);
          v33 = v262(v122, v123);
          *(v288 + 924) = 1;
        }

        else
        {
          v106 = v288[58];
          v107 = v288[41];
          v97(v288[40], v288[18]);
          v33 = v262(v106, v107);
        }
      }
    }

    v125 = sub_1D30E8B1C();
    v126 = sub_1D30E92BC();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_1D2FD9000, v125, v126, "Checking for inactive staging directories…", v127, 2u);
      MEMORY[0x1D38B3760](v127, -1, -1);
    }

    if (qword_1EC749040 != -1)
    {
      swift_once();
    }

    v128 = __swift_project_value_buffer(v31[18], qword_1EE3152D0);
    v129 = sub_1D3005160(v128);
    v130 = v129[2].isa;
    if (v130)
    {
      v131 = v31[42];
      v133 = *(v131 + 16);
      v131 += 16;
      v132 = v133;
      v134 = v129 + ((*(v131 + 64) + 32) & ~*(v131 + 64));
      v257 = (v131 + 32);
      v251 = (v131 + 16);
      v135 = v31[19];
      v254 = (v135 + 16);
      v269 = (v131 - 8);
      v250 = (v135 + 32);
      v249 = v31[12];
      v256 = *(v131 + 56);
      v263 = (v135 + 8);
      v279 = v133;
      v252 = v128;
      do
      {
        v283 = v134;
        v287 = v130;
        v146 = v31[41];
        v147 = v31[7];
        (v132)(v31[51]);
        v148 = sub_1D30E8D4C();
        v150 = v149;

        sub_1D30E8D6C();
        if ((*v257)(v147, 1, v146) == 1)
        {
          v151 = v31[51];
          v152 = v31[49];
          v153 = v31[41];
          v154 = v31[13];
          v155 = v288[12];
          v156 = v288[11];
          v157 = v288[10];
          sub_1D2FF14DC(v288[7], &qword_1EC749940, &qword_1D30F1B10);
          *v155 = v148;
          *(v249 + 8) = v150;
          swift_storeEnumTagMultiPayload();
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
          swift_willThrowTypedImpl();
          v158 = v155;
          v31 = v288;
          sub_1D3056830(v158, v154, type metadata accessor for FilePath.ResolutionError);
          sub_1D3056830(v154, v156, type metadata accessor for FilePath.ResolutionError);
          v159 = sub_1D30E929C();
          v279(v152, v151, v153);
          sub_1D3058338(v156, v157, type metadata accessor for FilePath.ResolutionError);
          v160 = sub_1D30E8B1C();
          v161 = os_log_type_enabled(v160, v159);
          v265 = v288[51];
          v162 = v288[49];
          v163 = v288[41];
          v164 = v288[10];
          v258 = v288[11];
          if (v161)
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v248 = swift_slowAlloc();
            v289[0] = v248;
            *v136 = 136446466;
            sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
            v138 = sub_1D30E977C();
            v140 = v139;
            v247 = *v269;
            (*v269)(v162, v163);
            v141 = sub_1D2FFEA04(v138, v140, v289);

            *(v136 + 4) = v141;
            *(v136 + 12) = 2114;
            swift_allocError();
            sub_1D3058338(v164, v142, type metadata accessor for FilePath.ResolutionError);
            v143 = _swift_stdlib_bridgeErrorToNSError();
            sub_1D3065284(v164, type metadata accessor for FilePath.ResolutionError);
            *(v136 + 14) = v143;
            *v137 = v143;
            _os_log_impl(&dword_1D2FD9000, v160, v159, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v136, 0x16u);
            sub_1D2FF14DC(v137, &qword_1EC7493A0, &qword_1D30EF480);
            v144 = v137;
            v31 = v288;
            MEMORY[0x1D38B3760](v144, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v248);
            v132 = v279;
            MEMORY[0x1D38B3760](v248, -1, -1);
            MEMORY[0x1D38B3760](v136, -1, -1);

            sub_1D3065284(v258, type metadata accessor for FilePath.ResolutionError);
            v247(v265, v163);
          }

          else
          {
            v132 = v279;

            sub_1D3065284(v164, type metadata accessor for FilePath.ResolutionError);
            v165 = *v269;
            (*v269)(v162, v163);
            sub_1D3065284(v258, type metadata accessor for FilePath.ResolutionError);
            v165(v265, v163);
          }

          v145 = v287;
        }

        else
        {
          v166 = v31[56];
          v167 = v31[50];
          v168 = v31[41];
          v169 = v31[37];
          v170 = v31[31];
          v266 = v31[32];
          v171 = v31[18];
          v172 = v31[7];

          (*v251)(v167, v172, v168);
          v259 = *v254;
          (*v254)(v169, v252, v171);
          v279(v166, v167, v168);
          sub_1D30E8D7C();
          v255 = *v269;
          (*v269)(v167, v168);
          sub_1D30E8D8C();
          (*v250)(v266, v170, v171);
          if (qword_1EE3133A0 != -1)
          {
            swift_once();
          }

          v173 = v31[32];
          v174 = v31[29];
          v175 = v31[18];
          __swift_project_value_buffer(v31[76], qword_1EE3133A8);
          v176 = sub_1D30E928C();
          v259(v174, v173, v175);
          v177 = sub_1D30E8B1C();
          v178 = os_log_type_enabled(v177, v176);
          v179 = v31[29];
          v180 = v31[18];
          if (v178)
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v289[0] = v182;
            *v181 = 136446210;
            sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
            v183 = sub_1D30E977C();
            v185 = v184;
            v267 = *v263;
            (*v263)(v179, v180);
            v186 = sub_1D2FFEA04(v183, v185, v289);

            *(v181 + 4) = v186;
            _os_log_impl(&dword_1D2FD9000, v177, v176, "Item exists at: %{public}s", v181, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v182);
            MEMORY[0x1D38B3760](v182, -1, -1);
            MEMORY[0x1D38B3760](v181, -1, -1);
          }

          else
          {

            v267 = *v263;
            (*v263)(v179, v180);
          }

          sub_1D3003CF4(v288[32], 0, v288[28]);
          v187 = v288[28];
          v188 = v288[18];
          *(v288 + 925) = 0;
          v189 = [objc_opt_self() defaultManager];
          sub_1D30E8D3C();
          v190 = sub_1D30E906C();

          v191 = [v189 fileExistsAtPath:v190 isDirectory:v288 + 925];

          v192 = v267;
          v267(v187, v188);
          if (v191)
          {
            v193 = v288[32];
            v194 = v288[18];
            if (*(v288 + 925))
            {
              v195 = v288[26];
              v196 = sub_1D30E927C();
              v259(v195, v193, v194);
              v197 = sub_1D30E8B1C();
              v198 = os_log_type_enabled(v197, v196);
              v199 = v288[26];
              v200 = v288[18];
              if (v198)
              {
                v201 = swift_slowAlloc();
                v202 = swift_slowAlloc();
                v289[0] = v202;
                *v201 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v203 = sub_1D30E977C();
                v205 = v204;
                v267(v199, v200);
                v206 = sub_1D2FFEA04(v203, v205, v289);

                *(v201 + 4) = v206;
                _os_log_impl(&dword_1D2FD9000, v197, v196, "Checking whether the staging directory at “%{public}s” is inactive…", v201, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v202);
                v207 = v202;
                v192 = v267;
                MEMORY[0x1D38B3760](v207, -1, -1);
                MEMORY[0x1D38B3760](v201, -1, -1);
              }

              else
              {

                v267(v199, v200);
              }

              sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
              sub_1D30E8D4C();
              v222 = sub_1D30E906C();

              v223 = [objc_opt_self() predicateMatchingBundleIdentifier_];

              v224 = sub_1D30E6D18(v223);
              v31 = v288;
              v279(v31[48], v31[51], v31[41]);
              v225 = sub_1D30E8B1C();
              v226 = sub_1D30E92BC();
              v227 = os_log_type_enabled(v225, v226);
              v228 = v288[51];
              v229 = v288[48];
              v230 = v288[41];
              v231 = v288[32];
              v232 = v288[18];
              if (v227)
              {
                v260 = v288[18];
                v233 = swift_slowAlloc();
                v234 = swift_slowAlloc();
                v289[0] = v234;
                *v233 = 136446210;
                sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
                v235 = sub_1D30E977C();
                v253 = v228;
                v237 = v236;
                v255(v229, v230);
                v238 = sub_1D2FFEA04(v235, v237, v289);

                *(v233 + 4) = v238;
                _os_log_impl(&dword_1D2FD9000, v225, v226, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v233, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v234);
                v239 = v234;
                v31 = v288;
                MEMORY[0x1D38B3760](v239, -1, -1);
                MEMORY[0x1D38B3760](v233, -1, -1);

                v192(v231, v260);
                v255(v253, v230);
              }

              else
              {

                v255(v229, v230);
                v192(v231, v232);
                v255(v228, v230);
              }
            }

            else
            {
              v210 = v288[25];
              v211 = sub_1D30E92AC();
              v259(v210, v193, v194);
              v212 = sub_1D30E8B1C();
              v213 = os_log_type_enabled(v212, v211);
              v214 = v288[25];
              v215 = v288[18];
              if (v213)
              {
                v216 = swift_slowAlloc();
                v217 = swift_slowAlloc();
                v289[0] = v217;
                *v216 = 136446210;
                sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                v218 = sub_1D30E977C();
                v220 = v219;
                v267(v214, v215);
                v221 = sub_1D2FFEA04(v218, v220, v289);

                *(v216 + 4) = v221;
                _os_log_impl(&dword_1D2FD9000, v212, v211, "The item at “%{public}s” isn’t a directory; removing it…", v216, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v217);
                MEMORY[0x1D38B3760](v217, -1, -1);
                MEMORY[0x1D38B3760](v216, -1, -1);
              }

              else
              {

                v267(v214, v215);
              }

              v31 = v288;
              sub_1D3009B38(v288[32]);
              v240 = v288[51];
              v241 = v288[41];
              v267(v31[32], v31[18]);
              v255(v240, v241);
              *(v288 + 924) = 1;
            }
          }

          else
          {
            v208 = v288[51];
            v209 = v288[41];
            v267(v288[32], v288[18]);
            v255(v208, v209);
            v31 = v288;
          }

          v145 = v287;
          v132 = v279;
        }

        v134 = &v283[v256];
        v130 = (v145 - 1);
      }

      while (v130);
    }

    v246 = *(v288 + 924);

    v242 = v288[1];

    return v242(v246);
  }

  else
  {
LABEL_64:
    v31[111] = v32;
    v31[110] = 0;
    (v31[102])(v31[54], v33 + ((*(v31 + 920) + 32) & ~*(v31 + 920)) + v31[101] * v32, v31[41]);
    v31[112] = sub_1D30E91EC();
    v245 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v245, v244);
  }
}

uint64_t sub_1D30BBA94()
{
  v339 = v0;
  v1 = v0;
  v338[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 760);
  v3 = *(v0 + 600);
  v4 = *(v0 + 576);

  v5 = sub_1D30E929C();
  sub_1D3058338(v3, v4, type metadata accessor for LicenseRecord.StaticRepresentation);
  v6 = v2;
  v7 = sub_1D30E8B1C();

  v8 = os_log_type_enabled(v7, v5);
  v9 = *(v0 + 760);
  v10 = *(v0 + 728);
  v11 = *(v0 + 600);
  v12 = v1[72];
  v13 = v1[69];
  v14 = v1[66];
  v337 = v1;
  if (v8)
  {
    v330 = v5;
    v15 = swift_slowAlloc();
    v323 = swift_slowAlloc();
    *v15 = 134218242;
    v16 = v11;
    v17 = *v12;
    sub_1D3065284(v12, type metadata accessor for LicenseRecord.StaticRepresentation);
    *(v15 + 4) = v17;
    v11 = v16;
    *(v15 + 12) = 2114;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v323 = v19;
    _os_log_impl(&dword_1D2FD9000, v7, v330, "A timeout error couldn’t be reported for the license with the ID “%llu”: %{public}@", v15, 0x16u);
    sub_1D2FF14DC(v323, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v323, -1, -1);
    MEMORY[0x1D38B3760](v15, -1, -1);
  }

  else
  {
    sub_1D3065284(v12, type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  v10(v13, v14);
  sub_1D3065284(v11, type metadata accessor for LicenseRecord.StaticRepresentation);
  v316 = *(v1 + 927);
  v20 = v1[90] + 1;
  if (v20 == v1[88])
  {
LABEL_14:
    *(v1 + 924) = v316;

    v43 = sub_1D30E8B1C();
    v44 = sub_1D30E92BC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1D2FD9000, v43, v44, "Checking for orphaned asset packs…", v45, 2u);
      MEMORY[0x1D38B3760](v45, -1, -1);
    }

    v46 = v1[5];

    v1[96] = *(v46 + 16);
    if (qword_1EC749038 != -1)
    {
LABEL_85:
      swift_once();
    }

    v47 = __swift_project_value_buffer(v1[18], qword_1EC75A8D8);
    v1[97] = v47;
    v48 = sub_1D3005160(v47);
    v1[98] = v48;
    isa = v48[2].isa;
    v1[99] = isa;
    if (!isa)
    {
LABEL_42:

      v157 = sub_1D30E8B1C();
      v158 = sub_1D30E92BC();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        *v159 = 0;
        _os_log_impl(&dword_1D2FD9000, v157, v158, "Checking for inactive staging directories…", v159, 2u);
        MEMORY[0x1D38B3760](v159, -1, -1);
      }

      if (qword_1EC749040 != -1)
      {
        swift_once();
      }

      v160 = __swift_project_value_buffer(v1[18], qword_1EE3152D0);
      v161 = sub_1D3005160(v160);
      v162 = v161[2].isa;
      if (v162)
      {
        v163 = v1[42];
        v164 = *(v163 + 16);
        v163 += 16;
        v315 = v164;
        v165 = v161 + ((*(v163 + 64) + 32) & ~*(v163 + 64));
        v308 = (v163 + 32);
        v166 = v1[19];
        v298 = (v166 + 16);
        v318 = (v163 - 8);
        v295 = (v166 + 32);
        v296 = (v163 + 16);
        v309 = (v166 + 8);
        v294 = v1[12];
        v307 = *(v163 + 56);
        v297 = v160;
        do
        {
          v329 = v165;
          v336 = v162;
          v176 = v1[41];
          v177 = v1[7];
          (v315)(v1[51]);
          v178 = sub_1D30E8D4C();
          v180 = v179;

          sub_1D30E8D6C();
          if ((*v308)(v177, 1, v176) == 1)
          {
            v181 = v1[51];
            v182 = v1[49];
            v183 = v1[41];
            v184 = v337[13];
            v185 = v337[12];
            v186 = v337[11];
            v301 = v337[10];
            sub_1D2FF14DC(v337[7], &qword_1EC749940, &qword_1D30F1B10);
            *v185 = v178;
            *(v294 + 8) = v180;
            swift_storeEnumTagMultiPayload();
            sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
            swift_willThrowTypedImpl();
            sub_1D3056830(v185, v184, type metadata accessor for FilePath.ResolutionError);
            v187 = v184;
            v1 = v337;
            sub_1D3056830(v187, v186, type metadata accessor for FilePath.ResolutionError);
            v188 = sub_1D30E929C();
            v315(v182, v181, v183);
            sub_1D3058338(v186, v301, type metadata accessor for FilePath.ResolutionError);
            v189 = sub_1D30E8B1C();
            v299 = v188;
            v190 = os_log_type_enabled(v189, v188);
            v312 = v337[51];
            v191 = v337[49];
            v192 = v337[41];
            v193 = v337[10];
            v302 = v337[11];
            if (v190)
            {
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              v292 = swift_slowAlloc();
              v338[0] = v292;
              *v167 = 136446466;
              sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
              v169 = sub_1D30E977C();
              v171 = v170;
              log = *v318;
              (*v318)(v191, v192);
              v172 = sub_1D2FFEA04(v169, v171, v338);

              *(v167 + 4) = v172;
              *(v167 + 12) = 2114;
              swift_allocError();
              sub_1D3058338(v193, v173, type metadata accessor for FilePath.ResolutionError);
              v174 = _swift_stdlib_bridgeErrorToNSError();
              sub_1D3065284(v193, type metadata accessor for FilePath.ResolutionError);
              *(v167 + 14) = v174;
              *v168 = v174;
              _os_log_impl(&dword_1D2FD9000, v189, v299, "The path to the staging directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v167, 0x16u);
              sub_1D2FF14DC(v168, &qword_1EC7493A0, &qword_1D30EF480);
              v1 = v337;
              MEMORY[0x1D38B3760](v168, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v292);
              MEMORY[0x1D38B3760](v292, -1, -1);
              MEMORY[0x1D38B3760](v167, -1, -1);

              sub_1D3065284(v302, type metadata accessor for FilePath.ResolutionError);
              (log)(v312, v192);
            }

            else
            {

              sub_1D3065284(v193, type metadata accessor for FilePath.ResolutionError);
              v194 = *v318;
              (*v318)(v191, v192);
              sub_1D3065284(v302, type metadata accessor for FilePath.ResolutionError);
              v194(v312, v192);
            }

            v175 = v336;
          }

          else
          {
            v195 = v1[56];
            v196 = v1[50];
            v197 = v1[41];
            v198 = v1[37];
            v300 = v1[31];
            v303 = v1[32];
            v199 = v1;
            v200 = v1[18];
            v201 = v199[7];

            (*v296)(v196, v201, v197);
            v313 = *v298;
            (*v298)(v198, v297, v200);
            v315(v195, v196, v197);
            sub_1D30E8D7C();
            v202 = *v318;
            (*v318)(v196, v197);
            sub_1D30E8D8C();
            (*v295)(v303, v300, v200);
            if (qword_1EE3133A0 != -1)
            {
              swift_once();
            }

            v203 = v199[32];
            v204 = v199[29];
            v205 = v199[18];
            __swift_project_value_buffer(v199[76], qword_1EE3133A8);
            v206 = sub_1D30E928C();
            v313(v204, v203, v205);
            v207 = sub_1D30E8B1C();
            v208 = os_log_type_enabled(v207, v206);
            v209 = v199[29];
            v210 = v199[18];
            v1 = v199;
            if (v208)
            {
              v211 = swift_slowAlloc();
              v212 = swift_slowAlloc();
              v338[0] = v212;
              *v211 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v213 = v202;
              v214 = sub_1D30E977C();
              v304 = v206;
              v216 = v215;
              v217 = *v309;
              (*v309)(v209, v210);
              v218 = v214;
              v202 = v213;
              v219 = sub_1D2FFEA04(v218, v216, v338);

              *(v211 + 4) = v219;
              _os_log_impl(&dword_1D2FD9000, v207, v304, "Item exists at: %{public}s", v211, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v212);
              MEMORY[0x1D38B3760](v212, -1, -1);
              MEMORY[0x1D38B3760](v211, -1, -1);
            }

            else
            {

              v217 = *v309;
              (*v309)(v209, v210);
            }

            sub_1D3003CF4(v1[32], 0, v1[28]);
            v220 = v1[28];
            v221 = v1[18];
            *(v1 + 925) = 0;
            v222 = [objc_opt_self() defaultManager];
            sub_1D30E8D3C();
            v223 = sub_1D30E906C();

            v224 = [v222 fileExistsAtPath:v223 isDirectory:v1 + 925];

            v217(v220, v221);
            if (v224)
            {
              v225 = v1[32];
              v226 = v1[18];
              if (*(v1 + 925))
              {
                v227 = v1[26];
                v228 = sub_1D30E927C();
                v313(v227, v225, v226);
                v229 = sub_1D30E8B1C();
                v230 = os_log_type_enabled(v229, v228);
                v231 = v1[26];
                v232 = v1[18];
                v290 = v217;
                if (v230)
                {
                  v233 = swift_slowAlloc();
                  v234 = swift_slowAlloc();
                  v338[0] = v234;
                  *v233 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                  v235 = v202;
                  v236 = sub_1D30E977C();
                  v237 = v217;
                  v239 = v238;
                  v237(v231, v232);
                  v240 = v236;
                  v202 = v235;
                  v241 = sub_1D2FFEA04(v240, v239, v338);

                  *(v233 + 4) = v241;
                  _os_log_impl(&dword_1D2FD9000, v229, v228, "Checking whether the staging directory at “%{public}s” is inactive…", v233, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v234);
                  MEMORY[0x1D38B3760](v234, -1, -1);
                  MEMORY[0x1D38B3760](v233, -1, -1);
                }

                else
                {

                  v217(v231, v232);
                }

                sub_1D2FF1494(0, &qword_1EC74B070, 0x1E69C75D0);
                sub_1D30E8D4C();
                v259 = sub_1D30E906C();

                v260 = [objc_opt_self() predicateMatchingBundleIdentifier_];

                v261 = sub_1D30E6D18(v260);
                v293 = v202;

                v315(v1[48], v1[51], v1[41]);
                v262 = sub_1D30E8B1C();
                v263 = sub_1D30E92BC();
                v264 = os_log_type_enabled(v262, v263);
                v265 = v1[51];
                v266 = v1[48];
                v267 = v1[41];
                v268 = v1[32];
                v269 = v1[18];
                if (v264)
                {
                  v270 = swift_slowAlloc();
                  v271 = swift_slowAlloc();
                  v338[0] = v271;
                  *v270 = 136446210;
                  sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
                  v314 = v265;
                  v272 = sub_1D30E977C();
                  v306 = v268;
                  v274 = v273;
                  v293(v266, v267);
                  v275 = sub_1D2FFEA04(v272, v274, v338);

                  *(v270 + 4) = v275;
                  _os_log_impl(&dword_1D2FD9000, v262, v263, "The staging directory for the app with the bundle ID “%{public}s” won’t be removed because that app is currently running.", v270, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v271);
                  v276 = v271;
                  v1 = v337;
                  MEMORY[0x1D38B3760](v276, -1, -1);
                  MEMORY[0x1D38B3760](v270, -1, -1);

                  v290(v306, v269);
                  v293(v314, v267);
                }

                else
                {

                  v293(v266, v267);
                  v290(v268, v269);
                  v293(v265, v267);
                }
              }

              else
              {
                v244 = v1[25];
                v245 = sub_1D30E92AC();
                v313(v244, v225, v226);
                v246 = sub_1D30E8B1C();
                v247 = os_log_type_enabled(v246, v245);
                v248 = v1[25];
                v249 = v1[18];
                if (v247)
                {
                  v250 = swift_slowAlloc();
                  v251 = swift_slowAlloc();
                  v338[0] = v251;
                  *v250 = 136446210;
                  sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
                  v252 = v202;
                  v253 = sub_1D30E977C();
                  v305 = v245;
                  v254 = v217;
                  v256 = v255;
                  v254(v248, v249);
                  v257 = v253;
                  v202 = v252;
                  v258 = sub_1D2FFEA04(v257, v256, v338);
                  v217 = v254;

                  *(v250 + 4) = v258;
                  _os_log_impl(&dword_1D2FD9000, v246, v305, "The item at “%{public}s” isn’t a directory; removing it…", v250, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v251);
                  MEMORY[0x1D38B3760](v251, -1, -1);
                  MEMORY[0x1D38B3760](v250, -1, -1);
                }

                else
                {

                  v217(v248, v249);
                }

                sub_1D3009B38(v1[32]);
                v277 = v1[51];
                v278 = v1[41];
                v217(v1[32], v1[18]);
                v202(v277, v278);
                *(v1 + 924) = 1;
              }
            }

            else
            {
              v242 = v1[51];
              v243 = v1[41];
              v217(v1[32], v1[18]);
              v202(v242, v243);
            }

            v175 = v336;
          }

          v165 = &v329[v307];
          v162 = (v175 - 1);
        }

        while (v162);
      }

      v289 = *(v337 + 924);

      v279 = v337[1];

      return v279(v289);
    }

    v50 = 0;
    *(v1 + 230) = *(v1[42] + 80);
    while (1)
    {
      v1[100] = v50;
      v52 = v1[98];
      if (v50 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_85;
      }

      v53 = v1[58];
      v54 = v1[41];
      v55 = v1[42];
      v56 = v1[8];
      v57 = *(v55 + 16);
      v58 = v52 + ((*(v1 + 920) + 32) & ~*(v1 + 920));
      v59 = *(v55 + 72);
      v1[101] = v59;
      v1[102] = v57;
      v1[103] = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      (v57)(v53, v58 + v59 * v50, v54);
      v60 = sub_1D30E8D4C();
      v62 = v61;

      sub_1D30E8D6C();
      if ((*(v55 + 48))(v56, 1, v54) == 1)
      {
        v320 = v1[58];
        v63 = v1[55];
        v64 = v1[41];
        v65 = v337[17];
        v66 = v337[16];
        v67 = v337[15];
        v325 = v337[14];
        sub_1D2FF14DC(v337[8], &qword_1EC749940, &qword_1D30F1B10);
        *v66 = v60;
        v66[1] = v62;
        swift_storeEnumTagMultiPayload();
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
        swift_willThrowTypedImpl();
        sub_1D3056830(v66, v65, type metadata accessor for FilePath.ResolutionError);
        v68 = v65;
        v1 = v337;
        sub_1D3056830(v68, v67, type metadata accessor for FilePath.ResolutionError);
        v69 = sub_1D30E929C();
        (v57)(v63, v320, v64);
        sub_1D3058338(v67, v325, type metadata accessor for FilePath.ResolutionError);
        v70 = sub_1D30E8B1C();
        v71 = os_log_type_enabled(v70, v69);
        v72 = v337[58];
        v73 = v337[55];
        v74 = v337[41];
        v76 = v337[14];
        v75 = v337[15];
        v77 = (v337[42] + 8);
        if (v71)
        {
          v332 = v337[15];
          v78 = swift_slowAlloc();
          v326 = v72;
          v79 = swift_slowAlloc();
          v321 = swift_slowAlloc();
          v338[0] = v321;
          *v78 = 136446466;
          sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
          v80 = sub_1D30E977C();
          v310 = v69;
          v82 = v81;
          v83 = *v77;
          (*v77)(v73, v74);
          v84 = v80;
          v1 = v337;
          v85 = sub_1D2FFEA04(v84, v82, v338);

          *(v78 + 4) = v85;
          *(v78 + 12) = 2114;
          swift_allocError();
          sub_1D3058338(v76, v86, type metadata accessor for FilePath.ResolutionError);
          v87 = _swift_stdlib_bridgeErrorToNSError();
          sub_1D3065284(v76, type metadata accessor for FilePath.ResolutionError);
          *(v78 + 14) = v87;
          *v79 = v87;
          _os_log_impl(&dword_1D2FD9000, v70, v310, "The path to the asset-packs directory inside the subdirectory named “%{public}s” couldn’t be constructed: %{public}@", v78, 0x16u);
          sub_1D2FF14DC(v79, &qword_1EC7493A0, &qword_1D30EF480);
          MEMORY[0x1D38B3760](v79, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v321);
          MEMORY[0x1D38B3760](v321, -1, -1);
          MEMORY[0x1D38B3760](v78, -1, -1);

          sub_1D3065284(v332, type metadata accessor for FilePath.ResolutionError);
          v83(v326, v74);
        }

        else
        {

          sub_1D3065284(v76, type metadata accessor for FilePath.ResolutionError);
          v51 = *v77;
          (*v77)(v73, v74);
          sub_1D3065284(v75, type metadata accessor for FilePath.ResolutionError);
          v51(v72, v74);
        }
      }

      else
      {
        v88 = v1[56];
        v89 = v1[57];
        v317 = v57;
        v91 = v1[41];
        v90 = v1[42];
        v327 = v1[97];
        v333 = v1[40];
        v322 = v1[39];
        v92 = v337[37];
        v93 = v337[19];
        v94 = v337[18];
        v95 = v337[8];

        (*(v90 + 32))(v89, v95, v91);
        v96 = v327;
        v328 = *(v93 + 16);
        v328(v92, v96, v94);
        (v317)(v88, v89, v91);
        sub_1D30E8D7C();
        v97 = *(v90 + 8);
        v337[104] = v97;
        v337[105] = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v311 = v97;
        (v97)(v89, v91);
        sub_1D30E8D8C();
        (*(v93 + 32))(v333, v322, v94);
        if (qword_1EE3133A0 != -1)
        {
          swift_once();
        }

        v98 = v337[40];
        v99 = v337[36];
        v100 = v337[18];
        __swift_project_value_buffer(v337[76], qword_1EE3133A8);
        v101 = sub_1D30E928C();
        v102 = v328;
        v328(v99, v98, v100);
        v103 = sub_1D30E8B1C();
        v334 = v101;
        v104 = os_log_type_enabled(v103, v101);
        v105 = v337[36];
        v107 = v337[18];
        v106 = v337[19];
        if (v104)
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v338[0] = v109;
          *v108 = 136446210;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v110 = sub_1D30E977C();
          v112 = v111;
          v113 = v107;
          v114 = *(v106 + 8);
          (v114)(v105, v113);
          v115 = sub_1D2FFEA04(v110, v112, v338);
          v102 = v328;

          *(v108 + 4) = v115;
          _os_log_impl(&dword_1D2FD9000, v103, v334, "Item exists at: %{public}s", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v109);
          MEMORY[0x1D38B3760](v109, -1, -1);
          MEMORY[0x1D38B3760](v108, -1, -1);
        }

        else
        {

          v116 = v107;
          v114 = *(v106 + 8);
          (v114)(v105, v116);
        }

        v337[106] = v114;
        sub_1D3003CF4(v337[40], 0, v337[35]);
        v117 = v337[35];
        v118 = v337[18];
        v119 = v337[19] + 8;
        *(v337 + 926) = 0;
        v120 = [objc_opt_self() defaultManager];
        sub_1D30E8D3C();
        v121 = sub_1D30E906C();

        v122 = [v120 fileExistsAtPath:v121 isDirectory:v337 + 926];

        v337[107] = v119 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (v114)(v117, v118);
        if (v122)
        {
          v123 = v337[40];
          if (*(v337 + 926))
          {
            v124 = sub_1D3005160(v337[40]);
            v337[108] = v124;
            v143 = v124[2].isa;
            v337[109] = v143;
            v1 = v337;
            if (v143)
            {
              v286 = (*(v337 + 920) + 32) & ~*(v337 + 920);
              *(v337 + 55) = 0u;
              (v337[102])(v337[54], v124 + v286, v337[41]);
              v337[112] = sub_1D30E91EC();
              v288 = sub_1D30E91AC();

              return MEMORY[0x1EEE6DFA0](sub_1D30B43CC, v288, v287);
            }

            v144 = v337[104];
            v145 = v337[58];
            v146 = v337[41];
            (v337[106])(v337[40], v337[18]);
            v144(v145, v146);
          }

          else
          {
            v335 = v114;
            v127 = v337[33];
            v128 = v337[18];
            v129 = sub_1D30E92AC();
            v102(v127, v123, v128);
            v130 = sub_1D30E8B1C();
            v131 = os_log_type_enabled(v130, v129);
            v132 = v337[33];
            v133 = v337[18];
            if (v131)
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v338[0] = v135;
              *v134 = 136446210;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v136 = sub_1D30E977C();
              v138 = v137;
              v139 = v133;
              v140 = v335;
              (v335)(v132, v139);
              v141 = sub_1D2FFEA04(v136, v138, v338);

              *(v134 + 4) = v141;
              _os_log_impl(&dword_1D2FD9000, v130, v129, "The item at “%{public}s” isn’t a directory; removing it…", v134, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v135);
              MEMORY[0x1D38B3760](v135, -1, -1);
              MEMORY[0x1D38B3760](v134, -1, -1);
            }

            else
            {

              v142 = v133;
              v140 = v335;
              (v335)(v132, v142);
            }

            sub_1D3009B38(v337[40]);
            v147 = v337[58];
            v148 = v337[41];
            v140(v337[40], v337[18]);
            (v311)(v147, v148);
            *(v337 + 924) = 1;
            v1 = v337;
          }
        }

        else
        {
          v125 = v337[58];
          v126 = v337[41];
          (v114)(v337[40], v337[18]);
          (v311)(v125, v126);
          v1 = v337;
        }
      }

      v50 = v1[100] + 1;
      if (v50 == v1[99])
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v1[90] = v20;
    *(v1 + 927) = v316;
    v21 = v1[75];
    v22 = v1[74];
    sub_1D3058338(v1[87] + ((*(v1 + 912) + 32) & ~*(v1 + 912)) + v1[89] * v20, v21, type metadata accessor for LicenseRecord.StaticRepresentation);
    v23 = sub_1D30E927C();
    sub_1D3058338(v21, v22, type metadata accessor for LicenseRecord.StaticRepresentation);
    v24 = sub_1D30E8B1C();
    v25 = os_log_type_enabled(v24, v23);
    v26 = v337[74];
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = *v26;
      sub_1D3065284(v26, type metadata accessor for LicenseRecord.StaticRepresentation);
      *(v27 + 4) = v28;
      _os_log_impl(&dword_1D2FD9000, v24, v23, "Checking whether the record of the license with the ID “%llu” is stale…", v27, 0xCu);
      MEMORY[0x1D38B3760](v27, -1, -1);
    }

    else
    {
      sub_1D3065284(v337[74], type metadata accessor for LicenseRecord.StaticRepresentation);
    }

    v29 = *(v337 + 229);
    v30 = v337[68];
    v31 = v337[67];
    v32 = v337[65];
    v33 = v337[64];
    v34 = v337[63];
    v324 = v337[66];
    v331 = v337[62];
    v35 = v337[61];
    v36 = v337[60];
    v37 = v337[59];

    sub_1D30E8A9C();
    (*(v36 + 104))(v35, v29, v37);
    sub_1D30E8A0C();
    sub_1D30E8A8C();
    v38 = *(v31 + 8);
    v337[91] = v38;
    v337[92] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v319 = v38;
    v38(v30, v324);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v33, v331);
    v39 = *(v31 + 48);
    v1 = v337;
    if (v39(v32, 1, v324) == 1)
    {
      v40 = v337[66];
      v41 = v337[65];
      sub_1D30E896C();
      if (v39(v41, 1, v40) != 1)
      {
        sub_1D2FF14DC(v337[65], &qword_1EC7491C8, &qword_1D30EEC10);
      }
    }

    else
    {
      (*(v337[67] + 32))(v337[69], v337[65], v337[66]);
    }

    if (sub_1D30E89EC())
    {
      break;
    }

    v42 = v337[75];
    v319(v337[69], v337[66]);
    sub_1D3065284(v42, type metadata accessor for LicenseRecord.StaticRepresentation);
    v20 = v337[90] + 1;
    if (v20 == v337[88])
    {
      goto LABEL_14;
    }
  }

  v149 = v337[75];
  v150 = v337[73];
  v151 = sub_1D30E92AC();
  sub_1D3058338(v149, v150, type metadata accessor for LicenseRecord.StaticRepresentation);
  v152 = sub_1D30E8B1C();
  v153 = os_log_type_enabled(v152, v151);
  v154 = v337[73];
  if (v153)
  {
    v155 = swift_slowAlloc();
    *v155 = 134217984;
    v156 = *v154;
    sub_1D3065284(v154, type metadata accessor for LicenseRecord.StaticRepresentation);
    *(v155 + 4) = v156;
    _os_log_impl(&dword_1D2FD9000, v152, v151, "Reporting a timeout error for the license with the ID “%llu”…", v155, 0xCu);
    MEMORY[0x1D38B3760](v155, -1, -1);
  }

  else
  {
    sub_1D3065284(v337[73], type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  v281 = v337[75];

  sub_1D30E6DDC();
  v282 = swift_allocError();
  v337[93] = v282;
  *v283 = 60;
  v284 = *v281;
  v285 = swift_task_alloc();
  v337[94] = v285;
  *v285 = v337;
  v285[1] = sub_1D30B0260;

  return sub_1D302438C(v282, v284);
}

uint64_t sub_1D30BFC60()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D30E8B3C();
  __swift_project_value_buffer(v0, qword_1EE314B60);
  v1 = sub_1D30E928C();
  v2 = sub_1D30E8B1C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2FD9000, v2, v1, "Erase database", v3, 2u);
    MEMORY[0x1D38B3760](v3, -1, -1);
  }

  v4 = sub_1D30E8B1C();
  v5 = sub_1D30E92BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v5, "Erasing the entire database…", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  return sub_1D30E8E9C();
}

uint64_t sub_1D30BFDBC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D30BFDE0, 0, 0);
}

uint64_t sub_1D30BFDE0()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Collect weekly analytics bypassing rate limit: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v0 + 16);

  *(v0 + 24) = *(v6 + 48);
  sub_1D30E91FC();
  *(v0 + 32) = sub_1D30E91EC();
  v8 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30BFF48, v8, v7);
}

uint64_t sub_1D30BFF48()
{
  v1 = *(v0 + 40);

  v2 = sub_1D3039470(v1);
  v3 = *(v0 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_1D30BFFB8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v2[8] = type metadata accessor for HelperError(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30C0074, 0, 0);
}

uint64_t sub_1D30C0074()
{
  v28 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE314B60);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136446210;
    v7 = MEMORY[0x1D38B26B0](v4, MEMORY[0x1E69E6158]);
    v9 = sub_1D2FFEA04(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Apps were uninstalled with bundle IDs: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v10 = v0[5];
  v11 = v10[2];
  v0[11] = v11;
  if (v11)
  {
    v12 = sub_1D30E91FC();
    v0[13] = 0;
    v0[14] = 0;
    v0[12] = v12;
    v13 = v10[4];
    v0[15] = v13;
    v14 = v10[5];
    v0[16] = v14;
    swift_bridgeObjectRetain_n();
    v15 = sub_1D30E8B1C();
    v16 = sub_1D30E92BC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1D2FFEA04(v13, v14, &v27);
      _os_log_impl(&dword_1D2FD9000, v15, v16, "The app with the bundle ID “%{public}s” was uninstalled.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D38B3760](v18, -1, -1);
      MEMORY[0x1D38B3760](v17, -1, -1);
    }

    v19 = sub_1D30E928C();

    v20 = sub_1D30E8B1C();

    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1D2FFEA04(v13, v14, &v27);
      _os_log_impl(&dword_1D2FD9000, v20, v19, "Remove all asset packs for app with bundle ID: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D38B3760](v22, -1, -1);
      MEMORY[0x1D38B3760](v21, -1, -1);
    }

    v0[17] = sub_1D30E91EC();
    v24 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30C0450, v24, v23);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1D30C0450()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[13];

  sub_1D30CF8A8(v2, v1);
  v0[18] = v3;
  if (v3)
  {
    v4 = sub_1D30C068C;
  }

  else
  {
    v4 = sub_1D30C0500;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30C0500()
{
  v11 = v0;

  v0[19] = v0[18];
  v1 = sub_1D30E928C();

  v2 = sub_1D30E8B1C();

  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1D2FFEA04(v4, v3, &v10);
    _os_log_impl(&dword_1D2FD9000, v2, v1, "Remove App Review record of app with bundle ID: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v0[20] = sub_1D30E91EC();
  v8 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30C0974, v8, v7);
}

uint64_t sub_1D30C068C()
{
  v24 = v0;
  v1 = v0[18];

  v2 = sub_1D30E929C();

  v3 = v1;
  v4 = sub_1D30E8B1C();

  v5 = os_log_type_enabled(v4, v2);
  v6 = v0[18];
  if (v5)
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1D2FFEA04(v8, v7, &v23);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D2FD9000, v4, v2, "The asset packs for the app with the bundle ID “%{public}s” couldn’t be removed: %{public}@", v9, 0x16u);
    sub_1D2FF14DC(v10, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D38B3760](v11, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  else
  {
  }

  v0[19] = 0;
  v14 = sub_1D30E928C();

  v15 = sub_1D30E8B1C();

  if (os_log_type_enabled(v15, v14))
  {
    v17 = v0[15];
    v16 = v0[16];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1D2FFEA04(v17, v16, &v23);
    _os_log_impl(&dword_1D2FD9000, v15, v14, "Remove App Review record of app with bundle ID: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38B3760](v19, -1, -1);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v0[20] = sub_1D30E91EC();
  v21 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D30C0974, v21, v20);
}

uint64_t sub_1D30C0974()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[6];

  sub_1D30D2AC0(v2, v3, v4, v0 + 2);
  v0[21] = v1;
  if (v1)
  {
    v5 = sub_1D30C0CEC;
  }

  else
  {

    v5 = sub_1D30C0A38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D30C0A38()
{
  v18 = v0;
  v1 = v0[14] + 1;
  if (v1 == v0[11])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[13] = v0[21];
    v0[14] = v1;
    v4 = v0[5] + 16 * v1;
    v5 = *(v4 + 32);
    v0[15] = v5;
    v6 = *(v4 + 40);
    v0[16] = v6;
    swift_bridgeObjectRetain_n();
    v7 = sub_1D30E8B1C();
    v8 = sub_1D30E92BC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1D2FFEA04(v5, v6, &v17);
      _os_log_impl(&dword_1D2FD9000, v7, v8, "The app with the bundle ID “%{public}s” was uninstalled.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D38B3760](v10, -1, -1);
      MEMORY[0x1D38B3760](v9, -1, -1);
    }

    v11 = sub_1D30E928C();

    v12 = sub_1D30E8B1C();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1D2FFEA04(v5, v6, &v17);
      _os_log_impl(&dword_1D2FD9000, v12, v11, "Remove all asset packs for app with bundle ID: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D38B3760](v14, -1, -1);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }

    v0[17] = sub_1D30E91EC();
    v16 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30C0450, v16, v15);
  }
}

uint64_t sub_1D30C0CEC()
{
  v48 = v0;
  v1 = *(v0 + 168);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v4 = *v3;
      v5 = v3[1];
      if (*(v0 + 120) == v4 && *(v0 + 128) == v5)
      {

LABEL_14:

        v23 = sub_1D30E927C();

        v24 = sub_1D30E8B1C();

        v25 = os_log_type_enabled(v24, v23);
        v26 = *(v0 + 128);
        if (v25)
        {
          v27 = *(v0 + 120);
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v47 = v29;
          *v28 = 136446210;
          v30 = sub_1D2FFEA04(v27, v26, &v47);

          *(v28 + 4) = v30;
          _os_log_impl(&dword_1D2FD9000, v24, v23, "The app with the bundle ID “%{public}s” isn’t an App Review app.", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x1D38B3760](v29, -1, -1);
          MEMORY[0x1D38B3760](v28, -1, -1);
        }

        else
        {
        }

        v22 = *(v0 + 32);
        goto LABEL_18;
      }

      v7 = sub_1D30E97CC();

      if (v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1D3065284(v3, type metadata accessor for HelperError);
    }
  }

  v8 = *(v0 + 168);

  v9 = sub_1D30E929C();

  v10 = v8;
  v11 = sub_1D30E8B1C();

  v12 = os_log_type_enabled(v11, v9);
  v13 = *(v0 + 168);
  v14 = *(v0 + 128);
  if (v12)
  {
    v15 = *(v0 + 120);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47 = v18;
    *v16 = 136446466;
    v19 = sub_1D2FFEA04(v15, v14, &v47);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2114;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&dword_1D2FD9000, v11, v9, "The App Review record for the app with the bundle ID “%{public}s” couldn’t be removed: %{public}@", v16, 0x16u);
    sub_1D2FF14DC(v17, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1D38B3760](v18, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);

    goto LABEL_19;
  }

  v22 = v13;
LABEL_18:

LABEL_19:
  v31 = *(v0 + 112) + 1;
  if (v31 == *(v0 + 88))
  {

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    *(v0 + 104) = 0;
    *(v0 + 112) = v31;
    v34 = *(v0 + 40) + 16 * v31;
    v35 = *(v34 + 32);
    *(v0 + 120) = v35;
    v36 = *(v34 + 40);
    *(v0 + 128) = v36;
    swift_bridgeObjectRetain_n();
    v37 = sub_1D30E8B1C();
    v38 = sub_1D30E92BC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1D2FFEA04(v35, v36, &v47);
      _os_log_impl(&dword_1D2FD9000, v37, v38, "The app with the bundle ID “%{public}s” was uninstalled.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D38B3760](v40, -1, -1);
      MEMORY[0x1D38B3760](v39, -1, -1);
    }

    v41 = sub_1D30E928C();

    v42 = sub_1D30E8B1C();

    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_1D2FFEA04(v35, v36, &v47);
      _os_log_impl(&dword_1D2FD9000, v42, v41, "Remove all asset packs for app with bundle ID: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1D38B3760](v44, -1, -1);
      MEMORY[0x1D38B3760](v43, -1, -1);
    }

    *(v0 + 136) = sub_1D30E91EC();
    v46 = sub_1D30E91AC();

    return MEMORY[0x1EEE6DFA0](sub_1D30C0450, v46, v45);
  }
}

void _s29ManagedBackgroundAssetsHelper0D0C8validate_5usingyAC7MessageO_AA27XPCPeerRequirementValidatorVtAC15PermissionErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = sub_1D30E8C6C();
  v6 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Helper.Message(0);
  v8 = MEMORY[0x1EEE9AC00](v110);
  v111 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v105 - v10;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D30E8B3C();
  v13 = __swift_project_value_buffer(v12, qword_1EE314B60);
  v14 = sub_1D30E928C();
  sub_1D3058338(a1, v11, type metadata accessor for Helper.Message);
  v109 = v13;
  v15 = sub_1D30E8B1C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v108 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v107 = v3;
    v106 = v18;
    v114 = v18;
    *v17 = 136446466;
    v19 = Helper.Message.description.getter();
    v20 = a1;
    v22 = v21;
    sub_1D3065284(v11, type metadata accessor for Helper.Message);
    v23 = sub_1D2FFEA04(v19, v22, &v114);
    a1 = v20;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_1D2FFEA04(0xD000000000000020, 0x80000001D30EAD70, &v114);
    _os_log_impl(&dword_1D2FD9000, v15, v14, "Validate: %{public}s using: %{public}s", v17, 0x16u);
    v24 = v106;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v24, -1, -1);
    v25 = v17;
    a3 = v108;
    MEMORY[0x1D38B3760](v25, -1, -1);
  }

  else
  {

    sub_1D3065284(v11, type metadata accessor for Helper.Message);
  }

  v26 = v113;
  sub_1D30E8C4C();
  v27 = sub_1D30E8C8C();
  v30 = *(v6 + 8);
  v28 = v6 + 8;
  v29 = v30;
  v31 = v112;
  v30(v26, v112);
  if ((v27 & 1) != 0 && os_variant_allows_internal_security_policies())
  {
    v32 = sub_1D30E927C();
    v33 = sub_1D30E8B1C();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D2FD9000, v33, v32, "The peer has the validation-bypass entitlement and internal security policies are allowed, so no further message validation will be performed.", v34, 2u);
      MEMORY[0x1D38B3760](v34, -1, -1);
    }

    return;
  }

  v35 = v111;
  sub_1D3058338(a1, v111, type metadata accessor for Helper.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 0xAu:
    case 0x21u:
      v110 = v28;
      v41 = *(v35 + 24);
      if (v41)
      {
        v109 = *(v35 + 8);
        v107 = *(v35 + 16);
        v108 = *v35;
        goto LABEL_51;
      }

      goto LABEL_78;
    case 2u:
    case 3u:
    case 5u:
    case 6u:
    case 8u:
    case 0x12u:
    case 0x15u:
    case 0x17u:
    case 0x1Bu:
    case 0x1Eu:
    case 0x2Bu:
      sub_1D3065284(v35, type metadata accessor for Helper.Message);
      goto LABEL_61;
    case 7u:
      v65 = *v35;
      v66 = *(v35 + 8);
      v67 = *(v35 + 24);
      v108 = *(v35 + 16);
      v107 = *(v35 + 32);
      v41 = *(v35 + 40);
      sub_1D2FF1804(v65, v66);
      if (sub_1D2FE4A8C(&unk_1F4EA8F08, 0))
      {
        goto LABEL_52;
      }

      v110 = v28;
      if (v41)
      {
        v109 = v67;
        goto LABEL_51;
      }

      goto LABEL_77;
    case 9u:
    case 0x1Au:
    case 0x1Cu:
    case 0x2Au:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
      goto LABEL_61;
    case 0xBu:
      v110 = v28;
      v36 = *(v35 + 8);
      v107 = *v35;
      v70 = *(v35 + 24);
      v106 = *(v35 + 16);
      v109 = v70;
      v108 = *(v35 + 40);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v72 = *(v71 + 48);
      v73 = v35;
      v74 = *(v71 + 80);
      v75 = sub_1D30E8D5C();
      (*(*(v75 - 8) + 8))(v73 + v74, v75);
      sub_1D3065284(v73 + v72, type metadata accessor for AssetPackHost);
      goto LABEL_15;
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0x11u:
      v110 = v28;
      v36 = *(v35 + 8);
      v107 = *v35;
      v37 = *(v35 + 24);
      v106 = *(v35 + 16);
      v109 = v37;
      v38 = *(v35 + 40);
      goto LABEL_14;
    case 0xFu:
      v110 = v28;
      v36 = *(v35 + 16);
      v107 = *(v35 + 8);
      v76 = *(v35 + 32);
      v106 = *(v35 + 24);
      v109 = v76;
      v38 = *(v35 + 48);
LABEL_14:
      v108 = v38;
      goto LABEL_15;
    case 0x10u:
      v110 = v28;
      v36 = *(v35 + 8);
      v107 = *v35;
      v77 = *(v35 + 24);
      v106 = *(v35 + 16);
      v109 = v77;
      v108 = *(v35 + 40);

      goto LABEL_15;
    case 0x13u:
      sub_1D3065284(v35, type metadata accessor for Helper.Message);
      if (sub_1D2FE4A8C(&unk_1F4EA8F08, 1))
      {
        return;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      v48 = &unk_1F4EA9038;
      goto LABEL_63;
    case 0x14u:

      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v110 = v28;
      v53 = *(v78 + 48);

      v54 = sub_1D30E8A4C();
      goto LABEL_46;
    case 0x16u:
      if (*v35)
      {
        goto LABEL_61;
      }

      goto LABEL_26;
    case 0x18u:
    case 0x19u:
      sub_1D3065284(v35, type metadata accessor for Helper.Message);
LABEL_26:
      v51 = 1;
      goto LABEL_60;
    case 0x1Du:
      sub_1D3065284(v35, type metadata accessor for Helper.Message);
      v51 = 0;
LABEL_60:
      if ((sub_1D2FE4A8C(&unk_1F4EA8F08, v51) & 1) == 0)
      {
        goto LABEL_61;
      }

      return;
    case 0x1Fu:
      v110 = v28;
      v79 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498) + 48));
      v36 = v79[1];
      v107 = *v79;
      v80 = v79[3];
      v106 = v79[2];
      v109 = v80;
      v108 = v79[5];

      v81 = sub_1D30E8D9C();
      (*(*(v81 - 8) + 8))(v35, v81);
LABEL_15:
      v39 = v113;
      sub_1D30E8C5C();
      v40 = sub_1D30E8C8C();
      v29(v39, v112);
      if (v40)
      {

        goto LABEL_52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D30EE930;
      v43 = v107;
      *(inited + 32) = v107;
      *(inited + 40) = v36;

      v44 = sub_1D2FE4A8C(inited, 1);
      swift_setDeallocating();
      sub_1D30DCC4C(inited + 32);
      if ((v44 & 1) == 0)
      {
        sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
        v48 = swift_allocObject();
        v48[1] = xmmword_1D30EE910;
        v48[2] = xmmword_1D30F5460;
        *(v48 + 48) = 2;
        *(v48 + 7) = v43;
        *(v48 + 8) = v36;
        *(v48 + 72) = 0;

        goto LABEL_63;
      }

      v45 = v109;
      if (!v109)
      {

        sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
        v48 = &unk_1F4EA8FE8;
        goto LABEL_63;
      }

      v46 = v106;
      if (sub_1D2FE53A0(v106, v45))
      {
        goto LABEL_53;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
      v47 = swift_allocObject();
      v48 = v47;
      *(v47 + 16) = xmmword_1D30EE910;
      *(v47 + 32) = xmmword_1D30F5460;
      *(v47 + 48) = 2;
      *(v47 + 56) = v46;
      *(v47 + 64) = v45;
      goto LABEL_67;
    case 0x20u:
      v110 = v28;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v61 = (v35 + *(v60 + 48));
      v62 = v61[1];
      v108 = *v61;
      v63 = (v35 + *(v60 + 64));
      v64 = *v63;
      v41 = v63[1];

      if (v41)
      {
        v107 = v64;
        v109 = v62;
        goto LABEL_50;
      }

      v101 = sub_1D30E8D9C();
      (*(*(v101 - 8) + 8))(v35, v101);
LABEL_77:
      v31 = v112;
      goto LABEL_78;
    case 0x22u:
      v110 = v28;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v83 = (v35 + *(v82 + 48));
      v84 = (v35 + *(v82 + 64));
      v41 = v84[1];
      if (!v41)
      {

        v102 = sub_1D30E8D9C();
        (*(*(v102 - 8) + 8))(v35, v102);
        goto LABEL_78;
      }

      v109 = v83[1];
      v107 = *v84;
      v108 = *v83;
LABEL_50:
      v85 = sub_1D30E8D9C();
      (*(*(v85 - 8) + 8))(v35, v85);
      goto LABEL_51;
    case 0x23u:
    case 0x29u:
      goto LABEL_24;
    case 0x24u:
    case 0x26u:
      sub_1D2FF1804(*v35, *(v35 + 8));
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v110 = v28;
      v53 = *(v52 + 48);

      v54 = sub_1D30E8D9C();
LABEL_46:
      (*(*(v54 - 8) + 8))(v35 + v53, v54);
      goto LABEL_61;
    case 0x25u:
    case 0x27u:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478);
      sub_1D2FF1804(*(v35 + *(v49 + 48)), *(v35 + *(v49 + 48) + 8));
LABEL_24:
      v50 = sub_1D30E8D9C();
      (*(*(v50 - 8) + 8))(v35, v50);
LABEL_61:
      sub_1D30E8C5C();
      v95 = sub_1D30E8C8C();
      v29(v26, v31);
      if (v95)
      {
        return;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      v48 = &unk_1F4EA8FB0;
      goto LABEL_63;
    case 0x28u:
      v110 = v28;
      sub_1D2FF1804(*v35, *(v35 + 8));
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v56 = v55[12];
      v57 = (v35 + v55[16]);
      v58 = (v35 + v55[20]);
      v41 = v58[1];
      if (v41)
      {
        v109 = v57[1];
        v107 = *v58;
        v108 = *v57;
        v59 = sub_1D30E8D5C();
        (*(*(v59 - 8) + 8))(v35 + v56, v59);
LABEL_51:
        v86 = v113;
        sub_1D30E8C5C();
        v87 = sub_1D30E8C8C();
        v29(v86, v112);
        if (v87)
        {
LABEL_52:

LABEL_53:

          return;
        }

        v113 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
        v88 = swift_initStackObject();
        *(v88 + 16) = xmmword_1D30EE930;
        v89 = v108;
        *(v88 + 32) = v108;
        v90 = v109;
        *(v88 + 40) = v109;

        v91 = sub_1D2FE4A8C(v88, 1);
        swift_setDeallocating();
        sub_1D30DCC4C(v88 + 32);
        if (v91)
        {

          v92 = v107;
          v93 = v113;
          if (sub_1D2FE53A0(v107, v113))
          {
            goto LABEL_53;
          }

          sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
          v47 = swift_allocObject();
          v48 = v47;
          *(v47 + 16) = xmmword_1D30EE910;
          *(v47 + 32) = xmmword_1D30F5460;
          *(v47 + 48) = 2;
          *(v47 + 56) = v92;
          *(v47 + 64) = v93;
LABEL_67:
          *(v47 + 72) = 1;
        }

        else
        {

          sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
          v94 = swift_allocObject();
          v48 = v94;
          *(v94 + 16) = xmmword_1D30EE910;
          *(v94 + 32) = xmmword_1D30F5460;
          *(v94 + 48) = 2;
          *(v94 + 56) = v89;
          *(v94 + 64) = v90;
LABEL_58:
          *(v94 + 72) = 0;
        }

LABEL_63:
        *(a3 + *(type metadata accessor for Helper.PermissionError(0) + 20)) = v48;
        sub_1D3045A34(&qword_1EC74AD00, type metadata accessor for Helper.PermissionError, &protocol conformance descriptor for Helper.PermissionError);
        swift_willThrowTypedImpl();
        return;
      }

      v100 = sub_1D30E8D5C();
      (*(*(v100 - 8) + 8))(v35 + v56, v100);
LABEL_78:
      v103 = v113;
      sub_1D30E8C5C();
      v104 = sub_1D30E8C8C();
      v29(v103, v31);
      if ((v104 & 1) == 0)
      {
        sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
        v48 = &unk_1F4EA8F78;
        goto LABEL_63;
      }

      return;
    default:
      v68 = *(v35 + 8);
      v110 = *v35;
      v111 = v68;
      sub_1D30E8C5C();
      v69 = sub_1D30E8C8C();
      v29(v26, v31);
      if (v69)
      {
        goto LABEL_53;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
      v96 = swift_initStackObject();
      *(v96 + 16) = xmmword_1D30EE930;
      v97 = v110;
      *(v96 + 32) = v110;
      v98 = v111;
      *(v96 + 40) = v111;

      v99 = sub_1D2FE4A8C(v96, 1);
      swift_setDeallocating();
      sub_1D30DCC4C(v96 + 32);
      if (v99)
      {
        goto LABEL_53;
      }

      sub_1D3058338(a1, a3, type metadata accessor for Helper.Message);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
      v94 = swift_allocObject();
      v48 = v94;
      *(v94 + 16) = xmmword_1D30EE910;
      *(v94 + 32) = xmmword_1D30F5460;
      *(v94 + 48) = 2;
      *(v94 + 56) = v97;
      *(v94 + 64) = v98;
      goto LABEL_58;
  }
}

void sub_1D30C24F0(BOOL *a1@<X1>, BOOL *a2@<X2>, BOOL *a3@<X8>)
{
  v18 = a2;
  v16 = a3;
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v18;
  *(&v16 - 2) = v17;
  *(&v16 - 1) = v11;
  v20 = type metadata accessor for AppReviewRecord(0);
  sub_1D30E8ACC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8EBC();
  v13 = v19;
  v14 = sub_1D30E8E1C();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
  }

  else
  {

    if (v14 >> 62)
    {
      v15 = sub_1D30E958C();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *v16 = v15 != 0;
  }
}

id sub_1D30C281C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D30E906C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  return v5;
}

void sub_1D30C2904(int a1@<W1>, void *a2@<X8>)
{
  v31 = a1;
  v29 = a2;
  v2 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v28 - v12;
  sub_1D30E91FC();
  v30 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_1D30E8E7C();
  v34 = &v28;
  MEMORY[0x1EEE9AC00](v14);
  *(&v28 - 16) = v31 & 1;
  v36 = type metadata accessor for AssetPackRecord(0);
  sub_1D30E8ACC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v17 = v33;
  v18 = sub_1D30E8E1C();
  (*(v11 + 8))(v13, v32);
  if (v17)
  {

    return;
  }

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_20:

    v20 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *v29 = v20;
    return;
  }

  v19 = sub_1D30E958C();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_7:
  v35 = v16;
  sub_1D3028C78(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v20 = v35;
    v21 = v28;
    if ((v18 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        MEMORY[0x1D38B29E0](i, v18);
        sub_1D3010570(v7);
        swift_unknownObjectRelease();
        v35 = v20;
        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D3028C78((v23 > 1), v24 + 1, 1);
          v20 = v35;
        }

        *(v20 + 16) = v24 + 1;
        sub_1D3056830(v7, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, type metadata accessor for AssetPackRecord.StaticRepresentation);
      }
    }

    else
    {
      v25 = 32;
      do
      {

        sub_1D3010570(v21);

        v35 = v20;
        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D3028C78((v26 > 1), v27 + 1, 1);
          v20 = v35;
        }

        *(v20 + 16) = v27 + 1;
        sub_1D3056830(v21, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, type metadata accessor for AssetPackRecord.StaticRepresentation);
        v25 += 8;
        --v19;
      }

      while (v19);
    }

    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_1D30C2E70@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v25 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B000, &qword_1D30FCFC0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-v14];
  sub_1D30E91FC();
  v23 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v22 & 1;
  sub_1D30E87AC();
  v28 = 1;
  sub_1D30E87AC();
  sub_1D2FF1768(&qword_1EE313FC8, &qword_1EC74A030, &qword_1D30F4CD0, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v24 + 8))(v5, v3);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B008, &qword_1D30FCFF0);
  v17 = v25;
  v25[3] = v16;
  v17[4] = sub_1D30E5798();
  __swift_allocate_boxed_opaque_existential_0Tm(v17);
  sub_1D2FF1768(&qword_1EC74B020, &qword_1EC74B000, &qword_1D30FCFC0, MEMORY[0x1E6968D20]);
  sub_1D2FF1768(&qword_1EC74B028, &qword_1EC74A038, &unk_1D30F4D00, MEMORY[0x1E6968D58]);
  v18 = v27;
  sub_1D30E878C();
  (*(v26 + 8))(v8, v18);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v15, v9);
}

uint64_t sub_1D30C32A8@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B000, &qword_1D30FCFC0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v18[-v11];
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FC8, &qword_1EC74A030, &qword_1D30F4CD0, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v7 + 8))(v9, v6);
  v24 = v19 & 1;
  sub_1D30E87AC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B030, &unk_1D30FD020);
  v14 = v21;
  v21[3] = v13;
  v14[4] = sub_1D30E58B4();
  __swift_allocate_boxed_opaque_existential_0Tm(v14);
  sub_1D2FF1768(&qword_1EC74B028, &qword_1EC74A038, &unk_1D30F4D00, MEMORY[0x1E6968D58]);
  sub_1D2FF1768(&qword_1EC74B020, &qword_1EC74B000, &qword_1D30FCFC0, MEMORY[0x1E6968D20]);
  v15 = v20;
  v16 = v23;
  sub_1D30E879C();
  (*(v22 + 8))(v5, v16);
  (*(v10 + 8))(v12, v15);
}

uint64_t sub_1D30C3678()
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D30E8DFC();
}

uint64_t sub_1D30C379C(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v173 = a3;
  v174 = a5;
  v176 = a4;
  v135 = a2;
  v162 = a1;
  v130 = type metadata accessor for FilePath.ResolutionError(0);
  v5 = MEMORY[0x1EEE9AC00](v130);
  v142 = (&v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v126 - v7;
  v153 = sub_1D30E8D9C();
  v171 = *(v153 - 8);
  v8 = MEMORY[0x1EEE9AC00](v153);
  v136 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v141 = &v126 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v139 = &v126 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v138 = &v126 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v155 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v156 = &v126 - v20;
  v169 = sub_1D30E8D5C();
  v177 = *(v169 - 8);
  v21 = MEMORY[0x1EEE9AC00](v169);
  v140 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v154 = &v126 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v165 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v126 - v27;
  v175 = type metadata accessor for AssetPackHost(0);
  v28 = MEMORY[0x1EEE9AC00](v175);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v179 = &v126 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v126 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v126 - v37;
  sub_1D30E91FC();
  v137 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = *(v162 + 32);
  sub_1D30E8E7C();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
  v41 = type metadata accessor for AssetPackRecord(0);
  v42 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8EBC();
  v43 = v178;
  v44 = sub_1D30E8E1C();
  (*(v36 + 8))(v38, v35);
  if (v43)
  {
LABEL_55:
  }

  v148 = 0;
  v149 = v39;

  sub_1D3058338(v173, v179, type metadata accessor for AssetPackHost);
  v45 = *(v177 + 16);
  v134 = v177 + 16;
  v133 = v45;
  v45(v151, v174, v169);
  v46 = swift_allocObject();
  v46[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749A88, &qword_1D30FD030);
  *&v180 = v41;
  *(&v180 + 1) = v41;
  *&v181 = v42;
  *(&v181 + 1) = v42;
  v46[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v46 + 2);
  v164 = v42;
  v147 = v41;
  sub_1D30E8ECC();
  __swift_project_boxed_opaque_existential_1(v46 + 2, v46[5]);
  swift_getKeyPath();
  v161 = v44;
  LOBYTE(v180) = 1;
  sub_1D30E8DEC();

  v146 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  sub_1D30E8AFC();
  __swift_project_boxed_opaque_existential_1(v46 + 2, v46[5]);
  swift_getKeyPath();
  v47 = v135[1];
  v180 = *v135;
  v181 = v47;
  v182 = v135[2];
  sub_1D2FF6708();
  sub_1D30E8DEC();

  sub_1D3058338(v179, v30, type metadata accessor for AssetPackHost);
  __swift_project_boxed_opaque_existential_1(v46 + 2, v46[5]);
  swift_getKeyPath();
  sub_1D3045A34(&qword_1EC749A60, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
  sub_1D30E8DEC();

  sub_1D3065284(v30, type metadata accessor for AssetPackHost);
  __swift_project_boxed_opaque_existential_1(v46 + 2, v46[5]);
  swift_getKeyPath();
  *&v180 = v176;
  sub_1D30E8DEC();

  v48 = v151;
  v49 = sub_1D30E8D4C();
  v51 = v50;
  v52 = v46[5];
  v152 = v46;
  __swift_project_boxed_opaque_existential_1(v46 + 2, v52);
  swift_getKeyPath();
  *&v180 = v49;
  *(&v180 + 1) = v51;
  sub_1D30E8DEC();

  v53 = *(v177 + 8);
  v160 = v177 + 8;
  v159 = v53;
  v53(v48, v169);
  sub_1D3065284(v179, type metadata accessor for AssetPackHost);

  v55 = v161;
  if (v161 >> 62)
  {
LABEL_60:
    v56 = sub_1D30E958C();
  }

  else
  {
    v56 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = &unk_1D30EF000;
  if (!v56)
  {
LABEL_50:

    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v118 = sub_1D30E8B3C();
    __swift_project_value_buffer(v118, qword_1EE314B60);
    v119 = v135;
    sub_1D30E5940(v135, &v180);
    v120 = sub_1D30E8B1C();
    v121 = sub_1D30E92BC();
    sub_1D30E599C(v119);
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v180 = v123;
      *v122 = v57[133];
      *(v122 + 4) = sub_1D2FFEA04(*(v119 + 4), *(v119 + 5), &v180);
      *(v122 + 12) = 2082;
      *(v122 + 14) = sub_1D2FFEA04(*v119, *(v119 + 1), &v180);
      _os_log_impl(&dword_1D2FD9000, v120, v121, "Adding a record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” to the database…", v122, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v123, -1, -1);
      MEMORY[0x1D38B3760](v122, -1, -1);
    }

    sub_1D30E8E7C();
    sub_1D30E8E4C();

    goto LABEL_55;
  }

  v58 = 0;
  v168 = v55 & 0xC000000000000001;
  v143 = v55 & 0xFFFFFFFFFFFFFF8;
  v145 = (v177 + 48);
  v59 = *(v135 + 1);
  v174 = *v135;
  v172 = v59;
  v144 = (v177 + 32);
  v150 = (v171 + 8);
  v132 = (v171 + 16);
  v60 = *(v135 + 3);
  v157 = *(v135 + 2);
  v170 = v60;
  v61 = *(v135 + 5);
  v171 = *(v135 + 4);
  v166 = v61;
  *&v54 = 136446466;
  v127 = v54;
  *&v54 = 136446722;
  v126 = v54;
  v167 = v56;
  while (1)
  {
    if (v168)
    {
      v65 = MEMORY[0x1D38B29E0](v58, v55);
      v66 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v58 >= *(v143 + 16))
      {
        goto LABEL_59;
      }

      v65 = *(v55 + 8 * v58 + 32);

      v66 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v177 = v66;
    v178 = v58;
    v67 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    v183 = v65;
    swift_getKeyPath();
    v175 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v176 = v67;
    sub_1D30E8AEC();

    swift_getKeyPath();
    v173 = sub_1D2FF67A4();
    v179 = v65;
    sub_1D30E8F0C();

    v68 = v180;
    v69 = v182;
    if (!*(&v181 + 1))
    {
      break;
    }

    if (v170 && v181 != __PAIR128__(v170, v157))
    {
      v70 = sub_1D30E97CC();
      if (v68 == __PAIR128__(v172, v174))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v70 = 1;
      if (v180 == __PAIR128__(v172, v174))
      {
        if (v182 == __PAIR128__(v166, v171))
        {
          goto LABEL_25;
        }

        goto LABEL_32;
      }
    }

LABEL_27:
    if ((sub_1D30E97CC() & 1) == 0)
    {

      goto LABEL_9;
    }

LABEL_28:
    if (v69 != __PAIR128__(v166, v171))
    {
      goto LABEL_32;
    }

    if (v70)
    {
      goto LABEL_34;
    }

LABEL_8:

LABEL_9:
    v57 = &unk_1D30EF000;
    v62 = v167;
    v64 = v177;
    v63 = v178;
LABEL_10:
    v58 = v63 + 1;
    if (v64 == v62)
    {
      goto LABEL_50;
    }
  }

  v70 = 1;
  if (v180 != __PAIR128__(v172, v174))
  {
    goto LABEL_27;
  }

  if (v182 != __PAIR128__(v166, v171))
  {
LABEL_32:
    v71 = sub_1D30E97CC();

    if (v71 & 1) != 0 && (v70)
    {
      goto LABEL_34;
    }

    goto LABEL_8;
  }

LABEL_25:

LABEL_34:
  *&v180 = v179;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v72 = v156;
  sub_1D30E8D6C();
  v73 = *v145;
  v74 = v169;
  result = (*v145)(v72, 1, v169);
  if (result == 1)
  {
    goto LABEL_62;
  }

  v163 = *v144;
  v163(v165, v72, v74);
  *&v180 = v152;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  v76 = v169;
  sub_1D30E8F0C();

  v77 = v155;
  sub_1D30E8D6C();
  result = v73(v77, 1, v76);
  if (result != 1)
  {
    v78 = v154;
    v163(v154, v77, v76);
    sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380], MEMORY[0x1E69E8390]);
    v79 = v165;
    v80 = sub_1D30E905C();
    v81 = v78;
    v82 = v159;
    v159(v81, v76);
    v82(v79, v76);
    v83 = v179;
    if (v80)
    {
      if (qword_1EE3152C8 != -1)
      {
        swift_once();
      }

      v84 = sub_1D30E8B3C();
      __swift_project_value_buffer(v84, qword_1EE314B60);

      v85 = sub_1D30E8B1C();
      v86 = sub_1D30E92BC();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v183 = v163;
        *v87 = v127;
        *&v180 = v83;
        swift_getKeyPath();
        v131 = v86;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v88 = v182;

        v89 = v179;
        v90 = sub_1D2FFEA04(v88, *(&v88 + 1), &v183);

        *(v87 + 4) = v90;
        *(v87 + 12) = 2082;
        *&v180 = v89;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v91 = v180;

        v92 = sub_1D2FFEA04(v91, *(&v91 + 1), &v183);

        *(v87 + 14) = v92;
        _os_log_impl(&dword_1D2FD9000, v85, v131, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v87, 0x16u);
        v93 = v163;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v93, -1, -1);
        MEMORY[0x1D38B3760](v87, -1, -1);

        goto LABEL_48;
      }

      v57 = &unk_1D30EF000;
      v62 = v167;
      v64 = v177;
      v63 = v178;
    }

    else
    {
      v94 = v140;
      sub_1D3010008(v140);
      v183 = v83;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v95 = v180;

      v96 = v148;
      sub_1D302D670(v95, *(&v95 + 1), v142, v141);
      if (v96)
      {
        v159(v94, v76);

        v124 = v129;
        sub_1D3056830(v142, v129, type metadata accessor for FilePath.ResolutionError);
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v124, v125, type metadata accessor for FilePath.ResolutionError);
      }

      v97 = v76;
      sub_1D30E8D8C();
      v133(v151, v94, v76);
      v98 = v138;
      sub_1D30E8D7C();
      v159(v94, v97);
      sub_1D3003CF4(v98, 1, v158);
      v148 = 0;
      v99 = *v150;
      v100 = v153;
      (*v150)(v98, v153);
      if (qword_1EE3152C8 != -1)
      {
        swift_once();
      }

      v101 = sub_1D30E8B3C();
      __swift_project_value_buffer(v101, qword_1EE314B60);
      v102 = v136;
      v103 = v158;
      (*v132)(v136, v158, v100);

      v104 = sub_1D30E8B1C();
      v105 = sub_1D30E92BC();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = v102;
        v107 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v183 = v163;
        *v107 = v126;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v131 = v105;
        v108 = sub_1D30E977C();
        v110 = v109;
        v99(v106, v153);
        v111 = sub_1D2FFEA04(v108, v110, &v183);

        *(v107 + 4) = v111;
        *(v107 + 12) = 2082;
        *&v180 = v179;
        swift_getKeyPath();
        v128 = v99;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v112 = v182;

        v113 = sub_1D2FFEA04(v112, *(&v112 + 1), &v183);
        v114 = v179;

        *(v107 + 14) = v113;
        *(v107 + 22) = 2082;
        *&v180 = v114;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v115 = v180;

        v116 = sub_1D2FFEA04(v115, *(&v115 + 1), &v183);

        *(v107 + 24) = v116;
        _os_log_impl(&dword_1D2FD9000, v104, v131, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v107, 0x20u);
        v117 = v163;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v117, -1, -1);
        MEMORY[0x1D38B3760](v107, -1, -1);

        v128(v158, v153);
      }

      else
      {

        v99(v102, v100);
        v99(v103, v100);
      }

LABEL_48:
      v57 = &unk_1D30EF000;
      v62 = v167;
      v64 = v177;
      v63 = v178;
    }

    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v55 = v161;
    goto LABEL_10;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}