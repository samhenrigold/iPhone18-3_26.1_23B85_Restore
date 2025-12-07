void *sub_1B8B757C0@<X0>(char *a1@<X8>)
{
  sub_1B8B74FC4(a1);
  v2 = type metadata accessor for ListPreviewer(0);
  v3 = &a1[*(v2 + 20)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8B758B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  *v3 = sub_1B8C23DA8();
  v3[8] = v4 & 1;
  v5 = &a1[*(v2 + 24)];
  result = sub_1B8C24D58();
  *v5 = v7;
  *(v5 + 1) = v8;
  return result;
}

uint64_t sub_1B8B758B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double FBKSInteraction.Content.AttachmentResult.append(error:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B8B5D2B8(0, v5[2] + 1, 1, v5);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B8B5D2B8((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v5[v7 + 4] = a1;
  v2[1] = v5;
  *a2 = *v2;
  a2[1] = v5;
  v8 = a1;

  return result;
}

uint64_t sub_1B8B759CC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 224) = a1;
  v8 = sub_1B8C23498();
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v9 = sub_1B8C237E8();
  *(v6 + 304) = v9;
  *(v6 + 312) = *(v9 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v10 = sub_1B8C23938();
  *(v6 + 336) = v10;
  *(v6 + 344) = *(v10 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 720) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B8B75BDC, 0, 0);
}

uint64_t sub_1B8B75BDC()
{
  v106 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 144) = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = v1;
  v2 = [objc_opt_self() defaultManager];
  sub_1B8C23468();
  v3 = sub_1B8C250F8();

  v4 = [v2 fileExistsAtPath_];

  if (v4)
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 336);
    v7 = *(v0 + 344);
    (*(v7 + 16))(v5, *(v0 + 256), v6);
    v8 = (*(v7 + 88))(v5, v6);
    if (v8 == *MEMORY[0x1E699C608])
    {
      v9 = *(v0 + 720);
      v10 = *(v0 + 408);
      v11 = *(v0 + 416);
      v12 = *(v0 + 336);
      v13 = *(v0 + 344);
      (*(v13 + 96))(v11, v12);
      v14 = *v11;
      *(v0 + 424) = *v11;
      v15 = v11[1];
      *(v0 + 432) = v15;
      *(v0 + 440) = v11[2];
      *(v0 + 448) = v11[3];
      *v10 = v14;
      v10[1] = v15;
      v16 = *MEMORY[0x1E699C5F0];
      v17 = *(v13 + 104);
      *(v0 + 456) = v17;
      *(v0 + 464) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v17(v10, v16, v12);
      *(v0 + 717) = v9;
      sub_1B8B7B54C(v14, v15);
      v18 = swift_task_alloc();
      *(v0 + 472) = v18;
      *v18 = v0;
      v18[1] = sub_1B8B765EC;
      v19 = *(v0 + 240);
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      v22 = v0 + 80;
      v23 = (v0 + 717);
LABEL_21:

      return sub_1B8B759CC(v22, v21, v19, v23, v20);
    }

    if (v8 == *MEMORY[0x1E699C578])
    {
      v45 = *(v0 + 720);
      v46 = *(v0 + 416);
      v47 = *(v0 + 392);
      v48 = *(v0 + 336);
      v49 = *(v0 + 344);
      (*(v49 + 96))(v46, v48);
      v50 = *v46;
      *(v0 + 504) = *v46;
      v51 = v46[1];
      *(v0 + 512) = v51;
      *(v0 + 520) = v46[2];
      *(v0 + 528) = v46[3];
      *v47 = v50;
      v47[1] = v51;
      v52 = *MEMORY[0x1E699C600];
      v53 = *(v49 + 104);
      *(v0 + 536) = v53;
      *(v0 + 544) = (v49 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v53(v47, v52, v48);
      *(v0 + 714) = v45;
      sub_1B8B7B54C(v50, v51);
      v54 = swift_task_alloc();
      *(v0 + 552) = v54;
      *v54 = v0;
      v54[1] = sub_1B8B76E38;
      v19 = *(v0 + 240);
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      v22 = v0 + 112;
      v23 = (v0 + 714);
      goto LABEL_21;
    }

    if (v8 == *MEMORY[0x1E699C5A8])
    {
      v103 = *(v0 + 720);
      v63 = *(v0 + 416);
      v64 = *(v0 + 376);
      v65 = *(v0 + 336);
      v66 = *(v0 + 344);
      v67 = *(v0 + 328);
      v68 = *(v0 + 304);
      v69 = *(v0 + 312);
      (*(v66 + 96))(v63, v65);
      v70 = *v63;
      *(v0 + 584) = *v63;
      v71 = v63[1];
      *(v0 + 592) = v71;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6EF0, &qword_1B8C2A868);
      (*(v69 + 32))(v67, v63 + *(v72 + 48), v68);
      *v64 = v70;
      v64[1] = v71;
      v73 = *MEMORY[0x1E699C5F0];
      v74 = *(v66 + 104);
      *(v0 + 600) = v74;
      *(v0 + 608) = (v66 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v74(v64, v73, v65);
      *(v0 + 713) = v103;
      sub_1B8B7B54C(v70, v71);
      v75 = swift_task_alloc();
      *(v0 + 616) = v75;
      *v75 = v0;
      v75[1] = sub_1B8B77694;
      v19 = *(v0 + 240);
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      v22 = v0 + 128;
      v23 = (v0 + 713);
      goto LABEL_21;
    }

    if (v8 == *MEMORY[0x1E699C5B0])
    {
      v104 = *(v0 + 720);
      v76 = *(v0 + 416);
      v77 = *(v0 + 360);
      v78 = *(v0 + 336);
      v79 = *(v0 + 344);
      v81 = *(v0 + 312);
      v80 = *(v0 + 320);
      v82 = *(v0 + 304);
      (*(v79 + 96))(v76, v78);
      v83 = *v76;
      *(v0 + 648) = *v76;
      v84 = v76[1];
      *(v0 + 656) = v84;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6EE8, &qword_1B8C2A860);
      (*(v81 + 32))(v80, v76 + *(v85 + 48), v82);
      *v77 = v83;
      v77[1] = v84;
      v86 = *MEMORY[0x1E699C600];
      v87 = *(v79 + 104);
      *(v0 + 664) = v87;
      *(v0 + 672) = (v79 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v87(v77, v86, v78);
      *(v0 + 718) = v104;
      sub_1B8B7B54C(v83, v84);
      v88 = swift_task_alloc();
      *(v0 + 680) = v88;
      *v88 = v0;
      v88[1] = sub_1B8B77F28;
      v19 = *(v0 + 240);
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      v22 = v0 + 32;
      v23 = (v0 + 718);
      goto LABEL_21;
    }

    v89 = *(v0 + 296);
    v90 = *(v0 + 248);
    v91 = *(v0 + 232);
    LOBYTE(v105[0]) = *(v0 + 720);
    sub_1B8B78D64(v91, v105, v90, v89);
    sub_1B8B79E8C(*(v0 + 296), *(v0 + 248));
    (*(*(v0 + 272) + 16))(*(v0 + 288), *(v0 + 296), *(v0 + 264));
    v96 = sub_1B8B5D3EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v98 = v96[2];
    v97 = v96[3];
    if (v98 >= v97 >> 1)
    {
      v96 = sub_1B8B5D3EC((v97 > 1), v98 + 1, 1, v96);
    }

    v99 = *(v0 + 288);
    v100 = *(v0 + 264);
    v101 = *(v0 + 272);
    (*(v101 + 8))(*(v0 + 296), v100);
    v96[2] = v98 + 1;
    (*(v101 + 32))(v96 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v98, v99, v100);
    *(v0 + 144) = v96;
    v102 = MEMORY[0x1E69E7CC0];
    v92 = *(v0 + 416);
    v93 = *(v0 + 336);
    v94 = *(v0 + 344);
    v95 = *(v0 + 224);
    *v95 = v96;
    v95[1] = v102;
    (*(v94 + 8))(v92, v93);
  }

  else
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 264);
    v27 = *(v0 + 232);
    v28 = sub_1B8C23C38();
    __swift_project_value_buffer(v28, qword_1EBAB3A00);
    (*(v25 + 16))(v24, v27, v26);
    v29 = sub_1B8C23C18();
    v30 = sub_1B8C25478();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 272);
    v32 = *(v0 + 280);
    v34 = *(v0 + 264);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v105[0] = v36;
      *v35 = 136380675;
      v37 = sub_1B8C23468();
      v39 = v38;
      (*(v33 + 8))(v32, v34);
      v40 = sub_1B8B5DD48(v37, v39, v105);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1B8B22000, v29, v30, "Attachments directory does not exist: %{private}s", v35, 0xCu);
      v41 = __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1B8CCB0E0](v36, -1, -1, v41);
      MEMORY[0x1B8CCB0E0](v35, -1, -1);
    }

    else
    {

      v42 = (*(v33 + 8))(v32, v34);
    }

    sub_1B8B7B4F8(v42, v43, v44);
    v55 = swift_allocError();
    *v56 = 1;
    v57 = sub_1B8B5D2B8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1B8B5D2B8((v58 > 1), v59 + 1, 1, v57);
    }

    v60 = *(v0 + 224);
    v57[2] = v59 + 1;
    v57[v59 + 4] = v55;
    *(v0 + 152) = v57;
    *v60 = *(v0 + 144);
    v60[1] = v57;
  }

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1B8B765EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B766E8, 0, 0);
}

uint64_t sub_1B8B766E8()
{
  v34 = v0;
  v1 = v0[11];
  v0[60] = v0[10];
  v0[61] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v31 = v1;
    do
    {
      v16 = *(v1 + v3);
      v17 = v16;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, v5);
      v19 = v16;
      v20 = sub_1B8C23C18();
      v21 = sub_1B8C25478();

      if (os_log_type_enabled(v20, v21))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v33 = v8;
        *v6 = 136380675;
        *(v32 + 216) = v16;
        v9 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v33);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v20, v21, "Failed to write image attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v15 = v6;
        v1 = v31;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v22 = *(v32 + 456);
  v23 = *(v32 + 448);
  v24 = *(v32 + 720);
  v25 = *(v32 + 400);
  *v25 = *(v32 + 440);
  v25[1] = v23;
  v22();
  *(v32 + 719) = v24;
  v26 = swift_task_alloc();
  *(v32 + 496) = v26;
  *v26 = v32;
  v26[1] = sub_1B8B7699C;
  v27 = *(v32 + 240);
  v28 = *(v32 + 248);
  v29 = *(v32 + 232);

  return sub_1B8B759CC(v32 + 48, v29, v27, (v32 + 719), v28);
}

uint64_t sub_1B8B7699C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B76A98, 0, 0);
}

uint64_t sub_1B8B76A98()
{
  v39 = v0;
  v1 = *(v0 + 56);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v36 = v1;
    do
    {
      v16 = v1[v3];
      v17 = v16;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, v5);
      v19 = v16;
      v20 = sub_1B8C23C18();
      v21 = sub_1B8C25478();

      if (os_log_type_enabled(v20, v21))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v38 = v8;
        *v6 = 136380675;
        *(v37 + 208) = v16;
        v9 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v38);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v20, v21, "Failed to write text attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v15 = v6;
        v1 = v36;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v22 = *(v37 + 488);
  v24 = *(v37 + 424);
  v23 = *(v37 + 432);
  v25 = *(v37 + 400);
  v34 = *(v37 + 408);
  v27 = *(v37 + 336);
  v26 = *(v37 + 344);
  v35 = *(v37 + 224);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v22);

  sub_1B8B58A40(v29);
  sub_1B8B58BD8(v1);

  v30 = sub_1B8B4645C(v24, v23);
  v31 = *(v26 + 8);
  v31(v25, v27, v30);
  (v31)(v34, v27);
  *v35 = *(v37 + 144);

  v32 = *(v37 + 8);

  return v32();
}

uint64_t sub_1B8B76E38()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B76F34, 0, 0);
}

uint64_t sub_1B8B76F34()
{
  v34 = v0;
  v1 = v0[15];
  v0[70] = v0[14];
  v0[71] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v31 = v1;
    do
    {
      v16 = *(v1 + v3);
      v17 = v16;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, v5);
      v19 = v16;
      v20 = sub_1B8C23C18();
      v21 = sub_1B8C25478();

      if (os_log_type_enabled(v20, v21))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v33 = v8;
        *v6 = 136380675;
        *(v32 + 200) = v16;
        v9 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v33);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v20, v21, "Failed to write sketch attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v15 = v6;
        v1 = v31;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v22 = *(v32 + 536);
  v23 = *(v32 + 528);
  v24 = *(v32 + 720);
  v25 = *(v32 + 384);
  *v25 = *(v32 + 520);
  v25[1] = v23;
  v22();
  *(v32 + 715) = v24;
  v26 = swift_task_alloc();
  *(v32 + 576) = v26;
  *v26 = v32;
  v26[1] = sub_1B8B771F4;
  v27 = *(v32 + 240);
  v28 = *(v32 + 248);
  v29 = *(v32 + 232);

  return sub_1B8B759CC(v32 + 96, v29, v27, (v32 + 715), v28);
}

uint64_t sub_1B8B771F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B772F0, 0, 0);
}

uint64_t sub_1B8B772F0()
{
  v39 = v0;
  v1 = *(v0 + 104);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v36 = v1;
    do
    {
      v16 = v1[v3];
      v17 = v16;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, v5);
      v19 = v16;
      v20 = sub_1B8C23C18();
      v21 = sub_1B8C25478();

      if (os_log_type_enabled(v20, v21))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v38 = v8;
        *v6 = 136380675;
        *(v37 + 192) = v16;
        v9 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v38);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v20, v21, "Failed to write text attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v15 = v6;
        v1 = v36;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v22 = *(v37 + 568);
  v24 = *(v37 + 504);
  v23 = *(v37 + 512);
  v25 = *(v37 + 384);
  v34 = *(v37 + 392);
  v27 = *(v37 + 336);
  v26 = *(v37 + 344);
  v35 = *(v37 + 224);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v22);

  sub_1B8B58A40(v29);
  sub_1B8B58BD8(v1);

  v30 = sub_1B8B4645C(v24, v23);
  v31 = *(v26 + 8);
  v31(v25, v27, v30);
  (v31)(v34, v27);
  *v35 = *(v37 + 144);

  v32 = *(v37 + 8);

  return v32();
}

uint64_t sub_1B8B77694()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B77790, 0, 0);
}

uint64_t sub_1B8B77790()
{
  v34 = v0;
  v1 = v0[17];
  v0[78] = v0[16];
  v0[79] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v31 = v1;
    do
    {
      v16 = *(v1 + v3);
      v17 = v16;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, v5);
      v19 = v16;
      v20 = sub_1B8C23C18();
      v21 = sub_1B8C25478();

      if (os_log_type_enabled(v20, v21))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v33 = v8;
        *v6 = 136380675;
        *(v32 + 160) = v16;
        v9 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v33);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v20, v21, "Failed to write image attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v15 = v6;
        v1 = v31;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v22 = *(v32 + 600);
  v23 = *(v32 + 720);
  v24 = *(v32 + 368);
  v25 = *(v32 + 336);
  (*(*(v32 + 312) + 16))(v24, *(v32 + 328), *(v32 + 304));
  v22(v24, *MEMORY[0x1E699C588], v25);
  *(v32 + 712) = v23;
  v26 = swift_task_alloc();
  *(v32 + 640) = v26;
  *v26 = v32;
  v26[1] = sub_1B8B77A64;
  v27 = *(v32 + 240);
  v28 = *(v32 + 248);
  v29 = *(v32 + 232);

  return sub_1B8B759CC(v32 + 16, v29, v27, (v32 + 712), v28);
}

uint64_t sub_1B8B77A64()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B77B60, 0, 0);
}

uint64_t sub_1B8B77B60()
{
  v41 = v0;
  v1 = *(v0 + 24);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v38 = v1;
    do
    {
      v15 = v1[v3];
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v40 = v8;
        *v6 = 136380675;
        *(v39 + 168) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v40);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write structured attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v1 = v38;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v6, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v21 = *(v39 + 632);
  v22 = *(v39 + 592);
  v23 = *(v39 + 584);
  v33 = *(v39 + 368);
  v34 = *(v39 + 376);
  v25 = *(v39 + 336);
  v24 = *(v39 + 344);
  v26 = *(v39 + 312);
  v35 = *(v39 + 304);
  v36 = *(v39 + 328);
  v37 = *(v39 + 224);

  sub_1B8B58A40(v27);
  sub_1B8B58BD8(v21);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v1);

  v29 = sub_1B8B4645C(v23, v22);
  v30 = *(v24 + 8);
  v30(v33, v25, v29);
  (v30)(v34, v25);
  (*(v26 + 8))(v36, v35);
  *v37 = *(v39 + 144);

  v31 = *(v39 + 8);

  return v31();
}

uint64_t sub_1B8B77F28()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B78024, 0, 0);
}

uint64_t sub_1B8B78024()
{
  v34 = v0;
  v1 = v0[5];
  v0[86] = v0[4];
  v0[87] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v31 = v1;
    do
    {
      v16 = *(v1 + v3);
      v17 = v16;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v18 = sub_1B8C23C38();
      __swift_project_value_buffer(v18, v5);
      v19 = v16;
      v20 = sub_1B8C23C18();
      v21 = sub_1B8C25478();

      if (os_log_type_enabled(v20, v21))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v33 = v8;
        *v6 = 136380675;
        *(v32 + 176) = v16;
        v9 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v33);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v20, v21, "Failed to write sketch attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v15 = v6;
        v1 = v31;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v22 = *(v32 + 664);
  v23 = *(v32 + 720);
  v24 = *(v32 + 352);
  v25 = *(v32 + 336);
  (*(*(v32 + 312) + 16))(v24, *(v32 + 320), *(v32 + 304));
  v22(v24, *MEMORY[0x1E699C588], v25);
  *(v32 + 716) = v23;
  v26 = swift_task_alloc();
  *(v32 + 704) = v26;
  *v26 = v32;
  v26[1] = sub_1B8B782FC;
  v27 = *(v32 + 240);
  v28 = *(v32 + 248);
  v29 = *(v32 + 232);

  return sub_1B8B759CC(v32 + 64, v29, v27, (v32 + 716), v28);
}

uint64_t sub_1B8B782FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B783F8, 0, 0);
}

uint64_t sub_1B8B783F8()
{
  v41 = v0;
  v1 = *(v0 + 72);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v38 = v1;
    do
    {
      v15 = v1[v3];
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v40 = v8;
        *v6 = 136380675;
        *(v39 + 184) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v40);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write structured attachment.  %{private}s", v6, 0xCu);
        v13 = __swift_destroy_boxed_opaque_existential_0(v8);
        v14 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v14, -1, -1, v13);
        v1 = v38;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v6, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v21 = *(v39 + 696);
  v22 = *(v39 + 656);
  v23 = *(v39 + 648);
  v33 = *(v39 + 352);
  v34 = *(v39 + 360);
  v25 = *(v39 + 336);
  v24 = *(v39 + 344);
  v26 = *(v39 + 312);
  v35 = *(v39 + 304);
  v36 = *(v39 + 320);
  v37 = *(v39 + 224);

  sub_1B8B58A40(v27);
  sub_1B8B58BD8(v21);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v1);

  v29 = sub_1B8B4645C(v23, v22);
  v30 = *(v24 + 8);
  v30(v33, v25, v29);
  (v30)(v34, v25);
  (*(v26 + 8))(v36, v35);
  *v37 = *(v39 + 144);

  v31 = *(v39 + 8);

  return v31();
}

uint64_t FBKSInteraction.Content.Kind.description.getter()
{
  v1 = 0x65746172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x6172747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E696769724FLL;
  }
}

uint64_t FBKSInteraction.Content.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B788D4()
{
  v1 = 0x65746172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x6172747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E696769724FLL;
  }
}

uint64_t FBKSInteraction.Content.AnotherKind.description.getter()
{
  v1 = 0x6C616E696769724FLL;
  if (*v0)
  {
    v1 = 0x65746172656E6547;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6172747845;
  }
}

uint64_t sub_1B8B789A8()
{
  if (*v0)
  {
    v1 = 0x65746172656E6547;
  }

  else
  {
    v1 = 0x6C616E696769724FLL;
  }

  if (*v0 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 0x6172747845;
  }
}

uint64_t FBKSInteraction.Content.AttachmentResult.urls.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FBKSInteraction.Content.AttachmentResult.errors.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

