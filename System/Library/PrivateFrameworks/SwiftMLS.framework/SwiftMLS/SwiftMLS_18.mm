uint64_t sub_26BF647C0()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_26BF648D4;
  }

  else
  {
    v2 = sub_26BF64958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF648D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF64958()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(*(v0 + 776) + *(*(v0 + 768) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F258, &qword_26C01A898);
  inited = swift_initStackObject();
  *(v0 + 800) = inited;
  *(inited + 16) = xmmword_26C011280;
  sub_26C00A4CC();
  v6 = sub_26C00A49C();
  v8 = v7;
  result = (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 736);
    v11 = *(v0 + 728);
    *(inited + 32) = -4094;
    *(inited + 40) = v6;
    *(inited + 48) = v8;

    sub_26BF9E81C(inited);
    *(v0 + 808) = v4;
    *(v0 + 232) = v4;
    sub_26BE80190((v0 + 232));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F260, &qword_26C01A8A0);
    v12 = swift_initStackObject();
    *(v0 + 816) = v12;
    *(v12 + 16) = xmmword_26C011280;
    v13 = *(v0 + 360);
    v14 = *(v0 + 376);
    v15 = *(v0 + 392);
    *(v12 + 208) = *(v0 + 408);
    *(v12 + 176) = v14;
    *(v12 + 192) = v15;
    *(v12 + 160) = v13;
    v16 = *(v0 + 296);
    v17 = *(v0 + 312);
    v18 = *(v0 + 344);
    *(v12 + 128) = *(v0 + 328);
    *(v12 + 144) = v18;
    *(v12 + 96) = v16;
    *(v12 + 112) = v17;
    v19 = *(v0 + 232);
    v20 = *(v0 + 280);
    v21 = *(v0 + 248);
    *(v12 + 64) = *(v0 + 264);
    *(v12 + 80) = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v21;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 432) = 0u;

    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 416) = xmmword_26C00DA50;
    sub_26BE7170C(v0 + 656, v0 + 432, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE701EC(*(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504));
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 472) = 0u;
    v22 = v11[5];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v23 - 8) + 56))(&v10[v22], 1, 3, v23);
    *v10 = 0;
    v10[v11[6]] = 0;
    v10[v11[7]] = 0;
    v10[v11[8]] = 0;
    *&v10[v11[9]] = MEMORY[0x277D84F90];
    v24 = swift_task_alloc();
    *(v0 + 824) = v24;
    *v24 = v0;
    v24[1] = sub_26BF64C5C;
    v25 = *(v0 + 776);
    v26 = *(v0 + 736);

    return sub_26BF54A88(v0 + 520, v25, v12, v0 + 416, v26);
  }

  return result;
}

uint64_t sub_26BF64C5C()
{
  v2 = *v1;
  *(v2 + 832) = v0;

  sub_26BF7F05C(*(v2 + 736), type metadata accessor for MLS.GroupState.CommitOptions);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_26BF7E1E8(v2 + 416);
  if (v0)
  {
    v3 = sub_26BF64EB8;
  }

  else
  {
    v3 = sub_26BF64DE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF64DE4()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 712);

  *v2 = *(v0 + 520);
  v3 = *(v0 + 536);
  v4 = *(v0 + 552);
  v5 = *(v0 + 584);
  v2[3] = *(v0 + 568);
  v2[4] = v5;
  v2[1] = v3;
  v2[2] = v4;
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BF64EB8()
{
  v1 = *(v0 + 776);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BF64F64(uint64_t a1, uint64_t *a2)
{
  v3[56] = a1;
  v3[57] = v2;
  v3[58] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[59] = swift_task_alloc();
  v3[60] = type metadata accessor for MLS.GroupState(0);
  v5 = swift_task_alloc();
  v6 = *a2;
  v3[61] = v5;
  v3[62] = v6;

  return MEMORY[0x2822009F8](sub_26BF65030, 0, 0);
}

uint64_t sub_26BF65030()
{
  v34 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 504) = __swift_project_value_buffer(v1, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 496);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33[0] = v7;
    *v6 = 136315394;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v33);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    v12 = *(v5 + 16);

    *(v6 + 14) = v12;

    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: performing a resurrection, and replacing %ld members of the group due to expired credentials", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = sub_26C009A3C();
  v14 = sub_26C00AA1C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 456);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315394;

    v18 = sub_26BE3D034();
    v20 = v19;

    v21 = sub_26BE29740(v18, v20, &v32);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = *(v15 + 24);
    LODWORD(v33[0]) = *(v15 + 152);
    v33[1] = v22;
    v23 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v25 = sub_26BE29740(v23, v24, &v32);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_26BDFE000, v13, v14, "%s: getting state for epoch %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v17, -1, -1);
    MEMORY[0x26D69A4E0](v16, -1, -1);
  }

  v26 = *(v0 + 456);
  v27 = *(v26 + 152);
  v28 = *(v26 + 24);
  *(v0 + 424) = v27;
  *(v0 + 432) = v28;
  v29 = swift_task_alloc();
  *(v0 + 512) = v29;
  *v29 = v0;
  v29[1] = sub_26BF653D0;
  v30 = *(v0 + 488);

  return sub_26BF37CA4(v30, (v0 + 424), 1);
}

uint64_t sub_26BF653D0()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_26BF65F90;
  }

  else
  {
    v2 = sub_26BF654E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF654E4()
{
  v81 = v0;
  v1 = *(*(v0 + 488) + *(*(v0 + 480) + 40));
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {

      v17 = sub_26C009A3C();
      v18 = sub_26C00AA0C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v80[0] = v20;
        *v19 = 136315138;

        v21 = sub_26BE3D034();
        v23 = v22;

        v24 = sub_26BE29740(v21, v23, v80);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_26BDFE000, v17, v18, "%s: attempted resurrection on non-ended group", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x26D69A4E0](v20, -1, -1);
        MEMORY[0x26D69A4E0](v19, -1, -1);
      }

      v16 = *(v0 + 488);
      sub_26BE01654();
      swift_allocError();
      *v25 = 42;
      *(v25 + 8) = 0u;
      *(v25 + 24) = 0u;
      *(v25 + 40) = 0u;
      *(v25 + 56) = 0u;
      *(v25 + 72) = 0u;
      *(v25 + 88) = 0u;
      *(v25 + 104) = 0;
      *(v25 + 112) = 23;
      swift_willThrow();
      goto LABEL_11;
    }

    v4 = *v2;
    v2 += 12;
  }

  while (v4 != -4094);

  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80[0] = v8;
    *v7 = 136315138;

    v9 = sub_26BE3D034();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, v80);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26BDFE000, v5, v6, "%s: generating proposals for replacing expired credentials", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v13 = *(v0 + 520);
  v14 = *(v0 + 488);
  v80[0] = *(v0 + 496);

  v15 = sub_26BF62D64(v14, v80);
  if (v13)
  {
    v16 = *(v0 + 488);

LABEL_11:
    sub_26BF7F05C(v16, type metadata accessor for MLS.GroupState);

    v26 = *(v0 + 8);

    return v26();
  }

  v28 = v15;

  v29 = sub_26C009A3C();
  v30 = sub_26C00AA1C();

  v79 = v28;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v80[0] = v32;
    *v31 = 136315138;

    v33 = sub_26BE3D034();
    v35 = v34;

    v36 = sub_26BE29740(v33, v35, v80);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_26BDFE000, v29, v30, "%s: adding proposal to remove end_mls from GCE", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x26D69A4E0](v32, -1, -1);
    MEMORY[0x26D69A4E0](v31, -1, -1);
  }

  v37 = 0;
  v38 = *(v1 + 16);
  v39 = v1 + 32;
  v40 = MEMORY[0x277D84F90];
LABEL_17:
  *(v0 + 528) = v40;
  v41 = (v39 + 24 * v37);
  while (v38 != v37)
  {
    if (v37 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v42 = v41 + 12;
    ++v37;
    v43 = *v41;
    v41 += 12;
    if (v43 != 61442)
    {
      v44 = *(v42 - 2);
      v77 = *(v42 - 1);
      sub_26BE00608(v44, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 440) = v40;
      v78 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26BECBAB4(0, *(v40 + 16) + 1, 1);
        v40 = *(v0 + 440);
      }

      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_26BECBAB4((v46 > 1), v47 + 1, 1);
        v40 = *(v0 + 440);
      }

      *(v40 + 16) = v47 + 1;
      v48 = v40 + 24 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v44;
      *(v48 + 48) = v77;
      v39 = v78;
      goto LABEL_17;
    }
  }

  *(v0 + 16) = v40;
  sub_26BE80190((v0 + 16));

  v38 = v79;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_27;
  }

LABEL_35:
  v38 = sub_26BEED780(0, *(v38 + 2) + 1, 1, v38);
LABEL_27:
  v50 = *(v38 + 2);
  v49 = *(v38 + 3);
  if (v50 >= v49 >> 1)
  {
    v38 = sub_26BEED780((v49 > 1), v50 + 1, 1, v38);
  }

  *(v0 + 536) = v38;
  *(v38 + 2) = v50 + 1;
  v51 = &v38[184 * v50];
  v52 = *(v0 + 16);
  v53 = *(v0 + 32);
  v54 = *(v0 + 64);
  *(v51 + 4) = *(v0 + 48);
  *(v51 + 5) = v54;
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  v55 = *(v0 + 80);
  v56 = *(v0 + 96);
  v57 = *(v0 + 128);
  *(v51 + 8) = *(v0 + 112);
  *(v51 + 9) = v57;
  *(v51 + 6) = v55;
  *(v51 + 7) = v56;
  v58 = *(v0 + 144);
  v59 = *(v0 + 160);
  v60 = *(v0 + 176);
  *(v51 + 26) = *(v0 + 192);
  *(v51 + 11) = v59;
  *(v51 + 12) = v60;
  *(v51 + 10) = v58;

  v61 = sub_26C009A3C();
  v62 = sub_26C00AA1C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v80[0] = v64;
    *v63 = 136315138;

    v65 = sub_26BE3D034();
    v67 = v66;

    v68 = sub_26BE29740(v65, v67, v80);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_26BDFE000, v61, v62, "%s: committing", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x26D69A4E0](v64, -1, -1);
    MEMORY[0x26D69A4E0](v63, -1, -1);
  }

  v69 = MEMORY[0x277D84F90];
  v70 = *(v0 + 464);
  v71 = *(v0 + 472);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v0 + 200) = xmmword_26C00DA50;
  sub_26BE7170C(v0 + 384, v0 + 216, &qword_28045E468, &qword_26C00ECA0);
  sub_26BE701EC(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288));
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 256) = 0u;
  v72 = v70[5];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v73 - 8) + 56))(&v71[v72], 1, 3, v73);
  *v71 = 0;
  v71[v70[6]] = 0;
  v71[v70[7]] = 0;
  v71[v70[8]] = 0;
  *&v71[v70[9]] = v69;
  v74 = swift_task_alloc();
  *(v0 + 544) = v74;
  *v74 = v0;
  v74[1] = sub_26BF65D60;
  v75 = *(v0 + 488);
  v76 = *(v0 + 472);

  return sub_26BF54A88(v0 + 304, v75, v38, v0 + 200, v76);
}

uint64_t sub_26BF65D60()
{
  v2 = *v1;
  *(v2 + 552) = v0;

  sub_26BF7F05C(*(v2 + 472), type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8(v2 + 200);
  if (v0)
  {
    v3 = sub_26BF66000;
  }

  else
  {
    v3 = sub_26BF65ED4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF65ED4()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 448);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);
  *v2 = *(v0 + 304);
  v3 = *(v0 + 368);
  v5 = *(v0 + 320);
  v4 = *(v0 + 336);
  v2[3] = *(v0 + 352);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BF65F90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF66000()
{
  v1 = *(v0 + 488);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BF66098(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *v2;
  v3[5] = v4;
  v3[6] = v5;
  return MEMORY[0x2822009F8](sub_26BF660E8, 0, 0);
}

uint64_t sub_26BF660E8()
{
  v1 = v0[4];

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_26BF661BC;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v6 = v0[3];

  return sub_26BEA2A98(v5, v6, v6, v3, v4, v1);
}

uint64_t sub_26BF661BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BF662B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[146] = a5;
  v5[145] = a4;
  v5[144] = a3;
  v5[143] = a2;
  v5[142] = a1;
  type metadata accessor for MLS.MLSMessage(0);
  v5[147] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v5[148] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v5[149] = v6;
  v5[150] = *(v6 - 8);
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v5[154] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v5[155] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
  v5[156] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v7 = type metadata accessor for FileMetadata(0);
  v5[159] = v7;
  v5[160] = *(v7 - 8);
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v8 = type metadata accessor for FileEncryptionInfo(0);
  v5[164] = v8;
  v5[165] = *(v8 - 8);
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v5[169] = type metadata accessor for FileInfo(0);
  v5[170] = swift_task_alloc();
  v5[171] = swift_task_alloc();
  v9 = sub_26C009DAC();
  v5[172] = v9;
  v5[173] = *(v9 - 8);
  v5[174] = swift_task_alloc();
  v10 = sub_26C009E0C();
  v5[175] = v10;
  v5[176] = *(v10 - 8);
  v5[177] = swift_task_alloc();
  v5[178] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  v5[179] = swift_task_alloc();
  v5[180] = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  v5[181] = swift_task_alloc();
  v5[182] = swift_task_alloc();
  v11 = sub_26C00A4EC();
  v5[183] = v11;
  v5[184] = *(v11 - 8);
  v5[185] = swift_task_alloc();
  sub_26C009D7C();
  v5[186] = swift_task_alloc();
  v12 = sub_26C009C8C();
  v5[187] = v12;
  v5[188] = *(v12 - 8);
  v5[189] = swift_task_alloc();
  v5[190] = swift_task_alloc();
  v5[191] = swift_task_alloc();
  v5[192] = swift_task_alloc();
  v5[193] = swift_task_alloc();
  v5[194] = swift_task_alloc();
  v5[195] = type metadata accessor for MLS.GroupState(0);
  v5[196] = swift_task_alloc();
  v5[197] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF668BC, 0, 0);
}

uint64_t sub_26BF668BC()
{
  v18 = v0;
  v17 = *MEMORY[0x277D85DE8];
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  v0[198] = v1;
  v0[199] = __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[145];
    v5 = v0[144];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v16 = v7;
    *v6 = 136315394;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_26BE29740(v5, v4, &v16);
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: changing RCS group name to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  sub_26BE2FFCC();
  v16 = *(v0[143] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v12 = 45;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0;
    *(v12 + 112) = 23;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[200] = v15;
    *v15 = v0;
    v15[1] = sub_26BF66DB8;

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF66DB8(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 1808) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF6711C, 0, 0);
  }
}

uint64_t sub_26BF6711C()
{
  if (*(v0 + 1808) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 1144);
    v5 = *(v4 + 152);
    v6 = *(v4 + 24);
    *(v0 + 968) = v5;
    *(v0 + 976) = v6;
    v7 = swift_task_alloc();
    *(v0 + 1608) = v7;
    *v7 = v0;
    v7[1] = sub_26BF67488;
    v8 = *(v0 + 1576);

    return sub_26BF37CA4(v8, (v0 + 968), 0);
  }
}