double FBKSInteraction.Content.AttachmentResult.append(url:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B8C23498();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1B8B5D3EC(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B8B5D3EC((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  (*(v6 + 32))(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v8, v5);
  *v2 = v9;
  v12 = *(v2 + 8);
  *a2 = v9;
  a2[1] = v12;

  return result;
}

double FBKSInteraction.Content.AttachmentResult.append(contentsOf:)@<D0>(void *a2@<X8>)
{

  sub_1B8B58A40(v4);
  v5 = *v2;
  v6 = v2[1];
  *a2 = v5;
  a2[1] = v6;

  return result;
}

double FBKSInteraction.Content.AttachmentResult.append(contentsOf:)@<D0>(uint64_t *a2@<X8>)
{

  sub_1B8B58BD8(v4);
  v5 = v2[1];
  *a2 = *v2;
  a2[1] = v5;

  return result;
}

double FBKSInteraction.Content.AttachmentResult.append(contentsOf:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];

  sub_1B8B58A40(v5);
  sub_1B8B58BD8(v6);
  v7 = *v3;
  v8 = v3[1];
  *a2 = v7;
  a2[1] = v8;

  return result;
}

uint64_t sub_1B8B78D64@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v85 = a3;
  v84 = a4;
  v6 = sub_1B8C23938();
  v82 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B8C23498();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v80 = &v77[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v77[-v15];
  v16 = sub_1B8C23398();
  v83 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v77[-v20];
  v78 = *a2;
  v22 = [objc_opt_self() defaultManager];
  v90 = a1;
  sub_1B8C23468();
  v23 = sub_1B8C250F8();

  LODWORD(a2) = [v22 fileExistsAtPath_];

  if (a2)
  {
    sub_1B8B7B5A0(v85, v21);
    v24 = sub_1B8C238B8();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v21, 1, v24) != 1)
    {
      v52 = sub_1B8C23898();
      v54 = v53;
      (*(v25 + 8))(v21, v24);
      v88 = v52;
      v89 = v54;
      v55 = v83;
      v56 = (*(v83 + 104))(v18, *MEMORY[0x1E6968F70], v16);
      sub_1B8B34CA8(v56, v57, v58);
      sub_1B8C23488();
      (*(v55 + 8))(v18, v16);
    }

    sub_1B8B48A20(v21);
    v26 = v82;
    (*(v82 + 16))(v8, v81, v6);
    if ((*(v26 + 88))(v8, v6) == *MEMORY[0x1E699C5B8])
    {
      (*(v26 + 96))(v8, v6);
      v28 = v86;
      v27 = v87;
      v29 = v79;
      (*(v86 + 32))(v79, v8, v87);
      v88 = sub_1B8C233D8();
      v89 = v30;
      v31 = v83;
      v32 = (*(v83 + 104))(v18, *MEMORY[0x1E6968F70], v16);
      sub_1B8B34CA8(v32, v33, v34);
      sub_1B8C23488();
      (*(v31 + 8))(v18, v16);

      return (*(v28 + 8))(v29, v27);
    }

    (*(v26 + 8))(v8, v6);
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v59 = sub_1B8C23C38();
    __swift_project_value_buffer(v59, qword_1EBAB3A00);
    v61 = v86;
    v60 = v87;
    v62 = v80;
    (*(v86 + 16))(v80, v90, v87);
    v63 = sub_1B8C23C18();
    v64 = sub_1B8C25478();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v88 = v66;
      *v65 = 136315395;
      v67 = 0xE900000000000064;
      v68 = 0x65746172656E6547;
      if (v78 != 1)
      {
        v68 = 0x6172747845;
        v67 = 0xE500000000000000;
      }

      if (v78)
      {
        v69 = v68;
      }

      else
      {
        v69 = 0x6C616E696769724FLL;
      }

      if (v78)
      {
        v70 = v67;
      }

      else
      {
        v70 = 0xE800000000000000;
      }

      v71 = sub_1B8B5DD48(v69, v70, &v88);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2081;
      v72 = sub_1B8C23468();
      v74 = v73;
      (*(v61 + 8))(v62, v60);
      v75 = sub_1B8B5DD48(v72, v74, &v88);

      *(v65 + 14) = v75;
      _os_log_impl(&dword_1B8B22000, v63, v64, "Filename not provided through FBKSInteraction.AnnotatedContent and cannot be generated from %s content in attachments directory: %{private}s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v66, -1, -1);
      MEMORY[0x1B8CCB0E0](v65, -1, -1);
    }

    else
    {

      v48 = (*(v61 + 8))(v62, v60);
    }

    v51 = 5;
  }

  else
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v36 = sub_1B8C23C38();
    __swift_project_value_buffer(v36, qword_1EBAB3A00);
    v38 = v86;
    v37 = v87;
    (*(v86 + 16))(v12, v90, v87);
    v39 = sub_1B8C23C18();
    v40 = sub_1B8C25478();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v88 = v42;
      *v41 = 136380675;
      v43 = sub_1B8C23468();
      v45 = v44;
      (*(v38 + 8))(v12, v37);
      v46 = sub_1B8B5DD48(v43, v45, &v88);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1B8B22000, v39, v40, "Attachments directory does not exist: %{private}s", v41, 0xCu);
      v47 = __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B8CCB0E0](v42, -1, -1, v47);
      MEMORY[0x1B8CCB0E0](v41, -1, -1);
    }

    else
    {

      v48 = (*(v38 + 8))(v12, v37);
    }

    v51 = 1;
  }

  sub_1B8B7B4F8(v48, v49, v50);
  swift_allocError();
  *v76 = v51;
  return swift_willThrow();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FBKSInteraction.Content.fileExtension()()
{
  v1 = sub_1B8C23498();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8C23938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v0, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x1E699C5B8])
  {
    (*(v6 + 96))(v8, v5);
    (*(v2 + 32))(v4, v8, v1);
    v10 = sub_1B8C233A8();
    v8 = v11;
    (*(v2 + 8))(v4, v1);
    goto LABEL_14;
  }

  if (v9 == *MEMORY[0x1E699C5D8])
  {
    (*(v6 + 8))(v8, v5);
    v10 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    swift_allocError();
    v13 = v12;
    *v12 = 0xD000000000000036;
    v12[1] = 0x80000001B8C33740;
    v14 = MEMORY[0x1E699C568];
LABEL_5:
    (*(*(v10 - 8) + 104))(v13, *v14, v10);
    swift_willThrow();
    goto LABEL_14;
  }

  if (v9 == *MEMORY[0x1E699C5D0])
  {
LABEL_7:
    v10 = 7633012;
    (*(v6 + 8))(v8, v5);
    v8 = 0xE300000000000000;
    goto LABEL_14;
  }

  if (v9 == *MEMORY[0x1E699C5F0])
  {
    (*(v6 + 8))(v8, v5);
    v8 = 0xE300000000000000;
    v10 = 6778480;
    goto LABEL_14;
  }

  if (v9 == *MEMORY[0x1E699C5E0] || v9 == *MEMORY[0x1E699C590] || v9 == *MEMORY[0x1E699C600])
  {
LABEL_13:
    v10 = 1635017060;
    (*(v6 + 8))(v8, v5);
    v8 = 0xE400000000000000;
    goto LABEL_14;
  }

  if (v9 == *MEMORY[0x1E699C608] || v9 == *MEMORY[0x1E699C578])
  {
    (*(v6 + 8))(v8, v5);
LABEL_18:
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v17 = sub_1B8C23C38();
    __swift_project_value_buffer(v17, qword_1EBAB3A00);
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25478();
    if (os_log_type_enabled(v18, v19))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v8 = 136446210;
      *(v8 + 4) = sub_1B8B5DD48(0x65747845656C6966, 0xEF29286E6F69736ELL, &v36);
      _os_log_impl(&dword_1B8B22000, v18, v19, "%{public}s cannot be used with complex types", v8, 0xCu);
      v21 = __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CCB0E0](v20, -1, -1, v21);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    v10 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    swift_allocError();
    v13 = v22;
    v14 = MEMORY[0x1E699C560];
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x1E699C5F8])
  {
    goto LABEL_13;
  }

  if (v9 == *MEMORY[0x1E699C580])
  {
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x1E699C588])
  {
    (*(v6 + 8))(v8, v5);
    v8 = 0xE400000000000000;
    v10 = 1852797802;
    goto LABEL_14;
  }

  if (v9 == *MEMORY[0x1E699C5A8])
  {
    (*(v6 + 96))(v8, v5);
    sub_1B8B4645C(*v8, *(v8 + 1));
    v23 = &qword_1EBAA6EF0;
    v24 = &qword_1B8C2A868;
LABEL_31:
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v23, v24) + 48);
    v26 = sub_1B8C237E8();
    (*(*(v26 - 8) + 8))(&v8[v25], v26);
    goto LABEL_18;
  }

  if (v9 == *MEMORY[0x1E699C5B0])
  {
    (*(v6 + 96))(v8, v5);
    sub_1B8B4645C(*v8, *(v8 + 1));
    v23 = &qword_1EBAA6EE8;
    v24 = &qword_1B8C2A860;
    goto LABEL_31;
  }

  if (v9 == *MEMORY[0x1E699C5A0] || v9 == *MEMORY[0x1E699C598])
  {
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x1E699C5E8])
  {
    goto LABEL_13;
  }

  if (v9 == *MEMORY[0x1E699C5C0])
  {
    (*(v6 + 8))(v8, v5);
    v8 = 0xE400000000000000;
    v10 = 1819112552;
  }

  else
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v27 = sub_1B8C23C38();
    __swift_project_value_buffer(v27, qword_1EBAB3A00);
    v28 = sub_1B8C23C18();
    v29 = sub_1B8C25478();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1B8B5DD48(0x65747845656C6966, 0xEF29286E6F69736ELL, &v36);
      _os_log_impl(&dword_1B8B22000, v28, v29, "%{public}s unknown Content type", v30, 0xCu);
      v32 = __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B8CCB0E0](v31, -1, -1, v32);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
    }

    v10 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v33, *MEMORY[0x1E699C560], v10);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
  }

LABEL_14:
  v15 = v10;
  v16 = v8;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

void sub_1B8B79E8C(uint64_t a1, uint64_t a2)
{
  v160 = a2;
  v174[2] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v159 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v158 = &v146 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v148 = &v146 - v8;
  v9 = sub_1B8C238B8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v153 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v154 = &v146 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v146 - v15;
  v151 = sub_1B8C237E8();
  v16 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8C25168();
  v156 = *(v18 - 8);
  v157 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v149 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v146 - v21;
  v22 = sub_1B8C23938();
  v23 = *(v22 - 8);
  v167 = v22;
  v168 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v169 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B8C23498();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v165 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v162 = &v146 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v146 - v31;
  if (qword_1EBAA5968 != -1)
  {
    swift_once();
  }

  v33 = sub_1B8C23C38();
  v34 = __swift_project_value_buffer(v33, qword_1EBAB3A00);
  v163 = *(v26 + 16);
  v164 = v26 + 16;
  v163(v32, a1, v25);
  v172 = v25;
  v35 = v26;
  v170 = v34;
  v36 = sub_1B8C23C18();
  v37 = sub_1B8C25468();
  v38 = os_log_type_enabled(v36, v37);
  v161 = v10;
  v152 = v16;
  v171 = v26;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v174[0] = v146;
    *v39 = 136315394;
    *(v39 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C33780, v174);
    *(v39 + 12) = 2080;
    v40 = sub_1B8C23468();
    v41 = a1;
    v42 = v9;
    v44 = v43;
    v45 = *(v35 + 8);
    v46 = v32;
    v47 = v172;
    v45(v46, v172);
    v48 = sub_1B8B5DD48(v40, v44, v174);
    v9 = v42;
    a1 = v41;

    *(v39 + 14) = v48;
    _os_log_impl(&dword_1B8B22000, v36, v37, "%s %s", v39, 0x16u);
    v49 = v146;
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v49, -1, -1);
    MEMORY[0x1B8CCB0E0](v39, -1, -1);
  }

  else
  {

    v45 = *(v26 + 8);
    v50 = v32;
    v47 = v172;
    v45(v50, v172);
  }

  v51 = objc_opt_self();
  v52 = [v51 defaultManager];
  sub_1B8C23468();
  v53 = sub_1B8C250F8();

  v54 = [v52 fileExistsAtPath_];

  if (v54)
  {
    v55 = v165;
    v163(v165, a1, v47);
    v56 = sub_1B8C23C18();
    v57 = sub_1B8C25478();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v174[0] = v59;
      *v58 = 136380675;
      v60 = sub_1B8C23468();
      v61 = v55;
      v63 = v62;
      v45(v61, v47);
      v64 = sub_1B8B5DD48(v60, v63, v174);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_1B8B22000, v56, v57, "Attachment URL already exists: %{private}s", v58, 0xCu);
      v65 = __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B8CCB0E0](v59, -1, -1, v65);
      MEMORY[0x1B8CCB0E0](v58, -1, -1);
    }

    else
    {

      v66 = (v45)(v55, v47);
    }

LABEL_14:
    sub_1B8B7B4F8(v66, v67, v68);
    v83 = swift_allocError();
    *v84 = 5;
    v173 = v83;
LABEL_18:
    swift_willThrow();
    return;
  }

  v69 = v168;
  v70 = v169;
  v71 = v167;
  (*(v168 + 16))(v169, v166, v167);
  v72 = (*(v69 + 88))(v70, v71);
  if (v72 == *MEMORY[0x1E699C5B8])
  {
    v172 = v45;
    (*(v69 + 96))(v70, v71);
    v73 = v162;
    (*(v171 + 32))(v162, v70, v47);
    v74 = v73;
    v75 = [v51 defaultManager];
    v76 = sub_1B8C233E8();
    v77 = sub_1B8C233E8();
    v174[0] = 0;
    v78 = [v75 copyItemAtURL:v76 toURL:v77 error:v174];

    v79 = v174[0];
    if (v78)
    {
      v80 = v158;
      sub_1B8B7B5A0(v160, v158);
      v81 = v161;
      if ((*(v161 + 48))(v80, 1, v9) == 1)
      {
        v82 = v79;
        v172(v74, v47);
        sub_1B8B48A20(v80);
        return;
      }

      v100 = v154;
      (*(v81 + 32))(v154, v80, v9);
      v101 = v79;
      v102 = v173;
      sub_1B8C23858();
      v173 = v102;
      (*(v81 + 8))(v100, v9);
    }

    else
    {
      v90 = v174[0];
      v91 = sub_1B8C23368();

      v173 = v91;
      swift_willThrow();
    }

    v172(v74, v47);
    return;
  }

  if (v72 == *MEMORY[0x1E699C5D8])
  {
    (*(v69 + 8))(v70, v71);
    v85 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    v86 = swift_allocError();
    v88 = v87;
    *v87 = 0xD00000000000003DLL;
    v87[1] = 0x80000001B8C337A0;
    v89 = MEMORY[0x1E699C568];
LABEL_17:
    (*(*(v85 - 8) + 104))(v88, *v89, v85);
    v173 = v86;
    goto LABEL_18;
  }

  v92 = v159;
  if (v72 == *MEMORY[0x1E699C5D0])
  {
    goto LABEL_21;
  }

  if (v72 != *MEMORY[0x1E699C5F0] && v72 != *MEMORY[0x1E699C5E0] && v72 != *MEMORY[0x1E699C590] && v72 != *MEMORY[0x1E699C600])
  {
    if (v72 == *MEMORY[0x1E699C608] || v72 == *MEMORY[0x1E699C578])
    {
      (*(v69 + 8))(v70, v71);
LABEL_34:
      v103 = sub_1B8C23C18();
      v104 = sub_1B8C25478();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v174[0] = v106;
        *v105 = 136446210;
        *(v105 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C33780, v174);
        _os_log_impl(&dword_1B8B22000, v103, v104, "%{public}s cannot be used with complex types", v105, 0xCu);
        v107 = __swift_destroy_boxed_opaque_existential_0(v106);
        MEMORY[0x1B8CCB0E0](v106, -1, -1, v107);
        MEMORY[0x1B8CCB0E0](v105, -1, -1);
      }

      v85 = sub_1B8C238C8();
      sub_1B8B7B1B4();
      v86 = swift_allocError();
      v88 = v108;
      v89 = MEMORY[0x1E699C560];
      goto LABEL_17;
    }

    if (v72 != *MEMORY[0x1E699C5F8])
    {
      if (v72 != *MEMORY[0x1E699C580])
      {
        if (v72 == *MEMORY[0x1E699C588])
        {
          v114 = v9;
          v115 = v169;
          (*(v69 + 96))(v169, v71);
          v116 = v152;
          v117 = v150;
          v118 = v151;
          (*(v152 + 32))(v150, v115, v151);
          v119 = v173;
          v120 = sub_1B8C237D8();
          v173 = v119;
          if (v119)
          {
            (*(v116 + 8))(v117, v118);
          }

          else
          {
            v174[0] = v120;
            v174[1] = v121;
            v128 = v149;
            v129 = sub_1B8C25158();
            sub_1B8B34CA8(v129, v130, v131);
            v132 = v173;
            sub_1B8C256A8();
            v173 = v132;
            if (v132)
            {
              (*(v156 + 8))(v128, v157);
              (*(v116 + 8))(v117, v118);
            }

            else
            {
              (*(v156 + 8))(v128, v157);

              v141 = v148;
              sub_1B8B7B5A0(v160, v148);
              v142 = v161;
              v143 = v114;
              if ((*(v161 + 48))(v141, 1, v114) == 1)
              {
                (*(v116 + 8))(v150, v118);
                sub_1B8B48A20(v141);
              }

              else
              {
                v144 = v147;
                (*(v142 + 32))(v147, v141, v143);
                v145 = v173;
                sub_1B8C23858();
                v173 = v145;
                (*(v142 + 8))(v144, v143);
                (*(v116 + 8))(v150, v118);
              }
            }
          }

          return;
        }

        v122 = v152;
        v123 = v151;
        if (v72 == *MEMORY[0x1E699C5A8])
        {
          v124 = v169;
          (*(v168 + 96))(v169, v71);
          sub_1B8B4645C(*v124, *(v124 + 1));
          v125 = &qword_1EBAA6EF0;
          v126 = &qword_1B8C2A868;
LABEL_52:
          v127 = __swift_instantiateConcreteTypeFromMangledNameV2(v125, v126);
          (*(v122 + 8))(&v124[*(v127 + 48)], v123);
          goto LABEL_34;
        }

        if (v72 == *MEMORY[0x1E699C5B0])
        {
          v124 = v169;
          (*(v168 + 96))(v169, v71);
          sub_1B8B4645C(*v124, *(v124 + 1));
          v125 = &qword_1EBAA6EE8;
          v126 = &qword_1B8C2A860;
          goto LABEL_52;
        }

        v69 = v168;
        v70 = v169;
        if (v72 != *MEMORY[0x1E699C5A0] && v72 != *MEMORY[0x1E699C598])
        {
          if (v72 == *MEMORY[0x1E699C5E8])
          {
            goto LABEL_38;
          }

          if (v72 != *MEMORY[0x1E699C5C0])
          {
            v133 = sub_1B8C23C18();
            v134 = sub_1B8C25478();
            if (os_log_type_enabled(v133, v134))
            {
              v135 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v174[0] = v136;
              *v135 = 136446210;
              *(v135 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C33780, v174);
              _os_log_impl(&dword_1B8B22000, v133, v134, "%{public}s unknown Content type", v135, 0xCu);
              v137 = __swift_destroy_boxed_opaque_existential_0(v136);
              MEMORY[0x1B8CCB0E0](v136, -1, -1, v137);
              MEMORY[0x1B8CCB0E0](v135, -1, -1);
            }

            v138 = sub_1B8C238C8();
            sub_1B8B7B1B4();
            v139 = swift_allocError();
            (*(*(v138 - 8) + 104))(v140, *MEMORY[0x1E699C560], v138);
            v173 = v139;
            swift_willThrow();
            (*(v168 + 8))(v169, v167);
            return;
          }
        }
      }

LABEL_21:
      (*(v69 + 96))(v70, v71);
      v93 = v155;
      sub_1B8C25158();
      v94 = sub_1B8C25138();
      v96 = v95;

      (*(v156 + 8))(v93, v157);
      if (v96 >> 60 == 15)
      {
        v97 = sub_1B8C23C18();
        v98 = sub_1B8C25478();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_1B8B22000, v97, v98, "Cannot convert .text to data using UTF8", v99, 2u);
          MEMORY[0x1B8CCB0E0](v99, -1, -1);
        }

        goto LABEL_14;
      }

      goto LABEL_39;
    }
  }

LABEL_38:
  (*(v69 + 96))(v70, v71);
  v109 = v70;
  v94 = *v70;
  v96 = v109[1];
LABEL_39:
  v110 = v173;
  sub_1B8C234C8();
  v173 = v110;
  if (!v110)
  {
    sub_1B8B7B5A0(v160, v92);
    v111 = v161;
    if ((*(v161 + 48))(v92, 1, v9) == 1)
    {
      sub_1B8B4645C(v94, v96);
      sub_1B8B48A20(v92);
      return;
    }

    v112 = v153;
    (*(v111 + 32))();
    v113 = v173;
    sub_1B8C23858();
    v173 = v113;
    (*(v111 + 8))(v112, v9);
  }

  sub_1B8B4645C(v94, v96);
}

unint64_t sub_1B8B7B1B4()
{
  result = qword_1EBAA6EE0;
  if (!qword_1EBAA6EE0)
  {
    sub_1B8C238C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EE0);
  }

  return result;
}

unint64_t sub_1B8B7B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6EF8;
  if (!qword_1EBAA6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EF8);
  }

  return result;
}

unint64_t sub_1B8B7B268()
{
  result = qword_1EBAA6F00;
  if (!qword_1EBAA6F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F08, &qword_1B8C2A8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F00);
  }

  return result;
}

uint64_t _s11AnotherKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s11AnotherKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B8B7B430(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B8B7B444(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1B8B7B464(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B8B7B4AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B8B7B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7290;
  if (!qword_1EBAA7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7290);
  }

  return result;
}

uint64_t sub_1B8B7B54C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B8B7B5A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppMetaView(uint64_t a1)
{
  result = qword_1EBAA6F10;
  if (!qword_1EBAA6F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B7B684(uint64_t a1)
{
  result = type metadata accessor for BatchInteraction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8B7B70C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C24398();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B8C246B8();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F20, &qword_1B8C2AA60);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v24 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F28, &qword_1B8C2AA68);
  v9 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v24 - v10;
  v11 = *(v1 + *(type metadata accessor for BatchInteraction(0) + 24));
  if (!v11)
  {
    return (*(v9 + 56))(a1, 1, 1, v33);
  }

  swift_getKeyPath();
  *&v50 = v11;
  sub_1B8B7C44C(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
  sub_1B8C23588();

  v12 = v11[3];
  if (!v12)
  {
    return (*(v9 + 56))(a1, 1, 1, v33);
  }

  v26 = a1;
  v13 = v11[4];
  v14 = v11[2];
  v24 = v14;

  v15 = v13;
  v25 = v15;
  v16 = sub_1B8C242E8();
  v37 = 0;
  sub_1B8B7BCF8(v14, v12, v15, &v50);
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v43 = v55;
  v38 = v50;
  v39 = v51;
  v48[6] = v56;
  v48[7] = v57;
  v48[8] = v58;
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v54;
  v48[5] = v55;
  v47 = v59[0];
  v49 = v59[0];
  v48[0] = v50;
  v48[1] = v51;
  sub_1B8B34450(&v38, &v34, &qword_1EBAA6F38, &qword_1B8C2AA98);
  sub_1B8B3433C(v48, &qword_1EBAA6F38, &qword_1B8C2AA98);
  *&v36[55] = v41;
  *&v36[39] = v40;
  *&v36[103] = v44;
  *&v36[119] = v45;
  *&v36[135] = v46;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[7] = v38;
  *&v36[23] = v39;
  *(&v35[6] + 1) = *&v36[96];
  *(&v35[7] + 1) = *&v36[112];
  *(&v35[8] + 1) = *&v36[128];
  *(&v35[2] + 1) = *&v36[32];
  *(&v35[3] + 1) = *&v36[48];
  *(&v35[4] + 1) = *&v36[64];
  *(&v35[5] + 1) = *&v36[80];
  *(v35 + 1) = *v36;
  v36[151] = v47;
  *&v34 = v16;
  *(&v34 + 1) = 0x4018000000000000;
  LOBYTE(v35[0]) = v37;
  *(&v35[9] + 1) = *&v36[144];
  *(&v35[1] + 1) = *&v36[16];
  BYTE9(v35[9]) = 0;
  sub_1B8C246A8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F40, &qword_1B8C2AAA0);
  v18 = sub_1B8B7C1E0();
  v19 = v30;
  sub_1B8C24B68();
  (*(v27 + 8))(v6, v28);
  v58 = v35[7];
  v59[0] = v35[8];
  *(v59 + 10) = *(&v35[8] + 10);
  v54 = v35[3];
  v55 = v35[4];
  v56 = v35[5];
  v57 = v35[6];
  v50 = v34;
  v51 = v35[0];
  v52 = v35[1];
  v53 = v35[2];
  sub_1B8B3433C(&v50, &qword_1EBAA6F40, &qword_1B8C2AAA0);
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8C24368();
  sub_1B8C24378();
  sub_1B8C243B8();
  *&v34 = v17;
  *(&v34 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v29;
  v21 = v32;
  sub_1B8C24B28();

  (*(v31 + 8))(v19, v21);
  v22 = v26;
  sub_1B8B28464(v20, v26);
  return (*(v9 + 56))(v22, 0, 1, v33);
}

uint64_t sub_1B8B7BCF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a2;
  v44 = a1;
  v6 = sub_1B8C23A28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C24D18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3;
  sub_1B8C24CF8();
  (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
  v47 = sub_1B8C24D28();

  (*(v11 + 8))(v13, v10);
  sub_1B8C24F48();
  sub_1B8C23E38();
  v15 = v58;
  v51 = v57;
  v52 = v59;
  v16 = v60;
  v45 = v62;
  v46 = v61;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_1EBAB3AA8);
  (*(v7 + 16))(v9, v17, v6);
  v50 = sub_1B8C24CE8();
  LOBYTE(v69) = v15;
  LOBYTE(v63) = v16;
  v49 = v16;
  v18 = [objc_opt_self() mainBundle];
  v19 = sub_1B8C23348();
  LODWORD(v48) = v15;
  v21 = v20;

  v69 = v19;
  v70 = v21;
  sub_1B8B34CA8(v22, v23, v24);
  v25 = sub_1B8C249E8();
  v27 = v26;
  v29 = v28;
  sub_1B8C24938();
  v30 = sub_1B8C249B8();
  v32 = v31;
  LODWORD(v44) = v33;
  v35 = v34;

  sub_1B8B34060(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v37 = v46;
  v38 = v47;
  *&v63 = v47;
  *(&v63 + 1) = v51;
  LOBYTE(v64) = v48;
  *(&v64 + 1) = *v56;
  DWORD1(v64) = *&v56[3];
  *(&v64 + 1) = v52;
  LOBYTE(v65) = v49;
  *(&v65 + 1) = *v55;
  DWORD1(v65) = *&v55[3];
  v39 = v45;
  *(&v65 + 1) = v46;
  *&v66 = v45;
  *(&v66 + 1) = v50;
  v67 = 0x4000000000000000uLL;
  v68 = 0;
  v40 = v44 & 1;
  v54 = v44 & 1;
  v53 = 1;
  v41 = v66;
  *(a4 + 32) = v65;
  *(a4 + 48) = v41;
  v42 = v64;
  *a4 = v63;
  *(a4 + 16) = v42;
  *(a4 + 64) = v67;
  *(a4 + 80) = 0;
  *(a4 + 88) = v30;
  *(a4 + 96) = v32;
  *(a4 + 104) = v40;
  *(a4 + 112) = v35;
  *(a4 + 120) = KeyPath;
  *(a4 + 128) = 0x3FE0000000000000;
  *(a4 + 136) = 0;
  *(a4 + 144) = 1;
  sub_1B8B34450(&v63, &v69, &qword_1EBAA6F60, &qword_1B8C2AAE0);
  sub_1B8B34694(v30, v32, v40);

  sub_1B8B34060(v30, v32, v40);

  v69 = v38;
  v70 = v51;
  v71 = v48;
  *v72 = *v56;
  *&v72[3] = *&v56[3];
  v73 = v52;
  v74 = v49;
  *v75 = *v55;
  *&v75[3] = *&v55[3];
  v76 = v37;
  v77 = v39;
  v78 = v50;
  v79 = 0x4000000000000000;
  v80 = 0;
  v81 = 0;
  return sub_1B8B3433C(&v69, &qword_1EBAA6F60, &qword_1B8C2AAE0);
}

unint64_t sub_1B8B7C1E0()
{
  result = qword_1EBAA6F48;
  if (!qword_1EBAA6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F40, &qword_1B8C2AAA0);
    sub_1B8B7C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F48);
  }

  return result;
}

unint64_t sub_1B8B7C26C()
{
  result = qword_1EBAA6F50;
  if (!qword_1EBAA6F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F58, &qword_1B8C2AAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F50);
  }

  return result;
}

unint64_t sub_1B8B7C2D0()
{
  result = qword_1EBAA6F68;
  if (!qword_1EBAA6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F70, &qword_1B8C2AAE8);
    sub_1B8B7C354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F68);
  }

  return result;
}

unint64_t sub_1B8B7C354()
{
  result = qword_1EBAA6F78;
  if (!qword_1EBAA6F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F28, &qword_1B8C2AA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F40, &qword_1B8C2AAA0);
    sub_1B8B7C1E0();
    swift_getOpaqueTypeConformance2();
    sub_1B8B7C44C(&qword_1EBAA5F58, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F78);
  }

  return result;
}

uint64_t sub_1B8B7C44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s17QuestionKindErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s17QuestionKindErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8B7C558(uint64_t a1, char a2)
{
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v17;
  }

  swift_getKeyPath();
  v17 = a1;
  sub_1B8B7D638();
  sub_1B8C23588();

  v9 = *(a1 + 24);

  v16[1] = v9;
  v17 = sub_1B8C259E8();
  v18 = v10;
  MEMORY[0x1B8CC9EB0](0x7461756C61764520, 0xEB000000006E6F69);
  if (v9 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 115;
  }

  if (v9 == 1)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  MEMORY[0x1B8CC9EB0](v11, v12);

  v13 = [objc_opt_self() mainBundle];
  v14 = sub_1B8C23348();

  return v14;
}

void sub_1B8B7C7CC(uint64_t a1, char a2)
{
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  sub_1B8B522B8();
  v10 = v9;

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v11 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v21;
  }

  swift_getKeyPath();
  v21 = a1;
  sub_1B8B7D638();
  sub_1B8C23588();

  v12 = *(a1 + 24);

  v13 = v10 - v12;
  if (__OFSUB__(v10, v12))
  {
    __break(1u);
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1B8C257E8();
    v20[1] = v10 - v12;
    v14 = sub_1B8C259E8();
    v16 = v15;

    v21 = v14;
    v22 = v16;
    MEMORY[0x1B8CC9EB0](0x7461756C61766520, 0xEB000000006E6F69);
    if (v13 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 115;
    }

    if (v13 == 1)
    {
      v18 = 0xE000000000000000;
    }

    else
    {
      v18 = 0xE100000000000000;
    }

    MEMORY[0x1B8CC9EB0](v17, v18);

    MEMORY[0x1B8CC9EB0](0x7466656C20, 0xE500000000000000);
    v19 = [objc_opt_self() mainBundle];
    sub_1B8C23348();
  }
}

uint64_t sub_1B8B7CB2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F80, &qword_1B8C2ABC8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  *v8 = sub_1B8C24468();
  *(v8 + 1) = 0x4040000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F88, &qword_1B8C2ABD0);
  sub_1B8B7CD7C(a1, a2 & 1, &v8[*(v9 + 44)]);
  v10 = sub_1B8C24808();
  sub_1B8C23D18();
  v11 = &v8[*(v6 + 36)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F90, &qword_1B8C2ABD8);
  v16 = sub_1B8C24408();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B8C2A740;
  sub_1B8C243F8();
  sub_1B8B8ACD4(v19);
  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v16);
  swift_deallocClassInstance();
  sub_1B8B7D548();
  sub_1B8C24B58();

  sub_1B8B3433C(v8, &qword_1EBAA6F80, &qword_1B8C2ABC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FB0, &qword_1B8C2ABE8);
  v21 = (a3 + *(result + 36));
  *v21 = sub_1B8B7D4B8;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  return result;
}

uint64_t sub_1B8B7CD7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FB8, &qword_1B8C2ABF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = sub_1B8C242A8();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B8B7C558(a1, a2 & 1);
  v42 = v14;
  sub_1B8B34CA8(v41, v14, v15);
  v16 = sub_1B8C249E8();
  v18 = v17;
  v20 = v19;
  sub_1B8C24938();
  v21 = sub_1B8C249B8();
  v37 = v22;
  v38 = v21;
  v36 = v23;
  v39 = v24;

  sub_1B8B34060(v16, v18, v20 & 1);

  v25 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v26 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v34 + 8))(v13, v35);
    v25 = v41;
  }

  *v10 = sub_1B8C24468();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FC0, &qword_1B8C2ABF8);
  sub_1B8B7D0E0(a1, a2 & 1, &v10[*(v27 + 44)]);
  v28 = v40;
  sub_1B8B34450(v10, v40, &qword_1EBAA6FB8, &qword_1B8C2ABF0);
  v30 = v37;
  v29 = v38;
  *a3 = v38;
  *(a3 + 8) = v30;
  v31 = v36 & 1;
  *(a3 + 16) = v36 & 1;
  *(a3 + 24) = v39;
  *(a3 + 32) = v25;
  *(a3 + 40) = 0x4059000000000000;
  *(a3 + 48) = 0;
  *(a3 + 56) = xmmword_1B8C27D60;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FC8, &qword_1B8C2AC00);
  sub_1B8B34450(v28, a3 + *(v32 + 64), &qword_1EBAA6FB8, &qword_1B8C2ABF0);
  sub_1B8B34694(v29, v30, v31);

  sub_1B8B3433C(v10, &qword_1EBAA6FB8, &qword_1B8C2ABF0);
  sub_1B8B3433C(v28, &qword_1EBAA6FB8, &qword_1B8C2ABF0);

  sub_1B8B34060(v29, v30, v31);
}

uint64_t sub_1B8B7D0E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v41 = a2;
  v6 = sub_1B8C242A8();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FD0, &qword_1B8C2AC08);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v38 - v10;
  v42 = sub_1B8C242E8();
  sub_1B8B7C7CC(a1, v3 & 1);
  v48 = v11;
  v49 = v12;
  sub_1B8B34CA8(v11, v12, v13);
  v14 = sub_1B8C249E8();
  v16 = v15;
  v18 = v17;
  sub_1B8C248E8();
  v19 = sub_1B8C24978();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1B8B34060(v14, v16, v18 & 1);

  v26 = v23 & 1;
  sub_1B8B34694(v19, v21, v23 & 1);
  sub_1B8B34060(v19, v21, v23 & 1);

  v52 = 1;
  v51 = 1;
  v50 = v23 & 1;
  if (v41)
  {
    v47 = a1;
  }

  else
  {

    sub_1B8C25488();
    v27 = sub_1B8C247B8();
    sub_1B8C23C08();

    v28 = v38;
    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v39 + 8))(v28, v40);
  }

  sub_1B8B51580();
  v30 = v29;

  v48 = v30;
  LOBYTE(v49) = 0;
  v46 = 0x3FF0000000000000;
  sub_1B8B54888(v31, v32, v33);
  v34 = v44;
  sub_1B8C23DD8();
  *(v34 + *(v43 + 36)) = sub_1B8C24C68();
  v35 = v45;
  sub_1B8B34450(v34, v45, &qword_1EBAA6FD0, &qword_1B8C2AC08);
  *a3 = v42;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21;
  *(a3 + 56) = v26;
  *(a3 + 64) = v25;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FD8, &qword_1B8C2AC10);
  sub_1B8B34450(v35, a3 + *(v36 + 48), &qword_1EBAA6FD0, &qword_1B8C2AC08);
  sub_1B8B34694(v19, v21, v26);

  sub_1B8B3433C(v34, &qword_1EBAA6FD0, &qword_1B8C2AC08);
  sub_1B8B3433C(v35, &qword_1EBAA6FD0, &qword_1B8C2AC08);
  sub_1B8B34060(v19, v21, v26);
}

uint64_t sub_1B8B7D4B8()
{
  v0 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1B8C03B68();
  return sub_1B8B50964(v2);
}

unint64_t sub_1B8B7D548()
{
  result = qword_1EBAA6F98;
  if (!qword_1EBAA6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F80, &qword_1B8C2ABC8);
    sub_1B8B7D5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F98);
  }

  return result;
}

unint64_t sub_1B8B7D5D4()
{
  result = qword_1EBAA6FA0;
  if (!qword_1EBAA6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6FA8, &qword_1B8C2ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6FA0);
  }

  return result;
}

unint64_t sub_1B8B7D638()
{
  result = qword_1EBAA5F60;
  if (!qword_1EBAA5F60)
  {
    type metadata accessor for ScoreController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F60);
  }

  return result;
}

unint64_t sub_1B8B7D690()
{
  result = qword_1EBAA6FE0[0];
  if (!qword_1EBAA6FE0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6FB0, &qword_1B8C2ABE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F80, &qword_1B8C2ABC8);
    sub_1B8B7D548();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBAA6FE0);
  }

  return result;
}

uint64_t sub_1B8B7D758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8B7D7B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B8B7D7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8B7D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v68 = a4;
  v70 = a2;
  v69 = a1;
  v87 = a5;
  v76 = sub_1B8C24078();
  MEMORY[0x1EEE9AC00](v76);
  v84 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v68 - v9;
  v10 = sub_1B8C23A28();
  v89 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C24DE8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v68 - v14;
  v16 = sub_1B8C23FF8();
  v71 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A38, &qword_1B8C29DE8);
  v19 = sub_1B8C23FF8();
  v74 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v68 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F98, qword_1B8C29DF0);
  v21 = sub_1B8C23FF8();
  v75 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v68 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA61A8, &unk_1B8C2CE50);
  v23 = sub_1B8C23FF8();
  v79 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7070, &qword_1B8C2CD30);
  v81 = v23;
  v83 = sub_1B8C23FF8();
  v82 = *(v83 - 8);
  v25 = MEMORY[0x1EEE9AC00](v83);
  v78 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v68 - v27;
  v90 = a3;
  v91 = v68;
  v92 = a6;
  v93 = v69;
  v94 = v70;
  sub_1B8C242E8();
  sub_1B8C24DD8();
  sub_1B8C24808();
  WitnessTable = swift_getWitnessTable();
  sub_1B8C24C18();
  (*(v13 + 8))(v15, v12);
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v10, qword_1EBAB3A60);
  v30 = v10;
  v31 = *(v89 + 16);
  v32 = v72;
  v89 += 16;
  v31(v72, v29, v30);
  *&v105 = sub_1B8C24CE8();
  sub_1B8C24808();
  v103 = WitnessTable;
  v104 = MEMORY[0x1E697E5D8];
  v33 = swift_getWitnessTable();
  sub_1B8C24A38();

  (*(v71 + 8))(v18, v16);
  if (qword_1EBAA59A8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v30, qword_1EBAB3A78);
  v31(v32, v34, v30);
  *&v105 = sub_1B8C24CE8();
  v35 = sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8, MEMORY[0x1E6980468]);
  v101 = v33;
  v102 = v35;
  v36 = swift_getWitnessTable();
  v37 = v73;
  v38 = v88;
  sub_1B8C24AC8();

  (*(v74 + 8))(v38, v19);
  v39 = sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
  v99 = v36;
  v100 = v39;
  v40 = swift_getWitnessTable();
  v41 = v32;
  v42 = v77;
  sub_1B8C24A98();
  (*(v75 + 8))(v37, v21);
  v43 = *(v76 + 20);
  v44 = *MEMORY[0x1E697F468];
  v45 = sub_1B8C24418();
  v46 = v84;
  (*(*(v45 - 8) + 104))(v84 + v43, v44, v45);
  *v46 = a6;
  v46[1] = a6;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v30, qword_1EBAB3AA8);
  v31(v41, v47, v30);
  v48 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v49 = v85;
  sub_1B8B7E654(v46, v85);
  v50 = *&v105 * 0.5;
  v51 = v49 + *(v86 + 68);
  sub_1B8B7E654(v46, v51);
  *(v51 + *(sub_1B8C24068() + 20)) = v50;
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v53 = v106;
  *v52 = v105;
  *(v52 + 16) = v53;
  *(v52 + 32) = v107;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v51 + *(v54 + 52)) = v48;
  *(v51 + *(v54 + 56)) = 256;
  v55 = sub_1B8C24F48();
  v57 = v56;
  sub_1B8B7E6B8(v46);
  v58 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v58 = v55;
  v58[1] = v57;
  sub_1B8C24F48();
  v59 = sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50, MEMORY[0x1E697DDB0]);
  v97 = v40;
  v98 = v59;
  v60 = v81;
  v61 = swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA7090, &qword_1EBAA7068, &unk_1B8C2CD10, MEMORY[0x1E697FCF0]);
  v62 = v78;
  sub_1B8C24BF8();
  sub_1B8B284EC(v49);
  (*(v79 + 8))(v42, v60);
  v63 = sub_1B8B34CFC(&qword_1EBAA7098, &qword_1EBAA7070, &qword_1B8C2CD30, MEMORY[0x1E697EC18]);
  v95 = v61;
  v96 = v63;
  v64 = v83;
  swift_getWitnessTable();
  v65 = v80;
  sub_1B8BE21A0();
  v66 = *(v82 + 8);
  v66(v62, v64);
  sub_1B8BE21A0();
  return (v66)(v65, v64);
}