uint64_t sub_26BF67488()
{
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v2 = sub_26BF69D5C;
  }

  else
  {
    v2 = sub_26BF675C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF675C8()
{
  v331 = v0;
  v1 = v0;
  v330 = *MEMORY[0x277D85DE8];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  sub_26C009D5C();
  sub_26C009C6C();
  sub_26C00A4CC();
  v5 = sub_26C00A49C();
  v7 = v6;
  v0[203] = v5;
  v0[204] = v6;
  v8 = *(v3 + 8);
  v8(v2, v4);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  v9 = v0[185];
  v10 = v0[183];
  sub_26C00A4CC();
  v11 = sub_26C00A49C();
  v13 = v12;
  *(v1 + 1640) = v11;
  *(v1 + 1648) = v12;
  v8(v9, v10);
  v327 = v1;
  if (v13 >> 60 == 15)
  {
    v14 = sub_26C009A3C();
    v15 = sub_26C00AA0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26BDFE000, v14, v15, "UTF-8 encoding of the input new group name failed", v16, 2u);
      MEMORY[0x26D69A4E0](v16, -1, -1);
    }

    v17 = *(v1 + 1576);
    v18 = *(v1 + 1552);
    v19 = *(v1 + 1504);
    v20 = *(v1 + 1496);

    sub_26BE01654();
    swift_allocError();
    *v21 = 37;
    v21[112] = 0;
    swift_willThrow();
    sub_26BE132D4(v5, v7);
    (*(v19 + 8))(v18, v20);
    v22 = v17;
    goto LABEL_32;
  }

  v23 = v13 >> 62;
  v322 = v7;
  v324 = v5;
  v314 = v8;
  if ((v13 >> 62) > 1)
  {
    if (v23 != 2)
    {
      v24 = 0;
      goto LABEL_16;
    }

    v26 = *(v11 + 16);
    v25 = *(v11 + 24);
    v24 = v25 - v26;
    if (__OFSUB__(v25, v26))
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v27 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
    *v29 = v11;
    v29[1] = v13;
    v30 = *(v11 + 16);
LABEL_14:
    sub_26BE2BAE8(v11, v13);
    sub_26BE00608(v11, v13);
    goto LABEL_17;
  }

  if (v23)
  {
    if (__OFSUB__(HIDWORD(v11), v11))
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v24 = HIDWORD(v11) - v11;
    v27 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
    v28 = objc_allocWithZone(v27);
    v31 = &v28[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
    *v31 = v11;
    v31[1] = v13;
    v30 = v11;
    goto LABEL_14;
  }

  v24 = BYTE6(v13);
LABEL_16:
  v27 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
  v28 = objc_allocWithZone(v27);
  v30 = 0;
  v32 = &v28[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
  *v32 = v11;
  v32[1] = v13;
LABEL_17:
  *&v28[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos] = v30;
  v33 = sub_26C0090DC();
  *(v1 + 1096) = v28;
  *(v1 + 1104) = v27;
  v34 = objc_msgSendSuper2((v1 + 1096), sel_initWithData_, v33);
  *(v1 + 1656) = v34;
  v319 = v13;
  sub_26BE132D4(v11, v13);

  [v34 open];
  v35 = [objc_allocWithZone(MEMORY[0x277CBEB78]) initToMemory];
  *(v1 + 1664) = v35;
  [v35 open];

  v36 = sub_26C009A3C();
  v37 = sub_26C00AA1C();

  v320 = v11;
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    *&v328[0] = v318;
    *v38 = 136315138;

    v39 = v35;
    v40 = v34;
    v41 = v24;
    v42 = sub_26BE3D034();
    v44 = v43;

    v45 = v42;
    v24 = v41;
    v34 = v40;
    v35 = v39;
    v46 = sub_26BE29740(v45, v44, v328);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_26BDFE000, v36, v37, "%s: encrypting group name to file encryption", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v318);
    MEMORY[0x26D69A4E0](v318, -1, -1);
    MEMORY[0x26D69A4E0](v38, -1, -1);
  }

  v47 = *(v1 + 1448);
  v48 = *(*(v1 + 1504) + 16);
  v48(*(v1 + 1544), *(v1 + 1552), *(v1 + 1496));
  *(v47 + 24) = 0;
  if (v24 > 0x7FFFFFFF)
  {
    v77 = *(v1 + 1576);
    v78 = *(v1 + 1552);
    v79 = *(v1 + 1544);
    v80 = *(v1 + 1504);
    v81 = *(v1 + 1496);
    sub_26BF7EDDC();
    swift_allocError();
    *v82 = 1;
    swift_willThrow();

    sub_26BE132D4(v324, v322);
    sub_26BE132D4(v320, v319);
    v83 = *(v80 + 8);
    v83(v79, v81);
    v83(v78, v81);
    goto LABEL_31;
  }

  if (v24 < 0)
  {
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  *&v313 = v48;
  v49 = *(v1 + 1448);
  v50 = *(v1 + 1440);
  v51 = *(v50 + 44);
  *v49 = v24;
  v52 = 10240;
  *(v49 + v51) = 10240;
  v53 = v34;
  v54 = v35;
  LOWORD(v35) = v322;
  sub_26BE2BAE8(v324, v322);
  v55 = sub_26C00A74C();
  *(v55 + 16) = 10240;
  bzero((v55 + 32), 0x2800uLL);
  *(v49 + *(v50 + 48)) = v55;
  v56 = sub_26C0092DC();
  if (v57)
  {
    goto LABEL_117;
  }

  if (HIDWORD(v56))
  {
    goto LABEL_106;
  }

  v58 = v56 - v24;
  if (v56 < v24)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  *(*(v1 + 1448) + 4) = v58;
  if (__CFADD__(v24 + 8, v58))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  *(&v313 + 1) = v55;
  v315 = v54;
  v316 = v53;
  v59 = *(v1 + 1616);
  v60 = *(v1 + 1544);
  v61 = *(v1 + 1536);
  v62 = *(v1 + 1504);
  v63 = *(v1 + 1496);
  v64 = *(v1 + 1448);
  *(v64 + 28) = v56 + 8;
  sub_26C009D6C();
  sub_26C009C6C();
  v65 = MEMORY[0x277CC9318];
  sub_26C009C3C();
  v66 = *(v62 + 8);
  *(v1 + 1672) = v66;
  *(v1 + 1680) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v317 = v66;
  v66(v61, v63);
  v67 = *(v1 + 1080);
  v68 = *(v1 + 1088);
  *(v64 + 8) = v67;
  *(v64 + 16) = v68;
  *&v328[0] = v67;
  *(&v328[0] + 1) = v68;
  *(v1 + 664) = v65;
  *(v1 + 672) = MEMORY[0x277CC9300];
  *(v1 + 640) = xmmword_26C01F8F0;
  v69 = __swift_project_boxed_opaque_existential_1((v1 + 640), v65);
  v70 = *v69;
  v71 = v69[1];
  sub_26BE00608(v67, v68);
  sub_26BE121A0(v70, v71, v328);
  __swift_destroy_boxed_opaque_existential_1((v1 + 640));
  v73 = *(&v328[0] + 1);
  v72 = *&v328[0];
  if (sub_26C009C7C() != 256)
  {

    sub_26BE132D4(v324, v322);
    sub_26BF7EDDC();
    swift_allocError();
    *v84 = 3;
    swift_willThrow();

    sub_26BE132D4(v324, v322);
    sub_26BE00258(v72, v73);
    v85 = v320;
    goto LABEL_34;
  }

  v74 = v322 >> 62;
  v75 = v320;
  if ((v322 >> 62) > 1)
  {
    if (v74 != 2)
    {
      goto LABEL_38;
    }

    v88 = *(v324 + 16);
    v87 = *(v324 + 24);
    v89 = __OFSUB__(v87, v88);
    v76 = v87 - v88;
    if (!v89)
    {
LABEL_37:
      if (v76 < 0xFFFF)
      {
LABEL_38:
        v300 = v64;
        v309 = v59;
        *&v312 = v72;
        *(&v312 + 1) = v73;
        if (qword_28045DFD8 == -1)
        {
LABEL_39:
          v90 = *(v1 + 1536);
          v291 = *(v1 + 1528);
          v294 = *(v1 + 1520);
          v298 = *(v1 + 1512);
          v91 = *(v1 + 1504);
          v92 = *(v1 + 1496);
          v93 = *(v1 + 1432);
          v94 = *(v1 + 1424);
          v303 = *(v1 + 1392);
          v95 = *(v1 + 1384);
          v304 = *(v1 + 1376);
          v96 = xmmword_280478FF8;
          *(v1 + 1064) = xmmword_280478FF8;
          *(v1 + 1032) = v324;
          *(v1 + 1040) = v322;
          sub_26BE00608(v96, *(&v96 + 1));
          sub_26C00A30C();
          sub_26BF7EFF4(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v285 = sub_26BE016A8();
          sub_26C009E1C();
          sub_26BE00258(*(v1 + 1064), *(v1 + 1072));
          sub_26C009C3C();
          v317(v90, v92);
          v97 = *(v94 + 48);
          v98 = *(v91 + 32);
          v98(v291, v93, v92);
          v98(v294, v93 + v97, v92);
          (v313)(v298, v291, v92);
          (*(v95 + 104))(v303, *MEMORY[0x277CC53F0], v304);
          sub_26BE00608(v312, *(&v312 + 1));
          sub_26C009DDC();
          if (v309)
          {
            v99 = *(v1 + 1528);
            v100 = *(v1 + 1520);
            v101 = *(v1 + 1496);

            sub_26BE132D4(v324, v322);
            sub_26BE132D4(v324, v322);
            sub_26BE00258(v312, *(&v312 + 1));
            sub_26BE132D4(v320, v319);
            v86 = v317;
            v317(v100, v101);
            v317(v99, v101);
            v64 = v300;
            goto LABEL_41;
          }

          v107 = *(v1 + 1536);
          v308 = *(v1 + 1528);
          v310 = *(v1 + 1544);
          v108 = *(v1 + 1520);
          v109 = *(v1 + 1496);
          *(&v313 + 1) = *(v1 + 1456);
          v110 = *(v1 + 1448);
          v111 = *(v1 + 1440);
          (*(*(v1 + 1408) + 32))(v110 + v111[9], *(v1 + 1416), *(v1 + 1400));
          (v313)(v107, v108, v109);
          sub_26C009E2C();
          v112 = *(v300 + 8);
          v113 = *(v300 + 16);
          *(v1 + 1016) = v112;
          *(v1 + 1024) = v113;
          sub_26BE00608(v112, v113);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
          sub_26C009E3C();
          sub_26BE132D4(v324, v322);
          sub_26BE00258(v312, *(&v312 + 1));
          sub_26BE00258(*(v1 + 1016), *(v1 + 1024));
          v317(v108, v109);
          v317(v308, v109);
          v317(v310, v109);
          *(v110 + v111[13]) = v316;
          *(v110 + v111[14]) = v315;
          sub_26BF7F124(v110, *(&v313 + 1), type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
          RCSFileAttachmentCrypto.RCSFileEncryption.encryptFile()(v328);
          v312 = v328[0];
          *(v1 + 1688) = v328[0];
          v313 = v328[1];
          *(v1 + 1704) = v328[1];
          if ([v315 propertyForKey:*MEMORY[0x277CBE740], v285, v285])
          {
            sub_26C00AB0C();
            swift_unknownObjectRelease();
          }

          else
          {
            memset(v328, 0, sizeof(v328));
          }

          v115 = v328[1];
          *(v1 + 792) = v328[0];
          *(v1 + 808) = v115;
          if (*(v1 + 816))
          {
            sub_26BE1335C();
            if (swift_dynamicCast())
            {
              v116 = *(v1 + 1368);
              v117 = *(v1 + 1352);
              v73 = v1;
              v118 = *(v1 + 1344);
              v290 = v73[167];
              v292 = v116;
              v305 = v73[165];
              v295 = v73[164];
              v297 = v117;
              v119 = v73[163];
              v300 = v73[159];
              v120 = v73[139];
              v73[215] = v120;
              v288 = v120;
              v307 = sub_26BE09EB8(v288);
              v73[216] = v307;
              v302 = v121;
              v73[217] = v121;
              *v118 = xmmword_26C00BBD0;
              *(v118 + 16) = xmmword_26C00BBD0;
              v287 = xmmword_26C00BBD0;
              *(v118 + 32) = xmmword_26C00BBD0;
              sub_26BE00608(v312, *(&v312 + 1));
              sub_26BE00608(v313, *(&v313 + 1));
              sub_26C0098BC();
              v59 = 0;
              sub_26C009C3C();
              v122 = v73[125];
              v123 = v73[126];
              sub_26BE00258(*v118, *(v118 + 8));
              *v118 = v122;
              *(v118 + 8) = v123;
              sub_26BE00258(*(v118 + 16), *(v118 + 24));
              *(v118 + 16) = v313;
              sub_26BE00258(*(v118 + 32), *(v118 + 40));
              *(v118 + 32) = v312;
              *(v118 + 48) = 1;
              *(v118 + 56) = 1;
              *(v119 + 16) = 0;
              *(v119 + 24) = 0xE000000000000000;
              sub_26C0098BC();
              v124 = *(v300 + 28);
              v125 = *(v305 + 56);
              v125((v119 + v124), 1, 1, v295);
              strcpy(v119, "group_subject");
              *(v119 + 14) = -4864;
              sub_26BF7F0BC(v118, v290, type metadata accessor for FileEncryptionInfo);
              sub_26BE2E258(v119 + v124, &qword_28045EF78, &unk_26C017EE0);
              sub_26BF7F124(v290, v119 + v124, type metadata accessor for FileEncryptionInfo);
              v289 = v125;
              v125((v119 + v124), 0, 1, v295);
              v60 = v292;
              sub_26C0098BC();
              v75 = *(v297 + 20);
              if (qword_28045DFC0 == -1)
              {
                goto LABEL_53;
              }

              goto LABEL_114;
            }
          }

          else
          {
            sub_26BE2E258(v1 + 792, &qword_28045FB48, &qword_26C01FCF8);
          }

          v159 = sub_26C009A3C();
          v160 = sub_26C00AA0C();
          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&dword_26BDFE000, v159, v160, "Failed to retrieve the ciphertext from an output stream for file attachment encryption", v161, 2u);
            MEMORY[0x26D69A4E0](v161, -1, -1);
          }

          v77 = *(v1 + 1576);
          v162 = *(v1 + 1552);
          v163 = *(v1 + 1496);
          v164 = *(v1 + 1456);

          sub_26BE01654();
          swift_allocError();
          *v165 = 39;
          v165[112] = 0;
          swift_willThrow();
          sub_26BE00258(v312, *(&v312 + 1));
          sub_26BE00258(v313, *(&v313 + 1));
          sub_26BE132D4(v324, v322);

          sub_26BE132D4(v320, v319);
          sub_26BF7F05C(v164, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
          v317(v162, v163);
LABEL_31:
          v22 = v77;
LABEL_32:
          sub_26BF7F05C(v22, type metadata accessor for MLS.GroupState);
LABEL_42:

          v105 = v327[1];

          return v105();
        }

LABEL_111:
        swift_once();
        goto LABEL_39;
      }

      sub_26BE132D4(v324, v322);
      sub_26BF7EDDC();
      swift_allocError();
      *v114 = 0;
      swift_willThrow();

      sub_26BE132D4(v324, v322);
      sub_26BE00258(v72, v73);
      v85 = v320;
LABEL_34:
      sub_26BE132D4(v85, v319);
      v86 = v317;
LABEL_41:
      v102 = *(v1 + 1576);
      v103 = *(v1 + 1552);
      v104 = *(v1 + 1496);
      v86(*(v1 + 1544), v104);
      v86(v103, v104);
      sub_26BF7F05C(v102, type metadata accessor for MLS.GroupState);
      sub_26BE00258(*(v64 + 8), *(v64 + 16));

      goto LABEL_42;
    }
  }

  else
  {
    if (!v74)
    {
      goto LABEL_38;
    }

    LODWORD(v76) = HIDWORD(v324) - v324;
    if (!__OFSUB__(HIDWORD(v324), v324))
    {
      v76 = v76;
      goto LABEL_37;
    }

    __break(1u);
  }

  __break(1u);
LABEL_114:
  swift_once();
LABEL_53:
  v126 = v73[163];
  v127 = v73[162];
  *(v60 + v75) = qword_28045EF38;
  sub_26BF7F0BC(v126, v127, type metadata accessor for FileMetadata);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129 = *(v60 + v75);
  v130 = v73;
  v311 = v59;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for FileInfo._StorageClass(0);
    swift_allocObject();
    v129 = sub_26BED91E0(v129);
    *(v60 + v75) = v129;
  }

  v131 = v73[171];
  v132 = v73[170];
  v133 = v73[168];
  v134 = v73[163];
  v135 = v73[162];
  v136 = v73[160];
  v137 = v73[159];
  v138 = v130[158];
  sub_26BF7F124(v135, v138, type metadata accessor for FileMetadata);
  (*(v136 + 56))(v138, 0, 1, v137);
  v139 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  sub_26BE7170C(v138, v129 + v139, &qword_28045F080, &qword_26C0184C8);
  swift_endAccess();
  sub_26BF7F05C(v134, type metadata accessor for FileMetadata);
  sub_26BF7F05C(v133, type metadata accessor for FileEncryptionInfo);
  sub_26BF7F0BC(v131, v132, type metadata accessor for FileInfo);

  v140 = sub_26C009A3C();
  v141 = sub_26C00AA1C();

  v142 = os_log_type_enabled(v140, v141);
  v143 = v130[170];
  if (v142)
  {
    v293 = v141;
    v144 = v130[160];
    v145 = v130[159];
    v146 = v130[157];
    v147 = swift_slowAlloc();
    v286 = swift_slowAlloc();
    *&v328[0] = v286;
    *v147 = 136315394;

    v148 = sub_26BE3D034();
    v150 = v149;

    v151 = sub_26BE29740(v148, v150, v328);

    *(v147 + 4) = v151;
    *(v147 + 12) = 2080;
    v152 = *(v143 + *(v297 + 20));
    v153 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
    swift_beginAccess();
    sub_26BE2E1F0(v152 + v153, v146, &qword_28045F080, &qword_26C0184C8);
    v154 = *(v144 + 48);
    if (v154(v146, 1, v145) == 1)
    {
      v155 = v130[164];
      v156 = v130[161];
      v157 = v130[159];
      v158 = v130[157];
      *v156 = 0;
      *(v156 + 1) = 0xE000000000000000;
      *(v156 + 2) = 0;
      *(v156 + 3) = 0xE000000000000000;
      sub_26C0098BC();
      v289(&v156[*(v300 + 28)], 1, 1, v155);
      if (v154(v158, 1, v157) != 1)
      {
        sub_26BE2E258(v130[157], &qword_28045F080, &qword_26C0184C8);
      }
    }

    else
    {
      sub_26BF7F124(v130[157], v130[161], type metadata accessor for FileMetadata);
    }

    v167 = v130[165];
    v168 = v130[164];
    v169 = v130[156];
    sub_26BE2E1F0(v130[161] + *(v300 + 28), v169, &qword_28045EF78, &unk_26C017EE0);
    v170 = *(v167 + 48);
    v171 = v170(v169, 1, v168);
    v172 = v130[166];
    if (v171 == 1)
    {
      v173 = v130[164];
      v174 = v130[161];
      v175 = v130[156];
      *v172 = v287;
      *(v172 + 16) = v287;
      *(v172 + 32) = v287;
      *(v172 + 48) = 0;
      *(v172 + 56) = 1;
      sub_26C0098BC();
      sub_26BF7F05C(v174, type metadata accessor for FileMetadata);
      v176 = v170(v175, 1, v173);
      v166 = v302;
      v177 = v311;
      if (v176 != 1)
      {
        sub_26BE2E258(v130[156], &qword_28045EF78, &unk_26C017EE0);
      }
    }

    else
    {
      v178 = v130[156];
      sub_26BF7F05C(v130[161], type metadata accessor for FileMetadata);
      sub_26BF7F124(v178, v172, type metadata accessor for FileEncryptionInfo);
      v166 = v302;
      v177 = v311;
    }

    v179 = v130[170];
    v180 = v130[166];
    v181 = *(v180 + 32);
    v182 = *(v180 + 40);
    sub_26BE00608(v181, v182);
    sub_26BF7F05C(v180, type metadata accessor for FileEncryptionInfo);
    v311 = v177;
    v130[141] = sub_26BF87240(v181, v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v183 = sub_26C00A3EC();
    v185 = v184;
    sub_26BE00258(v181, v182);

    v186 = sub_26BE411D0(16, v183, v185);
    v188 = v187;
    v190 = v189;
    v192 = v191;

    v193 = MEMORY[0x26D698FE0](v186, v188, v190, v192);
    v195 = v194;

    sub_26BF7F05C(v179, type metadata accessor for FileInfo);
    v196 = sub_26BE29740(v193, v195, v328);

    *(v147 + 14) = v196;
    _os_log_impl(&dword_26BDFE000, v140, v293, "%s: generated fileInfo for group name change, with tag %s", v147, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v286, -1, -1);
    MEMORY[0x26D69A4E0](v147, -1, -1);
  }

  else
  {

    sub_26BF7F05C(v143, type metadata accessor for FileInfo);
    v166 = v302;
  }

  sub_26BE00608(v307, v166);

  sub_26BE00608(v307, v166);
  v54 = sub_26C009A3C();
  v197 = sub_26C00AA1C();

  v198 = v130;
  if (!os_log_type_enabled(v54, v197))
  {
    sub_26BE00258(v307, v166);
    sub_26BE00258(v307, v166);

    goto LABEL_83;
  }

  v35 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  *&v328[0] = v1;
  *v35 = 136315650;

  v199 = sub_26BE3D034();
  v201 = v200;

  v202 = sub_26BE29740(v199, v201, v328);

  *(v35 + 1) = v202;
  *(v35 + 6) = 2080;
  v198[140] = sub_26BF87240(v307, v166);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v203 = sub_26C00A3EC();
  v205 = v204;

  v206 = sub_26BE411D0(16, v203, v205);
  v208 = v207;
  v53 = v209;
  v211 = v210;

  v212 = MEMORY[0x26D698FE0](v206, v208, v53, v211);
  v214 = v213;

  v215 = sub_26BE29740(v212, v214, v328);

  *(v35 + 14) = v215;
  *(v35 + 11) = 2048;
  v216 = v166 >> 62;
  if ((v166 >> 62) > 1)
  {
    if (v216 != 2)
    {
      v52 = v307;
      sub_26BE00258(v307, v166);
      v217 = 0;
      goto LABEL_82;
    }

    v52 = v307;
    v219 = *(v307 + 16);
    v218 = *(v307 + 24);
    sub_26BE00258(v307, v166);
    v217 = v218 - v219;
    if (!__OFSUB__(v218, v219))
    {
      goto LABEL_82;
    }

    __break(1u);
    goto LABEL_79;
  }

  if (v216)
  {
LABEL_79:
    v52 = v307;
    sub_26BE00258(v307, v166);
    LODWORD(v217) = HIDWORD(v307) - v307;
    if (!__OFSUB__(HIDWORD(v307), v307))
    {
      v217 = v217;
      goto LABEL_82;
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v52 = sub_26BEEBD8C(0, *(v52 + 16) + 1, 1, v52);
LABEL_93:
    v258 = *(v52 + 16);
    v257 = *(v52 + 24);
    if (v258 >= v257 >> 1)
    {
      v52 = sub_26BEEBD8C((v257 > 1), v258 + 1, 1, v52);
    }

    *(v52 + 16) = v258 + 1;
    v259 = v52 + 24 * v258;
    *(v259 + 32) = v35;
    *(v259 + 40) = v53;
    *(v259 + 48) = v54;
    goto LABEL_102;
  }

  v52 = v307;
  sub_26BE00258(v307, v166);
  v217 = BYTE6(v166);
LABEL_82:
  *(v35 + 3) = v217;
  sub_26BE00258(v52, v166);
  _os_log_impl(&dword_26BDFE000, v54, v197, "%s: encrypted group name to %s, of length %ld bytes", v35, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x26D69A4E0](v1, -1, -1);
  MEMORY[0x26D69A4E0](v35, -1, -1);

  v198 = v327;
LABEL_83:
  v306 = v198[183];
  v220 = v198[155];
  v221 = v198[143];
  v299 = v220;
  v301 = v198[185];
  sub_26BF7F0BC(v198[171], v220, type metadata accessor for FileInfo);
  v222 = type metadata accessor for FileInfoAndSender(0);
  v223 = (v220 + *(v222 + 20));
  v224 = *(v221 + 56);
  v225 = *(v221 + 64);
  swift_beginAccess();
  sub_26BE038A8(v221 + 112, (v327 + 90));
  v226 = v327[93];
  v227 = v327[94];
  __swift_project_boxed_opaque_existential_1(v327 + 90, v226);
  v296 = *(v227 + 40);
  v223[5] = swift_getAssociatedTypeWitness();
  v223[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v223 + 2);
  sub_26BE04890(v224, v225);
  v296(v226, v227);
  __swift_destroy_boxed_opaque_existential_1(v327 + 90);
  *v223 = v224;
  v223[1] = v225;
  (*(*(v222 - 8) + 56))(v220, 0, 1, v222);
  v228 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE7170C(v299, v221 + v228, &qword_28045FA38, &qword_26C01D890);
  swift_endAccess();
  v230 = *(v221 + 96);
  v229 = *(v221 + 104);
  LOBYTE(v328[0]) = *(v221 + 72);
  *(v328 + 8) = *(v221 + 80);
  *(&v328[1] + 1) = v230;
  v329 = v229;

  sub_26C00A4CC();
  v231 = sub_26C00A49C();
  v233 = v232;
  result = v314(v301, v306);
  if (v233 >> 60 == 15)
  {
LABEL_120:
    __break(1u);
    return result;
  }

  sub_26C009C3C();
  v234 = v327[123];
  v235 = v327[124];
  v236 = sub_26BFA61F0(v328, v231, v233, v234, v235);
  v327[218] = v236;
  v327[219] = v237;
  if (v311)
  {
    v238 = v327[197];
    v239 = v327[194];
    v240 = v327[187];
    v241 = v327[182];
    v242 = v327[171];
    sub_26BE00258(v234, v235);
    sub_26BE132D4(v231, v233);
    sub_26BE00258(v312, *(&v312 + 1));
    sub_26BE00258(v313, *(&v313 + 1));
    sub_26BE00258(v307, v302);

    sub_26BE132D4(v324, v322);
    sub_26BE132D4(v320, v319);

    sub_26BF7F05C(v241, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
    v317(v239, v240);
    sub_26BF7F05C(v238, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v242, type metadata accessor for FileInfo);
    goto LABEL_42;
  }

  v35 = v236;
  v243 = v237;

  sub_26BE00258(v234, v235);
  sub_26BE132D4(v231, v233);
  sub_26BE00608(v35, v243);
  sub_26BFDB780(v35, v243, v328);
  v244 = v327[197];
  v1 = v327;
  v245 = v327[195];
  sub_26BE00258(v35, v243);
  LOWORD(v35) = v328[0];
  v53 = *(&v328[0] + 1);
  v54 = *&v328[1];
  v327[220] = *(&v328[0] + 1);
  v327[221] = v54;
  v52 = *(v244 + *(v245 + 40));
  v246 = *(v52 + 16);
  if (!v246)
  {
LABEL_90:

    v249 = sub_26C009A3C();
    v250 = sub_26C00AA1C();

    if (os_log_type_enabled(v249, v250))
    {
      v325 = v35;
      v35 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *&v328[0] = v251;
      *v35 = 136315138;

      v252 = sub_26BE3D034();
      v254 = v253;

      v255 = sub_26BE29740(v252, v254, v328);
      v1 = v327;

      *(v35 + 1) = v255;
      _os_log_impl(&dword_26BDFE000, v249, v250, "%s: adding new subject_commitment extension", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v251);
      MEMORY[0x26D69A4E0](v251, -1, -1);
      v256 = v35;
      LOWORD(v35) = v325;
      MEMORY[0x26D69A4E0](v256, -1, -1);
    }

    sub_26BE00608(v53, v54);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_93;
    }

    goto LABEL_118;
  }

  v247 = 0;
  v248 = 0;
  while (*(v52 + v247 + 32) != -4090)
  {
    ++v248;
    v247 += 24;
    if (v246 == v248)
    {
      goto LABEL_90;
    }
  }

  v260 = sub_26C009A3C();
  v261 = sub_26C00AA1C();

  v323 = v261;
  if (os_log_type_enabled(v260, v261))
  {
    v321 = v260;
    v326 = v35;
    v35 = swift_slowAlloc();
    v262 = swift_slowAlloc();
    *&v328[0] = v262;
    *v35 = 136315394;

    v263 = sub_26BE3D034();
    v265 = v264;

    v266 = sub_26BE29740(v263, v265, v328);
    v1 = v327;

    *(v35 + 1) = v266;
    *(v35 + 6) = 2048;
    *(v35 + 14) = v248;
    v260 = v321;
    _os_log_impl(&dword_26BDFE000, v321, v323, "%s: replacing existing subject_commitment extension at index %ld", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v262);
    MEMORY[0x26D69A4E0](v262, -1, -1);
    v267 = v35;
    LOWORD(v35) = v326;
    MEMORY[0x26D69A4E0](v267, -1, -1);
  }

  sub_26BE00608(v53, v54);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE588E8(v52);
    v52 = result;
  }

  if (v248 >= *(v52 + 16))
  {
    __break(1u);
    goto LABEL_120;
  }

  v268 = v52 + v247;
  v269 = *(v52 + v247 + 40);
  v270 = *(v52 + v247 + 48);
  *(v268 + 32) = v35;
  *(v268 + 40) = v53;
  *(v268 + 48) = v54;
  sub_26BE00258(v269, v270);
LABEL_102:
  *(v1 + 1776) = v52;
  v271 = *(v1 + 1232);
  v272 = *(v1 + 1224);
  *(v1 + 16) = v52;
  sub_26BE80190((v1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F260, &qword_26C01A8A0);
  v273 = swift_allocObject();
  *(v1 + 1784) = v273;
  v274 = *(v1 + 176);
  *(v273 + 176) = *(v1 + 160);
  *(v273 + 192) = v274;
  *(v273 + 208) = *(v1 + 192);
  v275 = *(v1 + 112);
  *(v273 + 112) = *(v1 + 96);
  *(v273 + 128) = v275;
  v276 = *(v1 + 144);
  *(v273 + 144) = *(v1 + 128);
  *(v273 + 160) = v276;
  v277 = *(v1 + 16);
  *(v273 + 16) = xmmword_26C011280;
  *(v273 + 32) = v277;
  v278 = *(v1 + 48);
  *(v273 + 48) = *(v1 + 32);
  *(v273 + 64) = v278;
  v279 = *(v1 + 80);
  *(v273 + 80) = *(v1 + 64);
  *(v273 + 96) = v279;
  *(v1 + 712) = 0;
  *(v1 + 680) = 0u;
  *(v1 + 696) = 0u;
  *(v1 + 376) = 0;
  *(v1 + 384) = 0x3000000000000000;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 0u;

  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v1 + 376) = xmmword_26C00DA50;
  sub_26BE7170C(v1 + 680, v1 + 392, &qword_28045E468, &qword_26C00ECA0);
  sub_26BE701EC(*(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 464));
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 432) = 0u;
  v280 = v272[5];
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v281 - 8) + 56))(&v271[v280], 1, 3, v281);
  *v271 = 0;
  v271[v272[6]] = 0;
  v271[v272[7]] = 0;
  v271[v272[8]] = 0;
  *&v271[v272[9]] = MEMORY[0x277D84F90];
  v282 = swift_task_alloc();
  *(v1 + 1792) = v282;
  *v282 = v1;
  v282[1] = sub_26BF69FB4;
  v283 = *(v1 + 1576);
  v284 = *(v1 + 1232);

  return sub_26BF54A88(v1 + 480, v283, v273, v1 + 376, v284);
}