uint64_t sub_1B8B7E4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - v9;
  v8();
  sub_1B8BE21A0();
  v11 = *(v4 + 8);
  v11(v7, a3);
  sub_1B8BE21A0();
  return (v11)(v10, a3);
}

uint64_t sub_1B8B7E654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C24078();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B7E6B8(uint64_t a1)
{
  v2 = sub_1B8C24078();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B7E714()
{
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  return *(v0 + 18);
}

void sub_1B8B7E7B4(uint64_t a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;

    sub_1B8B7EBA8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }
}

void sub_1B8B7E8E8(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }
}

void sub_1B8B7E9F8(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B7EB08()
{
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  return *(v0 + 17);
}

double sub_1B8B7EBA8()
{
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  v2 = (*(v0 + 16) ^ 1) & 1;
  if (v2 == *(v1 + 17))
  {
    *(v1 + 17) = v2;
    swift_getKeyPath();
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
    sub_1B8C23588();

    v3 = [objc_opt_self() sharedUserDefaults];
    v4 = sub_1B8C25A38();
    v5 = sub_1B8C250F8();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B7EE5C()
{
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  return *(v0 + 16);
}

void sub_1B8B7EEFC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
}

void sub_1B8B7EFFC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
}

void sub_1B8B7F0D4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
  sub_1B8C23588();

  *a2 = *(v3 + 18);
}

_BYTE *sub_1B8B7F1B0(uint64_t a1)
{
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  if (*(v2 + 16))
  {
    v3 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1B8C23588();

    v3 = *(v2 + 17) ^ 1;
  }

  v1[18] = 0;
  v4 = v3 & 1;
  v1[16] = v4;
  v1[17] = v4;
  return v1;
}

double sub_1B8B7F2FC()
{
  if (v0[18])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }

  else
  {
    v0[18] = 0;
  }

  if (v0[16] == 1)
  {
    v0[16] = 1;
    result = sub_1B8B7EBA8();
  }

  else
  {
    v3 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v3);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }

  if (v0[17] == 1)
  {
    v0[17] = 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController, &unk_1B8C2ADC0);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B7F5B0()
{
  v1 = OBJC_IVAR____TtC8Feedback20OnboardingController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingController(uint64_t a1)
{
  result = qword_1EBAA70A8;
  if (!qword_1EBAA70A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B7F6A0(uint64_t a1)
{
  result = sub_1B8C235C8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B8B7F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA70B8;
  if (!qword_1EBAA70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA70B8);
  }

  return result;
}

void sub_1B8B7F7A8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
}

void sub_1B8B7F878(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
}

double sub_1B8B7F948()
{
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBAB39E0;
  if (*(qword_1EBAB39E0 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
    sub_1B8C23578();

    if ((*(v0 + 16) & 1) == 0)
    {
LABEL_5:
      *(v0 + 16) = 0;
      swift_getKeyPath();
      sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
      sub_1B8C23588();

      v2 = [objc_opt_self() sharedUserDefaults];
      v3 = sub_1B8C25A38();
      v4 = sub_1B8C250F8();
      [v2 setObject:v3 forKey:v4];

      swift_unknownObjectRelease();
      return result;
    }
  }

  else
  {
    *(qword_1EBAB39E0 + 17) = 0;
    swift_getKeyPath();
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
    sub_1B8C23588();

    v6 = [objc_opt_self() sharedUserDefaults];
    v7 = sub_1B8C25A38();
    v8 = sub_1B8C250F8();
    [v6 setObject:v7 forKey:v8];

    swift_unknownObjectRelease();
    if ((*(v0 + 16) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23578();

  return result;
}

uint64_t sub_1B8B7FD94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B7FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B8B5115C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B8B7FFCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8B7FFEC, 0, 0);
}

uint64_t sub_1B8B7FFEC()
{
  sub_1B8B8061C(*(v0 + 184), v0 + 136);
  if (*(v0 + 160))
  {
    sub_1B8B4D380((v0 + 136), v0 + 96);
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
    v10 = (*(v2 + 32) + **(v2 + 32));
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    *v3 = v0;
    v3[1] = sub_1B8B801A0;
    v4 = *(v0 + 184);

    return v10(v0 + 16, v4, v1, v2);
  }

  else
  {
    v6 = sub_1B8B80740(v0 + 136);
    sub_1B8B807A8(v6, v7, v8);
    swift_allocError();
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1B8B801A0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B8B8033C;
  }

  else
  {
    v2 = sub_1B8B802B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8B802B4()
{
  v1 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 57) = *(v0 + 73);
  v1[2] = v3;
  v1[3] = v4;
  v1[1] = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8B8033C()
{
  v1.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B8B803A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70D0, &qword_1B8C2AEE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8C293F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8C2A740;
  v6 = *(v2 + 104);
  v6(v5 + v4, *MEMORY[0x1E699C2C0], v1);
  v7 = sub_1B8B8A408(v5);
  swift_setDeallocating();
  (*(v2 + 8))(v5 + v4, v1);
  swift_deallocClassInstance();
  *(v0 + 56) = &type metadata for GenmojiDonationDecoder;
  *(v0 + 64) = &off_1F37551C0;
  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8C293F0;
  v6(v8 + v4, *MEMORY[0x1E699C2C8], v1);
  v6(v8 + v4 + v3, *MEMORY[0x1E699C258], v1);
  v6(v8 + v4 + 2 * v3, *MEMORY[0x1E699C320], v1);
  v9 = sub_1B8B8A408(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  *(v0 + 96) = &type metadata for ImagePlaygroundDonationDecoder;
  *(v0 + 104) = &off_1F3759AE8;
  *(v0 + 72) = v9;
  *(v0 + 136) = &type metadata for CatchUpDonationDecoder;
  *(v0 + 144) = &off_1F3759060;
  off_1EBAA70C0 = v0;
  return result;
}

double sub_1B8B8061C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EBAA58E8 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v4 = off_1EBAA70C0;
    v5 = *(off_1EBAA70C0 + 2);
    if (!v5)
    {
      break;
    }

    v6 = 0;
    v7 = off_1EBAA70C0 + 32;
    while (v6 < v4[2])
    {
      sub_1B8B807FC(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      if ((*(v9 + 24))(a1, v8, v9))
      {
        sub_1B8B807FC(v11, a2);
        return __swift_destroy_boxed_opaque_existential_0(v11);
      }

      ++v6;
      __swift_destroy_boxed_opaque_existential_0(v11);
      v7 += 40;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

LABEL_7:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1B8B80740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6270, &qword_1B8C285A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B807A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA70C8;
  if (!qword_1EBAA70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA70C8);
  }

  return result;
}

uint64_t sub_1B8B807FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B8B80868()
{
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](0);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B808AC(uint64_t a1)
{
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](0);
  return sub_1B8C25AF8();
}

uint64_t getEnumTagSinglePayload for DonationDecoders.Err(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DonationDecoders.Err(_WORD *result, int a2, int a3)
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

unint64_t sub_1B8B809D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA70D8;
  if (!qword_1EBAA70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA70D8);
  }

  return result;
}

uint64_t type metadata accessor for DebugSheet(uint64_t a1)
{
  result = qword_1EBAA70E8;
  if (!qword_1EBAA70E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B80AA0(uint64_t a1)
{
  sub_1B8B80B3C(319);
  if (v1 <= 0x3F)
  {
    sub_1B8B80B94(319);
    if (v2 <= 0x3F)
    {
      sub_1B8B38128();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B80B3C(uint64_t a1)
{
  if (!qword_1EBAA5FB8)
  {
    type metadata accessor for BatchController(255);
    v1 = sub_1B8C23D98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA5FB8);
    }
  }
}

void sub_1B8B80B94(uint64_t a1)
{
  if (!qword_1EBAA70F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
    v1 = sub_1B8C23D98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA70F8);
    }
  }
}

void sub_1B8B80C14(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B83104(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  *a2 = *(v3 + 24);
}

void sub_1B8B80CE4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B83104(&qword_1EBAA6908, type metadata accessor for DebugController, &unk_1B8C29B28);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
}

double sub_1B8B80DB4@<D0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7108, &qword_1B8C2B030);
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v24 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7110, &qword_1B8C2B038);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - v5;
  v7 = sub_1B8C242A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8) == 1)
  {
    *&v30 = *v1;
  }

  else
  {

    sub_1B8C25488();
    v11 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  swift_allocBox();
  type metadata accessor for BatchController(0);
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  v12 = sub_1B8C24F28();
  MEMORY[0x1EEE9AC00](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7120, &qword_1B8C2B048);
  sub_1B8B34CFC(&qword_1EBAA7128, &qword_1EBAA7120, &qword_1B8C2B048, MEMORY[0x1E6981F48]);
  sub_1B8C24968();
  sub_1B8C24F48();
  sub_1B8C24088();
  (*(v2 + 32))(v6, v4, v25);
  v13 = &v6[*(v26 + 36)];
  v14 = v35;
  *(v13 + 4) = v34;
  *(v13 + 5) = v14;
  *(v13 + 6) = v36;
  v15 = v31;
  *v13 = v30;
  *(v13 + 1) = v15;
  v16 = v33;
  *(v13 + 2) = v32;
  *(v13 + 3) = v16;
  v17 = (v1 + *(type metadata accessor for DebugSheet(0) + 24));
  v18 = *v17;
  v19 = *(v17 + 1);
  v28 = v18;
  v29 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D88();
  v20 = sub_1B8B82A2C();
  sub_1B8B82AE4(v20, v21, v22);
  sub_1B8C24BD8();

  sub_1B8B3433C(v6, &qword_1EBAA7110, &qword_1B8C2B038);

  return result;
}

uint64_t sub_1B8B8127C@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, char *a3@<X8>)
{
  v59 = a2;
  v62 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7150, &qword_1B8C2B058);
  v72 = *(v61 - 8);
  v4 = MEMORY[0x1EEE9AC00](v61);
  v71 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v56 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v70 = &v56 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v56 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v56 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7158, &qword_1B8C2B060);
  v66 = *(v69 - 8);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7160, &qword_1B8C2B068);
  v65 = *(v68 - 8);
  v19 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v56 - v21;
  sub_1B8C243A8();
  v79 = sub_1B8C249C8();
  v80 = v22;
  v81 = v23 & 1;
  v82 = v24;
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AB8, &qword_1B8C27248);
  sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248, MEMORY[0x1E697D680]);
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v79 = sub_1B8C249C8();
  v80 = v25;
  v81 = v26 & 1;
  v82 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7168, &qword_1B8C2B070);
  sub_1B8B34CFC(&qword_1EBAA7170, &qword_1EBAA7168, &qword_1B8C2B070, MEMORY[0x1E697D6A8]);
  v28 = v18;
  v58 = v18;
  v29 = v59;
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v79 = sub_1B8C249C8();
  v80 = v30;
  v81 = v31 & 1;
  v82 = v32;
  v76 = v29;
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7178, &qword_1B8C2B078);
  sub_1B8B82B50();
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v79 = sub_1B8C249C8();
  v80 = v33;
  v81 = v34 & 1;
  v82 = v35;
  v36 = v64;
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v79 = sub_1B8C249C8();
  v80 = v37;
  v81 = v38 & 1;
  v82 = v39;
  v40 = v60;
  sub_1B8C24EF8();
  v57 = *(v65 + 16);
  v41 = v67;
  v42 = v68;
  v57(v67, v63, v68);
  v59 = *(v66 + 16);
  v59(v74, v28, v69);
  v43 = *(v72 + 16);
  v44 = v70;
  v45 = v61;
  v43(v70, v73, v61);
  v43(v75, v36, v45);
  v43(v71, v40, v45);
  v46 = v62;
  v57(v62, v41, v42);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7188, &qword_1B8C2B080);
  v48 = v69;
  v59(&v46[v47[12]], v74, v69);
  v43(&v46[v47[16]], v44, v45);
  v43(&v46[v47[20]], v75, v45);
  v49 = v71;
  v43(&v46[v47[24]], v71, v45);
  v50 = *(v72 + 8);
  v50(v40, v45);
  v50(v64, v45);
  v50(v73, v45);
  v51 = *(v66 + 8);
  v52 = v48;
  v51(v58, v48);
  v53 = *(v65 + 8);
  v54 = v68;
  v53(v63, v68);
  v50(v49, v45);
  v50(v75, v45);
  v50(v70, v45);
  v51(v74, v52);
  return (v53)(v67, v54);
}

uint64_t sub_1B8B81BB0(uint64_t a1)
{
  v2 = type metadata accessor for DebugSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B82EF8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1B8B82F5C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_1B8C24DB8();
}

uint64_t sub_1B8B81CDC(uint64_t a1)
{
  type metadata accessor for DebugSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  return sub_1B8C24D78();
}

uint64_t sub_1B8B81D50@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  result = sub_1B8C249C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1B8B81DC8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = swift_projectBox();
  (*(v2 + 16))(v5, v8, v1);
  sub_1B8C24F18();
  v9 = *(v2 + 8);
  v9(v5, v1);
  swift_getKeyPath();
  sub_1B8C24F38();

  v9(v7, v1);
  v10 = v14[7];
  v11 = v14[8];
  v12 = v14[9];
  swift_getKeyPath();
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B60, &qword_1B8C29F78);
  sub_1B8C24E58();

  return sub_1B8C24DF8();
}

uint64_t sub_1B8B8200C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DebugSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B8B82EF8(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_1B8B82F5C(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  sub_1B8C24DB8();
  v11 = sub_1B8C24C88();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7178, &qword_1B8C2B078);
  v14 = (a3 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_1B8B82180(uint64_t a1)
{
  v1 = sub_1B8C24058();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v12 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = swift_projectBox();
  (*(v6 + 16))(v8, v9, v5);
  sub_1B8C24F08();
  (*(v6 + 8))(v8, v5);
  v10 = v13;
  swift_getKeyPath();
  v13 = v10;
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  sub_1B8B7F2FC();

  type metadata accessor for DebugSheet(0);
  sub_1B8B82CC4(v4);
  MEMORY[0x1B8CC9B00](v2);
  sub_1B8C24048();
  sub_1B8C24E48();
  return sub_1B8B3433C(v4, &qword_1EBAA7100, &qword_1B8C2AFD8);
}

double sub_1B8B82440(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_1B8C24F08();
  (*(v2 + 8))(v4, v1);
  v6 = v9;
  swift_getKeyPath();
  v9 = v6;
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  sub_1B8B7F948();

  return result;
}

uint64_t sub_1B8B825CC@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  result = sub_1B8C249C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1B8B82644@<X0>(uint64_t a4@<X8>)
{

  sub_1B8C24DB8();
  v5 = sub_1B8C24C78();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7178, &qword_1B8C2B078);
  v8 = (a4 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

double sub_1B8B826DC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_1B8C24F08();
  (*(v2 + 8))(v4, v1);
  v6 = v11;
  swift_getKeyPath();
  v11 = v6;
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v7 = *(v6 + 24);

  if (*(v7 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v10 - 2) = v7;
    *(&v10 - 1) = 0;
    v11 = v7;
    sub_1B8B83104(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
    sub_1B8C23578();
  }

  else
  {
    sub_1B8B51A10();
  }

  return result;
}

uint64_t sub_1B8B82968@<X0>(uint64_t a3@<X8>)
{
  sub_1B8C243A8();
  result = sub_1B8C249C8();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_1B8B829C8@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7148, &qword_1B8C2B050);
  sub_1B8C24D58();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_1B8B82A2C()
{
  result = qword_1EBAA7130;
  if (!qword_1EBAA7130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7110, &qword_1B8C2B038);
    sub_1B8B34CFC(&qword_1EBAA7138, &qword_1EBAA7108, &qword_1B8C2B030, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7130);
  }

  return result;
}

unint64_t sub_1B8B82AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7140;
  if (!qword_1EBAA7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7140);
  }

  return result;
}

unint64_t sub_1B8B82B50()
{
  result = qword_1EBAA7180;
  if (!qword_1EBAA7180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7178, &qword_1B8C2B078);
    sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248, MEMORY[0x1E697D680]);
    sub_1B8B34CFC(&qword_1EBAA6EB0, &qword_1EBAA6EB8, &qword_1B8C2A6F8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7180);
  }

  return result;
}

uint64_t sub_1B8B82CC4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1B8B83024(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1B8B83094(v10, a1);
  }

  sub_1B8C25488();
  v12 = sub_1B8C247B8();
  sub_1B8C23C08();

  sub_1B8C24298();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B8B82E7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24278();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B82EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B82F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B82FC0()
{
  type metadata accessor for DebugSheet(0);
  v1 = *(v0 + 16);

  return sub_1B8B82180(v1);
}

uint64_t sub_1B8B83024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B83094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B83104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B8314C()
{
  v1 = *(type metadata accessor for DebugSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B8B81CDC(v2);
}

uint64_t FBKInlineThumbsDown.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

void *sub_1B8B83204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[1] = *a1;
  v6 = *(a1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  result = MEMORY[0x1B8CC9B00](v5, v3);
  *a2 = v5[0];
  return result;
}

uint64_t sub_1B8B83264(id *a1, uint64_t a2)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  return sub_1B8C24E48();
}

void (*FBKInlineThumbsDown.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

void sub_1B8B833D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_1B8C24E48();
  }

  else
  {
    sub_1B8C24E48();
  }

  free(v2);
}

uint64_t FBKInlineThumbsDown.$feedbackController.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v1;
}