uint64_t sub_26BF69D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF69FB4()
{
  v2 = *v1;
  *(*v1 + 1800) = v0;

  sub_26BF7F05C(*(v2 + 1232), type metadata accessor for MLS.GroupState.CommitOptions);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26BF7E1E8(v2 + 376);
  if (v0)
  {
    v3 = sub_26BF6B834;
  }

  else
  {
    v3 = sub_26BF6A1A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF6A1A4()
{
  v188 = v0;
  v187 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 528);
  *(v0 + 592) = *(v0 + 512);
  *(v0 + 608) = v5;
  *(v0 + 624) = *(v0 + 544);
  v6 = *(v0 + 496);
  *(v0 + 560) = *(v0 + 480);
  *(v0 + 576) = v6;
  v7 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  swift_beginAccess();
  sub_26BE2E1F0(v4 + v7, v3, &qword_28045E8D8, &qword_26C012580);
  v8 = *(v1 + 48);
  if (v8(v3, 1, v2) == 1)
  {
    sub_26BE2E258(*(v0 + 1184), &qword_28045E8D8, &qword_26C012580);
    v9 = sub_26C009A3C();
    v10 = sub_26C00AA0C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26BDFE000, v9, v10, "Missing cachedStateAndCommitMetadata even after performing commit", v11, 2u);
      MEMORY[0x26D69A4E0](v11, -1, -1);
    }

    v12 = *(v0 + 1768);
    v13 = *(v0 + 1760);
    v133 = *(v0 + 1744);
    v139 = *(v0 + 1752);
    v142 = *(v0 + 1728);
    v144 = *(v0 + 1736);
    v146 = *(v0 + 1720);
    v14 = *(v0 + 1712);
    v15 = *(v0 + 1704);
    v16 = *(v0 + 1696);
    v17 = *(v0 + 1688);
    v173 = *(v0 + 1672);
    v149 = *(v0 + 1664);
    v152 = *(v0 + 1656);
    v161 = *(v0 + 1648);
    v155 = *(v0 + 1640);
    v136 = *(v0 + 1632);
    v18 = *(v0 + 1624);
    v167 = *(v0 + 1552);
    v170 = *(v0 + 1576);
    v164 = *(v0 + 1496);
    v158 = *(v0 + 1456);
    v178 = *(v0 + 1368);

    sub_26BE01654();
    swift_allocError();
    *v19 = 38;
    v19[112] = 0;
    swift_willThrow();
    sub_26BF26EB4(v0 + 560);
    sub_26BE00258(v17, v16);
    sub_26BE00258(v15, v14);

    sub_26BE00258(v13, v12);
    sub_26BE00258(v133, v139);
    sub_26BE00258(v142, v144);

    sub_26BE132D4(v18, v136);
    sub_26BE132D4(v155, v161);
    sub_26BF7F05C(v158, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
    v173(v167, v164);
    sub_26BF7F05C(v170, type metadata accessor for MLS.GroupState);
    v20 = v178;
    goto LABEL_8;
  }

  v179 = v8;
  v21 = *(v0 + 1800);
  v22 = *(v0 + 1568);
  v23 = *(v0 + 1216);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1192);
  sub_26BE33F30(*(v0 + 1184), v23, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BE2E1F0(v23, v24, &qword_28045E8E0, &unk_26C0204E0);
  v26 = (v24 + *(v25 + 48));
  v27 = v26[7];
  v28 = v26[8];
  v29 = v26[10];
  *(v0 + 344) = v26[9];
  *(v0 + 360) = v29;
  *(v0 + 312) = v27;
  *(v0 + 328) = v28;
  v30 = v26[3];
  v31 = v26[4];
  v32 = v26[6];
  *(v0 + 280) = v26[5];
  *(v0 + 296) = v32;
  *(v0 + 248) = v30;
  *(v0 + 264) = v31;
  v34 = v26[1];
  v33 = v26[2];
  *(v0 + 200) = *v26;
  *(v0 + 216) = v34;
  *(v0 + 232) = v33;
  sub_26BE6FF8C(v0 + 200);
  sub_26BF7F124(v24, v22, type metadata accessor for MLS.GroupState);
  sub_26BF56BD4(&v182);
  if (v21)
  {
    v35 = *(v0 + 1768);
    v36 = *(v0 + 1760);
    v37 = *(v0 + 1744);
    v134 = *(v0 + 1752);
    v137 = *(v0 + 1728);
    v140 = *(v0 + 1736);
    v143 = *(v0 + 1720);
    v38 = *(v0 + 1712);
    v39 = *(v0 + 1704);
    v40 = *(v0 + 1696);
    v41 = *(v0 + 1688);
    v176 = *(v0 + 1672);
    v145 = *(v0 + 1664);
    v147 = *(v0 + 1656);
    v150 = *(v0 + 1640);
    v153 = *(v0 + 1648);
    v131 = *(v0 + 1632);
    v42 = *(v0 + 1624);
    v171 = *(v0 + 1576);
    v156 = *(v0 + 1568);
    v165 = *(v0 + 1496);
    v168 = *(v0 + 1552);
    v162 = *(v0 + 1456);
    v174 = *(v0 + 1368);
    v159 = *(v0 + 1216);
    sub_26BF26EB4(v0 + 560);
    sub_26BE00258(v41, v40);
    sub_26BE00258(v39, v38);

    sub_26BE00258(v36, v35);
    sub_26BE00258(v37, v134);
    sub_26BE00258(v137, v140);

    sub_26BE132D4(v42, v131);
    sub_26BE132D4(v150, v153);
    sub_26BF7F05C(v156, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v159, &qword_28045E8E0, &unk_26C0204E0);
    sub_26BF7F05C(v162, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
    v176(v168, v165);
    sub_26BF7F05C(v171, type metadata accessor for MLS.GroupState);
    v20 = v174;
LABEL_8:
    sub_26BF7F05C(v20, type metadata accessor for FileInfo);

    v47 = *(v0 + 8);
    goto LABEL_9;
  }

  v43 = v182;
  v44 = v183;
  type metadata accessor for MLS.KeySchedule(0);
  sub_26C009C3C();
  v45 = *(v0 + 1048);
  v46 = *(v0 + 1056);
  sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);
  v49 = sub_26C00998C();
  v172 = v43;
  v175 = v45;
  v177 = v50;
  v51 = sub_26BF36A34(*(v0 + 1568));
  v53 = v52;
  v54 = v46;
  v55 = v51;
  v56 = *(v0 + 1176);
  v57 = *(*(v0 + 1144) + 48);
  swift_beginAccess();
  v58 = *(v57 + 50);
  v169 = v55;
  v182 = v55;
  v183 = v53;
  v184 = 0;
  v185 = v58;
  v186 = v58 ^ 1;
  MLS.GroupState.generateApplicationMessage(message:options:)(v49, v177, &v182, v56);
  v163 = v49;
  v166 = v53;
  MLS.MLSMessage.rawValue.getter();
  v157 = v60;
  v160 = v59;
  v61 = *(v0 + 1192);
  v62 = sub_26BF3530C(v0 + 760);
  v64 = v63;
  v65 = v54;
  v66 = v175;
  if (!v179(v63, 1, v61))
  {
    sub_26BF7EE30(*(v0 + 1568), v64);
  }

  (v62)(v0 + 760, 0);

  v67 = sub_26C009A3C();
  v68 = sub_26C00AA1C();

  v180 = v54;
  v117 = v44;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v182 = v70;
    *v69 = 136315138;

    v71 = sub_26BE3D034();
    v73 = v72;

    v74 = v71;
    v65 = v180;
    v75 = sub_26BE29740(v74, v73, &v182);
    v66 = v175;

    *(v69 + 4) = v75;
    _os_log_impl(&dword_26BDFE000, v67, v68, "%s: generated private message for group name change, with:", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x26D69A4E0](v70, -1, -1);
    MEMORY[0x26D69A4E0](v69, -1, -1);
  }

  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1584), qword_280478FB0);
  sub_26BE00608(v66, v65);
  v76 = sub_26C009A3C();
  v77 = sub_26C00A9FC();
  sub_26BE00258(v66, v65);
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v182 = v79;
    *v78 = 136315138;
    v80 = sub_26C0090EC();
    v82 = sub_26BE29740(v80, v81, &v182);

    *(v78 + 4) = v82;
    _os_log_impl(&dword_26BDFE000, v76, v77, "nextEpochAuthenticator: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x26D69A4E0](v79, -1, -1);
    MEMORY[0x26D69A4E0](v78, -1, -1);
  }

  v83 = *(v0 + 1736);
  v84 = *(v0 + 1728);
  sub_26BE00608(v84, v83);
  v85 = sub_26C009A3C();
  v86 = sub_26C00A9FC();
  sub_26BE00258(v84, v83);
  v87 = v86;
  v88 = os_log_type_enabled(v85, v86);
  v148 = *(v0 + 1760);
  v151 = *(v0 + 1768);
  v154 = *(v0 + 1752);
  v181 = *(v0 + 1744);
  if (v88)
  {
    v89 = *(v0 + 1720);
    v115 = *(v0 + 1704);
    v116 = *(v0 + 1712);
    v113 = *(v0 + 1688);
    v114 = *(v0 + 1696);
    v141 = *(v0 + 1672);
    v90 = *(v0 + 1664);
    v91 = *(v0 + 1656);
    v123 = *(v0 + 1640);
    v125 = *(v0 + 1648);
    v118 = *(v0 + 1624);
    v119 = *(v0 + 1632);
    v132 = *(v0 + 1552);
    v135 = *(v0 + 1576);
    v129 = *(v0 + 1456);
    v130 = *(v0 + 1496);
    v138 = *(v0 + 1368);
    v127 = *(v0 + 1568);
    v128 = *(v0 + 1216);
    v121 = *(v0 + 1176);
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v182 = v93;
    *v92 = 136315138;
    v94 = sub_26C0090EC();
    v96 = sub_26BE29740(v94, v95, &v182);

    *(v92 + 4) = v96;
    _os_log_impl(&dword_26BDFE000, v85, v87, "encryptedGroupName: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    MEMORY[0x26D69A4E0](v93, -1, -1);
    MEMORY[0x26D69A4E0](v92, -1, -1);
    sub_26BE00258(v169, v166);
    sub_26BE00258(v163, v177);

    sub_26BE00258(v113, v114);
    sub_26BE00258(v115, v116);

    sub_26BE00258(v148, v151);
    sub_26BE00258(v181, v154);

    sub_26BE132D4(v118, v119);
    sub_26BE132D4(v123, v125);
    v97 = v121;
  }

  else
  {
    v98 = *(v0 + 1720);
    v99 = *(v0 + 1712);
    v100 = *(v0 + 1704);
    v101 = *(v0 + 1696);
    v102 = *(v0 + 1688);
    v141 = *(v0 + 1672);
    v103 = *(v0 + 1664);
    v122 = *(v0 + 1656);
    v124 = *(v0 + 1640);
    v104 = *(v0 + 1632);
    v105 = *(v0 + 1624);
    v126 = *(v0 + 1648);
    v127 = *(v0 + 1568);
    v132 = *(v0 + 1552);
    v135 = *(v0 + 1576);
    v129 = *(v0 + 1456);
    v130 = *(v0 + 1496);
    v138 = *(v0 + 1368);
    v128 = *(v0 + 1216);
    v120 = *(v0 + 1176);
    sub_26BE00258(v169, v166);
    sub_26BE00258(v163, v177);

    sub_26BE00258(v102, v101);
    sub_26BE00258(v100, v99);

    sub_26BE00258(v148, v151);
    sub_26BE00258(v181, v154);

    sub_26BE132D4(v105, v104);
    sub_26BE132D4(v124, v126);
    v97 = v120;
  }

  sub_26BF7F05C(v97, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v127, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v128, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v129, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
  v141(v132, v130);
  sub_26BF7F05C(v135, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v138, type metadata accessor for FileInfo);
  v106 = *(v0 + 1736);
  v107 = *(v0 + 1728);
  v108 = *(v0 + 1136);
  v109 = *(v0 + 560);
  v110 = *(v0 + 568);
  sub_26BE00608(v109, v110);
  sub_26BF26EB4(v0 + 560);
  *v108 = v109;
  *(v108 + 8) = v110;
  *&v111 = v172;
  *&v112 = v175;
  *(&v111 + 1) = v117;
  *(&v112 + 1) = v180;
  *(v108 + 16) = v111;
  *(v108 + 32) = v112;
  *(v108 + 48) = v160;
  *(v108 + 56) = v157;
  *(v108 + 64) = v107;
  *(v108 + 72) = v106;

  v47 = *(v0 + 8);
LABEL_9:

  return v47();
}

uint64_t sub_26BF6B834()
{
  v1 = v0[221];
  v2 = v0[220];
  v3 = v0[219];
  v4 = v0[218];
  v11 = v0[216];
  v12 = v0[217];
  v13 = v0[215];
  v5 = v0[214];
  v6 = v0[213];
  v22 = v0[209];
  v14 = v0[208];
  v15 = v0[207];
  v18 = v0[206];
  v16 = v0[205];
  v7 = v0[204];
  v8 = v0[203];
  v20 = v0[194];
  v21 = v0[197];
  v19 = v0[187];
  v17 = v0[182];
  v23 = v0[171];
  sub_26BE00258(v0[211], v0[212]);
  sub_26BE00258(v6, v5);

  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v11, v12);

  sub_26BE132D4(v8, v7);
  sub_26BE132D4(v16, v18);
  sub_26BF7F05C(v17, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
  v22(v20, v19);
  sub_26BF7F05C(v21, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v23, type metadata accessor for FileInfo);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26BF6BBE4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  *(v3 + 152) = *a2;
  return MEMORY[0x2822009F8](sub_26BF6BC0C, 0, 0);
}

uint64_t sub_26BF6BC0C()
{
  v18 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v17);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: decrypting name keys for group name change", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = v0[19];
  v11 = v0[20];

  sub_26BE00608(v10, v11);
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_26BF6BE34;
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];

  return sub_26BE9DF04((v0 + 2), v15, v15, v13, v14, 0, 0xF000000000000000);
}

uint64_t sub_26BF6BE34()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26BF6C15C;
  }

  else
  {
    v2 = sub_26BF6BF48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF6BF48()
{
  v1 = v0[18];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_26BF6C02C;
  v4 = v0[17];

  return sub_26BE1B6D0(v4, &unk_26C01FAB8, v2);
}

uint64_t sub_26BF6C02C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26BF6C1D8;
  }

  else
  {
    v2 = sub_26BF6C174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF6C174()
{
  sub_26BF26D4C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF6C1D8()
{
  sub_26BF26D4C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF6C23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[57] = a2;
  v3[58] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v3[59] = swift_task_alloc();
  v4 = sub_26C009C8C();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v5 = sub_26C00A4EC();
  v3[64] = v5;
  v3[65] = *(v5 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = type metadata accessor for MLS.GroupState(0);
  v3[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v6 = type metadata accessor for FileEncryptionInfo(0);
  v3[71] = v6;
  v3[72] = *(v6 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v7 = type metadata accessor for FileMetadata(0);
  v3[77] = v7;
  v3[78] = *(v7 - 8);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  sub_26C0098EC();
  v3[81] = swift_task_alloc();
  v3[82] = type metadata accessor for FileInfo(0);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF6C58C, 0, 0);
}

uint64_t sub_26BF6C58C()
{
  v78 = v0;
  v1 = *(v0 + 456);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  sub_26BF26CF0(v1, v0 + 16);
  if (*(v0 + 129) == 1)
  {
    sub_26BE2E258(v0 + 256, &qword_28045E698, &unk_26C0204F0);
    v5 = *(v0 + 96);
    *(v0 + 200) = *(v0 + 80);
    *(v0 + 216) = v5;
    *(v0 + 232) = *(v0 + 112);
    v6 = *(v0 + 32);
    *(v0 + 136) = *(v0 + 16);
    *(v0 + 152) = v6;
    v7 = *(v0 + 64);
    *(v0 + 168) = *(v0 + 48);
    *(v0 + 248) = *(v0 + 128);
    *(v0 + 184) = v7;
    sub_26BE2E1F0(v0 + 136, v0 + 256, &qword_28045E698, &unk_26C0204F0);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    sub_26BE00608(v3, v2);
    sub_26BF26FBC(v0 + 136);
LABEL_5:
    *(v0 + 688) = v2;
    *(v0 + 680) = v3;
    *(v0 + 384) = v3;
    *(v0 + 392) = v2;
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    sub_26BE00608(v3, v2);
    sub_26C0098DC();
    sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo, &unk_26C018140);
    sub_26C00999C();
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 672);
    v16 = *(v0 + 664);
    v17 = sub_26C009A5C();
    *(v0 + 696) = __swift_project_value_buffer(v17, qword_280478EE8);
    sub_26BF7F0BC(v15, v16, type metadata accessor for FileInfo);

    v18 = sub_26C009A3C();
    v19 = sub_26C00AA1C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 664);
    if (v20)
    {
      v74 = v19;
      log = v18;
      v22 = *(v0 + 656);
      v23 = *(v0 + 624);
      v24 = *(v0 + 616);
      v25 = *(v0 + 608);
      v26 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v76[0] = v73;
      *v26 = 136315394;

      v27 = sub_26BE3D034();
      v29 = v28;

      v30 = sub_26BE29740(v27, v29, v76);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = *(v21 + *(v22 + 20));
      v32 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
      swift_beginAccess();
      sub_26BE2E1F0(v31 + v32, v25, &qword_28045F080, &qword_26C0184C8);
      v33 = *(v23 + 48);
      v34 = v33(v25, 1, v24);
      v35 = *(v0 + 640);
      if (v34 == 1)
      {
        v36 = *(v0 + 616);
        v37 = *(v0 + 608);
        v38 = *(v0 + 576);
        v39 = *(v0 + 568);
        *v35 = 0;
        *(v35 + 1) = 0xE000000000000000;
        *(v35 + 2) = 0;
        *(v35 + 3) = 0xE000000000000000;
        sub_26C0098BC();
        (*(v38 + 56))(&v35[*(v36 + 28)], 1, 1, v39);
        if (v33(v37, 1, v36) != 1)
        {
          sub_26BE2E258(*(v0 + 608), &qword_28045F080, &qword_26C0184C8);
        }
      }

      else
      {
        sub_26BF7F124(*(v0 + 608), *(v0 + 640), type metadata accessor for FileMetadata);
      }

      v40 = *(v0 + 576);
      v41 = *(v0 + 568);
      v42 = *(v0 + 560);
      sub_26BE2E1F0(*(v0 + 640) + *(*(v0 + 616) + 28), v42, &qword_28045EF78, &unk_26C017EE0);
      v43 = *(v40 + 48);
      v44 = v43(v42, 1, v41);
      v45 = *(v0 + 640);
      v46 = *(v0 + 592);
      if (v44 == 1)
      {
        v47 = *(v0 + 568);
        v48 = *(v0 + 560);
        *v46 = xmmword_26C00BBD0;
        *(v46 + 16) = xmmword_26C00BBD0;
        *(v46 + 32) = xmmword_26C00BBD0;
        *(v46 + 48) = 0;
        *(v46 + 56) = 1;
        sub_26C0098BC();
        sub_26BF7F05C(v45, type metadata accessor for FileMetadata);
        if (v43(v48, 1, v47) != 1)
        {
          sub_26BE2E258(*(v0 + 560), &qword_28045EF78, &unk_26C017EE0);
        }
      }

      else
      {
        v49 = *(v0 + 560);
        sub_26BF7F05C(*(v0 + 640), type metadata accessor for FileMetadata);
        sub_26BF7F124(v49, v46, type metadata accessor for FileEncryptionInfo);
      }

      v50 = *(v0 + 664);
      v51 = *(v0 + 592);
      v52 = *(v51 + 32);
      v53 = *(v51 + 40);
      sub_26BE00608(v52, v53);
      sub_26BF7F05C(v51, type metadata accessor for FileEncryptionInfo);
      *(v0 + 448) = sub_26BF87240(v52, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      v54 = sub_26C00A3EC();
      v56 = v55;
      sub_26BE00258(v52, v53);

      v57 = sub_26BE411D0(16, v54, v56);
      v59 = v58;
      v61 = v60;
      v63 = v62;

      v64 = MEMORY[0x26D698FE0](v57, v59, v61, v63);
      v66 = v65;

      sub_26BF7F05C(v50, type metadata accessor for FileInfo);
      v67 = sub_26BE29740(v64, v66, v76);

      *(v26 + 14) = v67;
      _os_log_impl(&dword_26BDFE000, log, v74, "%s: decrypted fileInfo for group name change, with tag %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v73, -1, -1);
      MEMORY[0x26D69A4E0](v26, -1, -1);
    }

    else
    {

      sub_26BF7F05C(v21, type metadata accessor for FileInfo);
    }

    v68 = *(v0 + 464);
    v69 = *(v68 + 152);
    v70 = *(v68 + 24);
    *(v0 + 400) = v69;
    *(v0 + 408) = v70;
    v71 = swift_task_alloc();
    *(v0 + 704) = v71;
    *v71 = v0;
    v71[1] = sub_26BF6CF54;
    v72 = *(v0 + 544);

    return sub_26BF37CA4(v72, (v0 + 400), 0);
  }

  if (!*(v0 + 129))
  {
    sub_26BE2E258(v0 + 256, &qword_28045E698, &unk_26C0204F0);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v4;
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = *(v0 + 64);
    goto LABEL_5;
  }

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v8 = sub_26C009A5C();
  __swift_project_value_buffer(v8, qword_280478EE8);
  v9 = sub_26C009A3C();
  v10 = sub_26C00AA0C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26BDFE000, v9, v10, "received non-application message", v11, 2u);
    MEMORY[0x26D69A4E0](v11, -1, -1);
  }

  sub_26BE01654();
  swift_allocError();
  *v12 = 9;
  v12[112] = 9;
  swift_willThrow();
  sub_26BE2E258(v0 + 256, &qword_28045E698, &unk_26C0204F0);
  sub_26BF26D4C(v0 + 16);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26BF6CF54()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_26BF6DBE8;
  }

  else
  {
    v2 = sub_26BF6D068;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF6D068(uint64_t a1)
{
  v103 = v1;
  v2 = *(v1[68] + *(v1[67] + 40));
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      v16 = sub_26C009A3C();
      v17 = sub_26C00AA0C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_26BDFE000, v16, v17, "missing subject_commitment extension in GCE when decrypting name keys", v18, 2u);
        MEMORY[0x26D69A4E0](v18, -1, -1);
      }

      v19 = v1[86];
      v20 = v1[85];
      v21 = v1[84];
      v22 = v1[68];

      sub_26BE01654();
      swift_allocError();
      *v23 = 10;
      v23[112] = 9;
      swift_willThrow();
      sub_26BE00258(v20, v19);
      sub_26BE2E258((v1 + 32), &qword_28045E698, &unk_26C0204F0);
      v24 = v22;
      goto LABEL_9;
    }

    v5 = v3 + 12;
    v6 = *v3;
    v3 += 12;
  }

  while (v6 != -4090);
  v7 = v1[89];
  v8 = *(v5 - 2);
  v1[90] = v8;
  v9 = *(v5 - 1);
  v1[91] = v9;
  LOWORD(v98) = -4090;
  v99 = v8;
  v100 = v9;
  sub_26BE00608(v8, v9);
  sub_26BFDB8C0(&v98);
  v1[92] = v10;
  v1[93] = v11;
  if (v7)
  {
    v12 = v1[86];
    v13 = v1[85];
    v14 = v1[84];
    v15 = v1[68];
    sub_26BE2E258((v1 + 32), &qword_28045E698, &unk_26C0204F0);
    sub_26BE00258(v13, v12);
    sub_26BF7F05C(v15, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v14, type metadata accessor for FileInfo);
    sub_26BE00258(v8, v9);
LABEL_10:

    v25 = v1[1];

    return v25();
  }

  v86 = v9;
  v95 = v10;
  v96 = v11;
  v27 = v1[66];
  v28 = v1[65];
  v29 = v1[64];
  v30 = v1[58];
  v31 = *(v30 + 72);
  v91 = *(v30 + 88);
  v93 = *(v30 + 80);
  v88 = *(v30 + 104);
  v89 = *(v30 + 96);
  sub_26C00A4CC();
  v32 = sub_26C00A49C();
  v34 = v33;
  result = (*(v28 + 8))(v27, v29);
  if (v34 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v35 = v1[78];
  v36 = v1[77];
  v37 = v1[75];
  v38 = *(v1[84] + *(v1[82] + 20));
  v39 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  sub_26BE2E1F0(v38 + v39, v37, &qword_28045F080, &qword_26C0184C8);
  v40 = *(v35 + 48);
  v41 = v40(v37, 1, v36);
  v42 = v1[79];
  v85 = v8;
  v87 = v31;
  if (v41 == 1)
  {
    v43 = v1[77];
    v44 = v1[75];
    v45 = v1[72];
    v46 = v1[71];
    *v42 = 0;
    *(v42 + 1) = 0xE000000000000000;
    *(v42 + 2) = 0;
    *(v42 + 3) = 0xE000000000000000;
    sub_26C0098BC();
    (*(v45 + 56))(&v42[*(v43 + 28)], 1, 1, v46);
    if (v40(v44, 1, v43) != 1)
    {
      sub_26BE2E258(v1[75], &qword_28045F080, &qword_26C0184C8);
    }
  }

  else
  {
    sub_26BF7F124(v1[75], v42, type metadata accessor for FileMetadata);
  }

  v47 = v1[72];
  v48 = v1[71];
  v49 = v1[69];
  sub_26BE2E1F0(v1[79] + *(v1[77] + 28), v49, &qword_28045EF78, &unk_26C017EE0);
  v50 = *(v47 + 48);
  v51 = v50(v49, 1, v48);
  v52 = v1[79];
  v53 = v1[73];
  if (v51 == 1)
  {
    v54 = v1[71];
    v55 = v1[69];
    *v53 = xmmword_26C00BBD0;
    *(v53 + 16) = xmmword_26C00BBD0;
    *(v53 + 32) = xmmword_26C00BBD0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 1;
    sub_26C0098BC();
    sub_26BF7F05C(v52, type metadata accessor for FileMetadata);
    if (v50(v55, 1, v54) != 1)
    {
      sub_26BE2E258(v1[69], &qword_28045EF78, &unk_26C017EE0);
    }
  }

  else
  {
    v56 = v1[69];
    sub_26BF7F05C(v1[79], type metadata accessor for FileMetadata);
    sub_26BF7F124(v56, v53, type metadata accessor for FileEncryptionInfo);
  }

  v57 = v1[73];
  v59 = *v57;
  v58 = v57[1];
  sub_26BE00608(*v57, v58);
  sub_26BF7F05C(v57, type metadata accessor for FileEncryptionInfo);
  LOBYTE(v98) = v87;
  v99 = v93;
  v100 = v91;
  v101 = v89;
  v102 = v88;
  sub_26BE00608(v95, v96);
  v60 = sub_26BFA61F0(&v98, v32, v34, v59, v58);
  v62 = v61;
  v63 = v1[63];
  v90 = v1[62];
  v94 = v1[61];
  v97 = v1[60];
  v1[52] = v95;
  v1[53] = v96;
  sub_26BE00608(v95, v96);
  sub_26C009C5C();
  v1[54] = v60;
  v1[55] = v62;
  sub_26BE00608(v60, v62);
  sub_26C009C5C();
  v92 = MEMORY[0x26D698700](v63, v90);
  sub_26BE00258(v95, v96);
  sub_26BE00258(v59, v58);
  sub_26BE132D4(v32, v34);
  sub_26BE00258(v60, v62);
  v64 = *(v94 + 8);
  v64(v90, v97);
  v64(v63, v97);
  if ((v92 & 1) == 0)
  {
    v71 = sub_26C009A3C();
    v72 = sub_26C00AA0C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26BDFE000, v71, v72, "key does not match commitment when decrypting name keys", v73, 2u);
      MEMORY[0x26D69A4E0](v73, -1, -1);
    }

    sub_26BE00608(v95, v96);
    v74 = sub_26C009A3C();
    v75 = sub_26C00AA0C();
    sub_26BE00258(v95, v96);
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v98 = v77;
      *v76 = 136315138;
      v78 = sub_26C0090EC();
      v80 = sub_26BE29740(v78, v79, &v98);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_26BDFE000, v74, v75, "commitment: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x26D69A4E0](v77, -1, -1);
      MEMORY[0x26D69A4E0](v76, -1, -1);
    }

    v81 = v1[86];
    v82 = v1[85];
    v21 = v1[84];
    v83 = v1[68];
    sub_26BE01654();
    swift_allocError();
    *v84 = 11;
    v84[112] = 9;
    swift_willThrow();
    sub_26BE00258(v85, v86);
    sub_26BE00258(v95, v96);
    sub_26BE00258(v82, v81);
    sub_26BE2E258((v1 + 32), &qword_28045E698, &unk_26C0204F0);
    v24 = v83;
LABEL_9:
    sub_26BF7F05C(v24, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v21, type metadata accessor for FileInfo);
    goto LABEL_10;
  }

  v66 = v1[58];
  v65 = v1[59];
  sub_26BF7F0BC(v1[84], v65, type metadata accessor for FileInfo);
  v67 = type metadata accessor for FileInfoAndSender(0);
  sub_26BE2E1F0((v1 + 32), v65 + *(v67 + 20), &qword_28045E698, &unk_26C0204F0);
  (*(*(v67 - 8) + 56))(v65, 0, 1, v67);
  v68 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE7170C(v65, v66 + v68, &qword_28045FA38, &qword_26C01D890);
  swift_endAccess();
  v69 = swift_task_alloc();
  v1[94] = v69;
  *v69 = v1;
  v69[1] = sub_26BF6DD74;
  v70 = MEMORY[0x277D84F90];

  return sub_26BF394D4(v70);
}

uint64_t sub_26BF6DBE8()
{
  v1 = v0[84];
  sub_26BE00258(v0[85], v0[86]);
  sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
  sub_26BF7F05C(v1, type metadata accessor for FileInfo);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF6DD74()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_26BF6E05C;
  }

  else
  {
    v2 = sub_26BF6DE88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF6DE88()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[68];
  sub_26BE00258(v0[90], v0[91]);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
  sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v5, type metadata accessor for FileInfo);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF6E05C()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[68];
  sub_26BE00258(v0[90], v0[91]);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE2E258((v0 + 32), &qword_28045E698, &unk_26C0204F0);
  sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v5, type metadata accessor for FileInfo);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF6E230(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_26BF6E258, 0, 0);
}

uint64_t sub_26BF6E258()
{
  v1 = v0[4];
  v2 = v0[5];

  sub_26BE00608(v1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_26BE23BEC;
  v4 = v0[2];

  return (sub_26BEA3534)(v4);
}

uint64_t sub_26BF6E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[25] = a1;
  v4[26] = a2;
  sub_26C009C8C();
  v4[29] = swift_task_alloc();
  type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption(0);
  v4[30] = swift_task_alloc();
  v5 = sub_26C00A4EC();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  v4[35] = swift_task_alloc();
  v6 = type metadata accessor for FileMetadata(0);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v7 = type metadata accessor for FileEncryptionInfo(0);
  v4[39] = v7;
  v4[40] = *(v7 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v4[43] = swift_task_alloc();
  v8 = type metadata accessor for FileInfoAndSender(0);
  v4[44] = v8;
  v4[45] = *(v8 - 8);
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF6E608, 0, 0);
}