uint64_t type metadata accessor for FBKInlineThumbsDown(uint64_t a1)
{
  result = qword_1EBAA71A8;
  if (!qword_1EBAA71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B83558()
{
  type metadata accessor for FBKInlineThumbsDown(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v0);
}

uint64_t sub_1B8B835B0(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  type metadata accessor for FBKInlineThumbsDown(0);
  v9(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v8, v2);
}

uint64_t FBKInlineThumbsDown.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FBKInlineThumbsDown(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineThumbsDown.subject.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineThumbsDown(0);
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

void sub_1B8B83990(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  if (a2)
  {
    v6 = *v2;
    v7 = v2[1];
    (*(v7 + 16))(*(*a1 + 16), v5, *v2);
    sub_1B8C24E48();
    sub_1B8B83AD8(v3);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8C24E48();
    sub_1B8B83AD8(v3);
  }

  free(v3);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_1B8B83A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B83AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B83B58(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for FBKInlineThumbsDown(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v2);
}

uint64_t FBKInlineThumbsDown.disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsDown(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v6, v4);
  return v6;
}

void *sub_1B8B83C1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsDown(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  result = MEMORY[0x1B8CC9B00](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_1B8B83C98(char *a1, uint64_t a2)
{
  type metadata accessor for FBKInlineThumbsDown(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

uint64_t FBKInlineThumbsDown.disabled.setter(char a1)
{
  type metadata accessor for FBKInlineThumbsDown(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

void (*FBKInlineThumbsDown.disabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FBKInlineThumbsDown(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B83E40;
}

void sub_1B8B83E40(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_1B8C24E48();

  free(v1);
}

uint64_t FBKInlineThumbsDown.$disabled.getter()
{
  type metadata accessor for FBKInlineThumbsDown(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  return v1;
}

uint64_t sub_1B8B83F24@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsDown(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B84788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4, v5);
}

uint64_t sub_1B8B83FB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B84780;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineThumbsDown(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3, v4);
  result = sub_1B8B30A44(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineThumbsDown.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsDown(0) + 28));
  v2 = *v1;
  sub_1B8B247D4(*v1, v1[1]);
  return v2;
}

uint64_t FBKInlineThumbsDown.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineThumbsDown(0) + 28));
  result = sub_1B8B30A44(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineThumbsDown.init(feedbackController:subject:disabled:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for FBKInlineThumbsDown(0);
  v18 = (a9 + v17[7]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_1B8B841EC(a4, a9 + v17[5]);
  v20 = a9 + v17[6];
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7;
  *v18 = a8;
  v18[1] = a10;
  return result;
}

uint64_t sub_1B8B841EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double FBKInlineThumbsDown.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E699C1C8], v6);
  v10 = type metadata accessor for FBKInlineThumbsDown(0);
  sub_1B8C24E68();
  v11 = (v1 + *(v10 + 28));
  v12 = *v11;
  v30 = v11[1];
  v31 = v12;
  *&v36[0] = *v1;
  *(v36 + 8) = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v33 = v34;
  v32 = v35;
  v13 = (v1 + *(v10 + 24));
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v13) = *(v13 + 16);
  *&v36[0] = v14;
  *(&v36[0] + 1) = v15;
  LOBYTE(v36[1]) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  v28 = v35;
  v29 = v34;
  v27 = BYTE8(v35);
  v16 = type metadata accessor for FBKInlineViewButton(0);
  v17 = v16[6];
  v26 = v16[7];
  v18 = (a1 + v17);
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA71A0, &qword_1B8C2C220);
  sub_1B8C24D58();
  v19 = *&v36[0];
  (*(v7 + 16))(a1, v9, v6);
  sub_1B8B83A68(v5, a1 + v16[5]);
  v21 = v30;
  v20 = v31;
  *v18 = v31;
  v18[1] = v21;
  v34 = 0;
  sub_1B8B247D4(v20, v21);
  sub_1B8C24D58();
  sub_1B8B83AD8(v5);
  (*(v7 + 8))(v9, v6);

  *(a1 + v26) = v36[0];
  v22 = a1 + v16[8];
  *v22 = v33;
  result = *&v32;
  *(v22 + 8) = v32;
  v24 = a1 + v16[9];
  v25 = v28;
  *v24 = v29;
  *(v24 + 8) = v25;
  *(v24 + 16) = v27;
  return result;
}

void sub_1B8B84598(uint64_t a1)
{
  sub_1B8B84684(319, &qword_1EDC85640, type metadata accessor for FBKEvaluationController);
  if (v1 <= 0x3F)
  {
    sub_1B8B84684(319, &qword_1EBAA71B8, MEMORY[0x1E699C248]);
    if (v2 <= 0x3F)
    {
      sub_1B8B846D8();
      if (v3 <= 0x3F)
      {
        sub_1B8B38178(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8B84684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C24E88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8B846D8()
{
  if (!qword_1EBAA71C0)
  {
    v0 = sub_1B8C24E88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA71C0);
    }
  }
}

unint64_t sub_1B8B84728()
{
  result = qword_1EBAA71C8;
  if (!qword_1EBAA71C8)
  {
    type metadata accessor for FBKInlineViewButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71C8);
  }

  return result;
}

uint64_t sub_1B8B84790(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8C24FD8();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8C25008();
  v11 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B622C8();
  v14 = sub_1B8C25538();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2 & 1;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  aBlock[4] = sub_1B8B85158;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);
  sub_1B8B85180(a1, a2 & 1);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B8518C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v13, v10, v16);
  _Block_release(v16);

  (*(v19 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v18);
}

uint64_t sub_1B8B84A70(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 16))
    {
      if (qword_1EBAA5970 != -1)
      {
        swift_once();
      }

      v9 = sub_1B8C23C38();
      __swift_project_value_buffer(v9, qword_1EBAB3A18);
      v5 = sub_1B8C23C18();
      v10 = sub_1B8C25458();
      if (!os_log_type_enabled(v5, v10))
      {
        v11 = 1;
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B8B22000, v5, v10, "Should show batch UI? Yes because score is zero but there are donations", v7, 2u);
      v11 = 1;
      goto LABEL_16;
    }

    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EBAB3A18);
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25458();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Should show batch UI? NO because score is zero AND there are no donations";
      goto LABEL_15;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_19;
  }

  if (qword_1EBAA5970 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAB3A18);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25458();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_17;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = "Should show batch UI? NO because score is zero AND failed to fetch donations";
LABEL_15:
  _os_log_impl(&dword_1B8B22000, v5, v6, v8, v7, 2u);
  v11 = 0;
LABEL_16:
  MEMORY[0x1B8CCB0E0](v7, -1, -1);
LABEL_19:

  return a3(v11);
}

double sub_1B8B84CE8(void (*a1)(uint64_t), uint64_t a2)
{
  type metadata accessor for ScoreController(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B8518C(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *(v4 + 24) = *(v5 + 24);
  swift_getKeyPath();
  sub_1B8B8518C(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  if (*(v4 + 24) < 1)
  {
    sub_1B8C23688();
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;

    MEMORY[0x1B8CC8310](1, 1, 0, sub_1B8B85140, v10);
  }

  else
  {
    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EBAB3A18);

    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25458();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      swift_getKeyPath();
      sub_1B8C23588();

      *(v9 + 4) = *(v4 + 24);

      _os_log_impl(&dword_1B8B22000, v7, v8, "Should show batch UI? Yes because score is > 0. Raw score [%ld]", v9, 0xCu);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    else
    {
    }

    a1(1);
  }

  return result;
}

void _s8Feedback29BatchEvaluationViewControllerC010shouldShowB2UI10completionyySbc_tFZ_0(void (*a1)(uint64_t), uint64_t a2)
{
  if (MEMORY[0x1B8CCA870]())
  {

    sub_1B8B84CE8(a1, a2);
  }

  else
  {
    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8C23C38();
    __swift_project_value_buffer(v4, qword_1EBAB3A18);
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25458();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B8B22000, v5, v6, "BatchUI disabled", v7, 2u);
      MEMORY[0x1B8CCB0E0](v7, -1, -1);
    }

    a1(0);
  }
}

void sub_1B8B8514C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1B8B85180(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1B8B8518C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B851D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    if (swift_dynamicCast())
    {
      v2 = 3;
      if (v3 == 4)
      {
        v2 = 6;
      }

      if (v3)
      {
        return v2;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t BatchStatusView.Config.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  sub_1B8C251B8();
  sub_1B8C25AD8();
  if (v2)
  {
    sub_1B8C251B8();
  }

  MEMORY[0x1B8CCA790](v3);
  sub_1B8C25AD8();
  if (v4)
  {
    sub_1B8C251B8();
  }

  return sub_1B8C25AD8();
}

uint64_t BatchStatusView.Config.hashValue.getter()
{
  sub_1B8C25AB8();
  BatchStatusView.Config.hash(into:)(v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B8536C()
{
  sub_1B8C25AB8();
  BatchStatusView.Config.hash(into:)(v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B853B0(uint64_t a1)
{
  sub_1B8C25AB8();
  BatchStatusView.Config.hash(into:)(v2);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B853EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1B8C242A8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1B8C25368();
  v4[17] = sub_1B8C25358();
  v7 = sub_1B8C25328();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B8B854E0, v7, v6);
}

uint64_t sub_1B8B854E0()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 64);
  *(v0 + 80) = *(v0 + 24);
  *(v0 + 32) = *(v1 + 64);
  *(v0 + 73) = 1;
  sub_1B8B34450(v0 + 80, v0 + 88, &qword_1EBAA7210, &qword_1B8C2B558);
  *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D78();
  v2 = *(v1 + 88);
  *(v0 + 64) = *(v1 + 80);
  *(v0 + 72) = v2;
  v3 = *(v0 + 64);
  LOBYTE(v1) = v2;

  if ((v1 & 1) == 0)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    sub_1B8C25488();
    v7 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();
    sub_1B8B3433C(v0 + 64, &qword_1EBAA7218, qword_1B8C2B560);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 96);
  }

  *(v0 + 168) = v3;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_1B8B856B0;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B856B0()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1B8B857F4, v3, v2);
}

uint64_t sub_1B8B857F4()
{

  *(v0 + 48) = *(v0 + 16);
  *(v0 + 74) = 0;
  sub_1B8C24D78();
  sub_1B8B3433C(v0 + 16, &qword_1EBAA5EE0, &qword_1B8C27CA8);

  v1 = *(v0 + 8);

  return v1();
}

__n128 BatchStatusView.body.getter@<Q0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v37[2] = v2[2];
  v37[3] = v4;
  v38[0] = v2[4];
  *(v38 + 9) = *(v2 + 73);
  v5 = v2[1];
  v37[0] = *v2;
  v37[1] = v5;
  v6 = sub_1B8C24468();
  v35 = 0;
  sub_1B8B85B64(v37, &v21);
  v49 = v31;
  v50 = v32;
  v51[0] = v33[0];
  *(v51 + 9) = *(v33 + 9);
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v39 = v21;
  v40 = v22;
  v52[10] = v31;
  v52[11] = v32;
  v53[0] = v33[0];
  *(v53 + 9) = *(v33 + 9);
  v52[6] = v27;
  v52[7] = v28;
  v52[8] = v29;
  v52[9] = v30;
  v52[2] = v23;
  v52[3] = v24;
  v52[4] = v25;
  v52[5] = v26;
  v52[0] = v21;
  v52[1] = v22;
  sub_1B8B34450(&v39, v20, &qword_1EBAA71D0, &qword_1B8C2B2A8);
  sub_1B8B3433C(v52, &qword_1EBAA71D0, &qword_1B8C2B2A8);
  *&v34[167] = v49;
  *&v34[183] = v50;
  *&v34[199] = v51[0];
  *&v34[208] = *(v51 + 9);
  *&v34[103] = v45;
  *&v34[119] = v46;
  *&v34[135] = v47;
  *&v34[151] = v48;
  *&v34[39] = v41;
  *&v34[55] = v42;
  *&v34[71] = v43;
  *&v34[87] = v44;
  *&v34[7] = v39;
  *&v34[23] = v40;
  v7 = v35;
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v36[55] = v24;
  *&v36[71] = v25;
  *&v36[87] = v26;
  *&v36[103] = v27;
  *&v36[7] = v21;
  *&v36[23] = v22;
  *&v36[39] = v23;
  v8 = *&v34[176];
  *(a2 + 177) = *&v34[160];
  *(a2 + 193) = v8;
  v9 = *&v34[208];
  *(a2 + 209) = *&v34[192];
  *(a2 + 225) = v9;
  v10 = *&v34[112];
  *(a2 + 113) = *&v34[96];
  *(a2 + 129) = v10;
  v11 = *&v34[144];
  *(a2 + 145) = *&v34[128];
  *(a2 + 161) = v11;
  v12 = *&v34[48];
  *(a2 + 49) = *&v34[32];
  *(a2 + 65) = v12;
  v13 = *&v34[80];
  *(a2 + 81) = *&v34[64];
  *(a2 + 97) = v13;
  v14 = *&v34[16];
  *(a2 + 17) = *v34;
  *(a2 + 33) = v14;
  result = *&v36[64];
  v16 = *&v36[96];
  *(a2 + 321) = *&v36[80];
  *(a2 + 337) = v16;
  v17 = *&v36[16];
  *(a2 + 241) = *v36;
  v18 = *&v36[32];
  v19 = *&v36[48];
  *(a2 + 257) = v17;
  *(a2 + 273) = v18;
  *a2 = v6;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = v7;
  *(a2 + 352) = *&v36[111];
  *(a2 + 289) = v19;
  *(a2 + 305) = result;
  return result;
}

uint64_t sub_1B8B85B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - v5;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v70 = a1[2];
  v10 = *(a1 + 32);
  v11 = a1[6];
  LODWORD(v66) = *(a1 + 56);
  if (v11)
  {

    v12 = sub_1B8C24D08();
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_12;
      }

LABEL_8:
      v78 = v12;
      v13 = sub_1B8C24C78();
      goto LABEL_13;
    }

LABEL_10:
    v78 = v12;
    v13 = sub_1B8C24CC8();
    goto LABEL_13;
  }

  if (!v10)
  {
    v12 = sub_1B8C24D08();
    goto LABEL_10;
  }

  if (v10 == 1)
  {
    v12 = sub_1B8C24D08();
    goto LABEL_8;
  }

  v12 = sub_1B8C24D08();
LABEL_12:
  v78 = v12;
  v13 = sub_1B8C24C68();
LABEL_13:
  v77 = v13;
  v14 = sub_1B8C248C8();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v76 = sub_1B8C24908();
  sub_1B8B3433C(v6, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  *&v85[0] = v8;
  *(&v85[0] + 1) = v7;
  sub_1B8B34CA8(KeyPath, v15, v16);

  v17 = sub_1B8C249E8();
  v19 = v18;
  v21 = v20;
  sub_1B8C24938();
  v22 = sub_1B8C249B8();
  v72 = v23;
  v73 = v22;
  LODWORD(v65) = v24;
  v74 = v25;

  sub_1B8B34060(v17, v19, v21 & 1);

  v71 = swift_getKeyPath();
  if (v9)
  {
    *&v85[0] = v70;
    *(&v85[0] + 1) = v9;

    v26 = sub_1B8C249E8();
    v28 = v27;
    v30 = v29;
    *&v85[0] = sub_1B8C24C98();
    v31 = sub_1B8C24998();
    v69 = v32;
    v70 = v31;
    v34 = v33;
    *(&v68 + 1) = v35;
    sub_1B8B34060(v26, v28, v30 & 1);

    *&v67 = swift_getKeyPath();
    v36 = sub_1B8C24898();
    v37 = swift_getKeyPath();
    LOBYTE(v85[0]) = v34 & 1;
    *&v68 = v34 & 1;
    *(&v67 + 1) = 1;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v68 = 0uLL;
    v67 = 0uLL;
    v37 = 0;
    v36 = 0;
  }

  if (v66)
  {
    v66 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v42 = [objc_opt_self() mainBundle];
    v66 = sub_1B8C23348();
    v44 = v43;

    v85[0] = *(a1 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
    sub_1B8C24D68();
    v39 = LOBYTE(v83[0]);
    v41 = swift_allocObject();
    v45 = *(a1 + 3);
    v41[3] = *(a1 + 2);
    v41[4] = v45;
    v41[5] = *(a1 + 4);
    *(v41 + 89) = *(a1 + 73);
    v46 = *(a1 + 1);
    v41[1] = *a1;
    v41[2] = v46;
    sub_1B8B86840(a1, v85);
    v38 = v44;

    v40 = sub_1B8B86838;
  }

  v82 = 1;
  v81 = v65 & 1;
  v47 = v65 & 1;
  v63 = v65 & 1;
  *&v83[0] = v70;
  *(&v83[0] + 1) = v69;
  v83[1] = v68;
  v83[2] = v67;
  *&v84 = v37;
  v64 = v36;
  *(&v84 + 1) = v36;
  *&v80[55] = v84;
  *&v80[39] = v67;
  *&v80[23] = v68;
  *&v80[7] = v83[0];
  v79 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v49 = v77;
  v48 = v78;
  *(a2 + 16) = v78;
  *(a2 + 24) = v49;
  v77 = v49;
  v78 = v48;
  v50 = v76;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v50;
  v51 = v72;
  v52 = v73;
  *(a2 + 48) = v73;
  *(a2 + 56) = v51;
  v65 = v37;
  *(a2 + 64) = v47;
  v53 = v71;
  *(a2 + 72) = v74;
  *(a2 + 80) = v53;
  *(a2 + 88) = 1;
  v54 = *&v80[16];
  *(a2 + 89) = *v80;
  v55 = *&v80[32];
  v56 = *&v80[48];
  *(a2 + 152) = *&v80[63];
  *(a2 + 160) = 0;
  *(a2 + 137) = v56;
  *(a2 + 121) = v55;
  *(a2 + 105) = v54;
  *(a2 + 168) = 1;
  v57 = v66;
  *(a2 + 176) = v66;
  *(a2 + 184) = v38;
  *(a2 + 192) = v39;
  *(a2 + 200) = v40;
  *(a2 + 208) = v41;
  *(a2 + 216) = 0;
  v58 = v40;

  v59 = v52;
  v60 = v72;
  LOBYTE(v50) = v63;
  sub_1B8B34694(v59, v72, v63);

  sub_1B8B34450(v83, v85, &qword_1EBAA7208, &qword_1B8C2B540);
  sub_1B8B86878(v57, v38, v39, v58, v41);
  sub_1B8B868BC(v57, v38, v39, v58, v41);
  sub_1B8B868BC(v57, v38, v39, v58, v41);
  *&v85[0] = v70;
  *(&v85[0] + 1) = v69;
  v85[1] = v68;
  v85[2] = v67;
  v86 = v65;
  v87 = v64;
  sub_1B8B3433C(v85, &qword_1EBAA7208, &qword_1B8C2B540);
  sub_1B8B34060(v73, v60, v50);
}

double sub_1B8B86250(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  sub_1B8C25388();
  v5 = sub_1B8C253A8();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1B8C25368();
  sub_1B8B86840(a1, v12);
  v6 = sub_1B8C25358();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v9;
  *(v7 + 96) = a1[4];
  *(v7 + 105) = *(a1 + 73);
  v10 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  sub_1B8BE33EC(0, 0, v4, &unk_1B8C2B550, v7);

  return result;
}

uint64_t _s8Feedback15BatchStatusViewV6ConfigV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    if (v2 == v8 && v3 == v7)
    {
      if (v4 != v9)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v13 = sub_1B8C25A08();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_13:
    if (v4 != v9)
    {
      return result;
    }

LABEL_14:
    if (v6)
    {
      if (!v10 || (v5 != v11 || v6 != v10) && (sub_1B8C25A08() & 1) == 0)
      {
        return 0;
      }

      return v15 ^ v14 ^ 1u;
    }

    if (!v10)
    {
      return v15 ^ v14 ^ 1u;
    }

    return 0;
  }

  result = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1B8B864E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA71D8;
  if (!qword_1EBAA71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71D8);
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

uint64_t sub_1B8B86588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1B8B865D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8B86638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1B8B86680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B866E0()
{
  result = qword_1EBAA71E0;
  if (!qword_1EBAA71E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA71E8, &qword_1B8C2B458);
    sub_1B8B8676C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71E0);
  }

  return result;
}

unint64_t sub_1B8B8676C()
{
  result = qword_1EBAA71F0;
  if (!qword_1EBAA71F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA71F8, &qword_1B8C2B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71F0);
  }

  return result;
}

unint64_t sub_1B8B867E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7200;
  if (!qword_1EBAA7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7200);
  }

  return result;
}

void sub_1B8B86878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

double sub_1B8B868BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B8B86900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B8B5115C;

  return sub_1B8B853EC(a1, v4, v5, v1 + 32);
}

void *sub_1B8B869B0(void *result, uint64_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v4 = result[2];
  if (v4)
  {
    v6 = result;
    v7 = 0;
    do
    {
      for (i = v7; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v9 = sub_1B8C23498();
        v11 = *(v9 - 8);
        result = (v9 - 8);
        v10 = v11;
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = sub_1B8B86C28(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, a2, &v12);
        if (v2)
        {

          return v3;
        }

        if (v12)
        {
          break;
        }

        if (v7 == v4)
        {
          return v3;
        }
      }

      MEMORY[0x1B8CC9F70](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B8C252E8();
      }

      result = sub_1B8C25308();
      v3 = v13;
    }

    while (v7 != v4);
  }

  return v3;
}

uint64_t sub_1B8B86B10()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7220);
  __swift_project_value_buffer(v0, qword_1EBAA7220);
  return sub_1B8C23C28();
}

uint64_t FBKFeedbackForm.addSandboxExtensionToURLs()()
{
  v4 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();

  v2 = sub_1B8B869B0(v1, &v4);

  *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments) = v2;

  return v4;
}

uint64_t sub_1B8B86C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v35 = a2;
  v37 = a3;
  v34 = type metadata accessor for URLError(0);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v32 = a1;
  v10(v9, a1, v6);
  v11 = type metadata accessor for SandboxExtensionURL(0);
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
  *v14 = 0;
  *(v14 + 1) = 0;
  v10(&v12[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url], v9, v6);
  v39.receiver = v12;
  v39.super_class = v11;
  v15 = objc_msgSendSuper2(&v39, sel_init);
  v16 = sub_1B8B86FB8();
  v18 = (v7 + 8);
  if (v3)
  {

    (*v18)(v9, v6);
    v19 = v33;
    v10(v33, v32, v6);
    v40 = v3;
    v20 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    swift_dynamicCast();
    v21 = v35;
    *(v19 + *(v34 + 20)) = v38;
    v22 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1B8B5D534(0, v22[2] + 1, 1, v22);
      *v21 = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      *v21 = sub_1B8B5D534((v24 > 1), v25 + 1, 1, v22);
    }

    v26 = *v21;
    v26[2] = v25 + 1;
    result = sub_1B8B88C0C(v19, v26 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v25);
    v15 = 0;
  }

  else
  {
    v28 = v16;
    v29 = v17;
    (*v18)(v9, v6);
    v30 = &v15[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
    *v30 = v28;
    *(v30 + 1) = v29;
  }

  *v37 = v15;
  return result;
}

double sub_1B8B86F84(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_1B8B88724(a1, a2, a3, a4);

  return result;
}

void *sub_1B8B86FB8()
{
  v2 = sub_1B8C23408();
  if (v1)
  {
  }

  else if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
    sub_1B8C23438();
    return v18;
  }

  if (qword_1EBAA58F0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7220);
  v5 = v0;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25478();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = sub_1B8C23468();
    v12 = sub_1B8B5DD48(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B8B22000, v6, v7, "Cannot generate sandbox extension. URL is not reachable at path: [%s]", v8, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v13);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  sub_1B8B7B4F8(v14, v15, v16);
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

uint64_t sub_1B8B871B8@<X0>(uint64_t *a2@<X8>)
{
  result = *MEMORY[0x1E69E9BA8];
  if (*MEMORY[0x1E69E9BA8])
  {
    sub_1B8C251F8();
    sub_1B8C25188();

    v4 = sandbox_extension_issue_file();

    if (v4)
    {
      v8 = sub_1B8C251F8();
      v10 = v9;
      result = MEMORY[0x1B8CCB0E0](v4, -1, -1);
      *a2 = v8;
      a2[1] = v10;
    }

    else
    {
      sub_1B8B7B4F8(v5, v6, v7);
      swift_allocError();
      *v11 = 3;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B8B872A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state + 8] == 1)
  {
    v4 = *&v3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken + 8];
    if (v4)
    {
      v5 = *&v3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
      v6 = qword_1EBAA58F0;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = sub_1B8C23C38();
      __swift_project_value_buffer(v7, qword_1EBAA7220);
      v8 = v3;
      v9 = sub_1B8C23C18();
      v10 = sub_1B8C25468();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = v18;
        *v11 = 136315138;
        v12 = sub_1B8C23468();
        v14 = v5;
        v15 = sub_1B8B5DD48(v12, v13, &v19);

        *(v11 + 4) = v15;
        v5 = v14;
        _os_log_impl(&dword_1B8B22000, v9, v10, "Consuming Sandbox Extension for url %s", v11, 0xCu);
        v16 = __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1B8CCB0E0](v18, -1, -1, v16);
        MEMORY[0x1B8CCB0E0](v11, -1, -1);
      }

      sub_1B8B87544(v5, v4, v8);
    }

    else
    {
      sub_1B8B886B4(a1, a2, a3);
      swift_allocError();
      *v17 = 0;
      *(v17 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8B874C0(uint64_t a1, uint64_t a2)
{
  result = sandbox_extension_consume();
  if (result == -1)
  {
    v5 = MEMORY[0x1B8CC8910]();
    v6 = v5;
    sub_1B8B886B4(v5, v7, v8);
    swift_allocError();
    *v9 = v6;
    *(v9 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v4 = a2 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state;
    *v4 = result;
    *(v4 + 8) = 0;
  }

  return result;
}

void sub_1B8B87544(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v4 = sandbox_extension_consume();
    if (v4 == -1)
    {
      v6 = MEMORY[0x1B8CC8910]();
      v7 = v6;
      sub_1B8B886B4(v6, v8, v9);
      swift_allocError();
      *v10 = v7;
      *(v10 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      v5 = &a3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
      *v5 = v4;
      v5[8] = 0;
    }
  }

  else
  {
    sub_1B8C257D8();
  }
}

void sub_1B8B87640()
{
  v1 = &v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
  if (v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state + 8])
  {
    __break(1u);
  }

  else
  {
    if (qword_1EBAA58F0 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAA7220);
    v3 = v0;
    v4 = sub_1B8C23C18();
    v5 = sub_1B8C25468();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315138;
      v8 = sub_1B8C23468();
      v10 = sub_1B8B5DD48(v8, v9, &v18);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1B8B22000, v4, v5, "Releasing Sandbox Extension for url %s", v6, 0xCu);
      v11 = __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CCB0E0](v7, -1, -1, v11);
      MEMORY[0x1B8CCB0E0](v6, -1, -1);
    }

    v12 = sandbox_extension_release();
    if (v12 == sub_1B8C23C58())
    {
      *v1 = 0;
      v1[8] = 1;
    }

    else
    {
      v13 = MEMORY[0x1B8CC8910]();
      v14 = v13;
      sub_1B8B886B4(v13, v15, v16);
      swift_allocError();
      *v17 = v14;
      *(v17 + 4) = 0;
      swift_willThrow();
    }
  }
}

void sub_1B8B8782C(void *a1)
{
  v2 = v1;
  v4 = sub_1B8C233E8();
  v5 = sub_1B8C250F8();
  [a1 encodeObject:v4 forKey:v5];

  if (*(v2 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken + 8))
  {

    v6 = sub_1B8C250F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1B8C250F8();
  [a1 encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();
}

uint64_t sub_1B8B879E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7107189;
  }

  else
  {
    v3 = 0x54786F62646E6173;
  }

  if (v2)
  {
    v4 = 0xEC0000006E656B6FLL;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7107189;
  }

  else
  {
    v5 = 0x54786F62646E6173;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEC0000006E656B6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B8C25A08();
  }

  return v8 & 1;
}

uint64_t sub_1B8B87A8C()
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B87B10(uint64_t a1)
{
  sub_1B8C251B8();
}

uint64_t sub_1B8B87B80(uint64_t a1)
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B87C00@<X0>(char *a2@<X8>)
{
  v3 = sub_1B8C25908();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1B8B87C60(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (!*v1)
  {
    v2 = 0x54786F62646E6173;
  }

  v3 = 0xEC0000006E656B6FLL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B8B87CA0()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x54786F62646E6173;
  }
}

uint64_t sub_1B8B87CDC@<X0>(char *a3@<X8>)
{
  v4 = sub_1B8C25908();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1B8B87D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8B8861C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8B87D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8B8861C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

id sub_1B8B87DF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SandboxExtensionURL(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8B87EAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7278, &qword_1B8C2B628);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8B8861C(v7, v8, v9);
  sub_1B8C25B18();
  v11[15] = 0;

  sub_1B8C25998();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v11[14] = 1;
    sub_1B8C23498();
    sub_1B8B88670(&qword_1EBAA7280, MEMORY[0x1E6968FB8]);
    sub_1B8C259C8();
    return (*(v4 + 8))(v6, v3);
  }
}

char *sub_1B8B88094(void *a1)
{
  v3 = v1;
  v5 = sub_1B8C23498();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7260, &qword_1B8C2B620);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = &v3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
  *v12 = 0;
  v12[1] = 0;
  v13 = a1[3];
  v26 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B8B8861C(v14, v15, v16);
  sub_1B8C25B08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);

    type metadata accessor for SandboxExtensionURL(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v5;
    v19 = v24;
    v18 = v25;
    v28 = 0;
    *v12 = sub_1B8C25938();
    v12[1] = v20;

    v28 = 1;
    sub_1B8B88670(&qword_1EBAA7270, MEMORY[0x1E6968FD0]);
    sub_1B8C25968();
    (*(v23 + 32))(&v3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url], v7, v17);
    v22 = type metadata accessor for SandboxExtensionURL(0);
    v27.receiver = v3;
    v27.super_class = v22;
    v3 = objc_msgSendSuper2(&v27, sel_init);
    (*(v19 + 8))(v10, v18);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return v3;
}

char *sub_1B8B883C0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SandboxExtensionURL(0));
  result = sub_1B8B88094(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B8B8843C(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0xD00000000000001ALL;
  }

  sub_1B8C257E8();

  v1 = sub_1B8C259E8();
  MEMORY[0x1B8CC9EB0](v1);

  return 0xD000000000000019;
}

uint64_t type metadata accessor for SandboxExtensionURL(uint64_t a1)
{
  result = qword_1EBAA7250;
  if (!qword_1EBAA7250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B88568(uint64_t a1)
{
  result = sub_1B8C23498();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B8B8861C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7268;
  if (!qword_1EBAA7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7268);
  }

  return result;
}

uint64_t sub_1B8B88670(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B8C23498();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8B886B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7288;
  if (!qword_1EBAA7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7288);
  }

  return result;
}

void sub_1B8B88724(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state + 8) == 1)
  {
    v37[9] = v5;
    v37[10] = v6;
    if (qword_1EBAA58F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1B8C23C38();
    __swift_project_value_buffer(v8, qword_1EBAA7220);
    v9 = a1;
    v10 = sub_1B8C23C18();
    v11 = sub_1B8C25468();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37[0] = v13;
      *v12 = 136315138;
      v14 = sub_1B8C23468();
      v16 = sub_1B8B5DD48(v14, v15, v37);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B8B22000, v10, v11, "Will consume Sandbox Extension for url %s", v12, 0xCu);
      v17 = __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B8CCB0E0](v13, -1, -1, v17);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
    }

    sub_1B8B872A4(v18, v19, v20);
    if (v4)
    {
      v21 = v4;
      v22 = sub_1B8C23C18();
      v23 = sub_1B8C25478();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37[0] = v25;
        *v24 = 136315138;
        v26 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v27 = sub_1B8C25178();
        v29 = sub_1B8B5DD48(v27, v28, v37);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1B8B22000, v22, v23, "Failed to access sandbox extension: %s", v24, 0xCu);
        v30 = __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1B8CCB0E0](v25, -1, -1, v30);
        MEMORY[0x1B8CCB0E0](v24, -1, -1);
      }

      sub_1B8B7B4F8(v31, v32, v33);
      swift_allocError();
      *v34 = 4;
      swift_willThrow();
    }

    else
    {
      sub_1B8C20C80(v9 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url, a2, a3);
      sub_1B8B87640();
    }
  }
}

id sub_1B8B88A30()
{
  v1 = v0;
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
  sub_1B8B46130(0, &qword_1EBAA72A0, 0x1E696AEC0);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_1B8C255A8();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B8C25128();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *v7 = v10;
  v7[1] = v12;

  sub_1B8B46130(0, &qword_1EBAA72A8, 0x1E695DFF8);
  result = sub_1B8C255A8();
  if (result)
  {
    v14 = result;
    sub_1B8C23448();

    (*(v3 + 32))(v1 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url, v5, v2);
    v15 = type metadata accessor for SandboxExtensionURL(0);
    v16.receiver = v1;
    v16.super_class = v15;
    return objc_msgSendSuper2(&v16, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8B88C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B8B88CD0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8B88CEC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1B8B88D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA72B8;
  if (!qword_1EBAA72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA72B8);
  }

  return result;
}

unint64_t sub_1B8B88D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA72C0;
  if (!qword_1EBAA72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA72C0);
  }

  return result;
}

unint64_t sub_1B8B88DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA72C8;
  if (!qword_1EBAA72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA72C8);
  }

  return result;
}

uint64_t sub_1B8B88E34()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72D0, &qword_1B8C2B810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8C293F0;
  v1 = sub_1B8B46130(0, &qword_1EBAA72F0, 0x1E695DEC8);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72F8, &qword_1B8C2B828);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for FBKFeedbackForm();
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7300, &qword_1B8C2B830);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for SandboxExtensionURL(0);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7308, qword_1B8C2B838);
  *(v0 + 96) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v5 = sub_1B8C252B8();

  [v4 initWithArray_];

  result = sub_1B8C253D8();
  __break(1u);
  return result;
}

uint64_t sub_1B8B89014()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72D0, &qword_1B8C2B810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8C27920;
  v1 = type metadata accessor for FBKSubmissionError();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72D8, &qword_1B8C2B818);
  *(v0 + 32) = v1;
  v2 = sub_1B8B46130(0, &qword_1EBAA72E0, 0x1E696ABC0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72E8, &qword_1B8C2B820);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1B8C252B8();

  [v3 initWithArray_];

  result = sub_1B8C253D8();
  __break(1u);
  return result;
}

void *sub_1B8B891F8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_1B8C23348();
  v5 = v4;

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAB3A30);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B8B22000, v7, v8, "Showing Load More Button", v9, 2u);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  type metadata accessor for DonationController(0);
  sub_1B8B38E60();
  v10 = sub_1B8C23DA8();
  v12 = v11;
  result = sub_1B8C24D58();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0xD000000000000012;
  *(a1 + 48) = 0x80000001B8C32170;
  *(a1 + 56) = 0;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v10;
  *(a1 + 88) = v12 & 1;
  return result;
}

uint64_t sub_1B8B89420(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7310, &qword_1B8C2B990);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  v8 = *(v4 + 40);
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  swift_storeEnumTagMultiPayload();
  *(v6 + 3) = sub_1B8B8A3D8;
  *(v6 + 4) = v7;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F90, &qword_1B8C2ABD8);
  v9 = sub_1B8C24408();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8C2A740;

  sub_1B8C243F8();
  sub_1B8B8ACD4(v12);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  sub_1B8B8AFF4();
  sub_1B8C24B58();

  return sub_1B8B3433C(v6, &qword_1EBAA7310, &qword_1B8C2B990);
}

double sub_1B8B89664@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B8C24468();
  v25 = 0;
  sub_1B8B897F4(a1, a2 & 1, &v14);
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v26 = v14;
  v27 = v15;
  v36[6] = v20;
  v36[7] = v21;
  v36[8] = v22;
  v36[2] = v16;
  v36[3] = v17;
  v36[4] = v18;
  v36[5] = v19;
  v35 = v23;
  v37 = v23;
  v36[0] = v14;
  v36[1] = v15;
  sub_1B8B34450(&v26, &v13, &qword_1EBAA7330, &qword_1B8C2B9D0);
  sub_1B8B3433C(v36, &qword_1EBAA7330, &qword_1B8C2B9D0);
  *&v24[55] = v29;
  *&v24[39] = v28;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v7 = *&v24[112];
  *(a3 + 113) = *&v24[96];
  *(a3 + 129) = v7;
  *(a3 + 145) = *&v24[128];
  v8 = *&v24[48];
  *(a3 + 49) = *&v24[32];
  *(a3 + 65) = v8;
  v9 = *&v24[80];
  *(a3 + 81) = *&v24[64];
  *(a3 + 97) = v9;
  result = *v24;
  v11 = *&v24[16];
  *(a3 + 17) = *v24;
  v24[151] = v35;
  v12 = v25;
  *a3 = v6;
  *(a3 + 8) = 0x4030000000000000;
  *(a3 + 16) = v12;
  *(a3 + 161) = *&v24[144];
  *(a3 + 33) = v11;
  return result;
}

void sub_1B8B897F4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C24398();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1B8C24F48();
  v42 = v12;
  v43 = v11;
  sub_1B8B89D60(a1, a2 & 1, &v58);
  v67 = v60;
  v68 = v61;
  v69 = v62;
  v70 = v63;
  v65 = v58;
  v66 = v59;
  v72 = v63;
  v71[2] = v60;
  v71[3] = v61;
  v71[4] = v62;
  v71[0] = v58;
  v71[1] = v59;
  sub_1B8B34450(&v65, v52, &qword_1EBAA7338, &qword_1B8C2B9D8);
  sub_1B8B3433C(v71, &qword_1EBAA7338, &qword_1B8C2B9D8);
  v75 = v67;
  v76 = v68;
  v77 = v69;
  v78 = v70;
  v73 = v65;
  v74 = v66;
  sub_1B8C24388();
  sub_1B8C24378();

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v58;
  }

  swift_getKeyPath();
  *&v58 = a1;
  sub_1B8B8B058(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v14 = *(a1 + 24);

  v15 = floor(sqrt(v14 * 0.5));
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  if (v15 >= 99)
  {
    v16 = 99;
  }

  *&v58 = v16;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v17 = sub_1B8C249C8();
  v19 = v18;
  v21 = v20;
  sub_1B8C248B8();
  v22 = sub_1B8C249B8();
  v24 = v23;
  v26 = v25;
  v41[1] = v27;

  sub_1B8B34060(v17, v19, v21 & 1);

  sub_1B8C248D8();
  v28 = sub_1B8C24978();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;
  sub_1B8B34060(v22, v24, v26 & 1);

  v48 = v75;
  v49 = v76;
  v50 = v77;
  v51 = v78;
  v46 = v73;
  v47 = v74;
  v35 = v42;
  v34 = v43;
  *&v52[0] = v43;
  *(&v52[0] + 1) = v42;
  v52[1] = v73;
  v53 = v74;
  v57 = v78;
  v55 = v76;
  v56 = v77;
  v54 = v75;
  v45 = v19 & 1;
  v44 = 1;
  v36 = v73;
  *a3 = v52[0];
  *(a3 + 16) = v36;
  v37 = v53;
  v38 = v54;
  v39 = v56;
  v40 = v57;
  *(a3 + 64) = v55;
  *(a3 + 80) = v39;
  *(a3 + 32) = v37;
  *(a3 + 48) = v38;
  *(a3 + 96) = v40;
  *(a3 + 104) = v28;
  *(a3 + 112) = v30;
  *(a3 + 120) = v19 & 1;
  *(a3 + 128) = v33;
  *(a3 + 136) = 0;
  *(a3 + 144) = 1;
  sub_1B8B34450(v52, &v58, &qword_1EBAA7340, &qword_1B8C2BA08);
  sub_1B8B34694(v28, v30, v19 & 1);

  sub_1B8B34060(v28, v30, v19 & 1);

  *&v58 = v34;
  *(&v58 + 1) = v35;
  v61 = v48;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v59 = v46;
  v60 = v47;
  sub_1B8B3433C(&v58, &qword_1EBAA7340, &qword_1B8C2BA08);
}