uint64_t sub_26BF6E608()
{
  v143 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 208);
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE2E1F0(v4 + v5, v3, &qword_28045FA38, &qword_26C01D890);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 352);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    sub_26BF7F124(*(v0 + 344), v7, type metadata accessor for FileInfoAndSender);
    sub_26BE2E1F0(v7 + *(v8 + 20), v0 + 16, &qword_28045E698, &unk_26C0204F0);
    v12 = *(v7 + *(type metadata accessor for FileInfo(0) + 20));
    v13 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
    swift_beginAccess();
    sub_26BE2E1F0(v12 + v13, v11, &qword_28045F080, &qword_26C0184C8);
    v14 = *(v10 + 48);
    if (v14(v11, 1, v9) == 1)
    {
      v15 = *(v0 + 312);
      v16 = *(v0 + 320);
      v17 = *(v0 + 304);
      v19 = *(v0 + 280);
      v18 = *(v0 + 288);
      *v17 = 0;
      *(v17 + 1) = 0xE000000000000000;
      *(v17 + 2) = 0;
      *(v17 + 3) = 0xE000000000000000;
      sub_26C0098BC();
      (*(v16 + 56))(&v17[*(v18 + 28)], 1, 1, v15);
      if (v14(v19, 1, v18) != 1)
      {
        sub_26BE2E258(*(v0 + 280), &qword_28045F080, &qword_26C0184C8);
      }
    }

    else
    {
      sub_26BF7F124(*(v0 + 280), *(v0 + 304), type metadata accessor for FileMetadata);
    }

    v20 = *(v0 + 312);
    v21 = *(v0 + 320);
    v22 = *(v0 + 272);
    sub_26BE2E1F0(*(v0 + 304) + *(*(v0 + 288) + 28), v22, &qword_28045EF78, &unk_26C017EE0);
    v23 = *(v21 + 48);
    v24 = v23(v22, 1, v20);
    v25 = *(v0 + 336);
    if (v24 == 1)
    {
      v27 = *(v0 + 304);
      v26 = *(v0 + 312);
      v28 = *(v0 + 272);
      *v25 = xmmword_26C00BBD0;
      *(v25 + 16) = xmmword_26C00BBD0;
      *(v25 + 32) = xmmword_26C00BBD0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 1;
      sub_26C0098BC();
      sub_26BF7F05C(v27, type metadata accessor for FileMetadata);
      if (v23(v28, 1, v26) != 1)
      {
        sub_26BE2E258(*(v0 + 272), &qword_28045EF78, &unk_26C017EE0);
      }
    }

    else
    {
      v29 = *(v0 + 272);
      sub_26BF7F05C(*(v0 + 304), type metadata accessor for FileMetadata);
      sub_26BF7F124(v29, v25, type metadata accessor for FileEncryptionInfo);
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 328);
    v31 = *(v0 + 336);
    v32 = sub_26C009A5C();
    __swift_project_value_buffer(v32, qword_280478EE8);
    sub_26BF7F0BC(v31, v30, type metadata accessor for FileEncryptionInfo);

    v33 = sub_26C009A3C();
    v34 = sub_26C00AA1C();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 328);
    if (v35)
    {
      v139 = v34;
      v37 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *&v141 = v137;
      *v37 = 136315394;

      v38 = sub_26BE3D034();
      v40 = v39;

      v41 = sub_26BE29740(v38, v40, &v141);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v0 + 192) = sub_26BF87240(*(v36 + 32), *(v36 + 40));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      v42 = sub_26C00A3EC();
      v44 = v43;

      v45 = sub_26BE411D0(16, v42, v44);
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v52 = MEMORY[0x26D698FE0](v45, v47, v49, v51);
      v54 = v53;

      sub_26BF7F05C(v36, type metadata accessor for FileEncryptionInfo);
      v55 = sub_26BE29740(v52, v54, &v141);

      *(v37 + 14) = v55;
      _os_log_impl(&dword_26BDFE000, v33, v139, "%s: decrypting group name, with FileInfo with tag %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v137, -1, -1);
      MEMORY[0x26D69A4E0](v37, -1, -1);
    }

    else
    {

      sub_26BF7F05C(v36, type metadata accessor for FileEncryptionInfo);
    }

    v57 = *(v0 + 256);
    v56 = *(v0 + 264);
    v58 = *(v0 + 248);
    sub_26C00A4CC();
    v59 = sub_26C00A49C();
    v61 = v60;
    result = (*(v57 + 8))(v56, v58);
    if (v61 >> 60 != 15)
    {
      v63 = *(v0 + 224);
      v64 = v63 >> 62;
      v138 = v59;
      v140 = v61;
      if ((v63 >> 62) > 1)
      {
        if (v64 != 2)
        {
          v65 = 0;
          goto LABEL_27;
        }

        v66 = *(v0 + 216);
        v68 = *(v66 + 16);
        v67 = *(v66 + 24);
        v69 = __OFSUB__(v67, v68);
        v70 = v67 - v68;
        if (!v69)
        {
          v136 = v70;
          v71 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
          v72 = objc_allocWithZone(v71);
          v73 = &v72[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
          *v73 = v66;
          v73[1] = v63;
          v74 = *(v66 + 16);
LABEL_25:
          sub_26BE00608(v66, v63);
          sub_26BE00608(v66, v63);
LABEL_28:
          v78 = *(v0 + 336);
          v79 = *(v0 + 232);
          v135 = *(v0 + 240);
          v80 = *(v0 + 216);
          v81 = *(v0 + 224);
          *&v72[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos] = v74;
          v82 = sub_26C0090DC();
          *(v0 + 152) = v72;
          *(v0 + 160) = v71;
          v83 = objc_msgSendSuper2((v0 + 152), sel_initWithData_, v82);
          sub_26BE00258(v80, v81);

          [v83 open];
          v84 = [objc_allocWithZone(MEMORY[0x277CBEB78]) initToMemory];
          [v84 open];
          v85 = *v78;
          v86 = v78[1];
          *(v0 + 168) = *v78;
          *(v0 + 176) = v86;
          sub_26BE00608(v85, v86);
          sub_26C009C5C();
          v87 = v78[2];
          v88 = v78[3];
          v90 = v78[4];
          v89 = v78[5];
          sub_26BE00608(v87, v88);
          sub_26BE00608(v90, v89);
          v91 = v83;
          v92 = v84;
          sub_26BE2BAE8(v138, v140);
          LOBYTE(v141) = 1;
          v93 = v79;
          v94 = v91;
          v95 = v90;
          v96 = v92;
          sub_26BF9F87C(v93, v87, v88, v95, v89, v91, v136, v92, v135, v138, v140, 0, 1, 10240);
          RCSFileAttachmentCrypto.RCSFileDecryption.decryptCiphertext()();
          if (v98)
          {
            v99 = v96;
            v100 = v98;
            v101 = sub_26C009A3C();
            v102 = sub_26C00AA0C();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              *v103 = 138412290;
              v105 = v98;
              v106 = _swift_stdlib_bridgeErrorToNSError();
              *(v103 + 4) = v106;
              *v104 = v106;
              _os_log_impl(&dword_26BDFE000, v101, v102, "decryption of a group name failed with error %@, may need to retry", v103, 0xCu);
              sub_26BE2E258(v104, &qword_28045FB40, &unk_26C021280);
              MEMORY[0x26D69A4E0](v104, -1, -1);
              MEMORY[0x26D69A4E0](v103, -1, -1);
            }

            goto LABEL_35;
          }

          if ([v96 propertyForKey_])
          {
            sub_26C00AB0C();
            swift_unknownObjectRelease();
          }

          else
          {
            v141 = 0u;
            v142 = 0u;
          }

          v111 = v141;
          *(v0 + 88) = v142;
          *(v0 + 72) = v111;
          if (*(v0 + 96))
          {
            sub_26BE1335C();
            if (swift_dynamicCast())
            {
              v98 = *(v0 + 184);
              v112 = sub_26C00910C();
              v114 = v113;

              sub_26C00A4CC();
              v115 = sub_26C00A4AC();
              v117 = v116;
              sub_26BE00258(v112, v114);
              if (v117)
              {
                v118 = *(v0 + 368);
                v119 = *(v0 + 336);
                v120 = v96;
                v121 = *(v0 + 240);
                v122 = *(v0 + 200);

                sub_26BE132D4(v138, v140);
                sub_26BF7F05C(v121, type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption);
                sub_26BF7F05C(v119, type metadata accessor for FileEncryptionInfo);
                sub_26BF7F05C(v118, type metadata accessor for FileInfoAndSender);
                v124 = *(v0 + 32);
                v123 = *(v0 + 48);
                v125 = *(v0 + 16);
                *(v122 + 64) = *(v0 + 64);
                *(v122 + 32) = v124;
                *(v122 + 48) = v123;
                *(v122 + 16) = v125;
                *v122 = v115;
                *(v122 + 8) = v117;
                goto LABEL_47;
              }

              v99 = v96;
              v101 = sub_26C009A3C();
              v133 = sub_26C00AA0C();
              if (os_log_type_enabled(v101, v133))
              {
                v134 = swift_slowAlloc();
                *v134 = 0;
                _os_log_impl(&dword_26BDFE000, v101, v133, "Failed to UTF8 decode the group name", v134, 2u);
                MEMORY[0x26D69A4E0](v134, -1, -1);
              }

LABEL_35:
              v107 = *(v0 + 368);
              v108 = *(v0 + 336);
              v109 = *(v0 + 240);
              v110 = *(v0 + 200);

              sub_26BE132D4(v138, v140);
              sub_26BF7F05C(v109, type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption);
              sub_26BF7F05C(v108, type metadata accessor for FileEncryptionInfo);
              sub_26BE2E258(v0 + 16, &qword_28045E698, &unk_26C0204F0);
              sub_26BF7F05C(v107, type metadata accessor for FileInfoAndSender);
              *v110 = 0u;
              *(v110 + 16) = 0u;
              *(v110 + 32) = 0u;
              *(v110 + 48) = 0u;
              *(v110 + 64) = 0;
LABEL_47:

              v97 = *(v0 + 8);
              goto LABEL_29;
            }
          }

          else
          {
            sub_26BE2E258(v0 + 72, &qword_28045FB48, &qword_26C01FCF8);
          }

          v126 = sub_26C009A3C();
          v127 = sub_26C00AA0C();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            *v128 = 0;
            _os_log_impl(&dword_26BDFE000, v126, v127, "Failed to retrieve the plaintext from an output stream for file attachment decryption", v128, 2u);
            MEMORY[0x26D69A4E0](v128, -1, -1);
          }

          v129 = *(v0 + 368);
          v130 = *(v0 + 336);
          v131 = *(v0 + 240);
          v132 = *(v0 + 200);

          sub_26BE132D4(v138, v140);
          sub_26BF7F05C(v131, type metadata accessor for RCSFileAttachmentCrypto.RCSFileDecryption);
          sub_26BF7F05C(v130, type metadata accessor for FileEncryptionInfo);
          sub_26BE2E258(v0 + 16, &qword_28045E698, &unk_26C0204F0);
          sub_26BF7F05C(v129, type metadata accessor for FileInfoAndSender);
          *v132 = 0u;
          *(v132 + 16) = 0u;
          *(v132 + 32) = 0u;
          *(v132 + 48) = 0u;
          *(v132 + 64) = 0;
          goto LABEL_47;
        }

        __break(1u);
      }

      else
      {
        if (!v64)
        {
          v65 = BYTE6(v63);
LABEL_27:
          v136 = v65;
          v76 = *(v0 + 216);
          v71 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
          v72 = objc_allocWithZone(v71);
          v74 = 0;
          v77 = &v72[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
          *v77 = v76;
          *(v77 + 1) = v63;
          goto LABEL_28;
        }

        v66 = *(v0 + 216);
        if (!__OFSUB__(HIDWORD(v66), v66))
        {
          v136 = HIDWORD(v66) - v66;
          v71 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
          v72 = objc_allocWithZone(v71);
          v75 = &v72[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
          *v75 = v66;
          v75[1] = v63;
          v74 = v66;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_26BE2E258(*(v0 + 344), &qword_28045FA38, &qword_26C01D890);
  sub_26BE01654();
  swift_allocError();
  *v6 = 8;
  v6[112] = 9;
  swift_willThrow();

  v97 = *(v0 + 8);
LABEL_29:

  return v97();
}

uint64_t sub_26BF6F524(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_26BF6F54C, 0, 0);
}

uint64_t sub_26BF6F54C()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F19C;
  v2 = *(v0 + 16);

  return (sub_26BEA4A6C)(v2);
}

uint64_t sub_26BF6F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[311] = a3;
  v3[310] = a2;
  v3[309] = a1;
  v3[312] = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[313] = swift_task_alloc();
  v3[314] = type metadata accessor for MLS.GroupState(0);
  v3[315] = swift_task_alloc();
  v3[316] = swift_task_alloc();
  v3[317] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF6F6F8, 0, 0);
}

uint64_t sub_26BF6F6F8()
{
  v115 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 2488);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v113[0] = v7;
    *v6 = 136315394;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v113);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    v12 = *(v5 + 16);

    *(v6 + 14) = v12;

    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: creating new era, with %ld input key packages", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = *(*(v0 + 2480) + 48);
  result = swift_beginAccess();
  if (*(v13 + 312) == 1)
  {
    v15 = *(v0 + 2480);
    v16 = *(v15 + 152);
    v17 = (v16 + 1);
    if (v16 == -1)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v113[0]) = 0;
      v112 = sub_26BE1CB94(v17);
      swift_retain_n();
      v18 = sub_26C009A3C();
      v19 = sub_26C00AA1C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v113[0] = v110;
        *v20 = 136315650;

        v21 = sub_26BE3D034();
        v23 = v22;

        v24 = sub_26BE29740(v21, v23, v113);

        *(v20 + 4) = v24;
        *(v20 + 12) = 1024;
        v25 = *(v15 + 152);

        *(v20 + 14) = v25;

        *(v20 + 18) = 1024;
        *(v20 + 20) = v17;
        _os_log_impl(&dword_26BDFE000, v18, v19, "%s: moving from era %u to era %u", v20, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v110);
        MEMORY[0x26D69A4E0](v110, -1, -1);
        MEMORY[0x26D69A4E0](v20, -1, -1);
      }

      else
      {
      }

      v31 = *(v0 + 2480);
      v32 = *(v31 + 32);
      v33 = *(v31 + 40);
      v34 = *(v31 + 72);
      if (v34)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v111 = v35;
      v36 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
      swift_beginAccess();
      sub_26BE038A8(v13 + v36, v0 + 2344);
      v38 = *(v31 + 64);
      v113[0] = *(v31 + 56);
      v37 = v113[0];
      v113[1] = v38;
      sub_26BE00608(v32, v33);
      sub_26BE04890(v37, v38);
      v109 = v32;
      v39 = MLS.Identity.Credential.serializedRepresentation.getter();
      v41 = v40;
      sub_26BE0489C(v37, v38);
      MLS.Credential.init(rawValue:)(v39, v41, (v0 + 2456));
      v42 = *(v0 + 2456);
      v43 = *(v0 + 2464);
      v114 = v34;

      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      sub_26BE295A0(v13 + 40, v0 + 16);

      sub_26BE1118C((v0 + 2264));
      v97 = v33;
      sub_26BE29710(v0 + 16);

      sub_26BE03890((v0 + 2264), v0 + 2304);
      sub_26BE038A8(v0 + 2304, v0 + 2224);
      sub_26BE038A8(v0 + 2344, v0 + 2104);
      v104 = *(v13 + 336);
      v105 = *(v13 + 344);
      v106 = *(v13 + 352);
      v107 = *(v13 + 360);
      v108 = *(v13 + 368);
      v44 = *(v0 + 2248);
      v103 = v43;
      v45 = *(v0 + 2256);
      __swift_project_boxed_opaque_existential_1((v0 + 2224), v44);
      v46 = *(v45 + 8);
      v102 = v42;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v98 = *(AssociatedTypeWitness - 8);
      v48 = swift_task_alloc();
      v95 = *(v46 + 32);

      v95(v44, v46);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v96 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v101 = v50;
      (*(v98 + 8))(v48, AssociatedTypeWitness);
      v51 = *(v0 + 2128);
      v52 = *(v0 + 2136);
      __swift_project_boxed_opaque_existential_1((v0 + 2104), v51);
      v53 = swift_getAssociatedTypeWitness();
      v54 = *(v53 - 8);
      v55 = swift_task_alloc();
      (*(v52 + 40))(v51, v52);
      v56 = swift_getAssociatedConformanceWitness();
      v57 = (*(*(v56 + 8) + 16))(v53);
      v59 = v58;
      (*(v54 + 8))(v55, v53);

      *(v0 + 928) = v96;
      *(v0 + 936) = v101;
      v99 = v57;
      v100 = v59;
      *(v0 + 944) = v57;
      *(v0 + 952) = v59;
      *(v0 + 960) = v102;
      *(v0 + 968) = v103;
      *(v0 + 976) = v104;
      *(v0 + 984) = v105;
      *(v0 + 992) = v106;
      *(v0 + 1000) = v107;
      *(v0 + 1008) = v108;
      *(v0 + 1016) = 0;
      *(v0 + 1024) = -1;
      *(v0 + 1032) = 0;
      *(v0 + 1033) = *(v0 + 371);
      *(v0 + 1036) = *(v0 + 374);
      *(v0 + 1040) = MEMORY[0x277D84F90];
      *(v0 + 1048) = 0;
      *(v0 + 1056) = 0xC000000000000000;
      v60 = *(v0 + 928);
      v61 = *(v0 + 944);
      v62 = *(v0 + 976);
      *(v0 + 1504) = *(v0 + 960);
      *(v0 + 1520) = v62;
      *(v0 + 1472) = v60;
      *(v0 + 1488) = v61;
      v63 = *(v0 + 992);
      v64 = *(v0 + 1008);
      v65 = *(v0 + 1024);
      v66 = *(v0 + 1040);
      *(v0 + 1600) = *(v0 + 1056);
      *(v0 + 1568) = v65;
      *(v0 + 1584) = v66;
      *(v0 + 1536) = v63;
      *(v0 + 1552) = v64;
      *(v0 + 2432) = xmmword_26C00DA60;
      *(v0 + 2448) = 0;
      sub_26BE00758(v0 + 928, v0 + 1744);
      v67 = sub_26BE5B600(v0 + 2432);
      v69 = v68;
      v70 = *(v0 + 1584);
      *(v0 + 1432) = *(v0 + 1568);
      *(v0 + 1448) = v70;
      *(v0 + 1464) = *(v0 + 1600);
      v71 = *(v0 + 1520);
      *(v0 + 1368) = *(v0 + 1504);
      *(v0 + 1384) = v71;
      v72 = *(v0 + 1552);
      *(v0 + 1400) = *(v0 + 1536);
      *(v0 + 1416) = v72;
      v73 = *(v0 + 1488);
      *(v0 + 1336) = *(v0 + 1472);
      *(v0 + 1352) = v73;
      sub_26BE00854(v0 + 1336);
      v74 = *(v0 + 2128);
      v75 = *(v0 + 2136);
      __swift_project_boxed_opaque_existential_1((v0 + 2104), v74);
      v76 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v67, v69, v74, v75);
      v94 = *(v0 + 2520);
      v77 = v76;
      v78 = v69;
      v80 = v79;
      sub_26BE00258(v67, v78);
      sub_26BE00258(0, 0xC000000000000000);
      *(v0 + 378) = v111;
      sub_26BE038A8(v0 + 2224, v0 + 2144);
      sub_26BE038A8(v0 + 2104, v0 + 2184);
      *(v0 + 1200) = v96;
      *(v0 + 1208) = v101;
      *(v0 + 1216) = v99;
      *(v0 + 1224) = v100;
      *(v0 + 1232) = v102;
      *(v0 + 1240) = v103;
      *(v0 + 1248) = v104;
      *(v0 + 1256) = v105;
      *(v0 + 1264) = v106;
      *(v0 + 1272) = v107;
      *(v0 + 1280) = v108;
      *(v0 + 1288) = 0;
      *(v0 + 1296) = -1;
      *(v0 + 1304) = 0;
      *(v0 + 1305) = *(v0 + 371);
      *(v0 + 1308) = *(v0 + 374);
      *(v0 + 1312) = MEMORY[0x277D84F90];
      *(v0 + 1320) = v77;
      *(v0 + 1328) = v80;
      v81 = *(v0 + 1248);
      *(v0 + 1096) = *(v0 + 1232);
      *(v0 + 1112) = v81;
      v82 = *(v0 + 1216);
      *(v0 + 1064) = *(v0 + 1200);
      *(v0 + 1080) = v82;
      v83 = *(v0 + 1264);
      v84 = *(v0 + 1280);
      v85 = *(v0 + 1296);
      v86 = *(v0 + 1312);
      *(v0 + 1192) = *(v0 + 1328);
      *(v0 + 1160) = v85;
      *(v0 + 1176) = v86;
      *(v0 + 1128) = v83;
      *(v0 + 1144) = v84;
      sub_26BE00758(v0 + 1200, v0 + 792);
      sub_26BFEF948(v109, v97, (v0 + 378), (v0 + 2144), (v0 + 2184), v0 + 1064, v112, v94);
      v87 = *(v0 + 2536);
      v88 = *(v0 + 2528);
      v89 = *(v0 + 2520);
      v90 = *(v0 + 2512);

      __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
      __swift_destroy_boxed_opaque_existential_1((v0 + 2304));
      *(v0 + 520) = v96;
      *(v0 + 528) = v101;
      *(v0 + 536) = v99;
      *(v0 + 544) = v100;
      *(v0 + 552) = v102;
      *(v0 + 560) = v103;
      *(v0 + 568) = v104;
      *(v0 + 576) = v105;
      *(v0 + 584) = v106;
      *(v0 + 592) = v107;
      *(v0 + 600) = v108;
      *(v0 + 608) = xmmword_26C015F70;
      *(v0 + 624) = 0;
      *(v0 + 625) = *(v0 + 371);
      *(v0 + 628) = *(v0 + 374);
      *(v0 + 632) = MEMORY[0x277D84F90];
      *(v0 + 640) = v77;
      *(v0 + 648) = v80;
      sub_26BE00854(v0 + 520);
      sub_26BF7F124(v89, v88, type metadata accessor for MLS.GroupState);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2104));
      __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
      sub_26BF7F124(v88, v87, type metadata accessor for MLS.GroupState);
      v91 = *(v90 + 76);

      *(v87 + v91) = v13;
      v92 = swift_task_alloc();
      *(v0 + 2544) = v92;
      *v92 = v0;
      v92[1] = sub_26BF70604;
      v93 = *(v0 + 2488);

      return sub_26BE30F1C(v93);
    }
  }

  else
  {
    v26 = sub_26C009A3C();
    v27 = sub_26C00AA0C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26BDFE000, v26, v27, "eras not in configuration", v28, 2u);
      MEMORY[0x26D69A4E0](v28, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v29 = 41;
    v29[112] = 0;
    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }

  return result;
}

uint64_t sub_26BF70604()
{
  *(*v1 + 2552) = v0;

  if (v0)
  {
    v2 = sub_26BF70BF8;
  }

  else
  {
    v2 = sub_26BF70718;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF70718()
{
  v1 = *(v0 + 2552);
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2488);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_26BE5D390(sub_26BF7F20C, v4, v3);
  *(v0 + 2560) = v5;
  if (v1)
  {
    v6 = *(v0 + 2536);

    sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = v5;
    v10 = *(v0 + 2504);
    v11 = *(v0 + 2496);

    *(v0 + 2096) = 0;
    *(v0 + 2080) = 0u;
    *(v0 + 2064) = 0u;
    *(v0 + 1896) = 0u;
    *(v0 + 1912) = 0u;
    *(v0 + 1928) = 0u;
    *(v0 + 1944) = 0u;
    *(v0 + 1960) = 0u;
    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 1880) = 0;
    *(v0 + 1888) = 0x3000000000000000;
    sub_26BE7170C(v0 + 2064, v0 + 1896, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE701EC(*(v0 + 1936), *(v0 + 1944), *(v0 + 1952), *(v0 + 1960), *(v0 + 1968));
    *(v0 + 1968) = 0u;
    *(v0 + 1952) = 0u;
    *(v0 + 1936) = 0u;
    v12 = v11[5];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v13 - 8) + 56))(&v10[v12], 1, 3, v13);
    *v10 = 0;
    v10[v11[6]] = 0;
    v10[v11[7]] = 0;
    v10[v11[8]] = 0;
    *&v10[v11[9]] = MEMORY[0x277D84F90];
    v14 = swift_task_alloc();
    *(v0 + 2568) = v14;
    *v14 = v0;
    v14[1] = sub_26BF709B0;
    v15 = *(v0 + 2536);
    v16 = *(v0 + 2504);

    return sub_26BF54A88(v0 + 1984, v15, v9, v0 + 1880, v16);
  }
}

uint64_t sub_26BF709B0()
{
  v2 = *v1;
  *(v2 + 2576) = v0;

  sub_26BF7F05C(*(v2 + 2504), type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8(v2 + 1880);
  if (v0)
  {
    v3 = sub_26BF70CA4;
  }

  else
  {
    v3 = sub_26BF70B24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF70B24()
{
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2472);
  v3 = *(v0 + 2016);
  v4 = *(v0 + 2048);
  v5 = *(v0 + 2000);
  v2[3] = *(v0 + 2032);
  v2[4] = v4;
  v2[1] = v5;
  v2[2] = v3;
  *v2 = *(v0 + 1984);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BF70BF8()
{
  sub_26BF7F05C(*(v0 + 2536), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF70CA4()
{
  sub_26BF7F05C(*(v0 + 2536), type metadata accessor for MLS.GroupState);

  v1 = *(v0 + 8);

  return v1();
}

double sub_26BF70D50@<D0>(__int128 *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v24 = *a1;
  MLS.Client.KeyPackage.asKeyPackage()(v25);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v20 = v25[8];
    v21 = v25[9];
    v22 = v25[10];
    v23 = v26;
    v16 = v25[4];
    v17 = v25[5];
    v18 = v25[6];
    v19 = v25[7];
    v12 = v25[0];
    v13 = v25[1];
    v14 = v25[2];
    v15 = v25[3];
    sub_26BE7FED4(&v12);
    v7 = v21;
    *(a3 + 128) = v20;
    *(a3 + 144) = v7;
    *(a3 + 160) = v22;
    *(a3 + 176) = v23;
    v8 = v17;
    *(a3 + 64) = v16;
    *(a3 + 80) = v8;
    v9 = v19;
    *(a3 + 96) = v18;
    *(a3 + 112) = v9;
    v10 = v13;
    *a3 = v12;
    *(a3 + 16) = v10;
    result = *&v14;
    v11 = v15;
    *(a3 + 32) = v14;
    *(a3 + 48) = v11;
  }

  return result;
}

uint64_t sub_26BF70E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 104) = a2;
  *(v4 + 112) = a4;
  v5 = type metadata accessor for MLS.GroupState(0);
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF70EF0, 0, 0);
}

uint64_t sub_26BF70EF0()
{
  v44 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280478EE8);
  swift_retain_n();
  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 184);
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43[0] = v7;
    *v6 = 136315650;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v43);

    *(v6 + 4) = v11;
    *(v6 + 12) = 1024;
    LODWORD(v10) = *(v5 + 152);

    *(v6 + 14) = v10;

    *(v6 + 18) = 1024;
    *(v6 + 20) = v4;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: advancing era from %u to %u", v6, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 120);
  v13 = *(*(v0 + 112) + *(v12 + 40));
  v14 = sub_26BE81FE0(v13);
  if ((v14 & 0x100000000) != 0)
  {
    v14 = sub_26BE4126C();
  }

  if (v14 == *(v0 + 184))
  {
    v15 = *(*(v0 + 112) + 24);
    swift_beginAccess();
    sub_26BF75208(v43, v14, v15);
    swift_endAccess();
    v16 = sub_26BE81FE0(v13);
    if ((v16 & 0x100000000) != 0)
    {
      LODWORD(v16) = sub_26BE4126C();
    }

    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = *(v0 + 104);
    *(v27 + 152) = v16;
    *(v27 + 24) = v15;
    sub_26BE038A8(v26 + *(v25 + 56), v0 + 16);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v27 + 112));
    sub_26BE03890((v0 + 16), v27 + 112);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 152) = v28;
    v29 = *(*(v28 - 8) + 80);
    *(v0 + 188) = v29;
    v30 = (v29 + 32) & ~v29;
    v31 = swift_allocObject();
    *(v0 + 160) = v31;
    *(v31 + 16) = xmmword_26C011280;
    v32 = sub_26BE81FE0(v13);
    if ((v32 & 0x100000000) != 0)
    {
      LODWORD(v32) = sub_26BE4126C();
    }

    v33 = v31 + v30;
    v34 = *(v0 + 120);
    v35 = *(v0 + 128);
    v36 = *(v0 + 112);
    v37 = *(v28 + 48);
    *v33 = v32;
    *(v33 + 8) = v15;
    sub_26BF7F0BC(v36, v31 + v30 + v37, type metadata accessor for MLS.GroupState);
    (*(v35 + 56))(v31 + v30 + v37, 0, 1, v34);
    v38 = swift_task_alloc();
    *(v0 + 168) = v38;
    *v38 = v0;
    v38[1] = sub_26BF71500;

    return sub_26BF394D4(v31);
  }

  else
  {
    sub_26BF7F0BC(*(v0 + 112), *(v0 + 136), type metadata accessor for MLS.GroupState);

    v17 = sub_26C009A3C();
    v18 = sub_26C00AA0C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 136);
    if (v19)
    {
      v21 = *(v0 + 184);
      v22 = *(v0 + 104);
      v23 = swift_slowAlloc();
      *v23 = 67109632;
      *(v23 + 4) = *(v22 + 152);

      *(v23 + 8) = 1024;
      *(v23 + 10) = v21;
      *(v23 + 14) = 1024;
      v24 = sub_26BE81FE0(*(v20 + *(v12 + 40)));
      v40 = v24;
      if ((v24 & 0x100000000) != 0)
      {
        v40 = sub_26BE4126C();
      }

      sub_26BF7F05C(*(v0 + 136), type metadata accessor for MLS.GroupState);
      *(v23 + 16) = v40;
      _os_log_impl(&dword_26BDFE000, v17, v18, "Attempted to advance era from %u to %u, but newGroupState has era %u", v23, 0x14u);
      MEMORY[0x26D69A4E0](v23, -1, -1);
    }

    else
    {
      sub_26BF7F05C(*(v0 + 136), type metadata accessor for MLS.GroupState);
    }

    sub_26BE01654();
    swift_allocError();
    *v41 = 45;
    v41[112] = 0;
    swift_willThrow();

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_26BF71500()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26BF717E0;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v2 = sub_26BF71654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF71654()
{
  v13 = v0;

  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v12);

    *(v4 + 4) = v9;
    *(v4 + 12) = 1024;
    *(v4 + 14) = v3;
    _os_log_impl(&dword_26BDFE000, v1, v2, "%s: advanced era to %u", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26BF717E0()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF71884(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_26BF718A4, 0, 0);
}

uint64_t sub_26BF718A4()
{
  v20 = v0;
  v1 = *(v0 + 104);
  v2 = type metadata accessor for MLS.GroupState(0);
  v3 = *(v1 + *(v2 + 40));
  v4 = sub_26BE81FE0(v3);
  if ((v4 & 0x100000000) != 0)
  {
    v4 = sub_26BE4126C();
  }

  v5 = *(*(v0 + 104) + 24);
  swift_beginAccess();
  sub_26BF75208(v19, v4, v5);
  swift_endAccess();
  v6 = sub_26BE81FE0(v3);
  if ((v6 & 0x100000000) != 0)
  {
    LODWORD(v6) = sub_26BE4126C();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  *(v8 + 152) = v6;
  *(v8 + 24) = v5;
  sub_26BE038A8(v7 + *(v2 + 56), v0 + 16);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v8 + 112));
  sub_26BE03890((v0 + 16), v8 + 112);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 120) = v9;
  v10 = *(*(v9 - 8) + 80);
  *(v0 + 152) = v10;
  v11 = (v10 + 32) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 128) = v12;
  *(v12 + 16) = xmmword_26C011280;
  v13 = sub_26BE81FE0(v3);
  if ((v13 & 0x100000000) != 0)
  {
    LODWORD(v13) = sub_26BE4126C();
  }

  v14 = v12 + v11;
  v15 = *(v0 + 104);
  v16 = *(v9 + 48);
  *v14 = v13;
  *(v14 + 8) = v5;
  sub_26BF7F0BC(v15, v12 + v11 + v16, type metadata accessor for MLS.GroupState);
  (*(*(v2 - 8) + 56))(v12 + v11 + v16, 0, 1, v2);
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_26BF71B84;

  return sub_26BF394D4(v12);
}

uint64_t sub_26BF71B84()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF71D00, 0, 0);
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BF71D00()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF71D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_26BF71DBC, 0, 0);
}

uint64_t sub_26BF71DBC()
{
  v14 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  v0[4] = __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, &v13);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: advancing to new state", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_26BF71FA8;
  v11 = v0[3];

  return sub_26BF71884(v11);
}

uint64_t sub_26BF71FA8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF720D8, 0, 0);
  }
}

uint64_t sub_26BF720D8()
{
  v12 = v0;

  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;

    v5 = sub_26BE3D034();
    v7 = v6;

    v8 = sub_26BE29740(v5, v7, &v11);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_26BDFE000, v1, v2, "%s: advanced to new state", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x26D69A4E0](v4, -1, -1);
    MEMORY[0x26D69A4E0](v3, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26BF72244(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  *(v3 + 32) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_26BF72274, 0, 0);
}

uint64_t sub_26BF72274()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BF72334;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);

  return sub_26BEA72F4(v5, v2, v2, v4, v3);
}

uint64_t sub_26BF72334()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BF72428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 168) = a3;
  *(v4 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960);
  *(v4 + 112) = swift_task_alloc();
  v5 = type metadata accessor for MLS.GroupState(0);
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF72528, 0, 0);
}

uint64_t sub_26BF72528()
{
  v17 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315650;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v4;
    *(v6 + 18) = 2048;
    *(v6 + 20) = v5;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: determining prior group membership for %u %lld", v6, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 104);
  *(v0 + 72) = *(v0 + 168);
  *(v0 + 80) = v12;
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = sub_26BF72754;
  v14 = *(v0 + 112);

  return sub_26BF378BC(v14, v0 + 72);
}

uint64_t sub_26BF72754()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_26BF72C2C;
  }

  else
  {
    v2 = sub_26BF72868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BF72868()
{
  v35 = v0;
  v1 = *(v0 + 112);
  if ((*(*(v0 + 128) + 48))(v1, 1, *(v0 + 120)) == 1)
  {
    sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);
    sub_26BF7F124(v1, v4, type metadata accessor for MLS.GroupState);
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 32);
    v9 = swift_task_alloc();
    *(v9 + 16) = v4;
    v10 = sub_26BFEB264(sub_26BF7F1F4, v9, v8, v5, v6, v7);
    if (v3)
    {
      v11 = *(v0 + 136);

      sub_26BF7F05C(v11, type metadata accessor for MLS.GroupState);

      v12 = *(v0 + 8);
      goto LABEL_17;
    }

    v13 = v10;

    v14 = *(v13 + 2);
    if (v14)
    {
      v34 = MEMORY[0x277D84F90];
      sub_26BECBA54(0, v14, 0);
      v2 = v34;
      v15 = (v13 + 32);
      do
      {
        sub_26BE2DB68(v15, v0 + 16);
        v34 = v2;
        v17 = *(v2 + 16);
        v16 = *(v2 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_26BECBA54((v16 > 1), v17 + 1, 1);
          v2 = v34;
        }

        *(v2 + 16) = v17 + 1;
        v18 = v2 + 56 * v17;
        v19 = *(v0 + 16);
        v20 = *(v0 + 32);
        v21 = *(v0 + 48);
        *(v18 + 80) = *(v0 + 64);
        *(v18 + 48) = v20;
        *(v18 + 64) = v21;
        *(v18 + 32) = v19;
        v15 += 56;
        --v14;
      }

      while (v14);
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }

    swift_bridgeObjectRetain_n();

    v22 = sub_26C009A3C();
    v23 = sub_26C00AA1C();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 136);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315394;

      v28 = sub_26BE3D034();
      v30 = v29;

      v31 = sub_26BE29740(v28, v30, &v34);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2048;
      v32 = *(v2 + 16);

      *(v26 + 14) = v32;

      _os_log_impl(&dword_26BDFE000, v22, v23, "%s: returning %ld members", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x26D69A4E0](v27, -1, -1);
      MEMORY[0x26D69A4E0](v26, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_26BF7F05C(v25, type metadata accessor for MLS.GroupState);
  }

  **(v0 + 88) = v2;

  v12 = *(v0 + 8);
LABEL_17:

  return v12();
}

uint64_t sub_26BF72C2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF72C9C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 64) = *a2;
  *(v3 + 32) = *(a2 + 8);
  *(v3 + 48) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_26BF72CD4, 0, 0);
}

uint64_t sub_26BF72CD4()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26BF7F1A4;
  v2 = *(v0 + 16);

  return (sub_26BEA3FE4)(v2);
}

uint64_t sub_26BF72DA8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 56) = a2;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26BF72DD4, 0, 0);
}

uint64_t sub_26BF72DD4()
{
  v53 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v47 = *(v0 + 40);
    v4 = *(v0 + 32);
    v49 = *(v0 + 24);
    v48 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136315650;

    v7 = sub_26BE3D034();
    v9 = v8;

    v10 = sub_26BE29740(v7, v9, &v50);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_26BE29740(v4, v47, &v50);
    *(v5 + 22) = 2080;
    LODWORD(v51) = v48;
    v52 = v49;
    v11 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v13 = sub_26BE29740(v11, v12, &v50);

    *(v5 + 24) = v13;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: checking whether participant key ungracefullyrolled for %s since %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v6, -1, -1);
    MEMORY[0x26D69A4E0](v5, -1, -1);
  }

  v14 = *(*(v0 + 48) + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);
  if (*(v14 + 16))
  {
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);

    v17 = sub_26BEBB618(v16, v15);
    if (v18)
    {
      v19 = *(v14 + 56) + 16 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);

      goto LABEL_10;
    }
  }

  v20 = sub_26BE4126C();
  v21 = 0;
LABEL_10:
  v22 = sub_26C009A3C();
  v23 = sub_26C00AA1C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v50 = v25;
    *v24 = 136315138;
    LODWORD(v51) = v20;
    v52 = v21;
    v26 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v28 = sub_26BE29740(v26, v27, &v50);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_26BDFE000, v22, v23, "last rolled: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x26D69A4E0](v25, -1, -1);
    MEMORY[0x26D69A4E0](v24, -1, -1);
  }

  v29 = *(v0 + 56);
  v30 = v21 > *(v0 + 24);
  v31 = v20 == v29;
  v32 = v20 > v29;
  if (!v31)
  {
    v30 = v32;
  }

  v33 = *(v0 + 48);
  if (v30)
  {
    v34 = *(v33 + 152);
    v31 = v34 == v20;
    v35 = v34 >= v20;
    if (v31)
    {
      v36 = *(v33 + 24) >= v21;
    }

    else
    {
      v36 = v35;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = sub_26C009A3C();
  v38 = sub_26C00AA1C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51 = v40;
    *v39 = 136315394;

    v41 = sub_26BE3D034();
    v43 = v42;

    v44 = sub_26BE29740(v41, v43, &v51);

    *(v39 + 4) = v44;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v36;
    _os_log_impl(&dword_26BDFE000, v37, v38, "%s: returning hasRolled = %{BOOL}d", v39, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x26D69A4E0](v40, -1, -1);
    MEMORY[0x26D69A4E0](v39, -1, -1);
  }

  **(v0 + 16) = v36;
  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_26BF732A8()
{
  *(v1 + 40) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF73344, 0, 0);
}

uint64_t sub_26BF73344()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE2E1F0(v2 + v3, v1, &qword_28045FA38, &qword_26C01D890);
  v4 = type metadata accessor for FileInfoAndSender(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4) != 1;
  sub_26BE2E258(v1, &qword_28045FA38, &qword_26C01D890);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_26BF73454(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_26BF7347C, 0, 0);
}

uint64_t sub_26BF7347C()
{
  v1 = v0[4];
  v2 = v0[5];

  sub_26BE00608(v1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_26BE3C268;
  v4 = v0[2];

  return (sub_26BEA7D5C)(v4);
}

uint64_t sub_26BF73548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  type metadata accessor for MLS.MLSMessage(0);
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF73694, 0, 0);
}

uint64_t sub_26BF73694()
{
  v71 = v0;
  v1 = *(v0 + 336);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v70[0] = v3;
  v70[1] = v2;
  sub_26BE00608(v3, v2);
  sub_26BF41E60(v70, v1);
  sub_26BE00258(v3, v2);
  if (*(*(v0 + 264) + 72))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  LOWORD(v70[0]) = v4;
  v6 = sub_26BF2F140(v70);
  v8 = v7;
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  v9 = sub_26C009A5C();
  __swift_project_value_buffer(v9, qword_280478FB0);

  sub_26BE00608(v6, v8);
  v10 = sub_26C009A3C();
  v11 = sub_26C00A9FC();
  sub_26BE00258(v6, v8);

  v12 = &unk_280478000;
  if (os_log_type_enabled(v10, v11))
  {
    v68 = v11;
    log = v10;
    v13 = *(v0 + 296);
    v65 = *(v0 + 328);
    v66 = *(v0 + 288);
    v14 = *(v0 + 264);
    v15 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v70[0] = v67;
    *v15 = 136315650;

    v16 = sub_26BE3D034();
    v18 = v17;

    v19 = sub_26BE29740(v16, v18, v70);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v0 + 240) = sub_26BF87240(v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v20 = sub_26C00A3EC();
    v22 = v21;

    v23 = sub_26BE29740(v20, v22, v70);
    v12 = &unk_280478000;

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    v24 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
    swift_beginAccess();
    sub_26BE2E1F0(v14 + v24, v65, &qword_28045E8D8, &qword_26C012580);
    v25 = (*(v13 + 48))(v65, 1, v66);
    v26 = *(v0 + 328);
    if (v25 || (v27 = v26 + *(*(v0 + 288) + 48), v28 = *(v27 + 168), v28 >> 60 == 15))
    {
      sub_26BE2E258(v26, &qword_28045E8D8, &qword_26C012580);
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v61 = *(v27 + 160);
      v62 = *(v0 + 328);
      sub_26BE00608(v61, *(v27 + 168));
      sub_26BE2E258(v62, &qword_28045E8D8, &qword_26C012580);
      *(v0 + 248) = sub_26BF87240(v61, v28);
      v63 = sub_26C00A3EC();
      v29 = v64;
      sub_26BE132D4(v61, v28);

      v30 = v63;
      v12 = &unk_280478000;
    }

    v31 = sub_26BE29740(v30, v29, v70);

    *(v15 + 24) = v31;
    v10 = log;
    _os_log_impl(&dword_26BDFE000, log, v68, "%s: incoming messageHash: %s, commitMetadata.commitMessageHash: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v67, -1, -1);
    MEMORY[0x26D69A4E0](v15, -1, -1);
  }

  v32 = *(v0 + 320);
  v33 = *(v0 + 288);
  v34 = *(v0 + 296);
  v35 = *(v0 + 264);
  v36 = v12[506];
  swift_beginAccess();
  sub_26BE2E1F0(v35 + v36, v32, &qword_28045E8D8, &qword_26C012580);
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    v38 = *(v0 + 312);
    v39 = *(v0 + 304);
    v40 = *(v0 + 288);
    sub_26BE33F30(*(v0 + 320), v38, &qword_28045E8E0, &unk_26C0204E0);
    sub_26BE2E1F0(v38, v39, &qword_28045E8E0, &unk_26C0204E0);
    v41 = (v39 + *(v40 + 48));
    v42 = v41[7];
    v43 = v41[8];
    v44 = v41[10];
    *(v0 + 160) = v41[9];
    *(v0 + 176) = v44;
    *(v0 + 128) = v42;
    *(v0 + 144) = v43;
    v45 = v41[3];
    v46 = v41[4];
    v47 = v41[6];
    *(v0 + 96) = v41[5];
    *(v0 + 112) = v47;
    *(v0 + 64) = v45;
    *(v0 + 80) = v46;
    v49 = v41[1];
    v48 = v41[2];
    *(v0 + 16) = *v41;
    *(v0 + 32) = v49;
    *(v0 + 48) = v48;
    v50 = *(v0 + 176);
    v51 = *(v0 + 184);
    sub_26BE2BAE8(v50, v51);
    sub_26BE6FF8C(v0 + 16);
    if (v8 >> 60 == 15)
    {
      v52 = *(v0 + 336);
      sub_26BE2E258(*(v0 + 312), &qword_28045E8E0, &unk_26C0204E0);
      sub_26BF7F05C(v52, type metadata accessor for MLS.MLSMessage);
      if (v51 >> 60 == 15)
      {
        v53 = *(v0 + 304);
        sub_26BE132D4(v6, v8);
        sub_26BF7F05C(v53, type metadata accessor for MLS.GroupState);
        goto LABEL_26;
      }
    }

    else
    {
      v54 = *(v0 + 336);
      v55 = *(v0 + 312);
      if (v51 >> 60 != 15)
      {
        v59 = *(v0 + 304);
        sub_26BE00608(v6, v8);
        sub_26BE2BAE8(v50, v51);
        v60 = sub_26BE02DEC(v6, v8, v50, v51);
        sub_26BE132D4(v50, v51);
        sub_26BE132D4(v50, v51);
        sub_26BE00258(v6, v8);
        sub_26BE2E258(v55, &qword_28045E8E0, &unk_26C0204E0);
        sub_26BF7F05C(v54, type metadata accessor for MLS.MLSMessage);
        sub_26BE132D4(v6, v8);
        sub_26BF7F05C(v59, type metadata accessor for MLS.GroupState);
        if (!v60)
        {
          goto LABEL_23;
        }

LABEL_26:
        v57 = 1;
        goto LABEL_24;
      }

      sub_26BE2E258(*(v0 + 312), &qword_28045E8E0, &unk_26C0204E0);
      sub_26BF7F05C(v54, type metadata accessor for MLS.MLSMessage);
    }

    v56 = *(v0 + 304);
    sub_26BE132D4(v6, v8);
    sub_26BE132D4(v50, v51);
    sub_26BF7F05C(v56, type metadata accessor for MLS.GroupState);
    goto LABEL_23;
  }

  v37 = *(v0 + 320);
  sub_26BF7F05C(*(v0 + 336), type metadata accessor for MLS.MLSMessage);
  sub_26BE00258(v6, v8);
  sub_26BE2E258(v37, &qword_28045E8D8, &qword_26C012580);
LABEL_23:
  v57 = 0;
LABEL_24:
  **(v0 + 256) = v57;

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_26BF73E64()
{

  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata, &qword_28045E8D8, &qword_26C012580);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);
}

void *MLS.Group.PureSwiftGroup.deinit()
{

  sub_26BE00258(v0[4], v0[5]);

  sub_26BE0489C(v0[7], v0[8]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata, &qword_28045E8D8, &qword_26C012580);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, &qword_28045FA38, &qword_26C01D890);

  return v0;
}