uint64_t sub_1B8B89D60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v52 = sub_1B8C23A28();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42[-v8];
  v10 = sub_1B8C242A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8C24398();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = sub_1B8C24C68();
  sub_1B8C24F48();
  sub_1B8C23E38();
  v48 = v56;
  v47 = v57;
  v46 = v58;
  v43 = v59;
  v45 = v60;
  v44 = v61;
  sub_1B8C24388();
  sub_1B8C24378();

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v15 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a1 = v55;
  }

  KeyPath = swift_getKeyPath();
  v55 = a1;
  sub_1B8B8B058(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v17 = *(a1 + 24);

  v18 = floor(sqrt(v17 * 0.5));
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_9;
  }

  v19 = v18;
  if (v18 >= 99)
  {
    v19 = 99;
  }

  v55 = v19;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v20 = sub_1B8C249C8();
  v22 = v21;
  v24 = v23;
  sub_1B8C248D8();
  v25 = sub_1B8C248C8();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  sub_1B8C24908();
  sub_1B8B3433C(v9, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = sub_1B8C249B8();
  v9 = v26;
  LOBYTE(a1) = v27;

  sub_1B8B34060(v20, v22, v24 & 1);

  if (qword_1EBAA59A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v28 = v52;
  v29 = __swift_project_value_buffer(v52, qword_1EBAB3A60);
  (*(v50 + 16))(v49, v29, v28);
  v55 = sub_1B8C24CE8();
  v30 = sub_1B8C24998();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1B8B34060(KeyPath, v9, a1 & 1);

  v37 = v47;
  LOBYTE(v55) = v47;
  v38 = v43;
  v54 = v43;
  v53 = v34 & 1;
  v39 = v48;
  *a3 = v51;
  *(a3 + 8) = v39;
  *(a3 + 16) = v37;
  *(a3 + 24) = v46;
  *(a3 + 32) = v38;
  v40 = v44;
  *(a3 + 40) = v45;
  *(a3 + 48) = v40;
  *(a3 + 56) = v30;
  *(a3 + 64) = v32;
  *(a3 + 72) = v34 & 1;
  *(a3 + 80) = v36;

  sub_1B8B34694(v30, v32, v34 & 1);

  sub_1B8B34060(v30, v32, v34 & 1);
}

uint64_t sub_1B8B8A408(uint64_t a1)
{
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7348, &qword_1B8C2BA10);
    v9 = sub_1B8C257B8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1B8B8B058(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
      v16 = sub_1B8C250B8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1B8B8B058(&unk_1EBAA8610, MEMORY[0x1E699C390], MEMORY[0x1E699C3A0]);
          v23 = sub_1B8C250E8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B8B8A728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7350, &qword_1B8C2BA18);
  v45 = v1;
  v3 = sub_1B8C257B8();
  v4 = 0;
  v5 = v3 + 56;
  v44 = a1 + 32;
  v51 = v3 + 56;
  while (2)
  {
    v7 = (v44 + (v4 << 6));
    v8 = v7[2];
    v62 = v7[1];
    *v63 = v8;
    *&v63[9] = *(v7 + 41);
    v61 = *v7;
    sub_1B8C25AB8();
    v9 = v63[0];
    v10 = *&v63[16];
    v50 = v4;
    if (*(&v61 + 1) > 1)
    {
      if (*(&v61 + 1) == 2)
      {
        v11 = 3;
        goto LABEL_17;
      }

      if (*(&v61 + 1) == 3)
      {
        v11 = 4;
        goto LABEL_17;
      }
    }

    else
    {
      if (!*(&v61 + 1))
      {
        v11 = 0;
        goto LABEL_17;
      }

      if (*(&v61 + 1) == 1)
      {
        v11 = 2;
LABEL_17:
        MEMORY[0x1B8CCA790](v11);
        goto LABEL_18;
      }
    }

    v12 = *(&v62 + 1);
    MEMORY[0x1B8CCA790](1);

    sub_1B8C251B8();
    sub_1B8C25AD8();
    if (v12)
    {
      sub_1B8C251B8();
    }

    MEMORY[0x1B8CCA790](v9);
    v5 = v51;
    sub_1B8C25AD8();
    if (v10)
    {
      sub_1B8C251B8();
    }

    sub_1B8C25AD8();
LABEL_18:
    result = sub_1B8C25AF8();
    v52 = ~(-1 << *(v3 + 32));
    v14 = result & v52;
    v15 = (result & v52) >> 6;
    v16 = *(v5 + 8 * v15);
    v17 = 1 << (result & v52);
    if ((v17 & v16) == 0)
    {
      goto LABEL_58;
    }

    do
    {
      v18 = v3;
      v19 = (*(v3 + 48) + (v14 << 6));
      v20 = *(v19 + 41);
      v21 = v19[2];
      v22 = *v19;
      v55 = v19[1];
      *v56 = v21;
      v54 = v22;
      *&v56[9] = v20;
      memmove(__dst, v19, 0x39uLL);
      v58 = v61;
      v59 = v62;
      v60[0] = *v63;
      *(v60 + 9) = *&v63[9];
      v23 = v55;
      v24 = v56[0];
      v25 = *&v56[8];
      v26 = *&v56[16];
      v27 = v56[24];
      if (*(&v54 + 1) > 1)
      {
        if (*(&v54 + 1) == 2)
        {
          if (*(&v61 + 1) == 2)
          {
LABEL_3:
            sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
            v6 = v45;
            v3 = v18;
LABEL_4:
            v5 = v51;
            goto LABEL_5;
          }
        }

        else
        {
          if (*(&v54 + 1) != 3)
          {
            goto LABEL_28;
          }

          if (*(&v61 + 1) == 3)
          {
            goto LABEL_3;
          }
        }

LABEL_33:
        v28 = &v61;
LABEL_34:
        sub_1B8B50FF8(v28, v53);
        v3 = v18;
LABEL_35:
        result = sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        goto LABEL_36;
      }

      if (!*(&v54 + 1))
      {
        if (!*(&v61 + 1))
        {
          goto LABEL_3;
        }

        goto LABEL_33;
      }

      if (*(&v54 + 1) == 1)
      {
        if (*(&v61 + 1) == 1)
        {
          goto LABEL_3;
        }

        goto LABEL_33;
      }

LABEL_28:
      if (*(&v61 + 1) < 4uLL || (v29 = *(&v62 + 1), v30 = v62, v31 = v63[0], v47 = *&v63[8], v49 = *&v63[16], v48 = v63[24], v54 != v61) && (v46 = v63[0], v32 = *(&v62 + 1), v33 = sub_1B8C25A08(), v29 = v32, v31 = v46, (v33 & 1) == 0))
      {
LABEL_29:
        sub_1B8B50FF8(&v61, v53);
        v28 = &v54;
        goto LABEL_34;
      }

      if (*(&v23 + 1))
      {
        if (!v29)
        {
          goto LABEL_29;
        }

        if (v23 != __PAIR128__(v29, v30))
        {
          v34 = v31;
          v35 = sub_1B8C25A08();
          v31 = v34;
          if ((v35 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v29)
      {
        goto LABEL_29;
      }

      if (v24 != v31)
      {
        goto LABEL_29;
      }

      v3 = v18;
      if (v26)
      {
        if (!v49)
        {
          sub_1B8B50FF8(&v61, v53);
          sub_1B8B50FF8(&v54, v53);
          goto LABEL_35;
        }

        if (v25 == v47 && v26 == v49)
        {
          sub_1B8B50FF8(&v61, v53);
          sub_1B8B50FF8(&v54, v53);
          result = sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        }

        else
        {
          v36 = sub_1B8C25A08();
          sub_1B8B50FF8(&v61, v53);
          sub_1B8B50FF8(&v54, v53);
          result = sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
          if ((v36 & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_1B8B50FF8(&v61, v53);
        sub_1B8B50FF8(&v54, v53);
        sub_1B8B50FF8(&v61, v53);
        sub_1B8B50FF8(&v54, v53);
        sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        sub_1B8B51054(&v61);
        result = sub_1B8B51054(&v54);
        if (v49)
        {
          goto LABEL_36;
        }
      }

      if (((v27 ^ v48) & 1) == 0)
      {
        sub_1B8B51054(&v61);
        v6 = v45;
        goto LABEL_4;
      }

LABEL_36:
      v5 = v51;
      v14 = (v14 + 1) & v52;
      v15 = v14 >> 6;
      v17 = 1 << v14;
    }

    while ((*(v51 + 8 * (v14 >> 6)) & (1 << v14)) != 0);
    v16 = *(v51 + 8 * v15);
LABEL_58:
    *(v5 + 8 * v15) = v16 | v17;
    v37 = (*(v3 + 48) + (v14 << 6));
    v38 = v61;
    v39 = v62;
    v40 = *v63;
    *(v37 + 41) = *&v63[9];
    v37[1] = v39;
    v37[2] = v40;
    *v37 = v38;
    v41 = *(v3 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    v6 = v45;
    if (!v42)
    {
      *(v3 + 16) = v43;
LABEL_5:
      v4 = v50 + 1;
      if (v50 + 1 == v6)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8B8ACD4(uint64_t a1)
{
  v2 = sub_1B8C24408();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7320, &qword_1B8C2B9C8);
    v9 = sub_1B8C257B8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1B8B8B058(&qword_1EBAA7328, MEMORY[0x1E697C4F8], MEMORY[0x1E697C500]);
      v16 = sub_1B8C250B8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1B8B8B058(&unk_1EBAA8590, MEMORY[0x1E697C4F8], MEMORY[0x1E697C508]);
          v23 = sub_1B8C250E8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1B8B8AFF4()
{
  result = qword_1EBAA7318;
  if (!qword_1EBAA7318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7310, &qword_1B8C2B990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7318);
  }

  return result;
}

uint64_t sub_1B8B8B058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FBKDraftError.description.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x206E776F6E6B6E55;
      }

      if (a1 == 1)
      {
        return 0xD000000000000013;
      }

LABEL_20:
      result = sub_1B8C25A28();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x6E61432072657355;
        case 7:
          return 0xD000000000000018;
        case 8:
          return 0xD000000000000020;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 0x2064696C61766E49;
    }

    else
    {
      return 0x6F7774656E206F4ELL;
    }
  }
}

unint64_t static FBKDraftError.withRawValue(_:)(unint64_t a1)
{
  result = sub_1B8B8B4E4(a1);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B8B8B2B0(uint64_t a1, uint64_t a2)
{
  sub_1B8C25AB8();
  sub_1B8C250C8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B8B314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B8B8B714(a1, a2, a3);

  return MEMORY[0x1EEDC2D70](a1, a2, v5);
}

uint64_t sub_1B8B8B360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8C25AB8();
  sub_1B8C250C8();
  return sub_1B8C25AF8();
}

unint64_t sub_1B8B8B3C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8B8B4E4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B8B8B3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8B8B714(a1, a2, a3);

  return MEMORY[0x1EEDC2D80](a1, v4);
}

uint64_t sub_1B8B8B438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8B8B714(a1, a2, a3);

  return MEMORY[0x1EEDC2D78](a1, v4);
}

uint64_t sub_1B8B8B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B8B8B714(a1, a2, a3);

  return MEMORY[0x1EEDC2D68](a1, a2, v5);
}

unint64_t sub_1B8B8B4E4(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B8B8B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7358;
  if (!qword_1EBAA7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7358);
  }

  return result;
}

unint64_t sub_1B8B8B550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7360;
  if (!qword_1EBAA7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7360);
  }

  return result;
}

unint64_t sub_1B8B8B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7368;
  if (!qword_1EBAA7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7368);
  }

  return result;
}

unint64_t sub_1B8B8B600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7370;
  if (!qword_1EBAA7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7370);
  }

  return result;
}

unint64_t sub_1B8B8B658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7378;
  if (!qword_1EBAA7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7378);
  }

  return result;
}

unint64_t sub_1B8B8B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7380;
  if (!qword_1EBAA7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7380);
  }

  return result;
}

unint64_t sub_1B8B8B714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7388;
  if (!qword_1EBAA7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7388);
  }

  return result;
}

void sub_1B8B8B768(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = a2 + 32;
    while (1)
    {
      sub_1B8B807FC(v7, v9);
      v8 = a1(v9);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v9);
        return;
      }

      if (v8)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    sub_1B8B4D380(v9, a3);
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1B8B8B820@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

double sub_1B8B8B9F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1B8B8BA38()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7390);
  __swift_project_value_buffer(v0, qword_1EBAA7390);
  return sub_1B8C23C28();
}

uint64_t sub_1B8B8BB04(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B8B8BB64(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_localClient;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B8B8BBFC;
}

void sub_1B8B8BBFC(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1B8B8BC7C(char a1)
{
  v2 = v1;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for DraftingExtensionViewController();
  objc_msgSendSuper2(&v31, sel_viewWillDisappear_, a1 & 1);
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7390);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C33D60, v30);
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s", v7, 0xCu);
    v9 = __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CCB0E0](v8, -1, -1, v9);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  v10 = *&v2[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [v11 presentedViewController];
    v13 = v12;
    if (v12)
    {
    }

    v14 = [v11 isBeingDismissedBySelf];
    v15 = sub_1B8C23C18();
    v16 = sub_1B8C25498();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109376;
      *(v17 + 4) = v14;
      *(v17 + 8) = 1024;
      *(v17 + 10) = v13 != 0;
      _os_log_impl(&dword_1B8B22000, v15, v16, "DraftingExtensionViewController will disappear. Did BFTVC dismiss self? %{BOOL}d. Did BFTVC present another view? %{BOOL}d", v17, 0xEu);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);
    }

    if ((v14 & 1) == 0 && !v13)
    {
      v18 = sub_1B8C23C18();
      v19 = sub_1B8C25498();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1B8B22000, v18, v19, "Controller is being dismissed by parent. Will delete draft", v20, 2u);
        MEMORY[0x1B8CCB0E0](v20, -1, -1);
      }

      v30[4] = sub_1B8B8C114;
      v30[5] = 0;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 1107296256;
      v30[2] = sub_1B8B963EC;
      v30[3] = &block_descriptor_2;
      v21 = _Block_copy(v30);
      [v11 _deleteCurrentDraftWithCompletion:v21];
      _Block_release(v21);
      v22 = sub_1B8C23C18();
      v23 = sub_1B8C25498();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1B8B22000, v22, v23, "will delete all bug sessions", v24, 2u);
        MEMORY[0x1B8CCB0E0](v24, -1, -1);
      }

      v25 = [v11 devicesController];
      [v25 abortAllSessions];
    }
  }

  else
  {
    v11 = sub_1B8C23C18();
    v26 = sub_1B8C25498();
    if (os_log_type_enabled(v11, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C33D60, v30);
      _os_log_impl(&dword_1B8B22000, v11, v26, "No BFTVC on %{public}s", v27, 0xCu);
      v29 = __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B8CCB0E0](v28, -1, -1, v29);
      MEMORY[0x1B8CCB0E0](v27, -1, -1);
    }
  }
}

void sub_1B8B8C114(void *a1)
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7390);
  v3 = a1;
  oslog = sub_1B8C23C18();
  v4 = sub_1B8C25498();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74A0, &qword_1B8C2BCA8);
    v8 = sub_1B8C25178();
    v10 = sub_1B8B5DD48(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B8B22000, oslog, v4, "Deleted draft. Error? %s", v5, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1B8B8C30C(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DraftingExtensionViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1 & 1);
  sub_1B8C235E8();
  sub_1B8B8DC94();
}

void sub_1B8B8C3C0(uint64_t a1, uint64_t a2)
{
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DraftingExtensionViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v3 setActivityIndicatorViewStyle_];
  [v3 startAnimating];
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  v6 = v3;
  [v5 addSubview_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B8C2BBD0;
  v8 = [v6 centerXAnchor];

  v9 = [v2 view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 centerXAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [v6 centerYAnchor];

  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v15 centerYAnchor];

    v18 = [v13 constraintEqualToAnchor_];
    *(v7 + 40) = v18;
    sub_1B8B46130(0, &qword_1EBAA7BB0, 0x1E696ACD8);
    v19 = sub_1B8C252B8();

    [v16 activateConstraints_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1B8B8C698()
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  __swift_project_value_buffer(v1, qword_1EBAA7390);
  v2 = v0;
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25498();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1B8B5DD48(0x29287472617473, 0xE700000000000000, &v13);
    *(v5 + 12) = 2082;
    v7 = *&v2[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form];
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
      swift_beginAccess();
      v10 = *v8;
      v9 = v8[1];
    }

    else
    {
      v10 = 0;
      v9 = 0xE000000000000000;
    }

    v11 = sub_1B8B5DD48(v10, v9, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s with form identifier: [%{public}s]", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  if (*&v2[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session])
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B8BB7CEC(v2, sub_1B8B96124, v12);
  }
}

void sub_1B8B8C8E8(void *a1, char a2, uint64_t a3)
{
  v5 = sub_1B8C24FD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C25008();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if ((a2 & 1) == 0)
    {
      if (qword_1EBAA58F8 != -1)
      {
        swift_once();
      }

      v15 = sub_1B8C23C38();
      __swift_project_value_buffer(v15, qword_1EBAA7390);
      v16 = a1;
      v17 = sub_1B8C23C18();
      v18 = sub_1B8C25498();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134349056;
        v20 = [v16 ID];
        if (!v20)
        {
          sub_1B8B96138(a1, 0);
          __break(1u);
          return;
        }

        v21 = v20;
        v22 = [v20 integerValue];

        *(v19 + 4) = v22;
        sub_1B8B96138(a1, 0);
        _os_log_impl(&dword_1B8B22000, v17, v18, "Did start Feedback Session with Form [%{public}ld]", v19, 0xCu);
        MEMORY[0x1B8CCB0E0](v19, -1, -1);
      }

      else
      {
        sub_1B8B96138(a1, 0);
      }

      v23 = *&v14[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub];
      *&v14[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub] = a1;
      v24 = v16;

      v14[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] = 1;
      sub_1B8B8DC94();

      return;
    }

    if (a1 == 6)
    {
      sub_1B8B8CEEC();
    }

    else if (a1 == 5)
    {
      sub_1B8B8D4C0();
    }

    else
    {
      v33 = v6;
      if (qword_1EBAA58F8 != -1)
      {
        swift_once();
      }

      v25 = sub_1B8C23C38();
      __swift_project_value_buffer(v25, qword_1EBAA7390);
      v26 = sub_1B8C23C18();
      v27 = sub_1B8C25478();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1B8B22000, v26, v27, "Failed to authenticate", v28, 2u);
        MEMORY[0x1B8CCB0E0](v28, -1, -1);
      }

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v29 = sub_1B8C25538();
      v30 = swift_allocObject();
      *(v30 + 16) = v14;
      *(v30 + 24) = a1;
      aBlock[4] = sub_1B8B96130;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_90;
      v31 = _Block_copy(aBlock);
      v32 = v14;

      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      sub_1B8C256D8();
      MEMORY[0x1B8CCA210](0, v12, v8, v31);
      _Block_release(v31);

      (*(v33 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
    }
  }
}

void sub_1B8B8CE30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply + 8);
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

    v4 = sub_1B8C255C8();
    v2();
    sub_1B8B30A44(v2, v3);
  }
}

void sub_1B8B8CEEC()
{
  v1 = v0;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7390);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25458();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8B22000, v3, v4, "Showing user cancelled alert", v5, 2u);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  type metadata accessor for FBKFeedbackForm();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_1B8C23348();

  v9 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v10 = sub_1B8C250F8();

  v11 = sub_1B8C250F8();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:{1, 0x80000001B8C342D0}];

  v13 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  v16 = sub_1B8C250F8();

  v30 = sub_1B8B960D8;
  v31 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_75;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:{v17, 0x80000001B8C340E0}];
  _Block_release(v17);

  [v12 addAction_];
  v20 = [v7 bundleForClass_];
  sub_1B8C23348();

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = v15;
  v23 = sub_1B8C250F8();

  v30 = sub_1B8B96100;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_81;
  v24 = _Block_copy(&aBlock);

  v25 = [v18 actionWithTitle:v23 style:0 handler:{v24, 0x80000001B8C34340}];
  _Block_release(v24);

  [v12 addAction_];
  [v22 presentViewController:v12 animated:1 completion:0];
}

void sub_1B8B8D458(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1B8B8D4C0()
{
  v1 = v0;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7390);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25458();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8B22000, v3, v4, "Showing no network alert", v5, 2u);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  type metadata accessor for FBKFeedbackForm();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_1B8C23348();

  v9 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v10 = sub_1B8C250F8();

  v11 = sub_1B8C250F8();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:{1, 0x80000001B8C34070}];

  v13 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  v16 = sub_1B8C250F8();

  v30 = sub_1B8B9608C;
  v31 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_63;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:{v17, 0x80000001B8C340E0}];
  _Block_release(v17);

  [v12 addAction_];
  v20 = [v7 bundleForClass_];
  sub_1B8C23348();

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = v15;
  v23 = sub_1B8C250F8();

  v30 = sub_1B8B960B4;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_69;
  v24 = _Block_copy(&aBlock);

  v25 = [v18 actionWithTitle:v23 style:0 handler:{v24, 0x80000001B8C34170}];
  _Block_release(v24);

  [v12 addAction_];
  [v22 presentViewController:v12 animated:1 completion:0];
}

void sub_1B8B8DA2C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAA7390);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B8B22000, v7, v8, a3, v9, 2u);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  v10 = a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply;
  v11 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  if (v11)
  {
    v12 = *(v10 + 8);
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

    v13 = sub_1B8C255C8();
    v11();
    sub_1B8B30A44(v11, v12);
  }
}

void sub_1B8B8DBA8(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7390);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8B22000, v5, v6, a3, v7, 2u);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  sub_1B8B8C698();
}

void sub_1B8B8DC94()
{
  v1 = v0;
  v2 = type metadata accessor for URLError(0);
  v3 = *(v2 - 8);
  v297 = v2;
  v298 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v286 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_122;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub];
  if (!v9 || (v10 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews, v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] != 1))
  {
LABEL_17:
    if (qword_1EBAA58F8 != -1)
    {
      goto LABEL_120;
    }

    goto LABEL_18;
  }

  v11 = v9;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v13 = v12;
  v14 = [v12 window];

  if (!v14)
  {

    goto LABEL_17;
  }

  v1[v10] = 0;
  v15 = *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form];
  if (!v15)
  {
    goto LABEL_127;
  }

  v289 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form;
  v16 = qword_1EBAA58F8;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_1B8C23C38();
  v299 = __swift_project_value_buffer(v18, qword_1EBAA7390);
  v19 = sub_1B8C23C18();
  v20 = sub_1B8C25498();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B8B22000, v19, v20, "Initializing Views", v21, 2u);
    MEMORY[0x1B8CCB0E0](v21, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA7470, 0x1E69DCFB8);
  v22 = MEMORY[0x1B8CCA110]();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