uint64_t MLS.Group.PureSwiftGroup.__deallocating_deinit()
{
  MLS.Group.PureSwiftGroup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26BF740A8@<X0>(const char *a1@<X1>, uint64_t (*a2)(uint64_t, unint64_t)@<X0>, void *a3@<X8>, ...)
{
  v8 = type metadata accessor for MLS.MLSMessage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v12 = v3[1];
  sub_26BE00608(v13, v12);
  result = a2(v13, v12);
  if (!v4)
  {
    v15 = result;
    v16 = *(result + 16);
    if (v16)
    {
      sub_26BF7F0BC(result + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v11, type metadata accessor for MLS.MLSMessage);
      if (v16 == 1)
      {

        MLS.MLSMessage.rawValue.getter();
        v24 = v23;
        v26 = v25;
        result = sub_26BF7F05C(v11, type metadata accessor for MLS.MLSMessage);
        *a3 = v24;
        a3[1] = v26;
        return result;
      }

      sub_26BF7F05C(v11, type metadata accessor for MLS.MLSMessage);
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v17 = sub_26C009A5C();
    __swift_project_value_buffer(v17, qword_280478EE8);

    v18 = sub_26C009A3C();
    v19 = sub_26C00AA0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      v21 = *(v15 + 16);

      *(v20 + 4) = v21;

      _os_log_impl(&dword_26BDFE000, v18, v19, a1, v20, 0xCu);
      MEMORY[0x26D69A4E0](v20, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_26BE01600();
    swift_allocError();
    *v22 = 5;
    return swift_willThrow();
  }

  return result;
}

void MLS.Group.GroupInfo.asGroupInfo()(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MLS.MLSMessage(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  sub_26BE00608(v14, v13);
  MLS.MLSMessage.init(rawValue:quiet:)(v14, v13, 0, v12);
  if (!v2)
  {
    sub_26BF7F0BC(v12, v9, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
      sub_26BF7F124(v9, a1, type metadata accessor for MLS.GroupInfo);
    }

    else
    {
      sub_26BF7F05C(v9, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v16 = v15;
      sub_26BF7F0BC(v12, v7, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 2;
        }

        else
        {
          v18 = *v7;
          sub_26BE00258(*(v7 + 1), *(v7 + 2));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 4;
        }

        else
        {
          sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
          v18 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage.Inner);
        v18 = 3;
      }

      *v16 = v18;
      *(v16 + 2) = 4;
      *(v16 + 4) = 0;
      *(v16 + 112) = 17;
      swift_willThrow();
      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage);
    }
  }
}

uint64_t sub_26BF7469C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BFD9828(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26C00AEEC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
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
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26C00A74C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BF7D18C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BF747D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_26C00928C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_26BF74890(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  v7 = a4[4];
  v6[3] = a4[3];
  v6[4] = v7;
  v8 = a4[2];
  v6[1] = a4[1];
  v6[2] = v8;
  *v6 = *a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_26BF748F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 184 * result;
  v7 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v7;
  v8 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v8;
  *(v6 + 176) = *(a4 + 176);
  v9 = *(a4 + 160);
  *(v6 + 144) = *(a4 + 144);
  *(v6 + 160) = v9;
  *(v6 + 128) = *(a4 + 128);
  v10 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v10;
  v11 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v11;
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_26BF74978(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_26BF749C0(unint64_t a1, int a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_26BE03890(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_26BF74A2C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6] + 16 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a5[7];
  v10 = sub_26C00921C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_26BF74AE0(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_26BF74B34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_26BF74B84(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = sub_26C009C8C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_26BF74C30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 8 * a1;
  *v7 = a2 & 1;
  *(v7 + 4) = HIDWORD(a2);
  v8 = a4[7];
  v9 = _s11HashRatchetVMa(0);
  result = sub_26BF7F124(a3, v8 + *(*(v9 - 8) + 72) * a1, _s11HashRatchetVMa);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_26BF74CE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26BE5B0F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26BF74D54(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for MLS.KeyAndNonce(0);
  result = sub_26BF7F124(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for MLS.KeyAndNonce);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_26BF74E00(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_26BF74E48(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_26C00AB9C();

    if (v8)
    {

      type metadata accessor for ContinuationStore(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_26C00AB8C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_26BE29B54(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_26BF76DFC(v18 + 1);
        }

        sub_26BF787AC(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_26C00B05C();
    sub_26C00924C();
    v10 = sub_26C00B0CC();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = sub_26C00923C();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_26BF78BA0(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_26BF750E8(_WORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_26C00B05C();
  sub_26C00B08C();
  v12 = sub_26C00B0CC();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 2 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_26BF78D30(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26BF75208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a3);
  v8 = sub_26C00B0CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v13 == a2 && v14 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_26BF78EA0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_26BF7532C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  sub_26C00B05C();
  sub_26C00911C();
  v7 = sub_26C00B0CC();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_26BE00608(a2, a3);
    sub_26BF79018(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_26BE00608(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_26BE00608(v18, v17);
      v32 = sub_26C008E9C();
      if (v32)
      {
        v34 = sub_26C008ECC();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_26BE00608(v18, v17);
    v32 = sub_26C008E9C();
    if (v32)
    {
      v33 = sub_26C008ECC();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_26C008EBC();
    a3 = v44;
    sub_26BE567B0(v32, a2, v44, v50);
    sub_26BE00258(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_26BE00608(v18, v17);
LABEL_60:
  sub_26BE567B0(v50, a2, a3, &v49);
  sub_26BE00258(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_26BE00258(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_26BE00608(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_26BF757B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26C00B05C();
  sub_26C00B07C();
  if (a3)
  {
    sub_26C00A58C();
  }

  v8 = sub_26C00B0CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26BF79490(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_26C00AF2C() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_26BF7593C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_26C00B05C();
  sub_26C00B09C();
  v6 = sub_26C00B0CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_26BF7964C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26BF75A34(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_26C00B05C();
  MEMORY[0x26D699B20](a2);
  v6 = sub_26C00B0CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_26BF79798(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26BF75B2C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26C00B05C();
  sub_26C00A58C();
  v8 = sub_26C00B0CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26C00AF2C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26BF798E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26BF75C7C(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v64);
  v5 = &v48 - v4;
  v57 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v68 = *(v57 - 8);
  v6 = MEMORY[0x28223BE20](v57);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v48 - v9;
  v10 = sub_26C0094DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v59 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v49 = v2;
  v53 = *v2;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v19 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v66 = *(v19 + 20);
  v67 = v19;
  v69 = a2;
  sub_26BE2E1F0(a2 + v66, v18, &qword_28045EE48, &unk_26C022430);
  v20 = *(v11 + 48);
  v65 = v11 + 48;
  v63 = v20;
  v21 = v20(v18, 1, v10);
  v58 = v10;
  v56 = v11;
  if (v21 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    sub_26C00B07C();
    sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v11 + 8))(v13, v10);
  }

  v22 = *(v57 + 20);
  sub_26C00959C();
  sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  v54 = v22;
  sub_26C00A3CC();
  v23 = sub_26C00B0CC();
  v24 = v53;
  v25 = v53 + 56;
  v26 = -1 << *(v53 + 32);
  v27 = v23 & ~v26;
  if ((*(v53 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
  {
    v52 = v13;
    v28 = ~v26;
    v51 = (v56 + 32);
    v68 = *(v68 + 72);
    v55 = (v56 + 8);
    v29 = v58;
    v56 = v5;
    v61 = ~v26;
    v62 = v8;
    v60 = v53 + 56;
    do
    {
      v30 = v68 * v27;
      sub_26BF7F0BC(*(v24 + 48) + v68 * v27, v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
      if ((sub_26C00945C() & 1) == 0)
      {
        goto LABEL_13;
      }

      v31 = *(v64 + 48);
      sub_26BE2E1F0(&v8[*(v67 + 20)], v5, &qword_28045EE48, &unk_26C022430);
      sub_26BE2E1F0(v69 + v66, &v5[v31], &qword_28045EE48, &unk_26C022430);
      v32 = v5;
      v33 = v29;
      v34 = v5;
      v35 = v29;
      v36 = v63;
      if (v63(v32, 1, v33) == 1)
      {
        if (v36(v34 + v31, 1, v35) != 1)
        {
          v8 = v62;
          sub_26BF7F05C(v62, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v25 = v60;
          v29 = v58;
          goto LABEL_7;
        }

        sub_26BE2E258(v34, &qword_28045EE48, &unk_26C022430);
        v25 = v60;
        v28 = v61;
        v29 = v58;
        v5 = v34;
      }

      else
      {
        v37 = v59;
        sub_26BE2E1F0(v34, v59, &qword_28045EE48, &unk_26C022430);
        if (v36(v34 + v31, 1, v35) == 1)
        {
          v8 = v62;
          sub_26BF7F05C(v62, type metadata accessor for MLS.SubjectPublicKeyInfo);
          (*v55)(v37, v35);
          v25 = v60;
          v29 = v35;
LABEL_7:
          v28 = v61;
          v5 = v56;
          sub_26BE2E258(v56, &qword_28045F0D8, &unk_26C01A530);
          goto LABEL_8;
        }

        v38 = v52;
        (*v51)(v52, v34 + v31, v35);
        sub_26BF7EFF4(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
        v39 = sub_26C00A43C();
        v40 = *v55;
        v41 = v38;
        v24 = v53;
        (*v55)(v41, v35);
        v40(v59, v35);
        sub_26BE2E258(v34, &qword_28045EE48, &unk_26C022430);
        v25 = v60;
        v28 = v61;
        v29 = v35;
        v5 = v34;
        if ((v39 & 1) == 0)
        {
          v8 = v62;
LABEL_13:
          sub_26BF7F05C(v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
          goto LABEL_8;
        }
      }

      v8 = v62;
      v42 = sub_26C00956C();
      sub_26BF7F05C(v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
      if (v42)
      {
        sub_26BF7F05C(v69, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BF7F0BC(*(v24 + 48) + v30, v50, type metadata accessor for MLS.SubjectPublicKeyInfo);
        return 0;
      }

LABEL_8:
      v27 = (v27 + 1) & v28;
    }

    while (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
  }

  v43 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v69;
  v46 = v48;
  sub_26BF7F0BC(v69, v48, type metadata accessor for MLS.SubjectPublicKeyInfo);
  v70 = *v43;
  sub_26BF79A64(v46, v27, isUniquelyReferenced_nonNull_native);
  *v43 = v70;
  sub_26BF7F124(v45, v50, type metadata accessor for MLS.SubjectPublicKeyInfo);
  return 1;
}

uint64_t sub_26BF76554(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(&v82);
  v5 = sub_26C00B0CC();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = v5 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_102:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26BE2DB68(a2, &v82);
    *v81 = *v72;
    sub_26BF7A2E8(&v82, v8, isUniquelyReferenced_nonNull_native);
    *v72 = *v81;
    v67 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v67;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return 1;
  }

  v75 = 0;
  v76 = v4;
  v78 = v4 + 56;
  v79 = ~v7;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (*a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0xC000000000000000;
  }

  v12 = !v11;
  v74 = v12;
  v77 = v10 >> 62;
  v13 = __OFSUB__(HIDWORD(v9), v9);
  v71 = v13;
  while (1)
  {
    sub_26BE2DB68(*(v4 + 48) + 56 * v8, &v82);
    v15 = v82;
    v14 = v83;
    if ((v83 & 0x2000000000000000) == 0)
    {
      if ((v10 & 0x2000000000000000) != 0)
      {
        goto LABEL_48;
      }

      v16 = v83 >> 62;
      if (v83 >> 62 == 3)
      {
        if (v82)
        {
          v17 = 0;
        }

        else
        {
          v17 = v83 == 0xC000000000000000;
        }

        v18 = v10 >> 62;
        v20 = !v17 || v10 >> 62 != 3;
        if (((v20 | v74) & 1) == 0)
        {
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE04890(0, 0xC000000000000000);
          sub_26BE0489C(0, 0xC000000000000000);
          v21 = 0;
          v22 = 0xC000000000000000;
          goto LABEL_53;
        }
      }

      else
      {
        v18 = v10 >> 62;
        if (v16 <= 1)
        {
          if (v16)
          {
            LODWORD(v24) = HIDWORD(v82) - v82;
            if (__OFSUB__(HIDWORD(v82), v82))
            {
              goto LABEL_110;
            }

            v24 = v24;
            if (v77 > 1)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v24 = BYTE6(v83);
            if (v77 > 1)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_36;
        }

        if (v16 == 2)
        {
          v26 = *(v82 + 16);
          v25 = *(v82 + 24);
          v27 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (v27)
          {
            goto LABEL_111;
          }

          if (v77 > 1)
          {
            goto LABEL_40;
          }

          goto LABEL_36;
        }
      }

      v24 = 0;
      if (v18 > 1)
      {
LABEL_40:
        if (v18 != 2)
        {
          if (v24)
          {
LABEL_48:
            sub_26BE04890(v9, v10);
            sub_26BE04890(v15, v14);
            sub_26BE0489C(v15, v14);
            sub_26BE0489C(v9, v10);
LABEL_49:
            sub_26BE2DBC4(&v82);
            goto LABEL_50;
          }

LABEL_52:
          sub_26BE04890(v9, v10);
          sub_26BE04890(v15, v14);
          sub_26BE0489C(v15, v14);
          v21 = v9;
          v22 = v10;
LABEL_53:
          sub_26BE0489C(v21, v22);
          goto LABEL_54;
        }

        v30 = *(v9 + 16);
        v29 = *(v9 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
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
        }

LABEL_42:
        if (v24 != v28)
        {
          goto LABEL_48;
        }

        if (v24 < 1)
        {
          goto LABEL_52;
        }

        if (v16 > 1)
        {
          if (v16 != 2)
          {
            *&v81[6] = 0;
            *v81 = 0;
            sub_26BE04890(v9, v10);
            sub_26BE04890(v15, v14);
LABEL_100:
            sub_26BE567B0(v81, v9, v10, v80);
            sub_26BE0489C(v15, v14);
            sub_26BE0489C(v9, v10);
            if ((v80[0] & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_54;
          }

          v49 = *(v82 + 16);
          v48 = *(v82 + 24);
          sub_26BE04890(v9, v10);
          sub_26BE04890(v15, v14);
          v50 = sub_26C008E9C();
          if (v50)
          {
            v51 = sub_26C008ECC();
            if (__OFSUB__(v49, v51))
            {
              goto LABEL_116;
            }

            v50 += v49 - v51;
          }

          if (__OFSUB__(v48, v49))
          {
            goto LABEL_115;
          }

          sub_26C008EBC();
          v52 = v50;
          v53 = v9;
          v54 = v10;
          v55 = v75;
        }

        else
        {
          if (!v16)
          {
            *v81 = v82;
            *&v81[8] = v83;
            *&v81[12] = WORD2(v83);
            sub_26BE04890(v9, v10);
            sub_26BE04890(v15, v14);
            goto LABEL_100;
          }

          if (v82 >> 32 < v82)
          {
            goto LABEL_114;
          }

          sub_26BE04890(v9, v10);
          sub_26BE04890(v15, v14);
          v64 = sub_26C008E9C();
          if (v64)
          {
            v65 = sub_26C008ECC();
            if (__OFSUB__(v15, v65))
            {
              goto LABEL_117;
            }

            v64 += v15 - v65;
          }

          v55 = v75;
          sub_26C008EBC();
          v52 = v64;
          v53 = v9;
          v54 = v10;
        }

        sub_26BE567B0(v52, v53, v54, v81);
        v75 = v55;
        sub_26BE0489C(v15, v14);
        sub_26BE0489C(v9, v10);
        v4 = v76;
        v6 = v78;
        if ((v81[0] & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_54;
      }

LABEL_36:
      v28 = BYTE6(v10);
      if (v18)
      {
        v28 = HIDWORD(v9) - v9;
        if (v71)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_42;
    }

    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_48;
    }

    sub_26BE04890(v9, v10);
    sub_26BE04890(v15, v14);
    v23 = sub_26BFB0104(v15, v9);
    sub_26BE0489C(v15, v14);
    sub_26BE0489C(v9, v10);
    if ((v23 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_54:
    v31 = v85;
    v32 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    (*(*(v32 + 8) + 24))(v81, v31);
    v33 = v81[0];

    v34 = *(a2 + 40);
    v35 = *(a2 + 48);
    __swift_project_boxed_opaque_existential_1((a2 + 16), v34);
    (*(*(v35 + 8) + 24))(v80, v34);
    LODWORD(v34) = LOBYTE(v80[0]);

    if (v33 != v34)
    {
      v6 = v78;
      goto LABEL_49;
    }

    v36 = v85;
    v37 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v38 = (*(*(v37 + 8) + 16))(v36);
    v40 = v39;
    v41 = *(a2 + 40);
    v42 = *(a2 + 48);
    __swift_project_boxed_opaque_existential_1((a2 + 16), v41);
    v43 = (*(*(v42 + 8) + 16))(v41);
    v45 = v40 >> 62;
    v46 = v44 >> 62;
    if (v40 >> 62 == 3)
    {
      v47 = 0;
      v6 = v78;
      if (!v38 && v40 == 0xC000000000000000 && v44 >> 62 == 3)
      {
        v47 = 0;
        if (!v43 && v44 == 0xC000000000000000)
        {
          sub_26BE00258(0, 0xC000000000000000);
          v69 = 0;
          v70 = 0xC000000000000000;
          goto LABEL_104;
        }
      }

LABEL_78:
      if (v46 <= 1)
      {
        goto LABEL_79;
      }

      goto LABEL_84;
    }

    v6 = v78;
    if (v45 == 2)
    {
      v57 = *(v38 + 16);
      v56 = *(v38 + 24);
      v27 = __OFSUB__(v56, v57);
      v47 = v56 - v57;
      if (v27)
      {
        goto LABEL_113;
      }

      goto LABEL_78;
    }

    if (v45 == 1)
    {
      LODWORD(v47) = HIDWORD(v38) - v38;
      if (__OFSUB__(HIDWORD(v38), v38))
      {
        goto LABEL_112;
      }

      v47 = v47;
      if (v46 <= 1)
      {
LABEL_79:
        if (v46)
        {
          LODWORD(v58) = HIDWORD(v43) - v43;
          v4 = v76;
          if (__OFSUB__(HIDWORD(v43), v43))
          {
            goto LABEL_108;
          }

          v58 = v58;
        }

        else
        {
          v58 = BYTE6(v44);
          v4 = v76;
        }

        goto LABEL_86;
      }
    }

    else
    {
      v47 = BYTE6(v40);
      if (v46 <= 1)
      {
        goto LABEL_79;
      }
    }

LABEL_84:
    if (v46 != 2)
    {
      break;
    }

    v60 = *(v43 + 16);
    v59 = *(v43 + 24);
    v27 = __OFSUB__(v59, v60);
    v58 = v59 - v60;
    v4 = v76;
    if (v27)
    {
      goto LABEL_109;
    }

LABEL_86:
    if (v47 != v58)
    {
      goto LABEL_91;
    }

    if (v47 < 1)
    {
      goto LABEL_103;
    }

    v61 = v43;
    v62 = v44;
    sub_26BE00608(v43, v44);
    v63 = sub_26BECB6A4(v38, v40, v61, v62);
    sub_26BE00258(v38, v40);
    sub_26BE00258(v61, v62);
    sub_26BE2DBC4(&v82);
    if (v63)
    {
      goto LABEL_105;
    }

    v4 = v76;
    v6 = v78;
LABEL_50:
    v8 = (v8 + 1) & v79;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_102;
    }
  }

  v4 = v76;
  if (v47)
  {
LABEL_91:
    sub_26BE00258(v43, v44);
    sub_26BE00258(v38, v40);
    goto LABEL_49;
  }

LABEL_103:
  sub_26BE00258(v43, v44);
  v69 = v38;
  v70 = v40;
LABEL_104:
  sub_26BE00258(v69, v70);
  sub_26BE2DBC4(&v82);
LABEL_105:
  sub_26BE2DBC4(a2);
  sub_26BE2DB68(*(v76 + 48) + 56 * v8, a1);
  return 0;
}

uint64_t sub_26BF76DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_26C00B05C();
      sub_26C00924C();
      result = sub_26C00B0CC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BF77054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26C00ABDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 2 * (v16 | (v8 << 6)));
      sub_26C00B05C();
      sub_26C00B08C();
      result = sub_26C00B0CC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_26BF7729C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB60, &qword_26C01FD60);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v20);
      result = sub_26C00B0CC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BF7750C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26C00B05C();
      sub_26C00911C();
      result = sub_26C00B0CC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BF7776C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB38, &qword_26C01FCB8);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_26C00B05C();
      sub_26C00B07C();
      if (v19)
      {
        sub_26C00A58C();
      }

      result = sub_26C00B0CC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BF779E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB70, &qword_26C01FD90);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BF77C38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB68, &qword_26C01FD88);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_26C00B05C();
      MEMORY[0x26D699B20](v17);
      result = sub_26C00B0CC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BF77E88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26C00B05C();
      sub_26C00A58C();
      result = sub_26C00B0CC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BF780E8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB20, &qword_26C01FCA0);
  result = sub_26C00ABDC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_26BF78858(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_26BF7F124(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for MLS.SubjectPublicKeyInfo);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_26BF782F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB00, &qword_26C01FC90);
  result = sub_26C00ABDC();
  v5 = result;
  if (*(v3 + 16))
  {
    v47 = v1;
    v48 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v19 = v6;
        while (1)
        {
          v6 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v6 >= v11)
          {
            break;
          }

          v20 = v7[v6];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v49 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        v46 = 1 << *(v3 + 32);
        if (v46 >= 64)
        {
          bzero(v7, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v46;
        }

        v2 = v47;
        *(v3 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v10));
      v49 = (v10 - 1) & v10;
LABEL_15:
      v21 = *(v3 + 48) + 56 * (v18 | (v6 << 6));
      v22 = *v21;
      v23 = *(v21 + 48);
      v24 = *(v21 + 32);
      v52 = *(v21 + 16);
      v53 = v24;
      v54 = v23;
      v51 = v22;
      sub_26C00B05C();
      v25 = v51;
      if ((*(&v51 + 1) & 0x2000000000000000) == 0)
      {
        MEMORY[0x26D699B20](0);
        sub_26C00911C();
        goto LABEL_26;
      }

      MEMORY[0x26D699B20](1);
      if (v25 >> 62)
      {
        v45 = sub_26C00AB8C();
        MEMORY[0x26D699B20](v45);
        result = sub_26C00AB8C();
        v26 = result;
        if (!result)
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = MEMORY[0x26D699B20](*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      if (v26 < 1)
      {
        goto LABEL_44;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v27 = 0;
        do
        {
          MEMORY[0x26D6996F0](v27++, v25);
          type metadata accessor for SecCertificate(0);
          sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
          sub_26C0092BC();
          swift_unknownObjectRelease();
        }

        while (v26 != v27);
      }

      else
      {
        v28 = (v25 + 32);
        type metadata accessor for SecCertificate(0);
        sub_26BF7EFF4(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
        do
        {
          v29 = *v28++;
          v30 = v29;
          sub_26C0092BC();

          --v26;
        }

        while (v26);
      }

LABEL_26:
      v32 = *(&v53 + 1);
      v31 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      (*(*(v31 + 8) + 24))(v50, v32);

      sub_26C00B08C();
      v34 = *(&v53 + 1);
      v33 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      v35 = (*(*(v33 + 8) + 16))(v34);
      v37 = v36;
      sub_26C00911C();
      sub_26BE00258(v35, v37);
      result = sub_26C00B0CC();
      v38 = -1 << *(v5 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v12 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v3 = v48;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v12 + 8 * v40);
          if (v44 != -1)
          {
            v13 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v39) & ~*(v12 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v3 = v48;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      v15 = v51;
      v16 = v52;
      v17 = v53;
      *(v14 + 48) = v54;
      *(v14 + 16) = v16;
      *(v14 + 32) = v17;
      *v14 = v15;
      ++*(v5 + 16);
      v10 = v49;
    }
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26BF787AC(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  sub_26C00924C();
  sub_26C00B0CC();
  result = sub_26C00AB6C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26BF78858(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v11 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  sub_26BE2E1F0(a1 + *(v11 + 20), v10, &qword_28045EE48, &unk_26C022430);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_26C00B07C();
    sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v5 + 8))(v7, v4);
  }

  v12 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  sub_26C00959C();
  sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
  sub_26C00A3CC();
  sub_26C00B0CC();
  v13 = sub_26C00AB6C();
  *(a2 + 56 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  result = sub_26BF7F124(a1, *(a2 + 48) + *(*(v12 - 8) + 72) * v13, type metadata accessor for MLS.SubjectPublicKeyInfo);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26BF78BA0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF76DFC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_26BF7ABB0();
      goto LABEL_12;
    }

    sub_26BF7B9B4(v7 + 1);
  }

  v9 = *v3;
  sub_26C00B05C();
  sub_26C00924C();
  result = sub_26C00B0CC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ContinuationStore(0);
    do
    {

      v12 = sub_26C00923C();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF78D30(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF77054(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_26BF7AD14(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_26BF7BBE4(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_26C00B05C();
  sub_26C00B08C();
  result = sub_26C00B0CC();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 2 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 2 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF78EA0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_26BF7729C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_26BF7AE44();
      a3 = v9;
      goto LABEL_15;
    }

    sub_26BF7BDFC(v7 + 1);
  }

  v10 = *v4;
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  result = sub_26C00B0CC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v10 + 48) + 16 * a3;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = *(v17 + 48) + 16 * a3;
  *v18 = v6;
  *(v18 + 8) = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

void sub_26BF79018(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26BF7750C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_26BF7AF98();
        goto LABEL_68;
      }

      sub_26BF7C03C(v8 + 1);
    }

    v10 = *v4;
    sub_26C00B05C();
    sub_26C00911C();
    v11 = sub_26C00B0CC();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = v11 & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (a1)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(a1), a1);
      v46 = v18;
      v45 = HIDWORD(a1) - a1;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = a1;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_26BE00608(v21, v20);
              v35 = sub_26C008E9C();
              if (v35)
              {
                v36 = sub_26C008ECC();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_26BE00608(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_26BE00608(v21, v20);
              v35 = sub_26C008E9C();
              if (v35)
              {
                v37 = sub_26C008ECC();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_26C008EBC();
              a1 = v42;
              a2 = v43;
              sub_26BE567B0(v35, v42, v43, v51);
              sub_26BE00258(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_26BE00608(v21, v20);
            v14 = v47;
          }

          sub_26BE567B0(v51, a1, a2, &v50);
          sub_26BE00258(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        sub_26C00AF7C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = a1;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
}

uint64_t sub_26BF79490(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_26BF7776C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_26BF7B0F4();
      goto LABEL_22;
    }

    sub_26BF7C278(v9 + 1);
  }

  v11 = *v4;
  sub_26C00B05C();
  sub_26C00B07C();
  if (a2)
  {
    sub_26C00A58C();
  }

  result = sub_26C00B0CC();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = sub_26C00AF2C(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
            result = sub_26C00AF7C();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_26BF7964C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF779E8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_26BF7B24C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_26BF7C4CC(v5 + 1);
  }

  v8 = *v3;
  sub_26C00B05C();
  sub_26C00B09C();
  result = sub_26C00B0CC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF79798(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26BF77C38(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_26BF7B38C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_26BF7C6EC(v5 + 1);
  }

  v8 = *v3;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v4);
  result = sub_26C00B0CC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF798E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26BF77E88(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26BF7B4CC();
      goto LABEL_16;
    }

    sub_26BF7C90C(v8 + 1);
  }

  v10 = *v4;
  sub_26C00B05C();
  sub_26C00A58C();
  result = sub_26C00B0CC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26C00AF2C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}

uint64_t sub_26BF79A64(uint64_t a1, unint64_t a2, char a3)
{
  v66 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v64);
  v55 = &v47 - v6;
  v53 = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26C0094DC();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v63 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v54 = v3;
  v17 = *(*v3 + 16);
  v18 = *(*v3 + 24);
  if (v18 <= v17 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26BF780E8(v17 + 1);
    }

    else
    {
      if (v18 > v17)
      {
        sub_26BF7B628();
        goto LABEL_27;
      }

      sub_26BF7CB44(v17 + 1);
    }

    v65 = *v54;
    sub_26C00B05C();
    sub_26C00947C();
    sub_26BF7EFF4(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
    v19 = v66;
    sub_26C00A3CC();
    v20 = type metadata accessor for MLS.AlgorithmIdentifier(0);
    v61 = *(v20 + 20);
    v62 = v20;
    sub_26BE2E1F0(v19 + v61, v16, &qword_28045EE48, &unk_26C022430);
    v21 = v56;
    v59 = *(v9 + 48);
    v60 = v9 + 48;
    if (v59(v16, 1, v56) == 1)
    {
      sub_26C00B07C();
    }

    else
    {
      (*(v9 + 32))(v11, v16, v21);
      sub_26C00B07C();
      sub_26BF7EFF4(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
      sub_26C00A3CC();
      (*(v9 + 8))(v11, v21);
    }

    v22 = *(v53 + 20);
    sub_26C00959C();
    sub_26BF7EFF4(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
    v50 = v22;
    sub_26C00A3CC();
    v23 = sub_26C00B0CC();
    v24 = v65 + 56;
    v25 = -1 << *(v65 + 32);
    a2 = v23 & ~v25;
    if ((*(v65 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v49 = v11;
      v26 = ~v25;
      v48 = (v9 + 32);
      v27 = *(v52 + 72);
      v51 = (v9 + 8);
      v28 = &qword_28045EE48;
      v30 = v55;
      v29 = v56;
      v57 = v27;
      v58 = v8;
      do
      {
        sub_26BF7F0BC(*(v65 + 48) + v27 * a2, v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if ((sub_26C00945C() & 1) == 0)
        {
          goto LABEL_20;
        }

        v31 = *(v64 + 48);
        sub_26BE2E1F0(&v8[*(v62 + 20)], v30, v28, &unk_26C022430);
        sub_26BE2E1F0(v66 + v61, v30 + v31, v28, &unk_26C022430);
        v32 = v29;
        v33 = v28;
        v34 = v29;
        v35 = v59;
        if (v59(v30, 1, v32) == 1)
        {
          if (v35(v30 + v31, 1, v34) != 1)
          {
            v8 = v58;
            sub_26BF7F05C(v58, type metadata accessor for MLS.SubjectPublicKeyInfo);
            v29 = v56;
            v27 = v57;
            v28 = v33;
            goto LABEL_14;
          }

          v28 = v33;
          sub_26BE2E258(v30, v33, &unk_26C022430);
          v29 = v56;
          v27 = v57;
        }

        else
        {
          v36 = v33;
          v37 = v63;
          sub_26BE2E1F0(v30, v63, v36, &unk_26C022430);
          if (v35(v30 + v31, 1, v34) == 1)
          {
            v8 = v58;
            sub_26BF7F05C(v58, type metadata accessor for MLS.SubjectPublicKeyInfo);
            (*v51)(v37, v34);
            v27 = v57;
            v29 = v34;
            v28 = &qword_28045EE48;
LABEL_14:
            v30 = v55;
            sub_26BE2E258(v55, &qword_28045F0D8, &unk_26C01A530);
            goto LABEL_15;
          }

          v38 = v49;
          (*v48)(v49, v30 + v31, v34);
          sub_26BF7EFF4(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
          v39 = sub_26C00A43C();
          v40 = *v51;
          (*v51)(v38, v34);
          v40(v63, v34);
          sub_26BE2E258(v30, &qword_28045EE48, &unk_26C022430);
          v27 = v57;
          v29 = v34;
          v28 = &qword_28045EE48;
          if ((v39 & 1) == 0)
          {
            v8 = v58;
LABEL_20:
            sub_26BF7F05C(v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
            goto LABEL_15;
          }
        }

        v8 = v58;
        v41 = sub_26C00956C();
        sub_26BF7F05C(v8, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if (v41)
        {
          goto LABEL_30;
        }

LABEL_15:
        a2 = (a2 + 1) & v26;
      }

      while (((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_27:
  v42 = *v54;
  *(*v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_26BF7F124(v66, *(v42 + 48) + *(v52 + 72) * a2, type metadata accessor for MLS.SubjectPublicKeyInfo);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_30:
    result = sub_26C00AF7C();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

uint64_t sub_26BF7A2E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v88 = *MEMORY[0x277D85DE8];
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_113;
  }

  if (a3)
  {
    sub_26BF782F0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_26BF7B834();
LABEL_113:
      v66 = *v4;
      *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v67 = *(v66 + 48) + 56 * a2;
      v68 = *v6;
      v69 = *(v6 + 16);
      v70 = *(v6 + 32);
      *(v67 + 48) = *(v6 + 48);
      *(v67 + 16) = v69;
      *(v67 + 32) = v70;
      *v67 = v68;
      v71 = *(v66 + 16);
      v29 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v29)
      {
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
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
      }

      *(v66 + 16) = v72;
      return result;
    }

    sub_26BF7CD10(v7 + 1);
  }

  v9 = *v3;
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(&v83);
  result = sub_26C00B0CC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  v80 = v9 + 56;
  if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_113;
  }

  v78 = v9;
  v79 = ~v10;
  v11 = *v6;
  v12 = *(v6 + 8);
  if (*v6)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xC000000000000000;
  }

  v14 = !v13;
  v77 = v14;
  v15 = v12 >> 62;
  v16 = __OFSUB__(HIDWORD(v11), v11);
  v76 = v16;
  while (1)
  {
    sub_26BE2DB68(*(v9 + 48) + 56 * a2, &v83);
    v18 = v83;
    v17 = v84;
    if ((v84 & 0x2000000000000000) == 0)
    {
      break;
    }

    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_55;
    }

    sub_26BE04890(v11, v12);
    sub_26BE04890(v18, v17);
    v25 = sub_26BFB0104(v18, v11);
    sub_26BE0489C(v18, v17);
    sub_26BE0489C(v11, v12);
    if (v25)
    {
      goto LABEL_62;
    }

LABEL_56:
    result = sub_26BE2DBC4(&v83);
LABEL_57:
    v15 = v12 >> 62;
LABEL_58:
    a2 = (a2 + 1) & v79;
    if (((*(v80 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_113;
    }
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
LABEL_55:
    sub_26BE04890(v11, v12);
    sub_26BE04890(v18, v17);
    sub_26BE0489C(v18, v17);
    sub_26BE0489C(v11, v12);
    goto LABEL_56;
  }

  v19 = v84 >> 62;
  if (v84 >> 62 != 3)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_46;
      }

      v28 = *(v83 + 16);
      v27 = *(v83 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_120;
      }

      if (v15 > 1)
      {
        goto LABEL_47;
      }
    }

    else if (v19)
    {
      LODWORD(v26) = HIDWORD(v83) - v83;
      if (__OFSUB__(HIDWORD(v83), v83))
      {
        goto LABEL_121;
      }

      v26 = v26;
      if (v15 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v26 = BYTE6(v84);
      if (v15 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_43:
    v30 = BYTE6(v12);
    if (v15)
    {
      v30 = HIDWORD(v11) - v11;
      if (v76)
      {
        goto LABEL_117;
      }
    }

    goto LABEL_49;
  }

  if (v83)
  {
    v20 = 0;
  }

  else
  {
    v20 = v84 == 0xC000000000000000;
  }

  v22 = !v20 || v15 < 3;
  if (((v22 | v77) & 1) == 0)
  {
    sub_26BE04890(0, 0xC000000000000000);
    sub_26BE04890(0, 0xC000000000000000);
    sub_26BE0489C(0, 0xC000000000000000);
    v23 = 0;
    v24 = 0xC000000000000000;
LABEL_61:
    sub_26BE0489C(v23, v24);
    goto LABEL_62;
  }

LABEL_46:
  v26 = 0;
  if (v15 <= 1)
  {
    goto LABEL_43;
  }

LABEL_47:
  if (v15 != 2)
  {
    if (!v26)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  v32 = *(v11 + 16);
  v31 = *(v11 + 24);
  v29 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v29)
  {
    goto LABEL_116;
  }

LABEL_49:
  if (v26 != v30)
  {
    goto LABEL_55;
  }

  if (v26 < 1)
  {
LABEL_60:
    sub_26BE04890(v11, v12);
    sub_26BE04890(v18, v17);
    sub_26BE0489C(v18, v17);
    v23 = v11;
    v24 = v12;
    goto LABEL_61;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v75 = v4;
      v54 = *(v83 + 16);
      v53 = *(v83 + 24);
      sub_26BE04890(v11, v12);
      sub_26BE04890(v18, v17);
      v55 = sub_26C008E9C();
      if (v55)
      {
        v56 = sub_26C008ECC();
        if (__OFSUB__(v54, v56))
        {
          goto LABEL_126;
        }

        v55 += v54 - v56;
      }

      if (__OFSUB__(v53, v54))
      {
        goto LABEL_125;
      }

      goto LABEL_106;
    }

    *&v82[6] = 0;
    *v82 = 0;
    sub_26BE04890(v11, v12);
    sub_26BE04890(v18, v17);
LABEL_108:
    sub_26BE567B0(v82, v11, v12, v81);
    sub_26BE0489C(v18, v17);
    sub_26BE0489C(v11, v12);
    v65 = v81[0];
  }

  else
  {
    if (!v19)
    {
      *v82 = v83;
      *&v82[8] = v84;
      *&v82[12] = WORD2(v84);
      sub_26BE04890(v11, v12);
      sub_26BE04890(v18, v17);
      goto LABEL_108;
    }

    v75 = v4;
    if (v83 >> 32 < v83)
    {
      goto LABEL_124;
    }

    sub_26BE04890(v11, v12);
    sub_26BE04890(v18, v17);
    v55 = sub_26C008E9C();
    if (v55)
    {
      v64 = sub_26C008ECC();
      if (__OFSUB__(v18, v64))
      {
        goto LABEL_127;
      }

      v55 += v18 - v64;
    }

LABEL_106:
    sub_26C008EBC();
    sub_26BE567B0(v55, v11, v12, v82);
    sub_26BE0489C(v18, v17);
    sub_26BE0489C(v11, v12);
    v65 = v82[0];
    v4 = v75;
    v9 = v78;
  }

  if ((v65 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_62:
  v34 = v86;
  v33 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  (*(*(v33 + 8) + 24))(v82, v34);
  v35 = v82[0];

  v37 = *(v6 + 40);
  v36 = *(v6 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v37);
  (*(*(v36 + 8) + 24))(v81, v37);
  LODWORD(v36) = LOBYTE(v81[0]);

  if (v35 != v36)
  {
    goto LABEL_56;
  }

  v39 = v86;
  v38 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v40 = (*(*(v38 + 8) + 16))(v39);
  v42 = v41;
  v44 = *(v6 + 40);
  v43 = *(v6 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v44);
  v45 = (*(*(v43 + 8) + 16))(v44);
  v47 = v42 >> 62;
  v48 = v46 >> 62;
  if (v42 >> 62 != 3)
  {
    v15 = v12 >> 62;
    if (v47 == 2)
    {
      v58 = *(v40 + 16);
      v57 = *(v40 + 24);
      v29 = __OFSUB__(v57, v58);
      v49 = v57 - v58;
      v9 = v78;
      if (v29)
      {
        goto LABEL_122;
      }

      goto LABEL_90;
    }

    v9 = v78;
    if (v47 == 1)
    {
      LODWORD(v49) = HIDWORD(v40) - v40;
      if (__OFSUB__(HIDWORD(v40), v40))
      {
        goto LABEL_123;
      }

      v49 = v49;
      if (v48 <= 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v49 = BYTE6(v42);
      if (v48 <= 1)
      {
        goto LABEL_91;
      }
    }

LABEL_74:
    if (v48 != 2)
    {
      if (!v49)
      {
        goto LABEL_128;
      }

LABEL_99:
      sub_26BE00258(v45, v46);
      sub_26BE00258(v40, v42);
      result = sub_26BE2DBC4(&v83);
      goto LABEL_58;
    }

    v51 = *(v45 + 16);
    v50 = *(v45 + 24);
    v29 = __OFSUB__(v50, v51);
    v52 = v50 - v51;
    if (v29)
    {
      goto LABEL_118;
    }

LABEL_93:
    if (v49 != v52)
    {
      goto LABEL_99;
    }

    goto LABEL_94;
  }

  v49 = 0;
  v15 = v12 >> 62;
  if (v40)
  {
    v9 = v78;
    if (v48 <= 1)
    {
      goto LABEL_91;
    }

    goto LABEL_74;
  }

  v9 = v78;
  if (v42 == 0xC000000000000000 && v46 >> 62 == 3)
  {
    v49 = 0;
    if (!v45 && v46 == 0xC000000000000000)
    {
      sub_26BE00258(0, 0xC000000000000000);
      v73 = 0;
      v74 = 0xC000000000000000;
      goto LABEL_129;
    }
  }

LABEL_90:
  if (v48 > 1)
  {
    goto LABEL_74;
  }

LABEL_91:
  if (!v48)
  {
    v52 = BYTE6(v46);
    goto LABEL_93;
  }

  if (__OFSUB__(HIDWORD(v45), v45))
  {
    goto LABEL_119;
  }

  if (v49 != HIDWORD(v45) - v45)
  {
    goto LABEL_99;
  }

LABEL_94:
  if (v49 >= 1)
  {
    v59 = v45;
    v60 = v46;
    sub_26BE00608(v45, v46);
    v61 = sub_26BECB6A4(v40, v42, v59, v60);
    v62 = v40;
    v63 = v61;
    sub_26BE00258(v62, v42);
    sub_26BE00258(v59, v60);
    result = sub_26BE2DBC4(&v83);
    if (v63)
    {
      goto LABEL_130;
    }

    v9 = v78;
    goto LABEL_57;
  }

LABEL_128:
  sub_26BE00258(v45, v46);
  v73 = v40;
  v74 = v42;
LABEL_129:
  sub_26BE00258(v73, v74);
  sub_26BE2DBC4(&v83);
LABEL_130:
  result = sub_26C00AF7C();
  __break(1u);
  return result;
}