LABEL_127:
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController];
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController] = v23;
  v26 = v22;

  [v24 setDelegate_];
  v290 = v11;
  [v24 setPendingStub_];
  [v24 setCanShowTopicPicker_];
  v27 = &v17[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText];
  swift_beginAccess();
  if (*(v27 + 1))
  {

    v28 = sub_1B8C250F8();

    [v24 setLocalizedAttachmentLegalText_];
  }

  v29 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  v292 = v29;
  [v24 setShouldShowUserSwitcherInForm_];
  v293 = v17;
  v30 = v17;
  v31 = v26;
  v32 = sub_1B8C23C18();
  v33 = sub_1B8C25498();

  v34 = os_log_type_enabled(v32, v33);
  v295 = v1;
  v296 = v24;
  v294 = v5;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v300[0] = v36;
    *v35 = 136446466;
    v37 = &v30[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v39 = *v37;
    v38 = v37[1];

    v40 = sub_1B8B5DD48(v39, v38, v300);

    *(v35 + 4) = v40;
    v24 = v296;
    *(v35 + 12) = 1026;
    *(v35 + 14) = [v24 shouldShowUserSwitcherInForm];

    _os_log_impl(&dword_1B8B22000, v32, v33, "Form [%{public}s]: shows user switcher: [%{BOOL,public}d]", v35, 0x12u);
    v41 = __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B8CCB0E0](v36, -1, -1, v41);
    MEMORY[0x1B8CCB0E0](v35, -1, -1);
  }

  else
  {
  }

  v46 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  swift_beginAccess();
  [v24 setAutoGathersDiagnosticExtensions_];
  v47 = v30;
  v48 = v31;
  v49 = sub_1B8C23C18();
  v50 = sub_1B8C25498();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v300[0] = v52;
    *v51 = 136446466;
    v53 = &v47[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v55 = *v53;
    v54 = v53[1];

    v56 = sub_1B8B5DD48(v55, v54, v300);

    *(v51 + 4) = v56;
    v24 = v296;
    *(v51 + 12) = 1026;
    *(v51 + 14) = [v24 autoGathersDiagnosticExtensions];

    _os_log_impl(&dword_1B8B22000, v49, v50, "Form [%{public}s]: autoGathersDiagnosticExtensions: [%{BOOL,public}d]", v51, 0x12u);
    v57 = __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1B8CCB0E0](v52, -1, -1, v57);
    MEMORY[0x1B8CCB0E0](v51, -1, -1);
  }

  else
  {
  }

  v58 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  swift_beginAccess();
  [v24 setAlwaysDeletesDrafts_];
  v59 = v47;
  v60 = sub_1B8C23C18();
  v61 = sub_1B8C25498();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v300[0] = v63;
    *v62 = 136446466;
    v64 = &v59[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v291 = v48;
    v65 = *v64;
    v66 = v64[1];

    v67 = sub_1B8B5DD48(v65, v66, v300);

    *(v62 + 4) = v67;
    v48 = v291;
    *(v62 + 12) = 1026;
    *(v62 + 14) = v47[v58];

    _os_log_impl(&dword_1B8B22000, v60, v61, "Form [%{public}s]: alwaysDeletesDrafts: [%{BOOL,public}d]", v62, 0x12u);
    v68 = __swift_destroy_boxed_opaque_existential_0(v63);
    v69 = v63;
    v24 = v296;
    MEMORY[0x1B8CCB0E0](v69, -1, -1, v68);
    MEMORY[0x1B8CCB0E0](v62, -1, -1);
  }

  else
  {
  }

  [v24 setShowInlineUserInfo_];
  v70 = v59;
  v71 = v48;
  v72 = sub_1B8C23C18();
  v73 = sub_1B8C25498();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v300[0] = v75;
    *v74 = 136446466;
    v76 = &v70[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v78 = *v76;
    v77 = v76[1];

    v79 = sub_1B8B5DD48(v78, v77, v300);

    *(v74 + 4) = v79;
    v24 = v296;
    *(v74 + 12) = 1026;
    *(v74 + 14) = [v24 showInlineUserInfo];

    _os_log_impl(&dword_1B8B22000, v72, v73, "Form [%{public}s]: show inline user info: [%{BOOL,public}d]", v74, 0x12u);
    v80 = __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x1B8CCB0E0](v75, -1, -1, v80);
    MEMORY[0x1B8CCB0E0](v74, -1, -1);
  }

  else
  {
  }

  [v24 setShowUserSwitcherLast_];
  v81 = v70;
  v82 = v71;
  v83 = sub_1B8C23C18();
  v84 = sub_1B8C25498();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v300[0] = v86;
    *v85 = 136446466;
    v87 = &v81[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v89 = *v87;
    v88 = v87[1];

    v90 = sub_1B8B5DD48(v89, v88, v300);

    *(v85 + 4) = v90;
    v24 = v296;
    *(v85 + 12) = 1026;
    *(v85 + 14) = [v24 showUserSwitcherLast];

    _os_log_impl(&dword_1B8B22000, v83, v84, "Form [%{public}s]: show user switcher last: [%{BOOL,public}d]", v85, 0x12u);
    v91 = __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x1B8CCB0E0](v86, -1, -1, v91);
    MEMORY[0x1B8CCB0E0](v85, -1, -1);
  }

  else
  {
  }

  if ([v24 showInlineUserInfo])
  {
    v92 = [objc_opt_self() sharedInstance];
    v93 = [v92 currentUser];

    if (v93)
    {
      v94 = [v93 username];

      if (v94)
      {
        v95 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v96 = sub_1B8C250F8();
        v97 = [v95 initWithString_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7488, &qword_1B8C2BC90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B8C2A740;
        v99 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        v100 = objc_opt_self();
        v101 = *MEMORY[0x1E69DDD28];
        v102 = v99;
        v103 = [v100 preferredFontForTextStyle_];
        v104 = sub_1B8C23618();

        *(inited + 40) = v104;
        v105 = sub_1B8B5F7EC(inited);
        swift_setDeallocating();
        sub_1B8B3433C(inited + 32, &qword_1EBAA7490, &qword_1B8C2BC98);
        sub_1B8BA184C(v105);

        v106 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        type metadata accessor for Key(0);
        sub_1B8B9634C(&qword_1EBAA5CB8, type metadata accessor for Key, &unk_1B8C27878);
        v107 = sub_1B8C25088();

        v108 = [v106 initWithString:v94 attributes:v107];

        [v97 appendAttributedString_];
        v109 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
        swift_beginAccess();
        v110 = *&v81[v109];
        if (v110)
        {
          v111 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v112 = v110;
          v113 = [v111 initWithAttributedString_];
          [v113 appendAttributedString_];
          v114 = v113;
          v24 = v296;
          [v296 setLocalizedAttributedLegalString_];
        }

        else
        {
          v114 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
          v24 = v296;
          [v296 setLocalizedAttributedLegalString_];
        }
      }
    }
  }

  if (!v293[v292])
  {
    v115 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
    swift_beginAccess();
    v116 = *&v81[v115];
    if (v116)
    {
      v117 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v118 = v116;
      v119 = [v117 initWithAttributedString_];
      [v24 setLocalizedAttributedLegalString_];
    }
  }

  if (*&v81[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8])
  {

    v120 = sub_1B8C250F8();
  }

  else
  {
    v120 = 0;
  }

  [v24 setLargeTitleIcon_];

  v121 = v81;
  v122 = v82;
  v123 = sub_1B8C23C18();
  v124 = v24;
  v125 = sub_1B8C25468();

  if (os_log_type_enabled(v123, v125))
  {
    v293 = v122;
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v300[0] = v127;
    *v126 = 136446466;
    v128 = &v121[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v130 = *v128;
    v129 = v128[1];

    v131 = sub_1B8B5DD48(v130, v129, v300);

    *(v126 + 4) = v131;
    *(v126 + 12) = 2082;
    v132 = [v124 largeTitleIcon];
    if (v132)
    {
      v133 = v132;
      v134 = sub_1B8C25128();
      v136 = v135;
    }

    else
    {
      v134 = 0;
      v136 = 0xE000000000000000;
    }

    v137 = sub_1B8B5DD48(v134, v136, v300);

    *(v126 + 14) = v137;
    _os_log_impl(&dword_1B8B22000, v123, v125, "Form [%{public}s]: large title icon: [%{public}s]", v126, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v127, -1, -1);
    MEMORY[0x1B8CCB0E0](v126, -1, -1);

    v122 = v293;
  }

  else
  {
  }

  v138 = v296;
  [v296 setCanShowTeamPicker_];
  sub_1B8B8FF6C();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
  v140 = sub_1B8C25088();

  [v138 setPendingQandA_];

  v141 = v121;
  v142 = sub_1B8C23C18();
  v143 = sub_1B8C25498();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v293 = v139;
    v146 = v145;
    v300[0] = v145;
    *v144 = 136446466;
    v147 = &v141[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v149 = *v147;
    v148 = v147[1];

    v150 = sub_1B8B5DD48(v149, v148, v300);

    *(v144 + 4) = v150;
    *(v144 + 12) = 2050;
    v151 = sub_1B8B8FF6C()[2];

    *(v144 + 14) = v151;

    _os_log_impl(&dword_1B8B22000, v142, v143, "Form [%{public}s]: prefilled Q&As count: [%{public}ld]", v144, 0x16u);
    v152 = __swift_destroy_boxed_opaque_existential_0(v146);
    MEMORY[0x1B8CCB0E0](v146, -1, -1, v152);
    MEMORY[0x1B8CCB0E0](v144, -1, -1);
  }

  else
  {
  }

  v153 = v122;
  v154 = sub_1B8C23C18();
  v155 = sub_1B8C25468();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v300[0] = v157;
    *v156 = 136315138;
    v158 = [v296 pendingQandA];
    if (v158)
    {
      v159 = v158;
      v160 = sub_1B8C25098();
    }

    else
    {
      v160 = 0;
    }

    v301 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7480, &qword_1B8C2BC88);
    v161 = sub_1B8C25178();
    v163 = sub_1B8B5DD48(v161, v162, v300);

    *(v156 + 4) = v163;
    _os_log_impl(&dword_1B8B22000, v154, v155, "Pre-filling answers %s", v156, 0xCu);
    v164 = __swift_destroy_boxed_opaque_existential_0(v157);
    MEMORY[0x1B8CCB0E0](v157, -1, -1, v164);
    MEMORY[0x1B8CCB0E0](v156, -1, -1);
  }

  v165 = v296;
  if (v295[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage] == 1)
  {
    v166 = *&v295[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session];
    v168 = 1;
    if (v166)
    {
      v167 = *(v166 + 40);
      if (v167)
      {
        if ([v167 isUnauthenticatedUser])
        {
          v168 = 0;
        }
      }
    }
  }

  else
  {
    v168 = 2;
  }

  [v165 setSubmissionStyle_];
  v169 = [objc_opt_self() predicateForAllStubs];
  [v165 setCandidateFormStubsPredicate_];

  [v165 setShouldShowAttachmentButton_];
  v170 = v141;
  v171 = v153;
  v172 = sub_1B8C23C18();
  v173 = sub_1B8C25498();

  v174 = os_log_type_enabled(v172, v173);
  v288 = v171;
  if (v174)
  {
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v300[0] = v176;
    *v175 = 136446466;
    v177 = &v170[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v179 = *v177;
    v178 = v177[1];

    v180 = sub_1B8B5DD48(v179, v178, v300);

    *(v175 + 4) = v180;
    *(v175 + 12) = 1026;
    *(v175 + 14) = [v165 shouldShowAttachmentButton];

    _os_log_impl(&dword_1B8B22000, v172, v173, "Form [%{public}s]: shows attachment button: [%{BOOL,public}d]", v175, 0x12u);
    v181 = __swift_destroy_boxed_opaque_existential_0(v176);
    MEMORY[0x1B8CCB0E0](v176, -1, -1, v181);
    MEMORY[0x1B8CCB0E0](v175, -1, -1);
  }

  else
  {
  }

  v182 = sub_1B8B9029C();
  v183 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching;
  [v165 setDisableAccountSwitching_];
  v184 = v170;
  v185 = sub_1B8C23C18();
  v186 = sub_1B8C25498();
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v300[0] = v188;
    *v187 = 136446466;
    v189 = &v184[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v191 = *v189;
    v190 = v189[1];

    v192 = sub_1B8B5DD48(v191, v190, v300);

    *(v187 + 4) = v192;
    v165 = v296;
    *(v187 + 12) = 1026;
    *(v187 + 14) = v170[v183];

    _os_log_impl(&dword_1B8B22000, v185, v186, "Form [%{public}s]: disables account switching: [%{BOOL,public}d]", v187, 0x12u);
    v193 = __swift_destroy_boxed_opaque_existential_0(v188);
    MEMORY[0x1B8CCB0E0](v188, -1, -1, v193);
    MEMORY[0x1B8CCB0E0](v187, -1, -1);
  }

  else
  {
  }

  v194 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled;
  [v165 setAlternateImagePreviewEnabled_];
  v195 = v184;
  v196 = sub_1B8C23C18();
  v197 = sub_1B8C25498();
  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v300[0] = v199;
    *v198 = 136446466;
    v200 = &v195[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v202 = *v200;
    v201 = v200[1];

    v203 = sub_1B8B5DD48(v202, v201, v300);

    *(v198 + 4) = v203;
    v165 = v296;
    *(v198 + 12) = 1026;
    *(v198 + 14) = v184[v194];

    _os_log_impl(&dword_1B8B22000, v196, v197, "Form [%{public}s]: uses alternate image preview: [%{BOOL,public}d]", v198, 0x12u);
    v204 = __swift_destroy_boxed_opaque_existential_0(v199);
    MEMORY[0x1B8CCB0E0](v199, -1, -1, v204);
    MEMORY[0x1B8CCB0E0](v198, -1, -1);
  }

  else
  {
  }

  v205 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices;
  [v165 setUseInlineChoices_];
  v206 = v195;
  v207 = sub_1B8C23C18();
  v208 = sub_1B8C25498();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v300[0] = v210;
    *v209 = 136446466;
    v211 = &v206[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v213 = *v211;
    v212 = v211[1];

    v214 = sub_1B8B5DD48(v213, v212, v300);

    *(v209 + 4) = v214;
    v165 = v296;
    *(v209 + 12) = 1026;
    *(v209 + 14) = v195[v205];

    _os_log_impl(&dword_1B8B22000, v207, v208, "Form [%{public}s]: uses inline choices: [%{BOOL,public}d]", v209, 0x12u);
    v215 = __swift_destroy_boxed_opaque_existential_0(v210);
    MEMORY[0x1B8CCB0E0](v210, -1, -1, v215);
    MEMORY[0x1B8CCB0E0](v209, -1, -1);
  }

  else
  {
  }

  v216 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  swift_beginAccess();
  [v165 setAllowsAttachmentDragAndDrop_];
  v217 = v206;
  v218 = sub_1B8C23C18();
  v219 = sub_1B8C25498();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v300[0] = v221;
    *v220 = 136446466;
    v222 = &v217[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v224 = *v222;
    v223 = v222[1];

    v225 = sub_1B8B5DD48(v224, v223, v300);

    *(v220 + 4) = v225;
    *(v220 + 12) = 1026;
    *(v220 + 14) = v206[v216];

    _os_log_impl(&dword_1B8B22000, v218, v219, "Form [%{public}s]: allowsAttachmentDragAndDrop: [%{BOOL,public}d]", v220, 0x12u);
    v226 = __swift_destroy_boxed_opaque_existential_0(v221);
    MEMORY[0x1B8CCB0E0](v221, -1, -1, v226);
    MEMORY[0x1B8CCB0E0](v220, -1, -1);
  }

  else
  {
  }

  v228 = v294;
  v227 = v295;
  v229 = v217;
  v230 = &v217[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  swift_beginAccess();
  v231 = v230[1];
  v232 = v296;
  if (v231)
  {
    v233 = *v230;

    v234 = sub_1B8C250F8();
    [v232 setOnBoardingKitIdentifier_];

    v235 = v229;

    v236 = sub_1B8C23C18();
    v237 = sub_1B8C25498();

    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v300[0] = v239;
      *v238 = 136446466;
      v240 = &v235[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
      swift_beginAccess();
      v242 = *v240;
      v241 = v240[1];

      v243 = sub_1B8B5DD48(v242, v241, v300);

      *(v238 + 4) = v243;
      *(v238 + 12) = 2082;
      v244 = sub_1B8B5DD48(v233, v231, v300);

      *(v238 + 14) = v244;
      _os_log_impl(&dword_1B8B22000, v236, v237, "Form [%{public}s]: onBoardingKitIdentifier: [%{public}s]", v238, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v239, -1, -1);
      v245 = v238;
      v232 = v296;
      MEMORY[0x1B8CCB0E0](v245, -1, -1);
    }

    else
    {
    }

    v228 = v294;
    v227 = v295;
  }

  v246 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  v247 = *&v227[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController];
  *&v227[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController] = v246;
  v248 = v246;

  v249 = [v227 view];
  if (!v249)
  {
LABEL_123:
    __break(1u);
    goto LABEL_127;
  }

  v250 = v249;
  sub_1B8C254C8();

  v251 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v252 = *(*&v229[v251] + 16);
  v291 = v229;
  if (v252)
  {
LABEL_102:
    if (sub_1B8C1FDD4())
    {
      sub_1B8C23498();
      v267 = sub_1B8C25088();
    }

    else
    {
      v267 = 0;
    }

    [v232 setPendingAttachments_];

    v268 = v289;
    v269 = *&v227[v289];
    if (v269)
    {
      v270 = v269 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken;
      swift_beginAccess();
      if (*(v270 + 8))
      {
        v271 = *v270;

        if (MEMORY[0x1B8CCA870](v272))
        {
          v273 = *&v227[v268];
          if (v273 && (v274 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds, swift_beginAccess(), (v275 = *(v273 + v274)) != 0))
          {
            v299 = v271;
            v276 = *(v275 + 16);
            if (v276)
            {
              v287 = v248;
              v300[0] = MEMORY[0x1E69E7CC0];

              sub_1B8C25868();
              v277 = 32;
              do
              {
                [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
                sub_1B8C25848();
                sub_1B8C25878();
                sub_1B8C25888();
                sub_1B8C25858();
                v277 += 8;
                --v276;
              }

              while (v276);

              v232 = v296;
              v248 = v287;
            }

            sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
            v278 = sub_1B8C252B8();

            v227 = v295;
          }

          else
          {
            v278 = 0;
          }

          [v232 setRequestedPlugIns_];

          v279 = sub_1B8C250F8();

          [v232 setAppToken_];
        }

        else
        {
        }
      }
    }

    v280 = [objc_opt_self() sharedInstance];
    v281 = [v280 defaultTeam];

    v282 = swift_allocObject();
    *(v282 + 16) = v227;
    v300[4] = sub_1B8B96284;
    v300[5] = v282;
    v300[0] = MEMORY[0x1E69E9820];
    v300[1] = 1107296256;
    v300[2] = sub_1B8B963EC;
    v300[3] = &block_descriptor_100;
    v283 = _Block_copy(v300);
    v284 = v227;

    v285 = v290;
    [v232 loadNewResponseForBugFormStub:v290 forTeam:v281 completion:v283];
    _Block_release(v283);

    return;
  }

  v287 = v248;
  v253 = sub_1B8C1FD2C();
  v254 = v253;
  v255 = *(v253 + 16);
  if (!v255)
  {
LABEL_101:

    v232 = v296;
    v248 = v287;
    goto LABEL_102;
  }

  v299 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_xpcClient;
  v256 = v253 + ((*(v298 + 80) + 32) & ~*(v298 + 80));
  v292 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_localClient;
  swift_beginAccess();
  v257 = 0;
  v293 = "ew Controller from Storyboard";
  while (v257 < *(v254 + 16))
  {
    sub_1B8B9628C(v256 + *(v298 + 72) * v257, v228);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v265 = Strong;
      sub_1B8BBFD3C();
      v258 = v266;

      if (!v258)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v258 = swift_unknownObjectWeakLoadStrong();
      if (!v258)
      {
        goto LABEL_127;
      }
    }

    v259 = sub_1B8C233E8();
    v260 = *(v228 + *(v297 + 20));
    v261 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v262 = sub_1B8C250F8();
    v263 = [v261 initWithDomain:v262 code:v260 userInfo:0];

    v228 = v294;
    [v258 feedbackDidFailToAttachURL:v259 nsError:v263];
    swift_unknownObjectRelease();

    v227 = v295;
LABEL_96:
    ++v257;
    sub_1B8B962F0(v228);
    if (v255 == v257)
    {
      goto LABEL_101;
    }
  }

  __break(1u);
LABEL_120:
  swift_once();
LABEL_18:
  v42 = sub_1B8C23C38();
  __swift_project_value_buffer(v42, qword_1EBAA7390);
  v299 = sub_1B8C23C18();
  v43 = sub_1B8C25458();
  if (os_log_type_enabled(v299, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1B8B22000, v299, v43, "Not ready to initialize views", v44, 2u);
    MEMORY[0x1B8CCB0E0](v44, -1, -1);
  }

  v45 = v299;
}